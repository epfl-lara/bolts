; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93546 () Bool)

(assert start!93546)

(declare-fun bs!258252 () Bool)

(declare-fun b!1093298 () Bool)

(assert (= bs!258252 (and b!1093298 start!93546)))

(declare-fun lambda!41842 () Int)

(declare-fun lambda!41841 () Int)

(assert (=> bs!258252 (not (= lambda!41842 lambda!41841))))

(declare-fun b!1093317 () Bool)

(declare-fun e!692004 () Bool)

(assert (=> b!1093317 (= e!692004 true)))

(declare-fun b!1093316 () Bool)

(declare-fun e!692003 () Bool)

(assert (=> b!1093316 (= e!692003 e!692004)))

(assert (=> b!1093298 e!692003))

(assert (= b!1093316 b!1093317))

(assert (= b!1093298 b!1093316))

(declare-fun lambda!41843 () Int)

(assert (=> bs!258252 (not (= lambda!41843 lambda!41841))))

(assert (=> b!1093298 (not (= lambda!41843 lambda!41842))))

(declare-fun b!1093319 () Bool)

(declare-fun e!692006 () Bool)

(assert (=> b!1093319 (= e!692006 true)))

(declare-fun b!1093318 () Bool)

(declare-fun e!692005 () Bool)

(assert (=> b!1093318 (= e!692005 e!692006)))

(assert (=> b!1093298 e!692005))

(assert (= b!1093318 b!1093319))

(assert (= b!1093298 b!1093318))

(declare-fun lambda!41844 () Int)

(assert (=> bs!258252 (not (= lambda!41844 lambda!41841))))

(assert (=> b!1093298 (not (= lambda!41844 lambda!41842))))

(assert (=> b!1093298 (not (= lambda!41844 lambda!41843))))

(declare-fun b!1093321 () Bool)

(declare-fun e!692008 () Bool)

(assert (=> b!1093321 (= e!692008 true)))

(declare-fun b!1093320 () Bool)

(declare-fun e!692007 () Bool)

(assert (=> b!1093320 (= e!692007 e!692008)))

(assert (=> b!1093298 e!692007))

(assert (= b!1093320 b!1093321))

(assert (= b!1093298 b!1093320))

(declare-fun b!1093292 () Bool)

(declare-fun e!691994 () Bool)

(declare-datatypes ((List!10519 0))(
  ( (Nil!10503) (Cons!10503 (h!15904 (_ BitVec 16)) (t!102509 List!10519)) )
))
(declare-datatypes ((TokenValue!1860 0))(
  ( (FloatLiteralValue!3720 (text!13465 List!10519)) (TokenValueExt!1859 (__x!7442 Int)) (Broken!9300 (value!59056 List!10519)) (Object!1875) (End!1860) (Def!1860) (Underscore!1860) (Match!1860) (Else!1860) (Error!1860) (Case!1860) (If!1860) (Extends!1860) (Abstract!1860) (Class!1860) (Val!1860) (DelimiterValue!3720 (del!1920 List!10519)) (KeywordValue!1866 (value!59057 List!10519)) (CommentValue!3720 (value!59058 List!10519)) (WhitespaceValue!3720 (value!59059 List!10519)) (IndentationValue!1860 (value!59060 List!10519)) (String!12869) (Int32!1860) (Broken!9301 (value!59061 List!10519)) (Boolean!1861) (Unit!15960) (OperatorValue!1863 (op!1920 List!10519)) (IdentifierValue!3720 (value!59062 List!10519)) (IdentifierValue!3721 (value!59063 List!10519)) (WhitespaceValue!3721 (value!59064 List!10519)) (True!3720) (False!3720) (Broken!9302 (value!59065 List!10519)) (Broken!9303 (value!59066 List!10519)) (True!3721) (RightBrace!1860) (RightBracket!1860) (Colon!1860) (Null!1860) (Comma!1860) (LeftBracket!1860) (False!3721) (LeftBrace!1860) (ImaginaryLiteralValue!1860 (text!13466 List!10519)) (StringLiteralValue!5580 (value!59067 List!10519)) (EOFValue!1860 (value!59068 List!10519)) (IdentValue!1860 (value!59069 List!10519)) (DelimiterValue!3721 (value!59070 List!10519)) (DedentValue!1860 (value!59071 List!10519)) (NewLineValue!1860 (value!59072 List!10519)) (IntegerValue!5580 (value!59073 (_ BitVec 32)) (text!13467 List!10519)) (IntegerValue!5581 (value!59074 Int) (text!13468 List!10519)) (Times!1860) (Or!1860) (Equal!1860) (Minus!1860) (Broken!9304 (value!59075 List!10519)) (And!1860) (Div!1860) (LessEqual!1860) (Mod!1860) (Concat!4923) (Not!1860) (Plus!1860) (SpaceValue!1860 (value!59076 List!10519)) (IntegerValue!5582 (value!59077 Int) (text!13469 List!10519)) (StringLiteralValue!5581 (text!13470 List!10519)) (FloatLiteralValue!3721 (text!13471 List!10519)) (BytesLiteralValue!1860 (value!59078 List!10519)) (CommentValue!3721 (value!59079 List!10519)) (StringLiteralValue!5582 (value!59080 List!10519)) (ErrorTokenValue!1860 (msg!1921 List!10519)) )
))
(declare-datatypes ((Regex!3063 0))(
  ( (ElementMatch!3063 (c!185368 (_ BitVec 16))) (Concat!4924 (regOne!6638 Regex!3063) (regTwo!6638 Regex!3063)) (EmptyExpr!3063) (Star!3063 (reg!3392 Regex!3063)) (EmptyLang!3063) (Union!3063 (regOne!6639 Regex!3063) (regTwo!6639 Regex!3063)) )
))
(declare-datatypes ((String!12870 0))(
  ( (String!12871 (value!59081 String)) )
))
(declare-datatypes ((IArray!6423 0))(
  ( (IArray!6424 (innerList!3269 List!10519)) )
))
(declare-datatypes ((Conc!3209 0))(
  ( (Node!3209 (left!9025 Conc!3209) (right!9355 Conc!3209) (csize!6648 Int) (cheight!3420 Int)) (Leaf!5112 (xs!5902 IArray!6423) (csize!6649 Int)) (Empty!3209) )
))
(declare-datatypes ((BalanceConc!6432 0))(
  ( (BalanceConc!6433 (c!185369 Conc!3209)) )
))
(declare-datatypes ((TokenValueInjection!3420 0))(
  ( (TokenValueInjection!3421 (toValue!2871 Int) (toChars!2730 Int)) )
))
(declare-datatypes ((Rule!3388 0))(
  ( (Rule!3389 (regex!1794 Regex!3063) (tag!2056 String!12870) (isSeparator!1794 Bool) (transformation!1794 TokenValueInjection!3420)) )
))
(declare-datatypes ((Token!3254 0))(
  ( (Token!3255 (value!59082 TokenValue!1860) (rule!3217 Rule!3388) (size!8124 Int) (originalCharacters!2350 List!10519)) )
))
(declare-datatypes ((List!10520 0))(
  ( (Nil!10504) (Cons!10504 (h!15905 Token!3254) (t!102510 List!10520)) )
))
(declare-datatypes ((IArray!6425 0))(
  ( (IArray!6426 (innerList!3270 List!10520)) )
))
(declare-datatypes ((Conc!3210 0))(
  ( (Node!3210 (left!9026 Conc!3210) (right!9356 Conc!3210) (csize!6650 Int) (cheight!3421 Int)) (Leaf!5113 (xs!5903 IArray!6425) (csize!6651 Int)) (Empty!3210) )
))
(declare-datatypes ((List!10521 0))(
  ( (Nil!10505) (Cons!10505 (h!15906 Rule!3388) (t!102511 List!10521)) )
))
(declare-datatypes ((BalanceConc!6434 0))(
  ( (BalanceConc!6435 (c!185370 Conc!3210)) )
))
(declare-datatypes ((PrintableTokens!304 0))(
  ( (PrintableTokens!305 (rules!9081 List!10521) (tokens!1353 BalanceConc!6434)) )
))
(declare-datatypes ((tuple2!11714 0))(
  ( (tuple2!11715 (_1!6683 Int) (_2!6683 PrintableTokens!304)) )
))
(declare-datatypes ((List!10522 0))(
  ( (Nil!10506) (Cons!10506 (h!15907 tuple2!11714) (t!102512 List!10522)) )
))
(declare-fun lt!366957 () List!10522)

(declare-fun size!8125 (List!10522) Int)

(declare-fun filter!258 (List!10522 Int) List!10522)

(assert (=> b!1093292 (= e!691994 (< (size!8125 (filter!258 lt!366957 lambda!41844)) (size!8125 lt!366957)))))

(declare-fun b!1093293 () Bool)

(declare-datatypes ((Unit!15961 0))(
  ( (Unit!15962) )
))
(declare-fun e!691992 () Unit!15961)

(declare-fun err!2145 () Unit!15961)

(assert (=> b!1093293 (= e!691992 err!2145)))

(declare-fun lt!366951 () Unit!15961)

(declare-datatypes ((IArray!6427 0))(
  ( (IArray!6428 (innerList!3271 List!10522)) )
))
(declare-datatypes ((Conc!3211 0))(
  ( (Node!3211 (left!9027 Conc!3211) (right!9357 Conc!3211) (csize!6652 Int) (cheight!3422 Int)) (Leaf!5114 (xs!5904 IArray!6427) (csize!6653 Int)) (Empty!3211) )
))
(declare-datatypes ((BalanceConc!6436 0))(
  ( (BalanceConc!6437 (c!185371 Conc!3211)) )
))
(declare-fun lt!366971 () BalanceConc!6436)

(declare-fun lt!366966 () tuple2!11714)

(declare-fun forallContained!496 (List!10522 Int tuple2!11714) Unit!15961)

(declare-fun list!3766 (BalanceConc!6436) List!10522)

(assert (=> b!1093293 (= lt!366951 (forallContained!496 (list!3766 lt!366971) lambda!41842 lt!366966))))

(assert (=> b!1093293 true))

(declare-fun b!1093294 () Bool)

(declare-fun e!691991 () Bool)

(assert (=> b!1093294 (= e!691991 (< (size!8125 (filter!258 lt!366957 lambda!41842)) (size!8125 lt!366957)))))

(declare-fun b!1093295 () Bool)

(declare-fun e!691989 () Unit!15961)

(declare-fun err!2143 () Unit!15961)

(assert (=> b!1093295 (= e!691989 err!2143)))

(declare-fun lt!366945 () BalanceConc!6436)

(declare-fun lt!366969 () Unit!15961)

(assert (=> b!1093295 (= lt!366969 (forallContained!496 (list!3766 lt!366945) lambda!41844 lt!366966))))

(assert (=> b!1093295 true))

(declare-fun b!1093296 () Bool)

(declare-fun e!691993 () Bool)

(declare-fun e!691986 () Bool)

(assert (=> b!1093296 (= e!691993 e!691986)))

(declare-fun res!485720 () Bool)

(assert (=> b!1093296 (=> (not res!485720) (not e!691986))))

(declare-fun lt!366970 () Bool)

(assert (=> b!1093296 (= res!485720 (not lt!366970))))

(declare-fun lt!366964 () Unit!15961)

(assert (=> b!1093296 (= lt!366964 e!691992)))

(declare-fun c!185367 () Bool)

(assert (=> b!1093296 (= c!185367 lt!366970)))

(declare-fun contains!1780 (BalanceConc!6436 tuple2!11714) Bool)

(assert (=> b!1093296 (= lt!366970 (contains!1780 lt!366971 lt!366966))))

(declare-fun b!1093297 () Bool)

(declare-fun e!691988 () Unit!15961)

(declare-fun Unit!15963 () Unit!15961)

(assert (=> b!1093297 (= e!691988 Unit!15963)))

(declare-fun e!691987 () Bool)

(assert (=> b!1093298 (= e!691987 e!691993)))

(declare-fun res!485725 () Bool)

(assert (=> b!1093298 (=> (not res!485725) (not e!691993))))

(declare-fun objs!8 () BalanceConc!6436)

(assert (=> b!1093298 (= res!485725 (contains!1780 objs!8 lt!366966))))

(declare-fun filter!259 (BalanceConc!6436 Int) BalanceConc!6436)

(assert (=> b!1093298 (= lt!366945 (filter!259 objs!8 lambda!41844))))

(declare-fun lt!366954 () BalanceConc!6436)

(assert (=> b!1093298 (= lt!366954 (filter!259 objs!8 lambda!41843))))

(assert (=> b!1093298 (= lt!366971 (filter!259 objs!8 lambda!41842))))

(declare-fun lt!366959 () Int)

(declare-fun apply!2059 (BalanceConc!6436 Int) tuple2!11714)

(assert (=> b!1093298 (= lt!366966 (apply!2059 objs!8 (ite (>= lt!366959 0) (div lt!366959 2) (- (div (- lt!366959) 2)))))))

(declare-fun b!1093299 () Bool)

(declare-fun e!691996 () Bool)

(declare-fun forall!2356 (BalanceConc!6436 Int) Bool)

(assert (=> b!1093299 (= e!691996 (forall!2356 lt!366971 lambda!41841))))

(declare-fun lt!366965 () Unit!15961)

(declare-fun lemmaConcatPreservesForall!82 (List!10522 List!10522 Int) Unit!15961)

(declare-fun sortObjectsByID!0 (BalanceConc!6436) BalanceConc!6436)

(assert (=> b!1093299 (= lt!366965 (lemmaConcatPreservesForall!82 (list!3766 (sortObjectsByID!0 lt!366971)) (list!3766 lt!366954) lambda!41841))))

(declare-fun lt!366947 () List!10522)

(declare-fun forall!2357 (List!10522 Int) Bool)

(assert (=> b!1093299 (forall!2357 lt!366947 lambda!41841)))

(declare-fun lt!366953 () Unit!15961)

(declare-fun lemmaForallSubseq!39 (List!10522 List!10522 Int) Unit!15961)

(assert (=> b!1093299 (= lt!366953 (lemmaForallSubseq!39 lt!366947 lt!366957 lambda!41841))))

