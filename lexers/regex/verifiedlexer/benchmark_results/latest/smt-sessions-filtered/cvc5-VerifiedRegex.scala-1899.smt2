; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!93312 () Bool)

(assert start!93312)

(declare-fun bs!257931 () Bool)

(declare-fun b!1091248 () Bool)

(assert (= bs!257931 (and b!1091248 start!93312)))

(declare-fun lambda!41380 () Int)

(declare-fun lambda!41379 () Int)

(assert (=> bs!257931 (not (= lambda!41380 lambda!41379))))

(declare-fun b!1091273 () Bool)

(declare-fun e!690576 () Bool)

(assert (=> b!1091273 (= e!690576 true)))

(declare-fun b!1091272 () Bool)

(declare-fun e!690575 () Bool)

(assert (=> b!1091272 (= e!690575 e!690576)))

(assert (=> b!1091248 e!690575))

(assert (= b!1091272 b!1091273))

(assert (= b!1091248 b!1091272))

(declare-fun lambda!41381 () Int)

(assert (=> bs!257931 (not (= lambda!41381 lambda!41379))))

(assert (=> b!1091248 (not (= lambda!41381 lambda!41380))))

(declare-fun b!1091275 () Bool)

(declare-fun e!690578 () Bool)

(assert (=> b!1091275 (= e!690578 true)))

(declare-fun b!1091274 () Bool)

(declare-fun e!690577 () Bool)

(assert (=> b!1091274 (= e!690577 e!690578)))

(assert (=> b!1091248 e!690577))

(assert (= b!1091274 b!1091275))

(assert (= b!1091248 b!1091274))

(declare-fun lambda!41382 () Int)

(assert (=> bs!257931 (not (= lambda!41382 lambda!41379))))

(assert (=> b!1091248 (not (= lambda!41382 lambda!41380))))

(assert (=> b!1091248 (not (= lambda!41382 lambda!41381))))

(declare-fun b!1091277 () Bool)

(declare-fun e!690580 () Bool)

(assert (=> b!1091277 (= e!690580 true)))

(declare-fun b!1091276 () Bool)

(declare-fun e!690579 () Bool)

(assert (=> b!1091276 (= e!690579 e!690580)))

(assert (=> b!1091248 e!690579))

(assert (= b!1091276 b!1091277))

(assert (= b!1091248 b!1091276))

(declare-fun e!690560 () Bool)

(declare-fun e!690563 () Bool)

(assert (=> b!1091248 (= e!690560 e!690563)))

(declare-fun res!484935 () Bool)

(assert (=> b!1091248 (=> (not res!484935) (not e!690563))))

(declare-datatypes ((List!10491 0))(
  ( (Nil!10475) (Cons!10475 (h!15876 (_ BitVec 16)) (t!102033 List!10491)) )
))
(declare-datatypes ((TokenValue!1853 0))(
  ( (FloatLiteralValue!3706 (text!13416 List!10491)) (TokenValueExt!1852 (__x!7435 Int)) (Broken!9265 (value!58858 List!10491)) (Object!1868) (End!1853) (Def!1853) (Underscore!1853) (Match!1853) (Else!1853) (Error!1853) (Case!1853) (If!1853) (Extends!1853) (Abstract!1853) (Class!1853) (Val!1853) (DelimiterValue!3706 (del!1913 List!10491)) (KeywordValue!1859 (value!58859 List!10491)) (CommentValue!3706 (value!58860 List!10491)) (WhitespaceValue!3706 (value!58861 List!10491)) (IndentationValue!1853 (value!58862 List!10491)) (String!12836) (Int32!1853) (Broken!9266 (value!58863 List!10491)) (Boolean!1854) (Unit!15887) (OperatorValue!1856 (op!1913 List!10491)) (IdentifierValue!3706 (value!58864 List!10491)) (IdentifierValue!3707 (value!58865 List!10491)) (WhitespaceValue!3707 (value!58866 List!10491)) (True!3706) (False!3706) (Broken!9267 (value!58867 List!10491)) (Broken!9268 (value!58868 List!10491)) (True!3707) (RightBrace!1853) (RightBracket!1853) (Colon!1853) (Null!1853) (Comma!1853) (LeftBracket!1853) (False!3707) (LeftBrace!1853) (ImaginaryLiteralValue!1853 (text!13417 List!10491)) (StringLiteralValue!5559 (value!58869 List!10491)) (EOFValue!1853 (value!58870 List!10491)) (IdentValue!1853 (value!58871 List!10491)) (DelimiterValue!3707 (value!58872 List!10491)) (DedentValue!1853 (value!58873 List!10491)) (NewLineValue!1853 (value!58874 List!10491)) (IntegerValue!5559 (value!58875 (_ BitVec 32)) (text!13418 List!10491)) (IntegerValue!5560 (value!58876 Int) (text!13419 List!10491)) (Times!1853) (Or!1853) (Equal!1853) (Minus!1853) (Broken!9269 (value!58877 List!10491)) (And!1853) (Div!1853) (LessEqual!1853) (Mod!1853) (Concat!4909) (Not!1853) (Plus!1853) (SpaceValue!1853 (value!58878 List!10491)) (IntegerValue!5561 (value!58879 Int) (text!13420 List!10491)) (StringLiteralValue!5560 (text!13421 List!10491)) (FloatLiteralValue!3707 (text!13422 List!10491)) (BytesLiteralValue!1853 (value!58880 List!10491)) (CommentValue!3707 (value!58881 List!10491)) (StringLiteralValue!5561 (value!58882 List!10491)) (ErrorTokenValue!1853 (msg!1914 List!10491)) )
))
(declare-datatypes ((Regex!3056 0))(
  ( (ElementMatch!3056 (c!184942 (_ BitVec 16))) (Concat!4910 (regOne!6624 Regex!3056) (regTwo!6624 Regex!3056)) (EmptyExpr!3056) (Star!3056 (reg!3385 Regex!3056)) (EmptyLang!3056) (Union!3056 (regOne!6625 Regex!3056) (regTwo!6625 Regex!3056)) )
))
(declare-datatypes ((String!12837 0))(
  ( (String!12838 (value!58883 String)) )
))
(declare-datatypes ((IArray!6381 0))(
  ( (IArray!6382 (innerList!3248 List!10491)) )
))
(declare-datatypes ((Conc!3188 0))(
  ( (Node!3188 (left!8987 Conc!3188) (right!9317 Conc!3188) (csize!6606 Int) (cheight!3399 Int)) (Leaf!5088 (xs!5881 IArray!6381) (csize!6607 Int)) (Empty!3188) )
))
(declare-datatypes ((BalanceConc!6390 0))(
  ( (BalanceConc!6391 (c!184943 Conc!3188)) )
))
(declare-datatypes ((TokenValueInjection!3406 0))(
  ( (TokenValueInjection!3407 (toValue!2864 Int) (toChars!2723 Int)) )
))
(declare-datatypes ((Rule!3374 0))(
  ( (Rule!3375 (regex!1787 Regex!3056) (tag!2049 String!12837) (isSeparator!1787 Bool) (transformation!1787 TokenValueInjection!3406)) )
))
(declare-datatypes ((Token!3240 0))(
  ( (Token!3241 (value!58884 TokenValue!1853) (rule!3210 Rule!3374) (size!8097 Int) (originalCharacters!2343 List!10491)) )
))
(declare-datatypes ((List!10492 0))(
  ( (Nil!10476) (Cons!10476 (h!15877 Token!3240) (t!102034 List!10492)) )
))
(declare-datatypes ((IArray!6383 0))(
  ( (IArray!6384 (innerList!3249 List!10492)) )
))
(declare-datatypes ((Conc!3189 0))(
  ( (Node!3189 (left!8988 Conc!3189) (right!9318 Conc!3189) (csize!6608 Int) (cheight!3400 Int)) (Leaf!5089 (xs!5882 IArray!6383) (csize!6609 Int)) (Empty!3189) )
))
(declare-datatypes ((List!10493 0))(
  ( (Nil!10477) (Cons!10477 (h!15878 Rule!3374) (t!102035 List!10493)) )
))
(declare-datatypes ((BalanceConc!6392 0))(
  ( (BalanceConc!6393 (c!184944 Conc!3189)) )
))
(declare-datatypes ((PrintableTokens!290 0))(
  ( (PrintableTokens!291 (rules!9074 List!10493) (tokens!1346 BalanceConc!6392)) )
))
(declare-datatypes ((tuple2!11700 0))(
  ( (tuple2!11701 (_1!6676 Int) (_2!6676 PrintableTokens!290)) )
))
(declare-datatypes ((List!10494 0))(
  ( (Nil!10478) (Cons!10478 (h!15879 tuple2!11700) (t!102036 List!10494)) )
))
(declare-datatypes ((IArray!6385 0))(
  ( (IArray!6386 (innerList!3250 List!10494)) )
))
(declare-datatypes ((Conc!3190 0))(
  ( (Node!3190 (left!8989 Conc!3190) (right!9319 Conc!3190) (csize!6610 Int) (cheight!3401 Int)) (Leaf!5090 (xs!5883 IArray!6385) (csize!6611 Int)) (Empty!3190) )
))
(declare-datatypes ((BalanceConc!6394 0))(
  ( (BalanceConc!6395 (c!184945 Conc!3190)) )
))
(declare-fun objs!8 () BalanceConc!6394)

(declare-fun lt!365557 () tuple2!11700)

(declare-fun contains!1763 (BalanceConc!6394 tuple2!11700) Bool)

(assert (=> b!1091248 (= res!484935 (contains!1763 objs!8 lt!365557))))

(declare-fun lt!365574 () BalanceConc!6394)

(declare-fun filter!238 (BalanceConc!6394 Int) BalanceConc!6394)

(assert (=> b!1091248 (= lt!365574 (filter!238 objs!8 lambda!41382))))

(declare-fun lt!365576 () BalanceConc!6394)

(assert (=> b!1091248 (= lt!365576 (filter!238 objs!8 lambda!41381))))

(declare-fun lt!365563 () BalanceConc!6394)

(assert (=> b!1091248 (= lt!365563 (filter!238 objs!8 lambda!41380))))

(declare-fun lt!365568 () Int)

(declare-fun apply!2042 (BalanceConc!6394 Int) tuple2!11700)

(assert (=> b!1091248 (= lt!365557 (apply!2042 objs!8 (ite (>= lt!365568 0) (div lt!365568 2) (- (div (- lt!365568) 2)))))))

(declare-fun b!1091249 () Bool)

(declare-fun e!690570 () Bool)

(declare-fun e!690557 () Bool)

(assert (=> b!1091249 (= e!690570 (not e!690557))))

(declare-fun res!484938 () Bool)

(assert (=> b!1091249 (=> res!484938 e!690557)))

(declare-fun size!8098 (BalanceConc!6394) Int)

(assert (=> b!1091249 (= res!484938 (>= (size!8098 lt!365563) lt!365568))))

(declare-fun e!690559 () Bool)

(assert (=> b!1091249 e!690559))

(declare-fun res!484932 () Bool)

(assert (=> b!1091249 (=> res!484932 e!690559)))

(declare-fun lt!365579 () Bool)

(assert (=> b!1091249 (= res!484932 lt!365579)))

