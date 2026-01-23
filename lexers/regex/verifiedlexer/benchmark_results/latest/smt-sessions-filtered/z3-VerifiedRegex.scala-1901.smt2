; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93542 () Bool)

(assert start!93542)

(declare-fun bs!258248 () Bool)

(declare-fun b!1093169 () Bool)

(assert (= bs!258248 (and b!1093169 start!93542)))

(declare-fun lambda!41742 () Int)

(declare-fun lambda!41741 () Int)

(assert (=> bs!258248 (not (= lambda!41742 lambda!41741))))

(declare-fun b!1093185 () Bool)

(declare-fun e!691900 () Bool)

(assert (=> b!1093185 (= e!691900 true)))

(declare-fun b!1093184 () Bool)

(declare-fun e!691899 () Bool)

(assert (=> b!1093184 (= e!691899 e!691900)))

(assert (=> b!1093169 e!691899))

(assert (= b!1093184 b!1093185))

(assert (= b!1093169 b!1093184))

(declare-fun lambda!41743 () Int)

(assert (=> bs!258248 (not (= lambda!41743 lambda!41741))))

(assert (=> b!1093169 (not (= lambda!41743 lambda!41742))))

(declare-fun b!1093187 () Bool)

(declare-fun e!691902 () Bool)

(assert (=> b!1093187 (= e!691902 true)))

(declare-fun b!1093186 () Bool)

(declare-fun e!691901 () Bool)

(assert (=> b!1093186 (= e!691901 e!691902)))

(assert (=> b!1093169 e!691901))

(assert (= b!1093186 b!1093187))

(assert (= b!1093169 b!1093186))

(declare-fun lambda!41744 () Int)

(assert (=> bs!258248 (not (= lambda!41744 lambda!41741))))

(assert (=> b!1093169 (not (= lambda!41744 lambda!41742))))

(assert (=> b!1093169 (not (= lambda!41744 lambda!41743))))

(declare-fun b!1093189 () Bool)

(declare-fun e!691904 () Bool)

(assert (=> b!1093189 (= e!691904 true)))

(declare-fun b!1093188 () Bool)

(declare-fun e!691903 () Bool)

(assert (=> b!1093188 (= e!691903 e!691904)))

(assert (=> b!1093169 e!691903))

(assert (= b!1093188 b!1093189))

(assert (= b!1093169 b!1093188))

(declare-fun b!1093159 () Bool)

(declare-fun e!691892 () Bool)