(assert (=> b!1093299 (= lt!366947 (list!3766 (filter!259 objs!8 lambda!41844)))))

(declare-fun lt!366967 () List!10522)

(assert (=> b!1093299 (forall!2357 lt!366967 lambda!41841)))

(declare-fun lt!366955 () Unit!15961)

(assert (=> b!1093299 (= lt!366955 (lemmaForallSubseq!39 lt!366967 lt!366957 lambda!41841))))

(assert (=> b!1093299 (= lt!366967 (list!3766 (filter!259 objs!8 lambda!41843)))))

(declare-fun lt!366962 () List!10522)

(assert (=> b!1093299 (forall!2357 lt!366962 lambda!41841)))

(declare-fun lt!366943 () Unit!15961)

(assert (=> b!1093299 (= lt!366943 (lemmaForallSubseq!39 lt!366962 lt!366957 lambda!41841))))

(assert (=> b!1093299 (= lt!366962 (list!3766 (filter!259 objs!8 lambda!41842)))))

(declare-fun lt!366956 () Unit!15961)

(declare-fun filterSubseq!31 (List!10522 Int) Unit!15961)

(assert (=> b!1093299 (= lt!366956 (filterSubseq!31 lt!366957 lambda!41844))))

(declare-fun lt!366961 () Unit!15961)

(assert (=> b!1093299 (= lt!366961 (filterSubseq!31 lt!366957 lambda!41843))))

(declare-fun lt!366950 () Unit!15961)

(assert (=> b!1093299 (= lt!366950 (filterSubseq!31 lt!366957 lambda!41842))))

(declare-fun res!485723 () Bool)

(declare-fun e!691985 () Bool)

(assert (=> start!93546 (=> (not res!485723) (not e!691985))))

(assert (=> start!93546 (= res!485723 (forall!2356 objs!8 lambda!41841))))

(assert (=> start!93546 e!691985))

(declare-fun e!691997 () Bool)

(declare-fun inv!13449 (BalanceConc!6436) Bool)

(assert (=> start!93546 (and (inv!13449 objs!8) e!691997)))

(declare-fun b!1093300 () Bool)

(declare-fun err!2144 () Unit!15961)

(assert (=> b!1093300 (= e!691988 err!2144)))

(declare-fun lt!366948 () Unit!15961)

(assert (=> b!1093300 (= lt!366948 (forallContained!496 lt!366957 lambda!41844 lt!366966))))

(assert (=> b!1093300 true))

(declare-fun b!1093301 () Bool)

(declare-fun e!691995 () Bool)

(assert (=> b!1093301 (= e!691986 (not e!691995))))

(declare-fun res!485719 () Bool)

(assert (=> b!1093301 (=> res!485719 e!691995)))

(declare-fun size!8126 (BalanceConc!6436) Int)

(assert (=> b!1093301 (= res!485719 (>= (size!8126 lt!366971) lt!366959))))

(assert (=> b!1093301 e!691991))

(declare-fun res!485724 () Bool)

(assert (=> b!1093301 (=> res!485724 e!691991)))

(declare-fun lt!366958 () Bool)

(assert (=> b!1093301 (= res!485724 lt!366958)))

(declare-fun isEmpty!6666 (List!10522) Bool)

(assert (=> b!1093301 (= lt!366958 (isEmpty!6666 lt!366957))))

(declare-fun lt!366949 () Unit!15961)

(declare-fun lemmaNotForallFilterShorter!37 (List!10522 Int) Unit!15961)

(assert (=> b!1093301 (= lt!366949 (lemmaNotForallFilterShorter!37 lt!366957 lambda!41842))))

(assert (=> b!1093301 (= lt!366957 (list!3766 objs!8))))

(declare-fun lt!366952 () Unit!15961)

(declare-fun e!691990 () Unit!15961)

(assert (=> b!1093301 (= lt!366952 e!691990)))

(declare-fun c!185364 () Bool)

(assert (=> b!1093301 (= c!185364 (forall!2356 objs!8 lambda!41842))))

(declare-fun b!1093302 () Bool)

(declare-fun err!2142 () Unit!15961)

(assert (=> b!1093302 (= e!691990 err!2142)))

(declare-fun lt!366963 () Unit!15961)

(assert (=> b!1093302 (= lt!366963 (forallContained!496 (list!3766 objs!8) lambda!41842 lt!366966))))

(assert (=> b!1093302 true))

(declare-fun b!1093303 () Bool)

(declare-fun e!691998 () Bool)

(assert (=> b!1093303 (= e!691995 e!691998)))

(declare-fun res!485722 () Bool)

(assert (=> b!1093303 (=> res!485722 e!691998)))

(declare-fun lt!366944 () Bool)

(assert (=> b!1093303 (= res!485722 lt!366944)))

(declare-fun lt!366968 () Unit!15961)

(assert (=> b!1093303 (= lt!366968 e!691989)))

(declare-fun c!185365 () Bool)

(assert (=> b!1093303 (= c!185365 lt!366944)))

(assert (=> b!1093303 (= lt!366944 (contains!1780 lt!366945 lt!366966))))

(declare-fun b!1093304 () Bool)

(declare-fun Unit!15964 () Unit!15961)

(assert (=> b!1093304 (= e!691990 Unit!15964)))

(declare-fun b!1093305 () Bool)

(declare-fun Unit!15965 () Unit!15961)

(assert (=> b!1093305 (= e!691989 Unit!15965)))

(declare-fun b!1093306 () Bool)

(declare-fun tp!326546 () Bool)

(declare-fun inv!13450 (Conc!3211) Bool)

(assert (=> b!1093306 (= e!691997 (and (inv!13450 (c!185371 objs!8)) tp!326546))))

(declare-fun b!1093307 () Bool)

(assert (=> b!1093307 (= e!691985 e!691987)))

(declare-fun res!485718 () Bool)

(assert (=> b!1093307 (=> (not res!485718) (not e!691987))))

(assert (=> b!1093307 (= res!485718 (> lt!366959 1))))

(assert (=> b!1093307 (= lt!366959 (size!8126 objs!8))))

(declare-fun b!1093308 () Bool)

(declare-fun Unit!15966 () Unit!15961)

(assert (=> b!1093308 (= e!691992 Unit!15966)))

(declare-fun b!1093309 () Bool)

(assert (=> b!1093309 (= e!691998 e!691996)))

(declare-fun res!485717 () Bool)

(assert (=> b!1093309 (=> res!485717 e!691996)))

(assert (=> b!1093309 (= res!485717 (>= (size!8126 lt!366945) lt!366959))))

(assert (=> b!1093309 e!691994))

(declare-fun res!485721 () Bool)

(assert (=> b!1093309 (=> res!485721 e!691994)))

(assert (=> b!1093309 (= res!485721 lt!366958)))

(declare-fun lt!366960 () Unit!15961)

(assert (=> b!1093309 (= lt!366960 (lemmaNotForallFilterShorter!37 lt!366957 lambda!41844))))

(declare-fun lt!366946 () Unit!15961)

(assert (=> b!1093309 (= lt!366946 e!691988)))

(declare-fun c!185366 () Bool)

(assert (=> b!1093309 (= c!185366 (forall!2356 objs!8 lambda!41844))))

(assert (= (and start!93546 res!485723) b!1093307))

(assert (= (and b!1093307 res!485718) b!1093298))

(assert (= (and b!1093298 res!485725) b!1093296))

(assert (= (and b!1093296 c!185367) b!1093293))

(assert (= (and b!1093296 (not c!185367)) b!1093308))

(assert (= (and b!1093296 res!485720) b!1093301))

(assert (= (and b!1093301 c!185364) b!1093302))

(assert (= (and b!1093301 (not c!185364)) b!1093304))

(assert (= (and b!1093301 (not res!485724)) b!1093294))

(assert (= (and b!1093301 (not res!485719)) b!1093303))

(assert (= (and b!1093303 c!185365) b!1093295))

(assert (= (and b!1093303 (not c!185365)) b!1093305))

(assert (= (and b!1093303 (not res!485722)) b!1093309))

(assert (= (and b!1093309 c!185366) b!1093300))

(assert (= (and b!1093309 (not c!185366)) b!1093297))

(assert (= (and b!1093309 (not res!485721)) b!1093292))

(assert (= (and b!1093309 (not res!485717)) b!1093299))

(assert (= start!93546 b!1093306))

(declare-fun m!1245061 () Bool)

(assert (=> b!1093300 m!1245061))

(declare-fun m!1245063 () Bool)

(assert (=> b!1093292 m!1245063))

(assert (=> b!1093292 m!1245063))

(declare-fun m!1245065 () Bool)

(assert (=> b!1093292 m!1245065))

(declare-fun m!1245067 () Bool)

(assert (=> b!1093292 m!1245067))

(declare-fun m!1245069 () Bool)

(assert (=> start!93546 m!1245069))

(declare-fun m!1245071 () Bool)

(assert (=> start!93546 m!1245071))

(declare-fun m!1245073 () Bool)

(assert (=> b!1093298 m!1245073))

(declare-fun m!1245075 () Bool)

(assert (=> b!1093298 m!1245075))

(declare-fun m!1245077 () Bool)

(assert (=> b!1093298 m!1245077))

(declare-fun m!1245079 () Bool)

(assert (=> b!1093298 m!1245079))

(declare-fun m!1245081 () Bool)

(assert (=> b!1093298 m!1245081))

(declare-fun m!1245083 () Bool)

(assert (=> b!1093307 m!1245083))

(declare-fun m!1245085 () Bool)

(assert (=> b!1093295 m!1245085))

(assert (=> b!1093295 m!1245085))

(declare-fun m!1245087 () Bool)

(assert (=> b!1093295 m!1245087))

(declare-fun m!1245089 () Bool)

(assert (=> b!1093309 m!1245089))

(declare-fun m!1245091 () Bool)

(assert (=> b!1093309 m!1245091))

(declare-fun m!1245093 () Bool)

(assert (=> b!1093309 m!1245093))

(declare-fun m!1245095 () Bool)

(assert (=> b!1093294 m!1245095))

(assert (=> b!1093294 m!1245095))

(declare-fun m!1245097 () Bool)

(assert (=> b!1093294 m!1245097))

(assert (=> b!1093294 m!1245067))

(declare-fun m!1245099 () Bool)

(assert (=> b!1093296 m!1245099))

(declare-fun m!1245101 () Bool)

(assert (=> b!1093303 m!1245101))

(declare-fun m!1245103 () Bool)

(assert (=> b!1093293 m!1245103))

(assert (=> b!1093293 m!1245103))

(declare-fun m!1245105 () Bool)

(assert (=> b!1093293 m!1245105))

(declare-fun m!1245107 () Bool)

(assert (=> b!1093302 m!1245107))

(assert (=> b!1093302 m!1245107))

(declare-fun m!1245109 () Bool)

(assert (=> b!1093302 m!1245109))

(declare-fun m!1245111 () Bool)

(assert (=> b!1093299 m!1245111))

(assert (=> b!1093299 m!1245079))

(assert (=> b!1093299 m!1245079))

(declare-fun m!1245113 () Bool)

(assert (=> b!1093299 m!1245113))

(declare-fun m!1245115 () Bool)

(assert (=> b!1093299 m!1245115))

(declare-fun m!1245117 () Bool)

(assert (=> b!1093299 m!1245117))

(assert (=> b!1093299 m!1245115))

(declare-fun m!1245119 () Bool)

(assert (=> b!1093299 m!1245119))

(declare-fun m!1245121 () Bool)

(assert (=> b!1093299 m!1245121))

(declare-fun m!1245123 () Bool)

(assert (=> b!1093299 m!1245123))

(assert (=> b!1093299 m!1245117))

(assert (=> b!1093299 m!1245111))

(declare-fun m!1245125 () Bool)

(assert (=> b!1093299 m!1245125))

(declare-fun m!1245127 () Bool)

(assert (=> b!1093299 m!1245127))

(declare-fun m!1245129 () Bool)

(assert (=> b!1093299 m!1245129))

(assert (=> b!1093299 m!1245081))

(declare-fun m!1245131 () Bool)

(assert (=> b!1093299 m!1245131))

(assert (=> b!1093299 m!1245073))

(declare-fun m!1245133 () Bool)

(assert (=> b!1093299 m!1245133))

(declare-fun m!1245135 () Bool)

(assert (=> b!1093299 m!1245135))

(declare-fun m!1245137 () Bool)

(assert (=> b!1093299 m!1245137))

(declare-fun m!1245139 () Bool)

(assert (=> b!1093299 m!1245139))

(declare-fun m!1245141 () Bool)

(assert (=> b!1093299 m!1245141))

(assert (=> b!1093299 m!1245073))

(assert (=> b!1093299 m!1245081))

(declare-fun m!1245143 () Bool)

(assert (=> b!1093299 m!1245143))

(declare-fun m!1245145 () Bool)

(assert (=> b!1093306 m!1245145))

(assert (=> b!1093301 m!1245107))

(declare-fun m!1245147 () Bool)

(assert (=> b!1093301 m!1245147))

(declare-fun m!1245149 () Bool)

(assert (=> b!1093301 m!1245149))

(declare-fun m!1245151 () Bool)

(assert (=> b!1093301 m!1245151))

(declare-fun m!1245153 () Bool)

(assert (=> b!1093301 m!1245153))

(check-sat (not b!1093298) (not b!1093300) (not b!1093317) (not b!1093319) (not b!1093295) (not b!1093318) (not b!1093293) (not b!1093309) (not b!1093296) (not b!1093301) (not b!1093299) (not b!1093306) (not b!1093303) (not start!93546) (not b!1093307) (not b!1093321) (not b!1093316) (not b!1093294) (not b!1093292) (not b!1093320) (not b!1093302))
(check-sat)
(get-model)

(declare-fun d!307863 () Bool)

(declare-fun e!692017 () Bool)

(assert (=> d!307863 e!692017))

(declare-fun res!485734 () Bool)

(assert (=> d!307863 (=> (not res!485734) (not e!692017))))

(declare-fun isBalanced!886 (Conc!3211) Bool)

(declare-fun filter!261 (Conc!3211 Int) Conc!3211)

(assert (=> d!307863 (= res!485734 (isBalanced!886 (filter!261 (c!185371 objs!8) lambda!41843)))))

