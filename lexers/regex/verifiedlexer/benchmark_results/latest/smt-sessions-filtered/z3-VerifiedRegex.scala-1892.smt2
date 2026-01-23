; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93110 () Bool)

(assert start!93110)

(declare-fun bs!257812 () Bool)

(declare-fun b!1089407 () Bool)

(assert (= bs!257812 (and b!1089407 start!93110)))

(declare-fun lambda!40944 () Int)

(declare-fun lambda!40943 () Int)

(assert (=> bs!257812 (not (= lambda!40944 lambda!40943))))

(declare-fun b!1089417 () Bool)

(declare-fun e!689246 () Bool)

(assert (=> b!1089417 (= e!689246 true)))

(declare-fun b!1089416 () Bool)

(declare-fun e!689245 () Bool)

(assert (=> b!1089416 (= e!689245 e!689246)))

(assert (=> b!1089407 e!689245))

(assert (= b!1089416 b!1089417))

(assert (= b!1089407 b!1089416))

(declare-fun lambda!40945 () Int)

(assert (=> bs!257812 (not (= lambda!40945 lambda!40943))))

(assert (=> b!1089407 (not (= lambda!40945 lambda!40944))))

(declare-fun b!1089419 () Bool)

(declare-fun e!689248 () Bool)

(assert (=> b!1089419 (= e!689248 true)))

(declare-fun b!1089418 () Bool)

(declare-fun e!689247 () Bool)

(assert (=> b!1089418 (= e!689247 e!689248)))

(assert (=> b!1089407 e!689247))

(assert (= b!1089418 b!1089419))

(assert (= b!1089407 b!1089418))

(declare-fun lambda!40946 () Int)

(assert (=> bs!257812 (not (= lambda!40946 lambda!40943))))

(assert (=> b!1089407 (not (= lambda!40946 lambda!40944))))

(assert (=> b!1089407 (not (= lambda!40946 lambda!40945))))

(declare-fun b!1089421 () Bool)

(declare-fun e!689250 () Bool)

(assert (=> b!1089421 (= e!689250 true)))

(declare-fun b!1089420 () Bool)

(declare-fun e!689249 () Bool)

(assert (=> b!1089420 (= e!689249 e!689250)))

(assert (=> b!1089407 e!689249))

(assert (= b!1089420 b!1089421))

(assert (= b!1089407 b!1089420))

(declare-fun b!1089401 () Bool)

(declare-datatypes ((Unit!15804 0))(
  ( (Unit!15805) )
))
(declare-fun e!689240 () Unit!15804)

(declare-fun Unit!15806 () Unit!15804)

(assert (=> b!1089401 (= e!689240 Unit!15806)))

(declare-fun b!1089402 () Bool)

(declare-fun e!689235 () Unit!15804)

(declare-fun Unit!15807 () Unit!15804)

(assert (=> b!1089402 (= e!689235 Unit!15807)))

(declare-fun b!1089403 () Bool)

(declare-fun e!689238 () Bool)

(declare-fun e!689239 () Bool)

(assert (=> b!1089403 (= e!689238 e!689239)))

(declare-fun res!484233 () Bool)

(assert (=> b!1089403 (=> (not res!484233) (not e!689239))))

(declare-fun lt!364509 () Bool)

(assert (=> b!1089403 (= res!484233 (not lt!364509))))

(declare-fun lt!364503 () Unit!15804)

(assert (=> b!1089403 (= lt!364503 e!689235)))

(declare-fun c!184562 () Bool)

(assert (=> b!1089403 (= c!184562 lt!364509)))