(declare-datatypes ((List!10511 0))(
  ( (Nil!10495) (Cons!10495 (h!15896 (_ BitVec 16)) (t!102409 List!10511)) )
))
(declare-datatypes ((TokenValue!1858 0))(
  ( (FloatLiteralValue!3716 (text!13451 List!10511)) (TokenValueExt!1857 (__x!7440 Int)) (Broken!9290 (value!58999 List!10511)) (Object!1873) (End!1858) (Def!1858) (Underscore!1858) (Match!1858) (Else!1858) (Error!1858) (Case!1858) (If!1858) (Extends!1858) (Abstract!1858) (Class!1858) (Val!1858) (DelimiterValue!3716 (del!1918 List!10511)) (KeywordValue!1864 (value!59000 List!10511)) (CommentValue!3716 (value!59001 List!10511)) (WhitespaceValue!3716 (value!59002 List!10511)) (IndentationValue!1858 (value!59003 List!10511)) (String!12859) (Int32!1858) (Broken!9291 (value!59004 List!10511)) (Boolean!1859) (Unit!15946) (OperatorValue!1861 (op!1918 List!10511)) (IdentifierValue!3716 (value!59005 List!10511)) (IdentifierValue!3717 (value!59006 List!10511)) (WhitespaceValue!3717 (value!59007 List!10511)) (True!3716) (False!3716) (Broken!9292 (value!59008 List!10511)) (Broken!9293 (value!59009 List!10511)) (True!3717) (RightBrace!1858) (RightBracket!1858) (Colon!1858) (Null!1858) (Comma!1858) (LeftBracket!1858) (False!3717) (LeftBrace!1858) (ImaginaryLiteralValue!1858 (text!13452 List!10511)) (StringLiteralValue!5574 (value!59010 List!10511)) (EOFValue!1858 (value!59011 List!10511)) (IdentValue!1858 (value!59012 List!10511)) (DelimiterValue!3717 (value!59013 List!10511)) (DedentValue!1858 (value!59014 List!10511)) (NewLineValue!1858 (value!59015 List!10511)) (IntegerValue!5574 (value!59016 (_ BitVec 32)) (text!13453 List!10511)) (IntegerValue!5575 (value!59017 Int) (text!13454 List!10511)) (Times!1858) (Or!1858) (Equal!1858) (Minus!1858) (Broken!9294 (value!59018 List!10511)) (And!1858) (Div!1858) (LessEqual!1858) (Mod!1858) (Concat!4919) (Not!1858) (Plus!1858) (SpaceValue!1858 (value!59019 List!10511)) (IntegerValue!5576 (value!59020 Int) (text!13455 List!10511)) (StringLiteralValue!5575 (text!13456 List!10511)) (FloatLiteralValue!3717 (text!13457 List!10511)) (BytesLiteralValue!1858 (value!59021 List!10511)) (CommentValue!3717 (value!59022 List!10511)) (StringLiteralValue!5576 (value!59023 List!10511)) (ErrorTokenValue!1858 (msg!1919 List!10511)) )
))
(declare-datatypes ((Regex!3061 0))(
  ( (ElementMatch!3061 (c!185336 (_ BitVec 16))) (Concat!4920 (regOne!6634 Regex!3061) (regTwo!6634 Regex!3061)) (EmptyExpr!3061) (Star!3061 (reg!3390 Regex!3061)) (EmptyLang!3061) (Union!3061 (regOne!6635 Regex!3061) (regTwo!6635 Regex!3061)) )
))
(declare-datatypes ((String!12860 0))(
  ( (String!12861 (value!59024 String)) )
))
(declare-datatypes ((IArray!6411 0))(
  ( (IArray!6412 (innerList!3263 List!10511)) )
))
(declare-datatypes ((Conc!3203 0))(
  ( (Node!3203 (left!9014 Conc!3203) (right!9344 Conc!3203) (csize!6636 Int) (cheight!3414 Int)) (Leaf!5105 (xs!5896 IArray!6411) (csize!6637 Int)) (Empty!3203) )
))
(declare-datatypes ((BalanceConc!6420 0))(
  ( (BalanceConc!6421 (c!185337 Conc!3203)) )
))
(declare-datatypes ((TokenValueInjection!3416 0))(
  ( (TokenValueInjection!3417 (toValue!2869 Int) (toChars!2728 Int)) )
))
(declare-datatypes ((Rule!3384 0))(
  ( (Rule!3385 (regex!1792 Regex!3061) (tag!2054 String!12860) (isSeparator!1792 Bool) (transformation!1792 TokenValueInjection!3416)) )
))
(declare-datatypes ((Token!3250 0))(
  ( (Token!3251 (value!59025 TokenValue!1858) (rule!3215 Rule!3384) (size!8118 Int) (originalCharacters!2348 List!10511)) )
))
(declare-datatypes ((List!10512 0))(
  ( (Nil!10496) (Cons!10496 (h!15897 Token!3250) (t!102410 List!10512)) )
))
(declare-datatypes ((IArray!6413 0))(
  ( (IArray!6414 (innerList!3264 List!10512)) )
))
(declare-datatypes ((Conc!3204 0))(
  ( (Node!3204 (left!9015 Conc!3204) (right!9345 Conc!3204) (csize!6638 Int) (cheight!3415 Int)) (Leaf!5106 (xs!5897 IArray!6413) (csize!6639 Int)) (Empty!3204) )
))
(declare-datatypes ((List!10513 0))(
  ( (Nil!10497) (Cons!10497 (h!15898 Rule!3384) (t!102411 List!10513)) )
))
(declare-datatypes ((BalanceConc!6422 0))(
  ( (BalanceConc!6423 (c!185338 Conc!3204)) )
))
(declare-datatypes ((PrintableTokens!300 0))(
  ( (PrintableTokens!301 (rules!9079 List!10513) (tokens!1351 BalanceConc!6422)) )
))
(declare-datatypes ((tuple2!11710 0))(
  ( (tuple2!11711 (_1!6681 Int) (_2!6681 PrintableTokens!300)) )
))
(declare-datatypes ((List!10514 0))(
  ( (Nil!10498) (Cons!10498 (h!15899 tuple2!11710) (t!102412 List!10514)) )
))
(declare-fun lt!366794 () List!10514)