(declare-fun lt!365570 () List!10494)

(declare-fun isEmpty!6657 (List!10494) Bool)

(assert (=> b!1091249 (= lt!365579 (isEmpty!6657 lt!365570))))

(declare-datatypes ((Unit!15888 0))(
  ( (Unit!15889) )
))
(declare-fun lt!365565 () Unit!15888)

(declare-fun lemmaNotForallFilterShorter!30 (List!10494 Int) Unit!15888)

(assert (=> b!1091249 (= lt!365565 (lemmaNotForallFilterShorter!30 lt!365570 lambda!41380))))

(declare-fun list!3753 (BalanceConc!6394) List!10494)

(assert (=> b!1091249 (= lt!365570 (list!3753 objs!8))))

(declare-fun lt!365556 () Unit!15888)

(declare-fun e!690566 () Unit!15888)

(assert (=> b!1091249 (= lt!365556 e!690566)))

(declare-fun c!184939 () Bool)

(declare-fun forall!2336 (BalanceConc!6394 Int) Bool)

(assert (=> b!1091249 (= c!184939 (forall!2336 objs!8 lambda!41380))))

(declare-fun b!1091250 () Bool)

(declare-fun e!690564 () Bool)

(assert (=> b!1091250 (= e!690557 e!690564)))

(declare-fun res!484939 () Bool)

(assert (=> b!1091250 (=> res!484939 e!690564)))

(declare-fun lt!365571 () Bool)

(assert (=> b!1091250 (= res!484939 lt!365571)))

(declare-fun lt!365562 () Unit!15888)

(declare-fun e!690568 () Unit!15888)

(assert (=> b!1091250 (= lt!365562 e!690568)))

(declare-fun c!184941 () Bool)

(assert (=> b!1091250 (= c!184941 lt!365571)))

(assert (=> b!1091250 (= lt!365571 (contains!1763 lt!365574 lt!365557))))

(declare-fun res!484937 () Bool)

(declare-fun e!690561 () Bool)

(assert (=> start!93312 (=> (not res!484937) (not e!690561))))

(assert (=> start!93312 (= res!484937 (forall!2336 objs!8 lambda!41379))))

(assert (=> start!93312 e!690561))

(declare-fun e!690569 () Bool)

(declare-fun inv!13409 (BalanceConc!6394) Bool)

(assert (=> start!93312 (and (inv!13409 objs!8) e!690569)))

(declare-fun b!1091251 () Bool)

(assert (=> b!1091251 (= e!690561 e!690560)))

(declare-fun res!484934 () Bool)

(assert (=> b!1091251 (=> (not res!484934) (not e!690560))))

(assert (=> b!1091251 (= res!484934 (> lt!365568 1))))

(assert (=> b!1091251 (= lt!365568 (size!8098 objs!8))))

(declare-fun b!1091252 () Bool)

(declare-fun e!690567 () Unit!15888)

(declare-fun err!1993 () Unit!15888)

(assert (=> b!1091252 (= e!690567 err!1993)))

(declare-fun lt!365553 () Unit!15888)

(declare-fun forallContained!489 (List!10494 Int tuple2!11700) Unit!15888)

(assert (=> b!1091252 (= lt!365553 (forallContained!489 (list!3753 lt!365563) lambda!41380 lt!365557))))

(assert (=> b!1091252 true))

(declare-fun b!1091253 () Bool)

(declare-fun e!690558 () Bool)

(assert (=> b!1091253 (= e!690564 e!690558)))

(declare-fun res!484933 () Bool)

(assert (=> b!1091253 (=> res!484933 e!690558)))

(assert (=> b!1091253 (= res!484933 (>= (size!8098 lt!365574) lt!365568))))

(declare-fun e!690565 () Bool)

(assert (=> b!1091253 e!690565))

(declare-fun res!484936 () Bool)

(assert (=> b!1091253 (=> res!484936 e!690565)))

(assert (=> b!1091253 (= res!484936 lt!365579)))

(declare-fun lt!365559 () Unit!15888)

(assert (=> b!1091253 (= lt!365559 (lemmaNotForallFilterShorter!30 lt!365570 lambda!41382))))

(declare-fun lt!365560 () Unit!15888)

(declare-fun e!690562 () Unit!15888)

(assert (=> b!1091253 (= lt!365560 e!690562)))

(declare-fun c!184940 () Bool)

(assert (=> b!1091253 (= c!184940 (forall!2336 objs!8 lambda!41382))))

(declare-fun b!1091254 () Bool)

(declare-fun Unit!15890 () Unit!15888)

(assert (=> b!1091254 (= e!690562 Unit!15890)))

(declare-fun b!1091255 () Bool)

(declare-fun err!1991 () Unit!15888)

(assert (=> b!1091255 (= e!690562 err!1991)))

(declare-fun lt!365572 () Unit!15888)

(assert (=> b!1091255 (= lt!365572 (forallContained!489 lt!365570 lambda!41382 lt!365557))))

(assert (=> b!1091255 true))

(declare-fun b!1091256 () Bool)

(assert (=> b!1091256 (= e!690563 e!690570)))

(declare-fun res!484940 () Bool)

(assert (=> b!1091256 (=> (not res!484940) (not e!690570))))

(declare-fun lt!365561 () Bool)

(assert (=> b!1091256 (= res!484940 (not lt!365561))))

(declare-fun lt!365567 () Unit!15888)

(assert (=> b!1091256 (= lt!365567 e!690567)))

(declare-fun c!184938 () Bool)

(assert (=> b!1091256 (= c!184938 lt!365561)))

(assert (=> b!1091256 (= lt!365561 (contains!1763 lt!365563 lt!365557))))

(declare-fun b!1091257 () Bool)

(declare-fun size!8099 (List!10494) Int)

(declare-fun filter!239 (List!10494 Int) List!10494)

(assert (=> b!1091257 (= e!690559 (< (size!8099 (filter!239 lt!365570 lambda!41380)) (size!8099 lt!365570)))))

(declare-fun b!1091258 () Bool)

(declare-fun Unit!15891 () Unit!15888)

(assert (=> b!1091258 (= e!690567 Unit!15891)))

(declare-fun b!1091259 () Bool)

(assert (=> b!1091259 (= e!690558 (forall!2336 lt!365563 lambda!41379))))

(declare-fun lt!365564 () List!10494)

(declare-fun forall!2337 (List!10494 Int) Bool)

(assert (=> b!1091259 (forall!2337 lt!365564 lambda!41379)))

(declare-fun lt!365577 () Unit!15888)

(declare-fun lemmaForallSubseq!32 (List!10494 List!10494 Int) Unit!15888)

(assert (=> b!1091259 (= lt!365577 (lemmaForallSubseq!32 lt!365564 lt!365570 lambda!41379))))

(assert (=> b!1091259 (= lt!365564 (list!3753 (filter!238 objs!8 lambda!41382)))))

(declare-fun lt!365573 () List!10494)

(assert (=> b!1091259 (forall!2337 lt!365573 lambda!41379)))

(declare-fun lt!365558 () Unit!15888)

(assert (=> b!1091259 (= lt!365558 (lemmaForallSubseq!32 lt!365573 lt!365570 lambda!41379))))

(assert (=> b!1091259 (= lt!365573 (list!3753 (filter!238 objs!8 lambda!41381)))))

(declare-fun lt!365555 () List!10494)

(assert (=> b!1091259 (forall!2337 lt!365555 lambda!41379)))

(declare-fun lt!365578 () Unit!15888)

(assert (=> b!1091259 (= lt!365578 (lemmaForallSubseq!32 lt!365555 lt!365570 lambda!41379))))

(assert (=> b!1091259 (= lt!365555 (list!3753 (filter!238 objs!8 lambda!41380)))))

(declare-fun lt!365569 () Unit!15888)

(declare-fun filterSubseq!24 (List!10494 Int) Unit!15888)

(assert (=> b!1091259 (= lt!365569 (filterSubseq!24 lt!365570 lambda!41382))))

(declare-fun lt!365575 () Unit!15888)

(assert (=> b!1091259 (= lt!365575 (filterSubseq!24 lt!365570 lambda!41381))))

(declare-fun lt!365552 () Unit!15888)

(assert (=> b!1091259 (= lt!365552 (filterSubseq!24 lt!365570 lambda!41380))))

(declare-fun b!1091260 () Bool)

(declare-fun tp!326459 () Bool)

(declare-fun inv!13410 (Conc!3190) Bool)

(assert (=> b!1091260 (= e!690569 (and (inv!13410 (c!184945 objs!8)) tp!326459))))

(declare-fun b!1091261 () Bool)

(declare-fun Unit!15892 () Unit!15888)

(assert (=> b!1091261 (= e!690568 Unit!15892)))

(declare-fun b!1091262 () Bool)

(declare-fun err!1990 () Unit!15888)

(assert (=> b!1091262 (= e!690566 err!1990)))

(declare-fun lt!365554 () Unit!15888)

(assert (=> b!1091262 (= lt!365554 (forallContained!489 (list!3753 objs!8) lambda!41380 lt!365557))))

(assert (=> b!1091262 true))

(declare-fun b!1091263 () Bool)

(declare-fun Unit!15893 () Unit!15888)

(assert (=> b!1091263 (= e!690566 Unit!15893)))

(declare-fun b!1091264 () Bool)

(declare-fun err!1992 () Unit!15888)

(assert (=> b!1091264 (= e!690568 err!1992)))

(declare-fun lt!365566 () Unit!15888)

(assert (=> b!1091264 (= lt!365566 (forallContained!489 (list!3753 lt!365574) lambda!41382 lt!365557))))

(assert (=> b!1091264 true))

(declare-fun b!1091265 () Bool)

(assert (=> b!1091265 (= e!690565 (< (size!8099 (filter!239 lt!365570 lambda!41382)) (size!8099 lt!365570)))))

(assert (= (and start!93312 res!484937) b!1091251))

(assert (= (and b!1091251 res!484934) b!1091248))

(assert (= (and b!1091248 res!484935) b!1091256))

(assert (= (and b!1091256 c!184938) b!1091252))

(assert (= (and b!1091256 (not c!184938)) b!1091258))

(assert (= (and b!1091256 res!484940) b!1091249))

(assert (= (and b!1091249 c!184939) b!1091262))

(assert (= (and b!1091249 (not c!184939)) b!1091263))

(assert (= (and b!1091249 (not res!484932)) b!1091257))

(assert (= (and b!1091249 (not res!484938)) b!1091250))

(assert (= (and b!1091250 c!184941) b!1091264))

(assert (= (and b!1091250 (not c!184941)) b!1091261))

(assert (= (and b!1091250 (not res!484939)) b!1091253))

(assert (= (and b!1091253 c!184940) b!1091255))

(assert (= (and b!1091253 (not c!184940)) b!1091254))

(assert (= (and b!1091253 (not res!484936)) b!1091265))

(assert (= (and b!1091253 (not res!484933)) b!1091259))

(assert (= start!93312 b!1091260))

(declare-fun m!1241703 () Bool)

(assert (=> b!1091253 m!1241703))

(declare-fun m!1241705 () Bool)

(assert (=> b!1091253 m!1241705))

(declare-fun m!1241707 () Bool)

