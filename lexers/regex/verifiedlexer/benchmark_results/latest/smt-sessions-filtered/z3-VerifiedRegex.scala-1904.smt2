; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93702 () Bool)

(assert start!93702)

(declare-fun bs!258412 () Bool)

(declare-fun b!1094227 () Bool)

(assert (= bs!258412 (and b!1094227 start!93702)))

(declare-fun lambda!42246 () Int)

(declare-fun lambda!42245 () Int)

(assert (=> bs!258412 (not (= lambda!42246 lambda!42245))))

(declare-fun b!1094237 () Bool)

(declare-fun e!692660 () Bool)

(assert (=> b!1094237 (= e!692660 true)))

(declare-fun b!1094236 () Bool)

(declare-fun e!692659 () Bool)

(assert (=> b!1094236 (= e!692659 e!692660)))

(assert (=> b!1094227 e!692659))

(assert (= b!1094236 b!1094237))

(assert (= b!1094227 b!1094236))

(declare-fun lambda!42247 () Int)

(assert (=> bs!258412 (not (= lambda!42247 lambda!42245))))

(assert (=> b!1094227 (not (= lambda!42247 lambda!42246))))

(declare-fun b!1094239 () Bool)

(declare-fun e!692662 () Bool)

(assert (=> b!1094239 (= e!692662 true)))

(declare-fun b!1094238 () Bool)

(declare-fun e!692661 () Bool)

(assert (=> b!1094238 (= e!692661 e!692662)))

(assert (=> b!1094227 e!692661))

(assert (= b!1094238 b!1094239))

(assert (= b!1094227 b!1094238))

(declare-fun lambda!42248 () Int)

(assert (=> bs!258412 (not (= lambda!42248 lambda!42245))))

(assert (=> b!1094227 (not (= lambda!42248 lambda!42246))))

(assert (=> b!1094227 (not (= lambda!42248 lambda!42247))))

(declare-fun b!1094241 () Bool)

(declare-fun e!692664 () Bool)

(assert (=> b!1094241 (= e!692664 true)))

(declare-fun b!1094240 () Bool)

(declare-fun e!692663 () Bool)

(assert (=> b!1094240 (= e!692663 e!692664)))

(assert (=> b!1094227 e!692663))

(assert (= b!1094240 b!1094241))

(assert (= b!1094227 b!1094240))

(declare-fun b!1094212 () Bool)

(declare-datatypes ((Unit!16004 0))(
  ( (Unit!16005) )
))
(declare-fun e!692641 () Unit!16004)

(declare-fun err!2257 () Unit!16004)

(assert (=> b!1094212 (= e!692641 err!2257)))

(declare-datatypes ((List!10535 0))(
  ( (Nil!10519) (Cons!10519 (h!15920 (_ BitVec 16)) (t!102893 List!10535)) )
))
(declare-datatypes ((TokenValue!1864 0))(
  ( (FloatLiteralValue!3728 (text!13493 List!10535)) (TokenValueExt!1863 (__x!7446 Int)) (Broken!9320 (value!59170 List!10535)) (Object!1879) (End!1864) (Def!1864) (Underscore!1864) (Match!1864) (Else!1864) (Error!1864) (Case!1864) (If!1864) (Extends!1864) (Abstract!1864) (Class!1864) (Val!1864) (DelimiterValue!3728 (del!1924 List!10535)) (KeywordValue!1870 (value!59171 List!10535)) (CommentValue!3728 (value!59172 List!10535)) (WhitespaceValue!3728 (value!59173 List!10535)) (IndentationValue!1864 (value!59174 List!10535)) (String!12889) (Int32!1864) (Broken!9321 (value!59175 List!10535)) (Boolean!1865) (Unit!16006) (OperatorValue!1867 (op!1924 List!10535)) (IdentifierValue!3728 (value!59176 List!10535)) (IdentifierValue!3729 (value!59177 List!10535)) (WhitespaceValue!3729 (value!59178 List!10535)) (True!3728) (False!3728) (Broken!9322 (value!59179 List!10535)) (Broken!9323 (value!59180 List!10535)) (True!3729) (RightBrace!1864) (RightBracket!1864) (Colon!1864) (Null!1864) (Comma!1864) (LeftBracket!1864) (False!3729) (LeftBrace!1864) (ImaginaryLiteralValue!1864 (text!13494 List!10535)) (StringLiteralValue!5592 (value!59181 List!10535)) (EOFValue!1864 (value!59182 List!10535)) (IdentValue!1864 (value!59183 List!10535)) (DelimiterValue!3729 (value!59184 List!10535)) (DedentValue!1864 (value!59185 List!10535)) (NewLineValue!1864 (value!59186 List!10535)) (IntegerValue!5592 (value!59187 (_ BitVec 32)) (text!13495 List!10535)) (IntegerValue!5593 (value!59188 Int) (text!13496 List!10535)) (Times!1864) (Or!1864) (Equal!1864) (Minus!1864) (Broken!9324 (value!59189 List!10535)) (And!1864) (Div!1864) (LessEqual!1864) (Mod!1864) (Concat!4931) (Not!1864) (Plus!1864) (SpaceValue!1864 (value!59190 List!10535)) (IntegerValue!5594 (value!59191 Int) (text!13497 List!10535)) (StringLiteralValue!5593 (text!13498 List!10535)) (FloatLiteralValue!3729 (text!13499 List!10535)) (BytesLiteralValue!1864 (value!59192 List!10535)) (CommentValue!3729 (value!59193 List!10535)) (StringLiteralValue!5594 (value!59194 List!10535)) (ErrorTokenValue!1864 (msg!1925 List!10535)) )
))
(declare-datatypes ((Regex!3067 0))(
  ( (ElementMatch!3067 (c!185566 (_ BitVec 16))) (Concat!4932 (regOne!6646 Regex!3067) (regTwo!6646 Regex!3067)) (EmptyExpr!3067) (Star!3067 (reg!3396 Regex!3067)) (EmptyLang!3067) (Union!3067 (regOne!6647 Regex!3067) (regTwo!6647 Regex!3067)) )
))
(declare-datatypes ((String!12890 0))(
  ( (String!12891 (value!59195 String)) )
))
(declare-datatypes ((IArray!6447 0))(
  ( (IArray!6448 (innerList!3281 List!10535)) )
))
(declare-datatypes ((Conc!3221 0))(
  ( (Node!3221 (left!9047 Conc!3221) (right!9377 Conc!3221) (csize!6672 Int) (cheight!3432 Int)) (Leaf!5126 (xs!5914 IArray!6447) (csize!6673 Int)) (Empty!3221) )
))
(declare-datatypes ((BalanceConc!6456 0))(
  ( (BalanceConc!6457 (c!185567 Conc!3221)) )
))
(declare-datatypes ((TokenValueInjection!3428 0))(
  ( (TokenValueInjection!3429 (toValue!2875 Int) (toChars!2734 Int)) )
))
(declare-datatypes ((Rule!3396 0))(
  ( (Rule!3397 (regex!1798 Regex!3067) (tag!2060 String!12890) (isSeparator!1798 Bool) (transformation!1798 TokenValueInjection!3428)) )
))
(declare-datatypes ((Token!3262 0))(
  ( (Token!3263 (value!59196 TokenValue!1864) (rule!3221 Rule!3396) (size!8140 Int) (originalCharacters!2354 List!10535)) )
))
(declare-datatypes ((List!10536 0))(
  ( (Nil!10520) (Cons!10520 (h!15921 Token!3262) (t!102894 List!10536)) )
))
(declare-datatypes ((IArray!6449 0))(
  ( (IArray!6450 (innerList!3282 List!10536)) )
))
(declare-datatypes ((Conc!3222 0))(
  ( (Node!3222 (left!9048 Conc!3222) (right!9378 Conc!3222) (csize!6674 Int) (cheight!3433 Int)) (Leaf!5127 (xs!5915 IArray!6449) (csize!6675 Int)) (Empty!3222) )
))
(declare-datatypes ((List!10537 0))(
  ( (Nil!10521) (Cons!10521 (h!15922 Rule!3396) (t!102895 List!10537)) )
))
(declare-datatypes ((BalanceConc!6458 0))(
  ( (BalanceConc!6459 (c!185568 Conc!3222)) )
))
(declare-datatypes ((PrintableTokens!312 0))(
  ( (PrintableTokens!313 (rules!9085 List!10537) (tokens!1357 BalanceConc!6458)) )
))
(declare-datatypes ((tuple2!11722 0))(
  ( (tuple2!11723 (_1!6687 Int) (_2!6687 PrintableTokens!312)) )
))
(declare-datatypes ((List!10538 0))(
  ( (Nil!10522) (Cons!10522 (h!15923 tuple2!11722) (t!102896 List!10538)) )
))
(declare-fun lt!368011 () List!10538)

(declare-fun lt!367998 () tuple2!11722)

(declare-fun lt!368005 () Unit!16004)

(declare-fun forallContained!500 (List!10538 Int tuple2!11722) Unit!16004)

(assert (=> b!1094212 (= lt!368005 (forallContained!500 lt!368011 lambda!42248 lt!367998))))

(assert (=> b!1094212 true))

(declare-fun b!1094213 () Bool)

(declare-fun e!692651 () Bool)

(declare-fun e!692643 () Bool)

(assert (=> b!1094213 (= e!692651 (not e!692643))))

(declare-fun res!486019 () Bool)

(assert (=> b!1094213 (=> res!486019 e!692643)))

(declare-datatypes ((IArray!6451 0))(
  ( (IArray!6452 (innerList!3283 List!10538)) )
))
(declare-datatypes ((Conc!3223 0))(
  ( (Node!3223 (left!9049 Conc!3223) (right!9379 Conc!3223) (csize!6676 Int) (cheight!3434 Int)) (Leaf!5128 (xs!5916 IArray!6451) (csize!6677 Int)) (Empty!3223) )
))
(declare-datatypes ((BalanceConc!6460 0))(
  ( (BalanceConc!6461 (c!185569 Conc!3223)) )
))
(declare-fun lt!367999 () BalanceConc!6460)

(declare-fun lt!367996 () Int)

(declare-fun size!8141 (BalanceConc!6460) Int)

(assert (=> b!1094213 (= res!486019 (>= (size!8141 lt!367999) lt!367996))))

(declare-fun e!692645 () Bool)

(assert (=> b!1094213 e!692645))

(declare-fun res!486024 () Bool)

(assert (=> b!1094213 (=> res!486024 e!692645)))

(declare-fun lt!368013 () Bool)

(assert (=> b!1094213 (= res!486024 lt!368013)))

(declare-fun isEmpty!6670 (List!10538) Bool)

(assert (=> b!1094213 (= lt!368013 (isEmpty!6670 lt!368011))))

(declare-fun lt!368020 () Unit!16004)

(declare-fun lemmaNotForallFilterShorter!41 (List!10538 Int) Unit!16004)

(assert (=> b!1094213 (= lt!368020 (lemmaNotForallFilterShorter!41 lt!368011 lambda!42246))))

(declare-fun objs!8 () BalanceConc!6460)

(declare-fun list!3774 (BalanceConc!6460) List!10538)

(assert (=> b!1094213 (= lt!368011 (list!3774 objs!8))))

(declare-fun lt!367995 () Unit!16004)

(declare-fun e!692644 () Unit!16004)

(assert (=> b!1094213 (= lt!367995 e!692644)))

(declare-fun c!185565 () Bool)

(declare-fun forall!2368 (BalanceConc!6460 Int) Bool)

(assert (=> b!1094213 (= c!185565 (forall!2368 objs!8 lambda!42246))))

(declare-fun b!1094215 () Bool)

(declare-fun e!692650 () Bool)

(declare-fun e!692649 () Bool)

(assert (=> b!1094215 (= e!692650 e!692649)))

(declare-fun res!486018 () Bool)

(assert (=> b!1094215 (=> res!486018 e!692649)))

(declare-fun lt!367993 () BalanceConc!6460)

(assert (=> b!1094215 (= res!486018 (>= (size!8141 lt!367993) lt!367996))))

(declare-fun e!692642 () Bool)

(assert (=> b!1094215 e!692642))

(declare-fun res!486020 () Bool)

(assert (=> b!1094215 (=> res!486020 e!692642)))

(assert (=> b!1094215 (= res!486020 lt!368013)))

(declare-fun lt!368000 () Unit!16004)

(assert (=> b!1094215 (= lt!368000 (lemmaNotForallFilterShorter!41 lt!368011 lambda!42248))))

(declare-fun lt!367992 () Unit!16004)

(assert (=> b!1094215 (= lt!367992 e!692641)))

(declare-fun c!185562 () Bool)

(assert (=> b!1094215 (= c!185562 (forall!2368 objs!8 lambda!42248))))

(declare-fun b!1094216 () Bool)

(declare-fun e!692646 () Unit!16004)

(declare-fun err!2254 () Unit!16004)

(assert (=> b!1094216 (= e!692646 err!2254)))

(declare-fun lt!368010 () Unit!16004)

(assert (=> b!1094216 (= lt!368010 (forallContained!500 (list!3774 lt!367999) lambda!42246 lt!367998))))

(assert (=> b!1094216 true))

(declare-fun b!1094217 () Bool)

(assert (=> b!1094217 (= e!692643 e!692650)))

(declare-fun res!486021 () Bool)

(assert (=> b!1094217 (=> res!486021 e!692650)))

(declare-fun lt!368018 () Bool)

(assert (=> b!1094217 (= res!486021 lt!368018)))

(declare-fun lt!368023 () Unit!16004)

(declare-fun e!692654 () Unit!16004)

(assert (=> b!1094217 (= lt!368023 e!692654)))

(declare-fun c!185564 () Bool)

(assert (=> b!1094217 (= c!185564 lt!368018)))

(declare-fun contains!1792 (BalanceConc!6460 tuple2!11722) Bool)

(assert (=> b!1094217 (= lt!368018 (contains!1792 lt!367993 lt!367998))))

(declare-fun b!1094218 () Bool)

(declare-fun Unit!16007 () Unit!16004)

(assert (=> b!1094218 (= e!692646 Unit!16007)))

(declare-fun b!1094219 () Bool)

(declare-fun size!8142 (List!10538) Int)

(declare-fun filter!270 (List!10538 Int) List!10538)

(assert (=> b!1094219 (= e!692642 (< (size!8142 (filter!270 lt!368011 lambda!42248)) (size!8142 lt!368011)))))

(declare-fun b!1094220 () Bool)

(declare-fun lt!368022 () List!10538)

(declare-fun forall!2369 (List!10538 Int) Bool)

(assert (=> b!1094220 (= e!692649 (forall!2369 lt!368022 lambda!42245))))

(declare-fun lt!368002 () List!10538)

(declare-fun sortObjectsByID!0 (BalanceConc!6460) BalanceConc!6460)

(assert (=> b!1094220 (= lt!368002 (list!3774 (sortObjectsByID!0 lt!367993)))))

(declare-fun lt!368016 () List!10538)

(declare-fun lt!368015 () List!10538)

(declare-fun ++!2851 (List!10538 List!10538) List!10538)

(assert (=> b!1094220 (= lt!368022 (++!2851 lt!368016 lt!368015))))

(declare-fun lt!368004 () Unit!16004)

(declare-fun lemmaConcatPreservesForall!86 (List!10538 List!10538 Int) Unit!16004)

(assert (=> b!1094220 (= lt!368004 (lemmaConcatPreservesForall!86 lt!368016 lt!368015 lambda!42245))))

(declare-fun lt!367997 () BalanceConc!6460)

(assert (=> b!1094220 (= lt!368015 (list!3774 lt!367997))))

(assert (=> b!1094220 (= lt!368016 (list!3774 (sortObjectsByID!0 lt!367999)))))

(declare-fun lt!368017 () List!10538)

(assert (=> b!1094220 (forall!2369 lt!368017 lambda!42245)))

(declare-fun lt!368008 () Unit!16004)

(declare-fun lemmaForallSubseq!43 (List!10538 List!10538 Int) Unit!16004)

(assert (=> b!1094220 (= lt!368008 (lemmaForallSubseq!43 lt!368017 lt!368011 lambda!42245))))

(declare-fun filter!271 (BalanceConc!6460 Int) BalanceConc!6460)

(assert (=> b!1094220 (= lt!368017 (list!3774 (filter!271 objs!8 lambda!42248)))))

(declare-fun lt!368009 () List!10538)

(assert (=> b!1094220 (forall!2369 lt!368009 lambda!42245)))

(declare-fun lt!368006 () Unit!16004)

(assert (=> b!1094220 (= lt!368006 (lemmaForallSubseq!43 lt!368009 lt!368011 lambda!42245))))

(assert (=> b!1094220 (= lt!368009 (list!3774 (filter!271 objs!8 lambda!42247)))))

(declare-fun lt!368003 () List!10538)

(assert (=> b!1094220 (forall!2369 lt!368003 lambda!42245)))

(declare-fun lt!368019 () Unit!16004)

(assert (=> b!1094220 (= lt!368019 (lemmaForallSubseq!43 lt!368003 lt!368011 lambda!42245))))

(assert (=> b!1094220 (= lt!368003 (list!3774 (filter!271 objs!8 lambda!42246)))))

(declare-fun lt!367994 () Unit!16004)

(declare-fun filterSubseq!35 (List!10538 Int) Unit!16004)

(assert (=> b!1094220 (= lt!367994 (filterSubseq!35 lt!368011 lambda!42248))))

(declare-fun lt!367991 () Unit!16004)

(assert (=> b!1094220 (= lt!367991 (filterSubseq!35 lt!368011 lambda!42247))))

(declare-fun lt!368012 () Unit!16004)

(assert (=> b!1094220 (= lt!368012 (filterSubseq!35 lt!368011 lambda!42246))))