(declare-fun lt!366987 () BalanceConc!6436)

(assert (=> d!307863 (= lt!366987 (BalanceConc!6437 (filter!261 (c!185371 objs!8) lambda!41843)))))

(assert (=> d!307863 (= (filter!259 objs!8 lambda!41843) lt!366987)))

(declare-fun b!1093330 () Bool)

(assert (=> b!1093330 (= e!692017 (= (list!3766 lt!366987) (filter!258 (list!3766 objs!8) lambda!41843)))))

(assert (= (and d!307863 res!485734) b!1093330))

(declare-fun m!1245183 () Bool)

(assert (=> d!307863 m!1245183))

(assert (=> d!307863 m!1245183))

(declare-fun m!1245185 () Bool)

(assert (=> d!307863 m!1245185))

(declare-fun m!1245187 () Bool)

(assert (=> b!1093330 m!1245187))

(assert (=> b!1093330 m!1245107))

(assert (=> b!1093330 m!1245107))

(declare-fun m!1245189 () Bool)

(assert (=> b!1093330 m!1245189))

(assert (=> b!1093299 d!307863))

(declare-fun d!307879 () Bool)

(declare-fun list!3768 (Conc!3211) List!10522)

(assert (=> d!307879 (= (list!3766 (filter!259 objs!8 lambda!41842)) (list!3768 (c!185371 (filter!259 objs!8 lambda!41842))))))

(declare-fun bs!258258 () Bool)

(assert (= bs!258258 d!307879))

(declare-fun m!1245195 () Bool)

(assert (=> bs!258258 m!1245195))

(assert (=> b!1093299 d!307879))

(declare-fun d!307883 () Bool)

(assert (=> d!307883 (= (list!3766 (filter!259 objs!8 lambda!41844)) (list!3768 (c!185371 (filter!259 objs!8 lambda!41844))))))

(declare-fun bs!258259 () Bool)

(assert (= bs!258259 d!307883))

(declare-fun m!1245197 () Bool)

(assert (=> bs!258259 m!1245197))

(assert (=> b!1093299 d!307883))

(declare-fun d!307885 () Bool)

(declare-fun subseq!141 (List!10522 List!10522) Bool)

(assert (=> d!307885 (subseq!141 (filter!258 lt!366957 lambda!41842) lt!366957)))

(declare-fun lt!366995 () Unit!15961)

(declare-fun choose!7023 (List!10522 Int) Unit!15961)

(assert (=> d!307885 (= lt!366995 (choose!7023 lt!366957 lambda!41842))))

(assert (=> d!307885 (= (filterSubseq!31 lt!366957 lambda!41842) lt!366995)))

(declare-fun bs!258260 () Bool)

(assert (= bs!258260 d!307885))

(assert (=> bs!258260 m!1245095))

(assert (=> bs!258260 m!1245095))

(declare-fun m!1245199 () Bool)

(assert (=> bs!258260 m!1245199))

(declare-fun m!1245201 () Bool)

(assert (=> bs!258260 m!1245201))

(assert (=> b!1093299 d!307885))

(declare-fun d!307887 () Bool)

(assert (=> d!307887 (= (list!3766 (filter!259 objs!8 lambda!41843)) (list!3768 (c!185371 (filter!259 objs!8 lambda!41843))))))

(declare-fun bs!258261 () Bool)

(assert (= bs!258261 d!307887))

(declare-fun m!1245211 () Bool)

(assert (=> bs!258261 m!1245211))

(assert (=> b!1093299 d!307887))

(declare-fun bs!258295 () Bool)

(declare-fun b!1093512 () Bool)

(assert (= bs!258295 (and b!1093512 start!93546)))

(declare-fun lambda!41942 () Int)

(assert (=> bs!258295 (not (= lambda!41942 lambda!41841))))

(declare-fun bs!258296 () Bool)

(assert (= bs!258296 (and b!1093512 b!1093298)))

(declare-fun lt!367229 () tuple2!11714)

(assert (=> bs!258296 (= (= (_1!6683 lt!367229) (_1!6683 lt!366966)) (= lambda!41942 lambda!41842))))

(assert (=> bs!258296 (not (= lambda!41942 lambda!41843))))

(assert (=> bs!258296 (not (= lambda!41942 lambda!41844))))

(declare-fun b!1093520 () Bool)

(declare-fun e!692143 () Bool)

(assert (=> b!1093520 (= e!692143 true)))

(declare-fun b!1093519 () Bool)

(declare-fun e!692142 () Bool)

(assert (=> b!1093519 (= e!692142 e!692143)))

(assert (=> b!1093512 e!692142))

(assert (= b!1093519 b!1093520))

(assert (= b!1093512 b!1093519))

(declare-fun lambda!41943 () Int)

(assert (=> b!1093512 (not (= lambda!41943 lambda!41942))))

(assert (=> bs!258296 (= (= (_1!6683 lt!367229) (_1!6683 lt!366966)) (= lambda!41943 lambda!41843))))

(assert (=> bs!258296 (not (= lambda!41943 lambda!41842))))

(assert (=> bs!258295 (not (= lambda!41943 lambda!41841))))

(assert (=> bs!258296 (not (= lambda!41943 lambda!41844))))

(declare-fun b!1093522 () Bool)

(declare-fun e!692145 () Bool)

(assert (=> b!1093522 (= e!692145 true)))

(declare-fun b!1093521 () Bool)

(declare-fun e!692144 () Bool)

(assert (=> b!1093521 (= e!692144 e!692145)))

(assert (=> b!1093512 e!692144))

(assert (= b!1093521 b!1093522))

(assert (= b!1093512 b!1093521))

(declare-fun lambda!41944 () Int)

(assert (=> b!1093512 (not (= lambda!41944 lambda!41942))))

(assert (=> bs!258296 (not (= lambda!41944 lambda!41843))))

(assert (=> bs!258296 (not (= lambda!41944 lambda!41842))))

(assert (=> b!1093512 (not (= lambda!41944 lambda!41943))))

(assert (=> bs!258295 (not (= lambda!41944 lambda!41841))))

(assert (=> bs!258296 (= (= (_1!6683 lt!367229) (_1!6683 lt!366966)) (= lambda!41944 lambda!41844))))

(declare-fun b!1093524 () Bool)

(declare-fun e!692147 () Bool)

(assert (=> b!1093524 (= e!692147 true)))

(declare-fun b!1093523 () Bool)

(declare-fun e!692146 () Bool)

(assert (=> b!1093523 (= e!692146 e!692147)))

(assert (=> b!1093512 e!692146))

(assert (= b!1093523 b!1093524))

(assert (= b!1093512 b!1093523))

(declare-fun lambda!41945 () Int)

(assert (=> b!1093512 (not (= lambda!41945 lambda!41942))))

(assert (=> bs!258296 (not (= lambda!41945 lambda!41843))))

(assert (=> b!1093512 (not (= lambda!41945 lambda!41944))))

(assert (=> bs!258296 (not (= lambda!41945 lambda!41842))))

(assert (=> b!1093512 (not (= lambda!41945 lambda!41943))))

(assert (=> bs!258295 (= lambda!41945 lambda!41841)))

(assert (=> bs!258296 (not (= lambda!41945 lambda!41844))))

(declare-fun bs!258297 () Bool)

(declare-fun d!307891 () Bool)

(assert (= bs!258297 (and d!307891 b!1093512)))

(declare-fun lambda!41946 () Int)

(assert (=> bs!258297 (not (= lambda!41946 lambda!41942))))

(declare-fun bs!258298 () Bool)

(assert (= bs!258298 (and d!307891 b!1093298)))

(assert (=> bs!258298 (not (= lambda!41946 lambda!41843))))

(assert (=> bs!258297 (not (= lambda!41946 lambda!41944))))

(assert (=> bs!258298 (not (= lambda!41946 lambda!41842))))

(declare-fun bs!258299 () Bool)

(assert (= bs!258299 (and d!307891 start!93546)))

(assert (=> bs!258299 (= lambda!41946 lambda!41841)))

(assert (=> bs!258298 (not (= lambda!41946 lambda!41844))))

(assert (=> bs!258297 (= lambda!41946 lambda!41945)))

(assert (=> bs!258297 (not (= lambda!41946 lambda!41943))))

(declare-fun b!1093507 () Bool)

(assert (=> b!1093507 true))

(declare-fun lt!367233 () BalanceConc!6436)

(declare-fun lt!367239 () Unit!15961)

(assert (=> b!1093507 (= lt!367239 (forallContained!496 (list!3766 lt!367233) lambda!41944 lt!367229))))

(declare-fun e!692137 () Unit!15961)

(declare-fun err!2166 () Unit!15961)

(assert (=> b!1093507 (= e!692137 err!2166)))

(declare-fun b!1093508 () Bool)

(declare-fun Unit!15971 () Unit!15961)

(assert (=> b!1093508 (= e!692137 Unit!15971)))

(declare-fun b!1093509 () Bool)

(assert (=> b!1093509 true))

(declare-fun lt!367230 () Unit!15961)

(assert (=> b!1093509 (= lt!367230 (forallContained!496 (list!3766 lt!366971) lambda!41942 lt!367229))))

(declare-fun e!692138 () Unit!15961)

(declare-fun err!2169 () Unit!15961)

(assert (=> b!1093509 (= e!692138 err!2169)))

(declare-fun b!1093510 () Bool)

(assert (=> b!1093510 true))

(declare-fun lt!367240 () BalanceConc!6436)

(declare-fun lt!367221 () Unit!15961)

(assert (=> b!1093510 (= lt!367221 (forallContained!496 (list!3766 lt!367240) lambda!41942 lt!367229))))

(declare-fun e!692136 () Unit!15961)

(declare-fun err!2167 () Unit!15961)

(assert (=> b!1093510 (= e!692136 err!2167)))

(declare-fun b!1093511 () Bool)

(declare-fun e!692135 () BalanceConc!6436)

(assert (=> b!1093511 (= e!692135 lt!366971)))

(declare-fun lt!367218 () BalanceConc!6436)

(declare-fun ++!2844 (BalanceConc!6436 BalanceConc!6436) BalanceConc!6436)

(assert (=> b!1093512 (= e!692135 (++!2844 (++!2844 (sortObjectsByID!0 lt!367240) lt!367218) (sortObjectsByID!0 lt!367233)))))

(assert (=> b!1093512 (= lt!367229 (apply!2059 lt!366971 (ite (>= (size!8126 lt!366971) 0) (div (size!8126 lt!366971) 2) (- (div (- (size!8126 lt!366971)) 2)))))))

(assert (=> b!1093512 (= lt!367240 (filter!259 lt!366971 lambda!41942))))

(assert (=> b!1093512 (= lt!367218 (filter!259 lt!366971 lambda!41943))))

(assert (=> b!1093512 (= lt!367233 (filter!259 lt!366971 lambda!41944))))

(declare-fun c!185418 () Bool)

(assert (=> b!1093512 (= c!185418 (contains!1780 lt!367240 lt!367229))))

(declare-fun lt!367214 () Unit!15961)

(assert (=> b!1093512 (= lt!367214 e!692136)))

(declare-fun c!185416 () Bool)

(assert (=> b!1093512 (= c!185416 (forall!2356 lt!366971 lambda!41942))))

(declare-fun lt!367243 () Unit!15961)

(assert (=> b!1093512 (= lt!367243 e!692138)))

(declare-fun lt!367222 () List!10522)

(assert (=> b!1093512 (= lt!367222 (list!3766 lt!366971))))

(declare-fun lt!367216 () Unit!15961)

(assert (=> b!1093512 (= lt!367216 (lemmaNotForallFilterShorter!37 lt!367222 lambda!41942))))

(declare-fun res!485779 () Bool)

(assert (=> b!1093512 (= res!485779 (isEmpty!6666 lt!367222))))

(declare-fun e!692140 () Bool)

(assert (=> b!1093512 (=> res!485779 e!692140)))

(assert (=> b!1093512 e!692140))

(declare-fun lt!367217 () Unit!15961)

(assert (=> b!1093512 (= lt!367217 lt!367216)))

(declare-fun c!185415 () Bool)

(assert (=> b!1093512 (= c!185415 (contains!1780 lt!367233 lt!367229))))

(declare-fun lt!367247 () Unit!15961)

(assert (=> b!1093512 (= lt!367247 e!692137)))

(declare-fun c!185417 () Bool)

(assert (=> b!1093512 (= c!185417 (forall!2356 lt!366971 lambda!41944))))

(declare-fun lt!367215 () Unit!15961)

(declare-fun e!692141 () Unit!15961)

(assert (=> b!1093512 (= lt!367215 e!692141)))

(declare-fun lt!367219 () List!10522)

(assert (=> b!1093512 (= lt!367219 (list!3766 lt!366971))))

(declare-fun lt!367244 () Unit!15961)

(assert (=> b!1093512 (= lt!367244 (lemmaNotForallFilterShorter!37 lt!367219 lambda!41944))))

(declare-fun res!485778 () Bool)

(assert (=> b!1093512 (= res!485778 (isEmpty!6666 lt!367219))))

(declare-fun e!692139 () Bool)

(assert (=> b!1093512 (=> res!485778 e!692139)))

(assert (=> b!1093512 e!692139))

(declare-fun lt!367246 () Unit!15961)

(assert (=> b!1093512 (= lt!367246 lt!367244)))

(declare-fun lt!367225 () Unit!15961)

(assert (=> b!1093512 (= lt!367225 (filterSubseq!31 (list!3766 lt!366971) lambda!41942))))

(declare-fun lt!367236 () Unit!15961)

(assert (=> b!1093512 (= lt!367236 (filterSubseq!31 (list!3766 lt!366971) lambda!41943))))

(declare-fun lt!367237 () Unit!15961)

(assert (=> b!1093512 (= lt!367237 (filterSubseq!31 (list!3766 lt!366971) lambda!41944))))

(declare-fun lt!367242 () List!10522)

(assert (=> b!1093512 (= lt!367242 (list!3766 (filter!259 lt!366971 lambda!41942)))))

(declare-fun lt!367238 () List!10522)

(assert (=> b!1093512 (= lt!367238 (list!3766 lt!366971))))

(declare-fun lt!367226 () Unit!15961)