(assert (=> b!1091253 m!1241707))

(declare-fun m!1241709 () Bool)

(assert (=> b!1091251 m!1241709))

(declare-fun m!1241711 () Bool)

(assert (=> b!1091248 m!1241711))

(declare-fun m!1241713 () Bool)

(assert (=> b!1091248 m!1241713))

(declare-fun m!1241715 () Bool)

(assert (=> b!1091248 m!1241715))

(declare-fun m!1241717 () Bool)

(assert (=> b!1091248 m!1241717))

(declare-fun m!1241719 () Bool)

(assert (=> b!1091248 m!1241719))

(declare-fun m!1241721 () Bool)

(assert (=> start!93312 m!1241721))

(declare-fun m!1241723 () Bool)

(assert (=> start!93312 m!1241723))

(declare-fun m!1241725 () Bool)

(assert (=> b!1091255 m!1241725))

(declare-fun m!1241727 () Bool)

(assert (=> b!1091260 m!1241727))

(declare-fun m!1241729 () Bool)

(assert (=> b!1091250 m!1241729))

(declare-fun m!1241731 () Bool)

(assert (=> b!1091265 m!1241731))

(assert (=> b!1091265 m!1241731))

(declare-fun m!1241733 () Bool)

(assert (=> b!1091265 m!1241733))

(declare-fun m!1241735 () Bool)

(assert (=> b!1091265 m!1241735))

(declare-fun m!1241737 () Bool)

(assert (=> b!1091249 m!1241737))

(declare-fun m!1241739 () Bool)

(assert (=> b!1091249 m!1241739))

(declare-fun m!1241741 () Bool)

(assert (=> b!1091249 m!1241741))

(declare-fun m!1241743 () Bool)

(assert (=> b!1091249 m!1241743))

(declare-fun m!1241745 () Bool)

(assert (=> b!1091249 m!1241745))

(declare-fun m!1241747 () Bool)

(assert (=> b!1091264 m!1241747))

(assert (=> b!1091264 m!1241747))

(declare-fun m!1241749 () Bool)

(assert (=> b!1091264 m!1241749))

(declare-fun m!1241751 () Bool)

(assert (=> b!1091252 m!1241751))

(assert (=> b!1091252 m!1241751))

(declare-fun m!1241753 () Bool)

(assert (=> b!1091252 m!1241753))

(assert (=> b!1091262 m!1241737))

(assert (=> b!1091262 m!1241737))

(declare-fun m!1241755 () Bool)

(assert (=> b!1091262 m!1241755))

(declare-fun m!1241757 () Bool)

(assert (=> b!1091259 m!1241757))

(assert (=> b!1091259 m!1241719))

(declare-fun m!1241759 () Bool)

(assert (=> b!1091259 m!1241759))

(declare-fun m!1241761 () Bool)

(assert (=> b!1091259 m!1241761))

(assert (=> b!1091259 m!1241719))

(declare-fun m!1241763 () Bool)

(assert (=> b!1091259 m!1241763))

(assert (=> b!1091259 m!1241711))

(declare-fun m!1241765 () Bool)

(assert (=> b!1091259 m!1241765))

(assert (=> b!1091259 m!1241711))

(assert (=> b!1091259 m!1241713))

(declare-fun m!1241767 () Bool)

(assert (=> b!1091259 m!1241767))

(assert (=> b!1091259 m!1241713))

(declare-fun m!1241769 () Bool)

(assert (=> b!1091259 m!1241769))

(declare-fun m!1241771 () Bool)

(assert (=> b!1091259 m!1241771))

(declare-fun m!1241773 () Bool)

(assert (=> b!1091259 m!1241773))

(declare-fun m!1241775 () Bool)

(assert (=> b!1091259 m!1241775))

(declare-fun m!1241777 () Bool)

(assert (=> b!1091259 m!1241777))

(declare-fun m!1241779 () Bool)

(assert (=> b!1091259 m!1241779))

(declare-fun m!1241781 () Bool)

(assert (=> b!1091259 m!1241781))

(declare-fun m!1241783 () Bool)

(assert (=> b!1091257 m!1241783))

(assert (=> b!1091257 m!1241783))

(declare-fun m!1241785 () Bool)

(assert (=> b!1091257 m!1241785))

(assert (=> b!1091257 m!1241735))

(declare-fun m!1241787 () Bool)

(assert (=> b!1091256 m!1241787))

(push 1)

(assert (not b!1091256))

(assert (not b!1091262))

(assert (not b!1091265))

(assert (not b!1091257))

(assert (not start!93312))

(assert (not b!1091253))

(assert (not b!1091259))

(assert (not b!1091260))

(assert (not b!1091277))

(assert (not b!1091248))

(assert (not b!1091249))

(assert (not b!1091276))

(assert (not b!1091251))

(assert (not b!1091250))

(assert (not b!1091252))

(assert (not b!1091255))

(assert (not b!1091264))

(assert (not b!1091275))

(assert (not b!1091274))

(assert (not b!1091272))

(assert (not b!1091273))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!306814 () Bool)

(declare-fun lt!365669 () Int)

(assert (=> d!306814 (>= lt!365669 0)))

(declare-fun e!690638 () Int)

(assert (=> d!306814 (= lt!365669 e!690638)))

(declare-fun c!184964 () Bool)

(assert (=> d!306814 (= c!184964 (is-Nil!10478 (filter!239 lt!365570 lambda!41380)))))

(assert (=> d!306814 (= (size!8099 (filter!239 lt!365570 lambda!41380)) lt!365669)))

(declare-fun b!1091351 () Bool)

(assert (=> b!1091351 (= e!690638 0)))

(declare-fun b!1091352 () Bool)

(assert (=> b!1091352 (= e!690638 (+ 1 (size!8099 (t!102036 (filter!239 lt!365570 lambda!41380)))))))

(assert (= (and d!306814 c!184964) b!1091351))

(assert (= (and d!306814 (not c!184964)) b!1091352))

(declare-fun m!1241883 () Bool)

(assert (=> b!1091352 m!1241883))

(assert (=> b!1091257 d!306814))

(declare-fun b!1091365 () Bool)

(declare-fun e!690646 () List!10494)

(assert (=> b!1091365 (= e!690646 Nil!10478)))

(declare-fun b!1091366 () Bool)

(declare-fun e!690647 () List!10494)

(declare-fun call!80253 () List!10494)

(assert (=> b!1091366 (= e!690647 (Cons!10478 (h!15879 lt!365570) call!80253))))

(declare-fun d!306816 () Bool)

(declare-fun e!690645 () Bool)

(assert (=> d!306816 e!690645))

(declare-fun res!484976 () Bool)

(assert (=> d!306816 (=> (not res!484976) (not e!690645))))

(declare-fun lt!365675 () List!10494)

(assert (=> d!306816 (= res!484976 (<= (size!8099 lt!365675) (size!8099 lt!365570)))))

(assert (=> d!306816 (= lt!365675 e!690646)))

(declare-fun c!184970 () Bool)

(assert (=> d!306816 (= c!184970 (is-Nil!10478 lt!365570))))

(assert (=> d!306816 (= (filter!239 lt!365570 lambda!41380) lt!365675)))

(declare-fun b!1091367 () Bool)

(assert (=> b!1091367 (= e!690646 e!690647)))

(declare-fun c!184969 () Bool)

(declare-fun dynLambda!4571 (Int tuple2!11700) Bool)

(assert (=> b!1091367 (= c!184969 (dynLambda!4571 lambda!41380 (h!15879 lt!365570)))))

(declare-fun b!1091368 () Bool)

(assert (=> b!1091368 (= e!690645 (forall!2337 lt!365675 lambda!41380))))

(declare-fun b!1091369 () Bool)

(assert (=> b!1091369 (= e!690647 call!80253)))

(declare-fun bm!80248 () Bool)

(assert (=> bm!80248 (= call!80253 (filter!239 (t!102036 lt!365570) lambda!41380))))

(declare-fun b!1091370 () Bool)

(declare-fun res!484975 () Bool)

(assert (=> b!1091370 (=> (not res!484975) (not e!690645))))

(declare-fun content!1509 (List!10494) (Set tuple2!11700))

(assert (=> b!1091370 (= res!484975 (set.subset (content!1509 lt!365675) (content!1509 lt!365570)))))

(assert (= (and d!306816 c!184970) b!1091365))

(assert (= (and d!306816 (not c!184970)) b!1091367))

(assert (= (and b!1091367 c!184969) b!1091366))

(assert (= (and b!1091367 (not c!184969)) b!1091369))

(assert (= (or b!1091366 b!1091369) bm!80248))

(assert (= (and d!306816 res!484976) b!1091370))

(assert (= (and b!1091370 res!484975) b!1091368))

(declare-fun b_lambda!30541 () Bool)

(assert (=> (not b_lambda!30541) (not b!1091367)))

(declare-fun m!1241889 () Bool)

(assert (=> b!1091367 m!1241889))

(declare-fun m!1241891 () Bool)

(assert (=> bm!80248 m!1241891))

(declare-fun m!1241893 () Bool)

(assert (=> b!1091368 m!1241893))

(declare-fun m!1241895 () Bool)

(assert (=> d!306816 m!1241895))

(assert (=> d!306816 m!1241735))

(declare-fun m!1241897 () Bool)

(assert (=> b!1091370 m!1241897))

(declare-fun m!1241899 () Bool)

(assert (=> b!1091370 m!1241899))

(assert (=> b!1091257 d!306816))

(declare-fun d!306820 () Bool)

(declare-fun lt!365678 () Int)

(assert (=> d!306820 (>= lt!365678 0)))

(declare-fun e!690650 () Int)

(assert (=> d!306820 (= lt!365678 e!690650)))

(declare-fun c!184971 () Bool)

(assert (=> d!306820 (= c!184971 (is-Nil!10478 lt!365570))))

(assert (=> d!306820 (= (size!8099 lt!365570) lt!365678)))

(declare-fun b!1091373 () Bool)

(assert (=> b!1091373 (= e!690650 0)))

(declare-fun b!1091374 () Bool)

(assert (=> b!1091374 (= e!690650 (+ 1 (size!8099 (t!102036 lt!365570))))))

(assert (= (and d!306820 c!184971) b!1091373))

(assert (= (and d!306820 (not c!184971)) b!1091374))

(declare-fun m!1241901 () Bool)

(assert (=> b!1091374 m!1241901))

(assert (=> b!1091257 d!306820))

(declare-fun d!306822 () Bool)

(declare-fun e!690654 () Bool)

(assert (=> d!306822 e!690654))

(declare-fun res!484982 () Bool)

(assert (=> d!306822 (=> (not res!484982) (not e!690654))))

(declare-fun isBalanced!881 (Conc!3190) Bool)

(declare-fun filter!242 (Conc!3190 Int) Conc!3190)

(assert (=> d!306822 (= res!484982 (isBalanced!881 (filter!242 (c!184945 objs!8) lambda!41382)))))

(declare-fun lt!365682 () BalanceConc!6394)

(assert (=> d!306822 (= lt!365682 (BalanceConc!6395 (filter!242 (c!184945 objs!8) lambda!41382)))))

(assert (=> d!306822 (= (filter!238 objs!8 lambda!41382) lt!365682)))