(declare-fun b!1094221 () Bool)

(declare-fun e!692648 () Bool)

(assert (=> b!1094221 (= e!692648 e!692651)))

(declare-fun res!486022 () Bool)

(assert (=> b!1094221 (=> (not res!486022) (not e!692651))))

(declare-fun lt!368021 () Bool)

(assert (=> b!1094221 (= res!486022 (not lt!368021))))

(declare-fun lt!368014 () Unit!16004)

(assert (=> b!1094221 (= lt!368014 e!692646)))

(declare-fun c!185563 () Bool)

(assert (=> b!1094221 (= c!185563 lt!368021)))

(assert (=> b!1094221 (= lt!368021 (contains!1792 lt!367999 lt!367998))))

(declare-fun b!1094222 () Bool)

(declare-fun err!2255 () Unit!16004)

(assert (=> b!1094222 (= e!692644 err!2255)))

(declare-fun lt!368001 () Unit!16004)

(assert (=> b!1094222 (= lt!368001 (forallContained!500 (list!3774 objs!8) lambda!42246 lt!367998))))

(assert (=> b!1094222 true))

(declare-fun b!1094223 () Bool)

(declare-fun Unit!16008 () Unit!16004)

(assert (=> b!1094223 (= e!692654 Unit!16008)))

(declare-fun b!1094224 () Bool)

(declare-fun Unit!16009 () Unit!16004)

(assert (=> b!1094224 (= e!692641 Unit!16009)))

(declare-fun b!1094225 () Bool)

(declare-fun e!692653 () Bool)

(declare-fun tp!326594 () Bool)

(declare-fun inv!13475 (Conc!3223) Bool)

(assert (=> b!1094225 (= e!692653 (and (inv!13475 (c!185569 objs!8)) tp!326594))))

(declare-fun res!486023 () Bool)

(declare-fun e!692647 () Bool)

(assert (=> start!93702 (=> (not res!486023) (not e!692647))))

(assert (=> start!93702 (= res!486023 (forall!2368 objs!8 lambda!42245))))

(assert (=> start!93702 e!692647))

(declare-fun inv!13476 (BalanceConc!6460) Bool)

(assert (=> start!93702 (and (inv!13476 objs!8) e!692653)))

(declare-fun b!1094214 () Bool)

(declare-fun e!692652 () Bool)

(assert (=> b!1094214 (= e!692647 e!692652)))

(declare-fun res!486025 () Bool)

(assert (=> b!1094214 (=> (not res!486025) (not e!692652))))

(assert (=> b!1094214 (= res!486025 (> lt!367996 1))))

(assert (=> b!1094214 (= lt!367996 (size!8141 objs!8))))

(declare-fun b!1094226 () Bool)

(declare-fun Unit!16010 () Unit!16004)

(assert (=> b!1094226 (= e!692644 Unit!16010)))

(assert (=> b!1094227 (= e!692652 e!692648)))

(declare-fun res!486017 () Bool)

(assert (=> b!1094227 (=> (not res!486017) (not e!692648))))

(assert (=> b!1094227 (= res!486017 (contains!1792 objs!8 lt!367998))))

(assert (=> b!1094227 (= lt!367993 (filter!271 objs!8 lambda!42248))))

(assert (=> b!1094227 (= lt!367997 (filter!271 objs!8 lambda!42247))))

(assert (=> b!1094227 (= lt!367999 (filter!271 objs!8 lambda!42246))))

(declare-fun apply!2071 (BalanceConc!6460 Int) tuple2!11722)

(assert (=> b!1094227 (= lt!367998 (apply!2071 objs!8 (ite (>= lt!367996 0) (div lt!367996 2) (- (div (- lt!367996) 2)))))))

(declare-fun b!1094228 () Bool)

(assert (=> b!1094228 (= e!692645 (< (size!8142 (filter!270 lt!368011 lambda!42246)) (size!8142 lt!368011)))))

(declare-fun b!1094229 () Bool)

(declare-fun err!2256 () Unit!16004)

(assert (=> b!1094229 (= e!692654 err!2256)))

(declare-fun lt!368007 () Unit!16004)

(assert (=> b!1094229 (= lt!368007 (forallContained!500 (list!3774 lt!367993) lambda!42248 lt!367998))))

(assert (=> b!1094229 true))

(assert (= (and start!93702 res!486023) b!1094214))

(assert (= (and b!1094214 res!486025) b!1094227))

(assert (= (and b!1094227 res!486017) b!1094221))

(assert (= (and b!1094221 c!185563) b!1094216))

(assert (= (and b!1094221 (not c!185563)) b!1094218))

(assert (= (and b!1094221 res!486022) b!1094213))

(assert (= (and b!1094213 c!185565) b!1094222))

(assert (= (and b!1094213 (not c!185565)) b!1094226))

(assert (= (and b!1094213 (not res!486024)) b!1094228))

(assert (= (and b!1094213 (not res!486019)) b!1094217))

(assert (= (and b!1094217 c!185564) b!1094229))

(assert (= (and b!1094217 (not c!185564)) b!1094223))

(assert (= (and b!1094217 (not res!486021)) b!1094215))

(assert (= (and b!1094215 c!185562) b!1094212))

(assert (= (and b!1094215 (not c!185562)) b!1094224))

(assert (= (and b!1094215 (not res!486020)) b!1094219))

(assert (= (and b!1094215 (not res!486018)) b!1094220))

(assert (= start!93702 b!1094225))

(declare-fun m!1246639 () Bool)

(assert (=> b!1094228 m!1246639))

(assert (=> b!1094228 m!1246639))

(declare-fun m!1246641 () Bool)

(assert (=> b!1094228 m!1246641))

(declare-fun m!1246643 () Bool)

(assert (=> b!1094228 m!1246643))

(declare-fun m!1246645 () Bool)

(assert (=> b!1094222 m!1246645))

(assert (=> b!1094222 m!1246645))

(declare-fun m!1246647 () Bool)

(assert (=> b!1094222 m!1246647))

(declare-fun m!1246649 () Bool)

(assert (=> b!1094217 m!1246649))

(declare-fun m!1246651 () Bool)

(assert (=> b!1094213 m!1246651))

(declare-fun m!1246653 () Bool)

(assert (=> b!1094213 m!1246653))

(declare-fun m!1246655 () Bool)

(assert (=> b!1094213 m!1246655))

(declare-fun m!1246657 () Bool)

(assert (=> b!1094213 m!1246657))

(assert (=> b!1094213 m!1246645))

(declare-fun m!1246659 () Bool)

(assert (=> b!1094219 m!1246659))

(assert (=> b!1094219 m!1246659))

(declare-fun m!1246661 () Bool)

(assert (=> b!1094219 m!1246661))

(assert (=> b!1094219 m!1246643))

(declare-fun m!1246663 () Bool)

(assert (=> b!1094229 m!1246663))

(assert (=> b!1094229 m!1246663))

(declare-fun m!1246665 () Bool)

(assert (=> b!1094229 m!1246665))

(declare-fun m!1246667 () Bool)

(assert (=> start!93702 m!1246667))

(declare-fun m!1246669 () Bool)

(assert (=> start!93702 m!1246669))

(declare-fun m!1246671 () Bool)

(assert (=> b!1094212 m!1246671))

(declare-fun m!1246673 () Bool)

(assert (=> b!1094221 m!1246673))

(declare-fun m!1246675 () Bool)

(assert (=> b!1094220 m!1246675))

(declare-fun m!1246677 () Bool)

(assert (=> b!1094220 m!1246677))

(declare-fun m!1246679 () Bool)

(assert (=> b!1094220 m!1246679))

(declare-fun m!1246681 () Bool)

(assert (=> b!1094220 m!1246681))

(declare-fun m!1246683 () Bool)

(assert (=> b!1094220 m!1246683))

(declare-fun m!1246685 () Bool)

(assert (=> b!1094220 m!1246685))

(declare-fun m!1246687 () Bool)

(assert (=> b!1094220 m!1246687))

(assert (=> b!1094220 m!1246687))

(declare-fun m!1246689 () Bool)

(assert (=> b!1094220 m!1246689))

(declare-fun m!1246691 () Bool)

(assert (=> b!1094220 m!1246691))

(declare-fun m!1246693 () Bool)

(assert (=> b!1094220 m!1246693))

(declare-fun m!1246695 () Bool)

(assert (=> b!1094220 m!1246695))

(declare-fun m!1246697 () Bool)

(assert (=> b!1094220 m!1246697))

(declare-fun m!1246699 () Bool)

(assert (=> b!1094220 m!1246699))

(declare-fun m!1246701 () Bool)

(assert (=> b!1094220 m!1246701))

(declare-fun m!1246703 () Bool)

(assert (=> b!1094220 m!1246703))

(declare-fun m!1246705 () Bool)

(assert (=> b!1094220 m!1246705))

(assert (=> b!1094220 m!1246691))

(assert (=> b!1094220 m!1246677))

(declare-fun m!1246707 () Bool)

(assert (=> b!1094220 m!1246707))

(declare-fun m!1246709 () Bool)

(assert (=> b!1094220 m!1246709))

(declare-fun m!1246711 () Bool)

(assert (=> b!1094220 m!1246711))

(declare-fun m!1246713 () Bool)

(assert (=> b!1094220 m!1246713))

(assert (=> b!1094220 m!1246699))

(assert (=> b!1094220 m!1246711))

(declare-fun m!1246715 () Bool)

(assert (=> b!1094220 m!1246715))

(declare-fun m!1246717 () Bool)

(assert (=> b!1094220 m!1246717))

(declare-fun m!1246719 () Bool)

(assert (=> b!1094220 m!1246719))

(declare-fun m!1246721 () Bool)

(assert (=> b!1094225 m!1246721))

(declare-fun m!1246723 () Bool)

(assert (=> b!1094215 m!1246723))

(declare-fun m!1246725 () Bool)

(assert (=> b!1094215 m!1246725))

(declare-fun m!1246727 () Bool)

(assert (=> b!1094215 m!1246727))

(declare-fun m!1246729 () Bool)

(assert (=> b!1094214 m!1246729))

(declare-fun m!1246731 () Bool)

(assert (=> b!1094216 m!1246731))

(assert (=> b!1094216 m!1246731))

(declare-fun m!1246733 () Bool)

(assert (=> b!1094216 m!1246733))

(assert (=> b!1094227 m!1246691))

(declare-fun m!1246735 () Bool)

(assert (=> b!1094227 m!1246735))

(declare-fun m!1246737 () Bool)

(assert (=> b!1094227 m!1246737))

(assert (=> b!1094227 m!1246687))

(assert (=> b!1094227 m!1246677))

(check-sat (not b!1094225) (not b!1094240) (not b!1094213) (not b!1094227) (not b!1094238) (not b!1094219) (not b!1094222) (not b!1094212) (not b!1094221) (not b!1094237) (not b!1094229) (not b!1094239) (not b!1094214) (not b!1094215) (not b!1094220) (not start!93702) (not b!1094236) (not b!1094228) (not b!1094217) (not b!1094241) (not b!1094216))
(check-sat)
(get-model)

(declare-fun d!308299 () Bool)

(declare-fun lt!368026 () Bool)

(declare-fun contains!1794 (List!10538 tuple2!11722) Bool)

(assert (=> d!308299 (= lt!368026 (contains!1794 (list!3774 lt!367999) lt!367998))))

(declare-fun contains!1795 (Conc!3223 tuple2!11722) Bool)

(assert (=> d!308299 (= lt!368026 (contains!1795 (c!185569 lt!367999) lt!367998))))

(assert (=> d!308299 (= (contains!1792 lt!367999 lt!367998) lt!368026)))

(declare-fun bs!258413 () Bool)

(assert (= bs!258413 d!308299))

(assert (=> bs!258413 m!1246731))

(assert (=> bs!258413 m!1246731))

(declare-fun m!1246739 () Bool)

(assert (=> bs!258413 m!1246739))

(declare-fun m!1246741 () Bool)

(assert (=> bs!258413 m!1246741))

(assert (=> b!1094221 d!308299))

(declare-fun d!308301 () Bool)

(assert (=> d!308301 (forall!2369 lt!368017 lambda!42245)))

(declare-fun lt!368029 () Unit!16004)

(declare-fun choose!7043 (List!10538 List!10538 Int) Unit!16004)

(assert (=> d!308301 (= lt!368029 (choose!7043 lt!368017 lt!368011 lambda!42245))))

(assert (=> d!308301 (forall!2369 lt!368011 lambda!42245)))

(assert (=> d!308301 (= (lemmaForallSubseq!43 lt!368017 lt!368011 lambda!42245) lt!368029)))

(declare-fun bs!258414 () Bool)

(assert (= bs!258414 d!308301))

(assert (=> bs!258414 m!1246679))

(declare-fun m!1246743 () Bool)

(assert (=> bs!258414 m!1246743))

(declare-fun m!1246745 () Bool)

(assert (=> bs!258414 m!1246745))

(assert (=> b!1094220 d!308301))

(declare-fun d!308303 () Bool)

(declare-fun e!692667 () Bool)

(assert (=> d!308303 e!692667))

(declare-fun res!486028 () Bool)

(assert (=> d!308303 (=> (not res!486028) (not e!692667))))

(declare-fun isBalanced!890 (Conc!3223) Bool)

(declare-fun filter!273 (Conc!3223 Int) Conc!3223)

(assert (=> d!308303 (= res!486028 (isBalanced!890 (filter!273 (c!185569 objs!8) lambda!42248)))))

(declare-fun lt!368032 () BalanceConc!6460)

(assert (=> d!308303 (= lt!368032 (BalanceConc!6461 (filter!273 (c!185569 objs!8) lambda!42248)))))

(assert (=> d!308303 (= (filter!271 objs!8 lambda!42248) lt!368032)))

(declare-fun b!1094244 () Bool)

(assert (=> b!1094244 (= e!692667 (= (list!3774 lt!368032) (filter!270 (list!3774 objs!8) lambda!42248)))))

(assert (= (and d!308303 res!486028) b!1094244))

(declare-fun m!1246747 () Bool)

(assert (=> d!308303 m!1246747))

(assert (=> d!308303 m!1246747))

(declare-fun m!1246749 () Bool)

(assert (=> d!308303 m!1246749))

(declare-fun m!1246751 () Bool)

(assert (=> b!1094244 m!1246751))

(assert (=> b!1094244 m!1246645))

(assert (=> b!1094244 m!1246645))

(declare-fun m!1246753 () Bool)

(assert (=> b!1094244 m!1246753))

(assert (=> b!1094220 d!308303))

(declare-fun bs!258455 () Bool)

(declare-fun b!1094429 () Bool)

(assert (= bs!258455 (and b!1094429 start!93702)))

(declare-fun lambda!42351 () Int)

(assert (=> bs!258455 (not (= lambda!42351 lambda!42245))))

(declare-fun bs!258456 () Bool)

(assert (= bs!258456 (and b!1094429 b!1094227)))

(declare-fun lt!368313 () tuple2!11722)

(assert (=> bs!258456 (= (= (_1!6687 lt!368313) (_1!6687 lt!367998)) (= lambda!42351 lambda!42246))))

(assert (=> bs!258456 (not (= lambda!42351 lambda!42247))))

(assert (=> bs!258456 (not (= lambda!42351 lambda!42248))))

(declare-fun b!1094442 () Bool)

(declare-fun e!692797 () Bool)

(assert (=> b!1094442 (= e!692797 true)))

(declare-fun b!1094441 () Bool)

(declare-fun e!692796 () Bool)

(assert (=> b!1094441 (= e!692796 e!692797)))

(assert (=> b!1094429 e!692796))

(assert (= b!1094441 b!1094442))

(assert (= b!1094429 b!1094441))

(declare-fun lambda!42352 () Int)

(assert (=> b!1094429 (not (= lambda!42352 lambda!42351))))

(assert (=> bs!258456 (not (= lambda!42352 lambda!42248))))

(assert (=> bs!258456 (= (= (_1!6687 lt!368313) (_1!6687 lt!367998)) (= lambda!42352 lambda!42247))))

(assert (=> bs!258455 (not (= lambda!42352 lambda!42245))))

(assert (=> bs!258456 (not (= lambda!42352 lambda!42246))))

(declare-fun b!1094446 () Bool)

(declare-fun e!692801 () Bool)

(assert (=> b!1094446 (= e!692801 true)))

(declare-fun b!1094445 () Bool)

(declare-fun e!692800 () Bool)

(assert (=> b!1094445 (= e!692800 e!692801)))

(assert (=> b!1094429 e!692800))

(assert (= b!1094445 b!1094446))

(assert (= b!1094429 b!1094445))

(declare-fun lambda!42353 () Int)

(assert (=> b!1094429 (not (= lambda!42353 lambda!42351))))

(assert (=> bs!258456 (= (= (_1!6687 lt!368313) (_1!6687 lt!367998)) (= lambda!42353 lambda!42248))))

(assert (=> b!1094429 (not (= lambda!42353 lambda!42352))))

(assert (=> bs!258456 (not (= lambda!42353 lambda!42247))))

(assert (=> bs!258455 (not (= lambda!42353 lambda!42245))))

(assert (=> bs!258456 (not (= lambda!42353 lambda!42246))))

(declare-fun b!1094450 () Bool)

(declare-fun e!692805 () Bool)

(assert (=> b!1094450 (= e!692805 true)))

(declare-fun b!1094449 () Bool)

(declare-fun e!692804 () Bool)

(assert (=> b!1094449 (= e!692804 e!692805)))

(assert (=> b!1094429 e!692804))

(assert (= b!1094449 b!1094450))

(assert (= b!1094429 b!1094449))

(declare-fun lambda!42354 () Int)