(declare-fun size!8119 (List!10514) Int)

(declare-fun filter!254 (List!10514 Int) List!10514)

(assert (=> b!1093159 (= e!691892 (< (size!8119 (filter!254 lt!366794 lambda!41744)) (size!8119 lt!366794)))))

(declare-fun b!1093160 () Bool)

(declare-datatypes ((Unit!15947 0))(
  ( (Unit!15948) )
))
(declare-fun e!691880 () Unit!15947)

(declare-fun err!2112 () Unit!15947)

(assert (=> b!1093160 (= e!691880 err!2112)))

(declare-fun lt!366792 () tuple2!11710)

(declare-fun lt!366769 () Unit!15947)

(declare-datatypes ((IArray!6415 0))(
  ( (IArray!6416 (innerList!3265 List!10514)) )
))
(declare-datatypes ((Conc!3205 0))(
  ( (Node!3205 (left!9016 Conc!3205) (right!9346 Conc!3205) (csize!6640 Int) (cheight!3416 Int)) (Leaf!5107 (xs!5898 IArray!6415) (csize!6641 Int)) (Empty!3205) )
))
(declare-datatypes ((BalanceConc!6424 0))(
  ( (BalanceConc!6425 (c!185339 Conc!3205)) )
))
(declare-fun objs!8 () BalanceConc!6424)

(declare-fun forallContained!494 (List!10514 Int tuple2!11710) Unit!15947)

(declare-fun list!3764 (BalanceConc!6424) List!10514)

(assert (=> b!1093160 (= lt!366769 (forallContained!494 (list!3764 objs!8) lambda!41742 lt!366792))))

(assert (=> b!1093160 true))

(declare-fun b!1093161 () Bool)

(declare-fun Unit!15949 () Unit!15947)

(assert (=> b!1093161 (= e!691880 Unit!15949)))

(declare-fun b!1093162 () Bool)

(declare-fun e!691886 () Bool)

(declare-fun e!691883 () Bool)

(assert (=> b!1093162 (= e!691886 e!691883)))

(declare-fun res!485666 () Bool)

(assert (=> b!1093162 (=> res!485666 e!691883)))

(declare-fun lt!366777 () BalanceConc!6424)

(declare-fun lt!366784 () Int)

(declare-fun size!8120 (BalanceConc!6424) Int)

(assert (=> b!1093162 (= res!485666 (>= (size!8120 lt!366777) lt!366784))))

(assert (=> b!1093162 e!691892))

(declare-fun res!485663 () Bool)

(assert (=> b!1093162 (=> res!485663 e!691892)))

(declare-fun lt!366786 () Bool)

(assert (=> b!1093162 (= res!485663 lt!366786)))

(declare-fun lt!366775 () Unit!15947)

(declare-fun lemmaNotForallFilterShorter!35 (List!10514 Int) Unit!15947)

(assert (=> b!1093162 (= lt!366775 (lemmaNotForallFilterShorter!35 lt!366794 lambda!41744))))

(declare-fun lt!366768 () Unit!15947)

(declare-fun e!691890 () Unit!15947)

(assert (=> b!1093162 (= lt!366768 e!691890)))

(declare-fun c!185332 () Bool)

(declare-fun forall!2352 (BalanceConc!6424 Int) Bool)

(assert (=> b!1093162 (= c!185332 (forall!2352 objs!8 lambda!41744))))

(declare-fun b!1093163 () Bool)

(declare-fun e!691894 () Unit!15947)

(declare-fun Unit!15950 () Unit!15947)

(assert (=> b!1093163 (= e!691894 Unit!15950)))

(declare-fun b!1093164 () Bool)

(declare-fun e!691885 () Bool)