(declare-fun b!1091378 () Bool)

(assert (=> b!1091378 (= e!690654 (= (list!3753 lt!365682) (filter!239 (list!3753 objs!8) lambda!41382)))))

(assert (= (and d!306822 res!484982) b!1091378))

(declare-fun m!1241905 () Bool)

(assert (=> d!306822 m!1241905))

(assert (=> d!306822 m!1241905))

(declare-fun m!1241907 () Bool)

(assert (=> d!306822 m!1241907))

(declare-fun m!1241909 () Bool)

(assert (=> b!1091378 m!1241909))

(assert (=> b!1091378 m!1241737))

(assert (=> b!1091378 m!1241737))

(declare-fun m!1241911 () Bool)

(assert (=> b!1091378 m!1241911))

(assert (=> b!1091259 d!306822))

(declare-fun d!306826 () Bool)

(declare-fun res!484987 () Bool)

(declare-fun e!690659 () Bool)

(assert (=> d!306826 (=> res!484987 e!690659)))

(assert (=> d!306826 (= res!484987 (is-Nil!10478 lt!365573))))

(assert (=> d!306826 (= (forall!2337 lt!365573 lambda!41379) e!690659)))

(declare-fun b!1091383 () Bool)

(declare-fun e!690660 () Bool)

(assert (=> b!1091383 (= e!690659 e!690660)))

(declare-fun res!484988 () Bool)

(assert (=> b!1091383 (=> (not res!484988) (not e!690660))))

(assert (=> b!1091383 (= res!484988 (dynLambda!4571 lambda!41379 (h!15879 lt!365573)))))

(declare-fun b!1091384 () Bool)

(assert (=> b!1091384 (= e!690660 (forall!2337 (t!102036 lt!365573) lambda!41379))))

(assert (= (and d!306826 (not res!484987)) b!1091383))

(assert (= (and b!1091383 res!484988) b!1091384))

(declare-fun b_lambda!30543 () Bool)

(assert (=> (not b_lambda!30543) (not b!1091383)))

(declare-fun m!1241917 () Bool)

(assert (=> b!1091383 m!1241917))

(declare-fun m!1241919 () Bool)

(assert (=> b!1091384 m!1241919))

(assert (=> b!1091259 d!306826))

(declare-fun d!306830 () Bool)

(declare-fun subseq!137 (List!10494 List!10494) Bool)

(assert (=> d!306830 (subseq!137 (filter!239 lt!365570 lambda!41381) lt!365570)))

(declare-fun lt!365689 () Unit!15888)

(declare-fun choose!7002 (List!10494 Int) Unit!15888)

(assert (=> d!306830 (= lt!365689 (choose!7002 lt!365570 lambda!41381))))

(assert (=> d!306830 (= (filterSubseq!24 lt!365570 lambda!41381) lt!365689)))

(declare-fun bs!257936 () Bool)

(assert (= bs!257936 d!306830))

(declare-fun m!1241925 () Bool)

(assert (=> bs!257936 m!1241925))

(assert (=> bs!257936 m!1241925))

(declare-fun m!1241927 () Bool)

(assert (=> bs!257936 m!1241927))

(declare-fun m!1241929 () Bool)

(assert (=> bs!257936 m!1241929))

(assert (=> b!1091259 d!306830))

(declare-fun d!306834 () Bool)

(declare-fun e!690661 () Bool)

(assert (=> d!306834 e!690661))

(declare-fun res!484989 () Bool)

(assert (=> d!306834 (=> (not res!484989) (not e!690661))))

(assert (=> d!306834 (= res!484989 (isBalanced!881 (filter!242 (c!184945 objs!8) lambda!41380)))))

(declare-fun lt!365690 () BalanceConc!6394)

(assert (=> d!306834 (= lt!365690 (BalanceConc!6395 (filter!242 (c!184945 objs!8) lambda!41380)))))

(assert (=> d!306834 (= (filter!238 objs!8 lambda!41380) lt!365690)))

(declare-fun b!1091385 () Bool)

(assert (=> b!1091385 (= e!690661 (= (list!3753 lt!365690) (filter!239 (list!3753 objs!8) lambda!41380)))))

(assert (= (and d!306834 res!484989) b!1091385))

(declare-fun m!1241931 () Bool)

(assert (=> d!306834 m!1241931))

(assert (=> d!306834 m!1241931))

(declare-fun m!1241933 () Bool)

(assert (=> d!306834 m!1241933))

(declare-fun m!1241935 () Bool)

(assert (=> b!1091385 m!1241935))

(assert (=> b!1091385 m!1241737))

(assert (=> b!1091385 m!1241737))

(declare-fun m!1241937 () Bool)

(assert (=> b!1091385 m!1241937))

(assert (=> b!1091259 d!306834))

(declare-fun d!306836 () Bool)

(declare-fun e!690662 () Bool)

(assert (=> d!306836 e!690662))

(declare-fun res!484990 () Bool)

(assert (=> d!306836 (=> (not res!484990) (not e!690662))))

(assert (=> d!306836 (= res!484990 (isBalanced!881 (filter!242 (c!184945 objs!8) lambda!41381)))))

(declare-fun lt!365691 () BalanceConc!6394)

(assert (=> d!306836 (= lt!365691 (BalanceConc!6395 (filter!242 (c!184945 objs!8) lambda!41381)))))

(assert (=> d!306836 (= (filter!238 objs!8 lambda!41381) lt!365691)))

(declare-fun b!1091386 () Bool)

(assert (=> b!1091386 (= e!690662 (= (list!3753 lt!365691) (filter!239 (list!3753 objs!8) lambda!41381)))))

(assert (= (and d!306836 res!484990) b!1091386))

(declare-fun m!1241939 () Bool)

(assert (=> d!306836 m!1241939))

(assert (=> d!306836 m!1241939))

(declare-fun m!1241941 () Bool)

(assert (=> d!306836 m!1241941))

(declare-fun m!1241943 () Bool)

(assert (=> b!1091386 m!1241943))

(assert (=> b!1091386 m!1241737))

(assert (=> b!1091386 m!1241737))

(declare-fun m!1241945 () Bool)

(assert (=> b!1091386 m!1241945))

(assert (=> b!1091259 d!306836))

(declare-fun d!306838 () Bool)

(assert (=> d!306838 (forall!2337 lt!365555 lambda!41379)))

(declare-fun lt!365694 () Unit!15888)

(declare-fun choose!7003 (List!10494 List!10494 Int) Unit!15888)

(assert (=> d!306838 (= lt!365694 (choose!7003 lt!365555 lt!365570 lambda!41379))))

(assert (=> d!306838 (forall!2337 lt!365570 lambda!41379)))

(assert (=> d!306838 (= (lemmaForallSubseq!32 lt!365555 lt!365570 lambda!41379) lt!365694)))

(declare-fun bs!257938 () Bool)

(assert (= bs!257938 d!306838))

(assert (=> bs!257938 m!1241771))

(declare-fun m!1241949 () Bool)

(assert (=> bs!257938 m!1241949))

(declare-fun m!1241951 () Bool)

(assert (=> bs!257938 m!1241951))

(assert (=> b!1091259 d!306838))

(declare-fun d!306842 () Bool)

(declare-fun lt!365697 () Bool)

(assert (=> d!306842 (= lt!365697 (forall!2337 (list!3753 lt!365563) lambda!41379))))

(declare-fun forall!2340 (Conc!3190 Int) Bool)

(assert (=> d!306842 (= lt!365697 (forall!2340 (c!184945 lt!365563) lambda!41379))))

(assert (=> d!306842 (= (forall!2336 lt!365563 lambda!41379) lt!365697)))

(declare-fun bs!257939 () Bool)

(assert (= bs!257939 d!306842))

(assert (=> bs!257939 m!1241751))

(assert (=> bs!257939 m!1241751))

(declare-fun m!1241953 () Bool)

(assert (=> bs!257939 m!1241953))

(declare-fun m!1241955 () Bool)

(assert (=> bs!257939 m!1241955))

(assert (=> b!1091259 d!306842))

(declare-fun d!306844 () Bool)

(declare-fun list!3755 (Conc!3190) List!10494)

(assert (=> d!306844 (= (list!3753 (filter!238 objs!8 lambda!41381)) (list!3755 (c!184945 (filter!238 objs!8 lambda!41381))))))

(declare-fun bs!257940 () Bool)

(assert (= bs!257940 d!306844))

(declare-fun m!1241957 () Bool)

(assert (=> bs!257940 m!1241957))

(assert (=> b!1091259 d!306844))

(declare-fun d!306846 () Bool)

(declare-fun res!484991 () Bool)

(declare-fun e!690663 () Bool)

(assert (=> d!306846 (=> res!484991 e!690663)))

(assert (=> d!306846 (= res!484991 (is-Nil!10478 lt!365564))))

(assert (=> d!306846 (= (forall!2337 lt!365564 lambda!41379) e!690663)))

(declare-fun b!1091387 () Bool)

(declare-fun e!690664 () Bool)

(assert (=> b!1091387 (= e!690663 e!690664)))

(declare-fun res!484992 () Bool)

(assert (=> b!1091387 (=> (not res!484992) (not e!690664))))

(assert (=> b!1091387 (= res!484992 (dynLambda!4571 lambda!41379 (h!15879 lt!365564)))))

(declare-fun b!1091388 () Bool)

(assert (=> b!1091388 (= e!690664 (forall!2337 (t!102036 lt!365564) lambda!41379))))

(assert (= (and d!306846 (not res!484991)) b!1091387))

(assert (= (and b!1091387 res!484992) b!1091388))

(declare-fun b_lambda!30545 () Bool)

(assert (=> (not b_lambda!30545) (not b!1091387)))

(declare-fun m!1241959 () Bool)

(assert (=> b!1091387 m!1241959))

(declare-fun m!1241961 () Bool)

(assert (=> b!1091388 m!1241961))

(assert (=> b!1091259 d!306846))

(declare-fun d!306848 () Bool)

(declare-fun res!484993 () Bool)

(declare-fun e!690665 () Bool)

(assert (=> d!306848 (=> res!484993 e!690665)))

(assert (=> d!306848 (= res!484993 (is-Nil!10478 lt!365555))))

(assert (=> d!306848 (= (forall!2337 lt!365555 lambda!41379) e!690665)))

(declare-fun b!1091389 () Bool)

(declare-fun e!690666 () Bool)

(assert (=> b!1091389 (= e!690665 e!690666)))

(declare-fun res!484994 () Bool)

(assert (=> b!1091389 (=> (not res!484994) (not e!690666))))

(assert (=> b!1091389 (= res!484994 (dynLambda!4571 lambda!41379 (h!15879 lt!365555)))))

(declare-fun b!1091390 () Bool)

(assert (=> b!1091390 (= e!690666 (forall!2337 (t!102036 lt!365555) lambda!41379))))

(assert (= (and d!306848 (not res!484993)) b!1091389))

(assert (= (and b!1091389 res!484994) b!1091390))

(declare-fun b_lambda!30547 () Bool)

(assert (=> (not b_lambda!30547) (not b!1091389)))

(declare-fun m!1241963 () Bool)

(assert (=> b!1091389 m!1241963))