(assert (=> b!1094429 (not (= lambda!42354 lambda!42351))))

(assert (=> b!1094429 (not (= lambda!42354 lambda!42352))))

(assert (=> bs!258456 (not (= lambda!42354 lambda!42247))))

(assert (=> bs!258455 (= lambda!42354 lambda!42245)))

(assert (=> bs!258456 (not (= lambda!42354 lambda!42246))))

(assert (=> b!1094429 (not (= lambda!42354 lambda!42353))))

(assert (=> bs!258456 (not (= lambda!42354 lambda!42248))))

(declare-fun bs!258459 () Bool)

(declare-fun d!308307 () Bool)

(assert (= bs!258459 (and d!308307 b!1094429)))

(declare-fun lambda!42355 () Int)

(assert (=> bs!258459 (not (= lambda!42355 lambda!42351))))

(assert (=> bs!258459 (not (= lambda!42355 lambda!42352))))

(assert (=> bs!258459 (= lambda!42355 lambda!42354)))

(declare-fun bs!258462 () Bool)

(assert (= bs!258462 (and d!308307 b!1094227)))

(assert (=> bs!258462 (not (= lambda!42355 lambda!42247))))

(declare-fun bs!258464 () Bool)

(assert (= bs!258464 (and d!308307 start!93702)))

(assert (=> bs!258464 (= lambda!42355 lambda!42245)))

(assert (=> bs!258462 (not (= lambda!42355 lambda!42246))))

(assert (=> bs!258459 (not (= lambda!42355 lambda!42353))))

(assert (=> bs!258462 (not (= lambda!42355 lambda!42248))))

(declare-fun lt!368338 () BalanceConc!6460)

(assert (=> d!308307 (forall!2368 lt!368338 lambda!42355)))

(declare-fun e!692788 () BalanceConc!6460)

(assert (=> d!308307 (= lt!368338 e!692788)))

(declare-fun c!185621 () Bool)

(assert (=> d!308307 (= c!185621 (<= (size!8141 lt!367993) 1))))

(assert (=> d!308307 (= (sortObjectsByID!0 lt!367993) lt!368338)))

(declare-fun b!1094427 () Bool)

(declare-fun e!692792 () Unit!16004)

(declare-fun Unit!16015 () Unit!16004)

(assert (=> b!1094427 (= e!692792 Unit!16015)))

(declare-fun b!1094428 () Bool)

(declare-fun e!692787 () Unit!16004)

(declare-fun Unit!16017 () Unit!16004)

(assert (=> b!1094428 (= e!692787 Unit!16017)))

(declare-fun lt!368317 () BalanceConc!6460)

(declare-fun lt!368322 () BalanceConc!6460)

(declare-fun lt!368341 () BalanceConc!6460)

(declare-fun ++!2853 (BalanceConc!6460 BalanceConc!6460) BalanceConc!6460)

(assert (=> b!1094429 (= e!692788 (++!2853 (++!2853 (sortObjectsByID!0 lt!368317) lt!368322) (sortObjectsByID!0 lt!368341)))))

(assert (=> b!1094429 (= lt!368313 (apply!2071 lt!367993 (ite (>= (size!8141 lt!367993) 0) (div (size!8141 lt!367993) 2) (- (div (- (size!8141 lt!367993)) 2)))))))

(assert (=> b!1094429 (= lt!368317 (filter!271 lt!367993 lambda!42351))))

(assert (=> b!1094429 (= lt!368322 (filter!271 lt!367993 lambda!42352))))

(assert (=> b!1094429 (= lt!368341 (filter!271 lt!367993 lambda!42353))))

(declare-fun c!185623 () Bool)

(assert (=> b!1094429 (= c!185623 (contains!1792 lt!368317 lt!368313))))

(declare-fun lt!368311 () Unit!16004)

(assert (=> b!1094429 (= lt!368311 e!692787)))

(declare-fun c!185622 () Bool)

(assert (=> b!1094429 (= c!185622 (forall!2368 lt!367993 lambda!42351))))

(declare-fun lt!368318 () Unit!16004)

(assert (=> b!1094429 (= lt!368318 e!692792)))

(declare-fun lt!368327 () List!10538)

(assert (=> b!1094429 (= lt!368327 (list!3774 lt!367993))))

(declare-fun lt!368326 () Unit!16004)

(assert (=> b!1094429 (= lt!368326 (lemmaNotForallFilterShorter!41 lt!368327 lambda!42351))))

(declare-fun res!486088 () Bool)

(assert (=> b!1094429 (= res!486088 (isEmpty!6670 lt!368327))))

(declare-fun e!692791 () Bool)

(assert (=> b!1094429 (=> res!486088 e!692791)))

(assert (=> b!1094429 e!692791))

(declare-fun lt!368308 () Unit!16004)

(assert (=> b!1094429 (= lt!368308 lt!368326)))

(declare-fun c!185625 () Bool)

(assert (=> b!1094429 (= c!185625 (contains!1792 lt!368341 lt!368313))))

(declare-fun lt!368319 () Unit!16004)

(declare-fun e!692790 () Unit!16004)

(assert (=> b!1094429 (= lt!368319 e!692790)))

(declare-fun c!185624 () Bool)

(assert (=> b!1094429 (= c!185624 (forall!2368 lt!367993 lambda!42353))))

(declare-fun lt!368321 () Unit!16004)

(declare-fun e!692789 () Unit!16004)

(assert (=> b!1094429 (= lt!368321 e!692789)))

(declare-fun lt!368330 () List!10538)

(assert (=> b!1094429 (= lt!368330 (list!3774 lt!367993))))

(declare-fun lt!368325 () Unit!16004)

(assert (=> b!1094429 (= lt!368325 (lemmaNotForallFilterShorter!41 lt!368330 lambda!42353))))

(declare-fun res!486089 () Bool)

(assert (=> b!1094429 (= res!486089 (isEmpty!6670 lt!368330))))

(declare-fun e!692793 () Bool)

(assert (=> b!1094429 (=> res!486089 e!692793)))

(assert (=> b!1094429 e!692793))

(declare-fun lt!368335 () Unit!16004)

(assert (=> b!1094429 (= lt!368335 lt!368325)))

(declare-fun lt!368328 () Unit!16004)

(assert (=> b!1094429 (= lt!368328 (filterSubseq!35 (list!3774 lt!367993) lambda!42351))))

(declare-fun lt!368314 () Unit!16004)

(assert (=> b!1094429 (= lt!368314 (filterSubseq!35 (list!3774 lt!367993) lambda!42352))))

(declare-fun lt!368307 () Unit!16004)

(assert (=> b!1094429 (= lt!368307 (filterSubseq!35 (list!3774 lt!367993) lambda!42353))))

(declare-fun lt!368339 () List!10538)

(assert (=> b!1094429 (= lt!368339 (list!3774 (filter!271 lt!367993 lambda!42351)))))

(declare-fun lt!368342 () List!10538)

(assert (=> b!1094429 (= lt!368342 (list!3774 lt!367993))))

(declare-fun lt!368320 () Unit!16004)

(assert (=> b!1094429 (= lt!368320 (lemmaForallSubseq!43 lt!368339 lt!368342 lambda!42354))))

(assert (=> b!1094429 (forall!2369 lt!368339 lambda!42354)))

(declare-fun lt!368312 () Unit!16004)

(assert (=> b!1094429 (= lt!368312 lt!368320)))

(declare-fun lt!368332 () List!10538)

(assert (=> b!1094429 (= lt!368332 (list!3774 (filter!271 lt!367993 lambda!42352)))))

(declare-fun lt!368329 () List!10538)

(assert (=> b!1094429 (= lt!368329 (list!3774 lt!367993))))

(declare-fun lt!368336 () Unit!16004)

(assert (=> b!1094429 (= lt!368336 (lemmaForallSubseq!43 lt!368332 lt!368329 lambda!42354))))

(assert (=> b!1094429 (forall!2369 lt!368332 lambda!42354)))

(declare-fun lt!368333 () Unit!16004)

(assert (=> b!1094429 (= lt!368333 lt!368336)))

(declare-fun lt!368323 () List!10538)

(assert (=> b!1094429 (= lt!368323 (list!3774 (filter!271 lt!367993 lambda!42353)))))

(declare-fun lt!368331 () List!10538)

(assert (=> b!1094429 (= lt!368331 (list!3774 lt!367993))))

(declare-fun lt!368316 () Unit!16004)

(assert (=> b!1094429 (= lt!368316 (lemmaForallSubseq!43 lt!368323 lt!368331 lambda!42354))))

(assert (=> b!1094429 (forall!2369 lt!368323 lambda!42354)))

(declare-fun lt!368337 () Unit!16004)

(assert (=> b!1094429 (= lt!368337 lt!368316)))

(declare-fun lt!368309 () Unit!16004)

(assert (=> b!1094429 (= lt!368309 (lemmaConcatPreservesForall!86 (list!3774 (sortObjectsByID!0 lt!368317)) (list!3774 lt!368322) lambda!42354))))

(declare-fun lt!368310 () Unit!16004)

(assert (=> b!1094429 (= lt!368310 (lemmaConcatPreservesForall!86 (++!2851 (list!3774 (sortObjectsByID!0 lt!368317)) (list!3774 lt!368322)) (list!3774 (sortObjectsByID!0 lt!368341)) lambda!42354))))

(declare-fun b!1094430 () Bool)

(assert (=> b!1094430 true))

(declare-fun lt!368334 () Unit!16004)

(assert (=> b!1094430 (= lt!368334 (forallContained!500 (list!3774 lt!367993) lambda!42351 lt!368313))))

(declare-fun err!2284 () Unit!16004)

(assert (=> b!1094430 (= e!692792 err!2284)))

(declare-fun b!1094431 () Bool)

(assert (=> b!1094431 (= e!692788 lt!367993)))

(declare-fun b!1094432 () Bool)

(declare-fun Unit!16019 () Unit!16004)

(assert (=> b!1094432 (= e!692790 Unit!16019)))

(declare-fun b!1094433 () Bool)

(assert (=> b!1094433 true))

(declare-fun lt!368340 () Unit!16004)

(assert (=> b!1094433 (= lt!368340 (forallContained!500 (list!3774 lt!368341) lambda!42353 lt!368313))))

(declare-fun err!2285 () Unit!16004)

(assert (=> b!1094433 (= e!692790 err!2285)))

(declare-fun b!1094434 () Bool)

(assert (=> b!1094434 true))

(declare-fun lt!368324 () Unit!16004)

(assert (=> b!1094434 (= lt!368324 (forallContained!500 (list!3774 lt!367993) lambda!42353 lt!368313))))

(declare-fun err!2283 () Unit!16004)

(assert (=> b!1094434 (= e!692789 err!2283)))

(declare-fun b!1094435 () Bool)

(declare-fun Unit!16021 () Unit!16004)

(assert (=> b!1094435 (= e!692789 Unit!16021)))

(declare-fun b!1094436 () Bool)

(assert (=> b!1094436 (= e!692793 (< (size!8142 (filter!270 lt!368330 lambda!42353)) (size!8142 lt!368330)))))

(declare-fun b!1094437 () Bool)

(assert (=> b!1094437 true))

(declare-fun lt!368315 () Unit!16004)

(assert (=> b!1094437 (= lt!368315 (forallContained!500 (list!3774 lt!368317) lambda!42351 lt!368313))))

(declare-fun err!2282 () Unit!16004)

(assert (=> b!1094437 (= e!692787 err!2282)))

(declare-fun b!1094438 () Bool)

(assert (=> b!1094438 (= e!692791 (< (size!8142 (filter!270 lt!368327 lambda!42351)) (size!8142 lt!368327)))))

(assert (= (and d!308307 c!185621) b!1094431))

(assert (= (and d!308307 (not c!185621)) b!1094429))

(assert (= (and b!1094429 c!185623) b!1094437))

(assert (= (and b!1094429 (not c!185623)) b!1094428))

(assert (= (and b!1094429 c!185622) b!1094430))

(assert (= (and b!1094429 (not c!185622)) b!1094427))

(assert (= (and b!1094429 (not res!486088)) b!1094438))

(assert (= (and b!1094429 c!185625) b!1094433))

(assert (= (and b!1094429 (not c!185625)) b!1094432))

(assert (= (and b!1094429 c!185624) b!1094434))

(assert (= (and b!1094429 (not c!185624)) b!1094435))

(assert (= (and b!1094429 (not res!486089)) b!1094436))

(declare-fun m!1247157 () Bool)

(assert (=> b!1094429 m!1247157))

(declare-fun m!1247159 () Bool)

(assert (=> b!1094429 m!1247159))

(declare-fun m!1247161 () Bool)

(assert (=> b!1094429 m!1247161))

(declare-fun m!1247163 () Bool)

(assert (=> b!1094429 m!1247163))

(declare-fun m!1247165 () Bool)

(assert (=> b!1094429 m!1247165))

(declare-fun m!1247167 () Bool)

(assert (=> b!1094429 m!1247167))

(declare-fun m!1247169 () Bool)

(assert (=> b!1094429 m!1247169))

(declare-fun m!1247171 () Bool)

(assert (=> b!1094429 m!1247171))

(declare-fun m!1247173 () Bool)

(assert (=> b!1094429 m!1247173))

(declare-fun m!1247175 () Bool)

(assert (=> b!1094429 m!1247175))

(declare-fun m!1247177 () Bool)

(assert (=> b!1094429 m!1247177))

(declare-fun m!1247179 () Bool)

(assert (=> b!1094429 m!1247179))

(declare-fun m!1247181 () Bool)

(assert (=> b!1094429 m!1247181))

(declare-fun m!1247183 () Bool)

(assert (=> b!1094429 m!1247183))

(declare-fun m!1247185 () Bool)

(assert (=> b!1094429 m!1247185))

(assert (=> b!1094429 m!1247157))

(declare-fun m!1247187 () Bool)

(assert (=> b!1094429 m!1247187))

(declare-fun m!1247189 () Bool)

(assert (=> b!1094429 m!1247189))

(declare-fun m!1247191 () Bool)

(assert (=> b!1094429 m!1247191))

(declare-fun m!1247193 () Bool)

(assert (=> b!1094429 m!1247193))

(assert (=> b!1094429 m!1247179))

(assert (=> b!1094429 m!1246663))

(declare-fun m!1247195 () Bool)

(assert (=> b!1094429 m!1247195))

(assert (=> b!1094429 m!1247187))

(assert (=> b!1094429 m!1247189))

(assert (=> b!1094429 m!1247161))

(assert (=> b!1094429 m!1247181))

(assert (=> b!1094429 m!1247163))

(declare-fun m!1247197 () Bool)

(assert (=> b!1094429 m!1247197))

(declare-fun m!1247199 () Bool)

(assert (=> b!1094429 m!1247199))

(assert (=> b!1094429 m!1246663))

(declare-fun m!1247201 () Bool)

(assert (=> b!1094429 m!1247201))

(assert (=> b!1094429 m!1246723))

(assert (=> b!1094429 m!1247189))

(declare-fun m!1247203 () Bool)

(assert (=> b!1094429 m!1247203))

(declare-fun m!1247205 () Bool)

(assert (=> b!1094429 m!1247205))

(declare-fun m!1247207 () Bool)

(assert (=> b!1094429 m!1247207))

(assert (=> b!1094429 m!1247193))

(assert (=> b!1094429 m!1247187))

(declare-fun m!1247209 () Bool)

(assert (=> b!1094429 m!1247209))

(declare-fun m!1247211 () Bool)

(assert (=> b!1094429 m!1247211))

(assert (=> b!1094429 m!1247173))

(assert (=> b!1094429 m!1247169))

(assert (=> b!1094429 m!1246663))

(declare-fun m!1247213 () Bool)

(assert (=> b!1094429 m!1247213))

(assert (=> b!1094429 m!1247193))

(declare-fun m!1247215 () Bool)

(assert (=> b!1094429 m!1247215))

(assert (=> b!1094429 m!1247181))

(assert (=> b!1094429 m!1246663))

(assert (=> b!1094429 m!1247169))

(declare-fun m!1247217 () Bool)

(assert (=> b!1094429 m!1247217))

(assert (=> b!1094429 m!1247173))

(declare-fun m!1247219 () Bool)

(assert (=> b!1094429 m!1247219))

(declare-fun m!1247221 () Bool)

(assert (=> b!1094429 m!1247221))

(assert (=> b!1094429 m!1247157))

(declare-fun m!1247223 () Bool)

(assert (=> b!1094429 m!1247223))

(declare-fun m!1247225 () Bool)

(assert (=> b!1094433 m!1247225))

(assert (=> b!1094433 m!1247225))

(declare-fun m!1247227 () Bool)

(assert (=> b!1094433 m!1247227))

(assert (=> b!1094434 m!1246663))

(assert (=> b!1094434 m!1246663))

(declare-fun m!1247229 () Bool)

(assert (=> b!1094434 m!1247229))

(declare-fun m!1247231 () Bool)

(assert (=> b!1094437 m!1247231))

(assert (=> b!1094437 m!1247231))

(declare-fun m!1247233 () Bool)

(assert (=> b!1094437 m!1247233))

(assert (=> b!1094430 m!1246663))

(assert (=> b!1094430 m!1246663))

(declare-fun m!1247235 () Bool)

(assert (=> b!1094430 m!1247235))

(declare-fun m!1247237 () Bool)

(assert (=> d!308307 m!1247237))

(assert (=> d!308307 m!1246723))

(declare-fun m!1247239 () Bool)

(assert (=> b!1094438 m!1247239))

(assert (=> b!1094438 m!1247239))

(declare-fun m!1247241 () Bool)

(assert (=> b!1094438 m!1247241))

(declare-fun m!1247243 () Bool)

(assert (=> b!1094438 m!1247243))