(declare-fun lt!366789 () List!10514)

(declare-fun forall!2353 (List!10514 Int) Bool)

(assert (=> b!1093164 (= e!691885 (forall!2353 lt!366789 lambda!41741))))

(declare-fun b!1093165 () Bool)

(declare-fun err!2113 () Unit!15947)

(assert (=> b!1093165 (= e!691894 err!2113)))

(declare-fun lt!366779 () BalanceConc!6424)

(declare-fun lt!366785 () Unit!15947)

(assert (=> b!1093165 (= lt!366785 (forallContained!494 (list!3764 lt!366779) lambda!41742 lt!366792))))

(assert (=> b!1093165 true))

(declare-fun b!1093166 () Bool)

(declare-fun e!691881 () Bool)

(declare-fun e!691891 () Bool)

(assert (=> b!1093166 (= e!691881 e!691891)))

(declare-fun res!485664 () Bool)

(assert (=> b!1093166 (=> (not res!485664) (not e!691891))))

(declare-fun lt!366783 () Bool)

(assert (=> b!1093166 (= res!485664 (not lt!366783))))

(declare-fun lt!366780 () Unit!15947)

(assert (=> b!1093166 (= lt!366780 e!691894)))

(declare-fun c!185334 () Bool)

(assert (=> b!1093166 (= c!185334 lt!366783)))

(declare-fun contains!1778 (BalanceConc!6424 tuple2!11710) Bool)

(assert (=> b!1093166 (= lt!366783 (contains!1778 lt!366779 lt!366792))))

(declare-fun b!1093167 () Bool)

(declare-fun e!691888 () Unit!15947)

(declare-fun err!2110 () Unit!15947)

(assert (=> b!1093167 (= e!691888 err!2110)))

(declare-fun lt!366778 () Unit!15947)

(assert (=> b!1093167 (= lt!366778 (forallContained!494 (list!3764 lt!366777) lambda!41744 lt!366792))))

(assert (=> b!1093167 true))

(declare-fun b!1093168 () Bool)

(declare-fun Unit!15951 () Unit!15947)

(assert (=> b!1093168 (= e!691890 Unit!15951)))

(declare-fun e!691884 () Bool)

(assert (=> b!1093169 (= e!691884 e!691881)))

(declare-fun res!485669 () Bool)

(assert (=> b!1093169 (=> (not res!485669) (not e!691881))))

(assert (=> b!1093169 (= res!485669 (contains!1778 objs!8 lt!366792))))

(declare-fun filter!255 (BalanceConc!6424 Int) BalanceConc!6424)

(assert (=> b!1093169 (= lt!366777 (filter!255 objs!8 lambda!41744))))

(declare-fun lt!366774 () BalanceConc!6424)

(assert (=> b!1093169 (= lt!366774 (filter!255 objs!8 lambda!41743))))

(assert (=> b!1093169 (= lt!366779 (filter!255 objs!8 lambda!41742))))

(declare-fun apply!2057 (BalanceConc!6424 Int) tuple2!11710)

(assert (=> b!1093169 (= lt!366792 (apply!2057 objs!8 (ite (>= lt!366784 0) (div lt!366784 2) (- (div (- lt!366784) 2)))))))

(declare-fun res!485665 () Bool)

(declare-fun e!691893 () Bool)

(assert (=> start!93542 (=> (not res!485665) (not e!691893))))

(assert (=> start!93542 (= res!485665 (forall!2352 objs!8 lambda!41741))))

(assert (=> start!93542 e!691893))

(declare-fun e!691887 () Bool)

(declare-fun inv!13442 (BalanceConc!6424) Bool)

(assert (=> start!93542 (and (inv!13442 objs!8) e!691887)))

(declare-fun b!1093170 () Bool)

(declare-fun err!2111 () Unit!15947)

(assert (=> b!1093170 (= e!691890 err!2111)))

(declare-fun lt!366790 () Unit!15947)

(assert (=> b!1093170 (= lt!366790 (forallContained!494 lt!366794 lambda!41744 lt!366792))))

(assert (=> b!1093170 true))

(declare-fun b!1093171 () Bool)

(declare-fun tp!326540 () Bool)