(declare-datatypes ((List!10439 0))(
  ( (Nil!10423) (Cons!10423 (h!15824 (_ BitVec 16)) (t!101583 List!10439)) )
))
(declare-datatypes ((TokenValue!1840 0))(
  ( (FloatLiteralValue!3680 (text!13325 List!10439)) (TokenValueExt!1839 (__x!7422 Int)) (Broken!9200 (value!58486 List!10439)) (Object!1855) (End!1840) (Def!1840) (Underscore!1840) (Match!1840) (Else!1840) (Error!1840) (Case!1840) (If!1840) (Extends!1840) (Abstract!1840) (Class!1840) (Val!1840) (DelimiterValue!3680 (del!1900 List!10439)) (KeywordValue!1846 (value!58487 List!10439)) (CommentValue!3680 (value!58488 List!10439)) (WhitespaceValue!3680 (value!58489 List!10439)) (IndentationValue!1840 (value!58490 List!10439)) (String!12769) (Int32!1840) (Broken!9201 (value!58491 List!10439)) (Boolean!1841) (Unit!15808) (OperatorValue!1843 (op!1900 List!10439)) (IdentifierValue!3680 (value!58492 List!10439)) (IdentifierValue!3681 (value!58493 List!10439)) (WhitespaceValue!3681 (value!58494 List!10439)) (True!3680) (False!3680) (Broken!9202 (value!58495 List!10439)) (Broken!9203 (value!58496 List!10439)) (True!3681) (RightBrace!1840) (RightBracket!1840) (Colon!1840) (Null!1840) (Comma!1840) (LeftBracket!1840) (False!3681) (LeftBrace!1840) (ImaginaryLiteralValue!1840 (text!13326 List!10439)) (StringLiteralValue!5520 (value!58497 List!10439)) (EOFValue!1840 (value!58498 List!10439)) (IdentValue!1840 (value!58499 List!10439)) (DelimiterValue!3681 (value!58500 List!10439)) (DedentValue!1840 (value!58501 List!10439)) (NewLineValue!1840 (value!58502 List!10439)) (IntegerValue!5520 (value!58503 (_ BitVec 32)) (text!13327 List!10439)) (IntegerValue!5521 (value!58504 Int) (text!13328 List!10439)) (Times!1840) (Or!1840) (Equal!1840) (Minus!1840) (Broken!9204 (value!58505 List!10439)) (And!1840) (Div!1840) (LessEqual!1840) (Mod!1840) (Concat!4883) (Not!1840) (Plus!1840) (SpaceValue!1840 (value!58506 List!10439)) (IntegerValue!5522 (value!58507 Int) (text!13329 List!10439)) (StringLiteralValue!5521 (text!13330 List!10439)) (FloatLiteralValue!3681 (text!13331 List!10439)) (BytesLiteralValue!1840 (value!58508 List!10439)) (CommentValue!3681 (value!58509 List!10439)) (StringLiteralValue!5522 (value!58510 List!10439)) (ErrorTokenValue!1840 (msg!1901 List!10439)) )
))
(declare-datatypes ((Regex!3043 0))(
  ( (ElementMatch!3043 (c!184564 (_ BitVec 16))) (Concat!4884 (regOne!6598 Regex!3043) (regTwo!6598 Regex!3043)) (EmptyExpr!3043) (Star!3043 (reg!3372 Regex!3043)) (EmptyLang!3043) (Union!3043 (regOne!6599 Regex!3043) (regTwo!6599 Regex!3043)) )
))
(declare-datatypes ((String!12770 0))(
  ( (String!12771 (value!58511 String)) )
))
(declare-datatypes ((IArray!6303 0))(
  ( (IArray!6304 (innerList!3209 List!10439)) )
))
(declare-datatypes ((Conc!3149 0))(
  ( (Node!3149 (left!8915 Conc!3149) (right!9245 Conc!3149) (csize!6528 Int) (cheight!3360 Int)) (Leaf!5042 (xs!5842 IArray!6303) (csize!6529 Int)) (Empty!3149) )
))
(declare-datatypes ((BalanceConc!6312 0))(
  ( (BalanceConc!6313 (c!184565 Conc!3149)) )
))
(declare-datatypes ((TokenValueInjection!3380 0))(
  ( (TokenValueInjection!3381 (toValue!2851 Int) (toChars!2710 Int)) )
))
(declare-datatypes ((Rule!3348 0))(
  ( (Rule!3349 (regex!1774 Regex!3043) (tag!2036 String!12770) (isSeparator!1774 Bool) (transformation!1774 TokenValueInjection!3380)) )
))
(declare-datatypes ((Token!3214 0))(
  ( (Token!3215 (value!58512 TokenValue!1840) (rule!3197 Rule!3348) (size!8053 Int) (originalCharacters!2330 List!10439)) )
))
(declare-datatypes ((List!10440 0))(
  ( (Nil!10424) (Cons!10424 (h!15825 Token!3214) (t!101584 List!10440)) )
))
(declare-datatypes ((IArray!6305 0))(
  ( (IArray!6306 (innerList!3210 List!10440)) )
))
(declare-datatypes ((Conc!3150 0))(
  ( (Node!3150 (left!8916 Conc!3150) (right!9246 Conc!3150) (csize!6530 Int) (cheight!3361 Int)) (Leaf!5043 (xs!5843 IArray!6305) (csize!6531 Int)) (Empty!3150) )
))
(declare-datatypes ((List!10441 0))(
  ( (Nil!10425) (Cons!10425 (h!15826 Rule!3348) (t!101585 List!10441)) )
))
(declare-datatypes ((BalanceConc!6314 0))(
  ( (BalanceConc!6315 (c!184566 Conc!3150)) )
))
(declare-datatypes ((PrintableTokens!264 0))(
  ( (PrintableTokens!265 (rules!9061 List!10441) (tokens!1333 BalanceConc!6314)) )
))
(declare-datatypes ((tuple2!11674 0))(
  ( (tuple2!11675 (_1!6663 Int) (_2!6663 PrintableTokens!264)) )
))
(declare-datatypes ((List!10442 0))(
  ( (Nil!10426) (Cons!10426 (h!15827 tuple2!11674) (t!101586 List!10442)) )
))
(declare-datatypes ((IArray!6307 0))(
  ( (IArray!6308 (innerList!3211 List!10442)) )
))
(declare-datatypes ((Conc!3151 0))(
  ( (Node!3151 (left!8917 Conc!3151) (right!9247 Conc!3151) (csize!6532 Int) (cheight!3362 Int)) (Leaf!5044 (xs!5844 IArray!6307) (csize!6533 Int)) (Empty!3151) )
))
(declare-datatypes ((BalanceConc!6316 0))(
  ( (BalanceConc!6317 (c!184567 Conc!3151)) )
))
(declare-fun lt!364511 () BalanceConc!6316)

