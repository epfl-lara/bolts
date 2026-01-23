; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93382 () Bool)

(assert start!93382)

(declare-fun bs!257996 () Bool)

(declare-fun b!1091690 () Bool)

(assert (= bs!257996 (and b!1091690 start!93382)))

(declare-fun lambda!41524 () Int)

(declare-fun lambda!41523 () Int)

(assert (=> bs!257996 (not (= lambda!41524 lambda!41523))))

(declare-fun b!1091703 () Bool)

(declare-fun e!690896 () Bool)

(assert (=> b!1091703 (= e!690896 true)))

(declare-fun b!1091702 () Bool)

(declare-fun e!690895 () Bool)

(assert (=> b!1091702 (= e!690895 e!690896)))

(assert (=> b!1091690 e!690895))

(assert (= b!1091702 b!1091703))

(assert (= b!1091690 b!1091702))

(declare-fun lambda!41525 () Int)

(assert (=> bs!257996 (not (= lambda!41525 lambda!41523))))

(assert (=> b!1091690 (not (= lambda!41525 lambda!41524))))

(declare-fun b!1091705 () Bool)

(declare-fun e!690898 () Bool)

(assert (=> b!1091705 (= e!690898 true)))

(declare-fun b!1091704 () Bool)

(declare-fun e!690897 () Bool)

(assert (=> b!1091704 (= e!690897 e!690898)))

(assert (=> b!1091690 e!690897))

(assert (= b!1091704 b!1091705))

(assert (= b!1091690 b!1091704))

(declare-fun lambda!41526 () Int)

(assert (=> bs!257996 (not (= lambda!41526 lambda!41523))))

(assert (=> b!1091690 (not (= lambda!41526 lambda!41524))))

(assert (=> b!1091690 (not (= lambda!41526 lambda!41525))))

(declare-fun b!1091707 () Bool)

(declare-fun e!690900 () Bool)

(assert (=> b!1091707 (= e!690900 true)))

(declare-fun b!1091706 () Bool)

(declare-fun e!690899 () Bool)

(assert (=> b!1091706 (= e!690899 e!690900)))

(assert (=> b!1091690 e!690899))

(assert (= b!1091706 b!1091707))

(assert (= b!1091690 b!1091706))

(declare-fun b!1091678 () Bool)

(declare-fun e!690882 () Bool)

(declare-fun e!690887 () Bool)

(assert (=> b!1091678 (= e!690882 e!690887)))

(declare-fun res!485097 () Bool)

(assert (=> b!1091678 (=> res!485097 e!690887)))

(declare-datatypes ((Regex!3059 0))(
  ( (ElementMatch!3059 (c!185024 (_ BitVec 16))) (Concat!4915 (regOne!6630 Regex!3059) (regTwo!6630 Regex!3059)) (EmptyExpr!3059) (Star!3059 (reg!3388 Regex!3059)) (EmptyLang!3059) (Union!3059 (regOne!6631 Regex!3059) (regTwo!6631 Regex!3059)) )
))
(declare-datatypes ((String!12849 0))(
  ( (String!12850 (value!58942 String)) )
))
(declare-datatypes ((List!10503 0))(
  ( (Nil!10487) (Cons!10487 (h!15888 (_ BitVec 16)) (t!102177 List!10503)) )
))
(declare-datatypes ((TokenValue!1856 0))(
  ( (FloatLiteralValue!3712 (text!13437 List!10503)) (TokenValueExt!1855 (__x!7438 Int)) (Broken!9280 (value!58943 List!10503)) (Object!1871) (End!1856) (Def!1856) (Underscore!1856) (Match!1856) (Else!1856) (Error!1856) (Case!1856) (If!1856) (Extends!1856) (Abstract!1856) (Class!1856) (Val!1856) (DelimiterValue!3712 (del!1916 List!10503)) (KeywordValue!1862 (value!58944 List!10503)) (CommentValue!3712 (value!58945 List!10503)) (WhitespaceValue!3712 (value!58946 List!10503)) (IndentationValue!1856 (value!58947 List!10503)) (String!12851) (Int32!1856) (Broken!9281 (value!58948 List!10503)) (Boolean!1857) (Unit!15908) (OperatorValue!1859 (op!1916 List!10503)) (IdentifierValue!3712 (value!58949 List!10503)) (IdentifierValue!3713 (value!58950 List!10503)) (WhitespaceValue!3713 (value!58951 List!10503)) (True!3712) (False!3712) (Broken!9282 (value!58952 List!10503)) (Broken!9283 (value!58953 List!10503)) (True!3713) (RightBrace!1856) (RightBracket!1856) (Colon!1856) (Null!1856) (Comma!1856) (LeftBracket!1856) (False!3713) (LeftBrace!1856) (ImaginaryLiteralValue!1856 (text!13438 List!10503)) (StringLiteralValue!5568 (value!58954 List!10503)) (EOFValue!1856 (value!58955 List!10503)) (IdentValue!1856 (value!58956 List!10503)) (DelimiterValue!3713 (value!58957 List!10503)) (DedentValue!1856 (value!58958 List!10503)) (NewLineValue!1856 (value!58959 List!10503)) (IntegerValue!5568 (value!58960 (_ BitVec 32)) (text!13439 List!10503)) (IntegerValue!5569 (value!58961 Int) (text!13440 List!10503)) (Times!1856) (Or!1856) (Equal!1856) (Minus!1856) (Broken!9284 (value!58962 List!10503)) (And!1856) (Div!1856) (LessEqual!1856) (Mod!1856) (Concat!4916) (Not!1856) (Plus!1856) (SpaceValue!1856 (value!58963 List!10503)) (IntegerValue!5570 (value!58964 Int) (text!13441 List!10503)) (StringLiteralValue!5569 (text!13442 List!10503)) (FloatLiteralValue!3713 (text!13443 List!10503)) (BytesLiteralValue!1856 (value!58965 List!10503)) (CommentValue!3713 (value!58966 List!10503)) (StringLiteralValue!5570 (value!58967 List!10503)) (ErrorTokenValue!1856 (msg!1917 List!10503)) )
))
(declare-datatypes ((IArray!6399 0))(
  ( (IArray!6400 (innerList!3257 List!10503)) )
))
(declare-datatypes ((Conc!3197 0))(
  ( (Node!3197 (left!9003 Conc!3197) (right!9333 Conc!3197) (csize!6624 Int) (cheight!3408 Int)) (Leaf!5098 (xs!5890 IArray!6399) (csize!6625 Int)) (Empty!3197) )
))
(declare-datatypes ((BalanceConc!6408 0))(
  ( (BalanceConc!6409 (c!185025 Conc!3197)) )
))
(declare-datatypes ((TokenValueInjection!3412 0))(
  ( (TokenValueInjection!3413 (toValue!2867 Int) (toChars!2726 Int)) )
))
(declare-datatypes ((Rule!3380 0))(
  ( (Rule!3381 (regex!1790 Regex!3059) (tag!2052 String!12849) (isSeparator!1790 Bool) (transformation!1790 TokenValueInjection!3412)) )
))
(declare-datatypes ((Token!3246 0))(
  ( (Token!3247 (value!58968 TokenValue!1856) (rule!3213 Rule!3380) (size!8108 Int) (originalCharacters!2346 List!10503)) )
))
(declare-datatypes ((List!10504 0))(
  ( (Nil!10488) (Cons!10488 (h!15889 Token!3246) (t!102178 List!10504)) )
))
(declare-datatypes ((IArray!6401 0))(
  ( (IArray!6402 (innerList!3258 List!10504)) )
))
(declare-datatypes ((Conc!3198 0))(
  ( (Node!3198 (left!9004 Conc!3198) (right!9334 Conc!3198) (csize!6626 Int) (cheight!3409 Int)) (Leaf!5099 (xs!5891 IArray!6401) (csize!6627 Int)) (Empty!3198) )
))
(declare-datatypes ((List!10505 0))(
  ( (Nil!10489) (Cons!10489 (h!15890 Rule!3380) (t!102179 List!10505)) )
))
(declare-datatypes ((BalanceConc!6410 0))(
  ( (BalanceConc!6411 (c!185026 Conc!3198)) )
))
(declare-datatypes ((PrintableTokens!296 0))(
  ( (PrintableTokens!297 (rules!9077 List!10505) (tokens!1349 BalanceConc!6410)) )
))
(declare-datatypes ((tuple2!11706 0))(
  ( (tuple2!11707 (_1!6679 Int) (_2!6679 PrintableTokens!296)) )
))
(declare-datatypes ((List!10506 0))(
  ( (Nil!10490) (Cons!10490 (h!15891 tuple2!11706) (t!102180 List!10506)) )
))
(declare-datatypes ((IArray!6403 0))(
  ( (IArray!6404 (innerList!3259 List!10506)) )
))
(declare-datatypes ((Conc!3199 0))(
  ( (Node!3199 (left!9005 Conc!3199) (right!9335 Conc!3199) (csize!6628 Int) (cheight!3410 Int)) (Leaf!5100 (xs!5892 IArray!6403) (csize!6629 Int)) (Empty!3199) )
))
(declare-datatypes ((BalanceConc!6412 0))(
  ( (BalanceConc!6413 (c!185027 Conc!3199)) )
))
(declare-fun lt!365935 () BalanceConc!6412)

(declare-fun lt!365946 () Int)

(declare-fun size!8109 (BalanceConc!6412) Int)

(assert (=> b!1091678 (= res!485097 (>= (size!8109 lt!365935) lt!365946))))

(declare-fun e!690884 () Bool)

(assert (=> b!1091678 e!690884))

(declare-fun res!485094 () Bool)

(assert (=> b!1091678 (=> res!485094 e!690884)))

(declare-fun lt!365925 () Bool)

(assert (=> b!1091678 (= res!485094 lt!365925)))

(declare-datatypes ((Unit!15909 0))(
  ( (Unit!15910) )
))
(declare-fun lt!365941 () Unit!15909)

(declare-fun lt!365944 () List!10506)

(declare-fun lemmaNotForallFilterShorter!33 (List!10506 Int) Unit!15909)

(assert (=> b!1091678 (= lt!365941 (lemmaNotForallFilterShorter!33 lt!365944 lambda!41526))))

(declare-fun lt!365938 () Unit!15909)

(declare-fun e!690878 () Unit!15909)

(assert (=> b!1091678 (= lt!365938 e!690878)))

(declare-fun c!185021 () Bool)

(declare-fun objs!8 () BalanceConc!6412)

(declare-fun forall!2344 (BalanceConc!6412 Int) Bool)

(assert (=> b!1091678 (= c!185021 (forall!2344 objs!8 lambda!41526))))

(declare-fun b!1091679 () Bool)

(declare-fun e!690885 () Bool)

(declare-fun tp!326486 () Bool)

(declare-fun inv!13423 (Conc!3199) Bool)

(assert (=> b!1091679 (= e!690885 (and (inv!13423 (c!185027 objs!8)) tp!326486))))

(declare-fun b!1091680 () Bool)

(declare-fun e!690883 () Unit!15909)

(declare-fun Unit!15911 () Unit!15909)

(assert (=> b!1091680 (= e!690883 Unit!15911)))

(declare-fun b!1091681 () Bool)

(declare-fun err!2039 () Unit!15909)

(assert (=> b!1091681 (= e!690883 err!2039)))

(declare-fun lt!365942 () Unit!15909)

(declare-fun lt!365939 () tuple2!11706)

(declare-fun forallContained!492 (List!10506 Int tuple2!11706) Unit!15909)

(declare-fun list!3758 (BalanceConc!6412) List!10506)

(assert (=> b!1091681 (= lt!365942 (forallContained!492 (list!3758 lt!365935) lambda!41526 lt!365939))))

(assert (=> b!1091681 true))

(declare-fun b!1091682 () Bool)

(declare-fun e!690879 () Unit!15909)

(declare-fun err!2041 () Unit!15909)

(assert (=> b!1091682 (= e!690879 err!2041)))

(declare-fun lt!365929 () Unit!15909)

(assert (=> b!1091682 (= lt!365929 (forallContained!492 (list!3758 objs!8) lambda!41524 lt!365939))))

(assert (=> b!1091682 true))

(declare-fun b!1091683 () Bool)

(declare-fun e!690888 () Bool)

(declare-fun size!8110 (List!10506) Int)

(declare-fun filter!246 (List!10506 Int) List!10506)

(assert (=> b!1091683 (= e!690888 (< (size!8110 (filter!246 lt!365944 lambda!41524)) (size!8110 lt!365944)))))

(declare-fun res!485091 () Bool)

(declare-fun e!690889 () Bool)

(assert (=> start!93382 (=> (not res!485091) (not e!690889))))

(assert (=> start!93382 (= res!485091 (forall!2344 objs!8 lambda!41523))))

(assert (=> start!93382 e!690889))

(declare-fun inv!13424 (BalanceConc!6412) Bool)

(assert (=> start!93382 (and (inv!13424 objs!8) e!690885)))

(declare-fun b!1091684 () Bool)

(declare-fun e!690886 () Bool)

(declare-fun e!690890 () Bool)

(assert (=> b!1091684 (= e!690886 (not e!690890))))

(declare-fun res!485093 () Bool)

(assert (=> b!1091684 (=> res!485093 e!690890)))

(declare-fun lt!365922 () BalanceConc!6412)

(assert (=> b!1091684 (= res!485093 (>= (size!8109 lt!365922) lt!365946))))

(assert (=> b!1091684 e!690888))

(declare-fun res!485096 () Bool)

(assert (=> b!1091684 (=> res!485096 e!690888)))

(assert (=> b!1091684 (= res!485096 lt!365925)))

(declare-fun isEmpty!6660 (List!10506) Bool)

(assert (=> b!1091684 (= lt!365925 (isEmpty!6660 lt!365944))))

(declare-fun lt!365936 () Unit!15909)

(assert (=> b!1091684 (= lt!365936 (lemmaNotForallFilterShorter!33 lt!365944 lambda!41524))))

(assert (=> b!1091684 (= lt!365944 (list!3758 objs!8))))

(declare-fun lt!365920 () Unit!15909)

(assert (=> b!1091684 (= lt!365920 e!690879)))

(declare-fun c!185023 () Bool)

(assert (=> b!1091684 (= c!185023 (forall!2344 objs!8 lambda!41524))))

(declare-fun b!1091685 () Bool)

(declare-fun lt!365947 () List!10506)

(declare-fun forall!2345 (List!10506 Int) Bool)

(assert (=> b!1091685 (= e!690887 (forall!2345 lt!365947 lambda!41523))))

(declare-fun lt!365924 () List!10506)

(declare-fun lt!365934 () BalanceConc!6412)

(assert (=> b!1091685 (= lt!365924 (list!3758 lt!365934))))

(declare-fun sortObjectsByID!0 (BalanceConc!6412) BalanceConc!6412)

(assert (=> b!1091685 (= lt!365947 (list!3758 (sortObjectsByID!0 lt!365922)))))

(declare-fun lt!365943 () List!10506)

(assert (=> b!1091685 (forall!2345 lt!365943 lambda!41523)))

(declare-fun lt!365927 () Unit!15909)

(declare-fun lemmaForallSubseq!35 (List!10506 List!10506 Int) Unit!15909)

(assert (=> b!1091685 (= lt!365927 (lemmaForallSubseq!35 lt!365943 lt!365944 lambda!41523))))

(declare-fun filter!247 (BalanceConc!6412 Int) BalanceConc!6412)

(assert (=> b!1091685 (= lt!365943 (list!3758 (filter!247 objs!8 lambda!41526)))))

(declare-fun lt!365945 () List!10506)

(assert (=> b!1091685 (forall!2345 lt!365945 lambda!41523)))

(declare-fun lt!365931 () Unit!15909)

(assert (=> b!1091685 (= lt!365931 (lemmaForallSubseq!35 lt!365945 lt!365944 lambda!41523))))

(assert (=> b!1091685 (= lt!365945 (list!3758 (filter!247 objs!8 lambda!41525)))))

(declare-fun lt!365928 () List!10506)

(assert (=> b!1091685 (forall!2345 lt!365928 lambda!41523)))

(declare-fun lt!365926 () Unit!15909)

(assert (=> b!1091685 (= lt!365926 (lemmaForallSubseq!35 lt!365928 lt!365944 lambda!41523))))

(assert (=> b!1091685 (= lt!365928 (list!3758 (filter!247 objs!8 lambda!41524)))))

(declare-fun lt!365948 () Unit!15909)

(declare-fun filterSubseq!27 (List!10506 Int) Unit!15909)

(assert (=> b!1091685 (= lt!365948 (filterSubseq!27 lt!365944 lambda!41526))))

(declare-fun lt!365930 () Unit!15909)

(assert (=> b!1091685 (= lt!365930 (filterSubseq!27 lt!365944 lambda!41525))))

(declare-fun lt!365921 () Unit!15909)

(assert (=> b!1091685 (= lt!365921 (filterSubseq!27 lt!365944 lambda!41524))))

(declare-fun b!1091686 () Bool)

(declare-fun e!690880 () Unit!15909)

(declare-fun Unit!15912 () Unit!15909)

(assert (=> b!1091686 (= e!690880 Unit!15912)))

(declare-fun b!1091687 () Bool)

(declare-fun err!2038 () Unit!15909)

(assert (=> b!1091687 (= e!690878 err!2038)))

(declare-fun lt!365923 () Unit!15909)

(assert (=> b!1091687 (= lt!365923 (forallContained!492 lt!365944 lambda!41526 lt!365939))))

(assert (=> b!1091687 true))

(declare-fun b!1091688 () Bool)

(assert (=> b!1091688 (= e!690884 (< (size!8110 (filter!246 lt!365944 lambda!41526)) (size!8110 lt!365944)))))

(declare-fun b!1091689 () Bool)

(declare-fun Unit!15913 () Unit!15909)

(assert (=> b!1091689 (= e!690879 Unit!15913)))

(declare-fun e!690877 () Bool)

(declare-fun e!690881 () Bool)

(assert (=> b!1091690 (= e!690877 e!690881)))

(declare-fun res!485092 () Bool)

(assert (=> b!1091690 (=> (not res!485092) (not e!690881))))

(declare-fun contains!1770 (BalanceConc!6412 tuple2!11706) Bool)

(assert (=> b!1091690 (= res!485092 (contains!1770 objs!8 lt!365939))))

(assert (=> b!1091690 (= lt!365935 (filter!247 objs!8 lambda!41526))))

(assert (=> b!1091690 (= lt!365934 (filter!247 objs!8 lambda!41525))))

(assert (=> b!1091690 (= lt!365922 (filter!247 objs!8 lambda!41524))))

(declare-fun apply!2049 (BalanceConc!6412 Int) tuple2!11706)

(assert (=> b!1091690 (= lt!365939 (apply!2049 objs!8 (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2)))))))

(declare-fun b!1091691 () Bool)

(declare-fun err!2040 () Unit!15909)

(assert (=> b!1091691 (= e!690880 err!2040)))

(declare-fun lt!365949 () Unit!15909)

(assert (=> b!1091691 (= lt!365949 (forallContained!492 (list!3758 lt!365922) lambda!41524 lt!365939))))

(assert (=> b!1091691 true))

(declare-fun b!1091692 () Bool)

(assert (=> b!1091692 (= e!690889 e!690877)))

(declare-fun res!485099 () Bool)

(assert (=> b!1091692 (=> (not res!485099) (not e!690877))))

(assert (=> b!1091692 (= res!485099 (> lt!365946 1))))

(assert (=> b!1091692 (= lt!365946 (size!8109 objs!8))))

(declare-fun b!1091693 () Bool)

(assert (=> b!1091693 (= e!690890 e!690882)))

(declare-fun res!485095 () Bool)

(assert (=> b!1091693 (=> res!485095 e!690882)))

(declare-fun lt!365933 () Bool)

(assert (=> b!1091693 (= res!485095 lt!365933)))

(declare-fun lt!365932 () Unit!15909)

(assert (=> b!1091693 (= lt!365932 e!690883)))

(declare-fun c!185020 () Bool)

(assert (=> b!1091693 (= c!185020 lt!365933)))

(assert (=> b!1091693 (= lt!365933 (contains!1770 lt!365935 lt!365939))))

(declare-fun b!1091694 () Bool)

(declare-fun Unit!15914 () Unit!15909)

(assert (=> b!1091694 (= e!690878 Unit!15914)))

(declare-fun b!1091695 () Bool)

(assert (=> b!1091695 (= e!690881 e!690886)))

(declare-fun res!485098 () Bool)

(assert (=> b!1091695 (=> (not res!485098) (not e!690886))))

(declare-fun lt!365940 () Bool)

(assert (=> b!1091695 (= res!485098 (not lt!365940))))

(declare-fun lt!365937 () Unit!15909)

(assert (=> b!1091695 (= lt!365937 e!690880)))

(declare-fun c!185022 () Bool)

(assert (=> b!1091695 (= c!185022 lt!365940)))

(assert (=> b!1091695 (= lt!365940 (contains!1770 lt!365922 lt!365939))))

(assert (= (and start!93382 res!485091) b!1091692))

(assert (= (and b!1091692 res!485099) b!1091690))

(assert (= (and b!1091690 res!485092) b!1091695))

(assert (= (and b!1091695 c!185022) b!1091691))

(assert (= (and b!1091695 (not c!185022)) b!1091686))

(assert (= (and b!1091695 res!485098) b!1091684))

(assert (= (and b!1091684 c!185023) b!1091682))

(assert (= (and b!1091684 (not c!185023)) b!1091689))

(assert (= (and b!1091684 (not res!485096)) b!1091683))

(assert (= (and b!1091684 (not res!485093)) b!1091693))

(assert (= (and b!1091693 c!185020) b!1091681))

(assert (= (and b!1091693 (not c!185020)) b!1091680))

(assert (= (and b!1091693 (not res!485095)) b!1091678))

(assert (= (and b!1091678 c!185021) b!1091687))

(assert (= (and b!1091678 (not c!185021)) b!1091694))

(assert (= (and b!1091678 (not res!485094)) b!1091688))

(assert (= (and b!1091678 (not res!485097)) b!1091685))

(assert (= start!93382 b!1091679))

(declare-fun m!1242339 () Bool)

(assert (=> b!1091681 m!1242339))

(assert (=> b!1091681 m!1242339))

(declare-fun m!1242341 () Bool)

(assert (=> b!1091681 m!1242341))

(declare-fun m!1242343 () Bool)

(assert (=> start!93382 m!1242343))

(declare-fun m!1242345 () Bool)

(assert (=> start!93382 m!1242345))

(declare-fun m!1242347 () Bool)

(assert (=> b!1091684 m!1242347))

(declare-fun m!1242349 () Bool)

(assert (=> b!1091684 m!1242349))

(declare-fun m!1242351 () Bool)

(assert (=> b!1091684 m!1242351))

(declare-fun m!1242353 () Bool)

(assert (=> b!1091684 m!1242353))

(declare-fun m!1242355 () Bool)

(assert (=> b!1091684 m!1242355))

(declare-fun m!1242357 () Bool)

(assert (=> b!1091692 m!1242357))

(declare-fun m!1242359 () Bool)

(assert (=> b!1091687 m!1242359))

(declare-fun m!1242361 () Bool)

(assert (=> b!1091693 m!1242361))

(declare-fun m!1242363 () Bool)

(assert (=> b!1091690 m!1242363))

(declare-fun m!1242365 () Bool)

(assert (=> b!1091690 m!1242365))

(declare-fun m!1242367 () Bool)

(assert (=> b!1091690 m!1242367))

(declare-fun m!1242369 () Bool)

(assert (=> b!1091690 m!1242369))

(declare-fun m!1242371 () Bool)

(assert (=> b!1091690 m!1242371))

(declare-fun m!1242373 () Bool)

(assert (=> b!1091688 m!1242373))

(assert (=> b!1091688 m!1242373))

(declare-fun m!1242375 () Bool)

(assert (=> b!1091688 m!1242375))

(declare-fun m!1242377 () Bool)

(assert (=> b!1091688 m!1242377))

(declare-fun m!1242379 () Bool)

(assert (=> b!1091695 m!1242379))

(declare-fun m!1242381 () Bool)

(assert (=> b!1091691 m!1242381))

(assert (=> b!1091691 m!1242381))

(declare-fun m!1242383 () Bool)

(assert (=> b!1091691 m!1242383))

(declare-fun m!1242385 () Bool)

(assert (=> b!1091679 m!1242385))

(declare-fun m!1242387 () Bool)

(assert (=> b!1091678 m!1242387))

(declare-fun m!1242389 () Bool)

(assert (=> b!1091678 m!1242389))

(declare-fun m!1242391 () Bool)

(assert (=> b!1091678 m!1242391))

(assert (=> b!1091682 m!1242349))

(assert (=> b!1091682 m!1242349))

(declare-fun m!1242393 () Bool)

(assert (=> b!1091682 m!1242393))

(declare-fun m!1242395 () Bool)

(assert (=> b!1091683 m!1242395))

(assert (=> b!1091683 m!1242395))

(declare-fun m!1242397 () Bool)

(assert (=> b!1091683 m!1242397))

(assert (=> b!1091683 m!1242377))

(declare-fun m!1242399 () Bool)

(assert (=> b!1091685 m!1242399))

(declare-fun m!1242401 () Bool)

(assert (=> b!1091685 m!1242401))

(declare-fun m!1242403 () Bool)

(assert (=> b!1091685 m!1242403))

(assert (=> b!1091685 m!1242369))

(declare-fun m!1242405 () Bool)

(assert (=> b!1091685 m!1242405))

(declare-fun m!1242407 () Bool)

(assert (=> b!1091685 m!1242407))

(declare-fun m!1242409 () Bool)

(assert (=> b!1091685 m!1242409))

(assert (=> b!1091685 m!1242367))

(declare-fun m!1242411 () Bool)

(assert (=> b!1091685 m!1242411))

(declare-fun m!1242413 () Bool)

(assert (=> b!1091685 m!1242413))

(assert (=> b!1091685 m!1242363))

(declare-fun m!1242415 () Bool)

(assert (=> b!1091685 m!1242415))

(declare-fun m!1242417 () Bool)

(assert (=> b!1091685 m!1242417))

(declare-fun m!1242419 () Bool)

(assert (=> b!1091685 m!1242419))

(assert (=> b!1091685 m!1242363))

(declare-fun m!1242421 () Bool)

(assert (=> b!1091685 m!1242421))

(declare-fun m!1242423 () Bool)

(assert (=> b!1091685 m!1242423))

(assert (=> b!1091685 m!1242367))

(declare-fun m!1242425 () Bool)

(assert (=> b!1091685 m!1242425))

(declare-fun m!1242427 () Bool)

(assert (=> b!1091685 m!1242427))

(assert (=> b!1091685 m!1242407))

(assert (=> b!1091685 m!1242369))

(declare-fun m!1242429 () Bool)

(assert (=> b!1091685 m!1242429))

(check-sat (not b!1091691) (not b!1091707) (not b!1091693) (not b!1091681) (not b!1091687) (not b!1091705) (not b!1091703) (not b!1091688) (not b!1091690) (not b!1091684) (not b!1091679) (not b!1091706) (not b!1091683) (not b!1091692) (not b!1091702) (not b!1091678) (not b!1091704) (not b!1091682) (not start!93382) (not b!1091685) (not b!1091695))
(check-sat)
(get-model)

(declare-fun d!307027 () Bool)

(declare-fun lt!365972 () Int)

(assert (=> d!307027 (>= lt!365972 0)))

(declare-fun e!690920 () Int)

(assert (=> d!307027 (= lt!365972 e!690920)))

(declare-fun c!185031 () Bool)

(get-info :version)

(assert (=> d!307027 (= c!185031 ((_ is Nil!10490) (filter!246 lt!365944 lambda!41526)))))

(assert (=> d!307027 (= (size!8110 (filter!246 lt!365944 lambda!41526)) lt!365972)))

(declare-fun b!1091729 () Bool)

(assert (=> b!1091729 (= e!690920 0)))

(declare-fun b!1091730 () Bool)

(assert (=> b!1091730 (= e!690920 (+ 1 (size!8110 (t!102180 (filter!246 lt!365944 lambda!41526)))))))

(assert (= (and d!307027 c!185031) b!1091729))

(assert (= (and d!307027 (not c!185031)) b!1091730))

(declare-fun m!1242485 () Bool)

(assert (=> b!1091730 m!1242485))

(assert (=> b!1091688 d!307027))

(declare-fun b!1091743 () Bool)

(declare-fun res!485122 () Bool)

(declare-fun e!690928 () Bool)

(assert (=> b!1091743 (=> (not res!485122) (not e!690928))))

(declare-fun lt!365975 () List!10506)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1511 (List!10506) (InoxSet tuple2!11706))

(assert (=> b!1091743 (= res!485122 (= ((_ map implies) (content!1511 lt!365975) (content!1511 lt!365944)) ((as const (InoxSet tuple2!11706)) true)))))

(declare-fun b!1091744 () Bool)

(declare-fun e!690927 () List!10506)

(assert (=> b!1091744 (= e!690927 Nil!10490)))

(declare-fun b!1091745 () Bool)

(declare-fun e!690929 () List!10506)

(assert (=> b!1091745 (= e!690927 e!690929)))

(declare-fun c!185036 () Bool)

(declare-fun dynLambda!4577 (Int tuple2!11706) Bool)

(assert (=> b!1091745 (= c!185036 (dynLambda!4577 lambda!41526 (h!15891 lt!365944)))))

(declare-fun bm!80256 () Bool)

(declare-fun call!80261 () List!10506)

(assert (=> bm!80256 (= call!80261 (filter!246 (t!102180 lt!365944) lambda!41526))))

(declare-fun b!1091746 () Bool)

(assert (=> b!1091746 (= e!690929 (Cons!10490 (h!15891 lt!365944) call!80261))))

(declare-fun d!307039 () Bool)

(assert (=> d!307039 e!690928))

(declare-fun res!485121 () Bool)

(assert (=> d!307039 (=> (not res!485121) (not e!690928))))

(assert (=> d!307039 (= res!485121 (<= (size!8110 lt!365975) (size!8110 lt!365944)))))

(assert (=> d!307039 (= lt!365975 e!690927)))

(declare-fun c!185037 () Bool)

(assert (=> d!307039 (= c!185037 ((_ is Nil!10490) lt!365944))))

(assert (=> d!307039 (= (filter!246 lt!365944 lambda!41526) lt!365975)))

(declare-fun b!1091747 () Bool)

(assert (=> b!1091747 (= e!690929 call!80261)))

(declare-fun b!1091748 () Bool)

(assert (=> b!1091748 (= e!690928 (forall!2345 lt!365975 lambda!41526))))

(assert (= (and d!307039 c!185037) b!1091744))

(assert (= (and d!307039 (not c!185037)) b!1091745))

(assert (= (and b!1091745 c!185036) b!1091746))

(assert (= (and b!1091745 (not c!185036)) b!1091747))

(assert (= (or b!1091746 b!1091747) bm!80256))

(assert (= (and d!307039 res!485121) b!1091743))

(assert (= (and b!1091743 res!485122) b!1091748))

(declare-fun b_lambda!30617 () Bool)

(assert (=> (not b_lambda!30617) (not b!1091745)))

(declare-fun m!1242487 () Bool)

(assert (=> b!1091743 m!1242487))

(declare-fun m!1242489 () Bool)

(assert (=> b!1091743 m!1242489))

(declare-fun m!1242491 () Bool)

(assert (=> bm!80256 m!1242491))

(declare-fun m!1242493 () Bool)

(assert (=> b!1091748 m!1242493))

(declare-fun m!1242495 () Bool)

(assert (=> b!1091745 m!1242495))

(declare-fun m!1242497 () Bool)

(assert (=> d!307039 m!1242497))

(assert (=> d!307039 m!1242377))

(assert (=> b!1091688 d!307039))

(declare-fun d!307041 () Bool)

(declare-fun lt!365976 () Int)

(assert (=> d!307041 (>= lt!365976 0)))

(declare-fun e!690930 () Int)

(assert (=> d!307041 (= lt!365976 e!690930)))

(declare-fun c!185038 () Bool)

(assert (=> d!307041 (= c!185038 ((_ is Nil!10490) lt!365944))))

(assert (=> d!307041 (= (size!8110 lt!365944) lt!365976)))

(declare-fun b!1091749 () Bool)

(assert (=> b!1091749 (= e!690930 0)))

(declare-fun b!1091750 () Bool)

(assert (=> b!1091750 (= e!690930 (+ 1 (size!8110 (t!102180 lt!365944))))))

(assert (= (and d!307041 c!185038) b!1091749))

(assert (= (and d!307041 (not c!185038)) b!1091750))

(declare-fun m!1242499 () Bool)

(assert (=> b!1091750 m!1242499))

(assert (=> b!1091688 d!307041))

(declare-fun d!307043 () Bool)

(assert (=> d!307043 (dynLambda!4577 lambda!41526 lt!365939)))

(declare-fun lt!365979 () Unit!15909)

(declare-fun choose!7014 (List!10506 Int tuple2!11706) Unit!15909)

(assert (=> d!307043 (= lt!365979 (choose!7014 lt!365944 lambda!41526 lt!365939))))

(declare-fun e!690933 () Bool)

(assert (=> d!307043 e!690933))

(declare-fun res!485125 () Bool)

(assert (=> d!307043 (=> (not res!485125) (not e!690933))))

(assert (=> d!307043 (= res!485125 (forall!2345 lt!365944 lambda!41526))))

(assert (=> d!307043 (= (forallContained!492 lt!365944 lambda!41526 lt!365939) lt!365979)))

(declare-fun b!1091753 () Bool)

(declare-fun contains!1773 (List!10506 tuple2!11706) Bool)

(assert (=> b!1091753 (= e!690933 (contains!1773 lt!365944 lt!365939))))

(assert (= (and d!307043 res!485125) b!1091753))

(declare-fun b_lambda!30619 () Bool)

(assert (=> (not b_lambda!30619) (not d!307043)))

(declare-fun m!1242501 () Bool)

(assert (=> d!307043 m!1242501))

(declare-fun m!1242503 () Bool)

(assert (=> d!307043 m!1242503))

(declare-fun m!1242505 () Bool)

(assert (=> d!307043 m!1242505))

(declare-fun m!1242507 () Bool)

(assert (=> b!1091753 m!1242507))

(assert (=> b!1091687 d!307043))

(declare-fun d!307045 () Bool)

(declare-fun lt!365982 () Bool)

(assert (=> d!307045 (= lt!365982 (forall!2345 (list!3758 objs!8) lambda!41523))))

(declare-fun forall!2347 (Conc!3199 Int) Bool)

(assert (=> d!307045 (= lt!365982 (forall!2347 (c!185027 objs!8) lambda!41523))))

(assert (=> d!307045 (= (forall!2344 objs!8 lambda!41523) lt!365982)))

(declare-fun bs!258003 () Bool)

(assert (= bs!258003 d!307045))

(assert (=> bs!258003 m!1242349))

(assert (=> bs!258003 m!1242349))

(declare-fun m!1242509 () Bool)

(assert (=> bs!258003 m!1242509))

(declare-fun m!1242511 () Bool)

(assert (=> bs!258003 m!1242511))

(assert (=> start!93382 d!307045))

(declare-fun d!307047 () Bool)

(declare-fun isBalanced!884 (Conc!3199) Bool)

(assert (=> d!307047 (= (inv!13424 objs!8) (isBalanced!884 (c!185027 objs!8)))))

(declare-fun bs!258004 () Bool)

(assert (= bs!258004 d!307047))

(declare-fun m!1242513 () Bool)

(assert (=> bs!258004 m!1242513))

(assert (=> start!93382 d!307047))

(declare-fun d!307049 () Bool)

(declare-fun e!690936 () Bool)

(assert (=> d!307049 e!690936))

(declare-fun res!485128 () Bool)

(assert (=> d!307049 (=> (not res!485128) (not e!690936))))

(declare-fun filter!249 (Conc!3199 Int) Conc!3199)

(assert (=> d!307049 (= res!485128 (isBalanced!884 (filter!249 (c!185027 objs!8) lambda!41526)))))

(declare-fun lt!365985 () BalanceConc!6412)

(assert (=> d!307049 (= lt!365985 (BalanceConc!6413 (filter!249 (c!185027 objs!8) lambda!41526)))))

(assert (=> d!307049 (= (filter!247 objs!8 lambda!41526) lt!365985)))

(declare-fun b!1091756 () Bool)

(assert (=> b!1091756 (= e!690936 (= (list!3758 lt!365985) (filter!246 (list!3758 objs!8) lambda!41526)))))

(assert (= (and d!307049 res!485128) b!1091756))

(declare-fun m!1242515 () Bool)

(assert (=> d!307049 m!1242515))

(assert (=> d!307049 m!1242515))

(declare-fun m!1242517 () Bool)

(assert (=> d!307049 m!1242517))

(declare-fun m!1242519 () Bool)

(assert (=> b!1091756 m!1242519))

(assert (=> b!1091756 m!1242349))

(assert (=> b!1091756 m!1242349))

(declare-fun m!1242521 () Bool)

(assert (=> b!1091756 m!1242521))

(assert (=> b!1091685 d!307049))

(declare-fun d!307051 () Bool)

(declare-fun e!690937 () Bool)

(assert (=> d!307051 e!690937))

(declare-fun res!485129 () Bool)

(assert (=> d!307051 (=> (not res!485129) (not e!690937))))

(assert (=> d!307051 (= res!485129 (isBalanced!884 (filter!249 (c!185027 objs!8) lambda!41524)))))

(declare-fun lt!365986 () BalanceConc!6412)

(assert (=> d!307051 (= lt!365986 (BalanceConc!6413 (filter!249 (c!185027 objs!8) lambda!41524)))))

(assert (=> d!307051 (= (filter!247 objs!8 lambda!41524) lt!365986)))

(declare-fun b!1091757 () Bool)

(assert (=> b!1091757 (= e!690937 (= (list!3758 lt!365986) (filter!246 (list!3758 objs!8) lambda!41524)))))

(assert (= (and d!307051 res!485129) b!1091757))

(declare-fun m!1242523 () Bool)

(assert (=> d!307051 m!1242523))

(assert (=> d!307051 m!1242523))

(declare-fun m!1242525 () Bool)

(assert (=> d!307051 m!1242525))

(declare-fun m!1242527 () Bool)

(assert (=> b!1091757 m!1242527))

(assert (=> b!1091757 m!1242349))

(assert (=> b!1091757 m!1242349))

(declare-fun m!1242529 () Bool)

(assert (=> b!1091757 m!1242529))

(assert (=> b!1091685 d!307051))

(declare-fun d!307053 () Bool)

(assert (=> d!307053 (forall!2345 lt!365928 lambda!41523)))

(declare-fun lt!365989 () Unit!15909)

(declare-fun choose!7015 (List!10506 List!10506 Int) Unit!15909)

(assert (=> d!307053 (= lt!365989 (choose!7015 lt!365928 lt!365944 lambda!41523))))

(assert (=> d!307053 (forall!2345 lt!365944 lambda!41523)))

(assert (=> d!307053 (= (lemmaForallSubseq!35 lt!365928 lt!365944 lambda!41523) lt!365989)))

(declare-fun bs!258005 () Bool)

(assert (= bs!258005 d!307053))

(assert (=> bs!258005 m!1242401))

(declare-fun m!1242531 () Bool)

(assert (=> bs!258005 m!1242531))

(declare-fun m!1242533 () Bool)

(assert (=> bs!258005 m!1242533))

(assert (=> b!1091685 d!307053))

(declare-fun d!307055 () Bool)

(declare-fun res!485134 () Bool)

(declare-fun e!690942 () Bool)

(assert (=> d!307055 (=> res!485134 e!690942)))

(assert (=> d!307055 (= res!485134 ((_ is Nil!10490) lt!365947))))

(assert (=> d!307055 (= (forall!2345 lt!365947 lambda!41523) e!690942)))

(declare-fun b!1091762 () Bool)

(declare-fun e!690943 () Bool)

(assert (=> b!1091762 (= e!690942 e!690943)))

(declare-fun res!485135 () Bool)

(assert (=> b!1091762 (=> (not res!485135) (not e!690943))))

(assert (=> b!1091762 (= res!485135 (dynLambda!4577 lambda!41523 (h!15891 lt!365947)))))

(declare-fun b!1091763 () Bool)

(assert (=> b!1091763 (= e!690943 (forall!2345 (t!102180 lt!365947) lambda!41523))))

(assert (= (and d!307055 (not res!485134)) b!1091762))

(assert (= (and b!1091762 res!485135) b!1091763))

(declare-fun b_lambda!30621 () Bool)

(assert (=> (not b_lambda!30621) (not b!1091762)))

(declare-fun m!1242535 () Bool)

(assert (=> b!1091762 m!1242535))

(declare-fun m!1242537 () Bool)

(assert (=> b!1091763 m!1242537))

(assert (=> b!1091685 d!307055))

(declare-fun bs!258037 () Bool)

(declare-fun b!1091933 () Bool)

(assert (= bs!258037 (and b!1091933 start!93382)))

(declare-fun lambda!41624 () Int)

(assert (=> bs!258037 (not (= lambda!41624 lambda!41523))))

(declare-fun bs!258038 () Bool)

(assert (= bs!258038 (and b!1091933 b!1091690)))

(declare-fun lt!366207 () tuple2!11706)

(assert (=> bs!258038 (= (= (_1!6679 lt!366207) (_1!6679 lt!365939)) (= lambda!41624 lambda!41524))))

(assert (=> bs!258038 (not (= lambda!41624 lambda!41525))))

(assert (=> bs!258038 (not (= lambda!41624 lambda!41526))))

(declare-fun b!1091944 () Bool)

(declare-fun e!691060 () Bool)

(assert (=> b!1091944 (= e!691060 true)))

(declare-fun b!1091943 () Bool)

(declare-fun e!691059 () Bool)

(assert (=> b!1091943 (= e!691059 e!691060)))

(assert (=> b!1091933 e!691059))

(assert (= b!1091943 b!1091944))

(assert (= b!1091933 b!1091943))

(declare-fun lambda!41625 () Int)

(assert (=> b!1091933 (not (= lambda!41625 lambda!41624))))

(assert (=> bs!258037 (not (= lambda!41625 lambda!41523))))

(assert (=> bs!258038 (= (= (_1!6679 lt!366207) (_1!6679 lt!365939)) (= lambda!41625 lambda!41525))))

(assert (=> bs!258038 (not (= lambda!41625 lambda!41526))))

(assert (=> bs!258038 (not (= lambda!41625 lambda!41524))))

(declare-fun b!1091946 () Bool)

(declare-fun e!691062 () Bool)

(assert (=> b!1091946 (= e!691062 true)))

(declare-fun b!1091945 () Bool)

(declare-fun e!691061 () Bool)

(assert (=> b!1091945 (= e!691061 e!691062)))

(assert (=> b!1091933 e!691061))

(assert (= b!1091945 b!1091946))

(assert (= b!1091933 b!1091945))

(declare-fun lambda!41626 () Int)

(assert (=> b!1091933 (not (= lambda!41626 lambda!41624))))

(assert (=> bs!258037 (not (= lambda!41626 lambda!41523))))

(assert (=> bs!258038 (not (= lambda!41626 lambda!41525))))

(assert (=> bs!258038 (= (= (_1!6679 lt!366207) (_1!6679 lt!365939)) (= lambda!41626 lambda!41526))))

(assert (=> bs!258038 (not (= lambda!41626 lambda!41524))))

(assert (=> b!1091933 (not (= lambda!41626 lambda!41625))))

(declare-fun b!1091948 () Bool)

(declare-fun e!691064 () Bool)

(assert (=> b!1091948 (= e!691064 true)))

(declare-fun b!1091947 () Bool)

(declare-fun e!691063 () Bool)

(assert (=> b!1091947 (= e!691063 e!691064)))

(assert (=> b!1091933 e!691063))

(assert (= b!1091947 b!1091948))

(assert (= b!1091933 b!1091947))

(declare-fun lambda!41627 () Int)

(assert (=> b!1091933 (not (= lambda!41627 lambda!41624))))

(assert (=> b!1091933 (not (= lambda!41627 lambda!41626))))

(assert (=> bs!258037 (= lambda!41627 lambda!41523)))

(assert (=> bs!258038 (not (= lambda!41627 lambda!41525))))

(assert (=> bs!258038 (not (= lambda!41627 lambda!41526))))

(assert (=> bs!258038 (not (= lambda!41627 lambda!41524))))

(assert (=> b!1091933 (not (= lambda!41627 lambda!41625))))

(declare-fun bs!258039 () Bool)

(declare-fun d!307057 () Bool)

(assert (= bs!258039 (and d!307057 b!1091933)))

(declare-fun lambda!41628 () Int)

(assert (=> bs!258039 (not (= lambda!41628 lambda!41624))))

(assert (=> bs!258039 (not (= lambda!41628 lambda!41626))))

(declare-fun bs!258040 () Bool)

(assert (= bs!258040 (and d!307057 start!93382)))

(assert (=> bs!258040 (= lambda!41628 lambda!41523)))

(assert (=> bs!258039 (= lambda!41628 lambda!41627)))

(declare-fun bs!258041 () Bool)

(assert (= bs!258041 (and d!307057 b!1091690)))

(assert (=> bs!258041 (not (= lambda!41628 lambda!41525))))

(assert (=> bs!258041 (not (= lambda!41628 lambda!41526))))

(assert (=> bs!258041 (not (= lambda!41628 lambda!41524))))

(assert (=> bs!258039 (not (= lambda!41628 lambda!41625))))

(declare-fun b!1091931 () Bool)

(declare-fun e!691053 () Unit!15909)

(declare-fun Unit!15919 () Unit!15909)

(assert (=> b!1091931 (= e!691053 Unit!15919)))

(declare-fun lt!366229 () BalanceConc!6412)

(assert (=> d!307057 (forall!2344 lt!366229 lambda!41628)))

(declare-fun e!691054 () BalanceConc!6412)

(assert (=> d!307057 (= lt!366229 e!691054)))

(declare-fun c!185081 () Bool)

(assert (=> d!307057 (= c!185081 (<= (size!8109 lt!365922) 1))))

(assert (=> d!307057 (= (sortObjectsByID!0 lt!365922) lt!366229)))

(declare-fun b!1091932 () Bool)

(assert (=> b!1091932 (= e!691054 lt!365922)))

(declare-fun lt!366211 () BalanceConc!6412)

(declare-fun lt!366231 () BalanceConc!6412)

(declare-fun lt!366210 () BalanceConc!6412)

(declare-fun ++!2838 (BalanceConc!6412 BalanceConc!6412) BalanceConc!6412)

(assert (=> b!1091933 (= e!691054 (++!2838 (++!2838 (sortObjectsByID!0 lt!366210) lt!366211) (sortObjectsByID!0 lt!366231)))))

(assert (=> b!1091933 (= lt!366207 (apply!2049 lt!365922 (ite (>= (size!8109 lt!365922) 0) (div (size!8109 lt!365922) 2) (- (div (- (size!8109 lt!365922)) 2)))))))

(assert (=> b!1091933 (= lt!366210 (filter!247 lt!365922 lambda!41624))))

(assert (=> b!1091933 (= lt!366211 (filter!247 lt!365922 lambda!41625))))

(assert (=> b!1091933 (= lt!366231 (filter!247 lt!365922 lambda!41626))))

(declare-fun c!185084 () Bool)

(assert (=> b!1091933 (= c!185084 (contains!1770 lt!366210 lt!366207))))

(declare-fun lt!366226 () Unit!15909)

(declare-fun e!691052 () Unit!15909)

(assert (=> b!1091933 (= lt!366226 e!691052)))

(declare-fun c!185083 () Bool)

(assert (=> b!1091933 (= c!185083 (forall!2344 lt!365922 lambda!41624))))

(declare-fun lt!366232 () Unit!15909)

(declare-fun e!691058 () Unit!15909)

(assert (=> b!1091933 (= lt!366232 e!691058)))

(declare-fun lt!366214 () List!10506)

(assert (=> b!1091933 (= lt!366214 (list!3758 lt!365922))))

(declare-fun lt!366228 () Unit!15909)

(assert (=> b!1091933 (= lt!366228 (lemmaNotForallFilterShorter!33 lt!366214 lambda!41624))))

(declare-fun res!485170 () Bool)

(assert (=> b!1091933 (= res!485170 (isEmpty!6660 lt!366214))))

(declare-fun e!691056 () Bool)

(assert (=> b!1091933 (=> res!485170 e!691056)))

(assert (=> b!1091933 e!691056))

(declare-fun lt!366202 () Unit!15909)

(assert (=> b!1091933 (= lt!366202 lt!366228)))

(declare-fun c!185082 () Bool)

(assert (=> b!1091933 (= c!185082 (contains!1770 lt!366231 lt!366207))))

(declare-fun lt!366206 () Unit!15909)

(assert (=> b!1091933 (= lt!366206 e!691053)))

(declare-fun c!185085 () Bool)

(assert (=> b!1091933 (= c!185085 (forall!2344 lt!365922 lambda!41626))))

(declare-fun lt!366235 () Unit!15909)

(declare-fun e!691055 () Unit!15909)

(assert (=> b!1091933 (= lt!366235 e!691055)))

(declare-fun lt!366212 () List!10506)

(assert (=> b!1091933 (= lt!366212 (list!3758 lt!365922))))

(declare-fun lt!366237 () Unit!15909)

(assert (=> b!1091933 (= lt!366237 (lemmaNotForallFilterShorter!33 lt!366212 lambda!41626))))

(declare-fun res!485171 () Bool)

(assert (=> b!1091933 (= res!485171 (isEmpty!6660 lt!366212))))

(declare-fun e!691057 () Bool)

(assert (=> b!1091933 (=> res!485171 e!691057)))

(assert (=> b!1091933 e!691057))

(declare-fun lt!366233 () Unit!15909)

(assert (=> b!1091933 (= lt!366233 lt!366237)))

(declare-fun lt!366227 () Unit!15909)

(assert (=> b!1091933 (= lt!366227 (filterSubseq!27 (list!3758 lt!365922) lambda!41624))))

(declare-fun lt!366204 () Unit!15909)

(assert (=> b!1091933 (= lt!366204 (filterSubseq!27 (list!3758 lt!365922) lambda!41625))))

(declare-fun lt!366230 () Unit!15909)

(assert (=> b!1091933 (= lt!366230 (filterSubseq!27 (list!3758 lt!365922) lambda!41626))))

(declare-fun lt!366220 () List!10506)

(assert (=> b!1091933 (= lt!366220 (list!3758 (filter!247 lt!365922 lambda!41624)))))

(declare-fun lt!366213 () List!10506)

(assert (=> b!1091933 (= lt!366213 (list!3758 lt!365922))))

(declare-fun lt!366234 () Unit!15909)

(assert (=> b!1091933 (= lt!366234 (lemmaForallSubseq!35 lt!366220 lt!366213 lambda!41627))))

(assert (=> b!1091933 (forall!2345 lt!366220 lambda!41627)))

(declare-fun lt!366217 () Unit!15909)

(assert (=> b!1091933 (= lt!366217 lt!366234)))

(declare-fun lt!366205 () List!10506)

(assert (=> b!1091933 (= lt!366205 (list!3758 (filter!247 lt!365922 lambda!41625)))))

(declare-fun lt!366224 () List!10506)

(assert (=> b!1091933 (= lt!366224 (list!3758 lt!365922))))

(declare-fun lt!366219 () Unit!15909)

(assert (=> b!1091933 (= lt!366219 (lemmaForallSubseq!35 lt!366205 lt!366224 lambda!41627))))

(assert (=> b!1091933 (forall!2345 lt!366205 lambda!41627)))

(declare-fun lt!366218 () Unit!15909)

(assert (=> b!1091933 (= lt!366218 lt!366219)))

(declare-fun lt!366209 () List!10506)

(assert (=> b!1091933 (= lt!366209 (list!3758 (filter!247 lt!365922 lambda!41626)))))

(declare-fun lt!366222 () List!10506)

(assert (=> b!1091933 (= lt!366222 (list!3758 lt!365922))))

(declare-fun lt!366223 () Unit!15909)

(assert (=> b!1091933 (= lt!366223 (lemmaForallSubseq!35 lt!366209 lt!366222 lambda!41627))))

(assert (=> b!1091933 (forall!2345 lt!366209 lambda!41627)))

(declare-fun lt!366215 () Unit!15909)

(assert (=> b!1091933 (= lt!366215 lt!366223)))

(declare-fun lt!366208 () Unit!15909)

(declare-fun lemmaConcatPreservesForall!80 (List!10506 List!10506 Int) Unit!15909)

(assert (=> b!1091933 (= lt!366208 (lemmaConcatPreservesForall!80 (list!3758 (sortObjectsByID!0 lt!366210)) (list!3758 lt!366211) lambda!41627))))

(declare-fun lt!366216 () Unit!15909)

(declare-fun ++!2839 (List!10506 List!10506) List!10506)

(assert (=> b!1091933 (= lt!366216 (lemmaConcatPreservesForall!80 (++!2839 (list!3758 (sortObjectsByID!0 lt!366210)) (list!3758 lt!366211)) (list!3758 (sortObjectsByID!0 lt!366231)) lambda!41627))))

(declare-fun b!1091934 () Bool)

(assert (=> b!1091934 true))

(declare-fun lt!366236 () Unit!15909)

(assert (=> b!1091934 (= lt!366236 (forallContained!492 (list!3758 lt!366231) lambda!41626 lt!366207))))

(declare-fun err!2064 () Unit!15909)

(assert (=> b!1091934 (= e!691053 err!2064)))

(declare-fun b!1091935 () Bool)

(assert (=> b!1091935 true))

(declare-fun lt!366203 () Unit!15909)

(assert (=> b!1091935 (= lt!366203 (forallContained!492 (list!3758 lt!365922) lambda!41624 lt!366207))))

(declare-fun err!2063 () Unit!15909)

(assert (=> b!1091935 (= e!691058 err!2063)))

(declare-fun b!1091936 () Bool)

(assert (=> b!1091936 true))

(declare-fun lt!366225 () Unit!15909)

(assert (=> b!1091936 (= lt!366225 (forallContained!492 (list!3758 lt!365922) lambda!41626 lt!366207))))

(declare-fun err!2065 () Unit!15909)

(assert (=> b!1091936 (= e!691055 err!2065)))

(declare-fun b!1091937 () Bool)

(declare-fun Unit!15920 () Unit!15909)

(assert (=> b!1091937 (= e!691058 Unit!15920)))

(declare-fun b!1091938 () Bool)

(assert (=> b!1091938 (= e!691056 (< (size!8110 (filter!246 lt!366214 lambda!41624)) (size!8110 lt!366214)))))

(declare-fun b!1091939 () Bool)

(assert (=> b!1091939 (= e!691057 (< (size!8110 (filter!246 lt!366212 lambda!41626)) (size!8110 lt!366212)))))

(declare-fun b!1091940 () Bool)

(assert (=> b!1091940 true))

(declare-fun lt!366221 () Unit!15909)

(assert (=> b!1091940 (= lt!366221 (forallContained!492 (list!3758 lt!366210) lambda!41624 lt!366207))))

(declare-fun err!2062 () Unit!15909)

(assert (=> b!1091940 (= e!691052 err!2062)))

(declare-fun b!1091941 () Bool)

(declare-fun Unit!15921 () Unit!15909)

(assert (=> b!1091941 (= e!691052 Unit!15921)))

(declare-fun b!1091942 () Bool)

(declare-fun Unit!15922 () Unit!15909)

(assert (=> b!1091942 (= e!691055 Unit!15922)))

(assert (= (and d!307057 c!185081) b!1091932))

(assert (= (and d!307057 (not c!185081)) b!1091933))

(assert (= (and b!1091933 c!185084) b!1091940))

(assert (= (and b!1091933 (not c!185084)) b!1091941))

(assert (= (and b!1091933 c!185083) b!1091935))

(assert (= (and b!1091933 (not c!185083)) b!1091937))

(assert (= (and b!1091933 (not res!485170)) b!1091938))

(assert (= (and b!1091933 c!185082) b!1091934))

(assert (= (and b!1091933 (not c!185082)) b!1091931))

(assert (= (and b!1091933 c!185085) b!1091936))

(assert (= (and b!1091933 (not c!185085)) b!1091942))

(assert (= (and b!1091933 (not res!485171)) b!1091939))

(assert (=> b!1091935 m!1242381))

(assert (=> b!1091935 m!1242381))

(declare-fun m!1242771 () Bool)

(assert (=> b!1091935 m!1242771))

(declare-fun m!1242773 () Bool)

(assert (=> b!1091933 m!1242773))

(declare-fun m!1242775 () Bool)

(assert (=> b!1091933 m!1242775))

(declare-fun m!1242777 () Bool)

(assert (=> b!1091933 m!1242777))

(declare-fun m!1242779 () Bool)

(assert (=> b!1091933 m!1242779))

(declare-fun m!1242781 () Bool)

(assert (=> b!1091933 m!1242781))

(declare-fun m!1242783 () Bool)

(assert (=> b!1091933 m!1242783))

(assert (=> b!1091933 m!1242783))

(assert (=> b!1091933 m!1242381))

(declare-fun m!1242785 () Bool)

(assert (=> b!1091933 m!1242785))

(declare-fun m!1242787 () Bool)

(assert (=> b!1091933 m!1242787))

(declare-fun m!1242789 () Bool)

(assert (=> b!1091933 m!1242789))

(declare-fun m!1242791 () Bool)

(assert (=> b!1091933 m!1242791))

(declare-fun m!1242793 () Bool)

(assert (=> b!1091933 m!1242793))

(declare-fun m!1242795 () Bool)

(assert (=> b!1091933 m!1242795))

(assert (=> b!1091933 m!1242777))

(declare-fun m!1242797 () Bool)

(assert (=> b!1091933 m!1242797))

(declare-fun m!1242799 () Bool)

(assert (=> b!1091933 m!1242799))

(declare-fun m!1242801 () Bool)

(assert (=> b!1091933 m!1242801))

(assert (=> b!1091933 m!1242789))

(declare-fun m!1242803 () Bool)

(assert (=> b!1091933 m!1242803))

(assert (=> b!1091933 m!1242803))

(declare-fun m!1242805 () Bool)

(assert (=> b!1091933 m!1242805))

(declare-fun m!1242807 () Bool)

(assert (=> b!1091933 m!1242807))

(assert (=> b!1091933 m!1242799))

(assert (=> b!1091933 m!1242789))

(assert (=> b!1091933 m!1242351))

(assert (=> b!1091933 m!1242805))

(assert (=> b!1091933 m!1242803))

(assert (=> b!1091933 m!1242805))

(assert (=> b!1091933 m!1242775))

(declare-fun m!1242809 () Bool)

(assert (=> b!1091933 m!1242809))

(declare-fun m!1242811 () Bool)

(assert (=> b!1091933 m!1242811))

(declare-fun m!1242813 () Bool)

(assert (=> b!1091933 m!1242813))

(assert (=> b!1091933 m!1242381))

(declare-fun m!1242815 () Bool)

(assert (=> b!1091933 m!1242815))

(assert (=> b!1091933 m!1242791))

(assert (=> b!1091933 m!1242795))

(declare-fun m!1242817 () Bool)

(assert (=> b!1091933 m!1242817))

(assert (=> b!1091933 m!1242799))

(declare-fun m!1242819 () Bool)

(assert (=> b!1091933 m!1242819))

(assert (=> b!1091933 m!1242381))

(declare-fun m!1242821 () Bool)

(assert (=> b!1091933 m!1242821))

(declare-fun m!1242823 () Bool)

(assert (=> b!1091933 m!1242823))

(assert (=> b!1091933 m!1242783))

(declare-fun m!1242825 () Bool)

(assert (=> b!1091933 m!1242825))

(declare-fun m!1242827 () Bool)

(assert (=> b!1091933 m!1242827))

(declare-fun m!1242829 () Bool)

(assert (=> b!1091933 m!1242829))

(assert (=> b!1091933 m!1242381))

(declare-fun m!1242831 () Bool)

(assert (=> b!1091933 m!1242831))

(declare-fun m!1242833 () Bool)

(assert (=> b!1091933 m!1242833))

(declare-fun m!1242835 () Bool)

(assert (=> b!1091933 m!1242835))

(assert (=> b!1091933 m!1242801))

(declare-fun m!1242837 () Bool)

(assert (=> b!1091933 m!1242837))

(assert (=> b!1091933 m!1242795))

(assert (=> b!1091933 m!1242801))

(declare-fun m!1242839 () Bool)

(assert (=> b!1091933 m!1242839))

(declare-fun m!1242841 () Bool)

(assert (=> b!1091938 m!1242841))

(assert (=> b!1091938 m!1242841))

(declare-fun m!1242843 () Bool)

(assert (=> b!1091938 m!1242843))

(declare-fun m!1242845 () Bool)

(assert (=> b!1091938 m!1242845))

(declare-fun m!1242847 () Bool)

(assert (=> b!1091939 m!1242847))

(assert (=> b!1091939 m!1242847))

(declare-fun m!1242849 () Bool)

(assert (=> b!1091939 m!1242849))

(declare-fun m!1242851 () Bool)

(assert (=> b!1091939 m!1242851))

(assert (=> b!1091936 m!1242381))

(assert (=> b!1091936 m!1242381))

(declare-fun m!1242853 () Bool)

(assert (=> b!1091936 m!1242853))

(declare-fun m!1242855 () Bool)

(assert (=> d!307057 m!1242855))

(assert (=> d!307057 m!1242351))

(declare-fun m!1242857 () Bool)

(assert (=> b!1091940 m!1242857))

(assert (=> b!1091940 m!1242857))

(declare-fun m!1242859 () Bool)

(assert (=> b!1091940 m!1242859))

(declare-fun m!1242861 () Bool)

(assert (=> b!1091934 m!1242861))

(assert (=> b!1091934 m!1242861))

(declare-fun m!1242863 () Bool)

(assert (=> b!1091934 m!1242863))

(assert (=> b!1091685 d!307057))

(declare-fun d!307141 () Bool)

(declare-fun subseq!140 (List!10506 List!10506) Bool)

(assert (=> d!307141 (subseq!140 (filter!246 lt!365944 lambda!41524) lt!365944)))

(declare-fun lt!366240 () Unit!15909)

(declare-fun choose!7016 (List!10506 Int) Unit!15909)

(assert (=> d!307141 (= lt!366240 (choose!7016 lt!365944 lambda!41524))))

(assert (=> d!307141 (= (filterSubseq!27 lt!365944 lambda!41524) lt!366240)))

(declare-fun bs!258042 () Bool)

(assert (= bs!258042 d!307141))

(assert (=> bs!258042 m!1242395))

(assert (=> bs!258042 m!1242395))

(declare-fun m!1242865 () Bool)

(assert (=> bs!258042 m!1242865))

(declare-fun m!1242867 () Bool)

(assert (=> bs!258042 m!1242867))

(assert (=> b!1091685 d!307141))

(declare-fun d!307143 () Bool)

(assert (=> d!307143 (forall!2345 lt!365943 lambda!41523)))

(declare-fun lt!366241 () Unit!15909)

(assert (=> d!307143 (= lt!366241 (choose!7015 lt!365943 lt!365944 lambda!41523))))

(assert (=> d!307143 (forall!2345 lt!365944 lambda!41523)))

(assert (=> d!307143 (= (lemmaForallSubseq!35 lt!365943 lt!365944 lambda!41523) lt!366241)))

(declare-fun bs!258043 () Bool)

(assert (= bs!258043 d!307143))

(assert (=> bs!258043 m!1242423))

(declare-fun m!1242869 () Bool)

(assert (=> bs!258043 m!1242869))

(assert (=> bs!258043 m!1242533))

(assert (=> b!1091685 d!307143))

(declare-fun d!307145 () Bool)

(declare-fun list!3760 (Conc!3199) List!10506)

(assert (=> d!307145 (= (list!3758 lt!365934) (list!3760 (c!185027 lt!365934)))))

(declare-fun bs!258044 () Bool)

(assert (= bs!258044 d!307145))

(declare-fun m!1242871 () Bool)

(assert (=> bs!258044 m!1242871))

(assert (=> b!1091685 d!307145))

(declare-fun d!307147 () Bool)

(assert (=> d!307147 (= (list!3758 (filter!247 objs!8 lambda!41524)) (list!3760 (c!185027 (filter!247 objs!8 lambda!41524))))))

(declare-fun bs!258045 () Bool)

(assert (= bs!258045 d!307147))

(declare-fun m!1242873 () Bool)

(assert (=> bs!258045 m!1242873))

(assert (=> b!1091685 d!307147))

(declare-fun d!307149 () Bool)

(assert (=> d!307149 (= (list!3758 (filter!247 objs!8 lambda!41525)) (list!3760 (c!185027 (filter!247 objs!8 lambda!41525))))))

(declare-fun bs!258046 () Bool)

(assert (= bs!258046 d!307149))

(declare-fun m!1242875 () Bool)

(assert (=> bs!258046 m!1242875))

(assert (=> b!1091685 d!307149))

(declare-fun d!307151 () Bool)

(assert (=> d!307151 (forall!2345 lt!365945 lambda!41523)))

(declare-fun lt!366242 () Unit!15909)

(assert (=> d!307151 (= lt!366242 (choose!7015 lt!365945 lt!365944 lambda!41523))))

(assert (=> d!307151 (forall!2345 lt!365944 lambda!41523)))

(assert (=> d!307151 (= (lemmaForallSubseq!35 lt!365945 lt!365944 lambda!41523) lt!366242)))

(declare-fun bs!258047 () Bool)

(assert (= bs!258047 d!307151))

(assert (=> bs!258047 m!1242403))

(declare-fun m!1242877 () Bool)

(assert (=> bs!258047 m!1242877))

(assert (=> bs!258047 m!1242533))

(assert (=> b!1091685 d!307151))

(declare-fun d!307153 () Bool)

(assert (=> d!307153 (subseq!140 (filter!246 lt!365944 lambda!41526) lt!365944)))

(declare-fun lt!366243 () Unit!15909)

(assert (=> d!307153 (= lt!366243 (choose!7016 lt!365944 lambda!41526))))

(assert (=> d!307153 (= (filterSubseq!27 lt!365944 lambda!41526) lt!366243)))

(declare-fun bs!258048 () Bool)

(assert (= bs!258048 d!307153))

(assert (=> bs!258048 m!1242373))

(assert (=> bs!258048 m!1242373))

(declare-fun m!1242879 () Bool)

(assert (=> bs!258048 m!1242879))

(declare-fun m!1242881 () Bool)

(assert (=> bs!258048 m!1242881))

(assert (=> b!1091685 d!307153))

(declare-fun d!307155 () Bool)

(assert (=> d!307155 (= (list!3758 (sortObjectsByID!0 lt!365922)) (list!3760 (c!185027 (sortObjectsByID!0 lt!365922))))))

(declare-fun bs!258049 () Bool)

(assert (= bs!258049 d!307155))

(declare-fun m!1242883 () Bool)

(assert (=> bs!258049 m!1242883))

(assert (=> b!1091685 d!307155))

(declare-fun d!307157 () Bool)

(declare-fun e!691065 () Bool)

(assert (=> d!307157 e!691065))

(declare-fun res!485172 () Bool)

(assert (=> d!307157 (=> (not res!485172) (not e!691065))))

(assert (=> d!307157 (= res!485172 (isBalanced!884 (filter!249 (c!185027 objs!8) lambda!41525)))))

(declare-fun lt!366244 () BalanceConc!6412)

(assert (=> d!307157 (= lt!366244 (BalanceConc!6413 (filter!249 (c!185027 objs!8) lambda!41525)))))

(assert (=> d!307157 (= (filter!247 objs!8 lambda!41525) lt!366244)))

(declare-fun b!1091949 () Bool)

(assert (=> b!1091949 (= e!691065 (= (list!3758 lt!366244) (filter!246 (list!3758 objs!8) lambda!41525)))))

(assert (= (and d!307157 res!485172) b!1091949))

(declare-fun m!1242885 () Bool)

(assert (=> d!307157 m!1242885))

(assert (=> d!307157 m!1242885))

(declare-fun m!1242887 () Bool)

(assert (=> d!307157 m!1242887))

(declare-fun m!1242889 () Bool)

(assert (=> b!1091949 m!1242889))

(assert (=> b!1091949 m!1242349))

(assert (=> b!1091949 m!1242349))

(declare-fun m!1242891 () Bool)

(assert (=> b!1091949 m!1242891))

(assert (=> b!1091685 d!307157))

(declare-fun d!307159 () Bool)

(assert (=> d!307159 (= (list!3758 (filter!247 objs!8 lambda!41526)) (list!3760 (c!185027 (filter!247 objs!8 lambda!41526))))))

(declare-fun bs!258050 () Bool)

(assert (= bs!258050 d!307159))

(declare-fun m!1242893 () Bool)

(assert (=> bs!258050 m!1242893))

(assert (=> b!1091685 d!307159))

(declare-fun d!307161 () Bool)

(declare-fun res!485173 () Bool)

(declare-fun e!691066 () Bool)

(assert (=> d!307161 (=> res!485173 e!691066)))

(assert (=> d!307161 (= res!485173 ((_ is Nil!10490) lt!365943))))

(assert (=> d!307161 (= (forall!2345 lt!365943 lambda!41523) e!691066)))

(declare-fun b!1091950 () Bool)

(declare-fun e!691067 () Bool)

(assert (=> b!1091950 (= e!691066 e!691067)))

(declare-fun res!485174 () Bool)

(assert (=> b!1091950 (=> (not res!485174) (not e!691067))))

(assert (=> b!1091950 (= res!485174 (dynLambda!4577 lambda!41523 (h!15891 lt!365943)))))

(declare-fun b!1091951 () Bool)

(assert (=> b!1091951 (= e!691067 (forall!2345 (t!102180 lt!365943) lambda!41523))))

(assert (= (and d!307161 (not res!485173)) b!1091950))

(assert (= (and b!1091950 res!485174) b!1091951))

(declare-fun b_lambda!30657 () Bool)

(assert (=> (not b_lambda!30657) (not b!1091950)))

(declare-fun m!1242895 () Bool)

(assert (=> b!1091950 m!1242895))

(declare-fun m!1242897 () Bool)

(assert (=> b!1091951 m!1242897))

(assert (=> b!1091685 d!307161))

(declare-fun d!307163 () Bool)

(assert (=> d!307163 (subseq!140 (filter!246 lt!365944 lambda!41525) lt!365944)))

(declare-fun lt!366245 () Unit!15909)

(assert (=> d!307163 (= lt!366245 (choose!7016 lt!365944 lambda!41525))))

(assert (=> d!307163 (= (filterSubseq!27 lt!365944 lambda!41525) lt!366245)))

(declare-fun bs!258051 () Bool)

(assert (= bs!258051 d!307163))

(declare-fun m!1242899 () Bool)

(assert (=> bs!258051 m!1242899))

(assert (=> bs!258051 m!1242899))

(declare-fun m!1242901 () Bool)

(assert (=> bs!258051 m!1242901))

(declare-fun m!1242903 () Bool)

(assert (=> bs!258051 m!1242903))

(assert (=> b!1091685 d!307163))

(declare-fun d!307165 () Bool)

(declare-fun res!485175 () Bool)

(declare-fun e!691068 () Bool)

(assert (=> d!307165 (=> res!485175 e!691068)))

(assert (=> d!307165 (= res!485175 ((_ is Nil!10490) lt!365945))))

(assert (=> d!307165 (= (forall!2345 lt!365945 lambda!41523) e!691068)))

(declare-fun b!1091952 () Bool)

(declare-fun e!691069 () Bool)

(assert (=> b!1091952 (= e!691068 e!691069)))

(declare-fun res!485176 () Bool)

(assert (=> b!1091952 (=> (not res!485176) (not e!691069))))

(assert (=> b!1091952 (= res!485176 (dynLambda!4577 lambda!41523 (h!15891 lt!365945)))))

(declare-fun b!1091953 () Bool)

(assert (=> b!1091953 (= e!691069 (forall!2345 (t!102180 lt!365945) lambda!41523))))

(assert (= (and d!307165 (not res!485175)) b!1091952))

(assert (= (and b!1091952 res!485176) b!1091953))

(declare-fun b_lambda!30659 () Bool)

(assert (=> (not b_lambda!30659) (not b!1091952)))

(declare-fun m!1242905 () Bool)

(assert (=> b!1091952 m!1242905))

(declare-fun m!1242907 () Bool)

(assert (=> b!1091953 m!1242907))

(assert (=> b!1091685 d!307165))

(declare-fun d!307167 () Bool)

(declare-fun res!485177 () Bool)

(declare-fun e!691070 () Bool)

(assert (=> d!307167 (=> res!485177 e!691070)))

(assert (=> d!307167 (= res!485177 ((_ is Nil!10490) lt!365928))))

(assert (=> d!307167 (= (forall!2345 lt!365928 lambda!41523) e!691070)))

(declare-fun b!1091954 () Bool)

(declare-fun e!691071 () Bool)

(assert (=> b!1091954 (= e!691070 e!691071)))

(declare-fun res!485178 () Bool)

(assert (=> b!1091954 (=> (not res!485178) (not e!691071))))

(assert (=> b!1091954 (= res!485178 (dynLambda!4577 lambda!41523 (h!15891 lt!365928)))))

(declare-fun b!1091955 () Bool)

(assert (=> b!1091955 (= e!691071 (forall!2345 (t!102180 lt!365928) lambda!41523))))

(assert (= (and d!307167 (not res!485177)) b!1091954))

(assert (= (and b!1091954 res!485178) b!1091955))

(declare-fun b_lambda!30661 () Bool)

(assert (=> (not b_lambda!30661) (not b!1091954)))

(declare-fun m!1242909 () Bool)

(assert (=> b!1091954 m!1242909))

(declare-fun m!1242911 () Bool)

(assert (=> b!1091955 m!1242911))

(assert (=> b!1091685 d!307167))

(declare-fun d!307169 () Bool)

(declare-fun lt!366248 () Bool)

(assert (=> d!307169 (= lt!366248 (contains!1773 (list!3758 lt!365922) lt!365939))))

(declare-fun contains!1774 (Conc!3199 tuple2!11706) Bool)

(assert (=> d!307169 (= lt!366248 (contains!1774 (c!185027 lt!365922) lt!365939))))

(assert (=> d!307169 (= (contains!1770 lt!365922 lt!365939) lt!366248)))

(declare-fun bs!258052 () Bool)

(assert (= bs!258052 d!307169))

(assert (=> bs!258052 m!1242381))

(assert (=> bs!258052 m!1242381))

(declare-fun m!1242913 () Bool)

(assert (=> bs!258052 m!1242913))

(declare-fun m!1242915 () Bool)

(assert (=> bs!258052 m!1242915))

(assert (=> b!1091695 d!307169))

(declare-fun d!307171 () Bool)

(assert (=> d!307171 (= (list!3758 objs!8) (list!3760 (c!185027 objs!8)))))

(declare-fun bs!258053 () Bool)

(assert (= bs!258053 d!307171))

(declare-fun m!1242917 () Bool)

(assert (=> bs!258053 m!1242917))

(assert (=> b!1091684 d!307171))

(declare-fun d!307173 () Bool)

(declare-fun e!691074 () Bool)

(assert (=> d!307173 e!691074))

(declare-fun res!485181 () Bool)

(assert (=> d!307173 (=> res!485181 e!691074)))

(assert (=> d!307173 (= res!485181 (isEmpty!6660 lt!365944))))

(declare-fun lt!366251 () Unit!15909)

(declare-fun choose!7017 (List!10506 Int) Unit!15909)

(assert (=> d!307173 (= lt!366251 (choose!7017 lt!365944 lambda!41524))))

(assert (=> d!307173 (not (forall!2345 lt!365944 lambda!41524))))

(assert (=> d!307173 (= (lemmaNotForallFilterShorter!33 lt!365944 lambda!41524) lt!366251)))

(declare-fun b!1091958 () Bool)

(assert (=> b!1091958 (= e!691074 (< (size!8110 (filter!246 lt!365944 lambda!41524)) (size!8110 lt!365944)))))

(assert (= (and d!307173 (not res!485181)) b!1091958))

(assert (=> d!307173 m!1242355))

(declare-fun m!1242919 () Bool)

(assert (=> d!307173 m!1242919))

(declare-fun m!1242921 () Bool)

(assert (=> d!307173 m!1242921))

(assert (=> b!1091958 m!1242395))

(assert (=> b!1091958 m!1242395))

(assert (=> b!1091958 m!1242397))

(assert (=> b!1091958 m!1242377))

(assert (=> b!1091684 d!307173))

(declare-fun d!307175 () Bool)

(declare-fun lt!366254 () Int)

(assert (=> d!307175 (= lt!366254 (size!8110 (list!3758 lt!365922)))))

(declare-fun size!8112 (Conc!3199) Int)

(assert (=> d!307175 (= lt!366254 (size!8112 (c!185027 lt!365922)))))

(assert (=> d!307175 (= (size!8109 lt!365922) lt!366254)))

(declare-fun bs!258054 () Bool)

(assert (= bs!258054 d!307175))

(assert (=> bs!258054 m!1242381))

(assert (=> bs!258054 m!1242381))

(declare-fun m!1242923 () Bool)

(assert (=> bs!258054 m!1242923))

(declare-fun m!1242925 () Bool)

(assert (=> bs!258054 m!1242925))

(assert (=> b!1091684 d!307175))

(declare-fun d!307177 () Bool)

(assert (=> d!307177 (= (isEmpty!6660 lt!365944) ((_ is Nil!10490) lt!365944))))

(assert (=> b!1091684 d!307177))

(declare-fun d!307179 () Bool)

(declare-fun lt!366255 () Bool)

(assert (=> d!307179 (= lt!366255 (forall!2345 (list!3758 objs!8) lambda!41524))))

(assert (=> d!307179 (= lt!366255 (forall!2347 (c!185027 objs!8) lambda!41524))))

(assert (=> d!307179 (= (forall!2344 objs!8 lambda!41524) lt!366255)))

(declare-fun bs!258055 () Bool)

(assert (= bs!258055 d!307179))

(assert (=> bs!258055 m!1242349))

(assert (=> bs!258055 m!1242349))

(declare-fun m!1242927 () Bool)

(assert (=> bs!258055 m!1242927))

(declare-fun m!1242929 () Bool)

(assert (=> bs!258055 m!1242929))

(assert (=> b!1091684 d!307179))

(declare-fun d!307181 () Bool)

(declare-fun lt!366256 () Int)

(assert (=> d!307181 (>= lt!366256 0)))

(declare-fun e!691075 () Int)

(assert (=> d!307181 (= lt!366256 e!691075)))

(declare-fun c!185086 () Bool)

(assert (=> d!307181 (= c!185086 ((_ is Nil!10490) (filter!246 lt!365944 lambda!41524)))))

(assert (=> d!307181 (= (size!8110 (filter!246 lt!365944 lambda!41524)) lt!366256)))

(declare-fun b!1091959 () Bool)

(assert (=> b!1091959 (= e!691075 0)))

(declare-fun b!1091960 () Bool)

(assert (=> b!1091960 (= e!691075 (+ 1 (size!8110 (t!102180 (filter!246 lt!365944 lambda!41524)))))))

(assert (= (and d!307181 c!185086) b!1091959))

(assert (= (and d!307181 (not c!185086)) b!1091960))

(declare-fun m!1242931 () Bool)

(assert (=> b!1091960 m!1242931))

(assert (=> b!1091683 d!307181))

(declare-fun b!1091961 () Bool)

(declare-fun res!485183 () Bool)

(declare-fun e!691077 () Bool)

(assert (=> b!1091961 (=> (not res!485183) (not e!691077))))

(declare-fun lt!366257 () List!10506)

(assert (=> b!1091961 (= res!485183 (= ((_ map implies) (content!1511 lt!366257) (content!1511 lt!365944)) ((as const (InoxSet tuple2!11706)) true)))))

(declare-fun b!1091962 () Bool)

(declare-fun e!691076 () List!10506)

(assert (=> b!1091962 (= e!691076 Nil!10490)))

(declare-fun b!1091963 () Bool)

(declare-fun e!691078 () List!10506)

(assert (=> b!1091963 (= e!691076 e!691078)))

(declare-fun c!185087 () Bool)

(assert (=> b!1091963 (= c!185087 (dynLambda!4577 lambda!41524 (h!15891 lt!365944)))))

(declare-fun bm!80261 () Bool)

(declare-fun call!80266 () List!10506)

(assert (=> bm!80261 (= call!80266 (filter!246 (t!102180 lt!365944) lambda!41524))))

(declare-fun b!1091964 () Bool)

(assert (=> b!1091964 (= e!691078 (Cons!10490 (h!15891 lt!365944) call!80266))))

(declare-fun d!307183 () Bool)

(assert (=> d!307183 e!691077))

(declare-fun res!485182 () Bool)

(assert (=> d!307183 (=> (not res!485182) (not e!691077))))

(assert (=> d!307183 (= res!485182 (<= (size!8110 lt!366257) (size!8110 lt!365944)))))

(assert (=> d!307183 (= lt!366257 e!691076)))

(declare-fun c!185088 () Bool)

(assert (=> d!307183 (= c!185088 ((_ is Nil!10490) lt!365944))))

(assert (=> d!307183 (= (filter!246 lt!365944 lambda!41524) lt!366257)))

(declare-fun b!1091965 () Bool)

(assert (=> b!1091965 (= e!691078 call!80266)))

(declare-fun b!1091966 () Bool)

(assert (=> b!1091966 (= e!691077 (forall!2345 lt!366257 lambda!41524))))

(assert (= (and d!307183 c!185088) b!1091962))

(assert (= (and d!307183 (not c!185088)) b!1091963))

(assert (= (and b!1091963 c!185087) b!1091964))

(assert (= (and b!1091963 (not c!185087)) b!1091965))

(assert (= (or b!1091964 b!1091965) bm!80261))

(assert (= (and d!307183 res!485182) b!1091961))

(assert (= (and b!1091961 res!485183) b!1091966))

(declare-fun b_lambda!30663 () Bool)

(assert (=> (not b_lambda!30663) (not b!1091963)))

(declare-fun m!1242933 () Bool)

(assert (=> b!1091961 m!1242933))

(assert (=> b!1091961 m!1242489))

(declare-fun m!1242935 () Bool)

(assert (=> bm!80261 m!1242935))

(declare-fun m!1242937 () Bool)

(assert (=> b!1091966 m!1242937))

(declare-fun m!1242939 () Bool)

(assert (=> b!1091963 m!1242939))

(declare-fun m!1242941 () Bool)

(assert (=> d!307183 m!1242941))

(assert (=> d!307183 m!1242377))

(assert (=> b!1091683 d!307183))

(assert (=> b!1091683 d!307041))

(declare-fun d!307185 () Bool)

(declare-fun lt!366258 () Bool)

(assert (=> d!307185 (= lt!366258 (contains!1773 (list!3758 lt!365935) lt!365939))))

(assert (=> d!307185 (= lt!366258 (contains!1774 (c!185027 lt!365935) lt!365939))))

(assert (=> d!307185 (= (contains!1770 lt!365935 lt!365939) lt!366258)))

(declare-fun bs!258056 () Bool)

(assert (= bs!258056 d!307185))

(assert (=> bs!258056 m!1242339))

(assert (=> bs!258056 m!1242339))

(declare-fun m!1242943 () Bool)

(assert (=> bs!258056 m!1242943))

(declare-fun m!1242945 () Bool)

(assert (=> bs!258056 m!1242945))

(assert (=> b!1091693 d!307185))

(declare-fun d!307187 () Bool)

(assert (=> d!307187 (dynLambda!4577 lambda!41524 lt!365939)))

(declare-fun lt!366259 () Unit!15909)

(assert (=> d!307187 (= lt!366259 (choose!7014 (list!3758 objs!8) lambda!41524 lt!365939))))

(declare-fun e!691079 () Bool)

(assert (=> d!307187 e!691079))

(declare-fun res!485184 () Bool)

(assert (=> d!307187 (=> (not res!485184) (not e!691079))))

(assert (=> d!307187 (= res!485184 (forall!2345 (list!3758 objs!8) lambda!41524))))

(assert (=> d!307187 (= (forallContained!492 (list!3758 objs!8) lambda!41524 lt!365939) lt!366259)))

(declare-fun b!1091967 () Bool)

(assert (=> b!1091967 (= e!691079 (contains!1773 (list!3758 objs!8) lt!365939))))

(assert (= (and d!307187 res!485184) b!1091967))

(declare-fun b_lambda!30665 () Bool)

(assert (=> (not b_lambda!30665) (not d!307187)))

(declare-fun m!1242947 () Bool)

(assert (=> d!307187 m!1242947))

(assert (=> d!307187 m!1242349))

(declare-fun m!1242949 () Bool)

(assert (=> d!307187 m!1242949))

(assert (=> d!307187 m!1242349))

(assert (=> d!307187 m!1242927))

(assert (=> b!1091967 m!1242349))

(declare-fun m!1242951 () Bool)

(assert (=> b!1091967 m!1242951))

(assert (=> b!1091682 d!307187))

(assert (=> b!1091682 d!307171))

(declare-fun d!307189 () Bool)

(assert (=> d!307189 (dynLambda!4577 lambda!41526 lt!365939)))

(declare-fun lt!366260 () Unit!15909)

(assert (=> d!307189 (= lt!366260 (choose!7014 (list!3758 lt!365935) lambda!41526 lt!365939))))

(declare-fun e!691080 () Bool)

(assert (=> d!307189 e!691080))

(declare-fun res!485185 () Bool)

(assert (=> d!307189 (=> (not res!485185) (not e!691080))))

(assert (=> d!307189 (= res!485185 (forall!2345 (list!3758 lt!365935) lambda!41526))))

(assert (=> d!307189 (= (forallContained!492 (list!3758 lt!365935) lambda!41526 lt!365939) lt!366260)))

(declare-fun b!1091968 () Bool)

(assert (=> b!1091968 (= e!691080 (contains!1773 (list!3758 lt!365935) lt!365939))))

(assert (= (and d!307189 res!485185) b!1091968))

(declare-fun b_lambda!30667 () Bool)

(assert (=> (not b_lambda!30667) (not d!307189)))

(assert (=> d!307189 m!1242501))

(assert (=> d!307189 m!1242339))

(declare-fun m!1242953 () Bool)

(assert (=> d!307189 m!1242953))

(assert (=> d!307189 m!1242339))

(declare-fun m!1242955 () Bool)

(assert (=> d!307189 m!1242955))

(assert (=> b!1091968 m!1242339))

(assert (=> b!1091968 m!1242943))

(assert (=> b!1091681 d!307189))

(declare-fun d!307191 () Bool)

(assert (=> d!307191 (= (list!3758 lt!365935) (list!3760 (c!185027 lt!365935)))))

(declare-fun bs!258057 () Bool)

(assert (= bs!258057 d!307191))

(declare-fun m!1242957 () Bool)

(assert (=> bs!258057 m!1242957))

(assert (=> b!1091681 d!307191))

(declare-fun d!307193 () Bool)

(declare-fun lt!366261 () Int)

(assert (=> d!307193 (= lt!366261 (size!8110 (list!3758 objs!8)))))

(assert (=> d!307193 (= lt!366261 (size!8112 (c!185027 objs!8)))))

(assert (=> d!307193 (= (size!8109 objs!8) lt!366261)))

(declare-fun bs!258058 () Bool)

(assert (= bs!258058 d!307193))

(assert (=> bs!258058 m!1242349))

(assert (=> bs!258058 m!1242349))

(declare-fun m!1242959 () Bool)

(assert (=> bs!258058 m!1242959))

(declare-fun m!1242961 () Bool)

(assert (=> bs!258058 m!1242961))

(assert (=> b!1091692 d!307193))

(declare-fun d!307195 () Bool)

(assert (=> d!307195 (dynLambda!4577 lambda!41524 lt!365939)))

(declare-fun lt!366262 () Unit!15909)

(assert (=> d!307195 (= lt!366262 (choose!7014 (list!3758 lt!365922) lambda!41524 lt!365939))))

(declare-fun e!691081 () Bool)

(assert (=> d!307195 e!691081))

(declare-fun res!485186 () Bool)

(assert (=> d!307195 (=> (not res!485186) (not e!691081))))

(assert (=> d!307195 (= res!485186 (forall!2345 (list!3758 lt!365922) lambda!41524))))

(assert (=> d!307195 (= (forallContained!492 (list!3758 lt!365922) lambda!41524 lt!365939) lt!366262)))

(declare-fun b!1091969 () Bool)

(assert (=> b!1091969 (= e!691081 (contains!1773 (list!3758 lt!365922) lt!365939))))

(assert (= (and d!307195 res!485186) b!1091969))

(declare-fun b_lambda!30669 () Bool)

(assert (=> (not b_lambda!30669) (not d!307195)))

(assert (=> d!307195 m!1242947))

(assert (=> d!307195 m!1242381))

(declare-fun m!1242963 () Bool)

(assert (=> d!307195 m!1242963))

(assert (=> d!307195 m!1242381))

(declare-fun m!1242965 () Bool)

(assert (=> d!307195 m!1242965))

(assert (=> b!1091969 m!1242381))

(assert (=> b!1091969 m!1242913))

(assert (=> b!1091691 d!307195))

(declare-fun d!307197 () Bool)

(assert (=> d!307197 (= (list!3758 lt!365922) (list!3760 (c!185027 lt!365922)))))

(declare-fun bs!258059 () Bool)

(assert (= bs!258059 d!307197))

(declare-fun m!1242967 () Bool)

(assert (=> bs!258059 m!1242967))

(assert (=> b!1091691 d!307197))

(declare-fun d!307199 () Bool)

(declare-fun c!185091 () Bool)

(assert (=> d!307199 (= c!185091 ((_ is Node!3199) (c!185027 objs!8)))))

(declare-fun e!691086 () Bool)

(assert (=> d!307199 (= (inv!13423 (c!185027 objs!8)) e!691086)))

(declare-fun b!1091976 () Bool)

(declare-fun inv!13428 (Conc!3199) Bool)

(assert (=> b!1091976 (= e!691086 (inv!13428 (c!185027 objs!8)))))

(declare-fun b!1091977 () Bool)

(declare-fun e!691087 () Bool)

(assert (=> b!1091977 (= e!691086 e!691087)))

(declare-fun res!485189 () Bool)

(assert (=> b!1091977 (= res!485189 (not ((_ is Leaf!5100) (c!185027 objs!8))))))

(assert (=> b!1091977 (=> res!485189 e!691087)))

(declare-fun b!1091978 () Bool)

(declare-fun inv!13429 (Conc!3199) Bool)

(assert (=> b!1091978 (= e!691087 (inv!13429 (c!185027 objs!8)))))

(assert (= (and d!307199 c!185091) b!1091976))

(assert (= (and d!307199 (not c!185091)) b!1091977))

(assert (= (and b!1091977 (not res!485189)) b!1091978))

(declare-fun m!1242969 () Bool)

(assert (=> b!1091976 m!1242969))

(declare-fun m!1242971 () Bool)

(assert (=> b!1091978 m!1242971))

(assert (=> b!1091679 d!307199))

(declare-fun d!307201 () Bool)

(declare-fun lt!366263 () Bool)

(assert (=> d!307201 (= lt!366263 (contains!1773 (list!3758 objs!8) lt!365939))))

(assert (=> d!307201 (= lt!366263 (contains!1774 (c!185027 objs!8) lt!365939))))

(assert (=> d!307201 (= (contains!1770 objs!8 lt!365939) lt!366263)))

(declare-fun bs!258060 () Bool)

(assert (= bs!258060 d!307201))

(assert (=> bs!258060 m!1242349))

(assert (=> bs!258060 m!1242349))

(assert (=> bs!258060 m!1242951))

(declare-fun m!1242973 () Bool)

(assert (=> bs!258060 m!1242973))

(assert (=> b!1091690 d!307201))

(assert (=> b!1091690 d!307049))

(assert (=> b!1091690 d!307051))

(assert (=> b!1091690 d!307157))

(declare-fun d!307203 () Bool)

(declare-fun lt!366266 () tuple2!11706)

(declare-fun apply!2052 (List!10506 Int) tuple2!11706)

(assert (=> d!307203 (= lt!366266 (apply!2052 (list!3758 objs!8) (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2)))))))

(declare-fun apply!2053 (Conc!3199 Int) tuple2!11706)

(assert (=> d!307203 (= lt!366266 (apply!2053 (c!185027 objs!8) (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2)))))))

(declare-fun e!691090 () Bool)

(assert (=> d!307203 e!691090))

(declare-fun res!485192 () Bool)

(assert (=> d!307203 (=> (not res!485192) (not e!691090))))

(assert (=> d!307203 (= res!485192 (<= 0 (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2)))))))

(assert (=> d!307203 (= (apply!2049 objs!8 (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2)))) lt!366266)))

(declare-fun b!1091981 () Bool)

(assert (=> b!1091981 (= e!691090 (< (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2))) (size!8109 objs!8)))))

(assert (= (and d!307203 res!485192) b!1091981))

(assert (=> d!307203 m!1242349))

(assert (=> d!307203 m!1242349))

(declare-fun m!1242975 () Bool)

(assert (=> d!307203 m!1242975))

(declare-fun m!1242977 () Bool)

(assert (=> d!307203 m!1242977))

(assert (=> b!1091981 m!1242357))

(assert (=> b!1091690 d!307203))

(declare-fun d!307205 () Bool)

(declare-fun lt!366267 () Int)

(assert (=> d!307205 (= lt!366267 (size!8110 (list!3758 lt!365935)))))

(assert (=> d!307205 (= lt!366267 (size!8112 (c!185027 lt!365935)))))

(assert (=> d!307205 (= (size!8109 lt!365935) lt!366267)))

(declare-fun bs!258061 () Bool)

(assert (= bs!258061 d!307205))

(assert (=> bs!258061 m!1242339))

(assert (=> bs!258061 m!1242339))

(declare-fun m!1242979 () Bool)

(assert (=> bs!258061 m!1242979))

(declare-fun m!1242981 () Bool)

(assert (=> bs!258061 m!1242981))

(assert (=> b!1091678 d!307205))

(declare-fun d!307207 () Bool)

(declare-fun e!691091 () Bool)

(assert (=> d!307207 e!691091))

(declare-fun res!485193 () Bool)

(assert (=> d!307207 (=> res!485193 e!691091)))

(assert (=> d!307207 (= res!485193 (isEmpty!6660 lt!365944))))

(declare-fun lt!366268 () Unit!15909)

(assert (=> d!307207 (= lt!366268 (choose!7017 lt!365944 lambda!41526))))

(assert (=> d!307207 (not (forall!2345 lt!365944 lambda!41526))))

(assert (=> d!307207 (= (lemmaNotForallFilterShorter!33 lt!365944 lambda!41526) lt!366268)))

(declare-fun b!1091982 () Bool)

(assert (=> b!1091982 (= e!691091 (< (size!8110 (filter!246 lt!365944 lambda!41526)) (size!8110 lt!365944)))))

(assert (= (and d!307207 (not res!485193)) b!1091982))

(assert (=> d!307207 m!1242355))

(declare-fun m!1242983 () Bool)

(assert (=> d!307207 m!1242983))

(assert (=> d!307207 m!1242505))

(assert (=> b!1091982 m!1242373))

(assert (=> b!1091982 m!1242373))

(assert (=> b!1091982 m!1242375))

(assert (=> b!1091982 m!1242377))

(assert (=> b!1091678 d!307207))

(declare-fun d!307209 () Bool)

(declare-fun lt!366269 () Bool)

(assert (=> d!307209 (= lt!366269 (forall!2345 (list!3758 objs!8) lambda!41526))))

(assert (=> d!307209 (= lt!366269 (forall!2347 (c!185027 objs!8) lambda!41526))))

(assert (=> d!307209 (= (forall!2344 objs!8 lambda!41526) lt!366269)))

(declare-fun bs!258062 () Bool)

(assert (= bs!258062 d!307209))

(assert (=> bs!258062 m!1242349))

(assert (=> bs!258062 m!1242349))

(declare-fun m!1242985 () Bool)

(assert (=> bs!258062 m!1242985))

(declare-fun m!1242987 () Bool)

(assert (=> bs!258062 m!1242987))

(assert (=> b!1091678 d!307209))

(declare-fun b!1091991 () Bool)

(declare-fun e!691096 () Bool)

(assert (=> b!1091991 (= e!691096 true)))

(declare-fun b!1091993 () Bool)

(declare-fun e!691097 () Bool)

(assert (=> b!1091993 (= e!691097 true)))

(declare-fun b!1091992 () Bool)

(assert (=> b!1091992 (= e!691096 e!691097)))

(assert (=> b!1091703 e!691096))

(assert (= (and b!1091703 ((_ is Node!3198) (c!185026 (tokens!1349 (_2!6679 lt!365939))))) b!1091991))

(assert (= b!1091992 b!1091993))

(assert (= (and b!1091703 ((_ is Leaf!5099) (c!185026 (tokens!1349 (_2!6679 lt!365939))))) b!1091992))

(declare-fun b!1091994 () Bool)

(declare-fun e!691098 () Bool)

(assert (=> b!1091994 (= e!691098 true)))

(declare-fun b!1091996 () Bool)

(declare-fun e!691099 () Bool)

(assert (=> b!1091996 (= e!691099 true)))

(declare-fun b!1091995 () Bool)

(assert (=> b!1091995 (= e!691098 e!691099)))

(assert (=> b!1091707 e!691098))

(assert (= (and b!1091707 ((_ is Node!3198) (c!185026 (tokens!1349 (_2!6679 lt!365939))))) b!1091994))

(assert (= b!1091995 b!1091996))

(assert (= (and b!1091707 ((_ is Leaf!5099) (c!185026 (tokens!1349 (_2!6679 lt!365939))))) b!1091995))

(declare-fun b!1092007 () Bool)

(declare-fun e!691108 () Bool)

(assert (=> b!1092007 (= e!691108 true)))

(declare-fun b!1092006 () Bool)

(declare-fun e!691107 () Bool)

(assert (=> b!1092006 (= e!691107 e!691108)))

(declare-fun b!1092005 () Bool)

(declare-fun e!691106 () Bool)

(assert (=> b!1092005 (= e!691106 e!691107)))

(assert (=> b!1091706 e!691106))

(assert (= b!1092006 b!1092007))

(assert (= b!1092005 b!1092006))

(assert (= (and b!1091706 ((_ is Cons!10489) (rules!9077 (_2!6679 lt!365939)))) b!1092005))

(declare-fun order!6305 () Int)

(declare-fun order!6303 () Int)

(declare-fun dynLambda!4581 (Int Int) Int)

(declare-fun dynLambda!4582 (Int Int) Int)

(assert (=> b!1092007 (< (dynLambda!4581 order!6303 (toValue!2867 (transformation!1790 (h!15890 (rules!9077 (_2!6679 lt!365939)))))) (dynLambda!4582 order!6305 lambda!41526))))

(declare-fun order!6307 () Int)

(declare-fun dynLambda!4583 (Int Int) Int)

(assert (=> b!1092007 (< (dynLambda!4583 order!6307 (toChars!2726 (transformation!1790 (h!15890 (rules!9077 (_2!6679 lt!365939)))))) (dynLambda!4582 order!6305 lambda!41526))))

(declare-fun b!1092010 () Bool)

(declare-fun e!691111 () Bool)

(assert (=> b!1092010 (= e!691111 true)))

(declare-fun b!1092009 () Bool)

(declare-fun e!691110 () Bool)

(assert (=> b!1092009 (= e!691110 e!691111)))

(declare-fun b!1092008 () Bool)

(declare-fun e!691109 () Bool)

(assert (=> b!1092008 (= e!691109 e!691110)))

(assert (=> b!1091702 e!691109))

(assert (= b!1092009 b!1092010))

(assert (= b!1092008 b!1092009))

(assert (= (and b!1091702 ((_ is Cons!10489) (rules!9077 (_2!6679 lt!365939)))) b!1092008))

(assert (=> b!1092010 (< (dynLambda!4581 order!6303 (toValue!2867 (transformation!1790 (h!15890 (rules!9077 (_2!6679 lt!365939)))))) (dynLambda!4582 order!6305 lambda!41524))))

(assert (=> b!1092010 (< (dynLambda!4583 order!6307 (toChars!2726 (transformation!1790 (h!15890 (rules!9077 (_2!6679 lt!365939)))))) (dynLambda!4582 order!6305 lambda!41524))))

(declare-fun b!1092011 () Bool)

(declare-fun e!691112 () Bool)

(assert (=> b!1092011 (= e!691112 true)))

(declare-fun b!1092013 () Bool)

(declare-fun e!691113 () Bool)

(assert (=> b!1092013 (= e!691113 true)))

(declare-fun b!1092012 () Bool)

(assert (=> b!1092012 (= e!691112 e!691113)))

(assert (=> b!1091705 e!691112))

(assert (= (and b!1091705 ((_ is Node!3198) (c!185026 (tokens!1349 (_2!6679 lt!365939))))) b!1092011))

(assert (= b!1092012 b!1092013))

(assert (= (and b!1091705 ((_ is Leaf!5099) (c!185026 (tokens!1349 (_2!6679 lt!365939))))) b!1092012))

(declare-fun b!1092016 () Bool)

(declare-fun e!691116 () Bool)

(assert (=> b!1092016 (= e!691116 true)))

(declare-fun b!1092015 () Bool)

(declare-fun e!691115 () Bool)

(assert (=> b!1092015 (= e!691115 e!691116)))

(declare-fun b!1092014 () Bool)

(declare-fun e!691114 () Bool)

(assert (=> b!1092014 (= e!691114 e!691115)))

(assert (=> b!1091704 e!691114))

(assert (= b!1092015 b!1092016))

(assert (= b!1092014 b!1092015))

(assert (= (and b!1091704 ((_ is Cons!10489) (rules!9077 (_2!6679 lt!365939)))) b!1092014))

(assert (=> b!1092016 (< (dynLambda!4581 order!6303 (toValue!2867 (transformation!1790 (h!15890 (rules!9077 (_2!6679 lt!365939)))))) (dynLambda!4582 order!6305 lambda!41525))))

(assert (=> b!1092016 (< (dynLambda!4583 order!6307 (toChars!2726 (transformation!1790 (h!15890 (rules!9077 (_2!6679 lt!365939)))))) (dynLambda!4582 order!6305 lambda!41525))))

(declare-fun tp!326504 () Bool)

(declare-fun b!1092025 () Bool)

(declare-fun tp!326502 () Bool)

(declare-fun e!691121 () Bool)

(assert (=> b!1092025 (= e!691121 (and (inv!13423 (left!9005 (c!185027 objs!8))) tp!326504 (inv!13423 (right!9335 (c!185027 objs!8))) tp!326502))))

(declare-fun b!1092027 () Bool)

(declare-fun e!691122 () Bool)

(declare-fun tp!326503 () Bool)

(assert (=> b!1092027 (= e!691122 tp!326503)))

(declare-fun b!1092026 () Bool)

(declare-fun inv!13430 (IArray!6403) Bool)

(assert (=> b!1092026 (= e!691121 (and (inv!13430 (xs!5892 (c!185027 objs!8))) e!691122))))

(assert (=> b!1091679 (= tp!326486 (and (inv!13423 (c!185027 objs!8)) e!691121))))

(assert (= (and b!1091679 ((_ is Node!3199) (c!185027 objs!8))) b!1092025))

(assert (= b!1092026 b!1092027))

(assert (= (and b!1091679 ((_ is Leaf!5100) (c!185027 objs!8))) b!1092026))

(declare-fun m!1242989 () Bool)

(assert (=> b!1092025 m!1242989))

(declare-fun m!1242991 () Bool)

(assert (=> b!1092025 m!1242991))

(declare-fun m!1242993 () Bool)

(assert (=> b!1092026 m!1242993))

(assert (=> b!1091679 m!1242385))

(declare-fun b_lambda!30671 () Bool)

(assert (= b_lambda!30669 (or b!1091690 b_lambda!30671)))

(declare-fun bs!258063 () Bool)

(declare-fun d!307211 () Bool)

(assert (= bs!258063 (and d!307211 b!1091690)))

(assert (=> bs!258063 (= (dynLambda!4577 lambda!41524 lt!365939) (< (_1!6679 lt!365939) (_1!6679 lt!365939)))))

(assert (=> d!307195 d!307211))

(declare-fun b_lambda!30673 () Bool)

(assert (= b_lambda!30667 (or b!1091690 b_lambda!30673)))

(declare-fun bs!258064 () Bool)

(declare-fun d!307213 () Bool)

(assert (= bs!258064 (and d!307213 b!1091690)))

(assert (=> bs!258064 (= (dynLambda!4577 lambda!41526 lt!365939) (> (_1!6679 lt!365939) (_1!6679 lt!365939)))))

(assert (=> d!307189 d!307213))

(declare-fun b_lambda!30675 () Bool)

(assert (= b_lambda!30617 (or b!1091690 b_lambda!30675)))

(declare-fun bs!258065 () Bool)

(declare-fun d!307215 () Bool)

(assert (= bs!258065 (and d!307215 b!1091690)))

(assert (=> bs!258065 (= (dynLambda!4577 lambda!41526 (h!15891 lt!365944)) (> (_1!6679 (h!15891 lt!365944)) (_1!6679 lt!365939)))))

(assert (=> b!1091745 d!307215))

(declare-fun b_lambda!30677 () Bool)

(assert (= b_lambda!30621 (or start!93382 b_lambda!30677)))

(declare-fun bs!258066 () Bool)

(declare-fun d!307217 () Bool)

(assert (= bs!258066 (and d!307217 start!93382)))

(declare-fun usesJsonRules!0 (PrintableTokens!296) Bool)

(assert (=> bs!258066 (= (dynLambda!4577 lambda!41523 (h!15891 lt!365947)) (usesJsonRules!0 (_2!6679 (h!15891 lt!365947))))))

(declare-fun m!1242995 () Bool)

(assert (=> bs!258066 m!1242995))

(assert (=> b!1091762 d!307217))

(declare-fun b_lambda!30679 () Bool)

(assert (= b_lambda!30659 (or start!93382 b_lambda!30679)))

(declare-fun bs!258067 () Bool)

(declare-fun d!307219 () Bool)

(assert (= bs!258067 (and d!307219 start!93382)))

(assert (=> bs!258067 (= (dynLambda!4577 lambda!41523 (h!15891 lt!365945)) (usesJsonRules!0 (_2!6679 (h!15891 lt!365945))))))

(declare-fun m!1242997 () Bool)

(assert (=> bs!258067 m!1242997))

(assert (=> b!1091952 d!307219))

(declare-fun b_lambda!30681 () Bool)

(assert (= b_lambda!30665 (or b!1091690 b_lambda!30681)))

(assert (=> d!307187 d!307211))

(declare-fun b_lambda!30683 () Bool)

(assert (= b_lambda!30619 (or b!1091690 b_lambda!30683)))

(assert (=> d!307043 d!307213))

(declare-fun b_lambda!30685 () Bool)

(assert (= b_lambda!30663 (or b!1091690 b_lambda!30685)))

(declare-fun bs!258068 () Bool)

(declare-fun d!307221 () Bool)

(assert (= bs!258068 (and d!307221 b!1091690)))

(assert (=> bs!258068 (= (dynLambda!4577 lambda!41524 (h!15891 lt!365944)) (< (_1!6679 (h!15891 lt!365944)) (_1!6679 lt!365939)))))

(assert (=> b!1091963 d!307221))

(declare-fun b_lambda!30687 () Bool)

(assert (= b_lambda!30657 (or start!93382 b_lambda!30687)))

(declare-fun bs!258069 () Bool)

(declare-fun d!307223 () Bool)

(assert (= bs!258069 (and d!307223 start!93382)))

(assert (=> bs!258069 (= (dynLambda!4577 lambda!41523 (h!15891 lt!365943)) (usesJsonRules!0 (_2!6679 (h!15891 lt!365943))))))

(declare-fun m!1242999 () Bool)

(assert (=> bs!258069 m!1242999))

(assert (=> b!1091950 d!307223))

(declare-fun b_lambda!30689 () Bool)

(assert (= b_lambda!30661 (or start!93382 b_lambda!30689)))

(declare-fun bs!258070 () Bool)

(declare-fun d!307225 () Bool)

(assert (= bs!258070 (and d!307225 start!93382)))

(assert (=> bs!258070 (= (dynLambda!4577 lambda!41523 (h!15891 lt!365928)) (usesJsonRules!0 (_2!6679 (h!15891 lt!365928))))))

(declare-fun m!1243001 () Bool)

(assert (=> bs!258070 m!1243001))

(assert (=> b!1091954 d!307225))

(check-sat (not b_lambda!30677) (not b!1091966) (not b!1092014) (not b!1091757) (not d!307147) (not d!307183) (not d!307189) (not b!1091679) (not b!1092026) (not d!307195) (not b!1091996) (not b!1091946) (not d!307201) (not b_lambda!30675) (not d!307155) (not b!1091748) (not d!307207) (not d!307187) (not d!307205) (not b!1091958) (not d!307151) (not b!1092005) (not d!307141) (not b!1091939) (not d!307159) (not d!307175) (not d!307157) (not d!307185) (not b!1091949) (not b!1091756) (not d!307153) (not d!307171) (not b_lambda!30671) (not b!1091968) (not bs!258066) (not b!1092008) (not d!307191) (not b!1091982) (not b!1091944) (not b!1092025) (not b!1091947) (not b!1091981) (not b!1091943) (not b_lambda!30683) (not b_lambda!30673) (not d!307203) (not d!307049) (not d!307169) (not b!1091960) (not b!1091935) (not d!307143) (not d!307145) (not d!307039) (not b!1091961) (not bm!80261) (not b_lambda!30685) (not d!307051) (not d!307173) (not b!1091976) (not d!307179) (not b!1091933) (not b!1091948) (not b!1092011) (not bs!258069) (not b!1091953) (not bm!80256) (not bs!258067) (not b_lambda!30687) (not b!1091753) (not d!307209) (not b!1091743) (not d!307053) (not b!1091951) (not b!1091940) (not b!1092027) (not b!1091750) (not d!307047) (not b!1091945) (not b_lambda!30689) (not d!307149) (not d!307057) (not b!1091934) (not b!1091730) (not b!1091936) (not d!307163) (not bs!258070) (not b!1091763) (not d!307197) (not b_lambda!30681) (not b!1092013) (not b!1091993) (not d!307045) (not b_lambda!30679) (not b!1091969) (not b!1091991) (not b!1091955) (not b!1091994) (not d!307193) (not b!1091967) (not b!1091978) (not d!307043) (not b!1091938))
(check-sat)
(get-model)

(declare-fun d!307495 () Bool)

(declare-fun res!485406 () Bool)

(declare-fun e!691390 () Bool)

(assert (=> d!307495 (=> res!485406 e!691390)))

(assert (=> d!307495 (= res!485406 ((_ is Nil!10490) (list!3758 objs!8)))))

(assert (=> d!307495 (= (forall!2345 (list!3758 objs!8) lambda!41523) e!691390)))

(declare-fun b!1092456 () Bool)

(declare-fun e!691391 () Bool)

(assert (=> b!1092456 (= e!691390 e!691391)))

(declare-fun res!485407 () Bool)

(assert (=> b!1092456 (=> (not res!485407) (not e!691391))))

(assert (=> b!1092456 (= res!485407 (dynLambda!4577 lambda!41523 (h!15891 (list!3758 objs!8))))))

(declare-fun b!1092457 () Bool)

(assert (=> b!1092457 (= e!691391 (forall!2345 (t!102180 (list!3758 objs!8)) lambda!41523))))

(assert (= (and d!307495 (not res!485406)) b!1092456))

(assert (= (and b!1092456 res!485407) b!1092457))

(declare-fun b_lambda!30757 () Bool)

(assert (=> (not b_lambda!30757) (not b!1092456)))

(declare-fun m!1243837 () Bool)

(assert (=> b!1092456 m!1243837))

(declare-fun m!1243843 () Bool)

(assert (=> b!1092457 m!1243843))

(assert (=> d!307045 d!307495))

(assert (=> d!307045 d!307171))

(declare-fun d!307497 () Bool)

(declare-fun lt!366449 () Bool)

(assert (=> d!307497 (= lt!366449 (forall!2345 (list!3760 (c!185027 objs!8)) lambda!41523))))

(declare-fun e!691404 () Bool)

(assert (=> d!307497 (= lt!366449 e!691404)))

(declare-fun res!485413 () Bool)

(assert (=> d!307497 (=> res!485413 e!691404)))

(assert (=> d!307497 (= res!485413 ((_ is Empty!3199) (c!185027 objs!8)))))

(assert (=> d!307497 (= (forall!2347 (c!185027 objs!8) lambda!41523) lt!366449)))

(declare-fun b!1092475 () Bool)

(declare-fun e!691405 () Bool)

(declare-fun forall!2349 (IArray!6403 Int) Bool)

(assert (=> b!1092475 (= e!691405 (forall!2349 (xs!5892 (c!185027 objs!8)) lambda!41523))))

(declare-fun b!1092474 () Bool)

(assert (=> b!1092474 (= e!691404 e!691405)))

(declare-fun c!185202 () Bool)

(assert (=> b!1092474 (= c!185202 ((_ is Leaf!5100) (c!185027 objs!8)))))

(declare-fun b!1092477 () Bool)

(declare-fun e!691406 () Bool)

(assert (=> b!1092477 (= e!691406 (forall!2347 (right!9335 (c!185027 objs!8)) lambda!41523))))

(declare-fun b!1092476 () Bool)

(assert (=> b!1092476 (= e!691405 e!691406)))

(declare-fun lt!366448 () Unit!15909)

(declare-fun lemmaForallConcat!60 (List!10506 List!10506 Int) Unit!15909)

(assert (=> b!1092476 (= lt!366448 (lemmaForallConcat!60 (list!3760 (left!9005 (c!185027 objs!8))) (list!3760 (right!9335 (c!185027 objs!8))) lambda!41523))))

(declare-fun res!485412 () Bool)

(assert (=> b!1092476 (= res!485412 (forall!2347 (left!9005 (c!185027 objs!8)) lambda!41523))))

(assert (=> b!1092476 (=> (not res!485412) (not e!691406))))

(assert (= (and d!307497 (not res!485413)) b!1092474))

(assert (= (and b!1092474 c!185202) b!1092475))

(assert (= (and b!1092474 (not c!185202)) b!1092476))

(assert (= (and b!1092476 res!485412) b!1092477))

(assert (=> d!307497 m!1242917))

(assert (=> d!307497 m!1242917))

(declare-fun m!1243859 () Bool)

(assert (=> d!307497 m!1243859))

(declare-fun m!1243861 () Bool)

(assert (=> b!1092475 m!1243861))

(declare-fun m!1243863 () Bool)

(assert (=> b!1092477 m!1243863))

(declare-fun m!1243865 () Bool)

(assert (=> b!1092476 m!1243865))

(declare-fun m!1243867 () Bool)

(assert (=> b!1092476 m!1243867))

(assert (=> b!1092476 m!1243865))

(assert (=> b!1092476 m!1243867))

(declare-fun m!1243869 () Bool)

(assert (=> b!1092476 m!1243869))

(declare-fun m!1243871 () Bool)

(assert (=> b!1092476 m!1243871))

(assert (=> d!307045 d!307497))

(declare-fun d!307501 () Bool)

(assert (=> d!307501 (dynLambda!4577 lambda!41524 lt!365939)))

(assert (=> d!307501 true))

(declare-fun _$7!653 () Unit!15909)

(assert (=> d!307501 (= (choose!7014 (list!3758 lt!365922) lambda!41524 lt!365939) _$7!653)))

(declare-fun b_lambda!30759 () Bool)

(assert (=> (not b_lambda!30759) (not d!307501)))

(declare-fun bs!258135 () Bool)

(assert (= bs!258135 d!307501))

(assert (=> bs!258135 m!1242947))

(assert (=> d!307195 d!307501))

(declare-fun d!307503 () Bool)

(declare-fun res!485414 () Bool)

(declare-fun e!691415 () Bool)

(assert (=> d!307503 (=> res!485414 e!691415)))

(assert (=> d!307503 (= res!485414 ((_ is Nil!10490) (list!3758 lt!365922)))))

(assert (=> d!307503 (= (forall!2345 (list!3758 lt!365922) lambda!41524) e!691415)))

(declare-fun b!1092488 () Bool)

(declare-fun e!691416 () Bool)

(assert (=> b!1092488 (= e!691415 e!691416)))

(declare-fun res!485415 () Bool)

(assert (=> b!1092488 (=> (not res!485415) (not e!691416))))

(assert (=> b!1092488 (= res!485415 (dynLambda!4577 lambda!41524 (h!15891 (list!3758 lt!365922))))))

(declare-fun b!1092489 () Bool)

(assert (=> b!1092489 (= e!691416 (forall!2345 (t!102180 (list!3758 lt!365922)) lambda!41524))))

(assert (= (and d!307503 (not res!485414)) b!1092488))

(assert (= (and b!1092488 res!485415) b!1092489))

(declare-fun b_lambda!30761 () Bool)

(assert (=> (not b_lambda!30761) (not b!1092488)))

(declare-fun m!1243879 () Bool)

(assert (=> b!1092488 m!1243879))

(declare-fun m!1243881 () Bool)

(assert (=> b!1092489 m!1243881))

(assert (=> d!307195 d!307503))

(assert (=> d!307053 d!307167))

(declare-fun d!307505 () Bool)

(assert (=> d!307505 (forall!2345 lt!365928 lambda!41523)))

(assert (=> d!307505 true))

(declare-fun _$37!258 () Unit!15909)

(assert (=> d!307505 (= (choose!7015 lt!365928 lt!365944 lambda!41523) _$37!258)))

(declare-fun bs!258136 () Bool)

(assert (= bs!258136 d!307505))

(assert (=> bs!258136 m!1242401))

(assert (=> d!307053 d!307505))

(declare-fun d!307507 () Bool)

(declare-fun res!485416 () Bool)

(declare-fun e!691423 () Bool)

(assert (=> d!307507 (=> res!485416 e!691423)))

(assert (=> d!307507 (= res!485416 ((_ is Nil!10490) lt!365944))))

(assert (=> d!307507 (= (forall!2345 lt!365944 lambda!41523) e!691423)))

(declare-fun b!1092496 () Bool)

(declare-fun e!691424 () Bool)

(assert (=> b!1092496 (= e!691423 e!691424)))

(declare-fun res!485417 () Bool)

(assert (=> b!1092496 (=> (not res!485417) (not e!691424))))

(assert (=> b!1092496 (= res!485417 (dynLambda!4577 lambda!41523 (h!15891 lt!365944)))))

(declare-fun b!1092497 () Bool)

(assert (=> b!1092497 (= e!691424 (forall!2345 (t!102180 lt!365944) lambda!41523))))

(assert (= (and d!307507 (not res!485416)) b!1092496))

(assert (= (and b!1092496 res!485417) b!1092497))

(declare-fun b_lambda!30763 () Bool)

(assert (=> (not b_lambda!30763) (not b!1092496)))

(declare-fun m!1243883 () Bool)

(assert (=> b!1092496 m!1243883))

(declare-fun m!1243885 () Bool)

(assert (=> b!1092497 m!1243885))

(assert (=> d!307053 d!307507))

(declare-fun d!307509 () Bool)

(declare-fun lt!366452 () Bool)

(assert (=> d!307509 (= lt!366452 (select (content!1511 (list!3758 lt!365935)) lt!365939))))

(declare-fun e!691457 () Bool)

(assert (=> d!307509 (= lt!366452 e!691457)))

(declare-fun res!485423 () Bool)

(assert (=> d!307509 (=> (not res!485423) (not e!691457))))

(assert (=> d!307509 (= res!485423 ((_ is Cons!10490) (list!3758 lt!365935)))))

(assert (=> d!307509 (= (contains!1773 (list!3758 lt!365935) lt!365939) lt!366452)))

(declare-fun b!1092537 () Bool)

(declare-fun e!691458 () Bool)

(assert (=> b!1092537 (= e!691457 e!691458)))

(declare-fun res!485422 () Bool)

(assert (=> b!1092537 (=> res!485422 e!691458)))

(assert (=> b!1092537 (= res!485422 (= (h!15891 (list!3758 lt!365935)) lt!365939))))

(declare-fun b!1092538 () Bool)

(assert (=> b!1092538 (= e!691458 (contains!1773 (t!102180 (list!3758 lt!365935)) lt!365939))))

(assert (= (and d!307509 res!485423) b!1092537))

(assert (= (and b!1092537 (not res!485422)) b!1092538))

(assert (=> d!307509 m!1242339))

(declare-fun m!1243899 () Bool)

(assert (=> d!307509 m!1243899))

(declare-fun m!1243901 () Bool)

(assert (=> d!307509 m!1243901))

(declare-fun m!1243903 () Bool)

(assert (=> b!1092538 m!1243903))

(assert (=> b!1091968 d!307509))

(declare-fun b!1092573 () Bool)

(declare-fun e!691484 () List!10506)

(declare-fun e!691485 () List!10506)

(assert (=> b!1092573 (= e!691484 e!691485)))

(declare-fun c!185208 () Bool)

(assert (=> b!1092573 (= c!185208 ((_ is Leaf!5100) (c!185027 (filter!247 objs!8 lambda!41524))))))

(declare-fun b!1092572 () Bool)

(assert (=> b!1092572 (= e!691484 Nil!10490)))

(declare-fun b!1092574 () Bool)

(declare-fun list!3762 (IArray!6403) List!10506)

(assert (=> b!1092574 (= e!691485 (list!3762 (xs!5892 (c!185027 (filter!247 objs!8 lambda!41524)))))))

(declare-fun d!307511 () Bool)

(declare-fun c!185207 () Bool)

(assert (=> d!307511 (= c!185207 ((_ is Empty!3199) (c!185027 (filter!247 objs!8 lambda!41524))))))

(assert (=> d!307511 (= (list!3760 (c!185027 (filter!247 objs!8 lambda!41524))) e!691484)))

(declare-fun b!1092575 () Bool)

(assert (=> b!1092575 (= e!691485 (++!2839 (list!3760 (left!9005 (c!185027 (filter!247 objs!8 lambda!41524)))) (list!3760 (right!9335 (c!185027 (filter!247 objs!8 lambda!41524))))))))

(assert (= (and d!307511 c!185207) b!1092572))

(assert (= (and d!307511 (not c!185207)) b!1092573))

(assert (= (and b!1092573 c!185208) b!1092574))

(assert (= (and b!1092573 (not c!185208)) b!1092575))

(declare-fun m!1243909 () Bool)

(assert (=> b!1092574 m!1243909))

(declare-fun m!1243911 () Bool)

(assert (=> b!1092575 m!1243911))

(declare-fun m!1243913 () Bool)

(assert (=> b!1092575 m!1243913))

(assert (=> b!1092575 m!1243911))

(assert (=> b!1092575 m!1243913))

(declare-fun m!1243917 () Bool)

(assert (=> b!1092575 m!1243917))

(assert (=> d!307147 d!307511))

(declare-fun d!307535 () Bool)

(declare-fun lt!366453 () Int)

(assert (=> d!307535 (>= lt!366453 0)))

(declare-fun e!691486 () Int)

(assert (=> d!307535 (= lt!366453 e!691486)))

(declare-fun c!185209 () Bool)

(assert (=> d!307535 (= c!185209 ((_ is Nil!10490) (filter!246 lt!366212 lambda!41626)))))

(assert (=> d!307535 (= (size!8110 (filter!246 lt!366212 lambda!41626)) lt!366453)))

(declare-fun b!1092576 () Bool)

(assert (=> b!1092576 (= e!691486 0)))

(declare-fun b!1092577 () Bool)

(assert (=> b!1092577 (= e!691486 (+ 1 (size!8110 (t!102180 (filter!246 lt!366212 lambda!41626)))))))

(assert (= (and d!307535 c!185209) b!1092576))

(assert (= (and d!307535 (not c!185209)) b!1092577))

(declare-fun m!1243925 () Bool)

(assert (=> b!1092577 m!1243925))

(assert (=> b!1091939 d!307535))

(declare-fun b!1092578 () Bool)

(declare-fun res!485425 () Bool)

(declare-fun e!691488 () Bool)

(assert (=> b!1092578 (=> (not res!485425) (not e!691488))))

(declare-fun lt!366454 () List!10506)

(assert (=> b!1092578 (= res!485425 (= ((_ map implies) (content!1511 lt!366454) (content!1511 lt!366212)) ((as const (InoxSet tuple2!11706)) true)))))

(declare-fun b!1092579 () Bool)

(declare-fun e!691487 () List!10506)

(assert (=> b!1092579 (= e!691487 Nil!10490)))

(declare-fun b!1092580 () Bool)

(declare-fun e!691489 () List!10506)

(assert (=> b!1092580 (= e!691487 e!691489)))

(declare-fun c!185210 () Bool)

(assert (=> b!1092580 (= c!185210 (dynLambda!4577 lambda!41626 (h!15891 lt!366212)))))

(declare-fun bm!80273 () Bool)

(declare-fun call!80278 () List!10506)

(assert (=> bm!80273 (= call!80278 (filter!246 (t!102180 lt!366212) lambda!41626))))

(declare-fun b!1092581 () Bool)

(assert (=> b!1092581 (= e!691489 (Cons!10490 (h!15891 lt!366212) call!80278))))

(declare-fun d!307545 () Bool)

(assert (=> d!307545 e!691488))

(declare-fun res!485424 () Bool)

(assert (=> d!307545 (=> (not res!485424) (not e!691488))))

(assert (=> d!307545 (= res!485424 (<= (size!8110 lt!366454) (size!8110 lt!366212)))))

(assert (=> d!307545 (= lt!366454 e!691487)))

(declare-fun c!185211 () Bool)

(assert (=> d!307545 (= c!185211 ((_ is Nil!10490) lt!366212))))

(assert (=> d!307545 (= (filter!246 lt!366212 lambda!41626) lt!366454)))

(declare-fun b!1092582 () Bool)

(assert (=> b!1092582 (= e!691489 call!80278)))

(declare-fun b!1092583 () Bool)

(assert (=> b!1092583 (= e!691488 (forall!2345 lt!366454 lambda!41626))))

(assert (= (and d!307545 c!185211) b!1092579))

(assert (= (and d!307545 (not c!185211)) b!1092580))

(assert (= (and b!1092580 c!185210) b!1092581))

(assert (= (and b!1092580 (not c!185210)) b!1092582))

(assert (= (or b!1092581 b!1092582) bm!80273))

(assert (= (and d!307545 res!485424) b!1092578))

(assert (= (and b!1092578 res!485425) b!1092583))

(declare-fun b_lambda!30831 () Bool)

(assert (=> (not b_lambda!30831) (not b!1092580)))

(declare-fun m!1243933 () Bool)

(assert (=> b!1092578 m!1243933))

(declare-fun m!1243935 () Bool)

(assert (=> b!1092578 m!1243935))

(declare-fun m!1243937 () Bool)

(assert (=> bm!80273 m!1243937))

(declare-fun m!1243939 () Bool)

(assert (=> b!1092583 m!1243939))

(declare-fun m!1243941 () Bool)

(assert (=> b!1092580 m!1243941))

(declare-fun m!1243943 () Bool)

(assert (=> d!307545 m!1243943))

(assert (=> d!307545 m!1242851))

(assert (=> b!1091939 d!307545))

(declare-fun d!307563 () Bool)

(declare-fun lt!366455 () Int)

(assert (=> d!307563 (>= lt!366455 0)))

(declare-fun e!691490 () Int)

(assert (=> d!307563 (= lt!366455 e!691490)))

(declare-fun c!185212 () Bool)

(assert (=> d!307563 (= c!185212 ((_ is Nil!10490) lt!366212))))

(assert (=> d!307563 (= (size!8110 lt!366212) lt!366455)))

(declare-fun b!1092584 () Bool)

(assert (=> b!1092584 (= e!691490 0)))

(declare-fun b!1092585 () Bool)

(assert (=> b!1092585 (= e!691490 (+ 1 (size!8110 (t!102180 lt!366212))))))

(assert (= (and d!307563 c!185212) b!1092584))

(assert (= (and d!307563 (not c!185212)) b!1092585))

(declare-fun m!1243945 () Bool)

(assert (=> b!1092585 m!1243945))

(assert (=> b!1091939 d!307563))

(declare-fun d!307565 () Bool)

(declare-fun c!185215 () Bool)

(assert (=> d!307565 (= c!185215 ((_ is Nil!10490) lt!366257))))

(declare-fun e!691493 () (InoxSet tuple2!11706))

(assert (=> d!307565 (= (content!1511 lt!366257) e!691493)))

(declare-fun b!1092590 () Bool)

(assert (=> b!1092590 (= e!691493 ((as const (Array tuple2!11706 Bool)) false))))

(declare-fun b!1092591 () Bool)

(assert (=> b!1092591 (= e!691493 ((_ map or) (store ((as const (Array tuple2!11706 Bool)) false) (h!15891 lt!366257) true) (content!1511 (t!102180 lt!366257))))))

(assert (= (and d!307565 c!185215) b!1092590))

(assert (= (and d!307565 (not c!185215)) b!1092591))

(declare-fun m!1243947 () Bool)

(assert (=> b!1092591 m!1243947))

(declare-fun m!1243949 () Bool)

(assert (=> b!1092591 m!1243949))

(assert (=> b!1091961 d!307565))

(declare-fun d!307567 () Bool)

(declare-fun c!185216 () Bool)

(assert (=> d!307567 (= c!185216 ((_ is Nil!10490) lt!365944))))

(declare-fun e!691494 () (InoxSet tuple2!11706))

(assert (=> d!307567 (= (content!1511 lt!365944) e!691494)))

(declare-fun b!1092592 () Bool)

(assert (=> b!1092592 (= e!691494 ((as const (Array tuple2!11706 Bool)) false))))

(declare-fun b!1092593 () Bool)

(assert (=> b!1092593 (= e!691494 ((_ map or) (store ((as const (Array tuple2!11706 Bool)) false) (h!15891 lt!365944) true) (content!1511 (t!102180 lt!365944))))))

(assert (= (and d!307567 c!185216) b!1092592))

(assert (= (and d!307567 (not c!185216)) b!1092593))

(declare-fun m!1243951 () Bool)

(assert (=> b!1092593 m!1243951))

(declare-fun m!1243953 () Bool)

(assert (=> b!1092593 m!1243953))

(assert (=> b!1091961 d!307567))

(declare-fun d!307569 () Bool)

(assert (=> d!307569 (dynLambda!4577 lambda!41526 lt!365939)))

(assert (=> d!307569 true))

(declare-fun _$7!654 () Unit!15909)

(assert (=> d!307569 (= (choose!7014 (list!3758 lt!365935) lambda!41526 lt!365939) _$7!654)))

(declare-fun b_lambda!30833 () Bool)

(assert (=> (not b_lambda!30833) (not d!307569)))

(declare-fun bs!258160 () Bool)

(assert (= bs!258160 d!307569))

(assert (=> bs!258160 m!1242501))

(assert (=> d!307189 d!307569))

(declare-fun d!307571 () Bool)

(declare-fun res!485426 () Bool)

(declare-fun e!691495 () Bool)

(assert (=> d!307571 (=> res!485426 e!691495)))

(assert (=> d!307571 (= res!485426 ((_ is Nil!10490) (list!3758 lt!365935)))))

(assert (=> d!307571 (= (forall!2345 (list!3758 lt!365935) lambda!41526) e!691495)))

(declare-fun b!1092594 () Bool)

(declare-fun e!691496 () Bool)

(assert (=> b!1092594 (= e!691495 e!691496)))

(declare-fun res!485427 () Bool)

(assert (=> b!1092594 (=> (not res!485427) (not e!691496))))

(assert (=> b!1092594 (= res!485427 (dynLambda!4577 lambda!41526 (h!15891 (list!3758 lt!365935))))))

(declare-fun b!1092595 () Bool)

(assert (=> b!1092595 (= e!691496 (forall!2345 (t!102180 (list!3758 lt!365935)) lambda!41526))))

(assert (= (and d!307571 (not res!485426)) b!1092594))

(assert (= (and b!1092594 res!485427) b!1092595))

(declare-fun b_lambda!30835 () Bool)

(assert (=> (not b_lambda!30835) (not b!1092594)))

(declare-fun m!1243955 () Bool)

(assert (=> b!1092594 m!1243955))

(declare-fun m!1243957 () Bool)

(assert (=> b!1092595 m!1243957))

(assert (=> d!307189 d!307571))

(declare-fun d!307573 () Bool)

(assert (=> d!307573 (dynLambda!4577 lambda!41624 lt!366207)))

(declare-fun lt!366456 () Unit!15909)

(assert (=> d!307573 (= lt!366456 (choose!7014 (list!3758 lt!365922) lambda!41624 lt!366207))))

(declare-fun e!691497 () Bool)

(assert (=> d!307573 e!691497))

(declare-fun res!485428 () Bool)

(assert (=> d!307573 (=> (not res!485428) (not e!691497))))

(assert (=> d!307573 (= res!485428 (forall!2345 (list!3758 lt!365922) lambda!41624))))

(assert (=> d!307573 (= (forallContained!492 (list!3758 lt!365922) lambda!41624 lt!366207) lt!366456)))

(declare-fun b!1092596 () Bool)

(assert (=> b!1092596 (= e!691497 (contains!1773 (list!3758 lt!365922) lt!366207))))

(assert (= (and d!307573 res!485428) b!1092596))

(declare-fun b_lambda!30837 () Bool)

(assert (=> (not b_lambda!30837) (not d!307573)))

(declare-fun m!1243959 () Bool)

(assert (=> d!307573 m!1243959))

(assert (=> d!307573 m!1242381))

(declare-fun m!1243961 () Bool)

(assert (=> d!307573 m!1243961))

(assert (=> d!307573 m!1242381))

(declare-fun m!1243963 () Bool)

(assert (=> d!307573 m!1243963))

(assert (=> b!1092596 m!1242381))

(declare-fun m!1243965 () Bool)

(assert (=> b!1092596 m!1243965))

(assert (=> b!1091935 d!307573))

(assert (=> b!1091935 d!307197))

(declare-fun d!307575 () Bool)

(declare-fun c!185217 () Bool)

(assert (=> d!307575 (= c!185217 ((_ is Node!3199) (left!9005 (c!185027 objs!8))))))

(declare-fun e!691498 () Bool)

(assert (=> d!307575 (= (inv!13423 (left!9005 (c!185027 objs!8))) e!691498)))

(declare-fun b!1092597 () Bool)

(assert (=> b!1092597 (= e!691498 (inv!13428 (left!9005 (c!185027 objs!8))))))

(declare-fun b!1092598 () Bool)

(declare-fun e!691499 () Bool)

(assert (=> b!1092598 (= e!691498 e!691499)))

(declare-fun res!485429 () Bool)

(assert (=> b!1092598 (= res!485429 (not ((_ is Leaf!5100) (left!9005 (c!185027 objs!8)))))))

(assert (=> b!1092598 (=> res!485429 e!691499)))

(declare-fun b!1092599 () Bool)

(assert (=> b!1092599 (= e!691499 (inv!13429 (left!9005 (c!185027 objs!8))))))

(assert (= (and d!307575 c!185217) b!1092597))

(assert (= (and d!307575 (not c!185217)) b!1092598))

(assert (= (and b!1092598 (not res!485429)) b!1092599))

(declare-fun m!1243967 () Bool)

(assert (=> b!1092597 m!1243967))

(declare-fun m!1243969 () Bool)

(assert (=> b!1092599 m!1243969))

(assert (=> b!1092025 d!307575))

(declare-fun d!307577 () Bool)

(declare-fun c!185218 () Bool)

(assert (=> d!307577 (= c!185218 ((_ is Node!3199) (right!9335 (c!185027 objs!8))))))

(declare-fun e!691500 () Bool)

(assert (=> d!307577 (= (inv!13423 (right!9335 (c!185027 objs!8))) e!691500)))

(declare-fun b!1092600 () Bool)

(assert (=> b!1092600 (= e!691500 (inv!13428 (right!9335 (c!185027 objs!8))))))

(declare-fun b!1092601 () Bool)

(declare-fun e!691501 () Bool)

(assert (=> b!1092601 (= e!691500 e!691501)))

(declare-fun res!485430 () Bool)

(assert (=> b!1092601 (= res!485430 (not ((_ is Leaf!5100) (right!9335 (c!185027 objs!8)))))))

(assert (=> b!1092601 (=> res!485430 e!691501)))

(declare-fun b!1092602 () Bool)

(assert (=> b!1092602 (= e!691501 (inv!13429 (right!9335 (c!185027 objs!8))))))

(assert (= (and d!307577 c!185218) b!1092600))

(assert (= (and d!307577 (not c!185218)) b!1092601))

(assert (= (and b!1092601 (not res!485430)) b!1092602))

(declare-fun m!1243971 () Bool)

(assert (=> b!1092600 m!1243971))

(declare-fun m!1243973 () Bool)

(assert (=> b!1092602 m!1243973))

(assert (=> b!1092025 d!307577))

(assert (=> b!1091679 d!307199))

(declare-fun d!307579 () Bool)

(assert (=> d!307579 (dynLambda!4577 lambda!41526 lt!365939)))

(assert (=> d!307579 true))

(declare-fun _$7!655 () Unit!15909)

(assert (=> d!307579 (= (choose!7014 lt!365944 lambda!41526 lt!365939) _$7!655)))

(declare-fun b_lambda!30839 () Bool)

(assert (=> (not b_lambda!30839) (not d!307579)))

(declare-fun bs!258161 () Bool)

(assert (= bs!258161 d!307579))

(assert (=> bs!258161 m!1242501))

(assert (=> d!307043 d!307579))

(declare-fun d!307581 () Bool)

(declare-fun res!485431 () Bool)

(declare-fun e!691502 () Bool)

(assert (=> d!307581 (=> res!485431 e!691502)))

(assert (=> d!307581 (= res!485431 ((_ is Nil!10490) lt!365944))))

(assert (=> d!307581 (= (forall!2345 lt!365944 lambda!41526) e!691502)))

(declare-fun b!1092603 () Bool)

(declare-fun e!691503 () Bool)

(assert (=> b!1092603 (= e!691502 e!691503)))

(declare-fun res!485432 () Bool)

(assert (=> b!1092603 (=> (not res!485432) (not e!691503))))

(assert (=> b!1092603 (= res!485432 (dynLambda!4577 lambda!41526 (h!15891 lt!365944)))))

(declare-fun b!1092604 () Bool)

(assert (=> b!1092604 (= e!691503 (forall!2345 (t!102180 lt!365944) lambda!41526))))

(assert (= (and d!307581 (not res!485431)) b!1092603))

(assert (= (and b!1092603 res!485432) b!1092604))

(declare-fun b_lambda!30841 () Bool)

(assert (=> (not b_lambda!30841) (not b!1092603)))

(assert (=> b!1092603 m!1242495))

(declare-fun m!1243975 () Bool)

(assert (=> b!1092604 m!1243975))

(assert (=> d!307043 d!307581))

(declare-fun d!307583 () Bool)

(declare-fun lt!366457 () Int)

(assert (=> d!307583 (>= lt!366457 0)))

(declare-fun e!691504 () Int)

(assert (=> d!307583 (= lt!366457 e!691504)))

(declare-fun c!185219 () Bool)

(assert (=> d!307583 (= c!185219 ((_ is Nil!10490) (list!3758 lt!365922)))))

(assert (=> d!307583 (= (size!8110 (list!3758 lt!365922)) lt!366457)))

(declare-fun b!1092605 () Bool)

(assert (=> b!1092605 (= e!691504 0)))

(declare-fun b!1092606 () Bool)

(assert (=> b!1092606 (= e!691504 (+ 1 (size!8110 (t!102180 (list!3758 lt!365922)))))))

(assert (= (and d!307583 c!185219) b!1092605))

(assert (= (and d!307583 (not c!185219)) b!1092606))

(declare-fun m!1243977 () Bool)

(assert (=> b!1092606 m!1243977))

(assert (=> d!307175 d!307583))

(assert (=> d!307175 d!307197))

(declare-fun d!307585 () Bool)

(declare-fun lt!366460 () Int)

(assert (=> d!307585 (= lt!366460 (size!8110 (list!3760 (c!185027 lt!365922))))))

(assert (=> d!307585 (= lt!366460 (ite ((_ is Empty!3199) (c!185027 lt!365922)) 0 (ite ((_ is Leaf!5100) (c!185027 lt!365922)) (csize!6629 (c!185027 lt!365922)) (csize!6628 (c!185027 lt!365922)))))))

(assert (=> d!307585 (= (size!8112 (c!185027 lt!365922)) lt!366460)))

(declare-fun bs!258162 () Bool)

(assert (= bs!258162 d!307585))

(assert (=> bs!258162 m!1242967))

(assert (=> bs!258162 m!1242967))

(declare-fun m!1243979 () Bool)

(assert (=> bs!258162 m!1243979))

(assert (=> d!307175 d!307585))

(declare-fun d!307587 () Bool)

(declare-fun lt!366461 () Int)

(assert (=> d!307587 (>= lt!366461 0)))

(declare-fun e!691505 () Int)

(assert (=> d!307587 (= lt!366461 e!691505)))

(declare-fun c!185220 () Bool)

(assert (=> d!307587 (= c!185220 ((_ is Nil!10490) (list!3758 objs!8)))))

(assert (=> d!307587 (= (size!8110 (list!3758 objs!8)) lt!366461)))

(declare-fun b!1092607 () Bool)

(assert (=> b!1092607 (= e!691505 0)))

(declare-fun b!1092608 () Bool)

(assert (=> b!1092608 (= e!691505 (+ 1 (size!8110 (t!102180 (list!3758 objs!8)))))))

(assert (= (and d!307587 c!185220) b!1092607))

(assert (= (and d!307587 (not c!185220)) b!1092608))

(declare-fun m!1243981 () Bool)

(assert (=> b!1092608 m!1243981))

(assert (=> d!307193 d!307587))

(assert (=> d!307193 d!307171))

(declare-fun d!307589 () Bool)

(declare-fun lt!366462 () Int)

(assert (=> d!307589 (= lt!366462 (size!8110 (list!3760 (c!185027 objs!8))))))

(assert (=> d!307589 (= lt!366462 (ite ((_ is Empty!3199) (c!185027 objs!8)) 0 (ite ((_ is Leaf!5100) (c!185027 objs!8)) (csize!6629 (c!185027 objs!8)) (csize!6628 (c!185027 objs!8)))))))

(assert (=> d!307589 (= (size!8112 (c!185027 objs!8)) lt!366462)))

(declare-fun bs!258163 () Bool)

(assert (= bs!258163 d!307589))

(assert (=> bs!258163 m!1242917))

(assert (=> bs!258163 m!1242917))

(declare-fun m!1243983 () Bool)

(assert (=> bs!258163 m!1243983))

(assert (=> d!307193 d!307589))

(declare-fun d!307591 () Bool)

(declare-fun e!691508 () Bool)

(assert (=> d!307591 e!691508))

(declare-fun res!485441 () Bool)

(assert (=> d!307591 (=> (not res!485441) (not e!691508))))

(declare-fun appendAssocInst!205 (Conc!3199 Conc!3199) Bool)

(assert (=> d!307591 (= res!485441 (appendAssocInst!205 (c!185027 (sortObjectsByID!0 lt!366210)) (c!185027 lt!366211)))))

(declare-fun lt!366465 () BalanceConc!6412)

(declare-fun ++!2841 (Conc!3199 Conc!3199) Conc!3199)

(assert (=> d!307591 (= lt!366465 (BalanceConc!6413 (++!2841 (c!185027 (sortObjectsByID!0 lt!366210)) (c!185027 lt!366211))))))

(assert (=> d!307591 (= (++!2838 (sortObjectsByID!0 lt!366210) lt!366211) lt!366465)))

(declare-fun b!1092620 () Bool)

(assert (=> b!1092620 (= e!691508 (= (list!3758 lt!366465) (++!2839 (list!3758 (sortObjectsByID!0 lt!366210)) (list!3758 lt!366211))))))

(declare-fun b!1092619 () Bool)

(declare-fun res!485442 () Bool)

(assert (=> b!1092619 (=> (not res!485442) (not e!691508))))

(declare-fun height!420 (Conc!3199) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1092619 (= res!485442 (>= (height!420 (++!2841 (c!185027 (sortObjectsByID!0 lt!366210)) (c!185027 lt!366211))) (max!0 (height!420 (c!185027 (sortObjectsByID!0 lt!366210))) (height!420 (c!185027 lt!366211)))))))

(declare-fun b!1092618 () Bool)

(declare-fun res!485444 () Bool)

(assert (=> b!1092618 (=> (not res!485444) (not e!691508))))

(assert (=> b!1092618 (= res!485444 (<= (height!420 (++!2841 (c!185027 (sortObjectsByID!0 lt!366210)) (c!185027 lt!366211))) (+ (max!0 (height!420 (c!185027 (sortObjectsByID!0 lt!366210))) (height!420 (c!185027 lt!366211))) 1)))))

(declare-fun b!1092617 () Bool)

(declare-fun res!485443 () Bool)

(assert (=> b!1092617 (=> (not res!485443) (not e!691508))))

(assert (=> b!1092617 (= res!485443 (isBalanced!884 (++!2841 (c!185027 (sortObjectsByID!0 lt!366210)) (c!185027 lt!366211))))))

(assert (= (and d!307591 res!485441) b!1092617))

(assert (= (and b!1092617 res!485443) b!1092618))

(assert (= (and b!1092618 res!485444) b!1092619))

(assert (= (and b!1092619 res!485442) b!1092620))

(declare-fun m!1243985 () Bool)

(assert (=> b!1092617 m!1243985))

(assert (=> b!1092617 m!1243985))

(declare-fun m!1243987 () Bool)

(assert (=> b!1092617 m!1243987))

(declare-fun m!1243989 () Bool)

(assert (=> d!307591 m!1243989))

(assert (=> d!307591 m!1243985))

(declare-fun m!1243991 () Bool)

(assert (=> b!1092619 m!1243991))

(declare-fun m!1243993 () Bool)

(assert (=> b!1092619 m!1243993))

(declare-fun m!1243995 () Bool)

(assert (=> b!1092619 m!1243995))

(assert (=> b!1092619 m!1243985))

(declare-fun m!1243997 () Bool)

(assert (=> b!1092619 m!1243997))

(assert (=> b!1092619 m!1243985))

(assert (=> b!1092619 m!1243991))

(assert (=> b!1092619 m!1243993))

(assert (=> b!1092618 m!1243991))

(assert (=> b!1092618 m!1243993))

(assert (=> b!1092618 m!1243995))

(assert (=> b!1092618 m!1243985))

(assert (=> b!1092618 m!1243997))

(assert (=> b!1092618 m!1243985))

(assert (=> b!1092618 m!1243991))

(assert (=> b!1092618 m!1243993))

(declare-fun m!1243999 () Bool)

(assert (=> b!1092620 m!1243999))

(assert (=> b!1092620 m!1242789))

(assert (=> b!1092620 m!1242803))

(assert (=> b!1092620 m!1242805))

(assert (=> b!1092620 m!1242803))

(assert (=> b!1092620 m!1242805))

(assert (=> b!1092620 m!1242775))

(assert (=> b!1091933 d!307591))

(declare-fun d!307593 () Bool)

(assert (=> d!307593 (= (list!3758 (sortObjectsByID!0 lt!366231)) (list!3760 (c!185027 (sortObjectsByID!0 lt!366231))))))

(declare-fun bs!258164 () Bool)

(assert (= bs!258164 d!307593))

(declare-fun m!1244001 () Bool)

(assert (=> bs!258164 m!1244001))

(assert (=> b!1091933 d!307593))

(declare-fun d!307595 () Bool)

(declare-fun res!485445 () Bool)

(declare-fun e!691509 () Bool)

(assert (=> d!307595 (=> res!485445 e!691509)))

(assert (=> d!307595 (= res!485445 ((_ is Nil!10490) lt!366220))))

(assert (=> d!307595 (= (forall!2345 lt!366220 lambda!41627) e!691509)))

(declare-fun b!1092621 () Bool)

(declare-fun e!691510 () Bool)

(assert (=> b!1092621 (= e!691509 e!691510)))

(declare-fun res!485446 () Bool)

(assert (=> b!1092621 (=> (not res!485446) (not e!691510))))

(assert (=> b!1092621 (= res!485446 (dynLambda!4577 lambda!41627 (h!15891 lt!366220)))))

(declare-fun b!1092622 () Bool)

(assert (=> b!1092622 (= e!691510 (forall!2345 (t!102180 lt!366220) lambda!41627))))

(assert (= (and d!307595 (not res!485445)) b!1092621))

(assert (= (and b!1092621 res!485446) b!1092622))

(declare-fun b_lambda!30843 () Bool)

(assert (=> (not b_lambda!30843) (not b!1092621)))

(declare-fun m!1244003 () Bool)

(assert (=> b!1092621 m!1244003))

(declare-fun m!1244005 () Bool)

(assert (=> b!1092622 m!1244005))

(assert (=> b!1091933 d!307595))

(declare-fun d!307597 () Bool)

(assert (=> d!307597 (forall!2345 lt!366209 lambda!41627)))

(declare-fun lt!366466 () Unit!15909)

(assert (=> d!307597 (= lt!366466 (choose!7015 lt!366209 lt!366222 lambda!41627))))

(assert (=> d!307597 (forall!2345 lt!366222 lambda!41627)))

(assert (=> d!307597 (= (lemmaForallSubseq!35 lt!366209 lt!366222 lambda!41627) lt!366466)))

(declare-fun bs!258165 () Bool)

(assert (= bs!258165 d!307597))

(assert (=> bs!258165 m!1242833))

(declare-fun m!1244007 () Bool)

(assert (=> bs!258165 m!1244007))

(declare-fun m!1244009 () Bool)

(assert (=> bs!258165 m!1244009))

(assert (=> b!1091933 d!307597))

(declare-fun d!307599 () Bool)

(assert (=> d!307599 (= (isEmpty!6660 lt!366212) ((_ is Nil!10490) lt!366212))))

(assert (=> b!1091933 d!307599))

(declare-fun d!307601 () Bool)

(assert (=> d!307601 (forall!2345 lt!366205 lambda!41627)))

(declare-fun lt!366467 () Unit!15909)

(assert (=> d!307601 (= lt!366467 (choose!7015 lt!366205 lt!366224 lambda!41627))))

(assert (=> d!307601 (forall!2345 lt!366224 lambda!41627)))

(assert (=> d!307601 (= (lemmaForallSubseq!35 lt!366205 lt!366224 lambda!41627) lt!366467)))

(declare-fun bs!258166 () Bool)

(assert (= bs!258166 d!307601))

(assert (=> bs!258166 m!1242827))

(declare-fun m!1244011 () Bool)

(assert (=> bs!258166 m!1244011))

(declare-fun m!1244013 () Bool)

(assert (=> bs!258166 m!1244013))

(assert (=> b!1091933 d!307601))

(declare-fun d!307603 () Bool)

(declare-fun e!691511 () Bool)

(assert (=> d!307603 e!691511))

(declare-fun res!485447 () Bool)

(assert (=> d!307603 (=> (not res!485447) (not e!691511))))

(assert (=> d!307603 (= res!485447 (appendAssocInst!205 (c!185027 (++!2838 (sortObjectsByID!0 lt!366210) lt!366211)) (c!185027 (sortObjectsByID!0 lt!366231))))))

(declare-fun lt!366468 () BalanceConc!6412)

(assert (=> d!307603 (= lt!366468 (BalanceConc!6413 (++!2841 (c!185027 (++!2838 (sortObjectsByID!0 lt!366210) lt!366211)) (c!185027 (sortObjectsByID!0 lt!366231)))))))

(assert (=> d!307603 (= (++!2838 (++!2838 (sortObjectsByID!0 lt!366210) lt!366211) (sortObjectsByID!0 lt!366231)) lt!366468)))

(declare-fun b!1092626 () Bool)

(assert (=> b!1092626 (= e!691511 (= (list!3758 lt!366468) (++!2839 (list!3758 (++!2838 (sortObjectsByID!0 lt!366210) lt!366211)) (list!3758 (sortObjectsByID!0 lt!366231)))))))

(declare-fun b!1092625 () Bool)

(declare-fun res!485448 () Bool)

(assert (=> b!1092625 (=> (not res!485448) (not e!691511))))

(assert (=> b!1092625 (= res!485448 (>= (height!420 (++!2841 (c!185027 (++!2838 (sortObjectsByID!0 lt!366210) lt!366211)) (c!185027 (sortObjectsByID!0 lt!366231)))) (max!0 (height!420 (c!185027 (++!2838 (sortObjectsByID!0 lt!366210) lt!366211))) (height!420 (c!185027 (sortObjectsByID!0 lt!366231))))))))

(declare-fun b!1092624 () Bool)

(declare-fun res!485450 () Bool)

(assert (=> b!1092624 (=> (not res!485450) (not e!691511))))

(assert (=> b!1092624 (= res!485450 (<= (height!420 (++!2841 (c!185027 (++!2838 (sortObjectsByID!0 lt!366210) lt!366211)) (c!185027 (sortObjectsByID!0 lt!366231)))) (+ (max!0 (height!420 (c!185027 (++!2838 (sortObjectsByID!0 lt!366210) lt!366211))) (height!420 (c!185027 (sortObjectsByID!0 lt!366231)))) 1)))))

(declare-fun b!1092623 () Bool)

(declare-fun res!485449 () Bool)

(assert (=> b!1092623 (=> (not res!485449) (not e!691511))))

(assert (=> b!1092623 (= res!485449 (isBalanced!884 (++!2841 (c!185027 (++!2838 (sortObjectsByID!0 lt!366210) lt!366211)) (c!185027 (sortObjectsByID!0 lt!366231)))))))

(assert (= (and d!307603 res!485447) b!1092623))

(assert (= (and b!1092623 res!485449) b!1092624))

(assert (= (and b!1092624 res!485450) b!1092625))

(assert (= (and b!1092625 res!485448) b!1092626))

(declare-fun m!1244015 () Bool)

(assert (=> b!1092623 m!1244015))

(assert (=> b!1092623 m!1244015))

(declare-fun m!1244017 () Bool)

(assert (=> b!1092623 m!1244017))

(declare-fun m!1244019 () Bool)

(assert (=> d!307603 m!1244019))

(assert (=> d!307603 m!1244015))

(declare-fun m!1244021 () Bool)

(assert (=> b!1092625 m!1244021))

(declare-fun m!1244023 () Bool)

(assert (=> b!1092625 m!1244023))

(declare-fun m!1244025 () Bool)

(assert (=> b!1092625 m!1244025))

(assert (=> b!1092625 m!1244015))

(declare-fun m!1244027 () Bool)

(assert (=> b!1092625 m!1244027))

(assert (=> b!1092625 m!1244015))

(assert (=> b!1092625 m!1244021))

(assert (=> b!1092625 m!1244023))

(assert (=> b!1092624 m!1244021))

(assert (=> b!1092624 m!1244023))

(assert (=> b!1092624 m!1244025))

(assert (=> b!1092624 m!1244015))

(assert (=> b!1092624 m!1244027))

(assert (=> b!1092624 m!1244015))

(assert (=> b!1092624 m!1244021))

(assert (=> b!1092624 m!1244023))

(declare-fun m!1244029 () Bool)

(assert (=> b!1092626 m!1244029))

(assert (=> b!1092626 m!1242791))

(declare-fun m!1244031 () Bool)

(assert (=> b!1092626 m!1244031))

(assert (=> b!1092626 m!1242795))

(assert (=> b!1092626 m!1242777))

(assert (=> b!1092626 m!1244031))

(assert (=> b!1092626 m!1242777))

(declare-fun m!1244033 () Bool)

(assert (=> b!1092626 m!1244033))

(assert (=> b!1091933 d!307603))

(declare-fun d!307605 () Bool)

(assert (=> d!307605 (= (list!3758 (filter!247 lt!365922 lambda!41626)) (list!3760 (c!185027 (filter!247 lt!365922 lambda!41626))))))

(declare-fun bs!258167 () Bool)

(assert (= bs!258167 d!307605))

(declare-fun m!1244035 () Bool)

(assert (=> bs!258167 m!1244035))

(assert (=> b!1091933 d!307605))

(declare-fun d!307607 () Bool)

(assert (=> d!307607 (forall!2345 (++!2839 (++!2839 (list!3758 (sortObjectsByID!0 lt!366210)) (list!3758 lt!366211)) (list!3758 (sortObjectsByID!0 lt!366231))) lambda!41627)))

(declare-fun lt!366471 () Unit!15909)

(declare-fun choose!7018 (List!10506 List!10506 Int) Unit!15909)

(assert (=> d!307607 (= lt!366471 (choose!7018 (++!2839 (list!3758 (sortObjectsByID!0 lt!366210)) (list!3758 lt!366211)) (list!3758 (sortObjectsByID!0 lt!366231)) lambda!41627))))

(assert (=> d!307607 (forall!2345 (++!2839 (list!3758 (sortObjectsByID!0 lt!366210)) (list!3758 lt!366211)) lambda!41627)))

(assert (=> d!307607 (= (lemmaConcatPreservesForall!80 (++!2839 (list!3758 (sortObjectsByID!0 lt!366210)) (list!3758 lt!366211)) (list!3758 (sortObjectsByID!0 lt!366231)) lambda!41627) lt!366471)))

(declare-fun bs!258168 () Bool)

(assert (= bs!258168 d!307607))

(assert (=> bs!258168 m!1242775))

(assert (=> bs!258168 m!1242777))

(declare-fun m!1244037 () Bool)

(assert (=> bs!258168 m!1244037))

(assert (=> bs!258168 m!1244037))

(declare-fun m!1244039 () Bool)

(assert (=> bs!258168 m!1244039))

(assert (=> bs!258168 m!1242775))

(assert (=> bs!258168 m!1242777))

(declare-fun m!1244041 () Bool)

(assert (=> bs!258168 m!1244041))

(assert (=> bs!258168 m!1242775))

(declare-fun m!1244043 () Bool)

(assert (=> bs!258168 m!1244043))

(assert (=> b!1091933 d!307607))

(declare-fun d!307609 () Bool)

(assert (=> d!307609 (= (list!3758 lt!366211) (list!3760 (c!185027 lt!366211)))))

(declare-fun bs!258169 () Bool)

(assert (= bs!258169 d!307609))

(declare-fun m!1244045 () Bool)

(assert (=> bs!258169 m!1244045))

(assert (=> b!1091933 d!307609))

(declare-fun d!307611 () Bool)

(declare-fun res!485451 () Bool)

(declare-fun e!691512 () Bool)

(assert (=> d!307611 (=> res!485451 e!691512)))

(assert (=> d!307611 (= res!485451 ((_ is Nil!10490) lt!366205))))

(assert (=> d!307611 (= (forall!2345 lt!366205 lambda!41627) e!691512)))

(declare-fun b!1092627 () Bool)

(declare-fun e!691513 () Bool)

(assert (=> b!1092627 (= e!691512 e!691513)))

(declare-fun res!485452 () Bool)

(assert (=> b!1092627 (=> (not res!485452) (not e!691513))))

(assert (=> b!1092627 (= res!485452 (dynLambda!4577 lambda!41627 (h!15891 lt!366205)))))

(declare-fun b!1092628 () Bool)

(assert (=> b!1092628 (= e!691513 (forall!2345 (t!102180 lt!366205) lambda!41627))))

(assert (= (and d!307611 (not res!485451)) b!1092627))

(assert (= (and b!1092627 res!485452) b!1092628))

(declare-fun b_lambda!30845 () Bool)

(assert (=> (not b_lambda!30845) (not b!1092627)))

(declare-fun m!1244047 () Bool)

(assert (=> b!1092627 m!1244047))

(declare-fun m!1244049 () Bool)

(assert (=> b!1092628 m!1244049))

(assert (=> b!1091933 d!307611))

(declare-fun d!307613 () Bool)

(declare-fun e!691514 () Bool)

(assert (=> d!307613 e!691514))

(declare-fun res!485453 () Bool)

(assert (=> d!307613 (=> res!485453 e!691514)))

(assert (=> d!307613 (= res!485453 (isEmpty!6660 lt!366214))))

(declare-fun lt!366472 () Unit!15909)

(assert (=> d!307613 (= lt!366472 (choose!7017 lt!366214 lambda!41624))))

(assert (=> d!307613 (not (forall!2345 lt!366214 lambda!41624))))

(assert (=> d!307613 (= (lemmaNotForallFilterShorter!33 lt!366214 lambda!41624) lt!366472)))

(declare-fun b!1092629 () Bool)

(assert (=> b!1092629 (= e!691514 (< (size!8110 (filter!246 lt!366214 lambda!41624)) (size!8110 lt!366214)))))

(assert (= (and d!307613 (not res!485453)) b!1092629))

(assert (=> d!307613 m!1242831))

(declare-fun m!1244051 () Bool)

(assert (=> d!307613 m!1244051))

(declare-fun m!1244053 () Bool)

(assert (=> d!307613 m!1244053))

(assert (=> b!1092629 m!1242841))

(assert (=> b!1092629 m!1242841))

(assert (=> b!1092629 m!1242843))

(assert (=> b!1092629 m!1242845))

(assert (=> b!1091933 d!307613))

(declare-fun d!307615 () Bool)

(declare-fun e!691515 () Bool)

(assert (=> d!307615 e!691515))

(declare-fun res!485454 () Bool)

(assert (=> d!307615 (=> (not res!485454) (not e!691515))))

(assert (=> d!307615 (= res!485454 (isBalanced!884 (filter!249 (c!185027 lt!365922) lambda!41626)))))

(declare-fun lt!366473 () BalanceConc!6412)

(assert (=> d!307615 (= lt!366473 (BalanceConc!6413 (filter!249 (c!185027 lt!365922) lambda!41626)))))

(assert (=> d!307615 (= (filter!247 lt!365922 lambda!41626) lt!366473)))

(declare-fun b!1092630 () Bool)

(assert (=> b!1092630 (= e!691515 (= (list!3758 lt!366473) (filter!246 (list!3758 lt!365922) lambda!41626)))))

(assert (= (and d!307615 res!485454) b!1092630))

(declare-fun m!1244055 () Bool)

(assert (=> d!307615 m!1244055))

(assert (=> d!307615 m!1244055))

(declare-fun m!1244057 () Bool)

(assert (=> d!307615 m!1244057))

(declare-fun m!1244059 () Bool)

(assert (=> b!1092630 m!1244059))

(assert (=> b!1092630 m!1242381))

(assert (=> b!1092630 m!1242381))

(declare-fun m!1244061 () Bool)

(assert (=> b!1092630 m!1244061))

(assert (=> b!1091933 d!307615))

(declare-fun d!307617 () Bool)

(assert (=> d!307617 (subseq!140 (filter!246 (list!3758 lt!365922) lambda!41624) (list!3758 lt!365922))))

(declare-fun lt!366474 () Unit!15909)

(assert (=> d!307617 (= lt!366474 (choose!7016 (list!3758 lt!365922) lambda!41624))))

(assert (=> d!307617 (= (filterSubseq!27 (list!3758 lt!365922) lambda!41624) lt!366474)))

(declare-fun bs!258170 () Bool)

(assert (= bs!258170 d!307617))

(assert (=> bs!258170 m!1242381))

(declare-fun m!1244063 () Bool)

(assert (=> bs!258170 m!1244063))

(assert (=> bs!258170 m!1244063))

(assert (=> bs!258170 m!1242381))

(declare-fun m!1244065 () Bool)

(assert (=> bs!258170 m!1244065))

(assert (=> bs!258170 m!1242381))

(declare-fun m!1244067 () Bool)

(assert (=> bs!258170 m!1244067))

(assert (=> b!1091933 d!307617))

(declare-fun d!307619 () Bool)

(assert (=> d!307619 (subseq!140 (filter!246 (list!3758 lt!365922) lambda!41625) (list!3758 lt!365922))))

(declare-fun lt!366475 () Unit!15909)

(assert (=> d!307619 (= lt!366475 (choose!7016 (list!3758 lt!365922) lambda!41625))))

(assert (=> d!307619 (= (filterSubseq!27 (list!3758 lt!365922) lambda!41625) lt!366475)))

(declare-fun bs!258171 () Bool)

(assert (= bs!258171 d!307619))

(assert (=> bs!258171 m!1242381))

(declare-fun m!1244069 () Bool)

(assert (=> bs!258171 m!1244069))

(assert (=> bs!258171 m!1244069))

(assert (=> bs!258171 m!1242381))

(declare-fun m!1244071 () Bool)

(assert (=> bs!258171 m!1244071))

(assert (=> bs!258171 m!1242381))

(declare-fun m!1244073 () Bool)

(assert (=> bs!258171 m!1244073))

(assert (=> b!1091933 d!307619))

(declare-fun d!307621 () Bool)

(declare-fun lt!366476 () Bool)

(assert (=> d!307621 (= lt!366476 (forall!2345 (list!3758 lt!365922) lambda!41626))))

(assert (=> d!307621 (= lt!366476 (forall!2347 (c!185027 lt!365922) lambda!41626))))

(assert (=> d!307621 (= (forall!2344 lt!365922 lambda!41626) lt!366476)))

(declare-fun bs!258172 () Bool)

(assert (= bs!258172 d!307621))

(assert (=> bs!258172 m!1242381))

(assert (=> bs!258172 m!1242381))

(declare-fun m!1244075 () Bool)

(assert (=> bs!258172 m!1244075))

(declare-fun m!1244077 () Bool)

(assert (=> bs!258172 m!1244077))

(assert (=> b!1091933 d!307621))

(declare-fun d!307623 () Bool)

(declare-fun res!485455 () Bool)

(declare-fun e!691516 () Bool)

(assert (=> d!307623 (=> res!485455 e!691516)))

(assert (=> d!307623 (= res!485455 ((_ is Nil!10490) lt!366209))))

(assert (=> d!307623 (= (forall!2345 lt!366209 lambda!41627) e!691516)))

(declare-fun b!1092631 () Bool)

(declare-fun e!691517 () Bool)

(assert (=> b!1092631 (= e!691516 e!691517)))

(declare-fun res!485456 () Bool)

(assert (=> b!1092631 (=> (not res!485456) (not e!691517))))

(assert (=> b!1092631 (= res!485456 (dynLambda!4577 lambda!41627 (h!15891 lt!366209)))))

(declare-fun b!1092632 () Bool)

(assert (=> b!1092632 (= e!691517 (forall!2345 (t!102180 lt!366209) lambda!41627))))

(assert (= (and d!307623 (not res!485455)) b!1092631))

(assert (= (and b!1092631 res!485456) b!1092632))

(declare-fun b_lambda!30847 () Bool)

(assert (=> (not b_lambda!30847) (not b!1092631)))

(declare-fun m!1244079 () Bool)

(assert (=> b!1092631 m!1244079))

(declare-fun m!1244081 () Bool)

(assert (=> b!1092632 m!1244081))

(assert (=> b!1091933 d!307623))

(declare-fun d!307625 () Bool)

(declare-fun lt!366477 () Bool)

(assert (=> d!307625 (= lt!366477 (contains!1773 (list!3758 lt!366231) lt!366207))))

(assert (=> d!307625 (= lt!366477 (contains!1774 (c!185027 lt!366231) lt!366207))))

(assert (=> d!307625 (= (contains!1770 lt!366231 lt!366207) lt!366477)))

(declare-fun bs!258173 () Bool)

(assert (= bs!258173 d!307625))

(assert (=> bs!258173 m!1242861))

(assert (=> bs!258173 m!1242861))

(declare-fun m!1244083 () Bool)

(assert (=> bs!258173 m!1244083))

(declare-fun m!1244085 () Bool)

(assert (=> bs!258173 m!1244085))

(assert (=> b!1091933 d!307625))

(declare-fun d!307627 () Bool)

(declare-fun e!691518 () Bool)

(assert (=> d!307627 e!691518))

(declare-fun res!485457 () Bool)

(assert (=> d!307627 (=> (not res!485457) (not e!691518))))

(assert (=> d!307627 (= res!485457 (isBalanced!884 (filter!249 (c!185027 lt!365922) lambda!41625)))))

(declare-fun lt!366478 () BalanceConc!6412)

(assert (=> d!307627 (= lt!366478 (BalanceConc!6413 (filter!249 (c!185027 lt!365922) lambda!41625)))))

(assert (=> d!307627 (= (filter!247 lt!365922 lambda!41625) lt!366478)))

(declare-fun b!1092633 () Bool)

(assert (=> b!1092633 (= e!691518 (= (list!3758 lt!366478) (filter!246 (list!3758 lt!365922) lambda!41625)))))

(assert (= (and d!307627 res!485457) b!1092633))

(declare-fun m!1244087 () Bool)

(assert (=> d!307627 m!1244087))

(assert (=> d!307627 m!1244087))

(declare-fun m!1244089 () Bool)

(assert (=> d!307627 m!1244089))

(declare-fun m!1244091 () Bool)

(assert (=> b!1092633 m!1244091))

(assert (=> b!1092633 m!1242381))

(assert (=> b!1092633 m!1242381))

(assert (=> b!1092633 m!1244069))

(assert (=> b!1091933 d!307627))

(declare-fun d!307629 () Bool)

(declare-fun lt!366479 () Bool)

(assert (=> d!307629 (= lt!366479 (forall!2345 (list!3758 lt!365922) lambda!41624))))

(assert (=> d!307629 (= lt!366479 (forall!2347 (c!185027 lt!365922) lambda!41624))))

(assert (=> d!307629 (= (forall!2344 lt!365922 lambda!41624) lt!366479)))

(declare-fun bs!258174 () Bool)

(assert (= bs!258174 d!307629))

(assert (=> bs!258174 m!1242381))

(assert (=> bs!258174 m!1242381))

(assert (=> bs!258174 m!1243963))

(declare-fun m!1244093 () Bool)

(assert (=> bs!258174 m!1244093))

(assert (=> b!1091933 d!307629))

(declare-fun d!307631 () Bool)

(assert (=> d!307631 (= (list!3758 (filter!247 lt!365922 lambda!41624)) (list!3760 (c!185027 (filter!247 lt!365922 lambda!41624))))))

(declare-fun bs!258175 () Bool)

(assert (= bs!258175 d!307631))

(declare-fun m!1244095 () Bool)

(assert (=> bs!258175 m!1244095))

(assert (=> b!1091933 d!307631))

(declare-fun d!307633 () Bool)

(assert (=> d!307633 (= (list!3758 (sortObjectsByID!0 lt!366210)) (list!3760 (c!185027 (sortObjectsByID!0 lt!366210))))))

(declare-fun bs!258176 () Bool)

(assert (= bs!258176 d!307633))

(declare-fun m!1244097 () Bool)

(assert (=> bs!258176 m!1244097))

(assert (=> b!1091933 d!307633))

(declare-fun bs!258177 () Bool)

(declare-fun b!1092636 () Bool)

(assert (= bs!258177 (and b!1092636 d!307057)))

(declare-fun lambda!41639 () Int)

(assert (=> bs!258177 (not (= lambda!41639 lambda!41628))))

(declare-fun bs!258178 () Bool)

(assert (= bs!258178 (and b!1092636 b!1091933)))

(declare-fun lt!366485 () tuple2!11706)

(assert (=> bs!258178 (= (= (_1!6679 lt!366485) (_1!6679 lt!366207)) (= lambda!41639 lambda!41624))))

(assert (=> bs!258178 (not (= lambda!41639 lambda!41626))))

(declare-fun bs!258179 () Bool)

(assert (= bs!258179 (and b!1092636 start!93382)))

(assert (=> bs!258179 (not (= lambda!41639 lambda!41523))))

(assert (=> bs!258178 (not (= lambda!41639 lambda!41627))))

(declare-fun bs!258180 () Bool)

(assert (= bs!258180 (and b!1092636 b!1091690)))

(assert (=> bs!258180 (not (= lambda!41639 lambda!41525))))

(assert (=> bs!258180 (not (= lambda!41639 lambda!41526))))

(assert (=> bs!258180 (= (= (_1!6679 lt!366485) (_1!6679 lt!365939)) (= lambda!41639 lambda!41524))))

(assert (=> bs!258178 (not (= lambda!41639 lambda!41625))))

(declare-fun b!1092647 () Bool)

(declare-fun e!691527 () Bool)

(assert (=> b!1092647 (= e!691527 true)))

(declare-fun b!1092646 () Bool)

(declare-fun e!691526 () Bool)

(assert (=> b!1092646 (= e!691526 e!691527)))

(assert (=> b!1092636 e!691526))

(assert (= b!1092646 b!1092647))

(assert (= b!1092636 b!1092646))

(declare-fun lambda!41640 () Int)

(assert (=> bs!258177 (not (= lambda!41640 lambda!41628))))

(assert (=> bs!258178 (not (= lambda!41640 lambda!41624))))

(assert (=> bs!258178 (not (= lambda!41640 lambda!41626))))

(assert (=> bs!258179 (not (= lambda!41640 lambda!41523))))

(assert (=> bs!258178 (not (= lambda!41640 lambda!41627))))

(assert (=> bs!258180 (= (= (_1!6679 lt!366485) (_1!6679 lt!365939)) (= lambda!41640 lambda!41525))))

(assert (=> bs!258180 (not (= lambda!41640 lambda!41526))))

(assert (=> bs!258180 (not (= lambda!41640 lambda!41524))))

(assert (=> b!1092636 (not (= lambda!41640 lambda!41639))))

(assert (=> bs!258178 (= (= (_1!6679 lt!366485) (_1!6679 lt!366207)) (= lambda!41640 lambda!41625))))

(declare-fun b!1092649 () Bool)

(declare-fun e!691529 () Bool)

(assert (=> b!1092649 (= e!691529 true)))

(declare-fun b!1092648 () Bool)

(declare-fun e!691528 () Bool)

(assert (=> b!1092648 (= e!691528 e!691529)))

(assert (=> b!1092636 e!691528))

(assert (= b!1092648 b!1092649))

(assert (= b!1092636 b!1092648))

(declare-fun lambda!41641 () Int)

(assert (=> bs!258178 (not (= lambda!41641 lambda!41624))))

(assert (=> bs!258178 (= (= (_1!6679 lt!366485) (_1!6679 lt!366207)) (= lambda!41641 lambda!41626))))

(assert (=> bs!258179 (not (= lambda!41641 lambda!41523))))

(assert (=> bs!258178 (not (= lambda!41641 lambda!41627))))

(assert (=> bs!258180 (not (= lambda!41641 lambda!41525))))

(assert (=> bs!258180 (= (= (_1!6679 lt!366485) (_1!6679 lt!365939)) (= lambda!41641 lambda!41526))))

(assert (=> bs!258180 (not (= lambda!41641 lambda!41524))))

(assert (=> b!1092636 (not (= lambda!41641 lambda!41640))))

(assert (=> bs!258177 (not (= lambda!41641 lambda!41628))))

(assert (=> b!1092636 (not (= lambda!41641 lambda!41639))))

(assert (=> bs!258178 (not (= lambda!41641 lambda!41625))))

(declare-fun b!1092651 () Bool)

(declare-fun e!691531 () Bool)

(assert (=> b!1092651 (= e!691531 true)))

(declare-fun b!1092650 () Bool)

(declare-fun e!691530 () Bool)

(assert (=> b!1092650 (= e!691530 e!691531)))

(assert (=> b!1092636 e!691530))

(assert (= b!1092650 b!1092651))

(assert (= b!1092636 b!1092650))

(declare-fun lambda!41642 () Int)

(assert (=> bs!258178 (not (= lambda!41642 lambda!41624))))

(assert (=> bs!258178 (not (= lambda!41642 lambda!41626))))

(assert (=> bs!258179 (= lambda!41642 lambda!41523)))

(assert (=> bs!258178 (= lambda!41642 lambda!41627)))

(assert (=> bs!258180 (not (= lambda!41642 lambda!41525))))

(assert (=> bs!258180 (not (= lambda!41642 lambda!41526))))

(assert (=> b!1092636 (not (= lambda!41642 lambda!41640))))

(assert (=> bs!258177 (= lambda!41642 lambda!41628)))

(assert (=> b!1092636 (not (= lambda!41642 lambda!41641))))

(assert (=> bs!258180 (not (= lambda!41642 lambda!41524))))

(assert (=> b!1092636 (not (= lambda!41642 lambda!41639))))

(assert (=> bs!258178 (not (= lambda!41642 lambda!41625))))

(declare-fun bs!258181 () Bool)

(declare-fun d!307635 () Bool)

(assert (= bs!258181 (and d!307635 b!1091933)))

(declare-fun lambda!41643 () Int)

(assert (=> bs!258181 (not (= lambda!41643 lambda!41624))))

(assert (=> bs!258181 (not (= lambda!41643 lambda!41626))))

(declare-fun bs!258182 () Bool)

(assert (= bs!258182 (and d!307635 start!93382)))

(assert (=> bs!258182 (= lambda!41643 lambda!41523)))

(assert (=> bs!258181 (= lambda!41643 lambda!41627)))

(declare-fun bs!258183 () Bool)

(assert (= bs!258183 (and d!307635 b!1091690)))

(assert (=> bs!258183 (not (= lambda!41643 lambda!41525))))

(assert (=> bs!258183 (not (= lambda!41643 lambda!41526))))

(declare-fun bs!258184 () Bool)

(assert (= bs!258184 (and d!307635 b!1092636)))

(assert (=> bs!258184 (not (= lambda!41643 lambda!41640))))

(declare-fun bs!258185 () Bool)

(assert (= bs!258185 (and d!307635 d!307057)))

(assert (=> bs!258185 (= lambda!41643 lambda!41628)))

(assert (=> bs!258184 (= lambda!41643 lambda!41642)))

(assert (=> bs!258184 (not (= lambda!41643 lambda!41641))))

(assert (=> bs!258183 (not (= lambda!41643 lambda!41524))))

(assert (=> bs!258184 (not (= lambda!41643 lambda!41639))))

(assert (=> bs!258181 (not (= lambda!41643 lambda!41625))))

(declare-fun b!1092634 () Bool)

(declare-fun e!691520 () Unit!15909)

(declare-fun Unit!15923 () Unit!15909)

(assert (=> b!1092634 (= e!691520 Unit!15923)))

(declare-fun lt!366507 () BalanceConc!6412)

(assert (=> d!307635 (forall!2344 lt!366507 lambda!41643)))

(declare-fun e!691521 () BalanceConc!6412)

(assert (=> d!307635 (= lt!366507 e!691521)))

(declare-fun c!185224 () Bool)

(assert (=> d!307635 (= c!185224 (<= (size!8109 lt!366231) 1))))

(assert (=> d!307635 (= (sortObjectsByID!0 lt!366231) lt!366507)))

(declare-fun b!1092635 () Bool)

(assert (=> b!1092635 (= e!691521 lt!366231)))

(declare-fun lt!366489 () BalanceConc!6412)

(declare-fun lt!366509 () BalanceConc!6412)

(declare-fun lt!366488 () BalanceConc!6412)

(assert (=> b!1092636 (= e!691521 (++!2838 (++!2838 (sortObjectsByID!0 lt!366488) lt!366489) (sortObjectsByID!0 lt!366509)))))

(assert (=> b!1092636 (= lt!366485 (apply!2049 lt!366231 (ite (>= (size!8109 lt!366231) 0) (div (size!8109 lt!366231) 2) (- (div (- (size!8109 lt!366231)) 2)))))))

(assert (=> b!1092636 (= lt!366488 (filter!247 lt!366231 lambda!41639))))

(assert (=> b!1092636 (= lt!366489 (filter!247 lt!366231 lambda!41640))))

(assert (=> b!1092636 (= lt!366509 (filter!247 lt!366231 lambda!41641))))

(declare-fun c!185227 () Bool)

(assert (=> b!1092636 (= c!185227 (contains!1770 lt!366488 lt!366485))))

(declare-fun lt!366504 () Unit!15909)

(declare-fun e!691519 () Unit!15909)

(assert (=> b!1092636 (= lt!366504 e!691519)))

(declare-fun c!185226 () Bool)

(assert (=> b!1092636 (= c!185226 (forall!2344 lt!366231 lambda!41639))))

(declare-fun lt!366510 () Unit!15909)

(declare-fun e!691525 () Unit!15909)

(assert (=> b!1092636 (= lt!366510 e!691525)))

(declare-fun lt!366492 () List!10506)

(assert (=> b!1092636 (= lt!366492 (list!3758 lt!366231))))

(declare-fun lt!366506 () Unit!15909)

(assert (=> b!1092636 (= lt!366506 (lemmaNotForallFilterShorter!33 lt!366492 lambda!41639))))

(declare-fun res!485458 () Bool)

(assert (=> b!1092636 (= res!485458 (isEmpty!6660 lt!366492))))

(declare-fun e!691523 () Bool)

(assert (=> b!1092636 (=> res!485458 e!691523)))

(assert (=> b!1092636 e!691523))

(declare-fun lt!366480 () Unit!15909)

(assert (=> b!1092636 (= lt!366480 lt!366506)))

(declare-fun c!185225 () Bool)

(assert (=> b!1092636 (= c!185225 (contains!1770 lt!366509 lt!366485))))

(declare-fun lt!366484 () Unit!15909)

(assert (=> b!1092636 (= lt!366484 e!691520)))

(declare-fun c!185228 () Bool)

(assert (=> b!1092636 (= c!185228 (forall!2344 lt!366231 lambda!41641))))

(declare-fun lt!366513 () Unit!15909)

(declare-fun e!691522 () Unit!15909)

(assert (=> b!1092636 (= lt!366513 e!691522)))

(declare-fun lt!366490 () List!10506)

(assert (=> b!1092636 (= lt!366490 (list!3758 lt!366231))))

(declare-fun lt!366515 () Unit!15909)

(assert (=> b!1092636 (= lt!366515 (lemmaNotForallFilterShorter!33 lt!366490 lambda!41641))))

(declare-fun res!485459 () Bool)

(assert (=> b!1092636 (= res!485459 (isEmpty!6660 lt!366490))))

(declare-fun e!691524 () Bool)

(assert (=> b!1092636 (=> res!485459 e!691524)))

(assert (=> b!1092636 e!691524))

(declare-fun lt!366511 () Unit!15909)

(assert (=> b!1092636 (= lt!366511 lt!366515)))

(declare-fun lt!366505 () Unit!15909)

(assert (=> b!1092636 (= lt!366505 (filterSubseq!27 (list!3758 lt!366231) lambda!41639))))

(declare-fun lt!366482 () Unit!15909)

(assert (=> b!1092636 (= lt!366482 (filterSubseq!27 (list!3758 lt!366231) lambda!41640))))

(declare-fun lt!366508 () Unit!15909)

(assert (=> b!1092636 (= lt!366508 (filterSubseq!27 (list!3758 lt!366231) lambda!41641))))

(declare-fun lt!366498 () List!10506)

(assert (=> b!1092636 (= lt!366498 (list!3758 (filter!247 lt!366231 lambda!41639)))))

(declare-fun lt!366491 () List!10506)

(assert (=> b!1092636 (= lt!366491 (list!3758 lt!366231))))

(declare-fun lt!366512 () Unit!15909)

(assert (=> b!1092636 (= lt!366512 (lemmaForallSubseq!35 lt!366498 lt!366491 lambda!41642))))

(assert (=> b!1092636 (forall!2345 lt!366498 lambda!41642)))

(declare-fun lt!366495 () Unit!15909)

(assert (=> b!1092636 (= lt!366495 lt!366512)))

(declare-fun lt!366483 () List!10506)

(assert (=> b!1092636 (= lt!366483 (list!3758 (filter!247 lt!366231 lambda!41640)))))

(declare-fun lt!366502 () List!10506)

(assert (=> b!1092636 (= lt!366502 (list!3758 lt!366231))))

(declare-fun lt!366497 () Unit!15909)

(assert (=> b!1092636 (= lt!366497 (lemmaForallSubseq!35 lt!366483 lt!366502 lambda!41642))))

(assert (=> b!1092636 (forall!2345 lt!366483 lambda!41642)))

(declare-fun lt!366496 () Unit!15909)

(assert (=> b!1092636 (= lt!366496 lt!366497)))

(declare-fun lt!366487 () List!10506)

(assert (=> b!1092636 (= lt!366487 (list!3758 (filter!247 lt!366231 lambda!41641)))))

(declare-fun lt!366500 () List!10506)

(assert (=> b!1092636 (= lt!366500 (list!3758 lt!366231))))

(declare-fun lt!366501 () Unit!15909)

(assert (=> b!1092636 (= lt!366501 (lemmaForallSubseq!35 lt!366487 lt!366500 lambda!41642))))

(assert (=> b!1092636 (forall!2345 lt!366487 lambda!41642)))

(declare-fun lt!366493 () Unit!15909)

(assert (=> b!1092636 (= lt!366493 lt!366501)))

(declare-fun lt!366486 () Unit!15909)

(assert (=> b!1092636 (= lt!366486 (lemmaConcatPreservesForall!80 (list!3758 (sortObjectsByID!0 lt!366488)) (list!3758 lt!366489) lambda!41642))))

(declare-fun lt!366494 () Unit!15909)

(assert (=> b!1092636 (= lt!366494 (lemmaConcatPreservesForall!80 (++!2839 (list!3758 (sortObjectsByID!0 lt!366488)) (list!3758 lt!366489)) (list!3758 (sortObjectsByID!0 lt!366509)) lambda!41642))))

(declare-fun b!1092637 () Bool)

(assert (=> b!1092637 true))

(declare-fun lt!366514 () Unit!15909)

(assert (=> b!1092637 (= lt!366514 (forallContained!492 (list!3758 lt!366509) lambda!41641 lt!366485))))

(declare-fun err!2076 () Unit!15909)

(assert (=> b!1092637 (= e!691520 err!2076)))

(declare-fun b!1092638 () Bool)

(assert (=> b!1092638 true))

(declare-fun lt!366481 () Unit!15909)

(assert (=> b!1092638 (= lt!366481 (forallContained!492 (list!3758 lt!366231) lambda!41639 lt!366485))))

(declare-fun err!2075 () Unit!15909)

(assert (=> b!1092638 (= e!691525 err!2075)))

(declare-fun b!1092639 () Bool)

(assert (=> b!1092639 true))

(declare-fun lt!366503 () Unit!15909)

(assert (=> b!1092639 (= lt!366503 (forallContained!492 (list!3758 lt!366231) lambda!41641 lt!366485))))

(declare-fun err!2077 () Unit!15909)

(assert (=> b!1092639 (= e!691522 err!2077)))

(declare-fun b!1092640 () Bool)

(declare-fun Unit!15924 () Unit!15909)

(assert (=> b!1092640 (= e!691525 Unit!15924)))

(declare-fun b!1092641 () Bool)

(assert (=> b!1092641 (= e!691523 (< (size!8110 (filter!246 lt!366492 lambda!41639)) (size!8110 lt!366492)))))

(declare-fun b!1092642 () Bool)

(assert (=> b!1092642 (= e!691524 (< (size!8110 (filter!246 lt!366490 lambda!41641)) (size!8110 lt!366490)))))

(declare-fun b!1092643 () Bool)

(assert (=> b!1092643 true))

(declare-fun lt!366499 () Unit!15909)

(assert (=> b!1092643 (= lt!366499 (forallContained!492 (list!3758 lt!366488) lambda!41639 lt!366485))))

(declare-fun err!2074 () Unit!15909)

(assert (=> b!1092643 (= e!691519 err!2074)))

(declare-fun b!1092644 () Bool)

(declare-fun Unit!15925 () Unit!15909)

(assert (=> b!1092644 (= e!691519 Unit!15925)))

(declare-fun b!1092645 () Bool)

(declare-fun Unit!15926 () Unit!15909)

(assert (=> b!1092645 (= e!691522 Unit!15926)))

(assert (= (and d!307635 c!185224) b!1092635))

(assert (= (and d!307635 (not c!185224)) b!1092636))

(assert (= (and b!1092636 c!185227) b!1092643))

(assert (= (and b!1092636 (not c!185227)) b!1092644))

(assert (= (and b!1092636 c!185226) b!1092638))

(assert (= (and b!1092636 (not c!185226)) b!1092640))

(assert (= (and b!1092636 (not res!485458)) b!1092641))

(assert (= (and b!1092636 c!185225) b!1092637))

(assert (= (and b!1092636 (not c!185225)) b!1092634))

(assert (= (and b!1092636 c!185228) b!1092639))

(assert (= (and b!1092636 (not c!185228)) b!1092645))

(assert (= (and b!1092636 (not res!485459)) b!1092642))

(assert (=> b!1092638 m!1242861))

(assert (=> b!1092638 m!1242861))

(declare-fun m!1244099 () Bool)

(assert (=> b!1092638 m!1244099))

(declare-fun m!1244101 () Bool)

(assert (=> b!1092636 m!1244101))

(declare-fun m!1244103 () Bool)

(assert (=> b!1092636 m!1244103))

(declare-fun m!1244105 () Bool)

(assert (=> b!1092636 m!1244105))

(declare-fun m!1244107 () Bool)

(assert (=> b!1092636 m!1244107))

(declare-fun m!1244109 () Bool)

(assert (=> b!1092636 m!1244109))

(declare-fun m!1244111 () Bool)

(assert (=> b!1092636 m!1244111))

(assert (=> b!1092636 m!1244111))

(assert (=> b!1092636 m!1242861))

(declare-fun m!1244113 () Bool)

(assert (=> b!1092636 m!1244113))

(declare-fun m!1244115 () Bool)

(assert (=> b!1092636 m!1244115))

(declare-fun m!1244117 () Bool)

(assert (=> b!1092636 m!1244117))

(declare-fun m!1244119 () Bool)

(assert (=> b!1092636 m!1244119))

(declare-fun m!1244121 () Bool)

(assert (=> b!1092636 m!1244121))

(declare-fun m!1244123 () Bool)

(assert (=> b!1092636 m!1244123))

(assert (=> b!1092636 m!1244105))

(declare-fun m!1244125 () Bool)

(assert (=> b!1092636 m!1244125))

(declare-fun m!1244127 () Bool)

(assert (=> b!1092636 m!1244127))

(declare-fun m!1244129 () Bool)

(assert (=> b!1092636 m!1244129))

(assert (=> b!1092636 m!1244117))

(declare-fun m!1244131 () Bool)

(assert (=> b!1092636 m!1244131))

(assert (=> b!1092636 m!1244131))

(declare-fun m!1244133 () Bool)

(assert (=> b!1092636 m!1244133))

(declare-fun m!1244135 () Bool)

(assert (=> b!1092636 m!1244135))

(assert (=> b!1092636 m!1244127))

(assert (=> b!1092636 m!1244117))

(declare-fun m!1244137 () Bool)

(assert (=> b!1092636 m!1244137))

(assert (=> b!1092636 m!1244133))

(assert (=> b!1092636 m!1244131))

(assert (=> b!1092636 m!1244133))

(assert (=> b!1092636 m!1244103))

(declare-fun m!1244139 () Bool)

(assert (=> b!1092636 m!1244139))

(declare-fun m!1244141 () Bool)

(assert (=> b!1092636 m!1244141))

(declare-fun m!1244143 () Bool)

(assert (=> b!1092636 m!1244143))

(assert (=> b!1092636 m!1242861))

(declare-fun m!1244145 () Bool)

(assert (=> b!1092636 m!1244145))

(assert (=> b!1092636 m!1244119))

(assert (=> b!1092636 m!1244123))

(declare-fun m!1244147 () Bool)

(assert (=> b!1092636 m!1244147))

(assert (=> b!1092636 m!1244127))

(declare-fun m!1244149 () Bool)

(assert (=> b!1092636 m!1244149))

(assert (=> b!1092636 m!1242861))

(declare-fun m!1244151 () Bool)

(assert (=> b!1092636 m!1244151))

(declare-fun m!1244153 () Bool)

(assert (=> b!1092636 m!1244153))

(assert (=> b!1092636 m!1244111))

(declare-fun m!1244155 () Bool)

(assert (=> b!1092636 m!1244155))

(declare-fun m!1244157 () Bool)

(assert (=> b!1092636 m!1244157))

(declare-fun m!1244159 () Bool)

(assert (=> b!1092636 m!1244159))

(assert (=> b!1092636 m!1242861))

(declare-fun m!1244161 () Bool)

(assert (=> b!1092636 m!1244161))

(declare-fun m!1244163 () Bool)

(assert (=> b!1092636 m!1244163))

(declare-fun m!1244165 () Bool)

(assert (=> b!1092636 m!1244165))

(assert (=> b!1092636 m!1244129))

(declare-fun m!1244167 () Bool)

(assert (=> b!1092636 m!1244167))

(assert (=> b!1092636 m!1244123))

(assert (=> b!1092636 m!1244129))

(declare-fun m!1244169 () Bool)

(assert (=> b!1092636 m!1244169))

(declare-fun m!1244171 () Bool)

(assert (=> b!1092641 m!1244171))

(assert (=> b!1092641 m!1244171))

(declare-fun m!1244173 () Bool)

(assert (=> b!1092641 m!1244173))

(declare-fun m!1244175 () Bool)

(assert (=> b!1092641 m!1244175))

(declare-fun m!1244177 () Bool)

(assert (=> b!1092642 m!1244177))

(assert (=> b!1092642 m!1244177))

(declare-fun m!1244179 () Bool)

(assert (=> b!1092642 m!1244179))

(declare-fun m!1244181 () Bool)

(assert (=> b!1092642 m!1244181))

(assert (=> b!1092639 m!1242861))

(assert (=> b!1092639 m!1242861))

(declare-fun m!1244183 () Bool)

(assert (=> b!1092639 m!1244183))

(declare-fun m!1244185 () Bool)

(assert (=> d!307635 m!1244185))

(assert (=> d!307635 m!1244137))

(declare-fun m!1244187 () Bool)

(assert (=> b!1092643 m!1244187))

(assert (=> b!1092643 m!1244187))

(declare-fun m!1244189 () Bool)

(assert (=> b!1092643 m!1244189))

(declare-fun m!1244191 () Bool)

(assert (=> b!1092637 m!1244191))

(assert (=> b!1092637 m!1244191))

(declare-fun m!1244193 () Bool)

(assert (=> b!1092637 m!1244193))

(assert (=> b!1091933 d!307635))

(declare-fun d!307637 () Bool)

(declare-fun lt!366516 () Bool)

(assert (=> d!307637 (= lt!366516 (contains!1773 (list!3758 lt!366210) lt!366207))))

(assert (=> d!307637 (= lt!366516 (contains!1774 (c!185027 lt!366210) lt!366207))))

(assert (=> d!307637 (= (contains!1770 lt!366210 lt!366207) lt!366516)))

(declare-fun bs!258186 () Bool)

(assert (= bs!258186 d!307637))

(assert (=> bs!258186 m!1242857))

(assert (=> bs!258186 m!1242857))

(declare-fun m!1244195 () Bool)

(assert (=> bs!258186 m!1244195))

(declare-fun m!1244197 () Bool)

(assert (=> bs!258186 m!1244197))

(assert (=> b!1091933 d!307637))

(declare-fun d!307639 () Bool)

(declare-fun e!691532 () Bool)

(assert (=> d!307639 e!691532))

(declare-fun res!485460 () Bool)

(assert (=> d!307639 (=> (not res!485460) (not e!691532))))

(assert (=> d!307639 (= res!485460 (isBalanced!884 (filter!249 (c!185027 lt!365922) lambda!41624)))))

(declare-fun lt!366517 () BalanceConc!6412)

(assert (=> d!307639 (= lt!366517 (BalanceConc!6413 (filter!249 (c!185027 lt!365922) lambda!41624)))))

(assert (=> d!307639 (= (filter!247 lt!365922 lambda!41624) lt!366517)))

(declare-fun b!1092652 () Bool)

(assert (=> b!1092652 (= e!691532 (= (list!3758 lt!366517) (filter!246 (list!3758 lt!365922) lambda!41624)))))

(assert (= (and d!307639 res!485460) b!1092652))

(declare-fun m!1244199 () Bool)

(assert (=> d!307639 m!1244199))

(assert (=> d!307639 m!1244199))

(declare-fun m!1244201 () Bool)

(assert (=> d!307639 m!1244201))

(declare-fun m!1244203 () Bool)

(assert (=> b!1092652 m!1244203))

(assert (=> b!1092652 m!1242381))

(assert (=> b!1092652 m!1242381))

(assert (=> b!1092652 m!1244063))

(assert (=> b!1091933 d!307639))

(declare-fun d!307641 () Bool)

(declare-fun e!691533 () Bool)

(assert (=> d!307641 e!691533))

(declare-fun res!485461 () Bool)

(assert (=> d!307641 (=> res!485461 e!691533)))

(assert (=> d!307641 (= res!485461 (isEmpty!6660 lt!366212))))

(declare-fun lt!366518 () Unit!15909)

(assert (=> d!307641 (= lt!366518 (choose!7017 lt!366212 lambda!41626))))

(assert (=> d!307641 (not (forall!2345 lt!366212 lambda!41626))))

(assert (=> d!307641 (= (lemmaNotForallFilterShorter!33 lt!366212 lambda!41626) lt!366518)))

(declare-fun b!1092653 () Bool)

(assert (=> b!1092653 (= e!691533 (< (size!8110 (filter!246 lt!366212 lambda!41626)) (size!8110 lt!366212)))))

(assert (= (and d!307641 (not res!485461)) b!1092653))

(assert (=> d!307641 m!1242811))

(declare-fun m!1244205 () Bool)

(assert (=> d!307641 m!1244205))

(declare-fun m!1244207 () Bool)

(assert (=> d!307641 m!1244207))

(assert (=> b!1092653 m!1242847))

(assert (=> b!1092653 m!1242847))

(assert (=> b!1092653 m!1242849))

(assert (=> b!1092653 m!1242851))

(assert (=> b!1091933 d!307641))

(declare-fun d!307643 () Bool)

(declare-fun lt!366519 () tuple2!11706)

(assert (=> d!307643 (= lt!366519 (apply!2052 (list!3758 lt!365922) (ite (>= (size!8109 lt!365922) 0) (div (size!8109 lt!365922) 2) (- (div (- (size!8109 lt!365922)) 2)))))))

(assert (=> d!307643 (= lt!366519 (apply!2053 (c!185027 lt!365922) (ite (>= (size!8109 lt!365922) 0) (div (size!8109 lt!365922) 2) (- (div (- (size!8109 lt!365922)) 2)))))))

(declare-fun e!691534 () Bool)

(assert (=> d!307643 e!691534))

(declare-fun res!485462 () Bool)

(assert (=> d!307643 (=> (not res!485462) (not e!691534))))

(assert (=> d!307643 (= res!485462 (<= 0 (ite (>= (size!8109 lt!365922) 0) (div (size!8109 lt!365922) 2) (- (div (- (size!8109 lt!365922)) 2)))))))

(assert (=> d!307643 (= (apply!2049 lt!365922 (ite (>= (size!8109 lt!365922) 0) (div (size!8109 lt!365922) 2) (- (div (- (size!8109 lt!365922)) 2)))) lt!366519)))

(declare-fun b!1092654 () Bool)

(assert (=> b!1092654 (= e!691534 (< (ite (>= (size!8109 lt!365922) 0) (div (size!8109 lt!365922) 2) (- (div (- (size!8109 lt!365922)) 2))) (size!8109 lt!365922)))))

(assert (= (and d!307643 res!485462) b!1092654))

(assert (=> d!307643 m!1242381))

(assert (=> d!307643 m!1242381))

(declare-fun m!1244209 () Bool)

(assert (=> d!307643 m!1244209))

(declare-fun m!1244211 () Bool)

(assert (=> d!307643 m!1244211))

(assert (=> b!1092654 m!1242351))

(assert (=> b!1091933 d!307643))

(declare-fun d!307645 () Bool)

(assert (=> d!307645 (subseq!140 (filter!246 (list!3758 lt!365922) lambda!41626) (list!3758 lt!365922))))

(declare-fun lt!366520 () Unit!15909)

(assert (=> d!307645 (= lt!366520 (choose!7016 (list!3758 lt!365922) lambda!41626))))

(assert (=> d!307645 (= (filterSubseq!27 (list!3758 lt!365922) lambda!41626) lt!366520)))

(declare-fun bs!258187 () Bool)

(assert (= bs!258187 d!307645))

(assert (=> bs!258187 m!1242381))

(assert (=> bs!258187 m!1244061))

(assert (=> bs!258187 m!1244061))

(assert (=> bs!258187 m!1242381))

(declare-fun m!1244213 () Bool)

(assert (=> bs!258187 m!1244213))

(assert (=> bs!258187 m!1242381))

(declare-fun m!1244215 () Bool)

(assert (=> bs!258187 m!1244215))

(assert (=> b!1091933 d!307645))

(declare-fun d!307647 () Bool)

(assert (=> d!307647 (= (isEmpty!6660 lt!366214) ((_ is Nil!10490) lt!366214))))

(assert (=> b!1091933 d!307647))

(declare-fun d!307649 () Bool)

(assert (=> d!307649 (forall!2345 lt!366220 lambda!41627)))

(declare-fun lt!366521 () Unit!15909)

(assert (=> d!307649 (= lt!366521 (choose!7015 lt!366220 lt!366213 lambda!41627))))

(assert (=> d!307649 (forall!2345 lt!366213 lambda!41627)))

(assert (=> d!307649 (= (lemmaForallSubseq!35 lt!366220 lt!366213 lambda!41627) lt!366521)))

(declare-fun bs!258188 () Bool)

(assert (= bs!258188 d!307649))

(assert (=> bs!258188 m!1242773))

(declare-fun m!1244217 () Bool)

(assert (=> bs!258188 m!1244217))

(declare-fun m!1244219 () Bool)

(assert (=> bs!258188 m!1244219))

(assert (=> b!1091933 d!307649))

(assert (=> b!1091933 d!307175))

(declare-fun d!307651 () Bool)

(assert (=> d!307651 (= (list!3758 (filter!247 lt!365922 lambda!41625)) (list!3760 (c!185027 (filter!247 lt!365922 lambda!41625))))))

(declare-fun bs!258189 () Bool)

(assert (= bs!258189 d!307651))

(declare-fun m!1244221 () Bool)

(assert (=> bs!258189 m!1244221))

(assert (=> b!1091933 d!307651))

(declare-fun d!307653 () Bool)

(assert (=> d!307653 (forall!2345 (++!2839 (list!3758 (sortObjectsByID!0 lt!366210)) (list!3758 lt!366211)) lambda!41627)))

(declare-fun lt!366522 () Unit!15909)

(assert (=> d!307653 (= lt!366522 (choose!7018 (list!3758 (sortObjectsByID!0 lt!366210)) (list!3758 lt!366211) lambda!41627))))

(assert (=> d!307653 (forall!2345 (list!3758 (sortObjectsByID!0 lt!366210)) lambda!41627)))

(assert (=> d!307653 (= (lemmaConcatPreservesForall!80 (list!3758 (sortObjectsByID!0 lt!366210)) (list!3758 lt!366211) lambda!41627) lt!366522)))

(declare-fun bs!258190 () Bool)

(assert (= bs!258190 d!307653))

(assert (=> bs!258190 m!1242803))

(assert (=> bs!258190 m!1242805))

(assert (=> bs!258190 m!1242775))

(assert (=> bs!258190 m!1242775))

(assert (=> bs!258190 m!1244043))

(assert (=> bs!258190 m!1242803))

(assert (=> bs!258190 m!1242805))

(declare-fun m!1244223 () Bool)

(assert (=> bs!258190 m!1244223))

(assert (=> bs!258190 m!1242803))

(declare-fun m!1244225 () Bool)

(assert (=> bs!258190 m!1244225))

(assert (=> b!1091933 d!307653))

(declare-fun b!1092663 () Bool)

(declare-fun e!691540 () List!10506)

(assert (=> b!1092663 (= e!691540 (list!3758 lt!366211))))

(declare-fun b!1092664 () Bool)

(assert (=> b!1092664 (= e!691540 (Cons!10490 (h!15891 (list!3758 (sortObjectsByID!0 lt!366210))) (++!2839 (t!102180 (list!3758 (sortObjectsByID!0 lt!366210))) (list!3758 lt!366211))))))

(declare-fun b!1092665 () Bool)

(declare-fun res!485467 () Bool)

(declare-fun e!691539 () Bool)

(assert (=> b!1092665 (=> (not res!485467) (not e!691539))))

(declare-fun lt!366525 () List!10506)

(assert (=> b!1092665 (= res!485467 (= (size!8110 lt!366525) (+ (size!8110 (list!3758 (sortObjectsByID!0 lt!366210))) (size!8110 (list!3758 lt!366211)))))))

(declare-fun b!1092666 () Bool)

(assert (=> b!1092666 (= e!691539 (or (not (= (list!3758 lt!366211) Nil!10490)) (= lt!366525 (list!3758 (sortObjectsByID!0 lt!366210)))))))

(declare-fun d!307655 () Bool)

(assert (=> d!307655 e!691539))

(declare-fun res!485468 () Bool)

(assert (=> d!307655 (=> (not res!485468) (not e!691539))))

(assert (=> d!307655 (= res!485468 (= (content!1511 lt!366525) ((_ map or) (content!1511 (list!3758 (sortObjectsByID!0 lt!366210))) (content!1511 (list!3758 lt!366211)))))))

(assert (=> d!307655 (= lt!366525 e!691540)))

(declare-fun c!185231 () Bool)

(assert (=> d!307655 (= c!185231 ((_ is Nil!10490) (list!3758 (sortObjectsByID!0 lt!366210))))))

(assert (=> d!307655 (= (++!2839 (list!3758 (sortObjectsByID!0 lt!366210)) (list!3758 lt!366211)) lt!366525)))

(assert (= (and d!307655 c!185231) b!1092663))

(assert (= (and d!307655 (not c!185231)) b!1092664))

(assert (= (and d!307655 res!485468) b!1092665))

(assert (= (and b!1092665 res!485467) b!1092666))

(assert (=> b!1092664 m!1242805))

(declare-fun m!1244227 () Bool)

(assert (=> b!1092664 m!1244227))

(declare-fun m!1244229 () Bool)

(assert (=> b!1092665 m!1244229))

(assert (=> b!1092665 m!1242803))

(declare-fun m!1244231 () Bool)

(assert (=> b!1092665 m!1244231))

(assert (=> b!1092665 m!1242805))

(declare-fun m!1244233 () Bool)

(assert (=> b!1092665 m!1244233))

(declare-fun m!1244235 () Bool)

(assert (=> d!307655 m!1244235))

(assert (=> d!307655 m!1242803))

(declare-fun m!1244237 () Bool)

(assert (=> d!307655 m!1244237))

(assert (=> d!307655 m!1242805))

(declare-fun m!1244239 () Bool)

(assert (=> d!307655 m!1244239))

(assert (=> b!1091933 d!307655))

(assert (=> b!1091933 d!307197))

(declare-fun bs!258191 () Bool)

(declare-fun b!1092669 () Bool)

(assert (= bs!258191 (and b!1092669 b!1091933)))

(declare-fun lt!366531 () tuple2!11706)

(declare-fun lambda!41644 () Int)

(assert (=> bs!258191 (= (= (_1!6679 lt!366531) (_1!6679 lt!366207)) (= lambda!41644 lambda!41624))))

(declare-fun bs!258192 () Bool)

(assert (= bs!258192 (and b!1092669 start!93382)))

(assert (=> bs!258192 (not (= lambda!41644 lambda!41523))))

(assert (=> bs!258191 (not (= lambda!41644 lambda!41627))))

(declare-fun bs!258193 () Bool)

(assert (= bs!258193 (and b!1092669 b!1091690)))

(assert (=> bs!258193 (not (= lambda!41644 lambda!41525))))

(assert (=> bs!258193 (not (= lambda!41644 lambda!41526))))

(declare-fun bs!258194 () Bool)

(assert (= bs!258194 (and b!1092669 b!1092636)))

(assert (=> bs!258194 (not (= lambda!41644 lambda!41640))))

(declare-fun bs!258195 () Bool)

(assert (= bs!258195 (and b!1092669 d!307057)))

(assert (=> bs!258195 (not (= lambda!41644 lambda!41628))))

(declare-fun bs!258196 () Bool)

(assert (= bs!258196 (and b!1092669 d!307635)))

(assert (=> bs!258196 (not (= lambda!41644 lambda!41643))))

(assert (=> bs!258191 (not (= lambda!41644 lambda!41626))))

(assert (=> bs!258194 (not (= lambda!41644 lambda!41642))))

(assert (=> bs!258194 (not (= lambda!41644 lambda!41641))))

(assert (=> bs!258193 (= (= (_1!6679 lt!366531) (_1!6679 lt!365939)) (= lambda!41644 lambda!41524))))

(assert (=> bs!258194 (= (= (_1!6679 lt!366531) (_1!6679 lt!366485)) (= lambda!41644 lambda!41639))))

(assert (=> bs!258191 (not (= lambda!41644 lambda!41625))))

(declare-fun b!1092680 () Bool)

(declare-fun e!691549 () Bool)

(assert (=> b!1092680 (= e!691549 true)))

(declare-fun b!1092679 () Bool)

(declare-fun e!691548 () Bool)

(assert (=> b!1092679 (= e!691548 e!691549)))

(assert (=> b!1092669 e!691548))

(assert (= b!1092679 b!1092680))

(assert (= b!1092669 b!1092679))

(declare-fun lambda!41645 () Int)

(assert (=> bs!258191 (not (= lambda!41645 lambda!41624))))

(assert (=> bs!258192 (not (= lambda!41645 lambda!41523))))

(assert (=> bs!258191 (not (= lambda!41645 lambda!41627))))

(assert (=> bs!258193 (= (= (_1!6679 lt!366531) (_1!6679 lt!365939)) (= lambda!41645 lambda!41525))))

(assert (=> bs!258193 (not (= lambda!41645 lambda!41526))))

(assert (=> bs!258194 (= (= (_1!6679 lt!366531) (_1!6679 lt!366485)) (= lambda!41645 lambda!41640))))

(assert (=> bs!258195 (not (= lambda!41645 lambda!41628))))

(assert (=> bs!258196 (not (= lambda!41645 lambda!41643))))

(assert (=> bs!258191 (not (= lambda!41645 lambda!41626))))

(assert (=> bs!258194 (not (= lambda!41645 lambda!41642))))

(assert (=> bs!258194 (not (= lambda!41645 lambda!41641))))

(assert (=> bs!258193 (not (= lambda!41645 lambda!41524))))

(assert (=> b!1092669 (not (= lambda!41645 lambda!41644))))

(assert (=> bs!258194 (not (= lambda!41645 lambda!41639))))

(assert (=> bs!258191 (= (= (_1!6679 lt!366531) (_1!6679 lt!366207)) (= lambda!41645 lambda!41625))))

(declare-fun b!1092682 () Bool)

(declare-fun e!691551 () Bool)

(assert (=> b!1092682 (= e!691551 true)))

(declare-fun b!1092681 () Bool)

(declare-fun e!691550 () Bool)

(assert (=> b!1092681 (= e!691550 e!691551)))

(assert (=> b!1092669 e!691550))

(assert (= b!1092681 b!1092682))

(assert (= b!1092669 b!1092681))

(declare-fun lambda!41646 () Int)

(assert (=> b!1092669 (not (= lambda!41646 lambda!41645))))

(assert (=> bs!258191 (not (= lambda!41646 lambda!41624))))

(assert (=> bs!258192 (not (= lambda!41646 lambda!41523))))

(assert (=> bs!258191 (not (= lambda!41646 lambda!41627))))

(assert (=> bs!258193 (not (= lambda!41646 lambda!41525))))

(assert (=> bs!258193 (= (= (_1!6679 lt!366531) (_1!6679 lt!365939)) (= lambda!41646 lambda!41526))))

(assert (=> bs!258194 (not (= lambda!41646 lambda!41640))))

(assert (=> bs!258195 (not (= lambda!41646 lambda!41628))))

(assert (=> bs!258196 (not (= lambda!41646 lambda!41643))))

(assert (=> bs!258191 (= (= (_1!6679 lt!366531) (_1!6679 lt!366207)) (= lambda!41646 lambda!41626))))

(assert (=> bs!258194 (not (= lambda!41646 lambda!41642))))

(assert (=> bs!258194 (= (= (_1!6679 lt!366531) (_1!6679 lt!366485)) (= lambda!41646 lambda!41641))))

(assert (=> bs!258193 (not (= lambda!41646 lambda!41524))))

(assert (=> b!1092669 (not (= lambda!41646 lambda!41644))))

(assert (=> bs!258194 (not (= lambda!41646 lambda!41639))))

(assert (=> bs!258191 (not (= lambda!41646 lambda!41625))))

(declare-fun b!1092684 () Bool)

(declare-fun e!691553 () Bool)

(assert (=> b!1092684 (= e!691553 true)))

(declare-fun b!1092683 () Bool)

(declare-fun e!691552 () Bool)

(assert (=> b!1092683 (= e!691552 e!691553)))

(assert (=> b!1092669 e!691552))

(assert (= b!1092683 b!1092684))

(assert (= b!1092669 b!1092683))

(declare-fun lambda!41647 () Int)

(assert (=> b!1092669 (not (= lambda!41647 lambda!41645))))

(assert (=> bs!258191 (not (= lambda!41647 lambda!41624))))

(assert (=> bs!258192 (= lambda!41647 lambda!41523)))

(assert (=> b!1092669 (not (= lambda!41647 lambda!41646))))

(assert (=> bs!258191 (= lambda!41647 lambda!41627)))

(assert (=> bs!258193 (not (= lambda!41647 lambda!41525))))

(assert (=> bs!258193 (not (= lambda!41647 lambda!41526))))

(assert (=> bs!258194 (not (= lambda!41647 lambda!41640))))

(assert (=> bs!258195 (= lambda!41647 lambda!41628)))

(assert (=> bs!258196 (= lambda!41647 lambda!41643)))

(assert (=> bs!258191 (not (= lambda!41647 lambda!41626))))

(assert (=> bs!258194 (= lambda!41647 lambda!41642)))

(assert (=> bs!258194 (not (= lambda!41647 lambda!41641))))

(assert (=> bs!258193 (not (= lambda!41647 lambda!41524))))

(assert (=> b!1092669 (not (= lambda!41647 lambda!41644))))

(assert (=> bs!258194 (not (= lambda!41647 lambda!41639))))

(assert (=> bs!258191 (not (= lambda!41647 lambda!41625))))

(declare-fun bs!258197 () Bool)

(declare-fun d!307657 () Bool)

(assert (= bs!258197 (and d!307657 b!1092669)))

(declare-fun lambda!41648 () Int)

(assert (=> bs!258197 (not (= lambda!41648 lambda!41645))))

(assert (=> bs!258197 (= lambda!41648 lambda!41647)))

(declare-fun bs!258198 () Bool)

(assert (= bs!258198 (and d!307657 b!1091933)))

(assert (=> bs!258198 (not (= lambda!41648 lambda!41624))))

(declare-fun bs!258199 () Bool)

(assert (= bs!258199 (and d!307657 start!93382)))

(assert (=> bs!258199 (= lambda!41648 lambda!41523)))

(assert (=> bs!258197 (not (= lambda!41648 lambda!41646))))

(assert (=> bs!258198 (= lambda!41648 lambda!41627)))

(declare-fun bs!258200 () Bool)

(assert (= bs!258200 (and d!307657 b!1091690)))

(assert (=> bs!258200 (not (= lambda!41648 lambda!41525))))

(assert (=> bs!258200 (not (= lambda!41648 lambda!41526))))

(declare-fun bs!258201 () Bool)

(assert (= bs!258201 (and d!307657 b!1092636)))

(assert (=> bs!258201 (not (= lambda!41648 lambda!41640))))

(declare-fun bs!258202 () Bool)

(assert (= bs!258202 (and d!307657 d!307057)))

(assert (=> bs!258202 (= lambda!41648 lambda!41628)))

(declare-fun bs!258203 () Bool)

(assert (= bs!258203 (and d!307657 d!307635)))

(assert (=> bs!258203 (= lambda!41648 lambda!41643)))

(assert (=> bs!258198 (not (= lambda!41648 lambda!41626))))

(assert (=> bs!258201 (= lambda!41648 lambda!41642)))

(assert (=> bs!258201 (not (= lambda!41648 lambda!41641))))

(assert (=> bs!258200 (not (= lambda!41648 lambda!41524))))

(assert (=> bs!258197 (not (= lambda!41648 lambda!41644))))

(assert (=> bs!258201 (not (= lambda!41648 lambda!41639))))

(assert (=> bs!258198 (not (= lambda!41648 lambda!41625))))

(declare-fun b!1092667 () Bool)

(declare-fun e!691542 () Unit!15909)

(declare-fun Unit!15931 () Unit!15909)

(assert (=> b!1092667 (= e!691542 Unit!15931)))

(declare-fun lt!366553 () BalanceConc!6412)

(assert (=> d!307657 (forall!2344 lt!366553 lambda!41648)))

(declare-fun e!691543 () BalanceConc!6412)

(assert (=> d!307657 (= lt!366553 e!691543)))

(declare-fun c!185232 () Bool)

(assert (=> d!307657 (= c!185232 (<= (size!8109 lt!366210) 1))))

(assert (=> d!307657 (= (sortObjectsByID!0 lt!366210) lt!366553)))

(declare-fun b!1092668 () Bool)

(assert (=> b!1092668 (= e!691543 lt!366210)))

(declare-fun lt!366555 () BalanceConc!6412)

(declare-fun lt!366534 () BalanceConc!6412)

(declare-fun lt!366535 () BalanceConc!6412)

(assert (=> b!1092669 (= e!691543 (++!2838 (++!2838 (sortObjectsByID!0 lt!366534) lt!366535) (sortObjectsByID!0 lt!366555)))))

(assert (=> b!1092669 (= lt!366531 (apply!2049 lt!366210 (ite (>= (size!8109 lt!366210) 0) (div (size!8109 lt!366210) 2) (- (div (- (size!8109 lt!366210)) 2)))))))

(assert (=> b!1092669 (= lt!366534 (filter!247 lt!366210 lambda!41644))))

(assert (=> b!1092669 (= lt!366535 (filter!247 lt!366210 lambda!41645))))

(assert (=> b!1092669 (= lt!366555 (filter!247 lt!366210 lambda!41646))))

(declare-fun c!185235 () Bool)

(assert (=> b!1092669 (= c!185235 (contains!1770 lt!366534 lt!366531))))

(declare-fun lt!366550 () Unit!15909)

(declare-fun e!691541 () Unit!15909)

(assert (=> b!1092669 (= lt!366550 e!691541)))

(declare-fun c!185234 () Bool)

(assert (=> b!1092669 (= c!185234 (forall!2344 lt!366210 lambda!41644))))

(declare-fun lt!366556 () Unit!15909)

(declare-fun e!691547 () Unit!15909)

(assert (=> b!1092669 (= lt!366556 e!691547)))

(declare-fun lt!366538 () List!10506)

(assert (=> b!1092669 (= lt!366538 (list!3758 lt!366210))))

(declare-fun lt!366552 () Unit!15909)

(assert (=> b!1092669 (= lt!366552 (lemmaNotForallFilterShorter!33 lt!366538 lambda!41644))))

(declare-fun res!485469 () Bool)

(assert (=> b!1092669 (= res!485469 (isEmpty!6660 lt!366538))))

(declare-fun e!691545 () Bool)

(assert (=> b!1092669 (=> res!485469 e!691545)))

(assert (=> b!1092669 e!691545))

(declare-fun lt!366526 () Unit!15909)

(assert (=> b!1092669 (= lt!366526 lt!366552)))

(declare-fun c!185233 () Bool)

(assert (=> b!1092669 (= c!185233 (contains!1770 lt!366555 lt!366531))))

(declare-fun lt!366530 () Unit!15909)

(assert (=> b!1092669 (= lt!366530 e!691542)))

(declare-fun c!185236 () Bool)

(assert (=> b!1092669 (= c!185236 (forall!2344 lt!366210 lambda!41646))))

(declare-fun lt!366559 () Unit!15909)

(declare-fun e!691544 () Unit!15909)

(assert (=> b!1092669 (= lt!366559 e!691544)))

(declare-fun lt!366536 () List!10506)

(assert (=> b!1092669 (= lt!366536 (list!3758 lt!366210))))

(declare-fun lt!366561 () Unit!15909)

(assert (=> b!1092669 (= lt!366561 (lemmaNotForallFilterShorter!33 lt!366536 lambda!41646))))

(declare-fun res!485470 () Bool)

(assert (=> b!1092669 (= res!485470 (isEmpty!6660 lt!366536))))

(declare-fun e!691546 () Bool)

(assert (=> b!1092669 (=> res!485470 e!691546)))

(assert (=> b!1092669 e!691546))

(declare-fun lt!366557 () Unit!15909)

(assert (=> b!1092669 (= lt!366557 lt!366561)))

(declare-fun lt!366551 () Unit!15909)

(assert (=> b!1092669 (= lt!366551 (filterSubseq!27 (list!3758 lt!366210) lambda!41644))))

(declare-fun lt!366528 () Unit!15909)

(assert (=> b!1092669 (= lt!366528 (filterSubseq!27 (list!3758 lt!366210) lambda!41645))))

(declare-fun lt!366554 () Unit!15909)

(assert (=> b!1092669 (= lt!366554 (filterSubseq!27 (list!3758 lt!366210) lambda!41646))))

(declare-fun lt!366544 () List!10506)

(assert (=> b!1092669 (= lt!366544 (list!3758 (filter!247 lt!366210 lambda!41644)))))

(declare-fun lt!366537 () List!10506)

(assert (=> b!1092669 (= lt!366537 (list!3758 lt!366210))))

(declare-fun lt!366558 () Unit!15909)

(assert (=> b!1092669 (= lt!366558 (lemmaForallSubseq!35 lt!366544 lt!366537 lambda!41647))))

(assert (=> b!1092669 (forall!2345 lt!366544 lambda!41647)))

(declare-fun lt!366541 () Unit!15909)

(assert (=> b!1092669 (= lt!366541 lt!366558)))

(declare-fun lt!366529 () List!10506)

(assert (=> b!1092669 (= lt!366529 (list!3758 (filter!247 lt!366210 lambda!41645)))))

(declare-fun lt!366548 () List!10506)

(assert (=> b!1092669 (= lt!366548 (list!3758 lt!366210))))

(declare-fun lt!366543 () Unit!15909)

(assert (=> b!1092669 (= lt!366543 (lemmaForallSubseq!35 lt!366529 lt!366548 lambda!41647))))

(assert (=> b!1092669 (forall!2345 lt!366529 lambda!41647)))

(declare-fun lt!366542 () Unit!15909)

(assert (=> b!1092669 (= lt!366542 lt!366543)))

(declare-fun lt!366533 () List!10506)

(assert (=> b!1092669 (= lt!366533 (list!3758 (filter!247 lt!366210 lambda!41646)))))

(declare-fun lt!366546 () List!10506)

(assert (=> b!1092669 (= lt!366546 (list!3758 lt!366210))))

(declare-fun lt!366547 () Unit!15909)

(assert (=> b!1092669 (= lt!366547 (lemmaForallSubseq!35 lt!366533 lt!366546 lambda!41647))))

(assert (=> b!1092669 (forall!2345 lt!366533 lambda!41647)))

(declare-fun lt!366539 () Unit!15909)

(assert (=> b!1092669 (= lt!366539 lt!366547)))

(declare-fun lt!366532 () Unit!15909)

(assert (=> b!1092669 (= lt!366532 (lemmaConcatPreservesForall!80 (list!3758 (sortObjectsByID!0 lt!366534)) (list!3758 lt!366535) lambda!41647))))

(declare-fun lt!366540 () Unit!15909)

(assert (=> b!1092669 (= lt!366540 (lemmaConcatPreservesForall!80 (++!2839 (list!3758 (sortObjectsByID!0 lt!366534)) (list!3758 lt!366535)) (list!3758 (sortObjectsByID!0 lt!366555)) lambda!41647))))

(declare-fun b!1092670 () Bool)

(assert (=> b!1092670 true))

(declare-fun lt!366560 () Unit!15909)

(assert (=> b!1092670 (= lt!366560 (forallContained!492 (list!3758 lt!366555) lambda!41646 lt!366531))))

(declare-fun err!2080 () Unit!15909)

(assert (=> b!1092670 (= e!691542 err!2080)))

(declare-fun b!1092671 () Bool)

(assert (=> b!1092671 true))

(declare-fun lt!366527 () Unit!15909)

(assert (=> b!1092671 (= lt!366527 (forallContained!492 (list!3758 lt!366210) lambda!41644 lt!366531))))

(declare-fun err!2079 () Unit!15909)

(assert (=> b!1092671 (= e!691547 err!2079)))

(declare-fun b!1092672 () Bool)

(assert (=> b!1092672 true))

(declare-fun lt!366549 () Unit!15909)

(assert (=> b!1092672 (= lt!366549 (forallContained!492 (list!3758 lt!366210) lambda!41646 lt!366531))))

(declare-fun err!2081 () Unit!15909)

(assert (=> b!1092672 (= e!691544 err!2081)))

(declare-fun b!1092673 () Bool)

(declare-fun Unit!15932 () Unit!15909)

(assert (=> b!1092673 (= e!691547 Unit!15932)))

(declare-fun b!1092674 () Bool)

(assert (=> b!1092674 (= e!691545 (< (size!8110 (filter!246 lt!366538 lambda!41644)) (size!8110 lt!366538)))))

(declare-fun b!1092675 () Bool)

(assert (=> b!1092675 (= e!691546 (< (size!8110 (filter!246 lt!366536 lambda!41646)) (size!8110 lt!366536)))))

(declare-fun b!1092676 () Bool)

(assert (=> b!1092676 true))

(declare-fun lt!366545 () Unit!15909)

(assert (=> b!1092676 (= lt!366545 (forallContained!492 (list!3758 lt!366534) lambda!41644 lt!366531))))

(declare-fun err!2078 () Unit!15909)

(assert (=> b!1092676 (= e!691541 err!2078)))

(declare-fun b!1092677 () Bool)

(declare-fun Unit!15933 () Unit!15909)

(assert (=> b!1092677 (= e!691541 Unit!15933)))

(declare-fun b!1092678 () Bool)

(declare-fun Unit!15934 () Unit!15909)

(assert (=> b!1092678 (= e!691544 Unit!15934)))

(assert (= (and d!307657 c!185232) b!1092668))

(assert (= (and d!307657 (not c!185232)) b!1092669))

(assert (= (and b!1092669 c!185235) b!1092676))

(assert (= (and b!1092669 (not c!185235)) b!1092677))

(assert (= (and b!1092669 c!185234) b!1092671))

(assert (= (and b!1092669 (not c!185234)) b!1092673))

(assert (= (and b!1092669 (not res!485469)) b!1092674))

(assert (= (and b!1092669 c!185233) b!1092670))

(assert (= (and b!1092669 (not c!185233)) b!1092667))

(assert (= (and b!1092669 c!185236) b!1092672))

(assert (= (and b!1092669 (not c!185236)) b!1092678))

(assert (= (and b!1092669 (not res!485470)) b!1092675))

(assert (=> b!1092671 m!1242857))

(assert (=> b!1092671 m!1242857))

(declare-fun m!1244241 () Bool)

(assert (=> b!1092671 m!1244241))

(declare-fun m!1244243 () Bool)

(assert (=> b!1092669 m!1244243))

(declare-fun m!1244245 () Bool)

(assert (=> b!1092669 m!1244245))

(declare-fun m!1244247 () Bool)

(assert (=> b!1092669 m!1244247))

(declare-fun m!1244249 () Bool)

(assert (=> b!1092669 m!1244249))

(declare-fun m!1244251 () Bool)

(assert (=> b!1092669 m!1244251))

(declare-fun m!1244253 () Bool)

(assert (=> b!1092669 m!1244253))

(assert (=> b!1092669 m!1244253))

(assert (=> b!1092669 m!1242857))

(declare-fun m!1244255 () Bool)

(assert (=> b!1092669 m!1244255))

(declare-fun m!1244257 () Bool)

(assert (=> b!1092669 m!1244257))

(declare-fun m!1244259 () Bool)

(assert (=> b!1092669 m!1244259))

(declare-fun m!1244261 () Bool)

(assert (=> b!1092669 m!1244261))

(declare-fun m!1244263 () Bool)

(assert (=> b!1092669 m!1244263))

(declare-fun m!1244265 () Bool)

(assert (=> b!1092669 m!1244265))

(assert (=> b!1092669 m!1244247))

(declare-fun m!1244267 () Bool)

(assert (=> b!1092669 m!1244267))

(declare-fun m!1244269 () Bool)

(assert (=> b!1092669 m!1244269))

(declare-fun m!1244271 () Bool)

(assert (=> b!1092669 m!1244271))

(assert (=> b!1092669 m!1244259))

(declare-fun m!1244273 () Bool)

(assert (=> b!1092669 m!1244273))

(assert (=> b!1092669 m!1244273))

(declare-fun m!1244275 () Bool)

(assert (=> b!1092669 m!1244275))

(declare-fun m!1244277 () Bool)

(assert (=> b!1092669 m!1244277))

(assert (=> b!1092669 m!1244269))

(assert (=> b!1092669 m!1244259))

(declare-fun m!1244279 () Bool)

(assert (=> b!1092669 m!1244279))

(assert (=> b!1092669 m!1244275))

(assert (=> b!1092669 m!1244273))

(assert (=> b!1092669 m!1244275))

(assert (=> b!1092669 m!1244245))

(declare-fun m!1244281 () Bool)

(assert (=> b!1092669 m!1244281))

(declare-fun m!1244283 () Bool)

(assert (=> b!1092669 m!1244283))

(declare-fun m!1244285 () Bool)

(assert (=> b!1092669 m!1244285))

(assert (=> b!1092669 m!1242857))

(declare-fun m!1244287 () Bool)

(assert (=> b!1092669 m!1244287))

(assert (=> b!1092669 m!1244261))

(assert (=> b!1092669 m!1244265))

(declare-fun m!1244289 () Bool)

(assert (=> b!1092669 m!1244289))

(assert (=> b!1092669 m!1244269))

(declare-fun m!1244291 () Bool)

(assert (=> b!1092669 m!1244291))

(assert (=> b!1092669 m!1242857))

(declare-fun m!1244293 () Bool)

(assert (=> b!1092669 m!1244293))

(declare-fun m!1244295 () Bool)

(assert (=> b!1092669 m!1244295))

(assert (=> b!1092669 m!1244253))

(declare-fun m!1244297 () Bool)

(assert (=> b!1092669 m!1244297))

(declare-fun m!1244299 () Bool)

(assert (=> b!1092669 m!1244299))

(declare-fun m!1244301 () Bool)

(assert (=> b!1092669 m!1244301))

(assert (=> b!1092669 m!1242857))

(declare-fun m!1244303 () Bool)

(assert (=> b!1092669 m!1244303))

(declare-fun m!1244305 () Bool)

(assert (=> b!1092669 m!1244305))

(declare-fun m!1244307 () Bool)

(assert (=> b!1092669 m!1244307))

(assert (=> b!1092669 m!1244271))

(declare-fun m!1244309 () Bool)

(assert (=> b!1092669 m!1244309))

(assert (=> b!1092669 m!1244265))

(assert (=> b!1092669 m!1244271))

(declare-fun m!1244311 () Bool)

(assert (=> b!1092669 m!1244311))

(declare-fun m!1244313 () Bool)

(assert (=> b!1092674 m!1244313))

(assert (=> b!1092674 m!1244313))

(declare-fun m!1244315 () Bool)

(assert (=> b!1092674 m!1244315))

(declare-fun m!1244317 () Bool)

(assert (=> b!1092674 m!1244317))

(declare-fun m!1244319 () Bool)

(assert (=> b!1092675 m!1244319))

(assert (=> b!1092675 m!1244319))

(declare-fun m!1244321 () Bool)

(assert (=> b!1092675 m!1244321))

(declare-fun m!1244323 () Bool)

(assert (=> b!1092675 m!1244323))

(assert (=> b!1092672 m!1242857))

(assert (=> b!1092672 m!1242857))

(declare-fun m!1244325 () Bool)

(assert (=> b!1092672 m!1244325))

(declare-fun m!1244327 () Bool)

(assert (=> d!307657 m!1244327))

(assert (=> d!307657 m!1244279))

(declare-fun m!1244329 () Bool)

(assert (=> b!1092676 m!1244329))

(assert (=> b!1092676 m!1244329))

(declare-fun m!1244331 () Bool)

(assert (=> b!1092676 m!1244331))

(declare-fun m!1244333 () Bool)

(assert (=> b!1092670 m!1244333))

(assert (=> b!1092670 m!1244333))

(declare-fun m!1244335 () Bool)

(assert (=> b!1092670 m!1244335))

(assert (=> b!1091933 d!307657))

(declare-fun d!307659 () Bool)

(declare-fun res!485471 () Bool)

(declare-fun e!691554 () Bool)

(assert (=> d!307659 (=> res!485471 e!691554)))

(assert (=> d!307659 (= res!485471 ((_ is Nil!10490) (list!3758 objs!8)))))

(assert (=> d!307659 (= (forall!2345 (list!3758 objs!8) lambda!41524) e!691554)))

(declare-fun b!1092685 () Bool)

(declare-fun e!691555 () Bool)

(assert (=> b!1092685 (= e!691554 e!691555)))

(declare-fun res!485472 () Bool)

(assert (=> b!1092685 (=> (not res!485472) (not e!691555))))

(assert (=> b!1092685 (= res!485472 (dynLambda!4577 lambda!41524 (h!15891 (list!3758 objs!8))))))

(declare-fun b!1092686 () Bool)

(assert (=> b!1092686 (= e!691555 (forall!2345 (t!102180 (list!3758 objs!8)) lambda!41524))))

(assert (= (and d!307659 (not res!485471)) b!1092685))

(assert (= (and b!1092685 res!485472) b!1092686))

(declare-fun b_lambda!30849 () Bool)

(assert (=> (not b_lambda!30849) (not b!1092685)))

(declare-fun m!1244337 () Bool)

(assert (=> b!1092685 m!1244337))

(declare-fun m!1244339 () Bool)

(assert (=> b!1092686 m!1244339))

(assert (=> d!307179 d!307659))

(assert (=> d!307179 d!307171))

(declare-fun d!307661 () Bool)

(declare-fun lt!366563 () Bool)

(assert (=> d!307661 (= lt!366563 (forall!2345 (list!3760 (c!185027 objs!8)) lambda!41524))))

(declare-fun e!691556 () Bool)

(assert (=> d!307661 (= lt!366563 e!691556)))

(declare-fun res!485474 () Bool)

(assert (=> d!307661 (=> res!485474 e!691556)))

(assert (=> d!307661 (= res!485474 ((_ is Empty!3199) (c!185027 objs!8)))))

(assert (=> d!307661 (= (forall!2347 (c!185027 objs!8) lambda!41524) lt!366563)))

(declare-fun b!1092688 () Bool)

(declare-fun e!691557 () Bool)

(assert (=> b!1092688 (= e!691557 (forall!2349 (xs!5892 (c!185027 objs!8)) lambda!41524))))

(declare-fun b!1092687 () Bool)

(assert (=> b!1092687 (= e!691556 e!691557)))

(declare-fun c!185237 () Bool)

(assert (=> b!1092687 (= c!185237 ((_ is Leaf!5100) (c!185027 objs!8)))))

(declare-fun b!1092690 () Bool)

(declare-fun e!691558 () Bool)

(assert (=> b!1092690 (= e!691558 (forall!2347 (right!9335 (c!185027 objs!8)) lambda!41524))))

(declare-fun b!1092689 () Bool)

(assert (=> b!1092689 (= e!691557 e!691558)))

(declare-fun lt!366562 () Unit!15909)

(assert (=> b!1092689 (= lt!366562 (lemmaForallConcat!60 (list!3760 (left!9005 (c!185027 objs!8))) (list!3760 (right!9335 (c!185027 objs!8))) lambda!41524))))

(declare-fun res!485473 () Bool)

(assert (=> b!1092689 (= res!485473 (forall!2347 (left!9005 (c!185027 objs!8)) lambda!41524))))

(assert (=> b!1092689 (=> (not res!485473) (not e!691558))))

(assert (= (and d!307661 (not res!485474)) b!1092687))

(assert (= (and b!1092687 c!185237) b!1092688))

(assert (= (and b!1092687 (not c!185237)) b!1092689))

(assert (= (and b!1092689 res!485473) b!1092690))

(assert (=> d!307661 m!1242917))

(assert (=> d!307661 m!1242917))

(declare-fun m!1244341 () Bool)

(assert (=> d!307661 m!1244341))

(declare-fun m!1244343 () Bool)

(assert (=> b!1092688 m!1244343))

(declare-fun m!1244345 () Bool)

(assert (=> b!1092690 m!1244345))

(assert (=> b!1092689 m!1243865))

(assert (=> b!1092689 m!1243867))

(assert (=> b!1092689 m!1243865))

(assert (=> b!1092689 m!1243867))

(declare-fun m!1244347 () Bool)

(assert (=> b!1092689 m!1244347))

(declare-fun m!1244349 () Bool)

(assert (=> b!1092689 m!1244349))

(assert (=> d!307179 d!307661))

(declare-fun b!1092692 () Bool)

(declare-fun e!691559 () List!10506)

(declare-fun e!691560 () List!10506)

(assert (=> b!1092692 (= e!691559 e!691560)))

(declare-fun c!185239 () Bool)

(assert (=> b!1092692 (= c!185239 ((_ is Leaf!5100) (c!185027 lt!365922)))))

(declare-fun b!1092691 () Bool)

(assert (=> b!1092691 (= e!691559 Nil!10490)))

(declare-fun b!1092693 () Bool)

(assert (=> b!1092693 (= e!691560 (list!3762 (xs!5892 (c!185027 lt!365922))))))

(declare-fun d!307663 () Bool)

(declare-fun c!185238 () Bool)

(assert (=> d!307663 (= c!185238 ((_ is Empty!3199) (c!185027 lt!365922)))))

(assert (=> d!307663 (= (list!3760 (c!185027 lt!365922)) e!691559)))

(declare-fun b!1092694 () Bool)

(assert (=> b!1092694 (= e!691560 (++!2839 (list!3760 (left!9005 (c!185027 lt!365922))) (list!3760 (right!9335 (c!185027 lt!365922)))))))

(assert (= (and d!307663 c!185238) b!1092691))

(assert (= (and d!307663 (not c!185238)) b!1092692))

(assert (= (and b!1092692 c!185239) b!1092693))

(assert (= (and b!1092692 (not c!185239)) b!1092694))

(declare-fun m!1244351 () Bool)

(assert (=> b!1092693 m!1244351))

(declare-fun m!1244353 () Bool)

(assert (=> b!1092694 m!1244353))

(declare-fun m!1244355 () Bool)

(assert (=> b!1092694 m!1244355))

(assert (=> b!1092694 m!1244353))

(assert (=> b!1092694 m!1244355))

(declare-fun m!1244357 () Bool)

(assert (=> b!1092694 m!1244357))

(assert (=> d!307197 d!307663))

(declare-fun d!307665 () Bool)

(declare-fun lt!366564 () Int)

(assert (=> d!307665 (>= lt!366564 0)))

(declare-fun e!691561 () Int)

(assert (=> d!307665 (= lt!366564 e!691561)))

(declare-fun c!185240 () Bool)

(assert (=> d!307665 (= c!185240 ((_ is Nil!10490) (list!3758 lt!365935)))))

(assert (=> d!307665 (= (size!8110 (list!3758 lt!365935)) lt!366564)))

(declare-fun b!1092695 () Bool)

(assert (=> b!1092695 (= e!691561 0)))

(declare-fun b!1092696 () Bool)

(assert (=> b!1092696 (= e!691561 (+ 1 (size!8110 (t!102180 (list!3758 lt!365935)))))))

(assert (= (and d!307665 c!185240) b!1092695))

(assert (= (and d!307665 (not c!185240)) b!1092696))

(declare-fun m!1244359 () Bool)

(assert (=> b!1092696 m!1244359))

(assert (=> d!307205 d!307665))

(assert (=> d!307205 d!307191))

(declare-fun d!307667 () Bool)

(declare-fun lt!366565 () Int)

(assert (=> d!307667 (= lt!366565 (size!8110 (list!3760 (c!185027 lt!365935))))))

(assert (=> d!307667 (= lt!366565 (ite ((_ is Empty!3199) (c!185027 lt!365935)) 0 (ite ((_ is Leaf!5100) (c!185027 lt!365935)) (csize!6629 (c!185027 lt!365935)) (csize!6628 (c!185027 lt!365935)))))))

(assert (=> d!307667 (= (size!8112 (c!185027 lt!365935)) lt!366565)))

(declare-fun bs!258204 () Bool)

(assert (= bs!258204 d!307667))

(assert (=> bs!258204 m!1242957))

(assert (=> bs!258204 m!1242957))

(declare-fun m!1244361 () Bool)

(assert (=> bs!258204 m!1244361))

(assert (=> d!307205 d!307667))

(declare-fun d!307669 () Bool)

(declare-datatypes ((JsonLexer!290 0))(
  ( (JsonLexer!291) )
))
(declare-fun rules!109 (JsonLexer!290) List!10505)

(assert (=> d!307669 (= (usesJsonRules!0 (_2!6679 (h!15891 lt!365928))) (= (rules!9077 (_2!6679 (h!15891 lt!365928))) (rules!109 JsonLexer!291)))))

(declare-fun bs!258205 () Bool)

(assert (= bs!258205 d!307669))

(declare-fun m!1244363 () Bool)

(assert (=> bs!258205 m!1244363))

(assert (=> bs!258070 d!307669))

(declare-fun d!307671 () Bool)

(declare-fun res!485475 () Bool)

(declare-fun e!691562 () Bool)

(assert (=> d!307671 (=> res!485475 e!691562)))

(assert (=> d!307671 (= res!485475 ((_ is Nil!10490) (t!102180 lt!365943)))))

(assert (=> d!307671 (= (forall!2345 (t!102180 lt!365943) lambda!41523) e!691562)))

(declare-fun b!1092697 () Bool)

(declare-fun e!691563 () Bool)

(assert (=> b!1092697 (= e!691562 e!691563)))

(declare-fun res!485476 () Bool)

(assert (=> b!1092697 (=> (not res!485476) (not e!691563))))

(assert (=> b!1092697 (= res!485476 (dynLambda!4577 lambda!41523 (h!15891 (t!102180 lt!365943))))))

(declare-fun b!1092698 () Bool)

(assert (=> b!1092698 (= e!691563 (forall!2345 (t!102180 (t!102180 lt!365943)) lambda!41523))))

(assert (= (and d!307671 (not res!485475)) b!1092697))

(assert (= (and b!1092697 res!485476) b!1092698))

(declare-fun b_lambda!30851 () Bool)

(assert (=> (not b_lambda!30851) (not b!1092697)))

(declare-fun m!1244365 () Bool)

(assert (=> b!1092697 m!1244365))

(declare-fun m!1244367 () Bool)

(assert (=> b!1092698 m!1244367))

(assert (=> b!1091951 d!307671))

(declare-fun d!307673 () Bool)

(assert (=> d!307673 (= (list!3758 lt!366244) (list!3760 (c!185027 lt!366244)))))

(declare-fun bs!258206 () Bool)

(assert (= bs!258206 d!307673))

(declare-fun m!1244369 () Bool)

(assert (=> bs!258206 m!1244369))

(assert (=> b!1091949 d!307673))

(declare-fun b!1092699 () Bool)

(declare-fun res!485478 () Bool)

(declare-fun e!691565 () Bool)

(assert (=> b!1092699 (=> (not res!485478) (not e!691565))))

(declare-fun lt!366566 () List!10506)

(assert (=> b!1092699 (= res!485478 (= ((_ map implies) (content!1511 lt!366566) (content!1511 (list!3758 objs!8))) ((as const (InoxSet tuple2!11706)) true)))))

(declare-fun b!1092700 () Bool)

(declare-fun e!691564 () List!10506)

(assert (=> b!1092700 (= e!691564 Nil!10490)))

(declare-fun b!1092701 () Bool)

(declare-fun e!691566 () List!10506)

(assert (=> b!1092701 (= e!691564 e!691566)))

(declare-fun c!185241 () Bool)

(assert (=> b!1092701 (= c!185241 (dynLambda!4577 lambda!41525 (h!15891 (list!3758 objs!8))))))

(declare-fun bm!80274 () Bool)

(declare-fun call!80279 () List!10506)

(assert (=> bm!80274 (= call!80279 (filter!246 (t!102180 (list!3758 objs!8)) lambda!41525))))

(declare-fun b!1092702 () Bool)

(assert (=> b!1092702 (= e!691566 (Cons!10490 (h!15891 (list!3758 objs!8)) call!80279))))

(declare-fun d!307675 () Bool)

(assert (=> d!307675 e!691565))

(declare-fun res!485477 () Bool)

(assert (=> d!307675 (=> (not res!485477) (not e!691565))))

(assert (=> d!307675 (= res!485477 (<= (size!8110 lt!366566) (size!8110 (list!3758 objs!8))))))

(assert (=> d!307675 (= lt!366566 e!691564)))

(declare-fun c!185242 () Bool)

(assert (=> d!307675 (= c!185242 ((_ is Nil!10490) (list!3758 objs!8)))))

(assert (=> d!307675 (= (filter!246 (list!3758 objs!8) lambda!41525) lt!366566)))

(declare-fun b!1092703 () Bool)

(assert (=> b!1092703 (= e!691566 call!80279)))

(declare-fun b!1092704 () Bool)

(assert (=> b!1092704 (= e!691565 (forall!2345 lt!366566 lambda!41525))))

(assert (= (and d!307675 c!185242) b!1092700))

(assert (= (and d!307675 (not c!185242)) b!1092701))

(assert (= (and b!1092701 c!185241) b!1092702))

(assert (= (and b!1092701 (not c!185241)) b!1092703))

(assert (= (or b!1092702 b!1092703) bm!80274))

(assert (= (and d!307675 res!485477) b!1092699))

(assert (= (and b!1092699 res!485478) b!1092704))

(declare-fun b_lambda!30853 () Bool)

(assert (=> (not b_lambda!30853) (not b!1092701)))

(declare-fun m!1244371 () Bool)

(assert (=> b!1092699 m!1244371))

(assert (=> b!1092699 m!1242349))

(declare-fun m!1244373 () Bool)

(assert (=> b!1092699 m!1244373))

(declare-fun m!1244375 () Bool)

(assert (=> bm!80274 m!1244375))

(declare-fun m!1244377 () Bool)

(assert (=> b!1092704 m!1244377))

(declare-fun m!1244379 () Bool)

(assert (=> b!1092701 m!1244379))

(declare-fun m!1244381 () Bool)

(assert (=> d!307675 m!1244381))

(assert (=> d!307675 m!1242349))

(assert (=> d!307675 m!1242959))

(assert (=> b!1091949 d!307675))

(assert (=> b!1091949 d!307171))

(declare-fun b!1092705 () Bool)

(declare-fun res!485480 () Bool)

(declare-fun e!691568 () Bool)

(assert (=> b!1092705 (=> (not res!485480) (not e!691568))))

(declare-fun lt!366567 () List!10506)

(assert (=> b!1092705 (= res!485480 (= ((_ map implies) (content!1511 lt!366567) (content!1511 (t!102180 lt!365944))) ((as const (InoxSet tuple2!11706)) true)))))

(declare-fun b!1092706 () Bool)

(declare-fun e!691567 () List!10506)

(assert (=> b!1092706 (= e!691567 Nil!10490)))

(declare-fun b!1092707 () Bool)

(declare-fun e!691569 () List!10506)

(assert (=> b!1092707 (= e!691567 e!691569)))

(declare-fun c!185243 () Bool)

(assert (=> b!1092707 (= c!185243 (dynLambda!4577 lambda!41526 (h!15891 (t!102180 lt!365944))))))

(declare-fun bm!80275 () Bool)

(declare-fun call!80280 () List!10506)

(assert (=> bm!80275 (= call!80280 (filter!246 (t!102180 (t!102180 lt!365944)) lambda!41526))))

(declare-fun b!1092708 () Bool)

(assert (=> b!1092708 (= e!691569 (Cons!10490 (h!15891 (t!102180 lt!365944)) call!80280))))

(declare-fun d!307677 () Bool)

(assert (=> d!307677 e!691568))

(declare-fun res!485479 () Bool)

(assert (=> d!307677 (=> (not res!485479) (not e!691568))))

(assert (=> d!307677 (= res!485479 (<= (size!8110 lt!366567) (size!8110 (t!102180 lt!365944))))))

(assert (=> d!307677 (= lt!366567 e!691567)))

(declare-fun c!185244 () Bool)

(assert (=> d!307677 (= c!185244 ((_ is Nil!10490) (t!102180 lt!365944)))))

(assert (=> d!307677 (= (filter!246 (t!102180 lt!365944) lambda!41526) lt!366567)))

(declare-fun b!1092709 () Bool)

(assert (=> b!1092709 (= e!691569 call!80280)))

(declare-fun b!1092710 () Bool)

(assert (=> b!1092710 (= e!691568 (forall!2345 lt!366567 lambda!41526))))

(assert (= (and d!307677 c!185244) b!1092706))

(assert (= (and d!307677 (not c!185244)) b!1092707))

(assert (= (and b!1092707 c!185243) b!1092708))

(assert (= (and b!1092707 (not c!185243)) b!1092709))

(assert (= (or b!1092708 b!1092709) bm!80275))

(assert (= (and d!307677 res!485479) b!1092705))

(assert (= (and b!1092705 res!485480) b!1092710))

(declare-fun b_lambda!30855 () Bool)

(assert (=> (not b_lambda!30855) (not b!1092707)))

(declare-fun m!1244383 () Bool)

(assert (=> b!1092705 m!1244383))

(assert (=> b!1092705 m!1243953))

(declare-fun m!1244385 () Bool)

(assert (=> bm!80275 m!1244385))

(declare-fun m!1244387 () Bool)

(assert (=> b!1092710 m!1244387))

(declare-fun m!1244389 () Bool)

(assert (=> b!1092707 m!1244389))

(declare-fun m!1244391 () Bool)

(assert (=> d!307677 m!1244391))

(assert (=> d!307677 m!1242499))

(assert (=> bm!80256 d!307677))

(assert (=> d!307151 d!307165))

(declare-fun d!307679 () Bool)

(assert (=> d!307679 (forall!2345 lt!365945 lambda!41523)))

(assert (=> d!307679 true))

(declare-fun _$37!259 () Unit!15909)

(assert (=> d!307679 (= (choose!7015 lt!365945 lt!365944 lambda!41523) _$37!259)))

(declare-fun bs!258207 () Bool)

(assert (= bs!258207 d!307679))

(assert (=> bs!258207 m!1242403))

(assert (=> d!307151 d!307679))

(assert (=> d!307151 d!307507))

(declare-fun b!1092712 () Bool)

(declare-fun e!691570 () List!10506)

(declare-fun e!691571 () List!10506)

(assert (=> b!1092712 (= e!691570 e!691571)))

(declare-fun c!185246 () Bool)

(assert (=> b!1092712 (= c!185246 ((_ is Leaf!5100) (c!185027 lt!365935)))))

(declare-fun b!1092711 () Bool)

(assert (=> b!1092711 (= e!691570 Nil!10490)))

(declare-fun b!1092713 () Bool)

(assert (=> b!1092713 (= e!691571 (list!3762 (xs!5892 (c!185027 lt!365935))))))

(declare-fun d!307681 () Bool)

(declare-fun c!185245 () Bool)

(assert (=> d!307681 (= c!185245 ((_ is Empty!3199) (c!185027 lt!365935)))))

(assert (=> d!307681 (= (list!3760 (c!185027 lt!365935)) e!691570)))

(declare-fun b!1092714 () Bool)

(assert (=> b!1092714 (= e!691571 (++!2839 (list!3760 (left!9005 (c!185027 lt!365935))) (list!3760 (right!9335 (c!185027 lt!365935)))))))

(assert (= (and d!307681 c!185245) b!1092711))

(assert (= (and d!307681 (not c!185245)) b!1092712))

(assert (= (and b!1092712 c!185246) b!1092713))

(assert (= (and b!1092712 (not c!185246)) b!1092714))

(declare-fun m!1244393 () Bool)

(assert (=> b!1092713 m!1244393))

(declare-fun m!1244395 () Bool)

(assert (=> b!1092714 m!1244395))

(declare-fun m!1244397 () Bool)

(assert (=> b!1092714 m!1244397))

(assert (=> b!1092714 m!1244395))

(assert (=> b!1092714 m!1244397))

(declare-fun m!1244399 () Bool)

(assert (=> b!1092714 m!1244399))

(assert (=> d!307191 d!307681))

(declare-fun b!1092716 () Bool)

(declare-fun e!691572 () List!10506)

(declare-fun e!691573 () List!10506)

(assert (=> b!1092716 (= e!691572 e!691573)))

(declare-fun c!185248 () Bool)

(assert (=> b!1092716 (= c!185248 ((_ is Leaf!5100) (c!185027 objs!8)))))

(declare-fun b!1092715 () Bool)

(assert (=> b!1092715 (= e!691572 Nil!10490)))

(declare-fun b!1092717 () Bool)

(assert (=> b!1092717 (= e!691573 (list!3762 (xs!5892 (c!185027 objs!8))))))

(declare-fun d!307683 () Bool)

(declare-fun c!185247 () Bool)

(assert (=> d!307683 (= c!185247 ((_ is Empty!3199) (c!185027 objs!8)))))

(assert (=> d!307683 (= (list!3760 (c!185027 objs!8)) e!691572)))

(declare-fun b!1092718 () Bool)

(assert (=> b!1092718 (= e!691573 (++!2839 (list!3760 (left!9005 (c!185027 objs!8))) (list!3760 (right!9335 (c!185027 objs!8)))))))

(assert (= (and d!307683 c!185247) b!1092715))

(assert (= (and d!307683 (not c!185247)) b!1092716))

(assert (= (and b!1092716 c!185248) b!1092717))

(assert (= (and b!1092716 (not c!185248)) b!1092718))

(declare-fun m!1244401 () Bool)

(assert (=> b!1092717 m!1244401))

(assert (=> b!1092718 m!1243865))

(assert (=> b!1092718 m!1243867))

(assert (=> b!1092718 m!1243865))

(assert (=> b!1092718 m!1243867))

(declare-fun m!1244403 () Bool)

(assert (=> b!1092718 m!1244403))

(assert (=> d!307171 d!307683))

(declare-fun d!307685 () Bool)

(declare-fun res!485481 () Bool)

(declare-fun e!691574 () Bool)

(assert (=> d!307685 (=> res!485481 e!691574)))

(assert (=> d!307685 (= res!485481 ((_ is Nil!10490) (t!102180 lt!365928)))))

(assert (=> d!307685 (= (forall!2345 (t!102180 lt!365928) lambda!41523) e!691574)))

(declare-fun b!1092719 () Bool)

(declare-fun e!691575 () Bool)

(assert (=> b!1092719 (= e!691574 e!691575)))

(declare-fun res!485482 () Bool)

(assert (=> b!1092719 (=> (not res!485482) (not e!691575))))

(assert (=> b!1092719 (= res!485482 (dynLambda!4577 lambda!41523 (h!15891 (t!102180 lt!365928))))))

(declare-fun b!1092720 () Bool)

(assert (=> b!1092720 (= e!691575 (forall!2345 (t!102180 (t!102180 lt!365928)) lambda!41523))))

(assert (= (and d!307685 (not res!485481)) b!1092719))

(assert (= (and b!1092719 res!485482) b!1092720))

(declare-fun b_lambda!30857 () Bool)

(assert (=> (not b_lambda!30857) (not b!1092719)))

(declare-fun m!1244405 () Bool)

(assert (=> b!1092719 m!1244405))

(declare-fun m!1244407 () Bool)

(assert (=> b!1092720 m!1244407))

(assert (=> b!1091955 d!307685))

(assert (=> b!1091981 d!307193))

(declare-fun d!307687 () Bool)

(declare-fun res!485500 () Bool)

(declare-fun e!691580 () Bool)

(assert (=> d!307687 (=> res!485500 e!691580)))

(assert (=> d!307687 (= res!485500 (not ((_ is Node!3199) (filter!249 (c!185027 objs!8) lambda!41525))))))

(assert (=> d!307687 (= (isBalanced!884 (filter!249 (c!185027 objs!8) lambda!41525)) e!691580)))

(declare-fun b!1092733 () Bool)

(declare-fun e!691581 () Bool)

(declare-fun isEmpty!6662 (Conc!3199) Bool)

(assert (=> b!1092733 (= e!691581 (not (isEmpty!6662 (right!9335 (filter!249 (c!185027 objs!8) lambda!41525)))))))

(declare-fun b!1092734 () Bool)

(declare-fun res!485497 () Bool)

(assert (=> b!1092734 (=> (not res!485497) (not e!691581))))

(assert (=> b!1092734 (= res!485497 (isBalanced!884 (right!9335 (filter!249 (c!185027 objs!8) lambda!41525))))))

(declare-fun b!1092735 () Bool)

(assert (=> b!1092735 (= e!691580 e!691581)))

(declare-fun res!485496 () Bool)

(assert (=> b!1092735 (=> (not res!485496) (not e!691581))))

(assert (=> b!1092735 (= res!485496 (<= (- 1) (- (height!420 (left!9005 (filter!249 (c!185027 objs!8) lambda!41525))) (height!420 (right!9335 (filter!249 (c!185027 objs!8) lambda!41525))))))))

(declare-fun b!1092736 () Bool)

(declare-fun res!485499 () Bool)

(assert (=> b!1092736 (=> (not res!485499) (not e!691581))))

(assert (=> b!1092736 (= res!485499 (isBalanced!884 (left!9005 (filter!249 (c!185027 objs!8) lambda!41525))))))

(declare-fun b!1092737 () Bool)

(declare-fun res!485498 () Bool)

(assert (=> b!1092737 (=> (not res!485498) (not e!691581))))

(assert (=> b!1092737 (= res!485498 (<= (- (height!420 (left!9005 (filter!249 (c!185027 objs!8) lambda!41525))) (height!420 (right!9335 (filter!249 (c!185027 objs!8) lambda!41525)))) 1))))

(declare-fun b!1092738 () Bool)

(declare-fun res!485495 () Bool)

(assert (=> b!1092738 (=> (not res!485495) (not e!691581))))

(assert (=> b!1092738 (= res!485495 (not (isEmpty!6662 (left!9005 (filter!249 (c!185027 objs!8) lambda!41525)))))))

(assert (= (and d!307687 (not res!485500)) b!1092735))

(assert (= (and b!1092735 res!485496) b!1092737))

(assert (= (and b!1092737 res!485498) b!1092736))

(assert (= (and b!1092736 res!485499) b!1092734))

(assert (= (and b!1092734 res!485497) b!1092738))

(assert (= (and b!1092738 res!485495) b!1092733))

(declare-fun m!1244409 () Bool)

(assert (=> b!1092736 m!1244409))

(declare-fun m!1244411 () Bool)

(assert (=> b!1092737 m!1244411))

(declare-fun m!1244413 () Bool)

(assert (=> b!1092737 m!1244413))

(assert (=> b!1092735 m!1244411))

(assert (=> b!1092735 m!1244413))

(declare-fun m!1244415 () Bool)

(assert (=> b!1092734 m!1244415))

(declare-fun m!1244417 () Bool)

(assert (=> b!1092733 m!1244417))

(declare-fun m!1244419 () Bool)

(assert (=> b!1092738 m!1244419))

(assert (=> d!307157 d!307687))

(declare-fun b!1092753 () Bool)

(declare-fun e!691591 () Conc!3199)

(assert (=> b!1092753 (= e!691591 (c!185027 objs!8))))

(declare-fun b!1092754 () Bool)

(declare-fun lt!366575 () Unit!15909)

(declare-fun lemmaFilterConcat!6 (List!10506 List!10506 Int) Unit!15909)

(assert (=> b!1092754 (= lt!366575 (lemmaFilterConcat!6 (list!3760 (left!9005 (c!185027 objs!8))) (list!3760 (right!9335 (c!185027 objs!8))) lambda!41525))))

(declare-fun e!691593 () Conc!3199)

(assert (=> b!1092754 (= e!691593 (++!2841 (filter!249 (left!9005 (c!185027 objs!8)) lambda!41525) (filter!249 (right!9335 (c!185027 objs!8)) lambda!41525)))))

(declare-fun b!1092755 () Bool)

(declare-fun c!185257 () Bool)

(declare-fun lt!366574 () IArray!6403)

(declare-fun size!8114 (IArray!6403) Int)

(assert (=> b!1092755 (= c!185257 (= (size!8114 lt!366574) 0))))

(declare-fun filter!251 (IArray!6403 Int) IArray!6403)

(assert (=> b!1092755 (= lt!366574 (filter!251 (xs!5892 (c!185027 objs!8)) lambda!41525))))

(declare-fun e!691592 () Conc!3199)

(assert (=> b!1092755 (= e!691593 e!691592)))

(declare-fun b!1092756 () Bool)

(assert (=> b!1092756 (= e!691592 Empty!3199)))

(declare-fun b!1092757 () Bool)

(assert (=> b!1092757 (= e!691592 (Leaf!5100 lt!366574 (size!8114 lt!366574)))))

(declare-fun lt!366576 () Conc!3199)

(declare-fun e!691590 () Bool)

(declare-fun b!1092758 () Bool)

(assert (=> b!1092758 (= e!691590 (= (list!3760 lt!366576) (filter!246 (list!3760 (c!185027 objs!8)) lambda!41525)))))

(declare-fun b!1092759 () Bool)

(assert (=> b!1092759 (= e!691591 e!691593)))

(declare-fun c!185255 () Bool)

(assert (=> b!1092759 (= c!185255 ((_ is Leaf!5100) (c!185027 objs!8)))))

(declare-fun d!307689 () Bool)

(assert (=> d!307689 e!691590))

(declare-fun res!485503 () Bool)

(assert (=> d!307689 (=> (not res!485503) (not e!691590))))

(assert (=> d!307689 (= res!485503 (isBalanced!884 lt!366576))))

(assert (=> d!307689 (= lt!366576 e!691591)))

(declare-fun c!185256 () Bool)

(assert (=> d!307689 (= c!185256 ((_ is Empty!3199) (c!185027 objs!8)))))

(assert (=> d!307689 (isBalanced!884 (c!185027 objs!8))))

(assert (=> d!307689 (= (filter!249 (c!185027 objs!8) lambda!41525) lt!366576)))

(assert (= (and d!307689 c!185256) b!1092753))

(assert (= (and d!307689 (not c!185256)) b!1092759))

(assert (= (and b!1092759 c!185255) b!1092755))

(assert (= (and b!1092759 (not c!185255)) b!1092754))

(assert (= (and b!1092755 c!185257) b!1092756))

(assert (= (and b!1092755 (not c!185257)) b!1092757))

(assert (= (and d!307689 res!485503) b!1092758))

(declare-fun m!1244421 () Bool)

(assert (=> b!1092758 m!1244421))

(assert (=> b!1092758 m!1242917))

(assert (=> b!1092758 m!1242917))

(declare-fun m!1244423 () Bool)

(assert (=> b!1092758 m!1244423))

(declare-fun m!1244425 () Bool)

(assert (=> b!1092757 m!1244425))

(assert (=> b!1092755 m!1244425))

(declare-fun m!1244427 () Bool)

(assert (=> b!1092755 m!1244427))

(declare-fun m!1244429 () Bool)

(assert (=> b!1092754 m!1244429))

(declare-fun m!1244431 () Bool)

(assert (=> b!1092754 m!1244431))

(declare-fun m!1244433 () Bool)

(assert (=> b!1092754 m!1244433))

(assert (=> b!1092754 m!1243867))

(assert (=> b!1092754 m!1243865))

(assert (=> b!1092754 m!1244431))

(assert (=> b!1092754 m!1244429))

(assert (=> b!1092754 m!1243865))

(assert (=> b!1092754 m!1243867))

(declare-fun m!1244435 () Bool)

(assert (=> b!1092754 m!1244435))

(declare-fun m!1244437 () Bool)

(assert (=> d!307689 m!1244437))

(assert (=> d!307689 m!1242513))

(assert (=> d!307157 d!307689))

(declare-fun d!307691 () Bool)

(declare-fun lt!366577 () Int)

(assert (=> d!307691 (>= lt!366577 0)))

(declare-fun e!691594 () Int)

(assert (=> d!307691 (= lt!366577 e!691594)))

(declare-fun c!185258 () Bool)

(assert (=> d!307691 (= c!185258 ((_ is Nil!10490) (t!102180 (filter!246 lt!365944 lambda!41524))))))

(assert (=> d!307691 (= (size!8110 (t!102180 (filter!246 lt!365944 lambda!41524))) lt!366577)))

(declare-fun b!1092760 () Bool)

(assert (=> b!1092760 (= e!691594 0)))

(declare-fun b!1092761 () Bool)

(assert (=> b!1092761 (= e!691594 (+ 1 (size!8110 (t!102180 (t!102180 (filter!246 lt!365944 lambda!41524))))))))

(assert (= (and d!307691 c!185258) b!1092760))

(assert (= (and d!307691 (not c!185258)) b!1092761))

(declare-fun m!1244439 () Bool)

(assert (=> b!1092761 m!1244439))

(assert (=> b!1091960 d!307691))

(declare-fun d!307693 () Bool)

(declare-fun lt!366578 () Bool)

(assert (=> d!307693 (= lt!366578 (select (content!1511 (list!3758 lt!365922)) lt!365939))))

(declare-fun e!691595 () Bool)

(assert (=> d!307693 (= lt!366578 e!691595)))

(declare-fun res!485505 () Bool)

(assert (=> d!307693 (=> (not res!485505) (not e!691595))))

(assert (=> d!307693 (= res!485505 ((_ is Cons!10490) (list!3758 lt!365922)))))

(assert (=> d!307693 (= (contains!1773 (list!3758 lt!365922) lt!365939) lt!366578)))

(declare-fun b!1092762 () Bool)

(declare-fun e!691596 () Bool)

(assert (=> b!1092762 (= e!691595 e!691596)))

(declare-fun res!485504 () Bool)

(assert (=> b!1092762 (=> res!485504 e!691596)))

(assert (=> b!1092762 (= res!485504 (= (h!15891 (list!3758 lt!365922)) lt!365939))))

(declare-fun b!1092763 () Bool)

(assert (=> b!1092763 (= e!691596 (contains!1773 (t!102180 (list!3758 lt!365922)) lt!365939))))

(assert (= (and d!307693 res!485505) b!1092762))

(assert (= (and b!1092762 (not res!485504)) b!1092763))

(assert (=> d!307693 m!1242381))

(declare-fun m!1244441 () Bool)

(assert (=> d!307693 m!1244441))

(declare-fun m!1244443 () Bool)

(assert (=> d!307693 m!1244443))

(declare-fun m!1244445 () Bool)

(assert (=> b!1092763 m!1244445))

(assert (=> b!1091969 d!307693))

(declare-fun d!307695 () Bool)

(declare-fun res!485506 () Bool)

(declare-fun e!691597 () Bool)

(assert (=> d!307695 (=> res!485506 e!691597)))

(assert (=> d!307695 (= res!485506 ((_ is Nil!10490) lt!366257))))

(assert (=> d!307695 (= (forall!2345 lt!366257 lambda!41524) e!691597)))

(declare-fun b!1092764 () Bool)

(declare-fun e!691598 () Bool)

(assert (=> b!1092764 (= e!691597 e!691598)))

(declare-fun res!485507 () Bool)

(assert (=> b!1092764 (=> (not res!485507) (not e!691598))))

(assert (=> b!1092764 (= res!485507 (dynLambda!4577 lambda!41524 (h!15891 lt!366257)))))

(declare-fun b!1092765 () Bool)

(assert (=> b!1092765 (= e!691598 (forall!2345 (t!102180 lt!366257) lambda!41524))))

(assert (= (and d!307695 (not res!485506)) b!1092764))

(assert (= (and b!1092764 res!485507) b!1092765))

(declare-fun b_lambda!30859 () Bool)

(assert (=> (not b_lambda!30859) (not b!1092764)))

(declare-fun m!1244447 () Bool)

(assert (=> b!1092764 m!1244447))

(declare-fun m!1244449 () Bool)

(assert (=> b!1092765 m!1244449))

(assert (=> b!1091966 d!307695))

(declare-fun b!1092767 () Bool)

(declare-fun e!691599 () List!10506)

(declare-fun e!691600 () List!10506)

(assert (=> b!1092767 (= e!691599 e!691600)))

(declare-fun c!185260 () Bool)

(assert (=> b!1092767 (= c!185260 ((_ is Leaf!5100) (c!185027 (sortObjectsByID!0 lt!365922))))))

(declare-fun b!1092766 () Bool)

(assert (=> b!1092766 (= e!691599 Nil!10490)))

(declare-fun b!1092768 () Bool)

(assert (=> b!1092768 (= e!691600 (list!3762 (xs!5892 (c!185027 (sortObjectsByID!0 lt!365922)))))))

(declare-fun d!307697 () Bool)

(declare-fun c!185259 () Bool)

(assert (=> d!307697 (= c!185259 ((_ is Empty!3199) (c!185027 (sortObjectsByID!0 lt!365922))))))

(assert (=> d!307697 (= (list!3760 (c!185027 (sortObjectsByID!0 lt!365922))) e!691599)))

(declare-fun b!1092769 () Bool)

(assert (=> b!1092769 (= e!691600 (++!2839 (list!3760 (left!9005 (c!185027 (sortObjectsByID!0 lt!365922)))) (list!3760 (right!9335 (c!185027 (sortObjectsByID!0 lt!365922))))))))

(assert (= (and d!307697 c!185259) b!1092766))

(assert (= (and d!307697 (not c!185259)) b!1092767))

(assert (= (and b!1092767 c!185260) b!1092768))

(assert (= (and b!1092767 (not c!185260)) b!1092769))

(declare-fun m!1244451 () Bool)

(assert (=> b!1092768 m!1244451))

(declare-fun m!1244453 () Bool)

(assert (=> b!1092769 m!1244453))

(declare-fun m!1244455 () Bool)

(assert (=> b!1092769 m!1244455))

(assert (=> b!1092769 m!1244453))

(assert (=> b!1092769 m!1244455))

(declare-fun m!1244457 () Bool)

(assert (=> b!1092769 m!1244457))

(assert (=> d!307155 d!307697))

(declare-fun d!307699 () Bool)

(declare-fun lt!366579 () Int)

(assert (=> d!307699 (>= lt!366579 0)))

(declare-fun e!691601 () Int)

(assert (=> d!307699 (= lt!366579 e!691601)))

(declare-fun c!185261 () Bool)

(assert (=> d!307699 (= c!185261 ((_ is Nil!10490) lt!365975))))

(assert (=> d!307699 (= (size!8110 lt!365975) lt!366579)))

(declare-fun b!1092770 () Bool)

(assert (=> b!1092770 (= e!691601 0)))

(declare-fun b!1092771 () Bool)

(assert (=> b!1092771 (= e!691601 (+ 1 (size!8110 (t!102180 lt!365975))))))

(assert (= (and d!307699 c!185261) b!1092770))

(assert (= (and d!307699 (not c!185261)) b!1092771))

(declare-fun m!1244459 () Bool)

(assert (=> b!1092771 m!1244459))

(assert (=> d!307039 d!307699))

(assert (=> d!307039 d!307041))

(declare-fun d!307701 () Bool)

(declare-fun res!485513 () Bool)

(declare-fun e!691602 () Bool)

(assert (=> d!307701 (=> res!485513 e!691602)))

(assert (=> d!307701 (= res!485513 (not ((_ is Node!3199) (filter!249 (c!185027 objs!8) lambda!41526))))))

(assert (=> d!307701 (= (isBalanced!884 (filter!249 (c!185027 objs!8) lambda!41526)) e!691602)))

(declare-fun b!1092772 () Bool)

(declare-fun e!691603 () Bool)

(assert (=> b!1092772 (= e!691603 (not (isEmpty!6662 (right!9335 (filter!249 (c!185027 objs!8) lambda!41526)))))))

(declare-fun b!1092773 () Bool)

(declare-fun res!485510 () Bool)

(assert (=> b!1092773 (=> (not res!485510) (not e!691603))))

(assert (=> b!1092773 (= res!485510 (isBalanced!884 (right!9335 (filter!249 (c!185027 objs!8) lambda!41526))))))

(declare-fun b!1092774 () Bool)

(assert (=> b!1092774 (= e!691602 e!691603)))

(declare-fun res!485509 () Bool)

(assert (=> b!1092774 (=> (not res!485509) (not e!691603))))

(assert (=> b!1092774 (= res!485509 (<= (- 1) (- (height!420 (left!9005 (filter!249 (c!185027 objs!8) lambda!41526))) (height!420 (right!9335 (filter!249 (c!185027 objs!8) lambda!41526))))))))

(declare-fun b!1092775 () Bool)

(declare-fun res!485512 () Bool)

(assert (=> b!1092775 (=> (not res!485512) (not e!691603))))

(assert (=> b!1092775 (= res!485512 (isBalanced!884 (left!9005 (filter!249 (c!185027 objs!8) lambda!41526))))))

(declare-fun b!1092776 () Bool)

(declare-fun res!485511 () Bool)

(assert (=> b!1092776 (=> (not res!485511) (not e!691603))))

(assert (=> b!1092776 (= res!485511 (<= (- (height!420 (left!9005 (filter!249 (c!185027 objs!8) lambda!41526))) (height!420 (right!9335 (filter!249 (c!185027 objs!8) lambda!41526)))) 1))))

(declare-fun b!1092777 () Bool)

(declare-fun res!485508 () Bool)

(assert (=> b!1092777 (=> (not res!485508) (not e!691603))))

(assert (=> b!1092777 (= res!485508 (not (isEmpty!6662 (left!9005 (filter!249 (c!185027 objs!8) lambda!41526)))))))

(assert (= (and d!307701 (not res!485513)) b!1092774))

(assert (= (and b!1092774 res!485509) b!1092776))

(assert (= (and b!1092776 res!485511) b!1092775))

(assert (= (and b!1092775 res!485512) b!1092773))

(assert (= (and b!1092773 res!485510) b!1092777))

(assert (= (and b!1092777 res!485508) b!1092772))

(declare-fun m!1244461 () Bool)

(assert (=> b!1092775 m!1244461))

(declare-fun m!1244463 () Bool)

(assert (=> b!1092776 m!1244463))

(declare-fun m!1244465 () Bool)

(assert (=> b!1092776 m!1244465))

(assert (=> b!1092774 m!1244463))

(assert (=> b!1092774 m!1244465))

(declare-fun m!1244467 () Bool)

(assert (=> b!1092773 m!1244467))

(declare-fun m!1244469 () Bool)

(assert (=> b!1092772 m!1244469))

(declare-fun m!1244471 () Bool)

(assert (=> b!1092777 m!1244471))

(assert (=> d!307049 d!307701))

(declare-fun b!1092778 () Bool)

(declare-fun e!691605 () Conc!3199)

(assert (=> b!1092778 (= e!691605 (c!185027 objs!8))))

(declare-fun b!1092779 () Bool)

(declare-fun lt!366581 () Unit!15909)

(assert (=> b!1092779 (= lt!366581 (lemmaFilterConcat!6 (list!3760 (left!9005 (c!185027 objs!8))) (list!3760 (right!9335 (c!185027 objs!8))) lambda!41526))))

(declare-fun e!691607 () Conc!3199)

(assert (=> b!1092779 (= e!691607 (++!2841 (filter!249 (left!9005 (c!185027 objs!8)) lambda!41526) (filter!249 (right!9335 (c!185027 objs!8)) lambda!41526)))))

(declare-fun b!1092780 () Bool)

(declare-fun c!185264 () Bool)

(declare-fun lt!366580 () IArray!6403)

(assert (=> b!1092780 (= c!185264 (= (size!8114 lt!366580) 0))))

(assert (=> b!1092780 (= lt!366580 (filter!251 (xs!5892 (c!185027 objs!8)) lambda!41526))))

(declare-fun e!691606 () Conc!3199)

(assert (=> b!1092780 (= e!691607 e!691606)))

(declare-fun b!1092781 () Bool)

(assert (=> b!1092781 (= e!691606 Empty!3199)))

(declare-fun b!1092782 () Bool)

(assert (=> b!1092782 (= e!691606 (Leaf!5100 lt!366580 (size!8114 lt!366580)))))

(declare-fun e!691604 () Bool)

(declare-fun lt!366582 () Conc!3199)

(declare-fun b!1092783 () Bool)

(assert (=> b!1092783 (= e!691604 (= (list!3760 lt!366582) (filter!246 (list!3760 (c!185027 objs!8)) lambda!41526)))))

(declare-fun b!1092784 () Bool)

(assert (=> b!1092784 (= e!691605 e!691607)))

(declare-fun c!185262 () Bool)

(assert (=> b!1092784 (= c!185262 ((_ is Leaf!5100) (c!185027 objs!8)))))

(declare-fun d!307703 () Bool)

(assert (=> d!307703 e!691604))

(declare-fun res!485514 () Bool)

(assert (=> d!307703 (=> (not res!485514) (not e!691604))))

(assert (=> d!307703 (= res!485514 (isBalanced!884 lt!366582))))

(assert (=> d!307703 (= lt!366582 e!691605)))

(declare-fun c!185263 () Bool)

(assert (=> d!307703 (= c!185263 ((_ is Empty!3199) (c!185027 objs!8)))))

(assert (=> d!307703 (isBalanced!884 (c!185027 objs!8))))

(assert (=> d!307703 (= (filter!249 (c!185027 objs!8) lambda!41526) lt!366582)))

(assert (= (and d!307703 c!185263) b!1092778))

(assert (= (and d!307703 (not c!185263)) b!1092784))

(assert (= (and b!1092784 c!185262) b!1092780))

(assert (= (and b!1092784 (not c!185262)) b!1092779))

(assert (= (and b!1092780 c!185264) b!1092781))

(assert (= (and b!1092780 (not c!185264)) b!1092782))

(assert (= (and d!307703 res!485514) b!1092783))

(declare-fun m!1244473 () Bool)

(assert (=> b!1092783 m!1244473))

(assert (=> b!1092783 m!1242917))

(assert (=> b!1092783 m!1242917))

(declare-fun m!1244475 () Bool)

(assert (=> b!1092783 m!1244475))

(declare-fun m!1244477 () Bool)

(assert (=> b!1092782 m!1244477))

(assert (=> b!1092780 m!1244477))

(declare-fun m!1244479 () Bool)

(assert (=> b!1092780 m!1244479))

(declare-fun m!1244481 () Bool)

(assert (=> b!1092779 m!1244481))

(declare-fun m!1244483 () Bool)

(assert (=> b!1092779 m!1244483))

(declare-fun m!1244485 () Bool)

(assert (=> b!1092779 m!1244485))

(assert (=> b!1092779 m!1243867))

(assert (=> b!1092779 m!1243865))

(assert (=> b!1092779 m!1244483))

(assert (=> b!1092779 m!1244481))

(assert (=> b!1092779 m!1243865))

(assert (=> b!1092779 m!1243867))

(declare-fun m!1244487 () Bool)

(assert (=> b!1092779 m!1244487))

(declare-fun m!1244489 () Bool)

(assert (=> d!307703 m!1244489))

(assert (=> d!307703 m!1242513))

(assert (=> d!307049 d!307703))

(assert (=> b!1091982 d!307027))

(assert (=> b!1091982 d!307039))

(assert (=> b!1091982 d!307041))

(declare-fun d!307705 () Bool)

(assert (=> d!307705 (dynLambda!4577 lambda!41624 lt!366207)))

(declare-fun lt!366583 () Unit!15909)

(assert (=> d!307705 (= lt!366583 (choose!7014 (list!3758 lt!366210) lambda!41624 lt!366207))))

(declare-fun e!691608 () Bool)

(assert (=> d!307705 e!691608))

(declare-fun res!485515 () Bool)

(assert (=> d!307705 (=> (not res!485515) (not e!691608))))

(assert (=> d!307705 (= res!485515 (forall!2345 (list!3758 lt!366210) lambda!41624))))

(assert (=> d!307705 (= (forallContained!492 (list!3758 lt!366210) lambda!41624 lt!366207) lt!366583)))

(declare-fun b!1092785 () Bool)

(assert (=> b!1092785 (= e!691608 (contains!1773 (list!3758 lt!366210) lt!366207))))

(assert (= (and d!307705 res!485515) b!1092785))

(declare-fun b_lambda!30861 () Bool)

(assert (=> (not b_lambda!30861) (not d!307705)))

(assert (=> d!307705 m!1243959))

(assert (=> d!307705 m!1242857))

(declare-fun m!1244491 () Bool)

(assert (=> d!307705 m!1244491))

(assert (=> d!307705 m!1242857))

(declare-fun m!1244493 () Bool)

(assert (=> d!307705 m!1244493))

(assert (=> b!1092785 m!1242857))

(assert (=> b!1092785 m!1244195))

(assert (=> b!1091940 d!307705))

(declare-fun d!307707 () Bool)

(assert (=> d!307707 (= (list!3758 lt!366210) (list!3760 (c!185027 lt!366210)))))

(declare-fun bs!258208 () Bool)

(assert (= bs!258208 d!307707))

(declare-fun m!1244495 () Bool)

(assert (=> bs!258208 m!1244495))

(assert (=> b!1091940 d!307707))

(declare-fun b!1092786 () Bool)

(declare-fun res!485517 () Bool)

(declare-fun e!691610 () Bool)

(assert (=> b!1092786 (=> (not res!485517) (not e!691610))))

(declare-fun lt!366584 () List!10506)

(assert (=> b!1092786 (= res!485517 (= ((_ map implies) (content!1511 lt!366584) (content!1511 (t!102180 lt!365944))) ((as const (InoxSet tuple2!11706)) true)))))

(declare-fun b!1092787 () Bool)

(declare-fun e!691609 () List!10506)

(assert (=> b!1092787 (= e!691609 Nil!10490)))

(declare-fun b!1092788 () Bool)

(declare-fun e!691611 () List!10506)

(assert (=> b!1092788 (= e!691609 e!691611)))

(declare-fun c!185265 () Bool)

(assert (=> b!1092788 (= c!185265 (dynLambda!4577 lambda!41524 (h!15891 (t!102180 lt!365944))))))

(declare-fun bm!80276 () Bool)

(declare-fun call!80281 () List!10506)

(assert (=> bm!80276 (= call!80281 (filter!246 (t!102180 (t!102180 lt!365944)) lambda!41524))))

(declare-fun b!1092789 () Bool)

(assert (=> b!1092789 (= e!691611 (Cons!10490 (h!15891 (t!102180 lt!365944)) call!80281))))

(declare-fun d!307709 () Bool)

(assert (=> d!307709 e!691610))

(declare-fun res!485516 () Bool)

(assert (=> d!307709 (=> (not res!485516) (not e!691610))))

(assert (=> d!307709 (= res!485516 (<= (size!8110 lt!366584) (size!8110 (t!102180 lt!365944))))))

(assert (=> d!307709 (= lt!366584 e!691609)))

(declare-fun c!185266 () Bool)

(assert (=> d!307709 (= c!185266 ((_ is Nil!10490) (t!102180 lt!365944)))))

(assert (=> d!307709 (= (filter!246 (t!102180 lt!365944) lambda!41524) lt!366584)))

(declare-fun b!1092790 () Bool)

(assert (=> b!1092790 (= e!691611 call!80281)))

(declare-fun b!1092791 () Bool)

(assert (=> b!1092791 (= e!691610 (forall!2345 lt!366584 lambda!41524))))

(assert (= (and d!307709 c!185266) b!1092787))

(assert (= (and d!307709 (not c!185266)) b!1092788))

(assert (= (and b!1092788 c!185265) b!1092789))

(assert (= (and b!1092788 (not c!185265)) b!1092790))

(assert (= (or b!1092789 b!1092790) bm!80276))

(assert (= (and d!307709 res!485516) b!1092786))

(assert (= (and b!1092786 res!485517) b!1092791))

(declare-fun b_lambda!30863 () Bool)

(assert (=> (not b_lambda!30863) (not b!1092788)))

(declare-fun m!1244497 () Bool)

(assert (=> b!1092786 m!1244497))

(assert (=> b!1092786 m!1243953))

(declare-fun m!1244499 () Bool)

(assert (=> bm!80276 m!1244499))

(declare-fun m!1244501 () Bool)

(assert (=> b!1092791 m!1244501))

(declare-fun m!1244503 () Bool)

(assert (=> b!1092788 m!1244503))

(declare-fun m!1244505 () Bool)

(assert (=> d!307709 m!1244505))

(assert (=> d!307709 m!1242499))

(assert (=> bm!80261 d!307709))

(declare-fun b!1092793 () Bool)

(declare-fun e!691612 () List!10506)

(declare-fun e!691613 () List!10506)

(assert (=> b!1092793 (= e!691612 e!691613)))

(declare-fun c!185268 () Bool)

(assert (=> b!1092793 (= c!185268 ((_ is Leaf!5100) (c!185027 (filter!247 objs!8 lambda!41526))))))

(declare-fun b!1092792 () Bool)

(assert (=> b!1092792 (= e!691612 Nil!10490)))

(declare-fun b!1092794 () Bool)

(assert (=> b!1092794 (= e!691613 (list!3762 (xs!5892 (c!185027 (filter!247 objs!8 lambda!41526)))))))

(declare-fun d!307711 () Bool)

(declare-fun c!185267 () Bool)

(assert (=> d!307711 (= c!185267 ((_ is Empty!3199) (c!185027 (filter!247 objs!8 lambda!41526))))))

(assert (=> d!307711 (= (list!3760 (c!185027 (filter!247 objs!8 lambda!41526))) e!691612)))

(declare-fun b!1092795 () Bool)

(assert (=> b!1092795 (= e!691613 (++!2839 (list!3760 (left!9005 (c!185027 (filter!247 objs!8 lambda!41526)))) (list!3760 (right!9335 (c!185027 (filter!247 objs!8 lambda!41526))))))))

(assert (= (and d!307711 c!185267) b!1092792))

(assert (= (and d!307711 (not c!185267)) b!1092793))

(assert (= (and b!1092793 c!185268) b!1092794))

(assert (= (and b!1092793 (not c!185268)) b!1092795))

(declare-fun m!1244507 () Bool)

(assert (=> b!1092794 m!1244507))

(declare-fun m!1244509 () Bool)

(assert (=> b!1092795 m!1244509))

(declare-fun m!1244511 () Bool)

(assert (=> b!1092795 m!1244511))

(assert (=> b!1092795 m!1244509))

(assert (=> b!1092795 m!1244511))

(declare-fun m!1244513 () Bool)

(assert (=> b!1092795 m!1244513))

(assert (=> d!307159 d!307711))

(declare-fun d!307713 () Bool)

(declare-fun res!485522 () Bool)

(declare-fun e!691616 () Bool)

(assert (=> d!307713 (=> (not res!485522) (not e!691616))))

(assert (=> d!307713 (= res!485522 (<= (size!8110 (list!3762 (xs!5892 (c!185027 objs!8)))) 512))))

(assert (=> d!307713 (= (inv!13429 (c!185027 objs!8)) e!691616)))

(declare-fun b!1092800 () Bool)

(declare-fun res!485523 () Bool)

(assert (=> b!1092800 (=> (not res!485523) (not e!691616))))

(assert (=> b!1092800 (= res!485523 (= (csize!6629 (c!185027 objs!8)) (size!8110 (list!3762 (xs!5892 (c!185027 objs!8))))))))

(declare-fun b!1092801 () Bool)

(assert (=> b!1092801 (= e!691616 (and (> (csize!6629 (c!185027 objs!8)) 0) (<= (csize!6629 (c!185027 objs!8)) 512)))))

(assert (= (and d!307713 res!485522) b!1092800))

(assert (= (and b!1092800 res!485523) b!1092801))

(assert (=> d!307713 m!1244401))

(assert (=> d!307713 m!1244401))

(declare-fun m!1244515 () Bool)

(assert (=> d!307713 m!1244515))

(assert (=> b!1092800 m!1244401))

(assert (=> b!1092800 m!1244401))

(assert (=> b!1092800 m!1244515))

(assert (=> b!1091978 d!307713))

(declare-fun d!307715 () Bool)

(declare-fun lt!366585 () Int)

(assert (=> d!307715 (>= lt!366585 0)))

(declare-fun e!691617 () Int)

(assert (=> d!307715 (= lt!366585 e!691617)))

(declare-fun c!185269 () Bool)

(assert (=> d!307715 (= c!185269 ((_ is Nil!10490) (t!102180 (filter!246 lt!365944 lambda!41526))))))

(assert (=> d!307715 (= (size!8110 (t!102180 (filter!246 lt!365944 lambda!41526))) lt!366585)))

(declare-fun b!1092802 () Bool)

(assert (=> b!1092802 (= e!691617 0)))

(declare-fun b!1092803 () Bool)

(assert (=> b!1092803 (= e!691617 (+ 1 (size!8110 (t!102180 (t!102180 (filter!246 lt!365944 lambda!41526))))))))

(assert (= (and d!307715 c!185269) b!1092802))

(assert (= (and d!307715 (not c!185269)) b!1092803))

(declare-fun m!1244517 () Bool)

(assert (=> b!1092803 m!1244517))

(assert (=> b!1091730 d!307715))

(declare-fun d!307717 () Bool)

(declare-fun lt!366586 () Int)

(assert (=> d!307717 (>= lt!366586 0)))

(declare-fun e!691618 () Int)

(assert (=> d!307717 (= lt!366586 e!691618)))

(declare-fun c!185270 () Bool)

(assert (=> d!307717 (= c!185270 ((_ is Nil!10490) (filter!246 lt!366214 lambda!41624)))))

(assert (=> d!307717 (= (size!8110 (filter!246 lt!366214 lambda!41624)) lt!366586)))

(declare-fun b!1092804 () Bool)

(assert (=> b!1092804 (= e!691618 0)))

(declare-fun b!1092805 () Bool)

(assert (=> b!1092805 (= e!691618 (+ 1 (size!8110 (t!102180 (filter!246 lt!366214 lambda!41624)))))))

(assert (= (and d!307717 c!185270) b!1092804))

(assert (= (and d!307717 (not c!185270)) b!1092805))

(declare-fun m!1244519 () Bool)

(assert (=> b!1092805 m!1244519))

(assert (=> b!1091938 d!307717))

(declare-fun b!1092806 () Bool)

(declare-fun res!485525 () Bool)

(declare-fun e!691620 () Bool)

(assert (=> b!1092806 (=> (not res!485525) (not e!691620))))

(declare-fun lt!366587 () List!10506)

(assert (=> b!1092806 (= res!485525 (= ((_ map implies) (content!1511 lt!366587) (content!1511 lt!366214)) ((as const (InoxSet tuple2!11706)) true)))))

(declare-fun b!1092807 () Bool)

(declare-fun e!691619 () List!10506)

(assert (=> b!1092807 (= e!691619 Nil!10490)))

(declare-fun b!1092808 () Bool)

(declare-fun e!691621 () List!10506)

(assert (=> b!1092808 (= e!691619 e!691621)))

(declare-fun c!185271 () Bool)

(assert (=> b!1092808 (= c!185271 (dynLambda!4577 lambda!41624 (h!15891 lt!366214)))))

(declare-fun bm!80277 () Bool)

(declare-fun call!80282 () List!10506)

(assert (=> bm!80277 (= call!80282 (filter!246 (t!102180 lt!366214) lambda!41624))))

(declare-fun b!1092809 () Bool)

(assert (=> b!1092809 (= e!691621 (Cons!10490 (h!15891 lt!366214) call!80282))))

(declare-fun d!307719 () Bool)

(assert (=> d!307719 e!691620))

(declare-fun res!485524 () Bool)

(assert (=> d!307719 (=> (not res!485524) (not e!691620))))

(assert (=> d!307719 (= res!485524 (<= (size!8110 lt!366587) (size!8110 lt!366214)))))

(assert (=> d!307719 (= lt!366587 e!691619)))

(declare-fun c!185272 () Bool)

(assert (=> d!307719 (= c!185272 ((_ is Nil!10490) lt!366214))))

(assert (=> d!307719 (= (filter!246 lt!366214 lambda!41624) lt!366587)))

(declare-fun b!1092810 () Bool)

(assert (=> b!1092810 (= e!691621 call!80282)))

(declare-fun b!1092811 () Bool)

(assert (=> b!1092811 (= e!691620 (forall!2345 lt!366587 lambda!41624))))

(assert (= (and d!307719 c!185272) b!1092807))

(assert (= (and d!307719 (not c!185272)) b!1092808))

(assert (= (and b!1092808 c!185271) b!1092809))

(assert (= (and b!1092808 (not c!185271)) b!1092810))

(assert (= (or b!1092809 b!1092810) bm!80277))

(assert (= (and d!307719 res!485524) b!1092806))

(assert (= (and b!1092806 res!485525) b!1092811))

(declare-fun b_lambda!30865 () Bool)

(assert (=> (not b_lambda!30865) (not b!1092808)))

(declare-fun m!1244521 () Bool)

(assert (=> b!1092806 m!1244521))

(declare-fun m!1244523 () Bool)

(assert (=> b!1092806 m!1244523))

(declare-fun m!1244525 () Bool)

(assert (=> bm!80277 m!1244525))

(declare-fun m!1244527 () Bool)

(assert (=> b!1092811 m!1244527))

(declare-fun m!1244529 () Bool)

(assert (=> b!1092808 m!1244529))

(declare-fun m!1244531 () Bool)

(assert (=> d!307719 m!1244531))

(assert (=> d!307719 m!1242845))

(assert (=> b!1091938 d!307719))

(declare-fun d!307721 () Bool)

(declare-fun lt!366588 () Int)

(assert (=> d!307721 (>= lt!366588 0)))

(declare-fun e!691622 () Int)

(assert (=> d!307721 (= lt!366588 e!691622)))

(declare-fun c!185273 () Bool)

(assert (=> d!307721 (= c!185273 ((_ is Nil!10490) lt!366214))))

(assert (=> d!307721 (= (size!8110 lt!366214) lt!366588)))

(declare-fun b!1092812 () Bool)

(assert (=> b!1092812 (= e!691622 0)))

(declare-fun b!1092813 () Bool)

(assert (=> b!1092813 (= e!691622 (+ 1 (size!8110 (t!102180 lt!366214))))))

(assert (= (and d!307721 c!185273) b!1092812))

(assert (= (and d!307721 (not c!185273)) b!1092813))

(declare-fun m!1244533 () Bool)

(assert (=> b!1092813 m!1244533))

(assert (=> b!1091938 d!307721))

(declare-fun d!307723 () Bool)

(assert (=> d!307723 (= (list!3758 lt!365985) (list!3760 (c!185027 lt!365985)))))

(declare-fun bs!258209 () Bool)

(assert (= bs!258209 d!307723))

(declare-fun m!1244535 () Bool)

(assert (=> bs!258209 m!1244535))

(assert (=> b!1091756 d!307723))

(declare-fun b!1092814 () Bool)

(declare-fun res!485527 () Bool)

(declare-fun e!691624 () Bool)

(assert (=> b!1092814 (=> (not res!485527) (not e!691624))))

(declare-fun lt!366589 () List!10506)

(assert (=> b!1092814 (= res!485527 (= ((_ map implies) (content!1511 lt!366589) (content!1511 (list!3758 objs!8))) ((as const (InoxSet tuple2!11706)) true)))))

(declare-fun b!1092815 () Bool)

(declare-fun e!691623 () List!10506)

(assert (=> b!1092815 (= e!691623 Nil!10490)))

(declare-fun b!1092816 () Bool)

(declare-fun e!691625 () List!10506)

(assert (=> b!1092816 (= e!691623 e!691625)))

(declare-fun c!185274 () Bool)

(assert (=> b!1092816 (= c!185274 (dynLambda!4577 lambda!41526 (h!15891 (list!3758 objs!8))))))

(declare-fun bm!80278 () Bool)

(declare-fun call!80283 () List!10506)

(assert (=> bm!80278 (= call!80283 (filter!246 (t!102180 (list!3758 objs!8)) lambda!41526))))

(declare-fun b!1092817 () Bool)

(assert (=> b!1092817 (= e!691625 (Cons!10490 (h!15891 (list!3758 objs!8)) call!80283))))

(declare-fun d!307725 () Bool)

(assert (=> d!307725 e!691624))

(declare-fun res!485526 () Bool)

(assert (=> d!307725 (=> (not res!485526) (not e!691624))))

(assert (=> d!307725 (= res!485526 (<= (size!8110 lt!366589) (size!8110 (list!3758 objs!8))))))

(assert (=> d!307725 (= lt!366589 e!691623)))

(declare-fun c!185275 () Bool)

(assert (=> d!307725 (= c!185275 ((_ is Nil!10490) (list!3758 objs!8)))))

(assert (=> d!307725 (= (filter!246 (list!3758 objs!8) lambda!41526) lt!366589)))

(declare-fun b!1092818 () Bool)

(assert (=> b!1092818 (= e!691625 call!80283)))

(declare-fun b!1092819 () Bool)

(assert (=> b!1092819 (= e!691624 (forall!2345 lt!366589 lambda!41526))))

(assert (= (and d!307725 c!185275) b!1092815))

(assert (= (and d!307725 (not c!185275)) b!1092816))

(assert (= (and b!1092816 c!185274) b!1092817))

(assert (= (and b!1092816 (not c!185274)) b!1092818))

(assert (= (or b!1092817 b!1092818) bm!80278))

(assert (= (and d!307725 res!485526) b!1092814))

(assert (= (and b!1092814 res!485527) b!1092819))

(declare-fun b_lambda!30867 () Bool)

(assert (=> (not b_lambda!30867) (not b!1092816)))

(declare-fun m!1244537 () Bool)

(assert (=> b!1092814 m!1244537))

(assert (=> b!1092814 m!1242349))

(assert (=> b!1092814 m!1244373))

(declare-fun m!1244539 () Bool)

(assert (=> bm!80278 m!1244539))

(declare-fun m!1244541 () Bool)

(assert (=> b!1092819 m!1244541))

(declare-fun m!1244543 () Bool)

(assert (=> b!1092816 m!1244543))

(declare-fun m!1244545 () Bool)

(assert (=> d!307725 m!1244545))

(assert (=> d!307725 m!1242349))

(assert (=> d!307725 m!1242959))

(assert (=> b!1091756 d!307725))

(assert (=> b!1091756 d!307171))

(assert (=> d!307207 d!307177))

(declare-fun d!307727 () Bool)

(declare-fun e!691628 () Bool)

(assert (=> d!307727 e!691628))

(declare-fun res!485530 () Bool)

(assert (=> d!307727 (=> res!485530 e!691628)))

(assert (=> d!307727 (= res!485530 (isEmpty!6660 lt!365944))))

(assert (=> d!307727 true))

(declare-fun _$38!318 () Unit!15909)

(assert (=> d!307727 (= (choose!7017 lt!365944 lambda!41526) _$38!318)))

(declare-fun b!1092822 () Bool)

(assert (=> b!1092822 (= e!691628 (< (size!8110 (filter!246 lt!365944 lambda!41526)) (size!8110 lt!365944)))))

(assert (= (and d!307727 (not res!485530)) b!1092822))

(assert (=> d!307727 m!1242355))

(assert (=> b!1092822 m!1242373))

(assert (=> b!1092822 m!1242373))

(assert (=> b!1092822 m!1242375))

(assert (=> b!1092822 m!1242377))

(assert (=> d!307207 d!307727))

(assert (=> d!307207 d!307581))

(declare-fun d!307729 () Bool)

(assert (=> d!307729 (dynLambda!4577 lambda!41626 lt!366207)))

(declare-fun lt!366590 () Unit!15909)

(assert (=> d!307729 (= lt!366590 (choose!7014 (list!3758 lt!365922) lambda!41626 lt!366207))))

(declare-fun e!691629 () Bool)

(assert (=> d!307729 e!691629))

(declare-fun res!485531 () Bool)

(assert (=> d!307729 (=> (not res!485531) (not e!691629))))

(assert (=> d!307729 (= res!485531 (forall!2345 (list!3758 lt!365922) lambda!41626))))

(assert (=> d!307729 (= (forallContained!492 (list!3758 lt!365922) lambda!41626 lt!366207) lt!366590)))

(declare-fun b!1092823 () Bool)

(assert (=> b!1092823 (= e!691629 (contains!1773 (list!3758 lt!365922) lt!366207))))

(assert (= (and d!307729 res!485531) b!1092823))

(declare-fun b_lambda!30869 () Bool)

(assert (=> (not b_lambda!30869) (not d!307729)))

(declare-fun m!1244547 () Bool)

(assert (=> d!307729 m!1244547))

(assert (=> d!307729 m!1242381))

(declare-fun m!1244549 () Bool)

(assert (=> d!307729 m!1244549))

(assert (=> d!307729 m!1242381))

(assert (=> d!307729 m!1244075))

(assert (=> b!1092823 m!1242381))

(assert (=> b!1092823 m!1243965))

(assert (=> b!1091936 d!307729))

(assert (=> b!1091936 d!307197))

(assert (=> d!307185 d!307509))

(assert (=> d!307185 d!307191))

(declare-fun b!1092833 () Bool)

(declare-fun e!691638 () Bool)

(declare-fun contains!1776 (IArray!6403 tuple2!11706) Bool)

(assert (=> b!1092833 (= e!691638 (contains!1776 (xs!5892 (c!185027 lt!365935)) lt!365939))))

(declare-fun d!307731 () Bool)

(declare-fun lt!366593 () Bool)

(assert (=> d!307731 (= lt!366593 (contains!1773 (list!3760 (c!185027 lt!365935)) lt!365939))))

(declare-fun e!691636 () Bool)

(assert (=> d!307731 (= lt!366593 e!691636)))

(declare-fun res!485536 () Bool)

(assert (=> d!307731 (=> (not res!485536) (not e!691636))))

(assert (=> d!307731 (= res!485536 (not ((_ is Empty!3199) (c!185027 lt!365935))))))

(assert (=> d!307731 (= (contains!1774 (c!185027 lt!365935) lt!365939) lt!366593)))

(declare-fun b!1092835 () Bool)

(declare-fun e!691637 () Bool)

(assert (=> b!1092835 (= e!691637 (contains!1774 (right!9335 (c!185027 lt!365935)) lt!365939))))

(declare-fun b!1092834 () Bool)

(assert (=> b!1092834 (= e!691638 e!691637)))

(declare-fun res!485537 () Bool)

(assert (=> b!1092834 (= res!485537 (contains!1774 (left!9005 (c!185027 lt!365935)) lt!365939))))

(assert (=> b!1092834 (=> res!485537 e!691637)))

(declare-fun b!1092832 () Bool)

(assert (=> b!1092832 (= e!691636 e!691638)))

(declare-fun c!185278 () Bool)

(assert (=> b!1092832 (= c!185278 ((_ is Leaf!5100) (c!185027 lt!365935)))))

(assert (= (and d!307731 res!485536) b!1092832))

(assert (= (and b!1092832 c!185278) b!1092833))

(assert (= (and b!1092832 (not c!185278)) b!1092834))

(assert (= (and b!1092834 (not res!485537)) b!1092835))

(declare-fun m!1244551 () Bool)

(assert (=> b!1092833 m!1244551))

(assert (=> d!307731 m!1242957))

(assert (=> d!307731 m!1242957))

(declare-fun m!1244553 () Bool)

(assert (=> d!307731 m!1244553))

(declare-fun m!1244555 () Bool)

(assert (=> b!1092835 m!1244555))

(declare-fun m!1244557 () Bool)

(assert (=> b!1092834 m!1244557))

(assert (=> d!307185 d!307731))

(declare-fun d!307733 () Bool)

(declare-fun res!485546 () Bool)

(declare-fun e!691648 () Bool)

(assert (=> d!307733 (=> res!485546 e!691648)))

(assert (=> d!307733 (= res!485546 ((_ is Nil!10490) (filter!246 lt!365944 lambda!41525)))))

(assert (=> d!307733 (= (subseq!140 (filter!246 lt!365944 lambda!41525) lt!365944) e!691648)))

(declare-fun b!1092844 () Bool)

(declare-fun e!691647 () Bool)

(assert (=> b!1092844 (= e!691648 e!691647)))

(declare-fun res!485548 () Bool)

(assert (=> b!1092844 (=> (not res!485548) (not e!691647))))

(assert (=> b!1092844 (= res!485548 ((_ is Cons!10490) lt!365944))))

(declare-fun b!1092846 () Bool)

(declare-fun e!691649 () Bool)

(assert (=> b!1092846 (= e!691649 (subseq!140 (t!102180 (filter!246 lt!365944 lambda!41525)) (t!102180 lt!365944)))))

(declare-fun b!1092847 () Bool)

(declare-fun e!691650 () Bool)

(assert (=> b!1092847 (= e!691650 (subseq!140 (filter!246 lt!365944 lambda!41525) (t!102180 lt!365944)))))

(declare-fun b!1092845 () Bool)

(assert (=> b!1092845 (= e!691647 e!691650)))

(declare-fun res!485549 () Bool)

(assert (=> b!1092845 (=> res!485549 e!691650)))

(assert (=> b!1092845 (= res!485549 e!691649)))

(declare-fun res!485547 () Bool)

(assert (=> b!1092845 (=> (not res!485547) (not e!691649))))

(assert (=> b!1092845 (= res!485547 (= (h!15891 (filter!246 lt!365944 lambda!41525)) (h!15891 lt!365944)))))

(assert (= (and d!307733 (not res!485546)) b!1092844))

(assert (= (and b!1092844 res!485548) b!1092845))

(assert (= (and b!1092845 res!485547) b!1092846))

(assert (= (and b!1092845 (not res!485549)) b!1092847))

(declare-fun m!1244559 () Bool)

(assert (=> b!1092846 m!1244559))

(assert (=> b!1092847 m!1242899))

(declare-fun m!1244561 () Bool)

(assert (=> b!1092847 m!1244561))

(assert (=> d!307163 d!307733))

(declare-fun b!1092848 () Bool)

(declare-fun res!485551 () Bool)

(declare-fun e!691652 () Bool)

(assert (=> b!1092848 (=> (not res!485551) (not e!691652))))

(declare-fun lt!366594 () List!10506)

(assert (=> b!1092848 (= res!485551 (= ((_ map implies) (content!1511 lt!366594) (content!1511 lt!365944)) ((as const (InoxSet tuple2!11706)) true)))))

(declare-fun b!1092849 () Bool)

(declare-fun e!691651 () List!10506)

(assert (=> b!1092849 (= e!691651 Nil!10490)))

(declare-fun b!1092850 () Bool)

(declare-fun e!691653 () List!10506)

(assert (=> b!1092850 (= e!691651 e!691653)))

(declare-fun c!185279 () Bool)

(assert (=> b!1092850 (= c!185279 (dynLambda!4577 lambda!41525 (h!15891 lt!365944)))))

(declare-fun bm!80279 () Bool)

(declare-fun call!80284 () List!10506)

(assert (=> bm!80279 (= call!80284 (filter!246 (t!102180 lt!365944) lambda!41525))))

(declare-fun b!1092851 () Bool)

(assert (=> b!1092851 (= e!691653 (Cons!10490 (h!15891 lt!365944) call!80284))))

(declare-fun d!307735 () Bool)

(assert (=> d!307735 e!691652))

(declare-fun res!485550 () Bool)

(assert (=> d!307735 (=> (not res!485550) (not e!691652))))

(assert (=> d!307735 (= res!485550 (<= (size!8110 lt!366594) (size!8110 lt!365944)))))

(assert (=> d!307735 (= lt!366594 e!691651)))

(declare-fun c!185280 () Bool)

(assert (=> d!307735 (= c!185280 ((_ is Nil!10490) lt!365944))))

(assert (=> d!307735 (= (filter!246 lt!365944 lambda!41525) lt!366594)))

(declare-fun b!1092852 () Bool)

(assert (=> b!1092852 (= e!691653 call!80284)))

(declare-fun b!1092853 () Bool)

(assert (=> b!1092853 (= e!691652 (forall!2345 lt!366594 lambda!41525))))

(assert (= (and d!307735 c!185280) b!1092849))

(assert (= (and d!307735 (not c!185280)) b!1092850))

(assert (= (and b!1092850 c!185279) b!1092851))

(assert (= (and b!1092850 (not c!185279)) b!1092852))

(assert (= (or b!1092851 b!1092852) bm!80279))

(assert (= (and d!307735 res!485550) b!1092848))

(assert (= (and b!1092848 res!485551) b!1092853))

(declare-fun b_lambda!30871 () Bool)

(assert (=> (not b_lambda!30871) (not b!1092850)))

(declare-fun m!1244563 () Bool)

(assert (=> b!1092848 m!1244563))

(assert (=> b!1092848 m!1242489))

(declare-fun m!1244565 () Bool)

(assert (=> bm!80279 m!1244565))

(declare-fun m!1244567 () Bool)

(assert (=> b!1092853 m!1244567))

(declare-fun m!1244569 () Bool)

(assert (=> b!1092850 m!1244569))

(declare-fun m!1244571 () Bool)

(assert (=> d!307735 m!1244571))

(assert (=> d!307735 m!1242377))

(assert (=> d!307163 d!307735))

(declare-fun d!307737 () Bool)

(assert (=> d!307737 (subseq!140 (filter!246 lt!365944 lambda!41525) lt!365944)))

(assert (=> d!307737 true))

(declare-fun _$14!598 () Unit!15909)

(assert (=> d!307737 (= (choose!7016 lt!365944 lambda!41525) _$14!598)))

(declare-fun bs!258210 () Bool)

(assert (= bs!258210 d!307737))

(assert (=> bs!258210 m!1242899))

(assert (=> bs!258210 m!1242899))

(assert (=> bs!258210 m!1242901))

(assert (=> d!307163 d!307737))

(declare-fun d!307739 () Bool)

(declare-fun res!485558 () Bool)

(declare-fun e!691656 () Bool)

(assert (=> d!307739 (=> (not res!485558) (not e!691656))))

(assert (=> d!307739 (= res!485558 (= (csize!6628 (c!185027 objs!8)) (+ (size!8112 (left!9005 (c!185027 objs!8))) (size!8112 (right!9335 (c!185027 objs!8))))))))

(assert (=> d!307739 (= (inv!13428 (c!185027 objs!8)) e!691656)))

(declare-fun b!1092860 () Bool)

(declare-fun res!485559 () Bool)

(assert (=> b!1092860 (=> (not res!485559) (not e!691656))))

(assert (=> b!1092860 (= res!485559 (and (not (= (left!9005 (c!185027 objs!8)) Empty!3199)) (not (= (right!9335 (c!185027 objs!8)) Empty!3199))))))

(declare-fun b!1092861 () Bool)

(declare-fun res!485560 () Bool)

(assert (=> b!1092861 (=> (not res!485560) (not e!691656))))

(assert (=> b!1092861 (= res!485560 (= (cheight!3410 (c!185027 objs!8)) (+ (max!0 (height!420 (left!9005 (c!185027 objs!8))) (height!420 (right!9335 (c!185027 objs!8)))) 1)))))

(declare-fun b!1092862 () Bool)

(assert (=> b!1092862 (= e!691656 (<= 0 (cheight!3410 (c!185027 objs!8))))))

(assert (= (and d!307739 res!485558) b!1092860))

(assert (= (and b!1092860 res!485559) b!1092861))

(assert (= (and b!1092861 res!485560) b!1092862))

(declare-fun m!1244573 () Bool)

(assert (=> d!307739 m!1244573))

(declare-fun m!1244575 () Bool)

(assert (=> d!307739 m!1244575))

(declare-fun m!1244577 () Bool)

(assert (=> b!1092861 m!1244577))

(declare-fun m!1244579 () Bool)

(assert (=> b!1092861 m!1244579))

(assert (=> b!1092861 m!1244577))

(assert (=> b!1092861 m!1244579))

(declare-fun m!1244581 () Bool)

(assert (=> b!1092861 m!1244581))

(assert (=> b!1091976 d!307739))

(declare-fun d!307741 () Bool)

(declare-fun res!485561 () Bool)

(declare-fun e!691657 () Bool)

(assert (=> d!307741 (=> res!485561 e!691657)))

(assert (=> d!307741 (= res!485561 ((_ is Nil!10490) (t!102180 lt!365947)))))

(assert (=> d!307741 (= (forall!2345 (t!102180 lt!365947) lambda!41523) e!691657)))

(declare-fun b!1092863 () Bool)

(declare-fun e!691658 () Bool)

(assert (=> b!1092863 (= e!691657 e!691658)))

(declare-fun res!485562 () Bool)

(assert (=> b!1092863 (=> (not res!485562) (not e!691658))))

(assert (=> b!1092863 (= res!485562 (dynLambda!4577 lambda!41523 (h!15891 (t!102180 lt!365947))))))

(declare-fun b!1092864 () Bool)

(assert (=> b!1092864 (= e!691658 (forall!2345 (t!102180 (t!102180 lt!365947)) lambda!41523))))

(assert (= (and d!307741 (not res!485561)) b!1092863))

(assert (= (and b!1092863 res!485562) b!1092864))

(declare-fun b_lambda!30873 () Bool)

(assert (=> (not b_lambda!30873) (not b!1092863)))

(declare-fun m!1244583 () Bool)

(assert (=> b!1092863 m!1244583))

(declare-fun m!1244585 () Bool)

(assert (=> b!1092864 m!1244585))

(assert (=> b!1091763 d!307741))

(declare-fun d!307743 () Bool)

(assert (=> d!307743 (= (usesJsonRules!0 (_2!6679 (h!15891 lt!365945))) (= (rules!9077 (_2!6679 (h!15891 lt!365945))) (rules!109 JsonLexer!291)))))

(declare-fun bs!258211 () Bool)

(assert (= bs!258211 d!307743))

(assert (=> bs!258211 m!1244363))

(assert (=> bs!258067 d!307743))

(declare-fun d!307745 () Bool)

(declare-fun res!485563 () Bool)

(declare-fun e!691660 () Bool)

(assert (=> d!307745 (=> res!485563 e!691660)))

(assert (=> d!307745 (= res!485563 ((_ is Nil!10490) (filter!246 lt!365944 lambda!41526)))))

(assert (=> d!307745 (= (subseq!140 (filter!246 lt!365944 lambda!41526) lt!365944) e!691660)))

(declare-fun b!1092865 () Bool)

(declare-fun e!691659 () Bool)

(assert (=> b!1092865 (= e!691660 e!691659)))

(declare-fun res!485565 () Bool)

(assert (=> b!1092865 (=> (not res!485565) (not e!691659))))

(assert (=> b!1092865 (= res!485565 ((_ is Cons!10490) lt!365944))))

(declare-fun b!1092867 () Bool)

(declare-fun e!691661 () Bool)

(assert (=> b!1092867 (= e!691661 (subseq!140 (t!102180 (filter!246 lt!365944 lambda!41526)) (t!102180 lt!365944)))))

(declare-fun b!1092868 () Bool)

(declare-fun e!691662 () Bool)

(assert (=> b!1092868 (= e!691662 (subseq!140 (filter!246 lt!365944 lambda!41526) (t!102180 lt!365944)))))

(declare-fun b!1092866 () Bool)

(assert (=> b!1092866 (= e!691659 e!691662)))

(declare-fun res!485566 () Bool)

(assert (=> b!1092866 (=> res!485566 e!691662)))

(assert (=> b!1092866 (= res!485566 e!691661)))

(declare-fun res!485564 () Bool)

(assert (=> b!1092866 (=> (not res!485564) (not e!691661))))

(assert (=> b!1092866 (= res!485564 (= (h!15891 (filter!246 lt!365944 lambda!41526)) (h!15891 lt!365944)))))

(assert (= (and d!307745 (not res!485563)) b!1092865))

(assert (= (and b!1092865 res!485565) b!1092866))

(assert (= (and b!1092866 res!485564) b!1092867))

(assert (= (and b!1092866 (not res!485566)) b!1092868))

(declare-fun m!1244587 () Bool)

(assert (=> b!1092867 m!1244587))

(assert (=> b!1092868 m!1242373))

(declare-fun m!1244589 () Bool)

(assert (=> b!1092868 m!1244589))

(assert (=> d!307153 d!307745))

(assert (=> d!307153 d!307039))

(declare-fun d!307747 () Bool)

(assert (=> d!307747 (subseq!140 (filter!246 lt!365944 lambda!41526) lt!365944)))

(assert (=> d!307747 true))

(declare-fun _$14!599 () Unit!15909)

(assert (=> d!307747 (= (choose!7016 lt!365944 lambda!41526) _$14!599)))

(declare-fun bs!258212 () Bool)

(assert (= bs!258212 d!307747))

(assert (=> bs!258212 m!1242373))

(assert (=> bs!258212 m!1242373))

(assert (=> bs!258212 m!1242879))

(assert (=> d!307153 d!307747))

(declare-fun d!307749 () Bool)

(declare-fun res!485572 () Bool)

(declare-fun e!691663 () Bool)

(assert (=> d!307749 (=> res!485572 e!691663)))

(assert (=> d!307749 (= res!485572 (not ((_ is Node!3199) (c!185027 objs!8))))))

(assert (=> d!307749 (= (isBalanced!884 (c!185027 objs!8)) e!691663)))

(declare-fun b!1092869 () Bool)

(declare-fun e!691664 () Bool)

(assert (=> b!1092869 (= e!691664 (not (isEmpty!6662 (right!9335 (c!185027 objs!8)))))))

(declare-fun b!1092870 () Bool)

(declare-fun res!485569 () Bool)

(assert (=> b!1092870 (=> (not res!485569) (not e!691664))))

(assert (=> b!1092870 (= res!485569 (isBalanced!884 (right!9335 (c!185027 objs!8))))))

(declare-fun b!1092871 () Bool)

(assert (=> b!1092871 (= e!691663 e!691664)))

(declare-fun res!485568 () Bool)

(assert (=> b!1092871 (=> (not res!485568) (not e!691664))))

(assert (=> b!1092871 (= res!485568 (<= (- 1) (- (height!420 (left!9005 (c!185027 objs!8))) (height!420 (right!9335 (c!185027 objs!8))))))))

(declare-fun b!1092872 () Bool)

(declare-fun res!485571 () Bool)

(assert (=> b!1092872 (=> (not res!485571) (not e!691664))))

(assert (=> b!1092872 (= res!485571 (isBalanced!884 (left!9005 (c!185027 objs!8))))))

(declare-fun b!1092873 () Bool)

(declare-fun res!485570 () Bool)

(assert (=> b!1092873 (=> (not res!485570) (not e!691664))))

(assert (=> b!1092873 (= res!485570 (<= (- (height!420 (left!9005 (c!185027 objs!8))) (height!420 (right!9335 (c!185027 objs!8)))) 1))))

(declare-fun b!1092874 () Bool)

(declare-fun res!485567 () Bool)

(assert (=> b!1092874 (=> (not res!485567) (not e!691664))))

(assert (=> b!1092874 (= res!485567 (not (isEmpty!6662 (left!9005 (c!185027 objs!8)))))))

(assert (= (and d!307749 (not res!485572)) b!1092871))

(assert (= (and b!1092871 res!485568) b!1092873))

(assert (= (and b!1092873 res!485570) b!1092872))

(assert (= (and b!1092872 res!485571) b!1092870))

(assert (= (and b!1092870 res!485569) b!1092874))

(assert (= (and b!1092874 res!485567) b!1092869))

(declare-fun m!1244591 () Bool)

(assert (=> b!1092872 m!1244591))

(assert (=> b!1092873 m!1244577))

(assert (=> b!1092873 m!1244579))

(assert (=> b!1092871 m!1244577))

(assert (=> b!1092871 m!1244579))

(declare-fun m!1244593 () Bool)

(assert (=> b!1092870 m!1244593))

(declare-fun m!1244595 () Bool)

(assert (=> b!1092869 m!1244595))

(declare-fun m!1244597 () Bool)

(assert (=> b!1092874 m!1244597))

(assert (=> d!307047 d!307749))

(declare-fun d!307751 () Bool)

(assert (=> d!307751 (dynLambda!4577 lambda!41626 lt!366207)))

(declare-fun lt!366595 () Unit!15909)

(assert (=> d!307751 (= lt!366595 (choose!7014 (list!3758 lt!366231) lambda!41626 lt!366207))))

(declare-fun e!691665 () Bool)

(assert (=> d!307751 e!691665))

(declare-fun res!485573 () Bool)

(assert (=> d!307751 (=> (not res!485573) (not e!691665))))

(assert (=> d!307751 (= res!485573 (forall!2345 (list!3758 lt!366231) lambda!41626))))

(assert (=> d!307751 (= (forallContained!492 (list!3758 lt!366231) lambda!41626 lt!366207) lt!366595)))

(declare-fun b!1092875 () Bool)

(assert (=> b!1092875 (= e!691665 (contains!1773 (list!3758 lt!366231) lt!366207))))

(assert (= (and d!307751 res!485573) b!1092875))

(declare-fun b_lambda!30875 () Bool)

(assert (=> (not b_lambda!30875) (not d!307751)))

(assert (=> d!307751 m!1244547))

(assert (=> d!307751 m!1242861))

(declare-fun m!1244599 () Bool)

(assert (=> d!307751 m!1244599))

(assert (=> d!307751 m!1242861))

(declare-fun m!1244601 () Bool)

(assert (=> d!307751 m!1244601))

(assert (=> b!1092875 m!1242861))

(assert (=> b!1092875 m!1244083))

(assert (=> b!1091934 d!307751))

(declare-fun d!307753 () Bool)

(assert (=> d!307753 (= (list!3758 lt!366231) (list!3760 (c!185027 lt!366231)))))

(declare-fun bs!258213 () Bool)

(assert (= bs!258213 d!307753))

(declare-fun m!1244603 () Bool)

(assert (=> bs!258213 m!1244603))

(assert (=> b!1091934 d!307753))

(declare-fun d!307755 () Bool)

(assert (=> d!307755 (= (inv!13430 (xs!5892 (c!185027 objs!8))) (<= (size!8110 (innerList!3259 (xs!5892 (c!185027 objs!8)))) 2147483647))))

(declare-fun bs!258214 () Bool)

(assert (= bs!258214 d!307755))

(declare-fun m!1244605 () Bool)

(assert (=> bs!258214 m!1244605))

(assert (=> b!1092026 d!307755))

(declare-fun d!307757 () Bool)

(declare-fun res!485574 () Bool)

(declare-fun e!691667 () Bool)

(assert (=> d!307757 (=> res!485574 e!691667)))

(assert (=> d!307757 (= res!485574 ((_ is Nil!10490) (filter!246 lt!365944 lambda!41524)))))

(assert (=> d!307757 (= (subseq!140 (filter!246 lt!365944 lambda!41524) lt!365944) e!691667)))

(declare-fun b!1092876 () Bool)

(declare-fun e!691666 () Bool)

(assert (=> b!1092876 (= e!691667 e!691666)))

(declare-fun res!485576 () Bool)

(assert (=> b!1092876 (=> (not res!485576) (not e!691666))))

(assert (=> b!1092876 (= res!485576 ((_ is Cons!10490) lt!365944))))

(declare-fun b!1092878 () Bool)

(declare-fun e!691668 () Bool)

(assert (=> b!1092878 (= e!691668 (subseq!140 (t!102180 (filter!246 lt!365944 lambda!41524)) (t!102180 lt!365944)))))

(declare-fun b!1092879 () Bool)

(declare-fun e!691669 () Bool)

(assert (=> b!1092879 (= e!691669 (subseq!140 (filter!246 lt!365944 lambda!41524) (t!102180 lt!365944)))))

(declare-fun b!1092877 () Bool)

(assert (=> b!1092877 (= e!691666 e!691669)))

(declare-fun res!485577 () Bool)

(assert (=> b!1092877 (=> res!485577 e!691669)))

(assert (=> b!1092877 (= res!485577 e!691668)))

(declare-fun res!485575 () Bool)

(assert (=> b!1092877 (=> (not res!485575) (not e!691668))))

(assert (=> b!1092877 (= res!485575 (= (h!15891 (filter!246 lt!365944 lambda!41524)) (h!15891 lt!365944)))))

(assert (= (and d!307757 (not res!485574)) b!1092876))

(assert (= (and b!1092876 res!485576) b!1092877))

(assert (= (and b!1092877 res!485575) b!1092878))

(assert (= (and b!1092877 (not res!485577)) b!1092879))

(declare-fun m!1244607 () Bool)

(assert (=> b!1092878 m!1244607))

(assert (=> b!1092879 m!1242395))

(declare-fun m!1244609 () Bool)

(assert (=> b!1092879 m!1244609))

(assert (=> d!307141 d!307757))

(assert (=> d!307141 d!307183))

(declare-fun d!307759 () Bool)

(assert (=> d!307759 (subseq!140 (filter!246 lt!365944 lambda!41524) lt!365944)))

(assert (=> d!307759 true))

(declare-fun _$14!600 () Unit!15909)

(assert (=> d!307759 (= (choose!7016 lt!365944 lambda!41524) _$14!600)))

(declare-fun bs!258215 () Bool)

(assert (= bs!258215 d!307759))

(assert (=> bs!258215 m!1242395))

(assert (=> bs!258215 m!1242395))

(assert (=> bs!258215 m!1242865))

(assert (=> d!307141 d!307759))

(assert (=> d!307169 d!307693))

(assert (=> d!307169 d!307197))

(declare-fun b!1092881 () Bool)

(declare-fun e!691672 () Bool)

(assert (=> b!1092881 (= e!691672 (contains!1776 (xs!5892 (c!185027 lt!365922)) lt!365939))))

(declare-fun d!307761 () Bool)

(declare-fun lt!366596 () Bool)

(assert (=> d!307761 (= lt!366596 (contains!1773 (list!3760 (c!185027 lt!365922)) lt!365939))))

(declare-fun e!691670 () Bool)

(assert (=> d!307761 (= lt!366596 e!691670)))

(declare-fun res!485578 () Bool)

(assert (=> d!307761 (=> (not res!485578) (not e!691670))))

(assert (=> d!307761 (= res!485578 (not ((_ is Empty!3199) (c!185027 lt!365922))))))

(assert (=> d!307761 (= (contains!1774 (c!185027 lt!365922) lt!365939) lt!366596)))

(declare-fun b!1092883 () Bool)

(declare-fun e!691671 () Bool)

(assert (=> b!1092883 (= e!691671 (contains!1774 (right!9335 (c!185027 lt!365922)) lt!365939))))

(declare-fun b!1092882 () Bool)

(assert (=> b!1092882 (= e!691672 e!691671)))

(declare-fun res!485579 () Bool)

(assert (=> b!1092882 (= res!485579 (contains!1774 (left!9005 (c!185027 lt!365922)) lt!365939))))

(assert (=> b!1092882 (=> res!485579 e!691671)))

(declare-fun b!1092880 () Bool)

(assert (=> b!1092880 (= e!691670 e!691672)))

(declare-fun c!185281 () Bool)

(assert (=> b!1092880 (= c!185281 ((_ is Leaf!5100) (c!185027 lt!365922)))))

(assert (= (and d!307761 res!485578) b!1092880))

(assert (= (and b!1092880 c!185281) b!1092881))

(assert (= (and b!1092880 (not c!185281)) b!1092882))

(assert (= (and b!1092882 (not res!485579)) b!1092883))

(declare-fun m!1244611 () Bool)

(assert (=> b!1092881 m!1244611))

(assert (=> d!307761 m!1242967))

(assert (=> d!307761 m!1242967))

(declare-fun m!1244613 () Bool)

(assert (=> d!307761 m!1244613))

(declare-fun m!1244615 () Bool)

(assert (=> b!1092883 m!1244615))

(declare-fun m!1244617 () Bool)

(assert (=> b!1092882 m!1244617))

(assert (=> d!307169 d!307761))

(declare-fun b!1092885 () Bool)

(declare-fun e!691673 () List!10506)

(declare-fun e!691674 () List!10506)

(assert (=> b!1092885 (= e!691673 e!691674)))

(declare-fun c!185283 () Bool)

(assert (=> b!1092885 (= c!185283 ((_ is Leaf!5100) (c!185027 lt!365934)))))

(declare-fun b!1092884 () Bool)

(assert (=> b!1092884 (= e!691673 Nil!10490)))

(declare-fun b!1092886 () Bool)

(assert (=> b!1092886 (= e!691674 (list!3762 (xs!5892 (c!185027 lt!365934))))))

(declare-fun d!307763 () Bool)

(declare-fun c!185282 () Bool)

(assert (=> d!307763 (= c!185282 ((_ is Empty!3199) (c!185027 lt!365934)))))

(assert (=> d!307763 (= (list!3760 (c!185027 lt!365934)) e!691673)))

(declare-fun b!1092887 () Bool)

(assert (=> b!1092887 (= e!691674 (++!2839 (list!3760 (left!9005 (c!185027 lt!365934))) (list!3760 (right!9335 (c!185027 lt!365934)))))))

(assert (= (and d!307763 c!185282) b!1092884))

(assert (= (and d!307763 (not c!185282)) b!1092885))

(assert (= (and b!1092885 c!185283) b!1092886))

(assert (= (and b!1092885 (not c!185283)) b!1092887))

(declare-fun m!1244619 () Bool)

(assert (=> b!1092886 m!1244619))

(declare-fun m!1244621 () Bool)

(assert (=> b!1092887 m!1244621))

(declare-fun m!1244623 () Bool)

(assert (=> b!1092887 m!1244623))

(assert (=> b!1092887 m!1244621))

(assert (=> b!1092887 m!1244623))

(declare-fun m!1244625 () Bool)

(assert (=> b!1092887 m!1244625))

(assert (=> d!307145 d!307763))

(assert (=> d!307173 d!307177))

(declare-fun d!307765 () Bool)

(declare-fun e!691675 () Bool)

(assert (=> d!307765 e!691675))

(declare-fun res!485580 () Bool)

(assert (=> d!307765 (=> res!485580 e!691675)))

(assert (=> d!307765 (= res!485580 (isEmpty!6660 lt!365944))))

(assert (=> d!307765 true))

(declare-fun _$38!319 () Unit!15909)

(assert (=> d!307765 (= (choose!7017 lt!365944 lambda!41524) _$38!319)))

(declare-fun b!1092888 () Bool)

(assert (=> b!1092888 (= e!691675 (< (size!8110 (filter!246 lt!365944 lambda!41524)) (size!8110 lt!365944)))))

(assert (= (and d!307765 (not res!485580)) b!1092888))

(assert (=> d!307765 m!1242355))

(assert (=> b!1092888 m!1242395))

(assert (=> b!1092888 m!1242395))

(assert (=> b!1092888 m!1242397))

(assert (=> b!1092888 m!1242377))

(assert (=> d!307173 d!307765))

(declare-fun d!307767 () Bool)

(declare-fun res!485581 () Bool)

(declare-fun e!691676 () Bool)

(assert (=> d!307767 (=> res!485581 e!691676)))

(assert (=> d!307767 (= res!485581 ((_ is Nil!10490) lt!365944))))

(assert (=> d!307767 (= (forall!2345 lt!365944 lambda!41524) e!691676)))

(declare-fun b!1092889 () Bool)

(declare-fun e!691677 () Bool)

(assert (=> b!1092889 (= e!691676 e!691677)))

(declare-fun res!485582 () Bool)

(assert (=> b!1092889 (=> (not res!485582) (not e!691677))))

(assert (=> b!1092889 (= res!485582 (dynLambda!4577 lambda!41524 (h!15891 lt!365944)))))

(declare-fun b!1092890 () Bool)

(assert (=> b!1092890 (= e!691677 (forall!2345 (t!102180 lt!365944) lambda!41524))))

(assert (= (and d!307767 (not res!485581)) b!1092889))

(assert (= (and b!1092889 res!485582) b!1092890))

(declare-fun b_lambda!30877 () Bool)

(assert (=> (not b_lambda!30877) (not b!1092889)))

(assert (=> b!1092889 m!1242939))

(declare-fun m!1244627 () Bool)

(assert (=> b!1092890 m!1244627))

(assert (=> d!307173 d!307767))

(declare-fun d!307769 () Bool)

(assert (=> d!307769 (= (usesJsonRules!0 (_2!6679 (h!15891 lt!365947))) (= (rules!9077 (_2!6679 (h!15891 lt!365947))) (rules!109 JsonLexer!291)))))

(declare-fun bs!258216 () Bool)

(assert (= bs!258216 d!307769))

(assert (=> bs!258216 m!1244363))

(assert (=> bs!258066 d!307769))

(declare-fun d!307771 () Bool)

(assert (=> d!307771 (= (list!3758 lt!365986) (list!3760 (c!185027 lt!365986)))))

(declare-fun bs!258217 () Bool)

(assert (= bs!258217 d!307771))

(declare-fun m!1244629 () Bool)

(assert (=> bs!258217 m!1244629))

(assert (=> b!1091757 d!307771))

(declare-fun b!1092891 () Bool)

(declare-fun res!485584 () Bool)

(declare-fun e!691679 () Bool)

(assert (=> b!1092891 (=> (not res!485584) (not e!691679))))

(declare-fun lt!366597 () List!10506)

(assert (=> b!1092891 (= res!485584 (= ((_ map implies) (content!1511 lt!366597) (content!1511 (list!3758 objs!8))) ((as const (InoxSet tuple2!11706)) true)))))

(declare-fun b!1092892 () Bool)

(declare-fun e!691678 () List!10506)

(assert (=> b!1092892 (= e!691678 Nil!10490)))

(declare-fun b!1092893 () Bool)

(declare-fun e!691680 () List!10506)

(assert (=> b!1092893 (= e!691678 e!691680)))

(declare-fun c!185284 () Bool)

(assert (=> b!1092893 (= c!185284 (dynLambda!4577 lambda!41524 (h!15891 (list!3758 objs!8))))))

(declare-fun bm!80280 () Bool)

(declare-fun call!80285 () List!10506)

(assert (=> bm!80280 (= call!80285 (filter!246 (t!102180 (list!3758 objs!8)) lambda!41524))))

(declare-fun b!1092894 () Bool)

(assert (=> b!1092894 (= e!691680 (Cons!10490 (h!15891 (list!3758 objs!8)) call!80285))))

(declare-fun d!307773 () Bool)

(assert (=> d!307773 e!691679))

(declare-fun res!485583 () Bool)

(assert (=> d!307773 (=> (not res!485583) (not e!691679))))

(assert (=> d!307773 (= res!485583 (<= (size!8110 lt!366597) (size!8110 (list!3758 objs!8))))))

(assert (=> d!307773 (= lt!366597 e!691678)))

(declare-fun c!185285 () Bool)

(assert (=> d!307773 (= c!185285 ((_ is Nil!10490) (list!3758 objs!8)))))

(assert (=> d!307773 (= (filter!246 (list!3758 objs!8) lambda!41524) lt!366597)))

(declare-fun b!1092895 () Bool)

(assert (=> b!1092895 (= e!691680 call!80285)))

(declare-fun b!1092896 () Bool)

(assert (=> b!1092896 (= e!691679 (forall!2345 lt!366597 lambda!41524))))

(assert (= (and d!307773 c!185285) b!1092892))

(assert (= (and d!307773 (not c!185285)) b!1092893))

(assert (= (and b!1092893 c!185284) b!1092894))

(assert (= (and b!1092893 (not c!185284)) b!1092895))

(assert (= (or b!1092894 b!1092895) bm!80280))

(assert (= (and d!307773 res!485583) b!1092891))

(assert (= (and b!1092891 res!485584) b!1092896))

(declare-fun b_lambda!30879 () Bool)

(assert (=> (not b_lambda!30879) (not b!1092893)))

(declare-fun m!1244631 () Bool)

(assert (=> b!1092891 m!1244631))

(assert (=> b!1092891 m!1242349))

(assert (=> b!1092891 m!1244373))

(declare-fun m!1244633 () Bool)

(assert (=> bm!80280 m!1244633))

(declare-fun m!1244635 () Bool)

(assert (=> b!1092896 m!1244635))

(assert (=> b!1092893 m!1244337))

(declare-fun m!1244637 () Bool)

(assert (=> d!307773 m!1244637))

(assert (=> d!307773 m!1242349))

(assert (=> d!307773 m!1242959))

(assert (=> b!1091757 d!307773))

(assert (=> b!1091757 d!307171))

(declare-fun d!307775 () Bool)

(declare-fun res!485585 () Bool)

(declare-fun e!691681 () Bool)

(assert (=> d!307775 (=> res!485585 e!691681)))

(assert (=> d!307775 (= res!485585 ((_ is Nil!10490) (t!102180 lt!365945)))))

(assert (=> d!307775 (= (forall!2345 (t!102180 lt!365945) lambda!41523) e!691681)))

(declare-fun b!1092897 () Bool)

(declare-fun e!691682 () Bool)

(assert (=> b!1092897 (= e!691681 e!691682)))

(declare-fun res!485586 () Bool)

(assert (=> b!1092897 (=> (not res!485586) (not e!691682))))

(assert (=> b!1092897 (= res!485586 (dynLambda!4577 lambda!41523 (h!15891 (t!102180 lt!365945))))))

(declare-fun b!1092898 () Bool)

(assert (=> b!1092898 (= e!691682 (forall!2345 (t!102180 (t!102180 lt!365945)) lambda!41523))))

(assert (= (and d!307775 (not res!485585)) b!1092897))

(assert (= (and b!1092897 res!485586) b!1092898))

(declare-fun b_lambda!30881 () Bool)

(assert (=> (not b_lambda!30881) (not b!1092897)))

(declare-fun m!1244639 () Bool)

(assert (=> b!1092897 m!1244639))

(declare-fun m!1244641 () Bool)

(assert (=> b!1092898 m!1244641))

(assert (=> b!1091953 d!307775))

(declare-fun d!307777 () Bool)

(declare-fun lt!366598 () Bool)

(assert (=> d!307777 (= lt!366598 (select (content!1511 lt!365944) lt!365939))))

(declare-fun e!691683 () Bool)

(assert (=> d!307777 (= lt!366598 e!691683)))

(declare-fun res!485588 () Bool)

(assert (=> d!307777 (=> (not res!485588) (not e!691683))))

(assert (=> d!307777 (= res!485588 ((_ is Cons!10490) lt!365944))))

(assert (=> d!307777 (= (contains!1773 lt!365944 lt!365939) lt!366598)))

(declare-fun b!1092899 () Bool)

(declare-fun e!691684 () Bool)

(assert (=> b!1092899 (= e!691683 e!691684)))

(declare-fun res!485587 () Bool)

(assert (=> b!1092899 (=> res!485587 e!691684)))

(assert (=> b!1092899 (= res!485587 (= (h!15891 lt!365944) lt!365939))))

(declare-fun b!1092900 () Bool)

(assert (=> b!1092900 (= e!691684 (contains!1773 (t!102180 lt!365944) lt!365939))))

(assert (= (and d!307777 res!485588) b!1092899))

(assert (= (and b!1092899 (not res!485587)) b!1092900))

(assert (=> d!307777 m!1242489))

(declare-fun m!1244643 () Bool)

(assert (=> d!307777 m!1244643))

(declare-fun m!1244645 () Bool)

(assert (=> b!1092900 m!1244645))

(assert (=> b!1091753 d!307777))

(declare-fun d!307779 () Bool)

(declare-fun res!485589 () Bool)

(declare-fun e!691685 () Bool)

(assert (=> d!307779 (=> res!485589 e!691685)))

(assert (=> d!307779 (= res!485589 ((_ is Nil!10490) lt!365975))))

(assert (=> d!307779 (= (forall!2345 lt!365975 lambda!41526) e!691685)))

(declare-fun b!1092901 () Bool)

(declare-fun e!691686 () Bool)

(assert (=> b!1092901 (= e!691685 e!691686)))

(declare-fun res!485590 () Bool)

(assert (=> b!1092901 (=> (not res!485590) (not e!691686))))

(assert (=> b!1092901 (= res!485590 (dynLambda!4577 lambda!41526 (h!15891 lt!365975)))))

(declare-fun b!1092902 () Bool)

(assert (=> b!1092902 (= e!691686 (forall!2345 (t!102180 lt!365975) lambda!41526))))

(assert (= (and d!307779 (not res!485589)) b!1092901))

(assert (= (and b!1092901 res!485590) b!1092902))

(declare-fun b_lambda!30883 () Bool)

(assert (=> (not b_lambda!30883) (not b!1092901)))

(declare-fun m!1244647 () Bool)

(assert (=> b!1092901 m!1244647))

(declare-fun m!1244649 () Bool)

(assert (=> b!1092902 m!1244649))

(assert (=> b!1091748 d!307779))

(declare-fun d!307781 () Bool)

(declare-fun lt!366601 () tuple2!11706)

(assert (=> d!307781 (contains!1773 (list!3758 objs!8) lt!366601)))

(declare-fun e!691691 () tuple2!11706)

(assert (=> d!307781 (= lt!366601 e!691691)))

(declare-fun c!185288 () Bool)

(assert (=> d!307781 (= c!185288 (= (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2))) 0))))

(declare-fun e!691692 () Bool)

(assert (=> d!307781 e!691692))

(declare-fun res!485593 () Bool)

(assert (=> d!307781 (=> (not res!485593) (not e!691692))))

(assert (=> d!307781 (= res!485593 (<= 0 (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2)))))))

(assert (=> d!307781 (= (apply!2052 (list!3758 objs!8) (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2)))) lt!366601)))

(declare-fun b!1092909 () Bool)

(assert (=> b!1092909 (= e!691692 (< (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2))) (size!8110 (list!3758 objs!8))))))

(declare-fun b!1092910 () Bool)

(declare-fun head!2031 (List!10506) tuple2!11706)

(assert (=> b!1092910 (= e!691691 (head!2031 (list!3758 objs!8)))))

(declare-fun b!1092911 () Bool)

(declare-fun tail!1591 (List!10506) List!10506)

(assert (=> b!1092911 (= e!691691 (apply!2052 (tail!1591 (list!3758 objs!8)) (- (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2))) 1)))))

(assert (= (and d!307781 res!485593) b!1092909))

(assert (= (and d!307781 c!185288) b!1092910))

(assert (= (and d!307781 (not c!185288)) b!1092911))

(assert (=> d!307781 m!1242349))

(declare-fun m!1244651 () Bool)

(assert (=> d!307781 m!1244651))

(assert (=> b!1092909 m!1242349))

(assert (=> b!1092909 m!1242959))

(assert (=> b!1092910 m!1242349))

(declare-fun m!1244653 () Bool)

(assert (=> b!1092910 m!1244653))

(assert (=> b!1092911 m!1242349))

(declare-fun m!1244655 () Bool)

(assert (=> b!1092911 m!1244655))

(assert (=> b!1092911 m!1244655))

(declare-fun m!1244657 () Bool)

(assert (=> b!1092911 m!1244657))

(assert (=> d!307203 d!307781))

(assert (=> d!307203 d!307171))

(declare-fun b!1092926 () Bool)

(declare-fun e!691703 () tuple2!11706)

(declare-fun call!80288 () tuple2!11706)

(assert (=> b!1092926 (= e!691703 call!80288)))

(declare-fun b!1092927 () Bool)

(declare-fun e!691702 () Bool)

(assert (=> b!1092927 (= e!691702 (< (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2))) (size!8112 (c!185027 objs!8))))))

(declare-fun d!307783 () Bool)

(declare-fun lt!366606 () tuple2!11706)

(assert (=> d!307783 (= lt!366606 (apply!2052 (list!3760 (c!185027 objs!8)) (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2)))))))

(declare-fun e!691701 () tuple2!11706)

(assert (=> d!307783 (= lt!366606 e!691701)))

(declare-fun c!185295 () Bool)

(assert (=> d!307783 (= c!185295 ((_ is Leaf!5100) (c!185027 objs!8)))))

(assert (=> d!307783 e!691702))

(declare-fun res!485596 () Bool)

(assert (=> d!307783 (=> (not res!485596) (not e!691702))))

(assert (=> d!307783 (= res!485596 (<= 0 (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2)))))))

(assert (=> d!307783 (= (apply!2053 (c!185027 objs!8) (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2)))) lt!366606)))

(declare-fun b!1092928 () Bool)

(declare-fun e!691704 () Int)

(assert (=> b!1092928 (= e!691704 (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2))))))

(declare-fun b!1092929 () Bool)

(assert (=> b!1092929 (= e!691701 e!691703)))

(declare-fun lt!366607 () Bool)

(declare-fun appendIndex!80 (List!10506 List!10506 Int) Bool)

(assert (=> b!1092929 (= lt!366607 (appendIndex!80 (list!3760 (left!9005 (c!185027 objs!8))) (list!3760 (right!9335 (c!185027 objs!8))) (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2)))))))

(declare-fun c!185297 () Bool)

(assert (=> b!1092929 (= c!185297 (< (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2))) (size!8112 (left!9005 (c!185027 objs!8)))))))

(declare-fun bm!80283 () Bool)

(declare-fun c!185296 () Bool)

(assert (=> bm!80283 (= c!185296 c!185297)))

(assert (=> bm!80283 (= call!80288 (apply!2053 (ite c!185297 (left!9005 (c!185027 objs!8)) (right!9335 (c!185027 objs!8))) e!691704))))

(declare-fun b!1092930 () Bool)

(declare-fun apply!2055 (IArray!6403 Int) tuple2!11706)

(assert (=> b!1092930 (= e!691701 (apply!2055 (xs!5892 (c!185027 objs!8)) (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2)))))))

(declare-fun b!1092931 () Bool)

(assert (=> b!1092931 (= e!691704 (- (ite (>= lt!365946 0) (div lt!365946 2) (- (div (- lt!365946) 2))) (size!8112 (left!9005 (c!185027 objs!8)))))))

(declare-fun b!1092932 () Bool)

(assert (=> b!1092932 (= e!691703 call!80288)))

(assert (= (and d!307783 res!485596) b!1092927))

(assert (= (and d!307783 c!185295) b!1092930))

(assert (= (and d!307783 (not c!185295)) b!1092929))

(assert (= (and b!1092929 c!185297) b!1092932))

(assert (= (and b!1092929 (not c!185297)) b!1092926))

(assert (= (or b!1092932 b!1092926) bm!80283))

(assert (= (and bm!80283 c!185296) b!1092928))

(assert (= (and bm!80283 (not c!185296)) b!1092931))

(declare-fun m!1244659 () Bool)

(assert (=> b!1092930 m!1244659))

(assert (=> b!1092929 m!1243865))

(assert (=> b!1092929 m!1243867))

(assert (=> b!1092929 m!1243865))

(assert (=> b!1092929 m!1243867))

(declare-fun m!1244661 () Bool)

(assert (=> b!1092929 m!1244661))

(assert (=> b!1092929 m!1244573))

(assert (=> b!1092927 m!1242961))

(assert (=> d!307783 m!1242917))

(assert (=> d!307783 m!1242917))

(declare-fun m!1244663 () Bool)

(assert (=> d!307783 m!1244663))

(declare-fun m!1244665 () Bool)

(assert (=> bm!80283 m!1244665))

(assert (=> b!1092931 m!1244573))

(assert (=> d!307203 d!307783))

(declare-fun d!307785 () Bool)

(declare-fun lt!366608 () Int)

(assert (=> d!307785 (>= lt!366608 0)))

(declare-fun e!691705 () Int)

(assert (=> d!307785 (= lt!366608 e!691705)))

(declare-fun c!185298 () Bool)

(assert (=> d!307785 (= c!185298 ((_ is Nil!10490) (t!102180 lt!365944)))))

(assert (=> d!307785 (= (size!8110 (t!102180 lt!365944)) lt!366608)))

(declare-fun b!1092933 () Bool)

(assert (=> b!1092933 (= e!691705 0)))

(declare-fun b!1092934 () Bool)

(assert (=> b!1092934 (= e!691705 (+ 1 (size!8110 (t!102180 (t!102180 lt!365944)))))))

(assert (= (and d!307785 c!185298) b!1092933))

(assert (= (and d!307785 (not c!185298)) b!1092934))

(declare-fun m!1244667 () Bool)

(assert (=> b!1092934 m!1244667))

(assert (=> b!1091750 d!307785))

(declare-fun d!307787 () Bool)

(declare-fun res!485602 () Bool)

(declare-fun e!691706 () Bool)

(assert (=> d!307787 (=> res!485602 e!691706)))

(assert (=> d!307787 (= res!485602 (not ((_ is Node!3199) (filter!249 (c!185027 objs!8) lambda!41524))))))

(assert (=> d!307787 (= (isBalanced!884 (filter!249 (c!185027 objs!8) lambda!41524)) e!691706)))

(declare-fun b!1092935 () Bool)

(declare-fun e!691707 () Bool)

(assert (=> b!1092935 (= e!691707 (not (isEmpty!6662 (right!9335 (filter!249 (c!185027 objs!8) lambda!41524)))))))

(declare-fun b!1092936 () Bool)

(declare-fun res!485599 () Bool)

(assert (=> b!1092936 (=> (not res!485599) (not e!691707))))

(assert (=> b!1092936 (= res!485599 (isBalanced!884 (right!9335 (filter!249 (c!185027 objs!8) lambda!41524))))))

(declare-fun b!1092937 () Bool)

(assert (=> b!1092937 (= e!691706 e!691707)))

(declare-fun res!485598 () Bool)

(assert (=> b!1092937 (=> (not res!485598) (not e!691707))))

(assert (=> b!1092937 (= res!485598 (<= (- 1) (- (height!420 (left!9005 (filter!249 (c!185027 objs!8) lambda!41524))) (height!420 (right!9335 (filter!249 (c!185027 objs!8) lambda!41524))))))))

(declare-fun b!1092938 () Bool)

(declare-fun res!485601 () Bool)

(assert (=> b!1092938 (=> (not res!485601) (not e!691707))))

(assert (=> b!1092938 (= res!485601 (isBalanced!884 (left!9005 (filter!249 (c!185027 objs!8) lambda!41524))))))

(declare-fun b!1092939 () Bool)

(declare-fun res!485600 () Bool)

(assert (=> b!1092939 (=> (not res!485600) (not e!691707))))

(assert (=> b!1092939 (= res!485600 (<= (- (height!420 (left!9005 (filter!249 (c!185027 objs!8) lambda!41524))) (height!420 (right!9335 (filter!249 (c!185027 objs!8) lambda!41524)))) 1))))

(declare-fun b!1092940 () Bool)

(declare-fun res!485597 () Bool)

(assert (=> b!1092940 (=> (not res!485597) (not e!691707))))

(assert (=> b!1092940 (= res!485597 (not (isEmpty!6662 (left!9005 (filter!249 (c!185027 objs!8) lambda!41524)))))))

(assert (= (and d!307787 (not res!485602)) b!1092937))

(assert (= (and b!1092937 res!485598) b!1092939))

(assert (= (and b!1092939 res!485600) b!1092938))

(assert (= (and b!1092938 res!485601) b!1092936))

(assert (= (and b!1092936 res!485599) b!1092940))

(assert (= (and b!1092940 res!485597) b!1092935))

(declare-fun m!1244669 () Bool)

(assert (=> b!1092938 m!1244669))

(declare-fun m!1244671 () Bool)

(assert (=> b!1092939 m!1244671))

(declare-fun m!1244673 () Bool)

(assert (=> b!1092939 m!1244673))

(assert (=> b!1092937 m!1244671))

(assert (=> b!1092937 m!1244673))

(declare-fun m!1244675 () Bool)

(assert (=> b!1092936 m!1244675))

(declare-fun m!1244677 () Bool)

(assert (=> b!1092935 m!1244677))

(declare-fun m!1244679 () Bool)

(assert (=> b!1092940 m!1244679))

(assert (=> d!307051 d!307787))

(declare-fun b!1092941 () Bool)

(declare-fun e!691709 () Conc!3199)

(assert (=> b!1092941 (= e!691709 (c!185027 objs!8))))

(declare-fun b!1092942 () Bool)

(declare-fun lt!366610 () Unit!15909)

(assert (=> b!1092942 (= lt!366610 (lemmaFilterConcat!6 (list!3760 (left!9005 (c!185027 objs!8))) (list!3760 (right!9335 (c!185027 objs!8))) lambda!41524))))

(declare-fun e!691711 () Conc!3199)

(assert (=> b!1092942 (= e!691711 (++!2841 (filter!249 (left!9005 (c!185027 objs!8)) lambda!41524) (filter!249 (right!9335 (c!185027 objs!8)) lambda!41524)))))

(declare-fun b!1092943 () Bool)

(declare-fun c!185301 () Bool)

(declare-fun lt!366609 () IArray!6403)

(assert (=> b!1092943 (= c!185301 (= (size!8114 lt!366609) 0))))

(assert (=> b!1092943 (= lt!366609 (filter!251 (xs!5892 (c!185027 objs!8)) lambda!41524))))

(declare-fun e!691710 () Conc!3199)

(assert (=> b!1092943 (= e!691711 e!691710)))

(declare-fun b!1092944 () Bool)

(assert (=> b!1092944 (= e!691710 Empty!3199)))

(declare-fun b!1092945 () Bool)

(assert (=> b!1092945 (= e!691710 (Leaf!5100 lt!366609 (size!8114 lt!366609)))))

(declare-fun e!691708 () Bool)

(declare-fun lt!366611 () Conc!3199)

(declare-fun b!1092946 () Bool)

(assert (=> b!1092946 (= e!691708 (= (list!3760 lt!366611) (filter!246 (list!3760 (c!185027 objs!8)) lambda!41524)))))

(declare-fun b!1092947 () Bool)

(assert (=> b!1092947 (= e!691709 e!691711)))

(declare-fun c!185299 () Bool)

(assert (=> b!1092947 (= c!185299 ((_ is Leaf!5100) (c!185027 objs!8)))))

(declare-fun d!307789 () Bool)

(assert (=> d!307789 e!691708))

(declare-fun res!485603 () Bool)

(assert (=> d!307789 (=> (not res!485603) (not e!691708))))

(assert (=> d!307789 (= res!485603 (isBalanced!884 lt!366611))))

(assert (=> d!307789 (= lt!366611 e!691709)))

(declare-fun c!185300 () Bool)

(assert (=> d!307789 (= c!185300 ((_ is Empty!3199) (c!185027 objs!8)))))

(assert (=> d!307789 (isBalanced!884 (c!185027 objs!8))))

(assert (=> d!307789 (= (filter!249 (c!185027 objs!8) lambda!41524) lt!366611)))

(assert (= (and d!307789 c!185300) b!1092941))

(assert (= (and d!307789 (not c!185300)) b!1092947))

(assert (= (and b!1092947 c!185299) b!1092943))

(assert (= (and b!1092947 (not c!185299)) b!1092942))

(assert (= (and b!1092943 c!185301) b!1092944))

(assert (= (and b!1092943 (not c!185301)) b!1092945))

(assert (= (and d!307789 res!485603) b!1092946))

(declare-fun m!1244681 () Bool)

(assert (=> b!1092946 m!1244681))

(assert (=> b!1092946 m!1242917))

(assert (=> b!1092946 m!1242917))

(declare-fun m!1244683 () Bool)

(assert (=> b!1092946 m!1244683))

(declare-fun m!1244685 () Bool)

(assert (=> b!1092945 m!1244685))

(assert (=> b!1092943 m!1244685))

(declare-fun m!1244687 () Bool)

(assert (=> b!1092943 m!1244687))

(declare-fun m!1244689 () Bool)

(assert (=> b!1092942 m!1244689))

(declare-fun m!1244691 () Bool)

(assert (=> b!1092942 m!1244691))

(declare-fun m!1244693 () Bool)

(assert (=> b!1092942 m!1244693))

(assert (=> b!1092942 m!1243867))

(assert (=> b!1092942 m!1243865))

(assert (=> b!1092942 m!1244691))

(assert (=> b!1092942 m!1244689))

(assert (=> b!1092942 m!1243865))

(assert (=> b!1092942 m!1243867))

(declare-fun m!1244695 () Bool)

(assert (=> b!1092942 m!1244695))

(declare-fun m!1244697 () Bool)

(assert (=> d!307789 m!1244697))

(assert (=> d!307789 m!1242513))

(assert (=> d!307051 d!307789))

(declare-fun d!307791 () Bool)

(declare-fun lt!366612 () Bool)

(assert (=> d!307791 (= lt!366612 (select (content!1511 (list!3758 objs!8)) lt!365939))))

(declare-fun e!691712 () Bool)

(assert (=> d!307791 (= lt!366612 e!691712)))

(declare-fun res!485605 () Bool)

(assert (=> d!307791 (=> (not res!485605) (not e!691712))))

(assert (=> d!307791 (= res!485605 ((_ is Cons!10490) (list!3758 objs!8)))))

(assert (=> d!307791 (= (contains!1773 (list!3758 objs!8) lt!365939) lt!366612)))

(declare-fun b!1092948 () Bool)

(declare-fun e!691713 () Bool)

(assert (=> b!1092948 (= e!691712 e!691713)))

(declare-fun res!485604 () Bool)

(assert (=> b!1092948 (=> res!485604 e!691713)))

(assert (=> b!1092948 (= res!485604 (= (h!15891 (list!3758 objs!8)) lt!365939))))

(declare-fun b!1092949 () Bool)

(assert (=> b!1092949 (= e!691713 (contains!1773 (t!102180 (list!3758 objs!8)) lt!365939))))

(assert (= (and d!307791 res!485605) b!1092948))

(assert (= (and b!1092948 (not res!485604)) b!1092949))

(assert (=> d!307791 m!1242349))

(assert (=> d!307791 m!1244373))

(declare-fun m!1244699 () Bool)

(assert (=> d!307791 m!1244699))

(declare-fun m!1244701 () Bool)

(assert (=> b!1092949 m!1244701))

(assert (=> b!1091967 d!307791))

(declare-fun d!307793 () Bool)

(declare-fun lt!366613 () Int)

(assert (=> d!307793 (>= lt!366613 0)))

(declare-fun e!691714 () Int)

(assert (=> d!307793 (= lt!366613 e!691714)))

(declare-fun c!185302 () Bool)

(assert (=> d!307793 (= c!185302 ((_ is Nil!10490) lt!366257))))

(assert (=> d!307793 (= (size!8110 lt!366257) lt!366613)))

(declare-fun b!1092950 () Bool)

(assert (=> b!1092950 (= e!691714 0)))

(declare-fun b!1092951 () Bool)

(assert (=> b!1092951 (= e!691714 (+ 1 (size!8110 (t!102180 lt!366257))))))

(assert (= (and d!307793 c!185302) b!1092950))

(assert (= (and d!307793 (not c!185302)) b!1092951))

(declare-fun m!1244703 () Bool)

(assert (=> b!1092951 m!1244703))

(assert (=> d!307183 d!307793))

(assert (=> d!307183 d!307041))

(assert (=> b!1091958 d!307181))

(assert (=> b!1091958 d!307183))

(assert (=> b!1091958 d!307041))

(assert (=> d!307143 d!307161))

(declare-fun d!307795 () Bool)

(assert (=> d!307795 (forall!2345 lt!365943 lambda!41523)))

(assert (=> d!307795 true))

(declare-fun _$37!260 () Unit!15909)

(assert (=> d!307795 (= (choose!7015 lt!365943 lt!365944 lambda!41523) _$37!260)))

(declare-fun bs!258218 () Bool)

(assert (= bs!258218 d!307795))

(assert (=> bs!258218 m!1242423))

(assert (=> d!307143 d!307795))

(assert (=> d!307143 d!307507))

(declare-fun d!307797 () Bool)

(declare-fun c!185303 () Bool)

(assert (=> d!307797 (= c!185303 ((_ is Nil!10490) lt!365975))))

(declare-fun e!691715 () (InoxSet tuple2!11706))

(assert (=> d!307797 (= (content!1511 lt!365975) e!691715)))

(declare-fun b!1092952 () Bool)

(assert (=> b!1092952 (= e!691715 ((as const (Array tuple2!11706 Bool)) false))))

(declare-fun b!1092953 () Bool)

(assert (=> b!1092953 (= e!691715 ((_ map or) (store ((as const (Array tuple2!11706 Bool)) false) (h!15891 lt!365975) true) (content!1511 (t!102180 lt!365975))))))

(assert (= (and d!307797 c!185303) b!1092952))

(assert (= (and d!307797 (not c!185303)) b!1092953))

(declare-fun m!1244705 () Bool)

(assert (=> b!1092953 m!1244705))

(declare-fun m!1244707 () Bool)

(assert (=> b!1092953 m!1244707))

(assert (=> b!1091743 d!307797))

(assert (=> b!1091743 d!307567))

(declare-fun d!307799 () Bool)

(declare-fun res!485606 () Bool)

(declare-fun e!691716 () Bool)

(assert (=> d!307799 (=> res!485606 e!691716)))

(assert (=> d!307799 (= res!485606 ((_ is Nil!10490) (list!3758 objs!8)))))

(assert (=> d!307799 (= (forall!2345 (list!3758 objs!8) lambda!41526) e!691716)))

(declare-fun b!1092954 () Bool)

(declare-fun e!691717 () Bool)

(assert (=> b!1092954 (= e!691716 e!691717)))

(declare-fun res!485607 () Bool)

(assert (=> b!1092954 (=> (not res!485607) (not e!691717))))

(assert (=> b!1092954 (= res!485607 (dynLambda!4577 lambda!41526 (h!15891 (list!3758 objs!8))))))

(declare-fun b!1092955 () Bool)

(assert (=> b!1092955 (= e!691717 (forall!2345 (t!102180 (list!3758 objs!8)) lambda!41526))))

(assert (= (and d!307799 (not res!485606)) b!1092954))

(assert (= (and b!1092954 res!485607) b!1092955))

(declare-fun b_lambda!30885 () Bool)

(assert (=> (not b_lambda!30885) (not b!1092954)))

(assert (=> b!1092954 m!1244543))

(declare-fun m!1244709 () Bool)

(assert (=> b!1092955 m!1244709))

(assert (=> d!307209 d!307799))

(assert (=> d!307209 d!307171))

(declare-fun d!307801 () Bool)

(declare-fun lt!366615 () Bool)

(assert (=> d!307801 (= lt!366615 (forall!2345 (list!3760 (c!185027 objs!8)) lambda!41526))))

(declare-fun e!691718 () Bool)

(assert (=> d!307801 (= lt!366615 e!691718)))

(declare-fun res!485609 () Bool)

(assert (=> d!307801 (=> res!485609 e!691718)))

(assert (=> d!307801 (= res!485609 ((_ is Empty!3199) (c!185027 objs!8)))))

(assert (=> d!307801 (= (forall!2347 (c!185027 objs!8) lambda!41526) lt!366615)))

(declare-fun b!1092957 () Bool)

(declare-fun e!691719 () Bool)

(assert (=> b!1092957 (= e!691719 (forall!2349 (xs!5892 (c!185027 objs!8)) lambda!41526))))

(declare-fun b!1092956 () Bool)

(assert (=> b!1092956 (= e!691718 e!691719)))

(declare-fun c!185304 () Bool)

(assert (=> b!1092956 (= c!185304 ((_ is Leaf!5100) (c!185027 objs!8)))))

(declare-fun b!1092959 () Bool)

(declare-fun e!691720 () Bool)

(assert (=> b!1092959 (= e!691720 (forall!2347 (right!9335 (c!185027 objs!8)) lambda!41526))))

(declare-fun b!1092958 () Bool)

(assert (=> b!1092958 (= e!691719 e!691720)))

(declare-fun lt!366614 () Unit!15909)

(assert (=> b!1092958 (= lt!366614 (lemmaForallConcat!60 (list!3760 (left!9005 (c!185027 objs!8))) (list!3760 (right!9335 (c!185027 objs!8))) lambda!41526))))

(declare-fun res!485608 () Bool)

(assert (=> b!1092958 (= res!485608 (forall!2347 (left!9005 (c!185027 objs!8)) lambda!41526))))

(assert (=> b!1092958 (=> (not res!485608) (not e!691720))))

(assert (= (and d!307801 (not res!485609)) b!1092956))

(assert (= (and b!1092956 c!185304) b!1092957))

(assert (= (and b!1092956 (not c!185304)) b!1092958))

(assert (= (and b!1092958 res!485608) b!1092959))

(assert (=> d!307801 m!1242917))

(assert (=> d!307801 m!1242917))

(declare-fun m!1244711 () Bool)

(assert (=> d!307801 m!1244711))

(declare-fun m!1244713 () Bool)

(assert (=> b!1092957 m!1244713))

(declare-fun m!1244715 () Bool)

(assert (=> b!1092959 m!1244715))

(assert (=> b!1092958 m!1243865))

(assert (=> b!1092958 m!1243867))

(assert (=> b!1092958 m!1243865))

(assert (=> b!1092958 m!1243867))

(declare-fun m!1244717 () Bool)

(assert (=> b!1092958 m!1244717))

(declare-fun m!1244719 () Bool)

(assert (=> b!1092958 m!1244719))

(assert (=> d!307209 d!307801))

(declare-fun d!307803 () Bool)

(assert (=> d!307803 (= (usesJsonRules!0 (_2!6679 (h!15891 lt!365943))) (= (rules!9077 (_2!6679 (h!15891 lt!365943))) (rules!109 JsonLexer!291)))))

(declare-fun bs!258219 () Bool)

(assert (= bs!258219 d!307803))

(assert (=> bs!258219 m!1244363))

(assert (=> bs!258069 d!307803))

(declare-fun d!307805 () Bool)

(assert (=> d!307805 (dynLambda!4577 lambda!41524 lt!365939)))

(assert (=> d!307805 true))

(declare-fun _$7!656 () Unit!15909)

(assert (=> d!307805 (= (choose!7014 (list!3758 objs!8) lambda!41524 lt!365939) _$7!656)))

(declare-fun b_lambda!30887 () Bool)

(assert (=> (not b_lambda!30887) (not d!307805)))

(declare-fun bs!258220 () Bool)

(assert (= bs!258220 d!307805))

(assert (=> bs!258220 m!1242947))

(assert (=> d!307187 d!307805))

(assert (=> d!307187 d!307659))

(assert (=> d!307201 d!307791))

(assert (=> d!307201 d!307171))

(declare-fun b!1092961 () Bool)

(declare-fun e!691723 () Bool)

(assert (=> b!1092961 (= e!691723 (contains!1776 (xs!5892 (c!185027 objs!8)) lt!365939))))

(declare-fun d!307807 () Bool)

(declare-fun lt!366616 () Bool)

(assert (=> d!307807 (= lt!366616 (contains!1773 (list!3760 (c!185027 objs!8)) lt!365939))))

(declare-fun e!691721 () Bool)

(assert (=> d!307807 (= lt!366616 e!691721)))

(declare-fun res!485610 () Bool)

(assert (=> d!307807 (=> (not res!485610) (not e!691721))))

(assert (=> d!307807 (= res!485610 (not ((_ is Empty!3199) (c!185027 objs!8))))))

(assert (=> d!307807 (= (contains!1774 (c!185027 objs!8) lt!365939) lt!366616)))

(declare-fun b!1092963 () Bool)

(declare-fun e!691722 () Bool)

(assert (=> b!1092963 (= e!691722 (contains!1774 (right!9335 (c!185027 objs!8)) lt!365939))))

(declare-fun b!1092962 () Bool)

(assert (=> b!1092962 (= e!691723 e!691722)))

(declare-fun res!485611 () Bool)

(assert (=> b!1092962 (= res!485611 (contains!1774 (left!9005 (c!185027 objs!8)) lt!365939))))

(assert (=> b!1092962 (=> res!485611 e!691722)))

(declare-fun b!1092960 () Bool)

(assert (=> b!1092960 (= e!691721 e!691723)))

(declare-fun c!185305 () Bool)

(assert (=> b!1092960 (= c!185305 ((_ is Leaf!5100) (c!185027 objs!8)))))

(assert (= (and d!307807 res!485610) b!1092960))

(assert (= (and b!1092960 c!185305) b!1092961))

(assert (= (and b!1092960 (not c!185305)) b!1092962))

(assert (= (and b!1092962 (not res!485611)) b!1092963))

(declare-fun m!1244721 () Bool)

(assert (=> b!1092961 m!1244721))

(assert (=> d!307807 m!1242917))

(assert (=> d!307807 m!1242917))

(declare-fun m!1244723 () Bool)

(assert (=> d!307807 m!1244723))

(declare-fun m!1244725 () Bool)

(assert (=> b!1092963 m!1244725))

(declare-fun m!1244727 () Bool)

(assert (=> b!1092962 m!1244727))

(assert (=> d!307201 d!307807))

(declare-fun d!307809 () Bool)

(declare-fun lt!366617 () Bool)

(assert (=> d!307809 (= lt!366617 (forall!2345 (list!3758 lt!366229) lambda!41628))))

(assert (=> d!307809 (= lt!366617 (forall!2347 (c!185027 lt!366229) lambda!41628))))

(assert (=> d!307809 (= (forall!2344 lt!366229 lambda!41628) lt!366617)))

(declare-fun bs!258221 () Bool)

(assert (= bs!258221 d!307809))

(declare-fun m!1244729 () Bool)

(assert (=> bs!258221 m!1244729))

(assert (=> bs!258221 m!1244729))

(declare-fun m!1244731 () Bool)

(assert (=> bs!258221 m!1244731))

(declare-fun m!1244733 () Bool)

(assert (=> bs!258221 m!1244733))

(assert (=> d!307057 d!307809))

(assert (=> d!307057 d!307175))

(declare-fun b!1092965 () Bool)

(declare-fun e!691724 () List!10506)

(declare-fun e!691725 () List!10506)

(assert (=> b!1092965 (= e!691724 e!691725)))

(declare-fun c!185307 () Bool)

(assert (=> b!1092965 (= c!185307 ((_ is Leaf!5100) (c!185027 (filter!247 objs!8 lambda!41525))))))

(declare-fun b!1092964 () Bool)

(assert (=> b!1092964 (= e!691724 Nil!10490)))

(declare-fun b!1092966 () Bool)

(assert (=> b!1092966 (= e!691725 (list!3762 (xs!5892 (c!185027 (filter!247 objs!8 lambda!41525)))))))

(declare-fun d!307811 () Bool)

(declare-fun c!185306 () Bool)

(assert (=> d!307811 (= c!185306 ((_ is Empty!3199) (c!185027 (filter!247 objs!8 lambda!41525))))))

(assert (=> d!307811 (= (list!3760 (c!185027 (filter!247 objs!8 lambda!41525))) e!691724)))

(declare-fun b!1092967 () Bool)

(assert (=> b!1092967 (= e!691725 (++!2839 (list!3760 (left!9005 (c!185027 (filter!247 objs!8 lambda!41525)))) (list!3760 (right!9335 (c!185027 (filter!247 objs!8 lambda!41525))))))))

(assert (= (and d!307811 c!185306) b!1092964))

(assert (= (and d!307811 (not c!185306)) b!1092965))

(assert (= (and b!1092965 c!185307) b!1092966))

(assert (= (and b!1092965 (not c!185307)) b!1092967))

(declare-fun m!1244735 () Bool)

(assert (=> b!1092966 m!1244735))

(declare-fun m!1244737 () Bool)

(assert (=> b!1092967 m!1244737))

(declare-fun m!1244739 () Bool)

(assert (=> b!1092967 m!1244739))

(assert (=> b!1092967 m!1244737))

(assert (=> b!1092967 m!1244739))

(declare-fun m!1244741 () Bool)

(assert (=> b!1092967 m!1244741))

(assert (=> d!307149 d!307811))

(declare-fun b!1092979 () Bool)

(declare-fun e!691735 () Bool)

(declare-fun e!691736 () Bool)

(assert (=> b!1092979 (= e!691735 e!691736)))

(declare-fun b!1092981 () Bool)

(declare-fun e!691737 () Bool)

(assert (=> b!1092981 (= e!691737 true)))

(declare-fun b!1092980 () Bool)

(assert (=> b!1092980 (= e!691736 e!691737)))

(declare-fun b!1092978 () Bool)

(declare-fun e!691734 () Bool)

(assert (=> b!1092978 (= e!691734 e!691735)))

(assert (=> b!1092013 e!691734))

(assert (= b!1092980 b!1092981))

(assert (= b!1092979 b!1092980))

(assert (= b!1092978 b!1092979))

(assert (= (and b!1092013 ((_ is Cons!10488) (innerList!3258 (xs!5891 (c!185026 (tokens!1349 (_2!6679 lt!365939))))))) b!1092978))

(assert (=> b!1092981 (< (dynLambda!4581 order!6303 (toValue!2867 (transformation!1790 (rule!3213 (h!15889 (innerList!3258 (xs!5891 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))))))) (dynLambda!4582 order!6305 lambda!41525))))

(assert (=> b!1092981 (< (dynLambda!4583 order!6307 (toChars!2726 (transformation!1790 (rule!3213 (h!15889 (innerList!3258 (xs!5891 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))))))) (dynLambda!4582 order!6305 lambda!41525))))

(declare-fun b!1092982 () Bool)

(declare-fun e!691738 () Bool)

(assert (=> b!1092982 (= e!691738 true)))

(declare-fun b!1092984 () Bool)

(declare-fun e!691739 () Bool)

(assert (=> b!1092984 (= e!691739 true)))

(declare-fun b!1092983 () Bool)

(assert (=> b!1092983 (= e!691738 e!691739)))

(assert (=> b!1092011 e!691738))

(assert (= (and b!1092011 ((_ is Node!3198) (left!9004 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))) b!1092982))

(assert (= b!1092983 b!1092984))

(assert (= (and b!1092011 ((_ is Leaf!5099) (left!9004 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))) b!1092983))

(declare-fun b!1092985 () Bool)

(declare-fun e!691740 () Bool)

(assert (=> b!1092985 (= e!691740 true)))

(declare-fun b!1092987 () Bool)

(declare-fun e!691741 () Bool)

(assert (=> b!1092987 (= e!691741 true)))

(declare-fun b!1092986 () Bool)

(assert (=> b!1092986 (= e!691740 e!691741)))

(assert (=> b!1092011 e!691740))

(assert (= (and b!1092011 ((_ is Node!3198) (right!9334 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))) b!1092985))

(assert (= b!1092986 b!1092987))

(assert (= (and b!1092011 ((_ is Leaf!5099) (right!9334 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))) b!1092986))

(declare-fun b!1092988 () Bool)

(declare-fun e!691742 () Bool)

(assert (=> b!1092988 (= e!691742 true)))

(declare-fun b!1092990 () Bool)

(declare-fun e!691743 () Bool)

(assert (=> b!1092990 (= e!691743 true)))

(declare-fun b!1092989 () Bool)

(assert (=> b!1092989 (= e!691742 e!691743)))

(assert (=> b!1091948 e!691742))

(assert (= (and b!1091948 ((_ is Node!3198) (c!185026 (tokens!1349 (_2!6679 lt!366207))))) b!1092988))

(assert (= b!1092989 b!1092990))

(assert (= (and b!1091948 ((_ is Leaf!5099) (c!185026 (tokens!1349 (_2!6679 lt!366207))))) b!1092989))

(declare-fun b!1092992 () Bool)

(declare-fun e!691745 () Bool)

(declare-fun e!691746 () Bool)

(assert (=> b!1092992 (= e!691745 e!691746)))

(declare-fun b!1092994 () Bool)

(declare-fun e!691747 () Bool)

(assert (=> b!1092994 (= e!691747 true)))

(declare-fun b!1092993 () Bool)

(assert (=> b!1092993 (= e!691746 e!691747)))

(declare-fun b!1092991 () Bool)

(declare-fun e!691744 () Bool)

(assert (=> b!1092991 (= e!691744 e!691745)))

(assert (=> b!1091996 e!691744))

(assert (= b!1092993 b!1092994))

(assert (= b!1092992 b!1092993))

(assert (= b!1092991 b!1092992))

(assert (= (and b!1091996 ((_ is Cons!10488) (innerList!3258 (xs!5891 (c!185026 (tokens!1349 (_2!6679 lt!365939))))))) b!1092991))

(assert (=> b!1092994 (< (dynLambda!4581 order!6303 (toValue!2867 (transformation!1790 (rule!3213 (h!15889 (innerList!3258 (xs!5891 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))))))) (dynLambda!4582 order!6305 lambda!41526))))

(assert (=> b!1092994 (< (dynLambda!4583 order!6307 (toChars!2726 (transformation!1790 (rule!3213 (h!15889 (innerList!3258 (xs!5891 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))))))) (dynLambda!4582 order!6305 lambda!41526))))

(declare-fun b!1092997 () Bool)

(declare-fun e!691750 () Bool)

(assert (=> b!1092997 (= e!691750 true)))

(declare-fun b!1092996 () Bool)

(declare-fun e!691749 () Bool)

(assert (=> b!1092996 (= e!691749 e!691750)))

(declare-fun b!1092995 () Bool)

(declare-fun e!691748 () Bool)

(assert (=> b!1092995 (= e!691748 e!691749)))

(assert (=> b!1091947 e!691748))

(assert (= b!1092996 b!1092997))

(assert (= b!1092995 b!1092996))

(assert (= (and b!1091947 ((_ is Cons!10489) (rules!9077 (_2!6679 lt!366207)))) b!1092995))

(assert (=> b!1092997 (< (dynLambda!4581 order!6303 (toValue!2867 (transformation!1790 (h!15890 (rules!9077 (_2!6679 lt!366207)))))) (dynLambda!4582 order!6305 lambda!41626))))

(assert (=> b!1092997 (< (dynLambda!4583 order!6307 (toChars!2726 (transformation!1790 (h!15890 (rules!9077 (_2!6679 lt!366207)))))) (dynLambda!4582 order!6305 lambda!41626))))

(declare-fun b!1093000 () Bool)

(declare-fun e!691753 () Bool)

(assert (=> b!1093000 (= e!691753 true)))

(declare-fun b!1092999 () Bool)

(declare-fun e!691752 () Bool)

(assert (=> b!1092999 (= e!691752 e!691753)))

(declare-fun b!1092998 () Bool)

(declare-fun e!691751 () Bool)

(assert (=> b!1092998 (= e!691751 e!691752)))

(assert (=> b!1092008 e!691751))

(assert (= b!1092999 b!1093000))

(assert (= b!1092998 b!1092999))

(assert (= (and b!1092008 ((_ is Cons!10489) (t!102179 (rules!9077 (_2!6679 lt!365939))))) b!1092998))

(assert (=> b!1093000 (< (dynLambda!4581 order!6303 (toValue!2867 (transformation!1790 (h!15890 (t!102179 (rules!9077 (_2!6679 lt!365939))))))) (dynLambda!4582 order!6305 lambda!41524))))

(assert (=> b!1093000 (< (dynLambda!4583 order!6307 (toChars!2726 (transformation!1790 (h!15890 (t!102179 (rules!9077 (_2!6679 lt!365939))))))) (dynLambda!4582 order!6305 lambda!41524))))

(declare-fun b!1093011 () Bool)

(declare-fun e!691762 () Bool)

(declare-fun tp!326526 () Bool)

(declare-fun inv!13434 (Conc!3198) Bool)

(assert (=> b!1093011 (= e!691762 (and (inv!13434 (c!185026 (tokens!1349 (_2!6679 (h!15891 (innerList!3259 (xs!5892 (c!185027 objs!8)))))))) tp!326526))))

(declare-fun e!691761 () Bool)

(declare-fun tp!326528 () Bool)

(declare-fun b!1093010 () Bool)

(declare-fun inv!13435 (BalanceConc!6410) Bool)

(assert (=> b!1093010 (= e!691761 (and tp!326528 (inv!13435 (tokens!1349 (_2!6679 (h!15891 (innerList!3259 (xs!5892 (c!185027 objs!8))))))) e!691762))))

(declare-fun tp!326527 () Bool)

(declare-fun b!1093009 () Bool)

(declare-fun e!691760 () Bool)

(declare-fun inv!13436 (PrintableTokens!296) Bool)

(assert (=> b!1093009 (= e!691760 (and (inv!13436 (_2!6679 (h!15891 (innerList!3259 (xs!5892 (c!185027 objs!8)))))) e!691761 tp!326527))))

(assert (=> b!1092027 (= tp!326503 e!691760)))

(assert (= b!1093010 b!1093011))

(assert (= b!1093009 b!1093010))

(assert (= (and b!1092027 ((_ is Cons!10490) (innerList!3259 (xs!5892 (c!185027 objs!8))))) b!1093009))

(declare-fun m!1244743 () Bool)

(assert (=> b!1093011 m!1244743))

(declare-fun m!1244745 () Bool)

(assert (=> b!1093010 m!1244745))

(declare-fun m!1244747 () Bool)

(assert (=> b!1093009 m!1244747))

(declare-fun b!1093012 () Bool)

(declare-fun e!691763 () Bool)

(assert (=> b!1093012 (= e!691763 true)))

(declare-fun b!1093014 () Bool)

(declare-fun e!691764 () Bool)

(assert (=> b!1093014 (= e!691764 true)))

(declare-fun b!1093013 () Bool)

(assert (=> b!1093013 (= e!691763 e!691764)))

(assert (=> b!1091994 e!691763))

(assert (= (and b!1091994 ((_ is Node!3198) (left!9004 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))) b!1093012))

(assert (= b!1093013 b!1093014))

(assert (= (and b!1091994 ((_ is Leaf!5099) (left!9004 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))) b!1093013))

(declare-fun b!1093015 () Bool)

(declare-fun e!691765 () Bool)

(assert (=> b!1093015 (= e!691765 true)))

(declare-fun b!1093017 () Bool)

(declare-fun e!691766 () Bool)

(assert (=> b!1093017 (= e!691766 true)))

(declare-fun b!1093016 () Bool)

(assert (=> b!1093016 (= e!691765 e!691766)))

(assert (=> b!1091994 e!691765))

(assert (= (and b!1091994 ((_ is Node!3198) (right!9334 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))) b!1093015))

(assert (= b!1093016 b!1093017))

(assert (= (and b!1091994 ((_ is Leaf!5099) (right!9334 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))) b!1093016))

(declare-fun tp!326531 () Bool)

(declare-fun tp!326529 () Bool)

(declare-fun b!1093018 () Bool)

(declare-fun e!691767 () Bool)

(assert (=> b!1093018 (= e!691767 (and (inv!13423 (left!9005 (left!9005 (c!185027 objs!8)))) tp!326531 (inv!13423 (right!9335 (left!9005 (c!185027 objs!8)))) tp!326529))))

(declare-fun b!1093020 () Bool)

(declare-fun e!691768 () Bool)

(declare-fun tp!326530 () Bool)

(assert (=> b!1093020 (= e!691768 tp!326530)))

(declare-fun b!1093019 () Bool)

(assert (=> b!1093019 (= e!691767 (and (inv!13430 (xs!5892 (left!9005 (c!185027 objs!8)))) e!691768))))

(assert (=> b!1092025 (= tp!326504 (and (inv!13423 (left!9005 (c!185027 objs!8))) e!691767))))

(assert (= (and b!1092025 ((_ is Node!3199) (left!9005 (c!185027 objs!8)))) b!1093018))

(assert (= b!1093019 b!1093020))

(assert (= (and b!1092025 ((_ is Leaf!5100) (left!9005 (c!185027 objs!8)))) b!1093019))

(declare-fun m!1244749 () Bool)

(assert (=> b!1093018 m!1244749))

(declare-fun m!1244751 () Bool)

(assert (=> b!1093018 m!1244751))

(declare-fun m!1244753 () Bool)

(assert (=> b!1093019 m!1244753))

(assert (=> b!1092025 m!1242989))

(declare-fun tp!326534 () Bool)

(declare-fun tp!326532 () Bool)

(declare-fun e!691769 () Bool)

(declare-fun b!1093021 () Bool)

(assert (=> b!1093021 (= e!691769 (and (inv!13423 (left!9005 (right!9335 (c!185027 objs!8)))) tp!326534 (inv!13423 (right!9335 (right!9335 (c!185027 objs!8)))) tp!326532))))

(declare-fun b!1093023 () Bool)

(declare-fun e!691770 () Bool)

(declare-fun tp!326533 () Bool)

(assert (=> b!1093023 (= e!691770 tp!326533)))

(declare-fun b!1093022 () Bool)

(assert (=> b!1093022 (= e!691769 (and (inv!13430 (xs!5892 (right!9335 (c!185027 objs!8)))) e!691770))))

(assert (=> b!1092025 (= tp!326502 (and (inv!13423 (right!9335 (c!185027 objs!8))) e!691769))))

(assert (= (and b!1092025 ((_ is Node!3199) (right!9335 (c!185027 objs!8)))) b!1093021))

(assert (= b!1093022 b!1093023))

(assert (= (and b!1092025 ((_ is Leaf!5100) (right!9335 (c!185027 objs!8)))) b!1093022))

(declare-fun m!1244755 () Bool)

(assert (=> b!1093021 m!1244755))

(declare-fun m!1244757 () Bool)

(assert (=> b!1093021 m!1244757))

(declare-fun m!1244759 () Bool)

(assert (=> b!1093022 m!1244759))

(assert (=> b!1092025 m!1242991))

(declare-fun b!1093024 () Bool)

(declare-fun e!691771 () Bool)

(assert (=> b!1093024 (= e!691771 true)))

(declare-fun b!1093026 () Bool)

(declare-fun e!691772 () Bool)

(assert (=> b!1093026 (= e!691772 true)))

(declare-fun b!1093025 () Bool)

(assert (=> b!1093025 (= e!691771 e!691772)))

(assert (=> b!1091946 e!691771))

(assert (= (and b!1091946 ((_ is Node!3198) (c!185026 (tokens!1349 (_2!6679 lt!366207))))) b!1093024))

(assert (= b!1093025 b!1093026))

(assert (= (and b!1091946 ((_ is Leaf!5099) (c!185026 (tokens!1349 (_2!6679 lt!366207))))) b!1093025))

(declare-fun b!1093029 () Bool)

(declare-fun e!691775 () Bool)

(assert (=> b!1093029 (= e!691775 true)))

(declare-fun b!1093028 () Bool)

(declare-fun e!691774 () Bool)

(assert (=> b!1093028 (= e!691774 e!691775)))

(declare-fun b!1093027 () Bool)

(declare-fun e!691773 () Bool)

(assert (=> b!1093027 (= e!691773 e!691774)))

(assert (=> b!1091945 e!691773))

(assert (= b!1093028 b!1093029))

(assert (= b!1093027 b!1093028))

(assert (= (and b!1091945 ((_ is Cons!10489) (rules!9077 (_2!6679 lt!366207)))) b!1093027))

(assert (=> b!1093029 (< (dynLambda!4581 order!6303 (toValue!2867 (transformation!1790 (h!15890 (rules!9077 (_2!6679 lt!366207)))))) (dynLambda!4582 order!6305 lambda!41625))))

(assert (=> b!1093029 (< (dynLambda!4583 order!6307 (toChars!2726 (transformation!1790 (h!15890 (rules!9077 (_2!6679 lt!366207)))))) (dynLambda!4582 order!6305 lambda!41625))))

(declare-fun b!1093031 () Bool)

(declare-fun e!691777 () Bool)

(declare-fun e!691778 () Bool)

(assert (=> b!1093031 (= e!691777 e!691778)))

(declare-fun b!1093033 () Bool)

(declare-fun e!691779 () Bool)

(assert (=> b!1093033 (= e!691779 true)))

(declare-fun b!1093032 () Bool)

(assert (=> b!1093032 (= e!691778 e!691779)))

(declare-fun b!1093030 () Bool)

(declare-fun e!691776 () Bool)

(assert (=> b!1093030 (= e!691776 e!691777)))

(assert (=> b!1091993 e!691776))

(assert (= b!1093032 b!1093033))

(assert (= b!1093031 b!1093032))

(assert (= b!1093030 b!1093031))

(assert (= (and b!1091993 ((_ is Cons!10488) (innerList!3258 (xs!5891 (c!185026 (tokens!1349 (_2!6679 lt!365939))))))) b!1093030))

(assert (=> b!1093033 (< (dynLambda!4581 order!6303 (toValue!2867 (transformation!1790 (rule!3213 (h!15889 (innerList!3258 (xs!5891 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))))))) (dynLambda!4582 order!6305 lambda!41524))))

(assert (=> b!1093033 (< (dynLambda!4583 order!6307 (toChars!2726 (transformation!1790 (rule!3213 (h!15889 (innerList!3258 (xs!5891 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))))))) (dynLambda!4582 order!6305 lambda!41524))))

(declare-fun b!1093034 () Bool)

(declare-fun e!691780 () Bool)

(assert (=> b!1093034 (= e!691780 true)))

(declare-fun b!1093036 () Bool)

(declare-fun e!691781 () Bool)

(assert (=> b!1093036 (= e!691781 true)))

(declare-fun b!1093035 () Bool)

(assert (=> b!1093035 (= e!691780 e!691781)))

(assert (=> b!1091991 e!691780))

(assert (= (and b!1091991 ((_ is Node!3198) (left!9004 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))) b!1093034))

(assert (= b!1093035 b!1093036))

(assert (= (and b!1091991 ((_ is Leaf!5099) (left!9004 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))) b!1093035))

(declare-fun b!1093037 () Bool)

(declare-fun e!691782 () Bool)

(assert (=> b!1093037 (= e!691782 true)))

(declare-fun b!1093039 () Bool)

(declare-fun e!691783 () Bool)

(assert (=> b!1093039 (= e!691783 true)))

(declare-fun b!1093038 () Bool)

(assert (=> b!1093038 (= e!691782 e!691783)))

(assert (=> b!1091991 e!691782))

(assert (= (and b!1091991 ((_ is Node!3198) (right!9334 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))) b!1093037))

(assert (= b!1093038 b!1093039))

(assert (= (and b!1091991 ((_ is Leaf!5099) (right!9334 (c!185026 (tokens!1349 (_2!6679 lt!365939)))))) b!1093038))

(declare-fun b!1093042 () Bool)

(declare-fun e!691786 () Bool)

(assert (=> b!1093042 (= e!691786 true)))

(declare-fun b!1093041 () Bool)

(declare-fun e!691785 () Bool)

(assert (=> b!1093041 (= e!691785 e!691786)))

(declare-fun b!1093040 () Bool)

(declare-fun e!691784 () Bool)

(assert (=> b!1093040 (= e!691784 e!691785)))

(assert (=> b!1092005 e!691784))

(assert (= b!1093041 b!1093042))

(assert (= b!1093040 b!1093041))

(assert (= (and b!1092005 ((_ is Cons!10489) (t!102179 (rules!9077 (_2!6679 lt!365939))))) b!1093040))

(assert (=> b!1093042 (< (dynLambda!4581 order!6303 (toValue!2867 (transformation!1790 (h!15890 (t!102179 (rules!9077 (_2!6679 lt!365939))))))) (dynLambda!4582 order!6305 lambda!41526))))

(assert (=> b!1093042 (< (dynLambda!4583 order!6307 (toChars!2726 (transformation!1790 (h!15890 (t!102179 (rules!9077 (_2!6679 lt!365939))))))) (dynLambda!4582 order!6305 lambda!41526))))

(declare-fun b!1093043 () Bool)

(declare-fun e!691787 () Bool)

(assert (=> b!1093043 (= e!691787 true)))

(declare-fun b!1093045 () Bool)

(declare-fun e!691788 () Bool)

(assert (=> b!1093045 (= e!691788 true)))

(declare-fun b!1093044 () Bool)

(assert (=> b!1093044 (= e!691787 e!691788)))

(assert (=> b!1091944 e!691787))

(assert (= (and b!1091944 ((_ is Node!3198) (c!185026 (tokens!1349 (_2!6679 lt!366207))))) b!1093043))

(assert (= b!1093044 b!1093045))

(assert (= (and b!1091944 ((_ is Leaf!5099) (c!185026 (tokens!1349 (_2!6679 lt!366207))))) b!1093044))

(declare-fun b!1093048 () Bool)

(declare-fun e!691791 () Bool)

(assert (=> b!1093048 (= e!691791 true)))

(declare-fun b!1093047 () Bool)

(declare-fun e!691790 () Bool)

(assert (=> b!1093047 (= e!691790 e!691791)))

(declare-fun b!1093046 () Bool)

(declare-fun e!691789 () Bool)

(assert (=> b!1093046 (= e!691789 e!691790)))

(assert (=> b!1091943 e!691789))

(assert (= b!1093047 b!1093048))

(assert (= b!1093046 b!1093047))

(assert (= (and b!1091943 ((_ is Cons!10489) (rules!9077 (_2!6679 lt!366207)))) b!1093046))

(assert (=> b!1093048 (< (dynLambda!4581 order!6303 (toValue!2867 (transformation!1790 (h!15890 (rules!9077 (_2!6679 lt!366207)))))) (dynLambda!4582 order!6305 lambda!41624))))

(assert (=> b!1093048 (< (dynLambda!4583 order!6307 (toChars!2726 (transformation!1790 (h!15890 (rules!9077 (_2!6679 lt!366207)))))) (dynLambda!4582 order!6305 lambda!41624))))

(declare-fun b!1093051 () Bool)

(declare-fun e!691794 () Bool)

(assert (=> b!1093051 (= e!691794 true)))

(declare-fun b!1093050 () Bool)

(declare-fun e!691793 () Bool)

(assert (=> b!1093050 (= e!691793 e!691794)))

(declare-fun b!1093049 () Bool)

(declare-fun e!691792 () Bool)

(assert (=> b!1093049 (= e!691792 e!691793)))

(assert (=> b!1092014 e!691792))

(assert (= b!1093050 b!1093051))

(assert (= b!1093049 b!1093050))

(assert (= (and b!1092014 ((_ is Cons!10489) (t!102179 (rules!9077 (_2!6679 lt!365939))))) b!1093049))

(assert (=> b!1093051 (< (dynLambda!4581 order!6303 (toValue!2867 (transformation!1790 (h!15890 (t!102179 (rules!9077 (_2!6679 lt!365939))))))) (dynLambda!4582 order!6305 lambda!41525))))

(assert (=> b!1093051 (< (dynLambda!4583 order!6307 (toChars!2726 (transformation!1790 (h!15890 (t!102179 (rules!9077 (_2!6679 lt!365939))))))) (dynLambda!4582 order!6305 lambda!41525))))

(declare-fun b_lambda!30889 () Bool)

(assert (= b_lambda!30853 (or b!1091690 b_lambda!30889)))

(declare-fun bs!258222 () Bool)

(declare-fun d!307813 () Bool)

(assert (= bs!258222 (and d!307813 b!1091690)))

(assert (=> bs!258222 (= (dynLambda!4577 lambda!41525 (h!15891 (list!3758 objs!8))) (= (_1!6679 (h!15891 (list!3758 objs!8))) (_1!6679 lt!365939)))))

(assert (=> b!1092701 d!307813))

(declare-fun b_lambda!30891 () Bool)

(assert (= b_lambda!30875 (or b!1091933 b_lambda!30891)))

(declare-fun bs!258223 () Bool)

(declare-fun d!307815 () Bool)

(assert (= bs!258223 (and d!307815 b!1091933)))

(assert (=> bs!258223 (= (dynLambda!4577 lambda!41626 lt!366207) (> (_1!6679 lt!366207) (_1!6679 lt!366207)))))

(assert (=> d!307751 d!307815))

(declare-fun b_lambda!30893 () Bool)

(assert (= b_lambda!30871 (or b!1091690 b_lambda!30893)))

(declare-fun bs!258224 () Bool)

(declare-fun d!307817 () Bool)

(assert (= bs!258224 (and d!307817 b!1091690)))

(assert (=> bs!258224 (= (dynLambda!4577 lambda!41525 (h!15891 lt!365944)) (= (_1!6679 (h!15891 lt!365944)) (_1!6679 lt!365939)))))

(assert (=> b!1092850 d!307817))

(declare-fun b_lambda!30895 () Bool)

(assert (= b_lambda!30761 (or b!1091690 b_lambda!30895)))

(declare-fun bs!258225 () Bool)

(declare-fun d!307819 () Bool)

(assert (= bs!258225 (and d!307819 b!1091690)))

(assert (=> bs!258225 (= (dynLambda!4577 lambda!41524 (h!15891 (list!3758 lt!365922))) (< (_1!6679 (h!15891 (list!3758 lt!365922))) (_1!6679 lt!365939)))))

(assert (=> b!1092488 d!307819))

(declare-fun b_lambda!30897 () Bool)

(assert (= b_lambda!30869 (or b!1091933 b_lambda!30897)))

(assert (=> d!307729 d!307815))

(declare-fun b_lambda!30899 () Bool)

(assert (= b_lambda!30845 (or b!1091933 b_lambda!30899)))

(declare-fun bs!258226 () Bool)

(declare-fun d!307821 () Bool)

(assert (= bs!258226 (and d!307821 b!1091933)))

(assert (=> bs!258226 (= (dynLambda!4577 lambda!41627 (h!15891 lt!366205)) (usesJsonRules!0 (_2!6679 (h!15891 lt!366205))))))

(declare-fun m!1244761 () Bool)

(assert (=> bs!258226 m!1244761))

(assert (=> b!1092627 d!307821))

(declare-fun b_lambda!30901 () Bool)

(assert (= b_lambda!30883 (or b!1091690 b_lambda!30901)))

(declare-fun bs!258227 () Bool)

(declare-fun d!307823 () Bool)

(assert (= bs!258227 (and d!307823 b!1091690)))

(assert (=> bs!258227 (= (dynLambda!4577 lambda!41526 (h!15891 lt!365975)) (> (_1!6679 (h!15891 lt!365975)) (_1!6679 lt!365939)))))

(assert (=> b!1092901 d!307823))

(declare-fun b_lambda!30903 () Bool)

(assert (= b_lambda!30843 (or b!1091933 b_lambda!30903)))

(declare-fun bs!258228 () Bool)

(declare-fun d!307825 () Bool)

(assert (= bs!258228 (and d!307825 b!1091933)))

(assert (=> bs!258228 (= (dynLambda!4577 lambda!41627 (h!15891 lt!366220)) (usesJsonRules!0 (_2!6679 (h!15891 lt!366220))))))

(declare-fun m!1244763 () Bool)

(assert (=> bs!258228 m!1244763))

(assert (=> b!1092621 d!307825))

(declare-fun b_lambda!30905 () Bool)

(assert (= b_lambda!30865 (or b!1091933 b_lambda!30905)))

(declare-fun bs!258229 () Bool)

(declare-fun d!307827 () Bool)

(assert (= bs!258229 (and d!307827 b!1091933)))

(assert (=> bs!258229 (= (dynLambda!4577 lambda!41624 (h!15891 lt!366214)) (< (_1!6679 (h!15891 lt!366214)) (_1!6679 lt!366207)))))

(assert (=> b!1092808 d!307827))

(declare-fun b_lambda!30907 () Bool)

(assert (= b_lambda!30861 (or b!1091933 b_lambda!30907)))

(declare-fun bs!258230 () Bool)

(declare-fun d!307829 () Bool)

(assert (= bs!258230 (and d!307829 b!1091933)))

(assert (=> bs!258230 (= (dynLambda!4577 lambda!41624 lt!366207) (< (_1!6679 lt!366207) (_1!6679 lt!366207)))))

(assert (=> d!307705 d!307829))

(declare-fun b_lambda!30909 () Bool)

(assert (= b_lambda!30887 (or b!1091690 b_lambda!30909)))

(assert (=> d!307805 d!307211))

(declare-fun b_lambda!30911 () Bool)

(assert (= b_lambda!30857 (or start!93382 b_lambda!30911)))

(declare-fun bs!258231 () Bool)

(declare-fun d!307831 () Bool)

(assert (= bs!258231 (and d!307831 start!93382)))

(assert (=> bs!258231 (= (dynLambda!4577 lambda!41523 (h!15891 (t!102180 lt!365928))) (usesJsonRules!0 (_2!6679 (h!15891 (t!102180 lt!365928)))))))

(declare-fun m!1244765 () Bool)

(assert (=> bs!258231 m!1244765))

(assert (=> b!1092719 d!307831))

(declare-fun b_lambda!30913 () Bool)

(assert (= b_lambda!30885 (or b!1091690 b_lambda!30913)))

(declare-fun bs!258232 () Bool)

(declare-fun d!307833 () Bool)

(assert (= bs!258232 (and d!307833 b!1091690)))

(assert (=> bs!258232 (= (dynLambda!4577 lambda!41526 (h!15891 (list!3758 objs!8))) (> (_1!6679 (h!15891 (list!3758 objs!8))) (_1!6679 lt!365939)))))

(assert (=> b!1092954 d!307833))

(declare-fun b_lambda!30915 () Bool)

(assert (= b_lambda!30881 (or start!93382 b_lambda!30915)))

(declare-fun bs!258233 () Bool)

(declare-fun d!307835 () Bool)

(assert (= bs!258233 (and d!307835 start!93382)))

(assert (=> bs!258233 (= (dynLambda!4577 lambda!41523 (h!15891 (t!102180 lt!365945))) (usesJsonRules!0 (_2!6679 (h!15891 (t!102180 lt!365945)))))))

(declare-fun m!1244767 () Bool)

(assert (=> bs!258233 m!1244767))

(assert (=> b!1092897 d!307835))

(declare-fun b_lambda!30917 () Bool)

(assert (= b_lambda!30855 (or b!1091690 b_lambda!30917)))

(declare-fun bs!258234 () Bool)

(declare-fun d!307837 () Bool)

(assert (= bs!258234 (and d!307837 b!1091690)))

(assert (=> bs!258234 (= (dynLambda!4577 lambda!41526 (h!15891 (t!102180 lt!365944))) (> (_1!6679 (h!15891 (t!102180 lt!365944))) (_1!6679 lt!365939)))))

(assert (=> b!1092707 d!307837))

(declare-fun b_lambda!30919 () Bool)

(assert (= b_lambda!30859 (or b!1091690 b_lambda!30919)))

(declare-fun bs!258235 () Bool)

(declare-fun d!307839 () Bool)

(assert (= bs!258235 (and d!307839 b!1091690)))

(assert (=> bs!258235 (= (dynLambda!4577 lambda!41524 (h!15891 lt!366257)) (< (_1!6679 (h!15891 lt!366257)) (_1!6679 lt!365939)))))

(assert (=> b!1092764 d!307839))

(declare-fun b_lambda!30921 () Bool)

(assert (= b_lambda!30841 (or b!1091690 b_lambda!30921)))

(assert (=> b!1092603 d!307215))

(declare-fun b_lambda!30923 () Bool)

(assert (= b_lambda!30831 (or b!1091933 b_lambda!30923)))

(declare-fun bs!258236 () Bool)

(declare-fun d!307841 () Bool)

(assert (= bs!258236 (and d!307841 b!1091933)))

(assert (=> bs!258236 (= (dynLambda!4577 lambda!41626 (h!15891 lt!366212)) (> (_1!6679 (h!15891 lt!366212)) (_1!6679 lt!366207)))))

(assert (=> b!1092580 d!307841))

(declare-fun b_lambda!30925 () Bool)

(assert (= b_lambda!30863 (or b!1091690 b_lambda!30925)))

(declare-fun bs!258237 () Bool)

(declare-fun d!307843 () Bool)

(assert (= bs!258237 (and d!307843 b!1091690)))

(assert (=> bs!258237 (= (dynLambda!4577 lambda!41524 (h!15891 (t!102180 lt!365944))) (< (_1!6679 (h!15891 (t!102180 lt!365944))) (_1!6679 lt!365939)))))

(assert (=> b!1092788 d!307843))

(declare-fun b_lambda!30927 () Bool)

(assert (= b_lambda!30835 (or b!1091690 b_lambda!30927)))

(declare-fun bs!258238 () Bool)

(declare-fun d!307845 () Bool)

(assert (= bs!258238 (and d!307845 b!1091690)))

(assert (=> bs!258238 (= (dynLambda!4577 lambda!41526 (h!15891 (list!3758 lt!365935))) (> (_1!6679 (h!15891 (list!3758 lt!365935))) (_1!6679 lt!365939)))))

(assert (=> b!1092594 d!307845))

(declare-fun b_lambda!30929 () Bool)

(assert (= b_lambda!30837 (or b!1091933 b_lambda!30929)))

(assert (=> d!307573 d!307829))

(declare-fun b_lambda!30931 () Bool)

(assert (= b_lambda!30759 (or b!1091690 b_lambda!30931)))

(assert (=> d!307501 d!307211))

(declare-fun b_lambda!30933 () Bool)

(assert (= b_lambda!30867 (or b!1091690 b_lambda!30933)))

(assert (=> b!1092816 d!307833))

(declare-fun b_lambda!30935 () Bool)

(assert (= b_lambda!30763 (or start!93382 b_lambda!30935)))

(declare-fun bs!258239 () Bool)

(declare-fun d!307847 () Bool)

(assert (= bs!258239 (and d!307847 start!93382)))

(assert (=> bs!258239 (= (dynLambda!4577 lambda!41523 (h!15891 lt!365944)) (usesJsonRules!0 (_2!6679 (h!15891 lt!365944))))))

(declare-fun m!1244769 () Bool)

(assert (=> bs!258239 m!1244769))

(assert (=> b!1092496 d!307847))

(declare-fun b_lambda!30937 () Bool)

(assert (= b_lambda!30833 (or b!1091690 b_lambda!30937)))

(assert (=> d!307569 d!307213))

(declare-fun b_lambda!30939 () Bool)

(assert (= b_lambda!30851 (or start!93382 b_lambda!30939)))

(declare-fun bs!258240 () Bool)

(declare-fun d!307849 () Bool)

(assert (= bs!258240 (and d!307849 start!93382)))

(assert (=> bs!258240 (= (dynLambda!4577 lambda!41523 (h!15891 (t!102180 lt!365943))) (usesJsonRules!0 (_2!6679 (h!15891 (t!102180 lt!365943)))))))

(declare-fun m!1244771 () Bool)

(assert (=> bs!258240 m!1244771))

(assert (=> b!1092697 d!307849))

(declare-fun b_lambda!30941 () Bool)

(assert (= b_lambda!30849 (or b!1091690 b_lambda!30941)))

(declare-fun bs!258241 () Bool)

(declare-fun d!307851 () Bool)

(assert (= bs!258241 (and d!307851 b!1091690)))

(assert (=> bs!258241 (= (dynLambda!4577 lambda!41524 (h!15891 (list!3758 objs!8))) (< (_1!6679 (h!15891 (list!3758 objs!8))) (_1!6679 lt!365939)))))

(assert (=> b!1092685 d!307851))

(declare-fun b_lambda!30943 () Bool)

(assert (= b_lambda!30873 (or start!93382 b_lambda!30943)))

(declare-fun bs!258242 () Bool)

(declare-fun d!307853 () Bool)

(assert (= bs!258242 (and d!307853 start!93382)))

(assert (=> bs!258242 (= (dynLambda!4577 lambda!41523 (h!15891 (t!102180 lt!365947))) (usesJsonRules!0 (_2!6679 (h!15891 (t!102180 lt!365947)))))))

(declare-fun m!1244773 () Bool)

(assert (=> bs!258242 m!1244773))

(assert (=> b!1092863 d!307853))

(declare-fun b_lambda!30945 () Bool)

(assert (= b_lambda!30839 (or b!1091690 b_lambda!30945)))

(assert (=> d!307579 d!307213))

(declare-fun b_lambda!30947 () Bool)

(assert (= b_lambda!30877 (or b!1091690 b_lambda!30947)))

(assert (=> b!1092889 d!307221))

(declare-fun b_lambda!30949 () Bool)

(assert (= b_lambda!30847 (or b!1091933 b_lambda!30949)))

(declare-fun bs!258243 () Bool)

(declare-fun d!307855 () Bool)

(assert (= bs!258243 (and d!307855 b!1091933)))

(assert (=> bs!258243 (= (dynLambda!4577 lambda!41627 (h!15891 lt!366209)) (usesJsonRules!0 (_2!6679 (h!15891 lt!366209))))))

(declare-fun m!1244775 () Bool)

(assert (=> bs!258243 m!1244775))

(assert (=> b!1092631 d!307855))

(declare-fun b_lambda!30951 () Bool)

(assert (= b_lambda!30757 (or start!93382 b_lambda!30951)))

(declare-fun bs!258244 () Bool)

(declare-fun d!307857 () Bool)

(assert (= bs!258244 (and d!307857 start!93382)))

(assert (=> bs!258244 (= (dynLambda!4577 lambda!41523 (h!15891 (list!3758 objs!8))) (usesJsonRules!0 (_2!6679 (h!15891 (list!3758 objs!8)))))))

(declare-fun m!1244777 () Bool)

(assert (=> bs!258244 m!1244777))

(assert (=> b!1092456 d!307857))

(declare-fun b_lambda!30953 () Bool)

(assert (= b_lambda!30879 (or b!1091690 b_lambda!30953)))

(assert (=> b!1092893 d!307851))

(check-sat (not b!1092782) (not d!307591) (not b!1092946) (not b_lambda!30939) (not b!1092961) (not d!307649) (not b!1092909) (not b!1092998) (not b!1092675) (not b_lambda!30935) (not d!307607) (not b!1092931) (not d!307709) (not d!307781) (not d!307589) (not d!307761) (not b!1092871) (not b!1093017) (not b!1092646) (not b_lambda!30677) (not b!1092822) (not b_lambda!30929) (not b!1092883) (not d!307651) (not b!1093010) (not b!1093011) (not b_lambda!30911) (not b_lambda!30901) (not d!307625) (not b_lambda!30907) (not d!307771) (not b!1092875) (not b_lambda!30675) (not b!1092629) (not b!1092823) (not d!307737) (not b!1092497) (not b!1092674) (not b!1092768) (not b!1092593) (not bm!80280) (not b_lambda!30905) (not b!1092870) (not b!1092604) (not d!307753) (not bm!80275) (not b!1092457) (not d!307705) (not b!1092813) (not d!307609) (not bm!80279) (not d!307497) (not b!1092624) (not b!1093015) (not d!307633) (not b!1093023) (not b!1092705) (not b!1093043) (not d!307637) (not d!307597) (not b!1092682) (not b_lambda!30943) (not d!307667) (not b!1092779) (not b!1092800) (not b!1092477) (not b!1092625) (not b!1092955) (not b!1093039) (not d!307707) (not bs!258228) (not b!1092636) (not b!1092783) (not b!1092834) (not b!1092679) (not b!1092733) (not b_lambda!30921) (not b!1092720) (not b!1092696) (not b!1092887) (not b_lambda!30947) (not d!307593) (not b!1092649) (not b!1092664) (not b!1092819) (not d!307789) (not b!1092987) (not b_lambda!30941) (not b_lambda!30899) (not b!1092628) (not b!1092641) (not d!307585) (not d!307803) (not b_lambda!30949) (not b!1092805) (not b!1092943) (not d!307755) (not b!1092966) (not b!1092806) (not d!307719) (not b!1092654) (not b_lambda!30923) (not b_lambda!30895) (not b!1093022) (not b!1092963) (not b!1092638) (not d!307725) (not b!1092777) (not b!1092853) (not bs!258243) (not b_lambda!30671) (not b!1092639) (not b!1092583) (not d!307743) (not b!1092772) (not b!1092681) (not d!307653) (not b!1092595) (not d!307655) (not b!1092670) (not b!1092953) (not b!1092734) (not b!1092939) (not b!1092984) (not b!1092898) (not b!1092574) (not b!1092650) (not b!1092585) (not b!1092773) (not b!1092591) (not b!1092596) (not b!1092927) (not d!307601) (not b!1092694) (not b!1092761) (not b!1092622) (not b!1092688) (not b!1092597) (not b!1092672) (not b!1092874) (not b!1092861) (not b!1092736) (not b!1092643) (not b_lambda!30937) (not b_lambda!30913) (not b!1092025) (not b!1093040) (not b!1093009) (not d!307621) (not b!1092755) (not b!1092936) (not b!1092763) (not b!1092617) (not b_lambda!30897) (not d!307747) (not b_lambda!30931) (not b!1092757) (not b!1093021) (not b!1092791) (not b!1092848) (not b!1092623) (not b!1092886) (not b!1092962) (not d!307669) (not d!307809) (not b!1092896) (not b!1092991) (not d!307703) (not b!1093045) (not d!307679) (not b_lambda!30915) (not bs!258240) (not b_lambda!30673) (not b!1092995) (not b!1092689) (not b!1092786) (not d!307727) (not d!307661) (not b_lambda!30683) (not b!1092937) (not d!307603) (not b!1093034) (not b!1092620) (not b_lambda!30925) (not b!1092967) (not d!307769) (not b_lambda!30953) (not b!1092872) (not d!307773) (not b!1092578) (not b!1092795) (not b!1092957) (not d!307627) (not b!1093036) (not b!1092758) (not bm!80283) (not d!307731) (not b!1092737) (not b!1092684) (not d!307509) (not b!1092935) (not b!1092940) (not d!307645) (not b!1092600) (not d!307795) (not b!1093026) (not b!1093049) (not d!307631) (not b_lambda!30903) (not d!307643) (not b!1092619) (not b!1092771) (not b!1093014) (not d!307735) (not b!1092632) (not d!307673) (not b!1092879) (not b!1092717) (not bs!258244) (not b!1092873) (not b!1092704) (not d!307801) (not bm!80276) (not b!1092680) (not b!1092774) (not bs!258226) (not b_lambda!30685) (not b!1092902) (not bs!258233) (not bs!258239) (not b!1092671) (not b_lambda!30945) (not b!1092990) (not d!307739) (not b!1092934) (not b!1092864) (not d!307689) (not d!307751) (not b!1092651) (not bm!80273) (not b!1092686) (not b!1092988) (not b!1092735) (not d!307619) (not b!1092835) (not b!1092775) (not b!1092683) (not b!1092690) (not b!1092642) (not b!1092982) (not d!307613) (not b!1092653) (not d!307729) (not d!307693) (not b!1092669) (not d!307791) (not b!1092608) (not b!1092713) (not b!1092693) (not b!1093024) (not bs!258242) (not b!1092890) (not d!307777) (not b_lambda!30951) (not b!1092900) (not b_lambda!30909) (not d!307677) (not b!1092958) (not b_lambda!30917) (not b_lambda!30687) (not b!1092794) (not d!307605) (not b!1092833) (not b!1092698) (not b!1092738) (not bm!80278) (not b!1092846) (not b!1092665) (not b!1093027) (not d!307641) (not b!1093020) (not d!307629) (not b!1092476) (not b!1092718) (not d!307807) (not b!1092780) (not b!1092881) (not d!307545) (not b!1092785) (not d!307657) (not b!1092577) (not b!1092814) (not b!1092606) (not b!1092882) (not b!1092869) (not b!1092602) (not b!1092867) (not b!1092714) (not b!1092489) (not d!307505) (not b!1092938) (not b_lambda!30933) (not b!1092891) (not d!307713) (not b!1092878) (not d!307759) (not d!307573) (not b!1092949) (not b!1092847) (not b!1092911) (not d!307617) (not b!1092959) (not b!1093037) (not b!1092676) (not b_lambda!30919) (not d!307765) (not b!1092888) (not bs!258231) (not b!1092811) (not b!1092776) (not b!1092475) (not b!1093012) (not b!1092803) (not d!307639) (not b!1092699) (not b!1092754) (not d!307615) (not b!1092765) (not b!1093018) (not b_lambda!30891) (not b!1092951) (not b_lambda!30689) (not b!1092930) (not b!1092575) (not b!1092538) (not b!1092618) (not bm!80277) (not b!1092647) (not b!1092626) (not b!1092637) (not b!1092942) (not b!1092978) (not d!307783) (not d!307723) (not b!1092599) (not bm!80274) (not b_lambda!30927) (not b!1093030) (not b_lambda!30893) (not b!1093046) (not b_lambda!30681) (not b!1092945) (not b!1092648) (not d!307675) (not d!307635) (not b!1092652) (not b_lambda!30679) (not b!1092868) (not b!1093019) (not b!1092769) (not b!1092710) (not b!1092630) (not b!1092929) (not b!1092910) (not b!1092633) (not b!1092985) (not b_lambda!30889))
(check-sat)