(declare-fun m!1247245 () Bool)

(assert (=> b!1094436 m!1247245))

(assert (=> b!1094436 m!1247245))

(declare-fun m!1247247 () Bool)

(assert (=> b!1094436 m!1247247))

(declare-fun m!1247249 () Bool)

(assert (=> b!1094436 m!1247249))

(assert (=> b!1094220 d!308307))

(declare-fun d!308423 () Bool)

(declare-fun list!3776 (Conc!3223) List!10538)

(assert (=> d!308423 (= (list!3774 lt!367997) (list!3776 (c!185569 lt!367997)))))

(declare-fun bs!258468 () Bool)

(assert (= bs!258468 d!308423))

(declare-fun m!1247251 () Bool)

(assert (=> bs!258468 m!1247251))

(assert (=> b!1094220 d!308423))

(declare-fun d!308425 () Bool)

(declare-fun e!692825 () Bool)

(assert (=> d!308425 e!692825))

(declare-fun res!486090 () Bool)

(assert (=> d!308425 (=> (not res!486090) (not e!692825))))

(assert (=> d!308425 (= res!486090 (isBalanced!890 (filter!273 (c!185569 objs!8) lambda!42246)))))

(declare-fun lt!368343 () BalanceConc!6460)

(assert (=> d!308425 (= lt!368343 (BalanceConc!6461 (filter!273 (c!185569 objs!8) lambda!42246)))))

(assert (=> d!308425 (= (filter!271 objs!8 lambda!42246) lt!368343)))

(declare-fun b!1094477 () Bool)

(assert (=> b!1094477 (= e!692825 (= (list!3774 lt!368343) (filter!270 (list!3774 objs!8) lambda!42246)))))

(assert (= (and d!308425 res!486090) b!1094477))

(declare-fun m!1247253 () Bool)

(assert (=> d!308425 m!1247253))

(assert (=> d!308425 m!1247253))

(declare-fun m!1247255 () Bool)

(assert (=> d!308425 m!1247255))

(declare-fun m!1247257 () Bool)

(assert (=> b!1094477 m!1247257))

(assert (=> b!1094477 m!1246645))

(assert (=> b!1094477 m!1246645))

(declare-fun m!1247259 () Bool)

(assert (=> b!1094477 m!1247259))

(assert (=> b!1094220 d!308425))

(declare-fun d!308427 () Bool)

(declare-fun res!486095 () Bool)

(declare-fun e!692830 () Bool)

(assert (=> d!308427 (=> res!486095 e!692830)))

(get-info :version)

(assert (=> d!308427 (= res!486095 ((_ is Nil!10522) lt!368022))))

(assert (=> d!308427 (= (forall!2369 lt!368022 lambda!42245) e!692830)))

(declare-fun b!1094482 () Bool)

(declare-fun e!692831 () Bool)

(assert (=> b!1094482 (= e!692830 e!692831)))

(declare-fun res!486096 () Bool)

(assert (=> b!1094482 (=> (not res!486096) (not e!692831))))

(declare-fun dynLambda!4601 (Int tuple2!11722) Bool)

(assert (=> b!1094482 (= res!486096 (dynLambda!4601 lambda!42245 (h!15923 lt!368022)))))

(declare-fun b!1094483 () Bool)

(assert (=> b!1094483 (= e!692831 (forall!2369 (t!102896 lt!368022) lambda!42245))))

(assert (= (and d!308427 (not res!486095)) b!1094482))

(assert (= (and b!1094482 res!486096) b!1094483))

(declare-fun b_lambda!31139 () Bool)

(assert (=> (not b_lambda!31139) (not b!1094482)))

(declare-fun m!1247261 () Bool)

(assert (=> b!1094482 m!1247261))

(declare-fun m!1247263 () Bool)

(assert (=> b!1094483 m!1247263))

(assert (=> b!1094220 d!308427))

(declare-fun d!308429 () Bool)

(assert (=> d!308429 (= (list!3774 (filter!271 objs!8 lambda!42247)) (list!3776 (c!185569 (filter!271 objs!8 lambda!42247))))))

(declare-fun bs!258469 () Bool)

(assert (= bs!258469 d!308429))

(declare-fun m!1247265 () Bool)

(assert (=> bs!258469 m!1247265))

(assert (=> b!1094220 d!308429))

(declare-fun d!308431 () Bool)

(declare-fun res!486097 () Bool)

(declare-fun e!692832 () Bool)

(assert (=> d!308431 (=> res!486097 e!692832)))

(assert (=> d!308431 (= res!486097 ((_ is Nil!10522) lt!368017))))

(assert (=> d!308431 (= (forall!2369 lt!368017 lambda!42245) e!692832)))

(declare-fun b!1094484 () Bool)

(declare-fun e!692833 () Bool)

(assert (=> b!1094484 (= e!692832 e!692833)))

(declare-fun res!486098 () Bool)

(assert (=> b!1094484 (=> (not res!486098) (not e!692833))))

(assert (=> b!1094484 (= res!486098 (dynLambda!4601 lambda!42245 (h!15923 lt!368017)))))

(declare-fun b!1094485 () Bool)

(assert (=> b!1094485 (= e!692833 (forall!2369 (t!102896 lt!368017) lambda!42245))))

(assert (= (and d!308431 (not res!486097)) b!1094484))

(assert (= (and b!1094484 res!486098) b!1094485))

(declare-fun b_lambda!31141 () Bool)

(assert (=> (not b_lambda!31141) (not b!1094484)))

(declare-fun m!1247267 () Bool)

(assert (=> b!1094484 m!1247267))

(declare-fun m!1247269 () Bool)

(assert (=> b!1094485 m!1247269))

(assert (=> b!1094220 d!308431))

(declare-fun d!308433 () Bool)

(assert (=> d!308433 (= (list!3774 (filter!271 objs!8 lambda!42246)) (list!3776 (c!185569 (filter!271 objs!8 lambda!42246))))))

(declare-fun bs!258470 () Bool)

(assert (= bs!258470 d!308433))

(declare-fun m!1247271 () Bool)

(assert (=> bs!258470 m!1247271))

(assert (=> b!1094220 d!308433))

(declare-fun d!308435 () Bool)

(declare-fun res!486099 () Bool)

(declare-fun e!692834 () Bool)

(assert (=> d!308435 (=> res!486099 e!692834)))

(assert (=> d!308435 (= res!486099 ((_ is Nil!10522) lt!368009))))

(assert (=> d!308435 (= (forall!2369 lt!368009 lambda!42245) e!692834)))

(declare-fun b!1094486 () Bool)

(declare-fun e!692835 () Bool)

(assert (=> b!1094486 (= e!692834 e!692835)))

(declare-fun res!486100 () Bool)

(assert (=> b!1094486 (=> (not res!486100) (not e!692835))))

(assert (=> b!1094486 (= res!486100 (dynLambda!4601 lambda!42245 (h!15923 lt!368009)))))

(declare-fun b!1094487 () Bool)

(assert (=> b!1094487 (= e!692835 (forall!2369 (t!102896 lt!368009) lambda!42245))))

(assert (= (and d!308435 (not res!486099)) b!1094486))

(assert (= (and b!1094486 res!486100) b!1094487))

(declare-fun b_lambda!31143 () Bool)

(assert (=> (not b_lambda!31143) (not b!1094486)))

(declare-fun m!1247273 () Bool)

(assert (=> b!1094486 m!1247273))

(declare-fun m!1247275 () Bool)

(assert (=> b!1094487 m!1247275))

(assert (=> b!1094220 d!308435))

(declare-fun d!308437 () Bool)

(assert (=> d!308437 (= (list!3774 (sortObjectsByID!0 lt!367999)) (list!3776 (c!185569 (sortObjectsByID!0 lt!367999))))))

(declare-fun bs!258471 () Bool)

(assert (= bs!258471 d!308437))

(declare-fun m!1247277 () Bool)

(assert (=> bs!258471 m!1247277))

(assert (=> b!1094220 d!308437))

(declare-fun d!308439 () Bool)

(assert (=> d!308439 (forall!2369 (++!2851 lt!368016 lt!368015) lambda!42245)))

(declare-fun lt!368346 () Unit!16004)

(declare-fun choose!7045 (List!10538 List!10538 Int) Unit!16004)

(assert (=> d!308439 (= lt!368346 (choose!7045 lt!368016 lt!368015 lambda!42245))))

(assert (=> d!308439 (forall!2369 lt!368016 lambda!42245)))

(assert (=> d!308439 (= (lemmaConcatPreservesForall!86 lt!368016 lt!368015 lambda!42245) lt!368346)))

(declare-fun bs!258472 () Bool)

(assert (= bs!258472 d!308439))

(assert (=> bs!258472 m!1246683))

(assert (=> bs!258472 m!1246683))

(declare-fun m!1247279 () Bool)

(assert (=> bs!258472 m!1247279))

(declare-fun m!1247281 () Bool)

(assert (=> bs!258472 m!1247281))

(declare-fun m!1247283 () Bool)

(assert (=> bs!258472 m!1247283))

(assert (=> b!1094220 d!308439))

(declare-fun bs!258473 () Bool)

(declare-fun b!1094490 () Bool)

(assert (= bs!258473 (and b!1094490 b!1094429)))

(declare-fun lambda!42356 () Int)

(declare-fun lt!368353 () tuple2!11722)

(assert (=> bs!258473 (= (= (_1!6687 lt!368353) (_1!6687 lt!368313)) (= lambda!42356 lambda!42351))))

(declare-fun bs!258474 () Bool)

(assert (= bs!258474 (and b!1094490 d!308307)))

(assert (=> bs!258474 (not (= lambda!42356 lambda!42355))))

(assert (=> bs!258473 (not (= lambda!42356 lambda!42352))))

(assert (=> bs!258473 (not (= lambda!42356 lambda!42354))))

(declare-fun bs!258475 () Bool)

(assert (= bs!258475 (and b!1094490 b!1094227)))

(assert (=> bs!258475 (not (= lambda!42356 lambda!42247))))

(declare-fun bs!258476 () Bool)

(assert (= bs!258476 (and b!1094490 start!93702)))

(assert (=> bs!258476 (not (= lambda!42356 lambda!42245))))

(assert (=> bs!258475 (= (= (_1!6687 lt!368353) (_1!6687 lt!367998)) (= lambda!42356 lambda!42246))))

(assert (=> bs!258473 (not (= lambda!42356 lambda!42353))))

(assert (=> bs!258475 (not (= lambda!42356 lambda!42248))))

(declare-fun b!1094501 () Bool)

(declare-fun e!692844 () Bool)

(assert (=> b!1094501 (= e!692844 true)))

(declare-fun b!1094500 () Bool)

(declare-fun e!692843 () Bool)

(assert (=> b!1094500 (= e!692843 e!692844)))

(assert (=> b!1094490 e!692843))

(assert (= b!1094500 b!1094501))

(assert (= b!1094490 b!1094500))

(declare-fun lambda!42357 () Int)

(assert (=> bs!258473 (not (= lambda!42357 lambda!42351))))

(assert (=> bs!258474 (not (= lambda!42357 lambda!42355))))

(assert (=> bs!258473 (= (= (_1!6687 lt!368353) (_1!6687 lt!368313)) (= lambda!42357 lambda!42352))))

(assert (=> bs!258473 (not (= lambda!42357 lambda!42354))))

(assert (=> b!1094490 (not (= lambda!42357 lambda!42356))))

(assert (=> bs!258475 (= (= (_1!6687 lt!368353) (_1!6687 lt!367998)) (= lambda!42357 lambda!42247))))

(assert (=> bs!258476 (not (= lambda!42357 lambda!42245))))

(assert (=> bs!258475 (not (= lambda!42357 lambda!42246))))

(assert (=> bs!258473 (not (= lambda!42357 lambda!42353))))

(assert (=> bs!258475 (not (= lambda!42357 lambda!42248))))

(declare-fun b!1094503 () Bool)

(declare-fun e!692846 () Bool)

(assert (=> b!1094503 (= e!692846 true)))

(declare-fun b!1094502 () Bool)

(declare-fun e!692845 () Bool)

(assert (=> b!1094502 (= e!692845 e!692846)))

(assert (=> b!1094490 e!692845))

(assert (= b!1094502 b!1094503))

(assert (= b!1094490 b!1094502))

(declare-fun lambda!42358 () Int)

(assert (=> bs!258473 (not (= lambda!42358 lambda!42351))))

(assert (=> bs!258474 (not (= lambda!42358 lambda!42355))))

(assert (=> bs!258473 (not (= lambda!42358 lambda!42352))))

(assert (=> b!1094490 (not (= lambda!42358 lambda!42356))))

(assert (=> bs!258475 (not (= lambda!42358 lambda!42247))))

(assert (=> bs!258476 (not (= lambda!42358 lambda!42245))))

(assert (=> bs!258475 (not (= lambda!42358 lambda!42246))))

(assert (=> bs!258473 (= (= (_1!6687 lt!368353) (_1!6687 lt!368313)) (= lambda!42358 lambda!42353))))

(assert (=> bs!258475 (= (= (_1!6687 lt!368353) (_1!6687 lt!367998)) (= lambda!42358 lambda!42248))))

(assert (=> b!1094490 (not (= lambda!42358 lambda!42357))))

(assert (=> bs!258473 (not (= lambda!42358 lambda!42354))))

(declare-fun b!1094505 () Bool)

(declare-fun e!692848 () Bool)

(assert (=> b!1094505 (= e!692848 true)))

(declare-fun b!1094504 () Bool)

(declare-fun e!692847 () Bool)

(assert (=> b!1094504 (= e!692847 e!692848)))

(assert (=> b!1094490 e!692847))

(assert (= b!1094504 b!1094505))

(assert (= b!1094490 b!1094504))

(declare-fun lambda!42359 () Int)

(assert (=> bs!258473 (not (= lambda!42359 lambda!42351))))

(assert (=> b!1094490 (not (= lambda!42359 lambda!42358))))

(assert (=> bs!258474 (= lambda!42359 lambda!42355)))

(assert (=> bs!258473 (not (= lambda!42359 lambda!42352))))

(assert (=> b!1094490 (not (= lambda!42359 lambda!42356))))

(assert (=> bs!258475 (not (= lambda!42359 lambda!42247))))

(assert (=> bs!258476 (= lambda!42359 lambda!42245)))

(assert (=> bs!258475 (not (= lambda!42359 lambda!42246))))

(assert (=> bs!258473 (not (= lambda!42359 lambda!42353))))

(assert (=> bs!258475 (not (= lambda!42359 lambda!42248))))

(assert (=> b!1094490 (not (= lambda!42359 lambda!42357))))

(assert (=> bs!258473 (= lambda!42359 lambda!42354)))

(declare-fun bs!258477 () Bool)

(declare-fun d!308441 () Bool)

(assert (= bs!258477 (and d!308441 b!1094490)))

(declare-fun lambda!42360 () Int)

(assert (=> bs!258477 (not (= lambda!42360 lambda!42358))))

(declare-fun bs!258478 () Bool)

(assert (= bs!258478 (and d!308441 d!308307)))

(assert (=> bs!258478 (= lambda!42360 lambda!42355)))

(declare-fun bs!258479 () Bool)

(assert (= bs!258479 (and d!308441 b!1094429)))

(assert (=> bs!258479 (not (= lambda!42360 lambda!42352))))

(assert (=> bs!258477 (not (= lambda!42360 lambda!42356))))

(declare-fun bs!258480 () Bool)

(assert (= bs!258480 (and d!308441 b!1094227)))

(assert (=> bs!258480 (not (= lambda!42360 lambda!42247))))

(declare-fun bs!258481 () Bool)

(assert (= bs!258481 (and d!308441 start!93702)))

(assert (=> bs!258481 (= lambda!42360 lambda!42245)))

(assert (=> bs!258480 (not (= lambda!42360 lambda!42246))))

(assert (=> bs!258477 (= lambda!42360 lambda!42359)))

(assert (=> bs!258479 (not (= lambda!42360 lambda!42351))))

(assert (=> bs!258479 (not (= lambda!42360 lambda!42353))))

(assert (=> bs!258480 (not (= lambda!42360 lambda!42248))))

(assert (=> bs!258477 (not (= lambda!42360 lambda!42357))))

(assert (=> bs!258479 (= lambda!42360 lambda!42354)))

(declare-fun lt!368378 () BalanceConc!6460)

(assert (=> d!308441 (forall!2368 lt!368378 lambda!42360)))

(declare-fun e!692837 () BalanceConc!6460)

(assert (=> d!308441 (= lt!368378 e!692837)))

(declare-fun c!185626 () Bool)

(assert (=> d!308441 (= c!185626 (<= (size!8141 lt!367999) 1))))

(assert (=> d!308441 (= (sortObjectsByID!0 lt!367999) lt!368378)))

(declare-fun b!1094488 () Bool)

(declare-fun e!692841 () Unit!16004)

(declare-fun Unit!16023 () Unit!16004)

(assert (=> b!1094488 (= e!692841 Unit!16023)))

(declare-fun b!1094489 () Bool)

(declare-fun e!692836 () Unit!16004)

(declare-fun Unit!16024 () Unit!16004)

(assert (=> b!1094489 (= e!692836 Unit!16024)))

(declare-fun lt!368381 () BalanceConc!6460)

(declare-fun lt!368357 () BalanceConc!6460)

(declare-fun lt!368362 () BalanceConc!6460)

(assert (=> b!1094490 (= e!692837 (++!2853 (++!2853 (sortObjectsByID!0 lt!368357) lt!368362) (sortObjectsByID!0 lt!368381)))))

(assert (=> b!1094490 (= lt!368353 (apply!2071 lt!367999 (ite (>= (size!8141 lt!367999) 0) (div (size!8141 lt!367999) 2) (- (div (- (size!8141 lt!367999)) 2)))))))