(declare-fun lt!364507 () tuple2!11674)

(declare-fun contains!1740 (BalanceConc!6316 tuple2!11674) Bool)

(assert (=> b!1089403 (= lt!364509 (contains!1740 lt!364511 lt!364507))))

(declare-fun b!1089404 () Bool)

(declare-fun e!689234 () Bool)

(declare-fun e!689237 () Bool)

(assert (=> b!1089404 (= e!689234 e!689237)))

(declare-fun res!484235 () Bool)

(assert (=> b!1089404 (=> (not res!484235) (not e!689237))))

(declare-fun lt!364506 () Int)

(assert (=> b!1089404 (= res!484235 (> lt!364506 1))))

(declare-fun objs!8 () BalanceConc!6316)

(declare-fun size!8054 (BalanceConc!6316) Int)

(assert (=> b!1089404 (= lt!364506 (size!8054 objs!8))))

(declare-fun b!1089406 () Bool)

(declare-fun e!689236 () Bool)

(declare-fun tp!326354 () Bool)

(declare-fun inv!13345 (Conc!3151) Bool)

(assert (=> b!1089406 (= e!689236 (and (inv!13345 (c!184567 objs!8)) tp!326354))))

(assert (=> b!1089407 (= e!689237 e!689238)))

(declare-fun res!484234 () Bool)

(assert (=> b!1089407 (=> (not res!484234) (not e!689238))))

(assert (=> b!1089407 (= res!484234 (contains!1740 objs!8 lt!364507))))

(declare-fun lt!364504 () BalanceConc!6316)

(declare-fun filter!207 (BalanceConc!6316 Int) BalanceConc!6316)

(assert (=> b!1089407 (= lt!364504 (filter!207 objs!8 lambda!40946))))

(declare-fun lt!364501 () BalanceConc!6316)

(assert (=> b!1089407 (= lt!364501 (filter!207 objs!8 lambda!40945))))

(assert (=> b!1089407 (= lt!364511 (filter!207 objs!8 lambda!40944))))

(declare-fun apply!2019 (BalanceConc!6316 Int) tuple2!11674)

(assert (=> b!1089407 (= lt!364507 (apply!2019 objs!8 (ite (>= lt!364506 0) (div lt!364506 2) (- (div (- lt!364506) 2)))))))

(declare-fun b!1089408 () Bool)

(declare-fun err!1808 () Unit!15804)

(assert (=> b!1089408 (= e!689240 err!1808)))

(declare-fun lt!364502 () Unit!15804)