(declare-fun inv!13443 (Conc!3205) Bool)

(assert (=> b!1093171 (= e!691887 (and (inv!13443 (c!185339 objs!8)) tp!326540))))

(declare-fun b!1093172 () Bool)

(declare-fun e!691882 () Bool)

(assert (=> b!1093172 (= e!691891 (not e!691882))))

(declare-fun res!485667 () Bool)

(assert (=> b!1093172 (=> res!485667 e!691882)))

(assert (=> b!1093172 (= res!485667 (>= (size!8120 lt!366779) lt!366784))))

(declare-fun e!691889 () Bool)

(assert (=> b!1093172 e!691889))

(declare-fun res!485662 () Bool)

(assert (=> b!1093172 (=> res!485662 e!691889)))

(assert (=> b!1093172 (= res!485662 lt!366786)))

(declare-fun isEmpty!6664 (List!10514) Bool)

(assert (=> b!1093172 (= lt!366786 (isEmpty!6664 lt!366794))))

(declare-fun lt!366776 () Unit!15947)

(assert (=> b!1093172 (= lt!366776 (lemmaNotForallFilterShorter!35 lt!366794 lambda!41742))))

(assert (=> b!1093172 (= lt!366794 (list!3764 objs!8))))

(declare-fun lt!366796 () Unit!15947)

(assert (=> b!1093172 (= lt!366796 e!691880)))

(declare-fun c!185333 () Bool)

(assert (=> b!1093172 (= c!185333 (forall!2352 objs!8 lambda!41742))))

(declare-fun b!1093173 () Bool)

(assert (=> b!1093173 (= e!691883 e!691885)))

(declare-fun res!485670 () Bool)

(assert (=> b!1093173 (=> res!485670 e!691885)))

(declare-fun lt!366773 () List!10514)

(assert (=> b!1093173 (= res!485670 (not (forall!2353 lt!366773 lambda!41741)))))

(assert (=> b!1093173 (= lt!366789 (list!3764 lt!366774))))

(declare-fun sortObjectsByID!0 (BalanceConc!6424) BalanceConc!6424)

(assert (=> b!1093173 (= lt!366773 (list!3764 (sortObjectsByID!0 lt!366779)))))

(declare-fun lt!366770 () List!10514)

(assert (=> b!1093173 (forall!2353 lt!366770 lambda!41741)))

(declare-fun lt!366782 () Unit!15947)

(declare-fun lemmaForallSubseq!37 (List!10514 List!10514 Int) Unit!15947)

(assert (=> b!1093173 (= lt!366782 (lemmaForallSubseq!37 lt!366770 lt!366794 lambda!41741))))

(assert (=> b!1093173 (= lt!366770 (list!3764 (filter!255 objs!8 lambda!41744)))))

(declare-fun lt!366791 () List!10514)

(assert (=> b!1093173 (forall!2353 lt!366791 lambda!41741)))

(declare-fun lt!366771 () Unit!15947)

(assert (=> b!1093173 (= lt!366771 (lemmaForallSubseq!37 lt!366791 lt!366794 lambda!41741))))

(assert (=> b!1093173 (= lt!366791 (list!3764 (filter!255 objs!8 lambda!41743)))))

(declare-fun lt!366793 () List!10514)

(assert (=> b!1093173 (forall!2353 lt!366793 lambda!41741)))

(declare-fun lt!366781 () Unit!15947)

(assert (=> b!1093173 (= lt!366781 (lemmaForallSubseq!37 lt!366793 lt!366794 lambda!41741))))

(assert (=> b!1093173 (= lt!366793 (list!3764 (filter!255 objs!8 lambda!41742)))))

(declare-fun lt!366772 () Unit!15947)

(declare-fun filterSubseq!29 (List!10514 Int) Unit!15947)

(assert (=> b!1093173 (= lt!366772 (filterSubseq!29 lt!366794 lambda!41744))))

(declare-fun lt!366795 () Unit!15947)

(assert (=> b!1093173 (= lt!366795 (filterSubseq!29 lt!366794 lambda!41743))))

(declare-fun lt!366797 () Unit!15947)