(assert (=> b!1093512 (= lt!367226 (lemmaForallSubseq!39 lt!367242 lt!367238 lambda!41945))))

(assert (=> b!1093512 (forall!2357 lt!367242 lambda!41945)))

(declare-fun lt!367228 () Unit!15961)

(assert (=> b!1093512 (= lt!367228 lt!367226)))

(declare-fun lt!367235 () List!10522)

(assert (=> b!1093512 (= lt!367235 (list!3766 (filter!259 lt!366971 lambda!41943)))))

(declare-fun lt!367232 () List!10522)

(assert (=> b!1093512 (= lt!367232 (list!3766 lt!366971))))

(declare-fun lt!367223 () Unit!15961)

(assert (=> b!1093512 (= lt!367223 (lemmaForallSubseq!39 lt!367235 lt!367232 lambda!41945))))

(assert (=> b!1093512 (forall!2357 lt!367235 lambda!41945)))

(declare-fun lt!367234 () Unit!15961)

(assert (=> b!1093512 (= lt!367234 lt!367223)))

(declare-fun lt!367231 () List!10522)

(assert (=> b!1093512 (= lt!367231 (list!3766 (filter!259 lt!366971 lambda!41944)))))

(declare-fun lt!367245 () List!10522)

(assert (=> b!1093512 (= lt!367245 (list!3766 lt!366971))))

(declare-fun lt!367249 () Unit!15961)

(assert (=> b!1093512 (= lt!367249 (lemmaForallSubseq!39 lt!367231 lt!367245 lambda!41945))))

(assert (=> b!1093512 (forall!2357 lt!367231 lambda!41945)))

(declare-fun lt!367227 () Unit!15961)

(assert (=> b!1093512 (= lt!367227 lt!367249)))

(declare-fun lt!367248 () Unit!15961)

(assert (=> b!1093512 (= lt!367248 (lemmaConcatPreservesForall!82 (list!3766 (sortObjectsByID!0 lt!367240)) (list!3766 lt!367218) lambda!41945))))

(declare-fun lt!367241 () Unit!15961)

(declare-fun ++!2845 (List!10522 List!10522) List!10522)

(assert (=> b!1093512 (= lt!367241 (lemmaConcatPreservesForall!82 (++!2845 (list!3766 (sortObjectsByID!0 lt!367240)) (list!3766 lt!367218)) (list!3766 (sortObjectsByID!0 lt!367233)) lambda!41945))))

(declare-fun b!1093513 () Bool)

(assert (=> b!1093513 (= e!692139 (< (size!8125 (filter!258 lt!367219 lambda!41944)) (size!8125 lt!367219)))))

(declare-fun lt!367220 () BalanceConc!6436)

(assert (=> d!307891 (forall!2356 lt!367220 lambda!41946)))

(assert (=> d!307891 (= lt!367220 e!692135)))

(declare-fun c!185419 () Bool)

(assert (=> d!307891 (= c!185419 (<= (size!8126 lt!366971) 1))))

(assert (=> d!307891 (= (sortObjectsByID!0 lt!366971) lt!367220)))

(declare-fun b!1093514 () Bool)

(assert (=> b!1093514 (= e!692140 (< (size!8125 (filter!258 lt!367222 lambda!41942)) (size!8125 lt!367222)))))

(declare-fun b!1093515 () Bool)

(declare-fun Unit!15972 () Unit!15961)

(assert (=> b!1093515 (= e!692141 Unit!15972)))

(declare-fun b!1093516 () Bool)

(assert (=> b!1093516 true))

(declare-fun lt!367224 () Unit!15961)

(assert (=> b!1093516 (= lt!367224 (forallContained!496 (list!3766 lt!366971) lambda!41944 lt!367229))))

(declare-fun err!2168 () Unit!15961)

(assert (=> b!1093516 (= e!692141 err!2168)))

(declare-fun b!1093517 () Bool)

(declare-fun Unit!15973 () Unit!15961)

(assert (=> b!1093517 (= e!692138 Unit!15973)))

(declare-fun b!1093518 () Bool)

(declare-fun Unit!15974 () Unit!15961)

(assert (=> b!1093518 (= e!692136 Unit!15974)))

(assert (= (and d!307891 c!185419) b!1093511))

(assert (= (and d!307891 (not c!185419)) b!1093512))

(assert (= (and b!1093512 c!185418) b!1093510))

(assert (= (and b!1093512 (not c!185418)) b!1093518))

(assert (= (and b!1093512 c!185416) b!1093509))

(assert (= (and b!1093512 (not c!185416)) b!1093517))

(assert (= (and b!1093512 (not res!485779)) b!1093514))

(assert (= (and b!1093512 c!185415) b!1093507))

(assert (= (and b!1093512 (not c!185415)) b!1093508))

(assert (= (and b!1093512 c!185417) b!1093516))

(assert (= (and b!1093512 (not c!185417)) b!1093515))

(assert (= (and b!1093512 (not res!485778)) b!1093513))

(assert (=> b!1093509 m!1245103))

(assert (=> b!1093509 m!1245103))

(declare-fun m!1245465 () Bool)

(assert (=> b!1093509 m!1245465))

(declare-fun m!1245467 () Bool)

(assert (=> b!1093513 m!1245467))

(assert (=> b!1093513 m!1245467))

(declare-fun m!1245469 () Bool)

(assert (=> b!1093513 m!1245469))

(declare-fun m!1245471 () Bool)

(assert (=> b!1093513 m!1245471))

(assert (=> b!1093516 m!1245103))

(assert (=> b!1093516 m!1245103))

(declare-fun m!1245473 () Bool)

(assert (=> b!1093516 m!1245473))

(declare-fun m!1245475 () Bool)

(assert (=> b!1093507 m!1245475))

(assert (=> b!1093507 m!1245475))

(declare-fun m!1245477 () Bool)

(assert (=> b!1093507 m!1245477))

(declare-fun m!1245479 () Bool)

(assert (=> d!307891 m!1245479))

(assert (=> d!307891 m!1245151))

(declare-fun m!1245481 () Bool)

(assert (=> b!1093514 m!1245481))

(assert (=> b!1093514 m!1245481))

(declare-fun m!1245483 () Bool)

(assert (=> b!1093514 m!1245483))

(declare-fun m!1245485 () Bool)

(assert (=> b!1093514 m!1245485))

(declare-fun m!1245487 () Bool)

(assert (=> b!1093510 m!1245487))

(assert (=> b!1093510 m!1245487))

(declare-fun m!1245489 () Bool)

(assert (=> b!1093510 m!1245489))

(assert (=> b!1093512 m!1245103))

(declare-fun m!1245491 () Bool)

(assert (=> b!1093512 m!1245491))

(declare-fun m!1245493 () Bool)

(assert (=> b!1093512 m!1245493))

(declare-fun m!1245495 () Bool)

(assert (=> b!1093512 m!1245495))

(declare-fun m!1245497 () Bool)

(assert (=> b!1093512 m!1245497))

(declare-fun m!1245499 () Bool)

(assert (=> b!1093512 m!1245499))

(declare-fun m!1245501 () Bool)

(assert (=> b!1093512 m!1245501))

(declare-fun m!1245503 () Bool)

(assert (=> b!1093512 m!1245503))

(declare-fun m!1245505 () Bool)

(assert (=> b!1093512 m!1245505))

(declare-fun m!1245507 () Bool)

(assert (=> b!1093512 m!1245507))

(declare-fun m!1245509 () Bool)

(assert (=> b!1093512 m!1245509))

(assert (=> b!1093512 m!1245505))

(declare-fun m!1245511 () Bool)

(assert (=> b!1093512 m!1245511))

(declare-fun m!1245513 () Bool)

(assert (=> b!1093512 m!1245513))

(assert (=> b!1093512 m!1245499))

(declare-fun m!1245515 () Bool)

(assert (=> b!1093512 m!1245515))

(assert (=> b!1093512 m!1245513))

(declare-fun m!1245517 () Bool)

(assert (=> b!1093512 m!1245517))

(declare-fun m!1245519 () Bool)

(assert (=> b!1093512 m!1245519))

(assert (=> b!1093512 m!1245491))

(declare-fun m!1245521 () Bool)

(assert (=> b!1093512 m!1245521))

(assert (=> b!1093512 m!1245517))

(assert (=> b!1093512 m!1245501))

(declare-fun m!1245523 () Bool)

(assert (=> b!1093512 m!1245523))

(declare-fun m!1245525 () Bool)

(assert (=> b!1093512 m!1245525))

(declare-fun m!1245527 () Bool)

(assert (=> b!1093512 m!1245527))

(assert (=> b!1093512 m!1245499))

(assert (=> b!1093512 m!1245501))

(declare-fun m!1245529 () Bool)

(assert (=> b!1093512 m!1245529))

(assert (=> b!1093512 m!1245103))

(declare-fun m!1245531 () Bool)

(assert (=> b!1093512 m!1245531))

(assert (=> b!1093512 m!1245491))

(declare-fun m!1245533 () Bool)

(assert (=> b!1093512 m!1245533))

(assert (=> b!1093512 m!1245513))

(assert (=> b!1093512 m!1245509))

(assert (=> b!1093512 m!1245103))

(declare-fun m!1245535 () Bool)

(assert (=> b!1093512 m!1245535))

(declare-fun m!1245537 () Bool)

(assert (=> b!1093512 m!1245537))

(declare-fun m!1245539 () Bool)

(assert (=> b!1093512 m!1245539))

(assert (=> b!1093512 m!1245151))

(assert (=> b!1093512 m!1245515))

(declare-fun m!1245541 () Bool)

(assert (=> b!1093512 m!1245541))

(assert (=> b!1093512 m!1245517))

(declare-fun m!1245543 () Bool)

(assert (=> b!1093512 m!1245543))

(assert (=> b!1093512 m!1245505))

(declare-fun m!1245545 () Bool)

(assert (=> b!1093512 m!1245545))

(assert (=> b!1093512 m!1245103))

(declare-fun m!1245547 () Bool)

(assert (=> b!1093512 m!1245547))

(declare-fun m!1245549 () Bool)

(assert (=> b!1093512 m!1245549))

(declare-fun m!1245551 () Bool)

(assert (=> b!1093512 m!1245551))

(assert (=> b!1093512 m!1245515))

(assert (=> b!1093512 m!1245503))

(assert (=> b!1093512 m!1245507))

(declare-fun m!1245553 () Bool)

(assert (=> b!1093512 m!1245553))

(declare-fun m!1245555 () Bool)

(assert (=> b!1093512 m!1245555))

(declare-fun m!1245557 () Bool)

(assert (=> b!1093512 m!1245557))

(assert (=> b!1093299 d!307891))

(declare-fun d!307981 () Bool)

(assert (=> d!307981 (forall!2357 lt!366962 lambda!41841)))

(declare-fun lt!367252 () Unit!15961)

(declare-fun choose!7026 (List!10522 List!10522 Int) Unit!15961)

(assert (=> d!307981 (= lt!367252 (choose!7026 lt!366962 lt!366957 lambda!41841))))

(assert (=> d!307981 (forall!2357 lt!366957 lambda!41841)))

(assert (=> d!307981 (= (lemmaForallSubseq!39 lt!366962 lt!366957 lambda!41841) lt!367252)))

(declare-fun bs!258300 () Bool)

(assert (= bs!258300 d!307981))

(assert (=> bs!258300 m!1245129))

(declare-fun m!1245559 () Bool)

(assert (=> bs!258300 m!1245559))

(declare-fun m!1245561 () Bool)

(assert (=> bs!258300 m!1245561))

(assert (=> b!1093299 d!307981))

(declare-fun d!307983 () Bool)

(declare-fun lt!367255 () Bool)

(assert (=> d!307983 (= lt!367255 (forall!2357 (list!3766 lt!366971) lambda!41841))))

(declare-fun forall!2359 (Conc!3211 Int) Bool)

(assert (=> d!307983 (= lt!367255 (forall!2359 (c!185371 lt!366971) lambda!41841))))

(assert (=> d!307983 (= (forall!2356 lt!366971 lambda!41841) lt!367255)))

(declare-fun bs!258301 () Bool)

(assert (= bs!258301 d!307983))

(assert (=> bs!258301 m!1245103))

(assert (=> bs!258301 m!1245103))

(declare-fun m!1245563 () Bool)

(assert (=> bs!258301 m!1245563))

(declare-fun m!1245565 () Bool)

(assert (=> bs!258301 m!1245565))

(assert (=> b!1093299 d!307983))

(declare-fun d!307985 () Bool)

(declare-fun res!485784 () Bool)

(declare-fun e!692152 () Bool)

(assert (=> d!307985 (=> res!485784 e!692152)))

(get-info :version)

(assert (=> d!307985 (= res!485784 ((_ is Nil!10506) lt!366967))))

(assert (=> d!307985 (= (forall!2357 lt!366967 lambda!41841) e!692152)))

(declare-fun b!1093529 () Bool)

(declare-fun e!692153 () Bool)

(assert (=> b!1093529 (= e!692152 e!692153)))

(declare-fun res!485785 () Bool)

(assert (=> b!1093529 (=> (not res!485785) (not e!692153))))

(declare-fun dynLambda!4585 (Int tuple2!11714) Bool)

(assert (=> b!1093529 (= res!485785 (dynLambda!4585 lambda!41841 (h!15907 lt!366967)))))

(declare-fun b!1093530 () Bool)

(assert (=> b!1093530 (= e!692153 (forall!2357 (t!102512 lt!366967) lambda!41841))))

(assert (= (and d!307985 (not res!485784)) b!1093529))

(assert (= (and b!1093529 res!485785) b!1093530))

(declare-fun b_lambda!30991 () Bool)

(assert (=> (not b_lambda!30991) (not b!1093529)))

(declare-fun m!1245567 () Bool)

(assert (=> b!1093529 m!1245567))

(declare-fun m!1245569 () Bool)

(assert (=> b!1093530 m!1245569))

(assert (=> b!1093299 d!307985))

(declare-fun d!307987 () Bool)

(assert (=> d!307987 (subseq!141 (filter!258 lt!366957 lambda!41843) lt!366957)))

(declare-fun lt!367256 () Unit!15961)

