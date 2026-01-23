; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!524634 () Bool)

(assert start!524634)

(declare-fun b!4972699 () Bool)

(declare-fun b_free!132851 () Bool)

(declare-fun b_next!133641 () Bool)

(assert (=> b!4972699 (= b_free!132851 (not b_next!133641))))

(declare-fun tp!1394383 () Bool)

(declare-fun b_and!348831 () Bool)

(assert (=> b!4972699 (= tp!1394383 b_and!348831)))

(declare-fun b_free!132853 () Bool)

(declare-fun b_next!133643 () Bool)

(assert (=> b!4972699 (= b_free!132853 (not b_next!133643))))

(declare-fun tp!1394387 () Bool)

(declare-fun b_and!348833 () Bool)

(assert (=> b!4972699 (= tp!1394387 b_and!348833)))

(declare-fun e!3107950 () Bool)

(declare-datatypes ((List!57589 0))(
  ( (Nil!57465) (Cons!57465 (h!63913 (_ BitVec 16)) (t!369195 List!57589)) )
))
(declare-datatypes ((TokenValue!8710 0))(
  ( (FloatLiteralValue!17420 (text!61415 List!57589)) (TokenValueExt!8709 (__x!34713 Int)) (Broken!43550 (value!268814 List!57589)) (Object!8833) (End!8710) (Def!8710) (Underscore!8710) (Match!8710) (Else!8710) (Error!8710) (Case!8710) (If!8710) (Extends!8710) (Abstract!8710) (Class!8710) (Val!8710) (DelimiterValue!17420 (del!8770 List!57589)) (KeywordValue!8716 (value!268815 List!57589)) (CommentValue!17420 (value!268816 List!57589)) (WhitespaceValue!17420 (value!268817 List!57589)) (IndentationValue!8710 (value!268818 List!57589)) (String!65423) (Int32!8710) (Broken!43551 (value!268819 List!57589)) (Boolean!8711) (Unit!148430) (OperatorValue!8713 (op!8770 List!57589)) (IdentifierValue!17420 (value!268820 List!57589)) (IdentifierValue!17421 (value!268821 List!57589)) (WhitespaceValue!17421 (value!268822 List!57589)) (True!17420) (False!17420) (Broken!43552 (value!268823 List!57589)) (Broken!43553 (value!268824 List!57589)) (True!17421) (RightBrace!8710) (RightBracket!8710) (Colon!8710) (Null!8710) (Comma!8710) (LeftBracket!8710) (False!17421) (LeftBrace!8710) (ImaginaryLiteralValue!8710 (text!61416 List!57589)) (StringLiteralValue!26130 (value!268825 List!57589)) (EOFValue!8710 (value!268826 List!57589)) (IdentValue!8710 (value!268827 List!57589)) (DelimiterValue!17421 (value!268828 List!57589)) (DedentValue!8710 (value!268829 List!57589)) (NewLineValue!8710 (value!268830 List!57589)) (IntegerValue!26130 (value!268831 (_ BitVec 32)) (text!61417 List!57589)) (IntegerValue!26131 (value!268832 Int) (text!61418 List!57589)) (Times!8710) (Or!8710) (Equal!8710) (Minus!8710) (Broken!43554 (value!268833 List!57589)) (And!8710) (Div!8710) (LessEqual!8710) (Mod!8710) (Concat!22343) (Not!8710) (Plus!8710) (SpaceValue!8710 (value!268834 List!57589)) (IntegerValue!26132 (value!268835 Int) (text!61419 List!57589)) (StringLiteralValue!26131 (text!61420 List!57589)) (FloatLiteralValue!17421 (text!61421 List!57589)) (BytesLiteralValue!8710 (value!268836 List!57589)) (CommentValue!17421 (value!268837 List!57589)) (StringLiteralValue!26132 (value!268838 List!57589)) (ErrorTokenValue!8710 (msg!8771 List!57589)) )
))
(declare-datatypes ((C!27516 0))(
  ( (C!27517 (val!23124 Int)) )
))
(declare-datatypes ((List!57590 0))(
  ( (Nil!57466) (Cons!57466 (h!63914 C!27516) (t!369196 List!57590)) )
))
(declare-datatypes ((IArray!30365 0))(
  ( (IArray!30366 (innerList!15240 List!57590)) )
))
(declare-datatypes ((Regex!13633 0))(
  ( (ElementMatch!13633 (c!848513 C!27516)) (Concat!22344 (regOne!27778 Regex!13633) (regTwo!27778 Regex!13633)) (EmptyExpr!13633) (Star!13633 (reg!13962 Regex!13633)) (EmptyLang!13633) (Union!13633 (regOne!27779 Regex!13633) (regTwo!27779 Regex!13633)) )
))
(declare-datatypes ((String!65424 0))(
  ( (String!65425 (value!268839 String)) )
))
(declare-datatypes ((Conc!15152 0))(
  ( (Node!15152 (left!41922 Conc!15152) (right!42252 Conc!15152) (csize!30534 Int) (cheight!15363 Int)) (Leaf!25177 (xs!18478 IArray!30365) (csize!30535 Int)) (Empty!15152) )
))
(declare-datatypes ((BalanceConc!29734 0))(
  ( (BalanceConc!29735 (c!848514 Conc!15152)) )
))
(declare-datatypes ((TokenValueInjection!16728 0))(
  ( (TokenValueInjection!16729 (toValue!11371 Int) (toChars!11230 Int)) )
))
(declare-datatypes ((Rule!16600 0))(
  ( (Rule!16601 (regex!8400 Regex!13633) (tag!9264 String!65424) (isSeparator!8400 Bool) (transformation!8400 TokenValueInjection!16728)) )
))
(declare-datatypes ((List!57591 0))(
  ( (Nil!57467) (Cons!57467 (h!63915 Rule!16600) (t!369197 List!57591)) )
))
(declare-fun rulesArg!259 () List!57591)

(declare-fun b!4972691 () Bool)

(declare-fun e!3107949 () Bool)

(declare-fun tp!1394388 () Bool)

(declare-fun inv!75118 (String!65424) Bool)

(declare-fun inv!75122 (TokenValueInjection!16728) Bool)

(assert (=> b!4972691 (= e!3107949 (and tp!1394388 (inv!75118 (tag!9264 (h!63915 rulesArg!259))) (inv!75122 (transformation!8400 (h!63915 rulesArg!259))) e!3107950))))

(declare-fun b!4972692 () Bool)

(declare-fun e!3107941 () Bool)

(declare-fun e!3107944 () Bool)

(assert (=> b!4972692 (= e!3107941 (not e!3107944))))

(declare-fun res!2122696 () Bool)

(assert (=> b!4972692 (=> res!2122696 e!3107944)))

(get-info :version)

(assert (=> b!4972692 (= res!2122696 (or (and ((_ is Cons!57467) rulesArg!259) ((_ is Nil!57467) (t!369197 rulesArg!259))) (not ((_ is Cons!57467) rulesArg!259))))))

(declare-fun lt!2053676 () List!57590)

(declare-fun isPrefix!5251 (List!57590 List!57590) Bool)

(assert (=> b!4972692 (isPrefix!5251 lt!2053676 lt!2053676)))

(declare-datatypes ((Unit!148431 0))(
  ( (Unit!148432) )
))
(declare-fun lt!2053675 () Unit!148431)

(declare-fun lemmaIsPrefixRefl!3575 (List!57590 List!57590) Unit!148431)

(assert (=> b!4972692 (= lt!2053675 (lemmaIsPrefixRefl!3575 lt!2053676 lt!2053676))))

(declare-fun b!4972693 () Bool)

(declare-fun e!3107939 () Bool)

(declare-fun e!3107937 () Bool)

(assert (=> b!4972693 (= e!3107939 e!3107937)))

(declare-fun res!2122699 () Bool)

(assert (=> b!4972693 (=> (not res!2122699) (not e!3107937))))

(declare-datatypes ((Token!15296 0))(
  ( (Token!15297 (value!268840 TokenValue!8710) (rule!11662 Rule!16600) (size!38094 Int) (originalCharacters!8679 List!57590)) )
))
(declare-datatypes ((tuple2!62216 0))(
  ( (tuple2!62217 (_1!34411 Token!15296) (_2!34411 BalanceConc!29734)) )
))
(declare-fun lt!2053677 () tuple2!62216)

(declare-datatypes ((tuple2!62218 0))(
  ( (tuple2!62219 (_1!34412 Token!15296) (_2!34412 List!57590)) )
))
(declare-fun lt!2053678 () tuple2!62218)

(assert (=> b!4972693 (= res!2122699 (= (_1!34411 lt!2053677) (_1!34412 lt!2053678)))))

(declare-datatypes ((LexerInterface!7992 0))(
  ( (LexerInterfaceExt!7989 (__x!34714 Int)) (Lexer!7990) )
))
(declare-fun thiss!15247 () LexerInterface!7992)

(declare-datatypes ((Option!14463 0))(
  ( (None!14462) (Some!14462 (v!50457 tuple2!62218)) )
))
(declare-fun get!19957 (Option!14463) tuple2!62218)

(declare-fun maxPrefix!4667 (LexerInterface!7992 List!57591 List!57590) Option!14463)

(assert (=> b!4972693 (= lt!2053678 (get!19957 (maxPrefix!4667 thiss!15247 rulesArg!259 lt!2053676)))))

(declare-datatypes ((Option!14464 0))(
  ( (None!14463) (Some!14463 (v!50458 tuple2!62216)) )
))
(declare-fun lt!2053671 () Option!14464)

(declare-fun get!19958 (Option!14464) tuple2!62216)

(assert (=> b!4972693 (= lt!2053677 (get!19958 lt!2053671))))

(declare-fun b!4972694 () Bool)

(declare-fun e!3107943 () Bool)

(assert (=> b!4972694 (= e!3107944 e!3107943)))

(declare-fun res!2122691 () Bool)

(assert (=> b!4972694 (=> res!2122691 e!3107943)))

(declare-fun lt!2053680 () Option!14464)

(assert (=> b!4972694 (= res!2122691 (or (and ((_ is None!14463) lt!2053680) ((_ is None!14463) lt!2053671)) ((_ is None!14463) lt!2053671) ((_ is None!14463) lt!2053680) (>= (size!38094 (_1!34411 (v!50458 lt!2053680))) (size!38094 (_1!34411 (v!50458 lt!2053671))))))))

(declare-fun input!1342 () BalanceConc!29734)

(declare-fun totalInput!464 () BalanceConc!29734)

(declare-fun maxPrefixZipperSequenceV2!711 (LexerInterface!7992 List!57591 BalanceConc!29734 BalanceConc!29734) Option!14464)

(assert (=> b!4972694 (= lt!2053671 (maxPrefixZipperSequenceV2!711 thiss!15247 (t!369197 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!368 (LexerInterface!7992 Rule!16600 BalanceConc!29734 BalanceConc!29734) Option!14464)

(assert (=> b!4972694 (= lt!2053680 (maxPrefixOneRuleZipperSequenceV2!368 thiss!15247 (h!63915 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4972695 () Bool)

(declare-fun e!3107948 () Bool)

(declare-fun tp!1394384 () Bool)

(declare-fun inv!75123 (Conc!15152) Bool)

(assert (=> b!4972695 (= e!3107948 (and (inv!75123 (c!848514 totalInput!464)) tp!1394384))))

(declare-fun b!4972696 () Bool)

(declare-fun e!3107942 () Bool)

(declare-fun e!3107951 () Bool)

(assert (=> b!4972696 (= e!3107942 e!3107951)))

(declare-fun res!2122693 () Bool)

(assert (=> b!4972696 (=> (not res!2122693) (not e!3107951))))

(declare-fun lt!2053679 () tuple2!62216)

(declare-fun lt!2053670 () tuple2!62218)

(assert (=> b!4972696 (= res!2122693 (= (_1!34411 lt!2053679) (_1!34412 lt!2053670)))))

(declare-fun lt!2053673 () Option!14463)

(assert (=> b!4972696 (= lt!2053670 (get!19957 lt!2053673))))

(assert (=> b!4972696 (= lt!2053679 (get!19958 lt!2053671))))

(declare-fun b!4972697 () Bool)

(declare-fun e!3107945 () Bool)

(assert (=> b!4972697 (= e!3107945 e!3107939)))

(declare-fun res!2122698 () Bool)

(assert (=> b!4972697 (=> res!2122698 e!3107939)))

(declare-fun lt!2053672 () Bool)

(assert (=> b!4972697 (= res!2122698 lt!2053672)))

(declare-fun b!4972698 () Bool)

(declare-fun res!2122701 () Bool)

(declare-fun e!3107940 () Bool)

(assert (=> b!4972698 (=> (not res!2122701) (not e!3107940))))

(declare-fun rulesValidInductive!3303 (LexerInterface!7992 List!57591) Bool)

(assert (=> b!4972698 (= res!2122701 (rulesValidInductive!3303 thiss!15247 rulesArg!259))))

(assert (=> b!4972699 (= e!3107950 (and tp!1394383 tp!1394387))))

(declare-fun b!4972700 () Bool)

(declare-fun e!3107938 () Bool)

(assert (=> b!4972700 (= e!3107943 e!3107938)))

(declare-fun res!2122695 () Bool)

(assert (=> b!4972700 (=> (not res!2122695) (not e!3107938))))

(declare-fun lt!2053674 () Bool)

(declare-fun isDefined!11376 (Option!14463) Bool)

(assert (=> b!4972700 (= res!2122695 (= lt!2053674 (isDefined!11376 lt!2053673)))))

(declare-fun isDefined!11377 (Option!14464) Bool)

(assert (=> b!4972700 (= lt!2053674 (isDefined!11377 lt!2053671))))

(declare-fun maxPrefixZipper!793 (LexerInterface!7992 List!57591 List!57590) Option!14463)

(assert (=> b!4972700 (= lt!2053673 (maxPrefixZipper!793 thiss!15247 rulesArg!259 lt!2053676))))

(declare-fun b!4972701 () Bool)

(declare-fun res!2122697 () Bool)

(assert (=> b!4972701 (=> (not res!2122697) (not e!3107940))))

(declare-fun isEmpty!30970 (List!57591) Bool)

(assert (=> b!4972701 (= res!2122697 (not (isEmpty!30970 rulesArg!259)))))

(declare-fun b!4972702 () Bool)

(declare-fun list!18383 (BalanceConc!29734) List!57590)

(assert (=> b!4972702 (= e!3107937 (= (list!18383 (_2!34411 lt!2053677)) (_2!34412 lt!2053678)))))

(declare-fun b!4972703 () Bool)

(declare-fun e!3107946 () Bool)

(declare-fun tp!1394385 () Bool)

(assert (=> b!4972703 (= e!3107946 (and (inv!75123 (c!848514 input!1342)) tp!1394385))))

(declare-fun b!4972704 () Bool)

(assert (=> b!4972704 (= e!3107951 (= (list!18383 (_2!34411 lt!2053679)) (_2!34412 lt!2053670)))))

(declare-fun res!2122694 () Bool)

(assert (=> start!524634 (=> (not res!2122694) (not e!3107940))))

(assert (=> start!524634 (= res!2122694 ((_ is Lexer!7990) thiss!15247))))

(assert (=> start!524634 e!3107940))

(assert (=> start!524634 true))

(declare-fun e!3107936 () Bool)

(assert (=> start!524634 e!3107936))

(declare-fun inv!75124 (BalanceConc!29734) Bool)

(assert (=> start!524634 (and (inv!75124 input!1342) e!3107946)))

(assert (=> start!524634 (and (inv!75124 totalInput!464) e!3107948)))

(declare-fun b!4972690 () Bool)

(assert (=> b!4972690 (= e!3107938 e!3107945)))

(declare-fun res!2122700 () Bool)

(assert (=> b!4972690 (=> (not res!2122700) (not e!3107945))))

(assert (=> b!4972690 (= res!2122700 e!3107942)))

(declare-fun res!2122692 () Bool)

(assert (=> b!4972690 (=> res!2122692 e!3107942)))

(assert (=> b!4972690 (= res!2122692 lt!2053672)))

(assert (=> b!4972690 (= lt!2053672 (not lt!2053674))))

(declare-fun b!4972705 () Bool)

(declare-fun tp!1394386 () Bool)

(assert (=> b!4972705 (= e!3107936 (and e!3107949 tp!1394386))))

(declare-fun b!4972706 () Bool)

(assert (=> b!4972706 (= e!3107940 e!3107941)))

(declare-fun res!2122702 () Bool)

(assert (=> b!4972706 (=> (not res!2122702) (not e!3107941))))

(declare-fun isSuffix!1199 (List!57590 List!57590) Bool)

(assert (=> b!4972706 (= res!2122702 (isSuffix!1199 lt!2053676 (list!18383 totalInput!464)))))

(assert (=> b!4972706 (= lt!2053676 (list!18383 input!1342))))

(assert (= (and start!524634 res!2122694) b!4972698))

(assert (= (and b!4972698 res!2122701) b!4972701))

(assert (= (and b!4972701 res!2122697) b!4972706))

(assert (= (and b!4972706 res!2122702) b!4972692))

(assert (= (and b!4972692 (not res!2122696)) b!4972694))

(assert (= (and b!4972694 (not res!2122691)) b!4972700))

(assert (= (and b!4972700 res!2122695) b!4972690))

(assert (= (and b!4972690 (not res!2122692)) b!4972696))

(assert (= (and b!4972696 res!2122693) b!4972704))

(assert (= (and b!4972690 res!2122700) b!4972697))

(assert (= (and b!4972697 (not res!2122698)) b!4972693))

(assert (= (and b!4972693 res!2122699) b!4972702))

(assert (= b!4972691 b!4972699))

(assert (= b!4972705 b!4972691))

(assert (= (and start!524634 ((_ is Cons!57467) rulesArg!259)) b!4972705))

(assert (= start!524634 b!4972703))

(assert (= start!524634 b!4972695))

(declare-fun m!6001294 () Bool)

(assert (=> b!4972691 m!6001294))

(declare-fun m!6001296 () Bool)

(assert (=> b!4972691 m!6001296))

(declare-fun m!6001298 () Bool)

(assert (=> b!4972700 m!6001298))

(declare-fun m!6001300 () Bool)

(assert (=> b!4972700 m!6001300))

(declare-fun m!6001302 () Bool)

(assert (=> b!4972700 m!6001302))

(declare-fun m!6001304 () Bool)

(assert (=> b!4972706 m!6001304))

(assert (=> b!4972706 m!6001304))

(declare-fun m!6001306 () Bool)

(assert (=> b!4972706 m!6001306))

(declare-fun m!6001308 () Bool)

(assert (=> b!4972706 m!6001308))

(declare-fun m!6001310 () Bool)

(assert (=> b!4972692 m!6001310))

(declare-fun m!6001312 () Bool)

(assert (=> b!4972692 m!6001312))

(declare-fun m!6001314 () Bool)

(assert (=> start!524634 m!6001314))

(declare-fun m!6001316 () Bool)

(assert (=> start!524634 m!6001316))

(declare-fun m!6001318 () Bool)

(assert (=> b!4972696 m!6001318))

(declare-fun m!6001320 () Bool)

(assert (=> b!4972696 m!6001320))

(declare-fun m!6001322 () Bool)

(assert (=> b!4972703 m!6001322))

(declare-fun m!6001324 () Bool)

(assert (=> b!4972704 m!6001324))

(declare-fun m!6001326 () Bool)

(assert (=> b!4972693 m!6001326))

(assert (=> b!4972693 m!6001326))

(declare-fun m!6001328 () Bool)

(assert (=> b!4972693 m!6001328))

(assert (=> b!4972693 m!6001320))

(declare-fun m!6001330 () Bool)

(assert (=> b!4972695 m!6001330))

(declare-fun m!6001332 () Bool)

(assert (=> b!4972694 m!6001332))

(declare-fun m!6001334 () Bool)

(assert (=> b!4972694 m!6001334))

(declare-fun m!6001336 () Bool)

(assert (=> b!4972698 m!6001336))

(declare-fun m!6001338 () Bool)

(assert (=> b!4972701 m!6001338))

(declare-fun m!6001340 () Bool)

(assert (=> b!4972702 m!6001340))

(check-sat (not b_next!133641) (not b!4972693) (not b!4972698) b_and!348833 (not b_next!133643) (not start!524634) (not b!4972691) (not b!4972703) (not b!4972704) (not b!4972706) (not b!4972705) (not b!4972701) b_and!348831 (not b!4972695) (not b!4972692) (not b!4972696) (not b!4972702) (not b!4972700) (not b!4972694))
(check-sat b_and!348831 b_and!348833 (not b_next!133641) (not b_next!133643))
(get-model)

(declare-fun d!1601147 () Bool)

(declare-fun isBalanced!4209 (Conc!15152) Bool)

(assert (=> d!1601147 (= (inv!75124 input!1342) (isBalanced!4209 (c!848514 input!1342)))))

(declare-fun bs!1183640 () Bool)

(assert (= bs!1183640 d!1601147))

(declare-fun m!6001390 () Bool)

(assert (=> bs!1183640 m!6001390))

(assert (=> start!524634 d!1601147))

(declare-fun d!1601149 () Bool)

(assert (=> d!1601149 (= (inv!75124 totalInput!464) (isBalanced!4209 (c!848514 totalInput!464)))))

(declare-fun bs!1183641 () Bool)

(assert (= bs!1183641 d!1601149))

(declare-fun m!6001392 () Bool)

(assert (=> bs!1183641 m!6001392))

(assert (=> start!524634 d!1601149))

(declare-fun d!1601151 () Bool)

(declare-fun isEmpty!30975 (Option!14463) Bool)

(assert (=> d!1601151 (= (isDefined!11376 lt!2053673) (not (isEmpty!30975 lt!2053673)))))

(declare-fun bs!1183642 () Bool)

(assert (= bs!1183642 d!1601151))

(declare-fun m!6001394 () Bool)

(assert (=> bs!1183642 m!6001394))

(assert (=> b!4972700 d!1601151))

(declare-fun d!1601153 () Bool)

(declare-fun isEmpty!30976 (Option!14464) Bool)

(assert (=> d!1601153 (= (isDefined!11377 lt!2053671) (not (isEmpty!30976 lt!2053671)))))

(declare-fun bs!1183643 () Bool)

(assert (= bs!1183643 d!1601153))

(declare-fun m!6001396 () Bool)

(assert (=> bs!1183643 m!6001396))

(assert (=> b!4972700 d!1601153))

(declare-fun d!1601155 () Bool)

(declare-fun lt!2053718 () Option!14463)

(assert (=> d!1601155 (= lt!2053718 (maxPrefix!4667 thiss!15247 rulesArg!259 lt!2053676))))

(declare-fun e!3107985 () Option!14463)

(assert (=> d!1601155 (= lt!2053718 e!3107985)))

(declare-fun c!848523 () Bool)

(assert (=> d!1601155 (= c!848523 (and ((_ is Cons!57467) rulesArg!259) ((_ is Nil!57467) (t!369197 rulesArg!259))))))

(declare-fun lt!2053714 () Unit!148431)

(declare-fun lt!2053715 () Unit!148431)

(assert (=> d!1601155 (= lt!2053714 lt!2053715)))

(assert (=> d!1601155 (isPrefix!5251 lt!2053676 lt!2053676)))

(assert (=> d!1601155 (= lt!2053715 (lemmaIsPrefixRefl!3575 lt!2053676 lt!2053676))))

(assert (=> d!1601155 (rulesValidInductive!3303 thiss!15247 rulesArg!259)))

(assert (=> d!1601155 (= (maxPrefixZipper!793 thiss!15247 rulesArg!259 lt!2053676) lt!2053718)))

(declare-fun call!346811 () Option!14463)

(declare-fun bm!346806 () Bool)

(declare-fun maxPrefixOneRuleZipper!303 (LexerInterface!7992 Rule!16600 List!57590) Option!14463)

(assert (=> bm!346806 (= call!346811 (maxPrefixOneRuleZipper!303 thiss!15247 (h!63915 rulesArg!259) lt!2053676))))

(declare-fun b!4972766 () Bool)

(assert (=> b!4972766 (= e!3107985 call!346811)))

(declare-fun b!4972767 () Bool)

(declare-fun lt!2053717 () Option!14463)

(declare-fun lt!2053716 () Option!14463)

(assert (=> b!4972767 (= e!3107985 (ite (and ((_ is None!14462) lt!2053717) ((_ is None!14462) lt!2053716)) None!14462 (ite ((_ is None!14462) lt!2053716) lt!2053717 (ite ((_ is None!14462) lt!2053717) lt!2053716 (ite (>= (size!38094 (_1!34412 (v!50457 lt!2053717))) (size!38094 (_1!34412 (v!50457 lt!2053716)))) lt!2053717 lt!2053716)))))))

(assert (=> b!4972767 (= lt!2053717 call!346811)))

(assert (=> b!4972767 (= lt!2053716 (maxPrefixZipper!793 thiss!15247 (t!369197 rulesArg!259) lt!2053676))))

(assert (= (and d!1601155 c!848523) b!4972766))

(assert (= (and d!1601155 (not c!848523)) b!4972767))

(assert (= (or b!4972766 b!4972767) bm!346806))

(assert (=> d!1601155 m!6001326))

(assert (=> d!1601155 m!6001310))

(assert (=> d!1601155 m!6001312))

(assert (=> d!1601155 m!6001336))

(declare-fun m!6001398 () Bool)

(assert (=> bm!346806 m!6001398))

(declare-fun m!6001400 () Bool)

(assert (=> b!4972767 m!6001400))

(assert (=> b!4972700 d!1601155))

(declare-fun d!1601157 () Bool)

(assert (=> d!1601157 (= (get!19957 lt!2053673) (v!50457 lt!2053673))))

(assert (=> b!4972696 d!1601157))

(declare-fun d!1601159 () Bool)

(assert (=> d!1601159 (= (get!19958 lt!2053671) (v!50458 lt!2053671))))

(assert (=> b!4972696 d!1601159))

(declare-fun d!1601161 () Bool)

(assert (=> d!1601161 true))

(declare-fun lt!2053760 () Bool)

(declare-fun lambda!247498 () Int)

(declare-fun forall!13335 (List!57591 Int) Bool)

(assert (=> d!1601161 (= lt!2053760 (forall!13335 rulesArg!259 lambda!247498))))

(declare-fun e!3108019 () Bool)

(assert (=> d!1601161 (= lt!2053760 e!3108019)))

(declare-fun res!2122796 () Bool)

(assert (=> d!1601161 (=> res!2122796 e!3108019)))

(assert (=> d!1601161 (= res!2122796 (not ((_ is Cons!57467) rulesArg!259)))))

(assert (=> d!1601161 (= (rulesValidInductive!3303 thiss!15247 rulesArg!259) lt!2053760)))

(declare-fun b!4972812 () Bool)

(declare-fun e!3108020 () Bool)

(assert (=> b!4972812 (= e!3108019 e!3108020)))

(declare-fun res!2122795 () Bool)

(assert (=> b!4972812 (=> (not res!2122795) (not e!3108020))))

(declare-fun ruleValid!3809 (LexerInterface!7992 Rule!16600) Bool)

(assert (=> b!4972812 (= res!2122795 (ruleValid!3809 thiss!15247 (h!63915 rulesArg!259)))))

(declare-fun b!4972813 () Bool)

(assert (=> b!4972813 (= e!3108020 (rulesValidInductive!3303 thiss!15247 (t!369197 rulesArg!259)))))

(assert (= (and d!1601161 (not res!2122796)) b!4972812))

(assert (= (and b!4972812 res!2122795) b!4972813))

(declare-fun m!6001446 () Bool)

(assert (=> d!1601161 m!6001446))

(declare-fun m!6001448 () Bool)

(assert (=> b!4972812 m!6001448))

(declare-fun m!6001450 () Bool)

(assert (=> b!4972813 m!6001450))

(assert (=> b!4972698 d!1601161))

(declare-fun b!4972897 () Bool)

(declare-fun e!3108076 () Option!14464)

(declare-fun call!346820 () Option!14464)

(assert (=> b!4972897 (= e!3108076 call!346820)))

(declare-fun b!4972898 () Bool)

(declare-fun lt!2053806 () Option!14464)

(declare-fun lt!2053807 () Option!14464)

(assert (=> b!4972898 (= e!3108076 (ite (and ((_ is None!14463) lt!2053806) ((_ is None!14463) lt!2053807)) None!14463 (ite ((_ is None!14463) lt!2053807) lt!2053806 (ite ((_ is None!14463) lt!2053806) lt!2053807 (ite (>= (size!38094 (_1!34411 (v!50458 lt!2053806))) (size!38094 (_1!34411 (v!50458 lt!2053807)))) lt!2053806 lt!2053807)))))))

(assert (=> b!4972898 (= lt!2053806 call!346820)))

(assert (=> b!4972898 (= lt!2053807 (maxPrefixZipperSequenceV2!711 thiss!15247 (t!369197 (t!369197 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4972899 () Bool)

(declare-fun res!2122821 () Bool)

(declare-fun e!3108078 () Bool)

(assert (=> b!4972899 (=> (not res!2122821) (not e!3108078))))

(declare-fun e!3108080 () Bool)

(assert (=> b!4972899 (= res!2122821 e!3108080)))

(declare-fun res!2122820 () Bool)

(assert (=> b!4972899 (=> res!2122820 e!3108080)))

(declare-fun lt!2053812 () Option!14464)

(assert (=> b!4972899 (= res!2122820 (not (isDefined!11377 lt!2053812)))))

(declare-fun b!4972900 () Bool)

(declare-fun e!3108077 () Bool)

(assert (=> b!4972900 (= e!3108080 e!3108077)))

(declare-fun res!2122822 () Bool)

(assert (=> b!4972900 (=> (not res!2122822) (not e!3108077))))

(assert (=> b!4972900 (= res!2122822 (= (_1!34411 (get!19958 lt!2053812)) (_1!34412 (get!19957 (maxPrefixZipper!793 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342))))))))

(declare-fun b!4972901 () Bool)

(assert (=> b!4972901 (= e!3108077 (= (list!18383 (_2!34411 (get!19958 lt!2053812))) (_2!34412 (get!19957 (maxPrefixZipper!793 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342))))))))

(declare-fun b!4972902 () Bool)

(declare-fun e!3108081 () Bool)

(assert (=> b!4972902 (= e!3108081 (= (list!18383 (_2!34411 (get!19958 lt!2053812))) (_2!34412 (get!19957 (maxPrefix!4667 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342))))))))

(declare-fun bm!346815 () Bool)

(assert (=> bm!346815 (= call!346820 (maxPrefixOneRuleZipperSequenceV2!368 thiss!15247 (h!63915 (t!369197 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4972904 () Bool)

(declare-fun e!3108079 () Bool)

(assert (=> b!4972904 (= e!3108079 e!3108081)))

(declare-fun res!2122824 () Bool)

(assert (=> b!4972904 (=> (not res!2122824) (not e!3108081))))

(assert (=> b!4972904 (= res!2122824 (= (_1!34411 (get!19958 lt!2053812)) (_1!34412 (get!19957 (maxPrefix!4667 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342))))))))

(declare-fun d!1601177 () Bool)

(assert (=> d!1601177 e!3108078))

(declare-fun res!2122819 () Bool)

(assert (=> d!1601177 (=> (not res!2122819) (not e!3108078))))

(assert (=> d!1601177 (= res!2122819 (= (isDefined!11377 lt!2053812) (isDefined!11376 (maxPrefixZipper!793 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342)))))))

(assert (=> d!1601177 (= lt!2053812 e!3108076)))

(declare-fun c!848536 () Bool)

(assert (=> d!1601177 (= c!848536 (and ((_ is Cons!57467) (t!369197 rulesArg!259)) ((_ is Nil!57467) (t!369197 (t!369197 rulesArg!259)))))))

(declare-fun lt!2053810 () Unit!148431)

(declare-fun lt!2053808 () Unit!148431)

(assert (=> d!1601177 (= lt!2053810 lt!2053808)))

(declare-fun lt!2053809 () List!57590)

(declare-fun lt!2053811 () List!57590)

(assert (=> d!1601177 (isPrefix!5251 lt!2053809 lt!2053811)))

(assert (=> d!1601177 (= lt!2053808 (lemmaIsPrefixRefl!3575 lt!2053809 lt!2053811))))

(assert (=> d!1601177 (= lt!2053811 (list!18383 input!1342))))

(assert (=> d!1601177 (= lt!2053809 (list!18383 input!1342))))

(assert (=> d!1601177 (rulesValidInductive!3303 thiss!15247 (t!369197 rulesArg!259))))

(assert (=> d!1601177 (= (maxPrefixZipperSequenceV2!711 thiss!15247 (t!369197 rulesArg!259) input!1342 totalInput!464) lt!2053812)))

(declare-fun b!4972903 () Bool)

(assert (=> b!4972903 (= e!3108078 e!3108079)))

(declare-fun res!2122823 () Bool)

(assert (=> b!4972903 (=> res!2122823 e!3108079)))

(assert (=> b!4972903 (= res!2122823 (not (isDefined!11377 lt!2053812)))))

(assert (= (and d!1601177 c!848536) b!4972897))

(assert (= (and d!1601177 (not c!848536)) b!4972898))

(assert (= (or b!4972897 b!4972898) bm!346815))

(assert (= (and d!1601177 res!2122819) b!4972899))

(assert (= (and b!4972899 (not res!2122820)) b!4972900))

(assert (= (and b!4972900 res!2122822) b!4972901))

(assert (= (and b!4972899 res!2122821) b!4972903))

(assert (= (and b!4972903 (not res!2122823)) b!4972904))

(assert (= (and b!4972904 res!2122824) b!4972902))

(declare-fun m!6001522 () Bool)

(assert (=> b!4972903 m!6001522))

(declare-fun m!6001524 () Bool)

(assert (=> b!4972900 m!6001524))

(assert (=> b!4972900 m!6001308))

(assert (=> b!4972900 m!6001308))

(declare-fun m!6001526 () Bool)

(assert (=> b!4972900 m!6001526))

(assert (=> b!4972900 m!6001526))

(declare-fun m!6001528 () Bool)

(assert (=> b!4972900 m!6001528))

(declare-fun m!6001530 () Bool)

(assert (=> bm!346815 m!6001530))

(assert (=> b!4972899 m!6001522))

(declare-fun m!6001532 () Bool)

(assert (=> b!4972898 m!6001532))

(assert (=> b!4972901 m!6001308))

(assert (=> b!4972901 m!6001526))

(assert (=> b!4972901 m!6001308))

(declare-fun m!6001534 () Bool)

(assert (=> b!4972901 m!6001534))

(assert (=> b!4972901 m!6001524))

(assert (=> b!4972901 m!6001526))

(assert (=> b!4972901 m!6001528))

(assert (=> b!4972902 m!6001308))

(declare-fun m!6001536 () Bool)

(assert (=> b!4972902 m!6001536))

(assert (=> b!4972902 m!6001308))

(assert (=> b!4972902 m!6001536))

(declare-fun m!6001538 () Bool)

(assert (=> b!4972902 m!6001538))

(assert (=> b!4972902 m!6001534))

(assert (=> b!4972902 m!6001524))

(assert (=> b!4972904 m!6001524))

(assert (=> b!4972904 m!6001308))

(assert (=> b!4972904 m!6001308))

(assert (=> b!4972904 m!6001536))

(assert (=> b!4972904 m!6001536))

(assert (=> b!4972904 m!6001538))

(assert (=> d!1601177 m!6001308))

(assert (=> d!1601177 m!6001526))

(declare-fun m!6001540 () Bool)

(assert (=> d!1601177 m!6001540))

(assert (=> d!1601177 m!6001522))

(declare-fun m!6001542 () Bool)

(assert (=> d!1601177 m!6001542))

(assert (=> d!1601177 m!6001526))

(declare-fun m!6001544 () Bool)

(assert (=> d!1601177 m!6001544))

(assert (=> d!1601177 m!6001450))

(assert (=> d!1601177 m!6001308))

(assert (=> b!4972694 d!1601177))

(declare-fun b!4972930 () Bool)

(declare-fun e!3108102 () Bool)

(assert (=> b!4972930 (= e!3108102 true)))

(declare-fun b!4972929 () Bool)

(declare-fun e!3108101 () Bool)

(assert (=> b!4972929 (= e!3108101 e!3108102)))

(declare-fun b!4972922 () Bool)

(assert (=> b!4972922 e!3108101))

(assert (= b!4972929 b!4972930))

(assert (= b!4972922 b!4972929))

(declare-fun lambda!247506 () Int)

(declare-fun order!26257 () Int)

(declare-fun order!26259 () Int)

(declare-fun dynLambda!23209 (Int Int) Int)

(declare-fun dynLambda!23210 (Int Int) Int)

(assert (=> b!4972930 (< (dynLambda!23209 order!26257 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) (dynLambda!23210 order!26259 lambda!247506))))

(declare-fun order!26261 () Int)

(declare-fun dynLambda!23211 (Int Int) Int)

(assert (=> b!4972930 (< (dynLambda!23211 order!26261 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) (dynLambda!23210 order!26259 lambda!247506))))

(declare-fun b!4972917 () Bool)

(declare-fun e!3108092 () Option!14464)

(assert (=> b!4972917 (= e!3108092 None!14463)))

(declare-fun b!4972918 () Bool)

(declare-fun e!3108096 () Bool)

(declare-fun lt!2053833 () List!57590)

(declare-fun matchR!6643 (Regex!13633 List!57590) Bool)

(declare-datatypes ((tuple2!62224 0))(
  ( (tuple2!62225 (_1!34415 List!57590) (_2!34415 List!57590)) )
))
(declare-fun findLongestMatchInner!1862 (Regex!13633 List!57590 Int List!57590 List!57590 Int) tuple2!62224)

(declare-fun size!38097 (List!57590) Int)

(assert (=> b!4972918 (= e!3108096 (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))

(declare-fun b!4972919 () Bool)

(declare-fun lt!2053839 () Option!14464)

(declare-fun e!3108094 () Bool)

(declare-fun maxPrefixOneRule!3636 (LexerInterface!7992 Rule!16600 List!57590) Option!14463)

(assert (=> b!4972919 (= e!3108094 (= (list!18383 (_2!34411 (get!19958 lt!2053839))) (_2!34412 (get!19957 (maxPrefixOneRule!3636 thiss!15247 (h!63915 rulesArg!259) (list!18383 input!1342))))))))

(declare-fun b!4972920 () Bool)

(declare-fun e!3108093 () Bool)

(assert (=> b!4972920 (= e!3108093 e!3108094)))

(declare-fun res!2122836 () Bool)

(assert (=> b!4972920 (=> (not res!2122836) (not e!3108094))))

(assert (=> b!4972920 (= res!2122836 (= (_1!34411 (get!19958 lt!2053839)) (_1!34412 (get!19957 (maxPrefixOneRule!3636 thiss!15247 (h!63915 rulesArg!259) (list!18383 input!1342))))))))

(declare-fun b!4972921 () Bool)

(declare-fun e!3108095 () Bool)

(assert (=> b!4972921 (= e!3108095 e!3108093)))

(declare-fun res!2122834 () Bool)

(assert (=> b!4972921 (=> res!2122834 e!3108093)))

(assert (=> b!4972921 (= res!2122834 (not (isDefined!11377 lt!2053839)))))

(declare-datatypes ((tuple2!62226 0))(
  ( (tuple2!62227 (_1!34416 BalanceConc!29734) (_2!34416 BalanceConc!29734)) )
))
(declare-fun lt!2053837 () tuple2!62226)

(declare-fun apply!13911 (TokenValueInjection!16728 BalanceConc!29734) TokenValue!8710)

(declare-fun size!38098 (BalanceConc!29734) Int)

(assert (=> b!4972922 (= e!3108092 (Some!14463 (tuple2!62217 (Token!15297 (apply!13911 (transformation!8400 (h!63915 rulesArg!259)) (_1!34416 lt!2053837)) (h!63915 rulesArg!259) (size!38098 (_1!34416 lt!2053837)) (list!18383 (_1!34416 lt!2053837))) (_2!34416 lt!2053837))))))

(assert (=> b!4972922 (= lt!2053833 (list!18383 input!1342))))

(declare-fun lt!2053842 () Unit!148431)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1823 (Regex!13633 List!57590) Unit!148431)

(assert (=> b!4972922 (= lt!2053842 (longestMatchIsAcceptedByMatchOrIsEmpty!1823 (regex!8400 (h!63915 rulesArg!259)) lt!2053833))))

(declare-fun res!2122835 () Bool)

(declare-fun isEmpty!30977 (List!57590) Bool)

(assert (=> b!4972922 (= res!2122835 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))

(assert (=> b!4972922 (=> res!2122835 e!3108096)))

(assert (=> b!4972922 e!3108096))

(declare-fun lt!2053838 () Unit!148431)

(assert (=> b!4972922 (= lt!2053838 lt!2053842)))

(declare-fun lt!2053840 () Unit!148431)

(declare-fun lemmaInv!1341 (TokenValueInjection!16728) Unit!148431)

(assert (=> b!4972922 (= lt!2053840 (lemmaInv!1341 (transformation!8400 (h!63915 rulesArg!259))))))

(declare-fun lt!2053836 () Unit!148431)

(declare-fun ForallOf!1234 (Int BalanceConc!29734) Unit!148431)

(assert (=> b!4972922 (= lt!2053836 (ForallOf!1234 lambda!247506 (_1!34416 lt!2053837)))))

(declare-fun lt!2053841 () Unit!148431)

(declare-fun seqFromList!6043 (List!57590) BalanceConc!29734)

(assert (=> b!4972922 (= lt!2053841 (ForallOf!1234 lambda!247506 (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))

(declare-fun lt!2053835 () Option!14464)

(assert (=> b!4972922 (= lt!2053835 (Some!14463 (tuple2!62217 (Token!15297 (apply!13911 (transformation!8400 (h!63915 rulesArg!259)) (_1!34416 lt!2053837)) (h!63915 rulesArg!259) (size!38098 (_1!34416 lt!2053837)) (list!18383 (_1!34416 lt!2053837))) (_2!34416 lt!2053837))))))

(declare-fun lt!2053834 () Unit!148431)

(declare-fun lemmaEqSameImage!1175 (TokenValueInjection!16728 BalanceConc!29734 BalanceConc!29734) Unit!148431)

(assert (=> b!4972922 (= lt!2053834 (lemmaEqSameImage!1175 (transformation!8400 (h!63915 rulesArg!259)) (_1!34416 lt!2053837) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))

(declare-fun d!1601187 () Bool)

(assert (=> d!1601187 e!3108095))

(declare-fun res!2122833 () Bool)

(assert (=> d!1601187 (=> (not res!2122833) (not e!3108095))))

(assert (=> d!1601187 (= res!2122833 (= (isDefined!11377 lt!2053839) (isDefined!11376 (maxPrefixOneRule!3636 thiss!15247 (h!63915 rulesArg!259) (list!18383 input!1342)))))))

(assert (=> d!1601187 (= lt!2053839 e!3108092)))

(declare-fun c!848539 () Bool)

(declare-fun isEmpty!30978 (BalanceConc!29734) Bool)

(assert (=> d!1601187 (= c!848539 (isEmpty!30978 (_1!34416 lt!2053837)))))

(declare-fun findLongestMatchWithZipperSequenceV2!171 (Regex!13633 BalanceConc!29734 BalanceConc!29734) tuple2!62226)

(assert (=> d!1601187 (= lt!2053837 (findLongestMatchWithZipperSequenceV2!171 (regex!8400 (h!63915 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1601187 (ruleValid!3809 thiss!15247 (h!63915 rulesArg!259))))

(assert (=> d!1601187 (= (maxPrefixOneRuleZipperSequenceV2!368 thiss!15247 (h!63915 rulesArg!259) input!1342 totalInput!464) lt!2053839)))

(assert (= (and d!1601187 c!848539) b!4972917))

(assert (= (and d!1601187 (not c!848539)) b!4972922))

(assert (= (and b!4972922 (not res!2122835)) b!4972918))

(assert (= (and d!1601187 res!2122833) b!4972921))

(assert (= (and b!4972921 (not res!2122834)) b!4972920))

(assert (= (and b!4972920 res!2122836) b!4972919))

(declare-fun m!6001546 () Bool)

(assert (=> b!4972918 m!6001546))

(declare-fun m!6001548 () Bool)

(assert (=> b!4972918 m!6001548))

(assert (=> b!4972918 m!6001546))

(assert (=> b!4972918 m!6001548))

(declare-fun m!6001550 () Bool)

(assert (=> b!4972918 m!6001550))

(declare-fun m!6001552 () Bool)

(assert (=> b!4972918 m!6001552))

(assert (=> b!4972919 m!6001308))

(declare-fun m!6001554 () Bool)

(assert (=> b!4972919 m!6001554))

(declare-fun m!6001556 () Bool)

(assert (=> b!4972919 m!6001556))

(declare-fun m!6001558 () Bool)

(assert (=> b!4972919 m!6001558))

(declare-fun m!6001560 () Bool)

(assert (=> b!4972919 m!6001560))

(assert (=> b!4972919 m!6001308))

(assert (=> b!4972919 m!6001558))

(assert (=> b!4972920 m!6001556))

(assert (=> b!4972920 m!6001308))

(assert (=> b!4972920 m!6001308))

(assert (=> b!4972920 m!6001558))

(assert (=> b!4972920 m!6001558))

(assert (=> b!4972920 m!6001560))

(assert (=> b!4972922 m!6001308))

(assert (=> b!4972922 m!6001546))

(declare-fun m!6001562 () Bool)

(assert (=> b!4972922 m!6001562))

(declare-fun m!6001564 () Bool)

(assert (=> b!4972922 m!6001564))

(declare-fun m!6001566 () Bool)

(assert (=> b!4972922 m!6001566))

(declare-fun m!6001568 () Bool)

(assert (=> b!4972922 m!6001568))

(assert (=> b!4972922 m!6001548))

(assert (=> b!4972922 m!6001546))

(assert (=> b!4972922 m!6001548))

(assert (=> b!4972922 m!6001550))

(declare-fun m!6001570 () Bool)

(assert (=> b!4972922 m!6001570))

(assert (=> b!4972922 m!6001562))

(declare-fun m!6001572 () Bool)

(assert (=> b!4972922 m!6001572))

(declare-fun m!6001574 () Bool)

(assert (=> b!4972922 m!6001574))

(assert (=> b!4972922 m!6001562))

(declare-fun m!6001576 () Bool)

(assert (=> b!4972922 m!6001576))

(assert (=> b!4972922 m!6001574))

(declare-fun m!6001578 () Bool)

(assert (=> b!4972922 m!6001578))

(declare-fun m!6001580 () Bool)

(assert (=> b!4972922 m!6001580))

(assert (=> d!1601187 m!6001308))

(assert (=> d!1601187 m!6001448))

(declare-fun m!6001582 () Bool)

(assert (=> d!1601187 m!6001582))

(assert (=> d!1601187 m!6001558))

(declare-fun m!6001584 () Bool)

(assert (=> d!1601187 m!6001584))

(declare-fun m!6001586 () Bool)

(assert (=> d!1601187 m!6001586))

(assert (=> d!1601187 m!6001308))

(assert (=> d!1601187 m!6001558))

(declare-fun m!6001588 () Bool)

(assert (=> d!1601187 m!6001588))

(assert (=> b!4972921 m!6001582))

(assert (=> b!4972694 d!1601187))

(declare-fun d!1601189 () Bool)

(assert (=> d!1601189 (= (get!19957 (maxPrefix!4667 thiss!15247 rulesArg!259 lt!2053676)) (v!50457 (maxPrefix!4667 thiss!15247 rulesArg!259 lt!2053676)))))

(assert (=> b!4972693 d!1601189))

(declare-fun b!4972949 () Bool)

(declare-fun e!3108109 () Bool)

(declare-fun e!3108110 () Bool)

(assert (=> b!4972949 (= e!3108109 e!3108110)))

(declare-fun res!2122851 () Bool)

(assert (=> b!4972949 (=> (not res!2122851) (not e!3108110))))

(declare-fun lt!2053853 () Option!14463)

(assert (=> b!4972949 (= res!2122851 (isDefined!11376 lt!2053853))))

(declare-fun b!4972950 () Bool)

(declare-fun res!2122854 () Bool)

(assert (=> b!4972950 (=> (not res!2122854) (not e!3108110))))

(declare-fun charsOf!5444 (Token!15296) BalanceConc!29734)

(assert (=> b!4972950 (= res!2122854 (= (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))) (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853)))))))

(declare-fun call!346823 () Option!14463)

(declare-fun bm!346818 () Bool)

(assert (=> bm!346818 (= call!346823 (maxPrefixOneRule!3636 thiss!15247 (h!63915 rulesArg!259) lt!2053676))))

(declare-fun b!4972952 () Bool)

(declare-fun res!2122857 () Bool)

(assert (=> b!4972952 (=> (not res!2122857) (not e!3108110))))

(assert (=> b!4972952 (= res!2122857 (matchR!6643 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))

(declare-fun b!4972953 () Bool)

(declare-fun res!2122855 () Bool)

(assert (=> b!4972953 (=> (not res!2122855) (not e!3108110))))

(assert (=> b!4972953 (= res!2122855 (< (size!38097 (_2!34412 (get!19957 lt!2053853))) (size!38097 lt!2053676)))))

(declare-fun b!4972954 () Bool)

(declare-fun res!2122853 () Bool)

(assert (=> b!4972954 (=> (not res!2122853) (not e!3108110))))

(declare-fun ++!12539 (List!57590 List!57590) List!57590)

(assert (=> b!4972954 (= res!2122853 (= (++!12539 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))) (_2!34412 (get!19957 lt!2053853))) lt!2053676))))

(declare-fun b!4972955 () Bool)

(declare-fun res!2122852 () Bool)

(assert (=> b!4972955 (=> (not res!2122852) (not e!3108110))))

(assert (=> b!4972955 (= res!2122852 (= (value!268840 (_1!34412 (get!19957 lt!2053853))) (apply!13911 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun b!4972956 () Bool)

(declare-fun e!3108111 () Option!14463)

(declare-fun lt!2053854 () Option!14463)

(declare-fun lt!2053857 () Option!14463)

(assert (=> b!4972956 (= e!3108111 (ite (and ((_ is None!14462) lt!2053854) ((_ is None!14462) lt!2053857)) None!14462 (ite ((_ is None!14462) lt!2053857) lt!2053854 (ite ((_ is None!14462) lt!2053854) lt!2053857 (ite (>= (size!38094 (_1!34412 (v!50457 lt!2053854))) (size!38094 (_1!34412 (v!50457 lt!2053857)))) lt!2053854 lt!2053857)))))))

(assert (=> b!4972956 (= lt!2053854 call!346823)))

(assert (=> b!4972956 (= lt!2053857 (maxPrefix!4667 thiss!15247 (t!369197 rulesArg!259) lt!2053676))))

(declare-fun b!4972957 () Bool)

(declare-fun contains!19545 (List!57591 Rule!16600) Bool)

(assert (=> b!4972957 (= e!3108110 (contains!19545 rulesArg!259 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))

(declare-fun b!4972951 () Bool)

(assert (=> b!4972951 (= e!3108111 call!346823)))

(declare-fun d!1601191 () Bool)

(assert (=> d!1601191 e!3108109))

(declare-fun res!2122856 () Bool)

(assert (=> d!1601191 (=> res!2122856 e!3108109)))

(assert (=> d!1601191 (= res!2122856 (isEmpty!30975 lt!2053853))))

(assert (=> d!1601191 (= lt!2053853 e!3108111)))

(declare-fun c!848542 () Bool)

(assert (=> d!1601191 (= c!848542 (and ((_ is Cons!57467) rulesArg!259) ((_ is Nil!57467) (t!369197 rulesArg!259))))))

(declare-fun lt!2053855 () Unit!148431)

(declare-fun lt!2053856 () Unit!148431)

(assert (=> d!1601191 (= lt!2053855 lt!2053856)))

(assert (=> d!1601191 (isPrefix!5251 lt!2053676 lt!2053676)))

(assert (=> d!1601191 (= lt!2053856 (lemmaIsPrefixRefl!3575 lt!2053676 lt!2053676))))

(assert (=> d!1601191 (rulesValidInductive!3303 thiss!15247 rulesArg!259)))

(assert (=> d!1601191 (= (maxPrefix!4667 thiss!15247 rulesArg!259 lt!2053676) lt!2053853)))

(assert (= (and d!1601191 c!848542) b!4972951))

(assert (= (and d!1601191 (not c!848542)) b!4972956))

(assert (= (or b!4972951 b!4972956) bm!346818))

(assert (= (and d!1601191 (not res!2122856)) b!4972949))

(assert (= (and b!4972949 res!2122851) b!4972950))

(assert (= (and b!4972950 res!2122854) b!4972953))

(assert (= (and b!4972953 res!2122855) b!4972954))

(assert (= (and b!4972954 res!2122853) b!4972955))

(assert (= (and b!4972955 res!2122852) b!4972952))

(assert (= (and b!4972952 res!2122857) b!4972957))

(declare-fun m!6001590 () Bool)

(assert (=> b!4972949 m!6001590))

(declare-fun m!6001592 () Bool)

(assert (=> b!4972950 m!6001592))

(declare-fun m!6001594 () Bool)

(assert (=> b!4972950 m!6001594))

(assert (=> b!4972950 m!6001594))

(declare-fun m!6001596 () Bool)

(assert (=> b!4972950 m!6001596))

(declare-fun m!6001598 () Bool)

(assert (=> b!4972956 m!6001598))

(declare-fun m!6001600 () Bool)

(assert (=> bm!346818 m!6001600))

(assert (=> b!4972953 m!6001592))

(declare-fun m!6001602 () Bool)

(assert (=> b!4972953 m!6001602))

(declare-fun m!6001604 () Bool)

(assert (=> b!4972953 m!6001604))

(declare-fun m!6001606 () Bool)

(assert (=> d!1601191 m!6001606))

(assert (=> d!1601191 m!6001310))

(assert (=> d!1601191 m!6001312))

(assert (=> d!1601191 m!6001336))

(assert (=> b!4972957 m!6001592))

(declare-fun m!6001608 () Bool)

(assert (=> b!4972957 m!6001608))

(assert (=> b!4972954 m!6001592))

(assert (=> b!4972954 m!6001594))

(assert (=> b!4972954 m!6001594))

(assert (=> b!4972954 m!6001596))

(assert (=> b!4972954 m!6001596))

(declare-fun m!6001610 () Bool)

(assert (=> b!4972954 m!6001610))

(assert (=> b!4972952 m!6001592))

(assert (=> b!4972952 m!6001594))

(assert (=> b!4972952 m!6001594))

(assert (=> b!4972952 m!6001596))

(assert (=> b!4972952 m!6001596))

(declare-fun m!6001612 () Bool)

(assert (=> b!4972952 m!6001612))

(assert (=> b!4972955 m!6001592))

(declare-fun m!6001614 () Bool)

(assert (=> b!4972955 m!6001614))

(assert (=> b!4972955 m!6001614))

(declare-fun m!6001616 () Bool)

(assert (=> b!4972955 m!6001616))

(assert (=> b!4972693 d!1601191))

(assert (=> b!4972693 d!1601159))

(declare-fun d!1601193 () Bool)

(declare-fun list!18385 (Conc!15152) List!57590)

(assert (=> d!1601193 (= (list!18383 (_2!34411 lt!2053679)) (list!18385 (c!848514 (_2!34411 lt!2053679))))))

(declare-fun bs!1183650 () Bool)

(assert (= bs!1183650 d!1601193))

(declare-fun m!6001618 () Bool)

(assert (=> bs!1183650 m!6001618))

(assert (=> b!4972704 d!1601193))

(declare-fun d!1601195 () Bool)

(declare-fun c!848545 () Bool)

(assert (=> d!1601195 (= c!848545 ((_ is Node!15152) (c!848514 totalInput!464)))))

(declare-fun e!3108116 () Bool)

(assert (=> d!1601195 (= (inv!75123 (c!848514 totalInput!464)) e!3108116)))

(declare-fun b!4972964 () Bool)

(declare-fun inv!75128 (Conc!15152) Bool)

(assert (=> b!4972964 (= e!3108116 (inv!75128 (c!848514 totalInput!464)))))

(declare-fun b!4972965 () Bool)

(declare-fun e!3108117 () Bool)

(assert (=> b!4972965 (= e!3108116 e!3108117)))

(declare-fun res!2122860 () Bool)

(assert (=> b!4972965 (= res!2122860 (not ((_ is Leaf!25177) (c!848514 totalInput!464))))))

(assert (=> b!4972965 (=> res!2122860 e!3108117)))

(declare-fun b!4972966 () Bool)

(declare-fun inv!75129 (Conc!15152) Bool)

(assert (=> b!4972966 (= e!3108117 (inv!75129 (c!848514 totalInput!464)))))

(assert (= (and d!1601195 c!848545) b!4972964))

(assert (= (and d!1601195 (not c!848545)) b!4972965))

(assert (= (and b!4972965 (not res!2122860)) b!4972966))

(declare-fun m!6001620 () Bool)

(assert (=> b!4972964 m!6001620))

(declare-fun m!6001622 () Bool)

(assert (=> b!4972966 m!6001622))

(assert (=> b!4972695 d!1601195))

(declare-fun d!1601197 () Bool)

(declare-fun e!3108120 () Bool)

(assert (=> d!1601197 e!3108120))

(declare-fun res!2122863 () Bool)

(assert (=> d!1601197 (=> res!2122863 e!3108120)))

(declare-fun lt!2053860 () Bool)

(assert (=> d!1601197 (= res!2122863 (not lt!2053860))))

(declare-fun drop!2356 (List!57590 Int) List!57590)

(assert (=> d!1601197 (= lt!2053860 (= lt!2053676 (drop!2356 (list!18383 totalInput!464) (- (size!38097 (list!18383 totalInput!464)) (size!38097 lt!2053676)))))))

(assert (=> d!1601197 (= (isSuffix!1199 lt!2053676 (list!18383 totalInput!464)) lt!2053860)))

(declare-fun b!4972969 () Bool)

(assert (=> b!4972969 (= e!3108120 (>= (size!38097 (list!18383 totalInput!464)) (size!38097 lt!2053676)))))

(assert (= (and d!1601197 (not res!2122863)) b!4972969))

(assert (=> d!1601197 m!6001304))

(declare-fun m!6001624 () Bool)

(assert (=> d!1601197 m!6001624))

(assert (=> d!1601197 m!6001604))

(assert (=> d!1601197 m!6001304))

(declare-fun m!6001626 () Bool)

(assert (=> d!1601197 m!6001626))

(assert (=> b!4972969 m!6001304))

(assert (=> b!4972969 m!6001624))

(assert (=> b!4972969 m!6001604))

(assert (=> b!4972706 d!1601197))

(declare-fun d!1601199 () Bool)

(assert (=> d!1601199 (= (list!18383 totalInput!464) (list!18385 (c!848514 totalInput!464)))))

(declare-fun bs!1183651 () Bool)

(assert (= bs!1183651 d!1601199))

(declare-fun m!6001628 () Bool)

(assert (=> bs!1183651 m!6001628))

(assert (=> b!4972706 d!1601199))

(declare-fun d!1601201 () Bool)

(assert (=> d!1601201 (= (list!18383 input!1342) (list!18385 (c!848514 input!1342)))))

(declare-fun bs!1183652 () Bool)

(assert (= bs!1183652 d!1601201))

(declare-fun m!6001630 () Bool)

(assert (=> bs!1183652 m!6001630))

(assert (=> b!4972706 d!1601201))

(declare-fun d!1601203 () Bool)

(assert (=> d!1601203 (= (inv!75118 (tag!9264 (h!63915 rulesArg!259))) (= (mod (str.len (value!268839 (tag!9264 (h!63915 rulesArg!259)))) 2) 0))))

(assert (=> b!4972691 d!1601203))

(declare-fun d!1601205 () Bool)

(declare-fun res!2122866 () Bool)

(declare-fun e!3108123 () Bool)

(assert (=> d!1601205 (=> (not res!2122866) (not e!3108123))))

(declare-fun semiInverseModEq!3707 (Int Int) Bool)

(assert (=> d!1601205 (= res!2122866 (semiInverseModEq!3707 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))))))

(assert (=> d!1601205 (= (inv!75122 (transformation!8400 (h!63915 rulesArg!259))) e!3108123)))

(declare-fun b!4972972 () Bool)

(declare-fun equivClasses!3555 (Int Int) Bool)

(assert (=> b!4972972 (= e!3108123 (equivClasses!3555 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))))))

(assert (= (and d!1601205 res!2122866) b!4972972))

(declare-fun m!6001632 () Bool)

(assert (=> d!1601205 m!6001632))

(declare-fun m!6001634 () Bool)

(assert (=> b!4972972 m!6001634))

(assert (=> b!4972691 d!1601205))

(declare-fun d!1601207 () Bool)

(assert (=> d!1601207 (= (list!18383 (_2!34411 lt!2053677)) (list!18385 (c!848514 (_2!34411 lt!2053677))))))

(declare-fun bs!1183653 () Bool)

(assert (= bs!1183653 d!1601207))

(declare-fun m!6001636 () Bool)

(assert (=> bs!1183653 m!6001636))

(assert (=> b!4972702 d!1601207))

(declare-fun d!1601209 () Bool)

(assert (=> d!1601209 (= (isEmpty!30970 rulesArg!259) ((_ is Nil!57467) rulesArg!259))))

(assert (=> b!4972701 d!1601209))

(declare-fun d!1601211 () Bool)

(declare-fun c!848546 () Bool)

(assert (=> d!1601211 (= c!848546 ((_ is Node!15152) (c!848514 input!1342)))))

(declare-fun e!3108124 () Bool)

(assert (=> d!1601211 (= (inv!75123 (c!848514 input!1342)) e!3108124)))

(declare-fun b!4972973 () Bool)

(assert (=> b!4972973 (= e!3108124 (inv!75128 (c!848514 input!1342)))))

(declare-fun b!4972974 () Bool)

(declare-fun e!3108125 () Bool)

(assert (=> b!4972974 (= e!3108124 e!3108125)))

(declare-fun res!2122867 () Bool)

(assert (=> b!4972974 (= res!2122867 (not ((_ is Leaf!25177) (c!848514 input!1342))))))

(assert (=> b!4972974 (=> res!2122867 e!3108125)))

(declare-fun b!4972975 () Bool)

(assert (=> b!4972975 (= e!3108125 (inv!75129 (c!848514 input!1342)))))

(assert (= (and d!1601211 c!848546) b!4972973))

(assert (= (and d!1601211 (not c!848546)) b!4972974))

(assert (= (and b!4972974 (not res!2122867)) b!4972975))

(declare-fun m!6001638 () Bool)

(assert (=> b!4972973 m!6001638))

(declare-fun m!6001640 () Bool)

(assert (=> b!4972975 m!6001640))

(assert (=> b!4972703 d!1601211))

(declare-fun b!4972987 () Bool)

(declare-fun e!3108132 () Bool)

(assert (=> b!4972987 (= e!3108132 (>= (size!38097 lt!2053676) (size!38097 lt!2053676)))))

(declare-fun b!4972985 () Bool)

(declare-fun res!2122876 () Bool)

(declare-fun e!3108134 () Bool)

(assert (=> b!4972985 (=> (not res!2122876) (not e!3108134))))

(declare-fun head!10675 (List!57590) C!27516)

(assert (=> b!4972985 (= res!2122876 (= (head!10675 lt!2053676) (head!10675 lt!2053676)))))

(declare-fun b!4972986 () Bool)

(declare-fun tail!9808 (List!57590) List!57590)

(assert (=> b!4972986 (= e!3108134 (isPrefix!5251 (tail!9808 lt!2053676) (tail!9808 lt!2053676)))))

(declare-fun d!1601213 () Bool)

(assert (=> d!1601213 e!3108132))

(declare-fun res!2122877 () Bool)

(assert (=> d!1601213 (=> res!2122877 e!3108132)))

(declare-fun lt!2053863 () Bool)

(assert (=> d!1601213 (= res!2122877 (not lt!2053863))))

(declare-fun e!3108133 () Bool)

(assert (=> d!1601213 (= lt!2053863 e!3108133)))

(declare-fun res!2122879 () Bool)

(assert (=> d!1601213 (=> res!2122879 e!3108133)))

(assert (=> d!1601213 (= res!2122879 ((_ is Nil!57466) lt!2053676))))

(assert (=> d!1601213 (= (isPrefix!5251 lt!2053676 lt!2053676) lt!2053863)))

(declare-fun b!4972984 () Bool)

(assert (=> b!4972984 (= e!3108133 e!3108134)))

(declare-fun res!2122878 () Bool)

(assert (=> b!4972984 (=> (not res!2122878) (not e!3108134))))

(assert (=> b!4972984 (= res!2122878 (not ((_ is Nil!57466) lt!2053676)))))

(assert (= (and d!1601213 (not res!2122879)) b!4972984))

(assert (= (and b!4972984 res!2122878) b!4972985))

(assert (= (and b!4972985 res!2122876) b!4972986))

(assert (= (and d!1601213 (not res!2122877)) b!4972987))

(assert (=> b!4972987 m!6001604))

(assert (=> b!4972987 m!6001604))

(declare-fun m!6001642 () Bool)

(assert (=> b!4972985 m!6001642))

(assert (=> b!4972985 m!6001642))

(declare-fun m!6001644 () Bool)

(assert (=> b!4972986 m!6001644))

(assert (=> b!4972986 m!6001644))

(assert (=> b!4972986 m!6001644))

(assert (=> b!4972986 m!6001644))

(declare-fun m!6001646 () Bool)

(assert (=> b!4972986 m!6001646))

(assert (=> b!4972692 d!1601213))

(declare-fun d!1601215 () Bool)

(assert (=> d!1601215 (isPrefix!5251 lt!2053676 lt!2053676)))

(declare-fun lt!2053866 () Unit!148431)

(declare-fun choose!36709 (List!57590 List!57590) Unit!148431)

(assert (=> d!1601215 (= lt!2053866 (choose!36709 lt!2053676 lt!2053676))))

(assert (=> d!1601215 (= (lemmaIsPrefixRefl!3575 lt!2053676 lt!2053676) lt!2053866)))

(declare-fun bs!1183654 () Bool)

(assert (= bs!1183654 d!1601215))

(assert (=> bs!1183654 m!6001310))

(declare-fun m!6001648 () Bool)

(assert (=> bs!1183654 m!6001648))

(assert (=> b!4972692 d!1601215))

(declare-fun b!4972996 () Bool)

(declare-fun e!3108140 () Bool)

(declare-fun tp!1394434 () Bool)

(declare-fun tp!1394436 () Bool)

(assert (=> b!4972996 (= e!3108140 (and (inv!75123 (left!41922 (c!848514 totalInput!464))) tp!1394436 (inv!75123 (right!42252 (c!848514 totalInput!464))) tp!1394434))))

(declare-fun b!4972998 () Bool)

(declare-fun e!3108139 () Bool)

(declare-fun tp!1394435 () Bool)

(assert (=> b!4972998 (= e!3108139 tp!1394435)))

(declare-fun b!4972997 () Bool)

(declare-fun inv!75130 (IArray!30365) Bool)

(assert (=> b!4972997 (= e!3108140 (and (inv!75130 (xs!18478 (c!848514 totalInput!464))) e!3108139))))

(assert (=> b!4972695 (= tp!1394384 (and (inv!75123 (c!848514 totalInput!464)) e!3108140))))

(assert (= (and b!4972695 ((_ is Node!15152) (c!848514 totalInput!464))) b!4972996))

(assert (= b!4972997 b!4972998))

(assert (= (and b!4972695 ((_ is Leaf!25177) (c!848514 totalInput!464))) b!4972997))

(declare-fun m!6001650 () Bool)

(assert (=> b!4972996 m!6001650))

(declare-fun m!6001652 () Bool)

(assert (=> b!4972996 m!6001652))

(declare-fun m!6001654 () Bool)

(assert (=> b!4972997 m!6001654))

(assert (=> b!4972695 m!6001330))

(declare-fun b!4973009 () Bool)

(declare-fun b_free!132859 () Bool)

(declare-fun b_next!133649 () Bool)

(assert (=> b!4973009 (= b_free!132859 (not b_next!133649))))

(declare-fun tp!1394445 () Bool)

(declare-fun b_and!348839 () Bool)

(assert (=> b!4973009 (= tp!1394445 b_and!348839)))

(declare-fun b_free!132861 () Bool)

(declare-fun b_next!133651 () Bool)

(assert (=> b!4973009 (= b_free!132861 (not b_next!133651))))

(declare-fun tp!1394446 () Bool)

(declare-fun b_and!348841 () Bool)

(assert (=> b!4973009 (= tp!1394446 b_and!348841)))

(declare-fun e!3108149 () Bool)

(assert (=> b!4973009 (= e!3108149 (and tp!1394445 tp!1394446))))

(declare-fun e!3108152 () Bool)

(declare-fun tp!1394447 () Bool)

(declare-fun b!4973008 () Bool)

(assert (=> b!4973008 (= e!3108152 (and tp!1394447 (inv!75118 (tag!9264 (h!63915 (t!369197 rulesArg!259)))) (inv!75122 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) e!3108149))))

(declare-fun b!4973007 () Bool)

(declare-fun e!3108150 () Bool)

(declare-fun tp!1394448 () Bool)

(assert (=> b!4973007 (= e!3108150 (and e!3108152 tp!1394448))))

(assert (=> b!4972705 (= tp!1394386 e!3108150)))

(assert (= b!4973008 b!4973009))

(assert (= b!4973007 b!4973008))

(assert (= (and b!4972705 ((_ is Cons!57467) (t!369197 rulesArg!259))) b!4973007))

(declare-fun m!6001656 () Bool)

(assert (=> b!4973008 m!6001656))

(declare-fun m!6001658 () Bool)

(assert (=> b!4973008 m!6001658))

(declare-fun e!3108155 () Bool)

(assert (=> b!4972691 (= tp!1394388 e!3108155)))

(declare-fun b!4973020 () Bool)

(declare-fun tp_is_empty!36347 () Bool)

(assert (=> b!4973020 (= e!3108155 tp_is_empty!36347)))

(declare-fun b!4973021 () Bool)

(declare-fun tp!1394463 () Bool)

(declare-fun tp!1394460 () Bool)

(assert (=> b!4973021 (= e!3108155 (and tp!1394463 tp!1394460))))

(declare-fun b!4973023 () Bool)

(declare-fun tp!1394461 () Bool)

(declare-fun tp!1394462 () Bool)

(assert (=> b!4973023 (= e!3108155 (and tp!1394461 tp!1394462))))

(declare-fun b!4973022 () Bool)

(declare-fun tp!1394459 () Bool)

(assert (=> b!4973022 (= e!3108155 tp!1394459)))

(assert (= (and b!4972691 ((_ is ElementMatch!13633) (regex!8400 (h!63915 rulesArg!259)))) b!4973020))

(assert (= (and b!4972691 ((_ is Concat!22344) (regex!8400 (h!63915 rulesArg!259)))) b!4973021))

(assert (= (and b!4972691 ((_ is Star!13633) (regex!8400 (h!63915 rulesArg!259)))) b!4973022))

(assert (= (and b!4972691 ((_ is Union!13633) (regex!8400 (h!63915 rulesArg!259)))) b!4973023))

(declare-fun tp!1394464 () Bool)

(declare-fun b!4973024 () Bool)

(declare-fun e!3108157 () Bool)

(declare-fun tp!1394466 () Bool)

(assert (=> b!4973024 (= e!3108157 (and (inv!75123 (left!41922 (c!848514 input!1342))) tp!1394466 (inv!75123 (right!42252 (c!848514 input!1342))) tp!1394464))))

(declare-fun b!4973026 () Bool)

(declare-fun e!3108156 () Bool)

(declare-fun tp!1394465 () Bool)

(assert (=> b!4973026 (= e!3108156 tp!1394465)))

(declare-fun b!4973025 () Bool)

(assert (=> b!4973025 (= e!3108157 (and (inv!75130 (xs!18478 (c!848514 input!1342))) e!3108156))))

(assert (=> b!4972703 (= tp!1394385 (and (inv!75123 (c!848514 input!1342)) e!3108157))))

(assert (= (and b!4972703 ((_ is Node!15152) (c!848514 input!1342))) b!4973024))

(assert (= b!4973025 b!4973026))

(assert (= (and b!4972703 ((_ is Leaf!25177) (c!848514 input!1342))) b!4973025))

(declare-fun m!6001660 () Bool)

(assert (=> b!4973024 m!6001660))

(declare-fun m!6001662 () Bool)

(assert (=> b!4973024 m!6001662))

(declare-fun m!6001664 () Bool)

(assert (=> b!4973025 m!6001664))

(assert (=> b!4972703 m!6001322))

(check-sat (not b!4972952) (not b!4972898) (not b!4972920) (not b!4972956) tp_is_empty!36347 (not d!1601177) (not b!4972975) (not b!4972899) (not b!4972954) (not b!4973022) (not b!4973024) (not d!1601191) (not b!4972922) (not b!4972973) (not b_next!133641) (not b!4972985) (not b!4973023) (not b!4972972) (not b!4972987) (not d!1601205) (not bm!346806) (not bm!346818) (not b!4972767) (not b!4973026) b_and!348839 (not b!4972901) (not d!1601147) (not b!4972966) (not b!4972953) (not d!1601215) (not b!4972949) (not d!1601151) (not b!4972996) b_and!348831 (not b!4972695) (not b!4972919) (not b!4972986) (not b!4972918) (not b!4973021) b_and!348833 (not d!1601149) (not b!4972998) (not b!4972900) (not b_next!133643) (not b_next!133649) (not b!4972950) (not b!4972997) (not b!4973008) (not b!4972902) (not b!4972964) (not b!4972703) (not d!1601199) (not d!1601197) (not d!1601155) (not b!4972812) (not b!4973007) (not d!1601207) (not b!4972904) (not d!1601187) (not b!4972921) (not b!4972903) (not d!1601153) (not d!1601193) (not b_next!133651) b_and!348841 (not d!1601201) (not b!4973025) (not b!4972969) (not b!4972957) (not b!4972813) (not d!1601161) (not bm!346815) (not b!4972955))
(check-sat (not b_next!133641) b_and!348839 b_and!348831 b_and!348833 (not b_next!133643) (not b_next!133649) (not b_next!133651) b_and!348841)
(get-model)

(declare-fun d!1601241 () Bool)

(declare-fun res!2122957 () Bool)

(declare-fun e!3108201 () Bool)

(assert (=> d!1601241 (=> (not res!2122957) (not e!3108201))))

(declare-fun size!38100 (Conc!15152) Int)

(assert (=> d!1601241 (= res!2122957 (= (csize!30534 (c!848514 input!1342)) (+ (size!38100 (left!41922 (c!848514 input!1342))) (size!38100 (right!42252 (c!848514 input!1342))))))))

(assert (=> d!1601241 (= (inv!75128 (c!848514 input!1342)) e!3108201)))

(declare-fun b!4973108 () Bool)

(declare-fun res!2122958 () Bool)

(assert (=> b!4973108 (=> (not res!2122958) (not e!3108201))))

(assert (=> b!4973108 (= res!2122958 (and (not (= (left!41922 (c!848514 input!1342)) Empty!15152)) (not (= (right!42252 (c!848514 input!1342)) Empty!15152))))))

(declare-fun b!4973109 () Bool)

(declare-fun res!2122959 () Bool)

(assert (=> b!4973109 (=> (not res!2122959) (not e!3108201))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2020 (Conc!15152) Int)

(assert (=> b!4973109 (= res!2122959 (= (cheight!15363 (c!848514 input!1342)) (+ (max!0 (height!2020 (left!41922 (c!848514 input!1342))) (height!2020 (right!42252 (c!848514 input!1342)))) 1)))))

(declare-fun b!4973110 () Bool)

(assert (=> b!4973110 (= e!3108201 (<= 0 (cheight!15363 (c!848514 input!1342))))))

(assert (= (and d!1601241 res!2122957) b!4973108))

(assert (= (and b!4973108 res!2122958) b!4973109))

(assert (= (and b!4973109 res!2122959) b!4973110))

(declare-fun m!6001742 () Bool)

(assert (=> d!1601241 m!6001742))

(declare-fun m!6001744 () Bool)

(assert (=> d!1601241 m!6001744))

(declare-fun m!6001746 () Bool)

(assert (=> b!4973109 m!6001746))

(declare-fun m!6001748 () Bool)

(assert (=> b!4973109 m!6001748))

(assert (=> b!4973109 m!6001746))

(assert (=> b!4973109 m!6001748))

(declare-fun m!6001750 () Bool)

(assert (=> b!4973109 m!6001750))

(assert (=> b!4972973 d!1601241))

(declare-fun d!1601243 () Bool)

(assert (=> d!1601243 true))

(declare-fun lambda!247509 () Int)

(declare-fun order!26263 () Int)

(declare-fun dynLambda!23212 (Int Int) Int)

(assert (=> d!1601243 (< (dynLambda!23209 order!26257 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) (dynLambda!23212 order!26263 lambda!247509))))

(declare-fun Forall2!1292 (Int) Bool)

(assert (=> d!1601243 (= (equivClasses!3555 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) (Forall2!1292 lambda!247509))))

(declare-fun bs!1183657 () Bool)

(assert (= bs!1183657 d!1601243))

(declare-fun m!6001752 () Bool)

(assert (=> bs!1183657 m!6001752))

(assert (=> b!4972972 d!1601243))

(declare-fun b!4973207 () Bool)

(declare-fun e!3108259 () Bool)

(declare-fun lt!2054011 () Option!14463)

(assert (=> b!4973207 (= e!3108259 (= (size!38094 (_1!34412 (get!19957 lt!2054011))) (size!38097 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054011))))))))

(declare-fun b!4973208 () Bool)

(declare-fun res!2122994 () Bool)

(assert (=> b!4973208 (=> (not res!2122994) (not e!3108259))))

(assert (=> b!4973208 (= res!2122994 (= (rule!11662 (_1!34412 (get!19957 lt!2054011))) (h!63915 rulesArg!259)))))

(declare-fun b!4973209 () Bool)

(declare-fun res!2122993 () Bool)

(assert (=> b!4973209 (=> (not res!2122993) (not e!3108259))))

(assert (=> b!4973209 (= res!2122993 (< (size!38097 (_2!34412 (get!19957 lt!2054011))) (size!38097 lt!2053676)))))

(declare-fun b!4973210 () Bool)

(declare-fun e!3108256 () Option!14463)

(declare-fun lt!2054010 () tuple2!62224)

(assert (=> b!4973210 (= e!3108256 (Some!14462 (tuple2!62219 (Token!15297 (apply!13911 (transformation!8400 (h!63915 rulesArg!259)) (seqFromList!6043 (_1!34415 lt!2054010))) (h!63915 rulesArg!259) (size!38098 (seqFromList!6043 (_1!34415 lt!2054010))) (_1!34415 lt!2054010)) (_2!34415 lt!2054010))))))

(declare-fun lt!2054009 () Unit!148431)

(assert (=> b!4973210 (= lt!2054009 (longestMatchIsAcceptedByMatchOrIsEmpty!1823 (regex!8400 (h!63915 rulesArg!259)) lt!2053676))))

(declare-fun res!2122991 () Bool)

(assert (=> b!4973210 (= res!2122991 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))))))

(declare-fun e!3108257 () Bool)

(assert (=> b!4973210 (=> res!2122991 e!3108257)))

(assert (=> b!4973210 e!3108257))

(declare-fun lt!2054008 () Unit!148431)

(assert (=> b!4973210 (= lt!2054008 lt!2054009)))

(declare-fun lt!2054007 () Unit!148431)

(declare-fun lemmaSemiInverse!2609 (TokenValueInjection!16728 BalanceConc!29734) Unit!148431)

(assert (=> b!4973210 (= lt!2054007 (lemmaSemiInverse!2609 (transformation!8400 (h!63915 rulesArg!259)) (seqFromList!6043 (_1!34415 lt!2054010))))))

(declare-fun b!4973211 () Bool)

(declare-fun res!2122995 () Bool)

(assert (=> b!4973211 (=> (not res!2122995) (not e!3108259))))

(assert (=> b!4973211 (= res!2122995 (= (++!12539 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011)))) (_2!34412 (get!19957 lt!2054011))) lt!2053676))))

(declare-fun b!4973212 () Bool)

(assert (=> b!4973212 (= e!3108256 None!14462)))

(declare-fun d!1601245 () Bool)

(declare-fun e!3108258 () Bool)

(assert (=> d!1601245 e!3108258))

(declare-fun res!2122992 () Bool)

(assert (=> d!1601245 (=> res!2122992 e!3108258)))

(assert (=> d!1601245 (= res!2122992 (isEmpty!30975 lt!2054011))))

(assert (=> d!1601245 (= lt!2054011 e!3108256)))

(declare-fun c!848595 () Bool)

(assert (=> d!1601245 (= c!848595 (isEmpty!30977 (_1!34415 lt!2054010)))))

(declare-fun findLongestMatch!1704 (Regex!13633 List!57590) tuple2!62224)

(assert (=> d!1601245 (= lt!2054010 (findLongestMatch!1704 (regex!8400 (h!63915 rulesArg!259)) lt!2053676))))

(assert (=> d!1601245 (ruleValid!3809 thiss!15247 (h!63915 rulesArg!259))))

(assert (=> d!1601245 (= (maxPrefixOneRule!3636 thiss!15247 (h!63915 rulesArg!259) lt!2053676) lt!2054011)))

(declare-fun b!4973213 () Bool)

(assert (=> b!4973213 (= e!3108257 (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))))))

(declare-fun b!4973214 () Bool)

(assert (=> b!4973214 (= e!3108258 e!3108259)))

(declare-fun res!2122990 () Bool)

(assert (=> b!4973214 (=> (not res!2122990) (not e!3108259))))

(assert (=> b!4973214 (= res!2122990 (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011))))))))

(declare-fun b!4973215 () Bool)

(declare-fun res!2122996 () Bool)

(assert (=> b!4973215 (=> (not res!2122996) (not e!3108259))))

(assert (=> b!4973215 (= res!2122996 (= (value!268840 (_1!34412 (get!19957 lt!2054011))) (apply!13911 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011)))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054011)))))))))

(assert (= (and d!1601245 c!848595) b!4973212))

(assert (= (and d!1601245 (not c!848595)) b!4973210))

(assert (= (and b!4973210 (not res!2122991)) b!4973213))

(assert (= (and d!1601245 (not res!2122992)) b!4973214))

(assert (= (and b!4973214 res!2122990) b!4973211))

(assert (= (and b!4973211 res!2122995) b!4973209))

(assert (= (and b!4973209 res!2122993) b!4973208))

(assert (= (and b!4973208 res!2122994) b!4973215))

(assert (= (and b!4973215 res!2122996) b!4973207))

(declare-fun m!6001880 () Bool)

(assert (=> b!4973215 m!6001880))

(declare-fun m!6001882 () Bool)

(assert (=> b!4973215 m!6001882))

(assert (=> b!4973215 m!6001882))

(declare-fun m!6001884 () Bool)

(assert (=> b!4973215 m!6001884))

(declare-fun m!6001886 () Bool)

(assert (=> d!1601245 m!6001886))

(declare-fun m!6001888 () Bool)

(assert (=> d!1601245 m!6001888))

(declare-fun m!6001890 () Bool)

(assert (=> d!1601245 m!6001890))

(assert (=> d!1601245 m!6001448))

(assert (=> b!4973209 m!6001880))

(declare-fun m!6001892 () Bool)

(assert (=> b!4973209 m!6001892))

(assert (=> b!4973209 m!6001604))

(assert (=> b!4973207 m!6001880))

(declare-fun m!6001894 () Bool)

(assert (=> b!4973207 m!6001894))

(assert (=> b!4973211 m!6001880))

(declare-fun m!6001896 () Bool)

(assert (=> b!4973211 m!6001896))

(assert (=> b!4973211 m!6001896))

(declare-fun m!6001898 () Bool)

(assert (=> b!4973211 m!6001898))

(assert (=> b!4973211 m!6001898))

(declare-fun m!6001900 () Bool)

(assert (=> b!4973211 m!6001900))

(assert (=> b!4973208 m!6001880))

(assert (=> b!4973214 m!6001880))

(assert (=> b!4973214 m!6001896))

(assert (=> b!4973214 m!6001896))

(assert (=> b!4973214 m!6001898))

(assert (=> b!4973214 m!6001898))

(declare-fun m!6001902 () Bool)

(assert (=> b!4973214 m!6001902))

(assert (=> b!4973210 m!6001546))

(assert (=> b!4973210 m!6001604))

(declare-fun m!6001904 () Bool)

(assert (=> b!4973210 m!6001904))

(declare-fun m!6001906 () Bool)

(assert (=> b!4973210 m!6001906))

(declare-fun m!6001908 () Bool)

(assert (=> b!4973210 m!6001908))

(assert (=> b!4973210 m!6001906))

(declare-fun m!6001910 () Bool)

(assert (=> b!4973210 m!6001910))

(assert (=> b!4973210 m!6001546))

(declare-fun m!6001912 () Bool)

(assert (=> b!4973210 m!6001912))

(assert (=> b!4973210 m!6001906))

(declare-fun m!6001914 () Bool)

(assert (=> b!4973210 m!6001914))

(assert (=> b!4973210 m!6001906))

(assert (=> b!4973210 m!6001604))

(declare-fun m!6001916 () Bool)

(assert (=> b!4973210 m!6001916))

(assert (=> b!4973213 m!6001546))

(assert (=> b!4973213 m!6001604))

(assert (=> b!4973213 m!6001546))

(assert (=> b!4973213 m!6001604))

(assert (=> b!4973213 m!6001904))

(declare-fun m!6001918 () Bool)

(assert (=> b!4973213 m!6001918))

(assert (=> bm!346818 d!1601245))

(assert (=> b!4972695 d!1601195))

(declare-fun d!1601269 () Bool)

(declare-fun lt!2054014 () Int)

(assert (=> d!1601269 (>= lt!2054014 0)))

(declare-fun e!3108262 () Int)

(assert (=> d!1601269 (= lt!2054014 e!3108262)))

(declare-fun c!848598 () Bool)

(assert (=> d!1601269 (= c!848598 ((_ is Nil!57466) lt!2053676))))

(assert (=> d!1601269 (= (size!38097 lt!2053676) lt!2054014)))

(declare-fun b!4973220 () Bool)

(assert (=> b!4973220 (= e!3108262 0)))

(declare-fun b!4973221 () Bool)

(assert (=> b!4973221 (= e!3108262 (+ 1 (size!38097 (t!369196 lt!2053676))))))

(assert (= (and d!1601269 c!848598) b!4973220))

(assert (= (and d!1601269 (not c!848598)) b!4973221))

(declare-fun m!6001920 () Bool)

(assert (=> b!4973221 m!6001920))

(assert (=> b!4972987 d!1601269))

(declare-fun b!4973250 () Bool)

(declare-fun e!3108278 () Bool)

(assert (=> b!4973250 (= e!3108278 (= (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) (c!848513 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun b!4973251 () Bool)

(declare-fun e!3108279 () Bool)

(declare-fun derivativeStep!3929 (Regex!13633 C!27516) Regex!13633)

(assert (=> b!4973251 (= e!3108279 (matchR!6643 (derivativeStep!3929 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))) (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun b!4973252 () Bool)

(declare-fun e!3108281 () Bool)

(assert (=> b!4973252 (= e!3108281 (not (= (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) (c!848513 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))))))

(declare-fun b!4973253 () Bool)

(declare-fun e!3108280 () Bool)

(assert (=> b!4973253 (= e!3108280 e!3108281)))

(declare-fun res!2123020 () Bool)

(assert (=> b!4973253 (=> res!2123020 e!3108281)))

(declare-fun call!346854 () Bool)

(assert (=> b!4973253 (= res!2123020 call!346854)))

(declare-fun b!4973255 () Bool)

(declare-fun e!3108282 () Bool)

(declare-fun lt!2054017 () Bool)

(assert (=> b!4973255 (= e!3108282 (= lt!2054017 call!346854))))

(declare-fun b!4973256 () Bool)

(declare-fun res!2123019 () Bool)

(assert (=> b!4973256 (=> (not res!2123019) (not e!3108278))))

(assert (=> b!4973256 (= res!2123019 (isEmpty!30977 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun b!4973257 () Bool)

(declare-fun res!2123016 () Bool)

(assert (=> b!4973257 (=> res!2123016 e!3108281)))

(assert (=> b!4973257 (= res!2123016 (not (isEmpty!30977 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))))

(declare-fun b!4973258 () Bool)

(declare-fun res!2123017 () Bool)

(declare-fun e!3108283 () Bool)

(assert (=> b!4973258 (=> res!2123017 e!3108283)))

(assert (=> b!4973258 (= res!2123017 e!3108278)))

(declare-fun res!2123013 () Bool)

(assert (=> b!4973258 (=> (not res!2123013) (not e!3108278))))

(assert (=> b!4973258 (= res!2123013 lt!2054017)))

(declare-fun b!4973259 () Bool)

(declare-fun res!2123014 () Bool)

(assert (=> b!4973259 (=> res!2123014 e!3108283)))

(assert (=> b!4973259 (= res!2123014 (not ((_ is ElementMatch!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun e!3108277 () Bool)

(assert (=> b!4973259 (= e!3108277 e!3108283)))

(declare-fun b!4973260 () Bool)

(declare-fun nullable!4627 (Regex!13633) Bool)

(assert (=> b!4973260 (= e!3108279 (nullable!4627 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))))

(declare-fun d!1601271 () Bool)

(assert (=> d!1601271 e!3108282))

(declare-fun c!848605 () Bool)

(assert (=> d!1601271 (= c!848605 ((_ is EmptyExpr!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))))

(assert (=> d!1601271 (= lt!2054017 e!3108279)))

(declare-fun c!848606 () Bool)

(assert (=> d!1601271 (= c!848606 (isEmpty!30977 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))

(declare-fun validRegex!5976 (Regex!13633) Bool)

(assert (=> d!1601271 (validRegex!5976 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))

(assert (=> d!1601271 (= (matchR!6643 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) lt!2054017)))

(declare-fun b!4973254 () Bool)

(assert (=> b!4973254 (= e!3108282 e!3108277)))

(declare-fun c!848607 () Bool)

(assert (=> b!4973254 (= c!848607 ((_ is EmptyLang!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))))

(declare-fun b!4973261 () Bool)

(assert (=> b!4973261 (= e!3108283 e!3108280)))

(declare-fun res!2123015 () Bool)

(assert (=> b!4973261 (=> (not res!2123015) (not e!3108280))))

(assert (=> b!4973261 (= res!2123015 (not lt!2054017))))

(declare-fun b!4973262 () Bool)

(assert (=> b!4973262 (= e!3108277 (not lt!2054017))))

(declare-fun b!4973263 () Bool)

(declare-fun res!2123018 () Bool)

(assert (=> b!4973263 (=> (not res!2123018) (not e!3108278))))

(assert (=> b!4973263 (= res!2123018 (not call!346854))))

(declare-fun bm!346849 () Bool)

(assert (=> bm!346849 (= call!346854 (isEmpty!30977 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))

(assert (= (and d!1601271 c!848606) b!4973260))

(assert (= (and d!1601271 (not c!848606)) b!4973251))

(assert (= (and d!1601271 c!848605) b!4973255))

(assert (= (and d!1601271 (not c!848605)) b!4973254))

(assert (= (and b!4973254 c!848607) b!4973262))

(assert (= (and b!4973254 (not c!848607)) b!4973259))

(assert (= (and b!4973259 (not res!2123014)) b!4973258))

(assert (= (and b!4973258 res!2123013) b!4973263))

(assert (= (and b!4973263 res!2123018) b!4973256))

(assert (= (and b!4973256 res!2123019) b!4973250))

(assert (= (and b!4973258 (not res!2123017)) b!4973261))

(assert (= (and b!4973261 res!2123015) b!4973253))

(assert (= (and b!4973253 (not res!2123020)) b!4973257))

(assert (= (and b!4973257 (not res!2123016)) b!4973252))

(assert (= (or b!4973255 b!4973253 b!4973263) bm!346849))

(declare-fun m!6001922 () Bool)

(assert (=> b!4973260 m!6001922))

(assert (=> b!4973256 m!6001596))

(declare-fun m!6001924 () Bool)

(assert (=> b!4973256 m!6001924))

(assert (=> b!4973256 m!6001924))

(declare-fun m!6001926 () Bool)

(assert (=> b!4973256 m!6001926))

(assert (=> b!4973252 m!6001596))

(declare-fun m!6001928 () Bool)

(assert (=> b!4973252 m!6001928))

(assert (=> b!4973251 m!6001596))

(assert (=> b!4973251 m!6001928))

(assert (=> b!4973251 m!6001928))

(declare-fun m!6001930 () Bool)

(assert (=> b!4973251 m!6001930))

(assert (=> b!4973251 m!6001596))

(assert (=> b!4973251 m!6001924))

(assert (=> b!4973251 m!6001930))

(assert (=> b!4973251 m!6001924))

(declare-fun m!6001932 () Bool)

(assert (=> b!4973251 m!6001932))

(assert (=> d!1601271 m!6001596))

(declare-fun m!6001934 () Bool)

(assert (=> d!1601271 m!6001934))

(declare-fun m!6001936 () Bool)

(assert (=> d!1601271 m!6001936))

(assert (=> b!4973250 m!6001596))

(assert (=> b!4973250 m!6001928))

(assert (=> bm!346849 m!6001596))

(assert (=> bm!346849 m!6001934))

(assert (=> b!4973257 m!6001596))

(assert (=> b!4973257 m!6001924))

(assert (=> b!4973257 m!6001924))

(assert (=> b!4973257 m!6001926))

(assert (=> b!4972952 d!1601271))

(declare-fun d!1601273 () Bool)

(assert (=> d!1601273 (= (get!19957 lt!2053853) (v!50457 lt!2053853))))

(assert (=> b!4972952 d!1601273))

(declare-fun d!1601275 () Bool)

(assert (=> d!1601275 (= (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))) (list!18385 (c!848514 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))

(declare-fun bs!1183661 () Bool)

(assert (= bs!1183661 d!1601275))

(declare-fun m!6001938 () Bool)

(assert (=> bs!1183661 m!6001938))

(assert (=> b!4972952 d!1601275))

(declare-fun d!1601277 () Bool)

(declare-fun lt!2054020 () BalanceConc!29734)

(assert (=> d!1601277 (= (list!18383 lt!2054020) (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853))))))

(declare-fun dynLambda!23213 (Int TokenValue!8710) BalanceConc!29734)

(assert (=> d!1601277 (= lt!2054020 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853)))))))

(assert (=> d!1601277 (= (charsOf!5444 (_1!34412 (get!19957 lt!2053853))) lt!2054020)))

(declare-fun b_lambda!197285 () Bool)

(assert (=> (not b_lambda!197285) (not d!1601277)))

(declare-fun tb!261139 () Bool)

(declare-fun t!369200 () Bool)

(assert (=> (and b!4972699 (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))) t!369200) tb!261139))

(declare-fun b!4973268 () Bool)

(declare-fun e!3108286 () Bool)

(declare-fun tp!1394469 () Bool)

(assert (=> b!4973268 (= e!3108286 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853)))))) tp!1394469))))

(declare-fun result!326318 () Bool)

(assert (=> tb!261139 (= result!326318 (and (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853))))) e!3108286))))

(assert (= tb!261139 b!4973268))

(declare-fun m!6001940 () Bool)

(assert (=> b!4973268 m!6001940))

(declare-fun m!6001942 () Bool)

(assert (=> tb!261139 m!6001942))

(assert (=> d!1601277 t!369200))

(declare-fun b_and!348843 () Bool)

(assert (= b_and!348833 (and (=> t!369200 result!326318) b_and!348843)))

(declare-fun t!369202 () Bool)

(declare-fun tb!261141 () Bool)

(assert (=> (and b!4973009 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))) t!369202) tb!261141))

(declare-fun result!326322 () Bool)

(assert (= result!326322 result!326318))

(assert (=> d!1601277 t!369202))

(declare-fun b_and!348845 () Bool)

(assert (= b_and!348841 (and (=> t!369202 result!326322) b_and!348845)))

(declare-fun m!6001944 () Bool)

(assert (=> d!1601277 m!6001944))

(declare-fun m!6001946 () Bool)

(assert (=> d!1601277 m!6001946))

(assert (=> b!4972952 d!1601277))

(declare-fun b!4973298 () Bool)

(declare-fun e!3108300 () List!57590)

(assert (=> b!4973298 (= e!3108300 (++!12539 (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053677)))) (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053677))))))))

(declare-fun b!4973296 () Bool)

(declare-fun e!3108299 () List!57590)

(assert (=> b!4973296 (= e!3108299 e!3108300)))

(declare-fun c!848615 () Bool)

(assert (=> b!4973296 (= c!848615 ((_ is Leaf!25177) (c!848514 (_2!34411 lt!2053677))))))

(declare-fun d!1601279 () Bool)

(declare-fun c!848614 () Bool)

(assert (=> d!1601279 (= c!848614 ((_ is Empty!15152) (c!848514 (_2!34411 lt!2053677))))))

(assert (=> d!1601279 (= (list!18385 (c!848514 (_2!34411 lt!2053677))) e!3108299)))

(declare-fun b!4973297 () Bool)

(declare-fun list!18387 (IArray!30365) List!57590)

(assert (=> b!4973297 (= e!3108300 (list!18387 (xs!18478 (c!848514 (_2!34411 lt!2053677)))))))

(declare-fun b!4973295 () Bool)

(assert (=> b!4973295 (= e!3108299 Nil!57466)))

(assert (= (and d!1601279 c!848614) b!4973295))

(assert (= (and d!1601279 (not c!848614)) b!4973296))

(assert (= (and b!4973296 c!848615) b!4973297))

(assert (= (and b!4973296 (not c!848615)) b!4973298))

(declare-fun m!6001948 () Bool)

(assert (=> b!4973298 m!6001948))

(declare-fun m!6001950 () Bool)

(assert (=> b!4973298 m!6001950))

(assert (=> b!4973298 m!6001948))

(assert (=> b!4973298 m!6001950))

(declare-fun m!6001952 () Bool)

(assert (=> b!4973298 m!6001952))

(declare-fun m!6001954 () Bool)

(assert (=> b!4973297 m!6001954))

(assert (=> d!1601207 d!1601279))

(declare-fun d!1601281 () Bool)

(declare-fun res!2123039 () Bool)

(declare-fun e!3108303 () Bool)

(assert (=> d!1601281 (=> (not res!2123039) (not e!3108303))))

(assert (=> d!1601281 (= res!2123039 (<= (size!38097 (list!18387 (xs!18478 (c!848514 input!1342)))) 512))))

(assert (=> d!1601281 (= (inv!75129 (c!848514 input!1342)) e!3108303)))

(declare-fun b!4973303 () Bool)

(declare-fun res!2123040 () Bool)

(assert (=> b!4973303 (=> (not res!2123040) (not e!3108303))))

(assert (=> b!4973303 (= res!2123040 (= (csize!30535 (c!848514 input!1342)) (size!38097 (list!18387 (xs!18478 (c!848514 input!1342))))))))

(declare-fun b!4973304 () Bool)

(assert (=> b!4973304 (= e!3108303 (and (> (csize!30535 (c!848514 input!1342)) 0) (<= (csize!30535 (c!848514 input!1342)) 512)))))

(assert (= (and d!1601281 res!2123039) b!4973303))

(assert (= (and b!4973303 res!2123040) b!4973304))

(declare-fun m!6001956 () Bool)

(assert (=> d!1601281 m!6001956))

(assert (=> d!1601281 m!6001956))

(declare-fun m!6001958 () Bool)

(assert (=> d!1601281 m!6001958))

(assert (=> b!4973303 m!6001956))

(assert (=> b!4973303 m!6001956))

(assert (=> b!4973303 m!6001958))

(assert (=> b!4972975 d!1601281))

(declare-fun d!1601283 () Bool)

(assert (=> d!1601283 (= (isDefined!11376 lt!2053853) (not (isEmpty!30975 lt!2053853)))))

(declare-fun bs!1183662 () Bool)

(assert (= bs!1183662 d!1601283))

(assert (=> bs!1183662 m!6001606))

(assert (=> b!4972949 d!1601283))

(declare-fun d!1601285 () Bool)

(declare-fun res!2123052 () Bool)

(declare-fun e!3108312 () Bool)

(assert (=> d!1601285 (=> res!2123052 e!3108312)))

(assert (=> d!1601285 (= res!2123052 ((_ is Nil!57467) rulesArg!259))))

(assert (=> d!1601285 (= (forall!13335 rulesArg!259 lambda!247498) e!3108312)))

(declare-fun b!4973312 () Bool)

(declare-fun e!3108313 () Bool)

(assert (=> b!4973312 (= e!3108312 e!3108313)))

(declare-fun res!2123053 () Bool)

(assert (=> b!4973312 (=> (not res!2123053) (not e!3108313))))

(declare-fun dynLambda!23214 (Int Rule!16600) Bool)

(assert (=> b!4973312 (= res!2123053 (dynLambda!23214 lambda!247498 (h!63915 rulesArg!259)))))

(declare-fun b!4973314 () Bool)

(assert (=> b!4973314 (= e!3108313 (forall!13335 (t!369197 rulesArg!259) lambda!247498))))

(assert (= (and d!1601285 (not res!2123052)) b!4973312))

(assert (= (and b!4973312 res!2123053) b!4973314))

(declare-fun b_lambda!197287 () Bool)

(assert (=> (not b_lambda!197287) (not b!4973312)))

(declare-fun m!6001960 () Bool)

(assert (=> b!4973312 m!6001960))

(declare-fun m!6001962 () Bool)

(assert (=> b!4973314 m!6001962))

(assert (=> d!1601161 d!1601285))

(declare-fun d!1601287 () Bool)

(assert (=> d!1601287 (= (head!10675 lt!2053676) (h!63914 lt!2053676))))

(assert (=> b!4972985 d!1601287))

(assert (=> b!4972955 d!1601273))

(declare-fun d!1601289 () Bool)

(declare-fun dynLambda!23215 (Int BalanceConc!29734) TokenValue!8710)

(assert (=> d!1601289 (= (apply!13911 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853))))) (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853))))))))

(declare-fun b_lambda!197289 () Bool)

(assert (=> (not b_lambda!197289) (not d!1601289)))

(declare-fun t!369205 () Bool)

(declare-fun tb!261143 () Bool)

(assert (=> (and b!4972699 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))) t!369205) tb!261143))

(declare-fun result!326324 () Bool)

(declare-fun inv!21 (TokenValue!8710) Bool)

(assert (=> tb!261143 (= result!326324 (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun m!6001972 () Bool)

(assert (=> tb!261143 m!6001972))

(assert (=> d!1601289 t!369205))

(declare-fun b_and!348847 () Bool)

(assert (= b_and!348831 (and (=> t!369205 result!326324) b_and!348847)))

(declare-fun tb!261145 () Bool)

(declare-fun t!369207 () Bool)

(assert (=> (and b!4973009 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))) t!369207) tb!261145))

(declare-fun result!326328 () Bool)

(assert (= result!326328 result!326324))

(assert (=> d!1601289 t!369207))

(declare-fun b_and!348849 () Bool)

(assert (= b_and!348839 (and (=> t!369207 result!326328) b_and!348849)))

(assert (=> d!1601289 m!6001614))

(declare-fun m!6001982 () Bool)

(assert (=> d!1601289 m!6001982))

(assert (=> b!4972955 d!1601289))

(declare-fun d!1601291 () Bool)

(declare-fun fromListB!2737 (List!57590) BalanceConc!29734)

(assert (=> d!1601291 (= (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853)))) (fromListB!2737 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853)))))))

(declare-fun bs!1183663 () Bool)

(assert (= bs!1183663 d!1601291))

(declare-fun m!6002010 () Bool)

(assert (=> bs!1183663 m!6002010))

(assert (=> b!4972955 d!1601291))

(declare-fun d!1601297 () Bool)

(assert (=> d!1601297 (= (inv!75130 (xs!18478 (c!848514 totalInput!464))) (<= (size!38097 (innerList!15240 (xs!18478 (c!848514 totalInput!464)))) 2147483647))))

(declare-fun bs!1183665 () Bool)

(assert (= bs!1183665 d!1601297))

(declare-fun m!6002014 () Bool)

(assert (=> bs!1183665 m!6002014))

(assert (=> b!4972997 d!1601297))

(declare-fun bs!1183668 () Bool)

(declare-fun d!1601301 () Bool)

(assert (= bs!1183668 (and d!1601301 b!4972922)))

(declare-fun lambda!247516 () Int)

(assert (=> bs!1183668 (= lambda!247516 lambda!247506)))

(assert (=> d!1601301 true))

(assert (=> d!1601301 (< (dynLambda!23211 order!26261 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) (dynLambda!23210 order!26259 lambda!247516))))

(assert (=> d!1601301 true))

(assert (=> d!1601301 (< (dynLambda!23209 order!26257 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) (dynLambda!23210 order!26259 lambda!247516))))

(declare-fun Forall!1768 (Int) Bool)

(assert (=> d!1601301 (= (semiInverseModEq!3707 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) (Forall!1768 lambda!247516))))

(declare-fun bs!1183670 () Bool)

(assert (= bs!1183670 d!1601301))

(declare-fun m!6002018 () Bool)

(assert (=> bs!1183670 m!6002018))

(assert (=> d!1601205 d!1601301))

(declare-fun d!1601305 () Bool)

(assert (=> d!1601305 (= (list!18383 (_2!34411 (get!19958 lt!2053839))) (list!18385 (c!848514 (_2!34411 (get!19958 lt!2053839)))))))

(declare-fun bs!1183671 () Bool)

(assert (= bs!1183671 d!1601305))

(declare-fun m!6002020 () Bool)

(assert (=> bs!1183671 m!6002020))

(assert (=> b!4972919 d!1601305))

(assert (=> b!4972919 d!1601201))

(declare-fun b!4973330 () Bool)

(declare-fun e!3108320 () Bool)

(declare-fun lt!2054040 () Option!14463)

(assert (=> b!4973330 (= e!3108320 (= (size!38094 (_1!34412 (get!19957 lt!2054040))) (size!38097 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054040))))))))

(declare-fun b!4973331 () Bool)

(declare-fun res!2123058 () Bool)

(assert (=> b!4973331 (=> (not res!2123058) (not e!3108320))))

(assert (=> b!4973331 (= res!2123058 (= (rule!11662 (_1!34412 (get!19957 lt!2054040))) (h!63915 rulesArg!259)))))

(declare-fun b!4973332 () Bool)

(declare-fun res!2123057 () Bool)

(assert (=> b!4973332 (=> (not res!2123057) (not e!3108320))))

(assert (=> b!4973332 (= res!2123057 (< (size!38097 (_2!34412 (get!19957 lt!2054040))) (size!38097 (list!18383 input!1342))))))

(declare-fun b!4973333 () Bool)

(declare-fun e!3108317 () Option!14463)

(declare-fun lt!2054039 () tuple2!62224)

(assert (=> b!4973333 (= e!3108317 (Some!14462 (tuple2!62219 (Token!15297 (apply!13911 (transformation!8400 (h!63915 rulesArg!259)) (seqFromList!6043 (_1!34415 lt!2054039))) (h!63915 rulesArg!259) (size!38098 (seqFromList!6043 (_1!34415 lt!2054039))) (_1!34415 lt!2054039)) (_2!34415 lt!2054039))))))

(declare-fun lt!2054038 () Unit!148431)

(assert (=> b!4973333 (= lt!2054038 (longestMatchIsAcceptedByMatchOrIsEmpty!1823 (regex!8400 (h!63915 rulesArg!259)) (list!18383 input!1342)))))

(declare-fun res!2123055 () Bool)

(assert (=> b!4973333 (= res!2123055 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))))))

(declare-fun e!3108318 () Bool)

(assert (=> b!4973333 (=> res!2123055 e!3108318)))

(assert (=> b!4973333 e!3108318))

(declare-fun lt!2054037 () Unit!148431)

(assert (=> b!4973333 (= lt!2054037 lt!2054038)))

(declare-fun lt!2054036 () Unit!148431)

(assert (=> b!4973333 (= lt!2054036 (lemmaSemiInverse!2609 (transformation!8400 (h!63915 rulesArg!259)) (seqFromList!6043 (_1!34415 lt!2054039))))))

(declare-fun b!4973334 () Bool)

(declare-fun res!2123059 () Bool)

(assert (=> b!4973334 (=> (not res!2123059) (not e!3108320))))

(assert (=> b!4973334 (= res!2123059 (= (++!12539 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040)))) (_2!34412 (get!19957 lt!2054040))) (list!18383 input!1342)))))

(declare-fun b!4973335 () Bool)

(assert (=> b!4973335 (= e!3108317 None!14462)))

(declare-fun d!1601307 () Bool)

(declare-fun e!3108319 () Bool)

(assert (=> d!1601307 e!3108319))

(declare-fun res!2123056 () Bool)

(assert (=> d!1601307 (=> res!2123056 e!3108319)))

(assert (=> d!1601307 (= res!2123056 (isEmpty!30975 lt!2054040))))

(assert (=> d!1601307 (= lt!2054040 e!3108317)))

(declare-fun c!848617 () Bool)

(assert (=> d!1601307 (= c!848617 (isEmpty!30977 (_1!34415 lt!2054039)))))

(assert (=> d!1601307 (= lt!2054039 (findLongestMatch!1704 (regex!8400 (h!63915 rulesArg!259)) (list!18383 input!1342)))))

(assert (=> d!1601307 (ruleValid!3809 thiss!15247 (h!63915 rulesArg!259))))

(assert (=> d!1601307 (= (maxPrefixOneRule!3636 thiss!15247 (h!63915 rulesArg!259) (list!18383 input!1342)) lt!2054040)))

(declare-fun b!4973336 () Bool)

(assert (=> b!4973336 (= e!3108318 (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))))))

(declare-fun b!4973337 () Bool)

(assert (=> b!4973337 (= e!3108319 e!3108320)))

(declare-fun res!2123054 () Bool)

(assert (=> b!4973337 (=> (not res!2123054) (not e!3108320))))

(assert (=> b!4973337 (= res!2123054 (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040))))))))

(declare-fun b!4973338 () Bool)

(declare-fun res!2123060 () Bool)

(assert (=> b!4973338 (=> (not res!2123060) (not e!3108320))))

(assert (=> b!4973338 (= res!2123060 (= (value!268840 (_1!34412 (get!19957 lt!2054040))) (apply!13911 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040)))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054040)))))))))

(assert (= (and d!1601307 c!848617) b!4973335))

(assert (= (and d!1601307 (not c!848617)) b!4973333))

(assert (= (and b!4973333 (not res!2123055)) b!4973336))

(assert (= (and d!1601307 (not res!2123056)) b!4973337))

(assert (= (and b!4973337 res!2123054) b!4973334))

(assert (= (and b!4973334 res!2123059) b!4973332))

(assert (= (and b!4973332 res!2123057) b!4973331))

(assert (= (and b!4973331 res!2123058) b!4973338))

(assert (= (and b!4973338 res!2123060) b!4973330))

(declare-fun m!6002022 () Bool)

(assert (=> b!4973338 m!6002022))

(declare-fun m!6002024 () Bool)

(assert (=> b!4973338 m!6002024))

(assert (=> b!4973338 m!6002024))

(declare-fun m!6002026 () Bool)

(assert (=> b!4973338 m!6002026))

(declare-fun m!6002028 () Bool)

(assert (=> d!1601307 m!6002028))

(declare-fun m!6002030 () Bool)

(assert (=> d!1601307 m!6002030))

(assert (=> d!1601307 m!6001308))

(declare-fun m!6002032 () Bool)

(assert (=> d!1601307 m!6002032))

(assert (=> d!1601307 m!6001448))

(assert (=> b!4973332 m!6002022))

(declare-fun m!6002034 () Bool)

(assert (=> b!4973332 m!6002034))

(assert (=> b!4973332 m!6001308))

(declare-fun m!6002036 () Bool)

(assert (=> b!4973332 m!6002036))

(assert (=> b!4973330 m!6002022))

(declare-fun m!6002038 () Bool)

(assert (=> b!4973330 m!6002038))

(assert (=> b!4973334 m!6002022))

(declare-fun m!6002040 () Bool)

(assert (=> b!4973334 m!6002040))

(assert (=> b!4973334 m!6002040))

(declare-fun m!6002042 () Bool)

(assert (=> b!4973334 m!6002042))

(assert (=> b!4973334 m!6002042))

(declare-fun m!6002044 () Bool)

(assert (=> b!4973334 m!6002044))

(assert (=> b!4973331 m!6002022))

(assert (=> b!4973337 m!6002022))

(assert (=> b!4973337 m!6002040))

(assert (=> b!4973337 m!6002040))

(assert (=> b!4973337 m!6002042))

(assert (=> b!4973337 m!6002042))

(declare-fun m!6002046 () Bool)

(assert (=> b!4973337 m!6002046))

(assert (=> b!4973333 m!6001546))

(assert (=> b!4973333 m!6001308))

(assert (=> b!4973333 m!6001308))

(assert (=> b!4973333 m!6002036))

(declare-fun m!6002048 () Bool)

(assert (=> b!4973333 m!6002048))

(declare-fun m!6002050 () Bool)

(assert (=> b!4973333 m!6002050))

(declare-fun m!6002052 () Bool)

(assert (=> b!4973333 m!6002052))

(assert (=> b!4973333 m!6002050))

(declare-fun m!6002054 () Bool)

(assert (=> b!4973333 m!6002054))

(assert (=> b!4973333 m!6001546))

(assert (=> b!4973333 m!6001308))

(declare-fun m!6002056 () Bool)

(assert (=> b!4973333 m!6002056))

(assert (=> b!4973333 m!6002050))

(declare-fun m!6002058 () Bool)

(assert (=> b!4973333 m!6002058))

(assert (=> b!4973333 m!6002050))

(assert (=> b!4973333 m!6001308))

(assert (=> b!4973333 m!6002036))

(declare-fun m!6002060 () Bool)

(assert (=> b!4973333 m!6002060))

(assert (=> b!4973336 m!6001546))

(assert (=> b!4973336 m!6001308))

(assert (=> b!4973336 m!6002036))

(assert (=> b!4973336 m!6001546))

(assert (=> b!4973336 m!6001308))

(assert (=> b!4973336 m!6001308))

(assert (=> b!4973336 m!6002036))

(assert (=> b!4973336 m!6002048))

(declare-fun m!6002062 () Bool)

(assert (=> b!4973336 m!6002062))

(assert (=> b!4972919 d!1601307))

(declare-fun d!1601309 () Bool)

(assert (=> d!1601309 (= (get!19958 lt!2053839) (v!50458 lt!2053839))))

(assert (=> b!4972919 d!1601309))

(declare-fun d!1601311 () Bool)

(assert (=> d!1601311 (= (get!19957 (maxPrefixOneRule!3636 thiss!15247 (h!63915 rulesArg!259) (list!18383 input!1342))) (v!50457 (maxPrefixOneRule!3636 thiss!15247 (h!63915 rulesArg!259) (list!18383 input!1342))))))

(assert (=> b!4972919 d!1601311))

(declare-fun d!1601313 () Bool)

(assert (=> d!1601313 (= (inv!75130 (xs!18478 (c!848514 input!1342))) (<= (size!38097 (innerList!15240 (xs!18478 (c!848514 input!1342)))) 2147483647))))

(declare-fun bs!1183672 () Bool)

(assert (= bs!1183672 d!1601313))

(declare-fun m!6002074 () Bool)

(assert (=> bs!1183672 m!6002074))

(assert (=> b!4973025 d!1601313))

(declare-fun d!1601317 () Bool)

(declare-fun lt!2054041 () Int)

(assert (=> d!1601317 (>= lt!2054041 0)))

(declare-fun e!3108324 () Int)

(assert (=> d!1601317 (= lt!2054041 e!3108324)))

(declare-fun c!848618 () Bool)

(assert (=> d!1601317 (= c!848618 ((_ is Nil!57466) (list!18383 totalInput!464)))))

(assert (=> d!1601317 (= (size!38097 (list!18383 totalInput!464)) lt!2054041)))

(declare-fun b!4973348 () Bool)

(assert (=> b!4973348 (= e!3108324 0)))

(declare-fun b!4973349 () Bool)

(assert (=> b!4973349 (= e!3108324 (+ 1 (size!38097 (t!369196 (list!18383 totalInput!464)))))))

(assert (= (and d!1601317 c!848618) b!4973348))

(assert (= (and d!1601317 (not c!848618)) b!4973349))

(declare-fun m!6002078 () Bool)

(assert (=> b!4973349 m!6002078))

(assert (=> b!4972969 d!1601317))

(assert (=> b!4972969 d!1601269))

(declare-fun b!4973350 () Bool)

(declare-fun e!3108325 () Option!14464)

(declare-fun call!346855 () Option!14464)

(assert (=> b!4973350 (= e!3108325 call!346855)))

(declare-fun b!4973351 () Bool)

(declare-fun lt!2054042 () Option!14464)

(declare-fun lt!2054043 () Option!14464)

(assert (=> b!4973351 (= e!3108325 (ite (and ((_ is None!14463) lt!2054042) ((_ is None!14463) lt!2054043)) None!14463 (ite ((_ is None!14463) lt!2054043) lt!2054042 (ite ((_ is None!14463) lt!2054042) lt!2054043 (ite (>= (size!38094 (_1!34411 (v!50458 lt!2054042))) (size!38094 (_1!34411 (v!50458 lt!2054043)))) lt!2054042 lt!2054043)))))))

(assert (=> b!4973351 (= lt!2054042 call!346855)))

(assert (=> b!4973351 (= lt!2054043 (maxPrefixZipperSequenceV2!711 thiss!15247 (t!369197 (t!369197 (t!369197 rulesArg!259))) input!1342 totalInput!464))))

(declare-fun b!4973352 () Bool)

(declare-fun res!2123072 () Bool)

(declare-fun e!3108327 () Bool)

(assert (=> b!4973352 (=> (not res!2123072) (not e!3108327))))

(declare-fun e!3108329 () Bool)

(assert (=> b!4973352 (= res!2123072 e!3108329)))

(declare-fun res!2123071 () Bool)

(assert (=> b!4973352 (=> res!2123071 e!3108329)))

(declare-fun lt!2054048 () Option!14464)

(assert (=> b!4973352 (= res!2123071 (not (isDefined!11377 lt!2054048)))))

(declare-fun b!4973353 () Bool)

(declare-fun e!3108326 () Bool)

(assert (=> b!4973353 (= e!3108329 e!3108326)))

(declare-fun res!2123073 () Bool)

(assert (=> b!4973353 (=> (not res!2123073) (not e!3108326))))

(assert (=> b!4973353 (= res!2123073 (= (_1!34411 (get!19958 lt!2054048)) (_1!34412 (get!19957 (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342))))))))

(declare-fun b!4973354 () Bool)

(assert (=> b!4973354 (= e!3108326 (= (list!18383 (_2!34411 (get!19958 lt!2054048))) (_2!34412 (get!19957 (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342))))))))

(declare-fun e!3108330 () Bool)

(declare-fun b!4973355 () Bool)

(assert (=> b!4973355 (= e!3108330 (= (list!18383 (_2!34411 (get!19958 lt!2054048))) (_2!34412 (get!19957 (maxPrefix!4667 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342))))))))

(declare-fun bm!346850 () Bool)

(assert (=> bm!346850 (= call!346855 (maxPrefixOneRuleZipperSequenceV2!368 thiss!15247 (h!63915 (t!369197 (t!369197 rulesArg!259))) input!1342 totalInput!464))))

(declare-fun b!4973357 () Bool)

(declare-fun e!3108328 () Bool)

(assert (=> b!4973357 (= e!3108328 e!3108330)))

(declare-fun res!2123075 () Bool)

(assert (=> b!4973357 (=> (not res!2123075) (not e!3108330))))

(assert (=> b!4973357 (= res!2123075 (= (_1!34411 (get!19958 lt!2054048)) (_1!34412 (get!19957 (maxPrefix!4667 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342))))))))

(declare-fun d!1601321 () Bool)

(assert (=> d!1601321 e!3108327))

(declare-fun res!2123070 () Bool)

(assert (=> d!1601321 (=> (not res!2123070) (not e!3108327))))

(assert (=> d!1601321 (= res!2123070 (= (isDefined!11377 lt!2054048) (isDefined!11376 (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342)))))))

(assert (=> d!1601321 (= lt!2054048 e!3108325)))

(declare-fun c!848619 () Bool)

(assert (=> d!1601321 (= c!848619 (and ((_ is Cons!57467) (t!369197 (t!369197 rulesArg!259))) ((_ is Nil!57467) (t!369197 (t!369197 (t!369197 rulesArg!259))))))))

(declare-fun lt!2054046 () Unit!148431)

(declare-fun lt!2054044 () Unit!148431)

(assert (=> d!1601321 (= lt!2054046 lt!2054044)))

(declare-fun lt!2054045 () List!57590)

(declare-fun lt!2054047 () List!57590)

(assert (=> d!1601321 (isPrefix!5251 lt!2054045 lt!2054047)))

(assert (=> d!1601321 (= lt!2054044 (lemmaIsPrefixRefl!3575 lt!2054045 lt!2054047))))

(assert (=> d!1601321 (= lt!2054047 (list!18383 input!1342))))

(assert (=> d!1601321 (= lt!2054045 (list!18383 input!1342))))

(assert (=> d!1601321 (rulesValidInductive!3303 thiss!15247 (t!369197 (t!369197 rulesArg!259)))))

(assert (=> d!1601321 (= (maxPrefixZipperSequenceV2!711 thiss!15247 (t!369197 (t!369197 rulesArg!259)) input!1342 totalInput!464) lt!2054048)))

(declare-fun b!4973356 () Bool)

(assert (=> b!4973356 (= e!3108327 e!3108328)))

(declare-fun res!2123074 () Bool)

(assert (=> b!4973356 (=> res!2123074 e!3108328)))

(assert (=> b!4973356 (= res!2123074 (not (isDefined!11377 lt!2054048)))))

(assert (= (and d!1601321 c!848619) b!4973350))

(assert (= (and d!1601321 (not c!848619)) b!4973351))

(assert (= (or b!4973350 b!4973351) bm!346850))

(assert (= (and d!1601321 res!2123070) b!4973352))

(assert (= (and b!4973352 (not res!2123071)) b!4973353))

(assert (= (and b!4973353 res!2123073) b!4973354))

(assert (= (and b!4973352 res!2123072) b!4973356))

(assert (= (and b!4973356 (not res!2123074)) b!4973357))

(assert (= (and b!4973357 res!2123075) b!4973355))

(declare-fun m!6002080 () Bool)

(assert (=> b!4973356 m!6002080))

(declare-fun m!6002082 () Bool)

(assert (=> b!4973353 m!6002082))

(assert (=> b!4973353 m!6001308))

(assert (=> b!4973353 m!6001308))

(declare-fun m!6002084 () Bool)

(assert (=> b!4973353 m!6002084))

(assert (=> b!4973353 m!6002084))

(declare-fun m!6002086 () Bool)

(assert (=> b!4973353 m!6002086))

(declare-fun m!6002088 () Bool)

(assert (=> bm!346850 m!6002088))

(assert (=> b!4973352 m!6002080))

(declare-fun m!6002090 () Bool)

(assert (=> b!4973351 m!6002090))

(assert (=> b!4973354 m!6001308))

(assert (=> b!4973354 m!6002084))

(assert (=> b!4973354 m!6001308))

(declare-fun m!6002092 () Bool)

(assert (=> b!4973354 m!6002092))

(assert (=> b!4973354 m!6002082))

(assert (=> b!4973354 m!6002084))

(assert (=> b!4973354 m!6002086))

(assert (=> b!4973355 m!6001308))

(declare-fun m!6002094 () Bool)

(assert (=> b!4973355 m!6002094))

(assert (=> b!4973355 m!6001308))

(assert (=> b!4973355 m!6002094))

(declare-fun m!6002100 () Bool)

(assert (=> b!4973355 m!6002100))

(assert (=> b!4973355 m!6002092))

(assert (=> b!4973355 m!6002082))

(assert (=> b!4973357 m!6002082))

(assert (=> b!4973357 m!6001308))

(assert (=> b!4973357 m!6001308))

(assert (=> b!4973357 m!6002094))

(assert (=> b!4973357 m!6002094))

(assert (=> b!4973357 m!6002100))

(assert (=> d!1601321 m!6001308))

(assert (=> d!1601321 m!6002084))

(declare-fun m!6002102 () Bool)

(assert (=> d!1601321 m!6002102))

(assert (=> d!1601321 m!6002080))

(declare-fun m!6002104 () Bool)

(assert (=> d!1601321 m!6002104))

(assert (=> d!1601321 m!6002084))

(declare-fun m!6002106 () Bool)

(assert (=> d!1601321 m!6002106))

(declare-fun m!6002108 () Bool)

(assert (=> d!1601321 m!6002108))

(assert (=> d!1601321 m!6001308))

(assert (=> b!4972898 d!1601321))

(declare-fun bs!1183674 () Bool)

(declare-fun d!1601329 () Bool)

(assert (= bs!1183674 (and d!1601329 d!1601161)))

(declare-fun lambda!247517 () Int)

(assert (=> bs!1183674 (= lambda!247517 lambda!247498)))

(assert (=> d!1601329 true))

(declare-fun lt!2054054 () Bool)

(assert (=> d!1601329 (= lt!2054054 (forall!13335 (t!369197 rulesArg!259) lambda!247517))))

(declare-fun e!3108335 () Bool)

(assert (=> d!1601329 (= lt!2054054 e!3108335)))

(declare-fun res!2123083 () Bool)

(assert (=> d!1601329 (=> res!2123083 e!3108335)))

(assert (=> d!1601329 (= res!2123083 (not ((_ is Cons!57467) (t!369197 rulesArg!259))))))

(assert (=> d!1601329 (= (rulesValidInductive!3303 thiss!15247 (t!369197 rulesArg!259)) lt!2054054)))

(declare-fun b!4973366 () Bool)

(declare-fun e!3108336 () Bool)

(assert (=> b!4973366 (= e!3108335 e!3108336)))

(declare-fun res!2123082 () Bool)

(assert (=> b!4973366 (=> (not res!2123082) (not e!3108336))))

(assert (=> b!4973366 (= res!2123082 (ruleValid!3809 thiss!15247 (h!63915 (t!369197 rulesArg!259))))))

(declare-fun b!4973367 () Bool)

(assert (=> b!4973367 (= e!3108336 (rulesValidInductive!3303 thiss!15247 (t!369197 (t!369197 rulesArg!259))))))

(assert (= (and d!1601329 (not res!2123083)) b!4973366))

(assert (= (and b!4973366 res!2123082) b!4973367))

(declare-fun m!6002118 () Bool)

(assert (=> d!1601329 m!6002118))

(declare-fun m!6002120 () Bool)

(assert (=> b!4973366 m!6002120))

(assert (=> b!4973367 m!6002108))

(assert (=> b!4972813 d!1601329))

(declare-fun d!1601333 () Bool)

(declare-fun lt!2054057 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10195 (List!57591) (InoxSet Rule!16600))

(assert (=> d!1601333 (= lt!2054057 (select (content!10195 rulesArg!259) (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))

(declare-fun e!3108341 () Bool)

(assert (=> d!1601333 (= lt!2054057 e!3108341)))

(declare-fun res!2123088 () Bool)

(assert (=> d!1601333 (=> (not res!2123088) (not e!3108341))))

(assert (=> d!1601333 (= res!2123088 ((_ is Cons!57467) rulesArg!259))))

(assert (=> d!1601333 (= (contains!19545 rulesArg!259 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) lt!2054057)))

(declare-fun b!4973372 () Bool)

(declare-fun e!3108342 () Bool)

(assert (=> b!4973372 (= e!3108341 e!3108342)))

(declare-fun res!2123089 () Bool)

(assert (=> b!4973372 (=> res!2123089 e!3108342)))

(assert (=> b!4973372 (= res!2123089 (= (h!63915 rulesArg!259) (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))

(declare-fun b!4973373 () Bool)

(assert (=> b!4973373 (= e!3108342 (contains!19545 (t!369197 rulesArg!259) (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))

(assert (= (and d!1601333 res!2123088) b!4973372))

(assert (= (and b!4973372 (not res!2123089)) b!4973373))

(declare-fun m!6002122 () Bool)

(assert (=> d!1601333 m!6002122))

(declare-fun m!6002124 () Bool)

(assert (=> d!1601333 m!6002124))

(declare-fun m!6002126 () Bool)

(assert (=> b!4973373 m!6002126))

(assert (=> b!4972957 d!1601333))

(assert (=> b!4972957 d!1601273))

(declare-fun d!1601335 () Bool)

(declare-fun lt!2054058 () Int)

(assert (=> d!1601335 (>= lt!2054058 0)))

(declare-fun e!3108347 () Int)

(assert (=> d!1601335 (= lt!2054058 e!3108347)))

(declare-fun c!848621 () Bool)

(assert (=> d!1601335 (= c!848621 ((_ is Nil!57466) (_2!34412 (get!19957 lt!2053853))))))

(assert (=> d!1601335 (= (size!38097 (_2!34412 (get!19957 lt!2053853))) lt!2054058)))

(declare-fun b!4973386 () Bool)

(assert (=> b!4973386 (= e!3108347 0)))

(declare-fun b!4973387 () Bool)

(assert (=> b!4973387 (= e!3108347 (+ 1 (size!38097 (t!369196 (_2!34412 (get!19957 lt!2053853))))))))

(assert (= (and d!1601335 c!848621) b!4973386))

(assert (= (and d!1601335 (not c!848621)) b!4973387))

(declare-fun m!6002128 () Bool)

(assert (=> b!4973387 m!6002128))

(assert (=> b!4972953 d!1601335))

(assert (=> b!4972953 d!1601273))

(assert (=> b!4972953 d!1601269))

(declare-fun lt!2054112 () Option!14463)

(declare-fun d!1601337 () Bool)

(assert (=> d!1601337 (= lt!2054112 (maxPrefixOneRule!3636 thiss!15247 (h!63915 rulesArg!259) lt!2053676))))

(declare-fun e!3108403 () Option!14463)

(assert (=> d!1601337 (= lt!2054112 e!3108403)))

(declare-fun c!848637 () Bool)

(declare-fun lt!2054108 () tuple2!62224)

(assert (=> d!1601337 (= c!848637 (isEmpty!30977 (_1!34415 lt!2054108)))))

(declare-fun findLongestMatchWithZipper!100 (Regex!13633 List!57590) tuple2!62224)

(assert (=> d!1601337 (= lt!2054108 (findLongestMatchWithZipper!100 (regex!8400 (h!63915 rulesArg!259)) lt!2053676))))

(assert (=> d!1601337 (ruleValid!3809 thiss!15247 (h!63915 rulesArg!259))))

(assert (=> d!1601337 (= (maxPrefixOneRuleZipper!303 thiss!15247 (h!63915 rulesArg!259) lt!2053676) lt!2054112)))

(declare-fun b!4973480 () Bool)

(assert (=> b!4973480 (= e!3108403 None!14462)))

(declare-fun b!4973481 () Bool)

(assert (=> b!4973481 (= e!3108403 (Some!14462 (tuple2!62219 (Token!15297 (apply!13911 (transformation!8400 (h!63915 rulesArg!259)) (seqFromList!6043 (_1!34415 lt!2054108))) (h!63915 rulesArg!259) (size!38097 (_1!34415 lt!2054108)) (_1!34415 lt!2054108)) (_2!34415 lt!2054108))))))

(declare-fun lt!2054107 () Unit!148431)

(assert (=> b!4973481 (= lt!2054107 (longestMatchIsAcceptedByMatchOrIsEmpty!1823 (regex!8400 (h!63915 rulesArg!259)) lt!2053676))))

(declare-fun res!2123152 () Bool)

(assert (=> b!4973481 (= res!2123152 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))))))

(declare-fun e!3108404 () Bool)

(assert (=> b!4973481 (=> res!2123152 e!3108404)))

(assert (=> b!4973481 e!3108404))

(declare-fun lt!2054111 () Unit!148431)

(assert (=> b!4973481 (= lt!2054111 lt!2054107)))

(declare-fun lt!2054109 () Unit!148431)

(assert (=> b!4973481 (= lt!2054109 (lemmaInv!1341 (transformation!8400 (h!63915 rulesArg!259))))))

(declare-fun lt!2054110 () Unit!148431)

(assert (=> b!4973481 (= lt!2054110 (lemmaSemiInverse!2609 (transformation!8400 (h!63915 rulesArg!259)) (seqFromList!6043 (_1!34415 lt!2054108))))))

(declare-fun b!4973482 () Bool)

(assert (=> b!4973482 (= e!3108404 (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))))))

(assert (= (and d!1601337 c!848637) b!4973480))

(assert (= (and d!1601337 (not c!848637)) b!4973481))

(assert (= (and b!4973481 (not res!2123152)) b!4973482))

(assert (=> d!1601337 m!6001600))

(declare-fun m!6002292 () Bool)

(assert (=> d!1601337 m!6002292))

(declare-fun m!6002294 () Bool)

(assert (=> d!1601337 m!6002294))

(assert (=> d!1601337 m!6001448))

(assert (=> b!4973481 m!6001578))

(assert (=> b!4973481 m!6001916))

(assert (=> b!4973481 m!6001546))

(assert (=> b!4973481 m!6001604))

(assert (=> b!4973481 m!6001904))

(declare-fun m!6002296 () Bool)

(assert (=> b!4973481 m!6002296))

(declare-fun m!6002298 () Bool)

(assert (=> b!4973481 m!6002298))

(assert (=> b!4973481 m!6002296))

(declare-fun m!6002300 () Bool)

(assert (=> b!4973481 m!6002300))

(assert (=> b!4973481 m!6001604))

(assert (=> b!4973481 m!6001912))

(declare-fun m!6002302 () Bool)

(assert (=> b!4973481 m!6002302))

(assert (=> b!4973481 m!6002296))

(assert (=> b!4973481 m!6001546))

(assert (=> b!4973482 m!6001546))

(assert (=> b!4973482 m!6001604))

(assert (=> b!4973482 m!6001546))

(assert (=> b!4973482 m!6001604))

(assert (=> b!4973482 m!6001904))

(assert (=> b!4973482 m!6001918))

(assert (=> bm!346806 d!1601337))

(declare-fun d!1601399 () Bool)

(assert (=> d!1601399 (= (get!19958 lt!2053812) (v!50458 lt!2053812))))

(assert (=> b!4972902 d!1601399))

(declare-fun b!4973483 () Bool)

(declare-fun e!3108405 () Bool)

(declare-fun e!3108406 () Bool)

(assert (=> b!4973483 (= e!3108405 e!3108406)))

(declare-fun res!2123153 () Bool)

(assert (=> b!4973483 (=> (not res!2123153) (not e!3108406))))

(declare-fun lt!2054115 () Option!14463)

(assert (=> b!4973483 (= res!2123153 (isDefined!11376 lt!2054115))))

(declare-fun b!4973484 () Bool)

(declare-fun res!2123156 () Bool)

(assert (=> b!4973484 (=> (not res!2123156) (not e!3108406))))

(assert (=> b!4973484 (= res!2123156 (= (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115)))) (originalCharacters!8679 (_1!34412 (get!19957 lt!2054115)))))))

(declare-fun bm!346854 () Bool)

(declare-fun call!346859 () Option!14463)

(assert (=> bm!346854 (= call!346859 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 rulesArg!259)) (list!18383 input!1342)))))

(declare-fun b!4973486 () Bool)

(declare-fun res!2123159 () Bool)

(assert (=> b!4973486 (=> (not res!2123159) (not e!3108406))))

(assert (=> b!4973486 (= res!2123159 (matchR!6643 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115))))))))

(declare-fun b!4973487 () Bool)

(declare-fun res!2123157 () Bool)

(assert (=> b!4973487 (=> (not res!2123157) (not e!3108406))))

(assert (=> b!4973487 (= res!2123157 (< (size!38097 (_2!34412 (get!19957 lt!2054115))) (size!38097 (list!18383 input!1342))))))

(declare-fun b!4973488 () Bool)

(declare-fun res!2123155 () Bool)

(assert (=> b!4973488 (=> (not res!2123155) (not e!3108406))))

(assert (=> b!4973488 (= res!2123155 (= (++!12539 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115)))) (_2!34412 (get!19957 lt!2054115))) (list!18383 input!1342)))))

(declare-fun b!4973489 () Bool)

(declare-fun res!2123154 () Bool)

(assert (=> b!4973489 (=> (not res!2123154) (not e!3108406))))

(assert (=> b!4973489 (= res!2123154 (= (value!268840 (_1!34412 (get!19957 lt!2054115))) (apply!13911 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054115)))))))))

(declare-fun b!4973490 () Bool)

(declare-fun e!3108407 () Option!14463)

(declare-fun lt!2054116 () Option!14463)

(declare-fun lt!2054119 () Option!14463)

(assert (=> b!4973490 (= e!3108407 (ite (and ((_ is None!14462) lt!2054116) ((_ is None!14462) lt!2054119)) None!14462 (ite ((_ is None!14462) lt!2054119) lt!2054116 (ite ((_ is None!14462) lt!2054116) lt!2054119 (ite (>= (size!38094 (_1!34412 (v!50457 lt!2054116))) (size!38094 (_1!34412 (v!50457 lt!2054119)))) lt!2054116 lt!2054119)))))))

(assert (=> b!4973490 (= lt!2054116 call!346859)))

(assert (=> b!4973490 (= lt!2054119 (maxPrefix!4667 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342)))))

(declare-fun b!4973491 () Bool)

(assert (=> b!4973491 (= e!3108406 (contains!19545 (t!369197 rulesArg!259) (rule!11662 (_1!34412 (get!19957 lt!2054115)))))))

(declare-fun b!4973485 () Bool)

(assert (=> b!4973485 (= e!3108407 call!346859)))

(declare-fun d!1601401 () Bool)

(assert (=> d!1601401 e!3108405))

(declare-fun res!2123158 () Bool)

(assert (=> d!1601401 (=> res!2123158 e!3108405)))

(assert (=> d!1601401 (= res!2123158 (isEmpty!30975 lt!2054115))))

(assert (=> d!1601401 (= lt!2054115 e!3108407)))

(declare-fun c!848638 () Bool)

(assert (=> d!1601401 (= c!848638 (and ((_ is Cons!57467) (t!369197 rulesArg!259)) ((_ is Nil!57467) (t!369197 (t!369197 rulesArg!259)))))))

(declare-fun lt!2054117 () Unit!148431)

(declare-fun lt!2054118 () Unit!148431)

(assert (=> d!1601401 (= lt!2054117 lt!2054118)))

(assert (=> d!1601401 (isPrefix!5251 (list!18383 input!1342) (list!18383 input!1342))))

(assert (=> d!1601401 (= lt!2054118 (lemmaIsPrefixRefl!3575 (list!18383 input!1342) (list!18383 input!1342)))))

(assert (=> d!1601401 (rulesValidInductive!3303 thiss!15247 (t!369197 rulesArg!259))))

(assert (=> d!1601401 (= (maxPrefix!4667 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342)) lt!2054115)))

(assert (= (and d!1601401 c!848638) b!4973485))

(assert (= (and d!1601401 (not c!848638)) b!4973490))

(assert (= (or b!4973485 b!4973490) bm!346854))

(assert (= (and d!1601401 (not res!2123158)) b!4973483))

(assert (= (and b!4973483 res!2123153) b!4973484))

(assert (= (and b!4973484 res!2123156) b!4973487))

(assert (= (and b!4973487 res!2123157) b!4973488))

(assert (= (and b!4973488 res!2123155) b!4973489))

(assert (= (and b!4973489 res!2123154) b!4973486))

(assert (= (and b!4973486 res!2123159) b!4973491))

(declare-fun m!6002310 () Bool)

(assert (=> b!4973483 m!6002310))

(declare-fun m!6002312 () Bool)

(assert (=> b!4973484 m!6002312))

(declare-fun m!6002314 () Bool)

(assert (=> b!4973484 m!6002314))

(assert (=> b!4973484 m!6002314))

(declare-fun m!6002316 () Bool)

(assert (=> b!4973484 m!6002316))

(assert (=> b!4973490 m!6001308))

(assert (=> b!4973490 m!6002094))

(assert (=> bm!346854 m!6001308))

(declare-fun m!6002318 () Bool)

(assert (=> bm!346854 m!6002318))

(assert (=> b!4973487 m!6002312))

(declare-fun m!6002320 () Bool)

(assert (=> b!4973487 m!6002320))

(assert (=> b!4973487 m!6001308))

(assert (=> b!4973487 m!6002036))

(declare-fun m!6002322 () Bool)

(assert (=> d!1601401 m!6002322))

(assert (=> d!1601401 m!6001308))

(assert (=> d!1601401 m!6001308))

(declare-fun m!6002324 () Bool)

(assert (=> d!1601401 m!6002324))

(assert (=> d!1601401 m!6001308))

(assert (=> d!1601401 m!6001308))

(declare-fun m!6002326 () Bool)

(assert (=> d!1601401 m!6002326))

(assert (=> d!1601401 m!6001450))

(assert (=> b!4973491 m!6002312))

(declare-fun m!6002328 () Bool)

(assert (=> b!4973491 m!6002328))

(assert (=> b!4973488 m!6002312))

(assert (=> b!4973488 m!6002314))

(assert (=> b!4973488 m!6002314))

(assert (=> b!4973488 m!6002316))

(assert (=> b!4973488 m!6002316))

(declare-fun m!6002330 () Bool)

(assert (=> b!4973488 m!6002330))

(assert (=> b!4973486 m!6002312))

(assert (=> b!4973486 m!6002314))

(assert (=> b!4973486 m!6002314))

(assert (=> b!4973486 m!6002316))

(assert (=> b!4973486 m!6002316))

(declare-fun m!6002336 () Bool)

(assert (=> b!4973486 m!6002336))

(assert (=> b!4973489 m!6002312))

(declare-fun m!6002338 () Bool)

(assert (=> b!4973489 m!6002338))

(assert (=> b!4973489 m!6002338))

(declare-fun m!6002340 () Bool)

(assert (=> b!4973489 m!6002340))

(assert (=> b!4972902 d!1601401))

(declare-fun d!1601407 () Bool)

(assert (=> d!1601407 (= (list!18383 (_2!34411 (get!19958 lt!2053812))) (list!18385 (c!848514 (_2!34411 (get!19958 lt!2053812)))))))

(declare-fun bs!1183686 () Bool)

(assert (= bs!1183686 d!1601407))

(declare-fun m!6002342 () Bool)

(assert (=> bs!1183686 m!6002342))

(assert (=> b!4972902 d!1601407))

(assert (=> b!4972902 d!1601201))

(declare-fun d!1601409 () Bool)

(assert (=> d!1601409 (= (get!19957 (maxPrefix!4667 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342))) (v!50457 (maxPrefix!4667 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342))))))

(assert (=> b!4972902 d!1601409))

(declare-fun b!4973498 () Bool)

(declare-fun e!3108410 () List!57590)

(assert (=> b!4973498 (= e!3108410 (++!12539 (list!18385 (left!41922 (c!848514 totalInput!464))) (list!18385 (right!42252 (c!848514 totalInput!464)))))))

(declare-fun b!4973496 () Bool)

(declare-fun e!3108409 () List!57590)

(assert (=> b!4973496 (= e!3108409 e!3108410)))

(declare-fun c!848640 () Bool)

(assert (=> b!4973496 (= c!848640 ((_ is Leaf!25177) (c!848514 totalInput!464)))))

(declare-fun d!1601411 () Bool)

(declare-fun c!848639 () Bool)

(assert (=> d!1601411 (= c!848639 ((_ is Empty!15152) (c!848514 totalInput!464)))))

(assert (=> d!1601411 (= (list!18385 (c!848514 totalInput!464)) e!3108409)))

(declare-fun b!4973497 () Bool)

(assert (=> b!4973497 (= e!3108410 (list!18387 (xs!18478 (c!848514 totalInput!464))))))

(declare-fun b!4973495 () Bool)

(assert (=> b!4973495 (= e!3108409 Nil!57466)))

(assert (= (and d!1601411 c!848639) b!4973495))

(assert (= (and d!1601411 (not c!848639)) b!4973496))

(assert (= (and b!4973496 c!848640) b!4973497))

(assert (= (and b!4973496 (not c!848640)) b!4973498))

(declare-fun m!6002350 () Bool)

(assert (=> b!4973498 m!6002350))

(declare-fun m!6002352 () Bool)

(assert (=> b!4973498 m!6002352))

(assert (=> b!4973498 m!6002350))

(assert (=> b!4973498 m!6002352))

(declare-fun m!6002354 () Bool)

(assert (=> b!4973498 m!6002354))

(declare-fun m!6002356 () Bool)

(assert (=> b!4973497 m!6002356))

(assert (=> d!1601199 d!1601411))

(declare-fun d!1601415 () Bool)

(assert (=> d!1601415 (= (isDefined!11377 lt!2053812) (not (isEmpty!30976 lt!2053812)))))

(declare-fun bs!1183687 () Bool)

(assert (= bs!1183687 d!1601415))

(declare-fun m!6002358 () Bool)

(assert (=> bs!1183687 m!6002358))

(assert (=> b!4972903 d!1601415))

(declare-fun d!1601419 () Bool)

(assert (=> d!1601419 (= (isDefined!11377 lt!2053839) (not (isEmpty!30976 lt!2053839)))))

(declare-fun bs!1183688 () Bool)

(assert (= bs!1183688 d!1601419))

(declare-fun m!6002360 () Bool)

(assert (=> bs!1183688 m!6002360))

(assert (=> b!4972921 d!1601419))

(assert (=> d!1601155 d!1601191))

(assert (=> d!1601155 d!1601213))

(assert (=> d!1601155 d!1601215))

(assert (=> d!1601155 d!1601161))

(assert (=> b!4972900 d!1601399))

(declare-fun d!1601421 () Bool)

(assert (=> d!1601421 (= (get!19957 (maxPrefixZipper!793 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342))) (v!50457 (maxPrefixZipper!793 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342))))))

(assert (=> b!4972900 d!1601421))

(declare-fun lt!2054128 () Option!14463)

(declare-fun d!1601423 () Bool)

(assert (=> d!1601423 (= lt!2054128 (maxPrefix!4667 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342)))))

(declare-fun e!3108411 () Option!14463)

(assert (=> d!1601423 (= lt!2054128 e!3108411)))

(declare-fun c!848641 () Bool)

(assert (=> d!1601423 (= c!848641 (and ((_ is Cons!57467) (t!369197 rulesArg!259)) ((_ is Nil!57467) (t!369197 (t!369197 rulesArg!259)))))))

(declare-fun lt!2054124 () Unit!148431)

(declare-fun lt!2054125 () Unit!148431)

(assert (=> d!1601423 (= lt!2054124 lt!2054125)))

(assert (=> d!1601423 (isPrefix!5251 (list!18383 input!1342) (list!18383 input!1342))))

(assert (=> d!1601423 (= lt!2054125 (lemmaIsPrefixRefl!3575 (list!18383 input!1342) (list!18383 input!1342)))))

(assert (=> d!1601423 (rulesValidInductive!3303 thiss!15247 (t!369197 rulesArg!259))))

(assert (=> d!1601423 (= (maxPrefixZipper!793 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342)) lt!2054128)))

(declare-fun bm!346855 () Bool)

(declare-fun call!346860 () Option!14463)

(assert (=> bm!346855 (= call!346860 (maxPrefixOneRuleZipper!303 thiss!15247 (h!63915 (t!369197 rulesArg!259)) (list!18383 input!1342)))))

(declare-fun b!4973499 () Bool)

(assert (=> b!4973499 (= e!3108411 call!346860)))

(declare-fun b!4973500 () Bool)

(declare-fun lt!2054127 () Option!14463)

(declare-fun lt!2054126 () Option!14463)

(assert (=> b!4973500 (= e!3108411 (ite (and ((_ is None!14462) lt!2054127) ((_ is None!14462) lt!2054126)) None!14462 (ite ((_ is None!14462) lt!2054126) lt!2054127 (ite ((_ is None!14462) lt!2054127) lt!2054126 (ite (>= (size!38094 (_1!34412 (v!50457 lt!2054127))) (size!38094 (_1!34412 (v!50457 lt!2054126)))) lt!2054127 lt!2054126)))))))

(assert (=> b!4973500 (= lt!2054127 call!346860)))

(assert (=> b!4973500 (= lt!2054126 (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342)))))

(assert (= (and d!1601423 c!848641) b!4973499))

(assert (= (and d!1601423 (not c!848641)) b!4973500))

(assert (= (or b!4973499 b!4973500) bm!346855))

(assert (=> d!1601423 m!6001308))

(assert (=> d!1601423 m!6001536))

(assert (=> d!1601423 m!6001308))

(assert (=> d!1601423 m!6001308))

(assert (=> d!1601423 m!6002324))

(assert (=> d!1601423 m!6001308))

(assert (=> d!1601423 m!6001308))

(assert (=> d!1601423 m!6002326))

(assert (=> d!1601423 m!6001450))

(assert (=> bm!346855 m!6001308))

(declare-fun m!6002362 () Bool)

(assert (=> bm!346855 m!6002362))

(assert (=> b!4973500 m!6001308))

(assert (=> b!4973500 m!6002084))

(assert (=> b!4972900 d!1601423))

(assert (=> b!4972900 d!1601201))

(declare-fun b!4973540 () Bool)

(declare-fun res!2123180 () Bool)

(declare-fun e!3108431 () Bool)

(assert (=> b!4973540 (=> (not res!2123180) (not e!3108431))))

(declare-fun isEmpty!30980 (Conc!15152) Bool)

(assert (=> b!4973540 (= res!2123180 (not (isEmpty!30980 (left!41922 (c!848514 totalInput!464)))))))

(declare-fun b!4973541 () Bool)

(declare-fun res!2123179 () Bool)

(assert (=> b!4973541 (=> (not res!2123179) (not e!3108431))))

(assert (=> b!4973541 (= res!2123179 (isBalanced!4209 (right!42252 (c!848514 totalInput!464))))))

(declare-fun d!1601425 () Bool)

(declare-fun res!2123178 () Bool)

(declare-fun e!3108432 () Bool)

(assert (=> d!1601425 (=> res!2123178 e!3108432)))

(assert (=> d!1601425 (= res!2123178 (not ((_ is Node!15152) (c!848514 totalInput!464))))))

(assert (=> d!1601425 (= (isBalanced!4209 (c!848514 totalInput!464)) e!3108432)))

(declare-fun b!4973542 () Bool)

(assert (=> b!4973542 (= e!3108431 (not (isEmpty!30980 (right!42252 (c!848514 totalInput!464)))))))

(declare-fun b!4973543 () Bool)

(assert (=> b!4973543 (= e!3108432 e!3108431)))

(declare-fun res!2123181 () Bool)

(assert (=> b!4973543 (=> (not res!2123181) (not e!3108431))))

(assert (=> b!4973543 (= res!2123181 (<= (- 1) (- (height!2020 (left!41922 (c!848514 totalInput!464))) (height!2020 (right!42252 (c!848514 totalInput!464))))))))

(declare-fun b!4973544 () Bool)

(declare-fun res!2123183 () Bool)

(assert (=> b!4973544 (=> (not res!2123183) (not e!3108431))))

(assert (=> b!4973544 (= res!2123183 (isBalanced!4209 (left!41922 (c!848514 totalInput!464))))))

(declare-fun b!4973545 () Bool)

(declare-fun res!2123182 () Bool)

(assert (=> b!4973545 (=> (not res!2123182) (not e!3108431))))

(assert (=> b!4973545 (= res!2123182 (<= (- (height!2020 (left!41922 (c!848514 totalInput!464))) (height!2020 (right!42252 (c!848514 totalInput!464)))) 1))))

(assert (= (and d!1601425 (not res!2123178)) b!4973543))

(assert (= (and b!4973543 res!2123181) b!4973545))

(assert (= (and b!4973545 res!2123182) b!4973544))

(assert (= (and b!4973544 res!2123183) b!4973541))

(assert (= (and b!4973541 res!2123179) b!4973540))

(assert (= (and b!4973540 res!2123180) b!4973542))

(declare-fun m!6002366 () Bool)

(assert (=> b!4973541 m!6002366))

(declare-fun m!6002370 () Bool)

(assert (=> b!4973544 m!6002370))

(declare-fun m!6002374 () Bool)

(assert (=> b!4973545 m!6002374))

(declare-fun m!6002378 () Bool)

(assert (=> b!4973545 m!6002378))

(declare-fun m!6002380 () Bool)

(assert (=> b!4973542 m!6002380))

(declare-fun m!6002382 () Bool)

(assert (=> b!4973540 m!6002382))

(assert (=> b!4973543 m!6002374))

(assert (=> b!4973543 m!6002378))

(assert (=> d!1601149 d!1601425))

(assert (=> d!1601177 d!1601329))

(declare-fun d!1601429 () Bool)

(assert (=> d!1601429 (= (isDefined!11376 (maxPrefixZipper!793 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342))) (not (isEmpty!30975 (maxPrefixZipper!793 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342)))))))

(declare-fun bs!1183689 () Bool)

(assert (= bs!1183689 d!1601429))

(assert (=> bs!1183689 m!6001526))

(declare-fun m!6002384 () Bool)

(assert (=> bs!1183689 m!6002384))

(assert (=> d!1601177 d!1601429))

(declare-fun b!4973549 () Bool)

(declare-fun e!3108433 () Bool)

(assert (=> b!4973549 (= e!3108433 (>= (size!38097 lt!2053811) (size!38097 lt!2053809)))))

(declare-fun b!4973547 () Bool)

(declare-fun res!2123184 () Bool)

(declare-fun e!3108435 () Bool)

(assert (=> b!4973547 (=> (not res!2123184) (not e!3108435))))

(assert (=> b!4973547 (= res!2123184 (= (head!10675 lt!2053809) (head!10675 lt!2053811)))))

(declare-fun b!4973548 () Bool)

(assert (=> b!4973548 (= e!3108435 (isPrefix!5251 (tail!9808 lt!2053809) (tail!9808 lt!2053811)))))

(declare-fun d!1601431 () Bool)

(assert (=> d!1601431 e!3108433))

(declare-fun res!2123185 () Bool)

(assert (=> d!1601431 (=> res!2123185 e!3108433)))

(declare-fun lt!2054132 () Bool)

(assert (=> d!1601431 (= res!2123185 (not lt!2054132))))

(declare-fun e!3108434 () Bool)

(assert (=> d!1601431 (= lt!2054132 e!3108434)))

(declare-fun res!2123187 () Bool)

(assert (=> d!1601431 (=> res!2123187 e!3108434)))

(assert (=> d!1601431 (= res!2123187 ((_ is Nil!57466) lt!2053809))))

(assert (=> d!1601431 (= (isPrefix!5251 lt!2053809 lt!2053811) lt!2054132)))

(declare-fun b!4973546 () Bool)

(assert (=> b!4973546 (= e!3108434 e!3108435)))

(declare-fun res!2123186 () Bool)

(assert (=> b!4973546 (=> (not res!2123186) (not e!3108435))))

(assert (=> b!4973546 (= res!2123186 (not ((_ is Nil!57466) lt!2053811)))))

(assert (= (and d!1601431 (not res!2123187)) b!4973546))

(assert (= (and b!4973546 res!2123186) b!4973547))

(assert (= (and b!4973547 res!2123184) b!4973548))

(assert (= (and d!1601431 (not res!2123185)) b!4973549))

(declare-fun m!6002386 () Bool)

(assert (=> b!4973549 m!6002386))

(declare-fun m!6002388 () Bool)

(assert (=> b!4973549 m!6002388))

(declare-fun m!6002390 () Bool)

(assert (=> b!4973547 m!6002390))

(declare-fun m!6002392 () Bool)

(assert (=> b!4973547 m!6002392))

(declare-fun m!6002394 () Bool)

(assert (=> b!4973548 m!6002394))

(declare-fun m!6002396 () Bool)

(assert (=> b!4973548 m!6002396))

(assert (=> b!4973548 m!6002394))

(assert (=> b!4973548 m!6002396))

(declare-fun m!6002398 () Bool)

(assert (=> b!4973548 m!6002398))

(assert (=> d!1601177 d!1601431))

(declare-fun d!1601433 () Bool)

(assert (=> d!1601433 (isPrefix!5251 lt!2053809 lt!2053811)))

(declare-fun lt!2054133 () Unit!148431)

(assert (=> d!1601433 (= lt!2054133 (choose!36709 lt!2053809 lt!2053811))))

(assert (=> d!1601433 (= (lemmaIsPrefixRefl!3575 lt!2053809 lt!2053811) lt!2054133)))

(declare-fun bs!1183690 () Bool)

(assert (= bs!1183690 d!1601433))

(assert (=> bs!1183690 m!6001540))

(declare-fun m!6002400 () Bool)

(assert (=> bs!1183690 m!6002400))

(assert (=> d!1601177 d!1601433))

(assert (=> d!1601177 d!1601201))

(assert (=> d!1601177 d!1601423))

(assert (=> d!1601177 d!1601415))

(declare-fun b!4973553 () Bool)

(declare-fun e!3108437 () List!57590)

(assert (=> b!4973553 (= e!3108437 (++!12539 (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053679)))) (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053679))))))))

(declare-fun b!4973551 () Bool)

(declare-fun e!3108436 () List!57590)

(assert (=> b!4973551 (= e!3108436 e!3108437)))

(declare-fun c!848655 () Bool)

(assert (=> b!4973551 (= c!848655 ((_ is Leaf!25177) (c!848514 (_2!34411 lt!2053679))))))

(declare-fun d!1601435 () Bool)

(declare-fun c!848654 () Bool)

(assert (=> d!1601435 (= c!848654 ((_ is Empty!15152) (c!848514 (_2!34411 lt!2053679))))))

(assert (=> d!1601435 (= (list!18385 (c!848514 (_2!34411 lt!2053679))) e!3108436)))

(declare-fun b!4973552 () Bool)

(assert (=> b!4973552 (= e!3108437 (list!18387 (xs!18478 (c!848514 (_2!34411 lt!2053679)))))))

(declare-fun b!4973550 () Bool)

(assert (=> b!4973550 (= e!3108436 Nil!57466)))

(assert (= (and d!1601435 c!848654) b!4973550))

(assert (= (and d!1601435 (not c!848654)) b!4973551))

(assert (= (and b!4973551 c!848655) b!4973552))

(assert (= (and b!4973551 (not c!848655)) b!4973553))

(declare-fun m!6002402 () Bool)

(assert (=> b!4973553 m!6002402))

(declare-fun m!6002404 () Bool)

(assert (=> b!4973553 m!6002404))

(assert (=> b!4973553 m!6002402))

(assert (=> b!4973553 m!6002404))

(declare-fun m!6002406 () Bool)

(assert (=> b!4973553 m!6002406))

(declare-fun m!6002408 () Bool)

(assert (=> b!4973552 m!6002408))

(assert (=> d!1601193 d!1601435))

(declare-fun b!4973557 () Bool)

(declare-fun e!3108439 () List!57590)

(assert (=> b!4973557 (= e!3108439 (++!12539 (list!18385 (left!41922 (c!848514 input!1342))) (list!18385 (right!42252 (c!848514 input!1342)))))))

(declare-fun b!4973555 () Bool)

(declare-fun e!3108438 () List!57590)

(assert (=> b!4973555 (= e!3108438 e!3108439)))

(declare-fun c!848657 () Bool)

(assert (=> b!4973555 (= c!848657 ((_ is Leaf!25177) (c!848514 input!1342)))))

(declare-fun d!1601437 () Bool)

(declare-fun c!848656 () Bool)

(assert (=> d!1601437 (= c!848656 ((_ is Empty!15152) (c!848514 input!1342)))))

(assert (=> d!1601437 (= (list!18385 (c!848514 input!1342)) e!3108438)))

(declare-fun b!4973556 () Bool)

(assert (=> b!4973556 (= e!3108439 (list!18387 (xs!18478 (c!848514 input!1342))))))

(declare-fun b!4973554 () Bool)

(assert (=> b!4973554 (= e!3108438 Nil!57466)))

(assert (= (and d!1601437 c!848656) b!4973554))

(assert (= (and d!1601437 (not c!848656)) b!4973555))

(assert (= (and b!4973555 c!848657) b!4973556))

(assert (= (and b!4973555 (not c!848657)) b!4973557))

(declare-fun m!6002410 () Bool)

(assert (=> b!4973557 m!6002410))

(declare-fun m!6002412 () Bool)

(assert (=> b!4973557 m!6002412))

(assert (=> b!4973557 m!6002410))

(assert (=> b!4973557 m!6002412))

(declare-fun m!6002414 () Bool)

(assert (=> b!4973557 m!6002414))

(assert (=> b!4973556 m!6001956))

(assert (=> d!1601201 d!1601437))

(assert (=> b!4972904 d!1601399))

(assert (=> b!4972904 d!1601409))

(assert (=> b!4972904 d!1601401))

(assert (=> b!4972904 d!1601201))

(declare-fun d!1601439 () Bool)

(assert (=> d!1601439 (= (isEmpty!30975 lt!2053673) (not ((_ is Some!14462) lt!2053673)))))

(assert (=> d!1601151 d!1601439))

(declare-fun b!4973563 () Bool)

(declare-fun e!3108442 () Bool)

(assert (=> b!4973563 (= e!3108442 (>= (size!38097 (tail!9808 lt!2053676)) (size!38097 (tail!9808 lt!2053676))))))

(declare-fun b!4973561 () Bool)

(declare-fun res!2123190 () Bool)

(declare-fun e!3108444 () Bool)

(assert (=> b!4973561 (=> (not res!2123190) (not e!3108444))))

(assert (=> b!4973561 (= res!2123190 (= (head!10675 (tail!9808 lt!2053676)) (head!10675 (tail!9808 lt!2053676))))))

(declare-fun b!4973562 () Bool)

(assert (=> b!4973562 (= e!3108444 (isPrefix!5251 (tail!9808 (tail!9808 lt!2053676)) (tail!9808 (tail!9808 lt!2053676))))))

(declare-fun d!1601441 () Bool)

(assert (=> d!1601441 e!3108442))

(declare-fun res!2123191 () Bool)

(assert (=> d!1601441 (=> res!2123191 e!3108442)))

(declare-fun lt!2054134 () Bool)

(assert (=> d!1601441 (= res!2123191 (not lt!2054134))))

(declare-fun e!3108443 () Bool)

(assert (=> d!1601441 (= lt!2054134 e!3108443)))

(declare-fun res!2123193 () Bool)

(assert (=> d!1601441 (=> res!2123193 e!3108443)))

(assert (=> d!1601441 (= res!2123193 ((_ is Nil!57466) (tail!9808 lt!2053676)))))

(assert (=> d!1601441 (= (isPrefix!5251 (tail!9808 lt!2053676) (tail!9808 lt!2053676)) lt!2054134)))

(declare-fun b!4973560 () Bool)

(assert (=> b!4973560 (= e!3108443 e!3108444)))

(declare-fun res!2123192 () Bool)

(assert (=> b!4973560 (=> (not res!2123192) (not e!3108444))))

(assert (=> b!4973560 (= res!2123192 (not ((_ is Nil!57466) (tail!9808 lt!2053676))))))

(assert (= (and d!1601441 (not res!2123193)) b!4973560))

(assert (= (and b!4973560 res!2123192) b!4973561))

(assert (= (and b!4973561 res!2123190) b!4973562))

(assert (= (and d!1601441 (not res!2123191)) b!4973563))

(assert (=> b!4973563 m!6001644))

(declare-fun m!6002416 () Bool)

(assert (=> b!4973563 m!6002416))

(assert (=> b!4973563 m!6001644))

(assert (=> b!4973563 m!6002416))

(assert (=> b!4973561 m!6001644))

(declare-fun m!6002418 () Bool)

(assert (=> b!4973561 m!6002418))

(assert (=> b!4973561 m!6001644))

(assert (=> b!4973561 m!6002418))

(assert (=> b!4973562 m!6001644))

(declare-fun m!6002420 () Bool)

(assert (=> b!4973562 m!6002420))

(assert (=> b!4973562 m!6001644))

(assert (=> b!4973562 m!6002420))

(assert (=> b!4973562 m!6002420))

(assert (=> b!4973562 m!6002420))

(declare-fun m!6002422 () Bool)

(assert (=> b!4973562 m!6002422))

(assert (=> b!4972986 d!1601441))

(declare-fun d!1601443 () Bool)

(assert (=> d!1601443 (= (tail!9808 lt!2053676) (t!369196 lt!2053676))))

(assert (=> b!4972986 d!1601443))

(declare-fun d!1601445 () Bool)

(assert (=> d!1601445 (= (isEmpty!30976 lt!2053671) (not ((_ is Some!14463) lt!2053671)))))

(assert (=> d!1601153 d!1601445))

(declare-fun b!4973566 () Bool)

(declare-fun res!2123196 () Bool)

(declare-fun e!3108445 () Bool)

(assert (=> b!4973566 (=> (not res!2123196) (not e!3108445))))

(assert (=> b!4973566 (= res!2123196 (not (isEmpty!30980 (left!41922 (c!848514 input!1342)))))))

(declare-fun b!4973567 () Bool)

(declare-fun res!2123195 () Bool)

(assert (=> b!4973567 (=> (not res!2123195) (not e!3108445))))

(assert (=> b!4973567 (= res!2123195 (isBalanced!4209 (right!42252 (c!848514 input!1342))))))

(declare-fun d!1601447 () Bool)

(declare-fun res!2123194 () Bool)

(declare-fun e!3108446 () Bool)

(assert (=> d!1601447 (=> res!2123194 e!3108446)))

(assert (=> d!1601447 (= res!2123194 (not ((_ is Node!15152) (c!848514 input!1342))))))

(assert (=> d!1601447 (= (isBalanced!4209 (c!848514 input!1342)) e!3108446)))

(declare-fun b!4973568 () Bool)

(assert (=> b!4973568 (= e!3108445 (not (isEmpty!30980 (right!42252 (c!848514 input!1342)))))))

(declare-fun b!4973569 () Bool)

(assert (=> b!4973569 (= e!3108446 e!3108445)))

(declare-fun res!2123197 () Bool)

(assert (=> b!4973569 (=> (not res!2123197) (not e!3108445))))

(assert (=> b!4973569 (= res!2123197 (<= (- 1) (- (height!2020 (left!41922 (c!848514 input!1342))) (height!2020 (right!42252 (c!848514 input!1342))))))))

(declare-fun b!4973570 () Bool)

(declare-fun res!2123199 () Bool)

(assert (=> b!4973570 (=> (not res!2123199) (not e!3108445))))

(assert (=> b!4973570 (= res!2123199 (isBalanced!4209 (left!41922 (c!848514 input!1342))))))

(declare-fun b!4973571 () Bool)

(declare-fun res!2123198 () Bool)

(assert (=> b!4973571 (=> (not res!2123198) (not e!3108445))))

(assert (=> b!4973571 (= res!2123198 (<= (- (height!2020 (left!41922 (c!848514 input!1342))) (height!2020 (right!42252 (c!848514 input!1342)))) 1))))

(assert (= (and d!1601447 (not res!2123194)) b!4973569))

(assert (= (and b!4973569 res!2123197) b!4973571))

(assert (= (and b!4973571 res!2123198) b!4973570))

(assert (= (and b!4973570 res!2123199) b!4973567))

(assert (= (and b!4973567 res!2123195) b!4973566))

(assert (= (and b!4973566 res!2123196) b!4973568))

(declare-fun m!6002426 () Bool)

(assert (=> b!4973567 m!6002426))

(declare-fun m!6002428 () Bool)

(assert (=> b!4973570 m!6002428))

(assert (=> b!4973571 m!6001746))

(assert (=> b!4973571 m!6001748))

(declare-fun m!6002432 () Bool)

(assert (=> b!4973568 m!6002432))

(declare-fun m!6002438 () Bool)

(assert (=> b!4973566 m!6002438))

(assert (=> b!4973569 m!6001746))

(assert (=> b!4973569 m!6001748))

(assert (=> d!1601147 d!1601447))

(declare-fun d!1601451 () Bool)

(assert (=> d!1601451 (= (isDefined!11376 (maxPrefixOneRule!3636 thiss!15247 (h!63915 rulesArg!259) (list!18383 input!1342))) (not (isEmpty!30975 (maxPrefixOneRule!3636 thiss!15247 (h!63915 rulesArg!259) (list!18383 input!1342)))))))

(declare-fun bs!1183693 () Bool)

(assert (= bs!1183693 d!1601451))

(assert (=> bs!1183693 m!6001558))

(declare-fun m!6002448 () Bool)

(assert (=> bs!1183693 m!6002448))

(assert (=> d!1601187 d!1601451))

(assert (=> d!1601187 d!1601201))

(declare-fun d!1601455 () Bool)

(declare-fun res!2123208 () Bool)

(declare-fun e!3108453 () Bool)

(assert (=> d!1601455 (=> (not res!2123208) (not e!3108453))))

(assert (=> d!1601455 (= res!2123208 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259))))))

(assert (=> d!1601455 (= (ruleValid!3809 thiss!15247 (h!63915 rulesArg!259)) e!3108453)))

(declare-fun b!4973580 () Bool)

(declare-fun res!2123209 () Bool)

(assert (=> b!4973580 (=> (not res!2123209) (not e!3108453))))

(assert (=> b!4973580 (= res!2123209 (not (nullable!4627 (regex!8400 (h!63915 rulesArg!259)))))))

(declare-fun b!4973581 () Bool)

(assert (=> b!4973581 (= e!3108453 (not (= (tag!9264 (h!63915 rulesArg!259)) (String!65425 ""))))))

(assert (= (and d!1601455 res!2123208) b!4973580))

(assert (= (and b!4973580 res!2123209) b!4973581))

(declare-fun m!6002460 () Bool)

(assert (=> d!1601455 m!6002460))

(declare-fun m!6002462 () Bool)

(assert (=> b!4973580 m!6002462))

(assert (=> d!1601187 d!1601455))

(declare-fun d!1601465 () Bool)

(declare-fun lt!2054147 () tuple2!62226)

(assert (=> d!1601465 (= (tuple2!62225 (list!18383 (_1!34416 lt!2054147)) (list!18383 (_2!34416 lt!2054147))) (findLongestMatch!1704 (regex!8400 (h!63915 rulesArg!259)) (list!18383 input!1342)))))

(declare-fun choose!36713 (Regex!13633 BalanceConc!29734 BalanceConc!29734) tuple2!62226)

(assert (=> d!1601465 (= lt!2054147 (choose!36713 (regex!8400 (h!63915 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1601465 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1601465 (= (findLongestMatchWithZipperSequenceV2!171 (regex!8400 (h!63915 rulesArg!259)) input!1342 totalInput!464) lt!2054147)))

(declare-fun bs!1183698 () Bool)

(assert (= bs!1183698 d!1601465))

(declare-fun m!6002514 () Bool)

(assert (=> bs!1183698 m!6002514))

(assert (=> bs!1183698 m!6002460))

(assert (=> bs!1183698 m!6001308))

(declare-fun m!6002516 () Bool)

(assert (=> bs!1183698 m!6002516))

(assert (=> bs!1183698 m!6001308))

(assert (=> bs!1183698 m!6002032))

(declare-fun m!6002518 () Bool)

(assert (=> bs!1183698 m!6002518))

(assert (=> d!1601187 d!1601465))

(assert (=> d!1601187 d!1601307))

(assert (=> d!1601187 d!1601419))

(declare-fun d!1601479 () Bool)

(declare-fun lt!2054150 () Bool)

(assert (=> d!1601479 (= lt!2054150 (isEmpty!30977 (list!18383 (_1!34416 lt!2053837))))))

(assert (=> d!1601479 (= lt!2054150 (isEmpty!30980 (c!848514 (_1!34416 lt!2053837))))))

(assert (=> d!1601479 (= (isEmpty!30978 (_1!34416 lt!2053837)) lt!2054150)))

(declare-fun bs!1183699 () Bool)

(assert (= bs!1183699 d!1601479))

(assert (=> bs!1183699 m!6001574))

(assert (=> bs!1183699 m!6001574))

(declare-fun m!6002544 () Bool)

(assert (=> bs!1183699 m!6002544))

(declare-fun m!6002546 () Bool)

(assert (=> bs!1183699 m!6002546))

(assert (=> d!1601187 d!1601479))

(assert (=> b!4972950 d!1601275))

(assert (=> b!4972950 d!1601277))

(assert (=> b!4972950 d!1601273))

(declare-fun d!1601483 () Bool)

(declare-fun res!2123236 () Bool)

(declare-fun e!3108485 () Bool)

(assert (=> d!1601483 (=> (not res!2123236) (not e!3108485))))

(assert (=> d!1601483 (= res!2123236 (<= (size!38097 (list!18387 (xs!18478 (c!848514 totalInput!464)))) 512))))

(assert (=> d!1601483 (= (inv!75129 (c!848514 totalInput!464)) e!3108485)))

(declare-fun b!4973632 () Bool)

(declare-fun res!2123237 () Bool)

(assert (=> b!4973632 (=> (not res!2123237) (not e!3108485))))

(assert (=> b!4973632 (= res!2123237 (= (csize!30535 (c!848514 totalInput!464)) (size!38097 (list!18387 (xs!18478 (c!848514 totalInput!464))))))))

(declare-fun b!4973635 () Bool)

(assert (=> b!4973635 (= e!3108485 (and (> (csize!30535 (c!848514 totalInput!464)) 0) (<= (csize!30535 (c!848514 totalInput!464)) 512)))))

(assert (= (and d!1601483 res!2123236) b!4973632))

(assert (= (and b!4973632 res!2123237) b!4973635))

(assert (=> d!1601483 m!6002356))

(assert (=> d!1601483 m!6002356))

(declare-fun m!6002554 () Bool)

(assert (=> d!1601483 m!6002554))

(assert (=> b!4973632 m!6002356))

(assert (=> b!4973632 m!6002356))

(assert (=> b!4973632 m!6002554))

(assert (=> b!4972966 d!1601483))

(declare-fun b!4973642 () Bool)

(declare-fun e!3108493 () Bool)

(declare-fun e!3108494 () Bool)

(assert (=> b!4973642 (= e!3108493 e!3108494)))

(declare-fun res!2123238 () Bool)

(assert (=> b!4973642 (=> (not res!2123238) (not e!3108494))))

(declare-fun lt!2054151 () Option!14463)

(assert (=> b!4973642 (= res!2123238 (isDefined!11376 lt!2054151))))

(declare-fun b!4973643 () Bool)

(declare-fun res!2123241 () Bool)

(assert (=> b!4973643 (=> (not res!2123241) (not e!3108494))))

(assert (=> b!4973643 (= res!2123241 (= (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151)))) (originalCharacters!8679 (_1!34412 (get!19957 lt!2054151)))))))

(declare-fun bm!346861 () Bool)

(declare-fun call!346866 () Option!14463)

(assert (=> bm!346861 (= call!346866 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 rulesArg!259)) lt!2053676))))

(declare-fun b!4973645 () Bool)

(declare-fun res!2123244 () Bool)

(assert (=> b!4973645 (=> (not res!2123244) (not e!3108494))))

(assert (=> b!4973645 (= res!2123244 (matchR!6643 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151))))))))

(declare-fun b!4973646 () Bool)

(declare-fun res!2123242 () Bool)

(assert (=> b!4973646 (=> (not res!2123242) (not e!3108494))))

(assert (=> b!4973646 (= res!2123242 (< (size!38097 (_2!34412 (get!19957 lt!2054151))) (size!38097 lt!2053676)))))

(declare-fun b!4973647 () Bool)

(declare-fun res!2123240 () Bool)

(assert (=> b!4973647 (=> (not res!2123240) (not e!3108494))))

(assert (=> b!4973647 (= res!2123240 (= (++!12539 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151)))) (_2!34412 (get!19957 lt!2054151))) lt!2053676))))

(declare-fun b!4973648 () Bool)

(declare-fun res!2123239 () Bool)

(assert (=> b!4973648 (=> (not res!2123239) (not e!3108494))))

(assert (=> b!4973648 (= res!2123239 (= (value!268840 (_1!34412 (get!19957 lt!2054151))) (apply!13911 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054151)))))))))

(declare-fun b!4973649 () Bool)

(declare-fun e!3108495 () Option!14463)

(declare-fun lt!2054152 () Option!14463)

(declare-fun lt!2054155 () Option!14463)

(assert (=> b!4973649 (= e!3108495 (ite (and ((_ is None!14462) lt!2054152) ((_ is None!14462) lt!2054155)) None!14462 (ite ((_ is None!14462) lt!2054155) lt!2054152 (ite ((_ is None!14462) lt!2054152) lt!2054155 (ite (>= (size!38094 (_1!34412 (v!50457 lt!2054152))) (size!38094 (_1!34412 (v!50457 lt!2054155)))) lt!2054152 lt!2054155)))))))

(assert (=> b!4973649 (= lt!2054152 call!346866)))

(assert (=> b!4973649 (= lt!2054155 (maxPrefix!4667 thiss!15247 (t!369197 (t!369197 rulesArg!259)) lt!2053676))))

(declare-fun b!4973650 () Bool)

(assert (=> b!4973650 (= e!3108494 (contains!19545 (t!369197 rulesArg!259) (rule!11662 (_1!34412 (get!19957 lt!2054151)))))))

(declare-fun b!4973644 () Bool)

(assert (=> b!4973644 (= e!3108495 call!346866)))

(declare-fun d!1601485 () Bool)

(assert (=> d!1601485 e!3108493))

(declare-fun res!2123243 () Bool)

(assert (=> d!1601485 (=> res!2123243 e!3108493)))

(assert (=> d!1601485 (= res!2123243 (isEmpty!30975 lt!2054151))))

(assert (=> d!1601485 (= lt!2054151 e!3108495)))

(declare-fun c!848664 () Bool)

(assert (=> d!1601485 (= c!848664 (and ((_ is Cons!57467) (t!369197 rulesArg!259)) ((_ is Nil!57467) (t!369197 (t!369197 rulesArg!259)))))))

(declare-fun lt!2054153 () Unit!148431)

(declare-fun lt!2054154 () Unit!148431)

(assert (=> d!1601485 (= lt!2054153 lt!2054154)))

(assert (=> d!1601485 (isPrefix!5251 lt!2053676 lt!2053676)))

(assert (=> d!1601485 (= lt!2054154 (lemmaIsPrefixRefl!3575 lt!2053676 lt!2053676))))

(assert (=> d!1601485 (rulesValidInductive!3303 thiss!15247 (t!369197 rulesArg!259))))

(assert (=> d!1601485 (= (maxPrefix!4667 thiss!15247 (t!369197 rulesArg!259) lt!2053676) lt!2054151)))

(assert (= (and d!1601485 c!848664) b!4973644))

(assert (= (and d!1601485 (not c!848664)) b!4973649))

(assert (= (or b!4973644 b!4973649) bm!346861))

(assert (= (and d!1601485 (not res!2123243)) b!4973642))

(assert (= (and b!4973642 res!2123238) b!4973643))

(assert (= (and b!4973643 res!2123241) b!4973646))

(assert (= (and b!4973646 res!2123242) b!4973647))

(assert (= (and b!4973647 res!2123240) b!4973648))

(assert (= (and b!4973648 res!2123239) b!4973645))

(assert (= (and b!4973645 res!2123244) b!4973650))

(declare-fun m!6002560 () Bool)

(assert (=> b!4973642 m!6002560))

(declare-fun m!6002562 () Bool)

(assert (=> b!4973643 m!6002562))

(declare-fun m!6002564 () Bool)

(assert (=> b!4973643 m!6002564))

(assert (=> b!4973643 m!6002564))

(declare-fun m!6002566 () Bool)

(assert (=> b!4973643 m!6002566))

(declare-fun m!6002568 () Bool)

(assert (=> b!4973649 m!6002568))

(declare-fun m!6002570 () Bool)

(assert (=> bm!346861 m!6002570))

(assert (=> b!4973646 m!6002562))

(declare-fun m!6002572 () Bool)

(assert (=> b!4973646 m!6002572))

(assert (=> b!4973646 m!6001604))

(declare-fun m!6002574 () Bool)

(assert (=> d!1601485 m!6002574))

(assert (=> d!1601485 m!6001310))

(assert (=> d!1601485 m!6001312))

(assert (=> d!1601485 m!6001450))

(assert (=> b!4973650 m!6002562))

(declare-fun m!6002576 () Bool)

(assert (=> b!4973650 m!6002576))

(assert (=> b!4973647 m!6002562))

(assert (=> b!4973647 m!6002564))

(assert (=> b!4973647 m!6002564))

(assert (=> b!4973647 m!6002566))

(assert (=> b!4973647 m!6002566))

(declare-fun m!6002578 () Bool)

(assert (=> b!4973647 m!6002578))

(assert (=> b!4973645 m!6002562))

(assert (=> b!4973645 m!6002564))

(assert (=> b!4973645 m!6002564))

(assert (=> b!4973645 m!6002566))

(assert (=> b!4973645 m!6002566))

(declare-fun m!6002580 () Bool)

(assert (=> b!4973645 m!6002580))

(assert (=> b!4973648 m!6002562))

(declare-fun m!6002582 () Bool)

(assert (=> b!4973648 m!6002582))

(assert (=> b!4973648 m!6002582))

(declare-fun m!6002584 () Bool)

(assert (=> b!4973648 m!6002584))

(assert (=> b!4972956 d!1601485))

(assert (=> b!4972812 d!1601455))

(assert (=> b!4972920 d!1601309))

(assert (=> b!4972920 d!1601311))

(assert (=> b!4972920 d!1601307))

(assert (=> b!4972920 d!1601201))

(assert (=> b!4972899 d!1601415))

(declare-fun d!1601491 () Bool)

(declare-fun res!2123245 () Bool)

(declare-fun e!3108503 () Bool)

(assert (=> d!1601491 (=> (not res!2123245) (not e!3108503))))

(assert (=> d!1601491 (= res!2123245 (= (csize!30534 (c!848514 totalInput!464)) (+ (size!38100 (left!41922 (c!848514 totalInput!464))) (size!38100 (right!42252 (c!848514 totalInput!464))))))))

(assert (=> d!1601491 (= (inv!75128 (c!848514 totalInput!464)) e!3108503)))

(declare-fun b!4973676 () Bool)

(declare-fun res!2123246 () Bool)

(assert (=> b!4973676 (=> (not res!2123246) (not e!3108503))))

(assert (=> b!4973676 (= res!2123246 (and (not (= (left!41922 (c!848514 totalInput!464)) Empty!15152)) (not (= (right!42252 (c!848514 totalInput!464)) Empty!15152))))))

(declare-fun b!4973677 () Bool)

(declare-fun res!2123247 () Bool)

(assert (=> b!4973677 (=> (not res!2123247) (not e!3108503))))

(assert (=> b!4973677 (= res!2123247 (= (cheight!15363 (c!848514 totalInput!464)) (+ (max!0 (height!2020 (left!41922 (c!848514 totalInput!464))) (height!2020 (right!42252 (c!848514 totalInput!464)))) 1)))))

(declare-fun b!4973678 () Bool)

(assert (=> b!4973678 (= e!3108503 (<= 0 (cheight!15363 (c!848514 totalInput!464))))))

(assert (= (and d!1601491 res!2123245) b!4973676))

(assert (= (and b!4973676 res!2123246) b!4973677))

(assert (= (and b!4973677 res!2123247) b!4973678))

(declare-fun m!6002586 () Bool)

(assert (=> d!1601491 m!6002586))

(declare-fun m!6002588 () Bool)

(assert (=> d!1601491 m!6002588))

(assert (=> b!4973677 m!6002374))

(assert (=> b!4973677 m!6002378))

(assert (=> b!4973677 m!6002374))

(assert (=> b!4973677 m!6002378))

(declare-fun m!6002594 () Bool)

(assert (=> b!4973677 m!6002594))

(assert (=> b!4972964 d!1601491))

(declare-fun d!1601493 () Bool)

(declare-fun lt!2054160 () Option!14463)

(assert (=> d!1601493 (= lt!2054160 (maxPrefix!4667 thiss!15247 (t!369197 rulesArg!259) lt!2053676))))

(declare-fun e!3108505 () Option!14463)

(assert (=> d!1601493 (= lt!2054160 e!3108505)))

(declare-fun c!848665 () Bool)

(assert (=> d!1601493 (= c!848665 (and ((_ is Cons!57467) (t!369197 rulesArg!259)) ((_ is Nil!57467) (t!369197 (t!369197 rulesArg!259)))))))

(declare-fun lt!2054156 () Unit!148431)

(declare-fun lt!2054157 () Unit!148431)

(assert (=> d!1601493 (= lt!2054156 lt!2054157)))

(assert (=> d!1601493 (isPrefix!5251 lt!2053676 lt!2053676)))

(assert (=> d!1601493 (= lt!2054157 (lemmaIsPrefixRefl!3575 lt!2053676 lt!2053676))))

(assert (=> d!1601493 (rulesValidInductive!3303 thiss!15247 (t!369197 rulesArg!259))))

(assert (=> d!1601493 (= (maxPrefixZipper!793 thiss!15247 (t!369197 rulesArg!259) lt!2053676) lt!2054160)))

(declare-fun bm!346862 () Bool)

(declare-fun call!346867 () Option!14463)

(assert (=> bm!346862 (= call!346867 (maxPrefixOneRuleZipper!303 thiss!15247 (h!63915 (t!369197 rulesArg!259)) lt!2053676))))

(declare-fun b!4973680 () Bool)

(assert (=> b!4973680 (= e!3108505 call!346867)))

(declare-fun b!4973681 () Bool)

(declare-fun lt!2054159 () Option!14463)

(declare-fun lt!2054158 () Option!14463)

(assert (=> b!4973681 (= e!3108505 (ite (and ((_ is None!14462) lt!2054159) ((_ is None!14462) lt!2054158)) None!14462 (ite ((_ is None!14462) lt!2054158) lt!2054159 (ite ((_ is None!14462) lt!2054159) lt!2054158 (ite (>= (size!38094 (_1!34412 (v!50457 lt!2054159))) (size!38094 (_1!34412 (v!50457 lt!2054158)))) lt!2054159 lt!2054158)))))))

(assert (=> b!4973681 (= lt!2054159 call!346867)))

(assert (=> b!4973681 (= lt!2054158 (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 rulesArg!259)) lt!2053676))))

(assert (= (and d!1601493 c!848665) b!4973680))

(assert (= (and d!1601493 (not c!848665)) b!4973681))

(assert (= (or b!4973680 b!4973681) bm!346862))

(assert (=> d!1601493 m!6001598))

(assert (=> d!1601493 m!6001310))

(assert (=> d!1601493 m!6001312))

(assert (=> d!1601493 m!6001450))

(declare-fun m!6002600 () Bool)

(assert (=> bm!346862 m!6002600))

(declare-fun m!6002602 () Bool)

(assert (=> b!4973681 m!6002602))

(assert (=> b!4972767 d!1601493))

(declare-fun d!1601495 () Bool)

(assert (=> d!1601495 (= (isEmpty!30975 lt!2053853) (not ((_ is Some!14462) lt!2053853)))))

(assert (=> d!1601191 d!1601495))

(assert (=> d!1601191 d!1601213))

(assert (=> d!1601191 d!1601215))

(assert (=> d!1601191 d!1601161))

(declare-fun b!4973691 () Bool)

(declare-fun e!3108511 () List!57590)

(assert (=> b!4973691 (= e!3108511 (_2!34412 (get!19957 lt!2053853)))))

(declare-fun d!1601499 () Bool)

(declare-fun e!3108512 () Bool)

(assert (=> d!1601499 e!3108512))

(declare-fun res!2123252 () Bool)

(assert (=> d!1601499 (=> (not res!2123252) (not e!3108512))))

(declare-fun lt!2054163 () List!57590)

(declare-fun content!10197 (List!57590) (InoxSet C!27516))

(assert (=> d!1601499 (= res!2123252 (= (content!10197 lt!2054163) ((_ map or) (content!10197 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) (content!10197 (_2!34412 (get!19957 lt!2053853))))))))

(assert (=> d!1601499 (= lt!2054163 e!3108511)))

(declare-fun c!848668 () Bool)

(assert (=> d!1601499 (= c!848668 ((_ is Nil!57466) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))

(assert (=> d!1601499 (= (++!12539 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))) (_2!34412 (get!19957 lt!2053853))) lt!2054163)))

(declare-fun b!4973694 () Bool)

(assert (=> b!4973694 (= e!3108512 (or (not (= (_2!34412 (get!19957 lt!2053853)) Nil!57466)) (= lt!2054163 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun b!4973693 () Bool)

(declare-fun res!2123253 () Bool)

(assert (=> b!4973693 (=> (not res!2123253) (not e!3108512))))

(assert (=> b!4973693 (= res!2123253 (= (size!38097 lt!2054163) (+ (size!38097 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) (size!38097 (_2!34412 (get!19957 lt!2053853))))))))

(declare-fun b!4973692 () Bool)

(assert (=> b!4973692 (= e!3108511 (Cons!57466 (h!63914 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) (++!12539 (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) (_2!34412 (get!19957 lt!2053853)))))))

(assert (= (and d!1601499 c!848668) b!4973691))

(assert (= (and d!1601499 (not c!848668)) b!4973692))

(assert (= (and d!1601499 res!2123252) b!4973693))

(assert (= (and b!4973693 res!2123253) b!4973694))

(declare-fun m!6002612 () Bool)

(assert (=> d!1601499 m!6002612))

(assert (=> d!1601499 m!6001596))

(declare-fun m!6002614 () Bool)

(assert (=> d!1601499 m!6002614))

(declare-fun m!6002616 () Bool)

(assert (=> d!1601499 m!6002616))

(declare-fun m!6002618 () Bool)

(assert (=> b!4973693 m!6002618))

(assert (=> b!4973693 m!6001596))

(declare-fun m!6002620 () Bool)

(assert (=> b!4973693 m!6002620))

(assert (=> b!4973693 m!6001602))

(declare-fun m!6002622 () Bool)

(assert (=> b!4973692 m!6002622))

(assert (=> b!4972954 d!1601499))

(assert (=> b!4972954 d!1601275))

(assert (=> b!4972954 d!1601277))

(assert (=> b!4972954 d!1601273))

(declare-fun d!1601501 () Bool)

(declare-fun c!848669 () Bool)

(assert (=> d!1601501 (= c!848669 ((_ is Node!15152) (left!41922 (c!848514 totalInput!464))))))

(declare-fun e!3108513 () Bool)

(assert (=> d!1601501 (= (inv!75123 (left!41922 (c!848514 totalInput!464))) e!3108513)))

(declare-fun b!4973695 () Bool)

(assert (=> b!4973695 (= e!3108513 (inv!75128 (left!41922 (c!848514 totalInput!464))))))

(declare-fun b!4973696 () Bool)

(declare-fun e!3108514 () Bool)

(assert (=> b!4973696 (= e!3108513 e!3108514)))

(declare-fun res!2123254 () Bool)

(assert (=> b!4973696 (= res!2123254 (not ((_ is Leaf!25177) (left!41922 (c!848514 totalInput!464)))))))

(assert (=> b!4973696 (=> res!2123254 e!3108514)))

(declare-fun b!4973697 () Bool)

(assert (=> b!4973697 (= e!3108514 (inv!75129 (left!41922 (c!848514 totalInput!464))))))

(assert (= (and d!1601501 c!848669) b!4973695))

(assert (= (and d!1601501 (not c!848669)) b!4973696))

(assert (= (and b!4973696 (not res!2123254)) b!4973697))

(declare-fun m!6002624 () Bool)

(assert (=> b!4973695 m!6002624))

(declare-fun m!6002626 () Bool)

(assert (=> b!4973697 m!6002626))

(assert (=> b!4972996 d!1601501))

(declare-fun d!1601503 () Bool)

(declare-fun c!848670 () Bool)

(assert (=> d!1601503 (= c!848670 ((_ is Node!15152) (right!42252 (c!848514 totalInput!464))))))

(declare-fun e!3108515 () Bool)

(assert (=> d!1601503 (= (inv!75123 (right!42252 (c!848514 totalInput!464))) e!3108515)))

(declare-fun b!4973698 () Bool)

(assert (=> b!4973698 (= e!3108515 (inv!75128 (right!42252 (c!848514 totalInput!464))))))

(declare-fun b!4973699 () Bool)

(declare-fun e!3108516 () Bool)

(assert (=> b!4973699 (= e!3108515 e!3108516)))

(declare-fun res!2123255 () Bool)

(assert (=> b!4973699 (= res!2123255 (not ((_ is Leaf!25177) (right!42252 (c!848514 totalInput!464)))))))

(assert (=> b!4973699 (=> res!2123255 e!3108516)))

(declare-fun b!4973700 () Bool)

(assert (=> b!4973700 (= e!3108516 (inv!75129 (right!42252 (c!848514 totalInput!464))))))

(assert (= (and d!1601503 c!848670) b!4973698))

(assert (= (and d!1601503 (not c!848670)) b!4973699))

(assert (= (and b!4973699 (not res!2123255)) b!4973700))

(declare-fun m!6002628 () Bool)

(assert (=> b!4973698 m!6002628))

(declare-fun m!6002630 () Bool)

(assert (=> b!4973700 m!6002630))

(assert (=> b!4972996 d!1601503))

(declare-fun b!4973701 () Bool)

(declare-fun e!3108518 () Bool)

(assert (=> b!4973701 (= e!3108518 (= (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))) (c!848513 (regex!8400 (h!63915 rulesArg!259)))))))

(declare-fun b!4973702 () Bool)

(declare-fun e!3108519 () Bool)

(assert (=> b!4973702 (= e!3108519 (matchR!6643 (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))) (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))))))

(declare-fun b!4973703 () Bool)

(declare-fun e!3108521 () Bool)

(assert (=> b!4973703 (= e!3108521 (not (= (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))) (c!848513 (regex!8400 (h!63915 rulesArg!259))))))))

(declare-fun b!4973704 () Bool)

(declare-fun e!3108520 () Bool)

(assert (=> b!4973704 (= e!3108520 e!3108521)))

(declare-fun res!2123263 () Bool)

(assert (=> b!4973704 (=> res!2123263 e!3108521)))

(declare-fun call!346868 () Bool)

(assert (=> b!4973704 (= res!2123263 call!346868)))

(declare-fun b!4973706 () Bool)

(declare-fun e!3108522 () Bool)

(declare-fun lt!2054164 () Bool)

(assert (=> b!4973706 (= e!3108522 (= lt!2054164 call!346868))))

(declare-fun b!4973707 () Bool)

(declare-fun res!2123262 () Bool)

(assert (=> b!4973707 (=> (not res!2123262) (not e!3108518))))

(assert (=> b!4973707 (= res!2123262 (isEmpty!30977 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))))))

(declare-fun b!4973708 () Bool)

(declare-fun res!2123259 () Bool)

(assert (=> b!4973708 (=> res!2123259 e!3108521)))

(assert (=> b!4973708 (= res!2123259 (not (isEmpty!30977 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))))

(declare-fun b!4973709 () Bool)

(declare-fun res!2123260 () Bool)

(declare-fun e!3108523 () Bool)

(assert (=> b!4973709 (=> res!2123260 e!3108523)))

(assert (=> b!4973709 (= res!2123260 e!3108518)))

(declare-fun res!2123256 () Bool)

(assert (=> b!4973709 (=> (not res!2123256) (not e!3108518))))

(assert (=> b!4973709 (= res!2123256 lt!2054164)))

(declare-fun b!4973710 () Bool)

(declare-fun res!2123257 () Bool)

(assert (=> b!4973710 (=> res!2123257 e!3108523)))

(assert (=> b!4973710 (= res!2123257 (not ((_ is ElementMatch!13633) (regex!8400 (h!63915 rulesArg!259)))))))

(declare-fun e!3108517 () Bool)

(assert (=> b!4973710 (= e!3108517 e!3108523)))

(declare-fun b!4973711 () Bool)

(assert (=> b!4973711 (= e!3108519 (nullable!4627 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun d!1601505 () Bool)

(assert (=> d!1601505 e!3108522))

(declare-fun c!848671 () Bool)

(assert (=> d!1601505 (= c!848671 ((_ is EmptyExpr!13633) (regex!8400 (h!63915 rulesArg!259))))))

(assert (=> d!1601505 (= lt!2054164 e!3108519)))

(declare-fun c!848672 () Bool)

(assert (=> d!1601505 (= c!848672 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))

(assert (=> d!1601505 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1601505 (= (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))) lt!2054164)))

(declare-fun b!4973705 () Bool)

(assert (=> b!4973705 (= e!3108522 e!3108517)))

(declare-fun c!848673 () Bool)

(assert (=> b!4973705 (= c!848673 ((_ is EmptyLang!13633) (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun b!4973712 () Bool)

(assert (=> b!4973712 (= e!3108523 e!3108520)))

(declare-fun res!2123258 () Bool)

(assert (=> b!4973712 (=> (not res!2123258) (not e!3108520))))

(assert (=> b!4973712 (= res!2123258 (not lt!2054164))))

(declare-fun b!4973713 () Bool)

(assert (=> b!4973713 (= e!3108517 (not lt!2054164))))

(declare-fun b!4973714 () Bool)

(declare-fun res!2123261 () Bool)

(assert (=> b!4973714 (=> (not res!2123261) (not e!3108518))))

(assert (=> b!4973714 (= res!2123261 (not call!346868))))

(declare-fun bm!346863 () Bool)

(assert (=> bm!346863 (= call!346868 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))

(assert (= (and d!1601505 c!848672) b!4973711))

(assert (= (and d!1601505 (not c!848672)) b!4973702))

(assert (= (and d!1601505 c!848671) b!4973706))

(assert (= (and d!1601505 (not c!848671)) b!4973705))

(assert (= (and b!4973705 c!848673) b!4973713))

(assert (= (and b!4973705 (not c!848673)) b!4973710))

(assert (= (and b!4973710 (not res!2123257)) b!4973709))

(assert (= (and b!4973709 res!2123256) b!4973714))

(assert (= (and b!4973714 res!2123261) b!4973707))

(assert (= (and b!4973707 res!2123262) b!4973701))

(assert (= (and b!4973709 (not res!2123260)) b!4973712))

(assert (= (and b!4973712 res!2123258) b!4973704))

(assert (= (and b!4973704 (not res!2123263)) b!4973708))

(assert (= (and b!4973708 (not res!2123259)) b!4973703))

(assert (= (or b!4973706 b!4973704 b!4973714) bm!346863))

(assert (=> b!4973711 m!6002462))

(declare-fun m!6002632 () Bool)

(assert (=> b!4973707 m!6002632))

(assert (=> b!4973707 m!6002632))

(declare-fun m!6002634 () Bool)

(assert (=> b!4973707 m!6002634))

(declare-fun m!6002636 () Bool)

(assert (=> b!4973703 m!6002636))

(assert (=> b!4973702 m!6002636))

(assert (=> b!4973702 m!6002636))

(declare-fun m!6002638 () Bool)

(assert (=> b!4973702 m!6002638))

(assert (=> b!4973702 m!6002632))

(assert (=> b!4973702 m!6002638))

(assert (=> b!4973702 m!6002632))

(declare-fun m!6002640 () Bool)

(assert (=> b!4973702 m!6002640))

(assert (=> d!1601505 m!6001566))

(assert (=> d!1601505 m!6002460))

(assert (=> b!4973701 m!6002636))

(assert (=> bm!346863 m!6001566))

(assert (=> b!4973708 m!6002632))

(assert (=> b!4973708 m!6002632))

(assert (=> b!4973708 m!6002634))

(assert (=> b!4972918 d!1601505))

(declare-fun bm!346880 () Bool)

(declare-fun call!346892 () List!57590)

(assert (=> bm!346880 (= call!346892 (tail!9808 lt!2053833))))

(declare-fun b!4973743 () Bool)

(declare-fun e!3108542 () tuple2!62224)

(assert (=> b!4973743 (= e!3108542 (tuple2!62225 Nil!57466 lt!2053833))))

(declare-fun b!4973744 () Bool)

(declare-fun e!3108545 () tuple2!62224)

(declare-fun e!3108540 () tuple2!62224)

(assert (=> b!4973744 (= e!3108545 e!3108540)))

(declare-fun lt!2054225 () tuple2!62224)

(declare-fun call!346888 () tuple2!62224)

(assert (=> b!4973744 (= lt!2054225 call!346888)))

(declare-fun c!848690 () Bool)

(assert (=> b!4973744 (= c!848690 (isEmpty!30977 (_1!34415 lt!2054225)))))

(declare-fun b!4973745 () Bool)

(declare-fun e!3108543 () Bool)

(declare-fun lt!2054226 () tuple2!62224)

(assert (=> b!4973745 (= e!3108543 (>= (size!38097 (_1!34415 lt!2054226)) (size!38097 Nil!57466)))))

(declare-fun bm!346881 () Bool)

(declare-fun call!346886 () Unit!148431)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1215 (List!57590 List!57590 List!57590) Unit!148431)

(assert (=> bm!346881 (= call!346886 (lemmaIsPrefixSameLengthThenSameList!1215 lt!2053833 Nil!57466 lt!2053833))))

(declare-fun b!4973746 () Bool)

(declare-fun e!3108546 () Bool)

(assert (=> b!4973746 (= e!3108546 e!3108543)))

(declare-fun res!2123269 () Bool)

(assert (=> b!4973746 (=> res!2123269 e!3108543)))

(assert (=> b!4973746 (= res!2123269 (isEmpty!30977 (_1!34415 lt!2054226)))))

(declare-fun b!4973747 () Bool)

(declare-fun c!848689 () Bool)

(declare-fun call!346887 () Bool)

(assert (=> b!4973747 (= c!848689 call!346887)))

(declare-fun lt!2054231 () Unit!148431)

(declare-fun lt!2054222 () Unit!148431)

(assert (=> b!4973747 (= lt!2054231 lt!2054222)))

(assert (=> b!4973747 (= lt!2053833 Nil!57466)))

(assert (=> b!4973747 (= lt!2054222 call!346886)))

(declare-fun lt!2054243 () Unit!148431)

(declare-fun lt!2054242 () Unit!148431)

(assert (=> b!4973747 (= lt!2054243 lt!2054242)))

(declare-fun call!346889 () Bool)

(assert (=> b!4973747 call!346889))

(declare-fun call!346891 () Unit!148431)

(assert (=> b!4973747 (= lt!2054242 call!346891)))

(declare-fun e!3108547 () tuple2!62224)

(assert (=> b!4973747 (= e!3108547 e!3108542)))

(declare-fun b!4973748 () Bool)

(declare-fun e!3108541 () tuple2!62224)

(assert (=> b!4973748 (= e!3108541 (tuple2!62225 Nil!57466 lt!2053833))))

(declare-fun b!4973749 () Bool)

(declare-fun e!3108544 () Unit!148431)

(declare-fun Unit!148437 () Unit!148431)

(assert (=> b!4973749 (= e!3108544 Unit!148437)))

(declare-fun bm!346882 () Bool)

(declare-fun call!346890 () C!27516)

(assert (=> bm!346882 (= call!346890 (head!10675 lt!2053833))))

(declare-fun b!4973750 () Bool)

(assert (=> b!4973750 (= e!3108541 e!3108547)))

(declare-fun c!848686 () Bool)

(assert (=> b!4973750 (= c!848686 (= (size!38097 Nil!57466) (size!38097 lt!2053833)))))

(declare-fun b!4973751 () Bool)

(assert (=> b!4973751 (= e!3108540 (tuple2!62225 Nil!57466 lt!2053833))))

(declare-fun bm!346883 () Bool)

(assert (=> bm!346883 (= call!346887 (nullable!4627 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun bm!346884 () Bool)

(assert (=> bm!346884 (= call!346891 (lemmaIsPrefixRefl!3575 lt!2053833 lt!2053833))))

(declare-fun bm!346885 () Bool)

(assert (=> bm!346885 (= call!346889 (isPrefix!5251 lt!2053833 lt!2053833))))

(declare-fun b!4973752 () Bool)

(declare-fun c!848691 () Bool)

(assert (=> b!4973752 (= c!848691 call!346887)))

(declare-fun lt!2054241 () Unit!148431)

(declare-fun lt!2054247 () Unit!148431)

(assert (=> b!4973752 (= lt!2054241 lt!2054247)))

(declare-fun lt!2054228 () C!27516)

(declare-fun lt!2054235 () List!57590)

(assert (=> b!4973752 (= (++!12539 (++!12539 Nil!57466 (Cons!57466 lt!2054228 Nil!57466)) lt!2054235) lt!2053833)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1452 (List!57590 C!27516 List!57590 List!57590) Unit!148431)

(assert (=> b!4973752 (= lt!2054247 (lemmaMoveElementToOtherListKeepsConcatEq!1452 Nil!57466 lt!2054228 lt!2054235 lt!2053833))))

(assert (=> b!4973752 (= lt!2054235 (tail!9808 lt!2053833))))

(assert (=> b!4973752 (= lt!2054228 (head!10675 lt!2053833))))

(declare-fun lt!2054229 () Unit!148431)

(declare-fun lt!2054239 () Unit!148431)

(assert (=> b!4973752 (= lt!2054229 lt!2054239)))

(declare-fun getSuffix!3095 (List!57590 List!57590) List!57590)

(assert (=> b!4973752 (isPrefix!5251 (++!12539 Nil!57466 (Cons!57466 (head!10675 (getSuffix!3095 lt!2053833 Nil!57466)) Nil!57466)) lt!2053833)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!842 (List!57590 List!57590) Unit!148431)

(assert (=> b!4973752 (= lt!2054239 (lemmaAddHeadSuffixToPrefixStillPrefix!842 Nil!57466 lt!2053833))))

(declare-fun lt!2054236 () Unit!148431)

(declare-fun lt!2054223 () Unit!148431)

(assert (=> b!4973752 (= lt!2054236 lt!2054223)))

(assert (=> b!4973752 (= lt!2054223 (lemmaAddHeadSuffixToPrefixStillPrefix!842 Nil!57466 lt!2053833))))

(declare-fun lt!2054245 () List!57590)

(assert (=> b!4973752 (= lt!2054245 (++!12539 Nil!57466 (Cons!57466 (head!10675 lt!2053833) Nil!57466)))))

(declare-fun lt!2054246 () Unit!148431)

(assert (=> b!4973752 (= lt!2054246 e!3108544)))

(declare-fun c!848687 () Bool)

(assert (=> b!4973752 (= c!848687 (= (size!38097 Nil!57466) (size!38097 lt!2053833)))))

(declare-fun lt!2054238 () Unit!148431)

(declare-fun lt!2054234 () Unit!148431)

(assert (=> b!4973752 (= lt!2054238 lt!2054234)))

(assert (=> b!4973752 (<= (size!38097 Nil!57466) (size!38097 lt!2053833))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!768 (List!57590 List!57590) Unit!148431)

(assert (=> b!4973752 (= lt!2054234 (lemmaIsPrefixThenSmallerEqSize!768 Nil!57466 lt!2053833))))

(assert (=> b!4973752 (= e!3108547 e!3108545)))

(declare-fun b!4973753 () Bool)

(assert (=> b!4973753 (= e!3108542 (tuple2!62225 Nil!57466 Nil!57466))))

(declare-fun b!4973754 () Bool)

(assert (=> b!4973754 (= e!3108545 call!346888)))

(declare-fun bm!346886 () Bool)

(declare-fun call!346885 () Regex!13633)

(assert (=> bm!346886 (= call!346885 (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) call!346890))))

(declare-fun b!4973755 () Bool)

(assert (=> b!4973755 (= e!3108540 lt!2054225)))

(declare-fun d!1601507 () Bool)

(assert (=> d!1601507 e!3108546))

(declare-fun res!2123268 () Bool)

(assert (=> d!1601507 (=> (not res!2123268) (not e!3108546))))

(assert (=> d!1601507 (= res!2123268 (= (++!12539 (_1!34415 lt!2054226) (_2!34415 lt!2054226)) lt!2053833))))

(assert (=> d!1601507 (= lt!2054226 e!3108541)))

(declare-fun c!848688 () Bool)

(declare-fun lostCause!1139 (Regex!13633) Bool)

(assert (=> d!1601507 (= c!848688 (lostCause!1139 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun lt!2054244 () Unit!148431)

(declare-fun Unit!148438 () Unit!148431)

(assert (=> d!1601507 (= lt!2054244 Unit!148438)))

(assert (=> d!1601507 (= (getSuffix!3095 lt!2053833 Nil!57466) lt!2053833)))

(declare-fun lt!2054230 () Unit!148431)

(declare-fun lt!2054237 () Unit!148431)

(assert (=> d!1601507 (= lt!2054230 lt!2054237)))

(declare-fun lt!2054240 () List!57590)

(assert (=> d!1601507 (= lt!2053833 lt!2054240)))

(declare-fun lemmaSamePrefixThenSameSuffix!2507 (List!57590 List!57590 List!57590 List!57590 List!57590) Unit!148431)

(assert (=> d!1601507 (= lt!2054237 (lemmaSamePrefixThenSameSuffix!2507 Nil!57466 lt!2053833 Nil!57466 lt!2054240 lt!2053833))))

(assert (=> d!1601507 (= lt!2054240 (getSuffix!3095 lt!2053833 Nil!57466))))

(declare-fun lt!2054224 () Unit!148431)

(declare-fun lt!2054233 () Unit!148431)

(assert (=> d!1601507 (= lt!2054224 lt!2054233)))

(assert (=> d!1601507 (isPrefix!5251 Nil!57466 (++!12539 Nil!57466 lt!2053833))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3353 (List!57590 List!57590) Unit!148431)

(assert (=> d!1601507 (= lt!2054233 (lemmaConcatTwoListThenFirstIsPrefix!3353 Nil!57466 lt!2053833))))

(assert (=> d!1601507 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1601507 (= (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)) lt!2054226)))

(declare-fun bm!346887 () Bool)

(assert (=> bm!346887 (= call!346888 (findLongestMatchInner!1862 call!346885 lt!2054245 (+ (size!38097 Nil!57466) 1) call!346892 lt!2053833 (size!38097 lt!2053833)))))

(declare-fun b!4973756 () Bool)

(declare-fun Unit!148439 () Unit!148431)

(assert (=> b!4973756 (= e!3108544 Unit!148439)))

(declare-fun lt!2054221 () Unit!148431)

(assert (=> b!4973756 (= lt!2054221 call!346891)))

(assert (=> b!4973756 call!346889))

(declare-fun lt!2054248 () Unit!148431)

(assert (=> b!4973756 (= lt!2054248 lt!2054221)))

(declare-fun lt!2054227 () Unit!148431)

(assert (=> b!4973756 (= lt!2054227 call!346886)))

(assert (=> b!4973756 (= lt!2053833 Nil!57466)))

(declare-fun lt!2054232 () Unit!148431)

(assert (=> b!4973756 (= lt!2054232 lt!2054227)))

(assert (=> b!4973756 false))

(assert (= (and d!1601507 c!848688) b!4973748))

(assert (= (and d!1601507 (not c!848688)) b!4973750))

(assert (= (and b!4973750 c!848686) b!4973747))

(assert (= (and b!4973750 (not c!848686)) b!4973752))

(assert (= (and b!4973747 c!848689) b!4973753))

(assert (= (and b!4973747 (not c!848689)) b!4973743))

(assert (= (and b!4973752 c!848687) b!4973756))

(assert (= (and b!4973752 (not c!848687)) b!4973749))

(assert (= (and b!4973752 c!848691) b!4973744))

(assert (= (and b!4973752 (not c!848691)) b!4973754))

(assert (= (and b!4973744 c!848690) b!4973751))

(assert (= (and b!4973744 (not c!848690)) b!4973755))

(assert (= (or b!4973744 b!4973754) bm!346882))

(assert (= (or b!4973744 b!4973754) bm!346880))

(assert (= (or b!4973744 b!4973754) bm!346886))

(assert (= (or b!4973744 b!4973754) bm!346887))

(assert (= (or b!4973747 b!4973756) bm!346884))

(assert (= (or b!4973747 b!4973756) bm!346881))

(assert (= (or b!4973747 b!4973752) bm!346883))

(assert (= (or b!4973747 b!4973756) bm!346885))

(assert (= (and d!1601507 res!2123268) b!4973746))

(assert (= (and b!4973746 (not res!2123269)) b!4973745))

(declare-fun m!6002642 () Bool)

(assert (=> bm!346880 m!6002642))

(declare-fun m!6002644 () Bool)

(assert (=> d!1601507 m!6002644))

(declare-fun m!6002646 () Bool)

(assert (=> d!1601507 m!6002646))

(declare-fun m!6002648 () Bool)

(assert (=> d!1601507 m!6002648))

(assert (=> d!1601507 m!6002460))

(declare-fun m!6002650 () Bool)

(assert (=> d!1601507 m!6002650))

(declare-fun m!6002652 () Bool)

(assert (=> d!1601507 m!6002652))

(declare-fun m!6002654 () Bool)

(assert (=> d!1601507 m!6002654))

(assert (=> d!1601507 m!6002646))

(declare-fun m!6002656 () Bool)

(assert (=> d!1601507 m!6002656))

(assert (=> bm!346887 m!6001548))

(declare-fun m!6002658 () Bool)

(assert (=> bm!346887 m!6002658))

(declare-fun m!6002660 () Bool)

(assert (=> bm!346882 m!6002660))

(declare-fun m!6002662 () Bool)

(assert (=> b!4973744 m!6002662))

(declare-fun m!6002664 () Bool)

(assert (=> bm!346881 m!6002664))

(declare-fun m!6002666 () Bool)

(assert (=> b!4973745 m!6002666))

(assert (=> b!4973745 m!6001546))

(declare-fun m!6002668 () Bool)

(assert (=> bm!346884 m!6002668))

(assert (=> bm!346883 m!6002462))

(declare-fun m!6002670 () Bool)

(assert (=> b!4973752 m!6002670))

(assert (=> b!4973752 m!6001548))

(assert (=> b!4973752 m!6002652))

(declare-fun m!6002672 () Bool)

(assert (=> b!4973752 m!6002672))

(declare-fun m!6002674 () Bool)

(assert (=> b!4973752 m!6002674))

(declare-fun m!6002676 () Bool)

(assert (=> b!4973752 m!6002676))

(assert (=> b!4973752 m!6002674))

(declare-fun m!6002678 () Bool)

(assert (=> b!4973752 m!6002678))

(assert (=> b!4973752 m!6002660))

(assert (=> b!4973752 m!6002672))

(declare-fun m!6002680 () Bool)

(assert (=> b!4973752 m!6002680))

(assert (=> b!4973752 m!6002642))

(assert (=> b!4973752 m!6001546))

(assert (=> b!4973752 m!6002652))

(declare-fun m!6002682 () Bool)

(assert (=> b!4973752 m!6002682))

(declare-fun m!6002684 () Bool)

(assert (=> b!4973752 m!6002684))

(declare-fun m!6002686 () Bool)

(assert (=> b!4973752 m!6002686))

(declare-fun m!6002688 () Bool)

(assert (=> bm!346885 m!6002688))

(declare-fun m!6002690 () Bool)

(assert (=> bm!346886 m!6002690))

(declare-fun m!6002692 () Bool)

(assert (=> b!4973746 m!6002692))

(assert (=> b!4972918 d!1601507))

(declare-fun d!1601509 () Bool)

(declare-fun lt!2054249 () Int)

(assert (=> d!1601509 (>= lt!2054249 0)))

(declare-fun e!3108548 () Int)

(assert (=> d!1601509 (= lt!2054249 e!3108548)))

(declare-fun c!848692 () Bool)

(assert (=> d!1601509 (= c!848692 ((_ is Nil!57466) Nil!57466))))

(assert (=> d!1601509 (= (size!38097 Nil!57466) lt!2054249)))

(declare-fun b!4973757 () Bool)

(assert (=> b!4973757 (= e!3108548 0)))

(declare-fun b!4973758 () Bool)

(assert (=> b!4973758 (= e!3108548 (+ 1 (size!38097 (t!369196 Nil!57466))))))

(assert (= (and d!1601509 c!848692) b!4973757))

(assert (= (and d!1601509 (not c!848692)) b!4973758))

(declare-fun m!6002694 () Bool)

(assert (=> b!4973758 m!6002694))

(assert (=> b!4972918 d!1601509))

(declare-fun d!1601511 () Bool)

(declare-fun lt!2054250 () Int)

(assert (=> d!1601511 (>= lt!2054250 0)))

(declare-fun e!3108549 () Int)

(assert (=> d!1601511 (= lt!2054250 e!3108549)))

(declare-fun c!848693 () Bool)

(assert (=> d!1601511 (= c!848693 ((_ is Nil!57466) lt!2053833))))

(assert (=> d!1601511 (= (size!38097 lt!2053833) lt!2054250)))

(declare-fun b!4973759 () Bool)

(assert (=> b!4973759 (= e!3108549 0)))

(declare-fun b!4973760 () Bool)

(assert (=> b!4973760 (= e!3108549 (+ 1 (size!38097 (t!369196 lt!2053833))))))

(assert (= (and d!1601511 c!848693) b!4973759))

(assert (= (and d!1601511 (not c!848693)) b!4973760))

(declare-fun m!6002696 () Bool)

(assert (=> b!4973760 m!6002696))

(assert (=> b!4972918 d!1601511))

(declare-fun d!1601513 () Bool)

(declare-fun c!848694 () Bool)

(assert (=> d!1601513 (= c!848694 ((_ is Node!15152) (left!41922 (c!848514 input!1342))))))

(declare-fun e!3108550 () Bool)

(assert (=> d!1601513 (= (inv!75123 (left!41922 (c!848514 input!1342))) e!3108550)))

(declare-fun b!4973761 () Bool)

(assert (=> b!4973761 (= e!3108550 (inv!75128 (left!41922 (c!848514 input!1342))))))

(declare-fun b!4973762 () Bool)

(declare-fun e!3108551 () Bool)

(assert (=> b!4973762 (= e!3108550 e!3108551)))

(declare-fun res!2123270 () Bool)

(assert (=> b!4973762 (= res!2123270 (not ((_ is Leaf!25177) (left!41922 (c!848514 input!1342)))))))

(assert (=> b!4973762 (=> res!2123270 e!3108551)))

(declare-fun b!4973763 () Bool)

(assert (=> b!4973763 (= e!3108551 (inv!75129 (left!41922 (c!848514 input!1342))))))

(assert (= (and d!1601513 c!848694) b!4973761))

(assert (= (and d!1601513 (not c!848694)) b!4973762))

(assert (= (and b!4973762 (not res!2123270)) b!4973763))

(declare-fun m!6002698 () Bool)

(assert (=> b!4973761 m!6002698))

(declare-fun m!6002700 () Bool)

(assert (=> b!4973763 m!6002700))

(assert (=> b!4973024 d!1601513))

(declare-fun d!1601515 () Bool)

(declare-fun c!848695 () Bool)

(assert (=> d!1601515 (= c!848695 ((_ is Node!15152) (right!42252 (c!848514 input!1342))))))

(declare-fun e!3108552 () Bool)

(assert (=> d!1601515 (= (inv!75123 (right!42252 (c!848514 input!1342))) e!3108552)))

(declare-fun b!4973764 () Bool)

(assert (=> b!4973764 (= e!3108552 (inv!75128 (right!42252 (c!848514 input!1342))))))

(declare-fun b!4973765 () Bool)

(declare-fun e!3108553 () Bool)

(assert (=> b!4973765 (= e!3108552 e!3108553)))

(declare-fun res!2123271 () Bool)

(assert (=> b!4973765 (= res!2123271 (not ((_ is Leaf!25177) (right!42252 (c!848514 input!1342)))))))

(assert (=> b!4973765 (=> res!2123271 e!3108553)))

(declare-fun b!4973766 () Bool)

(assert (=> b!4973766 (= e!3108553 (inv!75129 (right!42252 (c!848514 input!1342))))))

(assert (= (and d!1601515 c!848695) b!4973764))

(assert (= (and d!1601515 (not c!848695)) b!4973765))

(assert (= (and b!4973765 (not res!2123271)) b!4973766))

(declare-fun m!6002702 () Bool)

(assert (=> b!4973764 m!6002702))

(declare-fun m!6002704 () Bool)

(assert (=> b!4973766 m!6002704))

(assert (=> b!4973024 d!1601515))

(declare-fun b!4973785 () Bool)

(declare-fun e!3108566 () Bool)

(declare-fun lt!2054253 () List!57590)

(declare-fun e!3108565 () Int)

(assert (=> b!4973785 (= e!3108566 (= (size!38097 lt!2054253) e!3108565))))

(declare-fun c!848704 () Bool)

(assert (=> b!4973785 (= c!848704 (<= (- (size!38097 (list!18383 totalInput!464)) (size!38097 lt!2053676)) 0))))

(declare-fun b!4973786 () Bool)

(declare-fun e!3108564 () List!57590)

(assert (=> b!4973786 (= e!3108564 (list!18383 totalInput!464))))

(declare-fun b!4973787 () Bool)

(declare-fun e!3108567 () Int)

(assert (=> b!4973787 (= e!3108567 0)))

(declare-fun b!4973788 () Bool)

(declare-fun call!346895 () Int)

(assert (=> b!4973788 (= e!3108567 (- call!346895 (- (size!38097 (list!18383 totalInput!464)) (size!38097 lt!2053676))))))

(declare-fun b!4973789 () Bool)

(assert (=> b!4973789 (= e!3108564 (drop!2356 (t!369196 (list!18383 totalInput!464)) (- (- (size!38097 (list!18383 totalInput!464)) (size!38097 lt!2053676)) 1)))))

(declare-fun b!4973790 () Bool)

(declare-fun e!3108568 () List!57590)

(assert (=> b!4973790 (= e!3108568 Nil!57466)))

(declare-fun b!4973791 () Bool)

(assert (=> b!4973791 (= e!3108565 call!346895)))

(declare-fun b!4973792 () Bool)

(assert (=> b!4973792 (= e!3108568 e!3108564)))

(declare-fun c!848707 () Bool)

(assert (=> b!4973792 (= c!848707 (<= (- (size!38097 (list!18383 totalInput!464)) (size!38097 lt!2053676)) 0))))

(declare-fun b!4973793 () Bool)

(assert (=> b!4973793 (= e!3108565 e!3108567)))

(declare-fun c!848705 () Bool)

(assert (=> b!4973793 (= c!848705 (>= (- (size!38097 (list!18383 totalInput!464)) (size!38097 lt!2053676)) call!346895))))

(declare-fun bm!346890 () Bool)

(assert (=> bm!346890 (= call!346895 (size!38097 (list!18383 totalInput!464)))))

(declare-fun d!1601517 () Bool)

(assert (=> d!1601517 e!3108566))

(declare-fun res!2123274 () Bool)

(assert (=> d!1601517 (=> (not res!2123274) (not e!3108566))))

(assert (=> d!1601517 (= res!2123274 (= ((_ map implies) (content!10197 lt!2054253) (content!10197 (list!18383 totalInput!464))) ((as const (InoxSet C!27516)) true)))))

(assert (=> d!1601517 (= lt!2054253 e!3108568)))

(declare-fun c!848706 () Bool)

(assert (=> d!1601517 (= c!848706 ((_ is Nil!57466) (list!18383 totalInput!464)))))

(assert (=> d!1601517 (= (drop!2356 (list!18383 totalInput!464) (- (size!38097 (list!18383 totalInput!464)) (size!38097 lt!2053676))) lt!2054253)))

(assert (= (and d!1601517 c!848706) b!4973790))

(assert (= (and d!1601517 (not c!848706)) b!4973792))

(assert (= (and b!4973792 c!848707) b!4973786))

(assert (= (and b!4973792 (not c!848707)) b!4973789))

(assert (= (and d!1601517 res!2123274) b!4973785))

(assert (= (and b!4973785 c!848704) b!4973791))

(assert (= (and b!4973785 (not c!848704)) b!4973793))

(assert (= (and b!4973793 c!848705) b!4973787))

(assert (= (and b!4973793 (not c!848705)) b!4973788))

(assert (= (or b!4973791 b!4973793 b!4973788) bm!346890))

(declare-fun m!6002706 () Bool)

(assert (=> b!4973785 m!6002706))

(declare-fun m!6002708 () Bool)

(assert (=> b!4973789 m!6002708))

(assert (=> bm!346890 m!6001304))

(assert (=> bm!346890 m!6001624))

(declare-fun m!6002710 () Bool)

(assert (=> d!1601517 m!6002710))

(assert (=> d!1601517 m!6001304))

(declare-fun m!6002712 () Bool)

(assert (=> d!1601517 m!6002712))

(assert (=> d!1601197 d!1601517))

(assert (=> d!1601197 d!1601317))

(assert (=> d!1601197 d!1601269))

(declare-fun bs!1183703 () Bool)

(declare-fun b!4973799 () Bool)

(assert (= bs!1183703 (and b!4973799 b!4972922)))

(declare-fun lambda!247525 () Int)

(assert (=> bs!1183703 (= (and (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (= lambda!247525 lambda!247506))))

(declare-fun bs!1183704 () Bool)

(assert (= bs!1183704 (and b!4973799 d!1601301)))

(assert (=> bs!1183704 (= (and (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (= lambda!247525 lambda!247516))))

(declare-fun b!4973801 () Bool)

(declare-fun e!3108575 () Bool)

(assert (=> b!4973801 (= e!3108575 true)))

(declare-fun b!4973800 () Bool)

(declare-fun e!3108574 () Bool)

(assert (=> b!4973800 (= e!3108574 e!3108575)))

(assert (=> b!4973799 e!3108574))

(assert (= b!4973800 b!4973801))

(assert (= b!4973799 b!4973800))

(assert (=> b!4973801 (< (dynLambda!23209 order!26257 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (dynLambda!23210 order!26259 lambda!247525))))

(assert (=> b!4973801 (< (dynLambda!23211 order!26261 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (dynLambda!23210 order!26259 lambda!247525))))

(declare-fun b!4973794 () Bool)

(declare-fun e!3108569 () Option!14464)

(assert (=> b!4973794 (= e!3108569 None!14463)))

(declare-fun b!4973795 () Bool)

(declare-fun e!3108573 () Bool)

(declare-fun lt!2054254 () List!57590)

(assert (=> b!4973795 (= e!3108573 (matchR!6643 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254)))))))

(declare-fun lt!2054260 () Option!14464)

(declare-fun e!3108571 () Bool)

(declare-fun b!4973796 () Bool)

(assert (=> b!4973796 (= e!3108571 (= (list!18383 (_2!34411 (get!19958 lt!2054260))) (_2!34412 (get!19957 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 rulesArg!259)) (list!18383 input!1342))))))))

(declare-fun b!4973797 () Bool)

(declare-fun e!3108570 () Bool)

(assert (=> b!4973797 (= e!3108570 e!3108571)))

(declare-fun res!2123278 () Bool)

(assert (=> b!4973797 (=> (not res!2123278) (not e!3108571))))

(assert (=> b!4973797 (= res!2123278 (= (_1!34411 (get!19958 lt!2054260)) (_1!34412 (get!19957 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 rulesArg!259)) (list!18383 input!1342))))))))

(declare-fun b!4973798 () Bool)

(declare-fun e!3108572 () Bool)

(assert (=> b!4973798 (= e!3108572 e!3108570)))

(declare-fun res!2123276 () Bool)

(assert (=> b!4973798 (=> res!2123276 e!3108570)))

(assert (=> b!4973798 (= res!2123276 (not (isDefined!11377 lt!2054260)))))

(declare-fun lt!2054258 () tuple2!62226)

(assert (=> b!4973799 (= e!3108569 (Some!14463 (tuple2!62217 (Token!15297 (apply!13911 (transformation!8400 (h!63915 (t!369197 rulesArg!259))) (_1!34416 lt!2054258)) (h!63915 (t!369197 rulesArg!259)) (size!38098 (_1!34416 lt!2054258)) (list!18383 (_1!34416 lt!2054258))) (_2!34416 lt!2054258))))))

(assert (=> b!4973799 (= lt!2054254 (list!18383 input!1342))))

(declare-fun lt!2054263 () Unit!148431)

(assert (=> b!4973799 (= lt!2054263 (longestMatchIsAcceptedByMatchOrIsEmpty!1823 (regex!8400 (h!63915 (t!369197 rulesArg!259))) lt!2054254))))

(declare-fun res!2123277 () Bool)

(assert (=> b!4973799 (= res!2123277 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254)))))))

(assert (=> b!4973799 (=> res!2123277 e!3108573)))

(assert (=> b!4973799 e!3108573))

(declare-fun lt!2054259 () Unit!148431)

(assert (=> b!4973799 (= lt!2054259 lt!2054263)))

(declare-fun lt!2054261 () Unit!148431)

(assert (=> b!4973799 (= lt!2054261 (lemmaInv!1341 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))))

(declare-fun lt!2054257 () Unit!148431)

(assert (=> b!4973799 (= lt!2054257 (ForallOf!1234 lambda!247525 (_1!34416 lt!2054258)))))

(declare-fun lt!2054262 () Unit!148431)

(assert (=> b!4973799 (= lt!2054262 (ForallOf!1234 lambda!247525 (seqFromList!6043 (list!18383 (_1!34416 lt!2054258)))))))

(declare-fun lt!2054256 () Option!14464)

(assert (=> b!4973799 (= lt!2054256 (Some!14463 (tuple2!62217 (Token!15297 (apply!13911 (transformation!8400 (h!63915 (t!369197 rulesArg!259))) (_1!34416 lt!2054258)) (h!63915 (t!369197 rulesArg!259)) (size!38098 (_1!34416 lt!2054258)) (list!18383 (_1!34416 lt!2054258))) (_2!34416 lt!2054258))))))

(declare-fun lt!2054255 () Unit!148431)

(assert (=> b!4973799 (= lt!2054255 (lemmaEqSameImage!1175 (transformation!8400 (h!63915 (t!369197 rulesArg!259))) (_1!34416 lt!2054258) (seqFromList!6043 (list!18383 (_1!34416 lt!2054258)))))))

(declare-fun d!1601519 () Bool)

(assert (=> d!1601519 e!3108572))

(declare-fun res!2123275 () Bool)

(assert (=> d!1601519 (=> (not res!2123275) (not e!3108572))))

(assert (=> d!1601519 (= res!2123275 (= (isDefined!11377 lt!2054260) (isDefined!11376 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 rulesArg!259)) (list!18383 input!1342)))))))

(assert (=> d!1601519 (= lt!2054260 e!3108569)))

(declare-fun c!848708 () Bool)

(assert (=> d!1601519 (= c!848708 (isEmpty!30978 (_1!34416 lt!2054258)))))

(assert (=> d!1601519 (= lt!2054258 (findLongestMatchWithZipperSequenceV2!171 (regex!8400 (h!63915 (t!369197 rulesArg!259))) input!1342 totalInput!464))))

(assert (=> d!1601519 (ruleValid!3809 thiss!15247 (h!63915 (t!369197 rulesArg!259)))))

(assert (=> d!1601519 (= (maxPrefixOneRuleZipperSequenceV2!368 thiss!15247 (h!63915 (t!369197 rulesArg!259)) input!1342 totalInput!464) lt!2054260)))

(assert (= (and d!1601519 c!848708) b!4973794))

(assert (= (and d!1601519 (not c!848708)) b!4973799))

(assert (= (and b!4973799 (not res!2123277)) b!4973795))

(assert (= (and d!1601519 res!2123275) b!4973798))

(assert (= (and b!4973798 (not res!2123276)) b!4973797))

(assert (= (and b!4973797 res!2123278) b!4973796))

(assert (=> b!4973795 m!6001546))

(declare-fun m!6002714 () Bool)

(assert (=> b!4973795 m!6002714))

(assert (=> b!4973795 m!6001546))

(assert (=> b!4973795 m!6002714))

(declare-fun m!6002716 () Bool)

(assert (=> b!4973795 m!6002716))

(declare-fun m!6002718 () Bool)

(assert (=> b!4973795 m!6002718))

(assert (=> b!4973796 m!6001308))

(declare-fun m!6002720 () Bool)

(assert (=> b!4973796 m!6002720))

(declare-fun m!6002722 () Bool)

(assert (=> b!4973796 m!6002722))

(assert (=> b!4973796 m!6002318))

(declare-fun m!6002724 () Bool)

(assert (=> b!4973796 m!6002724))

(assert (=> b!4973796 m!6001308))

(assert (=> b!4973796 m!6002318))

(assert (=> b!4973797 m!6002722))

(assert (=> b!4973797 m!6001308))

(assert (=> b!4973797 m!6001308))

(assert (=> b!4973797 m!6002318))

(assert (=> b!4973797 m!6002318))

(assert (=> b!4973797 m!6002724))

(assert (=> b!4973799 m!6001308))

(assert (=> b!4973799 m!6001546))

(declare-fun m!6002726 () Bool)

(assert (=> b!4973799 m!6002726))

(declare-fun m!6002728 () Bool)

(assert (=> b!4973799 m!6002728))

(declare-fun m!6002730 () Bool)

(assert (=> b!4973799 m!6002730))

(declare-fun m!6002732 () Bool)

(assert (=> b!4973799 m!6002732))

(assert (=> b!4973799 m!6002714))

(assert (=> b!4973799 m!6001546))

(assert (=> b!4973799 m!6002714))

(assert (=> b!4973799 m!6002716))

(declare-fun m!6002734 () Bool)

(assert (=> b!4973799 m!6002734))

(assert (=> b!4973799 m!6002726))

(declare-fun m!6002736 () Bool)

(assert (=> b!4973799 m!6002736))

(declare-fun m!6002738 () Bool)

(assert (=> b!4973799 m!6002738))

(assert (=> b!4973799 m!6002726))

(declare-fun m!6002740 () Bool)

(assert (=> b!4973799 m!6002740))

(assert (=> b!4973799 m!6002738))

(declare-fun m!6002742 () Bool)

(assert (=> b!4973799 m!6002742))

(declare-fun m!6002744 () Bool)

(assert (=> b!4973799 m!6002744))

(assert (=> d!1601519 m!6001308))

(assert (=> d!1601519 m!6002120))

(declare-fun m!6002746 () Bool)

(assert (=> d!1601519 m!6002746))

(assert (=> d!1601519 m!6002318))

(declare-fun m!6002748 () Bool)

(assert (=> d!1601519 m!6002748))

(declare-fun m!6002750 () Bool)

(assert (=> d!1601519 m!6002750))

(assert (=> d!1601519 m!6001308))

(assert (=> d!1601519 m!6002318))

(declare-fun m!6002752 () Bool)

(assert (=> d!1601519 m!6002752))

(assert (=> b!4973798 m!6002746))

(assert (=> bm!346815 d!1601519))

(declare-fun d!1601521 () Bool)

(assert (=> d!1601521 (= (inv!75118 (tag!9264 (h!63915 (t!369197 rulesArg!259)))) (= (mod (str.len (value!268839 (tag!9264 (h!63915 (t!369197 rulesArg!259))))) 2) 0))))

(assert (=> b!4973008 d!1601521))

(declare-fun d!1601523 () Bool)

(declare-fun res!2123279 () Bool)

(declare-fun e!3108576 () Bool)

(assert (=> d!1601523 (=> (not res!2123279) (not e!3108576))))

(assert (=> d!1601523 (= res!2123279 (semiInverseModEq!3707 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))))))

(assert (=> d!1601523 (= (inv!75122 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) e!3108576)))

(declare-fun b!4973802 () Bool)

(assert (=> b!4973802 (= e!3108576 (equivClasses!3555 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))))))

(assert (= (and d!1601523 res!2123279) b!4973802))

(declare-fun m!6002754 () Bool)

(assert (=> d!1601523 m!6002754))

(declare-fun m!6002756 () Bool)

(assert (=> b!4973802 m!6002756))

(assert (=> b!4973008 d!1601523))

(assert (=> b!4972922 d!1601507))

(declare-fun d!1601525 () Bool)

(declare-fun dynLambda!23221 (Int BalanceConc!29734) Bool)

(assert (=> d!1601525 (dynLambda!23221 lambda!247506 (_1!34416 lt!2053837))))

(declare-fun lt!2054266 () Unit!148431)

(declare-fun choose!36714 (Int BalanceConc!29734) Unit!148431)

(assert (=> d!1601525 (= lt!2054266 (choose!36714 lambda!247506 (_1!34416 lt!2053837)))))

(assert (=> d!1601525 (Forall!1768 lambda!247506)))

(assert (=> d!1601525 (= (ForallOf!1234 lambda!247506 (_1!34416 lt!2053837)) lt!2054266)))

(declare-fun b_lambda!197327 () Bool)

(assert (=> (not b_lambda!197327) (not d!1601525)))

(declare-fun bs!1183705 () Bool)

(assert (= bs!1183705 d!1601525))

(declare-fun m!6002758 () Bool)

(assert (=> bs!1183705 m!6002758))

(declare-fun m!6002760 () Bool)

(assert (=> bs!1183705 m!6002760))

(declare-fun m!6002762 () Bool)

(assert (=> bs!1183705 m!6002762))

(assert (=> b!4972922 d!1601525))

(declare-fun d!1601527 () Bool)

(assert (=> d!1601527 (= (apply!13911 (transformation!8400 (h!63915 rulesArg!259)) (_1!34416 lt!2053837)) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837)))))

(declare-fun b_lambda!197329 () Bool)

(assert (=> (not b_lambda!197329) (not d!1601527)))

(declare-fun t!369247 () Bool)

(declare-fun tb!261183 () Bool)

(assert (=> (and b!4972699 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369247) tb!261183))

(declare-fun result!326372 () Bool)

(assert (=> tb!261183 (= result!326372 (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))))))

(declare-fun m!6002764 () Bool)

(assert (=> tb!261183 m!6002764))

(assert (=> d!1601527 t!369247))

(declare-fun b_and!348899 () Bool)

(assert (= b_and!348847 (and (=> t!369247 result!326372) b_and!348899)))

(declare-fun t!369249 () Bool)

(declare-fun tb!261185 () Bool)

(assert (=> (and b!4973009 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369249) tb!261185))

(declare-fun result!326374 () Bool)

(assert (= result!326374 result!326372))

(assert (=> d!1601527 t!369249))

(declare-fun b_and!348901 () Bool)

(assert (= b_and!348849 (and (=> t!369249 result!326374) b_and!348901)))

(declare-fun m!6002766 () Bool)

(assert (=> d!1601527 m!6002766))

(assert (=> b!4972922 d!1601527))

(assert (=> b!4972922 d!1601509))

(declare-fun d!1601529 () Bool)

(declare-fun e!3108580 () Bool)

(assert (=> d!1601529 e!3108580))

(declare-fun res!2123282 () Bool)

(assert (=> d!1601529 (=> (not res!2123282) (not e!3108580))))

(assert (=> d!1601529 (= res!2123282 (semiInverseModEq!3707 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))))))

(declare-fun Unit!148440 () Unit!148431)

(assert (=> d!1601529 (= (lemmaInv!1341 (transformation!8400 (h!63915 rulesArg!259))) Unit!148440)))

(declare-fun b!4973805 () Bool)

(assert (=> b!4973805 (= e!3108580 (equivClasses!3555 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))))))

(assert (= (and d!1601529 res!2123282) b!4973805))

(assert (=> d!1601529 m!6001632))

(assert (=> b!4973805 m!6001634))

(assert (=> b!4972922 d!1601529))

(declare-fun d!1601531 () Bool)

(declare-fun e!3108583 () Bool)

(assert (=> d!1601531 e!3108583))

(declare-fun res!2123285 () Bool)

(assert (=> d!1601531 (=> res!2123285 e!3108583)))

(assert (=> d!1601531 (= res!2123285 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))

(declare-fun lt!2054269 () Unit!148431)

(declare-fun choose!36715 (Regex!13633 List!57590) Unit!148431)

(assert (=> d!1601531 (= lt!2054269 (choose!36715 (regex!8400 (h!63915 rulesArg!259)) lt!2053833))))

(assert (=> d!1601531 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1601531 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1823 (regex!8400 (h!63915 rulesArg!259)) lt!2053833) lt!2054269)))

(declare-fun b!4973808 () Bool)

(assert (=> b!4973808 (= e!3108583 (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))

(assert (= (and d!1601531 (not res!2123285)) b!4973808))

(assert (=> d!1601531 m!6002460))

(declare-fun m!6002768 () Bool)

(assert (=> d!1601531 m!6002768))

(assert (=> d!1601531 m!6001566))

(assert (=> d!1601531 m!6001548))

(assert (=> d!1601531 m!6001546))

(assert (=> d!1601531 m!6001546))

(assert (=> d!1601531 m!6001548))

(assert (=> d!1601531 m!6001550))

(assert (=> b!4973808 m!6001546))

(assert (=> b!4973808 m!6001548))

(assert (=> b!4973808 m!6001546))

(assert (=> b!4973808 m!6001548))

(assert (=> b!4973808 m!6001550))

(assert (=> b!4973808 m!6001552))

(assert (=> b!4972922 d!1601531))

(declare-fun d!1601533 () Bool)

(assert (=> d!1601533 (= (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))) (fromListB!2737 (list!18383 (_1!34416 lt!2053837))))))

(declare-fun bs!1183706 () Bool)

(assert (= bs!1183706 d!1601533))

(assert (=> bs!1183706 m!6001574))

(declare-fun m!6002770 () Bool)

(assert (=> bs!1183706 m!6002770))

(assert (=> b!4972922 d!1601533))

(declare-fun d!1601535 () Bool)

(assert (=> d!1601535 (= (list!18383 (_1!34416 lt!2053837)) (list!18385 (c!848514 (_1!34416 lt!2053837))))))

(declare-fun bs!1183707 () Bool)

(assert (= bs!1183707 d!1601535))

(declare-fun m!6002772 () Bool)

(assert (=> bs!1183707 m!6002772))

(assert (=> b!4972922 d!1601535))

(declare-fun d!1601537 () Bool)

(declare-fun lt!2054272 () Int)

(assert (=> d!1601537 (= lt!2054272 (size!38097 (list!18383 (_1!34416 lt!2053837))))))

(assert (=> d!1601537 (= lt!2054272 (size!38100 (c!848514 (_1!34416 lt!2053837))))))

(assert (=> d!1601537 (= (size!38098 (_1!34416 lt!2053837)) lt!2054272)))

(declare-fun bs!1183708 () Bool)

(assert (= bs!1183708 d!1601537))

(assert (=> bs!1183708 m!6001574))

(assert (=> bs!1183708 m!6001574))

(declare-fun m!6002774 () Bool)

(assert (=> bs!1183708 m!6002774))

(declare-fun m!6002776 () Bool)

(assert (=> bs!1183708 m!6002776))

(assert (=> b!4972922 d!1601537))

(declare-fun d!1601539 () Bool)

(assert (=> d!1601539 (= (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))) ((_ is Nil!57466) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))

(assert (=> b!4972922 d!1601539))

(declare-fun bs!1183709 () Bool)

(declare-fun d!1601541 () Bool)

(assert (= bs!1183709 (and d!1601541 d!1601243)))

(declare-fun lambda!247528 () Int)

(assert (=> bs!1183709 (= lambda!247528 lambda!247509)))

(declare-fun b!4973815 () Bool)

(declare-fun e!3108588 () Bool)

(assert (=> b!4973815 (= e!3108588 true)))

(assert (=> d!1601541 e!3108588))

(assert (= d!1601541 b!4973815))

(assert (=> b!4973815 (< (dynLambda!23209 order!26257 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) (dynLambda!23212 order!26263 lambda!247528))))

(assert (=> b!4973815 (< (dynLambda!23211 order!26261 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) (dynLambda!23212 order!26263 lambda!247528))))

(assert (=> d!1601541 (= (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837)) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))

(declare-fun lt!2054275 () Unit!148431)

(declare-fun Forall2of!483 (Int BalanceConc!29734 BalanceConc!29734) Unit!148431)

(assert (=> d!1601541 (= lt!2054275 (Forall2of!483 lambda!247528 (_1!34416 lt!2053837) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))

(assert (=> d!1601541 (= (list!18383 (_1!34416 lt!2053837)) (list!18383 (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))

(assert (=> d!1601541 (= (lemmaEqSameImage!1175 (transformation!8400 (h!63915 rulesArg!259)) (_1!34416 lt!2053837) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))) lt!2054275)))

(declare-fun b_lambda!197331 () Bool)

(assert (=> (not b_lambda!197331) (not d!1601541)))

(assert (=> d!1601541 t!369247))

(declare-fun b_and!348903 () Bool)

(assert (= b_and!348899 (and (=> t!369247 result!326372) b_and!348903)))

(assert (=> d!1601541 t!369249))

(declare-fun b_and!348905 () Bool)

(assert (= b_and!348901 (and (=> t!369249 result!326374) b_and!348905)))

(declare-fun b_lambda!197333 () Bool)

(assert (=> (not b_lambda!197333) (not d!1601541)))

(declare-fun t!369251 () Bool)

(declare-fun tb!261187 () Bool)

(assert (=> (and b!4972699 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369251) tb!261187))

(declare-fun result!326376 () Bool)

(assert (=> tb!261187 (= result!326376 (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))))

(declare-fun m!6002778 () Bool)

(assert (=> tb!261187 m!6002778))

(assert (=> d!1601541 t!369251))

(declare-fun b_and!348907 () Bool)

(assert (= b_and!348903 (and (=> t!369251 result!326376) b_and!348907)))

(declare-fun t!369253 () Bool)

(declare-fun tb!261189 () Bool)

(assert (=> (and b!4973009 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369253) tb!261189))

(declare-fun result!326378 () Bool)

(assert (= result!326378 result!326376))

(assert (=> d!1601541 t!369253))

(declare-fun b_and!348909 () Bool)

(assert (= b_and!348905 (and (=> t!369253 result!326378) b_and!348909)))

(assert (=> d!1601541 m!6001574))

(assert (=> d!1601541 m!6001562))

(declare-fun m!6002780 () Bool)

(assert (=> d!1601541 m!6002780))

(assert (=> d!1601541 m!6001562))

(declare-fun m!6002782 () Bool)

(assert (=> d!1601541 m!6002782))

(assert (=> d!1601541 m!6001562))

(declare-fun m!6002784 () Bool)

(assert (=> d!1601541 m!6002784))

(assert (=> d!1601541 m!6002766))

(assert (=> b!4972922 d!1601541))

(assert (=> b!4972922 d!1601201))

(assert (=> b!4972922 d!1601511))

(declare-fun d!1601543 () Bool)

(assert (=> d!1601543 (dynLambda!23221 lambda!247506 (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))

(declare-fun lt!2054276 () Unit!148431)

(assert (=> d!1601543 (= lt!2054276 (choose!36714 lambda!247506 (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))

(assert (=> d!1601543 (Forall!1768 lambda!247506)))

(assert (=> d!1601543 (= (ForallOf!1234 lambda!247506 (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))) lt!2054276)))

(declare-fun b_lambda!197335 () Bool)

(assert (=> (not b_lambda!197335) (not d!1601543)))

(declare-fun bs!1183710 () Bool)

(assert (= bs!1183710 d!1601543))

(assert (=> bs!1183710 m!6001562))

(declare-fun m!6002786 () Bool)

(assert (=> bs!1183710 m!6002786))

(assert (=> bs!1183710 m!6001562))

(declare-fun m!6002788 () Bool)

(assert (=> bs!1183710 m!6002788))

(assert (=> bs!1183710 m!6002762))

(assert (=> b!4972922 d!1601543))

(assert (=> b!4972703 d!1601211))

(assert (=> d!1601215 d!1601213))

(declare-fun d!1601545 () Bool)

(assert (=> d!1601545 (isPrefix!5251 lt!2053676 lt!2053676)))

(assert (=> d!1601545 true))

(declare-fun _$45!2297 () Unit!148431)

(assert (=> d!1601545 (= (choose!36709 lt!2053676 lt!2053676) _$45!2297)))

(declare-fun bs!1183711 () Bool)

(assert (= bs!1183711 d!1601545))

(assert (=> bs!1183711 m!6001310))

(assert (=> d!1601215 d!1601545))

(assert (=> b!4972901 d!1601399))

(assert (=> b!4972901 d!1601407))

(assert (=> b!4972901 d!1601201))

(assert (=> b!4972901 d!1601423))

(assert (=> b!4972901 d!1601421))

(declare-fun b!4973820 () Bool)

(declare-fun e!3108592 () Bool)

(declare-fun tp!1394527 () Bool)

(assert (=> b!4973820 (= e!3108592 (and tp_is_empty!36347 tp!1394527))))

(assert (=> b!4972998 (= tp!1394435 e!3108592)))

(assert (= (and b!4972998 ((_ is Cons!57466) (innerList!15240 (xs!18478 (c!848514 totalInput!464))))) b!4973820))

(declare-fun b!4973821 () Bool)

(declare-fun e!3108593 () Bool)

(declare-fun tp!1394528 () Bool)

(assert (=> b!4973821 (= e!3108593 (and tp_is_empty!36347 tp!1394528))))

(assert (=> b!4973026 (= tp!1394465 e!3108593)))

(assert (= (and b!4973026 ((_ is Cons!57466) (innerList!15240 (xs!18478 (c!848514 input!1342))))) b!4973821))

(declare-fun b!4973824 () Bool)

(declare-fun b_free!132867 () Bool)

(declare-fun b_next!133657 () Bool)

(assert (=> b!4973824 (= b_free!132867 (not b_next!133657))))

(declare-fun tb!261191 () Bool)

(declare-fun t!369255 () Bool)

(assert (=> (and b!4973824 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))) t!369255) tb!261191))

(declare-fun result!326382 () Bool)

(assert (= result!326382 result!326324))

(assert (=> d!1601289 t!369255))

(declare-fun t!369257 () Bool)

(declare-fun tb!261193 () Bool)

(assert (=> (and b!4973824 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369257) tb!261193))

(declare-fun result!326384 () Bool)

(assert (= result!326384 result!326372))

(assert (=> d!1601527 t!369257))

(assert (=> d!1601541 t!369257))

(declare-fun t!369259 () Bool)

(declare-fun tb!261195 () Bool)

(assert (=> (and b!4973824 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369259) tb!261195))

(declare-fun result!326386 () Bool)

(assert (= result!326386 result!326376))

(assert (=> d!1601541 t!369259))

(declare-fun b_and!348911 () Bool)

(declare-fun tp!1394529 () Bool)

(assert (=> b!4973824 (= tp!1394529 (and (=> t!369255 result!326382) (=> t!369257 result!326384) (=> t!369259 result!326386) b_and!348911))))

(declare-fun b_free!132869 () Bool)

(declare-fun b_next!133659 () Bool)

(assert (=> b!4973824 (= b_free!132869 (not b_next!133659))))

(declare-fun tb!261197 () Bool)

(declare-fun t!369261 () Bool)

(assert (=> (and b!4973824 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))) t!369261) tb!261197))

(declare-fun result!326388 () Bool)

(assert (= result!326388 result!326318))

(assert (=> d!1601277 t!369261))

(declare-fun tp!1394530 () Bool)

(declare-fun b_and!348913 () Bool)

(assert (=> b!4973824 (= tp!1394530 (and (=> t!369261 result!326388) b_and!348913))))

(declare-fun e!3108594 () Bool)

(assert (=> b!4973824 (= e!3108594 (and tp!1394529 tp!1394530))))

(declare-fun b!4973823 () Bool)

(declare-fun e!3108597 () Bool)

(declare-fun tp!1394531 () Bool)

(assert (=> b!4973823 (= e!3108597 (and tp!1394531 (inv!75118 (tag!9264 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (inv!75122 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) e!3108594))))

(declare-fun b!4973822 () Bool)

(declare-fun e!3108595 () Bool)

(declare-fun tp!1394532 () Bool)

(assert (=> b!4973822 (= e!3108595 (and e!3108597 tp!1394532))))

(assert (=> b!4973007 (= tp!1394448 e!3108595)))

(assert (= b!4973823 b!4973824))

(assert (= b!4973822 b!4973823))

(assert (= (and b!4973007 ((_ is Cons!57467) (t!369197 (t!369197 rulesArg!259)))) b!4973822))

(declare-fun m!6002790 () Bool)

(assert (=> b!4973823 m!6002790))

(declare-fun m!6002792 () Bool)

(assert (=> b!4973823 m!6002792))

(declare-fun e!3108598 () Bool)

(assert (=> b!4973021 (= tp!1394463 e!3108598)))

(declare-fun b!4973825 () Bool)

(assert (=> b!4973825 (= e!3108598 tp_is_empty!36347)))

(declare-fun b!4973826 () Bool)

(declare-fun tp!1394537 () Bool)

(declare-fun tp!1394534 () Bool)

(assert (=> b!4973826 (= e!3108598 (and tp!1394537 tp!1394534))))

(declare-fun b!4973828 () Bool)

(declare-fun tp!1394535 () Bool)

(declare-fun tp!1394536 () Bool)

(assert (=> b!4973828 (= e!3108598 (and tp!1394535 tp!1394536))))

(declare-fun b!4973827 () Bool)

(declare-fun tp!1394533 () Bool)

(assert (=> b!4973827 (= e!3108598 tp!1394533)))

(assert (= (and b!4973021 ((_ is ElementMatch!13633) (regOne!27778 (regex!8400 (h!63915 rulesArg!259))))) b!4973825))

(assert (= (and b!4973021 ((_ is Concat!22344) (regOne!27778 (regex!8400 (h!63915 rulesArg!259))))) b!4973826))

(assert (= (and b!4973021 ((_ is Star!13633) (regOne!27778 (regex!8400 (h!63915 rulesArg!259))))) b!4973827))

(assert (= (and b!4973021 ((_ is Union!13633) (regOne!27778 (regex!8400 (h!63915 rulesArg!259))))) b!4973828))

(declare-fun e!3108599 () Bool)

(assert (=> b!4973021 (= tp!1394460 e!3108599)))

(declare-fun b!4973829 () Bool)

(assert (=> b!4973829 (= e!3108599 tp_is_empty!36347)))

(declare-fun b!4973830 () Bool)

(declare-fun tp!1394542 () Bool)

(declare-fun tp!1394539 () Bool)

(assert (=> b!4973830 (= e!3108599 (and tp!1394542 tp!1394539))))

(declare-fun b!4973832 () Bool)

(declare-fun tp!1394540 () Bool)

(declare-fun tp!1394541 () Bool)

(assert (=> b!4973832 (= e!3108599 (and tp!1394540 tp!1394541))))

(declare-fun b!4973831 () Bool)

(declare-fun tp!1394538 () Bool)

(assert (=> b!4973831 (= e!3108599 tp!1394538)))

(assert (= (and b!4973021 ((_ is ElementMatch!13633) (regTwo!27778 (regex!8400 (h!63915 rulesArg!259))))) b!4973829))

(assert (= (and b!4973021 ((_ is Concat!22344) (regTwo!27778 (regex!8400 (h!63915 rulesArg!259))))) b!4973830))

(assert (= (and b!4973021 ((_ is Star!13633) (regTwo!27778 (regex!8400 (h!63915 rulesArg!259))))) b!4973831))

(assert (= (and b!4973021 ((_ is Union!13633) (regTwo!27778 (regex!8400 (h!63915 rulesArg!259))))) b!4973832))

(declare-fun e!3108600 () Bool)

(assert (=> b!4973008 (= tp!1394447 e!3108600)))

(declare-fun b!4973833 () Bool)

(assert (=> b!4973833 (= e!3108600 tp_is_empty!36347)))

(declare-fun b!4973834 () Bool)

(declare-fun tp!1394547 () Bool)

(declare-fun tp!1394544 () Bool)

(assert (=> b!4973834 (= e!3108600 (and tp!1394547 tp!1394544))))

(declare-fun b!4973836 () Bool)

(declare-fun tp!1394545 () Bool)

(declare-fun tp!1394546 () Bool)

(assert (=> b!4973836 (= e!3108600 (and tp!1394545 tp!1394546))))

(declare-fun b!4973835 () Bool)

(declare-fun tp!1394543 () Bool)

(assert (=> b!4973835 (= e!3108600 tp!1394543)))

(assert (= (and b!4973008 ((_ is ElementMatch!13633) (regex!8400 (h!63915 (t!369197 rulesArg!259))))) b!4973833))

(assert (= (and b!4973008 ((_ is Concat!22344) (regex!8400 (h!63915 (t!369197 rulesArg!259))))) b!4973834))

(assert (= (and b!4973008 ((_ is Star!13633) (regex!8400 (h!63915 (t!369197 rulesArg!259))))) b!4973835))

(assert (= (and b!4973008 ((_ is Union!13633) (regex!8400 (h!63915 (t!369197 rulesArg!259))))) b!4973836))

(declare-fun e!3108601 () Bool)

(assert (=> b!4973022 (= tp!1394459 e!3108601)))

(declare-fun b!4973837 () Bool)

(assert (=> b!4973837 (= e!3108601 tp_is_empty!36347)))

(declare-fun b!4973838 () Bool)

(declare-fun tp!1394552 () Bool)

(declare-fun tp!1394549 () Bool)

(assert (=> b!4973838 (= e!3108601 (and tp!1394552 tp!1394549))))

(declare-fun b!4973840 () Bool)

(declare-fun tp!1394550 () Bool)

(declare-fun tp!1394551 () Bool)

(assert (=> b!4973840 (= e!3108601 (and tp!1394550 tp!1394551))))

(declare-fun b!4973839 () Bool)

(declare-fun tp!1394548 () Bool)

(assert (=> b!4973839 (= e!3108601 tp!1394548)))

(assert (= (and b!4973022 ((_ is ElementMatch!13633) (reg!13962 (regex!8400 (h!63915 rulesArg!259))))) b!4973837))

(assert (= (and b!4973022 ((_ is Concat!22344) (reg!13962 (regex!8400 (h!63915 rulesArg!259))))) b!4973838))

(assert (= (and b!4973022 ((_ is Star!13633) (reg!13962 (regex!8400 (h!63915 rulesArg!259))))) b!4973839))

(assert (= (and b!4973022 ((_ is Union!13633) (reg!13962 (regex!8400 (h!63915 rulesArg!259))))) b!4973840))

(declare-fun e!3108602 () Bool)

(assert (=> b!4973023 (= tp!1394461 e!3108602)))

(declare-fun b!4973841 () Bool)

(assert (=> b!4973841 (= e!3108602 tp_is_empty!36347)))

(declare-fun b!4973842 () Bool)

(declare-fun tp!1394557 () Bool)

(declare-fun tp!1394554 () Bool)

(assert (=> b!4973842 (= e!3108602 (and tp!1394557 tp!1394554))))

(declare-fun b!4973844 () Bool)

(declare-fun tp!1394555 () Bool)

(declare-fun tp!1394556 () Bool)

(assert (=> b!4973844 (= e!3108602 (and tp!1394555 tp!1394556))))

(declare-fun b!4973843 () Bool)

(declare-fun tp!1394553 () Bool)

(assert (=> b!4973843 (= e!3108602 tp!1394553)))

(assert (= (and b!4973023 ((_ is ElementMatch!13633) (regOne!27779 (regex!8400 (h!63915 rulesArg!259))))) b!4973841))

(assert (= (and b!4973023 ((_ is Concat!22344) (regOne!27779 (regex!8400 (h!63915 rulesArg!259))))) b!4973842))

(assert (= (and b!4973023 ((_ is Star!13633) (regOne!27779 (regex!8400 (h!63915 rulesArg!259))))) b!4973843))

(assert (= (and b!4973023 ((_ is Union!13633) (regOne!27779 (regex!8400 (h!63915 rulesArg!259))))) b!4973844))

(declare-fun e!3108603 () Bool)

(assert (=> b!4973023 (= tp!1394462 e!3108603)))

(declare-fun b!4973845 () Bool)

(assert (=> b!4973845 (= e!3108603 tp_is_empty!36347)))

(declare-fun b!4973846 () Bool)

(declare-fun tp!1394562 () Bool)

(declare-fun tp!1394559 () Bool)

(assert (=> b!4973846 (= e!3108603 (and tp!1394562 tp!1394559))))

(declare-fun b!4973848 () Bool)

(declare-fun tp!1394560 () Bool)

(declare-fun tp!1394561 () Bool)

(assert (=> b!4973848 (= e!3108603 (and tp!1394560 tp!1394561))))

(declare-fun b!4973847 () Bool)

(declare-fun tp!1394558 () Bool)

(assert (=> b!4973847 (= e!3108603 tp!1394558)))

(assert (= (and b!4973023 ((_ is ElementMatch!13633) (regTwo!27779 (regex!8400 (h!63915 rulesArg!259))))) b!4973845))

(assert (= (and b!4973023 ((_ is Concat!22344) (regTwo!27779 (regex!8400 (h!63915 rulesArg!259))))) b!4973846))

(assert (= (and b!4973023 ((_ is Star!13633) (regTwo!27779 (regex!8400 (h!63915 rulesArg!259))))) b!4973847))

(assert (= (and b!4973023 ((_ is Union!13633) (regTwo!27779 (regex!8400 (h!63915 rulesArg!259))))) b!4973848))

(declare-fun tp!1394563 () Bool)

(declare-fun e!3108605 () Bool)

(declare-fun tp!1394565 () Bool)

(declare-fun b!4973849 () Bool)

(assert (=> b!4973849 (= e!3108605 (and (inv!75123 (left!41922 (left!41922 (c!848514 totalInput!464)))) tp!1394565 (inv!75123 (right!42252 (left!41922 (c!848514 totalInput!464)))) tp!1394563))))

(declare-fun b!4973851 () Bool)

(declare-fun e!3108604 () Bool)

(declare-fun tp!1394564 () Bool)

(assert (=> b!4973851 (= e!3108604 tp!1394564)))

(declare-fun b!4973850 () Bool)

(assert (=> b!4973850 (= e!3108605 (and (inv!75130 (xs!18478 (left!41922 (c!848514 totalInput!464)))) e!3108604))))

(assert (=> b!4972996 (= tp!1394436 (and (inv!75123 (left!41922 (c!848514 totalInput!464))) e!3108605))))

(assert (= (and b!4972996 ((_ is Node!15152) (left!41922 (c!848514 totalInput!464)))) b!4973849))

(assert (= b!4973850 b!4973851))

(assert (= (and b!4972996 ((_ is Leaf!25177) (left!41922 (c!848514 totalInput!464)))) b!4973850))

(declare-fun m!6002794 () Bool)

(assert (=> b!4973849 m!6002794))

(declare-fun m!6002796 () Bool)

(assert (=> b!4973849 m!6002796))

(declare-fun m!6002798 () Bool)

(assert (=> b!4973850 m!6002798))

(assert (=> b!4972996 m!6001650))

(declare-fun b!4973852 () Bool)

(declare-fun e!3108607 () Bool)

(declare-fun tp!1394568 () Bool)

(declare-fun tp!1394566 () Bool)

(assert (=> b!4973852 (= e!3108607 (and (inv!75123 (left!41922 (right!42252 (c!848514 totalInput!464)))) tp!1394568 (inv!75123 (right!42252 (right!42252 (c!848514 totalInput!464)))) tp!1394566))))

(declare-fun b!4973854 () Bool)

(declare-fun e!3108606 () Bool)

(declare-fun tp!1394567 () Bool)

(assert (=> b!4973854 (= e!3108606 tp!1394567)))

(declare-fun b!4973853 () Bool)

(assert (=> b!4973853 (= e!3108607 (and (inv!75130 (xs!18478 (right!42252 (c!848514 totalInput!464)))) e!3108606))))

(assert (=> b!4972996 (= tp!1394434 (and (inv!75123 (right!42252 (c!848514 totalInput!464))) e!3108607))))

(assert (= (and b!4972996 ((_ is Node!15152) (right!42252 (c!848514 totalInput!464)))) b!4973852))

(assert (= b!4973853 b!4973854))

(assert (= (and b!4972996 ((_ is Leaf!25177) (right!42252 (c!848514 totalInput!464)))) b!4973853))

(declare-fun m!6002800 () Bool)

(assert (=> b!4973852 m!6002800))

(declare-fun m!6002802 () Bool)

(assert (=> b!4973852 m!6002802))

(declare-fun m!6002804 () Bool)

(assert (=> b!4973853 m!6002804))

(assert (=> b!4972996 m!6001652))

(declare-fun e!3108609 () Bool)

(declare-fun tp!1394571 () Bool)

(declare-fun tp!1394569 () Bool)

(declare-fun b!4973855 () Bool)

(assert (=> b!4973855 (= e!3108609 (and (inv!75123 (left!41922 (left!41922 (c!848514 input!1342)))) tp!1394571 (inv!75123 (right!42252 (left!41922 (c!848514 input!1342)))) tp!1394569))))

(declare-fun b!4973857 () Bool)

(declare-fun e!3108608 () Bool)

(declare-fun tp!1394570 () Bool)

(assert (=> b!4973857 (= e!3108608 tp!1394570)))

(declare-fun b!4973856 () Bool)

(assert (=> b!4973856 (= e!3108609 (and (inv!75130 (xs!18478 (left!41922 (c!848514 input!1342)))) e!3108608))))

(assert (=> b!4973024 (= tp!1394466 (and (inv!75123 (left!41922 (c!848514 input!1342))) e!3108609))))

(assert (= (and b!4973024 ((_ is Node!15152) (left!41922 (c!848514 input!1342)))) b!4973855))

(assert (= b!4973856 b!4973857))

(assert (= (and b!4973024 ((_ is Leaf!25177) (left!41922 (c!848514 input!1342)))) b!4973856))

(declare-fun m!6002806 () Bool)

(assert (=> b!4973855 m!6002806))

(declare-fun m!6002808 () Bool)

(assert (=> b!4973855 m!6002808))

(declare-fun m!6002810 () Bool)

(assert (=> b!4973856 m!6002810))

(assert (=> b!4973024 m!6001660))

(declare-fun tp!1394574 () Bool)

(declare-fun b!4973858 () Bool)

(declare-fun e!3108611 () Bool)

(declare-fun tp!1394572 () Bool)

(assert (=> b!4973858 (= e!3108611 (and (inv!75123 (left!41922 (right!42252 (c!848514 input!1342)))) tp!1394574 (inv!75123 (right!42252 (right!42252 (c!848514 input!1342)))) tp!1394572))))

(declare-fun b!4973860 () Bool)

(declare-fun e!3108610 () Bool)

(declare-fun tp!1394573 () Bool)

(assert (=> b!4973860 (= e!3108610 tp!1394573)))

(declare-fun b!4973859 () Bool)

(assert (=> b!4973859 (= e!3108611 (and (inv!75130 (xs!18478 (right!42252 (c!848514 input!1342)))) e!3108610))))

(assert (=> b!4973024 (= tp!1394464 (and (inv!75123 (right!42252 (c!848514 input!1342))) e!3108611))))

(assert (= (and b!4973024 ((_ is Node!15152) (right!42252 (c!848514 input!1342)))) b!4973858))

(assert (= b!4973859 b!4973860))

(assert (= (and b!4973024 ((_ is Leaf!25177) (right!42252 (c!848514 input!1342)))) b!4973859))

(declare-fun m!6002812 () Bool)

(assert (=> b!4973858 m!6002812))

(declare-fun m!6002814 () Bool)

(assert (=> b!4973858 m!6002814))

(declare-fun m!6002816 () Bool)

(assert (=> b!4973859 m!6002816))

(assert (=> b!4973024 m!6001662))

(declare-fun b_lambda!197337 () Bool)

(assert (= b_lambda!197335 (or b!4972922 b_lambda!197337)))

(declare-fun bs!1183712 () Bool)

(declare-fun d!1601547 () Bool)

(assert (= bs!1183712 (and d!1601547 b!4972922)))

(assert (=> bs!1183712 (= (dynLambda!23221 lambda!247506 (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))) (= (list!18383 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))) (list!18383 (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))))

(declare-fun b_lambda!197349 () Bool)

(assert (=> (not b_lambda!197349) (not bs!1183712)))

(declare-fun t!369263 () Bool)

(declare-fun tb!261199 () Bool)

(assert (=> (and b!4972699 (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369263) tb!261199))

(declare-fun b!4973861 () Bool)

(declare-fun tp!1394575 () Bool)

(declare-fun e!3108612 () Bool)

(assert (=> b!4973861 (= e!3108612 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))) tp!1394575))))

(declare-fun result!326390 () Bool)

(assert (=> tb!261199 (= result!326390 (and (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))) e!3108612))))

(assert (= tb!261199 b!4973861))

(declare-fun m!6002818 () Bool)

(assert (=> b!4973861 m!6002818))

(declare-fun m!6002820 () Bool)

(assert (=> tb!261199 m!6002820))

(assert (=> bs!1183712 t!369263))

(declare-fun b_and!348915 () Bool)

(assert (= b_and!348843 (and (=> t!369263 result!326390) b_and!348915)))

(declare-fun t!369265 () Bool)

(declare-fun tb!261201 () Bool)

(assert (=> (and b!4973009 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369265) tb!261201))

(declare-fun result!326392 () Bool)

(assert (= result!326392 result!326390))

(assert (=> bs!1183712 t!369265))

(declare-fun b_and!348917 () Bool)

(assert (= b_and!348845 (and (=> t!369265 result!326392) b_and!348917)))

(declare-fun t!369267 () Bool)

(declare-fun tb!261203 () Bool)

(assert (=> (and b!4973824 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369267) tb!261203))

(declare-fun result!326394 () Bool)

(assert (= result!326394 result!326390))

(assert (=> bs!1183712 t!369267))

(declare-fun b_and!348919 () Bool)

(assert (= b_and!348913 (and (=> t!369267 result!326394) b_and!348919)))

(declare-fun b_lambda!197351 () Bool)

(assert (=> (not b_lambda!197351) (not bs!1183712)))

(assert (=> bs!1183712 t!369251))

(declare-fun b_and!348921 () Bool)

(assert (= b_and!348907 (and (=> t!369251 result!326376) b_and!348921)))

(assert (=> bs!1183712 t!369253))

(declare-fun b_and!348923 () Bool)

(assert (= b_and!348909 (and (=> t!369253 result!326378) b_and!348923)))

(assert (=> bs!1183712 t!369259))

(declare-fun b_and!348925 () Bool)

(assert (= b_and!348911 (and (=> t!369259 result!326386) b_and!348925)))

(assert (=> bs!1183712 m!6001562))

(assert (=> bs!1183712 m!6002780))

(assert (=> bs!1183712 m!6002782))

(declare-fun m!6002822 () Bool)

(assert (=> bs!1183712 m!6002822))

(assert (=> bs!1183712 m!6001562))

(assert (=> bs!1183712 m!6002782))

(assert (=> bs!1183712 m!6002822))

(declare-fun m!6002824 () Bool)

(assert (=> bs!1183712 m!6002824))

(assert (=> d!1601543 d!1601547))

(declare-fun b_lambda!197339 () Bool)

(assert (= b_lambda!197287 (or d!1601161 b_lambda!197339)))

(declare-fun bs!1183713 () Bool)

(declare-fun d!1601549 () Bool)

(assert (= bs!1183713 (and d!1601549 d!1601161)))

(assert (=> bs!1183713 (= (dynLambda!23214 lambda!247498 (h!63915 rulesArg!259)) (ruleValid!3809 thiss!15247 (h!63915 rulesArg!259)))))

(assert (=> bs!1183713 m!6001448))

(assert (=> b!4973312 d!1601549))

(declare-fun b_lambda!197341 () Bool)

(assert (= b_lambda!197327 (or b!4972922 b_lambda!197341)))

(declare-fun bs!1183714 () Bool)

(declare-fun d!1601551 () Bool)

(assert (= bs!1183714 (and d!1601551 b!4972922)))

(assert (=> bs!1183714 (= (dynLambda!23221 lambda!247506 (_1!34416 lt!2053837)) (= (list!18383 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837)))) (list!18383 (_1!34416 lt!2053837))))))

(declare-fun b_lambda!197353 () Bool)

(assert (=> (not b_lambda!197353) (not bs!1183714)))

(declare-fun t!369269 () Bool)

(declare-fun tb!261205 () Bool)

(assert (=> (and b!4972699 (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369269) tb!261205))

(declare-fun b!4973862 () Bool)

(declare-fun e!3108613 () Bool)

(declare-fun tp!1394576 () Bool)

(assert (=> b!4973862 (= e!3108613 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))))) tp!1394576))))

(declare-fun result!326396 () Bool)

(assert (=> tb!261205 (= result!326396 (and (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837)))) e!3108613))))

(assert (= tb!261205 b!4973862))

(declare-fun m!6002826 () Bool)

(assert (=> b!4973862 m!6002826))

(declare-fun m!6002828 () Bool)

(assert (=> tb!261205 m!6002828))

(assert (=> bs!1183714 t!369269))

(declare-fun b_and!348927 () Bool)

(assert (= b_and!348915 (and (=> t!369269 result!326396) b_and!348927)))

(declare-fun t!369271 () Bool)

(declare-fun tb!261207 () Bool)

(assert (=> (and b!4973009 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369271) tb!261207))

(declare-fun result!326398 () Bool)

(assert (= result!326398 result!326396))

(assert (=> bs!1183714 t!369271))

(declare-fun b_and!348929 () Bool)

(assert (= b_and!348917 (and (=> t!369271 result!326398) b_and!348929)))

(declare-fun t!369273 () Bool)

(declare-fun tb!261209 () Bool)

(assert (=> (and b!4973824 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369273) tb!261209))

(declare-fun result!326400 () Bool)

(assert (= result!326400 result!326396))

(assert (=> bs!1183714 t!369273))

(declare-fun b_and!348931 () Bool)

(assert (= b_and!348919 (and (=> t!369273 result!326400) b_and!348931)))

(declare-fun b_lambda!197355 () Bool)

(assert (=> (not b_lambda!197355) (not bs!1183714)))

(assert (=> bs!1183714 t!369247))

(declare-fun b_and!348933 () Bool)

(assert (= b_and!348921 (and (=> t!369247 result!326372) b_and!348933)))

(assert (=> bs!1183714 t!369249))

(declare-fun b_and!348935 () Bool)

(assert (= b_and!348923 (and (=> t!369249 result!326374) b_and!348935)))

(assert (=> bs!1183714 t!369257))

(declare-fun b_and!348937 () Bool)

(assert (= b_and!348925 (and (=> t!369257 result!326384) b_and!348937)))

(assert (=> bs!1183714 m!6001574))

(assert (=> bs!1183714 m!6002766))

(declare-fun m!6002830 () Bool)

(assert (=> bs!1183714 m!6002830))

(assert (=> bs!1183714 m!6002766))

(assert (=> bs!1183714 m!6002830))

(declare-fun m!6002832 () Bool)

(assert (=> bs!1183714 m!6002832))

(assert (=> d!1601525 d!1601551))

(declare-fun b_lambda!197343 () Bool)

(assert (= b_lambda!197329 (or (and b!4972699 b_free!132851) (and b!4973009 b_free!132859 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197343)))

(declare-fun b_lambda!197345 () Bool)

(assert (= b_lambda!197331 (or (and b!4972699 b_free!132851) (and b!4973009 b_free!132859 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197345)))

(declare-fun b_lambda!197347 () Bool)

(assert (= b_lambda!197333 (or (and b!4972699 b_free!132851) (and b!4973009 b_free!132859 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197347)))

(check-sat (not b!4973566) (not tb!261143) (not b_next!133659) b_and!348935 (not b!4973820) (not d!1601401) (not b!4973856) (not b!4973498) (not b!4973250) (not b!4973847) (not b!4973211) (not b!4973257) (not b!4973695) (not b!4973840) (not d!1601407) (not b!4973488) (not b!4973563) (not b!4973354) (not b!4973482) (not b!4973861) (not bm!346850) (not b!4973766) (not b!4973860) (not d!1601307) (not b!4973221) (not b!4973832) (not b!4973338) (not d!1601329) (not b!4973024) (not d!1601545) (not d!1601499) (not b_lambda!197349) (not b!4973649) (not bm!346887) (not d!1601523) (not b!4973355) (not b!4973481) (not d!1601525) (not d!1601543) (not b!4973491) (not b!4973632) (not d!1601507) (not b!4973827) (not b!4973549) (not b!4973213) (not b!4973214) (not d!1601531) (not b!4973567) (not d!1601429) (not d!1601281) (not b!4973848) (not b!4973701) (not d!1601419) (not d!1601415) (not b!4973580) (not b!4973764) (not b!4973797) b_and!348937 (not b!4973553) (not b!4973330) (not b_lambda!197343) (not d!1601465) (not b!4973758) (not b!4973744) (not b!4973648) (not b!4973839) (not d!1601275) (not b!4973208) (not b_next!133641) (not b!4973835) (not d!1601533) (not b!4973858) (not b!4973844) (not b!4973761) (not b!4973353) (not b!4973763) (not d!1601271) (not d!1601291) (not b!4973836) (not b!4973314) (not d!1601305) (not tb!261183) (not bm!346884) (not tb!261199) (not b!4973693) (not b!4973562) (not b!4973834) (not b!4973746) (not b_lambda!197285) (not d!1601479) (not b!4973789) b_and!348933 (not b!4973859) (not b!4973808) (not tb!261205) (not b!4973828) (not b!4973207) (not b!4973357) (not b!4973552) (not b!4973831) (not b!4973561) (not d!1601455) (not bs!1183712) (not b!4973387) (not b!4973352) (not b!4973643) (not d!1601535) (not b!4973210) (not b_lambda!197289) (not b!4973251) (not b!4973702) (not b!4973544) (not b!4973703) (not b_lambda!197355) (not d!1601241) (not b!4973799) (not b!4973830) (not b_lambda!197347) (not b!4973857) (not b!4973854) (not b!4972996) (not bm!346882) (not b!4973303) (not b!4973852) (not bm!346886) (not b!4973548) (not b!4973843) (not b!4973268) (not d!1601337) (not b!4973109) (not b!4973568) (not bm!346880) (not b!4973692) (not b!4973556) (not b_lambda!197337) (not b!4973215) b_and!348927 (not b!4973500) (not b!4973497) (not b!4973367) (not b!4973334) (not b!4973711) (not bm!346862) (not b!4973697) (not b!4973700) (not b!4973571) (not b!4973647) (not b!4973823) (not b!4973542) (not b!4973337) (not d!1601243) (not b!4973650) (not b!4973849) (not b_next!133657) (not b!4973681) tp_is_empty!36347 (not b!4973260) (not bm!346863) (not b!4973805) (not bs!1183714) (not d!1601423) (not b!4973336) (not bm!346881) (not b!4973331) (not b!4973796) (not b!4973349) (not d!1601297) (not b!4973547) (not b!4973490) (not b_next!133643) (not b_next!133649) (not d!1601505) (not b!4973256) (not b!4973252) (not b!4973356) (not b!4973795) (not b_lambda!197351) (not b!4973366) (not b_lambda!197345) (not b!4973760) (not b_lambda!197341) (not b_lambda!197339) (not d!1601277) (not b!4973842) (not b!4973540) (not b!4973209) (not b!4973557) (not b!4973846) (not d!1601491) (not b!4973332) (not d!1601333) (not d!1601245) (not b!4973707) (not b!4973351) (not tb!261139) (not bm!346855) (not b!4973487) (not b!4973853) (not b!4973569) (not b!4973489) (not d!1601529) (not b!4973486) (not b!4973642) (not b!4973297) (not b!4973826) (not d!1601541) (not d!1601321) (not b!4973698) (not b!4973570) (not b!4973821) (not d!1601537) (not b!4973851) (not tb!261187) (not b!4973785) (not d!1601301) (not b!4973543) (not b!4973752) (not bm!346885) (not b!4973333) (not b!4973708) (not b!4973677) (not b!4973798) (not d!1601517) (not b!4973855) (not b!4973373) (not b!4973822) (not bm!346883) (not bm!346890) (not b_lambda!197353) (not b!4973838) (not b!4973862) b_and!348931 (not b!4973850) (not b_next!133651) b_and!348929 (not d!1601313) (not bm!346854) (not b!4973541) (not b!4973484) (not b!4973802) (not b!4973483) (not bs!1183713) (not b!4973645) (not b!4973545) (not d!1601283) (not b!4973745) (not bm!346861) (not d!1601483) (not d!1601519) (not d!1601485) (not b!4973298) (not d!1601493) (not d!1601451) (not d!1601433) (not bm!346849) (not b!4973646))
(check-sat b_and!348937 (not b_next!133641) b_and!348933 b_and!348927 (not b_next!133657) (not b_next!133659) b_and!348935 (not b_next!133643) (not b_next!133649) b_and!348929 b_and!348931 (not b_next!133651))
(get-model)

(declare-fun b_lambda!197357 () Bool)

(assert (= b_lambda!197351 (or (and b!4972699 b_free!132851) (and b!4973009 b_free!132859 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197357)))

(declare-fun b_lambda!197359 () Bool)

(assert (= b_lambda!197353 (or (and b!4972699 b_free!132853) (and b!4973009 b_free!132861 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132869 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197359)))

(declare-fun b_lambda!197361 () Bool)

(assert (= b_lambda!197355 (or (and b!4972699 b_free!132851) (and b!4973009 b_free!132859 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197361)))

(declare-fun b_lambda!197363 () Bool)

(assert (= b_lambda!197349 (or (and b!4972699 b_free!132853) (and b!4973009 b_free!132861 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132869 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197363)))

(check-sat (not b!4973566) (not tb!261143) (not b_next!133659) (not b!4973820) (not d!1601401) (not b!4973856) (not b_lambda!197361) b_and!348935 (not b!4973498) (not b!4973250) (not b!4973847) (not b!4973211) (not b!4973257) (not b!4973695) (not b!4973840) (not d!1601407) (not b!4973488) (not b!4973563) (not b!4973354) (not b!4973482) (not b!4973861) (not d!1601499) (not bm!346850) (not b!4973766) (not b!4973860) (not d!1601307) (not b!4973221) (not b!4973832) (not b!4973338) (not d!1601329) (not b!4973024) (not d!1601545) (not b!4973649) (not bm!346887) (not d!1601523) (not b!4973355) (not b!4973481) (not d!1601525) (not d!1601543) (not b!4973491) (not b!4973632) (not d!1601507) (not b!4973827) (not b!4973549) (not b!4973213) (not b!4973214) (not d!1601531) (not b!4973567) (not d!1601429) (not d!1601281) (not b!4973848) (not b!4973701) (not d!1601419) (not b_lambda!197359) (not d!1601415) (not b!4973580) (not b!4973764) (not b!4973797) b_and!348937 (not b!4973553) (not b!4973330) (not b_lambda!197343) (not d!1601465) (not b!4973758) (not b!4973744) (not b!4973648) (not b!4973839) (not d!1601275) (not b!4973208) (not b_next!133641) (not b!4973835) (not d!1601533) (not b!4973858) (not b!4973844) (not b!4973761) (not b!4973353) (not b!4973763) (not d!1601271) (not d!1601291) (not b!4973836) (not b!4973314) (not d!1601305) (not tb!261183) (not bm!346884) (not tb!261199) (not b!4973693) (not b!4973562) (not b!4973834) (not b!4973746) (not b_lambda!197285) (not d!1601479) (not b!4973789) b_and!348933 (not b!4973859) (not b!4973808) (not tb!261205) (not b!4973828) (not b!4973207) (not b!4973357) (not b!4973552) (not b!4973831) (not b!4973561) (not d!1601455) (not bs!1183712) (not b!4973387) (not b!4973352) (not b!4973643) (not d!1601535) (not b!4973210) (not b_lambda!197289) (not b!4973251) (not b!4973702) (not b!4973544) (not b!4973703) (not d!1601241) (not b!4973799) (not b_lambda!197357) (not b!4973830) (not b_lambda!197347) (not b!4973857) (not b!4973854) (not b!4972996) (not bm!346882) (not b!4973303) (not b!4973852) (not bm!346886) (not b!4973548) (not b!4973843) (not b!4973268) (not d!1601337) (not b!4973109) (not b!4973568) (not bm!346880) (not b!4973692) (not b!4973556) (not b_lambda!197337) (not b!4973215) b_and!348927 (not b!4973500) (not b!4973497) (not b!4973367) (not b!4973334) (not b!4973711) (not bm!346862) (not b!4973697) (not b!4973700) (not b!4973571) (not b!4973647) (not b!4973823) (not b!4973542) (not b!4973337) (not d!1601243) (not b_lambda!197363) (not b!4973650) (not b!4973849) (not b_next!133657) (not b!4973681) tp_is_empty!36347 (not b!4973260) (not bm!346863) (not b!4973805) (not bs!1183714) (not d!1601423) (not b!4973336) (not bm!346881) (not b!4973331) (not b!4973796) (not b!4973349) (not d!1601297) (not b!4973547) (not b!4973490) (not b_next!133643) (not b_next!133649) (not d!1601505) (not b!4973256) (not b!4973252) (not b!4973356) (not b!4973795) (not b!4973366) (not b_lambda!197345) (not b!4973760) (not b_lambda!197341) (not b_lambda!197339) (not d!1601277) (not b!4973842) (not b!4973540) (not b!4973209) (not b!4973557) (not b!4973846) (not d!1601491) (not b!4973332) (not d!1601333) (not d!1601245) (not b!4973707) (not b!4973351) (not tb!261139) (not bm!346855) (not b!4973487) (not b!4973853) (not b!4973569) (not b!4973489) (not d!1601529) (not b!4973486) (not b!4973642) (not b!4973297) (not b!4973826) (not d!1601541) (not d!1601321) (not b!4973698) (not b!4973570) (not b!4973821) (not d!1601537) (not b!4973851) (not tb!261187) (not b!4973785) (not d!1601301) (not b!4973543) (not b!4973752) (not bm!346885) (not b!4973333) (not b!4973708) (not b!4973677) (not b!4973798) (not d!1601517) (not b!4973855) (not b!4973373) (not b!4973822) (not bm!346883) (not bm!346890) (not b!4973838) (not b!4973862) b_and!348931 (not b!4973850) (not b_next!133651) b_and!348929 (not d!1601313) (not bm!346854) (not b!4973541) (not b!4973484) (not b!4973802) (not b!4973483) (not bs!1183713) (not b!4973645) (not b!4973545) (not d!1601283) (not b!4973745) (not bm!346861) (not d!1601483) (not d!1601519) (not d!1601485) (not b!4973298) (not d!1601493) (not d!1601451) (not d!1601433) (not bm!346849) (not b!4973646))
(check-sat b_and!348937 (not b_next!133641) b_and!348933 b_and!348927 (not b_next!133657) (not b_next!133659) b_and!348935 (not b_next!133643) (not b_next!133649) b_and!348929 b_and!348931 (not b_next!133651))
(get-model)

(declare-fun d!1601563 () Bool)

(assert (=> d!1601563 (= (get!19958 lt!2054048) (v!50458 lt!2054048))))

(assert (=> b!4973355 d!1601563))

(declare-fun b!4973893 () Bool)

(declare-fun e!3108630 () Bool)

(declare-fun e!3108631 () Bool)

(assert (=> b!4973893 (= e!3108630 e!3108631)))

(declare-fun res!2123298 () Bool)

(assert (=> b!4973893 (=> (not res!2123298) (not e!3108631))))

(declare-fun lt!2054307 () Option!14463)

(assert (=> b!4973893 (= res!2123298 (isDefined!11376 lt!2054307))))

(declare-fun b!4973894 () Bool)

(declare-fun res!2123301 () Bool)

(assert (=> b!4973894 (=> (not res!2123301) (not e!3108631))))

(assert (=> b!4973894 (= res!2123301 (= (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054307)))) (originalCharacters!8679 (_1!34412 (get!19957 lt!2054307)))))))

(declare-fun call!346905 () Option!14463)

(declare-fun bm!346900 () Bool)

(assert (=> bm!346900 (= call!346905 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 (t!369197 rulesArg!259))) (list!18383 input!1342)))))

(declare-fun b!4973896 () Bool)

(declare-fun res!2123304 () Bool)

(assert (=> b!4973896 (=> (not res!2123304) (not e!3108631))))

(assert (=> b!4973896 (= res!2123304 (matchR!6643 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054307)))) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054307))))))))

(declare-fun b!4973897 () Bool)

(declare-fun res!2123302 () Bool)

(assert (=> b!4973897 (=> (not res!2123302) (not e!3108631))))

(assert (=> b!4973897 (= res!2123302 (< (size!38097 (_2!34412 (get!19957 lt!2054307))) (size!38097 (list!18383 input!1342))))))

(declare-fun b!4973898 () Bool)

(declare-fun res!2123300 () Bool)

(assert (=> b!4973898 (=> (not res!2123300) (not e!3108631))))

(assert (=> b!4973898 (= res!2123300 (= (++!12539 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054307)))) (_2!34412 (get!19957 lt!2054307))) (list!18383 input!1342)))))

(declare-fun b!4973899 () Bool)

(declare-fun res!2123299 () Bool)

(assert (=> b!4973899 (=> (not res!2123299) (not e!3108631))))

(assert (=> b!4973899 (= res!2123299 (= (value!268840 (_1!34412 (get!19957 lt!2054307))) (apply!13911 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054307)))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054307)))))))))

(declare-fun b!4973900 () Bool)

(declare-fun e!3108632 () Option!14463)

(declare-fun lt!2054308 () Option!14463)

(declare-fun lt!2054311 () Option!14463)

(assert (=> b!4973900 (= e!3108632 (ite (and ((_ is None!14462) lt!2054308) ((_ is None!14462) lt!2054311)) None!14462 (ite ((_ is None!14462) lt!2054311) lt!2054308 (ite ((_ is None!14462) lt!2054308) lt!2054311 (ite (>= (size!38094 (_1!34412 (v!50457 lt!2054308))) (size!38094 (_1!34412 (v!50457 lt!2054311)))) lt!2054308 lt!2054311)))))))

(assert (=> b!4973900 (= lt!2054308 call!346905)))

(assert (=> b!4973900 (= lt!2054311 (maxPrefix!4667 thiss!15247 (t!369197 (t!369197 (t!369197 rulesArg!259))) (list!18383 input!1342)))))

(declare-fun b!4973901 () Bool)

(assert (=> b!4973901 (= e!3108631 (contains!19545 (t!369197 (t!369197 rulesArg!259)) (rule!11662 (_1!34412 (get!19957 lt!2054307)))))))

(declare-fun b!4973895 () Bool)

(assert (=> b!4973895 (= e!3108632 call!346905)))

(declare-fun d!1601567 () Bool)

(assert (=> d!1601567 e!3108630))

(declare-fun res!2123303 () Bool)

(assert (=> d!1601567 (=> res!2123303 e!3108630)))

(assert (=> d!1601567 (= res!2123303 (isEmpty!30975 lt!2054307))))

(assert (=> d!1601567 (= lt!2054307 e!3108632)))

(declare-fun c!848719 () Bool)

(assert (=> d!1601567 (= c!848719 (and ((_ is Cons!57467) (t!369197 (t!369197 rulesArg!259))) ((_ is Nil!57467) (t!369197 (t!369197 (t!369197 rulesArg!259))))))))

(declare-fun lt!2054309 () Unit!148431)

(declare-fun lt!2054310 () Unit!148431)

(assert (=> d!1601567 (= lt!2054309 lt!2054310)))

(assert (=> d!1601567 (isPrefix!5251 (list!18383 input!1342) (list!18383 input!1342))))

(assert (=> d!1601567 (= lt!2054310 (lemmaIsPrefixRefl!3575 (list!18383 input!1342) (list!18383 input!1342)))))

(assert (=> d!1601567 (rulesValidInductive!3303 thiss!15247 (t!369197 (t!369197 rulesArg!259)))))

(assert (=> d!1601567 (= (maxPrefix!4667 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342)) lt!2054307)))

(assert (= (and d!1601567 c!848719) b!4973895))

(assert (= (and d!1601567 (not c!848719)) b!4973900))

(assert (= (or b!4973895 b!4973900) bm!346900))

(assert (= (and d!1601567 (not res!2123303)) b!4973893))

(assert (= (and b!4973893 res!2123298) b!4973894))

(assert (= (and b!4973894 res!2123301) b!4973897))

(assert (= (and b!4973897 res!2123302) b!4973898))

(assert (= (and b!4973898 res!2123300) b!4973899))

(assert (= (and b!4973899 res!2123299) b!4973896))

(assert (= (and b!4973896 res!2123304) b!4973901))

(declare-fun m!6002906 () Bool)

(assert (=> b!4973893 m!6002906))

(declare-fun m!6002908 () Bool)

(assert (=> b!4973894 m!6002908))

(declare-fun m!6002910 () Bool)

(assert (=> b!4973894 m!6002910))

(assert (=> b!4973894 m!6002910))

(declare-fun m!6002912 () Bool)

(assert (=> b!4973894 m!6002912))

(assert (=> b!4973900 m!6001308))

(declare-fun m!6002914 () Bool)

(assert (=> b!4973900 m!6002914))

(assert (=> bm!346900 m!6001308))

(declare-fun m!6002916 () Bool)

(assert (=> bm!346900 m!6002916))

(assert (=> b!4973897 m!6002908))

(declare-fun m!6002918 () Bool)

(assert (=> b!4973897 m!6002918))

(assert (=> b!4973897 m!6001308))

(assert (=> b!4973897 m!6002036))

(declare-fun m!6002920 () Bool)

(assert (=> d!1601567 m!6002920))

(assert (=> d!1601567 m!6001308))

(assert (=> d!1601567 m!6001308))

(assert (=> d!1601567 m!6002324))

(assert (=> d!1601567 m!6001308))

(assert (=> d!1601567 m!6001308))

(assert (=> d!1601567 m!6002326))

(assert (=> d!1601567 m!6002108))

(assert (=> b!4973901 m!6002908))

(declare-fun m!6002922 () Bool)

(assert (=> b!4973901 m!6002922))

(assert (=> b!4973898 m!6002908))

(assert (=> b!4973898 m!6002910))

(assert (=> b!4973898 m!6002910))

(assert (=> b!4973898 m!6002912))

(assert (=> b!4973898 m!6002912))

(declare-fun m!6002924 () Bool)

(assert (=> b!4973898 m!6002924))

(assert (=> b!4973896 m!6002908))

(assert (=> b!4973896 m!6002910))

(assert (=> b!4973896 m!6002910))

(assert (=> b!4973896 m!6002912))

(assert (=> b!4973896 m!6002912))

(declare-fun m!6002926 () Bool)

(assert (=> b!4973896 m!6002926))

(assert (=> b!4973899 m!6002908))

(declare-fun m!6002928 () Bool)

(assert (=> b!4973899 m!6002928))

(assert (=> b!4973899 m!6002928))

(declare-fun m!6002930 () Bool)

(assert (=> b!4973899 m!6002930))

(assert (=> b!4973355 d!1601567))

(assert (=> b!4973355 d!1601201))

(declare-fun d!1601577 () Bool)

(assert (=> d!1601577 (= (list!18383 (_2!34411 (get!19958 lt!2054048))) (list!18385 (c!848514 (_2!34411 (get!19958 lt!2054048)))))))

(declare-fun bs!1183717 () Bool)

(assert (= bs!1183717 d!1601577))

(declare-fun m!6002932 () Bool)

(assert (=> bs!1183717 m!6002932))

(assert (=> b!4973355 d!1601577))

(declare-fun d!1601579 () Bool)

(assert (=> d!1601579 (= (get!19957 (maxPrefix!4667 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342))) (v!50457 (maxPrefix!4667 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342))))))

(assert (=> b!4973355 d!1601579))

(declare-fun d!1601581 () Bool)

(assert (=> d!1601581 (= (get!19957 lt!2054115) (v!50457 lt!2054115))))

(assert (=> b!4973489 d!1601581))

(declare-fun d!1601583 () Bool)

(assert (=> d!1601583 (= (apply!13911 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054115))))) (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054115))))))))

(declare-fun b_lambda!197373 () Bool)

(assert (=> (not b_lambda!197373) (not d!1601583)))

(declare-fun tb!261211 () Bool)

(declare-fun t!369275 () Bool)

(assert (=> (and b!4972699 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))))) t!369275) tb!261211))

(declare-fun result!326402 () Bool)

(assert (=> tb!261211 (= result!326402 (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054115)))))))))

(declare-fun m!6002934 () Bool)

(assert (=> tb!261211 m!6002934))

(assert (=> d!1601583 t!369275))

(declare-fun b_and!348939 () Bool)

(assert (= b_and!348933 (and (=> t!369275 result!326402) b_and!348939)))

(declare-fun t!369277 () Bool)

(declare-fun tb!261213 () Bool)

(assert (=> (and b!4973009 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))))) t!369277) tb!261213))

(declare-fun result!326404 () Bool)

(assert (= result!326404 result!326402))

(assert (=> d!1601583 t!369277))

(declare-fun b_and!348941 () Bool)

(assert (= b_and!348935 (and (=> t!369277 result!326404) b_and!348941)))

(declare-fun tb!261215 () Bool)

(declare-fun t!369279 () Bool)

(assert (=> (and b!4973824 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))))) t!369279) tb!261215))

(declare-fun result!326406 () Bool)

(assert (= result!326406 result!326402))

(assert (=> d!1601583 t!369279))

(declare-fun b_and!348943 () Bool)

(assert (= b_and!348937 (and (=> t!369279 result!326406) b_and!348943)))

(assert (=> d!1601583 m!6002338))

(declare-fun m!6002936 () Bool)

(assert (=> d!1601583 m!6002936))

(assert (=> b!4973489 d!1601583))

(declare-fun d!1601585 () Bool)

(assert (=> d!1601585 (= (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054115)))) (fromListB!2737 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054115)))))))

(declare-fun bs!1183718 () Bool)

(assert (= bs!1183718 d!1601585))

(declare-fun m!6002938 () Bool)

(assert (=> bs!1183718 m!6002938))

(assert (=> b!4973489 d!1601585))

(declare-fun d!1601587 () Bool)

(assert (=> d!1601587 (= (isEmpty!30977 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))) ((_ is Nil!57466) (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))))))

(assert (=> b!4973708 d!1601587))

(declare-fun d!1601589 () Bool)

(assert (=> d!1601589 (= (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))) (t!369196 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))

(assert (=> b!4973708 d!1601589))

(declare-fun b!4973914 () Bool)

(declare-fun e!3108642 () Bool)

(assert (=> b!4973914 (= e!3108642 (= (head!10675 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))) (c!848513 (derivativeStep!3929 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))))))))

(declare-fun b!4973915 () Bool)

(declare-fun e!3108643 () Bool)

(assert (=> b!4973915 (= e!3108643 (matchR!6643 (derivativeStep!3929 (derivativeStep!3929 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))) (head!10675 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))) (tail!9808 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))))

(declare-fun b!4973916 () Bool)

(declare-fun e!3108645 () Bool)

(assert (=> b!4973916 (= e!3108645 (not (= (head!10675 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))) (c!848513 (derivativeStep!3929 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))))))

(declare-fun b!4973917 () Bool)

(declare-fun e!3108644 () Bool)

(assert (=> b!4973917 (= e!3108644 e!3108645)))

(declare-fun res!2123314 () Bool)

(assert (=> b!4973917 (=> res!2123314 e!3108645)))

(declare-fun call!346906 () Bool)

(assert (=> b!4973917 (= res!2123314 call!346906)))

(declare-fun b!4973919 () Bool)

(declare-fun e!3108646 () Bool)

(declare-fun lt!2054313 () Bool)

(assert (=> b!4973919 (= e!3108646 (= lt!2054313 call!346906))))

(declare-fun b!4973920 () Bool)

(declare-fun res!2123313 () Bool)

(assert (=> b!4973920 (=> (not res!2123313) (not e!3108642))))

(assert (=> b!4973920 (= res!2123313 (isEmpty!30977 (tail!9808 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))))

(declare-fun b!4973921 () Bool)

(declare-fun res!2123310 () Bool)

(assert (=> b!4973921 (=> res!2123310 e!3108645)))

(assert (=> b!4973921 (= res!2123310 (not (isEmpty!30977 (tail!9808 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))))))))

(declare-fun b!4973922 () Bool)

(declare-fun res!2123311 () Bool)

(declare-fun e!3108647 () Bool)

(assert (=> b!4973922 (=> res!2123311 e!3108647)))

(assert (=> b!4973922 (= res!2123311 e!3108642)))

(declare-fun res!2123307 () Bool)

(assert (=> b!4973922 (=> (not res!2123307) (not e!3108642))))

(assert (=> b!4973922 (= res!2123307 lt!2054313)))

(declare-fun b!4973923 () Bool)

(declare-fun res!2123308 () Bool)

(assert (=> b!4973923 (=> res!2123308 e!3108647)))

(assert (=> b!4973923 (= res!2123308 (not ((_ is ElementMatch!13633) (derivativeStep!3929 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))))))))

(declare-fun e!3108641 () Bool)

(assert (=> b!4973923 (= e!3108641 e!3108647)))

(declare-fun b!4973924 () Bool)

(assert (=> b!4973924 (= e!3108643 (nullable!4627 (derivativeStep!3929 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))))

(declare-fun d!1601591 () Bool)

(assert (=> d!1601591 e!3108646))

(declare-fun c!848725 () Bool)

(assert (=> d!1601591 (= c!848725 ((_ is EmptyExpr!13633) (derivativeStep!3929 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))))

(assert (=> d!1601591 (= lt!2054313 e!3108643)))

(declare-fun c!848726 () Bool)

(assert (=> d!1601591 (= c!848726 (isEmpty!30977 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))))))

(assert (=> d!1601591 (validRegex!5976 (derivativeStep!3929 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))))))

(assert (=> d!1601591 (= (matchR!6643 (derivativeStep!3929 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))) (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))) lt!2054313)))

(declare-fun b!4973918 () Bool)

(assert (=> b!4973918 (= e!3108646 e!3108641)))

(declare-fun c!848727 () Bool)

(assert (=> b!4973918 (= c!848727 ((_ is EmptyLang!13633) (derivativeStep!3929 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))))

(declare-fun b!4973925 () Bool)

(assert (=> b!4973925 (= e!3108647 e!3108644)))

(declare-fun res!2123309 () Bool)

(assert (=> b!4973925 (=> (not res!2123309) (not e!3108644))))

(assert (=> b!4973925 (= res!2123309 (not lt!2054313))))

(declare-fun b!4973926 () Bool)

(assert (=> b!4973926 (= e!3108641 (not lt!2054313))))

(declare-fun b!4973927 () Bool)

(declare-fun res!2123312 () Bool)

(assert (=> b!4973927 (=> (not res!2123312) (not e!3108642))))

(assert (=> b!4973927 (= res!2123312 (not call!346906))))

(declare-fun bm!346901 () Bool)

(assert (=> bm!346901 (= call!346906 (isEmpty!30977 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))))))

(assert (= (and d!1601591 c!848726) b!4973924))

(assert (= (and d!1601591 (not c!848726)) b!4973915))

(assert (= (and d!1601591 c!848725) b!4973919))

(assert (= (and d!1601591 (not c!848725)) b!4973918))

(assert (= (and b!4973918 c!848727) b!4973926))

(assert (= (and b!4973918 (not c!848727)) b!4973923))

(assert (= (and b!4973923 (not res!2123308)) b!4973922))

(assert (= (and b!4973922 res!2123307) b!4973927))

(assert (= (and b!4973927 res!2123312) b!4973920))

(assert (= (and b!4973920 res!2123313) b!4973914))

(assert (= (and b!4973922 (not res!2123311)) b!4973925))

(assert (= (and b!4973925 res!2123309) b!4973917))

(assert (= (and b!4973917 (not res!2123314)) b!4973921))

(assert (= (and b!4973921 (not res!2123310)) b!4973916))

(assert (= (or b!4973919 b!4973917 b!4973927) bm!346901))

(assert (=> b!4973924 m!6001930))

(declare-fun m!6002940 () Bool)

(assert (=> b!4973924 m!6002940))

(assert (=> b!4973920 m!6001924))

(declare-fun m!6002942 () Bool)

(assert (=> b!4973920 m!6002942))

(assert (=> b!4973920 m!6002942))

(declare-fun m!6002944 () Bool)

(assert (=> b!4973920 m!6002944))

(assert (=> b!4973916 m!6001924))

(declare-fun m!6002946 () Bool)

(assert (=> b!4973916 m!6002946))

(assert (=> b!4973915 m!6001924))

(assert (=> b!4973915 m!6002946))

(assert (=> b!4973915 m!6001930))

(assert (=> b!4973915 m!6002946))

(declare-fun m!6002948 () Bool)

(assert (=> b!4973915 m!6002948))

(assert (=> b!4973915 m!6001924))

(assert (=> b!4973915 m!6002942))

(assert (=> b!4973915 m!6002948))

(assert (=> b!4973915 m!6002942))

(declare-fun m!6002950 () Bool)

(assert (=> b!4973915 m!6002950))

(assert (=> d!1601591 m!6001924))

(assert (=> d!1601591 m!6001926))

(assert (=> d!1601591 m!6001930))

(declare-fun m!6002952 () Bool)

(assert (=> d!1601591 m!6002952))

(assert (=> b!4973914 m!6001924))

(assert (=> b!4973914 m!6002946))

(assert (=> bm!346901 m!6001924))

(assert (=> bm!346901 m!6001926))

(assert (=> b!4973921 m!6001924))

(assert (=> b!4973921 m!6002942))

(assert (=> b!4973921 m!6002942))

(assert (=> b!4973921 m!6002944))

(assert (=> b!4973251 d!1601591))

(declare-fun b!4973959 () Bool)

(declare-fun e!3108667 () Regex!13633)

(declare-fun call!346916 () Regex!13633)

(declare-fun call!346917 () Regex!13633)

(assert (=> b!4973959 (= e!3108667 (Union!13633 call!346916 call!346917))))

(declare-fun b!4973960 () Bool)

(declare-fun e!3108666 () Regex!13633)

(declare-fun call!346915 () Regex!13633)

(assert (=> b!4973960 (= e!3108666 (Union!13633 (Concat!22344 call!346915 (regTwo!27778 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))) EmptyLang!13633))))

(declare-fun b!4973961 () Bool)

(declare-fun e!3108663 () Regex!13633)

(declare-fun call!346918 () Regex!13633)

(assert (=> b!4973961 (= e!3108663 (Concat!22344 call!346918 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))))

(declare-fun b!4973963 () Bool)

(declare-fun e!3108665 () Regex!13633)

(declare-fun e!3108664 () Regex!13633)

(assert (=> b!4973963 (= e!3108665 e!3108664)))

(declare-fun c!848740 () Bool)

(assert (=> b!4973963 (= c!848740 ((_ is ElementMatch!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))))

(declare-fun b!4973964 () Bool)

(declare-fun c!848742 () Bool)

(assert (=> b!4973964 (= c!848742 (nullable!4627 (regOne!27778 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))))

(assert (=> b!4973964 (= e!3108663 e!3108666)))

(declare-fun bm!346910 () Bool)

(assert (=> bm!346910 (= call!346918 call!346917)))

(declare-fun d!1601593 () Bool)

(declare-fun lt!2054316 () Regex!13633)

(assert (=> d!1601593 (validRegex!5976 lt!2054316)))

(assert (=> d!1601593 (= lt!2054316 e!3108665)))

(declare-fun c!848743 () Bool)

(assert (=> d!1601593 (= c!848743 (or ((_ is EmptyExpr!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) ((_ is EmptyLang!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))))

(assert (=> d!1601593 (validRegex!5976 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))

(assert (=> d!1601593 (= (derivativeStep!3929 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))) lt!2054316)))

(declare-fun b!4973962 () Bool)

(assert (=> b!4973962 (= e!3108665 EmptyLang!13633)))

(declare-fun b!4973965 () Bool)

(assert (=> b!4973965 (= e!3108666 (Union!13633 (Concat!22344 call!346915 (regTwo!27778 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))) call!346916))))

(declare-fun bm!346911 () Bool)

(assert (=> bm!346911 (= call!346915 call!346918)))

(declare-fun c!848744 () Bool)

(declare-fun bm!346912 () Bool)

(declare-fun c!848741 () Bool)

(assert (=> bm!346912 (= call!346917 (derivativeStep!3929 (ite c!848744 (regTwo!27779 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (ite c!848741 (reg!13962 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (regOne!27778 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun b!4973966 () Bool)

(assert (=> b!4973966 (= c!848744 ((_ is Union!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))))

(assert (=> b!4973966 (= e!3108664 e!3108667)))

(declare-fun b!4973967 () Bool)

(assert (=> b!4973967 (= e!3108664 (ite (= (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) (c!848513 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))) EmptyExpr!13633 EmptyLang!13633))))

(declare-fun bm!346913 () Bool)

(assert (=> bm!346913 (= call!346916 (derivativeStep!3929 (ite c!848744 (regOne!27779 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (regTwo!27778 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun b!4973968 () Bool)

(assert (=> b!4973968 (= e!3108667 e!3108663)))

(assert (=> b!4973968 (= c!848741 ((_ is Star!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))))

(assert (= (and d!1601593 c!848743) b!4973962))

(assert (= (and d!1601593 (not c!848743)) b!4973963))

(assert (= (and b!4973963 c!848740) b!4973967))

(assert (= (and b!4973963 (not c!848740)) b!4973966))

(assert (= (and b!4973966 c!848744) b!4973959))

(assert (= (and b!4973966 (not c!848744)) b!4973968))

(assert (= (and b!4973968 c!848741) b!4973961))

(assert (= (and b!4973968 (not c!848741)) b!4973964))

(assert (= (and b!4973964 c!848742) b!4973965))

(assert (= (and b!4973964 (not c!848742)) b!4973960))

(assert (= (or b!4973965 b!4973960) bm!346911))

(assert (= (or b!4973961 bm!346911) bm!346910))

(assert (= (or b!4973959 bm!346910) bm!346912))

(assert (= (or b!4973959 b!4973965) bm!346913))

(declare-fun m!6002978 () Bool)

(assert (=> b!4973964 m!6002978))

(declare-fun m!6002980 () Bool)

(assert (=> d!1601593 m!6002980))

(assert (=> d!1601593 m!6001936))

(assert (=> bm!346912 m!6001928))

(declare-fun m!6002982 () Bool)

(assert (=> bm!346912 m!6002982))

(assert (=> bm!346913 m!6001928))

(declare-fun m!6002984 () Bool)

(assert (=> bm!346913 m!6002984))

(assert (=> b!4973251 d!1601593))

(declare-fun d!1601605 () Bool)

(assert (=> d!1601605 (= (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) (h!63914 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))

(assert (=> b!4973251 d!1601605))

(declare-fun d!1601607 () Bool)

(assert (=> d!1601607 (= (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))

(assert (=> b!4973251 d!1601607))

(declare-fun b!4973979 () Bool)

(declare-fun res!2123324 () Bool)

(declare-fun e!3108676 () Bool)

(assert (=> b!4973979 (=> res!2123324 e!3108676)))

(assert (=> b!4973979 (= res!2123324 (not ((_ is IntegerValue!26132) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837)))))))

(declare-fun e!3108675 () Bool)

(assert (=> b!4973979 (= e!3108675 e!3108676)))

(declare-fun b!4973980 () Bool)

(declare-fun inv!17 (TokenValue!8710) Bool)

(assert (=> b!4973980 (= e!3108675 (inv!17 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))))))

(declare-fun b!4973981 () Bool)

(declare-fun inv!15 (TokenValue!8710) Bool)

(assert (=> b!4973981 (= e!3108676 (inv!15 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))))))

(declare-fun b!4973982 () Bool)

(declare-fun e!3108674 () Bool)

(assert (=> b!4973982 (= e!3108674 e!3108675)))

(declare-fun c!848750 () Bool)

(assert (=> b!4973982 (= c!848750 ((_ is IntegerValue!26131) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))))))

(declare-fun d!1601609 () Bool)

(declare-fun c!848749 () Bool)

(assert (=> d!1601609 (= c!848749 ((_ is IntegerValue!26130) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))))))

(assert (=> d!1601609 (= (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))) e!3108674)))

(declare-fun b!4973983 () Bool)

(declare-fun inv!16 (TokenValue!8710) Bool)

(assert (=> b!4973983 (= e!3108674 (inv!16 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))))))

(assert (= (and d!1601609 c!848749) b!4973983))

(assert (= (and d!1601609 (not c!848749)) b!4973982))

(assert (= (and b!4973982 c!848750) b!4973980))

(assert (= (and b!4973982 (not c!848750)) b!4973979))

(assert (= (and b!4973979 (not res!2123324)) b!4973981))

(declare-fun m!6002986 () Bool)

(assert (=> b!4973980 m!6002986))

(declare-fun m!6002988 () Bool)

(assert (=> b!4973981 m!6002988))

(declare-fun m!6002990 () Bool)

(assert (=> b!4973983 m!6002990))

(assert (=> tb!261183 d!1601609))

(declare-fun b!4973984 () Bool)

(declare-fun e!3108677 () List!57590)

(assert (=> b!4973984 (= e!3108677 (_2!34412 (get!19957 lt!2054011)))))

(declare-fun d!1601611 () Bool)

(declare-fun e!3108678 () Bool)

(assert (=> d!1601611 e!3108678))

(declare-fun res!2123325 () Bool)

(assert (=> d!1601611 (=> (not res!2123325) (not e!3108678))))

(declare-fun lt!2054317 () List!57590)

(assert (=> d!1601611 (= res!2123325 (= (content!10197 lt!2054317) ((_ map or) (content!10197 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011))))) (content!10197 (_2!34412 (get!19957 lt!2054011))))))))

(assert (=> d!1601611 (= lt!2054317 e!3108677)))

(declare-fun c!848751 () Bool)

(assert (=> d!1601611 (= c!848751 ((_ is Nil!57466) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011))))))))

(assert (=> d!1601611 (= (++!12539 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011)))) (_2!34412 (get!19957 lt!2054011))) lt!2054317)))

(declare-fun b!4973987 () Bool)

(assert (=> b!4973987 (= e!3108678 (or (not (= (_2!34412 (get!19957 lt!2054011)) Nil!57466)) (= lt!2054317 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011)))))))))

(declare-fun b!4973986 () Bool)

(declare-fun res!2123326 () Bool)

(assert (=> b!4973986 (=> (not res!2123326) (not e!3108678))))

(assert (=> b!4973986 (= res!2123326 (= (size!38097 lt!2054317) (+ (size!38097 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011))))) (size!38097 (_2!34412 (get!19957 lt!2054011))))))))

(declare-fun b!4973985 () Bool)

(assert (=> b!4973985 (= e!3108677 (Cons!57466 (h!63914 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011))))) (++!12539 (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011))))) (_2!34412 (get!19957 lt!2054011)))))))

(assert (= (and d!1601611 c!848751) b!4973984))

(assert (= (and d!1601611 (not c!848751)) b!4973985))

(assert (= (and d!1601611 res!2123325) b!4973986))

(assert (= (and b!4973986 res!2123326) b!4973987))

(declare-fun m!6002992 () Bool)

(assert (=> d!1601611 m!6002992))

(assert (=> d!1601611 m!6001898))

(declare-fun m!6002994 () Bool)

(assert (=> d!1601611 m!6002994))

(declare-fun m!6002996 () Bool)

(assert (=> d!1601611 m!6002996))

(declare-fun m!6002998 () Bool)

(assert (=> b!4973986 m!6002998))

(assert (=> b!4973986 m!6001898))

(declare-fun m!6003000 () Bool)

(assert (=> b!4973986 m!6003000))

(assert (=> b!4973986 m!6001892))

(declare-fun m!6003002 () Bool)

(assert (=> b!4973985 m!6003002))

(assert (=> b!4973211 d!1601611))

(declare-fun d!1601613 () Bool)

(assert (=> d!1601613 (= (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011)))) (list!18385 (c!848514 (charsOf!5444 (_1!34412 (get!19957 lt!2054011))))))))

(declare-fun bs!1183722 () Bool)

(assert (= bs!1183722 d!1601613))

(declare-fun m!6003004 () Bool)

(assert (=> bs!1183722 m!6003004))

(assert (=> b!4973211 d!1601613))

(declare-fun d!1601615 () Bool)

(declare-fun lt!2054318 () BalanceConc!29734)

(assert (=> d!1601615 (= (list!18383 lt!2054318) (originalCharacters!8679 (_1!34412 (get!19957 lt!2054011))))))

(assert (=> d!1601615 (= lt!2054318 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011))))) (value!268840 (_1!34412 (get!19957 lt!2054011)))))))

(assert (=> d!1601615 (= (charsOf!5444 (_1!34412 (get!19957 lt!2054011))) lt!2054318)))

(declare-fun b_lambda!197375 () Bool)

(assert (=> (not b_lambda!197375) (not d!1601615)))

(declare-fun tb!261217 () Bool)

(declare-fun t!369281 () Bool)

(assert (=> (and b!4972699 (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011)))))) t!369281) tb!261217))

(declare-fun b!4973988 () Bool)

(declare-fun e!3108679 () Bool)

(declare-fun tp!1394577 () Bool)

(assert (=> b!4973988 (= e!3108679 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011))))) (value!268840 (_1!34412 (get!19957 lt!2054011)))))) tp!1394577))))

(declare-fun result!326408 () Bool)

(assert (=> tb!261217 (= result!326408 (and (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011))))) (value!268840 (_1!34412 (get!19957 lt!2054011))))) e!3108679))))

(assert (= tb!261217 b!4973988))

(declare-fun m!6003006 () Bool)

(assert (=> b!4973988 m!6003006))

(declare-fun m!6003008 () Bool)

(assert (=> tb!261217 m!6003008))

(assert (=> d!1601615 t!369281))

(declare-fun b_and!348945 () Bool)

(assert (= b_and!348927 (and (=> t!369281 result!326408) b_and!348945)))

(declare-fun t!369283 () Bool)

(declare-fun tb!261219 () Bool)

(assert (=> (and b!4973009 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011)))))) t!369283) tb!261219))

(declare-fun result!326410 () Bool)

(assert (= result!326410 result!326408))

(assert (=> d!1601615 t!369283))

(declare-fun b_and!348947 () Bool)

(assert (= b_and!348929 (and (=> t!369283 result!326410) b_and!348947)))

(declare-fun t!369285 () Bool)

(declare-fun tb!261221 () Bool)

(assert (=> (and b!4973824 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011)))))) t!369285) tb!261221))

(declare-fun result!326412 () Bool)

(assert (= result!326412 result!326408))

(assert (=> d!1601615 t!369285))

(declare-fun b_and!348949 () Bool)

(assert (= b_and!348931 (and (=> t!369285 result!326412) b_and!348949)))

(declare-fun m!6003010 () Bool)

(assert (=> d!1601615 m!6003010))

(declare-fun m!6003012 () Bool)

(assert (=> d!1601615 m!6003012))

(assert (=> b!4973211 d!1601615))

(declare-fun d!1601617 () Bool)

(assert (=> d!1601617 (= (get!19957 lt!2054011) (v!50457 lt!2054011))))

(assert (=> b!4973211 d!1601617))

(declare-fun d!1601619 () Bool)

(assert (=> d!1601619 (= (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254)))) ((_ is Nil!57466) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254)))))))

(assert (=> b!4973799 d!1601619))

(declare-fun d!1601621 () Bool)

(assert (=> d!1601621 (= (apply!13911 (transformation!8400 (h!63915 (t!369197 rulesArg!259))) (_1!34416 lt!2054258)) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (_1!34416 lt!2054258)))))

(declare-fun b_lambda!197377 () Bool)

(assert (=> (not b_lambda!197377) (not d!1601621)))

(declare-fun t!369287 () Bool)

(declare-fun tb!261223 () Bool)

(assert (=> (and b!4972699 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369287) tb!261223))

(declare-fun result!326414 () Bool)

(assert (=> tb!261223 (= result!326414 (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (_1!34416 lt!2054258))))))

(declare-fun m!6003014 () Bool)

(assert (=> tb!261223 m!6003014))

(assert (=> d!1601621 t!369287))

(declare-fun b_and!348951 () Bool)

(assert (= b_and!348939 (and (=> t!369287 result!326414) b_and!348951)))

(declare-fun t!369289 () Bool)

(declare-fun tb!261225 () Bool)

(assert (=> (and b!4973009 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369289) tb!261225))

(declare-fun result!326416 () Bool)

(assert (= result!326416 result!326414))

(assert (=> d!1601621 t!369289))

(declare-fun b_and!348953 () Bool)

(assert (= b_and!348941 (and (=> t!369289 result!326416) b_and!348953)))

(declare-fun t!369291 () Bool)

(declare-fun tb!261227 () Bool)

(assert (=> (and b!4973824 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369291) tb!261227))

(declare-fun result!326418 () Bool)

(assert (= result!326418 result!326414))

(assert (=> d!1601621 t!369291))

(declare-fun b_and!348955 () Bool)

(assert (= b_and!348943 (and (=> t!369291 result!326418) b_and!348955)))

(declare-fun m!6003016 () Bool)

(assert (=> d!1601621 m!6003016))

(assert (=> b!4973799 d!1601621))

(declare-fun d!1601623 () Bool)

(assert (=> d!1601623 (= (list!18383 (_1!34416 lt!2054258)) (list!18385 (c!848514 (_1!34416 lt!2054258))))))

(declare-fun bs!1183723 () Bool)

(assert (= bs!1183723 d!1601623))

(declare-fun m!6003018 () Bool)

(assert (=> bs!1183723 m!6003018))

(assert (=> b!4973799 d!1601623))

(assert (=> b!4973799 d!1601201))

(declare-fun d!1601625 () Bool)

(declare-fun lt!2054319 () Int)

(assert (=> d!1601625 (= lt!2054319 (size!38097 (list!18383 (_1!34416 lt!2054258))))))

(assert (=> d!1601625 (= lt!2054319 (size!38100 (c!848514 (_1!34416 lt!2054258))))))

(assert (=> d!1601625 (= (size!38098 (_1!34416 lt!2054258)) lt!2054319)))

(declare-fun bs!1183724 () Bool)

(assert (= bs!1183724 d!1601625))

(assert (=> bs!1183724 m!6002738))

(assert (=> bs!1183724 m!6002738))

(declare-fun m!6003020 () Bool)

(assert (=> bs!1183724 m!6003020))

(declare-fun m!6003022 () Bool)

(assert (=> bs!1183724 m!6003022))

(assert (=> b!4973799 d!1601625))

(declare-fun bm!346914 () Bool)

(declare-fun call!346926 () List!57590)

(assert (=> bm!346914 (= call!346926 (tail!9808 lt!2054254))))

(declare-fun b!4973989 () Bool)

(declare-fun e!3108683 () tuple2!62224)

(assert (=> b!4973989 (= e!3108683 (tuple2!62225 Nil!57466 lt!2054254))))

(declare-fun b!4973990 () Bool)

(declare-fun e!3108686 () tuple2!62224)

(declare-fun e!3108681 () tuple2!62224)

(assert (=> b!4973990 (= e!3108686 e!3108681)))

(declare-fun lt!2054324 () tuple2!62224)

(declare-fun call!346922 () tuple2!62224)

(assert (=> b!4973990 (= lt!2054324 call!346922)))

(declare-fun c!848756 () Bool)

(assert (=> b!4973990 (= c!848756 (isEmpty!30977 (_1!34415 lt!2054324)))))

(declare-fun b!4973991 () Bool)

(declare-fun e!3108684 () Bool)

(declare-fun lt!2054325 () tuple2!62224)

(assert (=> b!4973991 (= e!3108684 (>= (size!38097 (_1!34415 lt!2054325)) (size!38097 Nil!57466)))))

(declare-fun bm!346915 () Bool)

(declare-fun call!346920 () Unit!148431)

(assert (=> bm!346915 (= call!346920 (lemmaIsPrefixSameLengthThenSameList!1215 lt!2054254 Nil!57466 lt!2054254))))

(declare-fun b!4973992 () Bool)

(declare-fun e!3108687 () Bool)

(assert (=> b!4973992 (= e!3108687 e!3108684)))

(declare-fun res!2123328 () Bool)

(assert (=> b!4973992 (=> res!2123328 e!3108684)))

(assert (=> b!4973992 (= res!2123328 (isEmpty!30977 (_1!34415 lt!2054325)))))

(declare-fun b!4973993 () Bool)

(declare-fun c!848755 () Bool)

(declare-fun call!346921 () Bool)

(assert (=> b!4973993 (= c!848755 call!346921)))

(declare-fun lt!2054330 () Unit!148431)

(declare-fun lt!2054321 () Unit!148431)

(assert (=> b!4973993 (= lt!2054330 lt!2054321)))

(assert (=> b!4973993 (= lt!2054254 Nil!57466)))

(assert (=> b!4973993 (= lt!2054321 call!346920)))

(declare-fun lt!2054342 () Unit!148431)

(declare-fun lt!2054341 () Unit!148431)

(assert (=> b!4973993 (= lt!2054342 lt!2054341)))

(declare-fun call!346923 () Bool)

(assert (=> b!4973993 call!346923))

(declare-fun call!346925 () Unit!148431)

(assert (=> b!4973993 (= lt!2054341 call!346925)))

(declare-fun e!3108688 () tuple2!62224)

(assert (=> b!4973993 (= e!3108688 e!3108683)))

(declare-fun b!4973994 () Bool)

(declare-fun e!3108682 () tuple2!62224)

(assert (=> b!4973994 (= e!3108682 (tuple2!62225 Nil!57466 lt!2054254))))

(declare-fun b!4973995 () Bool)

(declare-fun e!3108685 () Unit!148431)

(declare-fun Unit!148444 () Unit!148431)

(assert (=> b!4973995 (= e!3108685 Unit!148444)))

(declare-fun bm!346916 () Bool)

(declare-fun call!346924 () C!27516)

(assert (=> bm!346916 (= call!346924 (head!10675 lt!2054254))))

(declare-fun b!4973996 () Bool)

(assert (=> b!4973996 (= e!3108682 e!3108688)))

(declare-fun c!848752 () Bool)

(assert (=> b!4973996 (= c!848752 (= (size!38097 Nil!57466) (size!38097 lt!2054254)))))

(declare-fun b!4973997 () Bool)

(assert (=> b!4973997 (= e!3108681 (tuple2!62225 Nil!57466 lt!2054254))))

(declare-fun bm!346917 () Bool)

(assert (=> bm!346917 (= call!346921 (nullable!4627 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))))

(declare-fun bm!346918 () Bool)

(assert (=> bm!346918 (= call!346925 (lemmaIsPrefixRefl!3575 lt!2054254 lt!2054254))))

(declare-fun bm!346919 () Bool)

(assert (=> bm!346919 (= call!346923 (isPrefix!5251 lt!2054254 lt!2054254))))

(declare-fun b!4973998 () Bool)

(declare-fun c!848757 () Bool)

(assert (=> b!4973998 (= c!848757 call!346921)))

(declare-fun lt!2054340 () Unit!148431)

(declare-fun lt!2054346 () Unit!148431)

(assert (=> b!4973998 (= lt!2054340 lt!2054346)))

(declare-fun lt!2054327 () C!27516)

(declare-fun lt!2054334 () List!57590)

(assert (=> b!4973998 (= (++!12539 (++!12539 Nil!57466 (Cons!57466 lt!2054327 Nil!57466)) lt!2054334) lt!2054254)))

(assert (=> b!4973998 (= lt!2054346 (lemmaMoveElementToOtherListKeepsConcatEq!1452 Nil!57466 lt!2054327 lt!2054334 lt!2054254))))

(assert (=> b!4973998 (= lt!2054334 (tail!9808 lt!2054254))))

(assert (=> b!4973998 (= lt!2054327 (head!10675 lt!2054254))))

(declare-fun lt!2054328 () Unit!148431)

(declare-fun lt!2054338 () Unit!148431)

(assert (=> b!4973998 (= lt!2054328 lt!2054338)))

(assert (=> b!4973998 (isPrefix!5251 (++!12539 Nil!57466 (Cons!57466 (head!10675 (getSuffix!3095 lt!2054254 Nil!57466)) Nil!57466)) lt!2054254)))

(assert (=> b!4973998 (= lt!2054338 (lemmaAddHeadSuffixToPrefixStillPrefix!842 Nil!57466 lt!2054254))))

(declare-fun lt!2054335 () Unit!148431)

(declare-fun lt!2054322 () Unit!148431)

(assert (=> b!4973998 (= lt!2054335 lt!2054322)))

(assert (=> b!4973998 (= lt!2054322 (lemmaAddHeadSuffixToPrefixStillPrefix!842 Nil!57466 lt!2054254))))

(declare-fun lt!2054344 () List!57590)

(assert (=> b!4973998 (= lt!2054344 (++!12539 Nil!57466 (Cons!57466 (head!10675 lt!2054254) Nil!57466)))))

(declare-fun lt!2054345 () Unit!148431)

(assert (=> b!4973998 (= lt!2054345 e!3108685)))

(declare-fun c!848753 () Bool)

(assert (=> b!4973998 (= c!848753 (= (size!38097 Nil!57466) (size!38097 lt!2054254)))))

(declare-fun lt!2054337 () Unit!148431)

(declare-fun lt!2054333 () Unit!148431)

(assert (=> b!4973998 (= lt!2054337 lt!2054333)))

(assert (=> b!4973998 (<= (size!38097 Nil!57466) (size!38097 lt!2054254))))

(assert (=> b!4973998 (= lt!2054333 (lemmaIsPrefixThenSmallerEqSize!768 Nil!57466 lt!2054254))))

(assert (=> b!4973998 (= e!3108688 e!3108686)))

(declare-fun b!4973999 () Bool)

(assert (=> b!4973999 (= e!3108683 (tuple2!62225 Nil!57466 Nil!57466))))

(declare-fun b!4974000 () Bool)

(assert (=> b!4974000 (= e!3108686 call!346922)))

(declare-fun bm!346920 () Bool)

(declare-fun call!346919 () Regex!13633)

(assert (=> bm!346920 (= call!346919 (derivativeStep!3929 (regex!8400 (h!63915 (t!369197 rulesArg!259))) call!346924))))

(declare-fun b!4974001 () Bool)

(assert (=> b!4974001 (= e!3108681 lt!2054324)))

(declare-fun d!1601627 () Bool)

(assert (=> d!1601627 e!3108687))

(declare-fun res!2123327 () Bool)

(assert (=> d!1601627 (=> (not res!2123327) (not e!3108687))))

(assert (=> d!1601627 (= res!2123327 (= (++!12539 (_1!34415 lt!2054325) (_2!34415 lt!2054325)) lt!2054254))))

(assert (=> d!1601627 (= lt!2054325 e!3108682)))

(declare-fun c!848754 () Bool)

(assert (=> d!1601627 (= c!848754 (lostCause!1139 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))))

(declare-fun lt!2054343 () Unit!148431)

(declare-fun Unit!148445 () Unit!148431)

(assert (=> d!1601627 (= lt!2054343 Unit!148445)))

(assert (=> d!1601627 (= (getSuffix!3095 lt!2054254 Nil!57466) lt!2054254)))

(declare-fun lt!2054329 () Unit!148431)

(declare-fun lt!2054336 () Unit!148431)

(assert (=> d!1601627 (= lt!2054329 lt!2054336)))

(declare-fun lt!2054339 () List!57590)

(assert (=> d!1601627 (= lt!2054254 lt!2054339)))

(assert (=> d!1601627 (= lt!2054336 (lemmaSamePrefixThenSameSuffix!2507 Nil!57466 lt!2054254 Nil!57466 lt!2054339 lt!2054254))))

(assert (=> d!1601627 (= lt!2054339 (getSuffix!3095 lt!2054254 Nil!57466))))

(declare-fun lt!2054323 () Unit!148431)

(declare-fun lt!2054332 () Unit!148431)

(assert (=> d!1601627 (= lt!2054323 lt!2054332)))

(assert (=> d!1601627 (isPrefix!5251 Nil!57466 (++!12539 Nil!57466 lt!2054254))))

(assert (=> d!1601627 (= lt!2054332 (lemmaConcatTwoListThenFirstIsPrefix!3353 Nil!57466 lt!2054254))))

(assert (=> d!1601627 (validRegex!5976 (regex!8400 (h!63915 (t!369197 rulesArg!259))))))

(assert (=> d!1601627 (= (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254)) lt!2054325)))

(declare-fun bm!346921 () Bool)

(assert (=> bm!346921 (= call!346922 (findLongestMatchInner!1862 call!346919 lt!2054344 (+ (size!38097 Nil!57466) 1) call!346926 lt!2054254 (size!38097 lt!2054254)))))

(declare-fun b!4974002 () Bool)

(declare-fun Unit!148446 () Unit!148431)

(assert (=> b!4974002 (= e!3108685 Unit!148446)))

(declare-fun lt!2054320 () Unit!148431)

(assert (=> b!4974002 (= lt!2054320 call!346925)))

(assert (=> b!4974002 call!346923))

(declare-fun lt!2054347 () Unit!148431)

(assert (=> b!4974002 (= lt!2054347 lt!2054320)))

(declare-fun lt!2054326 () Unit!148431)

(assert (=> b!4974002 (= lt!2054326 call!346920)))

(assert (=> b!4974002 (= lt!2054254 Nil!57466)))

(declare-fun lt!2054331 () Unit!148431)

(assert (=> b!4974002 (= lt!2054331 lt!2054326)))

(assert (=> b!4974002 false))

(assert (= (and d!1601627 c!848754) b!4973994))

(assert (= (and d!1601627 (not c!848754)) b!4973996))

(assert (= (and b!4973996 c!848752) b!4973993))

(assert (= (and b!4973996 (not c!848752)) b!4973998))

(assert (= (and b!4973993 c!848755) b!4973999))

(assert (= (and b!4973993 (not c!848755)) b!4973989))

(assert (= (and b!4973998 c!848753) b!4974002))

(assert (= (and b!4973998 (not c!848753)) b!4973995))

(assert (= (and b!4973998 c!848757) b!4973990))

(assert (= (and b!4973998 (not c!848757)) b!4974000))

(assert (= (and b!4973990 c!848756) b!4973997))

(assert (= (and b!4973990 (not c!848756)) b!4974001))

(assert (= (or b!4973990 b!4974000) bm!346916))

(assert (= (or b!4973990 b!4974000) bm!346914))

(assert (= (or b!4973990 b!4974000) bm!346920))

(assert (= (or b!4973990 b!4974000) bm!346921))

(assert (= (or b!4973993 b!4974002) bm!346918))

(assert (= (or b!4973993 b!4974002) bm!346915))

(assert (= (or b!4973993 b!4973998) bm!346917))

(assert (= (or b!4973993 b!4974002) bm!346919))

(assert (= (and d!1601627 res!2123327) b!4973992))

(assert (= (and b!4973992 (not res!2123328)) b!4973991))

(declare-fun m!6003024 () Bool)

(assert (=> bm!346914 m!6003024))

(declare-fun m!6003026 () Bool)

(assert (=> d!1601627 m!6003026))

(declare-fun m!6003028 () Bool)

(assert (=> d!1601627 m!6003028))

(declare-fun m!6003030 () Bool)

(assert (=> d!1601627 m!6003030))

(declare-fun m!6003032 () Bool)

(assert (=> d!1601627 m!6003032))

(declare-fun m!6003034 () Bool)

(assert (=> d!1601627 m!6003034))

(declare-fun m!6003036 () Bool)

(assert (=> d!1601627 m!6003036))

(declare-fun m!6003038 () Bool)

(assert (=> d!1601627 m!6003038))

(assert (=> d!1601627 m!6003028))

(declare-fun m!6003040 () Bool)

(assert (=> d!1601627 m!6003040))

(assert (=> bm!346921 m!6002714))

(declare-fun m!6003042 () Bool)

(assert (=> bm!346921 m!6003042))

(declare-fun m!6003044 () Bool)

(assert (=> bm!346916 m!6003044))

(declare-fun m!6003046 () Bool)

(assert (=> b!4973990 m!6003046))

(declare-fun m!6003048 () Bool)

(assert (=> bm!346915 m!6003048))

(declare-fun m!6003050 () Bool)

(assert (=> b!4973991 m!6003050))

(assert (=> b!4973991 m!6001546))

(declare-fun m!6003052 () Bool)

(assert (=> bm!346918 m!6003052))

(declare-fun m!6003054 () Bool)

(assert (=> bm!346917 m!6003054))

(declare-fun m!6003056 () Bool)

(assert (=> b!4973998 m!6003056))

(assert (=> b!4973998 m!6002714))

(assert (=> b!4973998 m!6003036))

(declare-fun m!6003058 () Bool)

(assert (=> b!4973998 m!6003058))

(declare-fun m!6003060 () Bool)

(assert (=> b!4973998 m!6003060))

(declare-fun m!6003062 () Bool)

(assert (=> b!4973998 m!6003062))

(assert (=> b!4973998 m!6003060))

(declare-fun m!6003064 () Bool)

(assert (=> b!4973998 m!6003064))

(assert (=> b!4973998 m!6003044))

(assert (=> b!4973998 m!6003058))

(declare-fun m!6003066 () Bool)

(assert (=> b!4973998 m!6003066))

(assert (=> b!4973998 m!6003024))

(assert (=> b!4973998 m!6001546))

(assert (=> b!4973998 m!6003036))

(declare-fun m!6003068 () Bool)

(assert (=> b!4973998 m!6003068))

(declare-fun m!6003070 () Bool)

(assert (=> b!4973998 m!6003070))

(declare-fun m!6003072 () Bool)

(assert (=> b!4973998 m!6003072))

(declare-fun m!6003074 () Bool)

(assert (=> bm!346919 m!6003074))

(declare-fun m!6003076 () Bool)

(assert (=> bm!346920 m!6003076))

(declare-fun m!6003078 () Bool)

(assert (=> b!4973992 m!6003078))

(assert (=> b!4973799 d!1601627))

(declare-fun d!1601629 () Bool)

(declare-fun e!3108689 () Bool)

(assert (=> d!1601629 e!3108689))

(declare-fun res!2123329 () Bool)

(assert (=> d!1601629 (=> res!2123329 e!3108689)))

(assert (=> d!1601629 (= res!2123329 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254)))))))

(declare-fun lt!2054364 () Unit!148431)

(assert (=> d!1601629 (= lt!2054364 (choose!36715 (regex!8400 (h!63915 (t!369197 rulesArg!259))) lt!2054254))))

(assert (=> d!1601629 (validRegex!5976 (regex!8400 (h!63915 (t!369197 rulesArg!259))))))

(assert (=> d!1601629 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1823 (regex!8400 (h!63915 (t!369197 rulesArg!259))) lt!2054254) lt!2054364)))

(declare-fun b!4974003 () Bool)

(assert (=> b!4974003 (= e!3108689 (matchR!6643 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254)))))))

(assert (= (and d!1601629 (not res!2123329)) b!4974003))

(assert (=> d!1601629 m!6003032))

(declare-fun m!6003080 () Bool)

(assert (=> d!1601629 m!6003080))

(assert (=> d!1601629 m!6002730))

(assert (=> d!1601629 m!6002714))

(assert (=> d!1601629 m!6001546))

(assert (=> d!1601629 m!6001546))

(assert (=> d!1601629 m!6002714))

(assert (=> d!1601629 m!6002716))

(assert (=> b!4974003 m!6001546))

(assert (=> b!4974003 m!6002714))

(assert (=> b!4974003 m!6001546))

(assert (=> b!4974003 m!6002714))

(assert (=> b!4974003 m!6002716))

(assert (=> b!4974003 m!6002718))

(assert (=> b!4973799 d!1601629))

(declare-fun d!1601631 () Bool)

(assert (=> d!1601631 (dynLambda!23221 lambda!247525 (seqFromList!6043 (list!18383 (_1!34416 lt!2054258))))))

(declare-fun lt!2054365 () Unit!148431)

(assert (=> d!1601631 (= lt!2054365 (choose!36714 lambda!247525 (seqFromList!6043 (list!18383 (_1!34416 lt!2054258)))))))

(assert (=> d!1601631 (Forall!1768 lambda!247525)))

(assert (=> d!1601631 (= (ForallOf!1234 lambda!247525 (seqFromList!6043 (list!18383 (_1!34416 lt!2054258)))) lt!2054365)))

(declare-fun b_lambda!197379 () Bool)

(assert (=> (not b_lambda!197379) (not d!1601631)))

(declare-fun bs!1183725 () Bool)

(assert (= bs!1183725 d!1601631))

(assert (=> bs!1183725 m!6002726))

(declare-fun m!6003082 () Bool)

(assert (=> bs!1183725 m!6003082))

(assert (=> bs!1183725 m!6002726))

(declare-fun m!6003084 () Bool)

(assert (=> bs!1183725 m!6003084))

(declare-fun m!6003086 () Bool)

(assert (=> bs!1183725 m!6003086))

(assert (=> b!4973799 d!1601631))

(declare-fun d!1601633 () Bool)

(declare-fun lt!2054366 () Int)

(assert (=> d!1601633 (>= lt!2054366 0)))

(declare-fun e!3108690 () Int)

(assert (=> d!1601633 (= lt!2054366 e!3108690)))

(declare-fun c!848758 () Bool)

(assert (=> d!1601633 (= c!848758 ((_ is Nil!57466) lt!2054254))))

(assert (=> d!1601633 (= (size!38097 lt!2054254) lt!2054366)))

(declare-fun b!4974004 () Bool)

(assert (=> b!4974004 (= e!3108690 0)))

(declare-fun b!4974005 () Bool)

(assert (=> b!4974005 (= e!3108690 (+ 1 (size!38097 (t!369196 lt!2054254))))))

(assert (= (and d!1601633 c!848758) b!4974004))

(assert (= (and d!1601633 (not c!848758)) b!4974005))

(declare-fun m!6003088 () Bool)

(assert (=> b!4974005 m!6003088))

(assert (=> b!4973799 d!1601633))

(declare-fun d!1601635 () Bool)

(assert (=> d!1601635 (dynLambda!23221 lambda!247525 (_1!34416 lt!2054258))))

(declare-fun lt!2054375 () Unit!148431)

(assert (=> d!1601635 (= lt!2054375 (choose!36714 lambda!247525 (_1!34416 lt!2054258)))))

(assert (=> d!1601635 (Forall!1768 lambda!247525)))

(assert (=> d!1601635 (= (ForallOf!1234 lambda!247525 (_1!34416 lt!2054258)) lt!2054375)))

(declare-fun b_lambda!197381 () Bool)

(assert (=> (not b_lambda!197381) (not d!1601635)))

(declare-fun bs!1183726 () Bool)

(assert (= bs!1183726 d!1601635))

(declare-fun m!6003090 () Bool)

(assert (=> bs!1183726 m!6003090))

(declare-fun m!6003092 () Bool)

(assert (=> bs!1183726 m!6003092))

(assert (=> bs!1183726 m!6003086))

(assert (=> b!4973799 d!1601635))

(assert (=> b!4973799 d!1601509))

(declare-fun d!1601637 () Bool)

(assert (=> d!1601637 (= (seqFromList!6043 (list!18383 (_1!34416 lt!2054258))) (fromListB!2737 (list!18383 (_1!34416 lt!2054258))))))

(declare-fun bs!1183727 () Bool)

(assert (= bs!1183727 d!1601637))

(assert (=> bs!1183727 m!6002738))

(declare-fun m!6003094 () Bool)

(assert (=> bs!1183727 m!6003094))

(assert (=> b!4973799 d!1601637))

(declare-fun d!1601639 () Bool)

(declare-fun e!3108691 () Bool)

(assert (=> d!1601639 e!3108691))

(declare-fun res!2123330 () Bool)

(assert (=> d!1601639 (=> (not res!2123330) (not e!3108691))))

(assert (=> d!1601639 (= res!2123330 (semiInverseModEq!3707 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))))))

(declare-fun Unit!148447 () Unit!148431)

(assert (=> d!1601639 (= (lemmaInv!1341 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) Unit!148447)))

(declare-fun b!4974006 () Bool)

(assert (=> b!4974006 (= e!3108691 (equivClasses!3555 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))))))

(assert (= (and d!1601639 res!2123330) b!4974006))

(assert (=> d!1601639 m!6002754))

(assert (=> b!4974006 m!6002756))

(assert (=> b!4973799 d!1601639))

(declare-fun bs!1183729 () Bool)

(declare-fun d!1601641 () Bool)

(assert (= bs!1183729 (and d!1601641 d!1601243)))

(declare-fun lambda!247529 () Int)

(assert (=> bs!1183729 (= (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) (= lambda!247529 lambda!247509))))

(declare-fun bs!1183730 () Bool)

(assert (= bs!1183730 (and d!1601641 d!1601541)))

(assert (=> bs!1183730 (= (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) (= lambda!247529 lambda!247528))))

(declare-fun b!4974007 () Bool)

(declare-fun e!3108692 () Bool)

(assert (=> b!4974007 (= e!3108692 true)))

(assert (=> d!1601641 e!3108692))

(assert (= d!1601641 b!4974007))

(assert (=> b!4974007 (< (dynLambda!23209 order!26257 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (dynLambda!23212 order!26263 lambda!247529))))

(assert (=> b!4974007 (< (dynLambda!23211 order!26261 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (dynLambda!23212 order!26263 lambda!247529))))

(assert (=> d!1601641 (= (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (_1!34416 lt!2054258)) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (seqFromList!6043 (list!18383 (_1!34416 lt!2054258)))))))

(declare-fun lt!2054376 () Unit!148431)

(assert (=> d!1601641 (= lt!2054376 (Forall2of!483 lambda!247529 (_1!34416 lt!2054258) (seqFromList!6043 (list!18383 (_1!34416 lt!2054258)))))))

(assert (=> d!1601641 (= (list!18383 (_1!34416 lt!2054258)) (list!18383 (seqFromList!6043 (list!18383 (_1!34416 lt!2054258)))))))

(assert (=> d!1601641 (= (lemmaEqSameImage!1175 (transformation!8400 (h!63915 (t!369197 rulesArg!259))) (_1!34416 lt!2054258) (seqFromList!6043 (list!18383 (_1!34416 lt!2054258)))) lt!2054376)))

(declare-fun b_lambda!197383 () Bool)

(assert (=> (not b_lambda!197383) (not d!1601641)))

(assert (=> d!1601641 t!369287))

(declare-fun b_and!348957 () Bool)

(assert (= b_and!348951 (and (=> t!369287 result!326414) b_and!348957)))

(assert (=> d!1601641 t!369289))

(declare-fun b_and!348959 () Bool)

(assert (= b_and!348953 (and (=> t!369289 result!326416) b_and!348959)))

(assert (=> d!1601641 t!369291))

(declare-fun b_and!348961 () Bool)

(assert (= b_and!348955 (and (=> t!369291 result!326418) b_and!348961)))

(declare-fun b_lambda!197385 () Bool)

(assert (=> (not b_lambda!197385) (not d!1601641)))

(declare-fun t!369293 () Bool)

(declare-fun tb!261229 () Bool)

(assert (=> (and b!4972699 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369293) tb!261229))

(declare-fun result!326420 () Bool)

(assert (=> tb!261229 (= result!326420 (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (seqFromList!6043 (list!18383 (_1!34416 lt!2054258))))))))

(declare-fun m!6003112 () Bool)

(assert (=> tb!261229 m!6003112))

(assert (=> d!1601641 t!369293))

(declare-fun b_and!348963 () Bool)

(assert (= b_and!348957 (and (=> t!369293 result!326420) b_and!348963)))

(declare-fun t!369295 () Bool)

(declare-fun tb!261231 () Bool)

(assert (=> (and b!4973009 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369295) tb!261231))

(declare-fun result!326422 () Bool)

(assert (= result!326422 result!326420))

(assert (=> d!1601641 t!369295))

(declare-fun b_and!348965 () Bool)

(assert (= b_and!348959 (and (=> t!369295 result!326422) b_and!348965)))

(declare-fun t!369297 () Bool)

(declare-fun tb!261233 () Bool)

(assert (=> (and b!4973824 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369297) tb!261233))

(declare-fun result!326424 () Bool)

(assert (= result!326424 result!326420))

(assert (=> d!1601641 t!369297))

(declare-fun b_and!348967 () Bool)

(assert (= b_and!348961 (and (=> t!369297 result!326424) b_and!348967)))

(assert (=> d!1601641 m!6002738))

(assert (=> d!1601641 m!6002726))

(declare-fun m!6003114 () Bool)

(assert (=> d!1601641 m!6003114))

(assert (=> d!1601641 m!6002726))

(declare-fun m!6003116 () Bool)

(assert (=> d!1601641 m!6003116))

(assert (=> d!1601641 m!6002726))

(declare-fun m!6003118 () Bool)

(assert (=> d!1601641 m!6003118))

(assert (=> d!1601641 m!6003016))

(assert (=> b!4973799 d!1601641))

(declare-fun d!1601645 () Bool)

(declare-fun c!848759 () Bool)

(assert (=> d!1601645 (= c!848759 ((_ is Node!15152) (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun e!3108694 () Bool)

(assert (=> d!1601645 (= (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853)))))) e!3108694)))

(declare-fun b!4974008 () Bool)

(assert (=> b!4974008 (= e!3108694 (inv!75128 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun b!4974009 () Bool)

(declare-fun e!3108695 () Bool)

(assert (=> b!4974009 (= e!3108694 e!3108695)))

(declare-fun res!2123331 () Bool)

(assert (=> b!4974009 (= res!2123331 (not ((_ is Leaf!25177) (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853))))))))))

(assert (=> b!4974009 (=> res!2123331 e!3108695)))

(declare-fun b!4974010 () Bool)

(assert (=> b!4974010 (= e!3108695 (inv!75129 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853)))))))))

(assert (= (and d!1601645 c!848759) b!4974008))

(assert (= (and d!1601645 (not c!848759)) b!4974009))

(assert (= (and b!4974009 (not res!2123331)) b!4974010))

(declare-fun m!6003120 () Bool)

(assert (=> b!4974008 m!6003120))

(declare-fun m!6003122 () Bool)

(assert (=> b!4974010 m!6003122))

(assert (=> b!4973268 d!1601645))

(declare-fun d!1601647 () Bool)

(declare-fun lt!2054379 () Bool)

(assert (=> d!1601647 (= lt!2054379 (isEmpty!30977 (list!18385 (left!41922 (c!848514 input!1342)))))))

(assert (=> d!1601647 (= lt!2054379 (= (size!38100 (left!41922 (c!848514 input!1342))) 0))))

(assert (=> d!1601647 (= (isEmpty!30980 (left!41922 (c!848514 input!1342))) lt!2054379)))

(declare-fun bs!1183731 () Bool)

(assert (= bs!1183731 d!1601647))

(assert (=> bs!1183731 m!6002410))

(assert (=> bs!1183731 m!6002410))

(declare-fun m!6003124 () Bool)

(assert (=> bs!1183731 m!6003124))

(assert (=> bs!1183731 m!6001742))

(assert (=> b!4973566 d!1601647))

(declare-fun b!4974032 () Bool)

(declare-fun e!3108710 () Bool)

(assert (=> b!4974032 (= e!3108710 (>= (size!38097 lt!2053833) (size!38097 (++!12539 Nil!57466 (Cons!57466 (head!10675 (getSuffix!3095 lt!2053833 Nil!57466)) Nil!57466)))))))

(declare-fun b!4974030 () Bool)

(declare-fun res!2123342 () Bool)

(declare-fun e!3108712 () Bool)

(assert (=> b!4974030 (=> (not res!2123342) (not e!3108712))))

(assert (=> b!4974030 (= res!2123342 (= (head!10675 (++!12539 Nil!57466 (Cons!57466 (head!10675 (getSuffix!3095 lt!2053833 Nil!57466)) Nil!57466))) (head!10675 lt!2053833)))))

(declare-fun b!4974031 () Bool)

(assert (=> b!4974031 (= e!3108712 (isPrefix!5251 (tail!9808 (++!12539 Nil!57466 (Cons!57466 (head!10675 (getSuffix!3095 lt!2053833 Nil!57466)) Nil!57466))) (tail!9808 lt!2053833)))))

(declare-fun d!1601649 () Bool)

(assert (=> d!1601649 e!3108710))

(declare-fun res!2123343 () Bool)

(assert (=> d!1601649 (=> res!2123343 e!3108710)))

(declare-fun lt!2054380 () Bool)

(assert (=> d!1601649 (= res!2123343 (not lt!2054380))))

(declare-fun e!3108711 () Bool)

(assert (=> d!1601649 (= lt!2054380 e!3108711)))

(declare-fun res!2123345 () Bool)

(assert (=> d!1601649 (=> res!2123345 e!3108711)))

(assert (=> d!1601649 (= res!2123345 ((_ is Nil!57466) (++!12539 Nil!57466 (Cons!57466 (head!10675 (getSuffix!3095 lt!2053833 Nil!57466)) Nil!57466))))))

(assert (=> d!1601649 (= (isPrefix!5251 (++!12539 Nil!57466 (Cons!57466 (head!10675 (getSuffix!3095 lt!2053833 Nil!57466)) Nil!57466)) lt!2053833) lt!2054380)))

(declare-fun b!4974029 () Bool)

(assert (=> b!4974029 (= e!3108711 e!3108712)))

(declare-fun res!2123344 () Bool)

(assert (=> b!4974029 (=> (not res!2123344) (not e!3108712))))

(assert (=> b!4974029 (= res!2123344 (not ((_ is Nil!57466) lt!2053833)))))

(assert (= (and d!1601649 (not res!2123345)) b!4974029))

(assert (= (and b!4974029 res!2123344) b!4974030))

(assert (= (and b!4974030 res!2123342) b!4974031))

(assert (= (and d!1601649 (not res!2123343)) b!4974032))

(assert (=> b!4974032 m!6001548))

(assert (=> b!4974032 m!6002674))

(declare-fun m!6003126 () Bool)

(assert (=> b!4974032 m!6003126))

(assert (=> b!4974030 m!6002674))

(declare-fun m!6003128 () Bool)

(assert (=> b!4974030 m!6003128))

(assert (=> b!4974030 m!6002660))

(assert (=> b!4974031 m!6002674))

(declare-fun m!6003130 () Bool)

(assert (=> b!4974031 m!6003130))

(assert (=> b!4974031 m!6002642))

(assert (=> b!4974031 m!6003130))

(assert (=> b!4974031 m!6002642))

(declare-fun m!6003132 () Bool)

(assert (=> b!4974031 m!6003132))

(assert (=> b!4973752 d!1601649))

(declare-fun d!1601651 () Bool)

(assert (=> d!1601651 (= (head!10675 (getSuffix!3095 lt!2053833 Nil!57466)) (h!63914 (getSuffix!3095 lt!2053833 Nil!57466)))))

(assert (=> b!4973752 d!1601651))

(declare-fun b!4974033 () Bool)

(declare-fun e!3108713 () List!57590)

(assert (=> b!4974033 (= e!3108713 (Cons!57466 (head!10675 (getSuffix!3095 lt!2053833 Nil!57466)) Nil!57466))))

(declare-fun d!1601653 () Bool)

(declare-fun e!3108714 () Bool)

(assert (=> d!1601653 e!3108714))

(declare-fun res!2123346 () Bool)

(assert (=> d!1601653 (=> (not res!2123346) (not e!3108714))))

(declare-fun lt!2054381 () List!57590)

(assert (=> d!1601653 (= res!2123346 (= (content!10197 lt!2054381) ((_ map or) (content!10197 Nil!57466) (content!10197 (Cons!57466 (head!10675 (getSuffix!3095 lt!2053833 Nil!57466)) Nil!57466)))))))

(assert (=> d!1601653 (= lt!2054381 e!3108713)))

(declare-fun c!848764 () Bool)

(assert (=> d!1601653 (= c!848764 ((_ is Nil!57466) Nil!57466))))

(assert (=> d!1601653 (= (++!12539 Nil!57466 (Cons!57466 (head!10675 (getSuffix!3095 lt!2053833 Nil!57466)) Nil!57466)) lt!2054381)))

(declare-fun b!4974036 () Bool)

(assert (=> b!4974036 (= e!3108714 (or (not (= (Cons!57466 (head!10675 (getSuffix!3095 lt!2053833 Nil!57466)) Nil!57466) Nil!57466)) (= lt!2054381 Nil!57466)))))

(declare-fun b!4974035 () Bool)

(declare-fun res!2123347 () Bool)

(assert (=> b!4974035 (=> (not res!2123347) (not e!3108714))))

(assert (=> b!4974035 (= res!2123347 (= (size!38097 lt!2054381) (+ (size!38097 Nil!57466) (size!38097 (Cons!57466 (head!10675 (getSuffix!3095 lt!2053833 Nil!57466)) Nil!57466)))))))

(declare-fun b!4974034 () Bool)

(assert (=> b!4974034 (= e!3108713 (Cons!57466 (h!63914 Nil!57466) (++!12539 (t!369196 Nil!57466) (Cons!57466 (head!10675 (getSuffix!3095 lt!2053833 Nil!57466)) Nil!57466))))))

(assert (= (and d!1601653 c!848764) b!4974033))

(assert (= (and d!1601653 (not c!848764)) b!4974034))

(assert (= (and d!1601653 res!2123346) b!4974035))

(assert (= (and b!4974035 res!2123347) b!4974036))

(declare-fun m!6003134 () Bool)

(assert (=> d!1601653 m!6003134))

(declare-fun m!6003136 () Bool)

(assert (=> d!1601653 m!6003136))

(declare-fun m!6003138 () Bool)

(assert (=> d!1601653 m!6003138))

(declare-fun m!6003140 () Bool)

(assert (=> b!4974035 m!6003140))

(assert (=> b!4974035 m!6001546))

(declare-fun m!6003142 () Bool)

(assert (=> b!4974035 m!6003142))

(declare-fun m!6003144 () Bool)

(assert (=> b!4974034 m!6003144))

(assert (=> b!4973752 d!1601653))

(assert (=> b!4973752 d!1601509))

(declare-fun b!4974037 () Bool)

(declare-fun e!3108715 () List!57590)

(assert (=> b!4974037 (= e!3108715 (Cons!57466 lt!2054228 Nil!57466))))

(declare-fun d!1601655 () Bool)

(declare-fun e!3108716 () Bool)

(assert (=> d!1601655 e!3108716))

(declare-fun res!2123348 () Bool)

(assert (=> d!1601655 (=> (not res!2123348) (not e!3108716))))

(declare-fun lt!2054382 () List!57590)

(assert (=> d!1601655 (= res!2123348 (= (content!10197 lt!2054382) ((_ map or) (content!10197 Nil!57466) (content!10197 (Cons!57466 lt!2054228 Nil!57466)))))))

(assert (=> d!1601655 (= lt!2054382 e!3108715)))

(declare-fun c!848765 () Bool)

(assert (=> d!1601655 (= c!848765 ((_ is Nil!57466) Nil!57466))))

(assert (=> d!1601655 (= (++!12539 Nil!57466 (Cons!57466 lt!2054228 Nil!57466)) lt!2054382)))

(declare-fun b!4974040 () Bool)

(assert (=> b!4974040 (= e!3108716 (or (not (= (Cons!57466 lt!2054228 Nil!57466) Nil!57466)) (= lt!2054382 Nil!57466)))))

(declare-fun b!4974039 () Bool)

(declare-fun res!2123349 () Bool)

(assert (=> b!4974039 (=> (not res!2123349) (not e!3108716))))

(assert (=> b!4974039 (= res!2123349 (= (size!38097 lt!2054382) (+ (size!38097 Nil!57466) (size!38097 (Cons!57466 lt!2054228 Nil!57466)))))))

(declare-fun b!4974038 () Bool)

(assert (=> b!4974038 (= e!3108715 (Cons!57466 (h!63914 Nil!57466) (++!12539 (t!369196 Nil!57466) (Cons!57466 lt!2054228 Nil!57466))))))

(assert (= (and d!1601655 c!848765) b!4974037))

(assert (= (and d!1601655 (not c!848765)) b!4974038))

(assert (= (and d!1601655 res!2123348) b!4974039))

(assert (= (and b!4974039 res!2123349) b!4974040))

(declare-fun m!6003146 () Bool)

(assert (=> d!1601655 m!6003146))

(assert (=> d!1601655 m!6003136))

(declare-fun m!6003148 () Bool)

(assert (=> d!1601655 m!6003148))

(declare-fun m!6003150 () Bool)

(assert (=> b!4974039 m!6003150))

(assert (=> b!4974039 m!6001546))

(declare-fun m!6003152 () Bool)

(assert (=> b!4974039 m!6003152))

(declare-fun m!6003154 () Bool)

(assert (=> b!4974038 m!6003154))

(assert (=> b!4973752 d!1601655))

(declare-fun b!4974041 () Bool)

(declare-fun e!3108717 () List!57590)

(assert (=> b!4974041 (= e!3108717 (Cons!57466 (head!10675 lt!2053833) Nil!57466))))

(declare-fun d!1601657 () Bool)

(declare-fun e!3108718 () Bool)

(assert (=> d!1601657 e!3108718))

(declare-fun res!2123350 () Bool)

(assert (=> d!1601657 (=> (not res!2123350) (not e!3108718))))

(declare-fun lt!2054383 () List!57590)

(assert (=> d!1601657 (= res!2123350 (= (content!10197 lt!2054383) ((_ map or) (content!10197 Nil!57466) (content!10197 (Cons!57466 (head!10675 lt!2053833) Nil!57466)))))))

(assert (=> d!1601657 (= lt!2054383 e!3108717)))

(declare-fun c!848766 () Bool)

(assert (=> d!1601657 (= c!848766 ((_ is Nil!57466) Nil!57466))))

(assert (=> d!1601657 (= (++!12539 Nil!57466 (Cons!57466 (head!10675 lt!2053833) Nil!57466)) lt!2054383)))

(declare-fun b!4974044 () Bool)

(assert (=> b!4974044 (= e!3108718 (or (not (= (Cons!57466 (head!10675 lt!2053833) Nil!57466) Nil!57466)) (= lt!2054383 Nil!57466)))))

(declare-fun b!4974043 () Bool)

(declare-fun res!2123351 () Bool)

(assert (=> b!4974043 (=> (not res!2123351) (not e!3108718))))

(assert (=> b!4974043 (= res!2123351 (= (size!38097 lt!2054383) (+ (size!38097 Nil!57466) (size!38097 (Cons!57466 (head!10675 lt!2053833) Nil!57466)))))))

(declare-fun b!4974042 () Bool)

(assert (=> b!4974042 (= e!3108717 (Cons!57466 (h!63914 Nil!57466) (++!12539 (t!369196 Nil!57466) (Cons!57466 (head!10675 lt!2053833) Nil!57466))))))

(assert (= (and d!1601657 c!848766) b!4974041))

(assert (= (and d!1601657 (not c!848766)) b!4974042))

(assert (= (and d!1601657 res!2123350) b!4974043))

(assert (= (and b!4974043 res!2123351) b!4974044))

(declare-fun m!6003156 () Bool)

(assert (=> d!1601657 m!6003156))

(assert (=> d!1601657 m!6003136))

(declare-fun m!6003158 () Bool)

(assert (=> d!1601657 m!6003158))

(declare-fun m!6003160 () Bool)

(assert (=> b!4974043 m!6003160))

(assert (=> b!4974043 m!6001546))

(declare-fun m!6003162 () Bool)

(assert (=> b!4974043 m!6003162))

(declare-fun m!6003164 () Bool)

(assert (=> b!4974042 m!6003164))

(assert (=> b!4973752 d!1601657))

(declare-fun d!1601659 () Bool)

(assert (=> d!1601659 (= (++!12539 (++!12539 Nil!57466 (Cons!57466 lt!2054228 Nil!57466)) lt!2054235) lt!2053833)))

(declare-fun lt!2054386 () Unit!148431)

(declare-fun choose!36716 (List!57590 C!27516 List!57590 List!57590) Unit!148431)

(assert (=> d!1601659 (= lt!2054386 (choose!36716 Nil!57466 lt!2054228 lt!2054235 lt!2053833))))

(assert (=> d!1601659 (= (++!12539 Nil!57466 (Cons!57466 lt!2054228 lt!2054235)) lt!2053833)))

(assert (=> d!1601659 (= (lemmaMoveElementToOtherListKeepsConcatEq!1452 Nil!57466 lt!2054228 lt!2054235 lt!2053833) lt!2054386)))

(declare-fun bs!1183732 () Bool)

(assert (= bs!1183732 d!1601659))

(assert (=> bs!1183732 m!6002672))

(assert (=> bs!1183732 m!6002672))

(assert (=> bs!1183732 m!6002680))

(declare-fun m!6003166 () Bool)

(assert (=> bs!1183732 m!6003166))

(declare-fun m!6003168 () Bool)

(assert (=> bs!1183732 m!6003168))

(assert (=> b!4973752 d!1601659))

(declare-fun d!1601661 () Bool)

(declare-fun lt!2054389 () List!57590)

(assert (=> d!1601661 (= (++!12539 Nil!57466 lt!2054389) lt!2053833)))

(declare-fun e!3108728 () List!57590)

(assert (=> d!1601661 (= lt!2054389 e!3108728)))

(declare-fun c!848771 () Bool)

(assert (=> d!1601661 (= c!848771 ((_ is Cons!57466) Nil!57466))))

(assert (=> d!1601661 (>= (size!38097 lt!2053833) (size!38097 Nil!57466))))

(assert (=> d!1601661 (= (getSuffix!3095 lt!2053833 Nil!57466) lt!2054389)))

(declare-fun b!4974058 () Bool)

(assert (=> b!4974058 (= e!3108728 (getSuffix!3095 (tail!9808 lt!2053833) (t!369196 Nil!57466)))))

(declare-fun b!4974059 () Bool)

(assert (=> b!4974059 (= e!3108728 lt!2053833)))

(assert (= (and d!1601661 c!848771) b!4974058))

(assert (= (and d!1601661 (not c!848771)) b!4974059))

(declare-fun m!6003178 () Bool)

(assert (=> d!1601661 m!6003178))

(assert (=> d!1601661 m!6001548))

(assert (=> d!1601661 m!6001546))

(assert (=> b!4974058 m!6002642))

(assert (=> b!4974058 m!6002642))

(declare-fun m!6003180 () Bool)

(assert (=> b!4974058 m!6003180))

(assert (=> b!4973752 d!1601661))

(declare-fun b!4974060 () Bool)

(declare-fun e!3108729 () List!57590)

(assert (=> b!4974060 (= e!3108729 lt!2054235)))

(declare-fun d!1601667 () Bool)

(declare-fun e!3108730 () Bool)

(assert (=> d!1601667 e!3108730))

(declare-fun res!2123357 () Bool)

(assert (=> d!1601667 (=> (not res!2123357) (not e!3108730))))

(declare-fun lt!2054390 () List!57590)

(assert (=> d!1601667 (= res!2123357 (= (content!10197 lt!2054390) ((_ map or) (content!10197 (++!12539 Nil!57466 (Cons!57466 lt!2054228 Nil!57466))) (content!10197 lt!2054235))))))

(assert (=> d!1601667 (= lt!2054390 e!3108729)))

(declare-fun c!848772 () Bool)

(assert (=> d!1601667 (= c!848772 ((_ is Nil!57466) (++!12539 Nil!57466 (Cons!57466 lt!2054228 Nil!57466))))))

(assert (=> d!1601667 (= (++!12539 (++!12539 Nil!57466 (Cons!57466 lt!2054228 Nil!57466)) lt!2054235) lt!2054390)))

(declare-fun b!4974063 () Bool)

(assert (=> b!4974063 (= e!3108730 (or (not (= lt!2054235 Nil!57466)) (= lt!2054390 (++!12539 Nil!57466 (Cons!57466 lt!2054228 Nil!57466)))))))

(declare-fun b!4974062 () Bool)

(declare-fun res!2123358 () Bool)

(assert (=> b!4974062 (=> (not res!2123358) (not e!3108730))))

(assert (=> b!4974062 (= res!2123358 (= (size!38097 lt!2054390) (+ (size!38097 (++!12539 Nil!57466 (Cons!57466 lt!2054228 Nil!57466))) (size!38097 lt!2054235))))))

(declare-fun b!4974061 () Bool)

(assert (=> b!4974061 (= e!3108729 (Cons!57466 (h!63914 (++!12539 Nil!57466 (Cons!57466 lt!2054228 Nil!57466))) (++!12539 (t!369196 (++!12539 Nil!57466 (Cons!57466 lt!2054228 Nil!57466))) lt!2054235)))))

(assert (= (and d!1601667 c!848772) b!4974060))

(assert (= (and d!1601667 (not c!848772)) b!4974061))

(assert (= (and d!1601667 res!2123357) b!4974062))

(assert (= (and b!4974062 res!2123358) b!4974063))

(declare-fun m!6003182 () Bool)

(assert (=> d!1601667 m!6003182))

(assert (=> d!1601667 m!6002672))

(declare-fun m!6003184 () Bool)

(assert (=> d!1601667 m!6003184))

(declare-fun m!6003186 () Bool)

(assert (=> d!1601667 m!6003186))

(declare-fun m!6003188 () Bool)

(assert (=> b!4974062 m!6003188))

(assert (=> b!4974062 m!6002672))

(declare-fun m!6003190 () Bool)

(assert (=> b!4974062 m!6003190))

(declare-fun m!6003192 () Bool)

(assert (=> b!4974062 m!6003192))

(declare-fun m!6003194 () Bool)

(assert (=> b!4974061 m!6003194))

(assert (=> b!4973752 d!1601667))

(assert (=> b!4973752 d!1601511))

(declare-fun d!1601669 () Bool)

(assert (=> d!1601669 (<= (size!38097 Nil!57466) (size!38097 lt!2053833))))

(declare-fun lt!2054393 () Unit!148431)

(declare-fun choose!36717 (List!57590 List!57590) Unit!148431)

(assert (=> d!1601669 (= lt!2054393 (choose!36717 Nil!57466 lt!2053833))))

(assert (=> d!1601669 (isPrefix!5251 Nil!57466 lt!2053833)))

(assert (=> d!1601669 (= (lemmaIsPrefixThenSmallerEqSize!768 Nil!57466 lt!2053833) lt!2054393)))

(declare-fun bs!1183734 () Bool)

(assert (= bs!1183734 d!1601669))

(assert (=> bs!1183734 m!6001546))

(assert (=> bs!1183734 m!6001548))

(declare-fun m!6003196 () Bool)

(assert (=> bs!1183734 m!6003196))

(declare-fun m!6003198 () Bool)

(assert (=> bs!1183734 m!6003198))

(assert (=> b!4973752 d!1601669))

(declare-fun d!1601671 () Bool)

(assert (=> d!1601671 (isPrefix!5251 (++!12539 Nil!57466 (Cons!57466 (head!10675 (getSuffix!3095 lt!2053833 Nil!57466)) Nil!57466)) lt!2053833)))

(declare-fun lt!2054396 () Unit!148431)

(declare-fun choose!36718 (List!57590 List!57590) Unit!148431)

(assert (=> d!1601671 (= lt!2054396 (choose!36718 Nil!57466 lt!2053833))))

(assert (=> d!1601671 (isPrefix!5251 Nil!57466 lt!2053833)))

(assert (=> d!1601671 (= (lemmaAddHeadSuffixToPrefixStillPrefix!842 Nil!57466 lt!2053833) lt!2054396)))

(declare-fun bs!1183735 () Bool)

(assert (= bs!1183735 d!1601671))

(declare-fun m!6003200 () Bool)

(assert (=> bs!1183735 m!6003200))

(assert (=> bs!1183735 m!6002652))

(assert (=> bs!1183735 m!6002682))

(assert (=> bs!1183735 m!6002674))

(assert (=> bs!1183735 m!6002676))

(assert (=> bs!1183735 m!6002674))

(assert (=> bs!1183735 m!6002652))

(assert (=> bs!1183735 m!6003198))

(assert (=> b!4973752 d!1601671))

(declare-fun d!1601673 () Bool)

(assert (=> d!1601673 (= (tail!9808 lt!2053833) (t!369196 lt!2053833))))

(assert (=> b!4973752 d!1601673))

(declare-fun d!1601675 () Bool)

(assert (=> d!1601675 (= (head!10675 lt!2053833) (h!63914 lt!2053833))))

(assert (=> b!4973752 d!1601675))

(declare-fun d!1601677 () Bool)

(declare-fun lt!2054397 () Int)

(assert (=> d!1601677 (>= lt!2054397 0)))

(declare-fun e!3108731 () Int)

(assert (=> d!1601677 (= lt!2054397 e!3108731)))

(declare-fun c!848773 () Bool)

(assert (=> d!1601677 (= c!848773 ((_ is Nil!57466) (list!18387 (xs!18478 (c!848514 totalInput!464)))))))

(assert (=> d!1601677 (= (size!38097 (list!18387 (xs!18478 (c!848514 totalInput!464)))) lt!2054397)))

(declare-fun b!4974064 () Bool)

(assert (=> b!4974064 (= e!3108731 0)))

(declare-fun b!4974065 () Bool)

(assert (=> b!4974065 (= e!3108731 (+ 1 (size!38097 (t!369196 (list!18387 (xs!18478 (c!848514 totalInput!464)))))))))

(assert (= (and d!1601677 c!848773) b!4974064))

(assert (= (and d!1601677 (not c!848773)) b!4974065))

(declare-fun m!6003202 () Bool)

(assert (=> b!4974065 m!6003202))

(assert (=> d!1601483 d!1601677))

(declare-fun d!1601679 () Bool)

(assert (=> d!1601679 (= (list!18387 (xs!18478 (c!848514 totalInput!464))) (innerList!15240 (xs!18478 (c!848514 totalInput!464))))))

(assert (=> d!1601483 d!1601679))

(declare-fun d!1601681 () Bool)

(assert (=> d!1601681 (= (get!19957 lt!2054151) (v!50457 lt!2054151))))

(assert (=> b!4973648 d!1601681))

(declare-fun d!1601683 () Bool)

(assert (=> d!1601683 (= (apply!13911 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054151))))) (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054151))))))))

(declare-fun b_lambda!197387 () Bool)

(assert (=> (not b_lambda!197387) (not d!1601683)))

(declare-fun t!369300 () Bool)

(declare-fun tb!261235 () Bool)

(assert (=> (and b!4972699 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))))) t!369300) tb!261235))

(declare-fun result!326426 () Bool)

(assert (=> tb!261235 (= result!326426 (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054151)))))))))

(declare-fun m!6003204 () Bool)

(assert (=> tb!261235 m!6003204))

(assert (=> d!1601683 t!369300))

(declare-fun b_and!348969 () Bool)

(assert (= b_and!348963 (and (=> t!369300 result!326426) b_and!348969)))

(declare-fun tb!261237 () Bool)

(declare-fun t!369302 () Bool)

(assert (=> (and b!4973009 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))))) t!369302) tb!261237))

(declare-fun result!326428 () Bool)

(assert (= result!326428 result!326426))

(assert (=> d!1601683 t!369302))

(declare-fun b_and!348971 () Bool)

(assert (= b_and!348965 (and (=> t!369302 result!326428) b_and!348971)))

(declare-fun t!369304 () Bool)

(declare-fun tb!261239 () Bool)

(assert (=> (and b!4973824 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))))) t!369304) tb!261239))

(declare-fun result!326430 () Bool)

(assert (= result!326430 result!326426))

(assert (=> d!1601683 t!369304))

(declare-fun b_and!348973 () Bool)

(assert (= b_and!348967 (and (=> t!369304 result!326430) b_and!348973)))

(assert (=> d!1601683 m!6002582))

(declare-fun m!6003206 () Bool)

(assert (=> d!1601683 m!6003206))

(assert (=> b!4973648 d!1601683))

(declare-fun d!1601685 () Bool)

(assert (=> d!1601685 (= (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054151)))) (fromListB!2737 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054151)))))))

(declare-fun bs!1183736 () Bool)

(assert (= bs!1183736 d!1601685))

(declare-fun m!6003208 () Bool)

(assert (=> bs!1183736 m!6003208))

(assert (=> b!4973648 d!1601685))

(declare-fun d!1601687 () Bool)

(declare-fun nullableFct!1255 (Regex!13633) Bool)

(assert (=> d!1601687 (= (nullable!4627 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (nullableFct!1255 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))))

(declare-fun bs!1183737 () Bool)

(assert (= bs!1183737 d!1601687))

(declare-fun m!6003210 () Bool)

(assert (=> bs!1183737 m!6003210))

(assert (=> b!4973260 d!1601687))

(declare-fun bs!1183738 () Bool)

(declare-fun d!1601689 () Bool)

(assert (= bs!1183738 (and d!1601689 b!4972922)))

(declare-fun lambda!247530 () Int)

(assert (=> bs!1183738 (= (and (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (= lambda!247530 lambda!247506))))

(declare-fun bs!1183739 () Bool)

(assert (= bs!1183739 (and d!1601689 d!1601301)))

(assert (=> bs!1183739 (= (and (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (= lambda!247530 lambda!247516))))

(declare-fun bs!1183740 () Bool)

(assert (= bs!1183740 (and d!1601689 b!4973799)))

(assert (=> bs!1183740 (= lambda!247530 lambda!247525)))

(assert (=> d!1601689 true))

(assert (=> d!1601689 (< (dynLambda!23211 order!26261 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (dynLambda!23210 order!26259 lambda!247530))))

(assert (=> d!1601689 true))

(assert (=> d!1601689 (< (dynLambda!23209 order!26257 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (dynLambda!23210 order!26259 lambda!247530))))

(assert (=> d!1601689 (= (semiInverseModEq!3707 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (Forall!1768 lambda!247530))))

(declare-fun bs!1183741 () Bool)

(assert (= bs!1183741 d!1601689))

(declare-fun m!6003212 () Bool)

(assert (=> bs!1183741 m!6003212))

(assert (=> d!1601523 d!1601689))

(declare-fun d!1601691 () Bool)

(declare-fun res!2123361 () Bool)

(declare-fun e!3108737 () Bool)

(assert (=> d!1601691 (=> (not res!2123361) (not e!3108737))))

(assert (=> d!1601691 (= res!2123361 (validRegex!5976 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))))

(assert (=> d!1601691 (= (ruleValid!3809 thiss!15247 (h!63915 (t!369197 rulesArg!259))) e!3108737)))

(declare-fun b!4974070 () Bool)

(declare-fun res!2123362 () Bool)

(assert (=> b!4974070 (=> (not res!2123362) (not e!3108737))))

(assert (=> b!4974070 (= res!2123362 (not (nullable!4627 (regex!8400 (h!63915 (t!369197 rulesArg!259))))))))

(declare-fun b!4974071 () Bool)

(assert (=> b!4974071 (= e!3108737 (not (= (tag!9264 (h!63915 (t!369197 rulesArg!259))) (String!65425 ""))))))

(assert (= (and d!1601691 res!2123361) b!4974070))

(assert (= (and b!4974070 res!2123362) b!4974071))

(assert (=> d!1601691 m!6003032))

(assert (=> b!4974070 m!6003054))

(assert (=> b!4973366 d!1601691))

(declare-fun b!4974072 () Bool)

(declare-fun e!3108738 () List!57590)

(assert (=> b!4974072 (= e!3108738 (_2!34412 (get!19957 lt!2054040)))))

(declare-fun d!1601693 () Bool)

(declare-fun e!3108739 () Bool)

(assert (=> d!1601693 e!3108739))

(declare-fun res!2123363 () Bool)

(assert (=> d!1601693 (=> (not res!2123363) (not e!3108739))))

(declare-fun lt!2054398 () List!57590)

(assert (=> d!1601693 (= res!2123363 (= (content!10197 lt!2054398) ((_ map or) (content!10197 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040))))) (content!10197 (_2!34412 (get!19957 lt!2054040))))))))

(assert (=> d!1601693 (= lt!2054398 e!3108738)))

(declare-fun c!848774 () Bool)

(assert (=> d!1601693 (= c!848774 ((_ is Nil!57466) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040))))))))

(assert (=> d!1601693 (= (++!12539 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040)))) (_2!34412 (get!19957 lt!2054040))) lt!2054398)))

(declare-fun b!4974075 () Bool)

(assert (=> b!4974075 (= e!3108739 (or (not (= (_2!34412 (get!19957 lt!2054040)) Nil!57466)) (= lt!2054398 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040)))))))))

(declare-fun b!4974074 () Bool)

(declare-fun res!2123364 () Bool)

(assert (=> b!4974074 (=> (not res!2123364) (not e!3108739))))

(assert (=> b!4974074 (= res!2123364 (= (size!38097 lt!2054398) (+ (size!38097 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040))))) (size!38097 (_2!34412 (get!19957 lt!2054040))))))))

(declare-fun b!4974073 () Bool)

(assert (=> b!4974073 (= e!3108738 (Cons!57466 (h!63914 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040))))) (++!12539 (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040))))) (_2!34412 (get!19957 lt!2054040)))))))

(assert (= (and d!1601693 c!848774) b!4974072))

(assert (= (and d!1601693 (not c!848774)) b!4974073))

(assert (= (and d!1601693 res!2123363) b!4974074))

(assert (= (and b!4974074 res!2123364) b!4974075))

(declare-fun m!6003214 () Bool)

(assert (=> d!1601693 m!6003214))

(assert (=> d!1601693 m!6002042))

(declare-fun m!6003216 () Bool)

(assert (=> d!1601693 m!6003216))

(declare-fun m!6003218 () Bool)

(assert (=> d!1601693 m!6003218))

(declare-fun m!6003220 () Bool)

(assert (=> b!4974074 m!6003220))

(assert (=> b!4974074 m!6002042))

(declare-fun m!6003222 () Bool)

(assert (=> b!4974074 m!6003222))

(assert (=> b!4974074 m!6002034))

(declare-fun m!6003224 () Bool)

(assert (=> b!4974073 m!6003224))

(assert (=> b!4973334 d!1601693))

(declare-fun d!1601695 () Bool)

(assert (=> d!1601695 (= (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040)))) (list!18385 (c!848514 (charsOf!5444 (_1!34412 (get!19957 lt!2054040))))))))

(declare-fun bs!1183742 () Bool)

(assert (= bs!1183742 d!1601695))

(declare-fun m!6003226 () Bool)

(assert (=> bs!1183742 m!6003226))

(assert (=> b!4973334 d!1601695))

(declare-fun d!1601697 () Bool)

(declare-fun lt!2054399 () BalanceConc!29734)

(assert (=> d!1601697 (= (list!18383 lt!2054399) (originalCharacters!8679 (_1!34412 (get!19957 lt!2054040))))))

(assert (=> d!1601697 (= lt!2054399 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040))))) (value!268840 (_1!34412 (get!19957 lt!2054040)))))))

(assert (=> d!1601697 (= (charsOf!5444 (_1!34412 (get!19957 lt!2054040))) lt!2054399)))

(declare-fun b_lambda!197389 () Bool)

(assert (=> (not b_lambda!197389) (not d!1601697)))

(declare-fun t!369306 () Bool)

(declare-fun tb!261241 () Bool)

(assert (=> (and b!4972699 (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040)))))) t!369306) tb!261241))

(declare-fun b!4974078 () Bool)

(declare-fun e!3108742 () Bool)

(declare-fun tp!1394584 () Bool)

(assert (=> b!4974078 (= e!3108742 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040))))) (value!268840 (_1!34412 (get!19957 lt!2054040)))))) tp!1394584))))

(declare-fun result!326432 () Bool)

(assert (=> tb!261241 (= result!326432 (and (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040))))) (value!268840 (_1!34412 (get!19957 lt!2054040))))) e!3108742))))

(assert (= tb!261241 b!4974078))

(declare-fun m!6003238 () Bool)

(assert (=> b!4974078 m!6003238))

(declare-fun m!6003240 () Bool)

(assert (=> tb!261241 m!6003240))

(assert (=> d!1601697 t!369306))

(declare-fun b_and!348975 () Bool)

(assert (= b_and!348945 (and (=> t!369306 result!326432) b_and!348975)))

(declare-fun tb!261243 () Bool)

(declare-fun t!369308 () Bool)

(assert (=> (and b!4973009 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040)))))) t!369308) tb!261243))

(declare-fun result!326434 () Bool)

(assert (= result!326434 result!326432))

(assert (=> d!1601697 t!369308))

(declare-fun b_and!348977 () Bool)

(assert (= b_and!348947 (and (=> t!369308 result!326434) b_and!348977)))

(declare-fun tb!261245 () Bool)

(declare-fun t!369310 () Bool)

(assert (=> (and b!4973824 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040)))))) t!369310) tb!261245))

(declare-fun result!326436 () Bool)

(assert (= result!326436 result!326432))

(assert (=> d!1601697 t!369310))

(declare-fun b_and!348979 () Bool)

(assert (= b_and!348949 (and (=> t!369310 result!326436) b_and!348979)))

(declare-fun m!6003244 () Bool)

(assert (=> d!1601697 m!6003244))

(declare-fun m!6003246 () Bool)

(assert (=> d!1601697 m!6003246))

(assert (=> b!4973334 d!1601697))

(declare-fun d!1601701 () Bool)

(assert (=> d!1601701 (= (get!19957 lt!2054040) (v!50457 lt!2054040))))

(assert (=> b!4973334 d!1601701))

(declare-fun d!1601703 () Bool)

(assert (=> d!1601703 (= (isEmpty!30975 lt!2054115) (not ((_ is Some!14462) lt!2054115)))))

(assert (=> d!1601401 d!1601703))

(declare-fun b!4974084 () Bool)

(declare-fun e!3108745 () Bool)

(assert (=> b!4974084 (= e!3108745 (>= (size!38097 (list!18383 input!1342)) (size!38097 (list!18383 input!1342))))))

(declare-fun b!4974082 () Bool)

(declare-fun res!2123368 () Bool)

(declare-fun e!3108747 () Bool)

(assert (=> b!4974082 (=> (not res!2123368) (not e!3108747))))

(assert (=> b!4974082 (= res!2123368 (= (head!10675 (list!18383 input!1342)) (head!10675 (list!18383 input!1342))))))

(declare-fun b!4974083 () Bool)

(assert (=> b!4974083 (= e!3108747 (isPrefix!5251 (tail!9808 (list!18383 input!1342)) (tail!9808 (list!18383 input!1342))))))

(declare-fun d!1601705 () Bool)

(assert (=> d!1601705 e!3108745))

(declare-fun res!2123369 () Bool)

(assert (=> d!1601705 (=> res!2123369 e!3108745)))

(declare-fun lt!2054400 () Bool)

(assert (=> d!1601705 (= res!2123369 (not lt!2054400))))

(declare-fun e!3108746 () Bool)

(assert (=> d!1601705 (= lt!2054400 e!3108746)))

(declare-fun res!2123371 () Bool)

(assert (=> d!1601705 (=> res!2123371 e!3108746)))

(assert (=> d!1601705 (= res!2123371 ((_ is Nil!57466) (list!18383 input!1342)))))

(assert (=> d!1601705 (= (isPrefix!5251 (list!18383 input!1342) (list!18383 input!1342)) lt!2054400)))

(declare-fun b!4974081 () Bool)

(assert (=> b!4974081 (= e!3108746 e!3108747)))

(declare-fun res!2123370 () Bool)

(assert (=> b!4974081 (=> (not res!2123370) (not e!3108747))))

(assert (=> b!4974081 (= res!2123370 (not ((_ is Nil!57466) (list!18383 input!1342))))))

(assert (= (and d!1601705 (not res!2123371)) b!4974081))

(assert (= (and b!4974081 res!2123370) b!4974082))

(assert (= (and b!4974082 res!2123368) b!4974083))

(assert (= (and d!1601705 (not res!2123369)) b!4974084))

(assert (=> b!4974084 m!6001308))

(assert (=> b!4974084 m!6002036))

(assert (=> b!4974084 m!6001308))

(assert (=> b!4974084 m!6002036))

(assert (=> b!4974082 m!6001308))

(declare-fun m!6003254 () Bool)

(assert (=> b!4974082 m!6003254))

(assert (=> b!4974082 m!6001308))

(assert (=> b!4974082 m!6003254))

(assert (=> b!4974083 m!6001308))

(declare-fun m!6003256 () Bool)

(assert (=> b!4974083 m!6003256))

(assert (=> b!4974083 m!6001308))

(assert (=> b!4974083 m!6003256))

(assert (=> b!4974083 m!6003256))

(assert (=> b!4974083 m!6003256))

(declare-fun m!6003258 () Bool)

(assert (=> b!4974083 m!6003258))

(assert (=> d!1601401 d!1601705))

(declare-fun d!1601711 () Bool)

(assert (=> d!1601711 (isPrefix!5251 (list!18383 input!1342) (list!18383 input!1342))))

(declare-fun lt!2054401 () Unit!148431)

(assert (=> d!1601711 (= lt!2054401 (choose!36709 (list!18383 input!1342) (list!18383 input!1342)))))

(assert (=> d!1601711 (= (lemmaIsPrefixRefl!3575 (list!18383 input!1342) (list!18383 input!1342)) lt!2054401)))

(declare-fun bs!1183744 () Bool)

(assert (= bs!1183744 d!1601711))

(assert (=> bs!1183744 m!6001308))

(assert (=> bs!1183744 m!6001308))

(assert (=> bs!1183744 m!6002324))

(assert (=> bs!1183744 m!6001308))

(assert (=> bs!1183744 m!6001308))

(declare-fun m!6003260 () Bool)

(assert (=> bs!1183744 m!6003260))

(assert (=> d!1601401 d!1601711))

(assert (=> d!1601401 d!1601329))

(assert (=> bs!1183713 d!1601455))

(assert (=> d!1601337 d!1601245))

(declare-fun d!1601713 () Bool)

(assert (=> d!1601713 (= (isEmpty!30977 (_1!34415 lt!2054108)) ((_ is Nil!57466) (_1!34415 lt!2054108)))))

(assert (=> d!1601337 d!1601713))

(declare-fun d!1601715 () Bool)

(declare-fun lt!2054460 () tuple2!62224)

(assert (=> d!1601715 (= lt!2054460 (findLongestMatch!1704 (regex!8400 (h!63915 rulesArg!259)) lt!2053676))))

(declare-datatypes ((List!57592 0))(
  ( (Nil!57468) (Cons!57468 (h!63916 Regex!13633) (t!369592 List!57592)) )
))
(declare-datatypes ((Context!6282 0))(
  ( (Context!6283 (exprs!3641 List!57592)) )
))
(declare-fun lt!2054462 () (InoxSet Context!6282))

(declare-fun findLongestMatchZipper!23 ((InoxSet Context!6282) List!57590) tuple2!62224)

(assert (=> d!1601715 (= lt!2054460 (findLongestMatchZipper!23 lt!2054462 lt!2053676))))

(declare-fun lt!2054461 () Unit!148431)

(declare-fun lt!2054465 () Unit!148431)

(assert (=> d!1601715 (= lt!2054461 lt!2054465)))

(declare-fun lt!2054459 () Int)

(declare-fun sizeTr!364 (List!57590 Int) Int)

(assert (=> d!1601715 (= (sizeTr!364 lt!2053676 lt!2054459) (+ (size!38097 lt!2053676) lt!2054459))))

(declare-fun lemmaSizeTrEqualsSize!363 (List!57590 Int) Unit!148431)

(assert (=> d!1601715 (= lt!2054465 (lemmaSizeTrEqualsSize!363 lt!2053676 lt!2054459))))

(assert (=> d!1601715 (= lt!2054459 0)))

(declare-fun lt!2054463 () Unit!148431)

(declare-fun lt!2054464 () Unit!148431)

(assert (=> d!1601715 (= lt!2054463 lt!2054464)))

(assert (=> d!1601715 (= (findLongestMatchZipper!23 lt!2054462 lt!2053676) (findLongestMatch!1704 (regex!8400 (h!63915 rulesArg!259)) lt!2053676))))

(declare-fun longestMatchSameAsRegex!20 (Regex!13633 (InoxSet Context!6282) List!57590) Unit!148431)

(assert (=> d!1601715 (= lt!2054464 (longestMatchSameAsRegex!20 (regex!8400 (h!63915 rulesArg!259)) lt!2054462 lt!2053676))))

(declare-fun focus!349 (Regex!13633) (InoxSet Context!6282))

(assert (=> d!1601715 (= lt!2054462 (focus!349 (regex!8400 (h!63915 rulesArg!259))))))

(assert (=> d!1601715 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1601715 (= (findLongestMatchWithZipper!100 (regex!8400 (h!63915 rulesArg!259)) lt!2053676) lt!2054460)))

(declare-fun bs!1183746 () Bool)

(assert (= bs!1183746 d!1601715))

(declare-fun m!6003370 () Bool)

(assert (=> bs!1183746 m!6003370))

(assert (=> bs!1183746 m!6001604))

(assert (=> bs!1183746 m!6002460))

(assert (=> bs!1183746 m!6001890))

(declare-fun m!6003376 () Bool)

(assert (=> bs!1183746 m!6003376))

(declare-fun m!6003378 () Bool)

(assert (=> bs!1183746 m!6003378))

(declare-fun m!6003382 () Bool)

(assert (=> bs!1183746 m!6003382))

(declare-fun m!6003384 () Bool)

(assert (=> bs!1183746 m!6003384))

(assert (=> d!1601337 d!1601715))

(assert (=> d!1601337 d!1601455))

(assert (=> b!4973490 d!1601567))

(declare-fun d!1601747 () Bool)

(assert (=> d!1601747 (= (isEmpty!30975 lt!2054151) (not ((_ is Some!14462) lt!2054151)))))

(assert (=> d!1601485 d!1601747))

(assert (=> d!1601485 d!1601213))

(assert (=> d!1601485 d!1601215))

(assert (=> d!1601485 d!1601329))

(declare-fun d!1601749 () Bool)

(assert (=> d!1601749 (dynLambda!23221 lambda!247506 (_1!34416 lt!2053837))))

(assert (=> d!1601749 true))

(declare-fun _$1!11245 () Unit!148431)

(assert (=> d!1601749 (= (choose!36714 lambda!247506 (_1!34416 lt!2053837)) _$1!11245)))

(declare-fun b_lambda!197393 () Bool)

(assert (=> (not b_lambda!197393) (not d!1601749)))

(declare-fun bs!1183748 () Bool)

(assert (= bs!1183748 d!1601749))

(assert (=> bs!1183748 m!6002758))

(assert (=> d!1601525 d!1601749))

(declare-fun d!1601757 () Bool)

(declare-fun choose!36719 (Int) Bool)

(assert (=> d!1601757 (= (Forall!1768 lambda!247506) (choose!36719 lambda!247506))))

(declare-fun bs!1183749 () Bool)

(assert (= bs!1183749 d!1601757))

(declare-fun m!6003396 () Bool)

(assert (=> bs!1183749 m!6003396))

(assert (=> d!1601525 d!1601757))

(assert (=> b!4973252 d!1601605))

(declare-fun d!1601759 () Bool)

(declare-fun c!848793 () Bool)

(assert (=> d!1601759 (= c!848793 ((_ is Node!15152) (left!41922 (right!42252 (c!848514 totalInput!464)))))))

(declare-fun e!3108776 () Bool)

(assert (=> d!1601759 (= (inv!75123 (left!41922 (right!42252 (c!848514 totalInput!464)))) e!3108776)))

(declare-fun b!4974137 () Bool)

(assert (=> b!4974137 (= e!3108776 (inv!75128 (left!41922 (right!42252 (c!848514 totalInput!464)))))))

(declare-fun b!4974138 () Bool)

(declare-fun e!3108777 () Bool)

(assert (=> b!4974138 (= e!3108776 e!3108777)))

(declare-fun res!2123388 () Bool)

(assert (=> b!4974138 (= res!2123388 (not ((_ is Leaf!25177) (left!41922 (right!42252 (c!848514 totalInput!464))))))))

(assert (=> b!4974138 (=> res!2123388 e!3108777)))

(declare-fun b!4974139 () Bool)

(assert (=> b!4974139 (= e!3108777 (inv!75129 (left!41922 (right!42252 (c!848514 totalInput!464)))))))

(assert (= (and d!1601759 c!848793) b!4974137))

(assert (= (and d!1601759 (not c!848793)) b!4974138))

(assert (= (and b!4974138 (not res!2123388)) b!4974139))

(declare-fun m!6003400 () Bool)

(assert (=> b!4974137 m!6003400))

(declare-fun m!6003402 () Bool)

(assert (=> b!4974139 m!6003402))

(assert (=> b!4973852 d!1601759))

(declare-fun d!1601761 () Bool)

(declare-fun c!848794 () Bool)

(assert (=> d!1601761 (= c!848794 ((_ is Node!15152) (right!42252 (right!42252 (c!848514 totalInput!464)))))))

(declare-fun e!3108778 () Bool)

(assert (=> d!1601761 (= (inv!75123 (right!42252 (right!42252 (c!848514 totalInput!464)))) e!3108778)))

(declare-fun b!4974140 () Bool)

(assert (=> b!4974140 (= e!3108778 (inv!75128 (right!42252 (right!42252 (c!848514 totalInput!464)))))))

(declare-fun b!4974141 () Bool)

(declare-fun e!3108779 () Bool)

(assert (=> b!4974141 (= e!3108778 e!3108779)))

(declare-fun res!2123389 () Bool)

(assert (=> b!4974141 (= res!2123389 (not ((_ is Leaf!25177) (right!42252 (right!42252 (c!848514 totalInput!464))))))))

(assert (=> b!4974141 (=> res!2123389 e!3108779)))

(declare-fun b!4974142 () Bool)

(assert (=> b!4974142 (= e!3108779 (inv!75129 (right!42252 (right!42252 (c!848514 totalInput!464)))))))

(assert (= (and d!1601761 c!848794) b!4974140))

(assert (= (and d!1601761 (not c!848794)) b!4974141))

(assert (= (and b!4974141 (not res!2123389)) b!4974142))

(declare-fun m!6003408 () Bool)

(assert (=> b!4974140 m!6003408))

(declare-fun m!6003410 () Bool)

(assert (=> b!4974142 m!6003410))

(assert (=> b!4973852 d!1601761))

(declare-fun bs!1183752 () Bool)

(declare-fun b!4974148 () Bool)

(assert (= bs!1183752 (and b!4974148 b!4972922)))

(declare-fun lambda!247531 () Int)

(assert (=> bs!1183752 (= (and (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (= lambda!247531 lambda!247506))))

(declare-fun bs!1183753 () Bool)

(assert (= bs!1183753 (and b!4974148 d!1601301)))

(assert (=> bs!1183753 (= (and (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (= lambda!247531 lambda!247516))))

(declare-fun bs!1183754 () Bool)

(assert (= bs!1183754 (and b!4974148 b!4973799)))

(assert (=> bs!1183754 (= (and (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) (= lambda!247531 lambda!247525))))

(declare-fun bs!1183756 () Bool)

(assert (= bs!1183756 (and b!4974148 d!1601689)))

(assert (=> bs!1183756 (= (and (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) (= lambda!247531 lambda!247530))))

(declare-fun b!4974153 () Bool)

(declare-fun e!3108787 () Bool)

(assert (=> b!4974153 (= e!3108787 true)))

(declare-fun b!4974152 () Bool)

(declare-fun e!3108786 () Bool)

(assert (=> b!4974152 (= e!3108786 e!3108787)))

(assert (=> b!4974148 e!3108786))

(assert (= b!4974152 b!4974153))

(assert (= b!4974148 b!4974152))

(assert (=> b!4974153 (< (dynLambda!23209 order!26257 (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))))) (dynLambda!23210 order!26259 lambda!247531))))

(assert (=> b!4974153 (< (dynLambda!23211 order!26261 (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))))) (dynLambda!23210 order!26259 lambda!247531))))

(declare-fun b!4974143 () Bool)

(declare-fun e!3108780 () Option!14464)

(assert (=> b!4974143 (= e!3108780 None!14463)))

(declare-fun b!4974144 () Bool)

(declare-fun e!3108784 () Bool)

(declare-fun lt!2054466 () List!57590)

(assert (=> b!4974144 (= e!3108784 (matchR!6643 (regex!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))) Nil!57466 (size!38097 Nil!57466) lt!2054466 lt!2054466 (size!38097 lt!2054466)))))))

(declare-fun e!3108782 () Bool)

(declare-fun b!4974145 () Bool)

(declare-fun lt!2054472 () Option!14464)

(assert (=> b!4974145 (= e!3108782 (= (list!18383 (_2!34411 (get!19958 lt!2054472))) (_2!34412 (get!19957 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 (t!369197 rulesArg!259))) (list!18383 input!1342))))))))

(declare-fun b!4974146 () Bool)

(declare-fun e!3108781 () Bool)

(assert (=> b!4974146 (= e!3108781 e!3108782)))

(declare-fun res!2123393 () Bool)

(assert (=> b!4974146 (=> (not res!2123393) (not e!3108782))))

(assert (=> b!4974146 (= res!2123393 (= (_1!34411 (get!19958 lt!2054472)) (_1!34412 (get!19957 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 (t!369197 rulesArg!259))) (list!18383 input!1342))))))))

(declare-fun b!4974147 () Bool)

(declare-fun e!3108783 () Bool)

(assert (=> b!4974147 (= e!3108783 e!3108781)))

(declare-fun res!2123391 () Bool)

(assert (=> b!4974147 (=> res!2123391 e!3108781)))

(assert (=> b!4974147 (= res!2123391 (not (isDefined!11377 lt!2054472)))))

(declare-fun lt!2054470 () tuple2!62226)

(assert (=> b!4974148 (= e!3108780 (Some!14463 (tuple2!62217 (Token!15297 (apply!13911 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))) (_1!34416 lt!2054470)) (h!63915 (t!369197 (t!369197 rulesArg!259))) (size!38098 (_1!34416 lt!2054470)) (list!18383 (_1!34416 lt!2054470))) (_2!34416 lt!2054470))))))

(assert (=> b!4974148 (= lt!2054466 (list!18383 input!1342))))

(declare-fun lt!2054475 () Unit!148431)

(assert (=> b!4974148 (= lt!2054475 (longestMatchIsAcceptedByMatchOrIsEmpty!1823 (regex!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))) lt!2054466))))

(declare-fun res!2123392 () Bool)

(assert (=> b!4974148 (= res!2123392 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))) Nil!57466 (size!38097 Nil!57466) lt!2054466 lt!2054466 (size!38097 lt!2054466)))))))

(assert (=> b!4974148 (=> res!2123392 e!3108784)))

(assert (=> b!4974148 e!3108784))

(declare-fun lt!2054471 () Unit!148431)

(assert (=> b!4974148 (= lt!2054471 lt!2054475)))

(declare-fun lt!2054473 () Unit!148431)

(assert (=> b!4974148 (= lt!2054473 (lemmaInv!1341 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))))))

(declare-fun lt!2054469 () Unit!148431)

(assert (=> b!4974148 (= lt!2054469 (ForallOf!1234 lambda!247531 (_1!34416 lt!2054470)))))

(declare-fun lt!2054474 () Unit!148431)

(assert (=> b!4974148 (= lt!2054474 (ForallOf!1234 lambda!247531 (seqFromList!6043 (list!18383 (_1!34416 lt!2054470)))))))

(declare-fun lt!2054468 () Option!14464)

(assert (=> b!4974148 (= lt!2054468 (Some!14463 (tuple2!62217 (Token!15297 (apply!13911 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))) (_1!34416 lt!2054470)) (h!63915 (t!369197 (t!369197 rulesArg!259))) (size!38098 (_1!34416 lt!2054470)) (list!18383 (_1!34416 lt!2054470))) (_2!34416 lt!2054470))))))

(declare-fun lt!2054467 () Unit!148431)

(assert (=> b!4974148 (= lt!2054467 (lemmaEqSameImage!1175 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))) (_1!34416 lt!2054470) (seqFromList!6043 (list!18383 (_1!34416 lt!2054470)))))))

(declare-fun d!1601767 () Bool)

(assert (=> d!1601767 e!3108783))

(declare-fun res!2123390 () Bool)

(assert (=> d!1601767 (=> (not res!2123390) (not e!3108783))))

(assert (=> d!1601767 (= res!2123390 (= (isDefined!11377 lt!2054472) (isDefined!11376 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 (t!369197 rulesArg!259))) (list!18383 input!1342)))))))

(assert (=> d!1601767 (= lt!2054472 e!3108780)))

(declare-fun c!848795 () Bool)

(assert (=> d!1601767 (= c!848795 (isEmpty!30978 (_1!34416 lt!2054470)))))

(assert (=> d!1601767 (= lt!2054470 (findLongestMatchWithZipperSequenceV2!171 (regex!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))) input!1342 totalInput!464))))

(assert (=> d!1601767 (ruleValid!3809 thiss!15247 (h!63915 (t!369197 (t!369197 rulesArg!259))))))

(assert (=> d!1601767 (= (maxPrefixOneRuleZipperSequenceV2!368 thiss!15247 (h!63915 (t!369197 (t!369197 rulesArg!259))) input!1342 totalInput!464) lt!2054472)))

(assert (= (and d!1601767 c!848795) b!4974143))

(assert (= (and d!1601767 (not c!848795)) b!4974148))

(assert (= (and b!4974148 (not res!2123392)) b!4974144))

(assert (= (and d!1601767 res!2123390) b!4974147))

(assert (= (and b!4974147 (not res!2123391)) b!4974146))

(assert (= (and b!4974146 res!2123393) b!4974145))

(assert (=> b!4974144 m!6001546))

(declare-fun m!6003426 () Bool)

(assert (=> b!4974144 m!6003426))

(assert (=> b!4974144 m!6001546))

(assert (=> b!4974144 m!6003426))

(declare-fun m!6003428 () Bool)

(assert (=> b!4974144 m!6003428))

(declare-fun m!6003430 () Bool)

(assert (=> b!4974144 m!6003430))

(assert (=> b!4974145 m!6001308))

(declare-fun m!6003432 () Bool)

(assert (=> b!4974145 m!6003432))

(declare-fun m!6003434 () Bool)

(assert (=> b!4974145 m!6003434))

(assert (=> b!4974145 m!6002916))

(declare-fun m!6003436 () Bool)

(assert (=> b!4974145 m!6003436))

(assert (=> b!4974145 m!6001308))

(assert (=> b!4974145 m!6002916))

(assert (=> b!4974146 m!6003434))

(assert (=> b!4974146 m!6001308))

(assert (=> b!4974146 m!6001308))

(assert (=> b!4974146 m!6002916))

(assert (=> b!4974146 m!6002916))

(assert (=> b!4974146 m!6003436))

(assert (=> b!4974148 m!6001308))

(assert (=> b!4974148 m!6001546))

(declare-fun m!6003438 () Bool)

(assert (=> b!4974148 m!6003438))

(declare-fun m!6003440 () Bool)

(assert (=> b!4974148 m!6003440))

(declare-fun m!6003442 () Bool)

(assert (=> b!4974148 m!6003442))

(declare-fun m!6003444 () Bool)

(assert (=> b!4974148 m!6003444))

(assert (=> b!4974148 m!6003426))

(assert (=> b!4974148 m!6001546))

(assert (=> b!4974148 m!6003426))

(assert (=> b!4974148 m!6003428))

(declare-fun m!6003446 () Bool)

(assert (=> b!4974148 m!6003446))

(assert (=> b!4974148 m!6003438))

(declare-fun m!6003448 () Bool)

(assert (=> b!4974148 m!6003448))

(declare-fun m!6003450 () Bool)

(assert (=> b!4974148 m!6003450))

(assert (=> b!4974148 m!6003438))

(declare-fun m!6003452 () Bool)

(assert (=> b!4974148 m!6003452))

(assert (=> b!4974148 m!6003450))

(declare-fun m!6003454 () Bool)

(assert (=> b!4974148 m!6003454))

(declare-fun m!6003456 () Bool)

(assert (=> b!4974148 m!6003456))

(assert (=> d!1601767 m!6001308))

(declare-fun m!6003458 () Bool)

(assert (=> d!1601767 m!6003458))

(declare-fun m!6003460 () Bool)

(assert (=> d!1601767 m!6003460))

(assert (=> d!1601767 m!6002916))

(declare-fun m!6003462 () Bool)

(assert (=> d!1601767 m!6003462))

(declare-fun m!6003464 () Bool)

(assert (=> d!1601767 m!6003464))

(assert (=> d!1601767 m!6001308))

(assert (=> d!1601767 m!6002916))

(declare-fun m!6003466 () Bool)

(assert (=> d!1601767 m!6003466))

(assert (=> b!4974147 m!6003460))

(assert (=> bm!346850 d!1601767))

(declare-fun b!4974154 () Bool)

(declare-fun res!2123399 () Bool)

(declare-fun e!3108788 () Bool)

(assert (=> b!4974154 (=> (not res!2123399) (not e!3108788))))

(assert (=> b!4974154 (= res!2123399 (not (isEmpty!30980 (left!41922 (right!42252 (c!848514 input!1342))))))))

(declare-fun b!4974155 () Bool)

(declare-fun res!2123398 () Bool)

(assert (=> b!4974155 (=> (not res!2123398) (not e!3108788))))

(assert (=> b!4974155 (= res!2123398 (isBalanced!4209 (right!42252 (right!42252 (c!848514 input!1342)))))))

(declare-fun d!1601785 () Bool)

(declare-fun res!2123397 () Bool)

(declare-fun e!3108789 () Bool)

(assert (=> d!1601785 (=> res!2123397 e!3108789)))

(assert (=> d!1601785 (= res!2123397 (not ((_ is Node!15152) (right!42252 (c!848514 input!1342)))))))

(assert (=> d!1601785 (= (isBalanced!4209 (right!42252 (c!848514 input!1342))) e!3108789)))

(declare-fun b!4974156 () Bool)

(assert (=> b!4974156 (= e!3108788 (not (isEmpty!30980 (right!42252 (right!42252 (c!848514 input!1342))))))))

(declare-fun b!4974157 () Bool)

(assert (=> b!4974157 (= e!3108789 e!3108788)))

(declare-fun res!2123400 () Bool)

(assert (=> b!4974157 (=> (not res!2123400) (not e!3108788))))

(assert (=> b!4974157 (= res!2123400 (<= (- 1) (- (height!2020 (left!41922 (right!42252 (c!848514 input!1342)))) (height!2020 (right!42252 (right!42252 (c!848514 input!1342)))))))))

(declare-fun b!4974158 () Bool)

(declare-fun res!2123402 () Bool)

(assert (=> b!4974158 (=> (not res!2123402) (not e!3108788))))

(assert (=> b!4974158 (= res!2123402 (isBalanced!4209 (left!41922 (right!42252 (c!848514 input!1342)))))))

(declare-fun b!4974159 () Bool)

(declare-fun res!2123401 () Bool)

(assert (=> b!4974159 (=> (not res!2123401) (not e!3108788))))

(assert (=> b!4974159 (= res!2123401 (<= (- (height!2020 (left!41922 (right!42252 (c!848514 input!1342)))) (height!2020 (right!42252 (right!42252 (c!848514 input!1342))))) 1))))

(assert (= (and d!1601785 (not res!2123397)) b!4974157))

(assert (= (and b!4974157 res!2123400) b!4974159))

(assert (= (and b!4974159 res!2123401) b!4974158))

(assert (= (and b!4974158 res!2123402) b!4974155))

(assert (= (and b!4974155 res!2123398) b!4974154))

(assert (= (and b!4974154 res!2123399) b!4974156))

(declare-fun m!6003468 () Bool)

(assert (=> b!4974155 m!6003468))

(declare-fun m!6003470 () Bool)

(assert (=> b!4974158 m!6003470))

(declare-fun m!6003472 () Bool)

(assert (=> b!4974159 m!6003472))

(declare-fun m!6003474 () Bool)

(assert (=> b!4974159 m!6003474))

(declare-fun m!6003476 () Bool)

(assert (=> b!4974156 m!6003476))

(declare-fun m!6003478 () Bool)

(assert (=> b!4974154 m!6003478))

(assert (=> b!4974157 m!6003472))

(assert (=> b!4974157 m!6003474))

(assert (=> b!4973567 d!1601785))

(declare-fun b!4974164 () Bool)

(declare-fun e!3108794 () Bool)

(declare-fun lt!2054481 () List!57590)

(declare-fun e!3108793 () Int)

(assert (=> b!4974164 (= e!3108794 (= (size!38097 lt!2054481) e!3108793))))

(declare-fun c!848798 () Bool)

(assert (=> b!4974164 (= c!848798 (<= (- (- (size!38097 (list!18383 totalInput!464)) (size!38097 lt!2053676)) 1) 0))))

(declare-fun b!4974165 () Bool)

(declare-fun e!3108792 () List!57590)

(assert (=> b!4974165 (= e!3108792 (t!369196 (list!18383 totalInput!464)))))

(declare-fun b!4974166 () Bool)

(declare-fun e!3108795 () Int)

(assert (=> b!4974166 (= e!3108795 0)))

(declare-fun call!346946 () Int)

(declare-fun b!4974167 () Bool)

(assert (=> b!4974167 (= e!3108795 (- call!346946 (- (- (size!38097 (list!18383 totalInput!464)) (size!38097 lt!2053676)) 1)))))

(declare-fun b!4974168 () Bool)

(assert (=> b!4974168 (= e!3108792 (drop!2356 (t!369196 (t!369196 (list!18383 totalInput!464))) (- (- (- (size!38097 (list!18383 totalInput!464)) (size!38097 lt!2053676)) 1) 1)))))

(declare-fun b!4974169 () Bool)

(declare-fun e!3108796 () List!57590)

(assert (=> b!4974169 (= e!3108796 Nil!57466)))

(declare-fun b!4974170 () Bool)

(assert (=> b!4974170 (= e!3108793 call!346946)))

(declare-fun b!4974171 () Bool)

(assert (=> b!4974171 (= e!3108796 e!3108792)))

(declare-fun c!848801 () Bool)

(assert (=> b!4974171 (= c!848801 (<= (- (- (size!38097 (list!18383 totalInput!464)) (size!38097 lt!2053676)) 1) 0))))

(declare-fun b!4974172 () Bool)

(assert (=> b!4974172 (= e!3108793 e!3108795)))

(declare-fun c!848799 () Bool)

(assert (=> b!4974172 (= c!848799 (>= (- (- (size!38097 (list!18383 totalInput!464)) (size!38097 lt!2053676)) 1) call!346946))))

(declare-fun bm!346941 () Bool)

(assert (=> bm!346941 (= call!346946 (size!38097 (t!369196 (list!18383 totalInput!464))))))

(declare-fun d!1601787 () Bool)

(assert (=> d!1601787 e!3108794))

(declare-fun res!2123403 () Bool)

(assert (=> d!1601787 (=> (not res!2123403) (not e!3108794))))

(assert (=> d!1601787 (= res!2123403 (= ((_ map implies) (content!10197 lt!2054481) (content!10197 (t!369196 (list!18383 totalInput!464)))) ((as const (InoxSet C!27516)) true)))))

(assert (=> d!1601787 (= lt!2054481 e!3108796)))

(declare-fun c!848800 () Bool)

(assert (=> d!1601787 (= c!848800 ((_ is Nil!57466) (t!369196 (list!18383 totalInput!464))))))

(assert (=> d!1601787 (= (drop!2356 (t!369196 (list!18383 totalInput!464)) (- (- (size!38097 (list!18383 totalInput!464)) (size!38097 lt!2053676)) 1)) lt!2054481)))

(assert (= (and d!1601787 c!848800) b!4974169))

(assert (= (and d!1601787 (not c!848800)) b!4974171))

(assert (= (and b!4974171 c!848801) b!4974165))

(assert (= (and b!4974171 (not c!848801)) b!4974168))

(assert (= (and d!1601787 res!2123403) b!4974164))

(assert (= (and b!4974164 c!848798) b!4974170))

(assert (= (and b!4974164 (not c!848798)) b!4974172))

(assert (= (and b!4974172 c!848799) b!4974166))

(assert (= (and b!4974172 (not c!848799)) b!4974167))

(assert (= (or b!4974170 b!4974172 b!4974167) bm!346941))

(declare-fun m!6003484 () Bool)

(assert (=> b!4974164 m!6003484))

(declare-fun m!6003486 () Bool)

(assert (=> b!4974168 m!6003486))

(assert (=> bm!346941 m!6002078))

(declare-fun m!6003488 () Bool)

(assert (=> d!1601787 m!6003488))

(declare-fun m!6003490 () Bool)

(assert (=> d!1601787 m!6003490))

(assert (=> b!4973789 d!1601787))

(declare-fun d!1601791 () Bool)

(assert (=> d!1601791 (= (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837)))) (isBalanced!4209 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))))))))

(declare-fun bs!1183759 () Bool)

(assert (= bs!1183759 d!1601791))

(declare-fun m!6003492 () Bool)

(assert (=> bs!1183759 m!6003492))

(assert (=> tb!261205 d!1601791))

(declare-fun d!1601793 () Bool)

(declare-fun lt!2054484 () Int)

(assert (=> d!1601793 (>= lt!2054484 0)))

(declare-fun e!3108800 () Int)

(assert (=> d!1601793 (= lt!2054484 e!3108800)))

(declare-fun c!848804 () Bool)

(assert (=> d!1601793 (= c!848804 ((_ is Nil!57466) (t!369196 lt!2053676)))))

(assert (=> d!1601793 (= (size!38097 (t!369196 lt!2053676)) lt!2054484)))

(declare-fun b!4974179 () Bool)

(assert (=> b!4974179 (= e!3108800 0)))

(declare-fun b!4974180 () Bool)

(assert (=> b!4974180 (= e!3108800 (+ 1 (size!38097 (t!369196 (t!369196 lt!2053676)))))))

(assert (= (and d!1601793 c!848804) b!4974179))

(assert (= (and d!1601793 (not c!848804)) b!4974180))

(declare-fun m!6003498 () Bool)

(assert (=> b!4974180 m!6003498))

(assert (=> b!4973221 d!1601793))

(declare-fun d!1601795 () Bool)

(declare-fun res!2123406 () Bool)

(declare-fun e!3108801 () Bool)

(assert (=> d!1601795 (=> (not res!2123406) (not e!3108801))))

(assert (=> d!1601795 (= res!2123406 (<= (size!38097 (list!18387 (xs!18478 (left!41922 (c!848514 input!1342))))) 512))))

(assert (=> d!1601795 (= (inv!75129 (left!41922 (c!848514 input!1342))) e!3108801)))

(declare-fun b!4974181 () Bool)

(declare-fun res!2123407 () Bool)

(assert (=> b!4974181 (=> (not res!2123407) (not e!3108801))))

(assert (=> b!4974181 (= res!2123407 (= (csize!30535 (left!41922 (c!848514 input!1342))) (size!38097 (list!18387 (xs!18478 (left!41922 (c!848514 input!1342)))))))))

(declare-fun b!4974182 () Bool)

(assert (=> b!4974182 (= e!3108801 (and (> (csize!30535 (left!41922 (c!848514 input!1342))) 0) (<= (csize!30535 (left!41922 (c!848514 input!1342))) 512)))))

(assert (= (and d!1601795 res!2123406) b!4974181))

(assert (= (and b!4974181 res!2123407) b!4974182))

(declare-fun m!6003506 () Bool)

(assert (=> d!1601795 m!6003506))

(assert (=> d!1601795 m!6003506))

(declare-fun m!6003508 () Bool)

(assert (=> d!1601795 m!6003508))

(assert (=> b!4974181 m!6003506))

(assert (=> b!4974181 m!6003506))

(assert (=> b!4974181 m!6003508))

(assert (=> b!4973763 d!1601795))

(declare-fun d!1601799 () Bool)

(assert (=> d!1601799 (= (list!18383 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))) (list!18385 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))))))

(declare-fun bs!1183760 () Bool)

(assert (= bs!1183760 d!1601799))

(declare-fun m!6003518 () Bool)

(assert (=> bs!1183760 m!6003518))

(assert (=> bs!1183712 d!1601799))

(declare-fun d!1601801 () Bool)

(assert (=> d!1601801 (= (list!18383 (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))) (list!18385 (c!848514 (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))))

(declare-fun bs!1183761 () Bool)

(assert (= bs!1183761 d!1601801))

(declare-fun m!6003524 () Bool)

(assert (=> bs!1183761 m!6003524))

(assert (=> bs!1183712 d!1601801))

(declare-fun d!1601805 () Bool)

(assert (=> d!1601805 (= (isDefined!11376 lt!2054115) (not (isEmpty!30975 lt!2054115)))))

(declare-fun bs!1183762 () Bool)

(assert (= bs!1183762 d!1601805))

(assert (=> bs!1183762 m!6002322))

(assert (=> b!4973483 d!1601805))

(declare-fun bs!1183763 () Bool)

(declare-fun d!1601807 () Bool)

(assert (= bs!1183763 (and d!1601807 d!1601161)))

(declare-fun lambda!247532 () Int)

(assert (=> bs!1183763 (= lambda!247532 lambda!247498)))

(declare-fun bs!1183764 () Bool)

(assert (= bs!1183764 (and d!1601807 d!1601329)))

(assert (=> bs!1183764 (= lambda!247532 lambda!247517)))

(assert (=> d!1601807 true))

(declare-fun lt!2054486 () Bool)

(assert (=> d!1601807 (= lt!2054486 (forall!13335 (t!369197 (t!369197 rulesArg!259)) lambda!247532))))

(declare-fun e!3108805 () Bool)

(assert (=> d!1601807 (= lt!2054486 e!3108805)))

(declare-fun res!2123413 () Bool)

(assert (=> d!1601807 (=> res!2123413 e!3108805)))

(assert (=> d!1601807 (= res!2123413 (not ((_ is Cons!57467) (t!369197 (t!369197 rulesArg!259)))))))

(assert (=> d!1601807 (= (rulesValidInductive!3303 thiss!15247 (t!369197 (t!369197 rulesArg!259))) lt!2054486)))

(declare-fun b!4974187 () Bool)

(declare-fun e!3108806 () Bool)

(assert (=> b!4974187 (= e!3108805 e!3108806)))

(declare-fun res!2123412 () Bool)

(assert (=> b!4974187 (=> (not res!2123412) (not e!3108806))))

(assert (=> b!4974187 (= res!2123412 (ruleValid!3809 thiss!15247 (h!63915 (t!369197 (t!369197 rulesArg!259)))))))

(declare-fun b!4974188 () Bool)

(assert (=> b!4974188 (= e!3108806 (rulesValidInductive!3303 thiss!15247 (t!369197 (t!369197 (t!369197 rulesArg!259)))))))

(assert (= (and d!1601807 (not res!2123413)) b!4974187))

(assert (= (and b!4974187 res!2123412) b!4974188))

(declare-fun m!6003526 () Bool)

(assert (=> d!1601807 m!6003526))

(assert (=> b!4974187 m!6003458))

(declare-fun m!6003528 () Bool)

(assert (=> b!4974188 m!6003528))

(assert (=> b!4973367 d!1601807))

(declare-fun d!1601809 () Bool)

(assert (=> d!1601809 (= (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))) ((_ is Nil!57466) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))))))

(assert (=> b!4973481 d!1601809))

(declare-fun d!1601811 () Bool)

(assert (=> d!1601811 (= (seqFromList!6043 (_1!34415 lt!2054108)) (fromListB!2737 (_1!34415 lt!2054108)))))

(declare-fun bs!1183765 () Bool)

(assert (= bs!1183765 d!1601811))

(declare-fun m!6003530 () Bool)

(assert (=> bs!1183765 m!6003530))

(assert (=> b!4973481 d!1601811))

(declare-fun d!1601813 () Bool)

(assert (=> d!1601813 (= (apply!13911 (transformation!8400 (h!63915 rulesArg!259)) (seqFromList!6043 (_1!34415 lt!2054108))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054108))))))

(declare-fun b_lambda!197397 () Bool)

(assert (=> (not b_lambda!197397) (not d!1601813)))

(declare-fun t!369319 () Bool)

(declare-fun tb!261253 () Bool)

(assert (=> (and b!4972699 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369319) tb!261253))

(declare-fun result!326444 () Bool)

(assert (=> tb!261253 (= result!326444 (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054108)))))))

(declare-fun m!6003532 () Bool)

(assert (=> tb!261253 m!6003532))

(assert (=> d!1601813 t!369319))

(declare-fun b_and!348987 () Bool)

(assert (= b_and!348969 (and (=> t!369319 result!326444) b_and!348987)))

(declare-fun t!369321 () Bool)

(declare-fun tb!261255 () Bool)

(assert (=> (and b!4973009 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369321) tb!261255))

(declare-fun result!326446 () Bool)

(assert (= result!326446 result!326444))

(assert (=> d!1601813 t!369321))

(declare-fun b_and!348989 () Bool)

(assert (= b_and!348971 (and (=> t!369321 result!326446) b_and!348989)))

(declare-fun t!369323 () Bool)

(declare-fun tb!261257 () Bool)

(assert (=> (and b!4973824 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369323) tb!261257))

(declare-fun result!326448 () Bool)

(assert (= result!326448 result!326444))

(assert (=> d!1601813 t!369323))

(declare-fun b_and!348991 () Bool)

(assert (= b_and!348973 (and (=> t!369323 result!326448) b_and!348991)))

(assert (=> d!1601813 m!6002296))

(declare-fun m!6003538 () Bool)

(assert (=> d!1601813 m!6003538))

(assert (=> b!4973481 d!1601813))

(declare-fun bm!346942 () Bool)

(declare-fun call!346954 () List!57590)

(assert (=> bm!346942 (= call!346954 (tail!9808 lt!2053676))))

(declare-fun b!4974189 () Bool)

(declare-fun e!3108810 () tuple2!62224)

(assert (=> b!4974189 (= e!3108810 (tuple2!62225 Nil!57466 lt!2053676))))

(declare-fun b!4974190 () Bool)

(declare-fun e!3108813 () tuple2!62224)

(declare-fun e!3108808 () tuple2!62224)

(assert (=> b!4974190 (= e!3108813 e!3108808)))

(declare-fun lt!2054494 () tuple2!62224)

(declare-fun call!346950 () tuple2!62224)

(assert (=> b!4974190 (= lt!2054494 call!346950)))

(declare-fun c!848809 () Bool)

(assert (=> b!4974190 (= c!848809 (isEmpty!30977 (_1!34415 lt!2054494)))))

(declare-fun b!4974191 () Bool)

(declare-fun e!3108811 () Bool)

(declare-fun lt!2054495 () tuple2!62224)

(assert (=> b!4974191 (= e!3108811 (>= (size!38097 (_1!34415 lt!2054495)) (size!38097 Nil!57466)))))

(declare-fun bm!346943 () Bool)

(declare-fun call!346948 () Unit!148431)

(assert (=> bm!346943 (= call!346948 (lemmaIsPrefixSameLengthThenSameList!1215 lt!2053676 Nil!57466 lt!2053676))))

(declare-fun b!4974192 () Bool)

(declare-fun e!3108814 () Bool)

(assert (=> b!4974192 (= e!3108814 e!3108811)))

(declare-fun res!2123415 () Bool)

(assert (=> b!4974192 (=> res!2123415 e!3108811)))

(assert (=> b!4974192 (= res!2123415 (isEmpty!30977 (_1!34415 lt!2054495)))))

(declare-fun b!4974193 () Bool)

(declare-fun c!848808 () Bool)

(declare-fun call!346949 () Bool)

(assert (=> b!4974193 (= c!848808 call!346949)))

(declare-fun lt!2054500 () Unit!148431)

(declare-fun lt!2054491 () Unit!148431)

(assert (=> b!4974193 (= lt!2054500 lt!2054491)))

(assert (=> b!4974193 (= lt!2053676 Nil!57466)))

(assert (=> b!4974193 (= lt!2054491 call!346948)))

(declare-fun lt!2054512 () Unit!148431)

(declare-fun lt!2054511 () Unit!148431)

(assert (=> b!4974193 (= lt!2054512 lt!2054511)))

(declare-fun call!346951 () Bool)

(assert (=> b!4974193 call!346951))

(declare-fun call!346953 () Unit!148431)

(assert (=> b!4974193 (= lt!2054511 call!346953)))

(declare-fun e!3108815 () tuple2!62224)

(assert (=> b!4974193 (= e!3108815 e!3108810)))

(declare-fun b!4974194 () Bool)

(declare-fun e!3108809 () tuple2!62224)

(assert (=> b!4974194 (= e!3108809 (tuple2!62225 Nil!57466 lt!2053676))))

(declare-fun b!4974195 () Bool)

(declare-fun e!3108812 () Unit!148431)

(declare-fun Unit!148451 () Unit!148431)

(assert (=> b!4974195 (= e!3108812 Unit!148451)))

(declare-fun bm!346944 () Bool)

(declare-fun call!346952 () C!27516)

(assert (=> bm!346944 (= call!346952 (head!10675 lt!2053676))))

(declare-fun b!4974196 () Bool)

(assert (=> b!4974196 (= e!3108809 e!3108815)))

(declare-fun c!848805 () Bool)

(assert (=> b!4974196 (= c!848805 (= (size!38097 Nil!57466) (size!38097 lt!2053676)))))

(declare-fun b!4974197 () Bool)

(assert (=> b!4974197 (= e!3108808 (tuple2!62225 Nil!57466 lt!2053676))))

(declare-fun bm!346945 () Bool)

(assert (=> bm!346945 (= call!346949 (nullable!4627 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun bm!346946 () Bool)

(assert (=> bm!346946 (= call!346953 (lemmaIsPrefixRefl!3575 lt!2053676 lt!2053676))))

(declare-fun bm!346947 () Bool)

(assert (=> bm!346947 (= call!346951 (isPrefix!5251 lt!2053676 lt!2053676))))

(declare-fun b!4974198 () Bool)

(declare-fun c!848810 () Bool)

(assert (=> b!4974198 (= c!848810 call!346949)))

(declare-fun lt!2054510 () Unit!148431)

(declare-fun lt!2054516 () Unit!148431)

(assert (=> b!4974198 (= lt!2054510 lt!2054516)))

(declare-fun lt!2054497 () C!27516)

(declare-fun lt!2054504 () List!57590)

(assert (=> b!4974198 (= (++!12539 (++!12539 Nil!57466 (Cons!57466 lt!2054497 Nil!57466)) lt!2054504) lt!2053676)))

(assert (=> b!4974198 (= lt!2054516 (lemmaMoveElementToOtherListKeepsConcatEq!1452 Nil!57466 lt!2054497 lt!2054504 lt!2053676))))

(assert (=> b!4974198 (= lt!2054504 (tail!9808 lt!2053676))))

(assert (=> b!4974198 (= lt!2054497 (head!10675 lt!2053676))))

(declare-fun lt!2054498 () Unit!148431)

(declare-fun lt!2054508 () Unit!148431)

(assert (=> b!4974198 (= lt!2054498 lt!2054508)))

(assert (=> b!4974198 (isPrefix!5251 (++!12539 Nil!57466 (Cons!57466 (head!10675 (getSuffix!3095 lt!2053676 Nil!57466)) Nil!57466)) lt!2053676)))

(assert (=> b!4974198 (= lt!2054508 (lemmaAddHeadSuffixToPrefixStillPrefix!842 Nil!57466 lt!2053676))))

(declare-fun lt!2054505 () Unit!148431)

(declare-fun lt!2054492 () Unit!148431)

(assert (=> b!4974198 (= lt!2054505 lt!2054492)))

(assert (=> b!4974198 (= lt!2054492 (lemmaAddHeadSuffixToPrefixStillPrefix!842 Nil!57466 lt!2053676))))

(declare-fun lt!2054514 () List!57590)

(assert (=> b!4974198 (= lt!2054514 (++!12539 Nil!57466 (Cons!57466 (head!10675 lt!2053676) Nil!57466)))))

(declare-fun lt!2054515 () Unit!148431)

(assert (=> b!4974198 (= lt!2054515 e!3108812)))

(declare-fun c!848806 () Bool)

(assert (=> b!4974198 (= c!848806 (= (size!38097 Nil!57466) (size!38097 lt!2053676)))))

(declare-fun lt!2054507 () Unit!148431)

(declare-fun lt!2054503 () Unit!148431)

(assert (=> b!4974198 (= lt!2054507 lt!2054503)))

(assert (=> b!4974198 (<= (size!38097 Nil!57466) (size!38097 lt!2053676))))

(assert (=> b!4974198 (= lt!2054503 (lemmaIsPrefixThenSmallerEqSize!768 Nil!57466 lt!2053676))))

(assert (=> b!4974198 (= e!3108815 e!3108813)))

(declare-fun b!4974199 () Bool)

(assert (=> b!4974199 (= e!3108810 (tuple2!62225 Nil!57466 Nil!57466))))

(declare-fun b!4974200 () Bool)

(assert (=> b!4974200 (= e!3108813 call!346950)))

(declare-fun bm!346948 () Bool)

(declare-fun call!346947 () Regex!13633)

(assert (=> bm!346948 (= call!346947 (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) call!346952))))

(declare-fun b!4974201 () Bool)

(assert (=> b!4974201 (= e!3108808 lt!2054494)))

(declare-fun d!1601817 () Bool)

(assert (=> d!1601817 e!3108814))

(declare-fun res!2123414 () Bool)

(assert (=> d!1601817 (=> (not res!2123414) (not e!3108814))))

(assert (=> d!1601817 (= res!2123414 (= (++!12539 (_1!34415 lt!2054495) (_2!34415 lt!2054495)) lt!2053676))))

(assert (=> d!1601817 (= lt!2054495 e!3108809)))

(declare-fun c!848807 () Bool)

(assert (=> d!1601817 (= c!848807 (lostCause!1139 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun lt!2054513 () Unit!148431)

(declare-fun Unit!148452 () Unit!148431)

(assert (=> d!1601817 (= lt!2054513 Unit!148452)))

(assert (=> d!1601817 (= (getSuffix!3095 lt!2053676 Nil!57466) lt!2053676)))

(declare-fun lt!2054499 () Unit!148431)

(declare-fun lt!2054506 () Unit!148431)

(assert (=> d!1601817 (= lt!2054499 lt!2054506)))

(declare-fun lt!2054509 () List!57590)

(assert (=> d!1601817 (= lt!2053676 lt!2054509)))

(assert (=> d!1601817 (= lt!2054506 (lemmaSamePrefixThenSameSuffix!2507 Nil!57466 lt!2053676 Nil!57466 lt!2054509 lt!2053676))))

(assert (=> d!1601817 (= lt!2054509 (getSuffix!3095 lt!2053676 Nil!57466))))

(declare-fun lt!2054493 () Unit!148431)

(declare-fun lt!2054502 () Unit!148431)

(assert (=> d!1601817 (= lt!2054493 lt!2054502)))

(assert (=> d!1601817 (isPrefix!5251 Nil!57466 (++!12539 Nil!57466 lt!2053676))))

(assert (=> d!1601817 (= lt!2054502 (lemmaConcatTwoListThenFirstIsPrefix!3353 Nil!57466 lt!2053676))))

(assert (=> d!1601817 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1601817 (= (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)) lt!2054495)))

(declare-fun bm!346949 () Bool)

(assert (=> bm!346949 (= call!346950 (findLongestMatchInner!1862 call!346947 lt!2054514 (+ (size!38097 Nil!57466) 1) call!346954 lt!2053676 (size!38097 lt!2053676)))))

(declare-fun b!4974202 () Bool)

(declare-fun Unit!148453 () Unit!148431)

(assert (=> b!4974202 (= e!3108812 Unit!148453)))

(declare-fun lt!2054490 () Unit!148431)

(assert (=> b!4974202 (= lt!2054490 call!346953)))

(assert (=> b!4974202 call!346951))

(declare-fun lt!2054517 () Unit!148431)

(assert (=> b!4974202 (= lt!2054517 lt!2054490)))

(declare-fun lt!2054496 () Unit!148431)

(assert (=> b!4974202 (= lt!2054496 call!346948)))

(assert (=> b!4974202 (= lt!2053676 Nil!57466)))

(declare-fun lt!2054501 () Unit!148431)

(assert (=> b!4974202 (= lt!2054501 lt!2054496)))

(assert (=> b!4974202 false))

(assert (= (and d!1601817 c!848807) b!4974194))

(assert (= (and d!1601817 (not c!848807)) b!4974196))

(assert (= (and b!4974196 c!848805) b!4974193))

(assert (= (and b!4974196 (not c!848805)) b!4974198))

(assert (= (and b!4974193 c!848808) b!4974199))

(assert (= (and b!4974193 (not c!848808)) b!4974189))

(assert (= (and b!4974198 c!848806) b!4974202))

(assert (= (and b!4974198 (not c!848806)) b!4974195))

(assert (= (and b!4974198 c!848810) b!4974190))

(assert (= (and b!4974198 (not c!848810)) b!4974200))

(assert (= (and b!4974190 c!848809) b!4974197))

(assert (= (and b!4974190 (not c!848809)) b!4974201))

(assert (= (or b!4974190 b!4974200) bm!346944))

(assert (= (or b!4974190 b!4974200) bm!346942))

(assert (= (or b!4974190 b!4974200) bm!346948))

(assert (= (or b!4974190 b!4974200) bm!346949))

(assert (= (or b!4974193 b!4974202) bm!346946))

(assert (= (or b!4974193 b!4974202) bm!346943))

(assert (= (or b!4974193 b!4974198) bm!346945))

(assert (= (or b!4974193 b!4974202) bm!346947))

(assert (= (and d!1601817 res!2123414) b!4974192))

(assert (= (and b!4974192 (not res!2123415)) b!4974191))

(assert (=> bm!346942 m!6001644))

(declare-fun m!6003562 () Bool)

(assert (=> d!1601817 m!6003562))

(declare-fun m!6003564 () Bool)

(assert (=> d!1601817 m!6003564))

(declare-fun m!6003566 () Bool)

(assert (=> d!1601817 m!6003566))

(assert (=> d!1601817 m!6002460))

(declare-fun m!6003568 () Bool)

(assert (=> d!1601817 m!6003568))

(declare-fun m!6003570 () Bool)

(assert (=> d!1601817 m!6003570))

(declare-fun m!6003572 () Bool)

(assert (=> d!1601817 m!6003572))

(assert (=> d!1601817 m!6003564))

(assert (=> d!1601817 m!6002656))

(assert (=> bm!346949 m!6001604))

(declare-fun m!6003576 () Bool)

(assert (=> bm!346949 m!6003576))

(assert (=> bm!346944 m!6001642))

(declare-fun m!6003578 () Bool)

(assert (=> b!4974190 m!6003578))

(declare-fun m!6003580 () Bool)

(assert (=> bm!346943 m!6003580))

(declare-fun m!6003582 () Bool)

(assert (=> b!4974191 m!6003582))

(assert (=> b!4974191 m!6001546))

(assert (=> bm!346946 m!6001312))

(assert (=> bm!346945 m!6002462))

(declare-fun m!6003584 () Bool)

(assert (=> b!4974198 m!6003584))

(assert (=> b!4974198 m!6001604))

(assert (=> b!4974198 m!6003570))

(declare-fun m!6003586 () Bool)

(assert (=> b!4974198 m!6003586))

(declare-fun m!6003588 () Bool)

(assert (=> b!4974198 m!6003588))

(declare-fun m!6003590 () Bool)

(assert (=> b!4974198 m!6003590))

(assert (=> b!4974198 m!6003588))

(declare-fun m!6003592 () Bool)

(assert (=> b!4974198 m!6003592))

(assert (=> b!4974198 m!6001642))

(assert (=> b!4974198 m!6003586))

(declare-fun m!6003594 () Bool)

(assert (=> b!4974198 m!6003594))

(assert (=> b!4974198 m!6001644))

(assert (=> b!4974198 m!6001546))

(assert (=> b!4974198 m!6003570))

(declare-fun m!6003596 () Bool)

(assert (=> b!4974198 m!6003596))

(declare-fun m!6003598 () Bool)

(assert (=> b!4974198 m!6003598))

(declare-fun m!6003602 () Bool)

(assert (=> b!4974198 m!6003602))

(assert (=> bm!346947 m!6001310))

(declare-fun m!6003606 () Bool)

(assert (=> bm!346948 m!6003606))

(declare-fun m!6003608 () Bool)

(assert (=> b!4974192 m!6003608))

(assert (=> b!4973481 d!1601817))

(assert (=> b!4973481 d!1601529))

(assert (=> b!4973481 d!1601269))

(declare-fun d!1601829 () Bool)

(declare-fun lt!2054522 () Int)

(assert (=> d!1601829 (>= lt!2054522 0)))

(declare-fun e!3108822 () Int)

(assert (=> d!1601829 (= lt!2054522 e!3108822)))

(declare-fun c!848812 () Bool)

(assert (=> d!1601829 (= c!848812 ((_ is Nil!57466) (_1!34415 lt!2054108)))))

(assert (=> d!1601829 (= (size!38097 (_1!34415 lt!2054108)) lt!2054522)))

(declare-fun b!4974212 () Bool)

(assert (=> b!4974212 (= e!3108822 0)))

(declare-fun b!4974213 () Bool)

(assert (=> b!4974213 (= e!3108822 (+ 1 (size!38097 (t!369196 (_1!34415 lt!2054108)))))))

(assert (= (and d!1601829 c!848812) b!4974212))

(assert (= (and d!1601829 (not c!848812)) b!4974213))

(declare-fun m!6003614 () Bool)

(assert (=> b!4974213 m!6003614))

(assert (=> b!4973481 d!1601829))

(assert (=> b!4973481 d!1601509))

(declare-fun bs!1183773 () Bool)

(declare-fun d!1601833 () Bool)

(assert (= bs!1183773 (and d!1601833 d!1601301)))

(declare-fun lambda!247535 () Int)

(assert (=> bs!1183773 (= lambda!247535 lambda!247516)))

(declare-fun bs!1183774 () Bool)

(assert (= bs!1183774 (and d!1601833 b!4972922)))

(assert (=> bs!1183774 (= lambda!247535 lambda!247506)))

(declare-fun bs!1183775 () Bool)

(assert (= bs!1183775 (and d!1601833 d!1601689)))

(assert (=> bs!1183775 (= (and (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) (= lambda!247535 lambda!247530))))

(declare-fun bs!1183776 () Bool)

(assert (= bs!1183776 (and d!1601833 b!4974148)))

(assert (=> bs!1183776 (= (and (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))))) (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))))) (= lambda!247535 lambda!247531))))

(declare-fun bs!1183777 () Bool)

(assert (= bs!1183777 (and d!1601833 b!4973799)))

(assert (=> bs!1183777 (= (and (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) (= lambda!247535 lambda!247525))))

(declare-fun b!4974242 () Bool)

(declare-fun e!3108837 () Bool)

(assert (=> b!4974242 (= e!3108837 true)))

(assert (=> d!1601833 e!3108837))

(assert (= d!1601833 b!4974242))

(assert (=> b!4974242 (< (dynLambda!23209 order!26257 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) (dynLambda!23210 order!26259 lambda!247535))))

(assert (=> b!4974242 (< (dynLambda!23211 order!26261 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) (dynLambda!23210 order!26259 lambda!247535))))

(assert (=> d!1601833 (= (list!18383 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054108))))) (list!18383 (seqFromList!6043 (_1!34415 lt!2054108))))))

(declare-fun lt!2054531 () Unit!148431)

(assert (=> d!1601833 (= lt!2054531 (ForallOf!1234 lambda!247535 (seqFromList!6043 (_1!34415 lt!2054108))))))

(assert (=> d!1601833 (= (lemmaSemiInverse!2609 (transformation!8400 (h!63915 rulesArg!259)) (seqFromList!6043 (_1!34415 lt!2054108))) lt!2054531)))

(declare-fun b_lambda!197401 () Bool)

(assert (=> (not b_lambda!197401) (not d!1601833)))

(declare-fun t!369332 () Bool)

(declare-fun tb!261265 () Bool)

(assert (=> (and b!4972699 (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369332) tb!261265))

(declare-fun tp!1394586 () Bool)

(declare-fun b!4974243 () Bool)

(declare-fun e!3108838 () Bool)

(assert (=> b!4974243 (= e!3108838 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054108)))))) tp!1394586))))

(declare-fun result!326456 () Bool)

(assert (=> tb!261265 (= result!326456 (and (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054108))))) e!3108838))))

(assert (= tb!261265 b!4974243))

(declare-fun m!6003644 () Bool)

(assert (=> b!4974243 m!6003644))

(declare-fun m!6003646 () Bool)

(assert (=> tb!261265 m!6003646))

(assert (=> d!1601833 t!369332))

(declare-fun b_and!348999 () Bool)

(assert (= b_and!348975 (and (=> t!369332 result!326456) b_and!348999)))

(declare-fun t!369334 () Bool)

(declare-fun tb!261267 () Bool)

(assert (=> (and b!4973009 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369334) tb!261267))

(declare-fun result!326458 () Bool)

(assert (= result!326458 result!326456))

(assert (=> d!1601833 t!369334))

(declare-fun b_and!349001 () Bool)

(assert (= b_and!348977 (and (=> t!369334 result!326458) b_and!349001)))

(declare-fun t!369336 () Bool)

(declare-fun tb!261269 () Bool)

(assert (=> (and b!4973824 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369336) tb!261269))

(declare-fun result!326460 () Bool)

(assert (= result!326460 result!326456))

(assert (=> d!1601833 t!369336))

(declare-fun b_and!349003 () Bool)

(assert (= b_and!348979 (and (=> t!369336 result!326460) b_and!349003)))

(declare-fun b_lambda!197403 () Bool)

(assert (=> (not b_lambda!197403) (not d!1601833)))

(assert (=> d!1601833 t!369319))

(declare-fun b_and!349005 () Bool)

(assert (= b_and!348987 (and (=> t!369319 result!326444) b_and!349005)))

(assert (=> d!1601833 t!369321))

(declare-fun b_and!349007 () Bool)

(assert (= b_and!348989 (and (=> t!369321 result!326446) b_and!349007)))

(assert (=> d!1601833 t!369323))

(declare-fun b_and!349009 () Bool)

(assert (= b_and!348991 (and (=> t!369323 result!326448) b_and!349009)))

(assert (=> d!1601833 m!6002296))

(assert (=> d!1601833 m!6003538))

(assert (=> d!1601833 m!6003538))

(declare-fun m!6003652 () Bool)

(assert (=> d!1601833 m!6003652))

(assert (=> d!1601833 m!6002296))

(declare-fun m!6003654 () Bool)

(assert (=> d!1601833 m!6003654))

(assert (=> d!1601833 m!6002296))

(declare-fun m!6003656 () Bool)

(assert (=> d!1601833 m!6003656))

(assert (=> d!1601833 m!6003652))

(declare-fun m!6003658 () Bool)

(assert (=> d!1601833 m!6003658))

(assert (=> b!4973481 d!1601833))

(declare-fun d!1601855 () Bool)

(declare-fun e!3108840 () Bool)

(assert (=> d!1601855 e!3108840))

(declare-fun res!2123430 () Bool)

(assert (=> d!1601855 (=> res!2123430 e!3108840)))

(assert (=> d!1601855 (= res!2123430 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))))))

(declare-fun lt!2054534 () Unit!148431)

(assert (=> d!1601855 (= lt!2054534 (choose!36715 (regex!8400 (h!63915 rulesArg!259)) lt!2053676))))

(assert (=> d!1601855 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1601855 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1823 (regex!8400 (h!63915 rulesArg!259)) lt!2053676) lt!2054534)))

(declare-fun b!4974245 () Bool)

(assert (=> b!4974245 (= e!3108840 (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))))))

(assert (= (and d!1601855 (not res!2123430)) b!4974245))

(assert (=> d!1601855 m!6002460))

(declare-fun m!6003664 () Bool)

(assert (=> d!1601855 m!6003664))

(assert (=> d!1601855 m!6001916))

(assert (=> d!1601855 m!6001604))

(assert (=> d!1601855 m!6001546))

(assert (=> d!1601855 m!6001546))

(assert (=> d!1601855 m!6001604))

(assert (=> d!1601855 m!6001904))

(assert (=> b!4974245 m!6001546))

(assert (=> b!4974245 m!6001604))

(assert (=> b!4974245 m!6001546))

(assert (=> b!4974245 m!6001604))

(assert (=> b!4974245 m!6001904))

(assert (=> b!4974245 m!6001918))

(assert (=> b!4973481 d!1601855))

(declare-fun d!1601859 () Bool)

(assert (=> d!1601859 (= (list!18387 (xs!18478 (c!848514 (_2!34411 lt!2053679)))) (innerList!15240 (xs!18478 (c!848514 (_2!34411 lt!2053679)))))))

(assert (=> b!4973552 d!1601859))

(assert (=> bm!346880 d!1601673))

(declare-fun d!1601861 () Bool)

(declare-fun res!2123431 () Bool)

(declare-fun e!3108841 () Bool)

(assert (=> d!1601861 (=> (not res!2123431) (not e!3108841))))

(assert (=> d!1601861 (= res!2123431 (= (csize!30534 (left!41922 (c!848514 totalInput!464))) (+ (size!38100 (left!41922 (left!41922 (c!848514 totalInput!464)))) (size!38100 (right!42252 (left!41922 (c!848514 totalInput!464)))))))))

(assert (=> d!1601861 (= (inv!75128 (left!41922 (c!848514 totalInput!464))) e!3108841)))

(declare-fun b!4974246 () Bool)

(declare-fun res!2123432 () Bool)

(assert (=> b!4974246 (=> (not res!2123432) (not e!3108841))))

(assert (=> b!4974246 (= res!2123432 (and (not (= (left!41922 (left!41922 (c!848514 totalInput!464))) Empty!15152)) (not (= (right!42252 (left!41922 (c!848514 totalInput!464))) Empty!15152))))))

(declare-fun b!4974247 () Bool)

(declare-fun res!2123433 () Bool)

(assert (=> b!4974247 (=> (not res!2123433) (not e!3108841))))

(assert (=> b!4974247 (= res!2123433 (= (cheight!15363 (left!41922 (c!848514 totalInput!464))) (+ (max!0 (height!2020 (left!41922 (left!41922 (c!848514 totalInput!464)))) (height!2020 (right!42252 (left!41922 (c!848514 totalInput!464))))) 1)))))

(declare-fun b!4974248 () Bool)

(assert (=> b!4974248 (= e!3108841 (<= 0 (cheight!15363 (left!41922 (c!848514 totalInput!464)))))))

(assert (= (and d!1601861 res!2123431) b!4974246))

(assert (= (and b!4974246 res!2123432) b!4974247))

(assert (= (and b!4974247 res!2123433) b!4974248))

(declare-fun m!6003670 () Bool)

(assert (=> d!1601861 m!6003670))

(declare-fun m!6003672 () Bool)

(assert (=> d!1601861 m!6003672))

(declare-fun m!6003674 () Bool)

(assert (=> b!4974247 m!6003674))

(declare-fun m!6003676 () Bool)

(assert (=> b!4974247 m!6003676))

(assert (=> b!4974247 m!6003674))

(assert (=> b!4974247 m!6003676))

(declare-fun m!6003678 () Bool)

(assert (=> b!4974247 m!6003678))

(assert (=> b!4973695 d!1601861))

(declare-fun d!1601863 () Bool)

(assert (=> d!1601863 (= (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))) (h!63914 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))

(assert (=> b!4973701 d!1601863))

(declare-fun lt!2054539 () Option!14463)

(declare-fun d!1601865 () Bool)

(assert (=> d!1601865 (= lt!2054539 (maxPrefix!4667 thiss!15247 (t!369197 (t!369197 rulesArg!259)) lt!2053676))))

(declare-fun e!3108842 () Option!14463)

(assert (=> d!1601865 (= lt!2054539 e!3108842)))

(declare-fun c!848822 () Bool)

(assert (=> d!1601865 (= c!848822 (and ((_ is Cons!57467) (t!369197 (t!369197 rulesArg!259))) ((_ is Nil!57467) (t!369197 (t!369197 (t!369197 rulesArg!259))))))))

(declare-fun lt!2054535 () Unit!148431)

(declare-fun lt!2054536 () Unit!148431)

(assert (=> d!1601865 (= lt!2054535 lt!2054536)))

(assert (=> d!1601865 (isPrefix!5251 lt!2053676 lt!2053676)))

(assert (=> d!1601865 (= lt!2054536 (lemmaIsPrefixRefl!3575 lt!2053676 lt!2053676))))

(assert (=> d!1601865 (rulesValidInductive!3303 thiss!15247 (t!369197 (t!369197 rulesArg!259)))))

(assert (=> d!1601865 (= (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 rulesArg!259)) lt!2053676) lt!2054539)))

(declare-fun bm!346951 () Bool)

(declare-fun call!346956 () Option!14463)

(assert (=> bm!346951 (= call!346956 (maxPrefixOneRuleZipper!303 thiss!15247 (h!63915 (t!369197 (t!369197 rulesArg!259))) lt!2053676))))

(declare-fun b!4974249 () Bool)

(assert (=> b!4974249 (= e!3108842 call!346956)))

(declare-fun b!4974250 () Bool)

(declare-fun lt!2054538 () Option!14463)

(declare-fun lt!2054537 () Option!14463)

(assert (=> b!4974250 (= e!3108842 (ite (and ((_ is None!14462) lt!2054538) ((_ is None!14462) lt!2054537)) None!14462 (ite ((_ is None!14462) lt!2054537) lt!2054538 (ite ((_ is None!14462) lt!2054538) lt!2054537 (ite (>= (size!38094 (_1!34412 (v!50457 lt!2054538))) (size!38094 (_1!34412 (v!50457 lt!2054537)))) lt!2054538 lt!2054537)))))))

(assert (=> b!4974250 (= lt!2054538 call!346956)))

(assert (=> b!4974250 (= lt!2054537 (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 (t!369197 rulesArg!259))) lt!2053676))))

(assert (= (and d!1601865 c!848822) b!4974249))

(assert (= (and d!1601865 (not c!848822)) b!4974250))

(assert (= (or b!4974249 b!4974250) bm!346951))

(assert (=> d!1601865 m!6002568))

(assert (=> d!1601865 m!6001310))

(assert (=> d!1601865 m!6001312))

(assert (=> d!1601865 m!6002108))

(declare-fun m!6003680 () Bool)

(assert (=> bm!346951 m!6003680))

(declare-fun m!6003682 () Bool)

(assert (=> b!4974250 m!6003682))

(assert (=> b!4973681 d!1601865))

(declare-fun d!1601867 () Bool)

(declare-fun lt!2054540 () Bool)

(assert (=> d!1601867 (= lt!2054540 (select (content!10195 (t!369197 rulesArg!259)) (rule!11662 (_1!34412 (get!19957 lt!2054115)))))))

(declare-fun e!3108843 () Bool)

(assert (=> d!1601867 (= lt!2054540 e!3108843)))

(declare-fun res!2123434 () Bool)

(assert (=> d!1601867 (=> (not res!2123434) (not e!3108843))))

(assert (=> d!1601867 (= res!2123434 ((_ is Cons!57467) (t!369197 rulesArg!259)))))

(assert (=> d!1601867 (= (contains!19545 (t!369197 rulesArg!259) (rule!11662 (_1!34412 (get!19957 lt!2054115)))) lt!2054540)))

(declare-fun b!4974251 () Bool)

(declare-fun e!3108844 () Bool)

(assert (=> b!4974251 (= e!3108843 e!3108844)))

(declare-fun res!2123435 () Bool)

(assert (=> b!4974251 (=> res!2123435 e!3108844)))

(assert (=> b!4974251 (= res!2123435 (= (h!63915 (t!369197 rulesArg!259)) (rule!11662 (_1!34412 (get!19957 lt!2054115)))))))

(declare-fun b!4974252 () Bool)

(assert (=> b!4974252 (= e!3108844 (contains!19545 (t!369197 (t!369197 rulesArg!259)) (rule!11662 (_1!34412 (get!19957 lt!2054115)))))))

(assert (= (and d!1601867 res!2123434) b!4974251))

(assert (= (and b!4974251 (not res!2123435)) b!4974252))

(declare-fun m!6003684 () Bool)

(assert (=> d!1601867 m!6003684))

(declare-fun m!6003686 () Bool)

(assert (=> d!1601867 m!6003686))

(declare-fun m!6003688 () Bool)

(assert (=> b!4974252 m!6003688))

(assert (=> b!4973491 d!1601867))

(assert (=> b!4973491 d!1601581))

(declare-fun d!1601869 () Bool)

(assert (=> d!1601869 (= (max!0 (height!2020 (left!41922 (c!848514 input!1342))) (height!2020 (right!42252 (c!848514 input!1342)))) (ite (< (height!2020 (left!41922 (c!848514 input!1342))) (height!2020 (right!42252 (c!848514 input!1342)))) (height!2020 (right!42252 (c!848514 input!1342))) (height!2020 (left!41922 (c!848514 input!1342)))))))

(assert (=> b!4973109 d!1601869))

(declare-fun d!1601871 () Bool)

(assert (=> d!1601871 (= (height!2020 (left!41922 (c!848514 input!1342))) (ite ((_ is Empty!15152) (left!41922 (c!848514 input!1342))) 0 (ite ((_ is Leaf!25177) (left!41922 (c!848514 input!1342))) 1 (cheight!15363 (left!41922 (c!848514 input!1342))))))))

(assert (=> b!4973109 d!1601871))

(declare-fun d!1601873 () Bool)

(assert (=> d!1601873 (= (height!2020 (right!42252 (c!848514 input!1342))) (ite ((_ is Empty!15152) (right!42252 (c!848514 input!1342))) 0 (ite ((_ is Leaf!25177) (right!42252 (c!848514 input!1342))) 1 (cheight!15363 (right!42252 (c!848514 input!1342))))))))

(assert (=> b!4973109 d!1601873))

(assert (=> d!1601529 d!1601301))

(declare-fun b!4974253 () Bool)

(declare-fun res!2123436 () Bool)

(declare-fun e!3108847 () Bool)

(assert (=> b!4974253 (=> res!2123436 e!3108847)))

(assert (=> b!4974253 (= res!2123436 (not ((_ is IntegerValue!26132) (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853))))))))))

(declare-fun e!3108846 () Bool)

(assert (=> b!4974253 (= e!3108846 e!3108847)))

(declare-fun b!4974254 () Bool)

(assert (=> b!4974254 (= e!3108846 (inv!17 (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun b!4974255 () Bool)

(assert (=> b!4974255 (= e!3108847 (inv!15 (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun b!4974256 () Bool)

(declare-fun e!3108845 () Bool)

(assert (=> b!4974256 (= e!3108845 e!3108846)))

(declare-fun c!848824 () Bool)

(assert (=> b!4974256 (= c!848824 ((_ is IntegerValue!26131) (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun d!1601875 () Bool)

(declare-fun c!848823 () Bool)

(assert (=> d!1601875 (= c!848823 ((_ is IntegerValue!26130) (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853)))))))))

(assert (=> d!1601875 (= (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853)))))) e!3108845)))

(declare-fun b!4974257 () Bool)

(assert (=> b!4974257 (= e!3108845 (inv!16 (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853)))))))))

(assert (= (and d!1601875 c!848823) b!4974257))

(assert (= (and d!1601875 (not c!848823)) b!4974256))

(assert (= (and b!4974256 c!848824) b!4974254))

(assert (= (and b!4974256 (not c!848824)) b!4974253))

(assert (= (and b!4974253 (not res!2123436)) b!4974255))

(declare-fun m!6003690 () Bool)

(assert (=> b!4974254 m!6003690))

(declare-fun m!6003692 () Bool)

(assert (=> b!4974255 m!6003692))

(declare-fun m!6003694 () Bool)

(assert (=> b!4974257 m!6003694))

(assert (=> tb!261143 d!1601875))

(declare-fun d!1601877 () Bool)

(assert (=> d!1601877 (= (isDefined!11377 lt!2054048) (not (isEmpty!30976 lt!2054048)))))

(declare-fun bs!1183779 () Bool)

(assert (= bs!1183779 d!1601877))

(declare-fun m!6003696 () Bool)

(assert (=> bs!1183779 m!6003696))

(assert (=> b!4973356 d!1601877))

(assert (=> bm!346882 d!1601675))

(declare-fun d!1601879 () Bool)

(assert (=> d!1601879 (= (isDefined!11376 lt!2054151) (not (isEmpty!30975 lt!2054151)))))

(declare-fun bs!1183780 () Bool)

(assert (= bs!1183780 d!1601879))

(assert (=> bs!1183780 m!6002574))

(assert (=> b!4973642 d!1601879))

(declare-fun d!1601881 () Bool)

(declare-fun lostCauseFct!286 (Regex!13633) Bool)

(assert (=> d!1601881 (= (lostCause!1139 (regex!8400 (h!63915 rulesArg!259))) (lostCauseFct!286 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun bs!1183781 () Bool)

(assert (= bs!1183781 d!1601881))

(declare-fun m!6003698 () Bool)

(assert (=> bs!1183781 m!6003698))

(assert (=> d!1601507 d!1601881))

(declare-fun b!4974260 () Bool)

(declare-fun e!3108850 () List!57590)

(assert (=> b!4974260 (= e!3108850 lt!2053833)))

(declare-fun d!1601883 () Bool)

(declare-fun e!3108851 () Bool)

(assert (=> d!1601883 e!3108851))

(declare-fun res!2123439 () Bool)

(assert (=> d!1601883 (=> (not res!2123439) (not e!3108851))))

(declare-fun lt!2054541 () List!57590)

(assert (=> d!1601883 (= res!2123439 (= (content!10197 lt!2054541) ((_ map or) (content!10197 Nil!57466) (content!10197 lt!2053833))))))

(assert (=> d!1601883 (= lt!2054541 e!3108850)))

(declare-fun c!848825 () Bool)

(assert (=> d!1601883 (= c!848825 ((_ is Nil!57466) Nil!57466))))

(assert (=> d!1601883 (= (++!12539 Nil!57466 lt!2053833) lt!2054541)))

(declare-fun b!4974263 () Bool)

(assert (=> b!4974263 (= e!3108851 (or (not (= lt!2053833 Nil!57466)) (= lt!2054541 Nil!57466)))))

(declare-fun b!4974262 () Bool)

(declare-fun res!2123440 () Bool)

(assert (=> b!4974262 (=> (not res!2123440) (not e!3108851))))

(assert (=> b!4974262 (= res!2123440 (= (size!38097 lt!2054541) (+ (size!38097 Nil!57466) (size!38097 lt!2053833))))))

(declare-fun b!4974261 () Bool)

(assert (=> b!4974261 (= e!3108850 (Cons!57466 (h!63914 Nil!57466) (++!12539 (t!369196 Nil!57466) lt!2053833)))))

(assert (= (and d!1601883 c!848825) b!4974260))

(assert (= (and d!1601883 (not c!848825)) b!4974261))

(assert (= (and d!1601883 res!2123439) b!4974262))

(assert (= (and b!4974262 res!2123440) b!4974263))

(declare-fun m!6003700 () Bool)

(assert (=> d!1601883 m!6003700))

(assert (=> d!1601883 m!6003136))

(declare-fun m!6003702 () Bool)

(assert (=> d!1601883 m!6003702))

(declare-fun m!6003704 () Bool)

(assert (=> b!4974262 m!6003704))

(assert (=> b!4974262 m!6001546))

(assert (=> b!4974262 m!6001548))

(declare-fun m!6003706 () Bool)

(assert (=> b!4974261 m!6003706))

(assert (=> d!1601507 d!1601883))

(declare-fun b!4974268 () Bool)

(declare-fun e!3108853 () Bool)

(assert (=> b!4974268 (= e!3108853 (>= (size!38097 (++!12539 Nil!57466 lt!2053833)) (size!38097 Nil!57466)))))

(declare-fun b!4974266 () Bool)

(declare-fun res!2123442 () Bool)

(declare-fun e!3108855 () Bool)

(assert (=> b!4974266 (=> (not res!2123442) (not e!3108855))))

(assert (=> b!4974266 (= res!2123442 (= (head!10675 Nil!57466) (head!10675 (++!12539 Nil!57466 lt!2053833))))))

(declare-fun b!4974267 () Bool)

(assert (=> b!4974267 (= e!3108855 (isPrefix!5251 (tail!9808 Nil!57466) (tail!9808 (++!12539 Nil!57466 lt!2053833))))))

(declare-fun d!1601885 () Bool)

(assert (=> d!1601885 e!3108853))

(declare-fun res!2123443 () Bool)

(assert (=> d!1601885 (=> res!2123443 e!3108853)))

(declare-fun lt!2054542 () Bool)

(assert (=> d!1601885 (= res!2123443 (not lt!2054542))))

(declare-fun e!3108854 () Bool)

(assert (=> d!1601885 (= lt!2054542 e!3108854)))

(declare-fun res!2123445 () Bool)

(assert (=> d!1601885 (=> res!2123445 e!3108854)))

(assert (=> d!1601885 (= res!2123445 ((_ is Nil!57466) Nil!57466))))

(assert (=> d!1601885 (= (isPrefix!5251 Nil!57466 (++!12539 Nil!57466 lt!2053833)) lt!2054542)))

(declare-fun b!4974265 () Bool)

(assert (=> b!4974265 (= e!3108854 e!3108855)))

(declare-fun res!2123444 () Bool)

(assert (=> b!4974265 (=> (not res!2123444) (not e!3108855))))

(assert (=> b!4974265 (= res!2123444 (not ((_ is Nil!57466) (++!12539 Nil!57466 lt!2053833))))))

(assert (= (and d!1601885 (not res!2123445)) b!4974265))

(assert (= (and b!4974265 res!2123444) b!4974266))

(assert (= (and b!4974266 res!2123442) b!4974267))

(assert (= (and d!1601885 (not res!2123443)) b!4974268))

(assert (=> b!4974268 m!6002646))

(declare-fun m!6003708 () Bool)

(assert (=> b!4974268 m!6003708))

(assert (=> b!4974268 m!6001546))

(declare-fun m!6003710 () Bool)

(assert (=> b!4974266 m!6003710))

(assert (=> b!4974266 m!6002646))

(declare-fun m!6003712 () Bool)

(assert (=> b!4974266 m!6003712))

(declare-fun m!6003714 () Bool)

(assert (=> b!4974267 m!6003714))

(assert (=> b!4974267 m!6002646))

(declare-fun m!6003716 () Bool)

(assert (=> b!4974267 m!6003716))

(assert (=> b!4974267 m!6003714))

(assert (=> b!4974267 m!6003716))

(declare-fun m!6003718 () Bool)

(assert (=> b!4974267 m!6003718))

(assert (=> d!1601507 d!1601885))

(declare-fun bm!346958 () Bool)

(declare-fun call!346963 () Bool)

(declare-fun c!848832 () Bool)

(assert (=> bm!346958 (= call!346963 (validRegex!5976 (ite c!848832 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259))) (regOne!27778 (regex!8400 (h!63915 rulesArg!259))))))))

(declare-fun b!4974289 () Bool)

(declare-fun e!3108877 () Bool)

(declare-fun call!346964 () Bool)

(assert (=> b!4974289 (= e!3108877 call!346964)))

(declare-fun b!4974290 () Bool)

(declare-fun e!3108874 () Bool)

(declare-fun e!3108876 () Bool)

(assert (=> b!4974290 (= e!3108874 e!3108876)))

(declare-fun res!2123458 () Bool)

(assert (=> b!4974290 (=> (not res!2123458) (not e!3108876))))

(assert (=> b!4974290 (= res!2123458 call!346963)))

(declare-fun b!4974291 () Bool)

(declare-fun res!2123460 () Bool)

(declare-fun e!3108875 () Bool)

(assert (=> b!4974291 (=> (not res!2123460) (not e!3108875))))

(declare-fun call!346965 () Bool)

(assert (=> b!4974291 (= res!2123460 call!346965)))

(declare-fun e!3108872 () Bool)

(assert (=> b!4974291 (= e!3108872 e!3108875)))

(declare-fun bm!346959 () Bool)

(assert (=> bm!346959 (= call!346965 call!346964)))

(declare-fun d!1601889 () Bool)

(declare-fun res!2123456 () Bool)

(declare-fun e!3108871 () Bool)

(assert (=> d!1601889 (=> res!2123456 e!3108871)))

(assert (=> d!1601889 (= res!2123456 ((_ is ElementMatch!13633) (regex!8400 (h!63915 rulesArg!259))))))

(assert (=> d!1601889 (= (validRegex!5976 (regex!8400 (h!63915 rulesArg!259))) e!3108871)))

(declare-fun b!4974292 () Bool)

(assert (=> b!4974292 (= e!3108876 call!346965)))

(declare-fun b!4974293 () Bool)

(declare-fun res!2123459 () Bool)

(assert (=> b!4974293 (=> res!2123459 e!3108874)))

(assert (=> b!4974293 (= res!2123459 (not ((_ is Concat!22344) (regex!8400 (h!63915 rulesArg!259)))))))

(assert (=> b!4974293 (= e!3108872 e!3108874)))

(declare-fun b!4974294 () Bool)

(assert (=> b!4974294 (= e!3108875 call!346963)))

(declare-fun b!4974295 () Bool)

(declare-fun e!3108873 () Bool)

(assert (=> b!4974295 (= e!3108873 e!3108877)))

(declare-fun res!2123457 () Bool)

(assert (=> b!4974295 (= res!2123457 (not (nullable!4627 (reg!13962 (regex!8400 (h!63915 rulesArg!259))))))))

(assert (=> b!4974295 (=> (not res!2123457) (not e!3108877))))

(declare-fun b!4974296 () Bool)

(assert (=> b!4974296 (= e!3108873 e!3108872)))

(assert (=> b!4974296 (= c!848832 ((_ is Union!13633) (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun b!4974297 () Bool)

(assert (=> b!4974297 (= e!3108871 e!3108873)))

(declare-fun c!848831 () Bool)

(assert (=> b!4974297 (= c!848831 ((_ is Star!13633) (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun bm!346960 () Bool)

(assert (=> bm!346960 (= call!346964 (validRegex!5976 (ite c!848831 (reg!13962 (regex!8400 (h!63915 rulesArg!259))) (ite c!848832 (regOne!27779 (regex!8400 (h!63915 rulesArg!259))) (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))))))

(assert (= (and d!1601889 (not res!2123456)) b!4974297))

(assert (= (and b!4974297 c!848831) b!4974295))

(assert (= (and b!4974297 (not c!848831)) b!4974296))

(assert (= (and b!4974295 res!2123457) b!4974289))

(assert (= (and b!4974296 c!848832) b!4974291))

(assert (= (and b!4974296 (not c!848832)) b!4974293))

(assert (= (and b!4974291 res!2123460) b!4974294))

(assert (= (and b!4974293 (not res!2123459)) b!4974290))

(assert (= (and b!4974290 res!2123458) b!4974292))

(assert (= (or b!4974291 b!4974292) bm!346959))

(assert (= (or b!4974294 b!4974290) bm!346958))

(assert (= (or b!4974289 bm!346959) bm!346960))

(declare-fun m!6003722 () Bool)

(assert (=> bm!346958 m!6003722))

(declare-fun m!6003724 () Bool)

(assert (=> b!4974295 m!6003724))

(declare-fun m!6003726 () Bool)

(assert (=> bm!346960 m!6003726))

(assert (=> d!1601507 d!1601889))

(declare-fun b!4974298 () Bool)

(declare-fun e!3108878 () List!57590)

(assert (=> b!4974298 (= e!3108878 (_2!34415 lt!2054226))))

(declare-fun d!1601897 () Bool)

(declare-fun e!3108879 () Bool)

(assert (=> d!1601897 e!3108879))

(declare-fun res!2123461 () Bool)

(assert (=> d!1601897 (=> (not res!2123461) (not e!3108879))))

(declare-fun lt!2054544 () List!57590)

(assert (=> d!1601897 (= res!2123461 (= (content!10197 lt!2054544) ((_ map or) (content!10197 (_1!34415 lt!2054226)) (content!10197 (_2!34415 lt!2054226)))))))

(assert (=> d!1601897 (= lt!2054544 e!3108878)))

(declare-fun c!848833 () Bool)

(assert (=> d!1601897 (= c!848833 ((_ is Nil!57466) (_1!34415 lt!2054226)))))

(assert (=> d!1601897 (= (++!12539 (_1!34415 lt!2054226) (_2!34415 lt!2054226)) lt!2054544)))

(declare-fun b!4974301 () Bool)

(assert (=> b!4974301 (= e!3108879 (or (not (= (_2!34415 lt!2054226) Nil!57466)) (= lt!2054544 (_1!34415 lt!2054226))))))

(declare-fun b!4974300 () Bool)

(declare-fun res!2123462 () Bool)

(assert (=> b!4974300 (=> (not res!2123462) (not e!3108879))))

(assert (=> b!4974300 (= res!2123462 (= (size!38097 lt!2054544) (+ (size!38097 (_1!34415 lt!2054226)) (size!38097 (_2!34415 lt!2054226)))))))

(declare-fun b!4974299 () Bool)

(assert (=> b!4974299 (= e!3108878 (Cons!57466 (h!63914 (_1!34415 lt!2054226)) (++!12539 (t!369196 (_1!34415 lt!2054226)) (_2!34415 lt!2054226))))))

(assert (= (and d!1601897 c!848833) b!4974298))

(assert (= (and d!1601897 (not c!848833)) b!4974299))

(assert (= (and d!1601897 res!2123461) b!4974300))

(assert (= (and b!4974300 res!2123462) b!4974301))

(declare-fun m!6003728 () Bool)

(assert (=> d!1601897 m!6003728))

(declare-fun m!6003730 () Bool)

(assert (=> d!1601897 m!6003730))

(declare-fun m!6003732 () Bool)

(assert (=> d!1601897 m!6003732))

(declare-fun m!6003734 () Bool)

(assert (=> b!4974300 m!6003734))

(assert (=> b!4974300 m!6002666))

(declare-fun m!6003736 () Bool)

(assert (=> b!4974300 m!6003736))

(declare-fun m!6003738 () Bool)

(assert (=> b!4974299 m!6003738))

(assert (=> d!1601507 d!1601897))

(assert (=> d!1601507 d!1601661))

(declare-fun d!1601899 () Bool)

(assert (=> d!1601899 (isPrefix!5251 Nil!57466 (++!12539 Nil!57466 lt!2053833))))

(declare-fun lt!2054547 () Unit!148431)

(declare-fun choose!36723 (List!57590 List!57590) Unit!148431)

(assert (=> d!1601899 (= lt!2054547 (choose!36723 Nil!57466 lt!2053833))))

(assert (=> d!1601899 (= (lemmaConcatTwoListThenFirstIsPrefix!3353 Nil!57466 lt!2053833) lt!2054547)))

(declare-fun bs!1183782 () Bool)

(assert (= bs!1183782 d!1601899))

(assert (=> bs!1183782 m!6002646))

(assert (=> bs!1183782 m!6002646))

(assert (=> bs!1183782 m!6002648))

(declare-fun m!6003740 () Bool)

(assert (=> bs!1183782 m!6003740))

(assert (=> d!1601507 d!1601899))

(declare-fun d!1601901 () Bool)

(assert (=> d!1601901 (= lt!2053833 lt!2054240)))

(declare-fun lt!2054550 () Unit!148431)

(declare-fun choose!36724 (List!57590 List!57590 List!57590 List!57590 List!57590) Unit!148431)

(assert (=> d!1601901 (= lt!2054550 (choose!36724 Nil!57466 lt!2053833 Nil!57466 lt!2054240 lt!2053833))))

(assert (=> d!1601901 (isPrefix!5251 Nil!57466 lt!2053833)))

(assert (=> d!1601901 (= (lemmaSamePrefixThenSameSuffix!2507 Nil!57466 lt!2053833 Nil!57466 lt!2054240 lt!2053833) lt!2054550)))

(declare-fun bs!1183783 () Bool)

(assert (= bs!1183783 d!1601901))

(declare-fun m!6003742 () Bool)

(assert (=> bs!1183783 m!6003742))

(assert (=> bs!1183783 m!6003198))

(assert (=> d!1601507 d!1601901))

(declare-fun d!1601903 () Bool)

(declare-fun lt!2054551 () Int)

(assert (=> d!1601903 (>= lt!2054551 0)))

(declare-fun e!3108880 () Int)

(assert (=> d!1601903 (= lt!2054551 e!3108880)))

(declare-fun c!848834 () Bool)

(assert (=> d!1601903 (= c!848834 ((_ is Nil!57466) (innerList!15240 (xs!18478 (c!848514 totalInput!464)))))))

(assert (=> d!1601903 (= (size!38097 (innerList!15240 (xs!18478 (c!848514 totalInput!464)))) lt!2054551)))

(declare-fun b!4974302 () Bool)

(assert (=> b!4974302 (= e!3108880 0)))

(declare-fun b!4974303 () Bool)

(assert (=> b!4974303 (= e!3108880 (+ 1 (size!38097 (t!369196 (innerList!15240 (xs!18478 (c!848514 totalInput!464)))))))))

(assert (= (and d!1601903 c!848834) b!4974302))

(assert (= (and d!1601903 (not c!848834)) b!4974303))

(declare-fun m!6003744 () Bool)

(assert (=> b!4974303 m!6003744))

(assert (=> d!1601297 d!1601903))

(declare-fun d!1601905 () Bool)

(declare-fun lt!2054552 () Bool)

(assert (=> d!1601905 (= lt!2054552 (isEmpty!30977 (list!18385 (left!41922 (c!848514 totalInput!464)))))))

(assert (=> d!1601905 (= lt!2054552 (= (size!38100 (left!41922 (c!848514 totalInput!464))) 0))))

(assert (=> d!1601905 (= (isEmpty!30980 (left!41922 (c!848514 totalInput!464))) lt!2054552)))

(declare-fun bs!1183784 () Bool)

(assert (= bs!1183784 d!1601905))

(assert (=> bs!1183784 m!6002350))

(assert (=> bs!1183784 m!6002350))

(declare-fun m!6003746 () Bool)

(assert (=> bs!1183784 m!6003746))

(assert (=> bs!1183784 m!6002586))

(assert (=> b!4973540 d!1601905))

(declare-fun d!1601907 () Bool)

(assert (=> d!1601907 (= (list!18387 (xs!18478 (c!848514 (_2!34411 lt!2053677)))) (innerList!15240 (xs!18478 (c!848514 (_2!34411 lt!2053677)))))))

(assert (=> b!4973297 d!1601907))

(declare-fun d!1601909 () Bool)

(assert (=> d!1601909 (= (inv!75130 (xs!18478 (right!42252 (c!848514 totalInput!464)))) (<= (size!38097 (innerList!15240 (xs!18478 (right!42252 (c!848514 totalInput!464))))) 2147483647))))

(declare-fun bs!1183785 () Bool)

(assert (= bs!1183785 d!1601909))

(declare-fun m!6003748 () Bool)

(assert (=> bs!1183785 m!6003748))

(assert (=> b!4973853 d!1601909))

(declare-fun d!1601911 () Bool)

(assert (=> d!1601911 (dynLambda!23221 lambda!247506 (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))

(assert (=> d!1601911 true))

(declare-fun _$1!11246 () Unit!148431)

(assert (=> d!1601911 (= (choose!36714 lambda!247506 (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))) _$1!11246)))

(declare-fun b_lambda!197407 () Bool)

(assert (=> (not b_lambda!197407) (not d!1601911)))

(declare-fun bs!1183786 () Bool)

(assert (= bs!1183786 d!1601911))

(assert (=> bs!1183786 m!6001562))

(assert (=> bs!1183786 m!6002786))

(assert (=> d!1601543 d!1601911))

(assert (=> d!1601543 d!1601757))

(declare-fun b!4974304 () Bool)

(declare-fun e!3108882 () Bool)

(assert (=> b!4974304 (= e!3108882 (= (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))) (c!848513 (regex!8400 (h!63915 rulesArg!259)))))))

(declare-fun b!4974305 () Bool)

(declare-fun e!3108883 () Bool)

(assert (=> b!4974305 (= e!3108883 (matchR!6643 (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676))))) (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676))))))))

(declare-fun b!4974306 () Bool)

(declare-fun e!3108885 () Bool)

(assert (=> b!4974306 (= e!3108885 (not (= (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))) (c!848513 (regex!8400 (h!63915 rulesArg!259))))))))

(declare-fun b!4974307 () Bool)

(declare-fun e!3108884 () Bool)

(assert (=> b!4974307 (= e!3108884 e!3108885)))

(declare-fun res!2123470 () Bool)

(assert (=> b!4974307 (=> res!2123470 e!3108885)))

(declare-fun call!346966 () Bool)

(assert (=> b!4974307 (= res!2123470 call!346966)))

(declare-fun b!4974309 () Bool)

(declare-fun e!3108886 () Bool)

(declare-fun lt!2054553 () Bool)

(assert (=> b!4974309 (= e!3108886 (= lt!2054553 call!346966))))

(declare-fun b!4974310 () Bool)

(declare-fun res!2123469 () Bool)

(assert (=> b!4974310 (=> (not res!2123469) (not e!3108882))))

(assert (=> b!4974310 (= res!2123469 (isEmpty!30977 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676))))))))

(declare-fun b!4974311 () Bool)

(declare-fun res!2123466 () Bool)

(assert (=> b!4974311 (=> res!2123466 e!3108885)))

(assert (=> b!4974311 (= res!2123466 (not (isEmpty!30977 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))))))))

(declare-fun b!4974312 () Bool)

(declare-fun res!2123467 () Bool)

(declare-fun e!3108887 () Bool)

(assert (=> b!4974312 (=> res!2123467 e!3108887)))

(assert (=> b!4974312 (= res!2123467 e!3108882)))

(declare-fun res!2123463 () Bool)

(assert (=> b!4974312 (=> (not res!2123463) (not e!3108882))))

(assert (=> b!4974312 (= res!2123463 lt!2054553)))

(declare-fun b!4974313 () Bool)

(declare-fun res!2123464 () Bool)

(assert (=> b!4974313 (=> res!2123464 e!3108887)))

(assert (=> b!4974313 (= res!2123464 (not ((_ is ElementMatch!13633) (regex!8400 (h!63915 rulesArg!259)))))))

(declare-fun e!3108881 () Bool)

(assert (=> b!4974313 (= e!3108881 e!3108887)))

(declare-fun b!4974314 () Bool)

(assert (=> b!4974314 (= e!3108883 (nullable!4627 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun d!1601913 () Bool)

(assert (=> d!1601913 e!3108886))

(declare-fun c!848835 () Bool)

(assert (=> d!1601913 (= c!848835 ((_ is EmptyExpr!13633) (regex!8400 (h!63915 rulesArg!259))))))

(assert (=> d!1601913 (= lt!2054553 e!3108883)))

(declare-fun c!848836 () Bool)

(assert (=> d!1601913 (= c!848836 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))))))

(assert (=> d!1601913 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1601913 (= (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))) lt!2054553)))

(declare-fun b!4974308 () Bool)

(assert (=> b!4974308 (= e!3108886 e!3108881)))

(declare-fun c!848837 () Bool)

(assert (=> b!4974308 (= c!848837 ((_ is EmptyLang!13633) (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun b!4974315 () Bool)

(assert (=> b!4974315 (= e!3108887 e!3108884)))

(declare-fun res!2123465 () Bool)

(assert (=> b!4974315 (=> (not res!2123465) (not e!3108884))))

(assert (=> b!4974315 (= res!2123465 (not lt!2054553))))

(declare-fun b!4974316 () Bool)

(assert (=> b!4974316 (= e!3108881 (not lt!2054553))))

(declare-fun b!4974317 () Bool)

(declare-fun res!2123468 () Bool)

(assert (=> b!4974317 (=> (not res!2123468) (not e!3108882))))

(assert (=> b!4974317 (= res!2123468 (not call!346966))))

(declare-fun bm!346961 () Bool)

(assert (=> bm!346961 (= call!346966 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))))))

(assert (= (and d!1601913 c!848836) b!4974314))

(assert (= (and d!1601913 (not c!848836)) b!4974305))

(assert (= (and d!1601913 c!848835) b!4974309))

(assert (= (and d!1601913 (not c!848835)) b!4974308))

(assert (= (and b!4974308 c!848837) b!4974316))

(assert (= (and b!4974308 (not c!848837)) b!4974313))

(assert (= (and b!4974313 (not res!2123464)) b!4974312))

(assert (= (and b!4974312 res!2123463) b!4974317))

(assert (= (and b!4974317 res!2123468) b!4974310))

(assert (= (and b!4974310 res!2123469) b!4974304))

(assert (= (and b!4974312 (not res!2123467)) b!4974315))

(assert (= (and b!4974315 res!2123465) b!4974307))

(assert (= (and b!4974307 (not res!2123470)) b!4974311))

(assert (= (and b!4974311 (not res!2123466)) b!4974306))

(assert (= (or b!4974309 b!4974307 b!4974317) bm!346961))

(assert (=> b!4974314 m!6002462))

(declare-fun m!6003750 () Bool)

(assert (=> b!4974310 m!6003750))

(assert (=> b!4974310 m!6003750))

(declare-fun m!6003752 () Bool)

(assert (=> b!4974310 m!6003752))

(declare-fun m!6003754 () Bool)

(assert (=> b!4974306 m!6003754))

(assert (=> b!4974305 m!6003754))

(assert (=> b!4974305 m!6003754))

(declare-fun m!6003756 () Bool)

(assert (=> b!4974305 m!6003756))

(assert (=> b!4974305 m!6003750))

(assert (=> b!4974305 m!6003756))

(assert (=> b!4974305 m!6003750))

(declare-fun m!6003758 () Bool)

(assert (=> b!4974305 m!6003758))

(assert (=> d!1601913 m!6001916))

(assert (=> d!1601913 m!6002460))

(assert (=> b!4974304 m!6003754))

(assert (=> bm!346961 m!6001916))

(assert (=> b!4974311 m!6003750))

(assert (=> b!4974311 m!6003750))

(assert (=> b!4974311 m!6003752))

(assert (=> b!4973213 d!1601913))

(assert (=> b!4973213 d!1601817))

(assert (=> b!4973213 d!1601509))

(assert (=> b!4973213 d!1601269))

(declare-fun d!1601915 () Bool)

(declare-fun lt!2054554 () Bool)

(assert (=> d!1601915 (= lt!2054554 (isEmpty!30977 (list!18385 (right!42252 (c!848514 input!1342)))))))

(assert (=> d!1601915 (= lt!2054554 (= (size!38100 (right!42252 (c!848514 input!1342))) 0))))

(assert (=> d!1601915 (= (isEmpty!30980 (right!42252 (c!848514 input!1342))) lt!2054554)))

(declare-fun bs!1183787 () Bool)

(assert (= bs!1183787 d!1601915))

(assert (=> bs!1183787 m!6002412))

(assert (=> bs!1183787 m!6002412))

(declare-fun m!6003760 () Bool)

(assert (=> bs!1183787 m!6003760))

(assert (=> bs!1183787 m!6001744))

(assert (=> b!4973568 d!1601915))

(declare-fun d!1601917 () Bool)

(declare-fun c!848840 () Bool)

(assert (=> d!1601917 (= c!848840 ((_ is Nil!57467) rulesArg!259))))

(declare-fun e!3108890 () (InoxSet Rule!16600))

(assert (=> d!1601917 (= (content!10195 rulesArg!259) e!3108890)))

(declare-fun b!4974322 () Bool)

(assert (=> b!4974322 (= e!3108890 ((as const (Array Rule!16600 Bool)) false))))

(declare-fun b!4974323 () Bool)

(assert (=> b!4974323 (= e!3108890 ((_ map or) (store ((as const (Array Rule!16600 Bool)) false) (h!63915 rulesArg!259) true) (content!10195 (t!369197 rulesArg!259))))))

(assert (= (and d!1601917 c!848840) b!4974322))

(assert (= (and d!1601917 (not c!848840)) b!4974323))

(declare-fun m!6003762 () Bool)

(assert (=> b!4974323 m!6003762))

(assert (=> b!4974323 m!6003684))

(assert (=> d!1601333 d!1601917))

(declare-fun d!1601919 () Bool)

(assert (=> d!1601919 (= (nullable!4627 (regex!8400 (h!63915 rulesArg!259))) (nullableFct!1255 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun bs!1183788 () Bool)

(assert (= bs!1183788 d!1601919))

(declare-fun m!6003764 () Bool)

(assert (=> bs!1183788 m!6003764))

(assert (=> b!4973580 d!1601919))

(declare-fun b!4974324 () Bool)

(declare-fun e!3108895 () Regex!13633)

(declare-fun call!346968 () Regex!13633)

(declare-fun call!346969 () Regex!13633)

(assert (=> b!4974324 (= e!3108895 (Union!13633 call!346968 call!346969))))

(declare-fun b!4974325 () Bool)

(declare-fun e!3108894 () Regex!13633)

(declare-fun call!346967 () Regex!13633)

(assert (=> b!4974325 (= e!3108894 (Union!13633 (Concat!22344 call!346967 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))) EmptyLang!13633))))

(declare-fun b!4974326 () Bool)

(declare-fun e!3108891 () Regex!13633)

(declare-fun call!346970 () Regex!13633)

(assert (=> b!4974326 (= e!3108891 (Concat!22344 call!346970 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun b!4974328 () Bool)

(declare-fun e!3108893 () Regex!13633)

(declare-fun e!3108892 () Regex!13633)

(assert (=> b!4974328 (= e!3108893 e!3108892)))

(declare-fun c!848841 () Bool)

(assert (=> b!4974328 (= c!848841 ((_ is ElementMatch!13633) (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun b!4974329 () Bool)

(declare-fun c!848843 () Bool)

(assert (=> b!4974329 (= c!848843 (nullable!4627 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))))

(assert (=> b!4974329 (= e!3108891 e!3108894)))

(declare-fun bm!346962 () Bool)

(assert (=> bm!346962 (= call!346970 call!346969)))

(declare-fun d!1601921 () Bool)

(declare-fun lt!2054555 () Regex!13633)

(assert (=> d!1601921 (validRegex!5976 lt!2054555)))

(assert (=> d!1601921 (= lt!2054555 e!3108893)))

(declare-fun c!848844 () Bool)

(assert (=> d!1601921 (= c!848844 (or ((_ is EmptyExpr!13633) (regex!8400 (h!63915 rulesArg!259))) ((_ is EmptyLang!13633) (regex!8400 (h!63915 rulesArg!259)))))))

(assert (=> d!1601921 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1601921 (= (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) call!346890) lt!2054555)))

(declare-fun b!4974327 () Bool)

(assert (=> b!4974327 (= e!3108893 EmptyLang!13633)))

(declare-fun b!4974330 () Bool)

(assert (=> b!4974330 (= e!3108894 (Union!13633 (Concat!22344 call!346967 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))) call!346968))))

(declare-fun bm!346963 () Bool)

(assert (=> bm!346963 (= call!346967 call!346970)))

(declare-fun c!848842 () Bool)

(declare-fun c!848845 () Bool)

(declare-fun bm!346964 () Bool)

(assert (=> bm!346964 (= call!346969 (derivativeStep!3929 (ite c!848845 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259))) (ite c!848842 (reg!13962 (regex!8400 (h!63915 rulesArg!259))) (regOne!27778 (regex!8400 (h!63915 rulesArg!259))))) call!346890))))

(declare-fun b!4974331 () Bool)

(assert (=> b!4974331 (= c!848845 ((_ is Union!13633) (regex!8400 (h!63915 rulesArg!259))))))

(assert (=> b!4974331 (= e!3108892 e!3108895)))

(declare-fun b!4974332 () Bool)

(assert (=> b!4974332 (= e!3108892 (ite (= call!346890 (c!848513 (regex!8400 (h!63915 rulesArg!259)))) EmptyExpr!13633 EmptyLang!13633))))

(declare-fun bm!346965 () Bool)

(assert (=> bm!346965 (= call!346968 (derivativeStep!3929 (ite c!848845 (regOne!27779 (regex!8400 (h!63915 rulesArg!259))) (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))) call!346890))))

(declare-fun b!4974333 () Bool)

(assert (=> b!4974333 (= e!3108895 e!3108891)))

(assert (=> b!4974333 (= c!848842 ((_ is Star!13633) (regex!8400 (h!63915 rulesArg!259))))))

(assert (= (and d!1601921 c!848844) b!4974327))

(assert (= (and d!1601921 (not c!848844)) b!4974328))

(assert (= (and b!4974328 c!848841) b!4974332))

(assert (= (and b!4974328 (not c!848841)) b!4974331))

(assert (= (and b!4974331 c!848845) b!4974324))

(assert (= (and b!4974331 (not c!848845)) b!4974333))

(assert (= (and b!4974333 c!848842) b!4974326))

(assert (= (and b!4974333 (not c!848842)) b!4974329))

(assert (= (and b!4974329 c!848843) b!4974330))

(assert (= (and b!4974329 (not c!848843)) b!4974325))

(assert (= (or b!4974330 b!4974325) bm!346963))

(assert (= (or b!4974326 bm!346963) bm!346962))

(assert (= (or b!4974324 bm!346962) bm!346964))

(assert (= (or b!4974324 b!4974330) bm!346965))

(declare-fun m!6003766 () Bool)

(assert (=> b!4974329 m!6003766))

(declare-fun m!6003768 () Bool)

(assert (=> d!1601921 m!6003768))

(assert (=> d!1601921 m!6002460))

(declare-fun m!6003770 () Bool)

(assert (=> bm!346964 m!6003770))

(declare-fun m!6003772 () Bool)

(assert (=> bm!346965 m!6003772))

(assert (=> bm!346886 d!1601921))

(declare-fun d!1601923 () Bool)

(declare-fun lt!2054570 () Bool)

(assert (=> d!1601923 (= lt!2054570 (select (content!10195 (t!369197 rulesArg!259)) (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))

(declare-fun e!3108896 () Bool)

(assert (=> d!1601923 (= lt!2054570 e!3108896)))

(declare-fun res!2123471 () Bool)

(assert (=> d!1601923 (=> (not res!2123471) (not e!3108896))))

(assert (=> d!1601923 (= res!2123471 ((_ is Cons!57467) (t!369197 rulesArg!259)))))

(assert (=> d!1601923 (= (contains!19545 (t!369197 rulesArg!259) (rule!11662 (_1!34412 (get!19957 lt!2053853)))) lt!2054570)))

(declare-fun b!4974334 () Bool)

(declare-fun e!3108897 () Bool)

(assert (=> b!4974334 (= e!3108896 e!3108897)))

(declare-fun res!2123472 () Bool)

(assert (=> b!4974334 (=> res!2123472 e!3108897)))

(assert (=> b!4974334 (= res!2123472 (= (h!63915 (t!369197 rulesArg!259)) (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))

(declare-fun b!4974335 () Bool)

(assert (=> b!4974335 (= e!3108897 (contains!19545 (t!369197 (t!369197 rulesArg!259)) (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))

(assert (= (and d!1601923 res!2123471) b!4974334))

(assert (= (and b!4974334 (not res!2123472)) b!4974335))

(assert (=> d!1601923 m!6003684))

(declare-fun m!6003774 () Bool)

(assert (=> d!1601923 m!6003774))

(declare-fun m!6003776 () Bool)

(assert (=> b!4974335 m!6003776))

(assert (=> b!4973373 d!1601923))

(declare-fun b!4974336 () Bool)

(declare-fun e!3108898 () List!57590)

(assert (=> b!4974336 (= e!3108898 (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053679)))))))

(declare-fun d!1601925 () Bool)

(declare-fun e!3108899 () Bool)

(assert (=> d!1601925 e!3108899))

(declare-fun res!2123473 () Bool)

(assert (=> d!1601925 (=> (not res!2123473) (not e!3108899))))

(declare-fun lt!2054571 () List!57590)

(assert (=> d!1601925 (= res!2123473 (= (content!10197 lt!2054571) ((_ map or) (content!10197 (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053679))))) (content!10197 (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053679))))))))))

(assert (=> d!1601925 (= lt!2054571 e!3108898)))

(declare-fun c!848846 () Bool)

(assert (=> d!1601925 (= c!848846 ((_ is Nil!57466) (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053679))))))))

(assert (=> d!1601925 (= (++!12539 (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053679)))) (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053679))))) lt!2054571)))

(declare-fun b!4974339 () Bool)

(assert (=> b!4974339 (= e!3108899 (or (not (= (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053679)))) Nil!57466)) (= lt!2054571 (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053679)))))))))

(declare-fun b!4974338 () Bool)

(declare-fun res!2123474 () Bool)

(assert (=> b!4974338 (=> (not res!2123474) (not e!3108899))))

(assert (=> b!4974338 (= res!2123474 (= (size!38097 lt!2054571) (+ (size!38097 (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053679))))) (size!38097 (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053679))))))))))

(declare-fun b!4974337 () Bool)

(assert (=> b!4974337 (= e!3108898 (Cons!57466 (h!63914 (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053679))))) (++!12539 (t!369196 (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053679))))) (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053679)))))))))

(assert (= (and d!1601925 c!848846) b!4974336))

(assert (= (and d!1601925 (not c!848846)) b!4974337))

(assert (= (and d!1601925 res!2123473) b!4974338))

(assert (= (and b!4974338 res!2123474) b!4974339))

(declare-fun m!6003778 () Bool)

(assert (=> d!1601925 m!6003778))

(assert (=> d!1601925 m!6002402))

(declare-fun m!6003780 () Bool)

(assert (=> d!1601925 m!6003780))

(assert (=> d!1601925 m!6002404))

(declare-fun m!6003782 () Bool)

(assert (=> d!1601925 m!6003782))

(declare-fun m!6003784 () Bool)

(assert (=> b!4974338 m!6003784))

(assert (=> b!4974338 m!6002402))

(declare-fun m!6003786 () Bool)

(assert (=> b!4974338 m!6003786))

(assert (=> b!4974338 m!6002404))

(declare-fun m!6003788 () Bool)

(assert (=> b!4974338 m!6003788))

(assert (=> b!4974337 m!6002404))

(declare-fun m!6003790 () Bool)

(assert (=> b!4974337 m!6003790))

(assert (=> b!4973553 d!1601925))

(declare-fun b!4974343 () Bool)

(declare-fun e!3108901 () List!57590)

(assert (=> b!4974343 (= e!3108901 (++!12539 (list!18385 (left!41922 (left!41922 (c!848514 (_2!34411 lt!2053679))))) (list!18385 (right!42252 (left!41922 (c!848514 (_2!34411 lt!2053679)))))))))

(declare-fun b!4974341 () Bool)

(declare-fun e!3108900 () List!57590)

(assert (=> b!4974341 (= e!3108900 e!3108901)))

(declare-fun c!848848 () Bool)

(assert (=> b!4974341 (= c!848848 ((_ is Leaf!25177) (left!41922 (c!848514 (_2!34411 lt!2053679)))))))

(declare-fun d!1601927 () Bool)

(declare-fun c!848847 () Bool)

(assert (=> d!1601927 (= c!848847 ((_ is Empty!15152) (left!41922 (c!848514 (_2!34411 lt!2053679)))))))

(assert (=> d!1601927 (= (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053679)))) e!3108900)))

(declare-fun b!4974342 () Bool)

(assert (=> b!4974342 (= e!3108901 (list!18387 (xs!18478 (left!41922 (c!848514 (_2!34411 lt!2053679))))))))

(declare-fun b!4974340 () Bool)

(assert (=> b!4974340 (= e!3108900 Nil!57466)))

(assert (= (and d!1601927 c!848847) b!4974340))

(assert (= (and d!1601927 (not c!848847)) b!4974341))

(assert (= (and b!4974341 c!848848) b!4974342))

(assert (= (and b!4974341 (not c!848848)) b!4974343))

(declare-fun m!6003802 () Bool)

(assert (=> b!4974343 m!6003802))

(declare-fun m!6003804 () Bool)

(assert (=> b!4974343 m!6003804))

(assert (=> b!4974343 m!6003802))

(assert (=> b!4974343 m!6003804))

(declare-fun m!6003806 () Bool)

(assert (=> b!4974343 m!6003806))

(declare-fun m!6003808 () Bool)

(assert (=> b!4974342 m!6003808))

(assert (=> b!4973553 d!1601927))

(declare-fun b!4974349 () Bool)

(declare-fun e!3108904 () List!57590)

(assert (=> b!4974349 (= e!3108904 (++!12539 (list!18385 (left!41922 (right!42252 (c!848514 (_2!34411 lt!2053679))))) (list!18385 (right!42252 (right!42252 (c!848514 (_2!34411 lt!2053679)))))))))

(declare-fun b!4974347 () Bool)

(declare-fun e!3108903 () List!57590)

(assert (=> b!4974347 (= e!3108903 e!3108904)))

(declare-fun c!848851 () Bool)

(assert (=> b!4974347 (= c!848851 ((_ is Leaf!25177) (right!42252 (c!848514 (_2!34411 lt!2053679)))))))

(declare-fun d!1601931 () Bool)

(declare-fun c!848850 () Bool)

(assert (=> d!1601931 (= c!848850 ((_ is Empty!15152) (right!42252 (c!848514 (_2!34411 lt!2053679)))))))

(assert (=> d!1601931 (= (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053679)))) e!3108903)))

(declare-fun b!4974348 () Bool)

(assert (=> b!4974348 (= e!3108904 (list!18387 (xs!18478 (right!42252 (c!848514 (_2!34411 lt!2053679))))))))

(declare-fun b!4974346 () Bool)

(assert (=> b!4974346 (= e!3108903 Nil!57466)))

(assert (= (and d!1601931 c!848850) b!4974346))

(assert (= (and d!1601931 (not c!848850)) b!4974347))

(assert (= (and b!4974347 c!848851) b!4974348))

(assert (= (and b!4974347 (not c!848851)) b!4974349))

(declare-fun m!6003812 () Bool)

(assert (=> b!4974349 m!6003812))

(declare-fun m!6003814 () Bool)

(assert (=> b!4974349 m!6003814))

(assert (=> b!4974349 m!6003812))

(assert (=> b!4974349 m!6003814))

(declare-fun m!6003816 () Bool)

(assert (=> b!4974349 m!6003816))

(declare-fun m!6003818 () Bool)

(assert (=> b!4974348 m!6003818))

(assert (=> b!4973553 d!1601931))

(declare-fun d!1601935 () Bool)

(assert (=> d!1601935 (= (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115)))) (list!18385 (c!848514 (charsOf!5444 (_1!34412 (get!19957 lt!2054115))))))))

(declare-fun bs!1183790 () Bool)

(assert (= bs!1183790 d!1601935))

(declare-fun m!6003820 () Bool)

(assert (=> bs!1183790 m!6003820))

(assert (=> b!4973484 d!1601935))

(declare-fun d!1601937 () Bool)

(declare-fun lt!2054580 () BalanceConc!29734)

(assert (=> d!1601937 (= (list!18383 lt!2054580) (originalCharacters!8679 (_1!34412 (get!19957 lt!2054115))))))

(assert (=> d!1601937 (= lt!2054580 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115))))) (value!268840 (_1!34412 (get!19957 lt!2054115)))))))

(assert (=> d!1601937 (= (charsOf!5444 (_1!34412 (get!19957 lt!2054115))) lt!2054580)))

(declare-fun b_lambda!197409 () Bool)

(assert (=> (not b_lambda!197409) (not d!1601937)))

(declare-fun tb!261277 () Bool)

(declare-fun t!369345 () Bool)

(assert (=> (and b!4972699 (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))))) t!369345) tb!261277))

(declare-fun b!4974350 () Bool)

(declare-fun e!3108905 () Bool)

(declare-fun tp!1394588 () Bool)

(assert (=> b!4974350 (= e!3108905 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115))))) (value!268840 (_1!34412 (get!19957 lt!2054115)))))) tp!1394588))))

(declare-fun result!326468 () Bool)

(assert (=> tb!261277 (= result!326468 (and (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115))))) (value!268840 (_1!34412 (get!19957 lt!2054115))))) e!3108905))))

(assert (= tb!261277 b!4974350))

(declare-fun m!6003822 () Bool)

(assert (=> b!4974350 m!6003822))

(declare-fun m!6003824 () Bool)

(assert (=> tb!261277 m!6003824))

(assert (=> d!1601937 t!369345))

(declare-fun b_and!349017 () Bool)

(assert (= b_and!348999 (and (=> t!369345 result!326468) b_and!349017)))

(declare-fun t!369347 () Bool)

(declare-fun tb!261279 () Bool)

(assert (=> (and b!4973009 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))))) t!369347) tb!261279))

(declare-fun result!326470 () Bool)

(assert (= result!326470 result!326468))

(assert (=> d!1601937 t!369347))

(declare-fun b_and!349019 () Bool)

(assert (= b_and!349001 (and (=> t!369347 result!326470) b_and!349019)))

(declare-fun tb!261281 () Bool)

(declare-fun t!369349 () Bool)

(assert (=> (and b!4973824 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))))) t!369349) tb!261281))

(declare-fun result!326472 () Bool)

(assert (= result!326472 result!326468))

(assert (=> d!1601937 t!369349))

(declare-fun b_and!349021 () Bool)

(assert (= b_and!349003 (and (=> t!369349 result!326472) b_and!349021)))

(declare-fun m!6003826 () Bool)

(assert (=> d!1601937 m!6003826))

(declare-fun m!6003828 () Bool)

(assert (=> d!1601937 m!6003828))

(assert (=> b!4973484 d!1601937))

(assert (=> b!4973484 d!1601581))

(declare-fun d!1601939 () Bool)

(declare-fun e!3108913 () Bool)

(assert (=> d!1601939 e!3108913))

(declare-fun res!2123480 () Bool)

(assert (=> d!1601939 (=> (not res!2123480) (not e!3108913))))

(declare-fun lt!2054586 () BalanceConc!29734)

(assert (=> d!1601939 (= res!2123480 (= (list!18383 lt!2054586) (list!18383 (_1!34416 lt!2053837))))))

(declare-fun fromList!946 (List!57590) Conc!15152)

(assert (=> d!1601939 (= lt!2054586 (BalanceConc!29735 (fromList!946 (list!18383 (_1!34416 lt!2053837)))))))

(assert (=> d!1601939 (= (fromListB!2737 (list!18383 (_1!34416 lt!2053837))) lt!2054586)))

(declare-fun b!4974360 () Bool)

(assert (=> b!4974360 (= e!3108913 (isBalanced!4209 (fromList!946 (list!18383 (_1!34416 lt!2053837)))))))

(assert (= (and d!1601939 res!2123480) b!4974360))

(declare-fun m!6003844 () Bool)

(assert (=> d!1601939 m!6003844))

(assert (=> d!1601939 m!6001574))

(declare-fun m!6003846 () Bool)

(assert (=> d!1601939 m!6003846))

(assert (=> b!4974360 m!6001574))

(assert (=> b!4974360 m!6003846))

(assert (=> b!4974360 m!6003846))

(declare-fun m!6003848 () Bool)

(assert (=> b!4974360 m!6003848))

(assert (=> d!1601533 d!1601939))

(declare-fun d!1601949 () Bool)

(assert (=> d!1601949 (= (list!18387 (xs!18478 (c!848514 input!1342))) (innerList!15240 (xs!18478 (c!848514 input!1342))))))

(assert (=> b!4973556 d!1601949))

(assert (=> b!4973482 d!1601913))

(assert (=> b!4973482 d!1601817))

(assert (=> b!4973482 d!1601509))

(assert (=> b!4973482 d!1601269))

(assert (=> d!1601455 d!1601889))

(declare-fun d!1601951 () Bool)

(assert (=> d!1601951 (= (isEmpty!30977 (list!18383 (_1!34416 lt!2053837))) ((_ is Nil!57466) (list!18383 (_1!34416 lt!2053837))))))

(assert (=> d!1601479 d!1601951))

(assert (=> d!1601479 d!1601535))

(declare-fun d!1601953 () Bool)

(declare-fun lt!2054587 () Bool)

(assert (=> d!1601953 (= lt!2054587 (isEmpty!30977 (list!18385 (c!848514 (_1!34416 lt!2053837)))))))

(assert (=> d!1601953 (= lt!2054587 (= (size!38100 (c!848514 (_1!34416 lt!2053837))) 0))))

(assert (=> d!1601953 (= (isEmpty!30980 (c!848514 (_1!34416 lt!2053837))) lt!2054587)))

(declare-fun bs!1183791 () Bool)

(assert (= bs!1183791 d!1601953))

(assert (=> bs!1183791 m!6002772))

(assert (=> bs!1183791 m!6002772))

(declare-fun m!6003850 () Bool)

(assert (=> bs!1183791 m!6003850))

(assert (=> bs!1183791 m!6002776))

(assert (=> d!1601479 d!1601953))

(declare-fun b!4974361 () Bool)

(declare-fun e!3108915 () Bool)

(assert (=> b!4974361 (= e!3108915 (= (head!10675 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))) (c!848513 (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))))))))

(declare-fun b!4974362 () Bool)

(declare-fun e!3108916 () Bool)

(assert (=> b!4974362 (= e!3108916 (matchR!6643 (derivativeStep!3929 (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))) (head!10675 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))) (tail!9808 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))))

(declare-fun b!4974363 () Bool)

(declare-fun e!3108918 () Bool)

(assert (=> b!4974363 (= e!3108918 (not (= (head!10675 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))) (c!848513 (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))))))

(declare-fun b!4974364 () Bool)

(declare-fun e!3108917 () Bool)

(assert (=> b!4974364 (= e!3108917 e!3108918)))

(declare-fun res!2123488 () Bool)

(assert (=> b!4974364 (=> res!2123488 e!3108918)))

(declare-fun call!346971 () Bool)

(assert (=> b!4974364 (= res!2123488 call!346971)))

(declare-fun b!4974366 () Bool)

(declare-fun e!3108919 () Bool)

(declare-fun lt!2054588 () Bool)

(assert (=> b!4974366 (= e!3108919 (= lt!2054588 call!346971))))

(declare-fun b!4974367 () Bool)

(declare-fun res!2123487 () Bool)

(assert (=> b!4974367 (=> (not res!2123487) (not e!3108915))))

(assert (=> b!4974367 (= res!2123487 (isEmpty!30977 (tail!9808 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))))

(declare-fun b!4974368 () Bool)

(declare-fun res!2123484 () Bool)

(assert (=> b!4974368 (=> res!2123484 e!3108918)))

(assert (=> b!4974368 (= res!2123484 (not (isEmpty!30977 (tail!9808 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))))))))

(declare-fun b!4974369 () Bool)

(declare-fun res!2123485 () Bool)

(declare-fun e!3108920 () Bool)

(assert (=> b!4974369 (=> res!2123485 e!3108920)))

(assert (=> b!4974369 (= res!2123485 e!3108915)))

(declare-fun res!2123481 () Bool)

(assert (=> b!4974369 (=> (not res!2123481) (not e!3108915))))

(assert (=> b!4974369 (= res!2123481 lt!2054588)))

(declare-fun b!4974370 () Bool)

(declare-fun res!2123482 () Bool)

(assert (=> b!4974370 (=> res!2123482 e!3108920)))

(assert (=> b!4974370 (= res!2123482 (not ((_ is ElementMatch!13633) (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))))))))

(declare-fun e!3108914 () Bool)

(assert (=> b!4974370 (= e!3108914 e!3108920)))

(declare-fun b!4974371 () Bool)

(assert (=> b!4974371 (= e!3108916 (nullable!4627 (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))))

(declare-fun d!1601955 () Bool)

(assert (=> d!1601955 e!3108919))

(declare-fun c!848856 () Bool)

(assert (=> d!1601955 (= c!848856 ((_ is EmptyExpr!13633) (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))))

(assert (=> d!1601955 (= lt!2054588 e!3108916)))

(declare-fun c!848857 () Bool)

(assert (=> d!1601955 (= c!848857 (isEmpty!30977 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))))))

(assert (=> d!1601955 (validRegex!5976 (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))))))

(assert (=> d!1601955 (= (matchR!6643 (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))) (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))) lt!2054588)))

(declare-fun b!4974365 () Bool)

(assert (=> b!4974365 (= e!3108919 e!3108914)))

(declare-fun c!848858 () Bool)

(assert (=> b!4974365 (= c!848858 ((_ is EmptyLang!13633) (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))))

(declare-fun b!4974372 () Bool)

(assert (=> b!4974372 (= e!3108920 e!3108917)))

(declare-fun res!2123483 () Bool)

(assert (=> b!4974372 (=> (not res!2123483) (not e!3108917))))

(assert (=> b!4974372 (= res!2123483 (not lt!2054588))))

(declare-fun b!4974373 () Bool)

(assert (=> b!4974373 (= e!3108914 (not lt!2054588))))

(declare-fun b!4974374 () Bool)

(declare-fun res!2123486 () Bool)

(assert (=> b!4974374 (=> (not res!2123486) (not e!3108915))))

(assert (=> b!4974374 (= res!2123486 (not call!346971))))

(declare-fun bm!346966 () Bool)

(assert (=> bm!346966 (= call!346971 (isEmpty!30977 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))))))

(assert (= (and d!1601955 c!848857) b!4974371))

(assert (= (and d!1601955 (not c!848857)) b!4974362))

(assert (= (and d!1601955 c!848856) b!4974366))

(assert (= (and d!1601955 (not c!848856)) b!4974365))

(assert (= (and b!4974365 c!848858) b!4974373))

(assert (= (and b!4974365 (not c!848858)) b!4974370))

(assert (= (and b!4974370 (not res!2123482)) b!4974369))

(assert (= (and b!4974369 res!2123481) b!4974374))

(assert (= (and b!4974374 res!2123486) b!4974367))

(assert (= (and b!4974367 res!2123487) b!4974361))

(assert (= (and b!4974369 (not res!2123485)) b!4974372))

(assert (= (and b!4974372 res!2123483) b!4974364))

(assert (= (and b!4974364 (not res!2123488)) b!4974368))

(assert (= (and b!4974368 (not res!2123484)) b!4974363))

(assert (= (or b!4974366 b!4974364 b!4974374) bm!346966))

(assert (=> b!4974371 m!6002638))

(declare-fun m!6003856 () Bool)

(assert (=> b!4974371 m!6003856))

(assert (=> b!4974367 m!6002632))

(declare-fun m!6003858 () Bool)

(assert (=> b!4974367 m!6003858))

(assert (=> b!4974367 m!6003858))

(declare-fun m!6003860 () Bool)

(assert (=> b!4974367 m!6003860))

(assert (=> b!4974363 m!6002632))

(declare-fun m!6003862 () Bool)

(assert (=> b!4974363 m!6003862))

(assert (=> b!4974362 m!6002632))

(assert (=> b!4974362 m!6003862))

(assert (=> b!4974362 m!6002638))

(assert (=> b!4974362 m!6003862))

(declare-fun m!6003864 () Bool)

(assert (=> b!4974362 m!6003864))

(assert (=> b!4974362 m!6002632))

(assert (=> b!4974362 m!6003858))

(assert (=> b!4974362 m!6003864))

(assert (=> b!4974362 m!6003858))

(declare-fun m!6003866 () Bool)

(assert (=> b!4974362 m!6003866))

(assert (=> d!1601955 m!6002632))

(assert (=> d!1601955 m!6002634))

(assert (=> d!1601955 m!6002638))

(declare-fun m!6003868 () Bool)

(assert (=> d!1601955 m!6003868))

(assert (=> b!4974361 m!6002632))

(assert (=> b!4974361 m!6003862))

(assert (=> bm!346966 m!6002632))

(assert (=> bm!346966 m!6002634))

(assert (=> b!4974368 m!6002632))

(assert (=> b!4974368 m!6003858))

(assert (=> b!4974368 m!6003858))

(assert (=> b!4974368 m!6003860))

(assert (=> b!4973702 d!1601955))

(declare-fun b!4974384 () Bool)

(declare-fun e!3108928 () Regex!13633)

(declare-fun call!346974 () Regex!13633)

(declare-fun call!346975 () Regex!13633)

(assert (=> b!4974384 (= e!3108928 (Union!13633 call!346974 call!346975))))

(declare-fun b!4974385 () Bool)

(declare-fun e!3108927 () Regex!13633)

(declare-fun call!346973 () Regex!13633)

(assert (=> b!4974385 (= e!3108927 (Union!13633 (Concat!22344 call!346973 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))) EmptyLang!13633))))

(declare-fun b!4974386 () Bool)

(declare-fun e!3108924 () Regex!13633)

(declare-fun call!346976 () Regex!13633)

(assert (=> b!4974386 (= e!3108924 (Concat!22344 call!346976 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun b!4974388 () Bool)

(declare-fun e!3108926 () Regex!13633)

(declare-fun e!3108925 () Regex!13633)

(assert (=> b!4974388 (= e!3108926 e!3108925)))

(declare-fun c!848860 () Bool)

(assert (=> b!4974388 (= c!848860 ((_ is ElementMatch!13633) (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun b!4974389 () Bool)

(declare-fun c!848862 () Bool)

(assert (=> b!4974389 (= c!848862 (nullable!4627 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))))

(assert (=> b!4974389 (= e!3108924 e!3108927)))

(declare-fun bm!346968 () Bool)

(assert (=> bm!346968 (= call!346976 call!346975)))

(declare-fun d!1601961 () Bool)

(declare-fun lt!2054598 () Regex!13633)

(assert (=> d!1601961 (validRegex!5976 lt!2054598)))

(assert (=> d!1601961 (= lt!2054598 e!3108926)))

(declare-fun c!848863 () Bool)

(assert (=> d!1601961 (= c!848863 (or ((_ is EmptyExpr!13633) (regex!8400 (h!63915 rulesArg!259))) ((_ is EmptyLang!13633) (regex!8400 (h!63915 rulesArg!259)))))))

(assert (=> d!1601961 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1601961 (= (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))) lt!2054598)))

(declare-fun b!4974387 () Bool)

(assert (=> b!4974387 (= e!3108926 EmptyLang!13633)))

(declare-fun b!4974390 () Bool)

(assert (=> b!4974390 (= e!3108927 (Union!13633 (Concat!22344 call!346973 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))) call!346974))))

(declare-fun bm!346969 () Bool)

(assert (=> bm!346969 (= call!346973 call!346976)))

(declare-fun c!848864 () Bool)

(declare-fun c!848861 () Bool)

(declare-fun bm!346970 () Bool)

(assert (=> bm!346970 (= call!346975 (derivativeStep!3929 (ite c!848864 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259))) (ite c!848861 (reg!13962 (regex!8400 (h!63915 rulesArg!259))) (regOne!27778 (regex!8400 (h!63915 rulesArg!259))))) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))))))

(declare-fun b!4974391 () Bool)

(assert (=> b!4974391 (= c!848864 ((_ is Union!13633) (regex!8400 (h!63915 rulesArg!259))))))

(assert (=> b!4974391 (= e!3108925 e!3108928)))

(declare-fun b!4974392 () Bool)

(assert (=> b!4974392 (= e!3108925 (ite (= (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))) (c!848513 (regex!8400 (h!63915 rulesArg!259)))) EmptyExpr!13633 EmptyLang!13633))))

(declare-fun bm!346971 () Bool)

(assert (=> bm!346971 (= call!346974 (derivativeStep!3929 (ite c!848864 (regOne!27779 (regex!8400 (h!63915 rulesArg!259))) (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833))))))))

(declare-fun b!4974393 () Bool)

(assert (=> b!4974393 (= e!3108928 e!3108924)))

(assert (=> b!4974393 (= c!848861 ((_ is Star!13633) (regex!8400 (h!63915 rulesArg!259))))))

(assert (= (and d!1601961 c!848863) b!4974387))

(assert (= (and d!1601961 (not c!848863)) b!4974388))

(assert (= (and b!4974388 c!848860) b!4974392))

(assert (= (and b!4974388 (not c!848860)) b!4974391))

(assert (= (and b!4974391 c!848864) b!4974384))

(assert (= (and b!4974391 (not c!848864)) b!4974393))

(assert (= (and b!4974393 c!848861) b!4974386))

(assert (= (and b!4974393 (not c!848861)) b!4974389))

(assert (= (and b!4974389 c!848862) b!4974390))

(assert (= (and b!4974389 (not c!848862)) b!4974385))

(assert (= (or b!4974390 b!4974385) bm!346969))

(assert (= (or b!4974386 bm!346969) bm!346968))

(assert (= (or b!4974384 bm!346968) bm!346970))

(assert (= (or b!4974384 b!4974390) bm!346971))

(assert (=> b!4974389 m!6003766))

(declare-fun m!6003874 () Bool)

(assert (=> d!1601961 m!6003874))

(assert (=> d!1601961 m!6002460))

(assert (=> bm!346970 m!6002636))

(declare-fun m!6003878 () Bool)

(assert (=> bm!346970 m!6003878))

(assert (=> bm!346971 m!6002636))

(declare-fun m!6003882 () Bool)

(assert (=> bm!346971 m!6003882))

(assert (=> b!4973702 d!1601961))

(assert (=> b!4973702 d!1601863))

(assert (=> b!4973702 d!1601589))

(declare-fun b!4974394 () Bool)

(declare-fun e!3108930 () Bool)

(assert (=> b!4974394 (= e!3108930 (= (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))) (c!848513 (regex!8400 (h!63915 rulesArg!259)))))))

(declare-fun b!4974395 () Bool)

(declare-fun e!3108931 () Bool)

(assert (=> b!4974395 (= e!3108931 (matchR!6643 (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342)))))) (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342)))))))))

(declare-fun b!4974396 () Bool)

(declare-fun e!3108933 () Bool)

(assert (=> b!4974396 (= e!3108933 (not (= (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))) (c!848513 (regex!8400 (h!63915 rulesArg!259))))))))

(declare-fun b!4974397 () Bool)

(declare-fun e!3108932 () Bool)

(assert (=> b!4974397 (= e!3108932 e!3108933)))

(declare-fun res!2123503 () Bool)

(assert (=> b!4974397 (=> res!2123503 e!3108933)))

(declare-fun call!346977 () Bool)

(assert (=> b!4974397 (= res!2123503 call!346977)))

(declare-fun b!4974399 () Bool)

(declare-fun e!3108934 () Bool)

(declare-fun lt!2054599 () Bool)

(assert (=> b!4974399 (= e!3108934 (= lt!2054599 call!346977))))

(declare-fun b!4974400 () Bool)

(declare-fun res!2123502 () Bool)

(assert (=> b!4974400 (=> (not res!2123502) (not e!3108930))))

(assert (=> b!4974400 (= res!2123502 (isEmpty!30977 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342)))))))))

(declare-fun b!4974401 () Bool)

(declare-fun res!2123499 () Bool)

(assert (=> b!4974401 (=> res!2123499 e!3108933)))

(assert (=> b!4974401 (= res!2123499 (not (isEmpty!30977 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))))))))

(declare-fun b!4974402 () Bool)

(declare-fun res!2123500 () Bool)

(declare-fun e!3108935 () Bool)

(assert (=> b!4974402 (=> res!2123500 e!3108935)))

(assert (=> b!4974402 (= res!2123500 e!3108930)))

(declare-fun res!2123496 () Bool)

(assert (=> b!4974402 (=> (not res!2123496) (not e!3108930))))

(assert (=> b!4974402 (= res!2123496 lt!2054599)))

(declare-fun b!4974403 () Bool)

(declare-fun res!2123497 () Bool)

(assert (=> b!4974403 (=> res!2123497 e!3108935)))

(assert (=> b!4974403 (= res!2123497 (not ((_ is ElementMatch!13633) (regex!8400 (h!63915 rulesArg!259)))))))

(declare-fun e!3108929 () Bool)

(assert (=> b!4974403 (= e!3108929 e!3108935)))

(declare-fun b!4974404 () Bool)

(assert (=> b!4974404 (= e!3108931 (nullable!4627 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun d!1601963 () Bool)

(assert (=> d!1601963 e!3108934))

(declare-fun c!848865 () Bool)

(assert (=> d!1601963 (= c!848865 ((_ is EmptyExpr!13633) (regex!8400 (h!63915 rulesArg!259))))))

(assert (=> d!1601963 (= lt!2054599 e!3108931)))

(declare-fun c!848866 () Bool)

(assert (=> d!1601963 (= c!848866 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))))))

(assert (=> d!1601963 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1601963 (= (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))) lt!2054599)))

(declare-fun b!4974398 () Bool)

(assert (=> b!4974398 (= e!3108934 e!3108929)))

(declare-fun c!848867 () Bool)

(assert (=> b!4974398 (= c!848867 ((_ is EmptyLang!13633) (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun b!4974405 () Bool)

(assert (=> b!4974405 (= e!3108935 e!3108932)))

(declare-fun res!2123498 () Bool)

(assert (=> b!4974405 (=> (not res!2123498) (not e!3108932))))

(assert (=> b!4974405 (= res!2123498 (not lt!2054599))))

(declare-fun b!4974406 () Bool)

(assert (=> b!4974406 (= e!3108929 (not lt!2054599))))

(declare-fun b!4974407 () Bool)

(declare-fun res!2123501 () Bool)

(assert (=> b!4974407 (=> (not res!2123501) (not e!3108930))))

(assert (=> b!4974407 (= res!2123501 (not call!346977))))

(declare-fun bm!346972 () Bool)

(assert (=> bm!346972 (= call!346977 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))))))

(assert (= (and d!1601963 c!848866) b!4974404))

(assert (= (and d!1601963 (not c!848866)) b!4974395))

(assert (= (and d!1601963 c!848865) b!4974399))

(assert (= (and d!1601963 (not c!848865)) b!4974398))

(assert (= (and b!4974398 c!848867) b!4974406))

(assert (= (and b!4974398 (not c!848867)) b!4974403))

(assert (= (and b!4974403 (not res!2123497)) b!4974402))

(assert (= (and b!4974402 res!2123496) b!4974407))

(assert (= (and b!4974407 res!2123501) b!4974400))

(assert (= (and b!4974400 res!2123502) b!4974394))

(assert (= (and b!4974402 (not res!2123500)) b!4974405))

(assert (= (and b!4974405 res!2123498) b!4974397))

(assert (= (and b!4974397 (not res!2123503)) b!4974401))

(assert (= (and b!4974401 (not res!2123499)) b!4974396))

(assert (= (or b!4974399 b!4974397 b!4974407) bm!346972))

(assert (=> b!4974404 m!6002462))

(declare-fun m!6003902 () Bool)

(assert (=> b!4974400 m!6003902))

(assert (=> b!4974400 m!6003902))

(declare-fun m!6003906 () Bool)

(assert (=> b!4974400 m!6003906))

(declare-fun m!6003908 () Bool)

(assert (=> b!4974396 m!6003908))

(assert (=> b!4974395 m!6003908))

(assert (=> b!4974395 m!6003908))

(declare-fun m!6003910 () Bool)

(assert (=> b!4974395 m!6003910))

(assert (=> b!4974395 m!6003902))

(assert (=> b!4974395 m!6003910))

(assert (=> b!4974395 m!6003902))

(declare-fun m!6003914 () Bool)

(assert (=> b!4974395 m!6003914))

(assert (=> d!1601963 m!6002060))

(assert (=> d!1601963 m!6002460))

(assert (=> b!4974394 m!6003908))

(assert (=> bm!346972 m!6002060))

(assert (=> b!4974401 m!6003902))

(assert (=> b!4974401 m!6003902))

(assert (=> b!4974401 m!6003906))

(assert (=> b!4973336 d!1601963))

(declare-fun bm!346973 () Bool)

(declare-fun call!346985 () List!57590)

(assert (=> bm!346973 (= call!346985 (tail!9808 (list!18383 input!1342)))))

(declare-fun b!4974418 () Bool)

(declare-fun e!3108942 () tuple2!62224)

(assert (=> b!4974418 (= e!3108942 (tuple2!62225 Nil!57466 (list!18383 input!1342)))))

(declare-fun b!4974419 () Bool)

(declare-fun e!3108945 () tuple2!62224)

(declare-fun e!3108940 () tuple2!62224)

(assert (=> b!4974419 (= e!3108945 e!3108940)))

(declare-fun lt!2054605 () tuple2!62224)

(declare-fun call!346981 () tuple2!62224)

(assert (=> b!4974419 (= lt!2054605 call!346981)))

(declare-fun c!848875 () Bool)

(assert (=> b!4974419 (= c!848875 (isEmpty!30977 (_1!34415 lt!2054605)))))

(declare-fun b!4974420 () Bool)

(declare-fun e!3108943 () Bool)

(declare-fun lt!2054606 () tuple2!62224)

(assert (=> b!4974420 (= e!3108943 (>= (size!38097 (_1!34415 lt!2054606)) (size!38097 Nil!57466)))))

(declare-fun bm!346974 () Bool)

(declare-fun call!346979 () Unit!148431)

(assert (=> bm!346974 (= call!346979 (lemmaIsPrefixSameLengthThenSameList!1215 (list!18383 input!1342) Nil!57466 (list!18383 input!1342)))))

(declare-fun b!4974421 () Bool)

(declare-fun e!3108946 () Bool)

(assert (=> b!4974421 (= e!3108946 e!3108943)))

(declare-fun res!2123506 () Bool)

(assert (=> b!4974421 (=> res!2123506 e!3108943)))

(assert (=> b!4974421 (= res!2123506 (isEmpty!30977 (_1!34415 lt!2054606)))))

(declare-fun b!4974422 () Bool)

(declare-fun c!848874 () Bool)

(declare-fun call!346980 () Bool)

(assert (=> b!4974422 (= c!848874 call!346980)))

(declare-fun lt!2054611 () Unit!148431)

(declare-fun lt!2054602 () Unit!148431)

(assert (=> b!4974422 (= lt!2054611 lt!2054602)))

(assert (=> b!4974422 (= (list!18383 input!1342) Nil!57466)))

(assert (=> b!4974422 (= lt!2054602 call!346979)))

(declare-fun lt!2054623 () Unit!148431)

(declare-fun lt!2054622 () Unit!148431)

(assert (=> b!4974422 (= lt!2054623 lt!2054622)))

(declare-fun call!346982 () Bool)

(assert (=> b!4974422 call!346982))

(declare-fun call!346984 () Unit!148431)

(assert (=> b!4974422 (= lt!2054622 call!346984)))

(declare-fun e!3108947 () tuple2!62224)

(assert (=> b!4974422 (= e!3108947 e!3108942)))

(declare-fun b!4974423 () Bool)

(declare-fun e!3108941 () tuple2!62224)

(assert (=> b!4974423 (= e!3108941 (tuple2!62225 Nil!57466 (list!18383 input!1342)))))

(declare-fun b!4974424 () Bool)

(declare-fun e!3108944 () Unit!148431)

(declare-fun Unit!148456 () Unit!148431)

(assert (=> b!4974424 (= e!3108944 Unit!148456)))

(declare-fun bm!346975 () Bool)

(declare-fun call!346983 () C!27516)

(assert (=> bm!346975 (= call!346983 (head!10675 (list!18383 input!1342)))))

(declare-fun b!4974425 () Bool)

(assert (=> b!4974425 (= e!3108941 e!3108947)))

(declare-fun c!848871 () Bool)

(assert (=> b!4974425 (= c!848871 (= (size!38097 Nil!57466) (size!38097 (list!18383 input!1342))))))

(declare-fun b!4974426 () Bool)

(assert (=> b!4974426 (= e!3108940 (tuple2!62225 Nil!57466 (list!18383 input!1342)))))

(declare-fun bm!346976 () Bool)

(assert (=> bm!346976 (= call!346980 (nullable!4627 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun bm!346977 () Bool)

(assert (=> bm!346977 (= call!346984 (lemmaIsPrefixRefl!3575 (list!18383 input!1342) (list!18383 input!1342)))))

(declare-fun bm!346978 () Bool)

(assert (=> bm!346978 (= call!346982 (isPrefix!5251 (list!18383 input!1342) (list!18383 input!1342)))))

(declare-fun b!4974427 () Bool)

(declare-fun c!848876 () Bool)

(assert (=> b!4974427 (= c!848876 call!346980)))

(declare-fun lt!2054621 () Unit!148431)

(declare-fun lt!2054627 () Unit!148431)

(assert (=> b!4974427 (= lt!2054621 lt!2054627)))

(declare-fun lt!2054608 () C!27516)

(declare-fun lt!2054615 () List!57590)

(assert (=> b!4974427 (= (++!12539 (++!12539 Nil!57466 (Cons!57466 lt!2054608 Nil!57466)) lt!2054615) (list!18383 input!1342))))

(assert (=> b!4974427 (= lt!2054627 (lemmaMoveElementToOtherListKeepsConcatEq!1452 Nil!57466 lt!2054608 lt!2054615 (list!18383 input!1342)))))

(assert (=> b!4974427 (= lt!2054615 (tail!9808 (list!18383 input!1342)))))

(assert (=> b!4974427 (= lt!2054608 (head!10675 (list!18383 input!1342)))))

(declare-fun lt!2054609 () Unit!148431)

(declare-fun lt!2054619 () Unit!148431)

(assert (=> b!4974427 (= lt!2054609 lt!2054619)))

(assert (=> b!4974427 (isPrefix!5251 (++!12539 Nil!57466 (Cons!57466 (head!10675 (getSuffix!3095 (list!18383 input!1342) Nil!57466)) Nil!57466)) (list!18383 input!1342))))

(assert (=> b!4974427 (= lt!2054619 (lemmaAddHeadSuffixToPrefixStillPrefix!842 Nil!57466 (list!18383 input!1342)))))

(declare-fun lt!2054616 () Unit!148431)

(declare-fun lt!2054603 () Unit!148431)

(assert (=> b!4974427 (= lt!2054616 lt!2054603)))

(assert (=> b!4974427 (= lt!2054603 (lemmaAddHeadSuffixToPrefixStillPrefix!842 Nil!57466 (list!18383 input!1342)))))

(declare-fun lt!2054625 () List!57590)

(assert (=> b!4974427 (= lt!2054625 (++!12539 Nil!57466 (Cons!57466 (head!10675 (list!18383 input!1342)) Nil!57466)))))

(declare-fun lt!2054626 () Unit!148431)

(assert (=> b!4974427 (= lt!2054626 e!3108944)))

(declare-fun c!848872 () Bool)

(assert (=> b!4974427 (= c!848872 (= (size!38097 Nil!57466) (size!38097 (list!18383 input!1342))))))

(declare-fun lt!2054618 () Unit!148431)

(declare-fun lt!2054614 () Unit!148431)

(assert (=> b!4974427 (= lt!2054618 lt!2054614)))

(assert (=> b!4974427 (<= (size!38097 Nil!57466) (size!38097 (list!18383 input!1342)))))

(assert (=> b!4974427 (= lt!2054614 (lemmaIsPrefixThenSmallerEqSize!768 Nil!57466 (list!18383 input!1342)))))

(assert (=> b!4974427 (= e!3108947 e!3108945)))

(declare-fun b!4974428 () Bool)

(assert (=> b!4974428 (= e!3108942 (tuple2!62225 Nil!57466 Nil!57466))))

(declare-fun b!4974429 () Bool)

(assert (=> b!4974429 (= e!3108945 call!346981)))

(declare-fun bm!346979 () Bool)

(declare-fun call!346978 () Regex!13633)

(assert (=> bm!346979 (= call!346978 (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) call!346983))))

(declare-fun b!4974430 () Bool)

(assert (=> b!4974430 (= e!3108940 lt!2054605)))

(declare-fun d!1601975 () Bool)

(assert (=> d!1601975 e!3108946))

(declare-fun res!2123505 () Bool)

(assert (=> d!1601975 (=> (not res!2123505) (not e!3108946))))

(assert (=> d!1601975 (= res!2123505 (= (++!12539 (_1!34415 lt!2054606) (_2!34415 lt!2054606)) (list!18383 input!1342)))))

(assert (=> d!1601975 (= lt!2054606 e!3108941)))

(declare-fun c!848873 () Bool)

(assert (=> d!1601975 (= c!848873 (lostCause!1139 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun lt!2054624 () Unit!148431)

(declare-fun Unit!148457 () Unit!148431)

(assert (=> d!1601975 (= lt!2054624 Unit!148457)))

(assert (=> d!1601975 (= (getSuffix!3095 (list!18383 input!1342) Nil!57466) (list!18383 input!1342))))

(declare-fun lt!2054610 () Unit!148431)

(declare-fun lt!2054617 () Unit!148431)

(assert (=> d!1601975 (= lt!2054610 lt!2054617)))

(declare-fun lt!2054620 () List!57590)

(assert (=> d!1601975 (= (list!18383 input!1342) lt!2054620)))

(assert (=> d!1601975 (= lt!2054617 (lemmaSamePrefixThenSameSuffix!2507 Nil!57466 (list!18383 input!1342) Nil!57466 lt!2054620 (list!18383 input!1342)))))

(assert (=> d!1601975 (= lt!2054620 (getSuffix!3095 (list!18383 input!1342) Nil!57466))))

(declare-fun lt!2054604 () Unit!148431)

(declare-fun lt!2054613 () Unit!148431)

(assert (=> d!1601975 (= lt!2054604 lt!2054613)))

(assert (=> d!1601975 (isPrefix!5251 Nil!57466 (++!12539 Nil!57466 (list!18383 input!1342)))))

(assert (=> d!1601975 (= lt!2054613 (lemmaConcatTwoListThenFirstIsPrefix!3353 Nil!57466 (list!18383 input!1342)))))

(assert (=> d!1601975 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1601975 (= (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))) lt!2054606)))

(declare-fun bm!346980 () Bool)

(assert (=> bm!346980 (= call!346981 (findLongestMatchInner!1862 call!346978 lt!2054625 (+ (size!38097 Nil!57466) 1) call!346985 (list!18383 input!1342) (size!38097 (list!18383 input!1342))))))

(declare-fun b!4974431 () Bool)

(declare-fun Unit!148458 () Unit!148431)

(assert (=> b!4974431 (= e!3108944 Unit!148458)))

(declare-fun lt!2054601 () Unit!148431)

(assert (=> b!4974431 (= lt!2054601 call!346984)))

(assert (=> b!4974431 call!346982))

(declare-fun lt!2054628 () Unit!148431)

(assert (=> b!4974431 (= lt!2054628 lt!2054601)))

(declare-fun lt!2054607 () Unit!148431)

(assert (=> b!4974431 (= lt!2054607 call!346979)))

(assert (=> b!4974431 (= (list!18383 input!1342) Nil!57466)))

(declare-fun lt!2054612 () Unit!148431)

(assert (=> b!4974431 (= lt!2054612 lt!2054607)))

(assert (=> b!4974431 false))

(assert (= (and d!1601975 c!848873) b!4974423))

(assert (= (and d!1601975 (not c!848873)) b!4974425))

(assert (= (and b!4974425 c!848871) b!4974422))

(assert (= (and b!4974425 (not c!848871)) b!4974427))

(assert (= (and b!4974422 c!848874) b!4974428))

(assert (= (and b!4974422 (not c!848874)) b!4974418))

(assert (= (and b!4974427 c!848872) b!4974431))

(assert (= (and b!4974427 (not c!848872)) b!4974424))

(assert (= (and b!4974427 c!848876) b!4974419))

(assert (= (and b!4974427 (not c!848876)) b!4974429))

(assert (= (and b!4974419 c!848875) b!4974426))

(assert (= (and b!4974419 (not c!848875)) b!4974430))

(assert (= (or b!4974419 b!4974429) bm!346975))

(assert (= (or b!4974419 b!4974429) bm!346973))

(assert (= (or b!4974419 b!4974429) bm!346979))

(assert (= (or b!4974419 b!4974429) bm!346980))

(assert (= (or b!4974422 b!4974431) bm!346977))

(assert (= (or b!4974422 b!4974431) bm!346974))

(assert (= (or b!4974422 b!4974427) bm!346976))

(assert (= (or b!4974422 b!4974431) bm!346978))

(assert (= (and d!1601975 res!2123505) b!4974421))

(assert (= (and b!4974421 (not res!2123506)) b!4974420))

(assert (=> bm!346973 m!6001308))

(assert (=> bm!346973 m!6003256))

(assert (=> d!1601975 m!6001308))

(declare-fun m!6003926 () Bool)

(assert (=> d!1601975 m!6003926))

(declare-fun m!6003928 () Bool)

(assert (=> d!1601975 m!6003928))

(declare-fun m!6003930 () Bool)

(assert (=> d!1601975 m!6003930))

(assert (=> d!1601975 m!6002460))

(declare-fun m!6003932 () Bool)

(assert (=> d!1601975 m!6003932))

(assert (=> d!1601975 m!6001308))

(declare-fun m!6003934 () Bool)

(assert (=> d!1601975 m!6003934))

(assert (=> d!1601975 m!6001308))

(assert (=> d!1601975 m!6001308))

(declare-fun m!6003936 () Bool)

(assert (=> d!1601975 m!6003936))

(assert (=> d!1601975 m!6001308))

(assert (=> d!1601975 m!6003928))

(assert (=> d!1601975 m!6002656))

(assert (=> bm!346980 m!6001308))

(assert (=> bm!346980 m!6002036))

(declare-fun m!6003944 () Bool)

(assert (=> bm!346980 m!6003944))

(assert (=> bm!346975 m!6001308))

(assert (=> bm!346975 m!6003254))

(declare-fun m!6003948 () Bool)

(assert (=> b!4974419 m!6003948))

(assert (=> bm!346974 m!6001308))

(assert (=> bm!346974 m!6001308))

(declare-fun m!6003952 () Bool)

(assert (=> bm!346974 m!6003952))

(declare-fun m!6003954 () Bool)

(assert (=> b!4974420 m!6003954))

(assert (=> b!4974420 m!6001546))

(assert (=> bm!346977 m!6001308))

(assert (=> bm!346977 m!6001308))

(assert (=> bm!346977 m!6002326))

(assert (=> bm!346976 m!6002462))

(declare-fun m!6003958 () Bool)

(assert (=> b!4974427 m!6003958))

(assert (=> b!4974427 m!6001308))

(assert (=> b!4974427 m!6002036))

(assert (=> b!4974427 m!6001308))

(assert (=> b!4974427 m!6003934))

(declare-fun m!6003964 () Bool)

(assert (=> b!4974427 m!6003964))

(declare-fun m!6003966 () Bool)

(assert (=> b!4974427 m!6003966))

(assert (=> b!4974427 m!6001308))

(declare-fun m!6003968 () Bool)

(assert (=> b!4974427 m!6003968))

(assert (=> b!4974427 m!6003966))

(assert (=> b!4974427 m!6001308))

(declare-fun m!6003972 () Bool)

(assert (=> b!4974427 m!6003972))

(assert (=> b!4974427 m!6001308))

(assert (=> b!4974427 m!6003254))

(assert (=> b!4974427 m!6003964))

(declare-fun m!6003974 () Bool)

(assert (=> b!4974427 m!6003974))

(assert (=> b!4974427 m!6001308))

(assert (=> b!4974427 m!6003256))

(assert (=> b!4974427 m!6001546))

(assert (=> b!4974427 m!6003934))

(declare-fun m!6003978 () Bool)

(assert (=> b!4974427 m!6003978))

(assert (=> b!4974427 m!6001308))

(declare-fun m!6003980 () Bool)

(assert (=> b!4974427 m!6003980))

(assert (=> b!4974427 m!6001308))

(declare-fun m!6003984 () Bool)

(assert (=> b!4974427 m!6003984))

(assert (=> bm!346978 m!6001308))

(assert (=> bm!346978 m!6001308))

(assert (=> bm!346978 m!6002324))

(declare-fun m!6003988 () Bool)

(assert (=> bm!346979 m!6003988))

(declare-fun m!6003990 () Bool)

(assert (=> b!4974421 m!6003990))

(assert (=> b!4973336 d!1601975))

(assert (=> b!4973336 d!1601509))

(declare-fun d!1601981 () Bool)

(declare-fun lt!2054634 () Int)

(assert (=> d!1601981 (>= lt!2054634 0)))

(declare-fun e!3108954 () Int)

(assert (=> d!1601981 (= lt!2054634 e!3108954)))

(declare-fun c!848879 () Bool)

(assert (=> d!1601981 (= c!848879 ((_ is Nil!57466) (list!18383 input!1342)))))

(assert (=> d!1601981 (= (size!38097 (list!18383 input!1342)) lt!2054634)))

(declare-fun b!4974441 () Bool)

(assert (=> b!4974441 (= e!3108954 0)))

(declare-fun b!4974442 () Bool)

(assert (=> b!4974442 (= e!3108954 (+ 1 (size!38097 (t!369196 (list!18383 input!1342)))))))

(assert (= (and d!1601981 c!848879) b!4974441))

(assert (= (and d!1601981 (not c!848879)) b!4974442))

(declare-fun m!6003996 () Bool)

(assert (=> b!4974442 m!6003996))

(assert (=> b!4973336 d!1601981))

(declare-fun d!1601983 () Bool)

(assert (=> d!1601983 (= (list!18383 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837)))) (list!18385 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))))))))

(declare-fun bs!1183795 () Bool)

(assert (= bs!1183795 d!1601983))

(declare-fun m!6003998 () Bool)

(assert (=> bs!1183795 m!6003998))

(assert (=> bs!1183714 d!1601983))

(assert (=> bs!1183714 d!1601535))

(assert (=> b!4973703 d!1601863))

(declare-fun d!1601985 () Bool)

(declare-fun res!2123515 () Bool)

(declare-fun e!3108955 () Bool)

(assert (=> d!1601985 (=> (not res!2123515) (not e!3108955))))

(assert (=> d!1601985 (= res!2123515 (<= (size!38097 (list!18387 (xs!18478 (left!41922 (c!848514 totalInput!464))))) 512))))

(assert (=> d!1601985 (= (inv!75129 (left!41922 (c!848514 totalInput!464))) e!3108955)))

(declare-fun b!4974443 () Bool)

(declare-fun res!2123516 () Bool)

(assert (=> b!4974443 (=> (not res!2123516) (not e!3108955))))

(assert (=> b!4974443 (= res!2123516 (= (csize!30535 (left!41922 (c!848514 totalInput!464))) (size!38097 (list!18387 (xs!18478 (left!41922 (c!848514 totalInput!464)))))))))

(declare-fun b!4974444 () Bool)

(assert (=> b!4974444 (= e!3108955 (and (> (csize!30535 (left!41922 (c!848514 totalInput!464))) 0) (<= (csize!30535 (left!41922 (c!848514 totalInput!464))) 512)))))

(assert (= (and d!1601985 res!2123515) b!4974443))

(assert (= (and b!4974443 res!2123516) b!4974444))

(declare-fun m!6004004 () Bool)

(assert (=> d!1601985 m!6004004))

(assert (=> d!1601985 m!6004004))

(declare-fun m!6004006 () Bool)

(assert (=> d!1601985 m!6004006))

(assert (=> b!4974443 m!6004004))

(assert (=> b!4974443 m!6004004))

(assert (=> b!4974443 m!6004006))

(assert (=> b!4973697 d!1601985))

(assert (=> b!4973357 d!1601563))

(assert (=> b!4973357 d!1601579))

(assert (=> b!4973357 d!1601567))

(assert (=> b!4973357 d!1601201))

(declare-fun lt!2054640 () Option!14463)

(declare-fun d!1601993 () Bool)

(assert (=> d!1601993 (= lt!2054640 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 rulesArg!259)) lt!2053676))))

(declare-fun e!3108956 () Option!14463)

(assert (=> d!1601993 (= lt!2054640 e!3108956)))

(declare-fun c!848880 () Bool)

(declare-fun lt!2054636 () tuple2!62224)

(assert (=> d!1601993 (= c!848880 (isEmpty!30977 (_1!34415 lt!2054636)))))

(assert (=> d!1601993 (= lt!2054636 (findLongestMatchWithZipper!100 (regex!8400 (h!63915 (t!369197 rulesArg!259))) lt!2053676))))

(assert (=> d!1601993 (ruleValid!3809 thiss!15247 (h!63915 (t!369197 rulesArg!259)))))

(assert (=> d!1601993 (= (maxPrefixOneRuleZipper!303 thiss!15247 (h!63915 (t!369197 rulesArg!259)) lt!2053676) lt!2054640)))

(declare-fun b!4974445 () Bool)

(assert (=> b!4974445 (= e!3108956 None!14462)))

(declare-fun b!4974446 () Bool)

(assert (=> b!4974446 (= e!3108956 (Some!14462 (tuple2!62219 (Token!15297 (apply!13911 (transformation!8400 (h!63915 (t!369197 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054636))) (h!63915 (t!369197 rulesArg!259)) (size!38097 (_1!34415 lt!2054636)) (_1!34415 lt!2054636)) (_2!34415 lt!2054636))))))

(declare-fun lt!2054635 () Unit!148431)

(assert (=> b!4974446 (= lt!2054635 (longestMatchIsAcceptedByMatchOrIsEmpty!1823 (regex!8400 (h!63915 (t!369197 rulesArg!259))) lt!2053676))))

(declare-fun res!2123517 () Bool)

(assert (=> b!4974446 (= res!2123517 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))))))

(declare-fun e!3108957 () Bool)

(assert (=> b!4974446 (=> res!2123517 e!3108957)))

(assert (=> b!4974446 e!3108957))

(declare-fun lt!2054639 () Unit!148431)

(assert (=> b!4974446 (= lt!2054639 lt!2054635)))

(declare-fun lt!2054637 () Unit!148431)

(assert (=> b!4974446 (= lt!2054637 (lemmaInv!1341 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))))

(declare-fun lt!2054638 () Unit!148431)

(assert (=> b!4974446 (= lt!2054638 (lemmaSemiInverse!2609 (transformation!8400 (h!63915 (t!369197 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054636))))))

(declare-fun b!4974447 () Bool)

(assert (=> b!4974447 (= e!3108957 (matchR!6643 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))))))

(assert (= (and d!1601993 c!848880) b!4974445))

(assert (= (and d!1601993 (not c!848880)) b!4974446))

(assert (= (and b!4974446 (not res!2123517)) b!4974447))

(assert (=> d!1601993 m!6002570))

(declare-fun m!6004008 () Bool)

(assert (=> d!1601993 m!6004008))

(declare-fun m!6004010 () Bool)

(assert (=> d!1601993 m!6004010))

(assert (=> d!1601993 m!6002120))

(assert (=> b!4974446 m!6002742))

(declare-fun m!6004012 () Bool)

(assert (=> b!4974446 m!6004012))

(assert (=> b!4974446 m!6001546))

(assert (=> b!4974446 m!6001604))

(declare-fun m!6004014 () Bool)

(assert (=> b!4974446 m!6004014))

(declare-fun m!6004016 () Bool)

(assert (=> b!4974446 m!6004016))

(declare-fun m!6004018 () Bool)

(assert (=> b!4974446 m!6004018))

(assert (=> b!4974446 m!6004016))

(declare-fun m!6004020 () Bool)

(assert (=> b!4974446 m!6004020))

(assert (=> b!4974446 m!6001604))

(declare-fun m!6004022 () Bool)

(assert (=> b!4974446 m!6004022))

(declare-fun m!6004024 () Bool)

(assert (=> b!4974446 m!6004024))

(assert (=> b!4974446 m!6004016))

(assert (=> b!4974446 m!6001546))

(assert (=> b!4974447 m!6001546))

(assert (=> b!4974447 m!6001604))

(assert (=> b!4974447 m!6001546))

(assert (=> b!4974447 m!6001604))

(assert (=> b!4974447 m!6004014))

(declare-fun m!6004026 () Bool)

(assert (=> b!4974447 m!6004026))

(assert (=> bm!346862 d!1601993))

(declare-fun b!4974448 () Bool)

(declare-fun e!3108958 () List!57590)

(assert (=> b!4974448 (= e!3108958 (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053677)))))))

(declare-fun d!1601995 () Bool)

(declare-fun e!3108959 () Bool)

(assert (=> d!1601995 e!3108959))

(declare-fun res!2123518 () Bool)

(assert (=> d!1601995 (=> (not res!2123518) (not e!3108959))))

(declare-fun lt!2054643 () List!57590)

(assert (=> d!1601995 (= res!2123518 (= (content!10197 lt!2054643) ((_ map or) (content!10197 (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053677))))) (content!10197 (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053677))))))))))

(assert (=> d!1601995 (= lt!2054643 e!3108958)))

(declare-fun c!848882 () Bool)

(assert (=> d!1601995 (= c!848882 ((_ is Nil!57466) (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053677))))))))

(assert (=> d!1601995 (= (++!12539 (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053677)))) (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053677))))) lt!2054643)))

(declare-fun b!4974451 () Bool)

(assert (=> b!4974451 (= e!3108959 (or (not (= (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053677)))) Nil!57466)) (= lt!2054643 (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053677)))))))))

(declare-fun b!4974450 () Bool)

(declare-fun res!2123519 () Bool)

(assert (=> b!4974450 (=> (not res!2123519) (not e!3108959))))

(assert (=> b!4974450 (= res!2123519 (= (size!38097 lt!2054643) (+ (size!38097 (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053677))))) (size!38097 (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053677))))))))))

(declare-fun b!4974449 () Bool)

(assert (=> b!4974449 (= e!3108958 (Cons!57466 (h!63914 (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053677))))) (++!12539 (t!369196 (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053677))))) (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053677)))))))))

(assert (= (and d!1601995 c!848882) b!4974448))

(assert (= (and d!1601995 (not c!848882)) b!4974449))

(assert (= (and d!1601995 res!2123518) b!4974450))

(assert (= (and b!4974450 res!2123519) b!4974451))

(declare-fun m!6004028 () Bool)

(assert (=> d!1601995 m!6004028))

(assert (=> d!1601995 m!6001948))

(declare-fun m!6004030 () Bool)

(assert (=> d!1601995 m!6004030))

(assert (=> d!1601995 m!6001950))

(declare-fun m!6004032 () Bool)

(assert (=> d!1601995 m!6004032))

(declare-fun m!6004034 () Bool)

(assert (=> b!4974450 m!6004034))

(assert (=> b!4974450 m!6001948))

(declare-fun m!6004036 () Bool)

(assert (=> b!4974450 m!6004036))

(assert (=> b!4974450 m!6001950))

(declare-fun m!6004038 () Bool)

(assert (=> b!4974450 m!6004038))

(assert (=> b!4974449 m!6001950))

(declare-fun m!6004040 () Bool)

(assert (=> b!4974449 m!6004040))

(assert (=> b!4973298 d!1601995))

(declare-fun b!4974455 () Bool)

(declare-fun e!3108961 () List!57590)

(assert (=> b!4974455 (= e!3108961 (++!12539 (list!18385 (left!41922 (left!41922 (c!848514 (_2!34411 lt!2053677))))) (list!18385 (right!42252 (left!41922 (c!848514 (_2!34411 lt!2053677)))))))))

(declare-fun b!4974453 () Bool)

(declare-fun e!3108960 () List!57590)

(assert (=> b!4974453 (= e!3108960 e!3108961)))

(declare-fun c!848884 () Bool)

(assert (=> b!4974453 (= c!848884 ((_ is Leaf!25177) (left!41922 (c!848514 (_2!34411 lt!2053677)))))))

(declare-fun d!1601997 () Bool)

(declare-fun c!848883 () Bool)

(assert (=> d!1601997 (= c!848883 ((_ is Empty!15152) (left!41922 (c!848514 (_2!34411 lt!2053677)))))))

(assert (=> d!1601997 (= (list!18385 (left!41922 (c!848514 (_2!34411 lt!2053677)))) e!3108960)))

(declare-fun b!4974454 () Bool)

(assert (=> b!4974454 (= e!3108961 (list!18387 (xs!18478 (left!41922 (c!848514 (_2!34411 lt!2053677))))))))

(declare-fun b!4974452 () Bool)

(assert (=> b!4974452 (= e!3108960 Nil!57466)))

(assert (= (and d!1601997 c!848883) b!4974452))

(assert (= (and d!1601997 (not c!848883)) b!4974453))

(assert (= (and b!4974453 c!848884) b!4974454))

(assert (= (and b!4974453 (not c!848884)) b!4974455))

(declare-fun m!6004042 () Bool)

(assert (=> b!4974455 m!6004042))

(declare-fun m!6004044 () Bool)

(assert (=> b!4974455 m!6004044))

(assert (=> b!4974455 m!6004042))

(assert (=> b!4974455 m!6004044))

(declare-fun m!6004046 () Bool)

(assert (=> b!4974455 m!6004046))

(declare-fun m!6004048 () Bool)

(assert (=> b!4974454 m!6004048))

(assert (=> b!4973298 d!1601997))

(declare-fun b!4974459 () Bool)

(declare-fun e!3108963 () List!57590)

(assert (=> b!4974459 (= e!3108963 (++!12539 (list!18385 (left!41922 (right!42252 (c!848514 (_2!34411 lt!2053677))))) (list!18385 (right!42252 (right!42252 (c!848514 (_2!34411 lt!2053677)))))))))

(declare-fun b!4974457 () Bool)

(declare-fun e!3108962 () List!57590)

(assert (=> b!4974457 (= e!3108962 e!3108963)))

(declare-fun c!848886 () Bool)

(assert (=> b!4974457 (= c!848886 ((_ is Leaf!25177) (right!42252 (c!848514 (_2!34411 lt!2053677)))))))

(declare-fun d!1601999 () Bool)

(declare-fun c!848885 () Bool)

(assert (=> d!1601999 (= c!848885 ((_ is Empty!15152) (right!42252 (c!848514 (_2!34411 lt!2053677)))))))

(assert (=> d!1601999 (= (list!18385 (right!42252 (c!848514 (_2!34411 lt!2053677)))) e!3108962)))

(declare-fun b!4974458 () Bool)

(assert (=> b!4974458 (= e!3108963 (list!18387 (xs!18478 (right!42252 (c!848514 (_2!34411 lt!2053677))))))))

(declare-fun b!4974456 () Bool)

(assert (=> b!4974456 (= e!3108962 Nil!57466)))

(assert (= (and d!1601999 c!848885) b!4974456))

(assert (= (and d!1601999 (not c!848885)) b!4974457))

(assert (= (and b!4974457 c!848886) b!4974458))

(assert (= (and b!4974457 (not c!848886)) b!4974459))

(declare-fun m!6004050 () Bool)

(assert (=> b!4974459 m!6004050))

(declare-fun m!6004052 () Bool)

(assert (=> b!4974459 m!6004052))

(assert (=> b!4974459 m!6004050))

(assert (=> b!4974459 m!6004052))

(declare-fun m!6004054 () Bool)

(assert (=> b!4974459 m!6004054))

(declare-fun m!6004056 () Bool)

(assert (=> b!4974458 m!6004056))

(assert (=> b!4973298 d!1601999))

(declare-fun b!4974460 () Bool)

(declare-fun res!2123522 () Bool)

(declare-fun e!3108964 () Bool)

(assert (=> b!4974460 (=> (not res!2123522) (not e!3108964))))

(assert (=> b!4974460 (= res!2123522 (not (isEmpty!30980 (left!41922 (right!42252 (c!848514 totalInput!464))))))))

(declare-fun b!4974461 () Bool)

(declare-fun res!2123521 () Bool)

(assert (=> b!4974461 (=> (not res!2123521) (not e!3108964))))

(assert (=> b!4974461 (= res!2123521 (isBalanced!4209 (right!42252 (right!42252 (c!848514 totalInput!464)))))))

(declare-fun d!1602001 () Bool)

(declare-fun res!2123520 () Bool)

(declare-fun e!3108965 () Bool)

(assert (=> d!1602001 (=> res!2123520 e!3108965)))

(assert (=> d!1602001 (= res!2123520 (not ((_ is Node!15152) (right!42252 (c!848514 totalInput!464)))))))

(assert (=> d!1602001 (= (isBalanced!4209 (right!42252 (c!848514 totalInput!464))) e!3108965)))

(declare-fun b!4974462 () Bool)

(assert (=> b!4974462 (= e!3108964 (not (isEmpty!30980 (right!42252 (right!42252 (c!848514 totalInput!464))))))))

(declare-fun b!4974463 () Bool)

(assert (=> b!4974463 (= e!3108965 e!3108964)))

(declare-fun res!2123523 () Bool)

(assert (=> b!4974463 (=> (not res!2123523) (not e!3108964))))

(assert (=> b!4974463 (= res!2123523 (<= (- 1) (- (height!2020 (left!41922 (right!42252 (c!848514 totalInput!464)))) (height!2020 (right!42252 (right!42252 (c!848514 totalInput!464)))))))))

(declare-fun b!4974464 () Bool)

(declare-fun res!2123525 () Bool)

(assert (=> b!4974464 (=> (not res!2123525) (not e!3108964))))

(assert (=> b!4974464 (= res!2123525 (isBalanced!4209 (left!41922 (right!42252 (c!848514 totalInput!464)))))))

(declare-fun b!4974465 () Bool)

(declare-fun res!2123524 () Bool)

(assert (=> b!4974465 (=> (not res!2123524) (not e!3108964))))

(assert (=> b!4974465 (= res!2123524 (<= (- (height!2020 (left!41922 (right!42252 (c!848514 totalInput!464)))) (height!2020 (right!42252 (right!42252 (c!848514 totalInput!464))))) 1))))

(assert (= (and d!1602001 (not res!2123520)) b!4974463))

(assert (= (and b!4974463 res!2123523) b!4974465))

(assert (= (and b!4974465 res!2123524) b!4974464))

(assert (= (and b!4974464 res!2123525) b!4974461))

(assert (= (and b!4974461 res!2123521) b!4974460))

(assert (= (and b!4974460 res!2123522) b!4974462))

(declare-fun m!6004058 () Bool)

(assert (=> b!4974461 m!6004058))

(declare-fun m!6004060 () Bool)

(assert (=> b!4974464 m!6004060))

(declare-fun m!6004062 () Bool)

(assert (=> b!4974465 m!6004062))

(declare-fun m!6004064 () Bool)

(assert (=> b!4974465 m!6004064))

(declare-fun m!6004066 () Bool)

(assert (=> b!4974462 m!6004066))

(declare-fun m!6004068 () Bool)

(assert (=> b!4974460 m!6004068))

(assert (=> b!4974463 m!6004062))

(assert (=> b!4974463 m!6004064))

(assert (=> b!4973541 d!1602001))

(declare-fun d!1602003 () Bool)

(declare-fun c!848889 () Bool)

(assert (=> d!1602003 (= c!848889 ((_ is Nil!57466) lt!2054253))))

(declare-fun e!3108971 () (InoxSet C!27516))

(assert (=> d!1602003 (= (content!10197 lt!2054253) e!3108971)))

(declare-fun b!4974475 () Bool)

(assert (=> b!4974475 (= e!3108971 ((as const (Array C!27516 Bool)) false))))

(declare-fun b!4974476 () Bool)

(assert (=> b!4974476 (= e!3108971 ((_ map or) (store ((as const (Array C!27516 Bool)) false) (h!63914 lt!2054253) true) (content!10197 (t!369196 lt!2054253))))))

(assert (= (and d!1602003 c!848889) b!4974475))

(assert (= (and d!1602003 (not c!848889)) b!4974476))

(declare-fun m!6004070 () Bool)

(assert (=> b!4974476 m!6004070))

(declare-fun m!6004072 () Bool)

(assert (=> b!4974476 m!6004072))

(assert (=> d!1601517 d!1602003))

(declare-fun d!1602005 () Bool)

(declare-fun c!848890 () Bool)

(assert (=> d!1602005 (= c!848890 ((_ is Nil!57466) (list!18383 totalInput!464)))))

(declare-fun e!3108973 () (InoxSet C!27516))

(assert (=> d!1602005 (= (content!10197 (list!18383 totalInput!464)) e!3108973)))

(declare-fun b!4974478 () Bool)

(assert (=> b!4974478 (= e!3108973 ((as const (Array C!27516 Bool)) false))))

(declare-fun b!4974479 () Bool)

(assert (=> b!4974479 (= e!3108973 ((_ map or) (store ((as const (Array C!27516 Bool)) false) (h!63914 (list!18383 totalInput!464)) true) (content!10197 (t!369196 (list!18383 totalInput!464)))))))

(assert (= (and d!1602005 c!848890) b!4974478))

(assert (= (and d!1602005 (not c!848890)) b!4974479))

(declare-fun m!6004076 () Bool)

(assert (=> b!4974479 m!6004076))

(assert (=> b!4974479 m!6003490))

(assert (=> d!1601517 d!1602005))

(assert (=> d!1601423 d!1601401))

(assert (=> d!1601423 d!1601705))

(assert (=> d!1601423 d!1601711))

(assert (=> d!1601423 d!1601329))

(declare-fun d!1602007 () Bool)

(declare-fun e!3108974 () Bool)

(assert (=> d!1602007 e!3108974))

(declare-fun res!2123526 () Bool)

(assert (=> d!1602007 (=> (not res!2123526) (not e!3108974))))

(declare-fun lt!2054645 () BalanceConc!29734)

(assert (=> d!1602007 (= res!2123526 (= (list!18383 lt!2054645) (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853)))))))

(assert (=> d!1602007 (= lt!2054645 (BalanceConc!29735 (fromList!946 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853))))))))

(assert (=> d!1602007 (= (fromListB!2737 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853)))) lt!2054645)))

(declare-fun b!4974480 () Bool)

(assert (=> b!4974480 (= e!3108974 (isBalanced!4209 (fromList!946 (originalCharacters!8679 (_1!34412 (get!19957 lt!2053853))))))))

(assert (= (and d!1602007 res!2123526) b!4974480))

(declare-fun m!6004080 () Bool)

(assert (=> d!1602007 m!6004080))

(declare-fun m!6004082 () Bool)

(assert (=> d!1602007 m!6004082))

(assert (=> b!4974480 m!6004082))

(assert (=> b!4974480 m!6004082))

(declare-fun m!6004084 () Bool)

(assert (=> b!4974480 m!6004084))

(assert (=> d!1601291 d!1602007))

(declare-fun d!1602009 () Bool)

(assert (=> d!1602009 (= (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151)))) (list!18385 (c!848514 (charsOf!5444 (_1!34412 (get!19957 lt!2054151))))))))

(declare-fun bs!1183799 () Bool)

(assert (= bs!1183799 d!1602009))

(declare-fun m!6004088 () Bool)

(assert (=> bs!1183799 m!6004088))

(assert (=> b!4973643 d!1602009))

(declare-fun d!1602011 () Bool)

(declare-fun lt!2054646 () BalanceConc!29734)

(assert (=> d!1602011 (= (list!18383 lt!2054646) (originalCharacters!8679 (_1!34412 (get!19957 lt!2054151))))))

(assert (=> d!1602011 (= lt!2054646 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151))))) (value!268840 (_1!34412 (get!19957 lt!2054151)))))))

(assert (=> d!1602011 (= (charsOf!5444 (_1!34412 (get!19957 lt!2054151))) lt!2054646)))

(declare-fun b_lambda!197415 () Bool)

(assert (=> (not b_lambda!197415) (not d!1602011)))

(declare-fun t!369364 () Bool)

(declare-fun tb!261295 () Bool)

(assert (=> (and b!4972699 (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))))) t!369364) tb!261295))

(declare-fun b!4974481 () Bool)

(declare-fun e!3108976 () Bool)

(declare-fun tp!1394590 () Bool)

(assert (=> b!4974481 (= e!3108976 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151))))) (value!268840 (_1!34412 (get!19957 lt!2054151)))))) tp!1394590))))

(declare-fun result!326486 () Bool)

(assert (=> tb!261295 (= result!326486 (and (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151))))) (value!268840 (_1!34412 (get!19957 lt!2054151))))) e!3108976))))

(assert (= tb!261295 b!4974481))

(declare-fun m!6004100 () Bool)

(assert (=> b!4974481 m!6004100))

(declare-fun m!6004102 () Bool)

(assert (=> tb!261295 m!6004102))

(assert (=> d!1602011 t!369364))

(declare-fun b_and!349035 () Bool)

(assert (= b_and!349017 (and (=> t!369364 result!326486) b_and!349035)))

(declare-fun t!369366 () Bool)

(declare-fun tb!261297 () Bool)

(assert (=> (and b!4973009 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))))) t!369366) tb!261297))

(declare-fun result!326488 () Bool)

(assert (= result!326488 result!326486))

(assert (=> d!1602011 t!369366))

(declare-fun b_and!349037 () Bool)

(assert (= b_and!349019 (and (=> t!369366 result!326488) b_and!349037)))

(declare-fun tb!261299 () Bool)

(declare-fun t!369368 () Bool)

(assert (=> (and b!4973824 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))))) t!369368) tb!261299))

(declare-fun result!326490 () Bool)

(assert (= result!326490 result!326486))

(assert (=> d!1602011 t!369368))

(declare-fun b_and!349039 () Bool)

(assert (= b_and!349021 (and (=> t!369368 result!326490) b_and!349039)))

(declare-fun m!6004106 () Bool)

(assert (=> d!1602011 m!6004106))

(declare-fun m!6004108 () Bool)

(assert (=> d!1602011 m!6004108))

(assert (=> b!4973643 d!1602011))

(assert (=> b!4973643 d!1601681))

(declare-fun d!1602017 () Bool)

(declare-fun c!848891 () Bool)

(assert (=> d!1602017 (= c!848891 ((_ is Nil!57466) lt!2054163))))

(declare-fun e!3108977 () (InoxSet C!27516))

(assert (=> d!1602017 (= (content!10197 lt!2054163) e!3108977)))

(declare-fun b!4974482 () Bool)

(assert (=> b!4974482 (= e!3108977 ((as const (Array C!27516 Bool)) false))))

(declare-fun b!4974483 () Bool)

(assert (=> b!4974483 (= e!3108977 ((_ map or) (store ((as const (Array C!27516 Bool)) false) (h!63914 lt!2054163) true) (content!10197 (t!369196 lt!2054163))))))

(assert (= (and d!1602017 c!848891) b!4974482))

(assert (= (and d!1602017 (not c!848891)) b!4974483))

(declare-fun m!6004110 () Bool)

(assert (=> b!4974483 m!6004110))

(declare-fun m!6004112 () Bool)

(assert (=> b!4974483 m!6004112))

(assert (=> d!1601499 d!1602017))

(declare-fun d!1602021 () Bool)

(declare-fun c!848892 () Bool)

(assert (=> d!1602021 (= c!848892 ((_ is Nil!57466) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))

(declare-fun e!3108979 () (InoxSet C!27516))

(assert (=> d!1602021 (= (content!10197 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) e!3108979)))

(declare-fun b!4974485 () Bool)

(assert (=> b!4974485 (= e!3108979 ((as const (Array C!27516 Bool)) false))))

(declare-fun b!4974486 () Bool)

(assert (=> b!4974486 (= e!3108979 ((_ map or) (store ((as const (Array C!27516 Bool)) false) (h!63914 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) true) (content!10197 (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))))

(assert (= (and d!1602021 c!848892) b!4974485))

(assert (= (and d!1602021 (not c!848892)) b!4974486))

(declare-fun m!6004114 () Bool)

(assert (=> b!4974486 m!6004114))

(declare-fun m!6004116 () Bool)

(assert (=> b!4974486 m!6004116))

(assert (=> d!1601499 d!1602021))

(declare-fun d!1602023 () Bool)

(declare-fun c!848893 () Bool)

(assert (=> d!1602023 (= c!848893 ((_ is Nil!57466) (_2!34412 (get!19957 lt!2053853))))))

(declare-fun e!3108980 () (InoxSet C!27516))

(assert (=> d!1602023 (= (content!10197 (_2!34412 (get!19957 lt!2053853))) e!3108980)))

(declare-fun b!4974487 () Bool)

(assert (=> b!4974487 (= e!3108980 ((as const (Array C!27516 Bool)) false))))

(declare-fun b!4974488 () Bool)

(assert (=> b!4974488 (= e!3108980 ((_ map or) (store ((as const (Array C!27516 Bool)) false) (h!63914 (_2!34412 (get!19957 lt!2053853))) true) (content!10197 (t!369196 (_2!34412 (get!19957 lt!2053853))))))))

(assert (= (and d!1602023 c!848893) b!4974487))

(assert (= (and d!1602023 (not c!848893)) b!4974488))

(declare-fun m!6004118 () Bool)

(assert (=> b!4974488 m!6004118))

(declare-fun m!6004120 () Bool)

(assert (=> b!4974488 m!6004120))

(assert (=> d!1601499 d!1602023))

(declare-fun d!1602025 () Bool)

(assert (=> d!1602025 (= (head!10675 (tail!9808 lt!2053676)) (h!63914 (tail!9808 lt!2053676)))))

(assert (=> b!4973561 d!1602025))

(declare-fun b!4974489 () Bool)

(declare-fun e!3108982 () Bool)

(assert (=> b!4974489 (= e!3108982 (= (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011))))) (c!848513 (regex!8400 (h!63915 rulesArg!259)))))))

(declare-fun b!4974490 () Bool)

(declare-fun e!3108983 () Bool)

(assert (=> b!4974490 (= e!3108983 (matchR!6643 (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011)))))) (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011)))))))))

(declare-fun b!4974491 () Bool)

(declare-fun e!3108985 () Bool)

(assert (=> b!4974491 (= e!3108985 (not (= (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011))))) (c!848513 (regex!8400 (h!63915 rulesArg!259))))))))

(declare-fun b!4974492 () Bool)

(declare-fun e!3108984 () Bool)

(assert (=> b!4974492 (= e!3108984 e!3108985)))

(declare-fun res!2123535 () Bool)

(assert (=> b!4974492 (=> res!2123535 e!3108985)))

(declare-fun call!346986 () Bool)

(assert (=> b!4974492 (= res!2123535 call!346986)))

(declare-fun b!4974494 () Bool)

(declare-fun e!3108986 () Bool)

(declare-fun lt!2054648 () Bool)

(assert (=> b!4974494 (= e!3108986 (= lt!2054648 call!346986))))

(declare-fun b!4974495 () Bool)

(declare-fun res!2123534 () Bool)

(assert (=> b!4974495 (=> (not res!2123534) (not e!3108982))))

(assert (=> b!4974495 (= res!2123534 (isEmpty!30977 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011)))))))))

(declare-fun b!4974496 () Bool)

(declare-fun res!2123531 () Bool)

(assert (=> b!4974496 (=> res!2123531 e!3108985)))

(assert (=> b!4974496 (= res!2123531 (not (isEmpty!30977 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011))))))))))

(declare-fun b!4974497 () Bool)

(declare-fun res!2123532 () Bool)

(declare-fun e!3108987 () Bool)

(assert (=> b!4974497 (=> res!2123532 e!3108987)))

(assert (=> b!4974497 (= res!2123532 e!3108982)))

(declare-fun res!2123528 () Bool)

(assert (=> b!4974497 (=> (not res!2123528) (not e!3108982))))

(assert (=> b!4974497 (= res!2123528 lt!2054648)))

(declare-fun b!4974498 () Bool)

(declare-fun res!2123529 () Bool)

(assert (=> b!4974498 (=> res!2123529 e!3108987)))

(assert (=> b!4974498 (= res!2123529 (not ((_ is ElementMatch!13633) (regex!8400 (h!63915 rulesArg!259)))))))

(declare-fun e!3108981 () Bool)

(assert (=> b!4974498 (= e!3108981 e!3108987)))

(declare-fun b!4974499 () Bool)

(assert (=> b!4974499 (= e!3108983 (nullable!4627 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun d!1602027 () Bool)

(assert (=> d!1602027 e!3108986))

(declare-fun c!848894 () Bool)

(assert (=> d!1602027 (= c!848894 ((_ is EmptyExpr!13633) (regex!8400 (h!63915 rulesArg!259))))))

(assert (=> d!1602027 (= lt!2054648 e!3108983)))

(declare-fun c!848895 () Bool)

(assert (=> d!1602027 (= c!848895 (isEmpty!30977 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011))))))))

(assert (=> d!1602027 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1602027 (= (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011))))) lt!2054648)))

(declare-fun b!4974493 () Bool)

(assert (=> b!4974493 (= e!3108986 e!3108981)))

(declare-fun c!848896 () Bool)

(assert (=> b!4974493 (= c!848896 ((_ is EmptyLang!13633) (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun b!4974500 () Bool)

(assert (=> b!4974500 (= e!3108987 e!3108984)))

(declare-fun res!2123530 () Bool)

(assert (=> b!4974500 (=> (not res!2123530) (not e!3108984))))

(assert (=> b!4974500 (= res!2123530 (not lt!2054648))))

(declare-fun b!4974501 () Bool)

(assert (=> b!4974501 (= e!3108981 (not lt!2054648))))

(declare-fun b!4974502 () Bool)

(declare-fun res!2123533 () Bool)

(assert (=> b!4974502 (=> (not res!2123533) (not e!3108982))))

(assert (=> b!4974502 (= res!2123533 (not call!346986))))

(declare-fun bm!346981 () Bool)

(assert (=> bm!346981 (= call!346986 (isEmpty!30977 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054011))))))))

(assert (= (and d!1602027 c!848895) b!4974499))

(assert (= (and d!1602027 (not c!848895)) b!4974490))

(assert (= (and d!1602027 c!848894) b!4974494))

(assert (= (and d!1602027 (not c!848894)) b!4974493))

(assert (= (and b!4974493 c!848896) b!4974501))

(assert (= (and b!4974493 (not c!848896)) b!4974498))

(assert (= (and b!4974498 (not res!2123529)) b!4974497))

(assert (= (and b!4974497 res!2123528) b!4974502))

(assert (= (and b!4974502 res!2123533) b!4974495))

(assert (= (and b!4974495 res!2123534) b!4974489))

(assert (= (and b!4974497 (not res!2123532)) b!4974500))

(assert (= (and b!4974500 res!2123530) b!4974492))

(assert (= (and b!4974492 (not res!2123535)) b!4974496))

(assert (= (and b!4974496 (not res!2123531)) b!4974491))

(assert (= (or b!4974494 b!4974492 b!4974502) bm!346981))

(assert (=> b!4974499 m!6002462))

(assert (=> b!4974495 m!6001898))

(declare-fun m!6004128 () Bool)

(assert (=> b!4974495 m!6004128))

(assert (=> b!4974495 m!6004128))

(declare-fun m!6004130 () Bool)

(assert (=> b!4974495 m!6004130))

(assert (=> b!4974491 m!6001898))

(declare-fun m!6004132 () Bool)

(assert (=> b!4974491 m!6004132))

(assert (=> b!4974490 m!6001898))

(assert (=> b!4974490 m!6004132))

(assert (=> b!4974490 m!6004132))

(declare-fun m!6004134 () Bool)

(assert (=> b!4974490 m!6004134))

(assert (=> b!4974490 m!6001898))

(assert (=> b!4974490 m!6004128))

(assert (=> b!4974490 m!6004134))

(assert (=> b!4974490 m!6004128))

(declare-fun m!6004136 () Bool)

(assert (=> b!4974490 m!6004136))

(assert (=> d!1602027 m!6001898))

(declare-fun m!6004138 () Bool)

(assert (=> d!1602027 m!6004138))

(assert (=> d!1602027 m!6002460))

(assert (=> b!4974489 m!6001898))

(assert (=> b!4974489 m!6004132))

(assert (=> bm!346981 m!6001898))

(assert (=> bm!346981 m!6004138))

(assert (=> b!4974496 m!6001898))

(assert (=> b!4974496 m!6004128))

(assert (=> b!4974496 m!6004128))

(assert (=> b!4974496 m!6004130))

(assert (=> b!4973214 d!1602027))

(assert (=> b!4973214 d!1601613))

(assert (=> b!4973214 d!1601615))

(assert (=> b!4973214 d!1601617))

(assert (=> b!4973711 d!1601919))

(declare-fun d!1602033 () Bool)

(declare-fun res!2123538 () Bool)

(declare-fun e!3108996 () Bool)

(assert (=> d!1602033 (=> res!2123538 e!3108996)))

(assert (=> d!1602033 (= res!2123538 ((_ is Nil!57467) (t!369197 rulesArg!259)))))

(assert (=> d!1602033 (= (forall!13335 (t!369197 rulesArg!259) lambda!247517) e!3108996)))

(declare-fun b!4974517 () Bool)

(declare-fun e!3108997 () Bool)

(assert (=> b!4974517 (= e!3108996 e!3108997)))

(declare-fun res!2123539 () Bool)

(assert (=> b!4974517 (=> (not res!2123539) (not e!3108997))))

(assert (=> b!4974517 (= res!2123539 (dynLambda!23214 lambda!247517 (h!63915 (t!369197 rulesArg!259))))))

(declare-fun b!4974518 () Bool)

(assert (=> b!4974518 (= e!3108997 (forall!13335 (t!369197 (t!369197 rulesArg!259)) lambda!247517))))

(assert (= (and d!1602033 (not res!2123538)) b!4974517))

(assert (= (and b!4974517 res!2123539) b!4974518))

(declare-fun b_lambda!197419 () Bool)

(assert (=> (not b_lambda!197419) (not b!4974517)))

(declare-fun m!6004140 () Bool)

(assert (=> b!4974517 m!6004140))

(declare-fun m!6004142 () Bool)

(assert (=> b!4974518 m!6004142))

(assert (=> d!1601329 d!1602033))

(assert (=> b!4973569 d!1601871))

(assert (=> b!4973569 d!1601873))

(declare-fun d!1602035 () Bool)

(declare-fun c!848903 () Bool)

(assert (=> d!1602035 (= c!848903 ((_ is Node!15152) (left!41922 (left!41922 (c!848514 totalInput!464)))))))

(declare-fun e!3108998 () Bool)

(assert (=> d!1602035 (= (inv!75123 (left!41922 (left!41922 (c!848514 totalInput!464)))) e!3108998)))

(declare-fun b!4974519 () Bool)

(assert (=> b!4974519 (= e!3108998 (inv!75128 (left!41922 (left!41922 (c!848514 totalInput!464)))))))

(declare-fun b!4974520 () Bool)

(declare-fun e!3108999 () Bool)

(assert (=> b!4974520 (= e!3108998 e!3108999)))

(declare-fun res!2123540 () Bool)

(assert (=> b!4974520 (= res!2123540 (not ((_ is Leaf!25177) (left!41922 (left!41922 (c!848514 totalInput!464))))))))

(assert (=> b!4974520 (=> res!2123540 e!3108999)))

(declare-fun b!4974521 () Bool)

(assert (=> b!4974521 (= e!3108999 (inv!75129 (left!41922 (left!41922 (c!848514 totalInput!464)))))))

(assert (= (and d!1602035 c!848903) b!4974519))

(assert (= (and d!1602035 (not c!848903)) b!4974520))

(assert (= (and b!4974520 (not res!2123540)) b!4974521))

(declare-fun m!6004144 () Bool)

(assert (=> b!4974519 m!6004144))

(declare-fun m!6004146 () Bool)

(assert (=> b!4974521 m!6004146))

(assert (=> b!4973849 d!1602035))

(declare-fun d!1602037 () Bool)

(declare-fun c!848904 () Bool)

(assert (=> d!1602037 (= c!848904 ((_ is Node!15152) (right!42252 (left!41922 (c!848514 totalInput!464)))))))

(declare-fun e!3109000 () Bool)

(assert (=> d!1602037 (= (inv!75123 (right!42252 (left!41922 (c!848514 totalInput!464)))) e!3109000)))

(declare-fun b!4974522 () Bool)

(assert (=> b!4974522 (= e!3109000 (inv!75128 (right!42252 (left!41922 (c!848514 totalInput!464)))))))

(declare-fun b!4974523 () Bool)

(declare-fun e!3109001 () Bool)

(assert (=> b!4974523 (= e!3109000 e!3109001)))

(declare-fun res!2123541 () Bool)

(assert (=> b!4974523 (= res!2123541 (not ((_ is Leaf!25177) (right!42252 (left!41922 (c!848514 totalInput!464))))))))

(assert (=> b!4974523 (=> res!2123541 e!3109001)))

(declare-fun b!4974524 () Bool)

(assert (=> b!4974524 (= e!3109001 (inv!75129 (right!42252 (left!41922 (c!848514 totalInput!464)))))))

(assert (= (and d!1602037 c!848904) b!4974522))

(assert (= (and d!1602037 (not c!848904)) b!4974523))

(assert (= (and b!4974523 (not res!2123541)) b!4974524))

(declare-fun m!6004148 () Bool)

(assert (=> b!4974522 m!6004148))

(declare-fun m!6004150 () Bool)

(assert (=> b!4974524 m!6004150))

(assert (=> b!4973849 d!1602037))

(declare-fun d!1602039 () Bool)

(declare-fun c!848905 () Bool)

(assert (=> d!1602039 (= c!848905 ((_ is Node!15152) (left!41922 (right!42252 (c!848514 input!1342)))))))

(declare-fun e!3109002 () Bool)

(assert (=> d!1602039 (= (inv!75123 (left!41922 (right!42252 (c!848514 input!1342)))) e!3109002)))

(declare-fun b!4974525 () Bool)

(assert (=> b!4974525 (= e!3109002 (inv!75128 (left!41922 (right!42252 (c!848514 input!1342)))))))

(declare-fun b!4974526 () Bool)

(declare-fun e!3109003 () Bool)

(assert (=> b!4974526 (= e!3109002 e!3109003)))

(declare-fun res!2123542 () Bool)

(assert (=> b!4974526 (= res!2123542 (not ((_ is Leaf!25177) (left!41922 (right!42252 (c!848514 input!1342))))))))

(assert (=> b!4974526 (=> res!2123542 e!3109003)))

(declare-fun b!4974527 () Bool)

(assert (=> b!4974527 (= e!3109003 (inv!75129 (left!41922 (right!42252 (c!848514 input!1342)))))))

(assert (= (and d!1602039 c!848905) b!4974525))

(assert (= (and d!1602039 (not c!848905)) b!4974526))

(assert (= (and b!4974526 (not res!2123542)) b!4974527))

(declare-fun m!6004154 () Bool)

(assert (=> b!4974525 m!6004154))

(declare-fun m!6004158 () Bool)

(assert (=> b!4974527 m!6004158))

(assert (=> b!4973858 d!1602039))

(declare-fun d!1602041 () Bool)

(declare-fun c!848906 () Bool)

(assert (=> d!1602041 (= c!848906 ((_ is Node!15152) (right!42252 (right!42252 (c!848514 input!1342)))))))

(declare-fun e!3109004 () Bool)

(assert (=> d!1602041 (= (inv!75123 (right!42252 (right!42252 (c!848514 input!1342)))) e!3109004)))

(declare-fun b!4974528 () Bool)

(assert (=> b!4974528 (= e!3109004 (inv!75128 (right!42252 (right!42252 (c!848514 input!1342)))))))

(declare-fun b!4974529 () Bool)

(declare-fun e!3109005 () Bool)

(assert (=> b!4974529 (= e!3109004 e!3109005)))

(declare-fun res!2123543 () Bool)

(assert (=> b!4974529 (= res!2123543 (not ((_ is Leaf!25177) (right!42252 (right!42252 (c!848514 input!1342))))))))

(assert (=> b!4974529 (=> res!2123543 e!3109005)))

(declare-fun b!4974530 () Bool)

(assert (=> b!4974530 (= e!3109005 (inv!75129 (right!42252 (right!42252 (c!848514 input!1342)))))))

(assert (= (and d!1602041 c!848906) b!4974528))

(assert (= (and d!1602041 (not c!848906)) b!4974529))

(assert (= (and b!4974529 (not res!2123543)) b!4974530))

(declare-fun m!6004166 () Bool)

(assert (=> b!4974528 m!6004166))

(declare-fun m!6004170 () Bool)

(assert (=> b!4974530 m!6004170))

(assert (=> b!4973858 d!1602041))

(declare-fun b!4974534 () Bool)

(declare-fun e!3109006 () Bool)

(assert (=> b!4974534 (= e!3109006 (>= (size!38097 (tail!9808 (tail!9808 lt!2053676))) (size!38097 (tail!9808 (tail!9808 lt!2053676)))))))

(declare-fun b!4974532 () Bool)

(declare-fun res!2123544 () Bool)

(declare-fun e!3109008 () Bool)

(assert (=> b!4974532 (=> (not res!2123544) (not e!3109008))))

(assert (=> b!4974532 (= res!2123544 (= (head!10675 (tail!9808 (tail!9808 lt!2053676))) (head!10675 (tail!9808 (tail!9808 lt!2053676)))))))

(declare-fun b!4974533 () Bool)

(assert (=> b!4974533 (= e!3109008 (isPrefix!5251 (tail!9808 (tail!9808 (tail!9808 lt!2053676))) (tail!9808 (tail!9808 (tail!9808 lt!2053676)))))))

(declare-fun d!1602043 () Bool)

(assert (=> d!1602043 e!3109006))

(declare-fun res!2123545 () Bool)

(assert (=> d!1602043 (=> res!2123545 e!3109006)))

(declare-fun lt!2054678 () Bool)

(assert (=> d!1602043 (= res!2123545 (not lt!2054678))))

(declare-fun e!3109007 () Bool)

(assert (=> d!1602043 (= lt!2054678 e!3109007)))

(declare-fun res!2123547 () Bool)

(assert (=> d!1602043 (=> res!2123547 e!3109007)))

(assert (=> d!1602043 (= res!2123547 ((_ is Nil!57466) (tail!9808 (tail!9808 lt!2053676))))))

(assert (=> d!1602043 (= (isPrefix!5251 (tail!9808 (tail!9808 lt!2053676)) (tail!9808 (tail!9808 lt!2053676))) lt!2054678)))

(declare-fun b!4974531 () Bool)

(assert (=> b!4974531 (= e!3109007 e!3109008)))

(declare-fun res!2123546 () Bool)

(assert (=> b!4974531 (=> (not res!2123546) (not e!3109008))))

(assert (=> b!4974531 (= res!2123546 (not ((_ is Nil!57466) (tail!9808 (tail!9808 lt!2053676)))))))

(assert (= (and d!1602043 (not res!2123547)) b!4974531))

(assert (= (and b!4974531 res!2123546) b!4974532))

(assert (= (and b!4974532 res!2123544) b!4974533))

(assert (= (and d!1602043 (not res!2123545)) b!4974534))

(assert (=> b!4974534 m!6002420))

(declare-fun m!6004188 () Bool)

(assert (=> b!4974534 m!6004188))

(assert (=> b!4974534 m!6002420))

(assert (=> b!4974534 m!6004188))

(assert (=> b!4974532 m!6002420))

(declare-fun m!6004192 () Bool)

(assert (=> b!4974532 m!6004192))

(assert (=> b!4974532 m!6002420))

(assert (=> b!4974532 m!6004192))

(assert (=> b!4974533 m!6002420))

(declare-fun m!6004198 () Bool)

(assert (=> b!4974533 m!6004198))

(assert (=> b!4974533 m!6002420))

(assert (=> b!4974533 m!6004198))

(assert (=> b!4974533 m!6004198))

(assert (=> b!4974533 m!6004198))

(declare-fun m!6004204 () Bool)

(assert (=> b!4974533 m!6004204))

(assert (=> b!4973562 d!1602043))

(declare-fun d!1602045 () Bool)

(assert (=> d!1602045 (= (tail!9808 (tail!9808 lt!2053676)) (t!369196 (tail!9808 lt!2053676)))))

(assert (=> b!4973562 d!1602045))

(assert (=> b!4973215 d!1601617))

(declare-fun d!1602047 () Bool)

(assert (=> d!1602047 (= (apply!13911 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011)))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054011))))) (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054011))))))))

(declare-fun b_lambda!197421 () Bool)

(assert (=> (not b_lambda!197421) (not d!1602047)))

(declare-fun t!369370 () Bool)

(declare-fun tb!261301 () Bool)

(assert (=> (and b!4972699 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011)))))) t!369370) tb!261301))

(declare-fun result!326492 () Bool)

(assert (=> tb!261301 (= result!326492 (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054011)))))))))

(declare-fun m!6004210 () Bool)

(assert (=> tb!261301 m!6004210))

(assert (=> d!1602047 t!369370))

(declare-fun b_and!349047 () Bool)

(assert (= b_and!349005 (and (=> t!369370 result!326492) b_and!349047)))

(declare-fun tb!261303 () Bool)

(declare-fun t!369372 () Bool)

(assert (=> (and b!4973009 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011)))))) t!369372) tb!261303))

(declare-fun result!326494 () Bool)

(assert (= result!326494 result!326492))

(assert (=> d!1602047 t!369372))

(declare-fun b_and!349049 () Bool)

(assert (= b_and!349007 (and (=> t!369372 result!326494) b_and!349049)))

(declare-fun t!369374 () Bool)

(declare-fun tb!261305 () Bool)

(assert (=> (and b!4973824 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011)))))) t!369374) tb!261305))

(declare-fun result!326496 () Bool)

(assert (= result!326496 result!326492))

(assert (=> d!1602047 t!369374))

(declare-fun b_and!349051 () Bool)

(assert (= b_and!349009 (and (=> t!369374 result!326496) b_and!349051)))

(assert (=> d!1602047 m!6001882))

(declare-fun m!6004222 () Bool)

(assert (=> d!1602047 m!6004222))

(assert (=> b!4973215 d!1602047))

(declare-fun d!1602053 () Bool)

(assert (=> d!1602053 (= (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054011)))) (fromListB!2737 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054011)))))))

(declare-fun bs!1183802 () Bool)

(assert (= bs!1183802 d!1602053))

(declare-fun m!6004224 () Bool)

(assert (=> bs!1183802 m!6004224))

(assert (=> b!4973215 d!1602053))

(declare-fun b!4974543 () Bool)

(declare-fun e!3109014 () Bool)

(declare-fun e!3109015 () Bool)

(assert (=> b!4974543 (= e!3109014 e!3109015)))

(declare-fun res!2123552 () Bool)

(assert (=> b!4974543 (=> (not res!2123552) (not e!3109015))))

(declare-fun lt!2054681 () Option!14463)

(assert (=> b!4974543 (= res!2123552 (isDefined!11376 lt!2054681))))

(declare-fun b!4974544 () Bool)

(declare-fun res!2123555 () Bool)

(assert (=> b!4974544 (=> (not res!2123555) (not e!3109015))))

(assert (=> b!4974544 (= res!2123555 (= (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054681)))) (originalCharacters!8679 (_1!34412 (get!19957 lt!2054681)))))))

(declare-fun bm!346990 () Bool)

(declare-fun call!346995 () Option!14463)

(assert (=> bm!346990 (= call!346995 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 (t!369197 rulesArg!259))) lt!2053676))))

(declare-fun b!4974546 () Bool)

(declare-fun res!2123558 () Bool)

(assert (=> b!4974546 (=> (not res!2123558) (not e!3109015))))

(assert (=> b!4974546 (= res!2123558 (matchR!6643 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054681)))) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054681))))))))

(declare-fun b!4974547 () Bool)

(declare-fun res!2123556 () Bool)

(assert (=> b!4974547 (=> (not res!2123556) (not e!3109015))))

(assert (=> b!4974547 (= res!2123556 (< (size!38097 (_2!34412 (get!19957 lt!2054681))) (size!38097 lt!2053676)))))

(declare-fun b!4974548 () Bool)

(declare-fun res!2123554 () Bool)

(assert (=> b!4974548 (=> (not res!2123554) (not e!3109015))))

(assert (=> b!4974548 (= res!2123554 (= (++!12539 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054681)))) (_2!34412 (get!19957 lt!2054681))) lt!2053676))))

(declare-fun b!4974549 () Bool)

(declare-fun res!2123553 () Bool)

(assert (=> b!4974549 (=> (not res!2123553) (not e!3109015))))

(assert (=> b!4974549 (= res!2123553 (= (value!268840 (_1!34412 (get!19957 lt!2054681))) (apply!13911 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054681)))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054681)))))))))

(declare-fun b!4974550 () Bool)

(declare-fun e!3109016 () Option!14463)

(declare-fun lt!2054682 () Option!14463)

(declare-fun lt!2054685 () Option!14463)

(assert (=> b!4974550 (= e!3109016 (ite (and ((_ is None!14462) lt!2054682) ((_ is None!14462) lt!2054685)) None!14462 (ite ((_ is None!14462) lt!2054685) lt!2054682 (ite ((_ is None!14462) lt!2054682) lt!2054685 (ite (>= (size!38094 (_1!34412 (v!50457 lt!2054682))) (size!38094 (_1!34412 (v!50457 lt!2054685)))) lt!2054682 lt!2054685)))))))

(assert (=> b!4974550 (= lt!2054682 call!346995)))

(assert (=> b!4974550 (= lt!2054685 (maxPrefix!4667 thiss!15247 (t!369197 (t!369197 (t!369197 rulesArg!259))) lt!2053676))))

(declare-fun b!4974551 () Bool)

(assert (=> b!4974551 (= e!3109015 (contains!19545 (t!369197 (t!369197 rulesArg!259)) (rule!11662 (_1!34412 (get!19957 lt!2054681)))))))

(declare-fun b!4974545 () Bool)

(assert (=> b!4974545 (= e!3109016 call!346995)))

(declare-fun d!1602055 () Bool)

(assert (=> d!1602055 e!3109014))

(declare-fun res!2123557 () Bool)

(assert (=> d!1602055 (=> res!2123557 e!3109014)))

(assert (=> d!1602055 (= res!2123557 (isEmpty!30975 lt!2054681))))

(assert (=> d!1602055 (= lt!2054681 e!3109016)))

(declare-fun c!848909 () Bool)

(assert (=> d!1602055 (= c!848909 (and ((_ is Cons!57467) (t!369197 (t!369197 rulesArg!259))) ((_ is Nil!57467) (t!369197 (t!369197 (t!369197 rulesArg!259))))))))

(declare-fun lt!2054683 () Unit!148431)

(declare-fun lt!2054684 () Unit!148431)

(assert (=> d!1602055 (= lt!2054683 lt!2054684)))

(assert (=> d!1602055 (isPrefix!5251 lt!2053676 lt!2053676)))

(assert (=> d!1602055 (= lt!2054684 (lemmaIsPrefixRefl!3575 lt!2053676 lt!2053676))))

(assert (=> d!1602055 (rulesValidInductive!3303 thiss!15247 (t!369197 (t!369197 rulesArg!259)))))

(assert (=> d!1602055 (= (maxPrefix!4667 thiss!15247 (t!369197 (t!369197 rulesArg!259)) lt!2053676) lt!2054681)))

(assert (= (and d!1602055 c!848909) b!4974545))

(assert (= (and d!1602055 (not c!848909)) b!4974550))

(assert (= (or b!4974545 b!4974550) bm!346990))

(assert (= (and d!1602055 (not res!2123557)) b!4974543))

(assert (= (and b!4974543 res!2123552) b!4974544))

(assert (= (and b!4974544 res!2123555) b!4974547))

(assert (= (and b!4974547 res!2123556) b!4974548))

(assert (= (and b!4974548 res!2123554) b!4974549))

(assert (= (and b!4974549 res!2123553) b!4974546))

(assert (= (and b!4974546 res!2123558) b!4974551))

(declare-fun m!6004236 () Bool)

(assert (=> b!4974543 m!6004236))

(declare-fun m!6004238 () Bool)

(assert (=> b!4974544 m!6004238))

(declare-fun m!6004240 () Bool)

(assert (=> b!4974544 m!6004240))

(assert (=> b!4974544 m!6004240))

(declare-fun m!6004242 () Bool)

(assert (=> b!4974544 m!6004242))

(declare-fun m!6004244 () Bool)

(assert (=> b!4974550 m!6004244))

(declare-fun m!6004246 () Bool)

(assert (=> bm!346990 m!6004246))

(assert (=> b!4974547 m!6004238))

(declare-fun m!6004248 () Bool)

(assert (=> b!4974547 m!6004248))

(assert (=> b!4974547 m!6001604))

(declare-fun m!6004250 () Bool)

(assert (=> d!1602055 m!6004250))

(assert (=> d!1602055 m!6001310))

(assert (=> d!1602055 m!6001312))

(assert (=> d!1602055 m!6002108))

(assert (=> b!4974551 m!6004238))

(declare-fun m!6004254 () Bool)

(assert (=> b!4974551 m!6004254))

(assert (=> b!4974548 m!6004238))

(assert (=> b!4974548 m!6004240))

(assert (=> b!4974548 m!6004240))

(assert (=> b!4974548 m!6004242))

(assert (=> b!4974548 m!6004242))

(declare-fun m!6004256 () Bool)

(assert (=> b!4974548 m!6004256))

(assert (=> b!4974546 m!6004238))

(assert (=> b!4974546 m!6004240))

(assert (=> b!4974546 m!6004240))

(assert (=> b!4974546 m!6004242))

(assert (=> b!4974546 m!6004242))

(declare-fun m!6004258 () Bool)

(assert (=> b!4974546 m!6004258))

(assert (=> b!4974549 m!6004238))

(declare-fun m!6004260 () Bool)

(assert (=> b!4974549 m!6004260))

(assert (=> b!4974549 m!6004260))

(declare-fun m!6004262 () Bool)

(assert (=> b!4974549 m!6004262))

(assert (=> b!4973649 d!1602055))

(assert (=> b!4973024 d!1601513))

(assert (=> b!4973024 d!1601515))

(declare-fun bs!1183804 () Bool)

(declare-fun d!1602063 () Bool)

(assert (= bs!1183804 (and d!1602063 d!1601243)))

(declare-fun lambda!247539 () Int)

(assert (=> bs!1183804 (= (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) (= lambda!247539 lambda!247509))))

(declare-fun bs!1183805 () Bool)

(assert (= bs!1183805 (and d!1602063 d!1601541)))

(assert (=> bs!1183805 (= (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) (= lambda!247539 lambda!247528))))

(declare-fun bs!1183806 () Bool)

(assert (= bs!1183806 (and d!1602063 d!1601641)))

(assert (=> bs!1183806 (= lambda!247539 lambda!247529)))

(assert (=> d!1602063 true))

(assert (=> d!1602063 (< (dynLambda!23209 order!26257 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (dynLambda!23212 order!26263 lambda!247539))))

(assert (=> d!1602063 (= (equivClasses!3555 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (Forall2!1292 lambda!247539))))

(declare-fun bs!1183807 () Bool)

(assert (= bs!1183807 d!1602063))

(declare-fun m!6004264 () Bool)

(assert (=> bs!1183807 m!6004264))

(assert (=> b!4973802 d!1602063))

(declare-fun d!1602065 () Bool)

(assert (=> d!1602065 (= (isEmpty!30975 lt!2054040) (not ((_ is Some!14462) lt!2054040)))))

(assert (=> d!1601307 d!1602065))

(declare-fun d!1602067 () Bool)

(assert (=> d!1602067 (= (isEmpty!30977 (_1!34415 lt!2054039)) ((_ is Nil!57466) (_1!34415 lt!2054039)))))

(assert (=> d!1601307 d!1602067))

(declare-fun d!1602069 () Bool)

(declare-fun lt!2054724 () tuple2!62224)

(assert (=> d!1602069 (= (++!12539 (_1!34415 lt!2054724) (_2!34415 lt!2054724)) (list!18383 input!1342))))

(assert (=> d!1602069 (= lt!2054724 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 0 (list!18383 input!1342) (list!18383 input!1342) (sizeTr!364 (list!18383 input!1342) 0)))))

(declare-fun lt!2054727 () Unit!148431)

(declare-fun lt!2054729 () Unit!148431)

(assert (=> d!1602069 (= lt!2054727 lt!2054729)))

(declare-fun lt!2054726 () List!57590)

(declare-fun lt!2054722 () Int)

(assert (=> d!1602069 (= (sizeTr!364 lt!2054726 lt!2054722) (+ (size!38097 lt!2054726) lt!2054722))))

(assert (=> d!1602069 (= lt!2054729 (lemmaSizeTrEqualsSize!363 lt!2054726 lt!2054722))))

(assert (=> d!1602069 (= lt!2054722 0)))

(assert (=> d!1602069 (= lt!2054726 Nil!57466)))

(declare-fun lt!2054723 () Unit!148431)

(declare-fun lt!2054728 () Unit!148431)

(assert (=> d!1602069 (= lt!2054723 lt!2054728)))

(declare-fun lt!2054725 () Int)

(assert (=> d!1602069 (= (sizeTr!364 (list!18383 input!1342) lt!2054725) (+ (size!38097 (list!18383 input!1342)) lt!2054725))))

(assert (=> d!1602069 (= lt!2054728 (lemmaSizeTrEqualsSize!363 (list!18383 input!1342) lt!2054725))))

(assert (=> d!1602069 (= lt!2054725 0)))

(assert (=> d!1602069 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1602069 (= (findLongestMatch!1704 (regex!8400 (h!63915 rulesArg!259)) (list!18383 input!1342)) lt!2054724)))

(declare-fun bs!1183812 () Bool)

(assert (= bs!1183812 d!1602069))

(assert (=> bs!1183812 m!6001308))

(declare-fun m!6004340 () Bool)

(assert (=> bs!1183812 m!6004340))

(assert (=> bs!1183812 m!6001308))

(assert (=> bs!1183812 m!6002036))

(declare-fun m!6004342 () Bool)

(assert (=> bs!1183812 m!6004342))

(assert (=> bs!1183812 m!6001308))

(declare-fun m!6004344 () Bool)

(assert (=> bs!1183812 m!6004344))

(declare-fun m!6004346 () Bool)

(assert (=> bs!1183812 m!6004346))

(declare-fun m!6004348 () Bool)

(assert (=> bs!1183812 m!6004348))

(assert (=> bs!1183812 m!6001308))

(assert (=> bs!1183812 m!6001308))

(assert (=> bs!1183812 m!6004344))

(declare-fun m!6004350 () Bool)

(assert (=> bs!1183812 m!6004350))

(assert (=> bs!1183812 m!6001308))

(declare-fun m!6004352 () Bool)

(assert (=> bs!1183812 m!6004352))

(declare-fun m!6004354 () Bool)

(assert (=> bs!1183812 m!6004354))

(assert (=> bs!1183812 m!6002460))

(assert (=> d!1601307 d!1602069))

(assert (=> d!1601307 d!1601455))

(assert (=> d!1601545 d!1601213))

(assert (=> d!1601283 d!1601495))

(declare-fun b!4974578 () Bool)

(declare-fun e!3109034 () Bool)

(declare-fun lt!2054734 () Option!14463)

(assert (=> b!4974578 (= e!3109034 (= (size!38094 (_1!34412 (get!19957 lt!2054734))) (size!38097 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054734))))))))

(declare-fun b!4974579 () Bool)

(declare-fun res!2123579 () Bool)

(assert (=> b!4974579 (=> (not res!2123579) (not e!3109034))))

(assert (=> b!4974579 (= res!2123579 (= (rule!11662 (_1!34412 (get!19957 lt!2054734))) (h!63915 (t!369197 rulesArg!259))))))

(declare-fun b!4974580 () Bool)

(declare-fun res!2123578 () Bool)

(assert (=> b!4974580 (=> (not res!2123578) (not e!3109034))))

(assert (=> b!4974580 (= res!2123578 (< (size!38097 (_2!34412 (get!19957 lt!2054734))) (size!38097 (list!18383 input!1342))))))

(declare-fun b!4974581 () Bool)

(declare-fun e!3109031 () Option!14463)

(declare-fun lt!2054733 () tuple2!62224)

(assert (=> b!4974581 (= e!3109031 (Some!14462 (tuple2!62219 (Token!15297 (apply!13911 (transformation!8400 (h!63915 (t!369197 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054733))) (h!63915 (t!369197 rulesArg!259)) (size!38098 (seqFromList!6043 (_1!34415 lt!2054733))) (_1!34415 lt!2054733)) (_2!34415 lt!2054733))))))

(declare-fun lt!2054732 () Unit!148431)

(assert (=> b!4974581 (= lt!2054732 (longestMatchIsAcceptedByMatchOrIsEmpty!1823 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (list!18383 input!1342)))))

(declare-fun res!2123576 () Bool)

(assert (=> b!4974581 (= res!2123576 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))))))

(declare-fun e!3109032 () Bool)

(assert (=> b!4974581 (=> res!2123576 e!3109032)))

(assert (=> b!4974581 e!3109032))

(declare-fun lt!2054731 () Unit!148431)

(assert (=> b!4974581 (= lt!2054731 lt!2054732)))

(declare-fun lt!2054730 () Unit!148431)

(assert (=> b!4974581 (= lt!2054730 (lemmaSemiInverse!2609 (transformation!8400 (h!63915 (t!369197 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054733))))))

(declare-fun b!4974582 () Bool)

(declare-fun res!2123580 () Bool)

(assert (=> b!4974582 (=> (not res!2123580) (not e!3109034))))

(assert (=> b!4974582 (= res!2123580 (= (++!12539 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054734)))) (_2!34412 (get!19957 lt!2054734))) (list!18383 input!1342)))))

(declare-fun b!4974583 () Bool)

(assert (=> b!4974583 (= e!3109031 None!14462)))

(declare-fun d!1602105 () Bool)

(declare-fun e!3109033 () Bool)

(assert (=> d!1602105 e!3109033))

(declare-fun res!2123577 () Bool)

(assert (=> d!1602105 (=> res!2123577 e!3109033)))

(assert (=> d!1602105 (= res!2123577 (isEmpty!30975 lt!2054734))))

(assert (=> d!1602105 (= lt!2054734 e!3109031)))

(declare-fun c!848915 () Bool)

(assert (=> d!1602105 (= c!848915 (isEmpty!30977 (_1!34415 lt!2054733)))))

(assert (=> d!1602105 (= lt!2054733 (findLongestMatch!1704 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (list!18383 input!1342)))))

(assert (=> d!1602105 (ruleValid!3809 thiss!15247 (h!63915 (t!369197 rulesArg!259)))))

(assert (=> d!1602105 (= (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 rulesArg!259)) (list!18383 input!1342)) lt!2054734)))

(declare-fun b!4974584 () Bool)

(assert (=> b!4974584 (= e!3109032 (matchR!6643 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))))))

(declare-fun b!4974585 () Bool)

(assert (=> b!4974585 (= e!3109033 e!3109034)))

(declare-fun res!2123575 () Bool)

(assert (=> b!4974585 (=> (not res!2123575) (not e!3109034))))

(assert (=> b!4974585 (= res!2123575 (matchR!6643 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054734))))))))

(declare-fun b!4974586 () Bool)

(declare-fun res!2123581 () Bool)

(assert (=> b!4974586 (=> (not res!2123581) (not e!3109034))))

(assert (=> b!4974586 (= res!2123581 (= (value!268840 (_1!34412 (get!19957 lt!2054734))) (apply!13911 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054734)))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054734)))))))))

(assert (= (and d!1602105 c!848915) b!4974583))

(assert (= (and d!1602105 (not c!848915)) b!4974581))

(assert (= (and b!4974581 (not res!2123576)) b!4974584))

(assert (= (and d!1602105 (not res!2123577)) b!4974585))

(assert (= (and b!4974585 res!2123575) b!4974582))

(assert (= (and b!4974582 res!2123580) b!4974580))

(assert (= (and b!4974580 res!2123578) b!4974579))

(assert (= (and b!4974579 res!2123579) b!4974586))

(assert (= (and b!4974586 res!2123581) b!4974578))

(declare-fun m!6004360 () Bool)

(assert (=> b!4974586 m!6004360))

(declare-fun m!6004362 () Bool)

(assert (=> b!4974586 m!6004362))

(assert (=> b!4974586 m!6004362))

(declare-fun m!6004364 () Bool)

(assert (=> b!4974586 m!6004364))

(declare-fun m!6004368 () Bool)

(assert (=> d!1602105 m!6004368))

(declare-fun m!6004370 () Bool)

(assert (=> d!1602105 m!6004370))

(assert (=> d!1602105 m!6001308))

(declare-fun m!6004374 () Bool)

(assert (=> d!1602105 m!6004374))

(assert (=> d!1602105 m!6002120))

(assert (=> b!4974580 m!6004360))

(declare-fun m!6004376 () Bool)

(assert (=> b!4974580 m!6004376))

(assert (=> b!4974580 m!6001308))

(assert (=> b!4974580 m!6002036))

(assert (=> b!4974578 m!6004360))

(declare-fun m!6004378 () Bool)

(assert (=> b!4974578 m!6004378))

(assert (=> b!4974582 m!6004360))

(declare-fun m!6004380 () Bool)

(assert (=> b!4974582 m!6004380))

(assert (=> b!4974582 m!6004380))

(declare-fun m!6004382 () Bool)

(assert (=> b!4974582 m!6004382))

(assert (=> b!4974582 m!6004382))

(declare-fun m!6004384 () Bool)

(assert (=> b!4974582 m!6004384))

(assert (=> b!4974579 m!6004360))

(assert (=> b!4974585 m!6004360))

(assert (=> b!4974585 m!6004380))

(assert (=> b!4974585 m!6004380))

(assert (=> b!4974585 m!6004382))

(assert (=> b!4974585 m!6004382))

(declare-fun m!6004394 () Bool)

(assert (=> b!4974585 m!6004394))

(assert (=> b!4974581 m!6001546))

(assert (=> b!4974581 m!6001308))

(assert (=> b!4974581 m!6001308))

(assert (=> b!4974581 m!6002036))

(declare-fun m!6004396 () Bool)

(assert (=> b!4974581 m!6004396))

(declare-fun m!6004400 () Bool)

(assert (=> b!4974581 m!6004400))

(declare-fun m!6004402 () Bool)

(assert (=> b!4974581 m!6004402))

(assert (=> b!4974581 m!6004400))

(declare-fun m!6004404 () Bool)

(assert (=> b!4974581 m!6004404))

(assert (=> b!4974581 m!6001546))

(assert (=> b!4974581 m!6001308))

(declare-fun m!6004406 () Bool)

(assert (=> b!4974581 m!6004406))

(assert (=> b!4974581 m!6004400))

(declare-fun m!6004408 () Bool)

(assert (=> b!4974581 m!6004408))

(assert (=> b!4974581 m!6004400))

(assert (=> b!4974581 m!6001308))

(assert (=> b!4974581 m!6002036))

(declare-fun m!6004412 () Bool)

(assert (=> b!4974581 m!6004412))

(assert (=> b!4974584 m!6001546))

(assert (=> b!4974584 m!6001308))

(assert (=> b!4974584 m!6002036))

(assert (=> b!4974584 m!6001546))

(assert (=> b!4974584 m!6001308))

(assert (=> b!4974584 m!6001308))

(assert (=> b!4974584 m!6002036))

(assert (=> b!4974584 m!6004396))

(declare-fun m!6004414 () Bool)

(assert (=> b!4974584 m!6004414))

(assert (=> bm!346854 d!1602105))

(declare-fun d!1602115 () Bool)

(assert (=> d!1602115 (= (isEmpty!30977 (_1!34415 lt!2054225)) ((_ is Nil!57466) (_1!34415 lt!2054225)))))

(assert (=> b!4973744 d!1602115))

(declare-fun d!1602117 () Bool)

(declare-fun res!2123590 () Bool)

(declare-fun e!3109045 () Bool)

(assert (=> d!1602117 (=> (not res!2123590) (not e!3109045))))

(assert (=> d!1602117 (= res!2123590 (= (csize!30534 (right!42252 (c!848514 input!1342))) (+ (size!38100 (left!41922 (right!42252 (c!848514 input!1342)))) (size!38100 (right!42252 (right!42252 (c!848514 input!1342)))))))))

(assert (=> d!1602117 (= (inv!75128 (right!42252 (c!848514 input!1342))) e!3109045)))

(declare-fun b!4974605 () Bool)

(declare-fun res!2123591 () Bool)

(assert (=> b!4974605 (=> (not res!2123591) (not e!3109045))))

(assert (=> b!4974605 (= res!2123591 (and (not (= (left!41922 (right!42252 (c!848514 input!1342))) Empty!15152)) (not (= (right!42252 (right!42252 (c!848514 input!1342))) Empty!15152))))))

(declare-fun b!4974606 () Bool)

(declare-fun res!2123592 () Bool)

(assert (=> b!4974606 (=> (not res!2123592) (not e!3109045))))

(assert (=> b!4974606 (= res!2123592 (= (cheight!15363 (right!42252 (c!848514 input!1342))) (+ (max!0 (height!2020 (left!41922 (right!42252 (c!848514 input!1342)))) (height!2020 (right!42252 (right!42252 (c!848514 input!1342))))) 1)))))

(declare-fun b!4974607 () Bool)

(assert (=> b!4974607 (= e!3109045 (<= 0 (cheight!15363 (right!42252 (c!848514 input!1342)))))))

(assert (= (and d!1602117 res!2123590) b!4974605))

(assert (= (and b!4974605 res!2123591) b!4974606))

(assert (= (and b!4974606 res!2123592) b!4974607))

(declare-fun m!6004416 () Bool)

(assert (=> d!1602117 m!6004416))

(declare-fun m!6004418 () Bool)

(assert (=> d!1602117 m!6004418))

(assert (=> b!4974606 m!6003472))

(assert (=> b!4974606 m!6003474))

(assert (=> b!4974606 m!6003472))

(assert (=> b!4974606 m!6003474))

(declare-fun m!6004420 () Bool)

(assert (=> b!4974606 m!6004420))

(assert (=> b!4973764 d!1602117))

(declare-fun b!4974608 () Bool)

(declare-fun e!3109047 () Bool)

(assert (=> b!4974608 (= e!3109047 (= (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040))))) (c!848513 (regex!8400 (h!63915 rulesArg!259)))))))

(declare-fun b!4974609 () Bool)

(declare-fun e!3109048 () Bool)

(assert (=> b!4974609 (= e!3109048 (matchR!6643 (derivativeStep!3929 (regex!8400 (h!63915 rulesArg!259)) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040)))))) (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040)))))))))

(declare-fun b!4974610 () Bool)

(declare-fun e!3109050 () Bool)

(assert (=> b!4974610 (= e!3109050 (not (= (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040))))) (c!848513 (regex!8400 (h!63915 rulesArg!259))))))))

(declare-fun b!4974611 () Bool)

(declare-fun e!3109049 () Bool)

(assert (=> b!4974611 (= e!3109049 e!3109050)))

(declare-fun res!2123600 () Bool)

(assert (=> b!4974611 (=> res!2123600 e!3109050)))

(declare-fun call!346998 () Bool)

(assert (=> b!4974611 (= res!2123600 call!346998)))

(declare-fun b!4974613 () Bool)

(declare-fun e!3109051 () Bool)

(declare-fun lt!2054738 () Bool)

(assert (=> b!4974613 (= e!3109051 (= lt!2054738 call!346998))))

(declare-fun b!4974614 () Bool)

(declare-fun res!2123599 () Bool)

(assert (=> b!4974614 (=> (not res!2123599) (not e!3109047))))

(assert (=> b!4974614 (= res!2123599 (isEmpty!30977 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040)))))))))

(declare-fun b!4974615 () Bool)

(declare-fun res!2123596 () Bool)

(assert (=> b!4974615 (=> res!2123596 e!3109050)))

(assert (=> b!4974615 (= res!2123596 (not (isEmpty!30977 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040))))))))))

(declare-fun b!4974616 () Bool)

(declare-fun res!2123597 () Bool)

(declare-fun e!3109052 () Bool)

(assert (=> b!4974616 (=> res!2123597 e!3109052)))

(assert (=> b!4974616 (= res!2123597 e!3109047)))

(declare-fun res!2123593 () Bool)

(assert (=> b!4974616 (=> (not res!2123593) (not e!3109047))))

(assert (=> b!4974616 (= res!2123593 lt!2054738)))

(declare-fun b!4974617 () Bool)

(declare-fun res!2123594 () Bool)

(assert (=> b!4974617 (=> res!2123594 e!3109052)))

(assert (=> b!4974617 (= res!2123594 (not ((_ is ElementMatch!13633) (regex!8400 (h!63915 rulesArg!259)))))))

(declare-fun e!3109046 () Bool)

(assert (=> b!4974617 (= e!3109046 e!3109052)))

(declare-fun b!4974618 () Bool)

(assert (=> b!4974618 (= e!3109048 (nullable!4627 (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun d!1602119 () Bool)

(assert (=> d!1602119 e!3109051))

(declare-fun c!848920 () Bool)

(assert (=> d!1602119 (= c!848920 ((_ is EmptyExpr!13633) (regex!8400 (h!63915 rulesArg!259))))))

(assert (=> d!1602119 (= lt!2054738 e!3109048)))

(declare-fun c!848921 () Bool)

(assert (=> d!1602119 (= c!848921 (isEmpty!30977 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040))))))))

(assert (=> d!1602119 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1602119 (= (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040))))) lt!2054738)))

(declare-fun b!4974612 () Bool)

(assert (=> b!4974612 (= e!3109051 e!3109046)))

(declare-fun c!848922 () Bool)

(assert (=> b!4974612 (= c!848922 ((_ is EmptyLang!13633) (regex!8400 (h!63915 rulesArg!259))))))

(declare-fun b!4974619 () Bool)

(assert (=> b!4974619 (= e!3109052 e!3109049)))

(declare-fun res!2123595 () Bool)

(assert (=> b!4974619 (=> (not res!2123595) (not e!3109049))))

(assert (=> b!4974619 (= res!2123595 (not lt!2054738))))

(declare-fun b!4974620 () Bool)

(assert (=> b!4974620 (= e!3109046 (not lt!2054738))))

(declare-fun b!4974621 () Bool)

(declare-fun res!2123598 () Bool)

(assert (=> b!4974621 (=> (not res!2123598) (not e!3109047))))

(assert (=> b!4974621 (= res!2123598 (not call!346998))))

(declare-fun bm!346993 () Bool)

(assert (=> bm!346993 (= call!346998 (isEmpty!30977 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054040))))))))

(assert (= (and d!1602119 c!848921) b!4974618))

(assert (= (and d!1602119 (not c!848921)) b!4974609))

(assert (= (and d!1602119 c!848920) b!4974613))

(assert (= (and d!1602119 (not c!848920)) b!4974612))

(assert (= (and b!4974612 c!848922) b!4974620))

(assert (= (and b!4974612 (not c!848922)) b!4974617))

(assert (= (and b!4974617 (not res!2123594)) b!4974616))

(assert (= (and b!4974616 res!2123593) b!4974621))

(assert (= (and b!4974621 res!2123598) b!4974614))

(assert (= (and b!4974614 res!2123599) b!4974608))

(assert (= (and b!4974616 (not res!2123597)) b!4974619))

(assert (= (and b!4974619 res!2123595) b!4974611))

(assert (= (and b!4974611 (not res!2123600)) b!4974615))

(assert (= (and b!4974615 (not res!2123596)) b!4974610))

(assert (= (or b!4974613 b!4974611 b!4974621) bm!346993))

(assert (=> b!4974618 m!6002462))

(assert (=> b!4974614 m!6002042))

(declare-fun m!6004436 () Bool)

(assert (=> b!4974614 m!6004436))

(assert (=> b!4974614 m!6004436))

(declare-fun m!6004438 () Bool)

(assert (=> b!4974614 m!6004438))

(assert (=> b!4974610 m!6002042))

(declare-fun m!6004440 () Bool)

(assert (=> b!4974610 m!6004440))

(assert (=> b!4974609 m!6002042))

(assert (=> b!4974609 m!6004440))

(assert (=> b!4974609 m!6004440))

(declare-fun m!6004442 () Bool)

(assert (=> b!4974609 m!6004442))

(assert (=> b!4974609 m!6002042))

(assert (=> b!4974609 m!6004436))

(assert (=> b!4974609 m!6004442))

(assert (=> b!4974609 m!6004436))

(declare-fun m!6004444 () Bool)

(assert (=> b!4974609 m!6004444))

(assert (=> d!1602119 m!6002042))

(declare-fun m!6004446 () Bool)

(assert (=> d!1602119 m!6004446))

(assert (=> d!1602119 m!6002460))

(assert (=> b!4974608 m!6002042))

(assert (=> b!4974608 m!6004440))

(assert (=> bm!346993 m!6002042))

(assert (=> bm!346993 m!6004446))

(assert (=> b!4974615 m!6002042))

(assert (=> b!4974615 m!6004436))

(assert (=> b!4974615 m!6004436))

(assert (=> b!4974615 m!6004438))

(assert (=> b!4973337 d!1602119))

(assert (=> b!4973337 d!1601695))

(assert (=> b!4973337 d!1601697))

(assert (=> b!4973337 d!1601701))

(declare-fun b!4974625 () Bool)

(declare-fun e!3109054 () List!57590)

(assert (=> b!4974625 (= e!3109054 (++!12539 (list!18385 (left!41922 (c!848514 (_2!34411 (get!19958 lt!2053812))))) (list!18385 (right!42252 (c!848514 (_2!34411 (get!19958 lt!2053812)))))))))

(declare-fun b!4974623 () Bool)

(declare-fun e!3109053 () List!57590)

(assert (=> b!4974623 (= e!3109053 e!3109054)))

(declare-fun c!848924 () Bool)

(assert (=> b!4974623 (= c!848924 ((_ is Leaf!25177) (c!848514 (_2!34411 (get!19958 lt!2053812)))))))

(declare-fun d!1602123 () Bool)

(declare-fun c!848923 () Bool)

(assert (=> d!1602123 (= c!848923 ((_ is Empty!15152) (c!848514 (_2!34411 (get!19958 lt!2053812)))))))

(assert (=> d!1602123 (= (list!18385 (c!848514 (_2!34411 (get!19958 lt!2053812)))) e!3109053)))

(declare-fun b!4974624 () Bool)

(assert (=> b!4974624 (= e!3109054 (list!18387 (xs!18478 (c!848514 (_2!34411 (get!19958 lt!2053812))))))))

(declare-fun b!4974622 () Bool)

(assert (=> b!4974622 (= e!3109053 Nil!57466)))

(assert (= (and d!1602123 c!848923) b!4974622))

(assert (= (and d!1602123 (not c!848923)) b!4974623))

(assert (= (and b!4974623 c!848924) b!4974624))

(assert (= (and b!4974623 (not c!848924)) b!4974625))

(declare-fun m!6004448 () Bool)

(assert (=> b!4974625 m!6004448))

(declare-fun m!6004450 () Bool)

(assert (=> b!4974625 m!6004450))

(assert (=> b!4974625 m!6004448))

(assert (=> b!4974625 m!6004450))

(declare-fun m!6004452 () Bool)

(assert (=> b!4974625 m!6004452))

(declare-fun m!6004454 () Bool)

(assert (=> b!4974624 m!6004454))

(assert (=> d!1601407 d!1602123))

(declare-fun b!4974626 () Bool)

(declare-fun e!3109055 () List!57590)

(assert (=> b!4974626 (= e!3109055 (list!18385 (right!42252 (c!848514 input!1342))))))

(declare-fun d!1602125 () Bool)

(declare-fun e!3109056 () Bool)

(assert (=> d!1602125 e!3109056))

(declare-fun res!2123601 () Bool)

(assert (=> d!1602125 (=> (not res!2123601) (not e!3109056))))

(declare-fun lt!2054739 () List!57590)

(assert (=> d!1602125 (= res!2123601 (= (content!10197 lt!2054739) ((_ map or) (content!10197 (list!18385 (left!41922 (c!848514 input!1342)))) (content!10197 (list!18385 (right!42252 (c!848514 input!1342)))))))))

(assert (=> d!1602125 (= lt!2054739 e!3109055)))

(declare-fun c!848925 () Bool)

(assert (=> d!1602125 (= c!848925 ((_ is Nil!57466) (list!18385 (left!41922 (c!848514 input!1342)))))))

(assert (=> d!1602125 (= (++!12539 (list!18385 (left!41922 (c!848514 input!1342))) (list!18385 (right!42252 (c!848514 input!1342)))) lt!2054739)))

(declare-fun b!4974629 () Bool)

(assert (=> b!4974629 (= e!3109056 (or (not (= (list!18385 (right!42252 (c!848514 input!1342))) Nil!57466)) (= lt!2054739 (list!18385 (left!41922 (c!848514 input!1342))))))))

(declare-fun b!4974628 () Bool)

(declare-fun res!2123602 () Bool)

(assert (=> b!4974628 (=> (not res!2123602) (not e!3109056))))

(assert (=> b!4974628 (= res!2123602 (= (size!38097 lt!2054739) (+ (size!38097 (list!18385 (left!41922 (c!848514 input!1342)))) (size!38097 (list!18385 (right!42252 (c!848514 input!1342)))))))))

(declare-fun b!4974627 () Bool)

(assert (=> b!4974627 (= e!3109055 (Cons!57466 (h!63914 (list!18385 (left!41922 (c!848514 input!1342)))) (++!12539 (t!369196 (list!18385 (left!41922 (c!848514 input!1342)))) (list!18385 (right!42252 (c!848514 input!1342))))))))

(assert (= (and d!1602125 c!848925) b!4974626))

(assert (= (and d!1602125 (not c!848925)) b!4974627))

(assert (= (and d!1602125 res!2123601) b!4974628))

(assert (= (and b!4974628 res!2123602) b!4974629))

(declare-fun m!6004456 () Bool)

(assert (=> d!1602125 m!6004456))

(assert (=> d!1602125 m!6002410))

(declare-fun m!6004458 () Bool)

(assert (=> d!1602125 m!6004458))

(assert (=> d!1602125 m!6002412))

(declare-fun m!6004460 () Bool)

(assert (=> d!1602125 m!6004460))

(declare-fun m!6004462 () Bool)

(assert (=> b!4974628 m!6004462))

(assert (=> b!4974628 m!6002410))

(declare-fun m!6004464 () Bool)

(assert (=> b!4974628 m!6004464))

(assert (=> b!4974628 m!6002412))

(declare-fun m!6004466 () Bool)

(assert (=> b!4974628 m!6004466))

(assert (=> b!4974627 m!6002412))

(declare-fun m!6004468 () Bool)

(assert (=> b!4974627 m!6004468))

(assert (=> b!4973557 d!1602125))

(declare-fun b!4974633 () Bool)

(declare-fun e!3109058 () List!57590)

(assert (=> b!4974633 (= e!3109058 (++!12539 (list!18385 (left!41922 (left!41922 (c!848514 input!1342)))) (list!18385 (right!42252 (left!41922 (c!848514 input!1342))))))))

(declare-fun b!4974631 () Bool)

(declare-fun e!3109057 () List!57590)

(assert (=> b!4974631 (= e!3109057 e!3109058)))

(declare-fun c!848927 () Bool)

(assert (=> b!4974631 (= c!848927 ((_ is Leaf!25177) (left!41922 (c!848514 input!1342))))))

(declare-fun d!1602127 () Bool)

(declare-fun c!848926 () Bool)

(assert (=> d!1602127 (= c!848926 ((_ is Empty!15152) (left!41922 (c!848514 input!1342))))))

(assert (=> d!1602127 (= (list!18385 (left!41922 (c!848514 input!1342))) e!3109057)))

(declare-fun b!4974632 () Bool)

(assert (=> b!4974632 (= e!3109058 (list!18387 (xs!18478 (left!41922 (c!848514 input!1342)))))))

(declare-fun b!4974630 () Bool)

(assert (=> b!4974630 (= e!3109057 Nil!57466)))

(assert (= (and d!1602127 c!848926) b!4974630))

(assert (= (and d!1602127 (not c!848926)) b!4974631))

(assert (= (and b!4974631 c!848927) b!4974632))

(assert (= (and b!4974631 (not c!848927)) b!4974633))

(declare-fun m!6004470 () Bool)

(assert (=> b!4974633 m!6004470))

(declare-fun m!6004472 () Bool)

(assert (=> b!4974633 m!6004472))

(assert (=> b!4974633 m!6004470))

(assert (=> b!4974633 m!6004472))

(declare-fun m!6004474 () Bool)

(assert (=> b!4974633 m!6004474))

(assert (=> b!4974632 m!6003506))

(assert (=> b!4973557 d!1602127))

(declare-fun b!4974637 () Bool)

(declare-fun e!3109060 () List!57590)

(assert (=> b!4974637 (= e!3109060 (++!12539 (list!18385 (left!41922 (right!42252 (c!848514 input!1342)))) (list!18385 (right!42252 (right!42252 (c!848514 input!1342))))))))

(declare-fun b!4974635 () Bool)

(declare-fun e!3109059 () List!57590)

(assert (=> b!4974635 (= e!3109059 e!3109060)))

(declare-fun c!848929 () Bool)

(assert (=> b!4974635 (= c!848929 ((_ is Leaf!25177) (right!42252 (c!848514 input!1342))))))

(declare-fun d!1602129 () Bool)

(declare-fun c!848928 () Bool)

(assert (=> d!1602129 (= c!848928 ((_ is Empty!15152) (right!42252 (c!848514 input!1342))))))

(assert (=> d!1602129 (= (list!18385 (right!42252 (c!848514 input!1342))) e!3109059)))

(declare-fun b!4974636 () Bool)

(assert (=> b!4974636 (= e!3109060 (list!18387 (xs!18478 (right!42252 (c!848514 input!1342)))))))

(declare-fun b!4974634 () Bool)

(assert (=> b!4974634 (= e!3109059 Nil!57466)))

(assert (= (and d!1602129 c!848928) b!4974634))

(assert (= (and d!1602129 (not c!848928)) b!4974635))

(assert (= (and b!4974635 c!848929) b!4974636))

(assert (= (and b!4974635 (not c!848929)) b!4974637))

(declare-fun m!6004476 () Bool)

(assert (=> b!4974637 m!6004476))

(declare-fun m!6004478 () Bool)

(assert (=> b!4974637 m!6004478))

(assert (=> b!4974637 m!6004476))

(assert (=> b!4974637 m!6004478))

(declare-fun m!6004480 () Bool)

(assert (=> b!4974637 m!6004480))

(declare-fun m!6004482 () Bool)

(assert (=> b!4974636 m!6004482))

(assert (=> b!4973557 d!1602129))

(declare-fun d!1602131 () Bool)

(declare-fun c!848930 () Bool)

(assert (=> d!1602131 (= c!848930 ((_ is Node!15152) (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))))))

(declare-fun e!3109061 () Bool)

(assert (=> d!1602131 (= (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))) e!3109061)))

(declare-fun b!4974638 () Bool)

(assert (=> b!4974638 (= e!3109061 (inv!75128 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))))))

(declare-fun b!4974639 () Bool)

(declare-fun e!3109062 () Bool)

(assert (=> b!4974639 (= e!3109061 e!3109062)))

(declare-fun res!2123603 () Bool)

(assert (=> b!4974639 (= res!2123603 (not ((_ is Leaf!25177) (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))))))

(assert (=> b!4974639 (=> res!2123603 e!3109062)))

(declare-fun b!4974640 () Bool)

(assert (=> b!4974640 (= e!3109062 (inv!75129 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))))))

(assert (= (and d!1602131 c!848930) b!4974638))

(assert (= (and d!1602131 (not c!848930)) b!4974639))

(assert (= (and b!4974639 (not res!2123603)) b!4974640))

(declare-fun m!6004484 () Bool)

(assert (=> b!4974638 m!6004484))

(declare-fun m!6004486 () Bool)

(assert (=> b!4974640 m!6004486))

(assert (=> b!4973861 d!1602131))

(assert (=> b!4973338 d!1601701))

(declare-fun d!1602133 () Bool)

(assert (=> d!1602133 (= (apply!13911 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040)))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054040))))) (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054040))))))))

(declare-fun b_lambda!197429 () Bool)

(assert (=> (not b_lambda!197429) (not d!1602133)))

(declare-fun t!369388 () Bool)

(declare-fun tb!261319 () Bool)

(assert (=> (and b!4972699 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040)))))) t!369388) tb!261319))

(declare-fun result!326510 () Bool)

(assert (=> tb!261319 (= result!326510 (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040))))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054040)))))))))

(declare-fun m!6004488 () Bool)

(assert (=> tb!261319 m!6004488))

(assert (=> d!1602133 t!369388))

(declare-fun b_and!349071 () Bool)

(assert (= b_and!349047 (and (=> t!369388 result!326510) b_and!349071)))

(declare-fun t!369390 () Bool)

(declare-fun tb!261321 () Bool)

(assert (=> (and b!4973009 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040)))))) t!369390) tb!261321))

(declare-fun result!326512 () Bool)

(assert (= result!326512 result!326510))

(assert (=> d!1602133 t!369390))

(declare-fun b_and!349073 () Bool)

(assert (= b_and!349049 (and (=> t!369390 result!326512) b_and!349073)))

(declare-fun tb!261323 () Bool)

(declare-fun t!369392 () Bool)

(assert (=> (and b!4973824 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040)))))) t!369392) tb!261323))

(declare-fun result!326514 () Bool)

(assert (= result!326514 result!326510))

(assert (=> d!1602133 t!369392))

(declare-fun b_and!349075 () Bool)

(assert (= b_and!349051 (and (=> t!369392 result!326514) b_and!349075)))

(assert (=> d!1602133 m!6002024))

(declare-fun m!6004490 () Bool)

(assert (=> d!1602133 m!6004490))

(assert (=> b!4973338 d!1602133))

(declare-fun d!1602135 () Bool)

(assert (=> d!1602135 (= (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054040)))) (fromListB!2737 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054040)))))))

(declare-fun bs!1183818 () Bool)

(assert (= bs!1183818 d!1602135))

(declare-fun m!6004492 () Bool)

(assert (=> bs!1183818 m!6004492))

(assert (=> b!4973338 d!1602135))

(declare-fun b!4974641 () Bool)

(declare-fun e!3109065 () Bool)

(assert (=> b!4974641 (= e!3109065 (= (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254)))) (c!848513 (regex!8400 (h!63915 (t!369197 rulesArg!259))))))))

(declare-fun b!4974642 () Bool)

(declare-fun e!3109066 () Bool)

(assert (=> b!4974642 (= e!3109066 (matchR!6643 (derivativeStep!3929 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254))))) (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254))))))))

(declare-fun b!4974643 () Bool)

(declare-fun e!3109068 () Bool)

(assert (=> b!4974643 (= e!3109068 (not (= (head!10675 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254)))) (c!848513 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))))))

(declare-fun b!4974644 () Bool)

(declare-fun e!3109067 () Bool)

(assert (=> b!4974644 (= e!3109067 e!3109068)))

(declare-fun res!2123611 () Bool)

(assert (=> b!4974644 (=> res!2123611 e!3109068)))

(declare-fun call!346999 () Bool)

(assert (=> b!4974644 (= res!2123611 call!346999)))

(declare-fun b!4974646 () Bool)

(declare-fun e!3109069 () Bool)

(declare-fun lt!2054740 () Bool)

(assert (=> b!4974646 (= e!3109069 (= lt!2054740 call!346999))))

(declare-fun b!4974647 () Bool)

(declare-fun res!2123610 () Bool)

(assert (=> b!4974647 (=> (not res!2123610) (not e!3109065))))

(assert (=> b!4974647 (= res!2123610 (isEmpty!30977 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254))))))))

(declare-fun b!4974648 () Bool)

(declare-fun res!2123607 () Bool)

(assert (=> b!4974648 (=> res!2123607 e!3109068)))

(assert (=> b!4974648 (= res!2123607 (not (isEmpty!30977 (tail!9808 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254)))))))))

(declare-fun b!4974649 () Bool)

(declare-fun res!2123608 () Bool)

(declare-fun e!3109070 () Bool)

(assert (=> b!4974649 (=> res!2123608 e!3109070)))

(assert (=> b!4974649 (= res!2123608 e!3109065)))

(declare-fun res!2123604 () Bool)

(assert (=> b!4974649 (=> (not res!2123604) (not e!3109065))))

(assert (=> b!4974649 (= res!2123604 lt!2054740)))

(declare-fun b!4974650 () Bool)

(declare-fun res!2123605 () Bool)

(assert (=> b!4974650 (=> res!2123605 e!3109070)))

(assert (=> b!4974650 (= res!2123605 (not ((_ is ElementMatch!13633) (regex!8400 (h!63915 (t!369197 rulesArg!259))))))))

(declare-fun e!3109064 () Bool)

(assert (=> b!4974650 (= e!3109064 e!3109070)))

(declare-fun b!4974651 () Bool)

(assert (=> b!4974651 (= e!3109066 (nullable!4627 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))))

(declare-fun d!1602137 () Bool)

(assert (=> d!1602137 e!3109069))

(declare-fun c!848931 () Bool)

(assert (=> d!1602137 (= c!848931 ((_ is EmptyExpr!13633) (regex!8400 (h!63915 (t!369197 rulesArg!259)))))))

(assert (=> d!1602137 (= lt!2054740 e!3109066)))

(declare-fun c!848932 () Bool)

(assert (=> d!1602137 (= c!848932 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254)))))))

(assert (=> d!1602137 (validRegex!5976 (regex!8400 (h!63915 (t!369197 rulesArg!259))))))

(assert (=> d!1602137 (= (matchR!6643 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254)))) lt!2054740)))

(declare-fun b!4974645 () Bool)

(assert (=> b!4974645 (= e!3109069 e!3109064)))

(declare-fun c!848933 () Bool)

(assert (=> b!4974645 (= c!848933 ((_ is EmptyLang!13633) (regex!8400 (h!63915 (t!369197 rulesArg!259)))))))

(declare-fun b!4974652 () Bool)

(assert (=> b!4974652 (= e!3109070 e!3109067)))

(declare-fun res!2123606 () Bool)

(assert (=> b!4974652 (=> (not res!2123606) (not e!3109067))))

(assert (=> b!4974652 (= res!2123606 (not lt!2054740))))

(declare-fun b!4974653 () Bool)

(assert (=> b!4974653 (= e!3109064 (not lt!2054740))))

(declare-fun b!4974654 () Bool)

(declare-fun res!2123609 () Bool)

(assert (=> b!4974654 (=> (not res!2123609) (not e!3109065))))

(assert (=> b!4974654 (= res!2123609 (not call!346999))))

(declare-fun bm!346994 () Bool)

(assert (=> bm!346994 (= call!346999 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2054254 lt!2054254 (size!38097 lt!2054254)))))))

(assert (= (and d!1602137 c!848932) b!4974651))

(assert (= (and d!1602137 (not c!848932)) b!4974642))

(assert (= (and d!1602137 c!848931) b!4974646))

(assert (= (and d!1602137 (not c!848931)) b!4974645))

(assert (= (and b!4974645 c!848933) b!4974653))

(assert (= (and b!4974645 (not c!848933)) b!4974650))

(assert (= (and b!4974650 (not res!2123605)) b!4974649))

(assert (= (and b!4974649 res!2123604) b!4974654))

(assert (= (and b!4974654 res!2123609) b!4974647))

(assert (= (and b!4974647 res!2123610) b!4974641))

(assert (= (and b!4974649 (not res!2123608)) b!4974652))

(assert (= (and b!4974652 res!2123606) b!4974644))

(assert (= (and b!4974644 (not res!2123611)) b!4974648))

(assert (= (and b!4974648 (not res!2123607)) b!4974643))

(assert (= (or b!4974646 b!4974644 b!4974654) bm!346994))

(assert (=> b!4974651 m!6003054))

(declare-fun m!6004494 () Bool)

(assert (=> b!4974647 m!6004494))

(assert (=> b!4974647 m!6004494))

(declare-fun m!6004496 () Bool)

(assert (=> b!4974647 m!6004496))

(declare-fun m!6004498 () Bool)

(assert (=> b!4974643 m!6004498))

(assert (=> b!4974642 m!6004498))

(assert (=> b!4974642 m!6004498))

(declare-fun m!6004500 () Bool)

(assert (=> b!4974642 m!6004500))

(assert (=> b!4974642 m!6004494))

(assert (=> b!4974642 m!6004500))

(assert (=> b!4974642 m!6004494))

(declare-fun m!6004502 () Bool)

(assert (=> b!4974642 m!6004502))

(assert (=> d!1602137 m!6002730))

(assert (=> d!1602137 m!6003032))

(assert (=> b!4974641 m!6004498))

(assert (=> bm!346994 m!6002730))

(assert (=> b!4974648 m!6004494))

(assert (=> b!4974648 m!6004494))

(assert (=> b!4974648 m!6004496))

(assert (=> b!4973795 d!1602137))

(assert (=> b!4973795 d!1601627))

(assert (=> b!4973795 d!1601509))

(assert (=> b!4973795 d!1601633))

(declare-fun d!1602139 () Bool)

(assert (=> d!1602139 (= (head!10675 lt!2053809) (h!63914 lt!2053809))))

(assert (=> b!4973547 d!1602139))

(declare-fun d!1602141 () Bool)

(assert (=> d!1602141 (= (head!10675 lt!2053811) (h!63914 lt!2053811))))

(assert (=> b!4973547 d!1602141))

(declare-fun d!1602143 () Bool)

(declare-fun lt!2054743 () Int)

(assert (=> d!1602143 (>= lt!2054743 0)))

(declare-fun e!3109081 () Int)

(assert (=> d!1602143 (= lt!2054743 e!3109081)))

(declare-fun c!848944 () Bool)

(assert (=> d!1602143 (= c!848944 ((_ is Nil!57466) (list!18383 (_1!34416 lt!2053837))))))

(assert (=> d!1602143 (= (size!38097 (list!18383 (_1!34416 lt!2053837))) lt!2054743)))

(declare-fun b!4974675 () Bool)

(assert (=> b!4974675 (= e!3109081 0)))

(declare-fun b!4974676 () Bool)

(assert (=> b!4974676 (= e!3109081 (+ 1 (size!38097 (t!369196 (list!18383 (_1!34416 lt!2053837))))))))

(assert (= (and d!1602143 c!848944) b!4974675))

(assert (= (and d!1602143 (not c!848944)) b!4974676))

(declare-fun m!6004504 () Bool)

(assert (=> b!4974676 m!6004504))

(assert (=> d!1601537 d!1602143))

(assert (=> d!1601537 d!1601535))

(declare-fun d!1602145 () Bool)

(declare-fun lt!2054746 () Int)

(assert (=> d!1602145 (= lt!2054746 (size!38097 (list!18385 (c!848514 (_1!34416 lt!2053837)))))))

(assert (=> d!1602145 (= lt!2054746 (ite ((_ is Empty!15152) (c!848514 (_1!34416 lt!2053837))) 0 (ite ((_ is Leaf!25177) (c!848514 (_1!34416 lt!2053837))) (csize!30535 (c!848514 (_1!34416 lt!2053837))) (csize!30534 (c!848514 (_1!34416 lt!2053837))))))))

(assert (=> d!1602145 (= (size!38100 (c!848514 (_1!34416 lt!2053837))) lt!2054746)))

(declare-fun bs!1183819 () Bool)

(assert (= bs!1183819 d!1602145))

(assert (=> bs!1183819 m!6002772))

(assert (=> bs!1183819 m!6002772))

(declare-fun m!6004506 () Bool)

(assert (=> bs!1183819 m!6004506))

(assert (=> d!1601537 d!1602145))

(declare-fun d!1602147 () Bool)

(declare-fun lt!2054747 () Bool)

(assert (=> d!1602147 (= lt!2054747 (isEmpty!30977 (list!18385 (right!42252 (c!848514 totalInput!464)))))))

(assert (=> d!1602147 (= lt!2054747 (= (size!38100 (right!42252 (c!848514 totalInput!464))) 0))))

(assert (=> d!1602147 (= (isEmpty!30980 (right!42252 (c!848514 totalInput!464))) lt!2054747)))

(declare-fun bs!1183820 () Bool)

(assert (= bs!1183820 d!1602147))

(assert (=> bs!1183820 m!6002352))

(assert (=> bs!1183820 m!6002352))

(declare-fun m!6004508 () Bool)

(assert (=> bs!1183820 m!6004508))

(assert (=> bs!1183820 m!6002588))

(assert (=> b!4973542 d!1602147))

(assert (=> b!4973207 d!1601617))

(declare-fun d!1602149 () Bool)

(declare-fun lt!2054748 () Int)

(assert (=> d!1602149 (>= lt!2054748 0)))

(declare-fun e!3109082 () Int)

(assert (=> d!1602149 (= lt!2054748 e!3109082)))

(declare-fun c!848945 () Bool)

(assert (=> d!1602149 (= c!848945 ((_ is Nil!57466) (originalCharacters!8679 (_1!34412 (get!19957 lt!2054011)))))))

(assert (=> d!1602149 (= (size!38097 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054011)))) lt!2054748)))

(declare-fun b!4974677 () Bool)

(assert (=> b!4974677 (= e!3109082 0)))

(declare-fun b!4974678 () Bool)

(assert (=> b!4974678 (= e!3109082 (+ 1 (size!38097 (t!369196 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054011)))))))))

(assert (= (and d!1602149 c!848945) b!4974677))

(assert (= (and d!1602149 (not c!848945)) b!4974678))

(declare-fun m!6004510 () Bool)

(assert (=> b!4974678 m!6004510))

(assert (=> b!4973207 d!1602149))

(declare-fun b!4974679 () Bool)

(declare-fun res!2123612 () Bool)

(declare-fun e!3109085 () Bool)

(assert (=> b!4974679 (=> res!2123612 e!3109085)))

(assert (=> b!4974679 (= res!2123612 (not ((_ is IntegerValue!26132) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))))

(declare-fun e!3109084 () Bool)

(assert (=> b!4974679 (= e!3109084 e!3109085)))

(declare-fun b!4974680 () Bool)

(assert (=> b!4974680 (= e!3109084 (inv!17 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))))

(declare-fun b!4974681 () Bool)

(assert (=> b!4974681 (= e!3109085 (inv!15 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))))

(declare-fun b!4974682 () Bool)

(declare-fun e!3109083 () Bool)

(assert (=> b!4974682 (= e!3109083 e!3109084)))

(declare-fun c!848947 () Bool)

(assert (=> b!4974682 (= c!848947 ((_ is IntegerValue!26131) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))))

(declare-fun d!1602151 () Bool)

(declare-fun c!848946 () Bool)

(assert (=> d!1602151 (= c!848946 ((_ is IntegerValue!26130) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))))

(assert (=> d!1602151 (= (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))) e!3109083)))

(declare-fun b!4974683 () Bool)

(assert (=> b!4974683 (= e!3109083 (inv!16 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))))

(assert (= (and d!1602151 c!848946) b!4974683))

(assert (= (and d!1602151 (not c!848946)) b!4974682))

(assert (= (and b!4974682 c!848947) b!4974680))

(assert (= (and b!4974682 (not c!848947)) b!4974679))

(assert (= (and b!4974679 (not res!2123612)) b!4974681))

(declare-fun m!6004512 () Bool)

(assert (=> b!4974680 m!6004512))

(declare-fun m!6004514 () Bool)

(assert (=> b!4974681 m!6004514))

(declare-fun m!6004516 () Bool)

(assert (=> b!4974683 m!6004516))

(assert (=> tb!261187 d!1602151))

(declare-fun b!4974684 () Bool)

(declare-fun e!3109089 () Bool)

(declare-fun lt!2054753 () Option!14463)

(assert (=> b!4974684 (= e!3109089 (= (size!38094 (_1!34412 (get!19957 lt!2054753))) (size!38097 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054753))))))))

(declare-fun b!4974685 () Bool)

(declare-fun res!2123617 () Bool)

(assert (=> b!4974685 (=> (not res!2123617) (not e!3109089))))

(assert (=> b!4974685 (= res!2123617 (= (rule!11662 (_1!34412 (get!19957 lt!2054753))) (h!63915 (t!369197 rulesArg!259))))))

(declare-fun b!4974686 () Bool)

(declare-fun res!2123616 () Bool)

(assert (=> b!4974686 (=> (not res!2123616) (not e!3109089))))

(assert (=> b!4974686 (= res!2123616 (< (size!38097 (_2!34412 (get!19957 lt!2054753))) (size!38097 lt!2053676)))))

(declare-fun b!4974687 () Bool)

(declare-fun e!3109086 () Option!14463)

(declare-fun lt!2054752 () tuple2!62224)

(assert (=> b!4974687 (= e!3109086 (Some!14462 (tuple2!62219 (Token!15297 (apply!13911 (transformation!8400 (h!63915 (t!369197 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054752))) (h!63915 (t!369197 rulesArg!259)) (size!38098 (seqFromList!6043 (_1!34415 lt!2054752))) (_1!34415 lt!2054752)) (_2!34415 lt!2054752))))))

(declare-fun lt!2054751 () Unit!148431)

(assert (=> b!4974687 (= lt!2054751 (longestMatchIsAcceptedByMatchOrIsEmpty!1823 (regex!8400 (h!63915 (t!369197 rulesArg!259))) lt!2053676))))

(declare-fun res!2123614 () Bool)

(assert (=> b!4974687 (= res!2123614 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))))))

(declare-fun e!3109087 () Bool)

(assert (=> b!4974687 (=> res!2123614 e!3109087)))

(assert (=> b!4974687 e!3109087))

(declare-fun lt!2054750 () Unit!148431)

(assert (=> b!4974687 (= lt!2054750 lt!2054751)))

(declare-fun lt!2054749 () Unit!148431)

(assert (=> b!4974687 (= lt!2054749 (lemmaSemiInverse!2609 (transformation!8400 (h!63915 (t!369197 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054752))))))

(declare-fun b!4974688 () Bool)

(declare-fun res!2123618 () Bool)

(assert (=> b!4974688 (=> (not res!2123618) (not e!3109089))))

(assert (=> b!4974688 (= res!2123618 (= (++!12539 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054753)))) (_2!34412 (get!19957 lt!2054753))) lt!2053676))))

(declare-fun b!4974689 () Bool)

(assert (=> b!4974689 (= e!3109086 None!14462)))

(declare-fun d!1602153 () Bool)

(declare-fun e!3109088 () Bool)

(assert (=> d!1602153 e!3109088))

(declare-fun res!2123615 () Bool)

(assert (=> d!1602153 (=> res!2123615 e!3109088)))

(assert (=> d!1602153 (= res!2123615 (isEmpty!30975 lt!2054753))))

(assert (=> d!1602153 (= lt!2054753 e!3109086)))

(declare-fun c!848948 () Bool)

(assert (=> d!1602153 (= c!848948 (isEmpty!30977 (_1!34415 lt!2054752)))))

(assert (=> d!1602153 (= lt!2054752 (findLongestMatch!1704 (regex!8400 (h!63915 (t!369197 rulesArg!259))) lt!2053676))))

(assert (=> d!1602153 (ruleValid!3809 thiss!15247 (h!63915 (t!369197 rulesArg!259)))))

(assert (=> d!1602153 (= (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 rulesArg!259)) lt!2053676) lt!2054753)))

(declare-fun b!4974690 () Bool)

(assert (=> b!4974690 (= e!3109087 (matchR!6643 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) lt!2053676 lt!2053676 (size!38097 lt!2053676)))))))

(declare-fun b!4974691 () Bool)

(assert (=> b!4974691 (= e!3109088 e!3109089)))

(declare-fun res!2123613 () Bool)

(assert (=> b!4974691 (=> (not res!2123613) (not e!3109089))))

(assert (=> b!4974691 (= res!2123613 (matchR!6643 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054753))))))))

(declare-fun b!4974692 () Bool)

(declare-fun res!2123619 () Bool)

(assert (=> b!4974692 (=> (not res!2123619) (not e!3109089))))

(assert (=> b!4974692 (= res!2123619 (= (value!268840 (_1!34412 (get!19957 lt!2054753))) (apply!13911 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054753)))) (seqFromList!6043 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054753)))))))))

(assert (= (and d!1602153 c!848948) b!4974689))

(assert (= (and d!1602153 (not c!848948)) b!4974687))

(assert (= (and b!4974687 (not res!2123614)) b!4974690))

(assert (= (and d!1602153 (not res!2123615)) b!4974691))

(assert (= (and b!4974691 res!2123613) b!4974688))

(assert (= (and b!4974688 res!2123618) b!4974686))

(assert (= (and b!4974686 res!2123616) b!4974685))

(assert (= (and b!4974685 res!2123617) b!4974692))

(assert (= (and b!4974692 res!2123619) b!4974684))

(declare-fun m!6004526 () Bool)

(assert (=> b!4974692 m!6004526))

(declare-fun m!6004528 () Bool)

(assert (=> b!4974692 m!6004528))

(assert (=> b!4974692 m!6004528))

(declare-fun m!6004532 () Bool)

(assert (=> b!4974692 m!6004532))

(declare-fun m!6004534 () Bool)

(assert (=> d!1602153 m!6004534))

(declare-fun m!6004536 () Bool)

(assert (=> d!1602153 m!6004536))

(declare-fun m!6004538 () Bool)

(assert (=> d!1602153 m!6004538))

(assert (=> d!1602153 m!6002120))

(assert (=> b!4974686 m!6004526))

(declare-fun m!6004540 () Bool)

(assert (=> b!4974686 m!6004540))

(assert (=> b!4974686 m!6001604))

(assert (=> b!4974684 m!6004526))

(declare-fun m!6004542 () Bool)

(assert (=> b!4974684 m!6004542))

(assert (=> b!4974688 m!6004526))

(declare-fun m!6004544 () Bool)

(assert (=> b!4974688 m!6004544))

(assert (=> b!4974688 m!6004544))

(declare-fun m!6004550 () Bool)

(assert (=> b!4974688 m!6004550))

(assert (=> b!4974688 m!6004550))

(declare-fun m!6004552 () Bool)

(assert (=> b!4974688 m!6004552))

(assert (=> b!4974685 m!6004526))

(assert (=> b!4974691 m!6004526))

(assert (=> b!4974691 m!6004544))

(assert (=> b!4974691 m!6004544))

(assert (=> b!4974691 m!6004550))

(assert (=> b!4974691 m!6004550))

(declare-fun m!6004554 () Bool)

(assert (=> b!4974691 m!6004554))

(assert (=> b!4974687 m!6001546))

(assert (=> b!4974687 m!6001604))

(assert (=> b!4974687 m!6004014))

(declare-fun m!6004556 () Bool)

(assert (=> b!4974687 m!6004556))

(declare-fun m!6004558 () Bool)

(assert (=> b!4974687 m!6004558))

(assert (=> b!4974687 m!6004556))

(declare-fun m!6004560 () Bool)

(assert (=> b!4974687 m!6004560))

(assert (=> b!4974687 m!6001546))

(assert (=> b!4974687 m!6004022))

(assert (=> b!4974687 m!6004556))

(declare-fun m!6004562 () Bool)

(assert (=> b!4974687 m!6004562))

(assert (=> b!4974687 m!6004556))

(assert (=> b!4974687 m!6001604))

(assert (=> b!4974687 m!6004012))

(assert (=> b!4974690 m!6001546))

(assert (=> b!4974690 m!6001604))

(assert (=> b!4974690 m!6001546))

(assert (=> b!4974690 m!6001604))

(assert (=> b!4974690 m!6004014))

(assert (=> b!4974690 m!6004026))

(assert (=> bm!346861 d!1602153))

(declare-fun b!4974716 () Bool)

(declare-fun res!2123629 () Bool)

(declare-fun e!3109104 () Bool)

(assert (=> b!4974716 (=> (not res!2123629) (not e!3109104))))

(assert (=> b!4974716 (= res!2123629 (not (isEmpty!30980 (left!41922 (left!41922 (c!848514 input!1342))))))))

(declare-fun b!4974717 () Bool)

(declare-fun res!2123628 () Bool)

(assert (=> b!4974717 (=> (not res!2123628) (not e!3109104))))

(assert (=> b!4974717 (= res!2123628 (isBalanced!4209 (right!42252 (left!41922 (c!848514 input!1342)))))))

(declare-fun d!1602163 () Bool)

(declare-fun res!2123627 () Bool)

(declare-fun e!3109105 () Bool)

(assert (=> d!1602163 (=> res!2123627 e!3109105)))

(assert (=> d!1602163 (= res!2123627 (not ((_ is Node!15152) (left!41922 (c!848514 input!1342)))))))

(assert (=> d!1602163 (= (isBalanced!4209 (left!41922 (c!848514 input!1342))) e!3109105)))

(declare-fun b!4974718 () Bool)

(assert (=> b!4974718 (= e!3109104 (not (isEmpty!30980 (right!42252 (left!41922 (c!848514 input!1342))))))))

(declare-fun b!4974719 () Bool)

(assert (=> b!4974719 (= e!3109105 e!3109104)))

(declare-fun res!2123630 () Bool)

(assert (=> b!4974719 (=> (not res!2123630) (not e!3109104))))

(assert (=> b!4974719 (= res!2123630 (<= (- 1) (- (height!2020 (left!41922 (left!41922 (c!848514 input!1342)))) (height!2020 (right!42252 (left!41922 (c!848514 input!1342)))))))))

(declare-fun b!4974720 () Bool)

(declare-fun res!2123632 () Bool)

(assert (=> b!4974720 (=> (not res!2123632) (not e!3109104))))

(assert (=> b!4974720 (= res!2123632 (isBalanced!4209 (left!41922 (left!41922 (c!848514 input!1342)))))))

(declare-fun b!4974721 () Bool)

(declare-fun res!2123631 () Bool)

(assert (=> b!4974721 (=> (not res!2123631) (not e!3109104))))

(assert (=> b!4974721 (= res!2123631 (<= (- (height!2020 (left!41922 (left!41922 (c!848514 input!1342)))) (height!2020 (right!42252 (left!41922 (c!848514 input!1342))))) 1))))

(assert (= (and d!1602163 (not res!2123627)) b!4974719))

(assert (= (and b!4974719 res!2123630) b!4974721))

(assert (= (and b!4974721 res!2123631) b!4974720))

(assert (= (and b!4974720 res!2123632) b!4974717))

(assert (= (and b!4974717 res!2123628) b!4974716))

(assert (= (and b!4974716 res!2123629) b!4974718))

(declare-fun m!6004570 () Bool)

(assert (=> b!4974717 m!6004570))

(declare-fun m!6004572 () Bool)

(assert (=> b!4974720 m!6004572))

(declare-fun m!6004574 () Bool)

(assert (=> b!4974721 m!6004574))

(declare-fun m!6004576 () Bool)

(assert (=> b!4974721 m!6004576))

(declare-fun m!6004578 () Bool)

(assert (=> b!4974718 m!6004578))

(declare-fun m!6004580 () Bool)

(assert (=> b!4974716 m!6004580))

(assert (=> b!4974719 m!6004574))

(assert (=> b!4974719 m!6004576))

(assert (=> b!4973570 d!1602163))

(assert (=> b!4973571 d!1601871))

(assert (=> b!4973571 d!1601873))

(declare-fun d!1602167 () Bool)

(assert (=> d!1602167 (= (inv!75130 (xs!18478 (left!41922 (c!848514 totalInput!464)))) (<= (size!38097 (innerList!15240 (xs!18478 (left!41922 (c!848514 totalInput!464))))) 2147483647))))

(declare-fun bs!1183821 () Bool)

(assert (= bs!1183821 d!1602167))

(declare-fun m!6004584 () Bool)

(assert (=> bs!1183821 m!6004584))

(assert (=> b!4973850 d!1602167))

(declare-fun d!1602169 () Bool)

(declare-fun lt!2054756 () Int)

(assert (=> d!1602169 (>= lt!2054756 0)))

(declare-fun e!3109107 () Int)

(assert (=> d!1602169 (= lt!2054756 e!3109107)))

(declare-fun c!848957 () Bool)

(assert (=> d!1602169 (= c!848957 ((_ is Nil!57466) (tail!9808 lt!2053676)))))

(assert (=> d!1602169 (= (size!38097 (tail!9808 lt!2053676)) lt!2054756)))

(declare-fun b!4974722 () Bool)

(assert (=> b!4974722 (= e!3109107 0)))

(declare-fun b!4974723 () Bool)

(assert (=> b!4974723 (= e!3109107 (+ 1 (size!38097 (t!369196 (tail!9808 lt!2053676)))))))

(assert (= (and d!1602169 c!848957) b!4974722))

(assert (= (and d!1602169 (not c!848957)) b!4974723))

(declare-fun m!6004586 () Bool)

(assert (=> b!4974723 m!6004586))

(assert (=> b!4973563 d!1602169))

(declare-fun d!1602171 () Bool)

(assert (=> d!1602171 (= (inv!75130 (xs!18478 (right!42252 (c!848514 input!1342)))) (<= (size!38097 (innerList!15240 (xs!18478 (right!42252 (c!848514 input!1342))))) 2147483647))))

(declare-fun bs!1183822 () Bool)

(assert (= bs!1183822 d!1602171))

(declare-fun m!6004590 () Bool)

(assert (=> bs!1183822 m!6004590))

(assert (=> b!4973859 d!1602171))

(declare-fun bm!347010 () Bool)

(declare-fun call!347022 () List!57590)

(assert (=> bm!347010 (= call!347022 (tail!9808 call!346892))))

(declare-fun b!4974724 () Bool)

(declare-fun e!3109110 () tuple2!62224)

(assert (=> b!4974724 (= e!3109110 (tuple2!62225 Nil!57466 lt!2053833))))

(declare-fun b!4974725 () Bool)

(declare-fun e!3109113 () tuple2!62224)

(declare-fun e!3109108 () tuple2!62224)

(assert (=> b!4974725 (= e!3109113 e!3109108)))

(declare-fun lt!2054761 () tuple2!62224)

(declare-fun call!347018 () tuple2!62224)

(assert (=> b!4974725 (= lt!2054761 call!347018)))

(declare-fun c!848962 () Bool)

(assert (=> b!4974725 (= c!848962 (isEmpty!30977 (_1!34415 lt!2054761)))))

(declare-fun b!4974726 () Bool)

(declare-fun e!3109111 () Bool)

(declare-fun lt!2054762 () tuple2!62224)

(assert (=> b!4974726 (= e!3109111 (>= (size!38097 (_1!34415 lt!2054762)) (size!38097 lt!2054245)))))

(declare-fun bm!347011 () Bool)

(declare-fun call!347016 () Unit!148431)

(assert (=> bm!347011 (= call!347016 (lemmaIsPrefixSameLengthThenSameList!1215 lt!2053833 lt!2054245 lt!2053833))))

(declare-fun b!4974727 () Bool)

(declare-fun e!3109114 () Bool)

(assert (=> b!4974727 (= e!3109114 e!3109111)))

(declare-fun res!2123634 () Bool)

(assert (=> b!4974727 (=> res!2123634 e!3109111)))

(assert (=> b!4974727 (= res!2123634 (isEmpty!30977 (_1!34415 lt!2054762)))))

(declare-fun b!4974728 () Bool)

(declare-fun c!848961 () Bool)

(declare-fun call!347017 () Bool)

(assert (=> b!4974728 (= c!848961 call!347017)))

(declare-fun lt!2054767 () Unit!148431)

(declare-fun lt!2054758 () Unit!148431)

(assert (=> b!4974728 (= lt!2054767 lt!2054758)))

(assert (=> b!4974728 (= lt!2053833 lt!2054245)))

(assert (=> b!4974728 (= lt!2054758 call!347016)))

(declare-fun lt!2054779 () Unit!148431)

(declare-fun lt!2054778 () Unit!148431)

(assert (=> b!4974728 (= lt!2054779 lt!2054778)))

(declare-fun call!347019 () Bool)

(assert (=> b!4974728 call!347019))

(declare-fun call!347021 () Unit!148431)

(assert (=> b!4974728 (= lt!2054778 call!347021)))

(declare-fun e!3109115 () tuple2!62224)

(assert (=> b!4974728 (= e!3109115 e!3109110)))

(declare-fun b!4974729 () Bool)

(declare-fun e!3109109 () tuple2!62224)

(assert (=> b!4974729 (= e!3109109 (tuple2!62225 Nil!57466 lt!2053833))))

(declare-fun b!4974730 () Bool)

(declare-fun e!3109112 () Unit!148431)

(declare-fun Unit!148460 () Unit!148431)

(assert (=> b!4974730 (= e!3109112 Unit!148460)))

(declare-fun bm!347012 () Bool)

(declare-fun call!347020 () C!27516)

(assert (=> bm!347012 (= call!347020 (head!10675 call!346892))))

(declare-fun b!4974731 () Bool)

(assert (=> b!4974731 (= e!3109109 e!3109115)))

(declare-fun c!848958 () Bool)

(assert (=> b!4974731 (= c!848958 (= (+ (size!38097 Nil!57466) 1) (size!38097 lt!2053833)))))

(declare-fun b!4974732 () Bool)

(assert (=> b!4974732 (= e!3109108 (tuple2!62225 lt!2054245 call!346892))))

(declare-fun bm!347013 () Bool)

(assert (=> bm!347013 (= call!347017 (nullable!4627 call!346885))))

(declare-fun bm!347014 () Bool)

(assert (=> bm!347014 (= call!347021 (lemmaIsPrefixRefl!3575 lt!2053833 lt!2053833))))

(declare-fun bm!347015 () Bool)

(assert (=> bm!347015 (= call!347019 (isPrefix!5251 lt!2053833 lt!2053833))))

(declare-fun b!4974733 () Bool)

(declare-fun c!848963 () Bool)

(assert (=> b!4974733 (= c!848963 call!347017)))

(declare-fun lt!2054777 () Unit!148431)

(declare-fun lt!2054783 () Unit!148431)

(assert (=> b!4974733 (= lt!2054777 lt!2054783)))

(declare-fun lt!2054764 () C!27516)

(declare-fun lt!2054771 () List!57590)

(assert (=> b!4974733 (= (++!12539 (++!12539 lt!2054245 (Cons!57466 lt!2054764 Nil!57466)) lt!2054771) lt!2053833)))

(assert (=> b!4974733 (= lt!2054783 (lemmaMoveElementToOtherListKeepsConcatEq!1452 lt!2054245 lt!2054764 lt!2054771 lt!2053833))))

(assert (=> b!4974733 (= lt!2054771 (tail!9808 call!346892))))

(assert (=> b!4974733 (= lt!2054764 (head!10675 call!346892))))

(declare-fun lt!2054765 () Unit!148431)

(declare-fun lt!2054775 () Unit!148431)

(assert (=> b!4974733 (= lt!2054765 lt!2054775)))

(assert (=> b!4974733 (isPrefix!5251 (++!12539 lt!2054245 (Cons!57466 (head!10675 (getSuffix!3095 lt!2053833 lt!2054245)) Nil!57466)) lt!2053833)))

(assert (=> b!4974733 (= lt!2054775 (lemmaAddHeadSuffixToPrefixStillPrefix!842 lt!2054245 lt!2053833))))

(declare-fun lt!2054772 () Unit!148431)

(declare-fun lt!2054759 () Unit!148431)

(assert (=> b!4974733 (= lt!2054772 lt!2054759)))

(assert (=> b!4974733 (= lt!2054759 (lemmaAddHeadSuffixToPrefixStillPrefix!842 lt!2054245 lt!2053833))))

(declare-fun lt!2054781 () List!57590)

(assert (=> b!4974733 (= lt!2054781 (++!12539 lt!2054245 (Cons!57466 (head!10675 call!346892) Nil!57466)))))

(declare-fun lt!2054782 () Unit!148431)

(assert (=> b!4974733 (= lt!2054782 e!3109112)))

(declare-fun c!848959 () Bool)

(assert (=> b!4974733 (= c!848959 (= (size!38097 lt!2054245) (size!38097 lt!2053833)))))

(declare-fun lt!2054774 () Unit!148431)

(declare-fun lt!2054770 () Unit!148431)

(assert (=> b!4974733 (= lt!2054774 lt!2054770)))

(assert (=> b!4974733 (<= (size!38097 lt!2054245) (size!38097 lt!2053833))))

(assert (=> b!4974733 (= lt!2054770 (lemmaIsPrefixThenSmallerEqSize!768 lt!2054245 lt!2053833))))

(assert (=> b!4974733 (= e!3109115 e!3109113)))

(declare-fun b!4974734 () Bool)

(assert (=> b!4974734 (= e!3109110 (tuple2!62225 lt!2054245 Nil!57466))))

(declare-fun b!4974736 () Bool)

(assert (=> b!4974736 (= e!3109113 call!347018)))

(declare-fun bm!347016 () Bool)

(declare-fun call!347015 () Regex!13633)

(assert (=> bm!347016 (= call!347015 (derivativeStep!3929 call!346885 call!347020))))

(declare-fun b!4974738 () Bool)

(assert (=> b!4974738 (= e!3109108 lt!2054761)))

(declare-fun d!1602175 () Bool)

(assert (=> d!1602175 e!3109114))

(declare-fun res!2123633 () Bool)

(assert (=> d!1602175 (=> (not res!2123633) (not e!3109114))))

(assert (=> d!1602175 (= res!2123633 (= (++!12539 (_1!34415 lt!2054762) (_2!34415 lt!2054762)) lt!2053833))))

(assert (=> d!1602175 (= lt!2054762 e!3109109)))

(declare-fun c!848960 () Bool)

(assert (=> d!1602175 (= c!848960 (lostCause!1139 call!346885))))

(declare-fun lt!2054780 () Unit!148431)

(declare-fun Unit!148461 () Unit!148431)

(assert (=> d!1602175 (= lt!2054780 Unit!148461)))

(assert (=> d!1602175 (= (getSuffix!3095 lt!2053833 lt!2054245) call!346892)))

(declare-fun lt!2054766 () Unit!148431)

(declare-fun lt!2054773 () Unit!148431)

(assert (=> d!1602175 (= lt!2054766 lt!2054773)))

(declare-fun lt!2054776 () List!57590)

(assert (=> d!1602175 (= call!346892 lt!2054776)))

(assert (=> d!1602175 (= lt!2054773 (lemmaSamePrefixThenSameSuffix!2507 lt!2054245 call!346892 lt!2054245 lt!2054776 lt!2053833))))

(assert (=> d!1602175 (= lt!2054776 (getSuffix!3095 lt!2053833 lt!2054245))))

(declare-fun lt!2054760 () Unit!148431)

(declare-fun lt!2054769 () Unit!148431)

(assert (=> d!1602175 (= lt!2054760 lt!2054769)))

(assert (=> d!1602175 (isPrefix!5251 lt!2054245 (++!12539 lt!2054245 call!346892))))

(assert (=> d!1602175 (= lt!2054769 (lemmaConcatTwoListThenFirstIsPrefix!3353 lt!2054245 call!346892))))

(assert (=> d!1602175 (validRegex!5976 call!346885)))

(assert (=> d!1602175 (= (findLongestMatchInner!1862 call!346885 lt!2054245 (+ (size!38097 Nil!57466) 1) call!346892 lt!2053833 (size!38097 lt!2053833)) lt!2054762)))

(declare-fun bm!347017 () Bool)

(assert (=> bm!347017 (= call!347018 (findLongestMatchInner!1862 call!347015 lt!2054781 (+ (size!38097 Nil!57466) 1 1) call!347022 lt!2053833 (size!38097 lt!2053833)))))

(declare-fun b!4974739 () Bool)

(declare-fun Unit!148462 () Unit!148431)

(assert (=> b!4974739 (= e!3109112 Unit!148462)))

(declare-fun lt!2054757 () Unit!148431)

(assert (=> b!4974739 (= lt!2054757 call!347021)))

(assert (=> b!4974739 call!347019))

(declare-fun lt!2054784 () Unit!148431)

(assert (=> b!4974739 (= lt!2054784 lt!2054757)))

(declare-fun lt!2054763 () Unit!148431)

(assert (=> b!4974739 (= lt!2054763 call!347016)))

(assert (=> b!4974739 (= lt!2053833 lt!2054245)))

(declare-fun lt!2054768 () Unit!148431)

(assert (=> b!4974739 (= lt!2054768 lt!2054763)))

(assert (=> b!4974739 false))

(assert (= (and d!1602175 c!848960) b!4974729))

(assert (= (and d!1602175 (not c!848960)) b!4974731))

(assert (= (and b!4974731 c!848958) b!4974728))

(assert (= (and b!4974731 (not c!848958)) b!4974733))

(assert (= (and b!4974728 c!848961) b!4974734))

(assert (= (and b!4974728 (not c!848961)) b!4974724))

(assert (= (and b!4974733 c!848959) b!4974739))

(assert (= (and b!4974733 (not c!848959)) b!4974730))

(assert (= (and b!4974733 c!848963) b!4974725))

(assert (= (and b!4974733 (not c!848963)) b!4974736))

(assert (= (and b!4974725 c!848962) b!4974732))

(assert (= (and b!4974725 (not c!848962)) b!4974738))

(assert (= (or b!4974725 b!4974736) bm!347012))

(assert (= (or b!4974725 b!4974736) bm!347010))

(assert (= (or b!4974725 b!4974736) bm!347016))

(assert (= (or b!4974725 b!4974736) bm!347017))

(assert (= (or b!4974728 b!4974739) bm!347014))

(assert (= (or b!4974728 b!4974739) bm!347011))

(assert (= (or b!4974728 b!4974733) bm!347013))

(assert (= (or b!4974728 b!4974739) bm!347015))

(assert (= (and d!1602175 res!2123633) b!4974727))

(assert (= (and b!4974727 (not res!2123634)) b!4974726))

(declare-fun m!6004604 () Bool)

(assert (=> bm!347010 m!6004604))

(declare-fun m!6004606 () Bool)

(assert (=> d!1602175 m!6004606))

(declare-fun m!6004608 () Bool)

(assert (=> d!1602175 m!6004608))

(declare-fun m!6004610 () Bool)

(assert (=> d!1602175 m!6004610))

(declare-fun m!6004612 () Bool)

(assert (=> d!1602175 m!6004612))

(declare-fun m!6004614 () Bool)

(assert (=> d!1602175 m!6004614))

(declare-fun m!6004616 () Bool)

(assert (=> d!1602175 m!6004616))

(declare-fun m!6004618 () Bool)

(assert (=> d!1602175 m!6004618))

(assert (=> d!1602175 m!6004608))

(declare-fun m!6004620 () Bool)

(assert (=> d!1602175 m!6004620))

(assert (=> bm!347017 m!6001548))

(declare-fun m!6004622 () Bool)

(assert (=> bm!347017 m!6004622))

(declare-fun m!6004624 () Bool)

(assert (=> bm!347012 m!6004624))

(declare-fun m!6004626 () Bool)

(assert (=> b!4974725 m!6004626))

(declare-fun m!6004628 () Bool)

(assert (=> bm!347011 m!6004628))

(declare-fun m!6004630 () Bool)

(assert (=> b!4974726 m!6004630))

(declare-fun m!6004632 () Bool)

(assert (=> b!4974726 m!6004632))

(assert (=> bm!347014 m!6002668))

(declare-fun m!6004634 () Bool)

(assert (=> bm!347013 m!6004634))

(declare-fun m!6004636 () Bool)

(assert (=> b!4974733 m!6004636))

(assert (=> b!4974733 m!6001548))

(assert (=> b!4974733 m!6004616))

(declare-fun m!6004638 () Bool)

(assert (=> b!4974733 m!6004638))

(declare-fun m!6004640 () Bool)

(assert (=> b!4974733 m!6004640))

(declare-fun m!6004642 () Bool)

(assert (=> b!4974733 m!6004642))

(assert (=> b!4974733 m!6004640))

(declare-fun m!6004644 () Bool)

(assert (=> b!4974733 m!6004644))

(assert (=> b!4974733 m!6004624))

(assert (=> b!4974733 m!6004638))

(declare-fun m!6004646 () Bool)

(assert (=> b!4974733 m!6004646))

(assert (=> b!4974733 m!6004604))

(assert (=> b!4974733 m!6004632))

(assert (=> b!4974733 m!6004616))

(declare-fun m!6004648 () Bool)

(assert (=> b!4974733 m!6004648))

(declare-fun m!6004650 () Bool)

(assert (=> b!4974733 m!6004650))

(declare-fun m!6004652 () Bool)

(assert (=> b!4974733 m!6004652))

(assert (=> bm!347015 m!6002688))

(declare-fun m!6004654 () Bool)

(assert (=> bm!347016 m!6004654))

(declare-fun m!6004656 () Bool)

(assert (=> b!4974727 m!6004656))

(assert (=> bm!346887 d!1602175))

(declare-fun d!1602191 () Bool)

(declare-fun lt!2054795 () Option!14463)

(assert (=> d!1602191 (= lt!2054795 (maxPrefix!4667 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342)))))

(declare-fun e!3109121 () Option!14463)

(assert (=> d!1602191 (= lt!2054795 e!3109121)))

(declare-fun c!848965 () Bool)

(assert (=> d!1602191 (= c!848965 (and ((_ is Cons!57467) (t!369197 (t!369197 rulesArg!259))) ((_ is Nil!57467) (t!369197 (t!369197 (t!369197 rulesArg!259))))))))

(declare-fun lt!2054791 () Unit!148431)

(declare-fun lt!2054792 () Unit!148431)

(assert (=> d!1602191 (= lt!2054791 lt!2054792)))

(assert (=> d!1602191 (isPrefix!5251 (list!18383 input!1342) (list!18383 input!1342))))

(assert (=> d!1602191 (= lt!2054792 (lemmaIsPrefixRefl!3575 (list!18383 input!1342) (list!18383 input!1342)))))

(assert (=> d!1602191 (rulesValidInductive!3303 thiss!15247 (t!369197 (t!369197 rulesArg!259)))))

(assert (=> d!1602191 (= (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342)) lt!2054795)))

(declare-fun bm!347018 () Bool)

(declare-fun call!347023 () Option!14463)

(assert (=> bm!347018 (= call!347023 (maxPrefixOneRuleZipper!303 thiss!15247 (h!63915 (t!369197 (t!369197 rulesArg!259))) (list!18383 input!1342)))))

(declare-fun b!4974749 () Bool)

(assert (=> b!4974749 (= e!3109121 call!347023)))

(declare-fun b!4974750 () Bool)

(declare-fun lt!2054794 () Option!14463)

(declare-fun lt!2054793 () Option!14463)

(assert (=> b!4974750 (= e!3109121 (ite (and ((_ is None!14462) lt!2054794) ((_ is None!14462) lt!2054793)) None!14462 (ite ((_ is None!14462) lt!2054793) lt!2054794 (ite ((_ is None!14462) lt!2054794) lt!2054793 (ite (>= (size!38094 (_1!34412 (v!50457 lt!2054794))) (size!38094 (_1!34412 (v!50457 lt!2054793)))) lt!2054794 lt!2054793)))))))

(assert (=> b!4974750 (= lt!2054794 call!347023)))

(assert (=> b!4974750 (= lt!2054793 (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 (t!369197 rulesArg!259))) (list!18383 input!1342)))))

(assert (= (and d!1602191 c!848965) b!4974749))

(assert (= (and d!1602191 (not c!848965)) b!4974750))

(assert (= (or b!4974749 b!4974750) bm!347018))

(assert (=> d!1602191 m!6001308))

(assert (=> d!1602191 m!6002094))

(assert (=> d!1602191 m!6001308))

(assert (=> d!1602191 m!6001308))

(assert (=> d!1602191 m!6002324))

(assert (=> d!1602191 m!6001308))

(assert (=> d!1602191 m!6001308))

(assert (=> d!1602191 m!6002326))

(assert (=> d!1602191 m!6002108))

(assert (=> bm!347018 m!6001308))

(declare-fun m!6004680 () Bool)

(assert (=> bm!347018 m!6004680))

(assert (=> b!4974750 m!6001308))

(declare-fun m!6004682 () Bool)

(assert (=> b!4974750 m!6004682))

(assert (=> b!4973500 d!1602191))

(declare-fun d!1602193 () Bool)

(assert (=> d!1602193 (= (isEmpty!30977 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) ((_ is Nil!57466) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))

(assert (=> d!1601271 d!1602193))

(declare-fun bm!347019 () Bool)

(declare-fun call!347024 () Bool)

(declare-fun c!848967 () Bool)

(assert (=> bm!347019 (= call!347024 (validRegex!5976 (ite c!848967 (regTwo!27779 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (regOne!27778 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))))))

(declare-fun b!4974751 () Bool)

(declare-fun e!3109128 () Bool)

(declare-fun call!347025 () Bool)

(assert (=> b!4974751 (= e!3109128 call!347025)))

(declare-fun b!4974752 () Bool)

(declare-fun e!3109125 () Bool)

(declare-fun e!3109127 () Bool)

(assert (=> b!4974752 (= e!3109125 e!3109127)))

(declare-fun res!2123646 () Bool)

(assert (=> b!4974752 (=> (not res!2123646) (not e!3109127))))

(assert (=> b!4974752 (= res!2123646 call!347024)))

(declare-fun b!4974753 () Bool)

(declare-fun res!2123648 () Bool)

(declare-fun e!3109126 () Bool)

(assert (=> b!4974753 (=> (not res!2123648) (not e!3109126))))

(declare-fun call!347026 () Bool)

(assert (=> b!4974753 (= res!2123648 call!347026)))

(declare-fun e!3109123 () Bool)

(assert (=> b!4974753 (= e!3109123 e!3109126)))

(declare-fun bm!347020 () Bool)

(assert (=> bm!347020 (= call!347026 call!347025)))

(declare-fun d!1602195 () Bool)

(declare-fun res!2123644 () Bool)

(declare-fun e!3109122 () Bool)

(assert (=> d!1602195 (=> res!2123644 e!3109122)))

(assert (=> d!1602195 (= res!2123644 ((_ is ElementMatch!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))))

(assert (=> d!1602195 (= (validRegex!5976 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) e!3109122)))

(declare-fun b!4974754 () Bool)

(assert (=> b!4974754 (= e!3109127 call!347026)))

(declare-fun b!4974755 () Bool)

(declare-fun res!2123647 () Bool)

(assert (=> b!4974755 (=> res!2123647 e!3109125)))

(assert (=> b!4974755 (= res!2123647 (not ((_ is Concat!22344) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))))

(assert (=> b!4974755 (= e!3109123 e!3109125)))

(declare-fun b!4974756 () Bool)

(assert (=> b!4974756 (= e!3109126 call!347024)))

(declare-fun b!4974757 () Bool)

(declare-fun e!3109124 () Bool)

(assert (=> b!4974757 (= e!3109124 e!3109128)))

(declare-fun res!2123645 () Bool)

(assert (=> b!4974757 (= res!2123645 (not (nullable!4627 (reg!13962 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))))))

(assert (=> b!4974757 (=> (not res!2123645) (not e!3109128))))

(declare-fun b!4974758 () Bool)

(assert (=> b!4974758 (= e!3109124 e!3109123)))

(assert (=> b!4974758 (= c!848967 ((_ is Union!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))))

(declare-fun b!4974759 () Bool)

(assert (=> b!4974759 (= e!3109122 e!3109124)))

(declare-fun c!848966 () Bool)

(assert (=> b!4974759 (= c!848966 ((_ is Star!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))))

(declare-fun bm!347021 () Bool)

(assert (=> bm!347021 (= call!347025 (validRegex!5976 (ite c!848966 (reg!13962 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (ite c!848967 (regOne!27779 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (regTwo!27778 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))))))))

(assert (= (and d!1602195 (not res!2123644)) b!4974759))

(assert (= (and b!4974759 c!848966) b!4974757))

(assert (= (and b!4974759 (not c!848966)) b!4974758))

(assert (= (and b!4974757 res!2123645) b!4974751))

(assert (= (and b!4974758 c!848967) b!4974753))

(assert (= (and b!4974758 (not c!848967)) b!4974755))

(assert (= (and b!4974753 res!2123648) b!4974756))

(assert (= (and b!4974755 (not res!2123647)) b!4974752))

(assert (= (and b!4974752 res!2123646) b!4974754))

(assert (= (or b!4974753 b!4974754) bm!347020))

(assert (= (or b!4974756 b!4974752) bm!347019))

(assert (= (or b!4974751 bm!347020) bm!347021))

(declare-fun m!6004700 () Bool)

(assert (=> bm!347019 m!6004700))

(declare-fun m!6004702 () Bool)

(assert (=> b!4974757 m!6004702))

(declare-fun m!6004708 () Bool)

(assert (=> bm!347021 m!6004708))

(assert (=> d!1601271 d!1602195))

(assert (=> b!4973330 d!1601701))

(declare-fun d!1602201 () Bool)

(declare-fun lt!2054798 () Int)

(assert (=> d!1602201 (>= lt!2054798 0)))

(declare-fun e!3109131 () Int)

(assert (=> d!1602201 (= lt!2054798 e!3109131)))

(declare-fun c!848969 () Bool)

(assert (=> d!1602201 (= c!848969 ((_ is Nil!57466) (originalCharacters!8679 (_1!34412 (get!19957 lt!2054040)))))))

(assert (=> d!1602201 (= (size!38097 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054040)))) lt!2054798)))

(declare-fun b!4974761 () Bool)

(assert (=> b!4974761 (= e!3109131 0)))

(declare-fun b!4974763 () Bool)

(assert (=> b!4974763 (= e!3109131 (+ 1 (size!38097 (t!369196 (originalCharacters!8679 (_1!34412 (get!19957 lt!2054040)))))))))

(assert (= (and d!1602201 c!848969) b!4974761))

(assert (= (and d!1602201 (not c!848969)) b!4974763))

(declare-fun m!6004710 () Bool)

(assert (=> b!4974763 m!6004710))

(assert (=> b!4973330 d!1602201))

(declare-fun d!1602203 () Bool)

(declare-fun lt!2054799 () Int)

(assert (=> d!1602203 (>= lt!2054799 0)))

(declare-fun e!3109132 () Int)

(assert (=> d!1602203 (= lt!2054799 e!3109132)))

(declare-fun c!848970 () Bool)

(assert (=> d!1602203 (= c!848970 ((_ is Nil!57466) (list!18387 (xs!18478 (c!848514 input!1342)))))))

(assert (=> d!1602203 (= (size!38097 (list!18387 (xs!18478 (c!848514 input!1342)))) lt!2054799)))

(declare-fun b!4974766 () Bool)

(assert (=> b!4974766 (= e!3109132 0)))

(declare-fun b!4974767 () Bool)

(assert (=> b!4974767 (= e!3109132 (+ 1 (size!38097 (t!369196 (list!18387 (xs!18478 (c!848514 input!1342)))))))))

(assert (= (and d!1602203 c!848970) b!4974766))

(assert (= (and d!1602203 (not c!848970)) b!4974767))

(declare-fun m!6004712 () Bool)

(assert (=> b!4974767 m!6004712))

(assert (=> d!1601281 d!1602203))

(assert (=> d!1601281 d!1601949))

(declare-fun d!1602205 () Bool)

(assert (=> d!1602205 (= (max!0 (height!2020 (left!41922 (c!848514 totalInput!464))) (height!2020 (right!42252 (c!848514 totalInput!464)))) (ite (< (height!2020 (left!41922 (c!848514 totalInput!464))) (height!2020 (right!42252 (c!848514 totalInput!464)))) (height!2020 (right!42252 (c!848514 totalInput!464))) (height!2020 (left!41922 (c!848514 totalInput!464)))))))

(assert (=> b!4973677 d!1602205))

(declare-fun d!1602207 () Bool)

(assert (=> d!1602207 (= (height!2020 (left!41922 (c!848514 totalInput!464))) (ite ((_ is Empty!15152) (left!41922 (c!848514 totalInput!464))) 0 (ite ((_ is Leaf!25177) (left!41922 (c!848514 totalInput!464))) 1 (cheight!15363 (left!41922 (c!848514 totalInput!464))))))))

(assert (=> b!4973677 d!1602207))

(declare-fun d!1602211 () Bool)

(assert (=> d!1602211 (= (height!2020 (right!42252 (c!848514 totalInput!464))) (ite ((_ is Empty!15152) (right!42252 (c!848514 totalInput!464))) 0 (ite ((_ is Leaf!25177) (right!42252 (c!848514 totalInput!464))) 1 (cheight!15363 (right!42252 (c!848514 totalInput!464))))))))

(assert (=> b!4973677 d!1602211))

(declare-fun d!1602213 () Bool)

(declare-fun lt!2054800 () Bool)

(assert (=> d!1602213 (= lt!2054800 (select (content!10195 (t!369197 rulesArg!259)) (rule!11662 (_1!34412 (get!19957 lt!2054151)))))))

(declare-fun e!3109135 () Bool)

(assert (=> d!1602213 (= lt!2054800 e!3109135)))

(declare-fun res!2123651 () Bool)

(assert (=> d!1602213 (=> (not res!2123651) (not e!3109135))))

(assert (=> d!1602213 (= res!2123651 ((_ is Cons!57467) (t!369197 rulesArg!259)))))

(assert (=> d!1602213 (= (contains!19545 (t!369197 rulesArg!259) (rule!11662 (_1!34412 (get!19957 lt!2054151)))) lt!2054800)))

(declare-fun b!4974772 () Bool)

(declare-fun e!3109136 () Bool)

(assert (=> b!4974772 (= e!3109135 e!3109136)))

(declare-fun res!2123652 () Bool)

(assert (=> b!4974772 (=> res!2123652 e!3109136)))

(assert (=> b!4974772 (= res!2123652 (= (h!63915 (t!369197 rulesArg!259)) (rule!11662 (_1!34412 (get!19957 lt!2054151)))))))

(declare-fun b!4974773 () Bool)

(assert (=> b!4974773 (= e!3109136 (contains!19545 (t!369197 (t!369197 rulesArg!259)) (rule!11662 (_1!34412 (get!19957 lt!2054151)))))))

(assert (= (and d!1602213 res!2123651) b!4974772))

(assert (= (and b!4974772 (not res!2123652)) b!4974773))

(assert (=> d!1602213 m!6003684))

(declare-fun m!6004728 () Bool)

(assert (=> d!1602213 m!6004728))

(declare-fun m!6004732 () Bool)

(assert (=> b!4974773 m!6004732))

(assert (=> b!4973650 d!1602213))

(assert (=> b!4973650 d!1601681))

(declare-fun d!1602215 () Bool)

(declare-fun lt!2054801 () Int)

(assert (=> d!1602215 (>= lt!2054801 0)))

(declare-fun e!3109137 () Int)

(assert (=> d!1602215 (= lt!2054801 e!3109137)))

(declare-fun c!848973 () Bool)

(assert (=> d!1602215 (= c!848973 ((_ is Nil!57466) (_1!34415 lt!2054226)))))

(assert (=> d!1602215 (= (size!38097 (_1!34415 lt!2054226)) lt!2054801)))

(declare-fun b!4974774 () Bool)

(assert (=> b!4974774 (= e!3109137 0)))

(declare-fun b!4974775 () Bool)

(assert (=> b!4974775 (= e!3109137 (+ 1 (size!38097 (t!369196 (_1!34415 lt!2054226)))))))

(assert (= (and d!1602215 c!848973) b!4974774))

(assert (= (and d!1602215 (not c!848973)) b!4974775))

(declare-fun m!6004736 () Bool)

(assert (=> b!4974775 m!6004736))

(assert (=> b!4973745 d!1602215))

(assert (=> b!4973745 d!1601509))

(assert (=> bm!346849 d!1602193))

(declare-fun d!1602219 () Bool)

(declare-fun lt!2054802 () Int)

(assert (=> d!1602219 (>= lt!2054802 0)))

(declare-fun e!3109139 () Int)

(assert (=> d!1602219 (= lt!2054802 e!3109139)))

(declare-fun c!848974 () Bool)

(assert (=> d!1602219 (= c!848974 ((_ is Nil!57466) (t!369196 (_2!34412 (get!19957 lt!2053853)))))))

(assert (=> d!1602219 (= (size!38097 (t!369196 (_2!34412 (get!19957 lt!2053853)))) lt!2054802)))

(declare-fun b!4974778 () Bool)

(assert (=> b!4974778 (= e!3109139 0)))

(declare-fun b!4974779 () Bool)

(assert (=> b!4974779 (= e!3109139 (+ 1 (size!38097 (t!369196 (t!369196 (_2!34412 (get!19957 lt!2053853)))))))))

(assert (= (and d!1602219 c!848974) b!4974778))

(assert (= (and d!1602219 (not c!848974)) b!4974779))

(declare-fun m!6004742 () Bool)

(assert (=> b!4974779 m!6004742))

(assert (=> b!4973387 d!1602219))

(declare-fun d!1602223 () Bool)

(declare-fun lt!2054803 () Int)

(assert (=> d!1602223 (= lt!2054803 (size!38097 (list!18385 (left!41922 (c!848514 input!1342)))))))

(assert (=> d!1602223 (= lt!2054803 (ite ((_ is Empty!15152) (left!41922 (c!848514 input!1342))) 0 (ite ((_ is Leaf!25177) (left!41922 (c!848514 input!1342))) (csize!30535 (left!41922 (c!848514 input!1342))) (csize!30534 (left!41922 (c!848514 input!1342))))))))

(assert (=> d!1602223 (= (size!38100 (left!41922 (c!848514 input!1342))) lt!2054803)))

(declare-fun bs!1183827 () Bool)

(assert (= bs!1183827 d!1602223))

(assert (=> bs!1183827 m!6002410))

(assert (=> bs!1183827 m!6002410))

(assert (=> bs!1183827 m!6004464))

(assert (=> d!1601241 d!1602223))

(declare-fun d!1602227 () Bool)

(declare-fun lt!2054804 () Int)

(assert (=> d!1602227 (= lt!2054804 (size!38097 (list!18385 (right!42252 (c!848514 input!1342)))))))

(assert (=> d!1602227 (= lt!2054804 (ite ((_ is Empty!15152) (right!42252 (c!848514 input!1342))) 0 (ite ((_ is Leaf!25177) (right!42252 (c!848514 input!1342))) (csize!30535 (right!42252 (c!848514 input!1342))) (csize!30534 (right!42252 (c!848514 input!1342))))))))

(assert (=> d!1602227 (= (size!38100 (right!42252 (c!848514 input!1342))) lt!2054804)))

(declare-fun bs!1183828 () Bool)

(assert (= bs!1183828 d!1602227))

(assert (=> bs!1183828 m!6002412))

(assert (=> bs!1183828 m!6002412))

(assert (=> bs!1183828 m!6004466))

(assert (=> d!1601241 d!1602227))

(declare-fun d!1602231 () Bool)

(assert (=> d!1602231 (= (isEmpty!30976 lt!2053839) (not ((_ is Some!14463) lt!2053839)))))

(assert (=> d!1601419 d!1602231))

(declare-fun d!1602233 () Bool)

(assert (=> d!1602233 (= (list!18383 lt!2054020) (list!18385 (c!848514 lt!2054020)))))

(declare-fun bs!1183829 () Bool)

(assert (= bs!1183829 d!1602233))

(declare-fun m!6004746 () Bool)

(assert (=> bs!1183829 m!6004746))

(assert (=> d!1601277 d!1602233))

(declare-fun b!4974784 () Bool)

(declare-fun e!3109142 () Option!14464)

(declare-fun call!347027 () Option!14464)

(assert (=> b!4974784 (= e!3109142 call!347027)))

(declare-fun b!4974785 () Bool)

(declare-fun lt!2054805 () Option!14464)

(declare-fun lt!2054806 () Option!14464)

(assert (=> b!4974785 (= e!3109142 (ite (and ((_ is None!14463) lt!2054805) ((_ is None!14463) lt!2054806)) None!14463 (ite ((_ is None!14463) lt!2054806) lt!2054805 (ite ((_ is None!14463) lt!2054805) lt!2054806 (ite (>= (size!38094 (_1!34411 (v!50458 lt!2054805))) (size!38094 (_1!34411 (v!50458 lt!2054806)))) lt!2054805 lt!2054806)))))))

(assert (=> b!4974785 (= lt!2054805 call!347027)))

(assert (=> b!4974785 (= lt!2054806 (maxPrefixZipperSequenceV2!711 thiss!15247 (t!369197 (t!369197 (t!369197 (t!369197 rulesArg!259)))) input!1342 totalInput!464))))

(declare-fun b!4974786 () Bool)

(declare-fun res!2123657 () Bool)

(declare-fun e!3109144 () Bool)

(assert (=> b!4974786 (=> (not res!2123657) (not e!3109144))))

(declare-fun e!3109146 () Bool)

(assert (=> b!4974786 (= res!2123657 e!3109146)))

(declare-fun res!2123656 () Bool)

(assert (=> b!4974786 (=> res!2123656 e!3109146)))

(declare-fun lt!2054812 () Option!14464)

(assert (=> b!4974786 (= res!2123656 (not (isDefined!11377 lt!2054812)))))

(declare-fun b!4974787 () Bool)

(declare-fun e!3109143 () Bool)

(assert (=> b!4974787 (= e!3109146 e!3109143)))

(declare-fun res!2123658 () Bool)

(assert (=> b!4974787 (=> (not res!2123658) (not e!3109143))))

(assert (=> b!4974787 (= res!2123658 (= (_1!34411 (get!19958 lt!2054812)) (_1!34412 (get!19957 (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 (t!369197 rulesArg!259))) (list!18383 input!1342))))))))

(declare-fun b!4974788 () Bool)

(assert (=> b!4974788 (= e!3109143 (= (list!18383 (_2!34411 (get!19958 lt!2054812))) (_2!34412 (get!19957 (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 (t!369197 rulesArg!259))) (list!18383 input!1342))))))))

(declare-fun e!3109147 () Bool)

(declare-fun b!4974789 () Bool)

(assert (=> b!4974789 (= e!3109147 (= (list!18383 (_2!34411 (get!19958 lt!2054812))) (_2!34412 (get!19957 (maxPrefix!4667 thiss!15247 (t!369197 (t!369197 (t!369197 rulesArg!259))) (list!18383 input!1342))))))))

(declare-fun bm!347022 () Bool)

(assert (=> bm!347022 (= call!347027 (maxPrefixOneRuleZipperSequenceV2!368 thiss!15247 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))) input!1342 totalInput!464))))

(declare-fun b!4974791 () Bool)

(declare-fun e!3109145 () Bool)

(assert (=> b!4974791 (= e!3109145 e!3109147)))

(declare-fun res!2123660 () Bool)

(assert (=> b!4974791 (=> (not res!2123660) (not e!3109147))))

(assert (=> b!4974791 (= res!2123660 (= (_1!34411 (get!19958 lt!2054812)) (_1!34412 (get!19957 (maxPrefix!4667 thiss!15247 (t!369197 (t!369197 (t!369197 rulesArg!259))) (list!18383 input!1342))))))))

(declare-fun d!1602235 () Bool)

(assert (=> d!1602235 e!3109144))

(declare-fun res!2123655 () Bool)

(assert (=> d!1602235 (=> (not res!2123655) (not e!3109144))))

(assert (=> d!1602235 (= res!2123655 (= (isDefined!11377 lt!2054812) (isDefined!11376 (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 (t!369197 rulesArg!259))) (list!18383 input!1342)))))))

(assert (=> d!1602235 (= lt!2054812 e!3109142)))

(declare-fun c!848977 () Bool)

(assert (=> d!1602235 (= c!848977 (and ((_ is Cons!57467) (t!369197 (t!369197 (t!369197 rulesArg!259)))) ((_ is Nil!57467) (t!369197 (t!369197 (t!369197 (t!369197 rulesArg!259)))))))))

(declare-fun lt!2054809 () Unit!148431)

(declare-fun lt!2054807 () Unit!148431)

(assert (=> d!1602235 (= lt!2054809 lt!2054807)))

(declare-fun lt!2054808 () List!57590)

(declare-fun lt!2054810 () List!57590)

(assert (=> d!1602235 (isPrefix!5251 lt!2054808 lt!2054810)))

(assert (=> d!1602235 (= lt!2054807 (lemmaIsPrefixRefl!3575 lt!2054808 lt!2054810))))

(assert (=> d!1602235 (= lt!2054810 (list!18383 input!1342))))

(assert (=> d!1602235 (= lt!2054808 (list!18383 input!1342))))

(assert (=> d!1602235 (rulesValidInductive!3303 thiss!15247 (t!369197 (t!369197 (t!369197 rulesArg!259))))))

(assert (=> d!1602235 (= (maxPrefixZipperSequenceV2!711 thiss!15247 (t!369197 (t!369197 (t!369197 rulesArg!259))) input!1342 totalInput!464) lt!2054812)))

(declare-fun b!4974790 () Bool)

(assert (=> b!4974790 (= e!3109144 e!3109145)))

(declare-fun res!2123659 () Bool)

(assert (=> b!4974790 (=> res!2123659 e!3109145)))

(assert (=> b!4974790 (= res!2123659 (not (isDefined!11377 lt!2054812)))))

(assert (= (and d!1602235 c!848977) b!4974784))

(assert (= (and d!1602235 (not c!848977)) b!4974785))

(assert (= (or b!4974784 b!4974785) bm!347022))

(assert (= (and d!1602235 res!2123655) b!4974786))

(assert (= (and b!4974786 (not res!2123656)) b!4974787))

(assert (= (and b!4974787 res!2123658) b!4974788))

(assert (= (and b!4974786 res!2123657) b!4974790))

(assert (= (and b!4974790 (not res!2123659)) b!4974791))

(assert (= (and b!4974791 res!2123660) b!4974789))

(declare-fun m!6004770 () Bool)

(assert (=> b!4974790 m!6004770))

(declare-fun m!6004772 () Bool)

(assert (=> b!4974787 m!6004772))

(assert (=> b!4974787 m!6001308))

(assert (=> b!4974787 m!6001308))

(assert (=> b!4974787 m!6004682))

(assert (=> b!4974787 m!6004682))

(declare-fun m!6004774 () Bool)

(assert (=> b!4974787 m!6004774))

(declare-fun m!6004776 () Bool)

(assert (=> bm!347022 m!6004776))

(assert (=> b!4974786 m!6004770))

(declare-fun m!6004778 () Bool)

(assert (=> b!4974785 m!6004778))

(assert (=> b!4974788 m!6001308))

(assert (=> b!4974788 m!6004682))

(assert (=> b!4974788 m!6001308))

(declare-fun m!6004780 () Bool)

(assert (=> b!4974788 m!6004780))

(assert (=> b!4974788 m!6004772))

(assert (=> b!4974788 m!6004682))

(assert (=> b!4974788 m!6004774))

(assert (=> b!4974789 m!6001308))

(assert (=> b!4974789 m!6002914))

(assert (=> b!4974789 m!6001308))

(assert (=> b!4974789 m!6002914))

(declare-fun m!6004782 () Bool)

(assert (=> b!4974789 m!6004782))

(assert (=> b!4974789 m!6004780))

(assert (=> b!4974789 m!6004772))

(assert (=> b!4974791 m!6004772))

(assert (=> b!4974791 m!6001308))

(assert (=> b!4974791 m!6001308))

(assert (=> b!4974791 m!6002914))

(assert (=> b!4974791 m!6002914))

(assert (=> b!4974791 m!6004782))

(assert (=> d!1602235 m!6001308))

(assert (=> d!1602235 m!6004682))

(declare-fun m!6004792 () Bool)

(assert (=> d!1602235 m!6004792))

(assert (=> d!1602235 m!6004770))

(declare-fun m!6004794 () Bool)

(assert (=> d!1602235 m!6004794))

(assert (=> d!1602235 m!6004682))

(declare-fun m!6004796 () Bool)

(assert (=> d!1602235 m!6004796))

(assert (=> d!1602235 m!6003528))

(assert (=> d!1602235 m!6001308))

(assert (=> b!4973351 d!1602235))

(declare-fun d!1602255 () Bool)

(declare-fun res!2123673 () Bool)

(declare-fun e!3109156 () Bool)

(assert (=> d!1602255 (=> (not res!2123673) (not e!3109156))))

(assert (=> d!1602255 (= res!2123673 (<= (size!38097 (list!18387 (xs!18478 (right!42252 (c!848514 input!1342))))) 512))))

(assert (=> d!1602255 (= (inv!75129 (right!42252 (c!848514 input!1342))) e!3109156)))

(declare-fun b!4974806 () Bool)

(declare-fun res!2123674 () Bool)

(assert (=> b!4974806 (=> (not res!2123674) (not e!3109156))))

(assert (=> b!4974806 (= res!2123674 (= (csize!30535 (right!42252 (c!848514 input!1342))) (size!38097 (list!18387 (xs!18478 (right!42252 (c!848514 input!1342)))))))))

(declare-fun b!4974807 () Bool)

(assert (=> b!4974807 (= e!3109156 (and (> (csize!30535 (right!42252 (c!848514 input!1342))) 0) (<= (csize!30535 (right!42252 (c!848514 input!1342))) 512)))))

(assert (= (and d!1602255 res!2123673) b!4974806))

(assert (= (and b!4974806 res!2123674) b!4974807))

(assert (=> d!1602255 m!6004482))

(assert (=> d!1602255 m!6004482))

(declare-fun m!6004800 () Bool)

(assert (=> d!1602255 m!6004800))

(assert (=> b!4974806 m!6004482))

(assert (=> b!4974806 m!6004482))

(assert (=> b!4974806 m!6004800))

(assert (=> b!4973766 d!1602255))

(declare-fun d!1602259 () Bool)

(declare-fun dynLambda!23222 (Int BalanceConc!29734 BalanceConc!29734) Bool)

(assert (=> d!1602259 (dynLambda!23222 lambda!247528 (_1!34416 lt!2053837) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))

(declare-fun lt!2054821 () Unit!148431)

(declare-fun choose!36728 (Int BalanceConc!29734 BalanceConc!29734) Unit!148431)

(assert (=> d!1602259 (= lt!2054821 (choose!36728 lambda!247528 (_1!34416 lt!2053837) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))

(assert (=> d!1602259 (Forall2!1292 lambda!247528)))

(assert (=> d!1602259 (= (Forall2of!483 lambda!247528 (_1!34416 lt!2053837) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))) lt!2054821)))

(declare-fun b_lambda!197433 () Bool)

(assert (=> (not b_lambda!197433) (not d!1602259)))

(declare-fun bs!1183838 () Bool)

(assert (= bs!1183838 d!1602259))

(assert (=> bs!1183838 m!6001562))

(declare-fun m!6004816 () Bool)

(assert (=> bs!1183838 m!6004816))

(assert (=> bs!1183838 m!6001562))

(declare-fun m!6004818 () Bool)

(assert (=> bs!1183838 m!6004818))

(declare-fun m!6004820 () Bool)

(assert (=> bs!1183838 m!6004820))

(assert (=> d!1601541 d!1602259))

(assert (=> d!1601541 d!1601535))

(assert (=> d!1601541 d!1601801))

(assert (=> d!1601433 d!1601431))

(declare-fun d!1602271 () Bool)

(assert (=> d!1602271 (isPrefix!5251 lt!2053809 lt!2053811)))

(assert (=> d!1602271 true))

(declare-fun _$45!2298 () Unit!148431)

(assert (=> d!1602271 (= (choose!36709 lt!2053809 lt!2053811) _$45!2298)))

(declare-fun bs!1183841 () Bool)

(assert (= bs!1183841 d!1602271))

(assert (=> bs!1183841 m!6001540))

(assert (=> d!1601433 d!1602271))

(declare-fun d!1602275 () Bool)

(assert (=> d!1602275 (= (list!18383 (_2!34416 lt!2054147)) (list!18385 (c!848514 (_2!34416 lt!2054147))))))

(declare-fun bs!1183842 () Bool)

(assert (= bs!1183842 d!1602275))

(declare-fun m!6004824 () Bool)

(assert (=> bs!1183842 m!6004824))

(assert (=> d!1601465 d!1602275))

(assert (=> d!1601465 d!1601201))

(declare-fun d!1602277 () Bool)

(assert (=> d!1602277 (= (list!18383 (_1!34416 lt!2054147)) (list!18385 (c!848514 (_1!34416 lt!2054147))))))

(declare-fun bs!1183843 () Bool)

(assert (= bs!1183843 d!1602277))

(declare-fun m!6004826 () Bool)

(assert (=> bs!1183843 m!6004826))

(assert (=> d!1601465 d!1602277))

(assert (=> d!1601465 d!1602069))

(assert (=> d!1601465 d!1601889))

(declare-fun d!1602279 () Bool)

(declare-fun res!2123685 () tuple2!62226)

(assert (=> d!1602279 (= (tuple2!62225 (list!18383 (_1!34416 res!2123685)) (list!18383 (_2!34416 res!2123685))) (findLongestMatch!1704 (regex!8400 (h!63915 rulesArg!259)) (list!18383 input!1342)))))

(declare-fun e!3109182 () Bool)

(declare-fun e!3109181 () Bool)

(assert (=> d!1602279 (and (inv!75124 (_1!34416 res!2123685)) e!3109182 (inv!75124 (_2!34416 res!2123685)) e!3109181)))

(assert (=> d!1602279 (= (choose!36713 (regex!8400 (h!63915 rulesArg!259)) input!1342 totalInput!464) res!2123685)))

(declare-fun b!4974842 () Bool)

(declare-fun tp!1394598 () Bool)

(assert (=> b!4974842 (= e!3109182 (and (inv!75123 (c!848514 (_1!34416 res!2123685))) tp!1394598))))

(declare-fun b!4974843 () Bool)

(declare-fun tp!1394597 () Bool)

(assert (=> b!4974843 (= e!3109181 (and (inv!75123 (c!848514 (_2!34416 res!2123685))) tp!1394597))))

(assert (= d!1602279 b!4974842))

(assert (= d!1602279 b!4974843))

(declare-fun m!6004866 () Bool)

(assert (=> d!1602279 m!6004866))

(declare-fun m!6004868 () Bool)

(assert (=> d!1602279 m!6004868))

(assert (=> d!1602279 m!6001308))

(declare-fun m!6004870 () Bool)

(assert (=> d!1602279 m!6004870))

(assert (=> d!1602279 m!6001308))

(assert (=> d!1602279 m!6002032))

(declare-fun m!6004872 () Bool)

(assert (=> d!1602279 m!6004872))

(declare-fun m!6004874 () Bool)

(assert (=> b!4974842 m!6004874))

(declare-fun m!6004876 () Bool)

(assert (=> b!4974843 m!6004876))

(assert (=> d!1601465 d!1602279))

(declare-fun d!1602303 () Bool)

(declare-fun lt!2054841 () Int)

(assert (=> d!1602303 (>= lt!2054841 0)))

(declare-fun e!3109183 () Int)

(assert (=> d!1602303 (= lt!2054841 e!3109183)))

(declare-fun c!848988 () Bool)

(assert (=> d!1602303 (= c!848988 ((_ is Nil!57466) lt!2054253))))

(assert (=> d!1602303 (= (size!38097 lt!2054253) lt!2054841)))

(declare-fun b!4974844 () Bool)

(assert (=> b!4974844 (= e!3109183 0)))

(declare-fun b!4974845 () Bool)

(assert (=> b!4974845 (= e!3109183 (+ 1 (size!38097 (t!369196 lt!2054253))))))

(assert (= (and d!1602303 c!848988) b!4974844))

(assert (= (and d!1602303 (not c!848988)) b!4974845))

(declare-fun m!6004878 () Bool)

(assert (=> b!4974845 m!6004878))

(assert (=> b!4973785 d!1602303))

(declare-fun b!4974849 () Bool)

(declare-fun e!3109184 () Bool)

(assert (=> b!4974849 (= e!3109184 (>= (size!38097 (tail!9808 lt!2053811)) (size!38097 (tail!9808 lt!2053809))))))

(declare-fun b!4974847 () Bool)

(declare-fun res!2123686 () Bool)

(declare-fun e!3109186 () Bool)

(assert (=> b!4974847 (=> (not res!2123686) (not e!3109186))))

(assert (=> b!4974847 (= res!2123686 (= (head!10675 (tail!9808 lt!2053809)) (head!10675 (tail!9808 lt!2053811))))))

(declare-fun b!4974848 () Bool)

(assert (=> b!4974848 (= e!3109186 (isPrefix!5251 (tail!9808 (tail!9808 lt!2053809)) (tail!9808 (tail!9808 lt!2053811))))))

(declare-fun d!1602305 () Bool)

(assert (=> d!1602305 e!3109184))

(declare-fun res!2123687 () Bool)

(assert (=> d!1602305 (=> res!2123687 e!3109184)))

(declare-fun lt!2054842 () Bool)

(assert (=> d!1602305 (= res!2123687 (not lt!2054842))))

(declare-fun e!3109185 () Bool)

(assert (=> d!1602305 (= lt!2054842 e!3109185)))

(declare-fun res!2123689 () Bool)

(assert (=> d!1602305 (=> res!2123689 e!3109185)))

(assert (=> d!1602305 (= res!2123689 ((_ is Nil!57466) (tail!9808 lt!2053809)))))

(assert (=> d!1602305 (= (isPrefix!5251 (tail!9808 lt!2053809) (tail!9808 lt!2053811)) lt!2054842)))

(declare-fun b!4974846 () Bool)

(assert (=> b!4974846 (= e!3109185 e!3109186)))

(declare-fun res!2123688 () Bool)

(assert (=> b!4974846 (=> (not res!2123688) (not e!3109186))))

(assert (=> b!4974846 (= res!2123688 (not ((_ is Nil!57466) (tail!9808 lt!2053811))))))

(assert (= (and d!1602305 (not res!2123689)) b!4974846))

(assert (= (and b!4974846 res!2123688) b!4974847))

(assert (= (and b!4974847 res!2123686) b!4974848))

(assert (= (and d!1602305 (not res!2123687)) b!4974849))

(assert (=> b!4974849 m!6002396))

(declare-fun m!6004880 () Bool)

(assert (=> b!4974849 m!6004880))

(assert (=> b!4974849 m!6002394))

(declare-fun m!6004882 () Bool)

(assert (=> b!4974849 m!6004882))

(assert (=> b!4974847 m!6002394))

(declare-fun m!6004884 () Bool)

(assert (=> b!4974847 m!6004884))

(assert (=> b!4974847 m!6002396))

(declare-fun m!6004886 () Bool)

(assert (=> b!4974847 m!6004886))

(assert (=> b!4974848 m!6002394))

(declare-fun m!6004888 () Bool)

(assert (=> b!4974848 m!6004888))

(assert (=> b!4974848 m!6002396))

(declare-fun m!6004890 () Bool)

(assert (=> b!4974848 m!6004890))

(assert (=> b!4974848 m!6004888))

(assert (=> b!4974848 m!6004890))

(declare-fun m!6004892 () Bool)

(assert (=> b!4974848 m!6004892))

(assert (=> b!4973548 d!1602305))

(declare-fun d!1602307 () Bool)

(assert (=> d!1602307 (= (tail!9808 lt!2053809) (t!369196 lt!2053809))))

(assert (=> b!4973548 d!1602307))

(declare-fun d!1602309 () Bool)

(assert (=> d!1602309 (= (tail!9808 lt!2053811) (t!369196 lt!2053811))))

(assert (=> b!4973548 d!1602309))

(declare-fun d!1602311 () Bool)

(assert (=> d!1602311 (= (list!18383 (_2!34411 (get!19958 lt!2054260))) (list!18385 (c!848514 (_2!34411 (get!19958 lt!2054260)))))))

(declare-fun bs!1183852 () Bool)

(assert (= bs!1183852 d!1602311))

(declare-fun m!6004902 () Bool)

(assert (=> bs!1183852 m!6004902))

(assert (=> b!4973796 d!1602311))

(declare-fun d!1602313 () Bool)

(assert (=> d!1602313 (= (get!19957 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 rulesArg!259)) (list!18383 input!1342))) (v!50457 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 rulesArg!259)) (list!18383 input!1342))))))

(assert (=> b!4973796 d!1602313))

(assert (=> b!4973796 d!1601201))

(assert (=> b!4973796 d!1602105))

(declare-fun d!1602315 () Bool)

(assert (=> d!1602315 (= (get!19958 lt!2054260) (v!50458 lt!2054260))))

(assert (=> b!4973796 d!1602315))

(assert (=> b!4973208 d!1601617))

(assert (=> bm!346883 d!1601919))

(assert (=> b!4973543 d!1602207))

(assert (=> b!4973543 d!1602211))

(declare-fun d!1602317 () Bool)

(declare-fun lt!2054843 () Int)

(assert (=> d!1602317 (= lt!2054843 (size!38097 (list!18385 (left!41922 (c!848514 totalInput!464)))))))

(assert (=> d!1602317 (= lt!2054843 (ite ((_ is Empty!15152) (left!41922 (c!848514 totalInput!464))) 0 (ite ((_ is Leaf!25177) (left!41922 (c!848514 totalInput!464))) (csize!30535 (left!41922 (c!848514 totalInput!464))) (csize!30534 (left!41922 (c!848514 totalInput!464))))))))

(assert (=> d!1602317 (= (size!38100 (left!41922 (c!848514 totalInput!464))) lt!2054843)))

(declare-fun bs!1183853 () Bool)

(assert (= bs!1183853 d!1602317))

(assert (=> bs!1183853 m!6002350))

(assert (=> bs!1183853 m!6002350))

(declare-fun m!6004920 () Bool)

(assert (=> bs!1183853 m!6004920))

(assert (=> d!1601491 d!1602317))

(declare-fun d!1602319 () Bool)

(declare-fun lt!2054844 () Int)

(assert (=> d!1602319 (= lt!2054844 (size!38097 (list!18385 (right!42252 (c!848514 totalInput!464)))))))

(assert (=> d!1602319 (= lt!2054844 (ite ((_ is Empty!15152) (right!42252 (c!848514 totalInput!464))) 0 (ite ((_ is Leaf!25177) (right!42252 (c!848514 totalInput!464))) (csize!30535 (right!42252 (c!848514 totalInput!464))) (csize!30534 (right!42252 (c!848514 totalInput!464))))))))

(assert (=> d!1602319 (= (size!38100 (right!42252 (c!848514 totalInput!464))) lt!2054844)))

(declare-fun bs!1183854 () Bool)

(assert (= bs!1183854 d!1602319))

(assert (=> bs!1183854 m!6002352))

(assert (=> bs!1183854 m!6002352))

(declare-fun m!6004932 () Bool)

(assert (=> bs!1183854 m!6004932))

(assert (=> d!1601491 d!1602319))

(assert (=> b!4973303 d!1602203))

(assert (=> b!4973303 d!1601949))

(declare-fun d!1602321 () Bool)

(assert (=> d!1602321 (= (isEmpty!30977 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))) ((_ is Nil!57466) (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))))))

(assert (=> b!4973256 d!1602321))

(assert (=> b!4973256 d!1601607))

(declare-fun d!1602323 () Bool)

(declare-fun c!848989 () Bool)

(assert (=> d!1602323 (= c!848989 ((_ is Node!15152) (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))))))))

(declare-fun e!3109187 () Bool)

(assert (=> d!1602323 (= (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))))) e!3109187)))

(declare-fun b!4974850 () Bool)

(assert (=> b!4974850 (= e!3109187 (inv!75128 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))))))))

(declare-fun b!4974851 () Bool)

(declare-fun e!3109188 () Bool)

(assert (=> b!4974851 (= e!3109187 e!3109188)))

(declare-fun res!2123690 () Bool)

(assert (=> b!4974851 (= res!2123690 (not ((_ is Leaf!25177) (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837)))))))))

(assert (=> b!4974851 (=> res!2123690 e!3109188)))

(declare-fun b!4974852 () Bool)

(assert (=> b!4974852 (= e!3109188 (inv!75129 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))))))))

(assert (= (and d!1602323 c!848989) b!4974850))

(assert (= (and d!1602323 (not c!848989)) b!4974851))

(assert (= (and b!4974851 (not res!2123690)) b!4974852))

(declare-fun m!6004942 () Bool)

(assert (=> b!4974850 m!6004942))

(declare-fun m!6004944 () Bool)

(assert (=> b!4974852 m!6004944))

(assert (=> b!4973862 d!1602323))

(declare-fun d!1602327 () Bool)

(assert (=> d!1602327 (= (inv!75118 (tag!9264 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (= (mod (str.len (value!268839 (tag!9264 (h!63915 (t!369197 (t!369197 rulesArg!259)))))) 2) 0))))

(assert (=> b!4973823 d!1602327))

(declare-fun d!1602329 () Bool)

(declare-fun res!2123695 () Bool)

(declare-fun e!3109192 () Bool)

(assert (=> d!1602329 (=> (not res!2123695) (not e!3109192))))

(assert (=> d!1602329 (= res!2123695 (semiInverseModEq!3707 (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))))))))

(assert (=> d!1602329 (= (inv!75122 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) e!3109192)))

(declare-fun b!4974857 () Bool)

(assert (=> b!4974857 (= e!3109192 (equivClasses!3555 (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))))))))

(assert (= (and d!1602329 res!2123695) b!4974857))

(declare-fun m!6004954 () Bool)

(assert (=> d!1602329 m!6004954))

(declare-fun m!6004958 () Bool)

(assert (=> b!4974857 m!6004958))

(assert (=> b!4973823 d!1602329))

(declare-fun d!1602331 () Bool)

(assert (=> d!1602331 (= (isEmpty!30976 lt!2053812) (not ((_ is Some!14463) lt!2053812)))))

(assert (=> d!1601415 d!1602331))

(assert (=> bm!346890 d!1601317))

(declare-fun d!1602335 () Bool)

(declare-fun res!2123696 () Bool)

(declare-fun e!3109193 () Bool)

(assert (=> d!1602335 (=> (not res!2123696) (not e!3109193))))

(assert (=> d!1602335 (= res!2123696 (= (csize!30534 (right!42252 (c!848514 totalInput!464))) (+ (size!38100 (left!41922 (right!42252 (c!848514 totalInput!464)))) (size!38100 (right!42252 (right!42252 (c!848514 totalInput!464)))))))))

(assert (=> d!1602335 (= (inv!75128 (right!42252 (c!848514 totalInput!464))) e!3109193)))

(declare-fun b!4974858 () Bool)

(declare-fun res!2123697 () Bool)

(assert (=> b!4974858 (=> (not res!2123697) (not e!3109193))))

(assert (=> b!4974858 (= res!2123697 (and (not (= (left!41922 (right!42252 (c!848514 totalInput!464))) Empty!15152)) (not (= (right!42252 (right!42252 (c!848514 totalInput!464))) Empty!15152))))))

(declare-fun b!4974859 () Bool)

(declare-fun res!2123698 () Bool)

(assert (=> b!4974859 (=> (not res!2123698) (not e!3109193))))

(assert (=> b!4974859 (= res!2123698 (= (cheight!15363 (right!42252 (c!848514 totalInput!464))) (+ (max!0 (height!2020 (left!41922 (right!42252 (c!848514 totalInput!464)))) (height!2020 (right!42252 (right!42252 (c!848514 totalInput!464))))) 1)))))

(declare-fun b!4974860 () Bool)

(assert (=> b!4974860 (= e!3109193 (<= 0 (cheight!15363 (right!42252 (c!848514 totalInput!464)))))))

(assert (= (and d!1602335 res!2123696) b!4974858))

(assert (= (and b!4974858 res!2123697) b!4974859))

(assert (= (and b!4974859 res!2123698) b!4974860))

(declare-fun m!6004966 () Bool)

(assert (=> d!1602335 m!6004966))

(declare-fun m!6004968 () Bool)

(assert (=> d!1602335 m!6004968))

(assert (=> b!4974859 m!6004062))

(assert (=> b!4974859 m!6004064))

(assert (=> b!4974859 m!6004062))

(assert (=> b!4974859 m!6004064))

(declare-fun m!6004970 () Bool)

(assert (=> b!4974859 m!6004970))

(assert (=> b!4973698 d!1602335))

(assert (=> b!4973805 d!1601243))

(assert (=> b!4973331 d!1601701))

(assert (=> b!4972996 d!1601501))

(assert (=> b!4972996 d!1601503))

(declare-fun d!1602345 () Bool)

(declare-fun lt!2054852 () Option!14463)

(assert (=> d!1602345 (= lt!2054852 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 rulesArg!259)) (list!18383 input!1342)))))

(declare-fun e!3109195 () Option!14463)

(assert (=> d!1602345 (= lt!2054852 e!3109195)))

(declare-fun c!848991 () Bool)

(declare-fun lt!2054848 () tuple2!62224)

(assert (=> d!1602345 (= c!848991 (isEmpty!30977 (_1!34415 lt!2054848)))))

(assert (=> d!1602345 (= lt!2054848 (findLongestMatchWithZipper!100 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (list!18383 input!1342)))))

(assert (=> d!1602345 (ruleValid!3809 thiss!15247 (h!63915 (t!369197 rulesArg!259)))))

(assert (=> d!1602345 (= (maxPrefixOneRuleZipper!303 thiss!15247 (h!63915 (t!369197 rulesArg!259)) (list!18383 input!1342)) lt!2054852)))

(declare-fun b!4974863 () Bool)

(assert (=> b!4974863 (= e!3109195 None!14462)))

(declare-fun b!4974864 () Bool)

(assert (=> b!4974864 (= e!3109195 (Some!14462 (tuple2!62219 (Token!15297 (apply!13911 (transformation!8400 (h!63915 (t!369197 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054848))) (h!63915 (t!369197 rulesArg!259)) (size!38097 (_1!34415 lt!2054848)) (_1!34415 lt!2054848)) (_2!34415 lt!2054848))))))

(declare-fun lt!2054847 () Unit!148431)

(assert (=> b!4974864 (= lt!2054847 (longestMatchIsAcceptedByMatchOrIsEmpty!1823 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (list!18383 input!1342)))))

(declare-fun res!2123699 () Bool)

(assert (=> b!4974864 (= res!2123699 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))))))

(declare-fun e!3109196 () Bool)

(assert (=> b!4974864 (=> res!2123699 e!3109196)))

(assert (=> b!4974864 e!3109196))

(declare-fun lt!2054851 () Unit!148431)

(assert (=> b!4974864 (= lt!2054851 lt!2054847)))

(declare-fun lt!2054849 () Unit!148431)

(assert (=> b!4974864 (= lt!2054849 (lemmaInv!1341 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))))

(declare-fun lt!2054850 () Unit!148431)

(assert (=> b!4974864 (= lt!2054850 (lemmaSemiInverse!2609 (transformation!8400 (h!63915 (t!369197 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054848))))))

(declare-fun b!4974865 () Bool)

(assert (=> b!4974865 (= e!3109196 (matchR!6643 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 (t!369197 rulesArg!259))) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))))))

(assert (= (and d!1602345 c!848991) b!4974863))

(assert (= (and d!1602345 (not c!848991)) b!4974864))

(assert (= (and b!4974864 (not res!2123699)) b!4974865))

(assert (=> d!1602345 m!6001308))

(assert (=> d!1602345 m!6002318))

(declare-fun m!6004974 () Bool)

(assert (=> d!1602345 m!6004974))

(assert (=> d!1602345 m!6001308))

(declare-fun m!6004980 () Bool)

(assert (=> d!1602345 m!6004980))

(assert (=> d!1602345 m!6002120))

(assert (=> b!4974864 m!6002742))

(assert (=> b!4974864 m!6004412))

(assert (=> b!4974864 m!6001546))

(assert (=> b!4974864 m!6001308))

(assert (=> b!4974864 m!6001308))

(assert (=> b!4974864 m!6002036))

(assert (=> b!4974864 m!6004396))

(declare-fun m!6004990 () Bool)

(assert (=> b!4974864 m!6004990))

(declare-fun m!6004992 () Bool)

(assert (=> b!4974864 m!6004992))

(assert (=> b!4974864 m!6004990))

(declare-fun m!6004996 () Bool)

(assert (=> b!4974864 m!6004996))

(assert (=> b!4974864 m!6001308))

(assert (=> b!4974864 m!6002036))

(assert (=> b!4974864 m!6001308))

(assert (=> b!4974864 m!6004406))

(declare-fun m!6004998 () Bool)

(assert (=> b!4974864 m!6004998))

(assert (=> b!4974864 m!6004990))

(assert (=> b!4974864 m!6001546))

(assert (=> b!4974865 m!6001546))

(assert (=> b!4974865 m!6001308))

(assert (=> b!4974865 m!6002036))

(assert (=> b!4974865 m!6001546))

(assert (=> b!4974865 m!6001308))

(assert (=> b!4974865 m!6001308))

(assert (=> b!4974865 m!6002036))

(assert (=> b!4974865 m!6004396))

(assert (=> b!4974865 m!6004414))

(assert (=> bm!346855 d!1602345))

(declare-fun b!4974878 () Bool)

(declare-fun e!3109202 () List!57590)

(assert (=> b!4974878 (= e!3109202 (_2!34412 (get!19957 lt!2053853)))))

(declare-fun d!1602355 () Bool)

(declare-fun e!3109203 () Bool)

(assert (=> d!1602355 e!3109203))

(declare-fun res!2123708 () Bool)

(assert (=> d!1602355 (=> (not res!2123708) (not e!3109203))))

(declare-fun lt!2054855 () List!57590)

(assert (=> d!1602355 (= res!2123708 (= (content!10197 lt!2054855) ((_ map or) (content!10197 (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))) (content!10197 (_2!34412 (get!19957 lt!2053853))))))))

(assert (=> d!1602355 (= lt!2054855 e!3109202)))

(declare-fun c!848994 () Bool)

(assert (=> d!1602355 (= c!848994 ((_ is Nil!57466) (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))))))

(assert (=> d!1602355 (= (++!12539 (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) (_2!34412 (get!19957 lt!2053853))) lt!2054855)))

(declare-fun b!4974881 () Bool)

(assert (=> b!4974881 (= e!3109203 (or (not (= (_2!34412 (get!19957 lt!2053853)) Nil!57466)) (= lt!2054855 (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))))

(declare-fun b!4974880 () Bool)

(declare-fun res!2123709 () Bool)

(assert (=> b!4974880 (=> (not res!2123709) (not e!3109203))))

(assert (=> b!4974880 (= res!2123709 (= (size!38097 lt!2054855) (+ (size!38097 (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))) (size!38097 (_2!34412 (get!19957 lt!2053853))))))))

(declare-fun b!4974879 () Bool)

(assert (=> b!4974879 (= e!3109202 (Cons!57466 (h!63914 (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))) (++!12539 (t!369196 (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))) (_2!34412 (get!19957 lt!2053853)))))))

(assert (= (and d!1602355 c!848994) b!4974878))

(assert (= (and d!1602355 (not c!848994)) b!4974879))

(assert (= (and d!1602355 res!2123708) b!4974880))

(assert (= (and b!4974880 res!2123709) b!4974881))

(declare-fun m!6005012 () Bool)

(assert (=> d!1602355 m!6005012))

(assert (=> d!1602355 m!6004116))

(assert (=> d!1602355 m!6002616))

(declare-fun m!6005014 () Bool)

(assert (=> b!4974880 m!6005014))

(declare-fun m!6005016 () Bool)

(assert (=> b!4974880 m!6005016))

(assert (=> b!4974880 m!6001602))

(declare-fun m!6005018 () Bool)

(assert (=> b!4974879 m!6005018))

(assert (=> b!4973692 d!1602355))

(declare-fun d!1602361 () Bool)

(assert (=> d!1602361 (= lt!2053833 Nil!57466)))

(declare-fun lt!2054867 () Unit!148431)

(declare-fun choose!36729 (List!57590 List!57590 List!57590) Unit!148431)

(assert (=> d!1602361 (= lt!2054867 (choose!36729 lt!2053833 Nil!57466 lt!2053833))))

(assert (=> d!1602361 (isPrefix!5251 lt!2053833 lt!2053833)))

(assert (=> d!1602361 (= (lemmaIsPrefixSameLengthThenSameList!1215 lt!2053833 Nil!57466 lt!2053833) lt!2054867)))

(declare-fun bs!1183857 () Bool)

(assert (= bs!1183857 d!1602361))

(declare-fun m!6005040 () Bool)

(assert (=> bs!1183857 m!6005040))

(assert (=> bs!1183857 m!6002688))

(assert (=> bm!346881 d!1602361))

(assert (=> b!4973352 d!1601877))

(declare-fun b!4974896 () Bool)

(declare-fun e!3109212 () Bool)

(assert (=> b!4974896 (= e!3109212 (= (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115))))) (c!848513 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))))))))

(declare-fun b!4974897 () Bool)

(declare-fun e!3109213 () Bool)

(assert (=> b!4974897 (= e!3109213 (matchR!6643 (derivativeStep!3929 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115)))))) (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115)))))))))

(declare-fun b!4974898 () Bool)

(declare-fun e!3109215 () Bool)

(assert (=> b!4974898 (= e!3109215 (not (= (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115))))) (c!848513 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115))))))))))

(declare-fun b!4974899 () Bool)

(declare-fun e!3109214 () Bool)

(assert (=> b!4974899 (= e!3109214 e!3109215)))

(declare-fun res!2123725 () Bool)

(assert (=> b!4974899 (=> res!2123725 e!3109215)))

(declare-fun call!347030 () Bool)

(assert (=> b!4974899 (= res!2123725 call!347030)))

(declare-fun b!4974901 () Bool)

(declare-fun e!3109216 () Bool)

(declare-fun lt!2054868 () Bool)

(assert (=> b!4974901 (= e!3109216 (= lt!2054868 call!347030))))

(declare-fun b!4974902 () Bool)

(declare-fun res!2123724 () Bool)

(assert (=> b!4974902 (=> (not res!2123724) (not e!3109212))))

(assert (=> b!4974902 (= res!2123724 (isEmpty!30977 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115)))))))))

(declare-fun b!4974903 () Bool)

(declare-fun res!2123721 () Bool)

(assert (=> b!4974903 (=> res!2123721 e!3109215)))

(assert (=> b!4974903 (= res!2123721 (not (isEmpty!30977 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115))))))))))

(declare-fun b!4974904 () Bool)

(declare-fun res!2123722 () Bool)

(declare-fun e!3109217 () Bool)

(assert (=> b!4974904 (=> res!2123722 e!3109217)))

(assert (=> b!4974904 (= res!2123722 e!3109212)))

(declare-fun res!2123718 () Bool)

(assert (=> b!4974904 (=> (not res!2123718) (not e!3109212))))

(assert (=> b!4974904 (= res!2123718 lt!2054868)))

(declare-fun b!4974905 () Bool)

(declare-fun res!2123719 () Bool)

(assert (=> b!4974905 (=> res!2123719 e!3109217)))

(assert (=> b!4974905 (= res!2123719 (not ((_ is ElementMatch!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))))))))

(declare-fun e!3109211 () Bool)

(assert (=> b!4974905 (= e!3109211 e!3109217)))

(declare-fun b!4974906 () Bool)

(assert (=> b!4974906 (= e!3109213 (nullable!4627 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115))))))))

(declare-fun d!1602367 () Bool)

(assert (=> d!1602367 e!3109216))

(declare-fun c!848998 () Bool)

(assert (=> d!1602367 (= c!848998 ((_ is EmptyExpr!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115))))))))

(assert (=> d!1602367 (= lt!2054868 e!3109213)))

(declare-fun c!848999 () Bool)

(assert (=> d!1602367 (= c!848999 (isEmpty!30977 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115))))))))

(assert (=> d!1602367 (validRegex!5976 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))))))

(assert (=> d!1602367 (= (matchR!6643 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115))))) lt!2054868)))

(declare-fun b!4974900 () Bool)

(assert (=> b!4974900 (= e!3109216 e!3109211)))

(declare-fun c!849000 () Bool)

(assert (=> b!4974900 (= c!849000 ((_ is EmptyLang!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115))))))))

(declare-fun b!4974907 () Bool)

(assert (=> b!4974907 (= e!3109217 e!3109214)))

(declare-fun res!2123720 () Bool)

(assert (=> b!4974907 (=> (not res!2123720) (not e!3109214))))

(assert (=> b!4974907 (= res!2123720 (not lt!2054868))))

(declare-fun b!4974908 () Bool)

(assert (=> b!4974908 (= e!3109211 (not lt!2054868))))

(declare-fun b!4974909 () Bool)

(declare-fun res!2123723 () Bool)

(assert (=> b!4974909 (=> (not res!2123723) (not e!3109212))))

(assert (=> b!4974909 (= res!2123723 (not call!347030))))

(declare-fun bm!347025 () Bool)

(assert (=> bm!347025 (= call!347030 (isEmpty!30977 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115))))))))

(assert (= (and d!1602367 c!848999) b!4974906))

(assert (= (and d!1602367 (not c!848999)) b!4974897))

(assert (= (and d!1602367 c!848998) b!4974901))

(assert (= (and d!1602367 (not c!848998)) b!4974900))

(assert (= (and b!4974900 c!849000) b!4974908))

(assert (= (and b!4974900 (not c!849000)) b!4974905))

(assert (= (and b!4974905 (not res!2123719)) b!4974904))

(assert (= (and b!4974904 res!2123718) b!4974909))

(assert (= (and b!4974909 res!2123723) b!4974902))

(assert (= (and b!4974902 res!2123724) b!4974896))

(assert (= (and b!4974904 (not res!2123722)) b!4974907))

(assert (= (and b!4974907 res!2123720) b!4974899))

(assert (= (and b!4974899 (not res!2123725)) b!4974903))

(assert (= (and b!4974903 (not res!2123721)) b!4974898))

(assert (= (or b!4974901 b!4974899 b!4974909) bm!347025))

(declare-fun m!6005050 () Bool)

(assert (=> b!4974906 m!6005050))

(assert (=> b!4974902 m!6002316))

(declare-fun m!6005052 () Bool)

(assert (=> b!4974902 m!6005052))

(assert (=> b!4974902 m!6005052))

(declare-fun m!6005054 () Bool)

(assert (=> b!4974902 m!6005054))

(assert (=> b!4974898 m!6002316))

(declare-fun m!6005056 () Bool)

(assert (=> b!4974898 m!6005056))

(assert (=> b!4974897 m!6002316))

(assert (=> b!4974897 m!6005056))

(assert (=> b!4974897 m!6005056))

(declare-fun m!6005058 () Bool)

(assert (=> b!4974897 m!6005058))

(assert (=> b!4974897 m!6002316))

(assert (=> b!4974897 m!6005052))

(assert (=> b!4974897 m!6005058))

(assert (=> b!4974897 m!6005052))

(declare-fun m!6005060 () Bool)

(assert (=> b!4974897 m!6005060))

(assert (=> d!1602367 m!6002316))

(declare-fun m!6005062 () Bool)

(assert (=> d!1602367 m!6005062))

(declare-fun m!6005064 () Bool)

(assert (=> d!1602367 m!6005064))

(assert (=> b!4974896 m!6002316))

(assert (=> b!4974896 m!6005056))

(assert (=> bm!347025 m!6002316))

(assert (=> bm!347025 m!6005062))

(assert (=> b!4974903 m!6002316))

(assert (=> b!4974903 m!6005052))

(assert (=> b!4974903 m!6005052))

(assert (=> b!4974903 m!6005054))

(assert (=> b!4973486 d!1602367))

(assert (=> b!4973486 d!1601581))

(assert (=> b!4973486 d!1601935))

(assert (=> b!4973486 d!1601937))

(assert (=> d!1601505 d!1601539))

(assert (=> d!1601505 d!1601889))

(declare-fun d!1602371 () Bool)

(declare-fun lt!2054869 () Int)

(assert (=> d!1602371 (>= lt!2054869 0)))

(declare-fun e!3109221 () Int)

(assert (=> d!1602371 (= lt!2054869 e!3109221)))

(declare-fun c!849004 () Bool)

(assert (=> d!1602371 (= c!849004 ((_ is Nil!57466) lt!2054163))))

(assert (=> d!1602371 (= (size!38097 lt!2054163) lt!2054869)))

(declare-fun b!4974916 () Bool)

(assert (=> b!4974916 (= e!3109221 0)))

(declare-fun b!4974917 () Bool)

(assert (=> b!4974917 (= e!3109221 (+ 1 (size!38097 (t!369196 lt!2054163))))))

(assert (= (and d!1602371 c!849004) b!4974916))

(assert (= (and d!1602371 (not c!849004)) b!4974917))

(declare-fun m!6005070 () Bool)

(assert (=> b!4974917 m!6005070))

(assert (=> b!4973693 d!1602371))

(declare-fun d!1602375 () Bool)

(declare-fun lt!2054870 () Int)

(assert (=> d!1602375 (>= lt!2054870 0)))

(declare-fun e!3109223 () Int)

(assert (=> d!1602375 (= lt!2054870 e!3109223)))

(declare-fun c!849006 () Bool)

(assert (=> d!1602375 (= c!849006 ((_ is Nil!57466) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))

(assert (=> d!1602375 (= (size!38097 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) lt!2054870)))

(declare-fun b!4974920 () Bool)

(assert (=> b!4974920 (= e!3109223 0)))

(declare-fun b!4974921 () Bool)

(assert (=> b!4974921 (= e!3109223 (+ 1 (size!38097 (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))))

(assert (= (and d!1602375 c!849006) b!4974920))

(assert (= (and d!1602375 (not c!849006)) b!4974921))

(assert (=> b!4974921 m!6005016))

(assert (=> b!4973693 d!1602375))

(assert (=> b!4973693 d!1601335))

(assert (=> b!4973353 d!1601563))

(declare-fun d!1602379 () Bool)

(assert (=> d!1602379 (= (get!19957 (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342))) (v!50457 (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342))))))

(assert (=> b!4973353 d!1602379))

(assert (=> b!4973353 d!1602191))

(assert (=> b!4973353 d!1601201))

(declare-fun d!1602381 () Bool)

(declare-fun lt!2054871 () Int)

(assert (=> d!1602381 (>= lt!2054871 0)))

(declare-fun e!3109225 () Int)

(assert (=> d!1602381 (= lt!2054871 e!3109225)))

(declare-fun c!849008 () Bool)

(assert (=> d!1602381 (= c!849008 ((_ is Nil!57466) (_2!34412 (get!19957 lt!2054011))))))

(assert (=> d!1602381 (= (size!38097 (_2!34412 (get!19957 lt!2054011))) lt!2054871)))

(declare-fun b!4974924 () Bool)

(assert (=> b!4974924 (= e!3109225 0)))

(declare-fun b!4974925 () Bool)

(assert (=> b!4974925 (= e!3109225 (+ 1 (size!38097 (t!369196 (_2!34412 (get!19957 lt!2054011))))))))

(assert (= (and d!1602381 c!849008) b!4974924))

(assert (= (and d!1602381 (not c!849008)) b!4974925))

(declare-fun m!6005078 () Bool)

(assert (=> b!4974925 m!6005078))

(assert (=> b!4973209 d!1602381))

(assert (=> b!4973209 d!1601617))

(assert (=> b!4973209 d!1601269))

(assert (=> b!4973797 d!1602315))

(assert (=> b!4973797 d!1602313))

(assert (=> b!4973797 d!1602105))

(assert (=> b!4973797 d!1601201))

(declare-fun d!1602385 () Bool)

(assert (=> d!1602385 (= (isEmpty!30975 (maxPrefixOneRule!3636 thiss!15247 (h!63915 rulesArg!259) (list!18383 input!1342))) (not ((_ is Some!14462) (maxPrefixOneRule!3636 thiss!15247 (h!63915 rulesArg!259) (list!18383 input!1342)))))))

(assert (=> d!1601451 d!1602385))

(declare-fun b!4974929 () Bool)

(declare-fun res!2123731 () Bool)

(declare-fun e!3109227 () Bool)

(assert (=> b!4974929 (=> (not res!2123731) (not e!3109227))))

(assert (=> b!4974929 (= res!2123731 (not (isEmpty!30980 (left!41922 (left!41922 (c!848514 totalInput!464))))))))

(declare-fun b!4974930 () Bool)

(declare-fun res!2123730 () Bool)

(assert (=> b!4974930 (=> (not res!2123730) (not e!3109227))))

(assert (=> b!4974930 (= res!2123730 (isBalanced!4209 (right!42252 (left!41922 (c!848514 totalInput!464)))))))

(declare-fun d!1602387 () Bool)

(declare-fun res!2123729 () Bool)

(declare-fun e!3109228 () Bool)

(assert (=> d!1602387 (=> res!2123729 e!3109228)))

(assert (=> d!1602387 (= res!2123729 (not ((_ is Node!15152) (left!41922 (c!848514 totalInput!464)))))))

(assert (=> d!1602387 (= (isBalanced!4209 (left!41922 (c!848514 totalInput!464))) e!3109228)))

(declare-fun b!4974931 () Bool)

(assert (=> b!4974931 (= e!3109227 (not (isEmpty!30980 (right!42252 (left!41922 (c!848514 totalInput!464))))))))

(declare-fun b!4974932 () Bool)

(assert (=> b!4974932 (= e!3109228 e!3109227)))

(declare-fun res!2123732 () Bool)

(assert (=> b!4974932 (=> (not res!2123732) (not e!3109227))))

(assert (=> b!4974932 (= res!2123732 (<= (- 1) (- (height!2020 (left!41922 (left!41922 (c!848514 totalInput!464)))) (height!2020 (right!42252 (left!41922 (c!848514 totalInput!464)))))))))

(declare-fun b!4974933 () Bool)

(declare-fun res!2123734 () Bool)

(assert (=> b!4974933 (=> (not res!2123734) (not e!3109227))))

(assert (=> b!4974933 (= res!2123734 (isBalanced!4209 (left!41922 (left!41922 (c!848514 totalInput!464)))))))

(declare-fun b!4974934 () Bool)

(declare-fun res!2123733 () Bool)

(assert (=> b!4974934 (=> (not res!2123733) (not e!3109227))))

(assert (=> b!4974934 (= res!2123733 (<= (- (height!2020 (left!41922 (left!41922 (c!848514 totalInput!464)))) (height!2020 (right!42252 (left!41922 (c!848514 totalInput!464))))) 1))))

(assert (= (and d!1602387 (not res!2123729)) b!4974932))

(assert (= (and b!4974932 res!2123732) b!4974934))

(assert (= (and b!4974934 res!2123733) b!4974933))

(assert (= (and b!4974933 res!2123734) b!4974930))

(assert (= (and b!4974930 res!2123730) b!4974929))

(assert (= (and b!4974929 res!2123731) b!4974931))

(declare-fun m!6005090 () Bool)

(assert (=> b!4974930 m!6005090))

(declare-fun m!6005092 () Bool)

(assert (=> b!4974933 m!6005092))

(assert (=> b!4974934 m!6003674))

(assert (=> b!4974934 m!6003676))

(declare-fun m!6005096 () Bool)

(assert (=> b!4974931 m!6005096))

(declare-fun m!6005098 () Bool)

(assert (=> b!4974929 m!6005098))

(assert (=> b!4974932 m!6003674))

(assert (=> b!4974932 m!6003676))

(assert (=> b!4973544 d!1602387))

(declare-fun d!1602393 () Bool)

(assert (=> d!1602393 (isPrefix!5251 lt!2053833 lt!2053833)))

(declare-fun lt!2054873 () Unit!148431)

(assert (=> d!1602393 (= lt!2054873 (choose!36709 lt!2053833 lt!2053833))))

(assert (=> d!1602393 (= (lemmaIsPrefixRefl!3575 lt!2053833 lt!2053833) lt!2054873)))

(declare-fun bs!1183858 () Bool)

(assert (= bs!1183858 d!1602393))

(assert (=> bs!1183858 m!6002688))

(declare-fun m!6005100 () Bool)

(assert (=> bs!1183858 m!6005100))

(assert (=> bm!346884 d!1602393))

(declare-fun d!1602395 () Bool)

(declare-fun lt!2054874 () Int)

(assert (=> d!1602395 (>= lt!2054874 0)))

(declare-fun e!3109232 () Int)

(assert (=> d!1602395 (= lt!2054874 e!3109232)))

(declare-fun c!849009 () Bool)

(assert (=> d!1602395 (= c!849009 ((_ is Nil!57466) lt!2053811))))

(assert (=> d!1602395 (= (size!38097 lt!2053811) lt!2054874)))

(declare-fun b!4974939 () Bool)

(assert (=> b!4974939 (= e!3109232 0)))

(declare-fun b!4974940 () Bool)

(assert (=> b!4974940 (= e!3109232 (+ 1 (size!38097 (t!369196 lt!2053811))))))

(assert (= (and d!1602395 c!849009) b!4974939))

(assert (= (and d!1602395 (not c!849009)) b!4974940))

(declare-fun m!6005102 () Bool)

(assert (=> b!4974940 m!6005102))

(assert (=> b!4973549 d!1602395))

(declare-fun d!1602397 () Bool)

(declare-fun lt!2054875 () Int)

(assert (=> d!1602397 (>= lt!2054875 0)))

(declare-fun e!3109233 () Int)

(assert (=> d!1602397 (= lt!2054875 e!3109233)))

(declare-fun c!849010 () Bool)

(assert (=> d!1602397 (= c!849010 ((_ is Nil!57466) lt!2053809))))

(assert (=> d!1602397 (= (size!38097 lt!2053809) lt!2054875)))

(declare-fun b!4974941 () Bool)

(assert (=> b!4974941 (= e!3109233 0)))

(declare-fun b!4974942 () Bool)

(assert (=> b!4974942 (= e!3109233 (+ 1 (size!38097 (t!369196 lt!2053809))))))

(assert (= (and d!1602397 c!849010) b!4974941))

(assert (= (and d!1602397 (not c!849010)) b!4974942))

(declare-fun m!6005104 () Bool)

(assert (=> b!4974942 m!6005104))

(assert (=> b!4973549 d!1602397))

(assert (=> b!4973257 d!1602321))

(assert (=> b!4973257 d!1601607))

(declare-fun d!1602399 () Bool)

(assert (=> d!1602399 (= (isEmpty!30975 (maxPrefixZipper!793 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342))) (not ((_ is Some!14462) (maxPrefixZipper!793 thiss!15247 (t!369197 rulesArg!259) (list!18383 input!1342)))))))

(assert (=> d!1601429 d!1602399))

(declare-fun d!1602403 () Bool)

(declare-fun lt!2054876 () Int)

(assert (=> d!1602403 (>= lt!2054876 0)))

(declare-fun e!3109234 () Int)

(assert (=> d!1602403 (= lt!2054876 e!3109234)))

(declare-fun c!849011 () Bool)

(assert (=> d!1602403 (= c!849011 ((_ is Nil!57466) (t!369196 (list!18383 totalInput!464))))))

(assert (=> d!1602403 (= (size!38097 (t!369196 (list!18383 totalInput!464))) lt!2054876)))

(declare-fun b!4974943 () Bool)

(assert (=> b!4974943 (= e!3109234 0)))

(declare-fun b!4974944 () Bool)

(assert (=> b!4974944 (= e!3109234 (+ 1 (size!38097 (t!369196 (t!369196 (list!18383 totalInput!464))))))))

(assert (= (and d!1602403 c!849011) b!4974943))

(assert (= (and d!1602403 (not c!849011)) b!4974944))

(declare-fun m!6005108 () Bool)

(assert (=> b!4974944 m!6005108))

(assert (=> b!4973349 d!1602403))

(declare-fun d!1602407 () Bool)

(assert (not d!1602407))

(assert (=> b!4973758 d!1602407))

(declare-fun b!4974948 () Bool)

(declare-fun e!3109238 () Bool)

(assert (=> b!4974948 (= e!3109238 (= (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151))))) (c!848513 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))))))))

(declare-fun b!4974949 () Bool)

(declare-fun e!3109239 () Bool)

(assert (=> b!4974949 (= e!3109239 (matchR!6643 (derivativeStep!3929 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))) (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151)))))) (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151)))))))))

(declare-fun b!4974950 () Bool)

(declare-fun e!3109241 () Bool)

(assert (=> b!4974950 (= e!3109241 (not (= (head!10675 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151))))) (c!848513 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151))))))))))

(declare-fun b!4974951 () Bool)

(declare-fun e!3109240 () Bool)

(assert (=> b!4974951 (= e!3109240 e!3109241)))

(declare-fun res!2123747 () Bool)

(assert (=> b!4974951 (=> res!2123747 e!3109241)))

(declare-fun call!347031 () Bool)

(assert (=> b!4974951 (= res!2123747 call!347031)))

(declare-fun b!4974953 () Bool)

(declare-fun e!3109242 () Bool)

(declare-fun lt!2054883 () Bool)

(assert (=> b!4974953 (= e!3109242 (= lt!2054883 call!347031))))

(declare-fun b!4974954 () Bool)

(declare-fun res!2123746 () Bool)

(assert (=> b!4974954 (=> (not res!2123746) (not e!3109238))))

(assert (=> b!4974954 (= res!2123746 (isEmpty!30977 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151)))))))))

(declare-fun b!4974955 () Bool)

(declare-fun res!2123743 () Bool)

(assert (=> b!4974955 (=> res!2123743 e!3109241)))

(assert (=> b!4974955 (= res!2123743 (not (isEmpty!30977 (tail!9808 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151))))))))))

(declare-fun b!4974956 () Bool)

(declare-fun res!2123744 () Bool)

(declare-fun e!3109243 () Bool)

(assert (=> b!4974956 (=> res!2123744 e!3109243)))

(assert (=> b!4974956 (= res!2123744 e!3109238)))

(declare-fun res!2123740 () Bool)

(assert (=> b!4974956 (=> (not res!2123740) (not e!3109238))))

(assert (=> b!4974956 (= res!2123740 lt!2054883)))

(declare-fun b!4974957 () Bool)

(declare-fun res!2123741 () Bool)

(assert (=> b!4974957 (=> res!2123741 e!3109243)))

(assert (=> b!4974957 (= res!2123741 (not ((_ is ElementMatch!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))))))))

(declare-fun e!3109237 () Bool)

(assert (=> b!4974957 (= e!3109237 e!3109243)))

(declare-fun b!4974958 () Bool)

(assert (=> b!4974958 (= e!3109239 (nullable!4627 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151))))))))

(declare-fun d!1602409 () Bool)

(assert (=> d!1602409 e!3109242))

(declare-fun c!849013 () Bool)

(assert (=> d!1602409 (= c!849013 ((_ is EmptyExpr!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151))))))))

(assert (=> d!1602409 (= lt!2054883 e!3109239)))

(declare-fun c!849014 () Bool)

(assert (=> d!1602409 (= c!849014 (isEmpty!30977 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151))))))))

(assert (=> d!1602409 (validRegex!5976 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))))))

(assert (=> d!1602409 (= (matchR!6643 (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151))))) lt!2054883)))

(declare-fun b!4974952 () Bool)

(assert (=> b!4974952 (= e!3109242 e!3109237)))

(declare-fun c!849015 () Bool)

(assert (=> b!4974952 (= c!849015 ((_ is EmptyLang!13633) (regex!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151))))))))

(declare-fun b!4974959 () Bool)

(assert (=> b!4974959 (= e!3109243 e!3109240)))

(declare-fun res!2123742 () Bool)

(assert (=> b!4974959 (=> (not res!2123742) (not e!3109240))))

(assert (=> b!4974959 (= res!2123742 (not lt!2054883))))

(declare-fun b!4974960 () Bool)

(assert (=> b!4974960 (= e!3109237 (not lt!2054883))))

(declare-fun b!4974961 () Bool)

(declare-fun res!2123745 () Bool)

(assert (=> b!4974961 (=> (not res!2123745) (not e!3109238))))

(assert (=> b!4974961 (= res!2123745 (not call!347031))))

(declare-fun bm!347026 () Bool)

(assert (=> bm!347026 (= call!347031 (isEmpty!30977 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151))))))))

(assert (= (and d!1602409 c!849014) b!4974958))

(assert (= (and d!1602409 (not c!849014)) b!4974949))

(assert (= (and d!1602409 c!849013) b!4974953))

(assert (= (and d!1602409 (not c!849013)) b!4974952))

(assert (= (and b!4974952 c!849015) b!4974960))

(assert (= (and b!4974952 (not c!849015)) b!4974957))

(assert (= (and b!4974957 (not res!2123741)) b!4974956))

(assert (= (and b!4974956 res!2123740) b!4974961))

(assert (= (and b!4974961 res!2123745) b!4974954))

(assert (= (and b!4974954 res!2123746) b!4974948))

(assert (= (and b!4974956 (not res!2123744)) b!4974959))

(assert (= (and b!4974959 res!2123742) b!4974951))

(assert (= (and b!4974951 (not res!2123747)) b!4974955))

(assert (= (and b!4974955 (not res!2123743)) b!4974950))

(assert (= (or b!4974953 b!4974951 b!4974961) bm!347026))

(declare-fun m!6005122 () Bool)

(assert (=> b!4974958 m!6005122))

(assert (=> b!4974954 m!6002566))

(declare-fun m!6005124 () Bool)

(assert (=> b!4974954 m!6005124))

(assert (=> b!4974954 m!6005124))

(declare-fun m!6005126 () Bool)

(assert (=> b!4974954 m!6005126))

(assert (=> b!4974950 m!6002566))

(declare-fun m!6005128 () Bool)

(assert (=> b!4974950 m!6005128))

(assert (=> b!4974949 m!6002566))

(assert (=> b!4974949 m!6005128))

(assert (=> b!4974949 m!6005128))

(declare-fun m!6005130 () Bool)

(assert (=> b!4974949 m!6005130))

(assert (=> b!4974949 m!6002566))

(assert (=> b!4974949 m!6005124))

(assert (=> b!4974949 m!6005130))

(assert (=> b!4974949 m!6005124))

(declare-fun m!6005132 () Bool)

(assert (=> b!4974949 m!6005132))

(assert (=> d!1602409 m!6002566))

(declare-fun m!6005134 () Bool)

(assert (=> d!1602409 m!6005134))

(declare-fun m!6005136 () Bool)

(assert (=> d!1602409 m!6005136))

(assert (=> b!4974948 m!6002566))

(assert (=> b!4974948 m!6005128))

(assert (=> bm!347026 m!6002566))

(assert (=> bm!347026 m!6005134))

(assert (=> b!4974955 m!6002566))

(assert (=> b!4974955 m!6005124))

(assert (=> b!4974955 m!6005124))

(assert (=> b!4974955 m!6005126))

(assert (=> b!4973645 d!1602409))

(assert (=> b!4973645 d!1601681))

(assert (=> b!4973645 d!1602009))

(assert (=> b!4973645 d!1602011))

(assert (=> bm!346863 d!1601539))

(assert (=> b!4973808 d!1601505))

(assert (=> b!4973808 d!1601507))

(assert (=> b!4973808 d!1601509))

(assert (=> b!4973808 d!1601511))

(declare-fun b!4974969 () Bool)

(declare-fun e!3109247 () List!57590)

(assert (=> b!4974969 (= e!3109247 (++!12539 (list!18385 (left!41922 (c!848514 (_2!34411 (get!19958 lt!2053839))))) (list!18385 (right!42252 (c!848514 (_2!34411 (get!19958 lt!2053839)))))))))

(declare-fun b!4974967 () Bool)

(declare-fun e!3109246 () List!57590)

(assert (=> b!4974967 (= e!3109246 e!3109247)))

(declare-fun c!849018 () Bool)

(assert (=> b!4974967 (= c!849018 ((_ is Leaf!25177) (c!848514 (_2!34411 (get!19958 lt!2053839)))))))

(declare-fun d!1602413 () Bool)

(declare-fun c!849017 () Bool)

(assert (=> d!1602413 (= c!849017 ((_ is Empty!15152) (c!848514 (_2!34411 (get!19958 lt!2053839)))))))

(assert (=> d!1602413 (= (list!18385 (c!848514 (_2!34411 (get!19958 lt!2053839)))) e!3109246)))

(declare-fun b!4974968 () Bool)

(assert (=> b!4974968 (= e!3109247 (list!18387 (xs!18478 (c!848514 (_2!34411 (get!19958 lt!2053839))))))))

(declare-fun b!4974966 () Bool)

(assert (=> b!4974966 (= e!3109246 Nil!57466)))

(assert (= (and d!1602413 c!849017) b!4974966))

(assert (= (and d!1602413 (not c!849017)) b!4974967))

(assert (= (and b!4974967 c!849018) b!4974968))

(assert (= (and b!4974967 (not c!849018)) b!4974969))

(declare-fun m!6005152 () Bool)

(assert (=> b!4974969 m!6005152))

(declare-fun m!6005154 () Bool)

(assert (=> b!4974969 m!6005154))

(assert (=> b!4974969 m!6005152))

(assert (=> b!4974969 m!6005154))

(declare-fun m!6005156 () Bool)

(assert (=> b!4974969 m!6005156))

(declare-fun m!6005158 () Bool)

(assert (=> b!4974968 m!6005158))

(assert (=> d!1601305 d!1602413))

(declare-fun d!1602419 () Bool)

(declare-fun lt!2054886 () Int)

(assert (=> d!1602419 (>= lt!2054886 0)))

(declare-fun e!3109249 () Int)

(assert (=> d!1602419 (= lt!2054886 e!3109249)))

(declare-fun c!849019 () Bool)

(assert (=> d!1602419 (= c!849019 ((_ is Nil!57466) (_2!34412 (get!19957 lt!2054040))))))

(assert (=> d!1602419 (= (size!38097 (_2!34412 (get!19957 lt!2054040))) lt!2054886)))

(declare-fun b!4974971 () Bool)

(assert (=> b!4974971 (= e!3109249 0)))

(declare-fun b!4974972 () Bool)

(assert (=> b!4974972 (= e!3109249 (+ 1 (size!38097 (t!369196 (_2!34412 (get!19957 lt!2054040))))))))

(assert (= (and d!1602419 c!849019) b!4974971))

(assert (= (and d!1602419 (not c!849019)) b!4974972))

(declare-fun m!6005160 () Bool)

(assert (=> b!4974972 m!6005160))

(assert (=> b!4973332 d!1602419))

(assert (=> b!4973332 d!1601701))

(assert (=> b!4973332 d!1601981))

(declare-fun d!1602421 () Bool)

(declare-fun choose!36731 (Int) Bool)

(assert (=> d!1602421 (= (Forall2!1292 lambda!247509) (choose!36731 lambda!247509))))

(declare-fun bs!1183862 () Bool)

(assert (= bs!1183862 d!1602421))

(declare-fun m!6005170 () Bool)

(assert (=> bs!1183862 m!6005170))

(assert (=> d!1601243 d!1602421))

(declare-fun d!1602425 () Bool)

(declare-fun lt!2054888 () Int)

(assert (=> d!1602425 (>= lt!2054888 0)))

(declare-fun e!3109252 () Int)

(assert (=> d!1602425 (= lt!2054888 e!3109252)))

(declare-fun c!849021 () Bool)

(assert (=> d!1602425 (= c!849021 ((_ is Nil!57466) (innerList!15240 (xs!18478 (c!848514 input!1342)))))))

(assert (=> d!1602425 (= (size!38097 (innerList!15240 (xs!18478 (c!848514 input!1342)))) lt!2054888)))

(declare-fun b!4974977 () Bool)

(assert (=> b!4974977 (= e!3109252 0)))

(declare-fun b!4974978 () Bool)

(assert (=> b!4974978 (= e!3109252 (+ 1 (size!38097 (t!369196 (innerList!15240 (xs!18478 (c!848514 input!1342)))))))))

(assert (= (and d!1602425 c!849021) b!4974977))

(assert (= (and d!1602425 (not c!849021)) b!4974978))

(declare-fun m!6005182 () Bool)

(assert (=> b!4974978 m!6005182))

(assert (=> d!1601313 d!1602425))

(declare-fun d!1602427 () Bool)

(assert (=> d!1602427 (= (isEmpty!30975 lt!2054011) (not ((_ is Some!14462) lt!2054011)))))

(assert (=> d!1601245 d!1602427))

(declare-fun d!1602431 () Bool)

(assert (=> d!1602431 (= (isEmpty!30977 (_1!34415 lt!2054010)) ((_ is Nil!57466) (_1!34415 lt!2054010)))))

(assert (=> d!1601245 d!1602431))

(declare-fun d!1602433 () Bool)

(declare-fun lt!2054891 () tuple2!62224)

(assert (=> d!1602433 (= (++!12539 (_1!34415 lt!2054891) (_2!34415 lt!2054891)) lt!2053676)))

(assert (=> d!1602433 (= lt!2054891 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 0 lt!2053676 lt!2053676 (sizeTr!364 lt!2053676 0)))))

(declare-fun lt!2054894 () Unit!148431)

(declare-fun lt!2054896 () Unit!148431)

(assert (=> d!1602433 (= lt!2054894 lt!2054896)))

(declare-fun lt!2054893 () List!57590)

(declare-fun lt!2054889 () Int)

(assert (=> d!1602433 (= (sizeTr!364 lt!2054893 lt!2054889) (+ (size!38097 lt!2054893) lt!2054889))))

(assert (=> d!1602433 (= lt!2054896 (lemmaSizeTrEqualsSize!363 lt!2054893 lt!2054889))))

(assert (=> d!1602433 (= lt!2054889 0)))

(assert (=> d!1602433 (= lt!2054893 Nil!57466)))

(declare-fun lt!2054890 () Unit!148431)

(declare-fun lt!2054895 () Unit!148431)

(assert (=> d!1602433 (= lt!2054890 lt!2054895)))

(declare-fun lt!2054892 () Int)

(assert (=> d!1602433 (= (sizeTr!364 lt!2053676 lt!2054892) (+ (size!38097 lt!2053676) lt!2054892))))

(assert (=> d!1602433 (= lt!2054895 (lemmaSizeTrEqualsSize!363 lt!2053676 lt!2054892))))

(assert (=> d!1602433 (= lt!2054892 0)))

(assert (=> d!1602433 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1602433 (= (findLongestMatch!1704 (regex!8400 (h!63915 rulesArg!259)) lt!2053676) lt!2054891)))

(declare-fun bs!1183863 () Bool)

(assert (= bs!1183863 d!1602433))

(declare-fun m!6005196 () Bool)

(assert (=> bs!1183863 m!6005196))

(assert (=> bs!1183863 m!6001604))

(declare-fun m!6005198 () Bool)

(assert (=> bs!1183863 m!6005198))

(declare-fun m!6005200 () Bool)

(assert (=> bs!1183863 m!6005200))

(declare-fun m!6005202 () Bool)

(assert (=> bs!1183863 m!6005202))

(declare-fun m!6005204 () Bool)

(assert (=> bs!1183863 m!6005204))

(assert (=> bs!1183863 m!6005200))

(declare-fun m!6005206 () Bool)

(assert (=> bs!1183863 m!6005206))

(declare-fun m!6005208 () Bool)

(assert (=> bs!1183863 m!6005208))

(declare-fun m!6005212 () Bool)

(assert (=> bs!1183863 m!6005212))

(assert (=> bs!1183863 m!6002460))

(assert (=> d!1601245 d!1602433))

(assert (=> d!1601245 d!1601455))

(assert (=> b!4973497 d!1601679))

(assert (=> d!1601321 d!1601807))

(declare-fun b!4974990 () Bool)

(declare-fun e!3109257 () Bool)

(assert (=> b!4974990 (= e!3109257 (>= (size!38097 lt!2054047) (size!38097 lt!2054045)))))

(declare-fun b!4974988 () Bool)

(declare-fun res!2123752 () Bool)

(declare-fun e!3109259 () Bool)

(assert (=> b!4974988 (=> (not res!2123752) (not e!3109259))))

(assert (=> b!4974988 (= res!2123752 (= (head!10675 lt!2054045) (head!10675 lt!2054047)))))

(declare-fun b!4974989 () Bool)

(assert (=> b!4974989 (= e!3109259 (isPrefix!5251 (tail!9808 lt!2054045) (tail!9808 lt!2054047)))))

(declare-fun d!1602437 () Bool)

(assert (=> d!1602437 e!3109257))

(declare-fun res!2123753 () Bool)

(assert (=> d!1602437 (=> res!2123753 e!3109257)))

(declare-fun lt!2054897 () Bool)

(assert (=> d!1602437 (= res!2123753 (not lt!2054897))))

(declare-fun e!3109258 () Bool)

(assert (=> d!1602437 (= lt!2054897 e!3109258)))

(declare-fun res!2123755 () Bool)

(assert (=> d!1602437 (=> res!2123755 e!3109258)))

(assert (=> d!1602437 (= res!2123755 ((_ is Nil!57466) lt!2054045))))

(assert (=> d!1602437 (= (isPrefix!5251 lt!2054045 lt!2054047) lt!2054897)))

(declare-fun b!4974987 () Bool)

(assert (=> b!4974987 (= e!3109258 e!3109259)))

(declare-fun res!2123754 () Bool)

(assert (=> b!4974987 (=> (not res!2123754) (not e!3109259))))

(assert (=> b!4974987 (= res!2123754 (not ((_ is Nil!57466) lt!2054047)))))

(assert (= (and d!1602437 (not res!2123755)) b!4974987))

(assert (= (and b!4974987 res!2123754) b!4974988))

(assert (= (and b!4974988 res!2123752) b!4974989))

(assert (= (and d!1602437 (not res!2123753)) b!4974990))

(declare-fun m!6005220 () Bool)

(assert (=> b!4974990 m!6005220))

(declare-fun m!6005222 () Bool)

(assert (=> b!4974990 m!6005222))

(declare-fun m!6005224 () Bool)

(assert (=> b!4974988 m!6005224))

(declare-fun m!6005226 () Bool)

(assert (=> b!4974988 m!6005226))

(declare-fun m!6005228 () Bool)

(assert (=> b!4974989 m!6005228))

(declare-fun m!6005230 () Bool)

(assert (=> b!4974989 m!6005230))

(assert (=> b!4974989 m!6005228))

(assert (=> b!4974989 m!6005230))

(declare-fun m!6005232 () Bool)

(assert (=> b!4974989 m!6005232))

(assert (=> d!1601321 d!1602437))

(declare-fun d!1602441 () Bool)

(assert (=> d!1602441 (= (isDefined!11376 (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342))) (not (isEmpty!30975 (maxPrefixZipper!793 thiss!15247 (t!369197 (t!369197 rulesArg!259)) (list!18383 input!1342)))))))

(declare-fun bs!1183864 () Bool)

(assert (= bs!1183864 d!1602441))

(assert (=> bs!1183864 m!6002084))

(declare-fun m!6005234 () Bool)

(assert (=> bs!1183864 m!6005234))

(assert (=> d!1601321 d!1602441))

(assert (=> d!1601321 d!1601201))

(assert (=> d!1601321 d!1602191))

(assert (=> d!1601321 d!1601877))

(declare-fun d!1602443 () Bool)

(assert (=> d!1602443 (isPrefix!5251 lt!2054045 lt!2054047)))

(declare-fun lt!2054899 () Unit!148431)

(assert (=> d!1602443 (= lt!2054899 (choose!36709 lt!2054045 lt!2054047))))

(assert (=> d!1602443 (= (lemmaIsPrefixRefl!3575 lt!2054045 lt!2054047) lt!2054899)))

(declare-fun bs!1183865 () Bool)

(assert (= bs!1183865 d!1602443))

(assert (=> bs!1183865 m!6002102))

(declare-fun m!6005240 () Bool)

(assert (=> bs!1183865 m!6005240))

(assert (=> d!1601321 d!1602443))

(declare-fun d!1602445 () Bool)

(assert (=> d!1602445 (= (Forall!1768 lambda!247516) (choose!36719 lambda!247516))))

(declare-fun bs!1183866 () Bool)

(assert (= bs!1183866 d!1602445))

(declare-fun m!6005244 () Bool)

(assert (=> bs!1183866 m!6005244))

(assert (=> d!1601301 d!1602445))

(declare-fun d!1602449 () Bool)

(declare-fun c!849031 () Bool)

(assert (=> d!1602449 (= c!849031 ((_ is Node!15152) (left!41922 (left!41922 (c!848514 input!1342)))))))

(declare-fun e!3109265 () Bool)

(assert (=> d!1602449 (= (inv!75123 (left!41922 (left!41922 (c!848514 input!1342)))) e!3109265)))

(declare-fun b!4975001 () Bool)

(assert (=> b!4975001 (= e!3109265 (inv!75128 (left!41922 (left!41922 (c!848514 input!1342)))))))

(declare-fun b!4975002 () Bool)

(declare-fun e!3109266 () Bool)

(assert (=> b!4975002 (= e!3109265 e!3109266)))

(declare-fun res!2123756 () Bool)

(assert (=> b!4975002 (= res!2123756 (not ((_ is Leaf!25177) (left!41922 (left!41922 (c!848514 input!1342))))))))

(assert (=> b!4975002 (=> res!2123756 e!3109266)))

(declare-fun b!4975003 () Bool)

(assert (=> b!4975003 (= e!3109266 (inv!75129 (left!41922 (left!41922 (c!848514 input!1342)))))))

(assert (= (and d!1602449 c!849031) b!4975001))

(assert (= (and d!1602449 (not c!849031)) b!4975002))

(assert (= (and b!4975002 (not res!2123756)) b!4975003))

(declare-fun m!6005250 () Bool)

(assert (=> b!4975001 m!6005250))

(declare-fun m!6005252 () Bool)

(assert (=> b!4975003 m!6005252))

(assert (=> b!4973855 d!1602449))

(declare-fun d!1602455 () Bool)

(declare-fun c!849033 () Bool)

(assert (=> d!1602455 (= c!849033 ((_ is Node!15152) (right!42252 (left!41922 (c!848514 input!1342)))))))

(declare-fun e!3109268 () Bool)

(assert (=> d!1602455 (= (inv!75123 (right!42252 (left!41922 (c!848514 input!1342)))) e!3109268)))

(declare-fun b!4975006 () Bool)

(assert (=> b!4975006 (= e!3109268 (inv!75128 (right!42252 (left!41922 (c!848514 input!1342)))))))

(declare-fun b!4975007 () Bool)

(declare-fun e!3109269 () Bool)

(assert (=> b!4975007 (= e!3109268 e!3109269)))

(declare-fun res!2123757 () Bool)

(assert (=> b!4975007 (= res!2123757 (not ((_ is Leaf!25177) (right!42252 (left!41922 (c!848514 input!1342))))))))

(assert (=> b!4975007 (=> res!2123757 e!3109269)))

(declare-fun b!4975008 () Bool)

(assert (=> b!4975008 (= e!3109269 (inv!75129 (right!42252 (left!41922 (c!848514 input!1342)))))))

(assert (= (and d!1602455 c!849033) b!4975006))

(assert (= (and d!1602455 (not c!849033)) b!4975007))

(assert (= (and b!4975007 (not res!2123757)) b!4975008))

(declare-fun m!6005256 () Bool)

(assert (=> b!4975006 m!6005256))

(declare-fun m!6005258 () Bool)

(assert (=> b!4975008 m!6005258))

(assert (=> b!4973855 d!1602455))

(declare-fun d!1602459 () Bool)

(declare-fun lt!2054904 () Int)

(assert (=> d!1602459 (>= lt!2054904 0)))

(declare-fun e!3109271 () Int)

(assert (=> d!1602459 (= lt!2054904 e!3109271)))

(declare-fun c!849035 () Bool)

(assert (=> d!1602459 (= c!849035 ((_ is Nil!57466) (t!369196 lt!2053833)))))

(assert (=> d!1602459 (= (size!38097 (t!369196 lt!2053833)) lt!2054904)))

(declare-fun b!4975011 () Bool)

(assert (=> b!4975011 (= e!3109271 0)))

(declare-fun b!4975012 () Bool)

(assert (=> b!4975012 (= e!3109271 (+ 1 (size!38097 (t!369196 (t!369196 lt!2053833)))))))

(assert (= (and d!1602459 c!849035) b!4975011))

(assert (= (and d!1602459 (not c!849035)) b!4975012))

(declare-fun m!6005262 () Bool)

(assert (=> b!4975012 m!6005262))

(assert (=> b!4973760 d!1602459))

(declare-fun d!1602463 () Bool)

(declare-fun lt!2054906 () Int)

(assert (=> d!1602463 (>= lt!2054906 0)))

(declare-fun e!3109272 () Int)

(assert (=> d!1602463 (= lt!2054906 e!3109272)))

(declare-fun c!849036 () Bool)

(assert (=> d!1602463 (= c!849036 ((_ is Nil!57466) (_2!34412 (get!19957 lt!2054115))))))

(assert (=> d!1602463 (= (size!38097 (_2!34412 (get!19957 lt!2054115))) lt!2054906)))

(declare-fun b!4975013 () Bool)

(assert (=> b!4975013 (= e!3109272 0)))

(declare-fun b!4975014 () Bool)

(assert (=> b!4975014 (= e!3109272 (+ 1 (size!38097 (t!369196 (_2!34412 (get!19957 lt!2054115))))))))

(assert (= (and d!1602463 c!849036) b!4975013))

(assert (= (and d!1602463 (not c!849036)) b!4975014))

(declare-fun m!6005266 () Bool)

(assert (=> b!4975014 m!6005266))

(assert (=> b!4973487 d!1602463))

(assert (=> b!4973487 d!1601581))

(assert (=> b!4973487 d!1601981))

(declare-fun d!1602467 () Bool)

(assert (=> d!1602467 (= (isEmpty!30977 (_1!34415 lt!2054226)) ((_ is Nil!57466) (_1!34415 lt!2054226)))))

(assert (=> b!4973746 d!1602467))

(declare-fun d!1602471 () Bool)

(declare-fun lt!2054907 () Bool)

(assert (=> d!1602471 (= lt!2054907 (isEmpty!30977 (list!18383 (_1!34416 lt!2054258))))))

(assert (=> d!1602471 (= lt!2054907 (isEmpty!30980 (c!848514 (_1!34416 lt!2054258))))))

(assert (=> d!1602471 (= (isEmpty!30978 (_1!34416 lt!2054258)) lt!2054907)))

(declare-fun bs!1183870 () Bool)

(assert (= bs!1183870 d!1602471))

(assert (=> bs!1183870 m!6002738))

(assert (=> bs!1183870 m!6002738))

(declare-fun m!6005276 () Bool)

(assert (=> bs!1183870 m!6005276))

(declare-fun m!6005278 () Bool)

(assert (=> bs!1183870 m!6005278))

(assert (=> d!1601519 d!1602471))

(assert (=> d!1601519 d!1601691))

(declare-fun d!1602477 () Bool)

(assert (=> d!1602477 (= (isDefined!11376 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 rulesArg!259)) (list!18383 input!1342))) (not (isEmpty!30975 (maxPrefixOneRule!3636 thiss!15247 (h!63915 (t!369197 rulesArg!259)) (list!18383 input!1342)))))))

(declare-fun bs!1183871 () Bool)

(assert (= bs!1183871 d!1602477))

(assert (=> bs!1183871 m!6002318))

(declare-fun m!6005280 () Bool)

(assert (=> bs!1183871 m!6005280))

(assert (=> d!1601519 d!1602477))

(declare-fun d!1602479 () Bool)

(declare-fun lt!2054908 () tuple2!62226)

(assert (=> d!1602479 (= (tuple2!62225 (list!18383 (_1!34416 lt!2054908)) (list!18383 (_2!34416 lt!2054908))) (findLongestMatch!1704 (regex!8400 (h!63915 (t!369197 rulesArg!259))) (list!18383 input!1342)))))

(assert (=> d!1602479 (= lt!2054908 (choose!36713 (regex!8400 (h!63915 (t!369197 rulesArg!259))) input!1342 totalInput!464))))

(assert (=> d!1602479 (validRegex!5976 (regex!8400 (h!63915 (t!369197 rulesArg!259))))))

(assert (=> d!1602479 (= (findLongestMatchWithZipperSequenceV2!171 (regex!8400 (h!63915 (t!369197 rulesArg!259))) input!1342 totalInput!464) lt!2054908)))

(declare-fun bs!1183872 () Bool)

(assert (= bs!1183872 d!1602479))

(declare-fun m!6005288 () Bool)

(assert (=> bs!1183872 m!6005288))

(assert (=> bs!1183872 m!6003032))

(assert (=> bs!1183872 m!6001308))

(declare-fun m!6005290 () Bool)

(assert (=> bs!1183872 m!6005290))

(assert (=> bs!1183872 m!6001308))

(assert (=> bs!1183872 m!6004374))

(declare-fun m!6005292 () Bool)

(assert (=> bs!1183872 m!6005292))

(assert (=> d!1601519 d!1602479))

(assert (=> d!1601519 d!1601201))

(assert (=> d!1601519 d!1602105))

(declare-fun d!1602485 () Bool)

(assert (=> d!1602485 (= (isDefined!11377 lt!2054260) (not (isEmpty!30976 lt!2054260)))))

(declare-fun bs!1183873 () Bool)

(assert (= bs!1183873 d!1602485))

(declare-fun m!6005294 () Bool)

(assert (=> bs!1183873 m!6005294))

(assert (=> d!1601519 d!1602485))

(assert (=> b!4973250 d!1601605))

(assert (=> b!4973354 d!1601563))

(assert (=> b!4973354 d!1602379))

(assert (=> b!4973354 d!1601201))

(assert (=> b!4973354 d!1601577))

(assert (=> b!4973354 d!1602191))

(assert (=> b!4973707 d!1601587))

(assert (=> b!4973707 d!1601589))

(assert (=> d!1601493 d!1601485))

(assert (=> d!1601493 d!1601213))

(assert (=> d!1601493 d!1601215))

(assert (=> d!1601493 d!1601329))

(assert (=> b!4973798 d!1602485))

(assert (=> b!4973545 d!1602207))

(assert (=> b!4973545 d!1602211))

(assert (=> b!4973210 d!1601809))

(declare-fun d!1602489 () Bool)

(assert (=> d!1602489 (= (seqFromList!6043 (_1!34415 lt!2054010)) (fromListB!2737 (_1!34415 lt!2054010)))))

(declare-fun bs!1183874 () Bool)

(assert (= bs!1183874 d!1602489))

(declare-fun m!6005302 () Bool)

(assert (=> bs!1183874 m!6005302))

(assert (=> b!4973210 d!1602489))

(assert (=> b!4973210 d!1601817))

(declare-fun bs!1183878 () Bool)

(declare-fun d!1602493 () Bool)

(assert (= bs!1183878 (and d!1602493 d!1601301)))

(declare-fun lambda!247543 () Int)

(assert (=> bs!1183878 (= lambda!247543 lambda!247516)))

(declare-fun bs!1183879 () Bool)

(assert (= bs!1183879 (and d!1602493 d!1601833)))

(assert (=> bs!1183879 (= lambda!247543 lambda!247535)))

(declare-fun bs!1183880 () Bool)

(assert (= bs!1183880 (and d!1602493 b!4972922)))

(assert (=> bs!1183880 (= lambda!247543 lambda!247506)))

(declare-fun bs!1183881 () Bool)

(assert (= bs!1183881 (and d!1602493 d!1601689)))

(assert (=> bs!1183881 (= (and (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) (= lambda!247543 lambda!247530))))

(declare-fun bs!1183882 () Bool)

(assert (= bs!1183882 (and d!1602493 b!4974148)))

(assert (=> bs!1183882 (= (and (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))))) (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))))) (= lambda!247543 lambda!247531))))

(declare-fun bs!1183883 () Bool)

(assert (= bs!1183883 (and d!1602493 b!4973799)))

(assert (=> bs!1183883 (= (and (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) (= lambda!247543 lambda!247525))))

(declare-fun b!4975028 () Bool)

(declare-fun e!3109281 () Bool)

(assert (=> b!4975028 (= e!3109281 true)))

(assert (=> d!1602493 e!3109281))

(assert (= d!1602493 b!4975028))

(assert (=> b!4975028 (< (dynLambda!23209 order!26257 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) (dynLambda!23210 order!26259 lambda!247543))))

(assert (=> b!4975028 (< (dynLambda!23211 order!26261 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) (dynLambda!23210 order!26259 lambda!247543))))

(assert (=> d!1602493 (= (list!18383 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054010))))) (list!18383 (seqFromList!6043 (_1!34415 lt!2054010))))))

(declare-fun lt!2054910 () Unit!148431)

(assert (=> d!1602493 (= lt!2054910 (ForallOf!1234 lambda!247543 (seqFromList!6043 (_1!34415 lt!2054010))))))

(assert (=> d!1602493 (= (lemmaSemiInverse!2609 (transformation!8400 (h!63915 rulesArg!259)) (seqFromList!6043 (_1!34415 lt!2054010))) lt!2054910)))

(declare-fun b_lambda!197445 () Bool)

(assert (=> (not b_lambda!197445) (not d!1602493)))

(declare-fun t!369419 () Bool)

(declare-fun tb!261349 () Bool)

(assert (=> (and b!4972699 (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369419) tb!261349))

(declare-fun tp!1394600 () Bool)

(declare-fun b!4975035 () Bool)

(declare-fun e!3109286 () Bool)

(assert (=> b!4975035 (= e!3109286 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054010)))))) tp!1394600))))

(declare-fun result!326540 () Bool)

(assert (=> tb!261349 (= result!326540 (and (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054010))))) e!3109286))))

(assert (= tb!261349 b!4975035))

(declare-fun m!6005318 () Bool)

(assert (=> b!4975035 m!6005318))

(declare-fun m!6005320 () Bool)

(assert (=> tb!261349 m!6005320))

(assert (=> d!1602493 t!369419))

(declare-fun b_and!349101 () Bool)

(assert (= b_and!349035 (and (=> t!369419 result!326540) b_and!349101)))

(declare-fun t!369421 () Bool)

(declare-fun tb!261351 () Bool)

(assert (=> (and b!4973009 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369421) tb!261351))

(declare-fun result!326542 () Bool)

(assert (= result!326542 result!326540))

(assert (=> d!1602493 t!369421))

(declare-fun b_and!349103 () Bool)

(assert (= b_and!349037 (and (=> t!369421 result!326542) b_and!349103)))

(declare-fun t!369423 () Bool)

(declare-fun tb!261353 () Bool)

(assert (=> (and b!4973824 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369423) tb!261353))

(declare-fun result!326544 () Bool)

(assert (= result!326544 result!326540))

(assert (=> d!1602493 t!369423))

(declare-fun b_and!349105 () Bool)

(assert (= b_and!349039 (and (=> t!369423 result!326544) b_and!349105)))

(declare-fun b_lambda!197447 () Bool)

(assert (=> (not b_lambda!197447) (not d!1602493)))

(declare-fun t!369425 () Bool)

(declare-fun tb!261355 () Bool)

(assert (=> (and b!4972699 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369425) tb!261355))

(declare-fun result!326546 () Bool)

(assert (=> tb!261355 (= result!326546 (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054010)))))))

(declare-fun m!6005322 () Bool)

(assert (=> tb!261355 m!6005322))

(assert (=> d!1602493 t!369425))

(declare-fun b_and!349107 () Bool)

(assert (= b_and!349071 (and (=> t!369425 result!326546) b_and!349107)))

(declare-fun t!369427 () Bool)

(declare-fun tb!261357 () Bool)

(assert (=> (and b!4973009 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369427) tb!261357))

(declare-fun result!326548 () Bool)

(assert (= result!326548 result!326546))

(assert (=> d!1602493 t!369427))

(declare-fun b_and!349109 () Bool)

(assert (= b_and!349073 (and (=> t!369427 result!326548) b_and!349109)))

(declare-fun t!369429 () Bool)

(declare-fun tb!261359 () Bool)

(assert (=> (and b!4973824 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369429) tb!261359))

(declare-fun result!326550 () Bool)

(assert (= result!326550 result!326546))

(assert (=> d!1602493 t!369429))

(declare-fun b_and!349111 () Bool)

(assert (= b_and!349075 (and (=> t!369429 result!326550) b_and!349111)))

(assert (=> d!1602493 m!6001906))

(declare-fun m!6005324 () Bool)

(assert (=> d!1602493 m!6005324))

(assert (=> d!1602493 m!6005324))

(declare-fun m!6005326 () Bool)

(assert (=> d!1602493 m!6005326))

(assert (=> d!1602493 m!6001906))

(declare-fun m!6005328 () Bool)

(assert (=> d!1602493 m!6005328))

(assert (=> d!1602493 m!6001906))

(declare-fun m!6005330 () Bool)

(assert (=> d!1602493 m!6005330))

(assert (=> d!1602493 m!6005326))

(declare-fun m!6005332 () Bool)

(assert (=> d!1602493 m!6005332))

(assert (=> b!4973210 d!1602493))

(assert (=> b!4973210 d!1601269))

(declare-fun d!1602507 () Bool)

(declare-fun lt!2054915 () Int)

(assert (=> d!1602507 (= lt!2054915 (size!38097 (list!18383 (seqFromList!6043 (_1!34415 lt!2054010)))))))

(assert (=> d!1602507 (= lt!2054915 (size!38100 (c!848514 (seqFromList!6043 (_1!34415 lt!2054010)))))))

(assert (=> d!1602507 (= (size!38098 (seqFromList!6043 (_1!34415 lt!2054010))) lt!2054915)))

(declare-fun bs!1183885 () Bool)

(assert (= bs!1183885 d!1602507))

(assert (=> bs!1183885 m!6001906))

(assert (=> bs!1183885 m!6005328))

(assert (=> bs!1183885 m!6005328))

(declare-fun m!6005340 () Bool)

(assert (=> bs!1183885 m!6005340))

(declare-fun m!6005342 () Bool)

(assert (=> bs!1183885 m!6005342))

(assert (=> b!4973210 d!1602507))

(declare-fun d!1602509 () Bool)

(assert (=> d!1602509 (= (apply!13911 (transformation!8400 (h!63915 rulesArg!259)) (seqFromList!6043 (_1!34415 lt!2054010))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054010))))))

(declare-fun b_lambda!197451 () Bool)

(assert (=> (not b_lambda!197451) (not d!1602509)))

(assert (=> d!1602509 t!369425))

(declare-fun b_and!349113 () Bool)

(assert (= b_and!349107 (and (=> t!369425 result!326546) b_and!349113)))

(assert (=> d!1602509 t!369427))

(declare-fun b_and!349115 () Bool)

(assert (= b_and!349109 (and (=> t!369427 result!326548) b_and!349115)))

(assert (=> d!1602509 t!369429))

(declare-fun b_and!349117 () Bool)

(assert (= b_and!349111 (and (=> t!369429 result!326550) b_and!349117)))

(assert (=> d!1602509 m!6001906))

(assert (=> d!1602509 m!6005324))

(assert (=> b!4973210 d!1602509))

(assert (=> b!4973210 d!1601509))

(assert (=> b!4973210 d!1601855))

(declare-fun d!1602515 () Bool)

(declare-fun res!2123769 () Bool)

(declare-fun e!3109290 () Bool)

(assert (=> d!1602515 (=> (not res!2123769) (not e!3109290))))

(assert (=> d!1602515 (= res!2123769 (= (csize!30534 (left!41922 (c!848514 input!1342))) (+ (size!38100 (left!41922 (left!41922 (c!848514 input!1342)))) (size!38100 (right!42252 (left!41922 (c!848514 input!1342)))))))))

(assert (=> d!1602515 (= (inv!75128 (left!41922 (c!848514 input!1342))) e!3109290)))

(declare-fun b!4975039 () Bool)

(declare-fun res!2123770 () Bool)

(assert (=> b!4975039 (=> (not res!2123770) (not e!3109290))))

(assert (=> b!4975039 (= res!2123770 (and (not (= (left!41922 (left!41922 (c!848514 input!1342))) Empty!15152)) (not (= (right!42252 (left!41922 (c!848514 input!1342))) Empty!15152))))))

(declare-fun b!4975040 () Bool)

(declare-fun res!2123771 () Bool)

(assert (=> b!4975040 (=> (not res!2123771) (not e!3109290))))

(assert (=> b!4975040 (= res!2123771 (= (cheight!15363 (left!41922 (c!848514 input!1342))) (+ (max!0 (height!2020 (left!41922 (left!41922 (c!848514 input!1342)))) (height!2020 (right!42252 (left!41922 (c!848514 input!1342))))) 1)))))

(declare-fun b!4975041 () Bool)

(assert (=> b!4975041 (= e!3109290 (<= 0 (cheight!15363 (left!41922 (c!848514 input!1342)))))))

(assert (= (and d!1602515 res!2123769) b!4975039))

(assert (= (and b!4975039 res!2123770) b!4975040))

(assert (= (and b!4975040 res!2123771) b!4975041))

(declare-fun m!6005346 () Bool)

(assert (=> d!1602515 m!6005346))

(declare-fun m!6005348 () Bool)

(assert (=> d!1602515 m!6005348))

(assert (=> b!4975040 m!6004574))

(assert (=> b!4975040 m!6004576))

(assert (=> b!4975040 m!6004574))

(assert (=> b!4975040 m!6004576))

(declare-fun m!6005352 () Bool)

(assert (=> b!4975040 m!6005352))

(assert (=> b!4973761 d!1602515))

(declare-fun d!1602517 () Bool)

(declare-fun lt!2054917 () Int)

(assert (=> d!1602517 (>= lt!2054917 0)))

(declare-fun e!3109291 () Int)

(assert (=> d!1602517 (= lt!2054917 e!3109291)))

(declare-fun c!849042 () Bool)

(assert (=> d!1602517 (= c!849042 ((_ is Nil!57466) (_2!34412 (get!19957 lt!2054151))))))

(assert (=> d!1602517 (= (size!38097 (_2!34412 (get!19957 lt!2054151))) lt!2054917)))

(declare-fun b!4975042 () Bool)

(assert (=> b!4975042 (= e!3109291 0)))

(declare-fun b!4975043 () Bool)

(assert (=> b!4975043 (= e!3109291 (+ 1 (size!38097 (t!369196 (_2!34412 (get!19957 lt!2054151))))))))

(assert (= (and d!1602517 c!849042) b!4975042))

(assert (= (and d!1602517 (not c!849042)) b!4975043))

(declare-fun m!6005358 () Bool)

(assert (=> b!4975043 m!6005358))

(assert (=> b!4973646 d!1602517))

(assert (=> b!4973646 d!1601681))

(assert (=> b!4973646 d!1601269))

(declare-fun b!4975051 () Bool)

(declare-fun e!3109295 () Bool)

(assert (=> b!4975051 (= e!3109295 (>= (size!38097 lt!2053833) (size!38097 lt!2053833)))))

(declare-fun b!4975049 () Bool)

(declare-fun res!2123776 () Bool)

(declare-fun e!3109297 () Bool)

(assert (=> b!4975049 (=> (not res!2123776) (not e!3109297))))

(assert (=> b!4975049 (= res!2123776 (= (head!10675 lt!2053833) (head!10675 lt!2053833)))))

(declare-fun b!4975050 () Bool)

(assert (=> b!4975050 (= e!3109297 (isPrefix!5251 (tail!9808 lt!2053833) (tail!9808 lt!2053833)))))

(declare-fun d!1602523 () Bool)

(assert (=> d!1602523 e!3109295))

(declare-fun res!2123777 () Bool)

(assert (=> d!1602523 (=> res!2123777 e!3109295)))

(declare-fun lt!2054919 () Bool)

(assert (=> d!1602523 (= res!2123777 (not lt!2054919))))

(declare-fun e!3109296 () Bool)

(assert (=> d!1602523 (= lt!2054919 e!3109296)))

(declare-fun res!2123779 () Bool)

(assert (=> d!1602523 (=> res!2123779 e!3109296)))

(assert (=> d!1602523 (= res!2123779 ((_ is Nil!57466) lt!2053833))))

(assert (=> d!1602523 (= (isPrefix!5251 lt!2053833 lt!2053833) lt!2054919)))

(declare-fun b!4975048 () Bool)

(assert (=> b!4975048 (= e!3109296 e!3109297)))

(declare-fun res!2123778 () Bool)

(assert (=> b!4975048 (=> (not res!2123778) (not e!3109297))))

(assert (=> b!4975048 (= res!2123778 (not ((_ is Nil!57466) lt!2053833)))))

(assert (= (and d!1602523 (not res!2123779)) b!4975048))

(assert (= (and b!4975048 res!2123778) b!4975049))

(assert (= (and b!4975049 res!2123776) b!4975050))

(assert (= (and d!1602523 (not res!2123777)) b!4975051))

(assert (=> b!4975051 m!6001548))

(assert (=> b!4975051 m!6001548))

(assert (=> b!4975049 m!6002660))

(assert (=> b!4975049 m!6002660))

(assert (=> b!4975050 m!6002642))

(assert (=> b!4975050 m!6002642))

(assert (=> b!4975050 m!6002642))

(assert (=> b!4975050 m!6002642))

(declare-fun m!6005374 () Bool)

(assert (=> b!4975050 m!6005374))

(assert (=> bm!346885 d!1602523))

(declare-fun b!4975052 () Bool)

(declare-fun e!3109298 () List!57590)

(assert (=> b!4975052 (= e!3109298 (_2!34412 (get!19957 lt!2054151)))))

(declare-fun d!1602527 () Bool)

(declare-fun e!3109299 () Bool)

(assert (=> d!1602527 e!3109299))

(declare-fun res!2123780 () Bool)

(assert (=> d!1602527 (=> (not res!2123780) (not e!3109299))))

(declare-fun lt!2054921 () List!57590)

(assert (=> d!1602527 (= res!2123780 (= (content!10197 lt!2054921) ((_ map or) (content!10197 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151))))) (content!10197 (_2!34412 (get!19957 lt!2054151))))))))

(assert (=> d!1602527 (= lt!2054921 e!3109298)))

(declare-fun c!849043 () Bool)

(assert (=> d!1602527 (= c!849043 ((_ is Nil!57466) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151))))))))

(assert (=> d!1602527 (= (++!12539 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151)))) (_2!34412 (get!19957 lt!2054151))) lt!2054921)))

(declare-fun b!4975055 () Bool)

(assert (=> b!4975055 (= e!3109299 (or (not (= (_2!34412 (get!19957 lt!2054151)) Nil!57466)) (= lt!2054921 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151)))))))))

(declare-fun b!4975054 () Bool)

(declare-fun res!2123781 () Bool)

(assert (=> b!4975054 (=> (not res!2123781) (not e!3109299))))

(assert (=> b!4975054 (= res!2123781 (= (size!38097 lt!2054921) (+ (size!38097 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151))))) (size!38097 (_2!34412 (get!19957 lt!2054151))))))))

(declare-fun b!4975053 () Bool)

(assert (=> b!4975053 (= e!3109298 (Cons!57466 (h!63914 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151))))) (++!12539 (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054151))))) (_2!34412 (get!19957 lt!2054151)))))))

(assert (= (and d!1602527 c!849043) b!4975052))

(assert (= (and d!1602527 (not c!849043)) b!4975053))

(assert (= (and d!1602527 res!2123780) b!4975054))

(assert (= (and b!4975054 res!2123781) b!4975055))

(declare-fun m!6005382 () Bool)

(assert (=> d!1602527 m!6005382))

(assert (=> d!1602527 m!6002566))

(declare-fun m!6005384 () Bool)

(assert (=> d!1602527 m!6005384))

(declare-fun m!6005386 () Bool)

(assert (=> d!1602527 m!6005386))

(declare-fun m!6005388 () Bool)

(assert (=> b!4975054 m!6005388))

(assert (=> b!4975054 m!6002566))

(declare-fun m!6005390 () Bool)

(assert (=> b!4975054 m!6005390))

(assert (=> b!4975054 m!6002572))

(declare-fun m!6005392 () Bool)

(assert (=> b!4975053 m!6005392))

(assert (=> b!4973647 d!1602527))

(assert (=> b!4973647 d!1602009))

(assert (=> b!4973647 d!1602011))

(assert (=> b!4973647 d!1601681))

(declare-fun d!1602533 () Bool)

(assert (=> d!1602533 (= (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853))))) (isBalanced!4209 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun bs!1183891 () Bool)

(assert (= bs!1183891 d!1602533))

(declare-fun m!6005394 () Bool)

(assert (=> bs!1183891 m!6005394))

(assert (=> tb!261139 d!1602533))

(declare-fun b!4975070 () Bool)

(declare-fun e!3109309 () List!57590)

(assert (=> b!4975070 (= e!3109309 (++!12539 (list!18385 (left!41922 (c!848514 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))) (list!18385 (right!42252 (c!848514 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))))

(declare-fun b!4975068 () Bool)

(declare-fun e!3109308 () List!57590)

(assert (=> b!4975068 (= e!3109308 e!3109309)))

(declare-fun c!849047 () Bool)

(assert (=> b!4975068 (= c!849047 ((_ is Leaf!25177) (c!848514 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))

(declare-fun d!1602535 () Bool)

(declare-fun c!849046 () Bool)

(assert (=> d!1602535 (= c!849046 ((_ is Empty!15152) (c!848514 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))))))

(assert (=> d!1602535 (= (list!18385 (c!848514 (charsOf!5444 (_1!34412 (get!19957 lt!2053853))))) e!3109308)))

(declare-fun b!4975069 () Bool)

(assert (=> b!4975069 (= e!3109309 (list!18387 (xs!18478 (c!848514 (charsOf!5444 (_1!34412 (get!19957 lt!2053853)))))))))

(declare-fun b!4975067 () Bool)

(assert (=> b!4975067 (= e!3109308 Nil!57466)))

(assert (= (and d!1602535 c!849046) b!4975067))

(assert (= (and d!1602535 (not c!849046)) b!4975068))

(assert (= (and b!4975068 c!849047) b!4975069))

(assert (= (and b!4975068 (not c!849047)) b!4975070))

(declare-fun m!6005396 () Bool)

(assert (=> b!4975070 m!6005396))

(declare-fun m!6005398 () Bool)

(assert (=> b!4975070 m!6005398))

(assert (=> b!4975070 m!6005396))

(assert (=> b!4975070 m!6005398))

(declare-fun m!6005400 () Bool)

(assert (=> b!4975070 m!6005400))

(declare-fun m!6005402 () Bool)

(assert (=> b!4975069 m!6005402))

(assert (=> d!1601275 d!1602535))

(declare-fun d!1602537 () Bool)

(declare-fun res!2123789 () Bool)

(declare-fun e!3109310 () Bool)

(assert (=> d!1602537 (=> (not res!2123789) (not e!3109310))))

(assert (=> d!1602537 (= res!2123789 (<= (size!38097 (list!18387 (xs!18478 (right!42252 (c!848514 totalInput!464))))) 512))))

(assert (=> d!1602537 (= (inv!75129 (right!42252 (c!848514 totalInput!464))) e!3109310)))

(declare-fun b!4975071 () Bool)

(declare-fun res!2123790 () Bool)

(assert (=> b!4975071 (=> (not res!2123790) (not e!3109310))))

(assert (=> b!4975071 (= res!2123790 (= (csize!30535 (right!42252 (c!848514 totalInput!464))) (size!38097 (list!18387 (xs!18478 (right!42252 (c!848514 totalInput!464)))))))))

(declare-fun b!4975072 () Bool)

(assert (=> b!4975072 (= e!3109310 (and (> (csize!30535 (right!42252 (c!848514 totalInput!464))) 0) (<= (csize!30535 (right!42252 (c!848514 totalInput!464))) 512)))))

(assert (= (and d!1602537 res!2123789) b!4975071))

(assert (= (and b!4975071 res!2123790) b!4975072))

(declare-fun m!6005404 () Bool)

(assert (=> d!1602537 m!6005404))

(assert (=> d!1602537 m!6005404))

(declare-fun m!6005406 () Bool)

(assert (=> d!1602537 m!6005406))

(assert (=> b!4975071 m!6005404))

(assert (=> b!4975071 m!6005404))

(assert (=> b!4975071 m!6005406))

(assert (=> b!4973700 d!1602537))

(assert (=> d!1601531 d!1601539))

(assert (=> d!1601531 d!1601507))

(assert (=> d!1601531 d!1601509))

(assert (=> d!1601531 d!1601889))

(declare-fun d!1602539 () Bool)

(declare-fun e!3109327 () Bool)

(assert (=> d!1602539 e!3109327))

(declare-fun res!2123796 () Bool)

(assert (=> d!1602539 (=> res!2123796 e!3109327)))

(assert (=> d!1602539 (= res!2123796 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))

(assert (=> d!1602539 true))

(declare-fun _$92!533 () Unit!148431)

(assert (=> d!1602539 (= (choose!36715 (regex!8400 (h!63915 rulesArg!259)) lt!2053833) _$92!533)))

(declare-fun b!4975098 () Bool)

(assert (=> b!4975098 (= e!3109327 (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) lt!2053833 lt!2053833 (size!38097 lt!2053833)))))))

(assert (= (and d!1602539 (not res!2123796)) b!4975098))

(assert (=> d!1602539 m!6001546))

(assert (=> d!1602539 m!6001548))

(assert (=> d!1602539 m!6001546))

(assert (=> d!1602539 m!6001548))

(assert (=> d!1602539 m!6001550))

(assert (=> d!1602539 m!6001566))

(assert (=> b!4975098 m!6001546))

(assert (=> b!4975098 m!6001548))

(assert (=> b!4975098 m!6001546))

(assert (=> b!4975098 m!6001548))

(assert (=> b!4975098 m!6001550))

(assert (=> b!4975098 m!6001552))

(assert (=> d!1601531 d!1602539))

(assert (=> d!1601531 d!1601511))

(assert (=> b!4973632 d!1601677))

(assert (=> b!4973632 d!1601679))

(declare-fun d!1602553 () Bool)

(assert (=> d!1602553 (= (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))) ((_ is Nil!57466) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))))))

(assert (=> b!4973333 d!1602553))

(declare-fun bs!1183894 () Bool)

(declare-fun d!1602555 () Bool)

(assert (= bs!1183894 (and d!1602555 d!1601301)))

(declare-fun lambda!247545 () Int)

(assert (=> bs!1183894 (= lambda!247545 lambda!247516)))

(declare-fun bs!1183895 () Bool)

(assert (= bs!1183895 (and d!1602555 d!1602493)))

(assert (=> bs!1183895 (= lambda!247545 lambda!247543)))

(declare-fun bs!1183896 () Bool)

(assert (= bs!1183896 (and d!1602555 d!1601833)))

(assert (=> bs!1183896 (= lambda!247545 lambda!247535)))

(declare-fun bs!1183897 () Bool)

(assert (= bs!1183897 (and d!1602555 b!4972922)))

(assert (=> bs!1183897 (= lambda!247545 lambda!247506)))

(declare-fun bs!1183898 () Bool)

(assert (= bs!1183898 (and d!1602555 d!1601689)))

(assert (=> bs!1183898 (= (and (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) (= lambda!247545 lambda!247530))))

(declare-fun bs!1183899 () Bool)

(assert (= bs!1183899 (and d!1602555 b!4974148)))

(assert (=> bs!1183899 (= (and (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))))) (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))))) (= lambda!247545 lambda!247531))))

(declare-fun bs!1183900 () Bool)

(assert (= bs!1183900 (and d!1602555 b!4973799)))

(assert (=> bs!1183900 (= (and (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) (= lambda!247545 lambda!247525))))

(declare-fun b!4975101 () Bool)

(declare-fun e!3109330 () Bool)

(assert (=> b!4975101 (= e!3109330 true)))

(assert (=> d!1602555 e!3109330))

(assert (= d!1602555 b!4975101))

(assert (=> b!4975101 (< (dynLambda!23209 order!26257 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) (dynLambda!23210 order!26259 lambda!247545))))

(assert (=> b!4975101 (< (dynLambda!23211 order!26261 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) (dynLambda!23210 order!26259 lambda!247545))))

(assert (=> d!1602555 (= (list!18383 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054039))))) (list!18383 (seqFromList!6043 (_1!34415 lt!2054039))))))

(declare-fun lt!2054958 () Unit!148431)

(assert (=> d!1602555 (= lt!2054958 (ForallOf!1234 lambda!247545 (seqFromList!6043 (_1!34415 lt!2054039))))))

(assert (=> d!1602555 (= (lemmaSemiInverse!2609 (transformation!8400 (h!63915 rulesArg!259)) (seqFromList!6043 (_1!34415 lt!2054039))) lt!2054958)))

(declare-fun b_lambda!197457 () Bool)

(assert (=> (not b_lambda!197457) (not d!1602555)))

(declare-fun t!369443 () Bool)

(declare-fun tb!261373 () Bool)

(assert (=> (and b!4972699 (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369443) tb!261373))

(declare-fun b!4975103 () Bool)

(declare-fun tp!1394601 () Bool)

(declare-fun e!3109332 () Bool)

(assert (=> b!4975103 (= e!3109332 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054039)))))) tp!1394601))))

(declare-fun result!326564 () Bool)

(assert (=> tb!261373 (= result!326564 (and (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054039))))) e!3109332))))

(assert (= tb!261373 b!4975103))

(declare-fun m!6005506 () Bool)

(assert (=> b!4975103 m!6005506))

(declare-fun m!6005508 () Bool)

(assert (=> tb!261373 m!6005508))

(assert (=> d!1602555 t!369443))

(declare-fun b_and!349131 () Bool)

(assert (= b_and!349101 (and (=> t!369443 result!326564) b_and!349131)))

(declare-fun t!369445 () Bool)

(declare-fun tb!261375 () Bool)

(assert (=> (and b!4973009 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369445) tb!261375))

(declare-fun result!326566 () Bool)

(assert (= result!326566 result!326564))

(assert (=> d!1602555 t!369445))

(declare-fun b_and!349133 () Bool)

(assert (= b_and!349103 (and (=> t!369445 result!326566) b_and!349133)))

(declare-fun t!369447 () Bool)

(declare-fun tb!261377 () Bool)

(assert (=> (and b!4973824 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369447) tb!261377))

(declare-fun result!326568 () Bool)

(assert (= result!326568 result!326564))

(assert (=> d!1602555 t!369447))

(declare-fun b_and!349135 () Bool)

(assert (= b_and!349105 (and (=> t!369447 result!326568) b_and!349135)))

(declare-fun b_lambda!197461 () Bool)

(assert (=> (not b_lambda!197461) (not d!1602555)))

(declare-fun t!369451 () Bool)

(declare-fun tb!261381 () Bool)

(assert (=> (and b!4972699 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369451) tb!261381))

(declare-fun result!326572 () Bool)

(assert (=> tb!261381 (= result!326572 (inv!21 (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054039)))))))

(declare-fun m!6005514 () Bool)

(assert (=> tb!261381 m!6005514))

(assert (=> d!1602555 t!369451))

(declare-fun b_and!349139 () Bool)

(assert (= b_and!349113 (and (=> t!369451 result!326572) b_and!349139)))

(declare-fun t!369455 () Bool)

(declare-fun tb!261385 () Bool)

(assert (=> (and b!4973009 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369455) tb!261385))

(declare-fun result!326576 () Bool)

(assert (= result!326576 result!326572))

(assert (=> d!1602555 t!369455))

(declare-fun b_and!349145 () Bool)

(assert (= b_and!349115 (and (=> t!369455 result!326576) b_and!349145)))

(declare-fun t!369459 () Bool)

(declare-fun tb!261389 () Bool)

(assert (=> (and b!4973824 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369459) tb!261389))

(declare-fun result!326580 () Bool)

(assert (= result!326580 result!326572))

(assert (=> d!1602555 t!369459))

(declare-fun b_and!349147 () Bool)

(assert (= b_and!349117 (and (=> t!369459 result!326580) b_and!349147)))

(assert (=> d!1602555 m!6002050))

(declare-fun m!6005516 () Bool)

(assert (=> d!1602555 m!6005516))

(assert (=> d!1602555 m!6005516))

(declare-fun m!6005520 () Bool)

(assert (=> d!1602555 m!6005520))

(assert (=> d!1602555 m!6002050))

(declare-fun m!6005522 () Bool)

(assert (=> d!1602555 m!6005522))

(assert (=> d!1602555 m!6002050))

(declare-fun m!6005526 () Bool)

(assert (=> d!1602555 m!6005526))

(assert (=> d!1602555 m!6005520))

(declare-fun m!6005530 () Bool)

(assert (=> d!1602555 m!6005530))

(assert (=> b!4973333 d!1602555))

(assert (=> b!4973333 d!1601509))

(declare-fun d!1602561 () Bool)

(declare-fun e!3109335 () Bool)

(assert (=> d!1602561 e!3109335))

(declare-fun res!2123799 () Bool)

(assert (=> d!1602561 (=> res!2123799 e!3109335)))

(assert (=> d!1602561 (= res!2123799 (isEmpty!30977 (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))))))

(declare-fun lt!2054961 () Unit!148431)

(assert (=> d!1602561 (= lt!2054961 (choose!36715 (regex!8400 (h!63915 rulesArg!259)) (list!18383 input!1342)))))

(assert (=> d!1602561 (validRegex!5976 (regex!8400 (h!63915 rulesArg!259)))))

(assert (=> d!1602561 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1823 (regex!8400 (h!63915 rulesArg!259)) (list!18383 input!1342)) lt!2054961)))

(declare-fun b!4975105 () Bool)

(assert (=> b!4975105 (= e!3109335 (matchR!6643 (regex!8400 (h!63915 rulesArg!259)) (_1!34415 (findLongestMatchInner!1862 (regex!8400 (h!63915 rulesArg!259)) Nil!57466 (size!38097 Nil!57466) (list!18383 input!1342) (list!18383 input!1342) (size!38097 (list!18383 input!1342))))))))

(assert (= (and d!1602561 (not res!2123799)) b!4975105))

(assert (=> d!1602561 m!6002460))

(assert (=> d!1602561 m!6001308))

(declare-fun m!6005538 () Bool)

(assert (=> d!1602561 m!6005538))

(assert (=> d!1602561 m!6002060))

(assert (=> d!1602561 m!6001308))

(assert (=> d!1602561 m!6002036))

(assert (=> d!1602561 m!6001546))

(assert (=> d!1602561 m!6001546))

(assert (=> d!1602561 m!6001308))

(assert (=> d!1602561 m!6001308))

(assert (=> d!1602561 m!6002036))

(assert (=> d!1602561 m!6002048))

(assert (=> b!4975105 m!6001546))

(assert (=> b!4975105 m!6001308))

(assert (=> b!4975105 m!6002036))

(assert (=> b!4975105 m!6001546))

(assert (=> b!4975105 m!6001308))

(assert (=> b!4975105 m!6001308))

(assert (=> b!4975105 m!6002036))

(assert (=> b!4975105 m!6002048))

(assert (=> b!4975105 m!6002062))

(assert (=> b!4973333 d!1602561))

(declare-fun d!1602569 () Bool)

(assert (=> d!1602569 (= (apply!13911 (transformation!8400 (h!63915 rulesArg!259)) (seqFromList!6043 (_1!34415 lt!2054039))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (_1!34415 lt!2054039))))))

(declare-fun b_lambda!197465 () Bool)

(assert (=> (not b_lambda!197465) (not d!1602569)))

(assert (=> d!1602569 t!369451))

(declare-fun b_and!349155 () Bool)

(assert (= b_and!349139 (and (=> t!369451 result!326572) b_and!349155)))

(assert (=> d!1602569 t!369455))

(declare-fun b_and!349157 () Bool)

(assert (= b_and!349145 (and (=> t!369455 result!326576) b_and!349157)))

(assert (=> d!1602569 t!369459))

(declare-fun b_and!349159 () Bool)

(assert (= b_and!349147 (and (=> t!369459 result!326580) b_and!349159)))

(assert (=> d!1602569 m!6002050))

(assert (=> d!1602569 m!6005516))

(assert (=> b!4973333 d!1602569))

(declare-fun d!1602573 () Bool)

(assert (=> d!1602573 (= (seqFromList!6043 (_1!34415 lt!2054039)) (fromListB!2737 (_1!34415 lt!2054039)))))

(declare-fun bs!1183909 () Bool)

(assert (= bs!1183909 d!1602573))

(declare-fun m!6005556 () Bool)

(assert (=> bs!1183909 m!6005556))

(assert (=> b!4973333 d!1602573))

(assert (=> b!4973333 d!1601975))

(declare-fun d!1602575 () Bool)

(declare-fun lt!2054963 () Int)

(assert (=> d!1602575 (= lt!2054963 (size!38097 (list!18383 (seqFromList!6043 (_1!34415 lt!2054039)))))))

(assert (=> d!1602575 (= lt!2054963 (size!38100 (c!848514 (seqFromList!6043 (_1!34415 lt!2054039)))))))

(assert (=> d!1602575 (= (size!38098 (seqFromList!6043 (_1!34415 lt!2054039))) lt!2054963)))

(declare-fun bs!1183910 () Bool)

(assert (= bs!1183910 d!1602575))

(assert (=> bs!1183910 m!6002050))

(assert (=> bs!1183910 m!6005522))

(assert (=> bs!1183910 m!6005522))

(declare-fun m!6005564 () Bool)

(assert (=> bs!1183910 m!6005564))

(declare-fun m!6005566 () Bool)

(assert (=> bs!1183910 m!6005566))

(assert (=> b!4973333 d!1602575))

(assert (=> b!4973333 d!1601981))

(declare-fun b!4975121 () Bool)

(declare-fun e!3109343 () List!57590)

(assert (=> b!4975121 (= e!3109343 (++!12539 (list!18385 (left!41922 (c!848514 (_1!34416 lt!2053837)))) (list!18385 (right!42252 (c!848514 (_1!34416 lt!2053837))))))))

(declare-fun b!4975119 () Bool)

(declare-fun e!3109342 () List!57590)

(assert (=> b!4975119 (= e!3109342 e!3109343)))

(declare-fun c!849064 () Bool)

(assert (=> b!4975119 (= c!849064 ((_ is Leaf!25177) (c!848514 (_1!34416 lt!2053837))))))

(declare-fun d!1602579 () Bool)

(declare-fun c!849063 () Bool)

(assert (=> d!1602579 (= c!849063 ((_ is Empty!15152) (c!848514 (_1!34416 lt!2053837))))))

(assert (=> d!1602579 (= (list!18385 (c!848514 (_1!34416 lt!2053837))) e!3109342)))

(declare-fun b!4975120 () Bool)

(assert (=> b!4975120 (= e!3109343 (list!18387 (xs!18478 (c!848514 (_1!34416 lt!2053837)))))))

(declare-fun b!4975118 () Bool)

(assert (=> b!4975118 (= e!3109342 Nil!57466)))

(assert (= (and d!1602579 c!849063) b!4975118))

(assert (= (and d!1602579 (not c!849063)) b!4975119))

(assert (= (and b!4975119 c!849064) b!4975120))

(assert (= (and b!4975119 (not c!849064)) b!4975121))

(declare-fun m!6005570 () Bool)

(assert (=> b!4975121 m!6005570))

(declare-fun m!6005574 () Bool)

(assert (=> b!4975121 m!6005574))

(assert (=> b!4975121 m!6005570))

(assert (=> b!4975121 m!6005574))

(declare-fun m!6005576 () Bool)

(assert (=> b!4975121 m!6005576))

(declare-fun m!6005578 () Bool)

(assert (=> b!4975120 m!6005578))

(assert (=> d!1601535 d!1602579))

(declare-fun d!1602583 () Bool)

(assert (=> d!1602583 (= (inv!75130 (xs!18478 (left!41922 (c!848514 input!1342)))) (<= (size!38097 (innerList!15240 (xs!18478 (left!41922 (c!848514 input!1342))))) 2147483647))))

(declare-fun bs!1183911 () Bool)

(assert (= bs!1183911 d!1602583))

(declare-fun m!6005580 () Bool)

(assert (=> bs!1183911 m!6005580))

(assert (=> b!4973856 d!1602583))

(declare-fun b!4975126 () Bool)

(declare-fun e!3109348 () List!57590)

(assert (=> b!4975126 (= e!3109348 (_2!34412 (get!19957 lt!2054115)))))

(declare-fun d!1602585 () Bool)

(declare-fun e!3109349 () Bool)

(assert (=> d!1602585 e!3109349))

(declare-fun res!2123806 () Bool)

(assert (=> d!1602585 (=> (not res!2123806) (not e!3109349))))

(declare-fun lt!2054965 () List!57590)

(assert (=> d!1602585 (= res!2123806 (= (content!10197 lt!2054965) ((_ map or) (content!10197 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115))))) (content!10197 (_2!34412 (get!19957 lt!2054115))))))))

(assert (=> d!1602585 (= lt!2054965 e!3109348)))

(declare-fun c!849065 () Bool)

(assert (=> d!1602585 (= c!849065 ((_ is Nil!57466) (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115))))))))

(assert (=> d!1602585 (= (++!12539 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115)))) (_2!34412 (get!19957 lt!2054115))) lt!2054965)))

(declare-fun b!4975129 () Bool)

(assert (=> b!4975129 (= e!3109349 (or (not (= (_2!34412 (get!19957 lt!2054115)) Nil!57466)) (= lt!2054965 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115)))))))))

(declare-fun b!4975128 () Bool)

(declare-fun res!2123807 () Bool)

(assert (=> b!4975128 (=> (not res!2123807) (not e!3109349))))

(assert (=> b!4975128 (= res!2123807 (= (size!38097 lt!2054965) (+ (size!38097 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115))))) (size!38097 (_2!34412 (get!19957 lt!2054115))))))))

(declare-fun b!4975127 () Bool)

(assert (=> b!4975127 (= e!3109348 (Cons!57466 (h!63914 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115))))) (++!12539 (t!369196 (list!18383 (charsOf!5444 (_1!34412 (get!19957 lt!2054115))))) (_2!34412 (get!19957 lt!2054115)))))))

(assert (= (and d!1602585 c!849065) b!4975126))

(assert (= (and d!1602585 (not c!849065)) b!4975127))

(assert (= (and d!1602585 res!2123806) b!4975128))

(assert (= (and b!4975128 res!2123807) b!4975129))

(declare-fun m!6005586 () Bool)

(assert (=> d!1602585 m!6005586))

(assert (=> d!1602585 m!6002316))

(declare-fun m!6005588 () Bool)

(assert (=> d!1602585 m!6005588))

(declare-fun m!6005590 () Bool)

(assert (=> d!1602585 m!6005590))

(declare-fun m!6005592 () Bool)

(assert (=> b!4975128 m!6005592))

(assert (=> b!4975128 m!6002316))

(declare-fun m!6005594 () Bool)

(assert (=> b!4975128 m!6005594))

(assert (=> b!4975128 m!6002320))

(declare-fun m!6005596 () Bool)

(assert (=> b!4975127 m!6005596))

(assert (=> b!4973488 d!1602585))

(assert (=> b!4973488 d!1601935))

(assert (=> b!4973488 d!1601937))

(assert (=> b!4973488 d!1601581))

(declare-fun d!1602589 () Bool)

(assert (=> d!1602589 (= (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))) (isBalanced!4209 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))))))

(declare-fun bs!1183912 () Bool)

(assert (= bs!1183912 d!1602589))

(declare-fun m!6005598 () Bool)

(assert (=> bs!1183912 m!6005598))

(assert (=> tb!261199 d!1602589))

(declare-fun d!1602591 () Bool)

(declare-fun res!2123816 () Bool)

(declare-fun e!3109357 () Bool)

(assert (=> d!1602591 (=> res!2123816 e!3109357)))

(assert (=> d!1602591 (= res!2123816 ((_ is Nil!57467) (t!369197 rulesArg!259)))))

(assert (=> d!1602591 (= (forall!13335 (t!369197 rulesArg!259) lambda!247498) e!3109357)))

(declare-fun b!4975144 () Bool)

(declare-fun e!3109358 () Bool)

(assert (=> b!4975144 (= e!3109357 e!3109358)))

(declare-fun res!2123817 () Bool)

(assert (=> b!4975144 (=> (not res!2123817) (not e!3109358))))

(assert (=> b!4975144 (= res!2123817 (dynLambda!23214 lambda!247498 (h!63915 (t!369197 rulesArg!259))))))

(declare-fun b!4975145 () Bool)

(assert (=> b!4975145 (= e!3109358 (forall!13335 (t!369197 (t!369197 rulesArg!259)) lambda!247498))))

(assert (= (and d!1602591 (not res!2123816)) b!4975144))

(assert (= (and b!4975144 res!2123817) b!4975145))

(declare-fun b_lambda!197469 () Bool)

(assert (=> (not b_lambda!197469) (not b!4975144)))

(declare-fun m!6005604 () Bool)

(assert (=> b!4975144 m!6005604))

(declare-fun m!6005606 () Bool)

(assert (=> b!4975145 m!6005606))

(assert (=> b!4973314 d!1602591))

(declare-fun b!4975146 () Bool)

(declare-fun e!3109359 () List!57590)

(assert (=> b!4975146 (= e!3109359 (list!18385 (right!42252 (c!848514 totalInput!464))))))

(declare-fun d!1602593 () Bool)

(declare-fun e!3109360 () Bool)

(assert (=> d!1602593 e!3109360))

(declare-fun res!2123818 () Bool)

(assert (=> d!1602593 (=> (not res!2123818) (not e!3109360))))

(declare-fun lt!2054967 () List!57590)

(assert (=> d!1602593 (= res!2123818 (= (content!10197 lt!2054967) ((_ map or) (content!10197 (list!18385 (left!41922 (c!848514 totalInput!464)))) (content!10197 (list!18385 (right!42252 (c!848514 totalInput!464)))))))))

(assert (=> d!1602593 (= lt!2054967 e!3109359)))

(declare-fun c!849069 () Bool)

(assert (=> d!1602593 (= c!849069 ((_ is Nil!57466) (list!18385 (left!41922 (c!848514 totalInput!464)))))))

(assert (=> d!1602593 (= (++!12539 (list!18385 (left!41922 (c!848514 totalInput!464))) (list!18385 (right!42252 (c!848514 totalInput!464)))) lt!2054967)))

(declare-fun b!4975149 () Bool)

(assert (=> b!4975149 (= e!3109360 (or (not (= (list!18385 (right!42252 (c!848514 totalInput!464))) Nil!57466)) (= lt!2054967 (list!18385 (left!41922 (c!848514 totalInput!464))))))))

(declare-fun b!4975148 () Bool)

(declare-fun res!2123819 () Bool)

(assert (=> b!4975148 (=> (not res!2123819) (not e!3109360))))

(assert (=> b!4975148 (= res!2123819 (= (size!38097 lt!2054967) (+ (size!38097 (list!18385 (left!41922 (c!848514 totalInput!464)))) (size!38097 (list!18385 (right!42252 (c!848514 totalInput!464)))))))))

(declare-fun b!4975147 () Bool)

(assert (=> b!4975147 (= e!3109359 (Cons!57466 (h!63914 (list!18385 (left!41922 (c!848514 totalInput!464)))) (++!12539 (t!369196 (list!18385 (left!41922 (c!848514 totalInput!464)))) (list!18385 (right!42252 (c!848514 totalInput!464))))))))

(assert (= (and d!1602593 c!849069) b!4975146))

(assert (= (and d!1602593 (not c!849069)) b!4975147))

(assert (= (and d!1602593 res!2123818) b!4975148))

(assert (= (and b!4975148 res!2123819) b!4975149))

(declare-fun m!6005614 () Bool)

(assert (=> d!1602593 m!6005614))

(assert (=> d!1602593 m!6002350))

(declare-fun m!6005616 () Bool)

(assert (=> d!1602593 m!6005616))

(assert (=> d!1602593 m!6002352))

(declare-fun m!6005618 () Bool)

(assert (=> d!1602593 m!6005618))

(declare-fun m!6005620 () Bool)

(assert (=> b!4975148 m!6005620))

(assert (=> b!4975148 m!6002350))

(assert (=> b!4975148 m!6004920))

(assert (=> b!4975148 m!6002352))

(assert (=> b!4975148 m!6004932))

(assert (=> b!4975147 m!6002352))

(declare-fun m!6005622 () Bool)

(assert (=> b!4975147 m!6005622))

(assert (=> b!4973498 d!1602593))

(declare-fun b!4975153 () Bool)

(declare-fun e!3109362 () List!57590)

(assert (=> b!4975153 (= e!3109362 (++!12539 (list!18385 (left!41922 (left!41922 (c!848514 totalInput!464)))) (list!18385 (right!42252 (left!41922 (c!848514 totalInput!464))))))))

(declare-fun b!4975151 () Bool)

(declare-fun e!3109361 () List!57590)

(assert (=> b!4975151 (= e!3109361 e!3109362)))

(declare-fun c!849071 () Bool)

(assert (=> b!4975151 (= c!849071 ((_ is Leaf!25177) (left!41922 (c!848514 totalInput!464))))))

(declare-fun d!1602597 () Bool)

(declare-fun c!849070 () Bool)

(assert (=> d!1602597 (= c!849070 ((_ is Empty!15152) (left!41922 (c!848514 totalInput!464))))))

(assert (=> d!1602597 (= (list!18385 (left!41922 (c!848514 totalInput!464))) e!3109361)))

(declare-fun b!4975152 () Bool)

(assert (=> b!4975152 (= e!3109362 (list!18387 (xs!18478 (left!41922 (c!848514 totalInput!464)))))))

(declare-fun b!4975150 () Bool)

(assert (=> b!4975150 (= e!3109361 Nil!57466)))

(assert (= (and d!1602597 c!849070) b!4975150))

(assert (= (and d!1602597 (not c!849070)) b!4975151))

(assert (= (and b!4975151 c!849071) b!4975152))

(assert (= (and b!4975151 (not c!849071)) b!4975153))

(declare-fun m!6005626 () Bool)

(assert (=> b!4975153 m!6005626))

(declare-fun m!6005628 () Bool)

(assert (=> b!4975153 m!6005628))

(assert (=> b!4975153 m!6005626))

(assert (=> b!4975153 m!6005628))

(declare-fun m!6005630 () Bool)

(assert (=> b!4975153 m!6005630))

(assert (=> b!4975152 m!6004004))

(assert (=> b!4973498 d!1602597))

(declare-fun b!4975161 () Bool)

(declare-fun e!3109366 () List!57590)

(assert (=> b!4975161 (= e!3109366 (++!12539 (list!18385 (left!41922 (right!42252 (c!848514 totalInput!464)))) (list!18385 (right!42252 (right!42252 (c!848514 totalInput!464))))))))

(declare-fun b!4975159 () Bool)

(declare-fun e!3109365 () List!57590)

(assert (=> b!4975159 (= e!3109365 e!3109366)))

(declare-fun c!849075 () Bool)

(assert (=> b!4975159 (= c!849075 ((_ is Leaf!25177) (right!42252 (c!848514 totalInput!464))))))

(declare-fun d!1602603 () Bool)

(declare-fun c!849074 () Bool)

(assert (=> d!1602603 (= c!849074 ((_ is Empty!15152) (right!42252 (c!848514 totalInput!464))))))

(assert (=> d!1602603 (= (list!18385 (right!42252 (c!848514 totalInput!464))) e!3109365)))

(declare-fun b!4975160 () Bool)

(assert (=> b!4975160 (= e!3109366 (list!18387 (xs!18478 (right!42252 (c!848514 totalInput!464)))))))

(declare-fun b!4975158 () Bool)

(assert (=> b!4975158 (= e!3109365 Nil!57466)))

(assert (= (and d!1602603 c!849074) b!4975158))

(assert (= (and d!1602603 (not c!849074)) b!4975159))

(assert (= (and b!4975159 c!849075) b!4975160))

(assert (= (and b!4975159 (not c!849075)) b!4975161))

(declare-fun m!6005640 () Bool)

(assert (=> b!4975161 m!6005640))

(declare-fun m!6005642 () Bool)

(assert (=> b!4975161 m!6005642))

(assert (=> b!4975161 m!6005640))

(assert (=> b!4975161 m!6005642))

(declare-fun m!6005644 () Bool)

(assert (=> b!4975161 m!6005644))

(assert (=> b!4975160 m!6005404))

(assert (=> b!4973498 d!1602603))

(declare-fun e!3109370 () Bool)

(declare-fun tp!1394605 () Bool)

(declare-fun b!4975166 () Bool)

(declare-fun tp!1394603 () Bool)

(assert (=> b!4975166 (= e!3109370 (and (inv!75123 (left!41922 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))) tp!1394605 (inv!75123 (right!42252 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))) tp!1394603))))

(declare-fun b!4975168 () Bool)

(declare-fun e!3109369 () Bool)

(declare-fun tp!1394604 () Bool)

(assert (=> b!4975168 (= e!3109369 tp!1394604)))

(declare-fun b!4975167 () Bool)

(assert (=> b!4975167 (= e!3109370 (and (inv!75130 (xs!18478 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))) e!3109369))))

(assert (=> b!4973861 (= tp!1394575 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))) e!3109370))))

(assert (= (and b!4973861 ((_ is Node!15152) (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))) b!4975166))

(assert (= b!4975167 b!4975168))

(assert (= (and b!4973861 ((_ is Leaf!25177) (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))) b!4975167))

(declare-fun m!6005658 () Bool)

(assert (=> b!4975166 m!6005658))

(declare-fun m!6005660 () Bool)

(assert (=> b!4975166 m!6005660))

(declare-fun m!6005662 () Bool)

(assert (=> b!4975167 m!6005662))

(assert (=> b!4973861 m!6002818))

(declare-fun b!4975169 () Bool)

(declare-fun e!3109371 () Bool)

(declare-fun tp!1394606 () Bool)

(assert (=> b!4975169 (= e!3109371 (and tp_is_empty!36347 tp!1394606))))

(assert (=> b!4973821 (= tp!1394528 e!3109371)))

(assert (= (and b!4973821 ((_ is Cons!57466) (t!369196 (innerList!15240 (xs!18478 (c!848514 input!1342)))))) b!4975169))

(declare-fun e!3109379 () Bool)

(assert (=> b!4973846 (= tp!1394562 e!3109379)))

(declare-fun b!4975184 () Bool)

(assert (=> b!4975184 (= e!3109379 tp_is_empty!36347)))

(declare-fun b!4975185 () Bool)

(declare-fun tp!1394611 () Bool)

(declare-fun tp!1394608 () Bool)

(assert (=> b!4975185 (= e!3109379 (and tp!1394611 tp!1394608))))

(declare-fun b!4975187 () Bool)

(declare-fun tp!1394609 () Bool)

(declare-fun tp!1394610 () Bool)

(assert (=> b!4975187 (= e!3109379 (and tp!1394609 tp!1394610))))

(declare-fun b!4975186 () Bool)

(declare-fun tp!1394607 () Bool)

(assert (=> b!4975186 (= e!3109379 tp!1394607)))

(assert (= (and b!4973846 ((_ is ElementMatch!13633) (regOne!27778 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975184))

(assert (= (and b!4973846 ((_ is Concat!22344) (regOne!27778 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975185))

(assert (= (and b!4973846 ((_ is Star!13633) (regOne!27778 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975186))

(assert (= (and b!4973846 ((_ is Union!13633) (regOne!27778 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975187))

(declare-fun e!3109380 () Bool)

(assert (=> b!4973846 (= tp!1394559 e!3109380)))

(declare-fun b!4975188 () Bool)

(assert (=> b!4975188 (= e!3109380 tp_is_empty!36347)))

(declare-fun b!4975189 () Bool)

(declare-fun tp!1394616 () Bool)

(declare-fun tp!1394613 () Bool)

(assert (=> b!4975189 (= e!3109380 (and tp!1394616 tp!1394613))))

(declare-fun b!4975191 () Bool)

(declare-fun tp!1394614 () Bool)

(declare-fun tp!1394615 () Bool)

(assert (=> b!4975191 (= e!3109380 (and tp!1394614 tp!1394615))))

(declare-fun b!4975190 () Bool)

(declare-fun tp!1394612 () Bool)

(assert (=> b!4975190 (= e!3109380 tp!1394612)))

(assert (= (and b!4973846 ((_ is ElementMatch!13633) (regTwo!27778 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975188))

(assert (= (and b!4973846 ((_ is Concat!22344) (regTwo!27778 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975189))

(assert (= (and b!4973846 ((_ is Star!13633) (regTwo!27778 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975190))

(assert (= (and b!4973846 ((_ is Union!13633) (regTwo!27778 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975191))

(declare-fun e!3109381 () Bool)

(assert (=> b!4973838 (= tp!1394552 e!3109381)))

(declare-fun b!4975192 () Bool)

(assert (=> b!4975192 (= e!3109381 tp_is_empty!36347)))

(declare-fun b!4975193 () Bool)

(declare-fun tp!1394621 () Bool)

(declare-fun tp!1394618 () Bool)

(assert (=> b!4975193 (= e!3109381 (and tp!1394621 tp!1394618))))

(declare-fun b!4975195 () Bool)

(declare-fun tp!1394619 () Bool)

(declare-fun tp!1394620 () Bool)

(assert (=> b!4975195 (= e!3109381 (and tp!1394619 tp!1394620))))

(declare-fun b!4975194 () Bool)

(declare-fun tp!1394617 () Bool)

(assert (=> b!4975194 (= e!3109381 tp!1394617)))

(assert (= (and b!4973838 ((_ is ElementMatch!13633) (regOne!27778 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975192))

(assert (= (and b!4973838 ((_ is Concat!22344) (regOne!27778 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975193))

(assert (= (and b!4973838 ((_ is Star!13633) (regOne!27778 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975194))

(assert (= (and b!4973838 ((_ is Union!13633) (regOne!27778 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975195))

(declare-fun e!3109382 () Bool)

(assert (=> b!4973838 (= tp!1394549 e!3109382)))

(declare-fun b!4975196 () Bool)

(assert (=> b!4975196 (= e!3109382 tp_is_empty!36347)))

(declare-fun b!4975197 () Bool)

(declare-fun tp!1394626 () Bool)

(declare-fun tp!1394623 () Bool)

(assert (=> b!4975197 (= e!3109382 (and tp!1394626 tp!1394623))))

(declare-fun b!4975199 () Bool)

(declare-fun tp!1394624 () Bool)

(declare-fun tp!1394625 () Bool)

(assert (=> b!4975199 (= e!3109382 (and tp!1394624 tp!1394625))))

(declare-fun b!4975198 () Bool)

(declare-fun tp!1394622 () Bool)

(assert (=> b!4975198 (= e!3109382 tp!1394622)))

(assert (= (and b!4973838 ((_ is ElementMatch!13633) (regTwo!27778 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975196))

(assert (= (and b!4973838 ((_ is Concat!22344) (regTwo!27778 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975197))

(assert (= (and b!4973838 ((_ is Star!13633) (regTwo!27778 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975198))

(assert (= (and b!4973838 ((_ is Union!13633) (regTwo!27778 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975199))

(declare-fun e!3109383 () Bool)

(assert (=> b!4973847 (= tp!1394558 e!3109383)))

(declare-fun b!4975200 () Bool)

(assert (=> b!4975200 (= e!3109383 tp_is_empty!36347)))

(declare-fun b!4975201 () Bool)

(declare-fun tp!1394631 () Bool)

(declare-fun tp!1394628 () Bool)

(assert (=> b!4975201 (= e!3109383 (and tp!1394631 tp!1394628))))

(declare-fun b!4975203 () Bool)

(declare-fun tp!1394629 () Bool)

(declare-fun tp!1394630 () Bool)

(assert (=> b!4975203 (= e!3109383 (and tp!1394629 tp!1394630))))

(declare-fun b!4975202 () Bool)

(declare-fun tp!1394627 () Bool)

(assert (=> b!4975202 (= e!3109383 tp!1394627)))

(assert (= (and b!4973847 ((_ is ElementMatch!13633) (reg!13962 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975200))

(assert (= (and b!4973847 ((_ is Concat!22344) (reg!13962 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975201))

(assert (= (and b!4973847 ((_ is Star!13633) (reg!13962 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975202))

(assert (= (and b!4973847 ((_ is Union!13633) (reg!13962 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975203))

(declare-fun e!3109385 () Bool)

(declare-fun b!4975204 () Bool)

(declare-fun tp!1394634 () Bool)

(declare-fun tp!1394632 () Bool)

(assert (=> b!4975204 (= e!3109385 (and (inv!75123 (left!41922 (left!41922 (right!42252 (c!848514 totalInput!464))))) tp!1394634 (inv!75123 (right!42252 (left!41922 (right!42252 (c!848514 totalInput!464))))) tp!1394632))))

(declare-fun b!4975206 () Bool)

(declare-fun e!3109384 () Bool)

(declare-fun tp!1394633 () Bool)

(assert (=> b!4975206 (= e!3109384 tp!1394633)))

(declare-fun b!4975205 () Bool)

(assert (=> b!4975205 (= e!3109385 (and (inv!75130 (xs!18478 (left!41922 (right!42252 (c!848514 totalInput!464))))) e!3109384))))

(assert (=> b!4973852 (= tp!1394568 (and (inv!75123 (left!41922 (right!42252 (c!848514 totalInput!464)))) e!3109385))))

(assert (= (and b!4973852 ((_ is Node!15152) (left!41922 (right!42252 (c!848514 totalInput!464))))) b!4975204))

(assert (= b!4975205 b!4975206))

(assert (= (and b!4973852 ((_ is Leaf!25177) (left!41922 (right!42252 (c!848514 totalInput!464))))) b!4975205))

(declare-fun m!6005672 () Bool)

(assert (=> b!4975204 m!6005672))

(declare-fun m!6005674 () Bool)

(assert (=> b!4975204 m!6005674))

(declare-fun m!6005676 () Bool)

(assert (=> b!4975205 m!6005676))

(assert (=> b!4973852 m!6002800))

(declare-fun tp!1394637 () Bool)

(declare-fun b!4975207 () Bool)

(declare-fun tp!1394635 () Bool)

(declare-fun e!3109387 () Bool)

(assert (=> b!4975207 (= e!3109387 (and (inv!75123 (left!41922 (right!42252 (right!42252 (c!848514 totalInput!464))))) tp!1394637 (inv!75123 (right!42252 (right!42252 (right!42252 (c!848514 totalInput!464))))) tp!1394635))))

(declare-fun b!4975209 () Bool)

(declare-fun e!3109386 () Bool)

(declare-fun tp!1394636 () Bool)

(assert (=> b!4975209 (= e!3109386 tp!1394636)))

(declare-fun b!4975208 () Bool)

(assert (=> b!4975208 (= e!3109387 (and (inv!75130 (xs!18478 (right!42252 (right!42252 (c!848514 totalInput!464))))) e!3109386))))

(assert (=> b!4973852 (= tp!1394566 (and (inv!75123 (right!42252 (right!42252 (c!848514 totalInput!464)))) e!3109387))))

(assert (= (and b!4973852 ((_ is Node!15152) (right!42252 (right!42252 (c!848514 totalInput!464))))) b!4975207))

(assert (= b!4975208 b!4975209))

(assert (= (and b!4973852 ((_ is Leaf!25177) (right!42252 (right!42252 (c!848514 totalInput!464))))) b!4975208))

(declare-fun m!6005680 () Bool)

(assert (=> b!4975207 m!6005680))

(declare-fun m!6005682 () Bool)

(assert (=> b!4975207 m!6005682))

(declare-fun m!6005684 () Bool)

(assert (=> b!4975208 m!6005684))

(assert (=> b!4973852 m!6002802))

(declare-fun b!4975210 () Bool)

(declare-fun e!3109388 () Bool)

(declare-fun tp!1394638 () Bool)

(assert (=> b!4975210 (= e!3109388 (and tp_is_empty!36347 tp!1394638))))

(assert (=> b!4973854 (= tp!1394567 e!3109388)))

(assert (= (and b!4973854 ((_ is Cons!57466) (innerList!15240 (xs!18478 (right!42252 (c!848514 totalInput!464)))))) b!4975210))

(declare-fun e!3109389 () Bool)

(assert (=> b!4973830 (= tp!1394542 e!3109389)))

(declare-fun b!4975211 () Bool)

(assert (=> b!4975211 (= e!3109389 tp_is_empty!36347)))

(declare-fun b!4975212 () Bool)

(declare-fun tp!1394643 () Bool)

(declare-fun tp!1394640 () Bool)

(assert (=> b!4975212 (= e!3109389 (and tp!1394643 tp!1394640))))

(declare-fun b!4975214 () Bool)

(declare-fun tp!1394641 () Bool)

(declare-fun tp!1394642 () Bool)

(assert (=> b!4975214 (= e!3109389 (and tp!1394641 tp!1394642))))

(declare-fun b!4975213 () Bool)

(declare-fun tp!1394639 () Bool)

(assert (=> b!4975213 (= e!3109389 tp!1394639)))

(assert (= (and b!4973830 ((_ is ElementMatch!13633) (regOne!27778 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975211))

(assert (= (and b!4973830 ((_ is Concat!22344) (regOne!27778 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975212))

(assert (= (and b!4973830 ((_ is Star!13633) (regOne!27778 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975213))

(assert (= (and b!4973830 ((_ is Union!13633) (regOne!27778 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975214))

(declare-fun e!3109390 () Bool)

(assert (=> b!4973830 (= tp!1394539 e!3109390)))

(declare-fun b!4975215 () Bool)

(assert (=> b!4975215 (= e!3109390 tp_is_empty!36347)))

(declare-fun b!4975216 () Bool)

(declare-fun tp!1394648 () Bool)

(declare-fun tp!1394645 () Bool)

(assert (=> b!4975216 (= e!3109390 (and tp!1394648 tp!1394645))))

(declare-fun b!4975218 () Bool)

(declare-fun tp!1394646 () Bool)

(declare-fun tp!1394647 () Bool)

(assert (=> b!4975218 (= e!3109390 (and tp!1394646 tp!1394647))))

(declare-fun b!4975217 () Bool)

(declare-fun tp!1394644 () Bool)

(assert (=> b!4975217 (= e!3109390 tp!1394644)))

(assert (= (and b!4973830 ((_ is ElementMatch!13633) (regTwo!27778 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975215))

(assert (= (and b!4973830 ((_ is Concat!22344) (regTwo!27778 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975216))

(assert (= (and b!4973830 ((_ is Star!13633) (regTwo!27778 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975217))

(assert (= (and b!4973830 ((_ is Union!13633) (regTwo!27778 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975218))

(declare-fun e!3109391 () Bool)

(assert (=> b!4973839 (= tp!1394548 e!3109391)))

(declare-fun b!4975219 () Bool)

(assert (=> b!4975219 (= e!3109391 tp_is_empty!36347)))

(declare-fun b!4975220 () Bool)

(declare-fun tp!1394653 () Bool)

(declare-fun tp!1394650 () Bool)

(assert (=> b!4975220 (= e!3109391 (and tp!1394653 tp!1394650))))

(declare-fun b!4975222 () Bool)

(declare-fun tp!1394651 () Bool)

(declare-fun tp!1394652 () Bool)

(assert (=> b!4975222 (= e!3109391 (and tp!1394651 tp!1394652))))

(declare-fun b!4975221 () Bool)

(declare-fun tp!1394649 () Bool)

(assert (=> b!4975221 (= e!3109391 tp!1394649)))

(assert (= (and b!4973839 ((_ is ElementMatch!13633) (reg!13962 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975219))

(assert (= (and b!4973839 ((_ is Concat!22344) (reg!13962 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975220))

(assert (= (and b!4973839 ((_ is Star!13633) (reg!13962 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975221))

(assert (= (and b!4973839 ((_ is Union!13633) (reg!13962 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975222))

(declare-fun e!3109397 () Bool)

(assert (=> b!4973848 (= tp!1394560 e!3109397)))

(declare-fun b!4975233 () Bool)

(assert (=> b!4975233 (= e!3109397 tp_is_empty!36347)))

(declare-fun b!4975234 () Bool)

(declare-fun tp!1394658 () Bool)

(declare-fun tp!1394655 () Bool)

(assert (=> b!4975234 (= e!3109397 (and tp!1394658 tp!1394655))))

(declare-fun b!4975236 () Bool)

(declare-fun tp!1394656 () Bool)

(declare-fun tp!1394657 () Bool)

(assert (=> b!4975236 (= e!3109397 (and tp!1394656 tp!1394657))))

(declare-fun b!4975235 () Bool)

(declare-fun tp!1394654 () Bool)

(assert (=> b!4975235 (= e!3109397 tp!1394654)))

(assert (= (and b!4973848 ((_ is ElementMatch!13633) (regOne!27779 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975233))

(assert (= (and b!4973848 ((_ is Concat!22344) (regOne!27779 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975234))

(assert (= (and b!4973848 ((_ is Star!13633) (regOne!27779 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975235))

(assert (= (and b!4973848 ((_ is Union!13633) (regOne!27779 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975236))

(declare-fun e!3109398 () Bool)

(assert (=> b!4973848 (= tp!1394561 e!3109398)))

(declare-fun b!4975237 () Bool)

(assert (=> b!4975237 (= e!3109398 tp_is_empty!36347)))

(declare-fun b!4975238 () Bool)

(declare-fun tp!1394663 () Bool)

(declare-fun tp!1394660 () Bool)

(assert (=> b!4975238 (= e!3109398 (and tp!1394663 tp!1394660))))

(declare-fun b!4975240 () Bool)

(declare-fun tp!1394661 () Bool)

(declare-fun tp!1394662 () Bool)

(assert (=> b!4975240 (= e!3109398 (and tp!1394661 tp!1394662))))

(declare-fun b!4975239 () Bool)

(declare-fun tp!1394659 () Bool)

(assert (=> b!4975239 (= e!3109398 tp!1394659)))

(assert (= (and b!4973848 ((_ is ElementMatch!13633) (regTwo!27779 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975237))

(assert (= (and b!4973848 ((_ is Concat!22344) (regTwo!27779 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975238))

(assert (= (and b!4973848 ((_ is Star!13633) (regTwo!27779 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975239))

(assert (= (and b!4973848 ((_ is Union!13633) (regTwo!27779 (regTwo!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975240))

(declare-fun tp!1394664 () Bool)

(declare-fun e!3109400 () Bool)

(declare-fun tp!1394666 () Bool)

(declare-fun b!4975241 () Bool)

(assert (=> b!4975241 (= e!3109400 (and (inv!75123 (left!41922 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853))))))) tp!1394666 (inv!75123 (right!42252 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853))))))) tp!1394664))))

(declare-fun b!4975243 () Bool)

(declare-fun e!3109399 () Bool)

(declare-fun tp!1394665 () Bool)

(assert (=> b!4975243 (= e!3109399 tp!1394665)))

(declare-fun b!4975242 () Bool)

(assert (=> b!4975242 (= e!3109400 (and (inv!75130 (xs!18478 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853))))))) e!3109399))))

(assert (=> b!4973268 (= tp!1394469 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853)))))) e!3109400))))

(assert (= (and b!4973268 ((_ is Node!15152) (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853))))))) b!4975241))

(assert (= b!4975242 b!4975243))

(assert (= (and b!4973268 ((_ is Leaf!25177) (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))) (value!268840 (_1!34412 (get!19957 lt!2053853))))))) b!4975242))

(declare-fun m!6005692 () Bool)

(assert (=> b!4975241 m!6005692))

(declare-fun m!6005694 () Bool)

(assert (=> b!4975241 m!6005694))

(declare-fun m!6005696 () Bool)

(assert (=> b!4975242 m!6005696))

(assert (=> b!4973268 m!6001940))

(declare-fun e!3109401 () Bool)

(assert (=> b!4973831 (= tp!1394538 e!3109401)))

(declare-fun b!4975244 () Bool)

(assert (=> b!4975244 (= e!3109401 tp_is_empty!36347)))

(declare-fun b!4975245 () Bool)

(declare-fun tp!1394671 () Bool)

(declare-fun tp!1394668 () Bool)

(assert (=> b!4975245 (= e!3109401 (and tp!1394671 tp!1394668))))

(declare-fun b!4975247 () Bool)

(declare-fun tp!1394669 () Bool)

(declare-fun tp!1394670 () Bool)

(assert (=> b!4975247 (= e!3109401 (and tp!1394669 tp!1394670))))

(declare-fun b!4975246 () Bool)

(declare-fun tp!1394667 () Bool)

(assert (=> b!4975246 (= e!3109401 tp!1394667)))

(assert (= (and b!4973831 ((_ is ElementMatch!13633) (reg!13962 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975244))

(assert (= (and b!4973831 ((_ is Concat!22344) (reg!13962 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975245))

(assert (= (and b!4973831 ((_ is Star!13633) (reg!13962 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975246))

(assert (= (and b!4973831 ((_ is Union!13633) (reg!13962 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975247))

(declare-fun e!3109402 () Bool)

(assert (=> b!4973840 (= tp!1394550 e!3109402)))

(declare-fun b!4975248 () Bool)

(assert (=> b!4975248 (= e!3109402 tp_is_empty!36347)))

(declare-fun b!4975249 () Bool)

(declare-fun tp!1394676 () Bool)

(declare-fun tp!1394673 () Bool)

(assert (=> b!4975249 (= e!3109402 (and tp!1394676 tp!1394673))))

(declare-fun b!4975251 () Bool)

(declare-fun tp!1394674 () Bool)

(declare-fun tp!1394675 () Bool)

(assert (=> b!4975251 (= e!3109402 (and tp!1394674 tp!1394675))))

(declare-fun b!4975250 () Bool)

(declare-fun tp!1394672 () Bool)

(assert (=> b!4975250 (= e!3109402 tp!1394672)))

(assert (= (and b!4973840 ((_ is ElementMatch!13633) (regOne!27779 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975248))

(assert (= (and b!4973840 ((_ is Concat!22344) (regOne!27779 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975249))

(assert (= (and b!4973840 ((_ is Star!13633) (regOne!27779 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975250))

(assert (= (and b!4973840 ((_ is Union!13633) (regOne!27779 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975251))

(declare-fun e!3109403 () Bool)

(assert (=> b!4973840 (= tp!1394551 e!3109403)))

(declare-fun b!4975252 () Bool)

(assert (=> b!4975252 (= e!3109403 tp_is_empty!36347)))

(declare-fun b!4975253 () Bool)

(declare-fun tp!1394681 () Bool)

(declare-fun tp!1394678 () Bool)

(assert (=> b!4975253 (= e!3109403 (and tp!1394681 tp!1394678))))

(declare-fun b!4975255 () Bool)

(declare-fun tp!1394679 () Bool)

(declare-fun tp!1394680 () Bool)

(assert (=> b!4975255 (= e!3109403 (and tp!1394679 tp!1394680))))

(declare-fun b!4975254 () Bool)

(declare-fun tp!1394677 () Bool)

(assert (=> b!4975254 (= e!3109403 tp!1394677)))

(assert (= (and b!4973840 ((_ is ElementMatch!13633) (regTwo!27779 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975252))

(assert (= (and b!4973840 ((_ is Concat!22344) (regTwo!27779 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975253))

(assert (= (and b!4973840 ((_ is Star!13633) (regTwo!27779 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975254))

(assert (= (and b!4973840 ((_ is Union!13633) (regTwo!27779 (reg!13962 (regex!8400 (h!63915 rulesArg!259)))))) b!4975255))

(declare-fun e!3109404 () Bool)

(assert (=> b!4973832 (= tp!1394540 e!3109404)))

(declare-fun b!4975256 () Bool)

(assert (=> b!4975256 (= e!3109404 tp_is_empty!36347)))

(declare-fun b!4975257 () Bool)

(declare-fun tp!1394686 () Bool)

(declare-fun tp!1394683 () Bool)

(assert (=> b!4975257 (= e!3109404 (and tp!1394686 tp!1394683))))

(declare-fun b!4975259 () Bool)

(declare-fun tp!1394684 () Bool)

(declare-fun tp!1394685 () Bool)

(assert (=> b!4975259 (= e!3109404 (and tp!1394684 tp!1394685))))

(declare-fun b!4975258 () Bool)

(declare-fun tp!1394682 () Bool)

(assert (=> b!4975258 (= e!3109404 tp!1394682)))

(assert (= (and b!4973832 ((_ is ElementMatch!13633) (regOne!27779 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975256))

(assert (= (and b!4973832 ((_ is Concat!22344) (regOne!27779 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975257))

(assert (= (and b!4973832 ((_ is Star!13633) (regOne!27779 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975258))

(assert (= (and b!4973832 ((_ is Union!13633) (regOne!27779 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975259))

(declare-fun e!3109405 () Bool)

(assert (=> b!4973832 (= tp!1394541 e!3109405)))

(declare-fun b!4975260 () Bool)

(assert (=> b!4975260 (= e!3109405 tp_is_empty!36347)))

(declare-fun b!4975261 () Bool)

(declare-fun tp!1394691 () Bool)

(declare-fun tp!1394688 () Bool)

(assert (=> b!4975261 (= e!3109405 (and tp!1394691 tp!1394688))))

(declare-fun b!4975263 () Bool)

(declare-fun tp!1394689 () Bool)

(declare-fun tp!1394690 () Bool)

(assert (=> b!4975263 (= e!3109405 (and tp!1394689 tp!1394690))))

(declare-fun b!4975262 () Bool)

(declare-fun tp!1394687 () Bool)

(assert (=> b!4975262 (= e!3109405 tp!1394687)))

(assert (= (and b!4973832 ((_ is ElementMatch!13633) (regTwo!27779 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975260))

(assert (= (and b!4973832 ((_ is Concat!22344) (regTwo!27779 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975261))

(assert (= (and b!4973832 ((_ is Star!13633) (regTwo!27779 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975262))

(assert (= (and b!4973832 ((_ is Union!13633) (regTwo!27779 (regTwo!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975263))

(declare-fun b!4975266 () Bool)

(declare-fun b_free!132871 () Bool)

(declare-fun b_next!133661 () Bool)

(assert (=> b!4975266 (= b_free!132871 (not b_next!133661))))

(declare-fun t!369461 () Bool)

(declare-fun tb!261391 () Bool)

(assert (=> (and b!4975266 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369461) tb!261391))

(declare-fun result!326582 () Bool)

(assert (= result!326582 result!326376))

(assert (=> bs!1183712 t!369461))

(declare-fun t!369463 () Bool)

(declare-fun tb!261393 () Bool)

(assert (=> (and b!4975266 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369463) tb!261393))

(declare-fun result!326584 () Bool)

(assert (= result!326584 result!326546))

(assert (=> d!1602509 t!369463))

(declare-fun t!369465 () Bool)

(declare-fun tb!261395 () Bool)

(assert (=> (and b!4975266 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369465) tb!261395))

(declare-fun result!326586 () Bool)

(assert (= result!326586 result!326414))

(assert (=> d!1601621 t!369465))

(declare-fun t!369467 () Bool)

(declare-fun tb!261397 () Bool)

(assert (=> (and b!4975266 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369467) tb!261397))

(declare-fun result!326588 () Bool)

(assert (= result!326588 result!326372))

(assert (=> bs!1183714 t!369467))

(assert (=> d!1601641 t!369465))

(declare-fun tb!261399 () Bool)

(declare-fun t!369469 () Bool)

(assert (=> (and b!4975266 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))) t!369469) tb!261399))

(declare-fun result!326590 () Bool)

(assert (= result!326590 result!326324))

(assert (=> d!1601289 t!369469))

(declare-fun tb!261401 () Bool)

(declare-fun t!369471 () Bool)

(assert (=> (and b!4975266 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040)))))) t!369471) tb!261401))

(declare-fun result!326592 () Bool)

(assert (= result!326592 result!326510))

(assert (=> d!1602133 t!369471))

(assert (=> d!1601541 t!369467))

(declare-fun t!369473 () Bool)

(declare-fun tb!261403 () Bool)

(assert (=> (and b!4975266 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369473) tb!261403))

(declare-fun result!326594 () Bool)

(assert (= result!326594 result!326572))

(assert (=> d!1602569 t!369473))

(declare-fun t!369475 () Bool)

(declare-fun tb!261405 () Bool)

(assert (=> (and b!4975266 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259)))) t!369475) tb!261405))

(declare-fun result!326596 () Bool)

(assert (= result!326596 result!326444))

(assert (=> d!1601833 t!369475))

(assert (=> d!1602493 t!369463))

(declare-fun t!369477 () Bool)

(declare-fun tb!261407 () Bool)

(assert (=> (and b!4975266 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011)))))) t!369477) tb!261407))

(declare-fun result!326598 () Bool)

(assert (= result!326598 result!326492))

(assert (=> d!1602047 t!369477))

(declare-fun tb!261409 () Bool)

(declare-fun t!369479 () Bool)

(assert (=> (and b!4975266 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))))) t!369479) tb!261409))

(declare-fun result!326600 () Bool)

(assert (= result!326600 result!326426))

(assert (=> d!1601683 t!369479))

(assert (=> d!1601813 t!369475))

(assert (=> d!1602555 t!369473))

(assert (=> d!1601541 t!369461))

(declare-fun t!369481 () Bool)

(declare-fun tb!261411 () Bool)

(assert (=> (and b!4975266 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369481) tb!261411))

(declare-fun result!326602 () Bool)

(assert (= result!326602 result!326420))

(assert (=> d!1601641 t!369481))

(assert (=> d!1601527 t!369467))

(declare-fun tb!261413 () Bool)

(declare-fun t!369483 () Bool)

(assert (=> (and b!4975266 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))))) t!369483) tb!261413))

(declare-fun result!326604 () Bool)

(assert (= result!326604 result!326402))

(assert (=> d!1601583 t!369483))

(declare-fun tp!1394692 () Bool)

(declare-fun b_and!349161 () Bool)

(assert (=> b!4975266 (= tp!1394692 (and (=> t!369467 result!326588) (=> t!369483 result!326604) (=> t!369469 result!326590) (=> t!369465 result!326586) (=> t!369477 result!326598) (=> t!369463 result!326584) (=> t!369461 result!326582) (=> t!369481 result!326602) (=> t!369479 result!326600) (=> t!369473 result!326594) (=> t!369475 result!326596) (=> t!369471 result!326592) b_and!349161))))

(declare-fun b_free!132873 () Bool)

(declare-fun b_next!133663 () Bool)

(assert (=> b!4975266 (= b_free!132873 (not b_next!133663))))

(declare-fun t!369485 () Bool)

(declare-fun tb!261415 () Bool)

(assert (=> (and b!4975266 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369485) tb!261415))

(declare-fun result!326606 () Bool)

(assert (= result!326606 result!326396))

(assert (=> bs!1183714 t!369485))

(declare-fun t!369487 () Bool)

(declare-fun tb!261417 () Bool)

(assert (=> (and b!4975266 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369487) tb!261417))

(declare-fun result!326608 () Bool)

(assert (= result!326608 result!326564))

(assert (=> d!1602555 t!369487))

(declare-fun t!369489 () Bool)

(declare-fun tb!261419 () Bool)

(assert (=> (and b!4975266 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369489) tb!261419))

(declare-fun result!326610 () Bool)

(assert (= result!326610 result!326540))

(assert (=> d!1602493 t!369489))

(declare-fun tb!261421 () Bool)

(declare-fun t!369491 () Bool)

(assert (=> (and b!4975266 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853)))))) t!369491) tb!261421))

(declare-fun result!326612 () Bool)

(assert (= result!326612 result!326318))

(assert (=> d!1601277 t!369491))

(declare-fun tb!261423 () Bool)

(declare-fun t!369493 () Bool)

(assert (=> (and b!4975266 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054151)))))) t!369493) tb!261423))

(declare-fun result!326614 () Bool)

(assert (= result!326614 result!326486))

(assert (=> d!1602011 t!369493))

(declare-fun tb!261425 () Bool)

(declare-fun t!369495 () Bool)

(assert (=> (and b!4975266 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054011)))))) t!369495) tb!261425))

(declare-fun result!326616 () Bool)

(assert (= result!326616 result!326408))

(assert (=> d!1601615 t!369495))

(declare-fun tb!261427 () Bool)

(declare-fun t!369497 () Bool)

(assert (=> (and b!4975266 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054115)))))) t!369497) tb!261427))

(declare-fun result!326618 () Bool)

(assert (= result!326618 result!326468))

(assert (=> d!1601937 t!369497))

(declare-fun t!369499 () Bool)

(declare-fun tb!261429 () Bool)

(assert (=> (and b!4975266 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369499) tb!261429))

(declare-fun result!326620 () Bool)

(assert (= result!326620 result!326456))

(assert (=> d!1601833 t!369499))

(declare-fun t!369501 () Bool)

(declare-fun tb!261431 () Bool)

(assert (=> (and b!4975266 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2054040)))))) t!369501) tb!261431))

(declare-fun result!326622 () Bool)

(assert (= result!326622 result!326432))

(assert (=> d!1601697 t!369501))

(declare-fun t!369503 () Bool)

(declare-fun tb!261433 () Bool)

(assert (=> (and b!4975266 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259)))) t!369503) tb!261433))

(declare-fun result!326624 () Bool)

(assert (= result!326624 result!326390))

(assert (=> bs!1183712 t!369503))

(declare-fun b_and!349163 () Bool)

(declare-fun tp!1394693 () Bool)

(assert (=> b!4975266 (= tp!1394693 (and (=> t!369501 result!326622) (=> t!369503 result!326624) (=> t!369499 result!326620) (=> t!369489 result!326610) (=> t!369497 result!326618) (=> t!369487 result!326608) (=> t!369485 result!326606) (=> t!369491 result!326612) (=> t!369493 result!326614) (=> t!369495 result!326616) b_and!349163))))

(declare-fun e!3109406 () Bool)

(assert (=> b!4975266 (= e!3109406 (and tp!1394692 tp!1394693))))

(declare-fun b!4975265 () Bool)

(declare-fun e!3109409 () Bool)

(declare-fun tp!1394694 () Bool)

(assert (=> b!4975265 (= e!3109409 (and tp!1394694 (inv!75118 (tag!9264 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (inv!75122 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) e!3109406))))

(declare-fun b!4975264 () Bool)

(declare-fun e!3109407 () Bool)

(declare-fun tp!1394695 () Bool)

(assert (=> b!4975264 (= e!3109407 (and e!3109409 tp!1394695))))

(assert (=> b!4973822 (= tp!1394532 e!3109407)))

(assert (= b!4975265 b!4975266))

(assert (= b!4975264 b!4975265))

(assert (= (and b!4973822 ((_ is Cons!57467) (t!369197 (t!369197 (t!369197 rulesArg!259))))) b!4975264))

(declare-fun m!6005734 () Bool)

(assert (=> b!4975265 m!6005734))

(declare-fun m!6005736 () Bool)

(assert (=> b!4975265 m!6005736))

(declare-fun tp!1394698 () Bool)

(declare-fun tp!1394696 () Bool)

(declare-fun b!4975290 () Bool)

(declare-fun e!3109425 () Bool)

(assert (=> b!4975290 (= e!3109425 (and (inv!75123 (left!41922 (left!41922 (left!41922 (c!848514 totalInput!464))))) tp!1394698 (inv!75123 (right!42252 (left!41922 (left!41922 (c!848514 totalInput!464))))) tp!1394696))))

(declare-fun b!4975292 () Bool)

(declare-fun e!3109424 () Bool)

(declare-fun tp!1394697 () Bool)

(assert (=> b!4975292 (= e!3109424 tp!1394697)))

(declare-fun b!4975291 () Bool)

(assert (=> b!4975291 (= e!3109425 (and (inv!75130 (xs!18478 (left!41922 (left!41922 (c!848514 totalInput!464))))) e!3109424))))

(assert (=> b!4973849 (= tp!1394565 (and (inv!75123 (left!41922 (left!41922 (c!848514 totalInput!464)))) e!3109425))))

(assert (= (and b!4973849 ((_ is Node!15152) (left!41922 (left!41922 (c!848514 totalInput!464))))) b!4975290))

(assert (= b!4975291 b!4975292))

(assert (= (and b!4973849 ((_ is Leaf!25177) (left!41922 (left!41922 (c!848514 totalInput!464))))) b!4975291))

(declare-fun m!6005738 () Bool)

(assert (=> b!4975290 m!6005738))

(declare-fun m!6005740 () Bool)

(assert (=> b!4975290 m!6005740))

(declare-fun m!6005742 () Bool)

(assert (=> b!4975291 m!6005742))

(assert (=> b!4973849 m!6002794))

(declare-fun tp!1394699 () Bool)

(declare-fun e!3109427 () Bool)

(declare-fun tp!1394701 () Bool)

(declare-fun b!4975293 () Bool)

(assert (=> b!4975293 (= e!3109427 (and (inv!75123 (left!41922 (right!42252 (left!41922 (c!848514 totalInput!464))))) tp!1394701 (inv!75123 (right!42252 (right!42252 (left!41922 (c!848514 totalInput!464))))) tp!1394699))))

(declare-fun b!4975295 () Bool)

(declare-fun e!3109426 () Bool)

(declare-fun tp!1394700 () Bool)

(assert (=> b!4975295 (= e!3109426 tp!1394700)))

(declare-fun b!4975294 () Bool)

(assert (=> b!4975294 (= e!3109427 (and (inv!75130 (xs!18478 (right!42252 (left!41922 (c!848514 totalInput!464))))) e!3109426))))

(assert (=> b!4973849 (= tp!1394563 (and (inv!75123 (right!42252 (left!41922 (c!848514 totalInput!464)))) e!3109427))))

(assert (= (and b!4973849 ((_ is Node!15152) (right!42252 (left!41922 (c!848514 totalInput!464))))) b!4975293))

(assert (= b!4975294 b!4975295))

(assert (= (and b!4973849 ((_ is Leaf!25177) (right!42252 (left!41922 (c!848514 totalInput!464))))) b!4975294))

(declare-fun m!6005744 () Bool)

(assert (=> b!4975293 m!6005744))

(declare-fun m!6005746 () Bool)

(assert (=> b!4975293 m!6005746))

(declare-fun m!6005748 () Bool)

(assert (=> b!4975294 m!6005748))

(assert (=> b!4973849 m!6002796))

(declare-fun b!4975296 () Bool)

(declare-fun tp!1394702 () Bool)

(declare-fun tp!1394704 () Bool)

(declare-fun e!3109429 () Bool)

(assert (=> b!4975296 (= e!3109429 (and (inv!75123 (left!41922 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837)))))) tp!1394704 (inv!75123 (right!42252 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837)))))) tp!1394702))))

(declare-fun b!4975298 () Bool)

(declare-fun e!3109428 () Bool)

(declare-fun tp!1394703 () Bool)

(assert (=> b!4975298 (= e!3109428 tp!1394703)))

(declare-fun b!4975297 () Bool)

(assert (=> b!4975297 (= e!3109429 (and (inv!75130 (xs!18478 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837)))))) e!3109428))))

(assert (=> b!4973862 (= tp!1394576 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837))))) e!3109429))))

(assert (= (and b!4973862 ((_ is Node!15152) (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837)))))) b!4975296))

(assert (= b!4975297 b!4975298))

(assert (= (and b!4973862 ((_ is Leaf!25177) (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837)))))) b!4975297))

(declare-fun m!6005750 () Bool)

(assert (=> b!4975296 m!6005750))

(declare-fun m!6005752 () Bool)

(assert (=> b!4975296 m!6005752))

(declare-fun m!6005756 () Bool)

(assert (=> b!4975297 m!6005756))

(assert (=> b!4973862 m!6002826))

(declare-fun e!3109431 () Bool)

(assert (=> b!4973823 (= tp!1394531 e!3109431)))

(declare-fun b!4975299 () Bool)

(assert (=> b!4975299 (= e!3109431 tp_is_empty!36347)))

(declare-fun b!4975300 () Bool)

(declare-fun tp!1394709 () Bool)

(declare-fun tp!1394706 () Bool)

(assert (=> b!4975300 (= e!3109431 (and tp!1394709 tp!1394706))))

(declare-fun b!4975302 () Bool)

(declare-fun tp!1394707 () Bool)

(declare-fun tp!1394708 () Bool)

(assert (=> b!4975302 (= e!3109431 (and tp!1394707 tp!1394708))))

(declare-fun b!4975301 () Bool)

(declare-fun tp!1394705 () Bool)

(assert (=> b!4975301 (= e!3109431 tp!1394705)))

(assert (= (and b!4973823 ((_ is ElementMatch!13633) (regex!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))))) b!4975299))

(assert (= (and b!4973823 ((_ is Concat!22344) (regex!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))))) b!4975300))

(assert (= (and b!4973823 ((_ is Star!13633) (regex!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))))) b!4975301))

(assert (= (and b!4973823 ((_ is Union!13633) (regex!8400 (h!63915 (t!369197 (t!369197 rulesArg!259)))))) b!4975302))

(declare-fun e!3109433 () Bool)

(declare-fun b!4975303 () Bool)

(declare-fun tp!1394712 () Bool)

(declare-fun tp!1394710 () Bool)

(assert (=> b!4975303 (= e!3109433 (and (inv!75123 (left!41922 (left!41922 (right!42252 (c!848514 input!1342))))) tp!1394712 (inv!75123 (right!42252 (left!41922 (right!42252 (c!848514 input!1342))))) tp!1394710))))

(declare-fun b!4975305 () Bool)

(declare-fun e!3109432 () Bool)

(declare-fun tp!1394711 () Bool)

(assert (=> b!4975305 (= e!3109432 tp!1394711)))

(declare-fun b!4975304 () Bool)

(assert (=> b!4975304 (= e!3109433 (and (inv!75130 (xs!18478 (left!41922 (right!42252 (c!848514 input!1342))))) e!3109432))))

(assert (=> b!4973858 (= tp!1394574 (and (inv!75123 (left!41922 (right!42252 (c!848514 input!1342)))) e!3109433))))

(assert (= (and b!4973858 ((_ is Node!15152) (left!41922 (right!42252 (c!848514 input!1342))))) b!4975303))

(assert (= b!4975304 b!4975305))

(assert (= (and b!4973858 ((_ is Leaf!25177) (left!41922 (right!42252 (c!848514 input!1342))))) b!4975304))

(declare-fun m!6005758 () Bool)

(assert (=> b!4975303 m!6005758))

(declare-fun m!6005760 () Bool)

(assert (=> b!4975303 m!6005760))

(declare-fun m!6005762 () Bool)

(assert (=> b!4975304 m!6005762))

(assert (=> b!4973858 m!6002812))

(declare-fun tp!1394713 () Bool)

(declare-fun e!3109436 () Bool)

(declare-fun tp!1394715 () Bool)

(declare-fun b!4975306 () Bool)

(assert (=> b!4975306 (= e!3109436 (and (inv!75123 (left!41922 (right!42252 (right!42252 (c!848514 input!1342))))) tp!1394715 (inv!75123 (right!42252 (right!42252 (right!42252 (c!848514 input!1342))))) tp!1394713))))

(declare-fun b!4975308 () Bool)

(declare-fun e!3109435 () Bool)

(declare-fun tp!1394714 () Bool)

(assert (=> b!4975308 (= e!3109435 tp!1394714)))

(declare-fun b!4975307 () Bool)

(assert (=> b!4975307 (= e!3109436 (and (inv!75130 (xs!18478 (right!42252 (right!42252 (c!848514 input!1342))))) e!3109435))))

(assert (=> b!4973858 (= tp!1394572 (and (inv!75123 (right!42252 (right!42252 (c!848514 input!1342)))) e!3109436))))

(assert (= (and b!4973858 ((_ is Node!15152) (right!42252 (right!42252 (c!848514 input!1342))))) b!4975306))

(assert (= b!4975307 b!4975308))

(assert (= (and b!4973858 ((_ is Leaf!25177) (right!42252 (right!42252 (c!848514 input!1342))))) b!4975307))

(declare-fun m!6005766 () Bool)

(assert (=> b!4975306 m!6005766))

(declare-fun m!6005768 () Bool)

(assert (=> b!4975306 m!6005768))

(declare-fun m!6005770 () Bool)

(assert (=> b!4975307 m!6005770))

(assert (=> b!4973858 m!6002814))

(declare-fun b!4975309 () Bool)

(declare-fun e!3109437 () Bool)

(declare-fun tp!1394716 () Bool)

(assert (=> b!4975309 (= e!3109437 (and tp_is_empty!36347 tp!1394716))))

(assert (=> b!4973860 (= tp!1394573 e!3109437)))

(assert (= (and b!4973860 ((_ is Cons!57466) (innerList!15240 (xs!18478 (right!42252 (c!848514 input!1342)))))) b!4975309))

(declare-fun b!4975310 () Bool)

(declare-fun e!3109438 () Bool)

(declare-fun tp!1394717 () Bool)

(assert (=> b!4975310 (= e!3109438 (and tp_is_empty!36347 tp!1394717))))

(assert (=> b!4973851 (= tp!1394564 e!3109438)))

(assert (= (and b!4973851 ((_ is Cons!57466) (innerList!15240 (xs!18478 (left!41922 (c!848514 totalInput!464)))))) b!4975310))

(declare-fun e!3109439 () Bool)

(assert (=> b!4973842 (= tp!1394557 e!3109439)))

(declare-fun b!4975311 () Bool)

(assert (=> b!4975311 (= e!3109439 tp_is_empty!36347)))

(declare-fun b!4975312 () Bool)

(declare-fun tp!1394722 () Bool)

(declare-fun tp!1394719 () Bool)

(assert (=> b!4975312 (= e!3109439 (and tp!1394722 tp!1394719))))

(declare-fun b!4975314 () Bool)

(declare-fun tp!1394720 () Bool)

(declare-fun tp!1394721 () Bool)

(assert (=> b!4975314 (= e!3109439 (and tp!1394720 tp!1394721))))

(declare-fun b!4975313 () Bool)

(declare-fun tp!1394718 () Bool)

(assert (=> b!4975313 (= e!3109439 tp!1394718)))

(assert (= (and b!4973842 ((_ is ElementMatch!13633) (regOne!27778 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975311))

(assert (= (and b!4973842 ((_ is Concat!22344) (regOne!27778 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975312))

(assert (= (and b!4973842 ((_ is Star!13633) (regOne!27778 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975313))

(assert (= (and b!4973842 ((_ is Union!13633) (regOne!27778 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975314))

(declare-fun e!3109440 () Bool)

(assert (=> b!4973842 (= tp!1394554 e!3109440)))

(declare-fun b!4975315 () Bool)

(assert (=> b!4975315 (= e!3109440 tp_is_empty!36347)))

(declare-fun b!4975316 () Bool)

(declare-fun tp!1394727 () Bool)

(declare-fun tp!1394724 () Bool)

(assert (=> b!4975316 (= e!3109440 (and tp!1394727 tp!1394724))))

(declare-fun b!4975318 () Bool)

(declare-fun tp!1394725 () Bool)

(declare-fun tp!1394726 () Bool)

(assert (=> b!4975318 (= e!3109440 (and tp!1394725 tp!1394726))))

(declare-fun b!4975317 () Bool)

(declare-fun tp!1394723 () Bool)

(assert (=> b!4975317 (= e!3109440 tp!1394723)))

(assert (= (and b!4973842 ((_ is ElementMatch!13633) (regTwo!27778 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975315))

(assert (= (and b!4973842 ((_ is Concat!22344) (regTwo!27778 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975316))

(assert (= (and b!4973842 ((_ is Star!13633) (regTwo!27778 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975317))

(assert (= (and b!4973842 ((_ is Union!13633) (regTwo!27778 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975318))

(declare-fun e!3109441 () Bool)

(assert (=> b!4973844 (= tp!1394555 e!3109441)))

(declare-fun b!4975319 () Bool)

(assert (=> b!4975319 (= e!3109441 tp_is_empty!36347)))

(declare-fun b!4975320 () Bool)

(declare-fun tp!1394732 () Bool)

(declare-fun tp!1394729 () Bool)

(assert (=> b!4975320 (= e!3109441 (and tp!1394732 tp!1394729))))

(declare-fun b!4975322 () Bool)

(declare-fun tp!1394730 () Bool)

(declare-fun tp!1394731 () Bool)

(assert (=> b!4975322 (= e!3109441 (and tp!1394730 tp!1394731))))

(declare-fun b!4975321 () Bool)

(declare-fun tp!1394728 () Bool)

(assert (=> b!4975321 (= e!3109441 tp!1394728)))

(assert (= (and b!4973844 ((_ is ElementMatch!13633) (regOne!27779 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975319))

(assert (= (and b!4973844 ((_ is Concat!22344) (regOne!27779 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975320))

(assert (= (and b!4973844 ((_ is Star!13633) (regOne!27779 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975321))

(assert (= (and b!4973844 ((_ is Union!13633) (regOne!27779 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975322))

(declare-fun e!3109443 () Bool)

(assert (=> b!4973844 (= tp!1394556 e!3109443)))

(declare-fun b!4975324 () Bool)

(assert (=> b!4975324 (= e!3109443 tp_is_empty!36347)))

(declare-fun b!4975325 () Bool)

(declare-fun tp!1394737 () Bool)

(declare-fun tp!1394734 () Bool)

(assert (=> b!4975325 (= e!3109443 (and tp!1394737 tp!1394734))))

(declare-fun b!4975327 () Bool)

(declare-fun tp!1394735 () Bool)

(declare-fun tp!1394736 () Bool)

(assert (=> b!4975327 (= e!3109443 (and tp!1394735 tp!1394736))))

(declare-fun b!4975326 () Bool)

(declare-fun tp!1394733 () Bool)

(assert (=> b!4975326 (= e!3109443 tp!1394733)))

(assert (= (and b!4973844 ((_ is ElementMatch!13633) (regTwo!27779 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975324))

(assert (= (and b!4973844 ((_ is Concat!22344) (regTwo!27779 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975325))

(assert (= (and b!4973844 ((_ is Star!13633) (regTwo!27779 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975326))

(assert (= (and b!4973844 ((_ is Union!13633) (regTwo!27779 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975327))

(declare-fun e!3109444 () Bool)

(assert (=> b!4973834 (= tp!1394547 e!3109444)))

(declare-fun b!4975328 () Bool)

(assert (=> b!4975328 (= e!3109444 tp_is_empty!36347)))

(declare-fun b!4975329 () Bool)

(declare-fun tp!1394742 () Bool)

(declare-fun tp!1394739 () Bool)

(assert (=> b!4975329 (= e!3109444 (and tp!1394742 tp!1394739))))

(declare-fun b!4975331 () Bool)

(declare-fun tp!1394740 () Bool)

(declare-fun tp!1394741 () Bool)

(assert (=> b!4975331 (= e!3109444 (and tp!1394740 tp!1394741))))

(declare-fun b!4975330 () Bool)

(declare-fun tp!1394738 () Bool)

(assert (=> b!4975330 (= e!3109444 tp!1394738)))

(assert (= (and b!4973834 ((_ is ElementMatch!13633) (regOne!27778 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975328))

(assert (= (and b!4973834 ((_ is Concat!22344) (regOne!27778 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975329))

(assert (= (and b!4973834 ((_ is Star!13633) (regOne!27778 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975330))

(assert (= (and b!4973834 ((_ is Union!13633) (regOne!27778 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975331))

(declare-fun e!3109445 () Bool)

(assert (=> b!4973834 (= tp!1394544 e!3109445)))

(declare-fun b!4975332 () Bool)

(assert (=> b!4975332 (= e!3109445 tp_is_empty!36347)))

(declare-fun b!4975333 () Bool)

(declare-fun tp!1394747 () Bool)

(declare-fun tp!1394744 () Bool)

(assert (=> b!4975333 (= e!3109445 (and tp!1394747 tp!1394744))))

(declare-fun b!4975335 () Bool)

(declare-fun tp!1394745 () Bool)

(declare-fun tp!1394746 () Bool)

(assert (=> b!4975335 (= e!3109445 (and tp!1394745 tp!1394746))))

(declare-fun b!4975334 () Bool)

(declare-fun tp!1394743 () Bool)

(assert (=> b!4975334 (= e!3109445 tp!1394743)))

(assert (= (and b!4973834 ((_ is ElementMatch!13633) (regTwo!27778 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975332))

(assert (= (and b!4973834 ((_ is Concat!22344) (regTwo!27778 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975333))

(assert (= (and b!4973834 ((_ is Star!13633) (regTwo!27778 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975334))

(assert (= (and b!4973834 ((_ is Union!13633) (regTwo!27778 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975335))

(declare-fun e!3109446 () Bool)

(assert (=> b!4973843 (= tp!1394553 e!3109446)))

(declare-fun b!4975336 () Bool)

(assert (=> b!4975336 (= e!3109446 tp_is_empty!36347)))

(declare-fun b!4975337 () Bool)

(declare-fun tp!1394752 () Bool)

(declare-fun tp!1394749 () Bool)

(assert (=> b!4975337 (= e!3109446 (and tp!1394752 tp!1394749))))

(declare-fun b!4975339 () Bool)

(declare-fun tp!1394750 () Bool)

(declare-fun tp!1394751 () Bool)

(assert (=> b!4975339 (= e!3109446 (and tp!1394750 tp!1394751))))

(declare-fun b!4975338 () Bool)

(declare-fun tp!1394748 () Bool)

(assert (=> b!4975338 (= e!3109446 tp!1394748)))

(assert (= (and b!4973843 ((_ is ElementMatch!13633) (reg!13962 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975336))

(assert (= (and b!4973843 ((_ is Concat!22344) (reg!13962 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975337))

(assert (= (and b!4973843 ((_ is Star!13633) (reg!13962 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975338))

(assert (= (and b!4973843 ((_ is Union!13633) (reg!13962 (regOne!27779 (regex!8400 (h!63915 rulesArg!259)))))) b!4975339))

(declare-fun b!4975340 () Bool)

(declare-fun e!3109448 () Bool)

(declare-fun tp!1394755 () Bool)

(declare-fun tp!1394753 () Bool)

(assert (=> b!4975340 (= e!3109448 (and (inv!75123 (left!41922 (left!41922 (left!41922 (c!848514 input!1342))))) tp!1394755 (inv!75123 (right!42252 (left!41922 (left!41922 (c!848514 input!1342))))) tp!1394753))))

(declare-fun b!4975342 () Bool)

(declare-fun e!3109447 () Bool)

(declare-fun tp!1394754 () Bool)

(assert (=> b!4975342 (= e!3109447 tp!1394754)))

(declare-fun b!4975341 () Bool)

(assert (=> b!4975341 (= e!3109448 (and (inv!75130 (xs!18478 (left!41922 (left!41922 (c!848514 input!1342))))) e!3109447))))

(assert (=> b!4973855 (= tp!1394571 (and (inv!75123 (left!41922 (left!41922 (c!848514 input!1342)))) e!3109448))))

(assert (= (and b!4973855 ((_ is Node!15152) (left!41922 (left!41922 (c!848514 input!1342))))) b!4975340))

(assert (= b!4975341 b!4975342))

(assert (= (and b!4973855 ((_ is Leaf!25177) (left!41922 (left!41922 (c!848514 input!1342))))) b!4975341))

(declare-fun m!6005794 () Bool)

(assert (=> b!4975340 m!6005794))

(declare-fun m!6005796 () Bool)

(assert (=> b!4975340 m!6005796))

(declare-fun m!6005798 () Bool)

(assert (=> b!4975341 m!6005798))

(assert (=> b!4973855 m!6002806))

(declare-fun tp!1394758 () Bool)

(declare-fun e!3109450 () Bool)

(declare-fun tp!1394756 () Bool)

(declare-fun b!4975343 () Bool)

(assert (=> b!4975343 (= e!3109450 (and (inv!75123 (left!41922 (right!42252 (left!41922 (c!848514 input!1342))))) tp!1394758 (inv!75123 (right!42252 (right!42252 (left!41922 (c!848514 input!1342))))) tp!1394756))))

(declare-fun b!4975345 () Bool)

(declare-fun e!3109449 () Bool)

(declare-fun tp!1394757 () Bool)

(assert (=> b!4975345 (= e!3109449 tp!1394757)))

(declare-fun b!4975344 () Bool)

(assert (=> b!4975344 (= e!3109450 (and (inv!75130 (xs!18478 (right!42252 (left!41922 (c!848514 input!1342))))) e!3109449))))

(assert (=> b!4973855 (= tp!1394569 (and (inv!75123 (right!42252 (left!41922 (c!848514 input!1342)))) e!3109450))))

(assert (= (and b!4973855 ((_ is Node!15152) (right!42252 (left!41922 (c!848514 input!1342))))) b!4975343))

(assert (= b!4975344 b!4975345))

(assert (= (and b!4973855 ((_ is Leaf!25177) (right!42252 (left!41922 (c!848514 input!1342))))) b!4975344))

(declare-fun m!6005800 () Bool)

(assert (=> b!4975343 m!6005800))

(declare-fun m!6005802 () Bool)

(assert (=> b!4975343 m!6005802))

(declare-fun m!6005804 () Bool)

(assert (=> b!4975344 m!6005804))

(assert (=> b!4973855 m!6002808))

(declare-fun e!3109451 () Bool)

(assert (=> b!4973836 (= tp!1394545 e!3109451)))

(declare-fun b!4975346 () Bool)

(assert (=> b!4975346 (= e!3109451 tp_is_empty!36347)))

(declare-fun b!4975347 () Bool)

(declare-fun tp!1394763 () Bool)

(declare-fun tp!1394760 () Bool)

(assert (=> b!4975347 (= e!3109451 (and tp!1394763 tp!1394760))))

(declare-fun b!4975349 () Bool)

(declare-fun tp!1394761 () Bool)

(declare-fun tp!1394762 () Bool)

(assert (=> b!4975349 (= e!3109451 (and tp!1394761 tp!1394762))))

(declare-fun b!4975348 () Bool)

(declare-fun tp!1394759 () Bool)

(assert (=> b!4975348 (= e!3109451 tp!1394759)))

(assert (= (and b!4973836 ((_ is ElementMatch!13633) (regOne!27779 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975346))

(assert (= (and b!4973836 ((_ is Concat!22344) (regOne!27779 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975347))

(assert (= (and b!4973836 ((_ is Star!13633) (regOne!27779 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975348))

(assert (= (and b!4973836 ((_ is Union!13633) (regOne!27779 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975349))

(declare-fun e!3109453 () Bool)

(assert (=> b!4973836 (= tp!1394546 e!3109453)))

(declare-fun b!4975351 () Bool)

(assert (=> b!4975351 (= e!3109453 tp_is_empty!36347)))

(declare-fun b!4975352 () Bool)

(declare-fun tp!1394768 () Bool)

(declare-fun tp!1394765 () Bool)

(assert (=> b!4975352 (= e!3109453 (and tp!1394768 tp!1394765))))

(declare-fun b!4975354 () Bool)

(declare-fun tp!1394766 () Bool)

(declare-fun tp!1394767 () Bool)

(assert (=> b!4975354 (= e!3109453 (and tp!1394766 tp!1394767))))

(declare-fun b!4975353 () Bool)

(declare-fun tp!1394764 () Bool)

(assert (=> b!4975353 (= e!3109453 tp!1394764)))

(assert (= (and b!4973836 ((_ is ElementMatch!13633) (regTwo!27779 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975351))

(assert (= (and b!4973836 ((_ is Concat!22344) (regTwo!27779 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975352))

(assert (= (and b!4973836 ((_ is Star!13633) (regTwo!27779 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975353))

(assert (= (and b!4973836 ((_ is Union!13633) (regTwo!27779 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975354))

(declare-fun e!3109454 () Bool)

(assert (=> b!4973826 (= tp!1394537 e!3109454)))

(declare-fun b!4975355 () Bool)

(assert (=> b!4975355 (= e!3109454 tp_is_empty!36347)))

(declare-fun b!4975356 () Bool)

(declare-fun tp!1394773 () Bool)

(declare-fun tp!1394770 () Bool)

(assert (=> b!4975356 (= e!3109454 (and tp!1394773 tp!1394770))))

(declare-fun b!4975358 () Bool)

(declare-fun tp!1394771 () Bool)

(declare-fun tp!1394772 () Bool)

(assert (=> b!4975358 (= e!3109454 (and tp!1394771 tp!1394772))))

(declare-fun b!4975357 () Bool)

(declare-fun tp!1394769 () Bool)

(assert (=> b!4975357 (= e!3109454 tp!1394769)))

(assert (= (and b!4973826 ((_ is ElementMatch!13633) (regOne!27778 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975355))

(assert (= (and b!4973826 ((_ is Concat!22344) (regOne!27778 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975356))

(assert (= (and b!4973826 ((_ is Star!13633) (regOne!27778 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975357))

(assert (= (and b!4973826 ((_ is Union!13633) (regOne!27778 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975358))

(declare-fun e!3109455 () Bool)

(assert (=> b!4973826 (= tp!1394534 e!3109455)))

(declare-fun b!4975359 () Bool)

(assert (=> b!4975359 (= e!3109455 tp_is_empty!36347)))

(declare-fun b!4975360 () Bool)

(declare-fun tp!1394778 () Bool)

(declare-fun tp!1394775 () Bool)

(assert (=> b!4975360 (= e!3109455 (and tp!1394778 tp!1394775))))

(declare-fun b!4975362 () Bool)

(declare-fun tp!1394776 () Bool)

(declare-fun tp!1394777 () Bool)

(assert (=> b!4975362 (= e!3109455 (and tp!1394776 tp!1394777))))

(declare-fun b!4975361 () Bool)

(declare-fun tp!1394774 () Bool)

(assert (=> b!4975361 (= e!3109455 tp!1394774)))

(assert (= (and b!4973826 ((_ is ElementMatch!13633) (regTwo!27778 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975359))

(assert (= (and b!4973826 ((_ is Concat!22344) (regTwo!27778 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975360))

(assert (= (and b!4973826 ((_ is Star!13633) (regTwo!27778 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975361))

(assert (= (and b!4973826 ((_ is Union!13633) (regTwo!27778 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975362))

(declare-fun e!3109456 () Bool)

(assert (=> b!4973835 (= tp!1394543 e!3109456)))

(declare-fun b!4975363 () Bool)

(assert (=> b!4975363 (= e!3109456 tp_is_empty!36347)))

(declare-fun b!4975364 () Bool)

(declare-fun tp!1394783 () Bool)

(declare-fun tp!1394780 () Bool)

(assert (=> b!4975364 (= e!3109456 (and tp!1394783 tp!1394780))))

(declare-fun b!4975366 () Bool)

(declare-fun tp!1394781 () Bool)

(declare-fun tp!1394782 () Bool)

(assert (=> b!4975366 (= e!3109456 (and tp!1394781 tp!1394782))))

(declare-fun b!4975365 () Bool)

(declare-fun tp!1394779 () Bool)

(assert (=> b!4975365 (= e!3109456 tp!1394779)))

(assert (= (and b!4973835 ((_ is ElementMatch!13633) (reg!13962 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975363))

(assert (= (and b!4973835 ((_ is Concat!22344) (reg!13962 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975364))

(assert (= (and b!4973835 ((_ is Star!13633) (reg!13962 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975365))

(assert (= (and b!4973835 ((_ is Union!13633) (reg!13962 (regex!8400 (h!63915 (t!369197 rulesArg!259)))))) b!4975366))

(declare-fun b!4975367 () Bool)

(declare-fun e!3109457 () Bool)

(declare-fun tp!1394784 () Bool)

(assert (=> b!4975367 (= e!3109457 (and tp_is_empty!36347 tp!1394784))))

(assert (=> b!4973820 (= tp!1394527 e!3109457)))

(assert (= (and b!4973820 ((_ is Cons!57466) (t!369196 (innerList!15240 (xs!18478 (c!848514 totalInput!464)))))) b!4975367))

(declare-fun e!3109458 () Bool)

(assert (=> b!4973828 (= tp!1394535 e!3109458)))

(declare-fun b!4975368 () Bool)

(assert (=> b!4975368 (= e!3109458 tp_is_empty!36347)))

(declare-fun b!4975369 () Bool)

(declare-fun tp!1394789 () Bool)

(declare-fun tp!1394786 () Bool)

(assert (=> b!4975369 (= e!3109458 (and tp!1394789 tp!1394786))))

(declare-fun b!4975371 () Bool)

(declare-fun tp!1394787 () Bool)

(declare-fun tp!1394788 () Bool)

(assert (=> b!4975371 (= e!3109458 (and tp!1394787 tp!1394788))))

(declare-fun b!4975370 () Bool)

(declare-fun tp!1394785 () Bool)

(assert (=> b!4975370 (= e!3109458 tp!1394785)))

(assert (= (and b!4973828 ((_ is ElementMatch!13633) (regOne!27779 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975368))

(assert (= (and b!4973828 ((_ is Concat!22344) (regOne!27779 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975369))

(assert (= (and b!4973828 ((_ is Star!13633) (regOne!27779 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975370))

(assert (= (and b!4973828 ((_ is Union!13633) (regOne!27779 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975371))

(declare-fun e!3109459 () Bool)

(assert (=> b!4973828 (= tp!1394536 e!3109459)))

(declare-fun b!4975372 () Bool)

(assert (=> b!4975372 (= e!3109459 tp_is_empty!36347)))

(declare-fun b!4975373 () Bool)

(declare-fun tp!1394794 () Bool)

(declare-fun tp!1394791 () Bool)

(assert (=> b!4975373 (= e!3109459 (and tp!1394794 tp!1394791))))

(declare-fun b!4975375 () Bool)

(declare-fun tp!1394792 () Bool)

(declare-fun tp!1394793 () Bool)

(assert (=> b!4975375 (= e!3109459 (and tp!1394792 tp!1394793))))

(declare-fun b!4975374 () Bool)

(declare-fun tp!1394790 () Bool)

(assert (=> b!4975374 (= e!3109459 tp!1394790)))

(assert (= (and b!4973828 ((_ is ElementMatch!13633) (regTwo!27779 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975372))

(assert (= (and b!4973828 ((_ is Concat!22344) (regTwo!27779 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975373))

(assert (= (and b!4973828 ((_ is Star!13633) (regTwo!27779 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975374))

(assert (= (and b!4973828 ((_ is Union!13633) (regTwo!27779 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975375))

(declare-fun e!3109461 () Bool)

(assert (=> b!4973827 (= tp!1394533 e!3109461)))

(declare-fun b!4975378 () Bool)

(assert (=> b!4975378 (= e!3109461 tp_is_empty!36347)))

(declare-fun b!4975379 () Bool)

(declare-fun tp!1394799 () Bool)

(declare-fun tp!1394796 () Bool)

(assert (=> b!4975379 (= e!3109461 (and tp!1394799 tp!1394796))))

(declare-fun b!4975381 () Bool)

(declare-fun tp!1394797 () Bool)

(declare-fun tp!1394798 () Bool)

(assert (=> b!4975381 (= e!3109461 (and tp!1394797 tp!1394798))))

(declare-fun b!4975380 () Bool)

(declare-fun tp!1394795 () Bool)

(assert (=> b!4975380 (= e!3109461 tp!1394795)))

(assert (= (and b!4973827 ((_ is ElementMatch!13633) (reg!13962 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975378))

(assert (= (and b!4973827 ((_ is Concat!22344) (reg!13962 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975379))

(assert (= (and b!4973827 ((_ is Star!13633) (reg!13962 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975380))

(assert (= (and b!4973827 ((_ is Union!13633) (reg!13962 (regOne!27778 (regex!8400 (h!63915 rulesArg!259)))))) b!4975381))

(declare-fun b!4975382 () Bool)

(declare-fun e!3109462 () Bool)

(declare-fun tp!1394800 () Bool)

(assert (=> b!4975382 (= e!3109462 (and tp_is_empty!36347 tp!1394800))))

(assert (=> b!4973857 (= tp!1394570 e!3109462)))

(assert (= (and b!4973857 ((_ is Cons!57466) (innerList!15240 (xs!18478 (left!41922 (c!848514 input!1342)))))) b!4975382))

(declare-fun b_lambda!197481 () Bool)

(assert (= b_lambda!197457 (or (and b!4972699 b_free!132853) (and b!4973009 b_free!132861 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132869 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4975266 b_free!132873 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197481)))

(declare-fun b_lambda!197483 () Bool)

(assert (= b_lambda!197451 (or (and b!4972699 b_free!132851) (and b!4973009 b_free!132859 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4975266 b_free!132871 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197483)))

(declare-fun b_lambda!197485 () Bool)

(assert (= b_lambda!197385 (or (and b!4972699 b_free!132851 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) (and b!4973009 b_free!132859) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) (and b!4975266 b_free!132871 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) b_lambda!197485)))

(declare-fun b_lambda!197487 () Bool)

(assert (= b_lambda!197379 (or b!4973799 b_lambda!197487)))

(declare-fun bs!1183928 () Bool)

(declare-fun d!1602655 () Bool)

(assert (= bs!1183928 (and d!1602655 b!4973799)))

(assert (=> bs!1183928 (= (dynLambda!23221 lambda!247525 (seqFromList!6043 (list!18383 (_1!34416 lt!2054258)))) (= (list!18383 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (seqFromList!6043 (list!18383 (_1!34416 lt!2054258)))))) (list!18383 (seqFromList!6043 (list!18383 (_1!34416 lt!2054258))))))))

(declare-fun b_lambda!197523 () Bool)

(assert (=> (not b_lambda!197523) (not bs!1183928)))

(declare-fun t!369517 () Bool)

(declare-fun tb!261447 () Bool)

(assert (=> (and b!4972699 (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369517) tb!261447))

(declare-fun e!3109470 () Bool)

(declare-fun tp!1394801 () Bool)

(declare-fun b!4975397 () Bool)

(assert (=> b!4975397 (= e!3109470 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (seqFromList!6043 (list!18383 (_1!34416 lt!2054258))))))) tp!1394801))))

(declare-fun result!326638 () Bool)

(assert (=> tb!261447 (= result!326638 (and (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (seqFromList!6043 (list!18383 (_1!34416 lt!2054258)))))) e!3109470))))

(assert (= tb!261447 b!4975397))

(declare-fun m!6005844 () Bool)

(assert (=> b!4975397 m!6005844))

(declare-fun m!6005846 () Bool)

(assert (=> tb!261447 m!6005846))

(assert (=> bs!1183928 t!369517))

(declare-fun b_and!349183 () Bool)

(assert (= b_and!349131 (and (=> t!369517 result!326638) b_and!349183)))

(declare-fun t!369519 () Bool)

(declare-fun tb!261449 () Bool)

(assert (=> (and b!4973009 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369519) tb!261449))

(declare-fun result!326640 () Bool)

(assert (= result!326640 result!326638))

(assert (=> bs!1183928 t!369519))

(declare-fun b_and!349185 () Bool)

(assert (= b_and!349133 (and (=> t!369519 result!326640) b_and!349185)))

(declare-fun t!369521 () Bool)

(declare-fun tb!261451 () Bool)

(assert (=> (and b!4973824 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369521) tb!261451))

(declare-fun result!326642 () Bool)

(assert (= result!326642 result!326638))

(assert (=> bs!1183928 t!369521))

(declare-fun b_and!349187 () Bool)

(assert (= b_and!349135 (and (=> t!369521 result!326642) b_and!349187)))

(declare-fun t!369523 () Bool)

(declare-fun tb!261453 () Bool)

(assert (=> (and b!4975266 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369523) tb!261453))

(declare-fun result!326644 () Bool)

(assert (= result!326644 result!326638))

(assert (=> bs!1183928 t!369523))

(declare-fun b_and!349189 () Bool)

(assert (= b_and!349163 (and (=> t!369523 result!326644) b_and!349189)))

(declare-fun b_lambda!197525 () Bool)

(assert (=> (not b_lambda!197525) (not bs!1183928)))

(assert (=> bs!1183928 t!369293))

(declare-fun b_and!349191 () Bool)

(assert (= b_and!349155 (and (=> t!369293 result!326420) b_and!349191)))

(assert (=> bs!1183928 t!369295))

(declare-fun b_and!349193 () Bool)

(assert (= b_and!349157 (and (=> t!369295 result!326422) b_and!349193)))

(assert (=> bs!1183928 t!369297))

(declare-fun b_and!349195 () Bool)

(assert (= b_and!349159 (and (=> t!369297 result!326424) b_and!349195)))

(assert (=> bs!1183928 t!369481))

(declare-fun b_and!349197 () Bool)

(assert (= b_and!349161 (and (=> t!369481 result!326602) b_and!349197)))

(assert (=> bs!1183928 m!6002726))

(assert (=> bs!1183928 m!6003114))

(assert (=> bs!1183928 m!6003116))

(declare-fun m!6005856 () Bool)

(assert (=> bs!1183928 m!6005856))

(assert (=> bs!1183928 m!6002726))

(assert (=> bs!1183928 m!6003116))

(assert (=> bs!1183928 m!6005856))

(declare-fun m!6005858 () Bool)

(assert (=> bs!1183928 m!6005858))

(assert (=> d!1601631 d!1602655))

(declare-fun b_lambda!197489 () Bool)

(assert (= b_lambda!197419 (or d!1601329 b_lambda!197489)))

(declare-fun bs!1183929 () Bool)

(declare-fun d!1602665 () Bool)

(assert (= bs!1183929 (and d!1602665 d!1601329)))

(assert (=> bs!1183929 (= (dynLambda!23214 lambda!247517 (h!63915 (t!369197 rulesArg!259))) (ruleValid!3809 thiss!15247 (h!63915 (t!369197 rulesArg!259))))))

(assert (=> bs!1183929 m!6002120))

(assert (=> b!4974517 d!1602665))

(declare-fun b_lambda!197491 () Bool)

(assert (= b_lambda!197383 (or (and b!4972699 b_free!132851 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) (and b!4973009 b_free!132859) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) (and b!4975266 b_free!132871 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) b_lambda!197491)))

(declare-fun b_lambda!197493 () Bool)

(assert (= b_lambda!197465 (or (and b!4972699 b_free!132851) (and b!4973009 b_free!132859 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4975266 b_free!132871 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197493)))

(declare-fun b_lambda!197495 () Bool)

(assert (= b_lambda!197377 (or (and b!4972699 b_free!132851 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) (and b!4973009 b_free!132859) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) (and b!4975266 b_free!132871 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))))) b_lambda!197495)))

(declare-fun b_lambda!197497 () Bool)

(assert (= b_lambda!197461 (or (and b!4972699 b_free!132851) (and b!4973009 b_free!132859 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4975266 b_free!132871 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197497)))

(declare-fun b_lambda!197499 () Bool)

(assert (= b_lambda!197407 (or b!4972922 b_lambda!197499)))

(assert (=> d!1601911 d!1601547))

(declare-fun b_lambda!197501 () Bool)

(assert (= b_lambda!197381 (or b!4973799 b_lambda!197501)))

(declare-fun bs!1183930 () Bool)

(declare-fun d!1602669 () Bool)

(assert (= bs!1183930 (and d!1602669 b!4973799)))

(assert (=> bs!1183930 (= (dynLambda!23221 lambda!247525 (_1!34416 lt!2054258)) (= (list!18383 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (_1!34416 lt!2054258)))) (list!18383 (_1!34416 lt!2054258))))))

(declare-fun b_lambda!197527 () Bool)

(assert (=> (not b_lambda!197527) (not bs!1183930)))

(declare-fun t!369525 () Bool)

(declare-fun tb!261455 () Bool)

(assert (=> (and b!4972699 (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369525) tb!261455))

(declare-fun b!4975414 () Bool)

(declare-fun tp!1394802 () Bool)

(declare-fun e!3109479 () Bool)

(assert (=> b!4975414 (= e!3109479 (and (inv!75123 (c!848514 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (_1!34416 lt!2054258))))) tp!1394802))))

(declare-fun result!326646 () Bool)

(assert (=> tb!261455 (= result!326646 (and (inv!75124 (dynLambda!23213 (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (_1!34416 lt!2054258)))) e!3109479))))

(assert (= tb!261455 b!4975414))

(declare-fun m!6005874 () Bool)

(assert (=> b!4975414 m!6005874))

(declare-fun m!6005876 () Bool)

(assert (=> tb!261455 m!6005876))

(assert (=> bs!1183930 t!369525))

(declare-fun b_and!349199 () Bool)

(assert (= b_and!349183 (and (=> t!369525 result!326646) b_and!349199)))

(declare-fun t!369527 () Bool)

(declare-fun tb!261457 () Bool)

(assert (=> (and b!4973009 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369527) tb!261457))

(declare-fun result!326648 () Bool)

(assert (= result!326648 result!326646))

(assert (=> bs!1183930 t!369527))

(declare-fun b_and!349201 () Bool)

(assert (= b_and!349185 (and (=> t!369527 result!326648) b_and!349201)))

(declare-fun t!369529 () Bool)

(declare-fun tb!261459 () Bool)

(assert (=> (and b!4973824 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369529) tb!261459))

(declare-fun result!326650 () Bool)

(assert (= result!326650 result!326646))

(assert (=> bs!1183930 t!369529))

(declare-fun b_and!349203 () Bool)

(assert (= b_and!349187 (and (=> t!369529 result!326650) b_and!349203)))

(declare-fun t!369531 () Bool)

(declare-fun tb!261461 () Bool)

(assert (=> (and b!4975266 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259))))) t!369531) tb!261461))

(declare-fun result!326652 () Bool)

(assert (= result!326652 result!326646))

(assert (=> bs!1183930 t!369531))

(declare-fun b_and!349205 () Bool)

(assert (= b_and!349189 (and (=> t!369531 result!326652) b_and!349205)))

(declare-fun b_lambda!197529 () Bool)

(assert (=> (not b_lambda!197529) (not bs!1183930)))

(assert (=> bs!1183930 t!369287))

(declare-fun b_and!349207 () Bool)

(assert (= b_and!349191 (and (=> t!369287 result!326414) b_and!349207)))

(assert (=> bs!1183930 t!369289))

(declare-fun b_and!349209 () Bool)

(assert (= b_and!349193 (and (=> t!369289 result!326416) b_and!349209)))

(assert (=> bs!1183930 t!369291))

(declare-fun b_and!349211 () Bool)

(assert (= b_and!349195 (and (=> t!369291 result!326418) b_and!349211)))

(assert (=> bs!1183930 t!369465))

(declare-fun b_and!349213 () Bool)

(assert (= b_and!349197 (and (=> t!369465 result!326586) b_and!349213)))

(assert (=> bs!1183930 m!6002738))

(assert (=> bs!1183930 m!6003016))

(declare-fun m!6005882 () Bool)

(assert (=> bs!1183930 m!6005882))

(assert (=> bs!1183930 m!6003016))

(assert (=> bs!1183930 m!6005882))

(declare-fun m!6005884 () Bool)

(assert (=> bs!1183930 m!6005884))

(assert (=> d!1601635 d!1602669))

(declare-fun b_lambda!197503 () Bool)

(assert (= b_lambda!197403 (or (and b!4972699 b_free!132851) (and b!4973009 b_free!132859 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4975266 b_free!132871 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197503)))

(declare-fun b_lambda!197505 () Bool)

(assert (= b_lambda!197469 (or d!1601161 b_lambda!197505)))

(declare-fun bs!1183931 () Bool)

(declare-fun d!1602685 () Bool)

(assert (= bs!1183931 (and d!1602685 d!1601161)))

(assert (=> bs!1183931 (= (dynLambda!23214 lambda!247498 (h!63915 (t!369197 rulesArg!259))) (ruleValid!3809 thiss!15247 (h!63915 (t!369197 rulesArg!259))))))

(assert (=> bs!1183931 m!6002120))

(assert (=> b!4975144 d!1602685))

(declare-fun b_lambda!197507 () Bool)

(assert (= b_lambda!197447 (or (and b!4972699 b_free!132851) (and b!4973009 b_free!132859 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4975266 b_free!132871 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197507)))

(declare-fun b_lambda!197509 () Bool)

(assert (= b_lambda!197433 (or d!1601541 b_lambda!197509)))

(declare-fun bs!1183932 () Bool)

(declare-fun d!1602687 () Bool)

(assert (= bs!1183932 (and d!1602687 d!1601541)))

(declare-fun res!2123864 () Bool)

(declare-fun e!3109489 () Bool)

(assert (=> bs!1183932 (=> res!2123864 e!3109489)))

(assert (=> bs!1183932 (= res!2123864 (not (= (list!18383 (_1!34416 lt!2053837)) (list!18383 (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))))))))

(assert (=> bs!1183932 (= (dynLambda!23222 lambda!247528 (_1!34416 lt!2053837) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837)))) e!3109489)))

(declare-fun b!4975433 () Bool)

(assert (=> b!4975433 (= e!3109489 (= (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (_1!34416 lt!2053837)) (dynLambda!23215 (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (seqFromList!6043 (list!18383 (_1!34416 lt!2053837))))))))

(assert (= (and bs!1183932 (not res!2123864)) b!4975433))

(declare-fun b_lambda!197531 () Bool)

(assert (=> (not b_lambda!197531) (not b!4975433)))

(assert (=> b!4975433 t!369247))

(declare-fun b_and!349215 () Bool)

(assert (= b_and!349207 (and (=> t!369247 result!326372) b_and!349215)))

(assert (=> b!4975433 t!369249))

(declare-fun b_and!349217 () Bool)

(assert (= b_and!349209 (and (=> t!369249 result!326374) b_and!349217)))

(assert (=> b!4975433 t!369257))

(declare-fun b_and!349219 () Bool)

(assert (= b_and!349211 (and (=> t!369257 result!326384) b_and!349219)))

(assert (=> b!4975433 t!369467))

(declare-fun b_and!349221 () Bool)

(assert (= b_and!349213 (and (=> t!369467 result!326588) b_and!349221)))

(declare-fun b_lambda!197533 () Bool)

(assert (=> (not b_lambda!197533) (not b!4975433)))

(assert (=> b!4975433 t!369251))

(declare-fun b_and!349223 () Bool)

(assert (= b_and!349215 (and (=> t!369251 result!326376) b_and!349223)))

(assert (=> b!4975433 t!369253))

(declare-fun b_and!349225 () Bool)

(assert (= b_and!349217 (and (=> t!369253 result!326378) b_and!349225)))

(assert (=> b!4975433 t!369259))

(declare-fun b_and!349227 () Bool)

(assert (= b_and!349219 (and (=> t!369259 result!326386) b_and!349227)))

(assert (=> b!4975433 t!369461))

(declare-fun b_and!349229 () Bool)

(assert (= b_and!349221 (and (=> t!369461 result!326582) b_and!349229)))

(assert (=> bs!1183932 m!6001574))

(assert (=> bs!1183932 m!6001562))

(assert (=> bs!1183932 m!6002780))

(assert (=> b!4975433 m!6002766))

(assert (=> b!4975433 m!6001562))

(assert (=> b!4975433 m!6002782))

(assert (=> d!1602259 d!1602687))

(declare-fun b_lambda!197511 () Bool)

(assert (= b_lambda!197285 (or (and b!4972699 b_free!132853 (= (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))) (and b!4973009 b_free!132861 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))) (and b!4973824 b_free!132869 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))) (and b!4975266 b_free!132873 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))) b_lambda!197511)))

(declare-fun b_lambda!197513 () Bool)

(assert (= b_lambda!197289 (or (and b!4972699 b_free!132851 (= (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))) (and b!4973009 b_free!132859 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))) (and b!4975266 b_free!132871 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (rule!11662 (_1!34412 (get!19957 lt!2053853))))))) b_lambda!197513)))

(declare-fun b_lambda!197515 () Bool)

(assert (= b_lambda!197401 (or (and b!4972699 b_free!132853) (and b!4973009 b_free!132861 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132869 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4975266 b_free!132873 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197515)))

(declare-fun b_lambda!197517 () Bool)

(assert (= b_lambda!197445 (or (and b!4972699 b_free!132853) (and b!4973009 b_free!132861 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132869 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4975266 b_free!132873 (= (toChars!11230 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toChars!11230 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197517)))

(declare-fun b_lambda!197519 () Bool)

(assert (= b_lambda!197393 (or b!4972922 b_lambda!197519)))

(assert (=> d!1601749 d!1601551))

(declare-fun b_lambda!197521 () Bool)

(assert (= b_lambda!197397 (or (and b!4972699 b_free!132851) (and b!4973009 b_free!132859 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 rulesArg!259)))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4973824 b_free!132867 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 rulesArg!259))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) (and b!4975266 b_free!132871 (= (toValue!11371 (transformation!8400 (h!63915 (t!369197 (t!369197 (t!369197 rulesArg!259)))))) (toValue!11371 (transformation!8400 (h!63915 rulesArg!259))))) b_lambda!197521)))

(check-sat (not b!4974154) (not d!1601637) (not bm!347013) (not b_lambda!197361) (not b!4974190) (not b!4974842) (not b!4974648) (not bm!346916) (not b!4974692) (not b!4975295) (not b_next!133659) (not tb!261319) (not d!1602319) (not d!1602311) (not b!4974213) (not b!4974188) (not b!4974958) (not b!4974614) (not b!4974580) (not d!1602191) (not bm!346961) (not b!4974039) (not b!4974930) (not d!1601963) (not d!1601657) (not d!1601879) (not bm!346960) (not d!1601799) (not b!4975341) (not b!4974159) (not d!1601995) (not b!4975298) (not b!4974896) (not b_lambda!197517) (not d!1601593) (not b!4974638) (not b!4975069) (not bm!346951) (not b!4973991) (not b!4974647) (not b!4975310) (not b_lambda!197525) (not b!4975128) (not b!4974464) (not d!1601641) (not b!4974034) (not bm!346913) (not d!1602063) (not bm!346948) (not b!4974389) (not b!4974006) (not d!1601915) (not b!4975308) (not b!4974950) (not bm!346971) (not b!4974688) (not tb!261455) (not b!4974582) (not b!4974641) (not b!4974156) (not b!4974458) (not tb!261217) (not b!4975071) (not bm!346917) (not b!4973861) (not bm!346946) (not b!4974035) (not b!4974142) (not d!1602493) (not b_next!133661) (not b!4975325) (not b!4975297) (not b!4975240) (not d!1601623) (not d!1601669) (not b!4975203) (not d!1602361) b_and!349203 (not b!4975317) (not b!4973898) (not b!4974140) (not b!4975202) (not b!4973893) (not b!4974684) (not b!4974906) (not b!4974459) (not bm!346966) (not b!4974368) (not b!4975305) (not bm!347015) (not b!4975259) (not d!1601613) (not b!4975245) (not b!4975198) (not b!4975370) (not b!4974343) (not bm!347011) (not d!1602485) (not b!4975345) (not b!4975365) (not d!1601801) (not b!4974633) (not b!4974680) (not b!4974848) (not b!4974859) (not b!4974864) (not b!4975357) (not b!4974785) (not b!4974465) b_and!349201 (not d!1601693) (not b!4974522) (not b!4974303) (not b!4974065) (not b!4975361) (not b!4973964) (not d!1602329) (not b!4975006) (not b!4974720) (not b_lambda!197489) (not d!1602507) (not b!4974543) (not b!4975003) b_and!349223 (not b!4974690) (not b!4975290) (not bm!346978) (not b_lambda!197359) (not bm!347021) (not b!4974944) (not d!1601975) (not b!4973897) (not d!1601787) (not b!4973900) (not d!1602167) (not b!4974949) (not bm!346981) (not d!1601811) (not d!1602515) (not d!1601689) (not b!4974038) (not b!4974790) (not b!4975312) (not b!4975255) (not b_lambda!197415) (not b!4975120) (not d!1602471) (not b!4974775) (not d!1601695) (not b_lambda!197429) (not b!4973920) (not tb!261277) (not d!1601591) (not b!4975326) (not b!4975300) (not b!4975220) (not bm!346901) (not b!4974168) b_and!349225 (not b!4974043) (not b!4974932) (not b!4975049) (not b!4974578) (not b!4974058) (not bm!346979) (not b!4975206) (not d!1601923) (not d!1601697) (not d!1601867) (not d!1601993) (not d!1602421) (not b_lambda!197343) (not d!1601909) (not b!4974146) (not bm!346944) (not d!1601567) (not b!4974608) (not b!4974921) (not b!4974806) (not b!4974486) (not d!1602223) (not d!1602275) (not tb!261349) (not b!4974481) (not b!4973858) (not b!4975234) (not b!4975338) (not d!1601629) (not d!1601659) (not d!1601899) (not b!4974446) (not b!4974640) (not b!4974310) (not d!1601757) (not b_lambda!197515) (not d!1602137) (not b!4974404) (not b!4974335) (not b!4974929) (not b!4974030) (not b!4975035) (not b_next!133641) (not b!4973921) (not b!4975208) (not b!4974681) (not b!4974581) (not b!4974250) (not d!1602367) (not b!4975221) (not b!4975199) (not bm!346912) (not b!4974903) (not d!1601861) (not d!1602227) (not b!4974934) (not b!4974727) (not b!4975169) (not b_lambda!197483) b_and!349229 (not b!4974849) (not b!4974421) (not b!4973914) (not b!4974550) (not b!4975152) (not b!4974585) (not b!4974191) (not b!4974427) (not d!1602477) (not b!4975070) (not b!4974137) (not d!1601671) (not b!4975213) (not bm!346980) (not b!4975293) (not b!4975369) (not b!4975313) (not b!4974972) (not b!4975302) (not b!4975352) (not bm!346990) (not b!4974299) (not bm!347010) (not b!4974488) (not b!4975166) (not b!4974164) (not b!4974489) (not b_lambda!197509) (not b!4975008) (not b!4974198) (not b!4974266) (not b!4974773) (not b!4975347) (not d!1602007) (not bm!346947) (not d!1602271) (not d!1601905) (not b!4974880) (not d!1602561) (not b!4974363) (not bm!346994) (not bm!346921) (not bm!346941) (not bs!1183928) (not b!4975197) (not bm!346973) (not b!4974420) (not b!4975264) (not b!4974455) (not b_lambda!197523) (not b_lambda!197497) (not b!4974524) (not b!4974073) (not b!4975344) (not b!4974586) (not b!4974442) (not b!4974192) (not b!4973998) (not d!1602055) (not b!4975246) (not b!4974547) (not b!4974010) (not bm!346972) (not b!4975054) (not b!4974252) (not b!4973916) (not b!4974618) (not b!4974686) (not b!4975258) (not b!4974443) (not d!1602135) (not b!4974606) (not b!4975014) (not tb!261373) (not b!4975253) (not b!4975380) (not b!4975250) (not b!4974852) (not b!4975374) (not tb!261229) (not b!4974609) (not bm!347026) (not d!1602537) (not d!1602583) (not d!1601961) (not b!4974155) (not b!4974625) (not b_lambda!197511) (not b!4974788) (not b!4975318) (not b!4974306) (not b!4975382) (not b!4975204) (not b!4975098) (not b!4974005) (not b!4974532) (not b!4975304) (not b!4974990) (not b!4975262) (not b!4975301) (not b!4974548) (not b!4973990) (not d!1602213) (not b!4975210) (not b!4974978) (not d!1602441) (not d!1601661) (not d!1601939) (not b!4975254) (not b!4975364) (not b!4975265) (not b!4975307) (not d!1602539) (not b!4974139) (not b!4974627) (not b!4974678) (not b!4974879) (not b!4974483) (not d!1601647) (not b!4974367) (not b!4975397) (not b!4975249) b_and!349199 (not b!4974902) (not d!1601655) (not b!4974968) (not b!4974031) (not b!4975366) (not b!4974898) (not b!4974845) (not d!1602355) (not b_lambda!197357) (not b!4974757) (not b!4974074) (not b!4974157) (not b_lambda!197503) (not b!4974942) (not b_lambda!197347) (not d!1602393) (not b!4974158) (not d!1602335) (not tb!261241) (not b!4974400) (not b!4975160) (not d!1601631) (not b!4974948) (not b!4974062) (not b!4974931) (not b!4973852) (not b!4974144) (not b!4975216) (not b!4974725) (not b!4974262) (not tb!261211) (not b!4974718) (not b!4975205) (not b!4974032) (not b!4975193) (not b_lambda!197501) (not b!4974083) (not d!1601615) (not b_lambda!197529) (not bm!346977) (not d!1601921) (not b!4974685) (not d!1601919) (not b_lambda!197481) (not b!4974954) (not tb!261295) (not b!4974490) (not b!4973268) (not b!4975189) (not b_lambda!197389) (not b!4974723) (not b!4974499) (not b_lambda!197373) (not b!4974462) (not d!1602125) (not b!4973992) (not b_lambda!197337) (not b!4973894) (not b!4975043) (not d!1601955) (not b!4974615) (not b!4974395) (not b!4974624) (not b!4974632) (not b!4974450) (not d!1602527) (not d!1602011) (not d!1602175) (not b!4975261) (not b!4973983) (not b!4975292) (not d!1601983) (not b!4975381) (not bm!346942) (not b!4974491) (not b!4975329) (not b_lambda!197491) (not b_lambda!197409) (not b!4974955) (not tb!261355) (not d!1602317) (not b!4974078) (not d!1602575) (not b!4974584) (not d!1602445) (not b_lambda!197363) (not b!4975217) (not b!4975001) (not d!1602589) (not b!4975167) (not d!1602585) (not b!4973849) (not b!4974255) (not b!4974084) (not b_lambda!197495) (not d!1601691) (not d!1602593) (not bm!347019) (not b!4974338) (not b_lambda!197533) (not b!4974733) (not bm!347018) (not b_next!133657) (not d!1601611) (not b!4974726) (not b_lambda!197485) tp_is_empty!36347 (not b!4974148) (not b!4974061) (not d!1602069) (not bm!346915) (not b!4974479) (not bm!347025) (not d!1601577) (not d!1602027) (not bm!346970) (not bm!347016) (not b!4975362) (not d!1602119) (not d!1601897) (not b!4974495) (not b!4975335) (not b!4974350) (not b!4975314) (not b!4974525) (not bm!347017) (not d!1602443) (not bm!346964) (not b!4974521) (not b!4974763) (not b!4975105) (not b_lambda!197527) (not b!4974850) (not b!4974496) (not b!4975339) (not d!1602009) (not b!4975148) (not b_next!133643) (not d!1601585) (not b!4974687) (not b_next!133649) (not b_lambda!197387) (not b!4975371) (not tb!261381) (not b!4973980) (not b!4974371) (not b!4974245) (not b!4975103) (not d!1602053) (not d!1602555) (not b!4973985) (not b!4974476) (not b!4974070) (not d!1602345) (not d!1602147) (not d!1601625) (not b!4975353) (not b_lambda!197339) (not b!4974676) (not b_lambda!197345) (not b!4974145) (not b!4974396) (not b_lambda!197341) (not b!4974847) (not b!4974628) (not b!4974180) (not b_lambda!197493) (not d!1601667) (not d!1602489) (not d!1602479) (not b!4974394) (not bm!346918) (not b!4974988) (not b!4975235) (not b!4974717) (not d!1602277) (not d!1601855) (not b!4975291) (not b!4974311) (not b!4974865) (not b!4975241) (not b!4974716) (not b!4975331) (not b!4974940) (not b!4975053) (not d!1601653) (not b!4975218) (not b!4974254) (not bm!346919) (not d!1601635) (not b!4975050) (not tb!261253) (not b!4974533) (not b!4975263) (not b!4974300) (not b_lambda!197531) (not b!4974267) (not bm!346900) (not b!4973981) (not b!4973896) (not d!1602433) (not b!4975222) (not b_lambda!197513) (not d!1601817) (not d!1601935) (not b!4975373) (not bm!347022) (not d!1602105) (not d!1601791) (not b!4973988) (not b!4975257) (not b!4975296) (not b!4975303) (not b!4974449) (not b!4975040) (not b!4974042) (not bm!346965) (not b!4974360) b_and!349227 (not b!4975242) (not d!1601767) (not b!4974791) (not b!4974549) (not bm!346975) (not b!4975337) (not b!4975306) (not b!4975379) (not b!4974651) (not b!4975334) (not d!1601953) (not b!4974857) (not bm!347012) (not b!4975320) (not b!4975309) (not b!4975330) (not b!4975239) (not d!1601687) (not b!4975168) (not bm!346958) (not b!4974551) (not b!4975414) (not b!4975214) (not b!4975327) (not bm!346976) (not b!4975161) (not b!4975375) (not b!4973915) (not b!4974323) (not d!1602533) (not b!4974546) (not d!1601901) (not tb!261223) (not tb!261265) (not b!4974460) (not d!1602279) (not b!4975153) (not b!4974304) (not b!4975185) (not b!4974305) (not bm!346974) (not b!4974187) (not b_lambda!197499) (not d!1602153) (not d!1601795) (not b!4975356) (not b!4974989) (not d!1602259) (not b!4974917) (not b!4974637) (not bm!346993) (not b!4975127) (not b!4975051) (not d!1601881) (not b!4975212) (not b!4974082) (not b!4974342) (not d!1602145) (not b!4974461) (not b!4974719) (not b!4975333) (not b!4974518) (not b!4974643) (not b!4975201) (not b!4974969) (not bs!1183932) (not b!4974843) (not d!1602117) (not b_next!133663) (not b!4973855) (not b_lambda!197505) (not b!4974789) (not b!4974181) (not d!1601865) (not b!4975348) (not b!4975340) (not b!4973899) (not b!4974534) (not b!4975321) (not d!1601627) (not b!4974925) (not b!4975354) (not d!1601985) (not d!1601711) (not b!4974480) (not d!1601833) (not b!4975195) (not b!4974636) (not b!4974257) (not b_lambda!197507) (not d!1601937) (not d!1602171) (not b!4974314) (not b!4974528) (not d!1601715) (not b!4975187) (not b!4975247) (not b!4975367) (not b_lambda!197521) (not b_next!133651) (not bm!347014) (not b!4975316) (not bs!1183931) (not b!4973862) (not d!1601685) (not b!4974779) (not d!1602233) (not b!4975186) (not b!4973901) (not d!1601639) b_and!349205 (not b!4974721) (not bs!1183929) (not bm!346914) (not b!4973986) (not b!4975147) (not b!4974519) (not d!1602409) (not b!4974329) (not d!1602255) (not b!4974691) (not b!4974147) (not d!1602235) (not tb!261301) (not bm!346945) (not b!4974003) (not b!4974337) (not b!4975294) (not b!4975190) (not b_lambda!197375) (not b!4974579) (not d!1601807) (not b!4974530) (not bs!1183930) (not b!4975342) (not b!4974419) (not b!4975209) (not b!4974349) (not b!4973924) (not b!4975145) (not tb!261447) (not b!4974447) (not d!1602573) (not b!4974401) (not d!1601925) (not b!4974787) (not b!4974361) (not b!4975243) (not b_lambda!197519) (not d!1601883) (not b!4974527) (not b!4975121) (not b!4974463) (not b!4974348) (not b!4974610) (not b!4975322) (not b!4974261) (not b!4975343) (not b!4975349) (not d!1601877) (not b_lambda!197421) (not b!4974295) (not b!4975360) (not b!4974933) (not b!4975194) (not b!4975358) (not b!4974897) (not b!4975238) (not b!4974786) (not b!4974247) (not b!4975191) (not b!4974008) (not bm!346920) (not b!4974642) (not bm!346949) (not d!1601913) (not tb!261235) (not b!4975251) (not b!4975207) (not b!4974243) (not b!4974544) (not b!4974454) (not b!4975012) (not b!4974683) (not b!4974767) (not d!1601805) (not b_lambda!197487) (not b!4974750) (not b!4974362) (not bm!346943) (not b!4975236) (not b!4974268))
(check-sat (not b_next!133659) (not b_next!133661) b_and!349203 b_and!349225 (not b_next!133641) b_and!349229 b_and!349199 (not b_next!133657) b_and!349227 (not b_next!133663) (not b_next!133651) b_and!349205 b_and!349223 b_and!349201 (not b_next!133643) (not b_next!133649))