(assert (=> b!1093173 (= lt!366797 (filterSubseq!29 lt!366794 lambda!41742))))

(declare-fun b!1093174 () Bool)

(declare-fun Unit!15952 () Unit!15947)

(assert (=> b!1093174 (= e!691888 Unit!15952)))

(declare-fun b!1093175 () Bool)

(assert (=> b!1093175 (= e!691893 e!691884)))

(declare-fun res!485668 () Bool)

(assert (=> b!1093175 (=> (not res!485668) (not e!691884))))

(assert (=> b!1093175 (= res!485668 (> lt!366784 1))))

(assert (=> b!1093175 (= lt!366784 (size!8120 objs!8))))

(declare-fun b!1093176 () Bool)

(assert (=> b!1093176 (= e!691882 e!691886)))

(declare-fun res!485671 () Bool)

(assert (=> b!1093176 (=> res!485671 e!691886)))

(declare-fun lt!366787 () Bool)

(assert (=> b!1093176 (= res!485671 lt!366787)))

(declare-fun lt!366788 () Unit!15947)

(assert (=> b!1093176 (= lt!366788 e!691888)))

(declare-fun c!185335 () Bool)

(assert (=> b!1093176 (= c!185335 lt!366787)))

(assert (=> b!1093176 (= lt!366787 (contains!1778 lt!366777 lt!366792))))

(declare-fun b!1093177 () Bool)

(assert (=> b!1093177 (= e!691889 (< (size!8119 (filter!254 lt!366794 lambda!41742)) (size!8119 lt!366794)))))

(assert (= (and start!93542 res!485665) b!1093175))

(assert (= (and b!1093175 res!485668) b!1093169))

(assert (= (and b!1093169 res!485669) b!1093166))

(assert (= (and b!1093166 c!185334) b!1093165))

(assert (= (and b!1093166 (not c!185334)) b!1093163))

(assert (= (and b!1093166 res!485664) b!1093172))

(assert (= (and b!1093172 c!185333) b!1093160))

(assert (= (and b!1093172 (not c!185333)) b!1093161))

(assert (= (and b!1093172 (not res!485662)) b!1093177))

(assert (= (and b!1093172 (not res!485667)) b!1093176))

(assert (= (and b!1093176 c!185335) b!1093167))

(assert (= (and b!1093176 (not c!185335)) b!1093174))

(assert (= (and b!1093176 (not res!485671)) b!1093162))

(assert (= (and b!1093162 c!185332) b!1093170))

(assert (= (and b!1093162 (not c!185332)) b!1093168))

(assert (= (and b!1093162 (not res!485663)) b!1093159))

(assert (= (and b!1093162 (not res!485666)) b!1093173))

(assert (= (and b!1093173 (not res!485670)) b!1093164))

(assert (= start!93542 b!1093171))

(declare-fun m!1244873 () Bool)

(assert (=> b!1093166 m!1244873))

(declare-fun m!1244875 () Bool)

(assert (=> b!1093164 m!1244875))

(declare-fun m!1244877 () Bool)

(assert (=> b!1093177 m!1244877))

(assert (=> b!1093177 m!1244877))

(declare-fun m!1244879 () Bool)

(assert (=> b!1093177 m!1244879))

(declare-fun m!1244881 () Bool)

(assert (=> b!1093177 m!1244881))

(declare-fun m!1244883 () Bool)

(assert (=> b!1093175 m!1244883))

(declare-fun m!1244885 () Bool)

(assert (=> start!93542 m!1244885))

(declare-fun m!1244887 () Bool)

(assert (=> start!93542 m!1244887))

(declare-fun m!1244889 () Bool)

(assert (=> b!1093173 m!1244889))

(declare-fun m!1244891 () Bool)

(assert (=> b!1093173 m!1244891))

(declare-fun m!1244893 () Bool)

(assert (=> b!1093173 m!1244893))

(declare-fun m!1244895 () Bool)

(assert (=> b!1093173 m!1244895))

(assert (=> b!1093173 m!1244891))

(declare-fun m!1244897 () Bool)

(assert (=> b!1093173 m!1244897))

(declare-fun m!1244899 () Bool)

(assert (=> b!1093173 m!1244899))

