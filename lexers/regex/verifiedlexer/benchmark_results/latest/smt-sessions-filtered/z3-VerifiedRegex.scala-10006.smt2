; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522942 () Bool)

(assert start!522942)

(declare-fun b!4960200 () Bool)

(declare-fun b_free!132519 () Bool)

(declare-fun b_next!133309 () Bool)

(assert (=> b!4960200 (= b_free!132519 (not b_next!133309))))

(declare-fun tp!1391242 () Bool)

(declare-fun b_and!347371 () Bool)

(assert (=> b!4960200 (= tp!1391242 b_and!347371)))

(declare-fun b_free!132521 () Bool)

(declare-fun b_next!133311 () Bool)

(assert (=> b!4960200 (= b_free!132521 (not b_next!133311))))

(declare-fun tp!1391240 () Bool)

(declare-fun b_and!347373 () Bool)

(assert (=> b!4960200 (= tp!1391240 b_and!347373)))

(declare-fun b!4960191 () Bool)

(declare-fun res!2116999 () Bool)

(declare-fun e!3100163 () Bool)

(assert (=> b!4960191 (=> (not res!2116999) (not e!3100163))))

(declare-datatypes ((List!57478 0))(
  ( (Nil!57354) (Cons!57354 (h!63802 (_ BitVec 16)) (t!368044 List!57478)) )
))
(declare-datatypes ((TokenValue!8674 0))(
  ( (FloatLiteralValue!17348 (text!61163 List!57478)) (TokenValueExt!8673 (__x!34641 Int)) (Broken!43370 (value!267790 List!57478)) (Object!8797) (End!8674) (Def!8674) (Underscore!8674) (Match!8674) (Else!8674) (Error!8674) (Case!8674) (If!8674) (Extends!8674) (Abstract!8674) (Class!8674) (Val!8674) (DelimiterValue!17348 (del!8734 List!57478)) (KeywordValue!8680 (value!267791 List!57478)) (CommentValue!17348 (value!267792 List!57478)) (WhitespaceValue!17348 (value!267793 List!57478)) (IndentationValue!8674 (value!267794 List!57478)) (String!65243) (Int32!8674) (Broken!43371 (value!267795 List!57478)) (Boolean!8675) (Unit!148248) (OperatorValue!8677 (op!8734 List!57478)) (IdentifierValue!17348 (value!267796 List!57478)) (IdentifierValue!17349 (value!267797 List!57478)) (WhitespaceValue!17349 (value!267798 List!57478)) (True!17348) (False!17348) (Broken!43372 (value!267799 List!57478)) (Broken!43373 (value!267800 List!57478)) (True!17349) (RightBrace!8674) (RightBracket!8674) (Colon!8674) (Null!8674) (Comma!8674) (LeftBracket!8674) (False!17349) (LeftBrace!8674) (ImaginaryLiteralValue!8674 (text!61164 List!57478)) (StringLiteralValue!26022 (value!267801 List!57478)) (EOFValue!8674 (value!267802 List!57478)) (IdentValue!8674 (value!267803 List!57478)) (DelimiterValue!17349 (value!267804 List!57478)) (DedentValue!8674 (value!267805 List!57478)) (NewLineValue!8674 (value!267806 List!57478)) (IntegerValue!26022 (value!267807 (_ BitVec 32)) (text!61165 List!57478)) (IntegerValue!26023 (value!267808 Int) (text!61166 List!57478)) (Times!8674) (Or!8674) (Equal!8674) (Minus!8674) (Broken!43374 (value!267809 List!57478)) (And!8674) (Div!8674) (LessEqual!8674) (Mod!8674) (Concat!22271) (Not!8674) (Plus!8674) (SpaceValue!8674 (value!267810 List!57478)) (IntegerValue!26024 (value!267811 Int) (text!61167 List!57478)) (StringLiteralValue!26023 (text!61168 List!57478)) (FloatLiteralValue!17349 (text!61169 List!57478)) (BytesLiteralValue!8674 (value!267812 List!57478)) (CommentValue!17349 (value!267813 List!57478)) (StringLiteralValue!26024 (value!267814 List!57478)) (ErrorTokenValue!8674 (msg!8735 List!57478)) )
))
(declare-datatypes ((C!27444 0))(
  ( (C!27445 (val!23088 Int)) )
))
(declare-datatypes ((List!57479 0))(
  ( (Nil!57355) (Cons!57355 (h!63803 C!27444) (t!368045 List!57479)) )
))
(declare-datatypes ((IArray!30293 0))(
  ( (IArray!30294 (innerList!15204 List!57479)) )
))
(declare-datatypes ((Regex!13597 0))(
  ( (ElementMatch!13597 (c!846491 C!27444)) (Concat!22272 (regOne!27706 Regex!13597) (regTwo!27706 Regex!13597)) (EmptyExpr!13597) (Star!13597 (reg!13926 Regex!13597)) (EmptyLang!13597) (Union!13597 (regOne!27707 Regex!13597) (regTwo!27707 Regex!13597)) )
))
(declare-datatypes ((String!65244 0))(
  ( (String!65245 (value!267815 String)) )
))
(declare-datatypes ((Conc!15116 0))(
  ( (Node!15116 (left!41824 Conc!15116) (right!42154 Conc!15116) (csize!30462 Int) (cheight!15327 Int)) (Leaf!25123 (xs!18442 IArray!30293) (csize!30463 Int)) (Empty!15116) )
))
(declare-datatypes ((BalanceConc!29662 0))(
  ( (BalanceConc!29663 (c!846492 Conc!15116)) )
))
(declare-datatypes ((TokenValueInjection!16656 0))(
  ( (TokenValueInjection!16657 (toValue!11315 Int) (toChars!11174 Int)) )
))
(declare-datatypes ((Rule!16528 0))(
  ( (Rule!16529 (regex!8364 Regex!13597) (tag!9228 String!65244) (isSeparator!8364 Bool) (transformation!8364 TokenValueInjection!16656)) )
))
(declare-datatypes ((List!57480 0))(
  ( (Nil!57356) (Cons!57356 (h!63804 Rule!16528) (t!368046 List!57480)) )
))
(declare-fun rulesArg!259 () List!57480)