(declare-fun m!1241965 () Bool)

(assert (=> b!1091390 m!1241965))

(assert (=> b!1091259 d!306848))

(declare-fun d!306850 () Bool)

(assert (=> d!306850 (subseq!137 (filter!239 lt!365570 lambda!41380) lt!365570)))

(declare-fun lt!365698 () Unit!15888)

(assert (=> d!306850 (= lt!365698 (choose!7002 lt!365570 lambda!41380))))

(assert (=> d!306850 (= (filterSubseq!24 lt!365570 lambda!41380) lt!365698)))

(declare-fun bs!257941 () Bool)

(assert (= bs!257941 d!306850))

(assert (=> bs!257941 m!1241783))

(assert (=> bs!257941 m!1241783))

(declare-fun m!1241967 () Bool)

(assert (=> bs!257941 m!1241967))

(declare-fun m!1241969 () Bool)

(assert (=> bs!257941 m!1241969))

(assert (=> b!1091259 d!306850))

(declare-fun d!306852 () Bool)

(assert (=> d!306852 (subseq!137 (filter!239 lt!365570 lambda!41382) lt!365570)))

(declare-fun lt!365699 () Unit!15888)

(assert (=> d!306852 (= lt!365699 (choose!7002 lt!365570 lambda!41382))))

(assert (=> d!306852 (= (filterSubseq!24 lt!365570 lambda!41382) lt!365699)))

(declare-fun bs!257942 () Bool)

(assert (= bs!257942 d!306852))

(assert (=> bs!257942 m!1241731))

(assert (=> bs!257942 m!1241731))

(declare-fun m!1241971 () Bool)

(assert (=> bs!257942 m!1241971))

(declare-fun m!1241973 () Bool)

(assert (=> bs!257942 m!1241973))

(assert (=> b!1091259 d!306852))

(declare-fun d!306854 () Bool)

(assert (=> d!306854 (forall!2337 lt!365564 lambda!41379)))

(declare-fun lt!365700 () Unit!15888)

(assert (=> d!306854 (= lt!365700 (choose!7003 lt!365564 lt!365570 lambda!41379))))

(assert (=> d!306854 (forall!2337 lt!365570 lambda!41379)))

(assert (=> d!306854 (= (lemmaForallSubseq!32 lt!365564 lt!365570 lambda!41379) lt!365700)))

(declare-fun bs!257943 () Bool)

(assert (= bs!257943 d!306854))

(assert (=> bs!257943 m!1241775))

(declare-fun m!1241975 () Bool)

(assert (=> bs!257943 m!1241975))

(assert (=> bs!257943 m!1241951))

(assert (=> b!1091259 d!306854))

(declare-fun d!306856 () Bool)

(assert (=> d!306856 (= (list!3753 (filter!238 objs!8 lambda!41382)) (list!3755 (c!184945 (filter!238 objs!8 lambda!41382))))))

(declare-fun bs!257944 () Bool)

(assert (= bs!257944 d!306856))

(declare-fun m!1241977 () Bool)

(assert (=> bs!257944 m!1241977))

(assert (=> b!1091259 d!306856))

(declare-fun d!306858 () Bool)

(assert (=> d!306858 (= (list!3753 (filter!238 objs!8 lambda!41380)) (list!3755 (c!184945 (filter!238 objs!8 lambda!41380))))))

(declare-fun bs!257945 () Bool)

(assert (= bs!257945 d!306858))

(declare-fun m!1241979 () Bool)

(assert (=> bs!257945 m!1241979))

(assert (=> b!1091259 d!306858))

(declare-fun d!306860 () Bool)

(assert (=> d!306860 (forall!2337 lt!365573 lambda!41379)))

(declare-fun lt!365701 () Unit!15888)

(assert (=> d!306860 (= lt!365701 (choose!7003 lt!365573 lt!365570 lambda!41379))))

(assert (=> d!306860 (forall!2337 lt!365570 lambda!41379)))

(assert (=> d!306860 (= (lemmaForallSubseq!32 lt!365573 lt!365570 lambda!41379) lt!365701)))

(declare-fun bs!257946 () Bool)

(assert (= bs!257946 d!306860))

(assert (=> bs!257946 m!1241773))

(declare-fun m!1241981 () Bool)

(assert (=> bs!257946 m!1241981))

(assert (=> bs!257946 m!1241951))

(assert (=> b!1091259 d!306860))

(assert (=> b!1091248 d!306822))

(assert (=> b!1091248 d!306834))

(assert (=> b!1091248 d!306836))

(declare-fun d!306862 () Bool)

(declare-fun lt!365704 () Bool)

(declare-fun contains!1765 (List!10494 tuple2!11700) Bool)

(assert (=> d!306862 (= lt!365704 (contains!1765 (list!3753 objs!8) lt!365557))))

(declare-fun contains!1766 (Conc!3190 tuple2!11700) Bool)

(assert (=> d!306862 (= lt!365704 (contains!1766 (c!184945 objs!8) lt!365557))))

(assert (=> d!306862 (= (contains!1763 objs!8 lt!365557) lt!365704)))

(declare-fun bs!257947 () Bool)

(assert (= bs!257947 d!306862))

(assert (=> bs!257947 m!1241737))

(assert (=> bs!257947 m!1241737))

(declare-fun m!1241983 () Bool)

(assert (=> bs!257947 m!1241983))

(declare-fun m!1241985 () Bool)

(assert (=> bs!257947 m!1241985))

(assert (=> b!1091248 d!306862))

(declare-fun d!306864 () Bool)

(declare-fun lt!365709 () tuple2!11700)

(declare-fun apply!2044 (List!10494 Int) tuple2!11700)

(assert (=> d!306864 (= lt!365709 (apply!2044 (list!3753 objs!8) (ite (>= lt!365568 0) (div lt!365568 2) (- (div (- lt!365568) 2)))))))

(declare-fun apply!2045 (Conc!3190 Int) tuple2!11700)

(assert (=> d!306864 (= lt!365709 (apply!2045 (c!184945 objs!8) (ite (>= lt!365568 0) (div lt!365568 2) (- (div (- lt!365568) 2)))))))

(declare-fun e!690671 () Bool)

(assert (=> d!306864 e!690671))

(declare-fun res!484999 () Bool)

(assert (=> d!306864 (=> (not res!484999) (not e!690671))))

(assert (=> d!306864 (= res!484999 (<= 0 (ite (>= lt!365568 0) (div lt!365568 2) (- (div (- lt!365568) 2)))))))

(assert (=> d!306864 (= (apply!2042 objs!8 (ite (>= lt!365568 0) (div lt!365568 2) (- (div (- lt!365568) 2)))) lt!365709)))

(declare-fun b!1091395 () Bool)

(assert (=> b!1091395 (= e!690671 (< (ite (>= lt!365568 0) (div lt!365568 2) (- (div (- lt!365568) 2))) (size!8098 objs!8)))))

(assert (= (and d!306864 res!484999) b!1091395))

(assert (=> d!306864 m!1241737))

(assert (=> d!306864 m!1241737))

(declare-fun m!1241987 () Bool)

(assert (=> d!306864 m!1241987))

(declare-fun m!1241989 () Bool)

(assert (=> d!306864 m!1241989))

(assert (=> b!1091395 m!1241709))

(assert (=> b!1091248 d!306864))

(declare-fun d!306866 () Bool)

(declare-fun lt!365711 () Bool)

(assert (=> d!306866 (= lt!365711 (contains!1765 (list!3753 lt!365574) lt!365557))))

(assert (=> d!306866 (= lt!365711 (contains!1766 (c!184945 lt!365574) lt!365557))))

(assert (=> d!306866 (= (contains!1763 lt!365574 lt!365557) lt!365711)))

(declare-fun bs!257948 () Bool)

(assert (= bs!257948 d!306866))

(assert (=> bs!257948 m!1241747))

(assert (=> bs!257948 m!1241747))

(declare-fun m!1241991 () Bool)

(assert (=> bs!257948 m!1241991))

(declare-fun m!1241993 () Bool)

(assert (=> bs!257948 m!1241993))

(assert (=> b!1091250 d!306866))

(declare-fun d!306868 () Bool)

(assert (=> d!306868 (= (list!3753 objs!8) (list!3755 (c!184945 objs!8)))))

(declare-fun bs!257949 () Bool)

(assert (= bs!257949 d!306868))

(declare-fun m!1241995 () Bool)

(assert (=> bs!257949 m!1241995))

(assert (=> b!1091249 d!306868))

(declare-fun d!306870 () Bool)

(assert (=> d!306870 (= (isEmpty!6657 lt!365570) (is-Nil!10478 lt!365570))))

(assert (=> b!1091249 d!306870))

(declare-fun d!306872 () Bool)

(declare-fun e!690675 () Bool)

(assert (=> d!306872 e!690675))

(declare-fun res!485003 () Bool)

(assert (=> d!306872 (=> res!485003 e!690675)))

(assert (=> d!306872 (= res!485003 (isEmpty!6657 lt!365570))))

(declare-fun lt!365714 () Unit!15888)

(declare-fun choose!7004 (List!10494 Int) Unit!15888)

(assert (=> d!306872 (= lt!365714 (choose!7004 lt!365570 lambda!41380))))

(assert (=> d!306872 (not (forall!2337 lt!365570 lambda!41380))))

(assert (=> d!306872 (= (lemmaNotForallFilterShorter!30 lt!365570 lambda!41380) lt!365714)))

(declare-fun b!1091399 () Bool)

(assert (=> b!1091399 (= e!690675 (< (size!8099 (filter!239 lt!365570 lambda!41380)) (size!8099 lt!365570)))))

(assert (= (and d!306872 (not res!485003)) b!1091399))

(assert (=> d!306872 m!1241739))

(declare-fun m!1242005 () Bool)

(assert (=> d!306872 m!1242005))

(declare-fun m!1242007 () Bool)

(assert (=> d!306872 m!1242007))

(assert (=> b!1091399 m!1241783))

(assert (=> b!1091399 m!1241783))

(assert (=> b!1091399 m!1241785))

(assert (=> b!1091399 m!1241735))

(assert (=> b!1091249 d!306872))

(declare-fun d!306876 () Bool)

(declare-fun lt!365720 () Int)

(assert (=> d!306876 (= lt!365720 (size!8099 (list!3753 lt!365563)))))

(declare-fun size!8103 (Conc!3190) Int)

(assert (=> d!306876 (= lt!365720 (size!8103 (c!184945 lt!365563)))))

(assert (=> d!306876 (= (size!8098 lt!365563) lt!365720)))

(declare-fun bs!257951 () Bool)

(assert (= bs!257951 d!306876))

(assert (=> bs!257951 m!1241751))

(assert (=> bs!257951 m!1241751))

(declare-fun m!1242013 () Bool)

(assert (=> bs!257951 m!1242013))

(declare-fun m!1242015 () Bool)

(assert (=> bs!257951 m!1242015))

(assert (=> b!1091249 d!306876))

(declare-fun d!306880 () Bool)

(declare-fun lt!365721 () Bool)

(assert (=> d!306880 (= lt!365721 (forall!2337 (list!3753 objs!8) lambda!41380))))

(assert (=> d!306880 (= lt!365721 (forall!2340 (c!184945 objs!8) lambda!41380))))