(declare-fun forallContained!476 (List!10442 Int tuple2!11674) Unit!15804)

(declare-fun list!3734 (BalanceConc!6316) List!10442)

(assert (=> b!1089408 (= lt!364502 (forallContained!476 (list!3734 objs!8) lambda!40944 lt!364507))))

(assert (=> b!1089408 true))

(declare-fun b!1089409 () Bool)

(assert (=> b!1089409 (= e!689239 false)))

(declare-fun lt!364505 () Bool)

(declare-fun forall!2308 (List!10442 Int) Bool)

(assert (=> b!1089409 (= lt!364505 (forall!2308 (list!3734 objs!8) lambda!40944))))

(declare-fun lt!364508 () Unit!15804)

(assert (=> b!1089409 (= lt!364508 e!689240)))

(declare-fun c!184563 () Bool)

(declare-fun forall!2309 (BalanceConc!6316 Int) Bool)

(assert (=> b!1089409 (= c!184563 (forall!2309 objs!8 lambda!40944))))

(declare-fun res!484232 () Bool)

(assert (=> start!93110 (=> (not res!484232) (not e!689234))))

(assert (=> start!93110 (= res!484232 (forall!2309 objs!8 lambda!40943))))

(assert (=> start!93110 e!689234))

(declare-fun inv!13346 (BalanceConc!6316) Bool)

(assert (=> start!93110 (and (inv!13346 objs!8) e!689236)))

(declare-fun b!1089405 () Bool)

(declare-fun err!1809 () Unit!15804)

(assert (=> b!1089405 (= e!689235 err!1809)))

(declare-fun lt!364510 () Unit!15804)

(assert (=> b!1089405 (= lt!364510 (forallContained!476 (list!3734 lt!364511) lambda!40944 lt!364507))))

(assert (=> b!1089405 true))

(assert (= (and start!93110 res!484232) b!1089404))

(assert (= (and b!1089404 res!484235) b!1089407))

(assert (= (and b!1089407 res!484234) b!1089403))

(assert (= (and b!1089403 c!184562) b!1089405))

(assert (= (and b!1089403 (not c!184562)) b!1089402))

(assert (= (and b!1089403 res!484233) b!1089409))

(assert (= (and b!1089409 c!184563) b!1089408))

(assert (= (and b!1089409 (not c!184563)) b!1089401))

(assert (= start!93110 b!1089406))

(declare-fun m!1239775 () Bool)

(assert (=> b!1089408 m!1239775))

(assert (=> b!1089408 m!1239775))

(declare-fun m!1239777 () Bool)

(assert (=> b!1089408 m!1239777))

(declare-fun m!1239779 () Bool)

(assert (=> b!1089404 m!1239779))

(declare-fun m!1239781 () Bool)

(assert (=> b!1089405 m!1239781))

(assert (=> b!1089405 m!1239781))

(declare-fun m!1239783 () Bool)

(assert (=> b!1089405 m!1239783))

(declare-fun m!1239785 () Bool)

(assert (=> start!93110 m!1239785))

(declare-fun m!1239787 () Bool)

(assert (=> start!93110 m!1239787))

(assert (=> b!1089409 m!1239775))

(assert (=> b!1089409 m!1239775))

(declare-fun m!1239789 () Bool)

(assert (=> b!1089409 m!1239789))

(declare-fun m!1239791 () Bool)

(assert (=> b!1089409 m!1239791))

(declare-fun m!1239793 () Bool)

(assert (=> b!1089406 m!1239793))

(declare-fun m!1239795 () Bool)

(assert (=> b!1089403 m!1239795))

(declare-fun m!1239797 () Bool)

(assert (=> b!1089407 m!1239797))

(declare-fun m!1239799 () Bool)

(assert (=> b!1089407 m!1239799))

(declare-fun m!1239801 () Bool)

(assert (=> b!1089407 m!1239801))

(declare-fun m!1239803 () Bool)

(assert (=> b!1089407 m!1239803))

(declare-fun m!1239805 () Bool)

(assert (=> b!1089407 m!1239805))

(check-sat (not b!1089417) (not b!1089418) (not b!1089419) (not b!1089407) (not start!93110) (not b!1089403) (not b!1089420) (not b!1089405) (not b!1089408) (not b!1089406) (not b!1089416) (not b!1089421) (not b!1089404) (not b!1089409))
(check-sat)