(declare-fun isEmpty!30852 (List!57480) Bool)

(assert (=> b!4960191 (= res!2116999 (not (isEmpty!30852 rulesArg!259)))))

(declare-fun b!4960192 () Bool)

(declare-fun res!2117001 () Bool)

(assert (=> b!4960192 (=> (not res!2117001) (not e!3100163))))

(declare-datatypes ((LexerInterface!7956 0))(
  ( (LexerInterfaceExt!7953 (__x!34642 Int)) (Lexer!7954) )
))
(declare-fun thiss!15247 () LexerInterface!7956)

(declare-fun rulesValidInductive!3267 (LexerInterface!7956 List!57480) Bool)

(assert (=> b!4960192 (= res!2117001 (rulesValidInductive!3267 thiss!15247 rulesArg!259))))

(declare-fun b!4960193 () Bool)

(declare-fun e!3100165 () Bool)

(assert (=> b!4960193 (= e!3100165 true)))

(declare-fun lt!2047859 () Bool)

(declare-fun e!3100156 () Bool)

(assert (=> b!4960193 (= lt!2047859 e!3100156)))

(declare-fun res!2117005 () Bool)

(assert (=> b!4960193 (=> res!2117005 e!3100156)))

(declare-fun lt!2047864 () Bool)

(assert (=> b!4960193 (= res!2117005 (not lt!2047864))))

(declare-fun b!4960195 () Bool)

(declare-fun e!3100162 () Bool)

(declare-fun input!1342 () BalanceConc!29662)

(declare-fun tp!1391239 () Bool)

(declare-fun inv!74885 (Conc!15116) Bool)

(assert (=> b!4960195 (= e!3100162 (and (inv!74885 (c!846492 input!1342)) tp!1391239))))

(declare-fun b!4960196 () Bool)

(declare-fun e!3100166 () Bool)

(declare-datatypes ((Token!15228 0))(
  ( (Token!15229 (value!267816 TokenValue!8674) (rule!11592 Rule!16528) (size!38010 Int) (originalCharacters!8645 List!57479)) )
))
(declare-datatypes ((tuple2!62020 0))(
  ( (tuple2!62021 (_1!34313 Token!15228) (_2!34313 BalanceConc!29662)) )
))
(declare-fun lt!2047862 () tuple2!62020)

(declare-datatypes ((tuple2!62022 0))(
  ( (tuple2!62023 (_1!34314 Token!15228) (_2!34314 List!57479)) )
))
(declare-fun lt!2047865 () tuple2!62022)

(declare-fun list!18317 (BalanceConc!29662) List!57479)

(assert (=> b!4960196 (= e!3100166 (= (list!18317 (_2!34313 lt!2047862)) (_2!34314 lt!2047865)))))

(declare-fun b!4960197 () Bool)

(declare-fun e!3100155 () Bool)

(declare-fun e!3100161 () Bool)

(declare-fun tp!1391243 () Bool)

(assert (=> b!4960197 (= e!3100155 (and e!3100161 tp!1391243))))

(declare-fun b!4960198 () Bool)

(declare-fun e!3100159 () Bool)

(assert (=> b!4960198 (= e!3100163 e!3100159)))

(declare-fun res!2116998 () Bool)

(assert (=> b!4960198 (=> (not res!2116998) (not e!3100159))))