(assert (=> d!306880 (= (forall!2336 objs!8 lambda!41380) lt!365721)))

(declare-fun bs!257952 () Bool)

(assert (= bs!257952 d!306880))

(assert (=> bs!257952 m!1241737))

(assert (=> bs!257952 m!1241737))

(declare-fun m!1242017 () Bool)

(assert (=> bs!257952 m!1242017))

(declare-fun m!1242019 () Bool)

(assert (=> bs!257952 m!1242019))

(assert (=> b!1091249 d!306880))

(declare-fun d!306882 () Bool)

(declare-fun c!184976 () Bool)

(assert (=> d!306882 (= c!184976 (is-Node!3190 (c!184945 objs!8)))))

(declare-fun e!690680 () Bool)

(assert (=> d!306882 (= (inv!13410 (c!184945 objs!8)) e!690680)))

(declare-fun b!1091406 () Bool)

(declare-fun inv!13413 (Conc!3190) Bool)

(assert (=> b!1091406 (= e!690680 (inv!13413 (c!184945 objs!8)))))

(declare-fun b!1091407 () Bool)

(declare-fun e!690681 () Bool)

(assert (=> b!1091407 (= e!690680 e!690681)))

(declare-fun res!485006 () Bool)

(assert (=> b!1091407 (= res!485006 (not (is-Leaf!5090 (c!184945 objs!8))))))

(assert (=> b!1091407 (=> res!485006 e!690681)))

(declare-fun b!1091408 () Bool)

(declare-fun inv!13414 (Conc!3190) Bool)

(assert (=> b!1091408 (= e!690681 (inv!13414 (c!184945 objs!8)))))

(assert (= (and d!306882 c!184976) b!1091406))

(assert (= (and d!306882 (not c!184976)) b!1091407))

(assert (= (and b!1091407 (not res!485006)) b!1091408))

(declare-fun m!1242029 () Bool)

(assert (=> b!1091406 m!1242029))

(declare-fun m!1242031 () Bool)

(assert (=> b!1091408 m!1242031))

(assert (=> b!1091260 d!306882))

(declare-fun d!306888 () Bool)

(declare-fun lt!365723 () Int)

(assert (=> d!306888 (= lt!365723 (size!8099 (list!3753 objs!8)))))

(assert (=> d!306888 (= lt!365723 (size!8103 (c!184945 objs!8)))))

(assert (=> d!306888 (= (size!8098 objs!8) lt!365723)))

(declare-fun bs!257955 () Bool)

(assert (= bs!257955 d!306888))

(assert (=> bs!257955 m!1241737))

(assert (=> bs!257955 m!1241737))

(declare-fun m!1242033 () Bool)

(assert (=> bs!257955 m!1242033))

(declare-fun m!1242035 () Bool)

(assert (=> bs!257955 m!1242035))

(assert (=> b!1091251 d!306888))

(declare-fun d!306890 () Bool)

(assert (=> d!306890 (dynLambda!4571 lambda!41380 lt!365557)))

(declare-fun lt!365726 () Unit!15888)

(declare-fun choose!7006 (List!10494 Int tuple2!11700) Unit!15888)

(assert (=> d!306890 (= lt!365726 (choose!7006 (list!3753 objs!8) lambda!41380 lt!365557))))

(declare-fun e!690688 () Bool)

(assert (=> d!306890 e!690688))

(declare-fun res!485013 () Bool)

(assert (=> d!306890 (=> (not res!485013) (not e!690688))))

(assert (=> d!306890 (= res!485013 (forall!2337 (list!3753 objs!8) lambda!41380))))

(assert (=> d!306890 (= (forallContained!489 (list!3753 objs!8) lambda!41380 lt!365557) lt!365726)))

(declare-fun b!1091415 () Bool)

(assert (=> b!1091415 (= e!690688 (contains!1765 (list!3753 objs!8) lt!365557))))

(assert (= (and d!306890 res!485013) b!1091415))

(declare-fun b_lambda!30549 () Bool)

(assert (=> (not b_lambda!30549) (not d!306890)))

(declare-fun m!1242037 () Bool)

(assert (=> d!306890 m!1242037))

(assert (=> d!306890 m!1241737))

(declare-fun m!1242039 () Bool)

(assert (=> d!306890 m!1242039))

(assert (=> d!306890 m!1241737))

(assert (=> d!306890 m!1242017))

(assert (=> b!1091415 m!1241737))

(assert (=> b!1091415 m!1241983))

(assert (=> b!1091262 d!306890))

(assert (=> b!1091262 d!306868))

(declare-fun d!306892 () Bool)

(declare-fun lt!365727 () Bool)

(assert (=> d!306892 (= lt!365727 (forall!2337 (list!3753 objs!8) lambda!41379))))

(assert (=> d!306892 (= lt!365727 (forall!2340 (c!184945 objs!8) lambda!41379))))

(assert (=> d!306892 (= (forall!2336 objs!8 lambda!41379) lt!365727)))

(declare-fun bs!257956 () Bool)

(assert (= bs!257956 d!306892))

(assert (=> bs!257956 m!1241737))

(assert (=> bs!257956 m!1241737))

(declare-fun m!1242041 () Bool)

(assert (=> bs!257956 m!1242041))

(declare-fun m!1242043 () Bool)

(assert (=> bs!257956 m!1242043))

(assert (=> start!93312 d!306892))

(declare-fun d!306894 () Bool)

(assert (=> d!306894 (= (inv!13409 objs!8) (isBalanced!881 (c!184945 objs!8)))))

(declare-fun bs!257959 () Bool)

(assert (= bs!257959 d!306894))

(declare-fun m!1242053 () Bool)

(assert (=> bs!257959 m!1242053))

(assert (=> start!93312 d!306894))

(declare-fun d!306902 () Bool)

(assert (=> d!306902 (dynLambda!4571 lambda!41380 lt!365557)))

(declare-fun lt!365728 () Unit!15888)

(assert (=> d!306902 (= lt!365728 (choose!7006 (list!3753 lt!365563) lambda!41380 lt!365557))))

(declare-fun e!690691 () Bool)

(assert (=> d!306902 e!690691))

(declare-fun res!485016 () Bool)

(assert (=> d!306902 (=> (not res!485016) (not e!690691))))

(assert (=> d!306902 (= res!485016 (forall!2337 (list!3753 lt!365563) lambda!41380))))

(assert (=> d!306902 (= (forallContained!489 (list!3753 lt!365563) lambda!41380 lt!365557) lt!365728)))

(declare-fun b!1091418 () Bool)

(assert (=> b!1091418 (= e!690691 (contains!1765 (list!3753 lt!365563) lt!365557))))

(assert (= (and d!306902 res!485016) b!1091418))

(declare-fun b_lambda!30553 () Bool)

(assert (=> (not b_lambda!30553) (not d!306902)))

(assert (=> d!306902 m!1242037))

(assert (=> d!306902 m!1241751))

(declare-fun m!1242055 () Bool)

(assert (=> d!306902 m!1242055))

(assert (=> d!306902 m!1241751))

(declare-fun m!1242057 () Bool)

(assert (=> d!306902 m!1242057))

(assert (=> b!1091418 m!1241751))

(declare-fun m!1242059 () Bool)

(assert (=> b!1091418 m!1242059))

(assert (=> b!1091252 d!306902))

(declare-fun d!306904 () Bool)

(assert (=> d!306904 (= (list!3753 lt!365563) (list!3755 (c!184945 lt!365563)))))

(declare-fun bs!257960 () Bool)

(assert (= bs!257960 d!306904))

(declare-fun m!1242061 () Bool)

(assert (=> bs!257960 m!1242061))

(assert (=> b!1091252 d!306904))

(declare-fun d!306906 () Bool)

(declare-fun lt!365729 () Int)

(assert (=> d!306906 (= lt!365729 (size!8099 (list!3753 lt!365574)))))

(assert (=> d!306906 (= lt!365729 (size!8103 (c!184945 lt!365574)))))

(assert (=> d!306906 (= (size!8098 lt!365574) lt!365729)))

(declare-fun bs!257961 () Bool)

(assert (= bs!257961 d!306906))

(assert (=> bs!257961 m!1241747))

(assert (=> bs!257961 m!1241747))

(declare-fun m!1242063 () Bool)

(assert (=> bs!257961 m!1242063))

(declare-fun m!1242065 () Bool)

(assert (=> bs!257961 m!1242065))

(assert (=> b!1091253 d!306906))

(declare-fun d!306908 () Bool)

(declare-fun e!690692 () Bool)

(assert (=> d!306908 e!690692))

(declare-fun res!485017 () Bool)

(assert (=> d!306908 (=> res!485017 e!690692)))

(assert (=> d!306908 (= res!485017 (isEmpty!6657 lt!365570))))

(declare-fun lt!365730 () Unit!15888)

(assert (=> d!306908 (= lt!365730 (choose!7004 lt!365570 lambda!41382))))

(assert (=> d!306908 (not (forall!2337 lt!365570 lambda!41382))))

(assert (=> d!306908 (= (lemmaNotForallFilterShorter!30 lt!365570 lambda!41382) lt!365730)))

(declare-fun b!1091419 () Bool)

(assert (=> b!1091419 (= e!690692 (< (size!8099 (filter!239 lt!365570 lambda!41382)) (size!8099 lt!365570)))))

(assert (= (and d!306908 (not res!485017)) b!1091419))

(assert (=> d!306908 m!1241739))

(declare-fun m!1242067 () Bool)

(assert (=> d!306908 m!1242067))

(declare-fun m!1242069 () Bool)

(assert (=> d!306908 m!1242069))

(assert (=> b!1091419 m!1241731))

(assert (=> b!1091419 m!1241731))

(assert (=> b!1091419 m!1241733))

(assert (=> b!1091419 m!1241735))

(assert (=> b!1091253 d!306908))

(declare-fun d!306910 () Bool)

(declare-fun lt!365731 () Bool)

(assert (=> d!306910 (= lt!365731 (forall!2337 (list!3753 objs!8) lambda!41382))))

(assert (=> d!306910 (= lt!365731 (forall!2340 (c!184945 objs!8) lambda!41382))))

(assert (=> d!306910 (= (forall!2336 objs!8 lambda!41382) lt!365731)))

(declare-fun bs!257962 () Bool)

(assert (= bs!257962 d!306910))

(assert (=> bs!257962 m!1241737))

(assert (=> bs!257962 m!1241737))

(declare-fun m!1242071 () Bool)

(assert (=> bs!257962 m!1242071))

(declare-fun m!1242073 () Bool)

(assert (=> bs!257962 m!1242073))

(assert (=> b!1091253 d!306910))

(declare-fun d!306912 () Bool)

(assert (=> d!306912 (dynLambda!4571 lambda!41382 lt!365557)))

(declare-fun lt!365732 () Unit!15888)

(assert (=> d!306912 (= lt!365732 (choose!7006 (list!3753 lt!365574) lambda!41382 lt!365557))))

(declare-fun e!690693 () Bool)

(assert (=> d!306912 e!690693))

(declare-fun res!485018 () Bool)

(assert (=> d!306912 (=> (not res!485018) (not e!690693))))