(assert (=> d!307987 (= lt!367256 (choose!7023 lt!366957 lambda!41843))))

(assert (=> d!307987 (= (filterSubseq!31 lt!366957 lambda!41843) lt!367256)))

(declare-fun bs!258302 () Bool)

(assert (= bs!258302 d!307987))

(declare-fun m!1245571 () Bool)

(assert (=> bs!258302 m!1245571))

(assert (=> bs!258302 m!1245571))

(declare-fun m!1245573 () Bool)

(assert (=> bs!258302 m!1245573))

(declare-fun m!1245575 () Bool)

(assert (=> bs!258302 m!1245575))

(assert (=> b!1093299 d!307987))

(declare-fun d!307989 () Bool)

(declare-fun e!692154 () Bool)

(assert (=> d!307989 e!692154))

(declare-fun res!485786 () Bool)

(assert (=> d!307989 (=> (not res!485786) (not e!692154))))

(assert (=> d!307989 (= res!485786 (isBalanced!886 (filter!261 (c!185371 objs!8) lambda!41842)))))

(declare-fun lt!367257 () BalanceConc!6436)

(assert (=> d!307989 (= lt!367257 (BalanceConc!6437 (filter!261 (c!185371 objs!8) lambda!41842)))))

(assert (=> d!307989 (= (filter!259 objs!8 lambda!41842) lt!367257)))

(declare-fun b!1093531 () Bool)

(assert (=> b!1093531 (= e!692154 (= (list!3766 lt!367257) (filter!258 (list!3766 objs!8) lambda!41842)))))

(assert (= (and d!307989 res!485786) b!1093531))

(declare-fun m!1245577 () Bool)

(assert (=> d!307989 m!1245577))

(assert (=> d!307989 m!1245577))

(declare-fun m!1245579 () Bool)

(assert (=> d!307989 m!1245579))

(declare-fun m!1245581 () Bool)

(assert (=> b!1093531 m!1245581))

(assert (=> b!1093531 m!1245107))

(assert (=> b!1093531 m!1245107))

(declare-fun m!1245583 () Bool)

(assert (=> b!1093531 m!1245583))

(assert (=> b!1093299 d!307989))

(declare-fun d!307991 () Bool)

(declare-fun res!485787 () Bool)

(declare-fun e!692155 () Bool)

(assert (=> d!307991 (=> res!485787 e!692155)))

(assert (=> d!307991 (= res!485787 ((_ is Nil!10506) lt!366947))))

(assert (=> d!307991 (= (forall!2357 lt!366947 lambda!41841) e!692155)))

(declare-fun b!1093532 () Bool)

(declare-fun e!692156 () Bool)

(assert (=> b!1093532 (= e!692155 e!692156)))

(declare-fun res!485788 () Bool)

(assert (=> b!1093532 (=> (not res!485788) (not e!692156))))

(assert (=> b!1093532 (= res!485788 (dynLambda!4585 lambda!41841 (h!15907 lt!366947)))))

(declare-fun b!1093533 () Bool)

(assert (=> b!1093533 (= e!692156 (forall!2357 (t!102512 lt!366947) lambda!41841))))

(assert (= (and d!307991 (not res!485787)) b!1093532))

(assert (= (and b!1093532 res!485788) b!1093533))

(declare-fun b_lambda!30993 () Bool)

(assert (=> (not b_lambda!30993) (not b!1093532)))

(declare-fun m!1245585 () Bool)

(assert (=> b!1093532 m!1245585))

(declare-fun m!1245587 () Bool)

(assert (=> b!1093533 m!1245587))

(assert (=> b!1093299 d!307991))

(declare-fun d!307993 () Bool)

(assert (=> d!307993 (= (list!3766 lt!366954) (list!3768 (c!185371 lt!366954)))))

(declare-fun bs!258303 () Bool)

(assert (= bs!258303 d!307993))

(declare-fun m!1245589 () Bool)

(assert (=> bs!258303 m!1245589))

(assert (=> b!1093299 d!307993))

(declare-fun d!307995 () Bool)

(declare-fun e!692157 () Bool)

(assert (=> d!307995 e!692157))

(declare-fun res!485789 () Bool)

(assert (=> d!307995 (=> (not res!485789) (not e!692157))))

(assert (=> d!307995 (= res!485789 (isBalanced!886 (filter!261 (c!185371 objs!8) lambda!41844)))))

(declare-fun lt!367258 () BalanceConc!6436)

(assert (=> d!307995 (= lt!367258 (BalanceConc!6437 (filter!261 (c!185371 objs!8) lambda!41844)))))

(assert (=> d!307995 (= (filter!259 objs!8 lambda!41844) lt!367258)))

(declare-fun b!1093534 () Bool)

(assert (=> b!1093534 (= e!692157 (= (list!3766 lt!367258) (filter!258 (list!3766 objs!8) lambda!41844)))))

(assert (= (and d!307995 res!485789) b!1093534))

(declare-fun m!1245591 () Bool)

(assert (=> d!307995 m!1245591))

(assert (=> d!307995 m!1245591))

(declare-fun m!1245593 () Bool)

(assert (=> d!307995 m!1245593))

(declare-fun m!1245595 () Bool)

(assert (=> b!1093534 m!1245595))

(assert (=> b!1093534 m!1245107))

(assert (=> b!1093534 m!1245107))

(declare-fun m!1245597 () Bool)

(assert (=> b!1093534 m!1245597))

(assert (=> b!1093299 d!307995))

(declare-fun d!307997 () Bool)

(assert (=> d!307997 (subseq!141 (filter!258 lt!366957 lambda!41844) lt!366957)))

(declare-fun lt!367259 () Unit!15961)

(assert (=> d!307997 (= lt!367259 (choose!7023 lt!366957 lambda!41844))))

(assert (=> d!307997 (= (filterSubseq!31 lt!366957 lambda!41844) lt!367259)))

(declare-fun bs!258304 () Bool)

(assert (= bs!258304 d!307997))

(assert (=> bs!258304 m!1245063))

(assert (=> bs!258304 m!1245063))

(declare-fun m!1245599 () Bool)

(assert (=> bs!258304 m!1245599))

(declare-fun m!1245601 () Bool)

(assert (=> bs!258304 m!1245601))

(assert (=> b!1093299 d!307997))

(declare-fun d!307999 () Bool)

(assert (=> d!307999 (forall!2357 lt!366967 lambda!41841)))

(declare-fun lt!367260 () Unit!15961)

(assert (=> d!307999 (= lt!367260 (choose!7026 lt!366967 lt!366957 lambda!41841))))

(assert (=> d!307999 (forall!2357 lt!366957 lambda!41841)))

(assert (=> d!307999 (= (lemmaForallSubseq!39 lt!366967 lt!366957 lambda!41841) lt!367260)))

(declare-fun bs!258305 () Bool)

(assert (= bs!258305 d!307999))

(assert (=> bs!258305 m!1245141))

(declare-fun m!1245603 () Bool)

(assert (=> bs!258305 m!1245603))

(assert (=> bs!258305 m!1245561))

(assert (=> b!1093299 d!307999))

(declare-fun d!308001 () Bool)

(declare-fun res!485790 () Bool)

(declare-fun e!692158 () Bool)

(assert (=> d!308001 (=> res!485790 e!692158)))

(assert (=> d!308001 (= res!485790 ((_ is Nil!10506) lt!366962))))

(assert (=> d!308001 (= (forall!2357 lt!366962 lambda!41841) e!692158)))

(declare-fun b!1093535 () Bool)

(declare-fun e!692159 () Bool)

(assert (=> b!1093535 (= e!692158 e!692159)))

(declare-fun res!485791 () Bool)

(assert (=> b!1093535 (=> (not res!485791) (not e!692159))))

(assert (=> b!1093535 (= res!485791 (dynLambda!4585 lambda!41841 (h!15907 lt!366962)))))

(declare-fun b!1093536 () Bool)

(assert (=> b!1093536 (= e!692159 (forall!2357 (t!102512 lt!366962) lambda!41841))))

(assert (= (and d!308001 (not res!485790)) b!1093535))

(assert (= (and b!1093535 res!485791) b!1093536))

(declare-fun b_lambda!30995 () Bool)

(assert (=> (not b_lambda!30995) (not b!1093535)))

(declare-fun m!1245605 () Bool)

(assert (=> b!1093535 m!1245605))

(declare-fun m!1245607 () Bool)

(assert (=> b!1093536 m!1245607))

(assert (=> b!1093299 d!308001))

(declare-fun d!308003 () Bool)

(assert (=> d!308003 (forall!2357 (++!2845 (list!3766 (sortObjectsByID!0 lt!366971)) (list!3766 lt!366954)) lambda!41841)))

(declare-fun lt!367263 () Unit!15961)

(declare-fun choose!7027 (List!10522 List!10522 Int) Unit!15961)

(assert (=> d!308003 (= lt!367263 (choose!7027 (list!3766 (sortObjectsByID!0 lt!366971)) (list!3766 lt!366954) lambda!41841))))

(assert (=> d!308003 (forall!2357 (list!3766 (sortObjectsByID!0 lt!366971)) lambda!41841)))

(assert (=> d!308003 (= (lemmaConcatPreservesForall!82 (list!3766 (sortObjectsByID!0 lt!366971)) (list!3766 lt!366954) lambda!41841) lt!367263)))

(declare-fun bs!258306 () Bool)

(assert (= bs!258306 d!308003))

(assert (=> bs!258306 m!1245117))

(assert (=> bs!258306 m!1245111))

(declare-fun m!1245609 () Bool)

(assert (=> bs!258306 m!1245609))

(assert (=> bs!258306 m!1245609))

(declare-fun m!1245611 () Bool)

(assert (=> bs!258306 m!1245611))

(assert (=> bs!258306 m!1245117))

(assert (=> bs!258306 m!1245111))

(declare-fun m!1245613 () Bool)

(assert (=> bs!258306 m!1245613))

(assert (=> bs!258306 m!1245117))

(declare-fun m!1245615 () Bool)

(assert (=> bs!258306 m!1245615))

(assert (=> b!1093299 d!308003))

(declare-fun d!308005 () Bool)

(assert (=> d!308005 (forall!2357 lt!366947 lambda!41841)))

(declare-fun lt!367264 () Unit!15961)

(assert (=> d!308005 (= lt!367264 (choose!7026 lt!366947 lt!366957 lambda!41841))))

(assert (=> d!308005 (forall!2357 lt!366957 lambda!41841)))

(assert (=> d!308005 (= (lemmaForallSubseq!39 lt!366947 lt!366957 lambda!41841) lt!367264)))

(declare-fun bs!258307 () Bool)

(assert (= bs!258307 d!308005))

(assert (=> bs!258307 m!1245121))

(declare-fun m!1245617 () Bool)

(assert (=> bs!258307 m!1245617))

(assert (=> bs!258307 m!1245561))

(assert (=> b!1093299 d!308005))

(declare-fun d!308007 () Bool)

(assert (=> d!308007 (= (list!3766 (sortObjectsByID!0 lt!366971)) (list!3768 (c!185371 (sortObjectsByID!0 lt!366971))))))

(declare-fun bs!258308 () Bool)

(assert (= bs!258308 d!308007))

(declare-fun m!1245619 () Bool)

(assert (=> bs!258308 m!1245619))

(assert (=> b!1093299 d!308007))

(declare-fun d!308009 () Bool)

(declare-fun e!692162 () Bool)

(assert (=> d!308009 e!692162))

(declare-fun res!485794 () Bool)

(assert (=> d!308009 (=> res!485794 e!692162)))

(assert (=> d!308009 (= res!485794 (isEmpty!6666 lt!366957))))

(declare-fun lt!367267 () Unit!15961)

(declare-fun choose!7028 (List!10522 Int) Unit!15961)

(assert (=> d!308009 (= lt!367267 (choose!7028 lt!366957 lambda!41842))))

(assert (=> d!308009 (not (forall!2357 lt!366957 lambda!41842))))

(assert (=> d!308009 (= (lemmaNotForallFilterShorter!37 lt!366957 lambda!41842) lt!367267)))

(declare-fun b!1093539 () Bool)

(assert (=> b!1093539 (= e!692162 (< (size!8125 (filter!258 lt!366957 lambda!41842)) (size!8125 lt!366957)))))

(assert (= (and d!308009 (not res!485794)) b!1093539))

(assert (=> d!308009 m!1245147))

(declare-fun m!1245621 () Bool)

(assert (=> d!308009 m!1245621))

(declare-fun m!1245623 () Bool)

(assert (=> d!308009 m!1245623))

(assert (=> b!1093539 m!1245095))

(assert (=> b!1093539 m!1245095))

(assert (=> b!1093539 m!1245097))

(assert (=> b!1093539 m!1245067))

(assert (=> b!1093301 d!308009))

(declare-fun d!308011 () Bool)

(assert (=> d!308011 (= (list!3766 objs!8) (list!3768 (c!185371 objs!8)))))

(declare-fun bs!258309 () Bool)

(assert (= bs!258309 d!308011))

(declare-fun m!1245625 () Bool)

(assert (=> bs!258309 m!1245625))

(assert (=> b!1093301 d!308011))

(declare-fun d!308013 () Bool)

(declare-fun lt!367268 () Bool)

(assert (=> d!308013 (= lt!367268 (forall!2357 (list!3766 objs!8) lambda!41842))))

(assert (=> d!308013 (= lt!367268 (forall!2359 (c!185371 objs!8) lambda!41842))))

(assert (=> d!308013 (= (forall!2356 objs!8 lambda!41842) lt!367268)))

(declare-fun bs!258310 () Bool)

(assert (= bs!258310 d!308013))

(assert (=> bs!258310 m!1245107))

(assert (=> bs!258310 m!1245107))

(declare-fun m!1245627 () Bool)

(assert (=> bs!258310 m!1245627))

(declare-fun m!1245629 () Bool)

(assert (=> bs!258310 m!1245629))

(assert (=> b!1093301 d!308013))

(declare-fun d!308015 () Bool)

(assert (=> d!308015 (= (isEmpty!6666 lt!366957) ((_ is Nil!10506) lt!366957))))

(assert (=> b!1093301 d!308015))

(declare-fun d!308017 () Bool)