(declare-fun m!1244901 () Bool)

(assert (=> b!1093173 m!1244901))

(declare-fun m!1244903 () Bool)

(assert (=> b!1093173 m!1244903))

(declare-fun m!1244905 () Bool)

(assert (=> b!1093173 m!1244905))

(declare-fun m!1244907 () Bool)

(assert (=> b!1093173 m!1244907))

(declare-fun m!1244909 () Bool)

(assert (=> b!1093173 m!1244909))

(assert (=> b!1093173 m!1244893))

(declare-fun m!1244911 () Bool)

(assert (=> b!1093173 m!1244911))

(declare-fun m!1244913 () Bool)

(assert (=> b!1093173 m!1244913))

(declare-fun m!1244915 () Bool)

(assert (=> b!1093173 m!1244915))

(declare-fun m!1244917 () Bool)

(assert (=> b!1093173 m!1244917))

(declare-fun m!1244919 () Bool)

(assert (=> b!1093173 m!1244919))

(declare-fun m!1244921 () Bool)

(assert (=> b!1093173 m!1244921))

(assert (=> b!1093173 m!1244901))

(assert (=> b!1093173 m!1244895))

(declare-fun m!1244923 () Bool)

(assert (=> b!1093173 m!1244923))

(declare-fun m!1244925 () Bool)

(assert (=> b!1093173 m!1244925))

(assert (=> b!1093169 m!1244893))

(assert (=> b!1093169 m!1244901))

(declare-fun m!1244927 () Bool)

(assert (=> b!1093169 m!1244927))

(assert (=> b!1093169 m!1244895))

(declare-fun m!1244929 () Bool)

(assert (=> b!1093169 m!1244929))

(declare-fun m!1244931 () Bool)

(assert (=> b!1093160 m!1244931))

(assert (=> b!1093160 m!1244931))

(declare-fun m!1244933 () Bool)

(assert (=> b!1093160 m!1244933))

(assert (=> b!1093172 m!1244931))

(declare-fun m!1244935 () Bool)

(assert (=> b!1093172 m!1244935))

(declare-fun m!1244937 () Bool)

(assert (=> b!1093172 m!1244937))

(declare-fun m!1244939 () Bool)

(assert (=> b!1093172 m!1244939))

(declare-fun m!1244941 () Bool)

(assert (=> b!1093172 m!1244941))

(declare-fun m!1244943 () Bool)

(assert (=> b!1093159 m!1244943))

(assert (=> b!1093159 m!1244943))

(declare-fun m!1244945 () Bool)

(assert (=> b!1093159 m!1244945))

(assert (=> b!1093159 m!1244881))

(declare-fun m!1244947 () Bool)

(assert (=> b!1093170 m!1244947))

(declare-fun m!1244949 () Bool)

(assert (=> b!1093171 m!1244949))

(declare-fun m!1244951 () Bool)

(assert (=> b!1093162 m!1244951))

(declare-fun m!1244953 () Bool)

(assert (=> b!1093162 m!1244953))

(declare-fun m!1244955 () Bool)

(assert (=> b!1093162 m!1244955))

(declare-fun m!1244957 () Bool)

(assert (=> b!1093167 m!1244957))

(assert (=> b!1093167 m!1244957))

(declare-fun m!1244959 () Bool)

(assert (=> b!1093167 m!1244959))

(declare-fun m!1244961 () Bool)

(assert (=> b!1093165 m!1244961))

(assert (=> b!1093165 m!1244961))

(declare-fun m!1244963 () Bool)

(assert (=> b!1093165 m!1244963))

(declare-fun m!1244965 () Bool)

(assert (=> b!1093176 m!1244965))

(check-sat (not b!1093185) (not b!1093187) (not b!1093173) (not b!1093175) (not b!1093189) (not b!1093176) (not b!1093177) (not b!1093167) (not b!1093186) (not start!93542) (not b!1093170) (not b!1093188) (not b!1093184) (not b!1093172) (not b!1093169) (not b!1093162) (not b!1093171) (not b!1093166) (not b!1093159) (not b!1093160) (not b!1093164) (not b!1093165))
(check-sat)