(assert (=> d!306912 (= res!485018 (forall!2337 (list!3753 lt!365574) lambda!41382))))

(assert (=> d!306912 (= (forallContained!489 (list!3753 lt!365574) lambda!41382 lt!365557) lt!365732)))

(declare-fun b!1091420 () Bool)

(assert (=> b!1091420 (= e!690693 (contains!1765 (list!3753 lt!365574) lt!365557))))

(assert (= (and d!306912 res!485018) b!1091420))

(declare-fun b_lambda!30555 () Bool)

(assert (=> (not b_lambda!30555) (not d!306912)))

(declare-fun m!1242075 () Bool)

(assert (=> d!306912 m!1242075))

(assert (=> d!306912 m!1241747))

(declare-fun m!1242077 () Bool)

(assert (=> d!306912 m!1242077))

(assert (=> d!306912 m!1241747))

(declare-fun m!1242079 () Bool)

(assert (=> d!306912 m!1242079))

(assert (=> b!1091420 m!1241747))

(assert (=> b!1091420 m!1241991))

(assert (=> b!1091264 d!306912))

(declare-fun d!306914 () Bool)

(assert (=> d!306914 (= (list!3753 lt!365574) (list!3755 (c!184945 lt!365574)))))

(declare-fun bs!257963 () Bool)

(assert (= bs!257963 d!306914))

(declare-fun m!1242081 () Bool)

(assert (=> bs!257963 m!1242081))

(assert (=> b!1091264 d!306914))

(declare-fun d!306916 () Bool)

(assert (=> d!306916 (dynLambda!4571 lambda!41382 lt!365557)))

(declare-fun lt!365733 () Unit!15888)

(assert (=> d!306916 (= lt!365733 (choose!7006 lt!365570 lambda!41382 lt!365557))))

(declare-fun e!690694 () Bool)

(assert (=> d!306916 e!690694))

(declare-fun res!485019 () Bool)

(assert (=> d!306916 (=> (not res!485019) (not e!690694))))

(assert (=> d!306916 (= res!485019 (forall!2337 lt!365570 lambda!41382))))

(assert (=> d!306916 (= (forallContained!489 lt!365570 lambda!41382 lt!365557) lt!365733)))

(declare-fun b!1091421 () Bool)

(assert (=> b!1091421 (= e!690694 (contains!1765 lt!365570 lt!365557))))

(assert (= (and d!306916 res!485019) b!1091421))

(declare-fun b_lambda!30557 () Bool)

(assert (=> (not b_lambda!30557) (not d!306916)))

(assert (=> d!306916 m!1242075))

(declare-fun m!1242083 () Bool)

(assert (=> d!306916 m!1242083))

(assert (=> d!306916 m!1242069))

(declare-fun m!1242085 () Bool)

(assert (=> b!1091421 m!1242085))

(assert (=> b!1091255 d!306916))

(declare-fun d!306918 () Bool)

(declare-fun lt!365736 () Int)

(assert (=> d!306918 (>= lt!365736 0)))

(declare-fun e!690695 () Int)

(assert (=> d!306918 (= lt!365736 e!690695)))

(declare-fun c!184977 () Bool)

(assert (=> d!306918 (= c!184977 (is-Nil!10478 (filter!239 lt!365570 lambda!41382)))))

(assert (=> d!306918 (= (size!8099 (filter!239 lt!365570 lambda!41382)) lt!365736)))

(declare-fun b!1091422 () Bool)

(assert (=> b!1091422 (= e!690695 0)))

(declare-fun b!1091423 () Bool)

(assert (=> b!1091423 (= e!690695 (+ 1 (size!8099 (t!102036 (filter!239 lt!365570 lambda!41382)))))))

(assert (= (and d!306918 c!184977) b!1091422))

(assert (= (and d!306918 (not c!184977)) b!1091423))

(declare-fun m!1242087 () Bool)

(assert (=> b!1091423 m!1242087))

(assert (=> b!1091265 d!306918))

(declare-fun b!1091424 () Bool)

(declare-fun e!690697 () List!10494)

(assert (=> b!1091424 (= e!690697 Nil!10478)))

(declare-fun b!1091425 () Bool)

(declare-fun e!690698 () List!10494)

(declare-fun call!80254 () List!10494)

(assert (=> b!1091425 (= e!690698 (Cons!10478 (h!15879 lt!365570) call!80254))))

(declare-fun d!306920 () Bool)

(declare-fun e!690696 () Bool)

(assert (=> d!306920 e!690696))

(declare-fun res!485021 () Bool)

(assert (=> d!306920 (=> (not res!485021) (not e!690696))))

(declare-fun lt!365737 () List!10494)

(assert (=> d!306920 (= res!485021 (<= (size!8099 lt!365737) (size!8099 lt!365570)))))

(assert (=> d!306920 (= lt!365737 e!690697)))

(declare-fun c!184979 () Bool)

(assert (=> d!306920 (= c!184979 (is-Nil!10478 lt!365570))))

(assert (=> d!306920 (= (filter!239 lt!365570 lambda!41382) lt!365737)))

(declare-fun b!1091426 () Bool)

(assert (=> b!1091426 (= e!690697 e!690698)))

(declare-fun c!184978 () Bool)

(assert (=> b!1091426 (= c!184978 (dynLambda!4571 lambda!41382 (h!15879 lt!365570)))))

(declare-fun b!1091427 () Bool)

(assert (=> b!1091427 (= e!690696 (forall!2337 lt!365737 lambda!41382))))

(declare-fun b!1091428 () Bool)

(assert (=> b!1091428 (= e!690698 call!80254)))

(declare-fun bm!80249 () Bool)

(assert (=> bm!80249 (= call!80254 (filter!239 (t!102036 lt!365570) lambda!41382))))

(declare-fun b!1091429 () Bool)

(declare-fun res!485020 () Bool)

(assert (=> b!1091429 (=> (not res!485020) (not e!690696))))

(assert (=> b!1091429 (= res!485020 (set.subset (content!1509 lt!365737) (content!1509 lt!365570)))))

(assert (= (and d!306920 c!184979) b!1091424))

(assert (= (and d!306920 (not c!184979)) b!1091426))

(assert (= (and b!1091426 c!184978) b!1091425))

(assert (= (and b!1091426 (not c!184978)) b!1091428))

(assert (= (or b!1091425 b!1091428) bm!80249))

(assert (= (and d!306920 res!485021) b!1091429))

(assert (= (and b!1091429 res!485020) b!1091427))

(declare-fun b_lambda!30559 () Bool)

(assert (=> (not b_lambda!30559) (not b!1091426)))

(declare-fun m!1242089 () Bool)

(assert (=> b!1091426 m!1242089))

(declare-fun m!1242091 () Bool)

(assert (=> bm!80249 m!1242091))

(declare-fun m!1242093 () Bool)

(assert (=> b!1091427 m!1242093))

(declare-fun m!1242095 () Bool)

(assert (=> d!306920 m!1242095))

(assert (=> d!306920 m!1241735))

(declare-fun m!1242097 () Bool)

(assert (=> b!1091429 m!1242097))

(assert (=> b!1091429 m!1241899))

(assert (=> b!1091265 d!306920))

(assert (=> b!1091265 d!306820))

(declare-fun d!306922 () Bool)

(declare-fun lt!365738 () Bool)

(assert (=> d!306922 (= lt!365738 (contains!1765 (list!3753 lt!365563) lt!365557))))

(assert (=> d!306922 (= lt!365738 (contains!1766 (c!184945 lt!365563) lt!365557))))

(assert (=> d!306922 (= (contains!1763 lt!365563 lt!365557) lt!365738)))

(declare-fun bs!257964 () Bool)

(assert (= bs!257964 d!306922))

(assert (=> bs!257964 m!1241751))

(assert (=> bs!257964 m!1241751))

(assert (=> bs!257964 m!1242059))

(declare-fun m!1242099 () Bool)

(assert (=> bs!257964 m!1242099))

(assert (=> b!1091256 d!306922))

(declare-fun b!1091438 () Bool)

(declare-fun e!690703 () Bool)

(assert (=> b!1091438 (= e!690703 true)))

(declare-fun b!1091440 () Bool)

(declare-fun e!690704 () Bool)

(assert (=> b!1091440 (= e!690704 true)))

(declare-fun b!1091439 () Bool)

(assert (=> b!1091439 (= e!690703 e!690704)))

(assert (=> b!1091275 e!690703))

(assert (= (and b!1091275 (is-Node!3189 (c!184944 (tokens!1346 (_2!6676 lt!365557))))) b!1091438))

(assert (= b!1091439 b!1091440))

(assert (= (and b!1091275 (is-Leaf!5089 (c!184944 (tokens!1346 (_2!6676 lt!365557))))) b!1091439))

(declare-fun b!1091441 () Bool)

(declare-fun e!690705 () Bool)

(assert (=> b!1091441 (= e!690705 true)))

(declare-fun b!1091443 () Bool)

(declare-fun e!690706 () Bool)

(assert (=> b!1091443 (= e!690706 true)))

(declare-fun b!1091442 () Bool)

(assert (=> b!1091442 (= e!690705 e!690706)))

(assert (=> b!1091273 e!690705))

(assert (= (and b!1091273 (is-Node!3189 (c!184944 (tokens!1346 (_2!6676 lt!365557))))) b!1091441))

(assert (= b!1091442 b!1091443))

(assert (= (and b!1091273 (is-Leaf!5089 (c!184944 (tokens!1346 (_2!6676 lt!365557))))) b!1091442))

(declare-fun b!1091444 () Bool)

(declare-fun e!690707 () Bool)

(assert (=> b!1091444 (= e!690707 true)))

(declare-fun b!1091446 () Bool)

(declare-fun e!690708 () Bool)

(assert (=> b!1091446 (= e!690708 true)))

(declare-fun b!1091445 () Bool)

(assert (=> b!1091445 (= e!690707 e!690708)))

(assert (=> b!1091277 e!690707))

(assert (= (and b!1091277 (is-Node!3189 (c!184944 (tokens!1346 (_2!6676 lt!365557))))) b!1091444))

(assert (= b!1091445 b!1091446))

(assert (= (and b!1091277 (is-Leaf!5089 (c!184944 (tokens!1346 (_2!6676 lt!365557))))) b!1091445))

(declare-fun b!1091457 () Bool)

(declare-fun tp!326470 () Bool)

(declare-fun tp!326469 () Bool)

(declare-fun e!690715 () Bool)

(assert (=> b!1091457 (= e!690715 (and (inv!13410 (left!8989 (c!184945 objs!8))) tp!326470 (inv!13410 (right!9319 (c!184945 objs!8))) tp!326469))))

(declare-fun b!1091459 () Bool)

(declare-fun e!690716 () Bool)

(declare-fun tp!326471 () Bool)

(assert (=> b!1091459 (= e!690716 tp!326471)))

(declare-fun b!1091458 () Bool)

(declare-fun inv!13415 (IArray!6385) Bool)

(assert (=> b!1091458 (= e!690715 (and (inv!13415 (xs!5883 (c!184945 objs!8))) e!690716))))

(assert (=> b!1091260 (= tp!326459 (and (inv!13410 (c!184945 objs!8)) e!690715))))