(declare-fun lt!2047858 () List!57479)

(declare-fun totalInput!464 () BalanceConc!29662)

(declare-fun isSuffix!1163 (List!57479 List!57479) Bool)

(assert (=> b!4960198 (= res!2116998 (isSuffix!1163 lt!2047858 (list!18317 totalInput!464)))))

(assert (=> b!4960198 (= lt!2047858 (list!18317 input!1342))))

(declare-fun e!3100158 () Bool)

(declare-fun tp!1391244 () Bool)

(declare-fun b!4960199 () Bool)

(declare-fun inv!74881 (String!65244) Bool)

(declare-fun inv!74886 (TokenValueInjection!16656) Bool)

(assert (=> b!4960199 (= e!3100161 (and tp!1391244 (inv!74881 (tag!9228 (h!63804 rulesArg!259))) (inv!74886 (transformation!8364 (h!63804 rulesArg!259))) e!3100158))))

(assert (=> b!4960200 (= e!3100158 (and tp!1391242 tp!1391240))))

(declare-fun b!4960201 () Bool)

(declare-fun e!3100164 () Bool)

(assert (=> b!4960201 (= e!3100164 e!3100165)))

(declare-fun res!2117004 () Bool)

(assert (=> b!4960201 (=> res!2117004 e!3100165)))

(declare-datatypes ((Option!14397 0))(
  ( (None!14396) (Some!14396 (v!50381 tuple2!62022)) )
))
(declare-fun lt!2047866 () Option!14397)

(declare-fun isDefined!11312 (Option!14397) Bool)

(assert (=> b!4960201 (= res!2117004 (not (= lt!2047864 (isDefined!11312 lt!2047866))))))

(declare-datatypes ((Option!14398 0))(
  ( (None!14397) (Some!14397 (v!50382 tuple2!62020)) )
))
(declare-fun lt!2047863 () Option!14398)

(declare-fun isDefined!11313 (Option!14398) Bool)

(assert (=> b!4960201 (= lt!2047864 (isDefined!11313 lt!2047863))))

(declare-fun maxPrefixZipper!761 (LexerInterface!7956 List!57480 List!57479) Option!14397)

(assert (=> b!4960201 (= lt!2047866 (maxPrefixZipper!761 thiss!15247 rulesArg!259 lt!2047858))))

(declare-fun b!4960202 () Bool)

(assert (=> b!4960202 (= e!3100156 e!3100166)))

(declare-fun res!2117003 () Bool)

(assert (=> b!4960202 (=> (not res!2117003) (not e!3100166))))

(assert (=> b!4960202 (= res!2117003 (= (_1!34313 lt!2047862) (_1!34314 lt!2047865)))))

(declare-fun get!19879 (Option!14397) tuple2!62022)

(assert (=> b!4960202 (= lt!2047865 (get!19879 lt!2047866))))

(declare-fun get!19880 (Option!14398) tuple2!62020)

(assert (=> b!4960202 (= lt!2047862 (get!19880 lt!2047863))))

(declare-fun b!4960194 () Bool)

(declare-fun e!3100157 () Bool)

(assert (=> b!4960194 (= e!3100159 (not e!3100157))))

(declare-fun res!2117000 () Bool)

(assert (=> b!4960194 (=> res!2117000 e!3100157)))

(get-info :version)

(assert (=> b!4960194 (= res!2117000 (or (and ((_ is Cons!57356) rulesArg!259) ((_ is Nil!57356) (t!368046 rulesArg!259))) (not ((_ is Cons!57356) rulesArg!259))))))

(declare-fun isPrefix!5217 (List!57479 List!57479) Bool)

(assert (=> b!4960194 (isPrefix!5217 lt!2047858 lt!2047858)))

(declare-datatypes ((Unit!148249 0))(
  ( (Unit!148250) )
))
(declare-fun lt!2047861 () Unit!148249)

(declare-fun lemmaIsPrefixRefl!3541 (List!57479 List!57479) Unit!148249)

(assert (=> b!4960194 (= lt!2047861 (lemmaIsPrefixRefl!3541 lt!2047858 lt!2047858))))

(declare-fun res!2117002 () Bool)

(assert (=> start!522942 (=> (not res!2117002) (not e!3100163))))

(assert (=> start!522942 (= res!2117002 ((_ is Lexer!7954) thiss!15247))))

(assert (=> start!522942 e!3100163))

(assert (=> start!522942 true))

(assert (=> start!522942 e!3100155))

(declare-fun inv!74887 (BalanceConc!29662) Bool)

(assert (=> start!522942 (and (inv!74887 input!1342) e!3100162)))

(declare-fun e!3100160 () Bool)

(assert (=> start!522942 (and (inv!74887 totalInput!464) e!3100160)))

(declare-fun b!4960203 () Bool)