(declare-fun lt!367271 () Int)

(assert (=> d!308017 (= lt!367271 (size!8125 (list!3766 lt!366971)))))

(declare-fun size!8128 (Conc!3211) Int)

(assert (=> d!308017 (= lt!367271 (size!8128 (c!185371 lt!366971)))))

(assert (=> d!308017 (= (size!8126 lt!366971) lt!367271)))

(declare-fun bs!258311 () Bool)

(assert (= bs!258311 d!308017))

(assert (=> bs!258311 m!1245103))

(assert (=> bs!258311 m!1245103))

(declare-fun m!1245631 () Bool)

(assert (=> bs!258311 m!1245631))

(declare-fun m!1245633 () Bool)

(assert (=> bs!258311 m!1245633))

(assert (=> b!1093301 d!308017))

(declare-fun d!308019 () Bool)

(declare-fun lt!367272 () Bool)

(assert (=> d!308019 (= lt!367272 (forall!2357 (list!3766 objs!8) lambda!41841))))

(assert (=> d!308019 (= lt!367272 (forall!2359 (c!185371 objs!8) lambda!41841))))

(assert (=> d!308019 (= (forall!2356 objs!8 lambda!41841) lt!367272)))

(declare-fun bs!258312 () Bool)

(assert (= bs!258312 d!308019))

(assert (=> bs!258312 m!1245107))

(assert (=> bs!258312 m!1245107))

(declare-fun m!1245635 () Bool)

(assert (=> bs!258312 m!1245635))

(declare-fun m!1245637 () Bool)

(assert (=> bs!258312 m!1245637))

(assert (=> start!93546 d!308019))

(declare-fun d!308021 () Bool)

(assert (=> d!308021 (= (inv!13449 objs!8) (isBalanced!886 (c!185371 objs!8)))))

(declare-fun bs!258313 () Bool)

(assert (= bs!258313 d!308021))

(declare-fun m!1245639 () Bool)

(assert (=> bs!258313 m!1245639))

(assert (=> start!93546 d!308021))

(declare-fun d!308023 () Bool)

(assert (=> d!308023 (dynLambda!4585 lambda!41844 lt!366966)))

(declare-fun lt!367275 () Unit!15961)

(declare-fun choose!7029 (List!10522 Int tuple2!11714) Unit!15961)

(assert (=> d!308023 (= lt!367275 (choose!7029 lt!366957 lambda!41844 lt!366966))))

(declare-fun e!692165 () Bool)

(assert (=> d!308023 e!692165))

(declare-fun res!485797 () Bool)

(assert (=> d!308023 (=> (not res!485797) (not e!692165))))

(assert (=> d!308023 (= res!485797 (forall!2357 lt!366957 lambda!41844))))

(assert (=> d!308023 (= (forallContained!496 lt!366957 lambda!41844 lt!366966) lt!367275)))

(declare-fun b!1093542 () Bool)

(declare-fun contains!1783 (List!10522 tuple2!11714) Bool)

(assert (=> b!1093542 (= e!692165 (contains!1783 lt!366957 lt!366966))))

(assert (= (and d!308023 res!485797) b!1093542))

(declare-fun b_lambda!30997 () Bool)

(assert (=> (not b_lambda!30997) (not d!308023)))

(declare-fun m!1245641 () Bool)

(assert (=> d!308023 m!1245641))

(declare-fun m!1245643 () Bool)

(assert (=> d!308023 m!1245643))

(declare-fun m!1245645 () Bool)

(assert (=> d!308023 m!1245645))

(declare-fun m!1245647 () Bool)

(assert (=> b!1093542 m!1245647))

(assert (=> b!1093300 d!308023))

(declare-fun d!308025 () Bool)

(assert (=> d!308025 (dynLambda!4585 lambda!41842 lt!366966)))

(declare-fun lt!367276 () Unit!15961)

(assert (=> d!308025 (= lt!367276 (choose!7029 (list!3766 objs!8) lambda!41842 lt!366966))))

(declare-fun e!692166 () Bool)

(assert (=> d!308025 e!692166))

(declare-fun res!485798 () Bool)

(assert (=> d!308025 (=> (not res!485798) (not e!692166))))

(assert (=> d!308025 (= res!485798 (forall!2357 (list!3766 objs!8) lambda!41842))))

(assert (=> d!308025 (= (forallContained!496 (list!3766 objs!8) lambda!41842 lt!366966) lt!367276)))

(declare-fun b!1093543 () Bool)

(assert (=> b!1093543 (= e!692166 (contains!1783 (list!3766 objs!8) lt!366966))))

(assert (= (and d!308025 res!485798) b!1093543))

(declare-fun b_lambda!30999 () Bool)

(assert (=> (not b_lambda!30999) (not d!308025)))

(declare-fun m!1245649 () Bool)

(assert (=> d!308025 m!1245649))

(assert (=> d!308025 m!1245107))

(declare-fun m!1245651 () Bool)

(assert (=> d!308025 m!1245651))

(assert (=> d!308025 m!1245107))

(assert (=> d!308025 m!1245627))

(assert (=> b!1093543 m!1245107))

(declare-fun m!1245653 () Bool)

(assert (=> b!1093543 m!1245653))

(assert (=> b!1093302 d!308025))

(assert (=> b!1093302 d!308011))

(declare-fun d!308027 () Bool)

(assert (=> d!308027 (dynLambda!4585 lambda!41842 lt!366966)))

(declare-fun lt!367277 () Unit!15961)

(assert (=> d!308027 (= lt!367277 (choose!7029 (list!3766 lt!366971) lambda!41842 lt!366966))))

(declare-fun e!692167 () Bool)

(assert (=> d!308027 e!692167))

(declare-fun res!485799 () Bool)

(assert (=> d!308027 (=> (not res!485799) (not e!692167))))

(assert (=> d!308027 (= res!485799 (forall!2357 (list!3766 lt!366971) lambda!41842))))

(assert (=> d!308027 (= (forallContained!496 (list!3766 lt!366971) lambda!41842 lt!366966) lt!367277)))

(declare-fun b!1093544 () Bool)

(assert (=> b!1093544 (= e!692167 (contains!1783 (list!3766 lt!366971) lt!366966))))

(assert (= (and d!308027 res!485799) b!1093544))

(declare-fun b_lambda!31001 () Bool)

(assert (=> (not b_lambda!31001) (not d!308027)))

(assert (=> d!308027 m!1245649))

(assert (=> d!308027 m!1245103))

(declare-fun m!1245655 () Bool)

(assert (=> d!308027 m!1245655))

(assert (=> d!308027 m!1245103))

(declare-fun m!1245657 () Bool)

(assert (=> d!308027 m!1245657))

(assert (=> b!1093544 m!1245103))

(declare-fun m!1245659 () Bool)

(assert (=> b!1093544 m!1245659))

(assert (=> b!1093293 d!308027))

(declare-fun d!308029 () Bool)

(assert (=> d!308029 (= (list!3766 lt!366971) (list!3768 (c!185371 lt!366971)))))

(declare-fun bs!258314 () Bool)

(assert (= bs!258314 d!308029))

(declare-fun m!1245661 () Bool)

(assert (=> bs!258314 m!1245661))

(assert (=> b!1093293 d!308029))

(declare-fun d!308031 () Bool)

(declare-fun lt!367280 () Bool)

(assert (=> d!308031 (= lt!367280 (contains!1783 (list!3766 lt!366945) lt!366966))))

(declare-fun contains!1784 (Conc!3211 tuple2!11714) Bool)

(assert (=> d!308031 (= lt!367280 (contains!1784 (c!185371 lt!366945) lt!366966))))

(assert (=> d!308031 (= (contains!1780 lt!366945 lt!366966) lt!367280)))

(declare-fun bs!258315 () Bool)

(assert (= bs!258315 d!308031))

(assert (=> bs!258315 m!1245085))

(assert (=> bs!258315 m!1245085))

(declare-fun m!1245663 () Bool)

(assert (=> bs!258315 m!1245663))

(declare-fun m!1245665 () Bool)

(assert (=> bs!258315 m!1245665))

(assert (=> b!1093303 d!308031))

(declare-fun d!308033 () Bool)

(declare-fun lt!367283 () Int)

(assert (=> d!308033 (>= lt!367283 0)))

(declare-fun e!692170 () Int)

(assert (=> d!308033 (= lt!367283 e!692170)))

(declare-fun c!185422 () Bool)

(assert (=> d!308033 (= c!185422 ((_ is Nil!10506) (filter!258 lt!366957 lambda!41844)))))

(assert (=> d!308033 (= (size!8125 (filter!258 lt!366957 lambda!41844)) lt!367283)))

(declare-fun b!1093549 () Bool)

(assert (=> b!1093549 (= e!692170 0)))

(declare-fun b!1093550 () Bool)

(assert (=> b!1093550 (= e!692170 (+ 1 (size!8125 (t!102512 (filter!258 lt!366957 lambda!41844)))))))

(assert (= (and d!308033 c!185422) b!1093549))

(assert (= (and d!308033 (not c!185422)) b!1093550))

(declare-fun m!1245667 () Bool)

(assert (=> b!1093550 m!1245667))

(assert (=> b!1093292 d!308033))

(declare-fun b!1093563 () Bool)

(declare-fun e!692177 () List!10522)

(declare-fun e!692178 () List!10522)

(assert (=> b!1093563 (= e!692177 e!692178)))

(declare-fun c!185428 () Bool)

(assert (=> b!1093563 (= c!185428 (dynLambda!4585 lambda!41844 (h!15907 lt!366957)))))

(declare-fun b!1093565 () Bool)

(declare-fun call!80295 () List!10522)

(assert (=> b!1093565 (= e!692178 call!80295)))

(declare-fun b!1093566 () Bool)

(declare-fun res!485804 () Bool)

(declare-fun e!692179 () Bool)

(assert (=> b!1093566 (=> (not res!485804) (not e!692179))))

(declare-fun lt!367286 () List!10522)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1514 (List!10522) (InoxSet tuple2!11714))

(assert (=> b!1093566 (= res!485804 (= ((_ map implies) (content!1514 lt!367286) (content!1514 lt!366957)) ((as const (InoxSet tuple2!11714)) true)))))

(declare-fun b!1093567 () Bool)

(assert (=> b!1093567 (= e!692178 (Cons!10506 (h!15907 lt!366957) call!80295))))

(declare-fun b!1093568 () Bool)

(assert (=> b!1093568 (= e!692177 Nil!10506)))

(declare-fun bm!80290 () Bool)

(assert (=> bm!80290 (= call!80295 (filter!258 (t!102512 lt!366957) lambda!41844))))

(declare-fun d!308035 () Bool)

(assert (=> d!308035 e!692179))

(declare-fun res!485805 () Bool)

(assert (=> d!308035 (=> (not res!485805) (not e!692179))))

(assert (=> d!308035 (= res!485805 (<= (size!8125 lt!367286) (size!8125 lt!366957)))))

(assert (=> d!308035 (= lt!367286 e!692177)))

(declare-fun c!185427 () Bool)

(assert (=> d!308035 (= c!185427 ((_ is Nil!10506) lt!366957))))

(assert (=> d!308035 (= (filter!258 lt!366957 lambda!41844) lt!367286)))

(declare-fun b!1093564 () Bool)

(assert (=> b!1093564 (= e!692179 (forall!2357 lt!367286 lambda!41844))))

(assert (= (and d!308035 c!185427) b!1093568))

(assert (= (and d!308035 (not c!185427)) b!1093563))

(assert (= (and b!1093563 c!185428) b!1093567))

(assert (= (and b!1093563 (not c!185428)) b!1093565))

(assert (= (or b!1093567 b!1093565) bm!80290))

(assert (= (and d!308035 res!485805) b!1093566))

(assert (= (and b!1093566 res!485804) b!1093564))

(declare-fun b_lambda!31003 () Bool)

(assert (=> (not b_lambda!31003) (not b!1093563)))

(declare-fun m!1245669 () Bool)

(assert (=> b!1093563 m!1245669))

(declare-fun m!1245671 () Bool)

(assert (=> b!1093566 m!1245671))

(declare-fun m!1245673 () Bool)

(assert (=> b!1093566 m!1245673))

(declare-fun m!1245675 () Bool)

(assert (=> bm!80290 m!1245675))

(declare-fun m!1245677 () Bool)

(assert (=> d!308035 m!1245677))

(assert (=> d!308035 m!1245067))

(declare-fun m!1245679 () Bool)

(assert (=> b!1093564 m!1245679))

(assert (=> b!1093292 d!308035))

(declare-fun d!308037 () Bool)

(declare-fun lt!367287 () Int)

(assert (=> d!308037 (>= lt!367287 0)))

(declare-fun e!692180 () Int)

(assert (=> d!308037 (= lt!367287 e!692180)))

(declare-fun c!185429 () Bool)

(assert (=> d!308037 (= c!185429 ((_ is Nil!10506) lt!366957))))

(assert (=> d!308037 (= (size!8125 lt!366957) lt!367287)))

(declare-fun b!1093569 () Bool)

(assert (=> b!1093569 (= e!692180 0)))

(declare-fun b!1093570 () Bool)

(assert (=> b!1093570 (= e!692180 (+ 1 (size!8125 (t!102512 lt!366957))))))

(assert (= (and d!308037 c!185429) b!1093569))

(assert (= (and d!308037 (not c!185429)) b!1093570))

(declare-fun m!1245681 () Bool)

(assert (=> b!1093570 m!1245681))

(assert (=> b!1093292 d!308037))

(declare-fun d!308039 () Bool)

(declare-fun lt!367288 () Int)

(assert (=> d!308039 (>= lt!367288 0)))

(declare-fun e!692181 () Int)

(assert (=> d!308039 (= lt!367288 e!692181)))

(declare-fun c!185430 () Bool)

(assert (=> d!308039 (= c!185430 ((_ is Nil!10506) (filter!258 lt!366957 lambda!41842)))))

(assert (=> d!308039 (= (size!8125 (filter!258 lt!366957 lambda!41842)) lt!367288)))

(declare-fun b!1093571 () Bool)

(assert (=> b!1093571 (= e!692181 0)))

(declare-fun b!1093572 () Bool)