(assert (= (and b!1091260 (is-Node!3190 (c!184945 objs!8))) b!1091457))

(assert (= b!1091458 b!1091459))

(assert (= (and b!1091260 (is-Leaf!5090 (c!184945 objs!8))) b!1091458))

(declare-fun m!1242117 () Bool)

(assert (=> b!1091457 m!1242117))

(declare-fun m!1242119 () Bool)

(assert (=> b!1091457 m!1242119))

(declare-fun m!1242121 () Bool)

(assert (=> b!1091458 m!1242121))

(assert (=> b!1091260 m!1241727))

(declare-fun b!1091472 () Bool)

(declare-fun e!690727 () Bool)

(assert (=> b!1091472 (= e!690727 true)))

(declare-fun b!1091471 () Bool)

(declare-fun e!690726 () Bool)

(assert (=> b!1091471 (= e!690726 e!690727)))

(declare-fun b!1091470 () Bool)

(declare-fun e!690725 () Bool)

(assert (=> b!1091470 (= e!690725 e!690726)))

(assert (=> b!1091276 e!690725))

(assert (= b!1091471 b!1091472))

(assert (= b!1091470 b!1091471))

(assert (= (and b!1091276 (is-Cons!10477 (rules!9074 (_2!6676 lt!365557)))) b!1091470))

(declare-fun order!6285 () Int)

(declare-fun order!6287 () Int)

(declare-fun dynLambda!4573 (Int Int) Int)

(declare-fun dynLambda!4574 (Int Int) Int)

(assert (=> b!1091472 (< (dynLambda!4573 order!6285 (toValue!2864 (transformation!1787 (h!15878 (rules!9074 (_2!6676 lt!365557)))))) (dynLambda!4574 order!6287 lambda!41382))))

(declare-fun order!6289 () Int)

(declare-fun dynLambda!4575 (Int Int) Int)

(assert (=> b!1091472 (< (dynLambda!4575 order!6289 (toChars!2723 (transformation!1787 (h!15878 (rules!9074 (_2!6676 lt!365557)))))) (dynLambda!4574 order!6287 lambda!41382))))

(declare-fun b!1091477 () Bool)

(declare-fun e!690732 () Bool)

(assert (=> b!1091477 (= e!690732 true)))

(declare-fun b!1091476 () Bool)

(declare-fun e!690731 () Bool)

(assert (=> b!1091476 (= e!690731 e!690732)))

(declare-fun b!1091475 () Bool)

(declare-fun e!690730 () Bool)

(assert (=> b!1091475 (= e!690730 e!690731)))

(assert (=> b!1091274 e!690730))

(assert (= b!1091476 b!1091477))

(assert (= b!1091475 b!1091476))

(assert (= (and b!1091274 (is-Cons!10477 (rules!9074 (_2!6676 lt!365557)))) b!1091475))

(assert (=> b!1091477 (< (dynLambda!4573 order!6285 (toValue!2864 (transformation!1787 (h!15878 (rules!9074 (_2!6676 lt!365557)))))) (dynLambda!4574 order!6287 lambda!41381))))

(assert (=> b!1091477 (< (dynLambda!4575 order!6289 (toChars!2723 (transformation!1787 (h!15878 (rules!9074 (_2!6676 lt!365557)))))) (dynLambda!4574 order!6287 lambda!41381))))

(declare-fun b!1091480 () Bool)

(declare-fun e!690735 () Bool)

(assert (=> b!1091480 (= e!690735 true)))

(declare-fun b!1091479 () Bool)

(declare-fun e!690734 () Bool)

(assert (=> b!1091479 (= e!690734 e!690735)))

(declare-fun b!1091478 () Bool)

(declare-fun e!690733 () Bool)

(assert (=> b!1091478 (= e!690733 e!690734)))

(assert (=> b!1091272 e!690733))

(assert (= b!1091479 b!1091480))

(assert (= b!1091478 b!1091479))

(assert (= (and b!1091272 (is-Cons!10477 (rules!9074 (_2!6676 lt!365557)))) b!1091478))

(assert (=> b!1091480 (< (dynLambda!4573 order!6285 (toValue!2864 (transformation!1787 (h!15878 (rules!9074 (_2!6676 lt!365557)))))) (dynLambda!4574 order!6287 lambda!41380))))

(assert (=> b!1091480 (< (dynLambda!4575 order!6289 (toChars!2723 (transformation!1787 (h!15878 (rules!9074 (_2!6676 lt!365557)))))) (dynLambda!4574 order!6287 lambda!41380))))

(declare-fun b_lambda!30565 () Bool)

(assert (= b_lambda!30555 (or b!1091248 b_lambda!30565)))

(declare-fun bs!257969 () Bool)

(declare-fun d!306940 () Bool)

(assert (= bs!257969 (and d!306940 b!1091248)))

(assert (=> bs!257969 (= (dynLambda!4571 lambda!41382 lt!365557) (> (_1!6676 lt!365557) (_1!6676 lt!365557)))))

(assert (=> d!306912 d!306940))

(declare-fun b_lambda!30567 () Bool)

(assert (= b_lambda!30557 (or b!1091248 b_lambda!30567)))

(assert (=> d!306916 d!306940))

(declare-fun b_lambda!30569 () Bool)

(assert (= b_lambda!30541 (or b!1091248 b_lambda!30569)))

(declare-fun bs!257970 () Bool)

(declare-fun d!306942 () Bool)

(assert (= bs!257970 (and d!306942 b!1091248)))

(assert (=> bs!257970 (= (dynLambda!4571 lambda!41380 (h!15879 lt!365570)) (< (_1!6676 (h!15879 lt!365570)) (_1!6676 lt!365557)))))

(assert (=> b!1091367 d!306942))

(declare-fun b_lambda!30571 () Bool)

(assert (= b_lambda!30559 (or b!1091248 b_lambda!30571)))

(declare-fun bs!257972 () Bool)

(declare-fun d!306944 () Bool)

(assert (= bs!257972 (and d!306944 b!1091248)))

(assert (=> bs!257972 (= (dynLambda!4571 lambda!41382 (h!15879 lt!365570)) (> (_1!6676 (h!15879 lt!365570)) (_1!6676 lt!365557)))))

(assert (=> b!1091426 d!306944))

(declare-fun b_lambda!30573 () Bool)

(assert (= b_lambda!30545 (or start!93312 b_lambda!30573)))

(declare-fun bs!257973 () Bool)

(declare-fun d!306946 () Bool)

(assert (= bs!257973 (and d!306946 start!93312)))

(declare-fun usesJsonRules!0 (PrintableTokens!290) Bool)

(assert (=> bs!257973 (= (dynLambda!4571 lambda!41379 (h!15879 lt!365564)) (usesJsonRules!0 (_2!6676 (h!15879 lt!365564))))))

(declare-fun m!1242147 () Bool)

(assert (=> bs!257973 m!1242147))

(assert (=> b!1091387 d!306946))

(declare-fun b_lambda!30575 () Bool)

(assert (= b_lambda!30547 (or start!93312 b_lambda!30575)))

(declare-fun bs!257974 () Bool)

(declare-fun d!306950 () Bool)

(assert (= bs!257974 (and d!306950 start!93312)))

(assert (=> bs!257974 (= (dynLambda!4571 lambda!41379 (h!15879 lt!365555)) (usesJsonRules!0 (_2!6676 (h!15879 lt!365555))))))

(declare-fun m!1242149 () Bool)

(assert (=> bs!257974 m!1242149))

(assert (=> b!1091389 d!306950))

(declare-fun b_lambda!30577 () Bool)

(assert (= b_lambda!30549 (or b!1091248 b_lambda!30577)))

(declare-fun bs!257975 () Bool)

(declare-fun d!306952 () Bool)

(assert (= bs!257975 (and d!306952 b!1091248)))

(assert (=> bs!257975 (= (dynLambda!4571 lambda!41380 lt!365557) (< (_1!6676 lt!365557) (_1!6676 lt!365557)))))

(assert (=> d!306890 d!306952))

(declare-fun b_lambda!30579 () Bool)

(assert (= b_lambda!30553 (or b!1091248 b_lambda!30579)))

(assert (=> d!306902 d!306952))

(declare-fun b_lambda!30581 () Bool)

(assert (= b_lambda!30543 (or start!93312 b_lambda!30581)))

(declare-fun bs!257976 () Bool)

(declare-fun d!306954 () Bool)

(assert (= bs!257976 (and d!306954 start!93312)))

(assert (=> bs!257976 (= (dynLambda!4571 lambda!41379 (h!15879 lt!365573)) (usesJsonRules!0 (_2!6676 (h!15879 lt!365573))))))

(declare-fun m!1242151 () Bool)

(assert (=> bs!257976 m!1242151))

(assert (=> b!1091383 d!306954))

(push 1)

(assert (not b!1091374))

(assert (not d!306892))

(assert (not b!1091427))

(assert (not d!306842))

(assert (not b_lambda!30571))

(assert (not d!306854))

(assert (not d!306890))

(assert (not b!1091418))

(assert (not d!306914))

(assert (not d!306834))

(assert (not d!306844))

(assert (not d!306902))

(assert (not d!306850))

(assert (not b!1091384))

(assert (not d!306856))

(assert (not b_lambda!30573))

(assert (not b!1091260))

(assert (not b_lambda!30575))

(assert (not b!1091429))

(assert (not d!306868))

(assert (not d!306858))

(assert (not d!306910))

(assert (not bm!80249))

(assert (not b!1091408))

(assert (not d!306908))

(assert (not b!1091423))

(assert (not bs!257973))

(assert (not d!306866))

(assert (not d!306860))

(assert (not d!306912))

(assert (not b_lambda!30581))

(assert (not b!1091352))

(assert (not b_lambda!30577))

(assert (not d!306852))

(assert (not d!306916))

(assert (not d!306904))

(assert (not bm!80248))

(assert (not d!306880))

(assert (not d!306888))

(assert (not b!1091378))

(assert (not b!1091395))

(assert (not b!1091478))

(assert (not b!1091458))

(assert (not b!1091438))

(assert (not d!306922))

(assert (not b!1091441))

(assert (not b_lambda!30565))

(assert (not d!306822))

(assert (not b!1091475))

(assert (not bs!257974))

(assert (not b_lambda!30569))

(assert (not d!306920))

(assert (not d!306816))

(assert (not b!1091385))

(assert (not d!306872))

(assert (not b!1091443))

(assert (not b!1091470))

(assert (not b!1091421))

(assert (not d!306836))

(assert (not d!306862))

(assert (not b_lambda!30567))

(assert (not b!1091368))

(assert (not b!1091390))

(assert (not b!1091370))

(assert (not d!306876))

(assert (not d!306864))

(assert (not bs!257976))

(assert (not b!1091386))

(assert (not b!1091419))

(assert (not d!306906))

(assert (not d!306830))

(assert (not b!1091444))

(assert (not b!1091457))

(assert (not d!306894))

(assert (not b!1091440))

(assert (not b!1091415))

(assert (not b!1091406))

(assert (not b!1091388))

(assert (not b!1091446))

(assert (not b_lambda!30579))

(assert (not d!306838))

(assert (not b!1091459))

(assert (not b!1091420))

(assert (not b!1091399))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