(assert (=> b!4960203 (= e!3100157 e!3100164)))

(declare-fun res!2117006 () Bool)

(assert (=> b!4960203 (=> res!2117006 e!3100164)))

(declare-fun lt!2047860 () Option!14398)

(assert (=> b!4960203 (= res!2117006 (or (and ((_ is None!14397) lt!2047860) ((_ is None!14397) lt!2047863)) ((_ is None!14397) lt!2047863) ((_ is None!14397) lt!2047860) (>= (size!38010 (_1!34313 (v!50382 lt!2047860))) (size!38010 (_1!34313 (v!50382 lt!2047863))))))))

(declare-fun maxPrefixZipperSequenceV2!695 (LexerInterface!7956 List!57480 BalanceConc!29662 BalanceConc!29662) Option!14398)

(assert (=> b!4960203 (= lt!2047863 (maxPrefixZipperSequenceV2!695 thiss!15247 (t!368046 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!348 (LexerInterface!7956 Rule!16528 BalanceConc!29662 BalanceConc!29662) Option!14398)

(assert (=> b!4960203 (= lt!2047860 (maxPrefixOneRuleZipperSequenceV2!348 thiss!15247 (h!63804 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4960204 () Bool)

(declare-fun tp!1391241 () Bool)

(assert (=> b!4960204 (= e!3100160 (and (inv!74885 (c!846492 totalInput!464)) tp!1391241))))

(assert (= (and start!522942 res!2117002) b!4960192))

(assert (= (and b!4960192 res!2117001) b!4960191))

(assert (= (and b!4960191 res!2116999) b!4960198))

(assert (= (and b!4960198 res!2116998) b!4960194))

(assert (= (and b!4960194 (not res!2117000)) b!4960203))

(assert (= (and b!4960203 (not res!2117006)) b!4960201))

(assert (= (and b!4960201 (not res!2117004)) b!4960193))

(assert (= (and b!4960193 (not res!2117005)) b!4960202))

(assert (= (and b!4960202 res!2117003) b!4960196))

(assert (= b!4960199 b!4960200))

(assert (= b!4960197 b!4960199))

(assert (= (and start!522942 ((_ is Cons!57356) rulesArg!259)) b!4960197))

(assert (= start!522942 b!4960195))

(assert (= start!522942 b!4960204))

(declare-fun m!5984758 () Bool)

(assert (=> b!4960201 m!5984758))

(declare-fun m!5984760 () Bool)

(assert (=> b!4960201 m!5984760))

(declare-fun m!5984762 () Bool)

(assert (=> b!4960201 m!5984762))

(declare-fun m!5984764 () Bool)

(assert (=> b!4960194 m!5984764))

(declare-fun m!5984766 () Bool)

(assert (=> b!4960194 m!5984766))

(declare-fun m!5984768 () Bool)

(assert (=> b!4960198 m!5984768))

(assert (=> b!4960198 m!5984768))

(declare-fun m!5984770 () Bool)

(assert (=> b!4960198 m!5984770))

(declare-fun m!5984772 () Bool)

(assert (=> b!4960198 m!5984772))

(declare-fun m!5984774 () Bool)

(assert (=> b!4960199 m!5984774))

(declare-fun m!5984776 () Bool)

(assert (=> b!4960199 m!5984776))

(declare-fun m!5984778 () Bool)

(assert (=> b!4960203 m!5984778))

(declare-fun m!5984780 () Bool)

(assert (=> b!4960203 m!5984780))

(declare-fun m!5984782 () Bool)

(assert (=> b!4960191 m!5984782))

(declare-fun m!5984784 () Bool)

(assert (=> b!4960196 m!5984784))

(declare-fun m!5984786 () Bool)

(assert (=> start!522942 m!5984786))

(declare-fun m!5984788 () Bool)

(assert (=> start!522942 m!5984788))

(declare-fun m!5984790 () Bool)

(assert (=> b!4960204 m!5984790))

(declare-fun m!5984792 () Bool)

(assert (=> b!4960192 m!5984792))

(declare-fun m!5984794 () Bool)

(assert (=> b!4960195 m!5984794))

(declare-fun m!5984796 () Bool)

(assert (=> b!4960202 m!5984796))

(declare-fun m!5984798 () Bool)

(assert (=> b!4960202 m!5984798))

(check-sat (not b!4960202) (not b!4960191) (not b!4960195) (not b!4960194) (not b!4960204) (not start!522942) (not b!4960203) (not b!4960196) b_and!347371 (not b_next!133311) (not b!4960197) (not b!4960201) (not b_next!133309) (not b!4960199) b_and!347373 (not b!4960198) (not b!4960192))
(check-sat b_and!347371 b_and!347373 (not b_next!133309) (not b_next!133311))