(assert (=> b!1093572 (= e!692181 (+ 1 (size!8125 (t!102512 (filter!258 lt!366957 lambda!41842)))))))

(assert (= (and d!308039 c!185430) b!1093571))

(assert (= (and d!308039 (not c!185430)) b!1093572))

(declare-fun m!1245683 () Bool)

(assert (=> b!1093572 m!1245683))

(assert (=> b!1093294 d!308039))

(declare-fun b!1093573 () Bool)

(declare-fun e!692182 () List!10522)

(declare-fun e!692183 () List!10522)

(assert (=> b!1093573 (= e!692182 e!692183)))

(declare-fun c!185432 () Bool)

(assert (=> b!1093573 (= c!185432 (dynLambda!4585 lambda!41842 (h!15907 lt!366957)))))

(declare-fun b!1093575 () Bool)

(declare-fun call!80296 () List!10522)

(assert (=> b!1093575 (= e!692183 call!80296)))

(declare-fun b!1093576 () Bool)

(declare-fun res!485806 () Bool)

(declare-fun e!692184 () Bool)

(assert (=> b!1093576 (=> (not res!485806) (not e!692184))))

(declare-fun lt!367289 () List!10522)

(assert (=> b!1093576 (= res!485806 (= ((_ map implies) (content!1514 lt!367289) (content!1514 lt!366957)) ((as const (InoxSet tuple2!11714)) true)))))

(declare-fun b!1093577 () Bool)

(assert (=> b!1093577 (= e!692183 (Cons!10506 (h!15907 lt!366957) call!80296))))

(declare-fun b!1093578 () Bool)

(assert (=> b!1093578 (= e!692182 Nil!10506)))

(declare-fun bm!80291 () Bool)

(assert (=> bm!80291 (= call!80296 (filter!258 (t!102512 lt!366957) lambda!41842))))

(declare-fun d!308041 () Bool)

(assert (=> d!308041 e!692184))

(declare-fun res!485807 () Bool)

(assert (=> d!308041 (=> (not res!485807) (not e!692184))))

(assert (=> d!308041 (= res!485807 (<= (size!8125 lt!367289) (size!8125 lt!366957)))))

(assert (=> d!308041 (= lt!367289 e!692182)))

(declare-fun c!185431 () Bool)

(assert (=> d!308041 (= c!185431 ((_ is Nil!10506) lt!366957))))

(assert (=> d!308041 (= (filter!258 lt!366957 lambda!41842) lt!367289)))

(declare-fun b!1093574 () Bool)

(assert (=> b!1093574 (= e!692184 (forall!2357 lt!367289 lambda!41842))))

(assert (= (and d!308041 c!185431) b!1093578))

(assert (= (and d!308041 (not c!185431)) b!1093573))

(assert (= (and b!1093573 c!185432) b!1093577))

(assert (= (and b!1093573 (not c!185432)) b!1093575))

(assert (= (or b!1093577 b!1093575) bm!80291))

(assert (= (and d!308041 res!485807) b!1093576))

(assert (= (and b!1093576 res!485806) b!1093574))

(declare-fun b_lambda!31005 () Bool)

(assert (=> (not b_lambda!31005) (not b!1093573)))

(declare-fun m!1245685 () Bool)

(assert (=> b!1093573 m!1245685))

(declare-fun m!1245687 () Bool)

(assert (=> b!1093576 m!1245687))

(assert (=> b!1093576 m!1245673))

(declare-fun m!1245689 () Bool)

(assert (=> bm!80291 m!1245689))

(declare-fun m!1245691 () Bool)

(assert (=> d!308041 m!1245691))

(assert (=> d!308041 m!1245067))

(declare-fun m!1245693 () Bool)

(assert (=> b!1093574 m!1245693))

(assert (=> b!1093294 d!308041))

(assert (=> b!1093294 d!308037))

(declare-fun d!308043 () Bool)

(declare-fun c!185435 () Bool)

(assert (=> d!308043 (= c!185435 ((_ is Node!3211) (c!185371 objs!8)))))

(declare-fun e!692189 () Bool)

(assert (=> d!308043 (= (inv!13450 (c!185371 objs!8)) e!692189)))

(declare-fun b!1093585 () Bool)

(declare-fun inv!13454 (Conc!3211) Bool)

(assert (=> b!1093585 (= e!692189 (inv!13454 (c!185371 objs!8)))))

(declare-fun b!1093586 () Bool)

(declare-fun e!692190 () Bool)

(assert (=> b!1093586 (= e!692189 e!692190)))

(declare-fun res!485810 () Bool)

(assert (=> b!1093586 (= res!485810 (not ((_ is Leaf!5114) (c!185371 objs!8))))))

(assert (=> b!1093586 (=> res!485810 e!692190)))

(declare-fun b!1093587 () Bool)

(declare-fun inv!13455 (Conc!3211) Bool)

(assert (=> b!1093587 (= e!692190 (inv!13455 (c!185371 objs!8)))))

(assert (= (and d!308043 c!185435) b!1093585))

(assert (= (and d!308043 (not c!185435)) b!1093586))

(assert (= (and b!1093586 (not res!485810)) b!1093587))

(declare-fun m!1245695 () Bool)

(assert (=> b!1093585 m!1245695))

(declare-fun m!1245697 () Bool)

(assert (=> b!1093587 m!1245697))

(assert (=> b!1093306 d!308043))

(declare-fun d!308045 () Bool)

(assert (=> d!308045 (dynLambda!4585 lambda!41844 lt!366966)))

(declare-fun lt!367290 () Unit!15961)

(assert (=> d!308045 (= lt!367290 (choose!7029 (list!3766 lt!366945) lambda!41844 lt!366966))))

(declare-fun e!692191 () Bool)

(assert (=> d!308045 e!692191))

(declare-fun res!485811 () Bool)

(assert (=> d!308045 (=> (not res!485811) (not e!692191))))

(assert (=> d!308045 (= res!485811 (forall!2357 (list!3766 lt!366945) lambda!41844))))

(assert (=> d!308045 (= (forallContained!496 (list!3766 lt!366945) lambda!41844 lt!366966) lt!367290)))

(declare-fun b!1093588 () Bool)

(assert (=> b!1093588 (= e!692191 (contains!1783 (list!3766 lt!366945) lt!366966))))

(assert (= (and d!308045 res!485811) b!1093588))

(declare-fun b_lambda!31007 () Bool)

(assert (=> (not b_lambda!31007) (not d!308045)))

(assert (=> d!308045 m!1245641))

(assert (=> d!308045 m!1245085))

(declare-fun m!1245699 () Bool)

(assert (=> d!308045 m!1245699))

(assert (=> d!308045 m!1245085))

(declare-fun m!1245701 () Bool)

(assert (=> d!308045 m!1245701))

(assert (=> b!1093588 m!1245085))

(assert (=> b!1093588 m!1245663))

(assert (=> b!1093295 d!308045))

(declare-fun d!308047 () Bool)

(assert (=> d!308047 (= (list!3766 lt!366945) (list!3768 (c!185371 lt!366945)))))

(declare-fun bs!258316 () Bool)

(assert (= bs!258316 d!308047))

(declare-fun m!1245703 () Bool)

(assert (=> bs!258316 m!1245703))

(assert (=> b!1093295 d!308047))

(declare-fun d!308049 () Bool)

(declare-fun lt!367291 () Int)

(assert (=> d!308049 (= lt!367291 (size!8125 (list!3766 objs!8)))))

(assert (=> d!308049 (= lt!367291 (size!8128 (c!185371 objs!8)))))

(assert (=> d!308049 (= (size!8126 objs!8) lt!367291)))

(declare-fun bs!258317 () Bool)

(assert (= bs!258317 d!308049))

(assert (=> bs!258317 m!1245107))

(assert (=> bs!258317 m!1245107))

(declare-fun m!1245705 () Bool)

(assert (=> bs!258317 m!1245705))

(declare-fun m!1245707 () Bool)

(assert (=> bs!258317 m!1245707))

(assert (=> b!1093307 d!308049))

(declare-fun d!308051 () Bool)

(declare-fun lt!367292 () Bool)

(assert (=> d!308051 (= lt!367292 (contains!1783 (list!3766 lt!366971) lt!366966))))

(assert (=> d!308051 (= lt!367292 (contains!1784 (c!185371 lt!366971) lt!366966))))

(assert (=> d!308051 (= (contains!1780 lt!366971 lt!366966) lt!367292)))

(declare-fun bs!258318 () Bool)

(assert (= bs!258318 d!308051))

(assert (=> bs!258318 m!1245103))

(assert (=> bs!258318 m!1245103))

(assert (=> bs!258318 m!1245659))

(declare-fun m!1245709 () Bool)

(assert (=> bs!258318 m!1245709))

(assert (=> b!1093296 d!308051))

(declare-fun d!308053 () Bool)

(declare-fun lt!367293 () Int)

(assert (=> d!308053 (= lt!367293 (size!8125 (list!3766 lt!366945)))))

(assert (=> d!308053 (= lt!367293 (size!8128 (c!185371 lt!366945)))))

(assert (=> d!308053 (= (size!8126 lt!366945) lt!367293)))

(declare-fun bs!258319 () Bool)

(assert (= bs!258319 d!308053))

(assert (=> bs!258319 m!1245085))

(assert (=> bs!258319 m!1245085))

(declare-fun m!1245711 () Bool)

(assert (=> bs!258319 m!1245711))

(declare-fun m!1245713 () Bool)

(assert (=> bs!258319 m!1245713))

(assert (=> b!1093309 d!308053))

(declare-fun d!308055 () Bool)

(declare-fun e!692192 () Bool)

(assert (=> d!308055 e!692192))

(declare-fun res!485812 () Bool)

(assert (=> d!308055 (=> res!485812 e!692192)))

(assert (=> d!308055 (= res!485812 (isEmpty!6666 lt!366957))))

(declare-fun lt!367294 () Unit!15961)

(assert (=> d!308055 (= lt!367294 (choose!7028 lt!366957 lambda!41844))))

(assert (=> d!308055 (not (forall!2357 lt!366957 lambda!41844))))

(assert (=> d!308055 (= (lemmaNotForallFilterShorter!37 lt!366957 lambda!41844) lt!367294)))

(declare-fun b!1093589 () Bool)

(assert (=> b!1093589 (= e!692192 (< (size!8125 (filter!258 lt!366957 lambda!41844)) (size!8125 lt!366957)))))

(assert (= (and d!308055 (not res!485812)) b!1093589))

(assert (=> d!308055 m!1245147))

(declare-fun m!1245715 () Bool)

(assert (=> d!308055 m!1245715))

(assert (=> d!308055 m!1245645))

(assert (=> b!1093589 m!1245063))

(assert (=> b!1093589 m!1245063))

(assert (=> b!1093589 m!1245065))

(assert (=> b!1093589 m!1245067))

(assert (=> b!1093309 d!308055))

(declare-fun d!308057 () Bool)

(declare-fun lt!367295 () Bool)

(assert (=> d!308057 (= lt!367295 (forall!2357 (list!3766 objs!8) lambda!41844))))

(assert (=> d!308057 (= lt!367295 (forall!2359 (c!185371 objs!8) lambda!41844))))

(assert (=> d!308057 (= (forall!2356 objs!8 lambda!41844) lt!367295)))

(declare-fun bs!258320 () Bool)

(assert (= bs!258320 d!308057))

(assert (=> bs!258320 m!1245107))

(assert (=> bs!258320 m!1245107))

(declare-fun m!1245717 () Bool)

(assert (=> bs!258320 m!1245717))

(declare-fun m!1245719 () Bool)

(assert (=> bs!258320 m!1245719))

(assert (=> b!1093309 d!308057))

(assert (=> b!1093298 d!307989))

(assert (=> b!1093298 d!307863))

(assert (=> b!1093298 d!307995))

(declare-fun d!308059 () Bool)

(declare-fun lt!367296 () Bool)

(assert (=> d!308059 (= lt!367296 (contains!1783 (list!3766 objs!8) lt!366966))))

(assert (=> d!308059 (= lt!367296 (contains!1784 (c!185371 objs!8) lt!366966))))

(assert (=> d!308059 (= (contains!1780 objs!8 lt!366966) lt!367296)))

(declare-fun bs!258321 () Bool)

(assert (= bs!258321 d!308059))

(assert (=> bs!258321 m!1245107))

(assert (=> bs!258321 m!1245107))

(assert (=> bs!258321 m!1245653))

(declare-fun m!1245721 () Bool)

(assert (=> bs!258321 m!1245721))

(assert (=> b!1093298 d!308059))

(declare-fun d!308061 () Bool)

(declare-fun lt!367299 () tuple2!11714)

(declare-fun apply!2062 (List!10522 Int) tuple2!11714)

(assert (=> d!308061 (= lt!367299 (apply!2062 (list!3766 objs!8) (ite (>= lt!366959 0) (div lt!366959 2) (- (div (- lt!366959) 2)))))))

(declare-fun apply!2063 (Conc!3211 Int) tuple2!11714)

(assert (=> d!308061 (= lt!367299 (apply!2063 (c!185371 objs!8) (ite (>= lt!366959 0) (div lt!366959 2) (- (div (- lt!366959) 2)))))))

(declare-fun e!692195 () Bool)

(assert (=> d!308061 e!692195))

(declare-fun res!485815 () Bool)

(assert (=> d!308061 (=> (not res!485815) (not e!692195))))

(assert (=> d!308061 (= res!485815 (<= 0 (ite (>= lt!366959 0) (div lt!366959 2) (- (div (- lt!366959) 2)))))))

(assert (=> d!308061 (= (apply!2059 objs!8 (ite (>= lt!366959 0) (div lt!366959 2) (- (div (- lt!366959) 2)))) lt!367299)))

(declare-fun b!1093592 () Bool)

(assert (=> b!1093592 (= e!692195 (< (ite (>= lt!366959 0) (div lt!366959 2) (- (div (- lt!366959) 2))) (size!8126 objs!8)))))

(assert (= (and d!308061 res!485815) b!1093592))

(assert (=> d!308061 m!1245107))

(assert (=> d!308061 m!1245107))

(declare-fun m!1245723 () Bool)

(assert (=> d!308061 m!1245723))