(assert (=> b!1094490 (= lt!368357 (filter!271 lt!367999 lambda!42356))))

(assert (=> b!1094490 (= lt!368362 (filter!271 lt!367999 lambda!42357))))

(assert (=> b!1094490 (= lt!368381 (filter!271 lt!367999 lambda!42358))))

(declare-fun c!185628 () Bool)

(assert (=> b!1094490 (= c!185628 (contains!1792 lt!368357 lt!368353))))

(declare-fun lt!368351 () Unit!16004)

(assert (=> b!1094490 (= lt!368351 e!692836)))

(declare-fun c!185627 () Bool)

(assert (=> b!1094490 (= c!185627 (forall!2368 lt!367999 lambda!42356))))

(declare-fun lt!368358 () Unit!16004)

(assert (=> b!1094490 (= lt!368358 e!692841)))

(declare-fun lt!368367 () List!10538)

(assert (=> b!1094490 (= lt!368367 (list!3774 lt!367999))))

(declare-fun lt!368366 () Unit!16004)

(assert (=> b!1094490 (= lt!368366 (lemmaNotForallFilterShorter!41 lt!368367 lambda!42356))))

(declare-fun res!486101 () Bool)

(assert (=> b!1094490 (= res!486101 (isEmpty!6670 lt!368367))))

(declare-fun e!692840 () Bool)

(assert (=> b!1094490 (=> res!486101 e!692840)))

(assert (=> b!1094490 e!692840))

(declare-fun lt!368348 () Unit!16004)

(assert (=> b!1094490 (= lt!368348 lt!368366)))

(declare-fun c!185630 () Bool)

(assert (=> b!1094490 (= c!185630 (contains!1792 lt!368381 lt!368353))))

(declare-fun lt!368359 () Unit!16004)

(declare-fun e!692839 () Unit!16004)

(assert (=> b!1094490 (= lt!368359 e!692839)))

(declare-fun c!185629 () Bool)

(assert (=> b!1094490 (= c!185629 (forall!2368 lt!367999 lambda!42358))))

(declare-fun lt!368361 () Unit!16004)

(declare-fun e!692838 () Unit!16004)

(assert (=> b!1094490 (= lt!368361 e!692838)))

(declare-fun lt!368370 () List!10538)

(assert (=> b!1094490 (= lt!368370 (list!3774 lt!367999))))

(declare-fun lt!368365 () Unit!16004)

(assert (=> b!1094490 (= lt!368365 (lemmaNotForallFilterShorter!41 lt!368370 lambda!42358))))

(declare-fun res!486102 () Bool)

(assert (=> b!1094490 (= res!486102 (isEmpty!6670 lt!368370))))

(declare-fun e!692842 () Bool)

(assert (=> b!1094490 (=> res!486102 e!692842)))

(assert (=> b!1094490 e!692842))

(declare-fun lt!368375 () Unit!16004)

(assert (=> b!1094490 (= lt!368375 lt!368365)))

(declare-fun lt!368368 () Unit!16004)

(assert (=> b!1094490 (= lt!368368 (filterSubseq!35 (list!3774 lt!367999) lambda!42356))))

(declare-fun lt!368354 () Unit!16004)

(assert (=> b!1094490 (= lt!368354 (filterSubseq!35 (list!3774 lt!367999) lambda!42357))))

(declare-fun lt!368347 () Unit!16004)

(assert (=> b!1094490 (= lt!368347 (filterSubseq!35 (list!3774 lt!367999) lambda!42358))))

(declare-fun lt!368379 () List!10538)

(assert (=> b!1094490 (= lt!368379 (list!3774 (filter!271 lt!367999 lambda!42356)))))

(declare-fun lt!368382 () List!10538)

(assert (=> b!1094490 (= lt!368382 (list!3774 lt!367999))))

(declare-fun lt!368360 () Unit!16004)

(assert (=> b!1094490 (= lt!368360 (lemmaForallSubseq!43 lt!368379 lt!368382 lambda!42359))))

(assert (=> b!1094490 (forall!2369 lt!368379 lambda!42359)))

(declare-fun lt!368352 () Unit!16004)

(assert (=> b!1094490 (= lt!368352 lt!368360)))

(declare-fun lt!368372 () List!10538)

(assert (=> b!1094490 (= lt!368372 (list!3774 (filter!271 lt!367999 lambda!42357)))))

(declare-fun lt!368369 () List!10538)

(assert (=> b!1094490 (= lt!368369 (list!3774 lt!367999))))

(declare-fun lt!368376 () Unit!16004)

(assert (=> b!1094490 (= lt!368376 (lemmaForallSubseq!43 lt!368372 lt!368369 lambda!42359))))

(assert (=> b!1094490 (forall!2369 lt!368372 lambda!42359)))

(declare-fun lt!368373 () Unit!16004)

(assert (=> b!1094490 (= lt!368373 lt!368376)))

(declare-fun lt!368363 () List!10538)

(assert (=> b!1094490 (= lt!368363 (list!3774 (filter!271 lt!367999 lambda!42358)))))

(declare-fun lt!368371 () List!10538)

(assert (=> b!1094490 (= lt!368371 (list!3774 lt!367999))))

(declare-fun lt!368356 () Unit!16004)

(assert (=> b!1094490 (= lt!368356 (lemmaForallSubseq!43 lt!368363 lt!368371 lambda!42359))))

(assert (=> b!1094490 (forall!2369 lt!368363 lambda!42359)))

(declare-fun lt!368377 () Unit!16004)

(assert (=> b!1094490 (= lt!368377 lt!368356)))

(declare-fun lt!368349 () Unit!16004)

(assert (=> b!1094490 (= lt!368349 (lemmaConcatPreservesForall!86 (list!3774 (sortObjectsByID!0 lt!368357)) (list!3774 lt!368362) lambda!42359))))

(declare-fun lt!368350 () Unit!16004)

(assert (=> b!1094490 (= lt!368350 (lemmaConcatPreservesForall!86 (++!2851 (list!3774 (sortObjectsByID!0 lt!368357)) (list!3774 lt!368362)) (list!3774 (sortObjectsByID!0 lt!368381)) lambda!42359))))

(declare-fun b!1094491 () Bool)

(assert (=> b!1094491 true))

(declare-fun lt!368374 () Unit!16004)

(assert (=> b!1094491 (= lt!368374 (forallContained!500 (list!3774 lt!367999) lambda!42356 lt!368353))))

(declare-fun err!2288 () Unit!16004)

(assert (=> b!1094491 (= e!692841 err!2288)))

(declare-fun b!1094492 () Bool)

(assert (=> b!1094492 (= e!692837 lt!367999)))

(declare-fun b!1094493 () Bool)

(declare-fun Unit!16025 () Unit!16004)

(assert (=> b!1094493 (= e!692839 Unit!16025)))

(declare-fun b!1094494 () Bool)

(assert (=> b!1094494 true))

(declare-fun lt!368380 () Unit!16004)

(assert (=> b!1094494 (= lt!368380 (forallContained!500 (list!3774 lt!368381) lambda!42358 lt!368353))))

(declare-fun err!2289 () Unit!16004)

(assert (=> b!1094494 (= e!692839 err!2289)))

(declare-fun b!1094495 () Bool)

(assert (=> b!1094495 true))

(declare-fun lt!368364 () Unit!16004)

(assert (=> b!1094495 (= lt!368364 (forallContained!500 (list!3774 lt!367999) lambda!42358 lt!368353))))

(declare-fun err!2287 () Unit!16004)

(assert (=> b!1094495 (= e!692838 err!2287)))

(declare-fun b!1094496 () Bool)

(declare-fun Unit!16026 () Unit!16004)

(assert (=> b!1094496 (= e!692838 Unit!16026)))

(declare-fun b!1094497 () Bool)

(assert (=> b!1094497 (= e!692842 (< (size!8142 (filter!270 lt!368370 lambda!42358)) (size!8142 lt!368370)))))

(declare-fun b!1094498 () Bool)

(assert (=> b!1094498 true))

(declare-fun lt!368355 () Unit!16004)

(assert (=> b!1094498 (= lt!368355 (forallContained!500 (list!3774 lt!368357) lambda!42356 lt!368353))))

(declare-fun err!2286 () Unit!16004)

(assert (=> b!1094498 (= e!692836 err!2286)))

(declare-fun b!1094499 () Bool)

(assert (=> b!1094499 (= e!692840 (< (size!8142 (filter!270 lt!368367 lambda!42356)) (size!8142 lt!368367)))))

(assert (= (and d!308441 c!185626) b!1094492))

(assert (= (and d!308441 (not c!185626)) b!1094490))

(assert (= (and b!1094490 c!185628) b!1094498))

(assert (= (and b!1094490 (not c!185628)) b!1094489))

(assert (= (and b!1094490 c!185627) b!1094491))

(assert (= (and b!1094490 (not c!185627)) b!1094488))

(assert (= (and b!1094490 (not res!486101)) b!1094499))

(assert (= (and b!1094490 c!185630) b!1094494))

(assert (= (and b!1094490 (not c!185630)) b!1094493))

(assert (= (and b!1094490 c!185629) b!1094495))

(assert (= (and b!1094490 (not c!185629)) b!1094496))

(assert (= (and b!1094490 (not res!486102)) b!1094497))

(declare-fun m!1247285 () Bool)

(assert (=> b!1094490 m!1247285))

(declare-fun m!1247287 () Bool)

(assert (=> b!1094490 m!1247287))

(declare-fun m!1247289 () Bool)

(assert (=> b!1094490 m!1247289))

(declare-fun m!1247291 () Bool)

(assert (=> b!1094490 m!1247291))

(declare-fun m!1247293 () Bool)

(assert (=> b!1094490 m!1247293))

(declare-fun m!1247295 () Bool)

(assert (=> b!1094490 m!1247295))

(declare-fun m!1247297 () Bool)

(assert (=> b!1094490 m!1247297))

(declare-fun m!1247299 () Bool)

(assert (=> b!1094490 m!1247299))

(declare-fun m!1247301 () Bool)

(assert (=> b!1094490 m!1247301))

(declare-fun m!1247303 () Bool)

(assert (=> b!1094490 m!1247303))

(declare-fun m!1247305 () Bool)

(assert (=> b!1094490 m!1247305))

(declare-fun m!1247307 () Bool)

(assert (=> b!1094490 m!1247307))

(declare-fun m!1247309 () Bool)

(assert (=> b!1094490 m!1247309))

(declare-fun m!1247311 () Bool)

(assert (=> b!1094490 m!1247311))

(declare-fun m!1247313 () Bool)

(assert (=> b!1094490 m!1247313))

(assert (=> b!1094490 m!1247285))

(declare-fun m!1247315 () Bool)

(assert (=> b!1094490 m!1247315))

(declare-fun m!1247317 () Bool)

(assert (=> b!1094490 m!1247317))

(declare-fun m!1247319 () Bool)

(assert (=> b!1094490 m!1247319))

(declare-fun m!1247321 () Bool)

(assert (=> b!1094490 m!1247321))

(assert (=> b!1094490 m!1247307))

(assert (=> b!1094490 m!1246731))

(declare-fun m!1247323 () Bool)

(assert (=> b!1094490 m!1247323))

(assert (=> b!1094490 m!1247315))

(assert (=> b!1094490 m!1247317))

(assert (=> b!1094490 m!1247289))

(assert (=> b!1094490 m!1247309))

(assert (=> b!1094490 m!1247291))

(declare-fun m!1247325 () Bool)

(assert (=> b!1094490 m!1247325))

(declare-fun m!1247327 () Bool)

(assert (=> b!1094490 m!1247327))

(assert (=> b!1094490 m!1246731))

(declare-fun m!1247329 () Bool)

(assert (=> b!1094490 m!1247329))

(assert (=> b!1094490 m!1246651))

(assert (=> b!1094490 m!1247317))

(declare-fun m!1247331 () Bool)

(assert (=> b!1094490 m!1247331))

(declare-fun m!1247333 () Bool)

(assert (=> b!1094490 m!1247333))

(declare-fun m!1247335 () Bool)

(assert (=> b!1094490 m!1247335))

(assert (=> b!1094490 m!1247321))

(assert (=> b!1094490 m!1247315))

(declare-fun m!1247337 () Bool)

(assert (=> b!1094490 m!1247337))

(declare-fun m!1247339 () Bool)

(assert (=> b!1094490 m!1247339))

(assert (=> b!1094490 m!1247301))

(assert (=> b!1094490 m!1247297))

(assert (=> b!1094490 m!1246731))

(declare-fun m!1247341 () Bool)

(assert (=> b!1094490 m!1247341))

(assert (=> b!1094490 m!1247321))

(declare-fun m!1247343 () Bool)

(assert (=> b!1094490 m!1247343))

(assert (=> b!1094490 m!1247309))

(assert (=> b!1094490 m!1246731))

(assert (=> b!1094490 m!1247297))

(declare-fun m!1247345 () Bool)

(assert (=> b!1094490 m!1247345))

(assert (=> b!1094490 m!1247301))

(declare-fun m!1247347 () Bool)

(assert (=> b!1094490 m!1247347))

(declare-fun m!1247349 () Bool)

(assert (=> b!1094490 m!1247349))

(assert (=> b!1094490 m!1247285))

(declare-fun m!1247351 () Bool)

(assert (=> b!1094490 m!1247351))

(declare-fun m!1247353 () Bool)

(assert (=> b!1094494 m!1247353))

(assert (=> b!1094494 m!1247353))

(declare-fun m!1247355 () Bool)

(assert (=> b!1094494 m!1247355))

(assert (=> b!1094495 m!1246731))

(assert (=> b!1094495 m!1246731))

(declare-fun m!1247357 () Bool)

(assert (=> b!1094495 m!1247357))

(declare-fun m!1247359 () Bool)

(assert (=> b!1094498 m!1247359))

(assert (=> b!1094498 m!1247359))

(declare-fun m!1247361 () Bool)

(assert (=> b!1094498 m!1247361))

(assert (=> b!1094491 m!1246731))

(assert (=> b!1094491 m!1246731))

(declare-fun m!1247363 () Bool)

(assert (=> b!1094491 m!1247363))

(declare-fun m!1247365 () Bool)

(assert (=> d!308441 m!1247365))

(assert (=> d!308441 m!1246651))

(declare-fun m!1247367 () Bool)

(assert (=> b!1094499 m!1247367))

(assert (=> b!1094499 m!1247367))

(declare-fun m!1247369 () Bool)

(assert (=> b!1094499 m!1247369))

(declare-fun m!1247371 () Bool)

(assert (=> b!1094499 m!1247371))

(declare-fun m!1247373 () Bool)

(assert (=> b!1094497 m!1247373))

(assert (=> b!1094497 m!1247373))

(declare-fun m!1247375 () Bool)

(assert (=> b!1094497 m!1247375))

(declare-fun m!1247377 () Bool)

(assert (=> b!1094497 m!1247377))

(assert (=> b!1094220 d!308441))

(declare-fun d!308443 () Bool)

(assert (=> d!308443 (= (list!3774 (sortObjectsByID!0 lt!367993)) (list!3776 (c!185569 (sortObjectsByID!0 lt!367993))))))

(declare-fun bs!258482 () Bool)

(assert (= bs!258482 d!308443))

(declare-fun m!1247379 () Bool)

(assert (=> bs!258482 m!1247379))

(assert (=> b!1094220 d!308443))

(declare-fun d!308445 () Bool)

(declare-fun res!486103 () Bool)

(declare-fun e!692849 () Bool)

(assert (=> d!308445 (=> res!486103 e!692849)))

(assert (=> d!308445 (= res!486103 ((_ is Nil!10522) lt!368003))))

(assert (=> d!308445 (= (forall!2369 lt!368003 lambda!42245) e!692849)))

(declare-fun b!1094506 () Bool)

(declare-fun e!692850 () Bool)

(assert (=> b!1094506 (= e!692849 e!692850)))

(declare-fun res!486104 () Bool)

(assert (=> b!1094506 (=> (not res!486104) (not e!692850))))

(assert (=> b!1094506 (= res!486104 (dynLambda!4601 lambda!42245 (h!15923 lt!368003)))))

(declare-fun b!1094507 () Bool)

(assert (=> b!1094507 (= e!692850 (forall!2369 (t!102896 lt!368003) lambda!42245))))

(assert (= (and d!308445 (not res!486103)) b!1094506))

(assert (= (and b!1094506 res!486104) b!1094507))

(declare-fun b_lambda!31145 () Bool)

(assert (=> (not b_lambda!31145) (not b!1094506)))

(declare-fun m!1247381 () Bool)

(assert (=> b!1094506 m!1247381))

(declare-fun m!1247383 () Bool)

(assert (=> b!1094507 m!1247383))

(assert (=> b!1094220 d!308445))

(declare-fun b!1094518 () Bool)

(declare-fun res!486109 () Bool)

(declare-fun e!692856 () Bool)

(assert (=> b!1094518 (=> (not res!486109) (not e!692856))))

(declare-fun lt!368385 () List!10538)

(assert (=> b!1094518 (= res!486109 (= (size!8142 lt!368385) (+ (size!8142 lt!368016) (size!8142 lt!368015))))))

(declare-fun d!308447 () Bool)

(assert (=> d!308447 e!692856))

(declare-fun res!486110 () Bool)