(declare-fun m!1245725 () Bool)

(assert (=> d!308061 m!1245725))

(assert (=> b!1093592 m!1245083))

(assert (=> b!1093298 d!308061))

(declare-fun b!1093601 () Bool)

(declare-fun e!692200 () Bool)

(assert (=> b!1093601 (= e!692200 true)))

(declare-fun b!1093603 () Bool)

(declare-fun e!692201 () Bool)

(assert (=> b!1093603 (= e!692201 true)))

(declare-fun b!1093602 () Bool)

(assert (=> b!1093602 (= e!692200 e!692201)))

(assert (=> b!1093317 e!692200))

(assert (= (and b!1093317 ((_ is Node!3210) (c!185370 (tokens!1353 (_2!6683 lt!366966))))) b!1093601))

(assert (= b!1093602 b!1093603))

(assert (= (and b!1093317 ((_ is Leaf!5113) (c!185370 (tokens!1353 (_2!6683 lt!366966))))) b!1093602))

(declare-fun b!1093614 () Bool)

(declare-fun e!692210 () Bool)

(assert (=> b!1093614 (= e!692210 true)))

(declare-fun b!1093613 () Bool)

(declare-fun e!692209 () Bool)

(assert (=> b!1093613 (= e!692209 e!692210)))

(declare-fun b!1093612 () Bool)

(declare-fun e!692208 () Bool)

(assert (=> b!1093612 (= e!692208 e!692209)))

(assert (=> b!1093320 e!692208))

(assert (= b!1093613 b!1093614))

(assert (= b!1093612 b!1093613))

(assert (= (and b!1093320 ((_ is Cons!10505) (rules!9081 (_2!6683 lt!366966)))) b!1093612))

(declare-fun order!6315 () Int)

(declare-fun order!6317 () Int)

(declare-fun dynLambda!4589 (Int Int) Int)

(declare-fun dynLambda!4590 (Int Int) Int)

(assert (=> b!1093614 (< (dynLambda!4589 order!6315 (toValue!2871 (transformation!1794 (h!15906 (rules!9081 (_2!6683 lt!366966)))))) (dynLambda!4590 order!6317 lambda!41844))))

(declare-fun order!6319 () Int)

(declare-fun dynLambda!4591 (Int Int) Int)

(assert (=> b!1093614 (< (dynLambda!4591 order!6319 (toChars!2730 (transformation!1794 (h!15906 (rules!9081 (_2!6683 lt!366966)))))) (dynLambda!4590 order!6317 lambda!41844))))

(declare-fun b!1093617 () Bool)

(declare-fun e!692213 () Bool)

(assert (=> b!1093617 (= e!692213 true)))

(declare-fun b!1093616 () Bool)

(declare-fun e!692212 () Bool)

(assert (=> b!1093616 (= e!692212 e!692213)))

(declare-fun b!1093615 () Bool)

(declare-fun e!692211 () Bool)

(assert (=> b!1093615 (= e!692211 e!692212)))

(assert (=> b!1093316 e!692211))

(assert (= b!1093616 b!1093617))

(assert (= b!1093615 b!1093616))

(assert (= (and b!1093316 ((_ is Cons!10505) (rules!9081 (_2!6683 lt!366966)))) b!1093615))

(assert (=> b!1093617 (< (dynLambda!4589 order!6315 (toValue!2871 (transformation!1794 (h!15906 (rules!9081 (_2!6683 lt!366966)))))) (dynLambda!4590 order!6317 lambda!41842))))

(assert (=> b!1093617 (< (dynLambda!4591 order!6319 (toChars!2730 (transformation!1794 (h!15906 (rules!9081 (_2!6683 lt!366966)))))) (dynLambda!4590 order!6317 lambda!41842))))

(declare-fun b!1093618 () Bool)

(declare-fun e!692214 () Bool)

(assert (=> b!1093618 (= e!692214 true)))

(declare-fun b!1093620 () Bool)

(declare-fun e!692215 () Bool)

(assert (=> b!1093620 (= e!692215 true)))

(declare-fun b!1093619 () Bool)

(assert (=> b!1093619 (= e!692214 e!692215)))

(assert (=> b!1093321 e!692214))

(assert (= (and b!1093321 ((_ is Node!3210) (c!185370 (tokens!1353 (_2!6683 lt!366966))))) b!1093618))

(assert (= b!1093619 b!1093620))

(assert (= (and b!1093321 ((_ is Leaf!5113) (c!185370 (tokens!1353 (_2!6683 lt!366966))))) b!1093619))

(declare-fun tp!326562 () Bool)

(declare-fun b!1093629 () Bool)

(declare-fun e!692221 () Bool)

(declare-fun tp!326563 () Bool)

(assert (=> b!1093629 (= e!692221 (and (inv!13450 (left!9027 (c!185371 objs!8))) tp!326563 (inv!13450 (right!9357 (c!185371 objs!8))) tp!326562))))

(declare-fun b!1093631 () Bool)

(declare-fun e!692220 () Bool)

(declare-fun tp!326564 () Bool)

(assert (=> b!1093631 (= e!692220 tp!326564)))

(declare-fun b!1093630 () Bool)

(declare-fun inv!13456 (IArray!6427) Bool)

(assert (=> b!1093630 (= e!692221 (and (inv!13456 (xs!5904 (c!185371 objs!8))) e!692220))))

(assert (=> b!1093306 (= tp!326546 (and (inv!13450 (c!185371 objs!8)) e!692221))))

(assert (= (and b!1093306 ((_ is Node!3211) (c!185371 objs!8))) b!1093629))

(assert (= b!1093630 b!1093631))

(assert (= (and b!1093306 ((_ is Leaf!5114) (c!185371 objs!8))) b!1093630))

(declare-fun m!1245727 () Bool)

(assert (=> b!1093629 m!1245727))

(declare-fun m!1245729 () Bool)

(assert (=> b!1093629 m!1245729))

(declare-fun m!1245731 () Bool)

(assert (=> b!1093630 m!1245731))

(assert (=> b!1093306 m!1245145))

(declare-fun b!1093634 () Bool)

(declare-fun e!692224 () Bool)

(assert (=> b!1093634 (= e!692224 true)))

(declare-fun b!1093633 () Bool)

(declare-fun e!692223 () Bool)

(assert (=> b!1093633 (= e!692223 e!692224)))

(declare-fun b!1093632 () Bool)

(declare-fun e!692222 () Bool)

(assert (=> b!1093632 (= e!692222 e!692223)))

(assert (=> b!1093318 e!692222))

(assert (= b!1093633 b!1093634))

(assert (= b!1093632 b!1093633))

(assert (= (and b!1093318 ((_ is Cons!10505) (rules!9081 (_2!6683 lt!366966)))) b!1093632))

(assert (=> b!1093634 (< (dynLambda!4589 order!6315 (toValue!2871 (transformation!1794 (h!15906 (rules!9081 (_2!6683 lt!366966)))))) (dynLambda!4590 order!6317 lambda!41843))))

(assert (=> b!1093634 (< (dynLambda!4591 order!6319 (toChars!2730 (transformation!1794 (h!15906 (rules!9081 (_2!6683 lt!366966)))))) (dynLambda!4590 order!6317 lambda!41843))))

(declare-fun b!1093635 () Bool)

(declare-fun e!692225 () Bool)

(assert (=> b!1093635 (= e!692225 true)))

(declare-fun b!1093637 () Bool)

(declare-fun e!692226 () Bool)

(assert (=> b!1093637 (= e!692226 true)))

(declare-fun b!1093636 () Bool)

(assert (=> b!1093636 (= e!692225 e!692226)))

(assert (=> b!1093319 e!692225))

(assert (= (and b!1093319 ((_ is Node!3210) (c!185370 (tokens!1353 (_2!6683 lt!366966))))) b!1093635))

(assert (= b!1093636 b!1093637))

(assert (= (and b!1093319 ((_ is Leaf!5113) (c!185370 (tokens!1353 (_2!6683 lt!366966))))) b!1093636))

(declare-fun b_lambda!31009 () Bool)

(assert (= b_lambda!31005 (or b!1093298 b_lambda!31009)))

(declare-fun bs!258322 () Bool)

(declare-fun d!308063 () Bool)

(assert (= bs!258322 (and d!308063 b!1093298)))

(assert (=> bs!258322 (= (dynLambda!4585 lambda!41842 (h!15907 lt!366957)) (< (_1!6683 (h!15907 lt!366957)) (_1!6683 lt!366966)))))

(assert (=> b!1093573 d!308063))

(declare-fun b_lambda!31011 () Bool)

(assert (= b_lambda!30991 (or start!93546 b_lambda!31011)))

(declare-fun bs!258323 () Bool)

(declare-fun d!308065 () Bool)

(assert (= bs!258323 (and d!308065 start!93546)))

(declare-fun usesJsonRules!0 (PrintableTokens!304) Bool)

(assert (=> bs!258323 (= (dynLambda!4585 lambda!41841 (h!15907 lt!366967)) (usesJsonRules!0 (_2!6683 (h!15907 lt!366967))))))

(declare-fun m!1245733 () Bool)

(assert (=> bs!258323 m!1245733))

(assert (=> b!1093529 d!308065))

(declare-fun b_lambda!31013 () Bool)

(assert (= b_lambda!31001 (or b!1093298 b_lambda!31013)))

(declare-fun bs!258324 () Bool)

(declare-fun d!308067 () Bool)

(assert (= bs!258324 (and d!308067 b!1093298)))

(assert (=> bs!258324 (= (dynLambda!4585 lambda!41842 lt!366966) (< (_1!6683 lt!366966) (_1!6683 lt!366966)))))

(assert (=> d!308027 d!308067))

(declare-fun b_lambda!31015 () Bool)

(assert (= b_lambda!30993 (or start!93546 b_lambda!31015)))

(declare-fun bs!258325 () Bool)

(declare-fun d!308069 () Bool)

(assert (= bs!258325 (and d!308069 start!93546)))

(assert (=> bs!258325 (= (dynLambda!4585 lambda!41841 (h!15907 lt!366947)) (usesJsonRules!0 (_2!6683 (h!15907 lt!366947))))))

(declare-fun m!1245735 () Bool)

(assert (=> bs!258325 m!1245735))

(assert (=> b!1093532 d!308069))

(declare-fun b_lambda!31017 () Bool)

(assert (= b_lambda!31007 (or b!1093298 b_lambda!31017)))

(declare-fun bs!258326 () Bool)

(declare-fun d!308071 () Bool)

(assert (= bs!258326 (and d!308071 b!1093298)))

(assert (=> bs!258326 (= (dynLambda!4585 lambda!41844 lt!366966) (> (_1!6683 lt!366966) (_1!6683 lt!366966)))))

(assert (=> d!308045 d!308071))

(declare-fun b_lambda!31019 () Bool)

(assert (= b_lambda!30997 (or b!1093298 b_lambda!31019)))

(assert (=> d!308023 d!308071))

(declare-fun b_lambda!31021 () Bool)

(assert (= b_lambda!31003 (or b!1093298 b_lambda!31021)))

(declare-fun bs!258327 () Bool)

(declare-fun d!308073 () Bool)

(assert (= bs!258327 (and d!308073 b!1093298)))

(assert (=> bs!258327 (= (dynLambda!4585 lambda!41844 (h!15907 lt!366957)) (> (_1!6683 (h!15907 lt!366957)) (_1!6683 lt!366966)))))

(assert (=> b!1093563 d!308073))

(declare-fun b_lambda!31023 () Bool)

(assert (= b_lambda!30995 (or start!93546 b_lambda!31023)))

(declare-fun bs!258328 () Bool)

(declare-fun d!308075 () Bool)

(assert (= bs!258328 (and d!308075 start!93546)))

(assert (=> bs!258328 (= (dynLambda!4585 lambda!41841 (h!15907 lt!366962)) (usesJsonRules!0 (_2!6683 (h!15907 lt!366962))))))

(declare-fun m!1245737 () Bool)

(assert (=> bs!258328 m!1245737))

(assert (=> b!1093535 d!308075))

(declare-fun b_lambda!31025 () Bool)

(assert (= b_lambda!30999 (or b!1093298 b_lambda!31025)))

(assert (=> d!308025 d!308067))

(check-sat (not b!1093516) (not d!308011) (not bs!258325) (not b!1093635) (not bm!80290) (not b!1093533) (not b!1093330) (not b!1093306) (not b!1093585) (not d!308059) (not d!308029) (not d!307995) (not b!1093544) (not b!1093524) (not b!1093543) (not d!307885) (not d!308027) (not d!308045) (not b!1093588) (not b!1093570) (not d!308047) (not d!308019) (not bs!258323) (not b!1093618) (not d!307879) (not b!1093510) (not b!1093615) (not d!308005) (not d!307989) (not d!308049) (not b!1093536) (not b!1093512) (not d!308017) (not b_lambda!31019) (not b!1093592) (not b_lambda!31021) (not d!307999) (not b!1093587) (not b_lambda!31013) (not b!1093522) (not b!1093542) (not b!1093520) (not b!1093601) (not b_lambda!31015) (not b!1093531) (not d!308023) (not b!1093521) (not b!1093612) (not b_lambda!31023) (not d!308053) (not b!1093630) (not d!308013) (not b_lambda!31009) (not d!308051) (not b!1093564) (not d!308041) (not d!308009) (not bs!258328) (not d!307983) (not b!1093632) (not d!308021) (not d!308031) (not d!307883) (not d!307981) (not b!1093629) (not b!1093530) (not d!308003) (not b!1093507) (not d!308007) (not d!308061) (not b!1093631) (not b!1093576) (not b!1093514) (not d!307993) (not d!308025) (not d!308057) (not b!1093620) (not b!1093513) (not b!1093534) (not b!1093589) (not b!1093519) (not b!1093523) (not b!1093637) (not d!308035) (not b_lambda!31025) (not b!1093603) (not b!1093550) (not b!1093539) (not b!1093574) (not d!307997) (not b!1093572) (not d!307887) (not bm!80291) (not b_lambda!31011) (not d!307987) (not d!307863) (not d!308055) (not b!1093509) (not b!1093566) (not b_lambda!31017) (not d!307891))
(check-sat)