(assert (=> d!308447 (=> (not res!486110) (not e!692856))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1518 (List!10538) (InoxSet tuple2!11722))

(assert (=> d!308447 (= res!486110 (= (content!1518 lt!368385) ((_ map or) (content!1518 lt!368016) (content!1518 lt!368015))))))

(declare-fun e!692855 () List!10538)

(assert (=> d!308447 (= lt!368385 e!692855)))

(declare-fun c!185633 () Bool)

(assert (=> d!308447 (= c!185633 ((_ is Nil!10522) lt!368016))))

(assert (=> d!308447 (= (++!2851 lt!368016 lt!368015) lt!368385)))

(declare-fun b!1094517 () Bool)

(assert (=> b!1094517 (= e!692855 (Cons!10522 (h!15923 lt!368016) (++!2851 (t!102896 lt!368016) lt!368015)))))

(declare-fun b!1094516 () Bool)

(assert (=> b!1094516 (= e!692855 lt!368015)))

(declare-fun b!1094519 () Bool)

(assert (=> b!1094519 (= e!692856 (or (not (= lt!368015 Nil!10522)) (= lt!368385 lt!368016)))))

(assert (= (and d!308447 c!185633) b!1094516))

(assert (= (and d!308447 (not c!185633)) b!1094517))

(assert (= (and d!308447 res!486110) b!1094518))

(assert (= (and b!1094518 res!486109) b!1094519))

(declare-fun m!1247385 () Bool)

(assert (=> b!1094518 m!1247385))

(declare-fun m!1247387 () Bool)

(assert (=> b!1094518 m!1247387))

(declare-fun m!1247389 () Bool)

(assert (=> b!1094518 m!1247389))

(declare-fun m!1247391 () Bool)

(assert (=> d!308447 m!1247391))

(declare-fun m!1247393 () Bool)

(assert (=> d!308447 m!1247393))

(declare-fun m!1247395 () Bool)

(assert (=> d!308447 m!1247395))

(declare-fun m!1247397 () Bool)

(assert (=> b!1094517 m!1247397))

(assert (=> b!1094220 d!308447))

(declare-fun d!308449 () Bool)

(declare-fun subseq!146 (List!10538 List!10538) Bool)

(assert (=> d!308449 (subseq!146 (filter!270 lt!368011 lambda!42246) lt!368011)))

(declare-fun lt!368388 () Unit!16004)

(declare-fun choose!7047 (List!10538 Int) Unit!16004)

(assert (=> d!308449 (= lt!368388 (choose!7047 lt!368011 lambda!42246))))

(assert (=> d!308449 (= (filterSubseq!35 lt!368011 lambda!42246) lt!368388)))

(declare-fun bs!258483 () Bool)

(assert (= bs!258483 d!308449))

(assert (=> bs!258483 m!1246639))

(assert (=> bs!258483 m!1246639))

(declare-fun m!1247399 () Bool)

(assert (=> bs!258483 m!1247399))

(declare-fun m!1247401 () Bool)

(assert (=> bs!258483 m!1247401))

(assert (=> b!1094220 d!308449))

(declare-fun d!308451 () Bool)

(assert (=> d!308451 (forall!2369 lt!368003 lambda!42245)))

(declare-fun lt!368389 () Unit!16004)

(assert (=> d!308451 (= lt!368389 (choose!7043 lt!368003 lt!368011 lambda!42245))))

(assert (=> d!308451 (forall!2369 lt!368011 lambda!42245)))

(assert (=> d!308451 (= (lemmaForallSubseq!43 lt!368003 lt!368011 lambda!42245) lt!368389)))

(declare-fun bs!258484 () Bool)

(assert (= bs!258484 d!308451))

(assert (=> bs!258484 m!1246703))

(declare-fun m!1247403 () Bool)

(assert (=> bs!258484 m!1247403))

(assert (=> bs!258484 m!1246745))

(assert (=> b!1094220 d!308451))

(declare-fun d!308453 () Bool)

(assert (=> d!308453 (= (list!3774 (filter!271 objs!8 lambda!42248)) (list!3776 (c!185569 (filter!271 objs!8 lambda!42248))))))

(declare-fun bs!258485 () Bool)

(assert (= bs!258485 d!308453))

(declare-fun m!1247405 () Bool)

(assert (=> bs!258485 m!1247405))

(assert (=> b!1094220 d!308453))

(declare-fun d!308455 () Bool)

(assert (=> d!308455 (forall!2369 lt!368009 lambda!42245)))

(declare-fun lt!368390 () Unit!16004)

(assert (=> d!308455 (= lt!368390 (choose!7043 lt!368009 lt!368011 lambda!42245))))

(assert (=> d!308455 (forall!2369 lt!368011 lambda!42245)))

(assert (=> d!308455 (= (lemmaForallSubseq!43 lt!368009 lt!368011 lambda!42245) lt!368390)))

(declare-fun bs!258486 () Bool)

(assert (= bs!258486 d!308455))

(assert (=> bs!258486 m!1246681))

(declare-fun m!1247407 () Bool)

(assert (=> bs!258486 m!1247407))

(assert (=> bs!258486 m!1246745))

(assert (=> b!1094220 d!308455))

(declare-fun d!308457 () Bool)

(assert (=> d!308457 (subseq!146 (filter!270 lt!368011 lambda!42247) lt!368011)))

(declare-fun lt!368391 () Unit!16004)

(assert (=> d!308457 (= lt!368391 (choose!7047 lt!368011 lambda!42247))))

(assert (=> d!308457 (= (filterSubseq!35 lt!368011 lambda!42247) lt!368391)))

(declare-fun bs!258487 () Bool)

(assert (= bs!258487 d!308457))

(declare-fun m!1247409 () Bool)

(assert (=> bs!258487 m!1247409))

(assert (=> bs!258487 m!1247409))

(declare-fun m!1247411 () Bool)

(assert (=> bs!258487 m!1247411))

(declare-fun m!1247413 () Bool)

(assert (=> bs!258487 m!1247413))

(assert (=> b!1094220 d!308457))

(declare-fun d!308459 () Bool)

(assert (=> d!308459 (subseq!146 (filter!270 lt!368011 lambda!42248) lt!368011)))

(declare-fun lt!368392 () Unit!16004)

(assert (=> d!308459 (= lt!368392 (choose!7047 lt!368011 lambda!42248))))

(assert (=> d!308459 (= (filterSubseq!35 lt!368011 lambda!42248) lt!368392)))

(declare-fun bs!258488 () Bool)

(assert (= bs!258488 d!308459))

(assert (=> bs!258488 m!1246659))

(assert (=> bs!258488 m!1246659))

(declare-fun m!1247415 () Bool)

(assert (=> bs!258488 m!1247415))

(declare-fun m!1247417 () Bool)

(assert (=> bs!258488 m!1247417))

(assert (=> b!1094220 d!308459))

(declare-fun d!308461 () Bool)

(declare-fun e!692857 () Bool)

(assert (=> d!308461 e!692857))

(declare-fun res!486111 () Bool)

(assert (=> d!308461 (=> (not res!486111) (not e!692857))))

(assert (=> d!308461 (= res!486111 (isBalanced!890 (filter!273 (c!185569 objs!8) lambda!42247)))))

(declare-fun lt!368393 () BalanceConc!6460)

(assert (=> d!308461 (= lt!368393 (BalanceConc!6461 (filter!273 (c!185569 objs!8) lambda!42247)))))

(assert (=> d!308461 (= (filter!271 objs!8 lambda!42247) lt!368393)))

(declare-fun b!1094520 () Bool)

(assert (=> b!1094520 (= e!692857 (= (list!3774 lt!368393) (filter!270 (list!3774 objs!8) lambda!42247)))))

(assert (= (and d!308461 res!486111) b!1094520))

(declare-fun m!1247419 () Bool)

(assert (=> d!308461 m!1247419))

(assert (=> d!308461 m!1247419))

(declare-fun m!1247421 () Bool)

(assert (=> d!308461 m!1247421))

(declare-fun m!1247423 () Bool)

(assert (=> b!1094520 m!1247423))

(assert (=> b!1094520 m!1246645))

(assert (=> b!1094520 m!1246645))

(declare-fun m!1247425 () Bool)

(assert (=> b!1094520 m!1247425))

(assert (=> b!1094220 d!308461))

(declare-fun d!308463 () Bool)

(assert (=> d!308463 (dynLambda!4601 lambda!42246 lt!367998)))

(declare-fun lt!368396 () Unit!16004)

(declare-fun choose!7048 (List!10538 Int tuple2!11722) Unit!16004)

(assert (=> d!308463 (= lt!368396 (choose!7048 (list!3774 objs!8) lambda!42246 lt!367998))))

(declare-fun e!692860 () Bool)

(assert (=> d!308463 e!692860))

(declare-fun res!486114 () Bool)

(assert (=> d!308463 (=> (not res!486114) (not e!692860))))

(assert (=> d!308463 (= res!486114 (forall!2369 (list!3774 objs!8) lambda!42246))))

(assert (=> d!308463 (= (forallContained!500 (list!3774 objs!8) lambda!42246 lt!367998) lt!368396)))

(declare-fun b!1094523 () Bool)

(assert (=> b!1094523 (= e!692860 (contains!1794 (list!3774 objs!8) lt!367998))))

(assert (= (and d!308463 res!486114) b!1094523))

(declare-fun b_lambda!31147 () Bool)

(assert (=> (not b_lambda!31147) (not d!308463)))

(declare-fun m!1247427 () Bool)

(assert (=> d!308463 m!1247427))

(assert (=> d!308463 m!1246645))

(declare-fun m!1247429 () Bool)

(assert (=> d!308463 m!1247429))

(assert (=> d!308463 m!1246645))

(declare-fun m!1247431 () Bool)

(assert (=> d!308463 m!1247431))

(assert (=> b!1094523 m!1246645))

(declare-fun m!1247433 () Bool)

(assert (=> b!1094523 m!1247433))

(assert (=> b!1094222 d!308463))

(declare-fun d!308465 () Bool)

(assert (=> d!308465 (= (list!3774 objs!8) (list!3776 (c!185569 objs!8)))))

(declare-fun bs!258489 () Bool)

(assert (= bs!258489 d!308465))

(declare-fun m!1247435 () Bool)

(assert (=> bs!258489 m!1247435))

(assert (=> b!1094222 d!308465))

(declare-fun d!308467 () Bool)

(assert (=> d!308467 (dynLambda!4601 lambda!42248 lt!367998)))

(declare-fun lt!368397 () Unit!16004)

(assert (=> d!308467 (= lt!368397 (choose!7048 (list!3774 lt!367993) lambda!42248 lt!367998))))

(declare-fun e!692861 () Bool)

(assert (=> d!308467 e!692861))

(declare-fun res!486115 () Bool)

(assert (=> d!308467 (=> (not res!486115) (not e!692861))))

(assert (=> d!308467 (= res!486115 (forall!2369 (list!3774 lt!367993) lambda!42248))))

(assert (=> d!308467 (= (forallContained!500 (list!3774 lt!367993) lambda!42248 lt!367998) lt!368397)))

(declare-fun b!1094524 () Bool)

(assert (=> b!1094524 (= e!692861 (contains!1794 (list!3774 lt!367993) lt!367998))))

(assert (= (and d!308467 res!486115) b!1094524))

(declare-fun b_lambda!31149 () Bool)

(assert (=> (not b_lambda!31149) (not d!308467)))

(declare-fun m!1247437 () Bool)

(assert (=> d!308467 m!1247437))

(assert (=> d!308467 m!1246663))

(declare-fun m!1247439 () Bool)

(assert (=> d!308467 m!1247439))

(assert (=> d!308467 m!1246663))

(declare-fun m!1247441 () Bool)

(assert (=> d!308467 m!1247441))

(assert (=> b!1094524 m!1246663))

(declare-fun m!1247443 () Bool)

(assert (=> b!1094524 m!1247443))

(assert (=> b!1094229 d!308467))

(declare-fun d!308469 () Bool)

(assert (=> d!308469 (= (list!3774 lt!367993) (list!3776 (c!185569 lt!367993)))))

(declare-fun bs!258490 () Bool)

(assert (= bs!258490 d!308469))

(declare-fun m!1247445 () Bool)

(assert (=> bs!258490 m!1247445))

(assert (=> b!1094229 d!308469))

(declare-fun d!308471 () Bool)

(declare-fun lt!368400 () Bool)

(assert (=> d!308471 (= lt!368400 (forall!2369 (list!3774 objs!8) lambda!42245))))

(declare-fun forall!2371 (Conc!3223 Int) Bool)

(assert (=> d!308471 (= lt!368400 (forall!2371 (c!185569 objs!8) lambda!42245))))

(assert (=> d!308471 (= (forall!2368 objs!8 lambda!42245) lt!368400)))

(declare-fun bs!258491 () Bool)

(assert (= bs!258491 d!308471))

(assert (=> bs!258491 m!1246645))

(assert (=> bs!258491 m!1246645))

(declare-fun m!1247447 () Bool)

(assert (=> bs!258491 m!1247447))

(declare-fun m!1247449 () Bool)

(assert (=> bs!258491 m!1247449))

(assert (=> start!93702 d!308471))

(declare-fun d!308473 () Bool)

(assert (=> d!308473 (= (inv!13476 objs!8) (isBalanced!890 (c!185569 objs!8)))))

(declare-fun bs!258492 () Bool)

(assert (= bs!258492 d!308473))

(declare-fun m!1247451 () Bool)

(assert (=> bs!258492 m!1247451))

(assert (=> start!93702 d!308473))

(declare-fun d!308475 () Bool)

(declare-fun lt!368403 () Int)

(assert (=> d!308475 (>= lt!368403 0)))

(declare-fun e!692864 () Int)

(assert (=> d!308475 (= lt!368403 e!692864)))

(declare-fun c!185636 () Bool)

(assert (=> d!308475 (= c!185636 ((_ is Nil!10522) (filter!270 lt!368011 lambda!42246)))))

(assert (=> d!308475 (= (size!8142 (filter!270 lt!368011 lambda!42246)) lt!368403)))

(declare-fun b!1094529 () Bool)

(assert (=> b!1094529 (= e!692864 0)))

(declare-fun b!1094530 () Bool)

(assert (=> b!1094530 (= e!692864 (+ 1 (size!8142 (t!102896 (filter!270 lt!368011 lambda!42246)))))))

(assert (= (and d!308475 c!185636) b!1094529))

(assert (= (and d!308475 (not c!185636)) b!1094530))

(declare-fun m!1247453 () Bool)

(assert (=> b!1094530 m!1247453))

(assert (=> b!1094228 d!308475))

(declare-fun b!1094543 () Bool)

(declare-fun res!486121 () Bool)

(declare-fun e!692873 () Bool)

(assert (=> b!1094543 (=> (not res!486121) (not e!692873))))

(declare-fun lt!368406 () List!10538)

(assert (=> b!1094543 (= res!486121 (= ((_ map implies) (content!1518 lt!368406) (content!1518 lt!368011)) ((as const (InoxSet tuple2!11722)) true)))))

(declare-fun b!1094544 () Bool)

(assert (=> b!1094544 (= e!692873 (forall!2369 lt!368406 lambda!42246))))

(declare-fun bm!80306 () Bool)

(declare-fun call!80311 () List!10538)

(assert (=> bm!80306 (= call!80311 (filter!270 (t!102896 lt!368011) lambda!42246))))

(declare-fun b!1094545 () Bool)

(declare-fun e!692871 () List!10538)

(declare-fun e!692872 () List!10538)

(assert (=> b!1094545 (= e!692871 e!692872)))

(declare-fun c!185641 () Bool)

(assert (=> b!1094545 (= c!185641 (dynLambda!4601 lambda!42246 (h!15923 lt!368011)))))

(declare-fun b!1094547 () Bool)

(assert (=> b!1094547 (= e!692871 Nil!10522)))

(declare-fun b!1094548 () Bool)

(assert (=> b!1094548 (= e!692872 (Cons!10522 (h!15923 lt!368011) call!80311))))

(declare-fun b!1094546 () Bool)

(assert (=> b!1094546 (= e!692872 call!80311)))

(declare-fun d!308477 () Bool)

(assert (=> d!308477 e!692873))

(declare-fun res!486120 () Bool)

(assert (=> d!308477 (=> (not res!486120) (not e!692873))))

(assert (=> d!308477 (= res!486120 (<= (size!8142 lt!368406) (size!8142 lt!368011)))))

(assert (=> d!308477 (= lt!368406 e!692871)))

(declare-fun c!185642 () Bool)

(assert (=> d!308477 (= c!185642 ((_ is Nil!10522) lt!368011))))

(assert (=> d!308477 (= (filter!270 lt!368011 lambda!42246) lt!368406)))

(assert (= (and d!308477 c!185642) b!1094547))

(assert (= (and d!308477 (not c!185642)) b!1094545))

(assert (= (and b!1094545 c!185641) b!1094548))

(assert (= (and b!1094545 (not c!185641)) b!1094546))

(assert (= (or b!1094548 b!1094546) bm!80306))

(assert (= (and d!308477 res!486120) b!1094543))

(assert (= (and b!1094543 res!486121) b!1094544))

(declare-fun b_lambda!31151 () Bool)

(assert (=> (not b_lambda!31151) (not b!1094545)))

(declare-fun m!1247455 () Bool)

(assert (=> d!308477 m!1247455))

(assert (=> d!308477 m!1246643))

(declare-fun m!1247457 () Bool)

(assert (=> b!1094543 m!1247457))

(declare-fun m!1247459 () Bool)

(assert (=> b!1094543 m!1247459))

(declare-fun m!1247461 () Bool)

(assert (=> bm!80306 m!1247461))

(declare-fun m!1247463 () Bool)

(assert (=> b!1094545 m!1247463))

(declare-fun m!1247465 () Bool)

(assert (=> b!1094544 m!1247465))

(assert (=> b!1094228 d!308477))

(declare-fun d!308479 () Bool)

(declare-fun lt!368407 () Int)

(assert (=> d!308479 (>= lt!368407 0)))

(declare-fun e!692874 () Int)

(assert (=> d!308479 (= lt!368407 e!692874)))

(declare-fun c!185643 () Bool)

(assert (=> d!308479 (= c!185643 ((_ is Nil!10522) lt!368011))))

(assert (=> d!308479 (= (size!8142 lt!368011) lt!368407)))

(declare-fun b!1094549 () Bool)

(assert (=> b!1094549 (= e!692874 0)))

(declare-fun b!1094550 () Bool)

(assert (=> b!1094550 (= e!692874 (+ 1 (size!8142 (t!102896 lt!368011))))))

(assert (= (and d!308479 c!185643) b!1094549))

(assert (= (and d!308479 (not c!185643)) b!1094550))

(declare-fun m!1247467 () Bool)

(assert (=> b!1094550 m!1247467))

(assert (=> b!1094228 d!308479))

(declare-fun d!308481 () Bool)

(declare-fun lt!368408 () Int)

(assert (=> d!308481 (>= lt!368408 0)))

(declare-fun e!692875 () Int)

(assert (=> d!308481 (= lt!368408 e!692875)))

(declare-fun c!185644 () Bool)

(assert (=> d!308481 (= c!185644 ((_ is Nil!10522) (filter!270 lt!368011 lambda!42248)))))

(assert (=> d!308481 (= (size!8142 (filter!270 lt!368011 lambda!42248)) lt!368408)))

(declare-fun b!1094551 () Bool)

(assert (=> b!1094551 (= e!692875 0)))

(declare-fun b!1094552 () Bool)

(assert (=> b!1094552 (= e!692875 (+ 1 (size!8142 (t!102896 (filter!270 lt!368011 lambda!42248)))))))

(assert (= (and d!308481 c!185644) b!1094551))

(assert (= (and d!308481 (not c!185644)) b!1094552))

(declare-fun m!1247469 () Bool)

(assert (=> b!1094552 m!1247469))

(assert (=> b!1094219 d!308481))

(declare-fun b!1094553 () Bool)

(declare-fun res!486123 () Bool)

(declare-fun e!692878 () Bool)

(assert (=> b!1094553 (=> (not res!486123) (not e!692878))))

(declare-fun lt!368409 () List!10538)

(assert (=> b!1094553 (= res!486123 (= ((_ map implies) (content!1518 lt!368409) (content!1518 lt!368011)) ((as const (InoxSet tuple2!11722)) true)))))

(declare-fun b!1094554 () Bool)

(assert (=> b!1094554 (= e!692878 (forall!2369 lt!368409 lambda!42248))))

(declare-fun bm!80307 () Bool)

(declare-fun call!80312 () List!10538)

(assert (=> bm!80307 (= call!80312 (filter!270 (t!102896 lt!368011) lambda!42248))))

(declare-fun b!1094555 () Bool)

(declare-fun e!692876 () List!10538)

(declare-fun e!692877 () List!10538)

(assert (=> b!1094555 (= e!692876 e!692877)))

(declare-fun c!185645 () Bool)

(assert (=> b!1094555 (= c!185645 (dynLambda!4601 lambda!42248 (h!15923 lt!368011)))))

(declare-fun b!1094557 () Bool)

(assert (=> b!1094557 (= e!692876 Nil!10522)))

(declare-fun b!1094558 () Bool)

(assert (=> b!1094558 (= e!692877 (Cons!10522 (h!15923 lt!368011) call!80312))))

(declare-fun b!1094556 () Bool)

(assert (=> b!1094556 (= e!692877 call!80312)))

(declare-fun d!308483 () Bool)

(assert (=> d!308483 e!692878))

(declare-fun res!486122 () Bool)

(assert (=> d!308483 (=> (not res!486122) (not e!692878))))

(assert (=> d!308483 (= res!486122 (<= (size!8142 lt!368409) (size!8142 lt!368011)))))

(assert (=> d!308483 (= lt!368409 e!692876)))

(declare-fun c!185646 () Bool)

(assert (=> d!308483 (= c!185646 ((_ is Nil!10522) lt!368011))))

(assert (=> d!308483 (= (filter!270 lt!368011 lambda!42248) lt!368409)))

(assert (= (and d!308483 c!185646) b!1094557))

(assert (= (and d!308483 (not c!185646)) b!1094555))

(assert (= (and b!1094555 c!185645) b!1094558))

(assert (= (and b!1094555 (not c!185645)) b!1094556))

(assert (= (or b!1094558 b!1094556) bm!80307))

(assert (= (and d!308483 res!486122) b!1094553))

(assert (= (and b!1094553 res!486123) b!1094554))

(declare-fun b_lambda!31153 () Bool)

(assert (=> (not b_lambda!31153) (not b!1094555)))

(declare-fun m!1247471 () Bool)

(assert (=> d!308483 m!1247471))

(assert (=> d!308483 m!1246643))

(declare-fun m!1247473 () Bool)

(assert (=> b!1094553 m!1247473))

(assert (=> b!1094553 m!1247459))

(declare-fun m!1247475 () Bool)

(assert (=> bm!80307 m!1247475))

(declare-fun m!1247477 () Bool)

(assert (=> b!1094555 m!1247477))

(declare-fun m!1247479 () Bool)

(assert (=> b!1094554 m!1247479))

(assert (=> b!1094219 d!308483))

(assert (=> b!1094219 d!308479))

(declare-fun d!308485 () Bool)

(declare-fun lt!368412 () Int)

(assert (=> d!308485 (= lt!368412 (size!8142 (list!3774 lt!367993)))))

(declare-fun size!8144 (Conc!3223) Int)

(assert (=> d!308485 (= lt!368412 (size!8144 (c!185569 lt!367993)))))

(assert (=> d!308485 (= (size!8141 lt!367993) lt!368412)))

(declare-fun bs!258493 () Bool)

(assert (= bs!258493 d!308485))

(assert (=> bs!258493 m!1246663))

(assert (=> bs!258493 m!1246663))

(declare-fun m!1247481 () Bool)

(assert (=> bs!258493 m!1247481))

(declare-fun m!1247483 () Bool)

(assert (=> bs!258493 m!1247483))

(assert (=> b!1094215 d!308485))

(declare-fun d!308487 () Bool)

(declare-fun e!692881 () Bool)

(assert (=> d!308487 e!692881))

(declare-fun res!486126 () Bool)

(assert (=> d!308487 (=> res!486126 e!692881)))

(assert (=> d!308487 (= res!486126 (isEmpty!6670 lt!368011))))

(declare-fun lt!368415 () Unit!16004)

(declare-fun choose!7049 (List!10538 Int) Unit!16004)

(assert (=> d!308487 (= lt!368415 (choose!7049 lt!368011 lambda!42248))))

(assert (=> d!308487 (not (forall!2369 lt!368011 lambda!42248))))

(assert (=> d!308487 (= (lemmaNotForallFilterShorter!41 lt!368011 lambda!42248) lt!368415)))

(declare-fun b!1094561 () Bool)

(assert (=> b!1094561 (= e!692881 (< (size!8142 (filter!270 lt!368011 lambda!42248)) (size!8142 lt!368011)))))

(assert (= (and d!308487 (not res!486126)) b!1094561))

(assert (=> d!308487 m!1246655))

(declare-fun m!1247485 () Bool)

(assert (=> d!308487 m!1247485))

(declare-fun m!1247487 () Bool)

(assert (=> d!308487 m!1247487))

(assert (=> b!1094561 m!1246659))

(assert (=> b!1094561 m!1246659))

(assert (=> b!1094561 m!1246661))

(assert (=> b!1094561 m!1246643))

(assert (=> b!1094215 d!308487))

(declare-fun d!308489 () Bool)

(declare-fun lt!368416 () Bool)

(assert (=> d!308489 (= lt!368416 (forall!2369 (list!3774 objs!8) lambda!42248))))

(assert (=> d!308489 (= lt!368416 (forall!2371 (c!185569 objs!8) lambda!42248))))

(assert (=> d!308489 (= (forall!2368 objs!8 lambda!42248) lt!368416)))

(declare-fun bs!258494 () Bool)

(assert (= bs!258494 d!308489))

(assert (=> bs!258494 m!1246645))

(assert (=> bs!258494 m!1246645))

(declare-fun m!1247489 () Bool)

(assert (=> bs!258494 m!1247489))

(declare-fun m!1247491 () Bool)

(assert (=> bs!258494 m!1247491))

(assert (=> b!1094215 d!308489))

(declare-fun d!308491 () Bool)

(declare-fun lt!368417 () Bool)

(assert (=> d!308491 (= lt!368417 (contains!1794 (list!3774 lt!367993) lt!367998))))

(assert (=> d!308491 (= lt!368417 (contains!1795 (c!185569 lt!367993) lt!367998))))

(assert (=> d!308491 (= (contains!1792 lt!367993 lt!367998) lt!368417)))

(declare-fun bs!258495 () Bool)

(assert (= bs!258495 d!308491))

(assert (=> bs!258495 m!1246663))

(assert (=> bs!258495 m!1246663))

(assert (=> bs!258495 m!1247443))

(declare-fun m!1247493 () Bool)

(assert (=> bs!258495 m!1247493))

(assert (=> b!1094217 d!308491))

(assert (=> b!1094227 d!308303))

(assert (=> b!1094227 d!308425))

(declare-fun d!308493 () Bool)

(declare-fun lt!368418 () Bool)

(assert (=> d!308493 (= lt!368418 (contains!1794 (list!3774 objs!8) lt!367998))))

(assert (=> d!308493 (= lt!368418 (contains!1795 (c!185569 objs!8) lt!367998))))

(assert (=> d!308493 (= (contains!1792 objs!8 lt!367998) lt!368418)))

(declare-fun bs!258496 () Bool)

(assert (= bs!258496 d!308493))

(assert (=> bs!258496 m!1246645))

(assert (=> bs!258496 m!1246645))

(assert (=> bs!258496 m!1247433))

(declare-fun m!1247495 () Bool)

(assert (=> bs!258496 m!1247495))

(assert (=> b!1094227 d!308493))

(declare-fun d!308495 () Bool)

(declare-fun lt!368421 () tuple2!11722)

(declare-fun apply!2074 (List!10538 Int) tuple2!11722)

(assert (=> d!308495 (= lt!368421 (apply!2074 (list!3774 objs!8) (ite (>= lt!367996 0) (div lt!367996 2) (- (div (- lt!367996) 2)))))))

(declare-fun apply!2075 (Conc!3223 Int) tuple2!11722)

(assert (=> d!308495 (= lt!368421 (apply!2075 (c!185569 objs!8) (ite (>= lt!367996 0) (div lt!367996 2) (- (div (- lt!367996) 2)))))))

(declare-fun e!692884 () Bool)

(assert (=> d!308495 e!692884))

(declare-fun res!486129 () Bool)

(assert (=> d!308495 (=> (not res!486129) (not e!692884))))

(assert (=> d!308495 (= res!486129 (<= 0 (ite (>= lt!367996 0) (div lt!367996 2) (- (div (- lt!367996) 2)))))))

(assert (=> d!308495 (= (apply!2071 objs!8 (ite (>= lt!367996 0) (div lt!367996 2) (- (div (- lt!367996) 2)))) lt!368421)))

(declare-fun b!1094564 () Bool)

(assert (=> b!1094564 (= e!692884 (< (ite (>= lt!367996 0) (div lt!367996 2) (- (div (- lt!367996) 2))) (size!8141 objs!8)))))

(assert (= (and d!308495 res!486129) b!1094564))

(assert (=> d!308495 m!1246645))

(assert (=> d!308495 m!1246645))

(declare-fun m!1247497 () Bool)

(assert (=> d!308495 m!1247497))

(declare-fun m!1247499 () Bool)

(assert (=> d!308495 m!1247499))

(assert (=> b!1094564 m!1246729))

(assert (=> b!1094227 d!308495))

(assert (=> b!1094227 d!308461))

(declare-fun d!308497 () Bool)

(assert (=> d!308497 (dynLambda!4601 lambda!42246 lt!367998)))

(declare-fun lt!368422 () Unit!16004)

(assert (=> d!308497 (= lt!368422 (choose!7048 (list!3774 lt!367999) lambda!42246 lt!367998))))

(declare-fun e!692885 () Bool)

(assert (=> d!308497 e!692885))

(declare-fun res!486130 () Bool)

(assert (=> d!308497 (=> (not res!486130) (not e!692885))))

(assert (=> d!308497 (= res!486130 (forall!2369 (list!3774 lt!367999) lambda!42246))))

(assert (=> d!308497 (= (forallContained!500 (list!3774 lt!367999) lambda!42246 lt!367998) lt!368422)))

(declare-fun b!1094565 () Bool)

(assert (=> b!1094565 (= e!692885 (contains!1794 (list!3774 lt!367999) lt!367998))))

(assert (= (and d!308497 res!486130) b!1094565))

(declare-fun b_lambda!31155 () Bool)

(assert (=> (not b_lambda!31155) (not d!308497)))

(assert (=> d!308497 m!1247427))

(assert (=> d!308497 m!1246731))

(declare-fun m!1247501 () Bool)

(assert (=> d!308497 m!1247501))

(assert (=> d!308497 m!1246731))

(declare-fun m!1247503 () Bool)

(assert (=> d!308497 m!1247503))

(assert (=> b!1094565 m!1246731))

(assert (=> b!1094565 m!1246739))

(assert (=> b!1094216 d!308497))

(declare-fun d!308499 () Bool)

(assert (=> d!308499 (= (list!3774 lt!367999) (list!3776 (c!185569 lt!367999)))))

(declare-fun bs!258497 () Bool)

(assert (= bs!258497 d!308499))

(declare-fun m!1247505 () Bool)

(assert (=> bs!258497 m!1247505))

(assert (=> b!1094216 d!308499))

(assert (=> b!1094213 d!308465))

(declare-fun d!308501 () Bool)

(assert (=> d!308501 (= (isEmpty!6670 lt!368011) ((_ is Nil!10522) lt!368011))))

(assert (=> b!1094213 d!308501))

(declare-fun d!308503 () Bool)

(declare-fun lt!368423 () Int)

(assert (=> d!308503 (= lt!368423 (size!8142 (list!3774 lt!367999)))))

(assert (=> d!308503 (= lt!368423 (size!8144 (c!185569 lt!367999)))))

(assert (=> d!308503 (= (size!8141 lt!367999) lt!368423)))

(declare-fun bs!258498 () Bool)

(assert (= bs!258498 d!308503))

(assert (=> bs!258498 m!1246731))

(assert (=> bs!258498 m!1246731))

(declare-fun m!1247507 () Bool)

(assert (=> bs!258498 m!1247507))

(declare-fun m!1247509 () Bool)

(assert (=> bs!258498 m!1247509))

(assert (=> b!1094213 d!308503))

(declare-fun d!308505 () Bool)

(declare-fun e!692886 () Bool)

(assert (=> d!308505 e!692886))

(declare-fun res!486131 () Bool)

(assert (=> d!308505 (=> res!486131 e!692886)))

(assert (=> d!308505 (= res!486131 (isEmpty!6670 lt!368011))))

(declare-fun lt!368424 () Unit!16004)

(assert (=> d!308505 (= lt!368424 (choose!7049 lt!368011 lambda!42246))))

(assert (=> d!308505 (not (forall!2369 lt!368011 lambda!42246))))

(assert (=> d!308505 (= (lemmaNotForallFilterShorter!41 lt!368011 lambda!42246) lt!368424)))

(declare-fun b!1094566 () Bool)

(assert (=> b!1094566 (= e!692886 (< (size!8142 (filter!270 lt!368011 lambda!42246)) (size!8142 lt!368011)))))

(assert (= (and d!308505 (not res!486131)) b!1094566))

(assert (=> d!308505 m!1246655))

(declare-fun m!1247511 () Bool)

(assert (=> d!308505 m!1247511))

(declare-fun m!1247513 () Bool)

(assert (=> d!308505 m!1247513))

(assert (=> b!1094566 m!1246639))

(assert (=> b!1094566 m!1246639))

(assert (=> b!1094566 m!1246641))

(assert (=> b!1094566 m!1246643))

(assert (=> b!1094213 d!308505))

(declare-fun d!308507 () Bool)

(declare-fun lt!368425 () Bool)

(assert (=> d!308507 (= lt!368425 (forall!2369 (list!3774 objs!8) lambda!42246))))

(assert (=> d!308507 (= lt!368425 (forall!2371 (c!185569 objs!8) lambda!42246))))

(assert (=> d!308507 (= (forall!2368 objs!8 lambda!42246) lt!368425)))

(declare-fun bs!258499 () Bool)

(assert (= bs!258499 d!308507))

(assert (=> bs!258499 m!1246645))

(assert (=> bs!258499 m!1246645))

(assert (=> bs!258499 m!1247431))

(declare-fun m!1247515 () Bool)

(assert (=> bs!258499 m!1247515))

(assert (=> b!1094213 d!308507))

(declare-fun d!308509 () Bool)

(assert (=> d!308509 (dynLambda!4601 lambda!42248 lt!367998)))

(declare-fun lt!368426 () Unit!16004)

(assert (=> d!308509 (= lt!368426 (choose!7048 lt!368011 lambda!42248 lt!367998))))

(declare-fun e!692887 () Bool)

(assert (=> d!308509 e!692887))

(declare-fun res!486132 () Bool)

(assert (=> d!308509 (=> (not res!486132) (not e!692887))))

(assert (=> d!308509 (= res!486132 (forall!2369 lt!368011 lambda!42248))))

(assert (=> d!308509 (= (forallContained!500 lt!368011 lambda!42248 lt!367998) lt!368426)))

(declare-fun b!1094567 () Bool)

(assert (=> b!1094567 (= e!692887 (contains!1794 lt!368011 lt!367998))))

(assert (= (and d!308509 res!486132) b!1094567))

(declare-fun b_lambda!31157 () Bool)

(assert (=> (not b_lambda!31157) (not d!308509)))

(assert (=> d!308509 m!1247437))

(declare-fun m!1247517 () Bool)

(assert (=> d!308509 m!1247517))

(assert (=> d!308509 m!1247487))

(declare-fun m!1247519 () Bool)

(assert (=> b!1094567 m!1247519))

(assert (=> b!1094212 d!308509))

(declare-fun d!308511 () Bool)

(declare-fun c!185649 () Bool)

(assert (=> d!308511 (= c!185649 ((_ is Node!3223) (c!185569 objs!8)))))

(declare-fun e!692892 () Bool)

(assert (=> d!308511 (= (inv!13475 (c!185569 objs!8)) e!692892)))

(declare-fun b!1094574 () Bool)

(declare-fun inv!13480 (Conc!3223) Bool)

(assert (=> b!1094574 (= e!692892 (inv!13480 (c!185569 objs!8)))))

(declare-fun b!1094575 () Bool)

(declare-fun e!692893 () Bool)

(assert (=> b!1094575 (= e!692892 e!692893)))

(declare-fun res!486135 () Bool)

(assert (=> b!1094575 (= res!486135 (not ((_ is Leaf!5128) (c!185569 objs!8))))))

(assert (=> b!1094575 (=> res!486135 e!692893)))

(declare-fun b!1094576 () Bool)

(declare-fun inv!13481 (Conc!3223) Bool)

(assert (=> b!1094576 (= e!692893 (inv!13481 (c!185569 objs!8)))))

(assert (= (and d!308511 c!185649) b!1094574))

(assert (= (and d!308511 (not c!185649)) b!1094575))

(assert (= (and b!1094575 (not res!486135)) b!1094576))

(declare-fun m!1247521 () Bool)

(assert (=> b!1094574 m!1247521))

(declare-fun m!1247523 () Bool)

(assert (=> b!1094576 m!1247523))

(assert (=> b!1094225 d!308511))

(declare-fun d!308513 () Bool)

(declare-fun lt!368427 () Int)

(assert (=> d!308513 (= lt!368427 (size!8142 (list!3774 objs!8)))))

(assert (=> d!308513 (= lt!368427 (size!8144 (c!185569 objs!8)))))

(assert (=> d!308513 (= (size!8141 objs!8) lt!368427)))

(declare-fun bs!258500 () Bool)

(assert (= bs!258500 d!308513))

(assert (=> bs!258500 m!1246645))

(assert (=> bs!258500 m!1246645))

(declare-fun m!1247525 () Bool)

(assert (=> bs!258500 m!1247525))

(declare-fun m!1247527 () Bool)

(assert (=> bs!258500 m!1247527))

(assert (=> b!1094214 d!308513))

(declare-fun b!1094585 () Bool)

(declare-fun e!692898 () Bool)

(assert (=> b!1094585 (= e!692898 true)))

(declare-fun b!1094587 () Bool)

(declare-fun e!692899 () Bool)

(assert (=> b!1094587 (= e!692899 true)))

(declare-fun b!1094586 () Bool)

(assert (=> b!1094586 (= e!692898 e!692899)))

(assert (=> b!1094237 e!692898))

(assert (= (and b!1094237 ((_ is Node!3222) (c!185568 (tokens!1357 (_2!6687 lt!367998))))) b!1094585))

(assert (= b!1094586 b!1094587))

(assert (= (and b!1094237 ((_ is Leaf!5127) (c!185568 (tokens!1357 (_2!6687 lt!367998))))) b!1094586))

(declare-fun b!1094598 () Bool)

(declare-fun e!692908 () Bool)

(assert (=> b!1094598 (= e!692908 true)))

(declare-fun b!1094597 () Bool)

(declare-fun e!692907 () Bool)

(assert (=> b!1094597 (= e!692907 e!692908)))

(declare-fun b!1094596 () Bool)

(declare-fun e!692906 () Bool)

(assert (=> b!1094596 (= e!692906 e!692907)))

(assert (=> b!1094240 e!692906))

(assert (= b!1094597 b!1094598))

(assert (= b!1094596 b!1094597))

(assert (= (and b!1094240 ((_ is Cons!10521) (rules!9085 (_2!6687 lt!367998)))) b!1094596))

(declare-fun order!6339 () Int)

(declare-fun order!6341 () Int)

(declare-fun dynLambda!4605 (Int Int) Int)

(declare-fun dynLambda!4606 (Int Int) Int)

(assert (=> b!1094598 (< (dynLambda!4605 order!6339 (toValue!2875 (transformation!1798 (h!15922 (rules!9085 (_2!6687 lt!367998)))))) (dynLambda!4606 order!6341 lambda!42248))))

(declare-fun order!6343 () Int)

(declare-fun dynLambda!4607 (Int Int) Int)

(assert (=> b!1094598 (< (dynLambda!4607 order!6343 (toChars!2734 (transformation!1798 (h!15922 (rules!9085 (_2!6687 lt!367998)))))) (dynLambda!4606 order!6341 lambda!42248))))

(declare-fun b!1094601 () Bool)

(declare-fun e!692911 () Bool)

(assert (=> b!1094601 (= e!692911 true)))

(declare-fun b!1094600 () Bool)

(declare-fun e!692910 () Bool)

(assert (=> b!1094600 (= e!692910 e!692911)))

(declare-fun b!1094599 () Bool)

(declare-fun e!692909 () Bool)

(assert (=> b!1094599 (= e!692909 e!692910)))

(assert (=> b!1094236 e!692909))

(assert (= b!1094600 b!1094601))

(assert (= b!1094599 b!1094600))

(assert (= (and b!1094236 ((_ is Cons!10521) (rules!9085 (_2!6687 lt!367998)))) b!1094599))

(assert (=> b!1094601 (< (dynLambda!4605 order!6339 (toValue!2875 (transformation!1798 (h!15922 (rules!9085 (_2!6687 lt!367998)))))) (dynLambda!4606 order!6341 lambda!42246))))

(assert (=> b!1094601 (< (dynLambda!4607 order!6343 (toChars!2734 (transformation!1798 (h!15922 (rules!9085 (_2!6687 lt!367998)))))) (dynLambda!4606 order!6341 lambda!42246))))

(declare-fun b!1094602 () Bool)

(declare-fun e!692912 () Bool)

(assert (=> b!1094602 (= e!692912 true)))

(declare-fun b!1094604 () Bool)

(declare-fun e!692913 () Bool)

(assert (=> b!1094604 (= e!692913 true)))

(declare-fun b!1094603 () Bool)

(assert (=> b!1094603 (= e!692912 e!692913)))

(assert (=> b!1094241 e!692912))

(assert (= (and b!1094241 ((_ is Node!3222) (c!185568 (tokens!1357 (_2!6687 lt!367998))))) b!1094602))

(assert (= b!1094603 b!1094604))

(assert (= (and b!1094241 ((_ is Leaf!5127) (c!185568 (tokens!1357 (_2!6687 lt!367998))))) b!1094603))

(declare-fun b!1094607 () Bool)

(declare-fun e!692916 () Bool)

(assert (=> b!1094607 (= e!692916 true)))

(declare-fun b!1094606 () Bool)

(declare-fun e!692915 () Bool)

(assert (=> b!1094606 (= e!692915 e!692916)))

(declare-fun b!1094605 () Bool)

(declare-fun e!692914 () Bool)

(assert (=> b!1094605 (= e!692914 e!692915)))

(assert (=> b!1094238 e!692914))

(assert (= b!1094606 b!1094607))

(assert (= b!1094605 b!1094606))

(assert (= (and b!1094238 ((_ is Cons!10521) (rules!9085 (_2!6687 lt!367998)))) b!1094605))

(assert (=> b!1094607 (< (dynLambda!4605 order!6339 (toValue!2875 (transformation!1798 (h!15922 (rules!9085 (_2!6687 lt!367998)))))) (dynLambda!4606 order!6341 lambda!42247))))

(assert (=> b!1094607 (< (dynLambda!4607 order!6343 (toChars!2734 (transformation!1798 (h!15922 (rules!9085 (_2!6687 lt!367998)))))) (dynLambda!4606 order!6341 lambda!42247))))

(declare-fun b!1094608 () Bool)

(declare-fun e!692917 () Bool)

(assert (=> b!1094608 (= e!692917 true)))

(declare-fun b!1094610 () Bool)

(declare-fun e!692918 () Bool)

(assert (=> b!1094610 (= e!692918 true)))

(declare-fun b!1094609 () Bool)

(assert (=> b!1094609 (= e!692917 e!692918)))

(assert (=> b!1094239 e!692917))

(assert (= (and b!1094239 ((_ is Node!3222) (c!185568 (tokens!1357 (_2!6687 lt!367998))))) b!1094608))

(assert (= b!1094609 b!1094610))

(assert (= (and b!1094239 ((_ is Leaf!5127) (c!185568 (tokens!1357 (_2!6687 lt!367998))))) b!1094609))

(declare-fun e!692923 () Bool)

(declare-fun tp!326612 () Bool)

(declare-fun b!1094619 () Bool)

(declare-fun tp!326610 () Bool)

(assert (=> b!1094619 (= e!692923 (and (inv!13475 (left!9049 (c!185569 objs!8))) tp!326612 (inv!13475 (right!9379 (c!185569 objs!8))) tp!326610))))

(declare-fun b!1094621 () Bool)

(declare-fun e!692924 () Bool)

(declare-fun tp!326611 () Bool)

(assert (=> b!1094621 (= e!692924 tp!326611)))

(declare-fun b!1094620 () Bool)

(declare-fun inv!13482 (IArray!6451) Bool)

(assert (=> b!1094620 (= e!692923 (and (inv!13482 (xs!5916 (c!185569 objs!8))) e!692924))))

(assert (=> b!1094225 (= tp!326594 (and (inv!13475 (c!185569 objs!8)) e!692923))))

(assert (= (and b!1094225 ((_ is Node!3223) (c!185569 objs!8))) b!1094619))

(assert (= b!1094620 b!1094621))

(assert (= (and b!1094225 ((_ is Leaf!5128) (c!185569 objs!8))) b!1094620))

(declare-fun m!1247529 () Bool)

(assert (=> b!1094619 m!1247529))

(declare-fun m!1247531 () Bool)

(assert (=> b!1094619 m!1247531))

(declare-fun m!1247533 () Bool)

(assert (=> b!1094620 m!1247533))

(assert (=> b!1094225 m!1246721))

(declare-fun b_lambda!31159 () Bool)

(assert (= b_lambda!31157 (or b!1094227 b_lambda!31159)))

(declare-fun bs!258501 () Bool)

(declare-fun d!308515 () Bool)

(assert (= bs!258501 (and d!308515 b!1094227)))

(assert (=> bs!258501 (= (dynLambda!4601 lambda!42248 lt!367998) (> (_1!6687 lt!367998) (_1!6687 lt!367998)))))

(assert (=> d!308509 d!308515))

(declare-fun b_lambda!31161 () Bool)

(assert (= b_lambda!31143 (or start!93702 b_lambda!31161)))

(declare-fun bs!258502 () Bool)

(declare-fun d!308517 () Bool)

(assert (= bs!258502 (and d!308517 start!93702)))

(declare-fun usesJsonRules!0 (PrintableTokens!312) Bool)

(assert (=> bs!258502 (= (dynLambda!4601 lambda!42245 (h!15923 lt!368009)) (usesJsonRules!0 (_2!6687 (h!15923 lt!368009))))))

(declare-fun m!1247535 () Bool)

(assert (=> bs!258502 m!1247535))

(assert (=> b!1094486 d!308517))

(declare-fun b_lambda!31163 () Bool)

(assert (= b_lambda!31147 (or b!1094227 b_lambda!31163)))

(declare-fun bs!258503 () Bool)

(declare-fun d!308519 () Bool)

(assert (= bs!258503 (and d!308519 b!1094227)))

(assert (=> bs!258503 (= (dynLambda!4601 lambda!42246 lt!367998) (< (_1!6687 lt!367998) (_1!6687 lt!367998)))))

(assert (=> d!308463 d!308519))

(declare-fun b_lambda!31165 () Bool)

(assert (= b_lambda!31139 (or start!93702 b_lambda!31165)))

(declare-fun bs!258504 () Bool)

(declare-fun d!308521 () Bool)

(assert (= bs!258504 (and d!308521 start!93702)))

(assert (=> bs!258504 (= (dynLambda!4601 lambda!42245 (h!15923 lt!368022)) (usesJsonRules!0 (_2!6687 (h!15923 lt!368022))))))

(declare-fun m!1247537 () Bool)

(assert (=> bs!258504 m!1247537))

(assert (=> b!1094482 d!308521))

(declare-fun b_lambda!31167 () Bool)

(assert (= b_lambda!31141 (or start!93702 b_lambda!31167)))

(declare-fun bs!258505 () Bool)

(declare-fun d!308523 () Bool)

(assert (= bs!258505 (and d!308523 start!93702)))

(assert (=> bs!258505 (= (dynLambda!4601 lambda!42245 (h!15923 lt!368017)) (usesJsonRules!0 (_2!6687 (h!15923 lt!368017))))))

(declare-fun m!1247539 () Bool)

(assert (=> bs!258505 m!1247539))

(assert (=> b!1094484 d!308523))

(declare-fun b_lambda!31169 () Bool)

(assert (= b_lambda!31149 (or b!1094227 b_lambda!31169)))

(assert (=> d!308467 d!308515))

(declare-fun b_lambda!31171 () Bool)

(assert (= b_lambda!31155 (or b!1094227 b_lambda!31171)))

(assert (=> d!308497 d!308519))

(declare-fun b_lambda!31173 () Bool)

(assert (= b_lambda!31153 (or b!1094227 b_lambda!31173)))

(declare-fun bs!258506 () Bool)

(declare-fun d!308525 () Bool)

(assert (= bs!258506 (and d!308525 b!1094227)))

(assert (=> bs!258506 (= (dynLambda!4601 lambda!42248 (h!15923 lt!368011)) (> (_1!6687 (h!15923 lt!368011)) (_1!6687 lt!367998)))))

(assert (=> b!1094555 d!308525))

(declare-fun b_lambda!31175 () Bool)

(assert (= b_lambda!31151 (or b!1094227 b_lambda!31175)))

(declare-fun bs!258507 () Bool)

(declare-fun d!308527 () Bool)

(assert (= bs!258507 (and d!308527 b!1094227)))

(assert (=> bs!258507 (= (dynLambda!4601 lambda!42246 (h!15923 lt!368011)) (< (_1!6687 (h!15923 lt!368011)) (_1!6687 lt!367998)))))

(assert (=> b!1094545 d!308527))

(declare-fun b_lambda!31177 () Bool)

(assert (= b_lambda!31145 (or start!93702 b_lambda!31177)))

(declare-fun bs!258508 () Bool)

(declare-fun d!308529 () Bool)

(assert (= bs!258508 (and d!308529 start!93702)))

(assert (=> bs!258508 (= (dynLambda!4601 lambda!42245 (h!15923 lt!368003)) (usesJsonRules!0 (_2!6687 (h!15923 lt!368003))))))

(declare-fun m!1247541 () Bool)

(assert (=> bs!258508 m!1247541))

(assert (=> b!1094506 d!308529))

(check-sat (not b!1094507) (not d!308505) (not b!1094564) (not d!308493) (not b!1094520) (not b!1094566) (not b_lambda!31169) (not b!1094225) (not b!1094495) (not d!308453) (not b_lambda!31177) (not b!1094518) (not b!1094587) (not d!308301) (not b!1094505) (not b!1094485) (not d!308507) (not d!308425) (not b!1094433) (not d!308299) (not b!1094494) (not d!308473) (not d!308483) (not b!1094567) (not b!1094437) (not d!308439) (not b_lambda!31163) (not b!1094604) (not d!308487) (not d!308467) (not d!308485) (not b!1094523) (not bs!258504) (not b!1094450) (not d!308469) (not b_lambda!31159) (not b!1094491) (not b!1094574) (not b!1094504) (not b!1094483) (not d!308459) (not d!308429) (not b!1094621) (not d!308441) (not b!1094477) (not d!308497) (not bm!80307) (not b_lambda!31173) (not b!1094434) (not b!1094585) (not b!1094430) (not b!1094502) (not b!1094498) (not d!308499) (not b!1094576) (not d!308455) (not b!1094565) (not b!1094438) (not b!1094552) (not b!1094442) (not d!308489) (not b!1094449) (not b!1094490) (not d!308465) (not bm!80306) (not b_lambda!31165) (not d!308447) (not b!1094620) (not d!308451) (not b!1094499) (not bs!258502) (not d!308443) (not b!1094608) (not b!1094429) (not b!1094436) (not d!308491) (not b_lambda!31171) (not d!308303) (not b!1094445) (not d!308477) (not d!308503) (not b!1094446) (not b!1094441) (not b!1094554) (not b!1094596) (not d!308509) (not b_lambda!31167) (not b!1094497) (not b!1094244) (not b!1094561) (not b!1094610) (not d!308433) (not bs!258508) (not b!1094543) (not b_lambda!31175) (not b!1094544) (not d!308513) (not b!1094553) (not d!308495) (not b_lambda!31161) (not b!1094602) (not b!1094599) (not d!308471) (not b!1094550) (not d!308457) (not d!308307) (not d!308463) (not b!1094501) (not d!308461) (not b!1094517) (not b!1094487) (not b!1094500) (not b!1094619) (not b!1094605) (not b!1094503) (not d!308449) (not b!1094530) (not d!308423) (not bs!258505) (not d!308437) (not b!1094524))
(check-sat)
