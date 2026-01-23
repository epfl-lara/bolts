; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93782 () Bool)

(assert start!93782)

(declare-fun bs!258512 () Bool)

(declare-fun b!1094737 () Bool)

(assert (= bs!258512 (and b!1094737 start!93782)))

(declare-fun lambda!42458 () Int)

(declare-fun lambda!42457 () Int)

(assert (=> bs!258512 (not (= lambda!42458 lambda!42457))))

(declare-fun b!1094755 () Bool)

(declare-fun e!693030 () Bool)

(assert (=> b!1094755 (= e!693030 true)))

(declare-fun b!1094754 () Bool)

(declare-fun e!693029 () Bool)

(assert (=> b!1094754 (= e!693029 e!693030)))

(assert (=> b!1094737 e!693029))

(assert (= b!1094754 b!1094755))

(assert (= b!1094737 b!1094754))

(declare-fun lambda!42459 () Int)

(assert (=> bs!258512 (not (= lambda!42459 lambda!42457))))

(assert (=> b!1094737 (not (= lambda!42459 lambda!42458))))

(declare-fun b!1094757 () Bool)

(declare-fun e!693032 () Bool)

(assert (=> b!1094757 (= e!693032 true)))

(declare-fun b!1094756 () Bool)

(declare-fun e!693031 () Bool)

(assert (=> b!1094756 (= e!693031 e!693032)))

(assert (=> b!1094737 e!693031))

(assert (= b!1094756 b!1094757))

(assert (= b!1094737 b!1094756))

(declare-fun lambda!42460 () Int)

(assert (=> bs!258512 (not (= lambda!42460 lambda!42457))))

(assert (=> b!1094737 (not (= lambda!42460 lambda!42458))))

(assert (=> b!1094737 (not (= lambda!42460 lambda!42459))))

(declare-fun b!1094759 () Bool)

(declare-fun e!693034 () Bool)

(assert (=> b!1094759 (= e!693034 true)))

(declare-fun b!1094758 () Bool)

(declare-fun e!693033 () Bool)

(assert (=> b!1094758 (= e!693033 e!693034)))

(assert (=> b!1094737 e!693033))

(assert (= b!1094758 b!1094759))

(assert (= b!1094737 b!1094758))

(declare-fun b!1094729 () Bool)

(declare-datatypes ((Unit!16034 0))(
  ( (Unit!16035) )
))
(declare-fun e!693012 () Unit!16034)

(declare-fun err!2320 () Unit!16034)

(assert (=> b!1094729 (= e!693012 err!2320)))

(declare-fun lt!368595 () Unit!16034)

(declare-datatypes ((List!10543 0))(
  ( (Nil!10527) (Cons!10527 (h!15928 (_ BitVec 16)) (t!103085 List!10543)) )
))
(declare-datatypes ((TokenValue!1866 0))(
  ( (FloatLiteralValue!3732 (text!13507 List!10543)) (TokenValueExt!1865 (__x!7448 Int)) (Broken!9330 (value!59227 List!10543)) (Object!1881) (End!1866) (Def!1866) (Underscore!1866) (Match!1866) (Else!1866) (Error!1866) (Case!1866) (If!1866) (Extends!1866) (Abstract!1866) (Class!1866) (Val!1866) (DelimiterValue!3732 (del!1926 List!10543)) (KeywordValue!1872 (value!59228 List!10543)) (CommentValue!3732 (value!59229 List!10543)) (WhitespaceValue!3732 (value!59230 List!10543)) (IndentationValue!1866 (value!59231 List!10543)) (String!12899) (Int32!1866) (Broken!9331 (value!59232 List!10543)) (Boolean!1867) (Unit!16036) (OperatorValue!1869 (op!1926 List!10543)) (IdentifierValue!3732 (value!59233 List!10543)) (IdentifierValue!3733 (value!59234 List!10543)) (WhitespaceValue!3733 (value!59235 List!10543)) (True!3732) (False!3732) (Broken!9332 (value!59236 List!10543)) (Broken!9333 (value!59237 List!10543)) (True!3733) (RightBrace!1866) (RightBracket!1866) (Colon!1866) (Null!1866) (Comma!1866) (LeftBracket!1866) (False!3733) (LeftBrace!1866) (ImaginaryLiteralValue!1866 (text!13508 List!10543)) (StringLiteralValue!5598 (value!59238 List!10543)) (EOFValue!1866 (value!59239 List!10543)) (IdentValue!1866 (value!59240 List!10543)) (DelimiterValue!3733 (value!59241 List!10543)) (DedentValue!1866 (value!59242 List!10543)) (NewLineValue!1866 (value!59243 List!10543)) (IntegerValue!5598 (value!59244 (_ BitVec 32)) (text!13509 List!10543)) (IntegerValue!5599 (value!59245 Int) (text!13510 List!10543)) (Times!1866) (Or!1866) (Equal!1866) (Minus!1866) (Broken!9334 (value!59246 List!10543)) (And!1866) (Div!1866) (LessEqual!1866) (Mod!1866) (Concat!4935) (Not!1866) (Plus!1866) (SpaceValue!1866 (value!59247 List!10543)) (IntegerValue!5600 (value!59248 Int) (text!13511 List!10543)) (StringLiteralValue!5599 (text!13512 List!10543)) (FloatLiteralValue!3733 (text!13513 List!10543)) (BytesLiteralValue!1866 (value!59249 List!10543)) (CommentValue!3733 (value!59250 List!10543)) (StringLiteralValue!5600 (value!59251 List!10543)) (ErrorTokenValue!1866 (msg!1927 List!10543)) )
))
(declare-datatypes ((Regex!3069 0))(
  ( (ElementMatch!3069 (c!185678 (_ BitVec 16))) (Concat!4936 (regOne!6650 Regex!3069) (regTwo!6650 Regex!3069)) (EmptyExpr!3069) (Star!3069 (reg!3398 Regex!3069)) (EmptyLang!3069) (Union!3069 (regOne!6651 Regex!3069) (regTwo!6651 Regex!3069)) )
))
(declare-datatypes ((String!12900 0))(
  ( (String!12901 (value!59252 String)) )
))
(declare-datatypes ((IArray!6459 0))(
  ( (IArray!6460 (innerList!3287 List!10543)) )
))
(declare-datatypes ((Conc!3227 0))(
  ( (Node!3227 (left!9058 Conc!3227) (right!9388 Conc!3227) (csize!6684 Int) (cheight!3438 Int)) (Leaf!5133 (xs!5920 IArray!6459) (csize!6685 Int)) (Empty!3227) )
))
(declare-datatypes ((BalanceConc!6468 0))(
  ( (BalanceConc!6469 (c!185679 Conc!3227)) )
))
(declare-datatypes ((TokenValueInjection!3432 0))(
  ( (TokenValueInjection!3433 (toValue!2877 Int) (toChars!2736 Int)) )
))
(declare-datatypes ((Rule!3400 0))(
  ( (Rule!3401 (regex!1800 Regex!3069) (tag!2062 String!12900) (isSeparator!1800 Bool) (transformation!1800 TokenValueInjection!3432)) )
))
(declare-datatypes ((Token!3266 0))(
  ( (Token!3267 (value!59253 TokenValue!1866) (rule!3223 Rule!3400) (size!8148 Int) (originalCharacters!2356 List!10543)) )
))
(declare-datatypes ((List!10544 0))(
  ( (Nil!10528) (Cons!10528 (h!15929 Token!3266) (t!103086 List!10544)) )
))
(declare-datatypes ((IArray!6461 0))(
  ( (IArray!6462 (innerList!3288 List!10544)) )
))
(declare-datatypes ((Conc!3228 0))(
  ( (Node!3228 (left!9059 Conc!3228) (right!9389 Conc!3228) (csize!6686 Int) (cheight!3439 Int)) (Leaf!5134 (xs!5921 IArray!6461) (csize!6687 Int)) (Empty!3228) )
))
(declare-datatypes ((List!10545 0))(
  ( (Nil!10529) (Cons!10529 (h!15930 Rule!3400) (t!103087 List!10545)) )
))
(declare-datatypes ((BalanceConc!6470 0))(
  ( (BalanceConc!6471 (c!185680 Conc!3228)) )
))
(declare-datatypes ((PrintableTokens!316 0))(
  ( (PrintableTokens!317 (rules!9087 List!10545) (tokens!1359 BalanceConc!6470)) )
))
(declare-datatypes ((tuple2!11726 0))(
  ( (tuple2!11727 (_1!6689 Int) (_2!6689 PrintableTokens!316)) )
))
(declare-fun lt!368619 () tuple2!11726)

(declare-datatypes ((List!10546 0))(
  ( (Nil!10530) (Cons!10530 (h!15931 tuple2!11726) (t!103088 List!10546)) )
))
(declare-fun lt!368623 () List!10546)

(declare-fun forallContained!502 (List!10546 Int tuple2!11726) Unit!16034)

(assert (=> b!1094729 (= lt!368595 (forallContained!502 lt!368623 lambda!42460 lt!368619))))

(assert (=> b!1094729 true))

(declare-fun b!1094730 () Bool)

(declare-fun e!693011 () Unit!16034)

(declare-fun Unit!16037 () Unit!16034)

(assert (=> b!1094730 (= e!693011 Unit!16037)))

(declare-fun b!1094731 () Bool)

(declare-fun e!693020 () Bool)

(declare-fun lt!368610 () List!10546)

(declare-fun forall!2374 (List!10546 Int) Bool)

(assert (=> b!1094731 (= e!693020 (forall!2374 lt!368610 lambda!42457))))

(declare-fun b!1094732 () Bool)

(declare-fun e!693022 () Bool)

(declare-fun size!8149 (List!10546) Int)

(declare-fun filter!276 (List!10546 Int) List!10546)

(assert (=> b!1094732 (= e!693022 (< (size!8149 (filter!276 lt!368623 lambda!42460)) (size!8149 lt!368623)))))

(declare-fun b!1094733 () Bool)

(declare-fun err!2319 () Unit!16034)

(assert (=> b!1094733 (= e!693011 err!2319)))

(declare-datatypes ((IArray!6463 0))(
  ( (IArray!6464 (innerList!3289 List!10546)) )
))
(declare-datatypes ((Conc!3229 0))(
  ( (Node!3229 (left!9060 Conc!3229) (right!9390 Conc!3229) (csize!6688 Int) (cheight!3440 Int)) (Leaf!5135 (xs!5922 IArray!6463) (csize!6689 Int)) (Empty!3229) )
))
(declare-datatypes ((BalanceConc!6472 0))(
  ( (BalanceConc!6473 (c!185681 Conc!3229)) )
))
(declare-fun lt!368606 () BalanceConc!6472)

(declare-fun lt!368598 () Unit!16034)

(declare-fun list!3778 (BalanceConc!6472) List!10546)

(assert (=> b!1094733 (= lt!368598 (forallContained!502 (list!3778 lt!368606) lambda!42460 lt!368619))))

(assert (=> b!1094733 true))

(declare-fun b!1094734 () Bool)

(declare-fun e!693021 () Bool)

(assert (=> b!1094734 (= e!693021 e!693020)))

(declare-fun res!486193 () Bool)

(assert (=> b!1094734 (=> res!486193 e!693020)))

(declare-fun lt!368612 () List!10546)

(assert (=> b!1094734 (= res!486193 (not (forall!2374 lt!368612 lambda!42457)))))

(declare-fun sortObjectsByID!0 (BalanceConc!6472) BalanceConc!6472)

(assert (=> b!1094734 (= lt!368610 (list!3778 (sortObjectsByID!0 lt!368606)))))

(declare-fun lt!368599 () List!10546)

(declare-fun lt!368602 () List!10546)

(declare-fun ++!2855 (List!10546 List!10546) List!10546)

(assert (=> b!1094734 (= lt!368612 (++!2855 lt!368599 lt!368602))))

(declare-fun lt!368600 () Unit!16034)

(declare-fun lemmaConcatPreservesForall!88 (List!10546 List!10546 Int) Unit!16034)

(assert (=> b!1094734 (= lt!368600 (lemmaConcatPreservesForall!88 lt!368599 lt!368602 lambda!42457))))

(declare-fun lt!368597 () BalanceConc!6472)

(assert (=> b!1094734 (= lt!368602 (list!3778 lt!368597))))

(declare-fun lt!368625 () BalanceConc!6472)

(assert (=> b!1094734 (= lt!368599 (list!3778 (sortObjectsByID!0 lt!368625)))))

(declare-fun lt!368622 () List!10546)

(assert (=> b!1094734 (forall!2374 lt!368622 lambda!42457)))

(declare-fun lt!368596 () Unit!16034)

(declare-fun lemmaForallSubseq!45 (List!10546 List!10546 Int) Unit!16034)

(assert (=> b!1094734 (= lt!368596 (lemmaForallSubseq!45 lt!368622 lt!368623 lambda!42457))))

(declare-fun objs!8 () BalanceConc!6472)

(declare-fun filter!277 (BalanceConc!6472 Int) BalanceConc!6472)

(assert (=> b!1094734 (= lt!368622 (list!3778 (filter!277 objs!8 lambda!42460)))))

(declare-fun lt!368594 () List!10546)

(assert (=> b!1094734 (forall!2374 lt!368594 lambda!42457)))

(declare-fun lt!368616 () Unit!16034)

(assert (=> b!1094734 (= lt!368616 (lemmaForallSubseq!45 lt!368594 lt!368623 lambda!42457))))

(assert (=> b!1094734 (= lt!368594 (list!3778 (filter!277 objs!8 lambda!42459)))))

(declare-fun lt!368613 () List!10546)

(assert (=> b!1094734 (forall!2374 lt!368613 lambda!42457)))

(declare-fun lt!368601 () Unit!16034)

(assert (=> b!1094734 (= lt!368601 (lemmaForallSubseq!45 lt!368613 lt!368623 lambda!42457))))

(assert (=> b!1094734 (= lt!368613 (list!3778 (filter!277 objs!8 lambda!42458)))))

(declare-fun lt!368614 () Unit!16034)

(declare-fun filterSubseq!37 (List!10546 Int) Unit!16034)

(assert (=> b!1094734 (= lt!368614 (filterSubseq!37 lt!368623 lambda!42460))))

(declare-fun lt!368620 () Unit!16034)

(assert (=> b!1094734 (= lt!368620 (filterSubseq!37 lt!368623 lambda!42459))))

(declare-fun lt!368609 () Unit!16034)

(assert (=> b!1094734 (= lt!368609 (filterSubseq!37 lt!368623 lambda!42458))))

(declare-fun b!1094735 () Bool)

(declare-fun e!693015 () Bool)

(declare-fun e!693013 () Bool)

(assert (=> b!1094735 (= e!693015 e!693013)))

(declare-fun res!486191 () Bool)

(assert (=> b!1094735 (=> (not res!486191) (not e!693013))))

(declare-fun lt!368605 () Bool)

(assert (=> b!1094735 (= res!486191 (not lt!368605))))

(declare-fun lt!368603 () Unit!16034)

(declare-fun e!693016 () Unit!16034)

(assert (=> b!1094735 (= lt!368603 e!693016)))

(declare-fun c!185674 () Bool)

(assert (=> b!1094735 (= c!185674 lt!368605)))

(declare-fun contains!1798 (BalanceConc!6472 tuple2!11726) Bool)

(assert (=> b!1094735 (= lt!368605 (contains!1798 lt!368625 lt!368619))))

(declare-fun b!1094736 () Bool)

(declare-fun e!693017 () Unit!16034)

(declare-fun Unit!16038 () Unit!16034)

(assert (=> b!1094736 (= e!693017 Unit!16038)))

(declare-fun res!486192 () Bool)

(declare-fun e!693018 () Bool)

(assert (=> start!93782 (=> (not res!486192) (not e!693018))))

(declare-fun forall!2375 (BalanceConc!6472 Int) Bool)

(assert (=> start!93782 (= res!486192 (forall!2375 objs!8 lambda!42457))))

(assert (=> start!93782 e!693018))

(declare-fun e!693010 () Bool)

(declare-fun inv!13488 (BalanceConc!6472) Bool)

(assert (=> start!93782 (and (inv!13488 objs!8) e!693010)))

(declare-fun e!693014 () Bool)

(assert (=> b!1094737 (= e!693014 e!693015)))

(declare-fun res!486189 () Bool)

(assert (=> b!1094737 (=> (not res!486189) (not e!693015))))

(assert (=> b!1094737 (= res!486189 (contains!1798 objs!8 lt!368619))))

(assert (=> b!1094737 (= lt!368606 (filter!277 objs!8 lambda!42460))))

(assert (=> b!1094737 (= lt!368597 (filter!277 objs!8 lambda!42459))))

(assert (=> b!1094737 (= lt!368625 (filter!277 objs!8 lambda!42458))))

(declare-fun lt!368593 () Int)

(declare-fun apply!2077 (BalanceConc!6472 Int) tuple2!11726)

(assert (=> b!1094737 (= lt!368619 (apply!2077 objs!8 (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2)))))))

(declare-fun b!1094738 () Bool)

(declare-fun e!693024 () Bool)

(assert (=> b!1094738 (= e!693024 e!693021)))

(declare-fun res!486194 () Bool)

(assert (=> b!1094738 (=> res!486194 e!693021)))

(declare-fun size!8150 (BalanceConc!6472) Int)

(assert (=> b!1094738 (= res!486194 (>= (size!8150 lt!368606) lt!368593))))

(assert (=> b!1094738 e!693022))

(declare-fun res!486190 () Bool)

(assert (=> b!1094738 (=> res!486190 e!693022)))

(declare-fun lt!368617 () Bool)

(assert (=> b!1094738 (= res!486190 lt!368617)))

(declare-fun lt!368611 () Unit!16034)

(declare-fun lemmaNotForallFilterShorter!43 (List!10546 Int) Unit!16034)

(assert (=> b!1094738 (= lt!368611 (lemmaNotForallFilterShorter!43 lt!368623 lambda!42460))))

(declare-fun lt!368618 () Unit!16034)

(assert (=> b!1094738 (= lt!368618 e!693012)))

(declare-fun c!185677 () Bool)

(assert (=> b!1094738 (= c!185677 (forall!2375 objs!8 lambda!42460))))

(declare-fun b!1094739 () Bool)

(declare-fun tp!326618 () Bool)

(declare-fun inv!13489 (Conc!3229) Bool)

(assert (=> b!1094739 (= e!693010 (and (inv!13489 (c!185681 objs!8)) tp!326618))))

(declare-fun b!1094740 () Bool)

(declare-fun Unit!16039 () Unit!16034)

(assert (=> b!1094740 (= e!693016 Unit!16039)))

(declare-fun b!1094741 () Bool)

(declare-fun err!2318 () Unit!16034)

(assert (=> b!1094741 (= e!693017 err!2318)))

(declare-fun lt!368607 () Unit!16034)

(assert (=> b!1094741 (= lt!368607 (forallContained!502 (list!3778 objs!8) lambda!42458 lt!368619))))

(assert (=> b!1094741 true))

(declare-fun b!1094742 () Bool)

(declare-fun err!2321 () Unit!16034)

(assert (=> b!1094742 (= e!693016 err!2321)))

(declare-fun lt!368615 () Unit!16034)

(assert (=> b!1094742 (= lt!368615 (forallContained!502 (list!3778 lt!368625) lambda!42458 lt!368619))))

(assert (=> b!1094742 true))

(declare-fun b!1094743 () Bool)

(assert (=> b!1094743 (= e!693018 e!693014)))

(declare-fun res!486187 () Bool)

(assert (=> b!1094743 (=> (not res!486187) (not e!693014))))

(assert (=> b!1094743 (= res!486187 (> lt!368593 1))))

(assert (=> b!1094743 (= lt!368593 (size!8150 objs!8))))

(declare-fun b!1094744 () Bool)

(declare-fun e!693019 () Bool)

(assert (=> b!1094744 (= e!693019 e!693024)))

(declare-fun res!486188 () Bool)

(assert (=> b!1094744 (=> res!486188 e!693024)))

(declare-fun lt!368621 () Bool)

(assert (=> b!1094744 (= res!486188 lt!368621)))

(declare-fun lt!368604 () Unit!16034)

(assert (=> b!1094744 (= lt!368604 e!693011)))

(declare-fun c!185675 () Bool)

(assert (=> b!1094744 (= c!185675 lt!368621)))

(assert (=> b!1094744 (= lt!368621 (contains!1798 lt!368606 lt!368619))))

(declare-fun b!1094745 () Bool)

(declare-fun Unit!16040 () Unit!16034)

(assert (=> b!1094745 (= e!693012 Unit!16040)))

(declare-fun b!1094746 () Bool)

(declare-fun e!693023 () Bool)

(assert (=> b!1094746 (= e!693023 (< (size!8149 (filter!276 lt!368623 lambda!42458)) (size!8149 lt!368623)))))

(declare-fun b!1094747 () Bool)

(assert (=> b!1094747 (= e!693013 (not e!693019))))

(declare-fun res!486186 () Bool)

(assert (=> b!1094747 (=> res!486186 e!693019)))

(assert (=> b!1094747 (= res!486186 (>= (size!8150 lt!368625) lt!368593))))

(assert (=> b!1094747 e!693023))

(declare-fun res!486195 () Bool)

(assert (=> b!1094747 (=> res!486195 e!693023)))

(assert (=> b!1094747 (= res!486195 lt!368617)))

(declare-fun isEmpty!6672 (List!10546) Bool)

(assert (=> b!1094747 (= lt!368617 (isEmpty!6672 lt!368623))))

(declare-fun lt!368624 () Unit!16034)

(assert (=> b!1094747 (= lt!368624 (lemmaNotForallFilterShorter!43 lt!368623 lambda!42458))))

(assert (=> b!1094747 (= lt!368623 (list!3778 objs!8))))

(declare-fun lt!368608 () Unit!16034)

(assert (=> b!1094747 (= lt!368608 e!693017)))

(declare-fun c!185676 () Bool)

(assert (=> b!1094747 (= c!185676 (forall!2375 objs!8 lambda!42458))))

(assert (= (and start!93782 res!486192) b!1094743))

(assert (= (and b!1094743 res!486187) b!1094737))

(assert (= (and b!1094737 res!486189) b!1094735))

(assert (= (and b!1094735 c!185674) b!1094742))

(assert (= (and b!1094735 (not c!185674)) b!1094740))

(assert (= (and b!1094735 res!486191) b!1094747))

(assert (= (and b!1094747 c!185676) b!1094741))

(assert (= (and b!1094747 (not c!185676)) b!1094736))

(assert (= (and b!1094747 (not res!486195)) b!1094746))

(assert (= (and b!1094747 (not res!486186)) b!1094744))

(assert (= (and b!1094744 c!185675) b!1094733))

(assert (= (and b!1094744 (not c!185675)) b!1094730))

(assert (= (and b!1094744 (not res!486188)) b!1094738))

(assert (= (and b!1094738 c!185677) b!1094729))

(assert (= (and b!1094738 (not c!185677)) b!1094745))

(assert (= (and b!1094738 (not res!486190)) b!1094732))

(assert (= (and b!1094738 (not res!486194)) b!1094734))

(assert (= (and b!1094734 (not res!486193)) b!1094731))

(assert (= start!93782 b!1094739))

(declare-fun m!1247645 () Bool)

(assert (=> b!1094742 m!1247645))

(assert (=> b!1094742 m!1247645))

(declare-fun m!1247647 () Bool)

(assert (=> b!1094742 m!1247647))

(declare-fun m!1247649 () Bool)

(assert (=> b!1094741 m!1247649))

(assert (=> b!1094741 m!1247649))

(declare-fun m!1247651 () Bool)

(assert (=> b!1094741 m!1247651))

(declare-fun m!1247653 () Bool)

(assert (=> b!1094729 m!1247653))

(declare-fun m!1247655 () Bool)

(assert (=> b!1094737 m!1247655))

(declare-fun m!1247657 () Bool)

(assert (=> b!1094737 m!1247657))

(declare-fun m!1247659 () Bool)

(assert (=> b!1094737 m!1247659))

(declare-fun m!1247661 () Bool)

(assert (=> b!1094737 m!1247661))

(declare-fun m!1247663 () Bool)

(assert (=> b!1094737 m!1247663))

(declare-fun m!1247665 () Bool)

(assert (=> b!1094739 m!1247665))

(declare-fun m!1247667 () Bool)

(assert (=> b!1094731 m!1247667))

(declare-fun m!1247669 () Bool)

(assert (=> b!1094744 m!1247669))

(declare-fun m!1247671 () Bool)

(assert (=> start!93782 m!1247671))

(declare-fun m!1247673 () Bool)

(assert (=> start!93782 m!1247673))

(declare-fun m!1247675 () Bool)

(assert (=> b!1094733 m!1247675))

(assert (=> b!1094733 m!1247675))

(declare-fun m!1247677 () Bool)

(assert (=> b!1094733 m!1247677))

(declare-fun m!1247679 () Bool)

(assert (=> b!1094743 m!1247679))

(declare-fun m!1247681 () Bool)

(assert (=> b!1094732 m!1247681))

(assert (=> b!1094732 m!1247681))

(declare-fun m!1247683 () Bool)

(assert (=> b!1094732 m!1247683))

(declare-fun m!1247685 () Bool)

(assert (=> b!1094732 m!1247685))

(declare-fun m!1247687 () Bool)

(assert (=> b!1094734 m!1247687))

(declare-fun m!1247689 () Bool)

(assert (=> b!1094734 m!1247689))

(declare-fun m!1247691 () Bool)

(assert (=> b!1094734 m!1247691))

(assert (=> b!1094734 m!1247655))

(declare-fun m!1247693 () Bool)

(assert (=> b!1094734 m!1247693))

(assert (=> b!1094734 m!1247687))

(declare-fun m!1247695 () Bool)

(assert (=> b!1094734 m!1247695))

(declare-fun m!1247697 () Bool)

(assert (=> b!1094734 m!1247697))

(declare-fun m!1247699 () Bool)

(assert (=> b!1094734 m!1247699))

(declare-fun m!1247701 () Bool)

(assert (=> b!1094734 m!1247701))

(assert (=> b!1094734 m!1247661))

(declare-fun m!1247703 () Bool)

(assert (=> b!1094734 m!1247703))

(declare-fun m!1247705 () Bool)

(assert (=> b!1094734 m!1247705))

(assert (=> b!1094734 m!1247659))

(declare-fun m!1247707 () Bool)

(assert (=> b!1094734 m!1247707))

(declare-fun m!1247709 () Bool)

(assert (=> b!1094734 m!1247709))

(declare-fun m!1247711 () Bool)

(assert (=> b!1094734 m!1247711))

(assert (=> b!1094734 m!1247661))

(declare-fun m!1247713 () Bool)

(assert (=> b!1094734 m!1247713))

(assert (=> b!1094734 m!1247655))

(declare-fun m!1247715 () Bool)

(assert (=> b!1094734 m!1247715))

(declare-fun m!1247717 () Bool)

(assert (=> b!1094734 m!1247717))

(declare-fun m!1247719 () Bool)

(assert (=> b!1094734 m!1247719))

(assert (=> b!1094734 m!1247659))

(declare-fun m!1247721 () Bool)

(assert (=> b!1094734 m!1247721))

(declare-fun m!1247723 () Bool)

(assert (=> b!1094734 m!1247723))

(assert (=> b!1094734 m!1247719))

(declare-fun m!1247725 () Bool)

(assert (=> b!1094734 m!1247725))

(declare-fun m!1247727 () Bool)

(assert (=> b!1094738 m!1247727))

(declare-fun m!1247729 () Bool)

(assert (=> b!1094738 m!1247729))

(declare-fun m!1247731 () Bool)

(assert (=> b!1094738 m!1247731))

(declare-fun m!1247733 () Bool)

(assert (=> b!1094746 m!1247733))

(assert (=> b!1094746 m!1247733))

(declare-fun m!1247735 () Bool)

(assert (=> b!1094746 m!1247735))

(assert (=> b!1094746 m!1247685))

(assert (=> b!1094747 m!1247649))

(declare-fun m!1247737 () Bool)

(assert (=> b!1094747 m!1247737))

(declare-fun m!1247739 () Bool)

(assert (=> b!1094747 m!1247739))

(declare-fun m!1247741 () Bool)

(assert (=> b!1094747 m!1247741))

(declare-fun m!1247743 () Bool)

(assert (=> b!1094747 m!1247743))

(declare-fun m!1247745 () Bool)

(assert (=> b!1094735 m!1247745))

(check-sat (not b!1094746) (not start!93782) (not b!1094731) (not b!1094759) (not b!1094742) (not b!1094755) (not b!1094747) (not b!1094734) (not b!1094744) (not b!1094729) (not b!1094758) (not b!1094735) (not b!1094754) (not b!1094757) (not b!1094739) (not b!1094732) (not b!1094737) (not b!1094743) (not b!1094756) (not b!1094738) (not b!1094741) (not b!1094733))
(check-sat)
(get-model)

(declare-fun d!308574 () Bool)

(declare-fun lt!368661 () Bool)

(assert (=> d!308574 (= lt!368661 (forall!2374 (list!3778 objs!8) lambda!42458))))

(declare-fun forall!2377 (Conc!3229 Int) Bool)

(assert (=> d!308574 (= lt!368661 (forall!2377 (c!185681 objs!8) lambda!42458))))

(assert (=> d!308574 (= (forall!2375 objs!8 lambda!42458) lt!368661)))

(declare-fun bs!258524 () Bool)

(assert (= bs!258524 d!308574))

(assert (=> bs!258524 m!1247649))

(assert (=> bs!258524 m!1247649))

(declare-fun m!1247843 () Bool)

(assert (=> bs!258524 m!1247843))

(declare-fun m!1247845 () Bool)

(assert (=> bs!258524 m!1247845))

(assert (=> b!1094747 d!308574))

(declare-fun d!308576 () Bool)

(declare-fun list!3780 (Conc!3229) List!10546)

(assert (=> d!308576 (= (list!3778 objs!8) (list!3780 (c!185681 objs!8)))))

(declare-fun bs!258525 () Bool)

(assert (= bs!258525 d!308576))

(declare-fun m!1247847 () Bool)

(assert (=> bs!258525 m!1247847))

(assert (=> b!1094747 d!308576))

(declare-fun d!308578 () Bool)

(declare-fun lt!368664 () Int)

(assert (=> d!308578 (= lt!368664 (size!8149 (list!3778 lt!368625)))))

(declare-fun size!8152 (Conc!3229) Int)

(assert (=> d!308578 (= lt!368664 (size!8152 (c!185681 lt!368625)))))

(assert (=> d!308578 (= (size!8150 lt!368625) lt!368664)))

(declare-fun bs!258526 () Bool)

(assert (= bs!258526 d!308578))

(assert (=> bs!258526 m!1247645))

(assert (=> bs!258526 m!1247645))

(declare-fun m!1247849 () Bool)

(assert (=> bs!258526 m!1247849))

(declare-fun m!1247851 () Bool)

(assert (=> bs!258526 m!1247851))

(assert (=> b!1094747 d!308578))

(declare-fun d!308580 () Bool)

(get-info :version)

(assert (=> d!308580 (= (isEmpty!6672 lt!368623) ((_ is Nil!10530) lt!368623))))

(assert (=> b!1094747 d!308580))

(declare-fun d!308582 () Bool)

(declare-fun e!693061 () Bool)

(assert (=> d!308582 e!693061))

(declare-fun res!486222 () Bool)

(assert (=> d!308582 (=> res!486222 e!693061)))

(assert (=> d!308582 (= res!486222 (isEmpty!6672 lt!368623))))

(declare-fun lt!368667 () Unit!16034)

(declare-fun choose!7055 (List!10546 Int) Unit!16034)

(assert (=> d!308582 (= lt!368667 (choose!7055 lt!368623 lambda!42458))))

(assert (=> d!308582 (not (forall!2374 lt!368623 lambda!42458))))

(assert (=> d!308582 (= (lemmaNotForallFilterShorter!43 lt!368623 lambda!42458) lt!368667)))

(declare-fun b!1094792 () Bool)

(assert (=> b!1094792 (= e!693061 (< (size!8149 (filter!276 lt!368623 lambda!42458)) (size!8149 lt!368623)))))

(assert (= (and d!308582 (not res!486222)) b!1094792))

(assert (=> d!308582 m!1247741))

(declare-fun m!1247853 () Bool)

(assert (=> d!308582 m!1247853))

(declare-fun m!1247855 () Bool)

(assert (=> d!308582 m!1247855))

(assert (=> b!1094792 m!1247733))

(assert (=> b!1094792 m!1247733))

(assert (=> b!1094792 m!1247735))

(assert (=> b!1094792 m!1247685))

(assert (=> b!1094747 d!308582))

(declare-fun d!308584 () Bool)

(declare-fun lt!368670 () Int)

(assert (=> d!308584 (>= lt!368670 0)))

(declare-fun e!693064 () Int)

(assert (=> d!308584 (= lt!368670 e!693064)))

(declare-fun c!185688 () Bool)

(assert (=> d!308584 (= c!185688 ((_ is Nil!10530) (filter!276 lt!368623 lambda!42458)))))

(assert (=> d!308584 (= (size!8149 (filter!276 lt!368623 lambda!42458)) lt!368670)))

(declare-fun b!1094797 () Bool)

(assert (=> b!1094797 (= e!693064 0)))

(declare-fun b!1094798 () Bool)

(assert (=> b!1094798 (= e!693064 (+ 1 (size!8149 (t!103088 (filter!276 lt!368623 lambda!42458)))))))

(assert (= (and d!308584 c!185688) b!1094797))

(assert (= (and d!308584 (not c!185688)) b!1094798))

(declare-fun m!1247857 () Bool)

(assert (=> b!1094798 m!1247857))

(assert (=> b!1094746 d!308584))

(declare-fun d!308586 () Bool)

(declare-fun e!693071 () Bool)

(assert (=> d!308586 e!693071))

(declare-fun res!486227 () Bool)

(assert (=> d!308586 (=> (not res!486227) (not e!693071))))

(declare-fun lt!368673 () List!10546)

(assert (=> d!308586 (= res!486227 (<= (size!8149 lt!368673) (size!8149 lt!368623)))))

(declare-fun e!693073 () List!10546)

(assert (=> d!308586 (= lt!368673 e!693073)))

(declare-fun c!185694 () Bool)

(assert (=> d!308586 (= c!185694 ((_ is Nil!10530) lt!368623))))

(assert (=> d!308586 (= (filter!276 lt!368623 lambda!42458) lt!368673)))

(declare-fun bm!80310 () Bool)

(declare-fun call!80315 () List!10546)

(assert (=> bm!80310 (= call!80315 (filter!276 (t!103088 lt!368623) lambda!42458))))

(declare-fun b!1094811 () Bool)

(declare-fun e!693072 () List!10546)

(assert (=> b!1094811 (= e!693072 call!80315)))

(declare-fun b!1094812 () Bool)

(assert (=> b!1094812 (= e!693071 (forall!2374 lt!368673 lambda!42458))))

(declare-fun b!1094813 () Bool)

(assert (=> b!1094813 (= e!693072 (Cons!10530 (h!15931 lt!368623) call!80315))))

(declare-fun b!1094814 () Bool)

(assert (=> b!1094814 (= e!693073 e!693072)))

(declare-fun c!185693 () Bool)

(declare-fun dynLambda!4609 (Int tuple2!11726) Bool)

(assert (=> b!1094814 (= c!185693 (dynLambda!4609 lambda!42458 (h!15931 lt!368623)))))

(declare-fun b!1094815 () Bool)

(declare-fun res!486228 () Bool)

(assert (=> b!1094815 (=> (not res!486228) (not e!693071))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1520 (List!10546) (InoxSet tuple2!11726))

(assert (=> b!1094815 (= res!486228 (= ((_ map implies) (content!1520 lt!368673) (content!1520 lt!368623)) ((as const (InoxSet tuple2!11726)) true)))))

(declare-fun b!1094816 () Bool)

(assert (=> b!1094816 (= e!693073 Nil!10530)))

(assert (= (and d!308586 c!185694) b!1094816))

(assert (= (and d!308586 (not c!185694)) b!1094814))

(assert (= (and b!1094814 c!185693) b!1094813))

(assert (= (and b!1094814 (not c!185693)) b!1094811))

(assert (= (or b!1094813 b!1094811) bm!80310))

(assert (= (and d!308586 res!486227) b!1094815))

(assert (= (and b!1094815 res!486228) b!1094812))

(declare-fun b_lambda!31183 () Bool)

(assert (=> (not b_lambda!31183) (not b!1094814)))

(declare-fun m!1247859 () Bool)

(assert (=> d!308586 m!1247859))

(assert (=> d!308586 m!1247685))

(declare-fun m!1247861 () Bool)

(assert (=> b!1094814 m!1247861))

(declare-fun m!1247863 () Bool)

(assert (=> bm!80310 m!1247863))

(declare-fun m!1247865 () Bool)

(assert (=> b!1094815 m!1247865))

(declare-fun m!1247867 () Bool)

(assert (=> b!1094815 m!1247867))

(declare-fun m!1247869 () Bool)

(assert (=> b!1094812 m!1247869))

(assert (=> b!1094746 d!308586))

(declare-fun d!308588 () Bool)

(declare-fun lt!368674 () Int)

(assert (=> d!308588 (>= lt!368674 0)))

(declare-fun e!693074 () Int)

(assert (=> d!308588 (= lt!368674 e!693074)))

(declare-fun c!185695 () Bool)

(assert (=> d!308588 (= c!185695 ((_ is Nil!10530) lt!368623))))

(assert (=> d!308588 (= (size!8149 lt!368623) lt!368674)))

(declare-fun b!1094817 () Bool)

(assert (=> b!1094817 (= e!693074 0)))

(declare-fun b!1094818 () Bool)

(assert (=> b!1094818 (= e!693074 (+ 1 (size!8149 (t!103088 lt!368623))))))

(assert (= (and d!308588 c!185695) b!1094817))

(assert (= (and d!308588 (not c!185695)) b!1094818))

(declare-fun m!1247871 () Bool)

(assert (=> b!1094818 m!1247871))

(assert (=> b!1094746 d!308588))

(declare-fun d!308590 () Bool)

(declare-fun lt!368677 () Bool)

(declare-fun contains!1801 (List!10546 tuple2!11726) Bool)

(assert (=> d!308590 (= lt!368677 (contains!1801 (list!3778 lt!368625) lt!368619))))

(declare-fun contains!1802 (Conc!3229 tuple2!11726) Bool)

(assert (=> d!308590 (= lt!368677 (contains!1802 (c!185681 lt!368625) lt!368619))))

(assert (=> d!308590 (= (contains!1798 lt!368625 lt!368619) lt!368677)))

(declare-fun bs!258527 () Bool)

(assert (= bs!258527 d!308590))

(assert (=> bs!258527 m!1247645))

(assert (=> bs!258527 m!1247645))

(declare-fun m!1247873 () Bool)

(assert (=> bs!258527 m!1247873))

(declare-fun m!1247875 () Bool)

(assert (=> bs!258527 m!1247875))

(assert (=> b!1094735 d!308590))

(declare-fun d!308592 () Bool)

(declare-fun c!185698 () Bool)

(assert (=> d!308592 (= c!185698 ((_ is Node!3229) (c!185681 objs!8)))))

(declare-fun e!693079 () Bool)

(assert (=> d!308592 (= (inv!13489 (c!185681 objs!8)) e!693079)))

(declare-fun b!1094825 () Bool)

(declare-fun inv!13490 (Conc!3229) Bool)

(assert (=> b!1094825 (= e!693079 (inv!13490 (c!185681 objs!8)))))

(declare-fun b!1094826 () Bool)

(declare-fun e!693080 () Bool)

(assert (=> b!1094826 (= e!693079 e!693080)))

(declare-fun res!486231 () Bool)

(assert (=> b!1094826 (= res!486231 (not ((_ is Leaf!5135) (c!185681 objs!8))))))

(assert (=> b!1094826 (=> res!486231 e!693080)))

(declare-fun b!1094827 () Bool)

(declare-fun inv!13491 (Conc!3229) Bool)

(assert (=> b!1094827 (= e!693080 (inv!13491 (c!185681 objs!8)))))

(assert (= (and d!308592 c!185698) b!1094825))

(assert (= (and d!308592 (not c!185698)) b!1094826))

(assert (= (and b!1094826 (not res!486231)) b!1094827))

(declare-fun m!1247877 () Bool)

(assert (=> b!1094825 m!1247877))

(declare-fun m!1247879 () Bool)

(assert (=> b!1094827 m!1247879))

(assert (=> b!1094739 d!308592))

(declare-fun d!308594 () Bool)

(declare-fun lt!368678 () Bool)

(assert (=> d!308594 (= lt!368678 (forall!2374 (list!3778 objs!8) lambda!42457))))

(assert (=> d!308594 (= lt!368678 (forall!2377 (c!185681 objs!8) lambda!42457))))

(assert (=> d!308594 (= (forall!2375 objs!8 lambda!42457) lt!368678)))

(declare-fun bs!258528 () Bool)

(assert (= bs!258528 d!308594))

(assert (=> bs!258528 m!1247649))

(assert (=> bs!258528 m!1247649))

(declare-fun m!1247881 () Bool)

(assert (=> bs!258528 m!1247881))

(declare-fun m!1247883 () Bool)

(assert (=> bs!258528 m!1247883))

(assert (=> start!93782 d!308594))

(declare-fun d!308596 () Bool)

(declare-fun isBalanced!892 (Conc!3229) Bool)

(assert (=> d!308596 (= (inv!13488 objs!8) (isBalanced!892 (c!185681 objs!8)))))

(declare-fun bs!258529 () Bool)

(assert (= bs!258529 d!308596))

(declare-fun m!1247885 () Bool)

(assert (=> bs!258529 m!1247885))

(assert (=> start!93782 d!308596))

(declare-fun d!308598 () Bool)

(declare-fun lt!368679 () Int)

(assert (=> d!308598 (= lt!368679 (size!8149 (list!3778 lt!368606)))))

(assert (=> d!308598 (= lt!368679 (size!8152 (c!185681 lt!368606)))))

(assert (=> d!308598 (= (size!8150 lt!368606) lt!368679)))

(declare-fun bs!258530 () Bool)

(assert (= bs!258530 d!308598))

(assert (=> bs!258530 m!1247675))

(assert (=> bs!258530 m!1247675))

(declare-fun m!1247887 () Bool)

(assert (=> bs!258530 m!1247887))

(declare-fun m!1247889 () Bool)

(assert (=> bs!258530 m!1247889))

(assert (=> b!1094738 d!308598))

(declare-fun d!308600 () Bool)

(declare-fun e!693081 () Bool)

(assert (=> d!308600 e!693081))

(declare-fun res!486232 () Bool)

(assert (=> d!308600 (=> res!486232 e!693081)))

(assert (=> d!308600 (= res!486232 (isEmpty!6672 lt!368623))))

(declare-fun lt!368680 () Unit!16034)

(assert (=> d!308600 (= lt!368680 (choose!7055 lt!368623 lambda!42460))))

(assert (=> d!308600 (not (forall!2374 lt!368623 lambda!42460))))

(assert (=> d!308600 (= (lemmaNotForallFilterShorter!43 lt!368623 lambda!42460) lt!368680)))

(declare-fun b!1094828 () Bool)

(assert (=> b!1094828 (= e!693081 (< (size!8149 (filter!276 lt!368623 lambda!42460)) (size!8149 lt!368623)))))

(assert (= (and d!308600 (not res!486232)) b!1094828))

(assert (=> d!308600 m!1247741))

(declare-fun m!1247891 () Bool)

(assert (=> d!308600 m!1247891))

(declare-fun m!1247893 () Bool)

(assert (=> d!308600 m!1247893))

(assert (=> b!1094828 m!1247681))

(assert (=> b!1094828 m!1247681))

(assert (=> b!1094828 m!1247683))

(assert (=> b!1094828 m!1247685))

(assert (=> b!1094738 d!308600))

(declare-fun d!308602 () Bool)

(declare-fun lt!368681 () Bool)

(assert (=> d!308602 (= lt!368681 (forall!2374 (list!3778 objs!8) lambda!42460))))

(assert (=> d!308602 (= lt!368681 (forall!2377 (c!185681 objs!8) lambda!42460))))

(assert (=> d!308602 (= (forall!2375 objs!8 lambda!42460) lt!368681)))

(declare-fun bs!258531 () Bool)

(assert (= bs!258531 d!308602))

(assert (=> bs!258531 m!1247649))

(assert (=> bs!258531 m!1247649))

(declare-fun m!1247895 () Bool)

(assert (=> bs!258531 m!1247895))

(declare-fun m!1247897 () Bool)

(assert (=> bs!258531 m!1247897))

(assert (=> b!1094738 d!308602))

(declare-fun d!308604 () Bool)

(declare-fun e!693084 () Bool)

(assert (=> d!308604 e!693084))

(declare-fun res!486235 () Bool)

(assert (=> d!308604 (=> (not res!486235) (not e!693084))))

(declare-fun filter!279 (Conc!3229 Int) Conc!3229)

(assert (=> d!308604 (= res!486235 (isBalanced!892 (filter!279 (c!185681 objs!8) lambda!42459)))))

(declare-fun lt!368684 () BalanceConc!6472)

(assert (=> d!308604 (= lt!368684 (BalanceConc!6473 (filter!279 (c!185681 objs!8) lambda!42459)))))

(assert (=> d!308604 (= (filter!277 objs!8 lambda!42459) lt!368684)))

(declare-fun b!1094831 () Bool)

(assert (=> b!1094831 (= e!693084 (= (list!3778 lt!368684) (filter!276 (list!3778 objs!8) lambda!42459)))))

(assert (= (and d!308604 res!486235) b!1094831))

(declare-fun m!1247899 () Bool)

(assert (=> d!308604 m!1247899))

(assert (=> d!308604 m!1247899))

(declare-fun m!1247901 () Bool)

(assert (=> d!308604 m!1247901))

(declare-fun m!1247903 () Bool)

(assert (=> b!1094831 m!1247903))

(assert (=> b!1094831 m!1247649))

(assert (=> b!1094831 m!1247649))

(declare-fun m!1247905 () Bool)

(assert (=> b!1094831 m!1247905))

(assert (=> b!1094737 d!308604))

(declare-fun d!308606 () Bool)

(declare-fun lt!368687 () tuple2!11726)

(declare-fun apply!2078 (List!10546 Int) tuple2!11726)

(assert (=> d!308606 (= lt!368687 (apply!2078 (list!3778 objs!8) (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2)))))))

(declare-fun apply!2079 (Conc!3229 Int) tuple2!11726)

(assert (=> d!308606 (= lt!368687 (apply!2079 (c!185681 objs!8) (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2)))))))

(declare-fun e!693087 () Bool)

(assert (=> d!308606 e!693087))

(declare-fun res!486238 () Bool)

(assert (=> d!308606 (=> (not res!486238) (not e!693087))))

(assert (=> d!308606 (= res!486238 (<= 0 (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2)))))))

(assert (=> d!308606 (= (apply!2077 objs!8 (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2)))) lt!368687)))

(declare-fun b!1094834 () Bool)

(assert (=> b!1094834 (= e!693087 (< (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2))) (size!8150 objs!8)))))

(assert (= (and d!308606 res!486238) b!1094834))

(assert (=> d!308606 m!1247649))

(assert (=> d!308606 m!1247649))

(declare-fun m!1247907 () Bool)

(assert (=> d!308606 m!1247907))

(declare-fun m!1247909 () Bool)

(assert (=> d!308606 m!1247909))

(assert (=> b!1094834 m!1247679))

(assert (=> b!1094737 d!308606))

(declare-fun d!308608 () Bool)

(declare-fun lt!368688 () Bool)

(assert (=> d!308608 (= lt!368688 (contains!1801 (list!3778 objs!8) lt!368619))))

(assert (=> d!308608 (= lt!368688 (contains!1802 (c!185681 objs!8) lt!368619))))

(assert (=> d!308608 (= (contains!1798 objs!8 lt!368619) lt!368688)))

(declare-fun bs!258532 () Bool)

(assert (= bs!258532 d!308608))

(assert (=> bs!258532 m!1247649))

(assert (=> bs!258532 m!1247649))

(declare-fun m!1247911 () Bool)

(assert (=> bs!258532 m!1247911))

(declare-fun m!1247913 () Bool)

(assert (=> bs!258532 m!1247913))

(assert (=> b!1094737 d!308608))

(declare-fun d!308610 () Bool)

(declare-fun e!693088 () Bool)

(assert (=> d!308610 e!693088))

(declare-fun res!486239 () Bool)

(assert (=> d!308610 (=> (not res!486239) (not e!693088))))

(assert (=> d!308610 (= res!486239 (isBalanced!892 (filter!279 (c!185681 objs!8) lambda!42458)))))

(declare-fun lt!368689 () BalanceConc!6472)

(assert (=> d!308610 (= lt!368689 (BalanceConc!6473 (filter!279 (c!185681 objs!8) lambda!42458)))))

(assert (=> d!308610 (= (filter!277 objs!8 lambda!42458) lt!368689)))

(declare-fun b!1094835 () Bool)

(assert (=> b!1094835 (= e!693088 (= (list!3778 lt!368689) (filter!276 (list!3778 objs!8) lambda!42458)))))

(assert (= (and d!308610 res!486239) b!1094835))

(declare-fun m!1247915 () Bool)

(assert (=> d!308610 m!1247915))

(assert (=> d!308610 m!1247915))

(declare-fun m!1247917 () Bool)

(assert (=> d!308610 m!1247917))

(declare-fun m!1247919 () Bool)

(assert (=> b!1094835 m!1247919))

(assert (=> b!1094835 m!1247649))

(assert (=> b!1094835 m!1247649))

(declare-fun m!1247921 () Bool)

(assert (=> b!1094835 m!1247921))

(assert (=> b!1094737 d!308610))

(declare-fun d!308612 () Bool)

(declare-fun e!693089 () Bool)

(assert (=> d!308612 e!693089))

(declare-fun res!486240 () Bool)

(assert (=> d!308612 (=> (not res!486240) (not e!693089))))

(assert (=> d!308612 (= res!486240 (isBalanced!892 (filter!279 (c!185681 objs!8) lambda!42460)))))

(declare-fun lt!368690 () BalanceConc!6472)

(assert (=> d!308612 (= lt!368690 (BalanceConc!6473 (filter!279 (c!185681 objs!8) lambda!42460)))))

(assert (=> d!308612 (= (filter!277 objs!8 lambda!42460) lt!368690)))

(declare-fun b!1094836 () Bool)

(assert (=> b!1094836 (= e!693089 (= (list!3778 lt!368690) (filter!276 (list!3778 objs!8) lambda!42460)))))

(assert (= (and d!308612 res!486240) b!1094836))

(declare-fun m!1247923 () Bool)

(assert (=> d!308612 m!1247923))

(assert (=> d!308612 m!1247923))

(declare-fun m!1247925 () Bool)

(assert (=> d!308612 m!1247925))

(declare-fun m!1247927 () Bool)

(assert (=> b!1094836 m!1247927))

(assert (=> b!1094836 m!1247649))

(assert (=> b!1094836 m!1247649))

(declare-fun m!1247929 () Bool)

(assert (=> b!1094836 m!1247929))

(assert (=> b!1094737 d!308612))

(declare-fun d!308614 () Bool)

(assert (=> d!308614 (dynLambda!4609 lambda!42458 lt!368619)))

(declare-fun lt!368693 () Unit!16034)

(declare-fun choose!7056 (List!10546 Int tuple2!11726) Unit!16034)

(assert (=> d!308614 (= lt!368693 (choose!7056 (list!3778 lt!368625) lambda!42458 lt!368619))))

(declare-fun e!693092 () Bool)

(assert (=> d!308614 e!693092))

(declare-fun res!486243 () Bool)

(assert (=> d!308614 (=> (not res!486243) (not e!693092))))

(assert (=> d!308614 (= res!486243 (forall!2374 (list!3778 lt!368625) lambda!42458))))

(assert (=> d!308614 (= (forallContained!502 (list!3778 lt!368625) lambda!42458 lt!368619) lt!368693)))

(declare-fun b!1094839 () Bool)

(assert (=> b!1094839 (= e!693092 (contains!1801 (list!3778 lt!368625) lt!368619))))

(assert (= (and d!308614 res!486243) b!1094839))

(declare-fun b_lambda!31185 () Bool)

(assert (=> (not b_lambda!31185) (not d!308614)))

(declare-fun m!1247931 () Bool)

(assert (=> d!308614 m!1247931))

(assert (=> d!308614 m!1247645))

(declare-fun m!1247933 () Bool)

(assert (=> d!308614 m!1247933))

(assert (=> d!308614 m!1247645))

(declare-fun m!1247935 () Bool)

(assert (=> d!308614 m!1247935))

(assert (=> b!1094839 m!1247645))

(assert (=> b!1094839 m!1247873))

(assert (=> b!1094742 d!308614))

(declare-fun d!308616 () Bool)

(assert (=> d!308616 (= (list!3778 lt!368625) (list!3780 (c!185681 lt!368625)))))

(declare-fun bs!258533 () Bool)

(assert (= bs!258533 d!308616))

(declare-fun m!1247937 () Bool)

(assert (=> bs!258533 m!1247937))

(assert (=> b!1094742 d!308616))

(declare-fun d!308618 () Bool)

(declare-fun res!486248 () Bool)

(declare-fun e!693097 () Bool)

(assert (=> d!308618 (=> res!486248 e!693097)))

(assert (=> d!308618 (= res!486248 ((_ is Nil!10530) lt!368610))))

(assert (=> d!308618 (= (forall!2374 lt!368610 lambda!42457) e!693097)))

(declare-fun b!1094844 () Bool)

(declare-fun e!693098 () Bool)

(assert (=> b!1094844 (= e!693097 e!693098)))

(declare-fun res!486249 () Bool)

(assert (=> b!1094844 (=> (not res!486249) (not e!693098))))

(assert (=> b!1094844 (= res!486249 (dynLambda!4609 lambda!42457 (h!15931 lt!368610)))))

(declare-fun b!1094845 () Bool)

(assert (=> b!1094845 (= e!693098 (forall!2374 (t!103088 lt!368610) lambda!42457))))

(assert (= (and d!308618 (not res!486248)) b!1094844))

(assert (= (and b!1094844 res!486249) b!1094845))

(declare-fun b_lambda!31187 () Bool)

(assert (=> (not b_lambda!31187) (not b!1094844)))

(declare-fun m!1247939 () Bool)

(assert (=> b!1094844 m!1247939))

(declare-fun m!1247941 () Bool)

(assert (=> b!1094845 m!1247941))

(assert (=> b!1094731 d!308618))

(declare-fun d!308620 () Bool)

(assert (=> d!308620 (dynLambda!4609 lambda!42458 lt!368619)))

(declare-fun lt!368694 () Unit!16034)

(assert (=> d!308620 (= lt!368694 (choose!7056 (list!3778 objs!8) lambda!42458 lt!368619))))

(declare-fun e!693099 () Bool)

(assert (=> d!308620 e!693099))

(declare-fun res!486250 () Bool)

(assert (=> d!308620 (=> (not res!486250) (not e!693099))))

(assert (=> d!308620 (= res!486250 (forall!2374 (list!3778 objs!8) lambda!42458))))

(assert (=> d!308620 (= (forallContained!502 (list!3778 objs!8) lambda!42458 lt!368619) lt!368694)))

(declare-fun b!1094846 () Bool)

(assert (=> b!1094846 (= e!693099 (contains!1801 (list!3778 objs!8) lt!368619))))

(assert (= (and d!308620 res!486250) b!1094846))

(declare-fun b_lambda!31189 () Bool)

(assert (=> (not b_lambda!31189) (not d!308620)))

(assert (=> d!308620 m!1247931))

(assert (=> d!308620 m!1247649))

(declare-fun m!1247943 () Bool)

(assert (=> d!308620 m!1247943))

(assert (=> d!308620 m!1247649))

(assert (=> d!308620 m!1247843))

(assert (=> b!1094846 m!1247649))

(assert (=> b!1094846 m!1247911))

(assert (=> b!1094741 d!308620))

(assert (=> b!1094741 d!308576))

(declare-fun d!308622 () Bool)

(assert (=> d!308622 (dynLambda!4609 lambda!42460 lt!368619)))

(declare-fun lt!368695 () Unit!16034)

(assert (=> d!308622 (= lt!368695 (choose!7056 lt!368623 lambda!42460 lt!368619))))

(declare-fun e!693100 () Bool)

(assert (=> d!308622 e!693100))

(declare-fun res!486251 () Bool)

(assert (=> d!308622 (=> (not res!486251) (not e!693100))))

(assert (=> d!308622 (= res!486251 (forall!2374 lt!368623 lambda!42460))))

(assert (=> d!308622 (= (forallContained!502 lt!368623 lambda!42460 lt!368619) lt!368695)))

(declare-fun b!1094847 () Bool)

(assert (=> b!1094847 (= e!693100 (contains!1801 lt!368623 lt!368619))))

(assert (= (and d!308622 res!486251) b!1094847))

(declare-fun b_lambda!31191 () Bool)

(assert (=> (not b_lambda!31191) (not d!308622)))

(declare-fun m!1247945 () Bool)

(assert (=> d!308622 m!1247945))

(declare-fun m!1247947 () Bool)

(assert (=> d!308622 m!1247947))

(assert (=> d!308622 m!1247893))

(declare-fun m!1247949 () Bool)

(assert (=> b!1094847 m!1247949))

(assert (=> b!1094729 d!308622))

(assert (=> b!1094734 d!308604))

(declare-fun d!308624 () Bool)

(declare-fun res!486252 () Bool)

(declare-fun e!693101 () Bool)

(assert (=> d!308624 (=> res!486252 e!693101)))

(assert (=> d!308624 (= res!486252 ((_ is Nil!10530) lt!368612))))

(assert (=> d!308624 (= (forall!2374 lt!368612 lambda!42457) e!693101)))

(declare-fun b!1094848 () Bool)

(declare-fun e!693102 () Bool)

(assert (=> b!1094848 (= e!693101 e!693102)))

(declare-fun res!486253 () Bool)

(assert (=> b!1094848 (=> (not res!486253) (not e!693102))))

(assert (=> b!1094848 (= res!486253 (dynLambda!4609 lambda!42457 (h!15931 lt!368612)))))

(declare-fun b!1094849 () Bool)

(assert (=> b!1094849 (= e!693102 (forall!2374 (t!103088 lt!368612) lambda!42457))))

(assert (= (and d!308624 (not res!486252)) b!1094848))

(assert (= (and b!1094848 res!486253) b!1094849))

(declare-fun b_lambda!31193 () Bool)

(assert (=> (not b_lambda!31193) (not b!1094848)))

(declare-fun m!1247951 () Bool)

(assert (=> b!1094848 m!1247951))

(declare-fun m!1247953 () Bool)

(assert (=> b!1094849 m!1247953))

(assert (=> b!1094734 d!308624))

(declare-fun d!308626 () Bool)

(declare-fun subseq!148 (List!10546 List!10546) Bool)

(assert (=> d!308626 (subseq!148 (filter!276 lt!368623 lambda!42460) lt!368623)))

(declare-fun lt!368698 () Unit!16034)

(declare-fun choose!7057 (List!10546 Int) Unit!16034)

(assert (=> d!308626 (= lt!368698 (choose!7057 lt!368623 lambda!42460))))

(assert (=> d!308626 (= (filterSubseq!37 lt!368623 lambda!42460) lt!368698)))

(declare-fun bs!258534 () Bool)

(assert (= bs!258534 d!308626))

(assert (=> bs!258534 m!1247681))

(assert (=> bs!258534 m!1247681))

(declare-fun m!1247955 () Bool)

(assert (=> bs!258534 m!1247955))

(declare-fun m!1247957 () Bool)

(assert (=> bs!258534 m!1247957))

(assert (=> b!1094734 d!308626))

(declare-fun bs!258573 () Bool)

(declare-fun b!1095045 () Bool)

(assert (= bs!258573 (and b!1095045 start!93782)))

(declare-fun lambda!42563 () Int)

(assert (=> bs!258573 (not (= lambda!42563 lambda!42457))))

(declare-fun bs!258574 () Bool)

(assert (= bs!258574 (and b!1095045 b!1094737)))

(declare-fun lt!368940 () tuple2!11726)

(assert (=> bs!258574 (= (= (_1!6689 lt!368940) (_1!6689 lt!368619)) (= lambda!42563 lambda!42458))))

(assert (=> bs!258574 (not (= lambda!42563 lambda!42459))))

(assert (=> bs!258574 (not (= lambda!42563 lambda!42460))))

(declare-fun b!1095049 () Bool)

(declare-fun e!693233 () Bool)

(assert (=> b!1095049 (= e!693233 true)))

(declare-fun b!1095048 () Bool)

(declare-fun e!693232 () Bool)

(assert (=> b!1095048 (= e!693232 e!693233)))

(assert (=> b!1095045 e!693232))

(assert (= b!1095048 b!1095049))

(assert (= b!1095045 b!1095048))

(declare-fun lambda!42564 () Int)

(assert (=> bs!258574 (= (= (_1!6689 lt!368940) (_1!6689 lt!368619)) (= lambda!42564 lambda!42459))))

(assert (=> bs!258574 (not (= lambda!42564 lambda!42460))))

(assert (=> b!1095045 (not (= lambda!42564 lambda!42563))))

(assert (=> bs!258573 (not (= lambda!42564 lambda!42457))))

(assert (=> bs!258574 (not (= lambda!42564 lambda!42458))))

(declare-fun b!1095051 () Bool)

(declare-fun e!693235 () Bool)

(assert (=> b!1095051 (= e!693235 true)))

(declare-fun b!1095050 () Bool)

(declare-fun e!693234 () Bool)

(assert (=> b!1095050 (= e!693234 e!693235)))

(assert (=> b!1095045 e!693234))

(assert (= b!1095050 b!1095051))

(assert (= b!1095045 b!1095050))

(declare-fun lambda!42565 () Int)

(assert (=> bs!258574 (not (= lambda!42565 lambda!42459))))

(assert (=> bs!258574 (= (= (_1!6689 lt!368940) (_1!6689 lt!368619)) (= lambda!42565 lambda!42460))))

(assert (=> b!1095045 (not (= lambda!42565 lambda!42563))))

(assert (=> bs!258573 (not (= lambda!42565 lambda!42457))))

(assert (=> bs!258574 (not (= lambda!42565 lambda!42458))))

(assert (=> b!1095045 (not (= lambda!42565 lambda!42564))))

(declare-fun b!1095053 () Bool)

(declare-fun e!693237 () Bool)

(assert (=> b!1095053 (= e!693237 true)))

(declare-fun b!1095052 () Bool)

(declare-fun e!693236 () Bool)

(assert (=> b!1095052 (= e!693236 e!693237)))

(assert (=> b!1095045 e!693236))

(assert (= b!1095052 b!1095053))

(assert (= b!1095045 b!1095052))

(declare-fun lambda!42566 () Int)

(assert (=> bs!258574 (not (= lambda!42566 lambda!42459))))

(assert (=> bs!258574 (not (= lambda!42566 lambda!42460))))

(assert (=> b!1095045 (not (= lambda!42566 lambda!42563))))

(assert (=> bs!258573 (= lambda!42566 lambda!42457)))

(assert (=> bs!258574 (not (= lambda!42566 lambda!42458))))

(assert (=> b!1095045 (not (= lambda!42566 lambda!42565))))

(assert (=> b!1095045 (not (= lambda!42566 lambda!42564))))

(declare-fun bs!258575 () Bool)

(declare-fun d!308628 () Bool)

(assert (= bs!258575 (and d!308628 b!1094737)))

(declare-fun lambda!42567 () Int)

(assert (=> bs!258575 (not (= lambda!42567 lambda!42459))))

(assert (=> bs!258575 (not (= lambda!42567 lambda!42460))))

(declare-fun bs!258576 () Bool)

(assert (= bs!258576 (and d!308628 b!1095045)))

(assert (=> bs!258576 (not (= lambda!42567 lambda!42563))))

(assert (=> bs!258576 (= lambda!42567 lambda!42566)))

(declare-fun bs!258577 () Bool)

(assert (= bs!258577 (and d!308628 start!93782)))

(assert (=> bs!258577 (= lambda!42567 lambda!42457)))

(assert (=> bs!258575 (not (= lambda!42567 lambda!42458))))

(assert (=> bs!258576 (not (= lambda!42567 lambda!42565))))

(assert (=> bs!258576 (not (= lambda!42567 lambda!42564))))

(declare-fun b!1095036 () Bool)

(assert (=> b!1095036 true))

(declare-fun lt!368950 () BalanceConc!6472)

(declare-fun lt!368959 () Unit!16034)

(assert (=> b!1095036 (= lt!368959 (forallContained!502 (list!3778 lt!368950) lambda!42563 lt!368940))))

(declare-fun e!693230 () Unit!16034)

(declare-fun err!2347 () Unit!16034)

(assert (=> b!1095036 (= e!693230 err!2347)))

(declare-fun b!1095037 () Bool)

(declare-fun e!693227 () Bool)

(declare-fun lt!368956 () List!10546)

(assert (=> b!1095037 (= e!693227 (< (size!8149 (filter!276 lt!368956 lambda!42565)) (size!8149 lt!368956)))))

(declare-fun b!1095038 () Bool)

(declare-fun e!693225 () BalanceConc!6472)

(assert (=> b!1095038 (= e!693225 lt!368606)))

(declare-fun b!1095039 () Bool)

(assert (=> b!1095039 true))

(declare-fun lt!368948 () Unit!16034)

(declare-fun lt!368955 () BalanceConc!6472)

(assert (=> b!1095039 (= lt!368948 (forallContained!502 (list!3778 lt!368955) lambda!42565 lt!368940))))

(declare-fun e!693231 () Unit!16034)

(declare-fun err!2349 () Unit!16034)

(assert (=> b!1095039 (= e!693231 err!2349)))

(declare-fun b!1095040 () Bool)

(declare-fun e!693229 () Unit!16034)

(declare-fun Unit!16049 () Unit!16034)

(assert (=> b!1095040 (= e!693229 Unit!16049)))

(declare-fun b!1095041 () Bool)

(declare-fun Unit!16050 () Unit!16034)

(assert (=> b!1095041 (= e!693231 Unit!16050)))

(declare-fun lt!368952 () BalanceConc!6472)

(assert (=> d!308628 (forall!2375 lt!368952 lambda!42567)))

(assert (=> d!308628 (= lt!368952 e!693225)))

(declare-fun c!185746 () Bool)

(assert (=> d!308628 (= c!185746 (<= (size!8150 lt!368606) 1))))

(assert (=> d!308628 (= (sortObjectsByID!0 lt!368606) lt!368952)))

(declare-fun b!1095042 () Bool)

(declare-fun e!693228 () Unit!16034)

(declare-fun Unit!16051 () Unit!16034)

(assert (=> b!1095042 (= e!693228 Unit!16051)))

(declare-fun b!1095043 () Bool)

(declare-fun Unit!16052 () Unit!16034)

(assert (=> b!1095043 (= e!693230 Unit!16052)))

(declare-fun b!1095044 () Bool)

(assert (=> b!1095044 true))

(declare-fun lt!368954 () Unit!16034)

(assert (=> b!1095044 (= lt!368954 (forallContained!502 (list!3778 lt!368606) lambda!42565 lt!368940))))

(declare-fun err!2346 () Unit!16034)

(assert (=> b!1095044 (= e!693229 err!2346)))

(declare-fun lt!368944 () BalanceConc!6472)

(declare-fun ++!2857 (BalanceConc!6472 BalanceConc!6472) BalanceConc!6472)

(assert (=> b!1095045 (= e!693225 (++!2857 (++!2857 (sortObjectsByID!0 lt!368950) lt!368944) (sortObjectsByID!0 lt!368955)))))

(assert (=> b!1095045 (= lt!368940 (apply!2077 lt!368606 (ite (>= (size!8150 lt!368606) 0) (div (size!8150 lt!368606) 2) (- (div (- (size!8150 lt!368606)) 2)))))))

(assert (=> b!1095045 (= lt!368950 (filter!277 lt!368606 lambda!42563))))

(assert (=> b!1095045 (= lt!368944 (filter!277 lt!368606 lambda!42564))))

(assert (=> b!1095045 (= lt!368955 (filter!277 lt!368606 lambda!42565))))

(declare-fun c!185747 () Bool)

(assert (=> b!1095045 (= c!185747 (contains!1798 lt!368950 lt!368940))))

(declare-fun lt!368971 () Unit!16034)

(assert (=> b!1095045 (= lt!368971 e!693230)))

(declare-fun c!185749 () Bool)

(assert (=> b!1095045 (= c!185749 (forall!2375 lt!368606 lambda!42563))))

(declare-fun lt!368973 () Unit!16034)

(assert (=> b!1095045 (= lt!368973 e!693228)))

(declare-fun lt!368969 () List!10546)

(assert (=> b!1095045 (= lt!368969 (list!3778 lt!368606))))

(declare-fun lt!368974 () Unit!16034)

(assert (=> b!1095045 (= lt!368974 (lemmaNotForallFilterShorter!43 lt!368969 lambda!42563))))

(declare-fun res!486291 () Bool)

(assert (=> b!1095045 (= res!486291 (isEmpty!6672 lt!368969))))

(declare-fun e!693226 () Bool)

(assert (=> b!1095045 (=> res!486291 e!693226)))

(assert (=> b!1095045 e!693226))

(declare-fun lt!368964 () Unit!16034)

(assert (=> b!1095045 (= lt!368964 lt!368974)))

(declare-fun c!185750 () Bool)

(assert (=> b!1095045 (= c!185750 (contains!1798 lt!368955 lt!368940))))

(declare-fun lt!368975 () Unit!16034)

(assert (=> b!1095045 (= lt!368975 e!693231)))

(declare-fun c!185748 () Bool)

(assert (=> b!1095045 (= c!185748 (forall!2375 lt!368606 lambda!42565))))

(declare-fun lt!368960 () Unit!16034)

(assert (=> b!1095045 (= lt!368960 e!693229)))

(assert (=> b!1095045 (= lt!368956 (list!3778 lt!368606))))

(declare-fun lt!368972 () Unit!16034)

(assert (=> b!1095045 (= lt!368972 (lemmaNotForallFilterShorter!43 lt!368956 lambda!42565))))

(declare-fun res!486292 () Bool)

(assert (=> b!1095045 (= res!486292 (isEmpty!6672 lt!368956))))

(assert (=> b!1095045 (=> res!486292 e!693227)))

(assert (=> b!1095045 e!693227))

(declare-fun lt!368942 () Unit!16034)

(assert (=> b!1095045 (= lt!368942 lt!368972)))

(declare-fun lt!368963 () Unit!16034)

(assert (=> b!1095045 (= lt!368963 (filterSubseq!37 (list!3778 lt!368606) lambda!42563))))

(declare-fun lt!368943 () Unit!16034)

(assert (=> b!1095045 (= lt!368943 (filterSubseq!37 (list!3778 lt!368606) lambda!42564))))

(declare-fun lt!368947 () Unit!16034)

(assert (=> b!1095045 (= lt!368947 (filterSubseq!37 (list!3778 lt!368606) lambda!42565))))

(declare-fun lt!368968 () List!10546)

(assert (=> b!1095045 (= lt!368968 (list!3778 (filter!277 lt!368606 lambda!42563)))))

(declare-fun lt!368941 () List!10546)

(assert (=> b!1095045 (= lt!368941 (list!3778 lt!368606))))

(declare-fun lt!368957 () Unit!16034)

(assert (=> b!1095045 (= lt!368957 (lemmaForallSubseq!45 lt!368968 lt!368941 lambda!42566))))

(assert (=> b!1095045 (forall!2374 lt!368968 lambda!42566)))

(declare-fun lt!368951 () Unit!16034)

(assert (=> b!1095045 (= lt!368951 lt!368957)))

(declare-fun lt!368965 () List!10546)

(assert (=> b!1095045 (= lt!368965 (list!3778 (filter!277 lt!368606 lambda!42564)))))

(declare-fun lt!368961 () List!10546)

(assert (=> b!1095045 (= lt!368961 (list!3778 lt!368606))))

(declare-fun lt!368949 () Unit!16034)

(assert (=> b!1095045 (= lt!368949 (lemmaForallSubseq!45 lt!368965 lt!368961 lambda!42566))))

(assert (=> b!1095045 (forall!2374 lt!368965 lambda!42566)))

(declare-fun lt!368958 () Unit!16034)

(assert (=> b!1095045 (= lt!368958 lt!368949)))

(declare-fun lt!368966 () List!10546)

(assert (=> b!1095045 (= lt!368966 (list!3778 (filter!277 lt!368606 lambda!42565)))))

(declare-fun lt!368967 () List!10546)

(assert (=> b!1095045 (= lt!368967 (list!3778 lt!368606))))

(declare-fun lt!368953 () Unit!16034)

(assert (=> b!1095045 (= lt!368953 (lemmaForallSubseq!45 lt!368966 lt!368967 lambda!42566))))

(assert (=> b!1095045 (forall!2374 lt!368966 lambda!42566)))

(declare-fun lt!368946 () Unit!16034)

(assert (=> b!1095045 (= lt!368946 lt!368953)))

(declare-fun lt!368962 () Unit!16034)

(assert (=> b!1095045 (= lt!368962 (lemmaConcatPreservesForall!88 (list!3778 (sortObjectsByID!0 lt!368950)) (list!3778 lt!368944) lambda!42566))))

(declare-fun lt!368945 () Unit!16034)

(assert (=> b!1095045 (= lt!368945 (lemmaConcatPreservesForall!88 (++!2855 (list!3778 (sortObjectsByID!0 lt!368950)) (list!3778 lt!368944)) (list!3778 (sortObjectsByID!0 lt!368955)) lambda!42566))))

(declare-fun b!1095046 () Bool)

(assert (=> b!1095046 (= e!693226 (< (size!8149 (filter!276 lt!368969 lambda!42563)) (size!8149 lt!368969)))))

(declare-fun b!1095047 () Bool)

(assert (=> b!1095047 true))

(declare-fun lt!368970 () Unit!16034)

(assert (=> b!1095047 (= lt!368970 (forallContained!502 (list!3778 lt!368606) lambda!42563 lt!368940))))

(declare-fun err!2348 () Unit!16034)

(assert (=> b!1095047 (= e!693228 err!2348)))

(assert (= (and d!308628 c!185746) b!1095038))

(assert (= (and d!308628 (not c!185746)) b!1095045))

(assert (= (and b!1095045 c!185747) b!1095036))

(assert (= (and b!1095045 (not c!185747)) b!1095043))

(assert (= (and b!1095045 c!185749) b!1095047))

(assert (= (and b!1095045 (not c!185749)) b!1095042))

(assert (= (and b!1095045 (not res!486291)) b!1095046))

(assert (= (and b!1095045 c!185750) b!1095039))

(assert (= (and b!1095045 (not c!185750)) b!1095041))

(assert (= (and b!1095045 c!185748) b!1095044))

(assert (= (and b!1095045 (not c!185748)) b!1095040))

(assert (= (and b!1095045 (not res!486292)) b!1095037))

(declare-fun m!1248271 () Bool)

(assert (=> b!1095045 m!1248271))

(declare-fun m!1248273 () Bool)

(assert (=> b!1095045 m!1248273))

(declare-fun m!1248275 () Bool)

(assert (=> b!1095045 m!1248275))

(declare-fun m!1248277 () Bool)

(assert (=> b!1095045 m!1248277))

(declare-fun m!1248279 () Bool)

(assert (=> b!1095045 m!1248279))

(assert (=> b!1095045 m!1248271))

(declare-fun m!1248281 () Bool)

(assert (=> b!1095045 m!1248281))

(assert (=> b!1095045 m!1248279))

(declare-fun m!1248283 () Bool)

(assert (=> b!1095045 m!1248283))

(declare-fun m!1248285 () Bool)

(assert (=> b!1095045 m!1248285))

(declare-fun m!1248287 () Bool)

(assert (=> b!1095045 m!1248287))

(declare-fun m!1248289 () Bool)

(assert (=> b!1095045 m!1248289))

(declare-fun m!1248291 () Bool)

(assert (=> b!1095045 m!1248291))

(assert (=> b!1095045 m!1248277))

(declare-fun m!1248293 () Bool)

(assert (=> b!1095045 m!1248293))

(declare-fun m!1248295 () Bool)

(assert (=> b!1095045 m!1248295))

(assert (=> b!1095045 m!1247727))

(declare-fun m!1248297 () Bool)

(assert (=> b!1095045 m!1248297))

(declare-fun m!1248299 () Bool)

(assert (=> b!1095045 m!1248299))

(assert (=> b!1095045 m!1247675))

(assert (=> b!1095045 m!1248287))

(declare-fun m!1248301 () Bool)

(assert (=> b!1095045 m!1248301))

(assert (=> b!1095045 m!1248287))

(declare-fun m!1248303 () Bool)

(assert (=> b!1095045 m!1248303))

(declare-fun m!1248305 () Bool)

(assert (=> b!1095045 m!1248305))

(assert (=> b!1095045 m!1248273))

(assert (=> b!1095045 m!1248271))

(assert (=> b!1095045 m!1248273))

(declare-fun m!1248307 () Bool)

(assert (=> b!1095045 m!1248307))

(assert (=> b!1095045 m!1248279))

(assert (=> b!1095045 m!1248301))

(assert (=> b!1095045 m!1247675))

(declare-fun m!1248309 () Bool)

(assert (=> b!1095045 m!1248309))

(declare-fun m!1248311 () Bool)

(assert (=> b!1095045 m!1248311))

(declare-fun m!1248313 () Bool)

(assert (=> b!1095045 m!1248313))

(declare-fun m!1248315 () Bool)

(assert (=> b!1095045 m!1248315))

(assert (=> b!1095045 m!1248315))

(declare-fun m!1248317 () Bool)

(assert (=> b!1095045 m!1248317))

(declare-fun m!1248319 () Bool)

(assert (=> b!1095045 m!1248319))

(assert (=> b!1095045 m!1247675))

(declare-fun m!1248321 () Bool)

(assert (=> b!1095045 m!1248321))

(declare-fun m!1248323 () Bool)

(assert (=> b!1095045 m!1248323))

(assert (=> b!1095045 m!1248275))

(assert (=> b!1095045 m!1248289))

(declare-fun m!1248325 () Bool)

(assert (=> b!1095045 m!1248325))

(assert (=> b!1095045 m!1248277))

(declare-fun m!1248327 () Bool)

(assert (=> b!1095045 m!1248327))

(assert (=> b!1095045 m!1247675))

(declare-fun m!1248329 () Bool)

(assert (=> b!1095045 m!1248329))

(declare-fun m!1248331 () Bool)

(assert (=> b!1095045 m!1248331))

(declare-fun m!1248333 () Bool)

(assert (=> b!1095045 m!1248333))

(assert (=> b!1095045 m!1248313))

(declare-fun m!1248335 () Bool)

(assert (=> b!1095045 m!1248335))

(declare-fun m!1248337 () Bool)

(assert (=> b!1095045 m!1248337))

(assert (=> b!1095045 m!1248313))

(assert (=> b!1095045 m!1248315))

(declare-fun m!1248339 () Bool)

(assert (=> b!1095046 m!1248339))

(assert (=> b!1095046 m!1248339))

(declare-fun m!1248341 () Bool)

(assert (=> b!1095046 m!1248341))

(declare-fun m!1248343 () Bool)

(assert (=> b!1095046 m!1248343))

(assert (=> b!1095047 m!1247675))

(assert (=> b!1095047 m!1247675))

(declare-fun m!1248345 () Bool)

(assert (=> b!1095047 m!1248345))

(declare-fun m!1248347 () Bool)

(assert (=> b!1095036 m!1248347))

(assert (=> b!1095036 m!1248347))

(declare-fun m!1248349 () Bool)

(assert (=> b!1095036 m!1248349))

(assert (=> b!1095044 m!1247675))

(assert (=> b!1095044 m!1247675))

(declare-fun m!1248351 () Bool)

(assert (=> b!1095044 m!1248351))

(declare-fun m!1248353 () Bool)

(assert (=> b!1095037 m!1248353))

(assert (=> b!1095037 m!1248353))

(declare-fun m!1248355 () Bool)

(assert (=> b!1095037 m!1248355))

(declare-fun m!1248357 () Bool)

(assert (=> b!1095037 m!1248357))

(declare-fun m!1248359 () Bool)

(assert (=> b!1095039 m!1248359))

(assert (=> b!1095039 m!1248359))

(declare-fun m!1248361 () Bool)

(assert (=> b!1095039 m!1248361))

(declare-fun m!1248363 () Bool)

(assert (=> d!308628 m!1248363))

(assert (=> d!308628 m!1247727))

(assert (=> b!1094734 d!308628))

(assert (=> b!1094734 d!308610))

(declare-fun d!308708 () Bool)

(assert (=> d!308708 (forall!2374 lt!368622 lambda!42457)))

(declare-fun lt!368978 () Unit!16034)

(declare-fun choose!7058 (List!10546 List!10546 Int) Unit!16034)

(assert (=> d!308708 (= lt!368978 (choose!7058 lt!368622 lt!368623 lambda!42457))))

(assert (=> d!308708 (forall!2374 lt!368623 lambda!42457)))

(assert (=> d!308708 (= (lemmaForallSubseq!45 lt!368622 lt!368623 lambda!42457) lt!368978)))

(declare-fun bs!258578 () Bool)

(assert (= bs!258578 d!308708))

(assert (=> bs!258578 m!1247693))

(declare-fun m!1248365 () Bool)

(assert (=> bs!258578 m!1248365))

(declare-fun m!1248367 () Bool)

(assert (=> bs!258578 m!1248367))

(assert (=> b!1094734 d!308708))

(declare-fun d!308710 () Bool)

(declare-fun res!486293 () Bool)

(declare-fun e!693238 () Bool)

(assert (=> d!308710 (=> res!486293 e!693238)))

(assert (=> d!308710 (= res!486293 ((_ is Nil!10530) lt!368594))))

(assert (=> d!308710 (= (forall!2374 lt!368594 lambda!42457) e!693238)))

(declare-fun b!1095054 () Bool)

(declare-fun e!693239 () Bool)

(assert (=> b!1095054 (= e!693238 e!693239)))

(declare-fun res!486294 () Bool)

(assert (=> b!1095054 (=> (not res!486294) (not e!693239))))

(assert (=> b!1095054 (= res!486294 (dynLambda!4609 lambda!42457 (h!15931 lt!368594)))))

(declare-fun b!1095055 () Bool)

(assert (=> b!1095055 (= e!693239 (forall!2374 (t!103088 lt!368594) lambda!42457))))

(assert (= (and d!308710 (not res!486293)) b!1095054))

(assert (= (and b!1095054 res!486294) b!1095055))

(declare-fun b_lambda!31235 () Bool)

(assert (=> (not b_lambda!31235) (not b!1095054)))

(declare-fun m!1248369 () Bool)

(assert (=> b!1095054 m!1248369))

(declare-fun m!1248371 () Bool)

(assert (=> b!1095055 m!1248371))

(assert (=> b!1094734 d!308710))

(declare-fun d!308712 () Bool)

(declare-fun res!486295 () Bool)

(declare-fun e!693240 () Bool)

(assert (=> d!308712 (=> res!486295 e!693240)))

(assert (=> d!308712 (= res!486295 ((_ is Nil!10530) lt!368622))))

(assert (=> d!308712 (= (forall!2374 lt!368622 lambda!42457) e!693240)))

(declare-fun b!1095056 () Bool)

(declare-fun e!693241 () Bool)

(assert (=> b!1095056 (= e!693240 e!693241)))

(declare-fun res!486296 () Bool)

(assert (=> b!1095056 (=> (not res!486296) (not e!693241))))

(assert (=> b!1095056 (= res!486296 (dynLambda!4609 lambda!42457 (h!15931 lt!368622)))))

(declare-fun b!1095057 () Bool)

(assert (=> b!1095057 (= e!693241 (forall!2374 (t!103088 lt!368622) lambda!42457))))

(assert (= (and d!308712 (not res!486295)) b!1095056))

(assert (= (and b!1095056 res!486296) b!1095057))

(declare-fun b_lambda!31237 () Bool)

(assert (=> (not b_lambda!31237) (not b!1095056)))

(declare-fun m!1248373 () Bool)

(assert (=> b!1095056 m!1248373))

(declare-fun m!1248375 () Bool)

(assert (=> b!1095057 m!1248375))

(assert (=> b!1094734 d!308712))

(declare-fun d!308714 () Bool)

(assert (=> d!308714 (= (list!3778 (sortObjectsByID!0 lt!368606)) (list!3780 (c!185681 (sortObjectsByID!0 lt!368606))))))

(declare-fun bs!258579 () Bool)

(assert (= bs!258579 d!308714))

(declare-fun m!1248377 () Bool)

(assert (=> bs!258579 m!1248377))

(assert (=> b!1094734 d!308714))

(declare-fun d!308716 () Bool)

(assert (=> d!308716 (forall!2374 lt!368594 lambda!42457)))

(declare-fun lt!368979 () Unit!16034)

(assert (=> d!308716 (= lt!368979 (choose!7058 lt!368594 lt!368623 lambda!42457))))

(assert (=> d!308716 (forall!2374 lt!368623 lambda!42457)))

(assert (=> d!308716 (= (lemmaForallSubseq!45 lt!368594 lt!368623 lambda!42457) lt!368979)))

(declare-fun bs!258580 () Bool)

(assert (= bs!258580 d!308716))

(assert (=> bs!258580 m!1247721))

(declare-fun m!1248379 () Bool)

(assert (=> bs!258580 m!1248379))

(assert (=> bs!258580 m!1248367))

(assert (=> b!1094734 d!308716))

(declare-fun d!308718 () Bool)

(assert (=> d!308718 (subseq!148 (filter!276 lt!368623 lambda!42458) lt!368623)))

(declare-fun lt!368980 () Unit!16034)

(assert (=> d!308718 (= lt!368980 (choose!7057 lt!368623 lambda!42458))))

(assert (=> d!308718 (= (filterSubseq!37 lt!368623 lambda!42458) lt!368980)))

(declare-fun bs!258581 () Bool)

(assert (= bs!258581 d!308718))

(assert (=> bs!258581 m!1247733))

(assert (=> bs!258581 m!1247733))

(declare-fun m!1248381 () Bool)

(assert (=> bs!258581 m!1248381))

(declare-fun m!1248383 () Bool)

(assert (=> bs!258581 m!1248383))

(assert (=> b!1094734 d!308718))

(declare-fun d!308720 () Bool)

(assert (=> d!308720 (= (list!3778 (filter!277 objs!8 lambda!42460)) (list!3780 (c!185681 (filter!277 objs!8 lambda!42460))))))

(declare-fun bs!258582 () Bool)

(assert (= bs!258582 d!308720))

(declare-fun m!1248385 () Bool)

(assert (=> bs!258582 m!1248385))

(assert (=> b!1094734 d!308720))

(declare-fun d!308722 () Bool)

(assert (=> d!308722 (forall!2374 (++!2855 lt!368599 lt!368602) lambda!42457)))

(declare-fun lt!368983 () Unit!16034)

(declare-fun choose!7059 (List!10546 List!10546 Int) Unit!16034)

(assert (=> d!308722 (= lt!368983 (choose!7059 lt!368599 lt!368602 lambda!42457))))

(assert (=> d!308722 (forall!2374 lt!368599 lambda!42457)))

(assert (=> d!308722 (= (lemmaConcatPreservesForall!88 lt!368599 lt!368602 lambda!42457) lt!368983)))

(declare-fun bs!258583 () Bool)

(assert (= bs!258583 d!308722))

(assert (=> bs!258583 m!1247709))

(assert (=> bs!258583 m!1247709))

(declare-fun m!1248387 () Bool)

(assert (=> bs!258583 m!1248387))

(declare-fun m!1248389 () Bool)

(assert (=> bs!258583 m!1248389))

(declare-fun m!1248391 () Bool)

(assert (=> bs!258583 m!1248391))

(assert (=> b!1094734 d!308722))

(declare-fun d!308724 () Bool)

(assert (=> d!308724 (subseq!148 (filter!276 lt!368623 lambda!42459) lt!368623)))

(declare-fun lt!368984 () Unit!16034)

(assert (=> d!308724 (= lt!368984 (choose!7057 lt!368623 lambda!42459))))

(assert (=> d!308724 (= (filterSubseq!37 lt!368623 lambda!42459) lt!368984)))

(declare-fun bs!258584 () Bool)

(assert (= bs!258584 d!308724))

(declare-fun m!1248393 () Bool)

(assert (=> bs!258584 m!1248393))

(assert (=> bs!258584 m!1248393))

(declare-fun m!1248395 () Bool)

(assert (=> bs!258584 m!1248395))

(declare-fun m!1248397 () Bool)

(assert (=> bs!258584 m!1248397))

(assert (=> b!1094734 d!308724))

(declare-fun d!308726 () Bool)

(assert (=> d!308726 (forall!2374 lt!368613 lambda!42457)))

(declare-fun lt!368985 () Unit!16034)

(assert (=> d!308726 (= lt!368985 (choose!7058 lt!368613 lt!368623 lambda!42457))))

(assert (=> d!308726 (forall!2374 lt!368623 lambda!42457)))

(assert (=> d!308726 (= (lemmaForallSubseq!45 lt!368613 lt!368623 lambda!42457) lt!368985)))

(declare-fun bs!258585 () Bool)

(assert (= bs!258585 d!308726))

(assert (=> bs!258585 m!1247717))

(declare-fun m!1248399 () Bool)

(assert (=> bs!258585 m!1248399))

(assert (=> bs!258585 m!1248367))

(assert (=> b!1094734 d!308726))

(declare-fun d!308728 () Bool)

(assert (=> d!308728 (= (list!3778 (filter!277 objs!8 lambda!42458)) (list!3780 (c!185681 (filter!277 objs!8 lambda!42458))))))

(declare-fun bs!258586 () Bool)

(assert (= bs!258586 d!308728))

(declare-fun m!1248401 () Bool)

(assert (=> bs!258586 m!1248401))

(assert (=> b!1094734 d!308728))

(declare-fun d!308730 () Bool)

(assert (=> d!308730 (= (list!3778 lt!368597) (list!3780 (c!185681 lt!368597)))))

(declare-fun bs!258587 () Bool)

(assert (= bs!258587 d!308730))

(declare-fun m!1248403 () Bool)

(assert (=> bs!258587 m!1248403))

(assert (=> b!1094734 d!308730))

(declare-fun d!308732 () Bool)

(declare-fun res!486297 () Bool)

(declare-fun e!693242 () Bool)

(assert (=> d!308732 (=> res!486297 e!693242)))

(assert (=> d!308732 (= res!486297 ((_ is Nil!10530) lt!368613))))

(assert (=> d!308732 (= (forall!2374 lt!368613 lambda!42457) e!693242)))

(declare-fun b!1095058 () Bool)

(declare-fun e!693243 () Bool)

(assert (=> b!1095058 (= e!693242 e!693243)))

(declare-fun res!486298 () Bool)

(assert (=> b!1095058 (=> (not res!486298) (not e!693243))))

(assert (=> b!1095058 (= res!486298 (dynLambda!4609 lambda!42457 (h!15931 lt!368613)))))

(declare-fun b!1095059 () Bool)

(assert (=> b!1095059 (= e!693243 (forall!2374 (t!103088 lt!368613) lambda!42457))))

(assert (= (and d!308732 (not res!486297)) b!1095058))

(assert (= (and b!1095058 res!486298) b!1095059))

(declare-fun b_lambda!31239 () Bool)

(assert (=> (not b_lambda!31239) (not b!1095058)))

(declare-fun m!1248405 () Bool)

(assert (=> b!1095058 m!1248405))

(declare-fun m!1248407 () Bool)

(assert (=> b!1095059 m!1248407))

(assert (=> b!1094734 d!308732))

(declare-fun b!1095070 () Bool)

(declare-fun res!486303 () Bool)

(declare-fun e!693248 () Bool)

(assert (=> b!1095070 (=> (not res!486303) (not e!693248))))

(declare-fun lt!368988 () List!10546)

(assert (=> b!1095070 (= res!486303 (= (size!8149 lt!368988) (+ (size!8149 lt!368599) (size!8149 lt!368602))))))

(declare-fun b!1095069 () Bool)

(declare-fun e!693249 () List!10546)

(assert (=> b!1095069 (= e!693249 (Cons!10530 (h!15931 lt!368599) (++!2855 (t!103088 lt!368599) lt!368602)))))

(declare-fun d!308734 () Bool)

(assert (=> d!308734 e!693248))

(declare-fun res!486304 () Bool)

(assert (=> d!308734 (=> (not res!486304) (not e!693248))))

(assert (=> d!308734 (= res!486304 (= (content!1520 lt!368988) ((_ map or) (content!1520 lt!368599) (content!1520 lt!368602))))))

(assert (=> d!308734 (= lt!368988 e!693249)))

(declare-fun c!185753 () Bool)

(assert (=> d!308734 (= c!185753 ((_ is Nil!10530) lt!368599))))

(assert (=> d!308734 (= (++!2855 lt!368599 lt!368602) lt!368988)))

(declare-fun b!1095068 () Bool)

(assert (=> b!1095068 (= e!693249 lt!368602)))

(declare-fun b!1095071 () Bool)

(assert (=> b!1095071 (= e!693248 (or (not (= lt!368602 Nil!10530)) (= lt!368988 lt!368599)))))

(assert (= (and d!308734 c!185753) b!1095068))

(assert (= (and d!308734 (not c!185753)) b!1095069))

(assert (= (and d!308734 res!486304) b!1095070))

(assert (= (and b!1095070 res!486303) b!1095071))

(declare-fun m!1248409 () Bool)

(assert (=> b!1095070 m!1248409))

(declare-fun m!1248411 () Bool)

(assert (=> b!1095070 m!1248411))

(declare-fun m!1248413 () Bool)

(assert (=> b!1095070 m!1248413))

(declare-fun m!1248415 () Bool)

(assert (=> b!1095069 m!1248415))

(declare-fun m!1248417 () Bool)

(assert (=> d!308734 m!1248417))

(declare-fun m!1248419 () Bool)

(assert (=> d!308734 m!1248419))

(declare-fun m!1248421 () Bool)

(assert (=> d!308734 m!1248421))

(assert (=> b!1094734 d!308734))

(declare-fun d!308736 () Bool)

(assert (=> d!308736 (= (list!3778 (filter!277 objs!8 lambda!42459)) (list!3780 (c!185681 (filter!277 objs!8 lambda!42459))))))

(declare-fun bs!258588 () Bool)

(assert (= bs!258588 d!308736))

(declare-fun m!1248423 () Bool)

(assert (=> bs!258588 m!1248423))

(assert (=> b!1094734 d!308736))

(declare-fun bs!258589 () Bool)

(declare-fun b!1095081 () Bool)

(assert (= bs!258589 (and b!1095081 b!1094737)))

(declare-fun lambda!42568 () Int)

(assert (=> bs!258589 (not (= lambda!42568 lambda!42459))))

(assert (=> bs!258589 (not (= lambda!42568 lambda!42460))))

(declare-fun bs!258590 () Bool)

(assert (= bs!258590 (and b!1095081 b!1095045)))

(declare-fun lt!368989 () tuple2!11726)

(assert (=> bs!258590 (= (= (_1!6689 lt!368989) (_1!6689 lt!368940)) (= lambda!42568 lambda!42563))))

(assert (=> bs!258590 (not (= lambda!42568 lambda!42566))))

(declare-fun bs!258591 () Bool)

(assert (= bs!258591 (and b!1095081 start!93782)))

(assert (=> bs!258591 (not (= lambda!42568 lambda!42457))))

(assert (=> bs!258589 (= (= (_1!6689 lt!368989) (_1!6689 lt!368619)) (= lambda!42568 lambda!42458))))

(assert (=> bs!258590 (not (= lambda!42568 lambda!42565))))

(assert (=> bs!258590 (not (= lambda!42568 lambda!42564))))

(declare-fun bs!258592 () Bool)

(assert (= bs!258592 (and b!1095081 d!308628)))

(assert (=> bs!258592 (not (= lambda!42568 lambda!42567))))

(declare-fun b!1095085 () Bool)

(declare-fun e!693258 () Bool)

(assert (=> b!1095085 (= e!693258 true)))

(declare-fun b!1095084 () Bool)

(declare-fun e!693257 () Bool)

(assert (=> b!1095084 (= e!693257 e!693258)))

(assert (=> b!1095081 e!693257))

(assert (= b!1095084 b!1095085))

(assert (= b!1095081 b!1095084))

(declare-fun lambda!42569 () Int)

(assert (=> bs!258589 (= (= (_1!6689 lt!368989) (_1!6689 lt!368619)) (= lambda!42569 lambda!42459))))

(assert (=> bs!258589 (not (= lambda!42569 lambda!42460))))

(assert (=> bs!258590 (not (= lambda!42569 lambda!42563))))

(assert (=> bs!258590 (not (= lambda!42569 lambda!42566))))

(assert (=> bs!258591 (not (= lambda!42569 lambda!42457))))

(assert (=> bs!258589 (not (= lambda!42569 lambda!42458))))

(assert (=> bs!258590 (not (= lambda!42569 lambda!42565))))

(assert (=> b!1095081 (not (= lambda!42569 lambda!42568))))

(assert (=> bs!258590 (= (= (_1!6689 lt!368989) (_1!6689 lt!368940)) (= lambda!42569 lambda!42564))))

(assert (=> bs!258592 (not (= lambda!42569 lambda!42567))))

(declare-fun b!1095087 () Bool)

(declare-fun e!693260 () Bool)

(assert (=> b!1095087 (= e!693260 true)))

(declare-fun b!1095086 () Bool)

(declare-fun e!693259 () Bool)

(assert (=> b!1095086 (= e!693259 e!693260)))

(assert (=> b!1095081 e!693259))

(assert (= b!1095086 b!1095087))

(assert (= b!1095081 b!1095086))

(declare-fun lambda!42570 () Int)

(assert (=> bs!258589 (not (= lambda!42570 lambda!42459))))

(assert (=> bs!258589 (= (= (_1!6689 lt!368989) (_1!6689 lt!368619)) (= lambda!42570 lambda!42460))))

(assert (=> bs!258590 (not (= lambda!42570 lambda!42563))))

(assert (=> bs!258590 (not (= lambda!42570 lambda!42566))))

(assert (=> bs!258591 (not (= lambda!42570 lambda!42457))))

(assert (=> bs!258589 (not (= lambda!42570 lambda!42458))))

(assert (=> bs!258590 (= (= (_1!6689 lt!368989) (_1!6689 lt!368940)) (= lambda!42570 lambda!42565))))

(assert (=> b!1095081 (not (= lambda!42570 lambda!42568))))

(assert (=> bs!258590 (not (= lambda!42570 lambda!42564))))

(assert (=> bs!258592 (not (= lambda!42570 lambda!42567))))

(assert (=> b!1095081 (not (= lambda!42570 lambda!42569))))

(declare-fun b!1095089 () Bool)

(declare-fun e!693262 () Bool)

(assert (=> b!1095089 (= e!693262 true)))

(declare-fun b!1095088 () Bool)

(declare-fun e!693261 () Bool)

(assert (=> b!1095088 (= e!693261 e!693262)))

(assert (=> b!1095081 e!693261))

(assert (= b!1095088 b!1095089))

(assert (= b!1095081 b!1095088))

(declare-fun lambda!42571 () Int)

(assert (=> bs!258589 (not (= lambda!42571 lambda!42460))))

(assert (=> bs!258590 (not (= lambda!42571 lambda!42563))))

(assert (=> bs!258590 (= lambda!42571 lambda!42566)))

(assert (=> bs!258591 (= lambda!42571 lambda!42457)))

(assert (=> bs!258589 (not (= lambda!42571 lambda!42458))))

(assert (=> bs!258590 (not (= lambda!42571 lambda!42565))))

(assert (=> b!1095081 (not (= lambda!42571 lambda!42568))))

(assert (=> bs!258590 (not (= lambda!42571 lambda!42564))))

(assert (=> bs!258592 (= lambda!42571 lambda!42567)))

(assert (=> b!1095081 (not (= lambda!42571 lambda!42569))))

(assert (=> bs!258589 (not (= lambda!42571 lambda!42459))))

(assert (=> b!1095081 (not (= lambda!42571 lambda!42570))))

(declare-fun bs!258593 () Bool)

(declare-fun d!308738 () Bool)

(assert (= bs!258593 (and d!308738 b!1094737)))

(declare-fun lambda!42572 () Int)

(assert (=> bs!258593 (not (= lambda!42572 lambda!42460))))

(declare-fun bs!258594 () Bool)

(assert (= bs!258594 (and d!308738 b!1095045)))

(assert (=> bs!258594 (not (= lambda!42572 lambda!42563))))

(assert (=> bs!258594 (= lambda!42572 lambda!42566)))

(declare-fun bs!258595 () Bool)

(assert (= bs!258595 (and d!308738 start!93782)))

(assert (=> bs!258595 (= lambda!42572 lambda!42457)))

(assert (=> bs!258593 (not (= lambda!42572 lambda!42458))))

(assert (=> bs!258594 (not (= lambda!42572 lambda!42565))))

(declare-fun bs!258596 () Bool)

(assert (= bs!258596 (and d!308738 b!1095081)))

(assert (=> bs!258596 (not (= lambda!42572 lambda!42568))))

(assert (=> bs!258594 (not (= lambda!42572 lambda!42564))))

(declare-fun bs!258597 () Bool)

(assert (= bs!258597 (and d!308738 d!308628)))

(assert (=> bs!258597 (= lambda!42572 lambda!42567)))

(assert (=> bs!258596 (not (= lambda!42572 lambda!42569))))

(assert (=> bs!258596 (= lambda!42572 lambda!42571)))

(assert (=> bs!258593 (not (= lambda!42572 lambda!42459))))

(assert (=> bs!258596 (not (= lambda!42572 lambda!42570))))

(declare-fun b!1095072 () Bool)

(assert (=> b!1095072 true))

(declare-fun lt!368999 () BalanceConc!6472)

(declare-fun lt!369008 () Unit!16034)

(assert (=> b!1095072 (= lt!369008 (forallContained!502 (list!3778 lt!368999) lambda!42568 lt!368989))))

(declare-fun e!693255 () Unit!16034)

(declare-fun err!2351 () Unit!16034)

(assert (=> b!1095072 (= e!693255 err!2351)))

(declare-fun b!1095073 () Bool)

(declare-fun e!693252 () Bool)

(declare-fun lt!369005 () List!10546)

(assert (=> b!1095073 (= e!693252 (< (size!8149 (filter!276 lt!369005 lambda!42570)) (size!8149 lt!369005)))))

(declare-fun b!1095074 () Bool)

(declare-fun e!693250 () BalanceConc!6472)

(assert (=> b!1095074 (= e!693250 lt!368625)))

(declare-fun b!1095075 () Bool)

(assert (=> b!1095075 true))

(declare-fun lt!369004 () BalanceConc!6472)

(declare-fun lt!368997 () Unit!16034)

(assert (=> b!1095075 (= lt!368997 (forallContained!502 (list!3778 lt!369004) lambda!42570 lt!368989))))

(declare-fun e!693256 () Unit!16034)

(declare-fun err!2353 () Unit!16034)

(assert (=> b!1095075 (= e!693256 err!2353)))

(declare-fun b!1095076 () Bool)

(declare-fun e!693254 () Unit!16034)

(declare-fun Unit!16053 () Unit!16034)

(assert (=> b!1095076 (= e!693254 Unit!16053)))

(declare-fun b!1095077 () Bool)

(declare-fun Unit!16054 () Unit!16034)

(assert (=> b!1095077 (= e!693256 Unit!16054)))

(declare-fun lt!369001 () BalanceConc!6472)

(assert (=> d!308738 (forall!2375 lt!369001 lambda!42572)))

(assert (=> d!308738 (= lt!369001 e!693250)))

(declare-fun c!185754 () Bool)

(assert (=> d!308738 (= c!185754 (<= (size!8150 lt!368625) 1))))

(assert (=> d!308738 (= (sortObjectsByID!0 lt!368625) lt!369001)))

(declare-fun b!1095078 () Bool)

(declare-fun e!693253 () Unit!16034)

(declare-fun Unit!16055 () Unit!16034)

(assert (=> b!1095078 (= e!693253 Unit!16055)))

(declare-fun b!1095079 () Bool)

(declare-fun Unit!16056 () Unit!16034)

(assert (=> b!1095079 (= e!693255 Unit!16056)))

(declare-fun b!1095080 () Bool)

(assert (=> b!1095080 true))

(declare-fun lt!369003 () Unit!16034)

(assert (=> b!1095080 (= lt!369003 (forallContained!502 (list!3778 lt!368625) lambda!42570 lt!368989))))

(declare-fun err!2350 () Unit!16034)

(assert (=> b!1095080 (= e!693254 err!2350)))

(declare-fun lt!368993 () BalanceConc!6472)

(assert (=> b!1095081 (= e!693250 (++!2857 (++!2857 (sortObjectsByID!0 lt!368999) lt!368993) (sortObjectsByID!0 lt!369004)))))

(assert (=> b!1095081 (= lt!368989 (apply!2077 lt!368625 (ite (>= (size!8150 lt!368625) 0) (div (size!8150 lt!368625) 2) (- (div (- (size!8150 lt!368625)) 2)))))))

(assert (=> b!1095081 (= lt!368999 (filter!277 lt!368625 lambda!42568))))

(assert (=> b!1095081 (= lt!368993 (filter!277 lt!368625 lambda!42569))))

(assert (=> b!1095081 (= lt!369004 (filter!277 lt!368625 lambda!42570))))

(declare-fun c!185755 () Bool)

(assert (=> b!1095081 (= c!185755 (contains!1798 lt!368999 lt!368989))))

(declare-fun lt!369020 () Unit!16034)

(assert (=> b!1095081 (= lt!369020 e!693255)))

(declare-fun c!185757 () Bool)

(assert (=> b!1095081 (= c!185757 (forall!2375 lt!368625 lambda!42568))))

(declare-fun lt!369022 () Unit!16034)

(assert (=> b!1095081 (= lt!369022 e!693253)))

(declare-fun lt!369018 () List!10546)

(assert (=> b!1095081 (= lt!369018 (list!3778 lt!368625))))

(declare-fun lt!369023 () Unit!16034)

(assert (=> b!1095081 (= lt!369023 (lemmaNotForallFilterShorter!43 lt!369018 lambda!42568))))

(declare-fun res!486305 () Bool)

(assert (=> b!1095081 (= res!486305 (isEmpty!6672 lt!369018))))

(declare-fun e!693251 () Bool)

(assert (=> b!1095081 (=> res!486305 e!693251)))

(assert (=> b!1095081 e!693251))

(declare-fun lt!369013 () Unit!16034)

(assert (=> b!1095081 (= lt!369013 lt!369023)))

(declare-fun c!185758 () Bool)

(assert (=> b!1095081 (= c!185758 (contains!1798 lt!369004 lt!368989))))

(declare-fun lt!369024 () Unit!16034)

(assert (=> b!1095081 (= lt!369024 e!693256)))

(declare-fun c!185756 () Bool)

(assert (=> b!1095081 (= c!185756 (forall!2375 lt!368625 lambda!42570))))

(declare-fun lt!369009 () Unit!16034)

(assert (=> b!1095081 (= lt!369009 e!693254)))

(assert (=> b!1095081 (= lt!369005 (list!3778 lt!368625))))

(declare-fun lt!369021 () Unit!16034)

(assert (=> b!1095081 (= lt!369021 (lemmaNotForallFilterShorter!43 lt!369005 lambda!42570))))

(declare-fun res!486306 () Bool)

(assert (=> b!1095081 (= res!486306 (isEmpty!6672 lt!369005))))

(assert (=> b!1095081 (=> res!486306 e!693252)))

(assert (=> b!1095081 e!693252))

(declare-fun lt!368991 () Unit!16034)

(assert (=> b!1095081 (= lt!368991 lt!369021)))

(declare-fun lt!369012 () Unit!16034)

(assert (=> b!1095081 (= lt!369012 (filterSubseq!37 (list!3778 lt!368625) lambda!42568))))

(declare-fun lt!368992 () Unit!16034)

(assert (=> b!1095081 (= lt!368992 (filterSubseq!37 (list!3778 lt!368625) lambda!42569))))

(declare-fun lt!368996 () Unit!16034)

(assert (=> b!1095081 (= lt!368996 (filterSubseq!37 (list!3778 lt!368625) lambda!42570))))

(declare-fun lt!369017 () List!10546)

(assert (=> b!1095081 (= lt!369017 (list!3778 (filter!277 lt!368625 lambda!42568)))))

(declare-fun lt!368990 () List!10546)

(assert (=> b!1095081 (= lt!368990 (list!3778 lt!368625))))

(declare-fun lt!369006 () Unit!16034)

(assert (=> b!1095081 (= lt!369006 (lemmaForallSubseq!45 lt!369017 lt!368990 lambda!42571))))

(assert (=> b!1095081 (forall!2374 lt!369017 lambda!42571)))

(declare-fun lt!369000 () Unit!16034)

(assert (=> b!1095081 (= lt!369000 lt!369006)))

(declare-fun lt!369014 () List!10546)

(assert (=> b!1095081 (= lt!369014 (list!3778 (filter!277 lt!368625 lambda!42569)))))

(declare-fun lt!369010 () List!10546)

(assert (=> b!1095081 (= lt!369010 (list!3778 lt!368625))))

(declare-fun lt!368998 () Unit!16034)

(assert (=> b!1095081 (= lt!368998 (lemmaForallSubseq!45 lt!369014 lt!369010 lambda!42571))))

(assert (=> b!1095081 (forall!2374 lt!369014 lambda!42571)))

(declare-fun lt!369007 () Unit!16034)

(assert (=> b!1095081 (= lt!369007 lt!368998)))

(declare-fun lt!369015 () List!10546)

(assert (=> b!1095081 (= lt!369015 (list!3778 (filter!277 lt!368625 lambda!42570)))))

(declare-fun lt!369016 () List!10546)

(assert (=> b!1095081 (= lt!369016 (list!3778 lt!368625))))

(declare-fun lt!369002 () Unit!16034)

(assert (=> b!1095081 (= lt!369002 (lemmaForallSubseq!45 lt!369015 lt!369016 lambda!42571))))

(assert (=> b!1095081 (forall!2374 lt!369015 lambda!42571)))

(declare-fun lt!368995 () Unit!16034)

(assert (=> b!1095081 (= lt!368995 lt!369002)))

(declare-fun lt!369011 () Unit!16034)

(assert (=> b!1095081 (= lt!369011 (lemmaConcatPreservesForall!88 (list!3778 (sortObjectsByID!0 lt!368999)) (list!3778 lt!368993) lambda!42571))))

(declare-fun lt!368994 () Unit!16034)

(assert (=> b!1095081 (= lt!368994 (lemmaConcatPreservesForall!88 (++!2855 (list!3778 (sortObjectsByID!0 lt!368999)) (list!3778 lt!368993)) (list!3778 (sortObjectsByID!0 lt!369004)) lambda!42571))))

(declare-fun b!1095082 () Bool)

(assert (=> b!1095082 (= e!693251 (< (size!8149 (filter!276 lt!369018 lambda!42568)) (size!8149 lt!369018)))))

(declare-fun b!1095083 () Bool)

(assert (=> b!1095083 true))

(declare-fun lt!369019 () Unit!16034)

(assert (=> b!1095083 (= lt!369019 (forallContained!502 (list!3778 lt!368625) lambda!42568 lt!368989))))

(declare-fun err!2352 () Unit!16034)

(assert (=> b!1095083 (= e!693253 err!2352)))

(assert (= (and d!308738 c!185754) b!1095074))

(assert (= (and d!308738 (not c!185754)) b!1095081))

(assert (= (and b!1095081 c!185755) b!1095072))

(assert (= (and b!1095081 (not c!185755)) b!1095079))

(assert (= (and b!1095081 c!185757) b!1095083))

(assert (= (and b!1095081 (not c!185757)) b!1095078))

(assert (= (and b!1095081 (not res!486305)) b!1095082))

(assert (= (and b!1095081 c!185758) b!1095075))

(assert (= (and b!1095081 (not c!185758)) b!1095077))

(assert (= (and b!1095081 c!185756) b!1095080))

(assert (= (and b!1095081 (not c!185756)) b!1095076))

(assert (= (and b!1095081 (not res!486306)) b!1095073))

(declare-fun m!1248425 () Bool)

(assert (=> b!1095081 m!1248425))

(declare-fun m!1248427 () Bool)

(assert (=> b!1095081 m!1248427))

(declare-fun m!1248429 () Bool)

(assert (=> b!1095081 m!1248429))

(declare-fun m!1248431 () Bool)

(assert (=> b!1095081 m!1248431))

(declare-fun m!1248433 () Bool)

(assert (=> b!1095081 m!1248433))

(assert (=> b!1095081 m!1248425))

(declare-fun m!1248435 () Bool)

(assert (=> b!1095081 m!1248435))

(assert (=> b!1095081 m!1248433))

(declare-fun m!1248437 () Bool)

(assert (=> b!1095081 m!1248437))

(declare-fun m!1248439 () Bool)

(assert (=> b!1095081 m!1248439))

(declare-fun m!1248441 () Bool)

(assert (=> b!1095081 m!1248441))

(declare-fun m!1248443 () Bool)

(assert (=> b!1095081 m!1248443))

(declare-fun m!1248445 () Bool)

(assert (=> b!1095081 m!1248445))

(assert (=> b!1095081 m!1248431))

(declare-fun m!1248447 () Bool)

(assert (=> b!1095081 m!1248447))

(declare-fun m!1248449 () Bool)

(assert (=> b!1095081 m!1248449))

(assert (=> b!1095081 m!1247743))

(declare-fun m!1248451 () Bool)

(assert (=> b!1095081 m!1248451))

(declare-fun m!1248453 () Bool)

(assert (=> b!1095081 m!1248453))

(assert (=> b!1095081 m!1247645))

(assert (=> b!1095081 m!1248441))

(declare-fun m!1248455 () Bool)

(assert (=> b!1095081 m!1248455))

(assert (=> b!1095081 m!1248441))

(declare-fun m!1248457 () Bool)

(assert (=> b!1095081 m!1248457))

(declare-fun m!1248459 () Bool)

(assert (=> b!1095081 m!1248459))

(assert (=> b!1095081 m!1248427))

(assert (=> b!1095081 m!1248425))

(assert (=> b!1095081 m!1248427))

(declare-fun m!1248461 () Bool)

(assert (=> b!1095081 m!1248461))

(assert (=> b!1095081 m!1248433))

(assert (=> b!1095081 m!1248455))

(assert (=> b!1095081 m!1247645))

(declare-fun m!1248463 () Bool)

(assert (=> b!1095081 m!1248463))

(declare-fun m!1248465 () Bool)

(assert (=> b!1095081 m!1248465))

(declare-fun m!1248467 () Bool)

(assert (=> b!1095081 m!1248467))

(declare-fun m!1248469 () Bool)

(assert (=> b!1095081 m!1248469))

(assert (=> b!1095081 m!1248469))

(declare-fun m!1248471 () Bool)

(assert (=> b!1095081 m!1248471))

(declare-fun m!1248473 () Bool)

(assert (=> b!1095081 m!1248473))

(assert (=> b!1095081 m!1247645))

(declare-fun m!1248475 () Bool)

(assert (=> b!1095081 m!1248475))

(declare-fun m!1248477 () Bool)

(assert (=> b!1095081 m!1248477))

(assert (=> b!1095081 m!1248429))

(assert (=> b!1095081 m!1248443))

(declare-fun m!1248479 () Bool)

(assert (=> b!1095081 m!1248479))

(assert (=> b!1095081 m!1248431))

(declare-fun m!1248481 () Bool)

(assert (=> b!1095081 m!1248481))

(assert (=> b!1095081 m!1247645))

(declare-fun m!1248483 () Bool)

(assert (=> b!1095081 m!1248483))

(declare-fun m!1248485 () Bool)

(assert (=> b!1095081 m!1248485))

(declare-fun m!1248487 () Bool)

(assert (=> b!1095081 m!1248487))

(assert (=> b!1095081 m!1248467))

(declare-fun m!1248489 () Bool)

(assert (=> b!1095081 m!1248489))

(declare-fun m!1248491 () Bool)

(assert (=> b!1095081 m!1248491))

(assert (=> b!1095081 m!1248467))

(assert (=> b!1095081 m!1248469))

(declare-fun m!1248493 () Bool)

(assert (=> b!1095082 m!1248493))

(assert (=> b!1095082 m!1248493))

(declare-fun m!1248495 () Bool)

(assert (=> b!1095082 m!1248495))

(declare-fun m!1248497 () Bool)

(assert (=> b!1095082 m!1248497))

(assert (=> b!1095083 m!1247645))

(assert (=> b!1095083 m!1247645))

(declare-fun m!1248499 () Bool)

(assert (=> b!1095083 m!1248499))

(declare-fun m!1248501 () Bool)

(assert (=> b!1095072 m!1248501))

(assert (=> b!1095072 m!1248501))

(declare-fun m!1248503 () Bool)

(assert (=> b!1095072 m!1248503))

(assert (=> b!1095080 m!1247645))

(assert (=> b!1095080 m!1247645))

(declare-fun m!1248505 () Bool)

(assert (=> b!1095080 m!1248505))

(declare-fun m!1248507 () Bool)

(assert (=> b!1095073 m!1248507))

(assert (=> b!1095073 m!1248507))

(declare-fun m!1248509 () Bool)

(assert (=> b!1095073 m!1248509))

(declare-fun m!1248511 () Bool)

(assert (=> b!1095073 m!1248511))

(declare-fun m!1248513 () Bool)

(assert (=> b!1095075 m!1248513))

(assert (=> b!1095075 m!1248513))

(declare-fun m!1248515 () Bool)

(assert (=> b!1095075 m!1248515))

(declare-fun m!1248517 () Bool)

(assert (=> d!308738 m!1248517))

(assert (=> d!308738 m!1247743))

(assert (=> b!1094734 d!308738))

(declare-fun d!308740 () Bool)

(assert (=> d!308740 (= (list!3778 (sortObjectsByID!0 lt!368625)) (list!3780 (c!185681 (sortObjectsByID!0 lt!368625))))))

(declare-fun bs!258598 () Bool)

(assert (= bs!258598 d!308740))

(declare-fun m!1248519 () Bool)

(assert (=> bs!258598 m!1248519))

(assert (=> b!1094734 d!308740))

(assert (=> b!1094734 d!308612))

(declare-fun d!308742 () Bool)

(declare-fun lt!369025 () Bool)

(assert (=> d!308742 (= lt!369025 (contains!1801 (list!3778 lt!368606) lt!368619))))

(assert (=> d!308742 (= lt!369025 (contains!1802 (c!185681 lt!368606) lt!368619))))

(assert (=> d!308742 (= (contains!1798 lt!368606 lt!368619) lt!369025)))

(declare-fun bs!258599 () Bool)

(assert (= bs!258599 d!308742))

(assert (=> bs!258599 m!1247675))

(assert (=> bs!258599 m!1247675))

(declare-fun m!1248521 () Bool)

(assert (=> bs!258599 m!1248521))

(declare-fun m!1248523 () Bool)

(assert (=> bs!258599 m!1248523))

(assert (=> b!1094744 d!308742))

(declare-fun d!308744 () Bool)

(assert (=> d!308744 (dynLambda!4609 lambda!42460 lt!368619)))

(declare-fun lt!369026 () Unit!16034)

(assert (=> d!308744 (= lt!369026 (choose!7056 (list!3778 lt!368606) lambda!42460 lt!368619))))

(declare-fun e!693263 () Bool)

(assert (=> d!308744 e!693263))

(declare-fun res!486307 () Bool)

(assert (=> d!308744 (=> (not res!486307) (not e!693263))))

(assert (=> d!308744 (= res!486307 (forall!2374 (list!3778 lt!368606) lambda!42460))))

(assert (=> d!308744 (= (forallContained!502 (list!3778 lt!368606) lambda!42460 lt!368619) lt!369026)))

(declare-fun b!1095090 () Bool)

(assert (=> b!1095090 (= e!693263 (contains!1801 (list!3778 lt!368606) lt!368619))))

(assert (= (and d!308744 res!486307) b!1095090))

(declare-fun b_lambda!31241 () Bool)

(assert (=> (not b_lambda!31241) (not d!308744)))

(assert (=> d!308744 m!1247945))

(assert (=> d!308744 m!1247675))

(declare-fun m!1248525 () Bool)

(assert (=> d!308744 m!1248525))

(assert (=> d!308744 m!1247675))

(declare-fun m!1248527 () Bool)

(assert (=> d!308744 m!1248527))

(assert (=> b!1095090 m!1247675))

(assert (=> b!1095090 m!1248521))

(assert (=> b!1094733 d!308744))

(declare-fun d!308746 () Bool)

(assert (=> d!308746 (= (list!3778 lt!368606) (list!3780 (c!185681 lt!368606)))))

(declare-fun bs!258600 () Bool)

(assert (= bs!258600 d!308746))

(declare-fun m!1248529 () Bool)

(assert (=> bs!258600 m!1248529))

(assert (=> b!1094733 d!308746))

(declare-fun d!308748 () Bool)

(declare-fun lt!369027 () Int)

(assert (=> d!308748 (= lt!369027 (size!8149 (list!3778 objs!8)))))

(assert (=> d!308748 (= lt!369027 (size!8152 (c!185681 objs!8)))))

(assert (=> d!308748 (= (size!8150 objs!8) lt!369027)))

(declare-fun bs!258601 () Bool)

(assert (= bs!258601 d!308748))

(assert (=> bs!258601 m!1247649))

(assert (=> bs!258601 m!1247649))

(declare-fun m!1248531 () Bool)

(assert (=> bs!258601 m!1248531))

(declare-fun m!1248533 () Bool)

(assert (=> bs!258601 m!1248533))

(assert (=> b!1094743 d!308748))

(declare-fun d!308750 () Bool)

(declare-fun lt!369028 () Int)

(assert (=> d!308750 (>= lt!369028 0)))

(declare-fun e!693264 () Int)

(assert (=> d!308750 (= lt!369028 e!693264)))

(declare-fun c!185759 () Bool)

(assert (=> d!308750 (= c!185759 ((_ is Nil!10530) (filter!276 lt!368623 lambda!42460)))))

(assert (=> d!308750 (= (size!8149 (filter!276 lt!368623 lambda!42460)) lt!369028)))

(declare-fun b!1095091 () Bool)

(assert (=> b!1095091 (= e!693264 0)))

(declare-fun b!1095092 () Bool)

(assert (=> b!1095092 (= e!693264 (+ 1 (size!8149 (t!103088 (filter!276 lt!368623 lambda!42460)))))))

(assert (= (and d!308750 c!185759) b!1095091))

(assert (= (and d!308750 (not c!185759)) b!1095092))

(declare-fun m!1248535 () Bool)

(assert (=> b!1095092 m!1248535))

(assert (=> b!1094732 d!308750))

(declare-fun d!308752 () Bool)

(declare-fun e!693265 () Bool)

(assert (=> d!308752 e!693265))

(declare-fun res!486308 () Bool)

(assert (=> d!308752 (=> (not res!486308) (not e!693265))))

(declare-fun lt!369029 () List!10546)

(assert (=> d!308752 (= res!486308 (<= (size!8149 lt!369029) (size!8149 lt!368623)))))

(declare-fun e!693267 () List!10546)

(assert (=> d!308752 (= lt!369029 e!693267)))

(declare-fun c!185761 () Bool)

(assert (=> d!308752 (= c!185761 ((_ is Nil!10530) lt!368623))))

(assert (=> d!308752 (= (filter!276 lt!368623 lambda!42460) lt!369029)))

(declare-fun bm!80315 () Bool)

(declare-fun call!80320 () List!10546)

(assert (=> bm!80315 (= call!80320 (filter!276 (t!103088 lt!368623) lambda!42460))))

(declare-fun b!1095093 () Bool)

(declare-fun e!693266 () List!10546)

(assert (=> b!1095093 (= e!693266 call!80320)))

(declare-fun b!1095094 () Bool)

(assert (=> b!1095094 (= e!693265 (forall!2374 lt!369029 lambda!42460))))

(declare-fun b!1095095 () Bool)

(assert (=> b!1095095 (= e!693266 (Cons!10530 (h!15931 lt!368623) call!80320))))

(declare-fun b!1095096 () Bool)

(assert (=> b!1095096 (= e!693267 e!693266)))

(declare-fun c!185760 () Bool)

(assert (=> b!1095096 (= c!185760 (dynLambda!4609 lambda!42460 (h!15931 lt!368623)))))

(declare-fun b!1095097 () Bool)

(declare-fun res!486309 () Bool)

(assert (=> b!1095097 (=> (not res!486309) (not e!693265))))

(assert (=> b!1095097 (= res!486309 (= ((_ map implies) (content!1520 lt!369029) (content!1520 lt!368623)) ((as const (InoxSet tuple2!11726)) true)))))

(declare-fun b!1095098 () Bool)

(assert (=> b!1095098 (= e!693267 Nil!10530)))

(assert (= (and d!308752 c!185761) b!1095098))

(assert (= (and d!308752 (not c!185761)) b!1095096))

(assert (= (and b!1095096 c!185760) b!1095095))

(assert (= (and b!1095096 (not c!185760)) b!1095093))

(assert (= (or b!1095095 b!1095093) bm!80315))

(assert (= (and d!308752 res!486308) b!1095097))

(assert (= (and b!1095097 res!486309) b!1095094))

(declare-fun b_lambda!31243 () Bool)

(assert (=> (not b_lambda!31243) (not b!1095096)))

(declare-fun m!1248537 () Bool)

(assert (=> d!308752 m!1248537))

(assert (=> d!308752 m!1247685))

(declare-fun m!1248539 () Bool)

(assert (=> b!1095096 m!1248539))

(declare-fun m!1248541 () Bool)

(assert (=> bm!80315 m!1248541))

(declare-fun m!1248543 () Bool)

(assert (=> b!1095097 m!1248543))

(assert (=> b!1095097 m!1247867))

(declare-fun m!1248545 () Bool)

(assert (=> b!1095094 m!1248545))

(assert (=> b!1094732 d!308752))

(assert (=> b!1094732 d!308588))

(declare-fun b!1095107 () Bool)

(declare-fun e!693272 () Bool)

(assert (=> b!1095107 (= e!693272 true)))

(declare-fun b!1095109 () Bool)

(declare-fun e!693273 () Bool)

(assert (=> b!1095109 (= e!693273 true)))

(declare-fun b!1095108 () Bool)

(assert (=> b!1095108 (= e!693272 e!693273)))

(assert (=> b!1094757 e!693272))

(assert (= (and b!1094757 ((_ is Node!3228) (c!185680 (tokens!1359 (_2!6689 lt!368619))))) b!1095107))

(assert (= b!1095108 b!1095109))

(assert (= (and b!1094757 ((_ is Leaf!5134) (c!185680 (tokens!1359 (_2!6689 lt!368619))))) b!1095108))

(declare-fun b!1095110 () Bool)

(declare-fun e!693274 () Bool)

(assert (=> b!1095110 (= e!693274 true)))

(declare-fun b!1095112 () Bool)

(declare-fun e!693275 () Bool)

(assert (=> b!1095112 (= e!693275 true)))

(declare-fun b!1095111 () Bool)

(assert (=> b!1095111 (= e!693274 e!693275)))

(assert (=> b!1094759 e!693274))

(assert (= (and b!1094759 ((_ is Node!3228) (c!185680 (tokens!1359 (_2!6689 lt!368619))))) b!1095110))

(assert (= b!1095111 b!1095112))

(assert (= (and b!1094759 ((_ is Leaf!5134) (c!185680 (tokens!1359 (_2!6689 lt!368619))))) b!1095111))

(declare-fun tp!326634 () Bool)

(declare-fun tp!326636 () Bool)

(declare-fun e!693280 () Bool)

(declare-fun b!1095121 () Bool)

(assert (=> b!1095121 (= e!693280 (and (inv!13489 (left!9060 (c!185681 objs!8))) tp!326636 (inv!13489 (right!9390 (c!185681 objs!8))) tp!326634))))

(declare-fun b!1095123 () Bool)

(declare-fun e!693281 () Bool)

(declare-fun tp!326635 () Bool)

(assert (=> b!1095123 (= e!693281 tp!326635)))

(declare-fun b!1095122 () Bool)

(declare-fun inv!13495 (IArray!6463) Bool)

(assert (=> b!1095122 (= e!693280 (and (inv!13495 (xs!5922 (c!185681 objs!8))) e!693281))))

(assert (=> b!1094739 (= tp!326618 (and (inv!13489 (c!185681 objs!8)) e!693280))))

(assert (= (and b!1094739 ((_ is Node!3229) (c!185681 objs!8))) b!1095121))

(assert (= b!1095122 b!1095123))

(assert (= (and b!1094739 ((_ is Leaf!5135) (c!185681 objs!8))) b!1095122))

(declare-fun m!1248547 () Bool)

(assert (=> b!1095121 m!1248547))

(declare-fun m!1248549 () Bool)

(assert (=> b!1095121 m!1248549))

(declare-fun m!1248551 () Bool)

(assert (=> b!1095122 m!1248551))

(assert (=> b!1094739 m!1247665))

(declare-fun b!1095124 () Bool)

(declare-fun e!693282 () Bool)

(assert (=> b!1095124 (= e!693282 true)))

(declare-fun b!1095126 () Bool)

(declare-fun e!693283 () Bool)

(assert (=> b!1095126 (= e!693283 true)))

(declare-fun b!1095125 () Bool)

(assert (=> b!1095125 (= e!693282 e!693283)))

(assert (=> b!1094755 e!693282))

(assert (= (and b!1094755 ((_ is Node!3228) (c!185680 (tokens!1359 (_2!6689 lt!368619))))) b!1095124))

(assert (= b!1095125 b!1095126))

(assert (= (and b!1094755 ((_ is Leaf!5134) (c!185680 (tokens!1359 (_2!6689 lt!368619))))) b!1095125))

(declare-fun b!1095137 () Bool)

(declare-fun e!693292 () Bool)

(assert (=> b!1095137 (= e!693292 true)))

(declare-fun b!1095136 () Bool)

(declare-fun e!693291 () Bool)

(assert (=> b!1095136 (= e!693291 e!693292)))

(declare-fun b!1095135 () Bool)

(declare-fun e!693290 () Bool)

(assert (=> b!1095135 (= e!693290 e!693291)))

(assert (=> b!1094758 e!693290))

(assert (= b!1095136 b!1095137))

(assert (= b!1095135 b!1095136))

(assert (= (and b!1094758 ((_ is Cons!10529) (rules!9087 (_2!6689 lt!368619)))) b!1095135))

(declare-fun order!6353 () Int)

(declare-fun order!6351 () Int)

(declare-fun dynLambda!4613 (Int Int) Int)

(declare-fun dynLambda!4614 (Int Int) Int)

(assert (=> b!1095137 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368619)))))) (dynLambda!4614 order!6353 lambda!42460))))

(declare-fun order!6355 () Int)

(declare-fun dynLambda!4615 (Int Int) Int)

(assert (=> b!1095137 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368619)))))) (dynLambda!4614 order!6353 lambda!42460))))

(declare-fun b!1095140 () Bool)

(declare-fun e!693295 () Bool)

(assert (=> b!1095140 (= e!693295 true)))

(declare-fun b!1095139 () Bool)

(declare-fun e!693294 () Bool)

(assert (=> b!1095139 (= e!693294 e!693295)))

(declare-fun b!1095138 () Bool)

(declare-fun e!693293 () Bool)

(assert (=> b!1095138 (= e!693293 e!693294)))

(assert (=> b!1094754 e!693293))

(assert (= b!1095139 b!1095140))

(assert (= b!1095138 b!1095139))

(assert (= (and b!1094754 ((_ is Cons!10529) (rules!9087 (_2!6689 lt!368619)))) b!1095138))

(assert (=> b!1095140 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368619)))))) (dynLambda!4614 order!6353 lambda!42458))))

(assert (=> b!1095140 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368619)))))) (dynLambda!4614 order!6353 lambda!42458))))

(declare-fun b!1095143 () Bool)

(declare-fun e!693298 () Bool)

(assert (=> b!1095143 (= e!693298 true)))

(declare-fun b!1095142 () Bool)

(declare-fun e!693297 () Bool)

(assert (=> b!1095142 (= e!693297 e!693298)))

(declare-fun b!1095141 () Bool)

(declare-fun e!693296 () Bool)

(assert (=> b!1095141 (= e!693296 e!693297)))

(assert (=> b!1094756 e!693296))

(assert (= b!1095142 b!1095143))

(assert (= b!1095141 b!1095142))

(assert (= (and b!1094756 ((_ is Cons!10529) (rules!9087 (_2!6689 lt!368619)))) b!1095141))

(assert (=> b!1095143 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368619)))))) (dynLambda!4614 order!6353 lambda!42459))))

(assert (=> b!1095143 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368619)))))) (dynLambda!4614 order!6353 lambda!42459))))

(declare-fun b_lambda!31245 () Bool)

(assert (= b_lambda!31243 (or b!1094737 b_lambda!31245)))

(declare-fun bs!258602 () Bool)

(declare-fun d!308754 () Bool)

(assert (= bs!258602 (and d!308754 b!1094737)))

(assert (=> bs!258602 (= (dynLambda!4609 lambda!42460 (h!15931 lt!368623)) (> (_1!6689 (h!15931 lt!368623)) (_1!6689 lt!368619)))))

(assert (=> b!1095096 d!308754))

(declare-fun b_lambda!31247 () Bool)

(assert (= b_lambda!31183 (or b!1094737 b_lambda!31247)))

(declare-fun bs!258603 () Bool)

(declare-fun d!308756 () Bool)

(assert (= bs!258603 (and d!308756 b!1094737)))

(assert (=> bs!258603 (= (dynLambda!4609 lambda!42458 (h!15931 lt!368623)) (< (_1!6689 (h!15931 lt!368623)) (_1!6689 lt!368619)))))

(assert (=> b!1094814 d!308756))

(declare-fun b_lambda!31249 () Bool)

(assert (= b_lambda!31187 (or start!93782 b_lambda!31249)))

(declare-fun bs!258604 () Bool)

(declare-fun d!308758 () Bool)

(assert (= bs!258604 (and d!308758 start!93782)))

(declare-fun usesJsonRules!0 (PrintableTokens!316) Bool)

(assert (=> bs!258604 (= (dynLambda!4609 lambda!42457 (h!15931 lt!368610)) (usesJsonRules!0 (_2!6689 (h!15931 lt!368610))))))

(declare-fun m!1248553 () Bool)

(assert (=> bs!258604 m!1248553))

(assert (=> b!1094844 d!308758))

(declare-fun b_lambda!31251 () Bool)

(assert (= b_lambda!31191 (or b!1094737 b_lambda!31251)))

(declare-fun bs!258605 () Bool)

(declare-fun d!308760 () Bool)

(assert (= bs!258605 (and d!308760 b!1094737)))

(assert (=> bs!258605 (= (dynLambda!4609 lambda!42460 lt!368619) (> (_1!6689 lt!368619) (_1!6689 lt!368619)))))

(assert (=> d!308622 d!308760))

(declare-fun b_lambda!31253 () Bool)

(assert (= b_lambda!31235 (or start!93782 b_lambda!31253)))

(declare-fun bs!258606 () Bool)

(declare-fun d!308762 () Bool)

(assert (= bs!258606 (and d!308762 start!93782)))

(assert (=> bs!258606 (= (dynLambda!4609 lambda!42457 (h!15931 lt!368594)) (usesJsonRules!0 (_2!6689 (h!15931 lt!368594))))))

(declare-fun m!1248555 () Bool)

(assert (=> bs!258606 m!1248555))

(assert (=> b!1095054 d!308762))

(declare-fun b_lambda!31255 () Bool)

(assert (= b_lambda!31239 (or start!93782 b_lambda!31255)))

(declare-fun bs!258607 () Bool)

(declare-fun d!308764 () Bool)

(assert (= bs!258607 (and d!308764 start!93782)))

(assert (=> bs!258607 (= (dynLambda!4609 lambda!42457 (h!15931 lt!368613)) (usesJsonRules!0 (_2!6689 (h!15931 lt!368613))))))

(declare-fun m!1248557 () Bool)

(assert (=> bs!258607 m!1248557))

(assert (=> b!1095058 d!308764))

(declare-fun b_lambda!31257 () Bool)

(assert (= b_lambda!31189 (or b!1094737 b_lambda!31257)))

(declare-fun bs!258608 () Bool)

(declare-fun d!308766 () Bool)

(assert (= bs!258608 (and d!308766 b!1094737)))

(assert (=> bs!258608 (= (dynLambda!4609 lambda!42458 lt!368619) (< (_1!6689 lt!368619) (_1!6689 lt!368619)))))

(assert (=> d!308620 d!308766))

(declare-fun b_lambda!31259 () Bool)

(assert (= b_lambda!31237 (or start!93782 b_lambda!31259)))

(declare-fun bs!258609 () Bool)

(declare-fun d!308768 () Bool)

(assert (= bs!258609 (and d!308768 start!93782)))

(assert (=> bs!258609 (= (dynLambda!4609 lambda!42457 (h!15931 lt!368622)) (usesJsonRules!0 (_2!6689 (h!15931 lt!368622))))))

(declare-fun m!1248559 () Bool)

(assert (=> bs!258609 m!1248559))

(assert (=> b!1095056 d!308768))

(declare-fun b_lambda!31261 () Bool)

(assert (= b_lambda!31185 (or b!1094737 b_lambda!31261)))

(assert (=> d!308614 d!308766))

(declare-fun b_lambda!31263 () Bool)

(assert (= b_lambda!31193 (or start!93782 b_lambda!31263)))

(declare-fun bs!258610 () Bool)

(declare-fun d!308770 () Bool)

(assert (= bs!258610 (and d!308770 start!93782)))

(assert (=> bs!258610 (= (dynLambda!4609 lambda!42457 (h!15931 lt!368612)) (usesJsonRules!0 (_2!6689 (h!15931 lt!368612))))))

(declare-fun m!1248561 () Bool)

(assert (=> bs!258610 m!1248561))

(assert (=> b!1094848 d!308770))

(declare-fun b_lambda!31265 () Bool)

(assert (= b_lambda!31241 (or b!1094737 b_lambda!31265)))

(assert (=> d!308744 d!308760))

(check-sat (not b!1095097) (not d!308590) (not b!1094818) (not b_lambda!31251) (not d!308612) (not b!1095092) (not b!1094825) (not d!308578) (not b!1095141) (not d!308724) (not b!1095050) (not b_lambda!31245) (not b_lambda!31261) (not b!1095080) (not d!308608) (not d!308752) (not b_lambda!31249) (not b!1095086) (not d!308594) (not d!308742) (not b!1094827) (not b!1095051) (not b!1095072) (not d!308614) (not b!1095110) (not b!1095090) (not b!1095048) (not d!308576) (not d!308628) (not d!308748) (not b!1095053) (not b!1094798) (not b!1095126) (not b!1094845) (not b!1094739) (not b!1095081) (not d!308726) (not b!1095124) (not b_lambda!31253) (not d!308582) (not b!1094812) (not b!1094828) (not bs!258609) (not b!1095070) (not b!1095109) (not b!1094839) (not b!1095088) (not bs!258606) (not d!308598) (not b!1095052) (not d!308602) (not d!308730) (not bs!258610) (not b!1094815) (not d!308708) (not d!308586) (not b!1095085) (not b!1095123) (not d!308734) (not d!308746) (not b!1095089) (not b_lambda!31259) (not b!1094836) (not b!1095037) (not b_lambda!31265) (not b_lambda!31255) (not b!1094849) (not d!308620) (not b_lambda!31247) (not d!308718) (not bm!80315) (not b!1095094) (not d!308610) (not b!1095112) (not d!308714) (not d!308616) (not b_lambda!31263) (not d!308626) (not b!1095082) (not b!1095083) (not b!1095045) (not b!1094792) (not b!1095138) (not b!1095087) (not bm!80310) (not d!308606) (not b!1094835) (not d!308738) (not b!1094834) (not d!308574) (not d!308736) (not d!308596) (not b!1095044) (not b!1095057) (not b!1095075) (not d!308722) (not b!1095059) (not b!1094846) (not b!1095039) (not b!1095073) (not d!308728) (not d!308716) (not b!1095047) (not b!1095084) (not d!308744) (not d!308600) (not b!1095135) (not b_lambda!31257) (not b!1095069) (not d!308740) (not d!308604) (not bs!258604) (not d!308720) (not b!1095036) (not b!1095122) (not b!1095049) (not bs!258607) (not d!308622) (not b!1095046) (not b!1094847) (not b!1095055) (not b!1095107) (not b!1094831) (not b!1095121))
(check-sat)
(get-model)

(declare-fun d!309228 () Bool)

(assert (=> d!309228 (dynLambda!4609 lambda!42570 lt!368989)))

(declare-fun lt!369308 () Unit!16034)

(assert (=> d!309228 (= lt!369308 (choose!7056 (list!3778 lt!369004) lambda!42570 lt!368989))))

(declare-fun e!693718 () Bool)

(assert (=> d!309228 e!693718))

(declare-fun res!486562 () Bool)

(assert (=> d!309228 (=> (not res!486562) (not e!693718))))

(assert (=> d!309228 (= res!486562 (forall!2374 (list!3778 lt!369004) lambda!42570))))

(assert (=> d!309228 (= (forallContained!502 (list!3778 lt!369004) lambda!42570 lt!368989) lt!369308)))

(declare-fun b!1095776 () Bool)

(assert (=> b!1095776 (= e!693718 (contains!1801 (list!3778 lt!369004) lt!368989))))

(assert (= (and d!309228 res!486562) b!1095776))

(declare-fun b_lambda!31447 () Bool)

(assert (=> (not b_lambda!31447) (not d!309228)))

(declare-fun m!1249921 () Bool)

(assert (=> d!309228 m!1249921))

(assert (=> d!309228 m!1248513))

(declare-fun m!1249923 () Bool)

(assert (=> d!309228 m!1249923))

(assert (=> d!309228 m!1248513))

(declare-fun m!1249925 () Bool)

(assert (=> d!309228 m!1249925))

(assert (=> b!1095776 m!1248513))

(declare-fun m!1249927 () Bool)

(assert (=> b!1095776 m!1249927))

(assert (=> b!1095075 d!309228))

(declare-fun d!309230 () Bool)

(assert (=> d!309230 (= (list!3778 lt!369004) (list!3780 (c!185681 lt!369004)))))

(declare-fun bs!258785 () Bool)

(assert (= bs!258785 d!309230))

(declare-fun m!1249929 () Bool)

(assert (=> bs!258785 m!1249929))

(assert (=> b!1095075 d!309230))

(declare-fun d!309232 () Bool)

(declare-fun res!486563 () Bool)

(declare-fun e!693719 () Bool)

(assert (=> d!309232 (=> res!486563 e!693719)))

(assert (=> d!309232 (= res!486563 ((_ is Nil!10530) (++!2855 lt!368599 lt!368602)))))

(assert (=> d!309232 (= (forall!2374 (++!2855 lt!368599 lt!368602) lambda!42457) e!693719)))

(declare-fun b!1095777 () Bool)

(declare-fun e!693720 () Bool)

(assert (=> b!1095777 (= e!693719 e!693720)))

(declare-fun res!486564 () Bool)

(assert (=> b!1095777 (=> (not res!486564) (not e!693720))))

(assert (=> b!1095777 (= res!486564 (dynLambda!4609 lambda!42457 (h!15931 (++!2855 lt!368599 lt!368602))))))

(declare-fun b!1095778 () Bool)

(assert (=> b!1095778 (= e!693720 (forall!2374 (t!103088 (++!2855 lt!368599 lt!368602)) lambda!42457))))

(assert (= (and d!309232 (not res!486563)) b!1095777))

(assert (= (and b!1095777 res!486564) b!1095778))

(declare-fun b_lambda!31449 () Bool)

(assert (=> (not b_lambda!31449) (not b!1095777)))

(declare-fun m!1249931 () Bool)

(assert (=> b!1095777 m!1249931))

(declare-fun m!1249933 () Bool)

(assert (=> b!1095778 m!1249933))

(assert (=> d!308722 d!309232))

(assert (=> d!308722 d!308734))

(declare-fun d!309234 () Bool)

(assert (=> d!309234 (forall!2374 (++!2855 lt!368599 lt!368602) lambda!42457)))

(assert (=> d!309234 true))

(declare-fun _$78!230 () Unit!16034)

(assert (=> d!309234 (= (choose!7059 lt!368599 lt!368602 lambda!42457) _$78!230)))

(declare-fun bs!258786 () Bool)

(assert (= bs!258786 d!309234))

(assert (=> bs!258786 m!1247709))

(assert (=> bs!258786 m!1247709))

(assert (=> bs!258786 m!1248387))

(assert (=> d!308722 d!309234))

(declare-fun d!309236 () Bool)

(declare-fun res!486565 () Bool)

(declare-fun e!693721 () Bool)

(assert (=> d!309236 (=> res!486565 e!693721)))

(assert (=> d!309236 (= res!486565 ((_ is Nil!10530) lt!368599))))

(assert (=> d!309236 (= (forall!2374 lt!368599 lambda!42457) e!693721)))

(declare-fun b!1095779 () Bool)

(declare-fun e!693722 () Bool)

(assert (=> b!1095779 (= e!693721 e!693722)))

(declare-fun res!486566 () Bool)

(assert (=> b!1095779 (=> (not res!486566) (not e!693722))))

(assert (=> b!1095779 (= res!486566 (dynLambda!4609 lambda!42457 (h!15931 lt!368599)))))

(declare-fun b!1095780 () Bool)

(assert (=> b!1095780 (= e!693722 (forall!2374 (t!103088 lt!368599) lambda!42457))))

(assert (= (and d!309236 (not res!486565)) b!1095779))

(assert (= (and b!1095779 res!486566) b!1095780))

(declare-fun b_lambda!31451 () Bool)

(assert (=> (not b_lambda!31451) (not b!1095779)))

(declare-fun m!1249935 () Bool)

(assert (=> b!1095779 m!1249935))

(declare-fun m!1249937 () Bool)

(assert (=> b!1095780 m!1249937))

(assert (=> d!308722 d!309236))

(declare-fun b!1095792 () Bool)

(declare-fun e!693728 () List!10546)

(assert (=> b!1095792 (= e!693728 (++!2855 (list!3780 (left!9060 (c!185681 (filter!277 objs!8 lambda!42459)))) (list!3780 (right!9390 (c!185681 (filter!277 objs!8 lambda!42459))))))))

(declare-fun b!1095790 () Bool)

(declare-fun e!693727 () List!10546)

(assert (=> b!1095790 (= e!693727 e!693728)))

(declare-fun c!185901 () Bool)

(assert (=> b!1095790 (= c!185901 ((_ is Leaf!5135) (c!185681 (filter!277 objs!8 lambda!42459))))))

(declare-fun b!1095789 () Bool)

(assert (=> b!1095789 (= e!693727 Nil!10530)))

(declare-fun b!1095791 () Bool)

(declare-fun list!3782 (IArray!6463) List!10546)

(assert (=> b!1095791 (= e!693728 (list!3782 (xs!5922 (c!185681 (filter!277 objs!8 lambda!42459)))))))

(declare-fun d!309238 () Bool)

(declare-fun c!185900 () Bool)

(assert (=> d!309238 (= c!185900 ((_ is Empty!3229) (c!185681 (filter!277 objs!8 lambda!42459))))))

(assert (=> d!309238 (= (list!3780 (c!185681 (filter!277 objs!8 lambda!42459))) e!693727)))

(assert (= (and d!309238 c!185900) b!1095789))

(assert (= (and d!309238 (not c!185900)) b!1095790))

(assert (= (and b!1095790 c!185901) b!1095791))

(assert (= (and b!1095790 (not c!185901)) b!1095792))

(declare-fun m!1249939 () Bool)

(assert (=> b!1095792 m!1249939))

(declare-fun m!1249941 () Bool)

(assert (=> b!1095792 m!1249941))

(assert (=> b!1095792 m!1249939))

(assert (=> b!1095792 m!1249941))

(declare-fun m!1249943 () Bool)

(assert (=> b!1095792 m!1249943))

(declare-fun m!1249945 () Bool)

(assert (=> b!1095791 m!1249945))

(assert (=> d!308736 d!309238))

(declare-fun d!309240 () Bool)

(declare-fun c!185904 () Bool)

(assert (=> d!309240 (= c!185904 ((_ is Nil!10530) lt!369029))))

(declare-fun e!693731 () (InoxSet tuple2!11726))

(assert (=> d!309240 (= (content!1520 lt!369029) e!693731)))

(declare-fun b!1095797 () Bool)

(assert (=> b!1095797 (= e!693731 ((as const (Array tuple2!11726 Bool)) false))))

(declare-fun b!1095798 () Bool)

(assert (=> b!1095798 (= e!693731 ((_ map or) (store ((as const (Array tuple2!11726 Bool)) false) (h!15931 lt!369029) true) (content!1520 (t!103088 lt!369029))))))

(assert (= (and d!309240 c!185904) b!1095797))

(assert (= (and d!309240 (not c!185904)) b!1095798))

(declare-fun m!1249947 () Bool)

(assert (=> b!1095798 m!1249947))

(declare-fun m!1249949 () Bool)

(assert (=> b!1095798 m!1249949))

(assert (=> b!1095097 d!309240))

(declare-fun d!309242 () Bool)

(declare-fun c!185905 () Bool)

(assert (=> d!309242 (= c!185905 ((_ is Nil!10530) lt!368623))))

(declare-fun e!693732 () (InoxSet tuple2!11726))

(assert (=> d!309242 (= (content!1520 lt!368623) e!693732)))

(declare-fun b!1095799 () Bool)

(assert (=> b!1095799 (= e!693732 ((as const (Array tuple2!11726 Bool)) false))))

(declare-fun b!1095800 () Bool)

(assert (=> b!1095800 (= e!693732 ((_ map or) (store ((as const (Array tuple2!11726 Bool)) false) (h!15931 lt!368623) true) (content!1520 (t!103088 lt!368623))))))

(assert (= (and d!309242 c!185905) b!1095799))

(assert (= (and d!309242 (not c!185905)) b!1095800))

(declare-fun m!1249951 () Bool)

(assert (=> b!1095800 m!1249951))

(declare-fun m!1249953 () Bool)

(assert (=> b!1095800 m!1249953))

(assert (=> b!1095097 d!309242))

(declare-fun d!309244 () Bool)

(declare-fun lt!369311 () Bool)

(assert (=> d!309244 (= lt!369311 (select (content!1520 lt!368623) lt!368619))))

(declare-fun e!693738 () Bool)

(assert (=> d!309244 (= lt!369311 e!693738)))

(declare-fun res!486572 () Bool)

(assert (=> d!309244 (=> (not res!486572) (not e!693738))))

(assert (=> d!309244 (= res!486572 ((_ is Cons!10530) lt!368623))))

(assert (=> d!309244 (= (contains!1801 lt!368623 lt!368619) lt!369311)))

(declare-fun b!1095805 () Bool)

(declare-fun e!693737 () Bool)

(assert (=> b!1095805 (= e!693738 e!693737)))

(declare-fun res!486571 () Bool)

(assert (=> b!1095805 (=> res!486571 e!693737)))

(assert (=> b!1095805 (= res!486571 (= (h!15931 lt!368623) lt!368619))))

(declare-fun b!1095806 () Bool)

(assert (=> b!1095806 (= e!693737 (contains!1801 (t!103088 lt!368623) lt!368619))))

(assert (= (and d!309244 res!486572) b!1095805))

(assert (= (and b!1095805 (not res!486571)) b!1095806))

(assert (=> d!309244 m!1247867))

(declare-fun m!1249955 () Bool)

(assert (=> d!309244 m!1249955))

(declare-fun m!1249957 () Bool)

(assert (=> b!1095806 m!1249957))

(assert (=> b!1094847 d!309244))

(declare-fun d!309246 () Bool)

(assert (=> d!309246 (= (list!3778 lt!368690) (list!3780 (c!185681 lt!368690)))))

(declare-fun bs!258787 () Bool)

(assert (= bs!258787 d!309246))

(declare-fun m!1249959 () Bool)

(assert (=> bs!258787 m!1249959))

(assert (=> b!1094836 d!309246))

(declare-fun d!309248 () Bool)

(declare-fun e!693739 () Bool)

(assert (=> d!309248 e!693739))

(declare-fun res!486573 () Bool)

(assert (=> d!309248 (=> (not res!486573) (not e!693739))))

(declare-fun lt!369312 () List!10546)

(assert (=> d!309248 (= res!486573 (<= (size!8149 lt!369312) (size!8149 (list!3778 objs!8))))))

(declare-fun e!693741 () List!10546)

(assert (=> d!309248 (= lt!369312 e!693741)))

(declare-fun c!185907 () Bool)

(assert (=> d!309248 (= c!185907 ((_ is Nil!10530) (list!3778 objs!8)))))

(assert (=> d!309248 (= (filter!276 (list!3778 objs!8) lambda!42460) lt!369312)))

(declare-fun bm!80329 () Bool)

(declare-fun call!80334 () List!10546)

(assert (=> bm!80329 (= call!80334 (filter!276 (t!103088 (list!3778 objs!8)) lambda!42460))))

(declare-fun b!1095807 () Bool)

(declare-fun e!693740 () List!10546)

(assert (=> b!1095807 (= e!693740 call!80334)))

(declare-fun b!1095808 () Bool)

(assert (=> b!1095808 (= e!693739 (forall!2374 lt!369312 lambda!42460))))

(declare-fun b!1095809 () Bool)

(assert (=> b!1095809 (= e!693740 (Cons!10530 (h!15931 (list!3778 objs!8)) call!80334))))

(declare-fun b!1095810 () Bool)

(assert (=> b!1095810 (= e!693741 e!693740)))

(declare-fun c!185906 () Bool)

(assert (=> b!1095810 (= c!185906 (dynLambda!4609 lambda!42460 (h!15931 (list!3778 objs!8))))))

(declare-fun b!1095811 () Bool)

(declare-fun res!486574 () Bool)

(assert (=> b!1095811 (=> (not res!486574) (not e!693739))))

(assert (=> b!1095811 (= res!486574 (= ((_ map implies) (content!1520 lt!369312) (content!1520 (list!3778 objs!8))) ((as const (InoxSet tuple2!11726)) true)))))

(declare-fun b!1095812 () Bool)

(assert (=> b!1095812 (= e!693741 Nil!10530)))

(assert (= (and d!309248 c!185907) b!1095812))

(assert (= (and d!309248 (not c!185907)) b!1095810))

(assert (= (and b!1095810 c!185906) b!1095809))

(assert (= (and b!1095810 (not c!185906)) b!1095807))

(assert (= (or b!1095809 b!1095807) bm!80329))

(assert (= (and d!309248 res!486573) b!1095811))

(assert (= (and b!1095811 res!486574) b!1095808))

(declare-fun b_lambda!31453 () Bool)

(assert (=> (not b_lambda!31453) (not b!1095810)))

(declare-fun m!1249961 () Bool)

(assert (=> d!309248 m!1249961))

(assert (=> d!309248 m!1247649))

(assert (=> d!309248 m!1248531))

(declare-fun m!1249963 () Bool)

(assert (=> b!1095810 m!1249963))

(declare-fun m!1249965 () Bool)

(assert (=> bm!80329 m!1249965))

(declare-fun m!1249967 () Bool)

(assert (=> b!1095811 m!1249967))

(assert (=> b!1095811 m!1247649))

(declare-fun m!1249969 () Bool)

(assert (=> b!1095811 m!1249969))

(declare-fun m!1249971 () Bool)

(assert (=> b!1095808 m!1249971))

(assert (=> b!1094836 d!309248))

(assert (=> b!1094836 d!308576))

(assert (=> d!308716 d!308710))

(declare-fun d!309250 () Bool)

(assert (=> d!309250 (forall!2374 lt!368594 lambda!42457)))

(assert (=> d!309250 true))

(declare-fun _$37!268 () Unit!16034)

(assert (=> d!309250 (= (choose!7058 lt!368594 lt!368623 lambda!42457) _$37!268)))

(declare-fun bs!258788 () Bool)

(assert (= bs!258788 d!309250))

(assert (=> bs!258788 m!1247721))

(assert (=> d!308716 d!309250))

(declare-fun d!309252 () Bool)

(declare-fun res!486575 () Bool)

(declare-fun e!693742 () Bool)

(assert (=> d!309252 (=> res!486575 e!693742)))

(assert (=> d!309252 (= res!486575 ((_ is Nil!10530) lt!368623))))

(assert (=> d!309252 (= (forall!2374 lt!368623 lambda!42457) e!693742)))

(declare-fun b!1095813 () Bool)

(declare-fun e!693743 () Bool)

(assert (=> b!1095813 (= e!693742 e!693743)))

(declare-fun res!486576 () Bool)

(assert (=> b!1095813 (=> (not res!486576) (not e!693743))))

(assert (=> b!1095813 (= res!486576 (dynLambda!4609 lambda!42457 (h!15931 lt!368623)))))

(declare-fun b!1095814 () Bool)

(assert (=> b!1095814 (= e!693743 (forall!2374 (t!103088 lt!368623) lambda!42457))))

(assert (= (and d!309252 (not res!486575)) b!1095813))

(assert (= (and b!1095813 res!486576) b!1095814))

(declare-fun b_lambda!31455 () Bool)

(assert (=> (not b_lambda!31455) (not b!1095813)))

(declare-fun m!1249973 () Bool)

(assert (=> b!1095813 m!1249973))

(declare-fun m!1249975 () Bool)

(assert (=> b!1095814 m!1249975))

(assert (=> d!308716 d!309252))

(declare-fun d!309254 () Bool)

(declare-fun lt!369313 () Int)

(assert (=> d!309254 (>= lt!369313 0)))

(declare-fun e!693744 () Int)

(assert (=> d!309254 (= lt!369313 e!693744)))

(declare-fun c!185908 () Bool)

(assert (=> d!309254 (= c!185908 ((_ is Nil!10530) (t!103088 (filter!276 lt!368623 lambda!42460))))))

(assert (=> d!309254 (= (size!8149 (t!103088 (filter!276 lt!368623 lambda!42460))) lt!369313)))

(declare-fun b!1095815 () Bool)

(assert (=> b!1095815 (= e!693744 0)))

(declare-fun b!1095816 () Bool)

(assert (=> b!1095816 (= e!693744 (+ 1 (size!8149 (t!103088 (t!103088 (filter!276 lt!368623 lambda!42460))))))))

(assert (= (and d!309254 c!185908) b!1095815))

(assert (= (and d!309254 (not c!185908)) b!1095816))

(declare-fun m!1249977 () Bool)

(assert (=> b!1095816 m!1249977))

(assert (=> b!1095092 d!309254))

(declare-fun d!309256 () Bool)

(assert (=> d!309256 (dynLambda!4609 lambda!42563 lt!368940)))

(declare-fun lt!369314 () Unit!16034)

(assert (=> d!309256 (= lt!369314 (choose!7056 (list!3778 lt!368606) lambda!42563 lt!368940))))

(declare-fun e!693745 () Bool)

(assert (=> d!309256 e!693745))

(declare-fun res!486577 () Bool)

(assert (=> d!309256 (=> (not res!486577) (not e!693745))))

(assert (=> d!309256 (= res!486577 (forall!2374 (list!3778 lt!368606) lambda!42563))))

(assert (=> d!309256 (= (forallContained!502 (list!3778 lt!368606) lambda!42563 lt!368940) lt!369314)))

(declare-fun b!1095817 () Bool)

(assert (=> b!1095817 (= e!693745 (contains!1801 (list!3778 lt!368606) lt!368940))))

(assert (= (and d!309256 res!486577) b!1095817))

(declare-fun b_lambda!31457 () Bool)

(assert (=> (not b_lambda!31457) (not d!309256)))

(declare-fun m!1249979 () Bool)

(assert (=> d!309256 m!1249979))

(assert (=> d!309256 m!1247675))

(declare-fun m!1249981 () Bool)

(assert (=> d!309256 m!1249981))

(assert (=> d!309256 m!1247675))

(declare-fun m!1249983 () Bool)

(assert (=> d!309256 m!1249983))

(assert (=> b!1095817 m!1247675))

(declare-fun m!1249985 () Bool)

(assert (=> b!1095817 m!1249985))

(assert (=> b!1095047 d!309256))

(assert (=> b!1095047 d!308746))

(declare-fun d!309258 () Bool)

(assert (=> d!309258 (forall!2374 (++!2855 (++!2855 (list!3778 (sortObjectsByID!0 lt!368950)) (list!3778 lt!368944)) (list!3778 (sortObjectsByID!0 lt!368955))) lambda!42566)))

(declare-fun lt!369315 () Unit!16034)

(assert (=> d!309258 (= lt!369315 (choose!7059 (++!2855 (list!3778 (sortObjectsByID!0 lt!368950)) (list!3778 lt!368944)) (list!3778 (sortObjectsByID!0 lt!368955)) lambda!42566))))

(assert (=> d!309258 (forall!2374 (++!2855 (list!3778 (sortObjectsByID!0 lt!368950)) (list!3778 lt!368944)) lambda!42566)))

(assert (=> d!309258 (= (lemmaConcatPreservesForall!88 (++!2855 (list!3778 (sortObjectsByID!0 lt!368950)) (list!3778 lt!368944)) (list!3778 (sortObjectsByID!0 lt!368955)) lambda!42566) lt!369315)))

(declare-fun bs!258789 () Bool)

(assert (= bs!258789 d!309258))

(assert (=> bs!258789 m!1248275))

(assert (=> bs!258789 m!1248289))

(declare-fun m!1249987 () Bool)

(assert (=> bs!258789 m!1249987))

(assert (=> bs!258789 m!1249987))

(declare-fun m!1249989 () Bool)

(assert (=> bs!258789 m!1249989))

(assert (=> bs!258789 m!1248275))

(assert (=> bs!258789 m!1248289))

(declare-fun m!1249991 () Bool)

(assert (=> bs!258789 m!1249991))

(assert (=> bs!258789 m!1248275))

(declare-fun m!1249993 () Bool)

(assert (=> bs!258789 m!1249993))

(assert (=> b!1095045 d!309258))

(declare-fun d!309260 () Bool)

(declare-fun lt!369316 () Bool)

(assert (=> d!309260 (= lt!369316 (forall!2374 (list!3778 lt!368606) lambda!42565))))

(assert (=> d!309260 (= lt!369316 (forall!2377 (c!185681 lt!368606) lambda!42565))))

(assert (=> d!309260 (= (forall!2375 lt!368606 lambda!42565) lt!369316)))

(declare-fun bs!258790 () Bool)

(assert (= bs!258790 d!309260))

(assert (=> bs!258790 m!1247675))

(assert (=> bs!258790 m!1247675))

(declare-fun m!1249995 () Bool)

(assert (=> bs!258790 m!1249995))

(declare-fun m!1249997 () Bool)

(assert (=> bs!258790 m!1249997))

(assert (=> b!1095045 d!309260))

(declare-fun d!309262 () Bool)

(declare-fun res!486578 () Bool)

(declare-fun e!693746 () Bool)

(assert (=> d!309262 (=> res!486578 e!693746)))

(assert (=> d!309262 (= res!486578 ((_ is Nil!10530) lt!368966))))

(assert (=> d!309262 (= (forall!2374 lt!368966 lambda!42566) e!693746)))

(declare-fun b!1095818 () Bool)

(declare-fun e!693747 () Bool)

(assert (=> b!1095818 (= e!693746 e!693747)))

(declare-fun res!486579 () Bool)

(assert (=> b!1095818 (=> (not res!486579) (not e!693747))))

(assert (=> b!1095818 (= res!486579 (dynLambda!4609 lambda!42566 (h!15931 lt!368966)))))

(declare-fun b!1095819 () Bool)

(assert (=> b!1095819 (= e!693747 (forall!2374 (t!103088 lt!368966) lambda!42566))))

(assert (= (and d!309262 (not res!486578)) b!1095818))

(assert (= (and b!1095818 res!486579) b!1095819))

(declare-fun b_lambda!31459 () Bool)

(assert (=> (not b_lambda!31459) (not b!1095818)))

(declare-fun m!1249999 () Bool)

(assert (=> b!1095818 m!1249999))

(declare-fun m!1250001 () Bool)

(assert (=> b!1095819 m!1250001))

(assert (=> b!1095045 d!309262))

(declare-fun bs!258791 () Bool)

(declare-fun b!1095829 () Bool)

(assert (= bs!258791 (and b!1095829 b!1094737)))

(declare-fun lambda!42593 () Int)

(assert (=> bs!258791 (not (= lambda!42593 lambda!42460))))

(declare-fun bs!258792 () Bool)

(assert (= bs!258792 (and b!1095829 b!1095045)))

(declare-fun lt!369317 () tuple2!11726)

(assert (=> bs!258792 (= (= (_1!6689 lt!369317) (_1!6689 lt!368940)) (= lambda!42593 lambda!42563))))

(assert (=> bs!258792 (not (= lambda!42593 lambda!42566))))

(declare-fun bs!258793 () Bool)

(assert (= bs!258793 (and b!1095829 start!93782)))

(assert (=> bs!258793 (not (= lambda!42593 lambda!42457))))

(assert (=> bs!258791 (= (= (_1!6689 lt!369317) (_1!6689 lt!368619)) (= lambda!42593 lambda!42458))))

(assert (=> bs!258792 (not (= lambda!42593 lambda!42565))))

(declare-fun bs!258794 () Bool)

(assert (= bs!258794 (and b!1095829 b!1095081)))

(assert (=> bs!258794 (= (= (_1!6689 lt!369317) (_1!6689 lt!368989)) (= lambda!42593 lambda!42568))))

(assert (=> bs!258792 (not (= lambda!42593 lambda!42564))))

(declare-fun bs!258795 () Bool)

(assert (= bs!258795 (and b!1095829 d!308628)))

(assert (=> bs!258795 (not (= lambda!42593 lambda!42567))))

(assert (=> bs!258794 (not (= lambda!42593 lambda!42569))))

(declare-fun bs!258796 () Bool)

(assert (= bs!258796 (and b!1095829 d!308738)))

(assert (=> bs!258796 (not (= lambda!42593 lambda!42572))))

(assert (=> bs!258794 (not (= lambda!42593 lambda!42571))))

(assert (=> bs!258791 (not (= lambda!42593 lambda!42459))))

(assert (=> bs!258794 (not (= lambda!42593 lambda!42570))))

(declare-fun b!1095833 () Bool)

(declare-fun e!693756 () Bool)

(assert (=> b!1095833 (= e!693756 true)))

(declare-fun b!1095832 () Bool)

(declare-fun e!693755 () Bool)

(assert (=> b!1095832 (= e!693755 e!693756)))

(assert (=> b!1095829 e!693755))

(assert (= b!1095832 b!1095833))

(assert (= b!1095829 b!1095832))

(declare-fun lambda!42594 () Int)

(assert (=> bs!258791 (not (= lambda!42594 lambda!42460))))

(assert (=> bs!258792 (not (= lambda!42594 lambda!42563))))

(assert (=> bs!258792 (not (= lambda!42594 lambda!42566))))

(assert (=> bs!258793 (not (= lambda!42594 lambda!42457))))

(assert (=> bs!258791 (not (= lambda!42594 lambda!42458))))

(assert (=> bs!258792 (not (= lambda!42594 lambda!42565))))

(assert (=> bs!258792 (= (= (_1!6689 lt!369317) (_1!6689 lt!368940)) (= lambda!42594 lambda!42564))))

(assert (=> bs!258795 (not (= lambda!42594 lambda!42567))))

(assert (=> bs!258794 (= (= (_1!6689 lt!369317) (_1!6689 lt!368989)) (= lambda!42594 lambda!42569))))

(assert (=> bs!258796 (not (= lambda!42594 lambda!42572))))

(assert (=> bs!258794 (not (= lambda!42594 lambda!42571))))

(assert (=> bs!258791 (= (= (_1!6689 lt!369317) (_1!6689 lt!368619)) (= lambda!42594 lambda!42459))))

(assert (=> bs!258794 (not (= lambda!42594 lambda!42570))))

(assert (=> bs!258794 (not (= lambda!42594 lambda!42568))))

(assert (=> b!1095829 (not (= lambda!42594 lambda!42593))))

(declare-fun b!1095835 () Bool)

(declare-fun e!693758 () Bool)

(assert (=> b!1095835 (= e!693758 true)))

(declare-fun b!1095834 () Bool)

(declare-fun e!693757 () Bool)

(assert (=> b!1095834 (= e!693757 e!693758)))

(assert (=> b!1095829 e!693757))

(assert (= b!1095834 b!1095835))

(assert (= b!1095829 b!1095834))

(declare-fun lambda!42595 () Int)

(assert (=> b!1095829 (not (= lambda!42595 lambda!42594))))

(assert (=> bs!258791 (= (= (_1!6689 lt!369317) (_1!6689 lt!368619)) (= lambda!42595 lambda!42460))))

(assert (=> bs!258792 (not (= lambda!42595 lambda!42563))))

(assert (=> bs!258792 (not (= lambda!42595 lambda!42566))))

(assert (=> bs!258793 (not (= lambda!42595 lambda!42457))))

(assert (=> bs!258791 (not (= lambda!42595 lambda!42458))))

(assert (=> bs!258792 (= (= (_1!6689 lt!369317) (_1!6689 lt!368940)) (= lambda!42595 lambda!42565))))

(assert (=> bs!258792 (not (= lambda!42595 lambda!42564))))

(assert (=> bs!258795 (not (= lambda!42595 lambda!42567))))

(assert (=> bs!258794 (not (= lambda!42595 lambda!42569))))

(assert (=> bs!258796 (not (= lambda!42595 lambda!42572))))

(assert (=> bs!258794 (not (= lambda!42595 lambda!42571))))

(assert (=> bs!258791 (not (= lambda!42595 lambda!42459))))

(assert (=> bs!258794 (= (= (_1!6689 lt!369317) (_1!6689 lt!368989)) (= lambda!42595 lambda!42570))))

(assert (=> bs!258794 (not (= lambda!42595 lambda!42568))))

(assert (=> b!1095829 (not (= lambda!42595 lambda!42593))))

(declare-fun b!1095837 () Bool)

(declare-fun e!693760 () Bool)

(assert (=> b!1095837 (= e!693760 true)))

(declare-fun b!1095836 () Bool)

(declare-fun e!693759 () Bool)

(assert (=> b!1095836 (= e!693759 e!693760)))

(assert (=> b!1095829 e!693759))

(assert (= b!1095836 b!1095837))

(assert (= b!1095829 b!1095836))

(declare-fun lambda!42596 () Int)

(assert (=> b!1095829 (not (= lambda!42596 lambda!42594))))

(assert (=> bs!258792 (not (= lambda!42596 lambda!42563))))

(assert (=> bs!258792 (= lambda!42596 lambda!42566)))

(assert (=> bs!258793 (= lambda!42596 lambda!42457)))

(assert (=> bs!258791 (not (= lambda!42596 lambda!42458))))

(assert (=> bs!258792 (not (= lambda!42596 lambda!42565))))

(assert (=> bs!258792 (not (= lambda!42596 lambda!42564))))

(assert (=> bs!258795 (= lambda!42596 lambda!42567)))

(assert (=> bs!258794 (not (= lambda!42596 lambda!42569))))

(assert (=> bs!258796 (= lambda!42596 lambda!42572)))

(assert (=> bs!258794 (= lambda!42596 lambda!42571)))

(assert (=> bs!258791 (not (= lambda!42596 lambda!42459))))

(assert (=> bs!258794 (not (= lambda!42596 lambda!42570))))

(assert (=> b!1095829 (not (= lambda!42596 lambda!42595))))

(assert (=> bs!258791 (not (= lambda!42596 lambda!42460))))

(assert (=> bs!258794 (not (= lambda!42596 lambda!42568))))

(assert (=> b!1095829 (not (= lambda!42596 lambda!42593))))

(declare-fun bs!258797 () Bool)

(declare-fun d!309264 () Bool)

(assert (= bs!258797 (and d!309264 b!1095829)))

(declare-fun lambda!42597 () Int)

(assert (=> bs!258797 (not (= lambda!42597 lambda!42594))))

(declare-fun bs!258798 () Bool)

(assert (= bs!258798 (and d!309264 b!1095045)))

(assert (=> bs!258798 (not (= lambda!42597 lambda!42563))))

(assert (=> bs!258798 (= lambda!42597 lambda!42566)))

(declare-fun bs!258799 () Bool)

(assert (= bs!258799 (and d!309264 start!93782)))

(assert (=> bs!258799 (= lambda!42597 lambda!42457)))

(declare-fun bs!258800 () Bool)

(assert (= bs!258800 (and d!309264 b!1094737)))

(assert (=> bs!258800 (not (= lambda!42597 lambda!42458))))

(assert (=> bs!258798 (not (= lambda!42597 lambda!42565))))

(assert (=> bs!258798 (not (= lambda!42597 lambda!42564))))

(declare-fun bs!258801 () Bool)

(assert (= bs!258801 (and d!309264 d!308628)))

(assert (=> bs!258801 (= lambda!42597 lambda!42567)))

(declare-fun bs!258802 () Bool)

(assert (= bs!258802 (and d!309264 b!1095081)))

(assert (=> bs!258802 (not (= lambda!42597 lambda!42569))))

(declare-fun bs!258803 () Bool)

(assert (= bs!258803 (and d!309264 d!308738)))

(assert (=> bs!258803 (= lambda!42597 lambda!42572)))

(assert (=> bs!258797 (= lambda!42597 lambda!42596)))

(assert (=> bs!258802 (= lambda!42597 lambda!42571)))

(assert (=> bs!258800 (not (= lambda!42597 lambda!42459))))

(assert (=> bs!258802 (not (= lambda!42597 lambda!42570))))

(assert (=> bs!258797 (not (= lambda!42597 lambda!42595))))

(assert (=> bs!258800 (not (= lambda!42597 lambda!42460))))

(assert (=> bs!258802 (not (= lambda!42597 lambda!42568))))

(assert (=> bs!258797 (not (= lambda!42597 lambda!42593))))

(declare-fun b!1095820 () Bool)

(assert (=> b!1095820 true))

(declare-fun lt!369336 () Unit!16034)

(declare-fun lt!369327 () BalanceConc!6472)

(assert (=> b!1095820 (= lt!369336 (forallContained!502 (list!3778 lt!369327) lambda!42593 lt!369317))))

(declare-fun e!693753 () Unit!16034)

(declare-fun err!2371 () Unit!16034)

(assert (=> b!1095820 (= e!693753 err!2371)))

(declare-fun b!1095821 () Bool)

(declare-fun e!693750 () Bool)

(declare-fun lt!369333 () List!10546)

(assert (=> b!1095821 (= e!693750 (< (size!8149 (filter!276 lt!369333 lambda!42595)) (size!8149 lt!369333)))))

(declare-fun b!1095822 () Bool)

(declare-fun e!693748 () BalanceConc!6472)

(assert (=> b!1095822 (= e!693748 lt!368955)))

(declare-fun b!1095823 () Bool)

(assert (=> b!1095823 true))

(declare-fun lt!369332 () BalanceConc!6472)

(declare-fun lt!369325 () Unit!16034)

(assert (=> b!1095823 (= lt!369325 (forallContained!502 (list!3778 lt!369332) lambda!42595 lt!369317))))

(declare-fun e!693754 () Unit!16034)

(declare-fun err!2373 () Unit!16034)

(assert (=> b!1095823 (= e!693754 err!2373)))

(declare-fun b!1095824 () Bool)

(declare-fun e!693752 () Unit!16034)

(declare-fun Unit!16057 () Unit!16034)

(assert (=> b!1095824 (= e!693752 Unit!16057)))

(declare-fun b!1095825 () Bool)

(declare-fun Unit!16058 () Unit!16034)

(assert (=> b!1095825 (= e!693754 Unit!16058)))

(declare-fun lt!369329 () BalanceConc!6472)

(assert (=> d!309264 (forall!2375 lt!369329 lambda!42597)))

(assert (=> d!309264 (= lt!369329 e!693748)))

(declare-fun c!185909 () Bool)

(assert (=> d!309264 (= c!185909 (<= (size!8150 lt!368955) 1))))

(assert (=> d!309264 (= (sortObjectsByID!0 lt!368955) lt!369329)))

(declare-fun b!1095826 () Bool)

(declare-fun e!693751 () Unit!16034)

(declare-fun Unit!16059 () Unit!16034)

(assert (=> b!1095826 (= e!693751 Unit!16059)))

(declare-fun b!1095827 () Bool)

(declare-fun Unit!16060 () Unit!16034)

(assert (=> b!1095827 (= e!693753 Unit!16060)))

(declare-fun b!1095828 () Bool)

(assert (=> b!1095828 true))

(declare-fun lt!369331 () Unit!16034)

(assert (=> b!1095828 (= lt!369331 (forallContained!502 (list!3778 lt!368955) lambda!42595 lt!369317))))

(declare-fun err!2370 () Unit!16034)

(assert (=> b!1095828 (= e!693752 err!2370)))

(declare-fun lt!369321 () BalanceConc!6472)

(assert (=> b!1095829 (= e!693748 (++!2857 (++!2857 (sortObjectsByID!0 lt!369327) lt!369321) (sortObjectsByID!0 lt!369332)))))

(assert (=> b!1095829 (= lt!369317 (apply!2077 lt!368955 (ite (>= (size!8150 lt!368955) 0) (div (size!8150 lt!368955) 2) (- (div (- (size!8150 lt!368955)) 2)))))))

(assert (=> b!1095829 (= lt!369327 (filter!277 lt!368955 lambda!42593))))

(assert (=> b!1095829 (= lt!369321 (filter!277 lt!368955 lambda!42594))))

(assert (=> b!1095829 (= lt!369332 (filter!277 lt!368955 lambda!42595))))

(declare-fun c!185910 () Bool)

(assert (=> b!1095829 (= c!185910 (contains!1798 lt!369327 lt!369317))))

(declare-fun lt!369348 () Unit!16034)

(assert (=> b!1095829 (= lt!369348 e!693753)))

(declare-fun c!185912 () Bool)

(assert (=> b!1095829 (= c!185912 (forall!2375 lt!368955 lambda!42593))))

(declare-fun lt!369350 () Unit!16034)

(assert (=> b!1095829 (= lt!369350 e!693751)))

(declare-fun lt!369346 () List!10546)

(assert (=> b!1095829 (= lt!369346 (list!3778 lt!368955))))

(declare-fun lt!369351 () Unit!16034)

(assert (=> b!1095829 (= lt!369351 (lemmaNotForallFilterShorter!43 lt!369346 lambda!42593))))

(declare-fun res!486580 () Bool)

(assert (=> b!1095829 (= res!486580 (isEmpty!6672 lt!369346))))

(declare-fun e!693749 () Bool)

(assert (=> b!1095829 (=> res!486580 e!693749)))

(assert (=> b!1095829 e!693749))

(declare-fun lt!369341 () Unit!16034)

(assert (=> b!1095829 (= lt!369341 lt!369351)))

(declare-fun c!185913 () Bool)

(assert (=> b!1095829 (= c!185913 (contains!1798 lt!369332 lt!369317))))

(declare-fun lt!369352 () Unit!16034)

(assert (=> b!1095829 (= lt!369352 e!693754)))

(declare-fun c!185911 () Bool)

(assert (=> b!1095829 (= c!185911 (forall!2375 lt!368955 lambda!42595))))

(declare-fun lt!369337 () Unit!16034)

(assert (=> b!1095829 (= lt!369337 e!693752)))

(assert (=> b!1095829 (= lt!369333 (list!3778 lt!368955))))

(declare-fun lt!369349 () Unit!16034)

(assert (=> b!1095829 (= lt!369349 (lemmaNotForallFilterShorter!43 lt!369333 lambda!42595))))

(declare-fun res!486581 () Bool)

(assert (=> b!1095829 (= res!486581 (isEmpty!6672 lt!369333))))

(assert (=> b!1095829 (=> res!486581 e!693750)))

(assert (=> b!1095829 e!693750))

(declare-fun lt!369319 () Unit!16034)

(assert (=> b!1095829 (= lt!369319 lt!369349)))

(declare-fun lt!369340 () Unit!16034)

(assert (=> b!1095829 (= lt!369340 (filterSubseq!37 (list!3778 lt!368955) lambda!42593))))

(declare-fun lt!369320 () Unit!16034)

(assert (=> b!1095829 (= lt!369320 (filterSubseq!37 (list!3778 lt!368955) lambda!42594))))

(declare-fun lt!369324 () Unit!16034)

(assert (=> b!1095829 (= lt!369324 (filterSubseq!37 (list!3778 lt!368955) lambda!42595))))

(declare-fun lt!369345 () List!10546)

(assert (=> b!1095829 (= lt!369345 (list!3778 (filter!277 lt!368955 lambda!42593)))))

(declare-fun lt!369318 () List!10546)

(assert (=> b!1095829 (= lt!369318 (list!3778 lt!368955))))

(declare-fun lt!369334 () Unit!16034)

(assert (=> b!1095829 (= lt!369334 (lemmaForallSubseq!45 lt!369345 lt!369318 lambda!42596))))

(assert (=> b!1095829 (forall!2374 lt!369345 lambda!42596)))

(declare-fun lt!369328 () Unit!16034)

(assert (=> b!1095829 (= lt!369328 lt!369334)))

(declare-fun lt!369342 () List!10546)

(assert (=> b!1095829 (= lt!369342 (list!3778 (filter!277 lt!368955 lambda!42594)))))

(declare-fun lt!369338 () List!10546)

(assert (=> b!1095829 (= lt!369338 (list!3778 lt!368955))))

(declare-fun lt!369326 () Unit!16034)

(assert (=> b!1095829 (= lt!369326 (lemmaForallSubseq!45 lt!369342 lt!369338 lambda!42596))))

(assert (=> b!1095829 (forall!2374 lt!369342 lambda!42596)))

(declare-fun lt!369335 () Unit!16034)

(assert (=> b!1095829 (= lt!369335 lt!369326)))

(declare-fun lt!369343 () List!10546)

(assert (=> b!1095829 (= lt!369343 (list!3778 (filter!277 lt!368955 lambda!42595)))))

(declare-fun lt!369344 () List!10546)

(assert (=> b!1095829 (= lt!369344 (list!3778 lt!368955))))

(declare-fun lt!369330 () Unit!16034)

(assert (=> b!1095829 (= lt!369330 (lemmaForallSubseq!45 lt!369343 lt!369344 lambda!42596))))

(assert (=> b!1095829 (forall!2374 lt!369343 lambda!42596)))

(declare-fun lt!369323 () Unit!16034)

(assert (=> b!1095829 (= lt!369323 lt!369330)))

(declare-fun lt!369339 () Unit!16034)

(assert (=> b!1095829 (= lt!369339 (lemmaConcatPreservesForall!88 (list!3778 (sortObjectsByID!0 lt!369327)) (list!3778 lt!369321) lambda!42596))))

(declare-fun lt!369322 () Unit!16034)

(assert (=> b!1095829 (= lt!369322 (lemmaConcatPreservesForall!88 (++!2855 (list!3778 (sortObjectsByID!0 lt!369327)) (list!3778 lt!369321)) (list!3778 (sortObjectsByID!0 lt!369332)) lambda!42596))))

(declare-fun b!1095830 () Bool)

(assert (=> b!1095830 (= e!693749 (< (size!8149 (filter!276 lt!369346 lambda!42593)) (size!8149 lt!369346)))))

(declare-fun b!1095831 () Bool)

(assert (=> b!1095831 true))

(declare-fun lt!369347 () Unit!16034)

(assert (=> b!1095831 (= lt!369347 (forallContained!502 (list!3778 lt!368955) lambda!42593 lt!369317))))

(declare-fun err!2372 () Unit!16034)

(assert (=> b!1095831 (= e!693751 err!2372)))

(assert (= (and d!309264 c!185909) b!1095822))

(assert (= (and d!309264 (not c!185909)) b!1095829))

(assert (= (and b!1095829 c!185910) b!1095820))

(assert (= (and b!1095829 (not c!185910)) b!1095827))

(assert (= (and b!1095829 c!185912) b!1095831))

(assert (= (and b!1095829 (not c!185912)) b!1095826))

(assert (= (and b!1095829 (not res!486580)) b!1095830))

(assert (= (and b!1095829 c!185913) b!1095823))

(assert (= (and b!1095829 (not c!185913)) b!1095825))

(assert (= (and b!1095829 c!185911) b!1095828))

(assert (= (and b!1095829 (not c!185911)) b!1095824))

(assert (= (and b!1095829 (not res!486581)) b!1095821))

(declare-fun m!1250003 () Bool)

(assert (=> b!1095829 m!1250003))

(declare-fun m!1250005 () Bool)

(assert (=> b!1095829 m!1250005))

(declare-fun m!1250007 () Bool)

(assert (=> b!1095829 m!1250007))

(declare-fun m!1250009 () Bool)

(assert (=> b!1095829 m!1250009))

(declare-fun m!1250011 () Bool)

(assert (=> b!1095829 m!1250011))

(assert (=> b!1095829 m!1250003))

(declare-fun m!1250013 () Bool)

(assert (=> b!1095829 m!1250013))

(assert (=> b!1095829 m!1250011))

(declare-fun m!1250015 () Bool)

(assert (=> b!1095829 m!1250015))

(declare-fun m!1250017 () Bool)

(assert (=> b!1095829 m!1250017))

(declare-fun m!1250019 () Bool)

(assert (=> b!1095829 m!1250019))

(declare-fun m!1250021 () Bool)

(assert (=> b!1095829 m!1250021))

(declare-fun m!1250023 () Bool)

(assert (=> b!1095829 m!1250023))

(assert (=> b!1095829 m!1250009))

(declare-fun m!1250025 () Bool)

(assert (=> b!1095829 m!1250025))

(declare-fun m!1250027 () Bool)

(assert (=> b!1095829 m!1250027))

(declare-fun m!1250029 () Bool)

(assert (=> b!1095829 m!1250029))

(declare-fun m!1250031 () Bool)

(assert (=> b!1095829 m!1250031))

(declare-fun m!1250033 () Bool)

(assert (=> b!1095829 m!1250033))

(assert (=> b!1095829 m!1248359))

(assert (=> b!1095829 m!1250019))

(declare-fun m!1250035 () Bool)

(assert (=> b!1095829 m!1250035))

(assert (=> b!1095829 m!1250019))

(declare-fun m!1250037 () Bool)

(assert (=> b!1095829 m!1250037))

(declare-fun m!1250039 () Bool)

(assert (=> b!1095829 m!1250039))

(assert (=> b!1095829 m!1250005))

(assert (=> b!1095829 m!1250003))

(assert (=> b!1095829 m!1250005))

(declare-fun m!1250041 () Bool)

(assert (=> b!1095829 m!1250041))

(assert (=> b!1095829 m!1250011))

(assert (=> b!1095829 m!1250035))

(assert (=> b!1095829 m!1248359))

(declare-fun m!1250043 () Bool)

(assert (=> b!1095829 m!1250043))

(declare-fun m!1250045 () Bool)

(assert (=> b!1095829 m!1250045))

(declare-fun m!1250047 () Bool)

(assert (=> b!1095829 m!1250047))

(declare-fun m!1250049 () Bool)

(assert (=> b!1095829 m!1250049))

(assert (=> b!1095829 m!1250049))

(declare-fun m!1250051 () Bool)

(assert (=> b!1095829 m!1250051))

(declare-fun m!1250053 () Bool)

(assert (=> b!1095829 m!1250053))

(assert (=> b!1095829 m!1248359))

(declare-fun m!1250055 () Bool)

(assert (=> b!1095829 m!1250055))

(declare-fun m!1250057 () Bool)

(assert (=> b!1095829 m!1250057))

(assert (=> b!1095829 m!1250007))

(assert (=> b!1095829 m!1250021))

(declare-fun m!1250059 () Bool)

(assert (=> b!1095829 m!1250059))

(assert (=> b!1095829 m!1250009))

(declare-fun m!1250061 () Bool)

(assert (=> b!1095829 m!1250061))

(assert (=> b!1095829 m!1248359))

(declare-fun m!1250063 () Bool)

(assert (=> b!1095829 m!1250063))

(declare-fun m!1250065 () Bool)

(assert (=> b!1095829 m!1250065))

(declare-fun m!1250067 () Bool)

(assert (=> b!1095829 m!1250067))

(assert (=> b!1095829 m!1250047))

(declare-fun m!1250069 () Bool)

(assert (=> b!1095829 m!1250069))

(declare-fun m!1250071 () Bool)

(assert (=> b!1095829 m!1250071))

(assert (=> b!1095829 m!1250047))

(assert (=> b!1095829 m!1250049))

(declare-fun m!1250073 () Bool)

(assert (=> b!1095830 m!1250073))

(assert (=> b!1095830 m!1250073))

(declare-fun m!1250075 () Bool)

(assert (=> b!1095830 m!1250075))

(declare-fun m!1250077 () Bool)

(assert (=> b!1095830 m!1250077))

(assert (=> b!1095831 m!1248359))

(assert (=> b!1095831 m!1248359))

(declare-fun m!1250079 () Bool)

(assert (=> b!1095831 m!1250079))

(declare-fun m!1250081 () Bool)

(assert (=> b!1095820 m!1250081))

(assert (=> b!1095820 m!1250081))

(declare-fun m!1250083 () Bool)

(assert (=> b!1095820 m!1250083))

(assert (=> b!1095828 m!1248359))

(assert (=> b!1095828 m!1248359))

(declare-fun m!1250085 () Bool)

(assert (=> b!1095828 m!1250085))

(declare-fun m!1250087 () Bool)

(assert (=> b!1095821 m!1250087))

(assert (=> b!1095821 m!1250087))

(declare-fun m!1250089 () Bool)

(assert (=> b!1095821 m!1250089))

(declare-fun m!1250091 () Bool)

(assert (=> b!1095821 m!1250091))

(declare-fun m!1250093 () Bool)

(assert (=> b!1095823 m!1250093))

(assert (=> b!1095823 m!1250093))

(declare-fun m!1250095 () Bool)

(assert (=> b!1095823 m!1250095))

(declare-fun m!1250097 () Bool)

(assert (=> d!309264 m!1250097))

(assert (=> d!309264 m!1250029))

(assert (=> b!1095045 d!309264))

(declare-fun d!309266 () Bool)

(assert (=> d!309266 (forall!2374 lt!368968 lambda!42566)))

(declare-fun lt!369353 () Unit!16034)

(assert (=> d!309266 (= lt!369353 (choose!7058 lt!368968 lt!368941 lambda!42566))))

(assert (=> d!309266 (forall!2374 lt!368941 lambda!42566)))

(assert (=> d!309266 (= (lemmaForallSubseq!45 lt!368968 lt!368941 lambda!42566) lt!369353)))

(declare-fun bs!258804 () Bool)

(assert (= bs!258804 d!309266))

(assert (=> bs!258804 m!1248319))

(declare-fun m!1250099 () Bool)

(assert (=> bs!258804 m!1250099))

(declare-fun m!1250101 () Bool)

(assert (=> bs!258804 m!1250101))

(assert (=> b!1095045 d!309266))

(declare-fun d!309268 () Bool)

(declare-fun res!486582 () Bool)

(declare-fun e!693761 () Bool)

(assert (=> d!309268 (=> res!486582 e!693761)))

(assert (=> d!309268 (= res!486582 ((_ is Nil!10530) lt!368968))))

(assert (=> d!309268 (= (forall!2374 lt!368968 lambda!42566) e!693761)))

(declare-fun b!1095838 () Bool)

(declare-fun e!693762 () Bool)

(assert (=> b!1095838 (= e!693761 e!693762)))

(declare-fun res!486583 () Bool)

(assert (=> b!1095838 (=> (not res!486583) (not e!693762))))

(assert (=> b!1095838 (= res!486583 (dynLambda!4609 lambda!42566 (h!15931 lt!368968)))))

(declare-fun b!1095839 () Bool)

(assert (=> b!1095839 (= e!693762 (forall!2374 (t!103088 lt!368968) lambda!42566))))

(assert (= (and d!309268 (not res!486582)) b!1095838))

(assert (= (and b!1095838 res!486583) b!1095839))

(declare-fun b_lambda!31461 () Bool)

(assert (=> (not b_lambda!31461) (not b!1095838)))

(declare-fun m!1250103 () Bool)

(assert (=> b!1095838 m!1250103))

(declare-fun m!1250105 () Bool)

(assert (=> b!1095839 m!1250105))

(assert (=> b!1095045 d!309268))

(declare-fun d!309270 () Bool)

(assert (=> d!309270 (subseq!148 (filter!276 (list!3778 lt!368606) lambda!42563) (list!3778 lt!368606))))

(declare-fun lt!369354 () Unit!16034)

(assert (=> d!309270 (= lt!369354 (choose!7057 (list!3778 lt!368606) lambda!42563))))

(assert (=> d!309270 (= (filterSubseq!37 (list!3778 lt!368606) lambda!42563) lt!369354)))

(declare-fun bs!258805 () Bool)

(assert (= bs!258805 d!309270))

(assert (=> bs!258805 m!1247675))

(declare-fun m!1250107 () Bool)

(assert (=> bs!258805 m!1250107))

(assert (=> bs!258805 m!1250107))

(assert (=> bs!258805 m!1247675))

(declare-fun m!1250109 () Bool)

(assert (=> bs!258805 m!1250109))

(assert (=> bs!258805 m!1247675))

(declare-fun m!1250111 () Bool)

(assert (=> bs!258805 m!1250111))

(assert (=> b!1095045 d!309270))

(assert (=> b!1095045 d!308746))

(declare-fun d!309272 () Bool)

(assert (=> d!309272 (= (isEmpty!6672 lt!368956) ((_ is Nil!10530) lt!368956))))

(assert (=> b!1095045 d!309272))

(declare-fun d!309274 () Bool)

(assert (=> d!309274 (= (list!3778 (filter!277 lt!368606 lambda!42563)) (list!3780 (c!185681 (filter!277 lt!368606 lambda!42563))))))

(declare-fun bs!258806 () Bool)

(assert (= bs!258806 d!309274))

(declare-fun m!1250113 () Bool)

(assert (=> bs!258806 m!1250113))

(assert (=> b!1095045 d!309274))

(declare-fun d!309276 () Bool)

(declare-fun lt!369355 () Bool)

(assert (=> d!309276 (= lt!369355 (contains!1801 (list!3778 lt!368950) lt!368940))))

(assert (=> d!309276 (= lt!369355 (contains!1802 (c!185681 lt!368950) lt!368940))))

(assert (=> d!309276 (= (contains!1798 lt!368950 lt!368940) lt!369355)))

(declare-fun bs!258807 () Bool)

(assert (= bs!258807 d!309276))

(assert (=> bs!258807 m!1248347))

(assert (=> bs!258807 m!1248347))

(declare-fun m!1250115 () Bool)

(assert (=> bs!258807 m!1250115))

(declare-fun m!1250117 () Bool)

(assert (=> bs!258807 m!1250117))

(assert (=> b!1095045 d!309276))

(declare-fun d!309278 () Bool)

(declare-fun res!486584 () Bool)

(declare-fun e!693763 () Bool)

(assert (=> d!309278 (=> res!486584 e!693763)))

(assert (=> d!309278 (= res!486584 ((_ is Nil!10530) lt!368965))))

(assert (=> d!309278 (= (forall!2374 lt!368965 lambda!42566) e!693763)))

(declare-fun b!1095840 () Bool)

(declare-fun e!693764 () Bool)

(assert (=> b!1095840 (= e!693763 e!693764)))

(declare-fun res!486585 () Bool)

(assert (=> b!1095840 (=> (not res!486585) (not e!693764))))

(assert (=> b!1095840 (= res!486585 (dynLambda!4609 lambda!42566 (h!15931 lt!368965)))))

(declare-fun b!1095841 () Bool)

(assert (=> b!1095841 (= e!693764 (forall!2374 (t!103088 lt!368965) lambda!42566))))

(assert (= (and d!309278 (not res!486584)) b!1095840))

(assert (= (and b!1095840 res!486585) b!1095841))

(declare-fun b_lambda!31463 () Bool)

(assert (=> (not b_lambda!31463) (not b!1095840)))

(declare-fun m!1250119 () Bool)

(assert (=> b!1095840 m!1250119))

(declare-fun m!1250121 () Bool)

(assert (=> b!1095841 m!1250121))

(assert (=> b!1095045 d!309278))

(declare-fun bs!258808 () Bool)

(declare-fun b!1095851 () Bool)

(assert (= bs!258808 (and b!1095851 b!1095829)))

(declare-fun lambda!42598 () Int)

(assert (=> bs!258808 (not (= lambda!42598 lambda!42594))))

(declare-fun bs!258809 () Bool)

(assert (= bs!258809 (and b!1095851 b!1095045)))

(declare-fun lt!369356 () tuple2!11726)

(assert (=> bs!258809 (= (= (_1!6689 lt!369356) (_1!6689 lt!368940)) (= lambda!42598 lambda!42563))))

(assert (=> bs!258809 (not (= lambda!42598 lambda!42566))))

(declare-fun bs!258810 () Bool)

(assert (= bs!258810 (and b!1095851 start!93782)))

(assert (=> bs!258810 (not (= lambda!42598 lambda!42457))))

(declare-fun bs!258811 () Bool)

(assert (= bs!258811 (and b!1095851 b!1094737)))

(assert (=> bs!258811 (= (= (_1!6689 lt!369356) (_1!6689 lt!368619)) (= lambda!42598 lambda!42458))))

(assert (=> bs!258809 (not (= lambda!42598 lambda!42565))))

(assert (=> bs!258809 (not (= lambda!42598 lambda!42564))))

(declare-fun bs!258812 () Bool)

(assert (= bs!258812 (and b!1095851 d!309264)))

(assert (=> bs!258812 (not (= lambda!42598 lambda!42597))))

(declare-fun bs!258813 () Bool)

(assert (= bs!258813 (and b!1095851 d!308628)))

(assert (=> bs!258813 (not (= lambda!42598 lambda!42567))))

(declare-fun bs!258814 () Bool)

(assert (= bs!258814 (and b!1095851 b!1095081)))

(assert (=> bs!258814 (not (= lambda!42598 lambda!42569))))

(declare-fun bs!258815 () Bool)

(assert (= bs!258815 (and b!1095851 d!308738)))

(assert (=> bs!258815 (not (= lambda!42598 lambda!42572))))

(assert (=> bs!258808 (not (= lambda!42598 lambda!42596))))

(assert (=> bs!258814 (not (= lambda!42598 lambda!42571))))

(assert (=> bs!258811 (not (= lambda!42598 lambda!42459))))

(assert (=> bs!258814 (not (= lambda!42598 lambda!42570))))

(assert (=> bs!258808 (not (= lambda!42598 lambda!42595))))

(assert (=> bs!258811 (not (= lambda!42598 lambda!42460))))

(assert (=> bs!258814 (= (= (_1!6689 lt!369356) (_1!6689 lt!368989)) (= lambda!42598 lambda!42568))))

(assert (=> bs!258808 (= (= (_1!6689 lt!369356) (_1!6689 lt!369317)) (= lambda!42598 lambda!42593))))

(declare-fun b!1095855 () Bool)

(declare-fun e!693773 () Bool)

(assert (=> b!1095855 (= e!693773 true)))

(declare-fun b!1095854 () Bool)

(declare-fun e!693772 () Bool)

(assert (=> b!1095854 (= e!693772 e!693773)))

(assert (=> b!1095851 e!693772))

(assert (= b!1095854 b!1095855))

(assert (= b!1095851 b!1095854))

(declare-fun lambda!42599 () Int)

(assert (=> bs!258808 (= (= (_1!6689 lt!369356) (_1!6689 lt!369317)) (= lambda!42599 lambda!42594))))

(assert (=> bs!258809 (not (= lambda!42599 lambda!42563))))

(assert (=> bs!258809 (not (= lambda!42599 lambda!42566))))

(assert (=> bs!258810 (not (= lambda!42599 lambda!42457))))

(assert (=> bs!258809 (not (= lambda!42599 lambda!42565))))

(assert (=> bs!258809 (= (= (_1!6689 lt!369356) (_1!6689 lt!368940)) (= lambda!42599 lambda!42564))))

(assert (=> bs!258812 (not (= lambda!42599 lambda!42597))))

(assert (=> bs!258813 (not (= lambda!42599 lambda!42567))))

(assert (=> bs!258814 (= (= (_1!6689 lt!369356) (_1!6689 lt!368989)) (= lambda!42599 lambda!42569))))

(assert (=> bs!258815 (not (= lambda!42599 lambda!42572))))

(assert (=> bs!258808 (not (= lambda!42599 lambda!42596))))

(assert (=> bs!258814 (not (= lambda!42599 lambda!42571))))

(assert (=> bs!258811 (= (= (_1!6689 lt!369356) (_1!6689 lt!368619)) (= lambda!42599 lambda!42459))))

(assert (=> bs!258814 (not (= lambda!42599 lambda!42570))))

(assert (=> bs!258808 (not (= lambda!42599 lambda!42595))))

(assert (=> bs!258811 (not (= lambda!42599 lambda!42460))))

(assert (=> bs!258811 (not (= lambda!42599 lambda!42458))))

(assert (=> b!1095851 (not (= lambda!42599 lambda!42598))))

(assert (=> bs!258814 (not (= lambda!42599 lambda!42568))))

(assert (=> bs!258808 (not (= lambda!42599 lambda!42593))))

(declare-fun b!1095857 () Bool)

(declare-fun e!693775 () Bool)

(assert (=> b!1095857 (= e!693775 true)))

(declare-fun b!1095856 () Bool)

(declare-fun e!693774 () Bool)

(assert (=> b!1095856 (= e!693774 e!693775)))

(assert (=> b!1095851 e!693774))

(assert (= b!1095856 b!1095857))

(assert (= b!1095851 b!1095856))

(declare-fun lambda!42600 () Int)

(assert (=> bs!258808 (not (= lambda!42600 lambda!42594))))

(assert (=> bs!258809 (not (= lambda!42600 lambda!42563))))

(assert (=> bs!258809 (not (= lambda!42600 lambda!42566))))

(assert (=> bs!258809 (= (= (_1!6689 lt!369356) (_1!6689 lt!368940)) (= lambda!42600 lambda!42565))))

(assert (=> bs!258809 (not (= lambda!42600 lambda!42564))))

(assert (=> bs!258812 (not (= lambda!42600 lambda!42597))))

(assert (=> bs!258813 (not (= lambda!42600 lambda!42567))))

(assert (=> bs!258814 (not (= lambda!42600 lambda!42569))))

(assert (=> bs!258815 (not (= lambda!42600 lambda!42572))))

(assert (=> bs!258808 (not (= lambda!42600 lambda!42596))))

(assert (=> bs!258814 (not (= lambda!42600 lambda!42571))))

(assert (=> bs!258811 (not (= lambda!42600 lambda!42459))))

(assert (=> bs!258814 (= (= (_1!6689 lt!369356) (_1!6689 lt!368989)) (= lambda!42600 lambda!42570))))

(assert (=> bs!258808 (= (= (_1!6689 lt!369356) (_1!6689 lt!369317)) (= lambda!42600 lambda!42595))))

(assert (=> bs!258811 (= (= (_1!6689 lt!369356) (_1!6689 lt!368619)) (= lambda!42600 lambda!42460))))

(assert (=> b!1095851 (not (= lambda!42600 lambda!42599))))

(assert (=> bs!258810 (not (= lambda!42600 lambda!42457))))

(assert (=> bs!258811 (not (= lambda!42600 lambda!42458))))

(assert (=> b!1095851 (not (= lambda!42600 lambda!42598))))

(assert (=> bs!258814 (not (= lambda!42600 lambda!42568))))

(assert (=> bs!258808 (not (= lambda!42600 lambda!42593))))

(declare-fun b!1095859 () Bool)

(declare-fun e!693777 () Bool)

(assert (=> b!1095859 (= e!693777 true)))

(declare-fun b!1095858 () Bool)

(declare-fun e!693776 () Bool)

(assert (=> b!1095858 (= e!693776 e!693777)))

(assert (=> b!1095851 e!693776))

(assert (= b!1095858 b!1095859))

(assert (= b!1095851 b!1095858))

(declare-fun lambda!42601 () Int)

(assert (=> bs!258808 (not (= lambda!42601 lambda!42594))))

(assert (=> bs!258809 (= lambda!42601 lambda!42566)))

(assert (=> bs!258809 (not (= lambda!42601 lambda!42565))))

(assert (=> bs!258809 (not (= lambda!42601 lambda!42564))))

(assert (=> bs!258812 (= lambda!42601 lambda!42597)))

(assert (=> bs!258813 (= lambda!42601 lambda!42567)))

(assert (=> bs!258814 (not (= lambda!42601 lambda!42569))))

(assert (=> bs!258815 (= lambda!42601 lambda!42572)))

(assert (=> bs!258808 (= lambda!42601 lambda!42596)))

(assert (=> bs!258814 (= lambda!42601 lambda!42571)))

(assert (=> bs!258811 (not (= lambda!42601 lambda!42459))))

(assert (=> bs!258814 (not (= lambda!42601 lambda!42570))))

(assert (=> bs!258808 (not (= lambda!42601 lambda!42595))))

(assert (=> bs!258811 (not (= lambda!42601 lambda!42460))))

(assert (=> bs!258809 (not (= lambda!42601 lambda!42563))))

(assert (=> b!1095851 (not (= lambda!42601 lambda!42600))))

(assert (=> b!1095851 (not (= lambda!42601 lambda!42599))))

(assert (=> bs!258810 (= lambda!42601 lambda!42457)))

(assert (=> bs!258811 (not (= lambda!42601 lambda!42458))))

(assert (=> b!1095851 (not (= lambda!42601 lambda!42598))))

(assert (=> bs!258814 (not (= lambda!42601 lambda!42568))))

(assert (=> bs!258808 (not (= lambda!42601 lambda!42593))))

(declare-fun bs!258816 () Bool)

(declare-fun d!309280 () Bool)

(assert (= bs!258816 (and d!309280 b!1095829)))

(declare-fun lambda!42602 () Int)

(assert (=> bs!258816 (not (= lambda!42602 lambda!42594))))

(declare-fun bs!258817 () Bool)

(assert (= bs!258817 (and d!309280 b!1095045)))

(assert (=> bs!258817 (= lambda!42602 lambda!42566)))

(assert (=> bs!258817 (not (= lambda!42602 lambda!42565))))

(assert (=> bs!258817 (not (= lambda!42602 lambda!42564))))

(declare-fun bs!258818 () Bool)

(assert (= bs!258818 (and d!309280 d!309264)))

(assert (=> bs!258818 (= lambda!42602 lambda!42597)))

(declare-fun bs!258819 () Bool)

(assert (= bs!258819 (and d!309280 d!308628)))

(assert (=> bs!258819 (= lambda!42602 lambda!42567)))

(declare-fun bs!258820 () Bool)

(assert (= bs!258820 (and d!309280 b!1095081)))

(assert (=> bs!258820 (not (= lambda!42602 lambda!42569))))

(declare-fun bs!258821 () Bool)

(assert (= bs!258821 (and d!309280 d!308738)))

(assert (=> bs!258821 (= lambda!42602 lambda!42572)))

(assert (=> bs!258816 (= lambda!42602 lambda!42596)))

(assert (=> bs!258820 (= lambda!42602 lambda!42571)))

(declare-fun bs!258822 () Bool)

(assert (= bs!258822 (and d!309280 b!1094737)))

(assert (=> bs!258822 (not (= lambda!42602 lambda!42459))))

(assert (=> bs!258820 (not (= lambda!42602 lambda!42570))))

(assert (=> bs!258816 (not (= lambda!42602 lambda!42595))))

(assert (=> bs!258822 (not (= lambda!42602 lambda!42460))))

(assert (=> bs!258817 (not (= lambda!42602 lambda!42563))))

(declare-fun bs!258823 () Bool)

(assert (= bs!258823 (and d!309280 b!1095851)))

(assert (=> bs!258823 (not (= lambda!42602 lambda!42600))))

(assert (=> bs!258823 (not (= lambda!42602 lambda!42599))))

(declare-fun bs!258824 () Bool)

(assert (= bs!258824 (and d!309280 start!93782)))

(assert (=> bs!258824 (= lambda!42602 lambda!42457)))

(assert (=> bs!258822 (not (= lambda!42602 lambda!42458))))

(assert (=> bs!258823 (not (= lambda!42602 lambda!42598))))

(assert (=> bs!258823 (= lambda!42602 lambda!42601)))

(assert (=> bs!258820 (not (= lambda!42602 lambda!42568))))

(assert (=> bs!258816 (not (= lambda!42602 lambda!42593))))

(declare-fun b!1095842 () Bool)

(assert (=> b!1095842 true))

(declare-fun lt!369366 () BalanceConc!6472)

(declare-fun lt!369375 () Unit!16034)

(assert (=> b!1095842 (= lt!369375 (forallContained!502 (list!3778 lt!369366) lambda!42598 lt!369356))))

(declare-fun e!693770 () Unit!16034)

(declare-fun err!2375 () Unit!16034)

(assert (=> b!1095842 (= e!693770 err!2375)))

(declare-fun b!1095843 () Bool)

(declare-fun e!693767 () Bool)

(declare-fun lt!369372 () List!10546)

(assert (=> b!1095843 (= e!693767 (< (size!8149 (filter!276 lt!369372 lambda!42600)) (size!8149 lt!369372)))))

(declare-fun b!1095844 () Bool)

(declare-fun e!693765 () BalanceConc!6472)

(assert (=> b!1095844 (= e!693765 lt!368950)))

(declare-fun b!1095845 () Bool)

(assert (=> b!1095845 true))

(declare-fun lt!369364 () Unit!16034)

(declare-fun lt!369371 () BalanceConc!6472)

(assert (=> b!1095845 (= lt!369364 (forallContained!502 (list!3778 lt!369371) lambda!42600 lt!369356))))

(declare-fun e!693771 () Unit!16034)

(declare-fun err!2377 () Unit!16034)

(assert (=> b!1095845 (= e!693771 err!2377)))

(declare-fun b!1095846 () Bool)

(declare-fun e!693769 () Unit!16034)

(declare-fun Unit!16065 () Unit!16034)

(assert (=> b!1095846 (= e!693769 Unit!16065)))

(declare-fun b!1095847 () Bool)

(declare-fun Unit!16066 () Unit!16034)

(assert (=> b!1095847 (= e!693771 Unit!16066)))

(declare-fun lt!369368 () BalanceConc!6472)

(assert (=> d!309280 (forall!2375 lt!369368 lambda!42602)))

(assert (=> d!309280 (= lt!369368 e!693765)))

(declare-fun c!185914 () Bool)

(assert (=> d!309280 (= c!185914 (<= (size!8150 lt!368950) 1))))

(assert (=> d!309280 (= (sortObjectsByID!0 lt!368950) lt!369368)))

(declare-fun b!1095848 () Bool)

(declare-fun e!693768 () Unit!16034)

(declare-fun Unit!16067 () Unit!16034)

(assert (=> b!1095848 (= e!693768 Unit!16067)))

(declare-fun b!1095849 () Bool)

(declare-fun Unit!16068 () Unit!16034)

(assert (=> b!1095849 (= e!693770 Unit!16068)))

(declare-fun b!1095850 () Bool)

(assert (=> b!1095850 true))

(declare-fun lt!369370 () Unit!16034)

(assert (=> b!1095850 (= lt!369370 (forallContained!502 (list!3778 lt!368950) lambda!42600 lt!369356))))

(declare-fun err!2374 () Unit!16034)

(assert (=> b!1095850 (= e!693769 err!2374)))

(declare-fun lt!369360 () BalanceConc!6472)

(assert (=> b!1095851 (= e!693765 (++!2857 (++!2857 (sortObjectsByID!0 lt!369366) lt!369360) (sortObjectsByID!0 lt!369371)))))

(assert (=> b!1095851 (= lt!369356 (apply!2077 lt!368950 (ite (>= (size!8150 lt!368950) 0) (div (size!8150 lt!368950) 2) (- (div (- (size!8150 lt!368950)) 2)))))))

(assert (=> b!1095851 (= lt!369366 (filter!277 lt!368950 lambda!42598))))

(assert (=> b!1095851 (= lt!369360 (filter!277 lt!368950 lambda!42599))))

(assert (=> b!1095851 (= lt!369371 (filter!277 lt!368950 lambda!42600))))

(declare-fun c!185915 () Bool)

(assert (=> b!1095851 (= c!185915 (contains!1798 lt!369366 lt!369356))))

(declare-fun lt!369387 () Unit!16034)

(assert (=> b!1095851 (= lt!369387 e!693770)))

(declare-fun c!185917 () Bool)

(assert (=> b!1095851 (= c!185917 (forall!2375 lt!368950 lambda!42598))))

(declare-fun lt!369389 () Unit!16034)

(assert (=> b!1095851 (= lt!369389 e!693768)))

(declare-fun lt!369385 () List!10546)

(assert (=> b!1095851 (= lt!369385 (list!3778 lt!368950))))

(declare-fun lt!369390 () Unit!16034)

(assert (=> b!1095851 (= lt!369390 (lemmaNotForallFilterShorter!43 lt!369385 lambda!42598))))

(declare-fun res!486586 () Bool)

(assert (=> b!1095851 (= res!486586 (isEmpty!6672 lt!369385))))

(declare-fun e!693766 () Bool)

(assert (=> b!1095851 (=> res!486586 e!693766)))

(assert (=> b!1095851 e!693766))

(declare-fun lt!369380 () Unit!16034)

(assert (=> b!1095851 (= lt!369380 lt!369390)))

(declare-fun c!185918 () Bool)

(assert (=> b!1095851 (= c!185918 (contains!1798 lt!369371 lt!369356))))

(declare-fun lt!369391 () Unit!16034)

(assert (=> b!1095851 (= lt!369391 e!693771)))

(declare-fun c!185916 () Bool)

(assert (=> b!1095851 (= c!185916 (forall!2375 lt!368950 lambda!42600))))

(declare-fun lt!369376 () Unit!16034)

(assert (=> b!1095851 (= lt!369376 e!693769)))

(assert (=> b!1095851 (= lt!369372 (list!3778 lt!368950))))

(declare-fun lt!369388 () Unit!16034)

(assert (=> b!1095851 (= lt!369388 (lemmaNotForallFilterShorter!43 lt!369372 lambda!42600))))

(declare-fun res!486587 () Bool)

(assert (=> b!1095851 (= res!486587 (isEmpty!6672 lt!369372))))

(assert (=> b!1095851 (=> res!486587 e!693767)))

(assert (=> b!1095851 e!693767))

(declare-fun lt!369358 () Unit!16034)

(assert (=> b!1095851 (= lt!369358 lt!369388)))

(declare-fun lt!369379 () Unit!16034)

(assert (=> b!1095851 (= lt!369379 (filterSubseq!37 (list!3778 lt!368950) lambda!42598))))

(declare-fun lt!369359 () Unit!16034)

(assert (=> b!1095851 (= lt!369359 (filterSubseq!37 (list!3778 lt!368950) lambda!42599))))

(declare-fun lt!369363 () Unit!16034)

(assert (=> b!1095851 (= lt!369363 (filterSubseq!37 (list!3778 lt!368950) lambda!42600))))

(declare-fun lt!369384 () List!10546)

(assert (=> b!1095851 (= lt!369384 (list!3778 (filter!277 lt!368950 lambda!42598)))))

(declare-fun lt!369357 () List!10546)

(assert (=> b!1095851 (= lt!369357 (list!3778 lt!368950))))

(declare-fun lt!369373 () Unit!16034)

(assert (=> b!1095851 (= lt!369373 (lemmaForallSubseq!45 lt!369384 lt!369357 lambda!42601))))

(assert (=> b!1095851 (forall!2374 lt!369384 lambda!42601)))

(declare-fun lt!369367 () Unit!16034)

(assert (=> b!1095851 (= lt!369367 lt!369373)))

(declare-fun lt!369381 () List!10546)

(assert (=> b!1095851 (= lt!369381 (list!3778 (filter!277 lt!368950 lambda!42599)))))

(declare-fun lt!369377 () List!10546)

(assert (=> b!1095851 (= lt!369377 (list!3778 lt!368950))))

(declare-fun lt!369365 () Unit!16034)

(assert (=> b!1095851 (= lt!369365 (lemmaForallSubseq!45 lt!369381 lt!369377 lambda!42601))))

(assert (=> b!1095851 (forall!2374 lt!369381 lambda!42601)))

(declare-fun lt!369374 () Unit!16034)

(assert (=> b!1095851 (= lt!369374 lt!369365)))

(declare-fun lt!369382 () List!10546)

(assert (=> b!1095851 (= lt!369382 (list!3778 (filter!277 lt!368950 lambda!42600)))))

(declare-fun lt!369383 () List!10546)

(assert (=> b!1095851 (= lt!369383 (list!3778 lt!368950))))

(declare-fun lt!369369 () Unit!16034)

(assert (=> b!1095851 (= lt!369369 (lemmaForallSubseq!45 lt!369382 lt!369383 lambda!42601))))

(assert (=> b!1095851 (forall!2374 lt!369382 lambda!42601)))

(declare-fun lt!369362 () Unit!16034)

(assert (=> b!1095851 (= lt!369362 lt!369369)))

(declare-fun lt!369378 () Unit!16034)

(assert (=> b!1095851 (= lt!369378 (lemmaConcatPreservesForall!88 (list!3778 (sortObjectsByID!0 lt!369366)) (list!3778 lt!369360) lambda!42601))))

(declare-fun lt!369361 () Unit!16034)

(assert (=> b!1095851 (= lt!369361 (lemmaConcatPreservesForall!88 (++!2855 (list!3778 (sortObjectsByID!0 lt!369366)) (list!3778 lt!369360)) (list!3778 (sortObjectsByID!0 lt!369371)) lambda!42601))))

(declare-fun b!1095852 () Bool)

(assert (=> b!1095852 (= e!693766 (< (size!8149 (filter!276 lt!369385 lambda!42598)) (size!8149 lt!369385)))))

(declare-fun b!1095853 () Bool)

(assert (=> b!1095853 true))

(declare-fun lt!369386 () Unit!16034)

(assert (=> b!1095853 (= lt!369386 (forallContained!502 (list!3778 lt!368950) lambda!42598 lt!369356))))

(declare-fun err!2376 () Unit!16034)

(assert (=> b!1095853 (= e!693768 err!2376)))

(assert (= (and d!309280 c!185914) b!1095844))

(assert (= (and d!309280 (not c!185914)) b!1095851))

(assert (= (and b!1095851 c!185915) b!1095842))

(assert (= (and b!1095851 (not c!185915)) b!1095849))

(assert (= (and b!1095851 c!185917) b!1095853))

(assert (= (and b!1095851 (not c!185917)) b!1095848))

(assert (= (and b!1095851 (not res!486586)) b!1095852))

(assert (= (and b!1095851 c!185918) b!1095845))

(assert (= (and b!1095851 (not c!185918)) b!1095847))

(assert (= (and b!1095851 c!185916) b!1095850))

(assert (= (and b!1095851 (not c!185916)) b!1095846))

(assert (= (and b!1095851 (not res!486587)) b!1095843))

(declare-fun m!1250123 () Bool)

(assert (=> b!1095851 m!1250123))

(declare-fun m!1250125 () Bool)

(assert (=> b!1095851 m!1250125))

(declare-fun m!1250127 () Bool)

(assert (=> b!1095851 m!1250127))

(declare-fun m!1250129 () Bool)

(assert (=> b!1095851 m!1250129))

(declare-fun m!1250131 () Bool)

(assert (=> b!1095851 m!1250131))

(assert (=> b!1095851 m!1250123))

(declare-fun m!1250133 () Bool)

(assert (=> b!1095851 m!1250133))

(assert (=> b!1095851 m!1250131))

(declare-fun m!1250135 () Bool)

(assert (=> b!1095851 m!1250135))

(declare-fun m!1250137 () Bool)

(assert (=> b!1095851 m!1250137))

(declare-fun m!1250139 () Bool)

(assert (=> b!1095851 m!1250139))

(declare-fun m!1250141 () Bool)

(assert (=> b!1095851 m!1250141))

(declare-fun m!1250143 () Bool)

(assert (=> b!1095851 m!1250143))

(assert (=> b!1095851 m!1250129))

(declare-fun m!1250145 () Bool)

(assert (=> b!1095851 m!1250145))

(declare-fun m!1250147 () Bool)

(assert (=> b!1095851 m!1250147))

(declare-fun m!1250149 () Bool)

(assert (=> b!1095851 m!1250149))

(declare-fun m!1250151 () Bool)

(assert (=> b!1095851 m!1250151))

(declare-fun m!1250153 () Bool)

(assert (=> b!1095851 m!1250153))

(assert (=> b!1095851 m!1248347))

(assert (=> b!1095851 m!1250139))

(declare-fun m!1250155 () Bool)

(assert (=> b!1095851 m!1250155))

(assert (=> b!1095851 m!1250139))

(declare-fun m!1250157 () Bool)

(assert (=> b!1095851 m!1250157))

(declare-fun m!1250159 () Bool)

(assert (=> b!1095851 m!1250159))

(assert (=> b!1095851 m!1250125))

(assert (=> b!1095851 m!1250123))

(assert (=> b!1095851 m!1250125))

(declare-fun m!1250161 () Bool)

(assert (=> b!1095851 m!1250161))

(assert (=> b!1095851 m!1250131))

(assert (=> b!1095851 m!1250155))

(assert (=> b!1095851 m!1248347))

(declare-fun m!1250163 () Bool)

(assert (=> b!1095851 m!1250163))

(declare-fun m!1250165 () Bool)

(assert (=> b!1095851 m!1250165))

(declare-fun m!1250167 () Bool)

(assert (=> b!1095851 m!1250167))

(declare-fun m!1250169 () Bool)

(assert (=> b!1095851 m!1250169))

(assert (=> b!1095851 m!1250169))

(declare-fun m!1250171 () Bool)

(assert (=> b!1095851 m!1250171))

(declare-fun m!1250173 () Bool)

(assert (=> b!1095851 m!1250173))

(assert (=> b!1095851 m!1248347))

(declare-fun m!1250175 () Bool)

(assert (=> b!1095851 m!1250175))

(declare-fun m!1250177 () Bool)

(assert (=> b!1095851 m!1250177))

(assert (=> b!1095851 m!1250127))

(assert (=> b!1095851 m!1250141))

(declare-fun m!1250179 () Bool)

(assert (=> b!1095851 m!1250179))

(assert (=> b!1095851 m!1250129))

(declare-fun m!1250181 () Bool)

(assert (=> b!1095851 m!1250181))

(assert (=> b!1095851 m!1248347))

(declare-fun m!1250183 () Bool)

(assert (=> b!1095851 m!1250183))

(declare-fun m!1250185 () Bool)

(assert (=> b!1095851 m!1250185))

(declare-fun m!1250187 () Bool)

(assert (=> b!1095851 m!1250187))

(assert (=> b!1095851 m!1250167))

(declare-fun m!1250189 () Bool)

(assert (=> b!1095851 m!1250189))

(declare-fun m!1250191 () Bool)

(assert (=> b!1095851 m!1250191))

(assert (=> b!1095851 m!1250167))

(assert (=> b!1095851 m!1250169))

(declare-fun m!1250193 () Bool)

(assert (=> b!1095852 m!1250193))

(assert (=> b!1095852 m!1250193))

(declare-fun m!1250195 () Bool)

(assert (=> b!1095852 m!1250195))

(declare-fun m!1250197 () Bool)

(assert (=> b!1095852 m!1250197))

(assert (=> b!1095853 m!1248347))

(assert (=> b!1095853 m!1248347))

(declare-fun m!1250199 () Bool)

(assert (=> b!1095853 m!1250199))

(declare-fun m!1250201 () Bool)

(assert (=> b!1095842 m!1250201))

(assert (=> b!1095842 m!1250201))

(declare-fun m!1250203 () Bool)

(assert (=> b!1095842 m!1250203))

(assert (=> b!1095850 m!1248347))

(assert (=> b!1095850 m!1248347))

(declare-fun m!1250205 () Bool)

(assert (=> b!1095850 m!1250205))

(declare-fun m!1250207 () Bool)

(assert (=> b!1095843 m!1250207))

(assert (=> b!1095843 m!1250207))

(declare-fun m!1250209 () Bool)

(assert (=> b!1095843 m!1250209))

(declare-fun m!1250211 () Bool)

(assert (=> b!1095843 m!1250211))

(declare-fun m!1250213 () Bool)

(assert (=> b!1095845 m!1250213))

(assert (=> b!1095845 m!1250213))

(declare-fun m!1250215 () Bool)

(assert (=> b!1095845 m!1250215))

(declare-fun m!1250217 () Bool)

(assert (=> d!309280 m!1250217))

(assert (=> d!309280 m!1250149))

(assert (=> b!1095045 d!309280))

(declare-fun d!309282 () Bool)

(assert (=> d!309282 (subseq!148 (filter!276 (list!3778 lt!368606) lambda!42564) (list!3778 lt!368606))))

(declare-fun lt!369392 () Unit!16034)

(assert (=> d!309282 (= lt!369392 (choose!7057 (list!3778 lt!368606) lambda!42564))))

(assert (=> d!309282 (= (filterSubseq!37 (list!3778 lt!368606) lambda!42564) lt!369392)))

(declare-fun bs!258825 () Bool)

(assert (= bs!258825 d!309282))

(assert (=> bs!258825 m!1247675))

(declare-fun m!1250219 () Bool)

(assert (=> bs!258825 m!1250219))

(assert (=> bs!258825 m!1250219))

(assert (=> bs!258825 m!1247675))

(declare-fun m!1250221 () Bool)

(assert (=> bs!258825 m!1250221))

(assert (=> bs!258825 m!1247675))

(declare-fun m!1250223 () Bool)

(assert (=> bs!258825 m!1250223))

(assert (=> b!1095045 d!309282))

(declare-fun d!309284 () Bool)

(declare-fun e!693778 () Bool)

(assert (=> d!309284 e!693778))

(declare-fun res!486588 () Bool)

(assert (=> d!309284 (=> res!486588 e!693778)))

(assert (=> d!309284 (= res!486588 (isEmpty!6672 lt!368956))))

(declare-fun lt!369393 () Unit!16034)

(assert (=> d!309284 (= lt!369393 (choose!7055 lt!368956 lambda!42565))))

(assert (=> d!309284 (not (forall!2374 lt!368956 lambda!42565))))

(assert (=> d!309284 (= (lemmaNotForallFilterShorter!43 lt!368956 lambda!42565) lt!369393)))

(declare-fun b!1095860 () Bool)

(assert (=> b!1095860 (= e!693778 (< (size!8149 (filter!276 lt!368956 lambda!42565)) (size!8149 lt!368956)))))

(assert (= (and d!309284 (not res!486588)) b!1095860))

(assert (=> d!309284 m!1248331))

(declare-fun m!1250225 () Bool)

(assert (=> d!309284 m!1250225))

(declare-fun m!1250227 () Bool)

(assert (=> d!309284 m!1250227))

(assert (=> b!1095860 m!1248353))

(assert (=> b!1095860 m!1248353))

(assert (=> b!1095860 m!1248355))

(assert (=> b!1095860 m!1248357))

(assert (=> b!1095045 d!309284))

(declare-fun d!309286 () Bool)

(assert (=> d!309286 (= (list!3778 (filter!277 lt!368606 lambda!42565)) (list!3780 (c!185681 (filter!277 lt!368606 lambda!42565))))))

(declare-fun bs!258826 () Bool)

(assert (= bs!258826 d!309286))

(declare-fun m!1250229 () Bool)

(assert (=> bs!258826 m!1250229))

(assert (=> b!1095045 d!309286))

(declare-fun d!309288 () Bool)

(assert (=> d!309288 (= (list!3778 (sortObjectsByID!0 lt!368955)) (list!3780 (c!185681 (sortObjectsByID!0 lt!368955))))))

(declare-fun bs!258827 () Bool)

(assert (= bs!258827 d!309288))

(declare-fun m!1250231 () Bool)

(assert (=> bs!258827 m!1250231))

(assert (=> b!1095045 d!309288))

(declare-fun d!309290 () Bool)

(assert (=> d!309290 (subseq!148 (filter!276 (list!3778 lt!368606) lambda!42565) (list!3778 lt!368606))))

(declare-fun lt!369394 () Unit!16034)

(assert (=> d!309290 (= lt!369394 (choose!7057 (list!3778 lt!368606) lambda!42565))))

(assert (=> d!309290 (= (filterSubseq!37 (list!3778 lt!368606) lambda!42565) lt!369394)))

(declare-fun bs!258828 () Bool)

(assert (= bs!258828 d!309290))

(assert (=> bs!258828 m!1247675))

(declare-fun m!1250233 () Bool)

(assert (=> bs!258828 m!1250233))

(assert (=> bs!258828 m!1250233))

(assert (=> bs!258828 m!1247675))

(declare-fun m!1250235 () Bool)

(assert (=> bs!258828 m!1250235))

(assert (=> bs!258828 m!1247675))

(declare-fun m!1250237 () Bool)

(assert (=> bs!258828 m!1250237))

(assert (=> b!1095045 d!309290))

(declare-fun d!309292 () Bool)

(assert (=> d!309292 (forall!2374 (++!2855 (list!3778 (sortObjectsByID!0 lt!368950)) (list!3778 lt!368944)) lambda!42566)))

(declare-fun lt!369395 () Unit!16034)

(assert (=> d!309292 (= lt!369395 (choose!7059 (list!3778 (sortObjectsByID!0 lt!368950)) (list!3778 lt!368944) lambda!42566))))

(assert (=> d!309292 (forall!2374 (list!3778 (sortObjectsByID!0 lt!368950)) lambda!42566)))

(assert (=> d!309292 (= (lemmaConcatPreservesForall!88 (list!3778 (sortObjectsByID!0 lt!368950)) (list!3778 lt!368944) lambda!42566) lt!369395)))

(declare-fun bs!258829 () Bool)

(assert (= bs!258829 d!309292))

(assert (=> bs!258829 m!1248271))

(assert (=> bs!258829 m!1248273))

(assert (=> bs!258829 m!1248275))

(assert (=> bs!258829 m!1248275))

(assert (=> bs!258829 m!1249993))

(assert (=> bs!258829 m!1248271))

(assert (=> bs!258829 m!1248273))

(declare-fun m!1250239 () Bool)

(assert (=> bs!258829 m!1250239))

(assert (=> bs!258829 m!1248271))

(declare-fun m!1250241 () Bool)

(assert (=> bs!258829 m!1250241))

(assert (=> b!1095045 d!309292))

(declare-fun d!309294 () Bool)

(declare-fun lt!369396 () Bool)

(assert (=> d!309294 (= lt!369396 (contains!1801 (list!3778 lt!368955) lt!368940))))

(assert (=> d!309294 (= lt!369396 (contains!1802 (c!185681 lt!368955) lt!368940))))

(assert (=> d!309294 (= (contains!1798 lt!368955 lt!368940) lt!369396)))

(declare-fun bs!258830 () Bool)

(assert (= bs!258830 d!309294))

(assert (=> bs!258830 m!1248359))

(assert (=> bs!258830 m!1248359))

(declare-fun m!1250243 () Bool)

(assert (=> bs!258830 m!1250243))

(declare-fun m!1250245 () Bool)

(assert (=> bs!258830 m!1250245))

(assert (=> b!1095045 d!309294))

(declare-fun d!309296 () Bool)

(declare-fun lt!369397 () Bool)

(assert (=> d!309296 (= lt!369397 (forall!2374 (list!3778 lt!368606) lambda!42563))))

(assert (=> d!309296 (= lt!369397 (forall!2377 (c!185681 lt!368606) lambda!42563))))

(assert (=> d!309296 (= (forall!2375 lt!368606 lambda!42563) lt!369397)))

(declare-fun bs!258831 () Bool)

(assert (= bs!258831 d!309296))

(assert (=> bs!258831 m!1247675))

(assert (=> bs!258831 m!1247675))

(assert (=> bs!258831 m!1249983))

(declare-fun m!1250247 () Bool)

(assert (=> bs!258831 m!1250247))

(assert (=> b!1095045 d!309296))

(declare-fun d!309298 () Bool)

(assert (=> d!309298 (forall!2374 lt!368966 lambda!42566)))

(declare-fun lt!369398 () Unit!16034)

(assert (=> d!309298 (= lt!369398 (choose!7058 lt!368966 lt!368967 lambda!42566))))

(assert (=> d!309298 (forall!2374 lt!368967 lambda!42566)))

(assert (=> d!309298 (= (lemmaForallSubseq!45 lt!368966 lt!368967 lambda!42566) lt!369398)))

(declare-fun bs!258832 () Bool)

(assert (= bs!258832 d!309298))

(assert (=> bs!258832 m!1248311))

(declare-fun m!1250249 () Bool)

(assert (=> bs!258832 m!1250249))

(declare-fun m!1250251 () Bool)

(assert (=> bs!258832 m!1250251))

(assert (=> b!1095045 d!309298))

(declare-fun d!309300 () Bool)

(declare-fun lt!369399 () tuple2!11726)

(assert (=> d!309300 (= lt!369399 (apply!2078 (list!3778 lt!368606) (ite (>= (size!8150 lt!368606) 0) (div (size!8150 lt!368606) 2) (- (div (- (size!8150 lt!368606)) 2)))))))

(assert (=> d!309300 (= lt!369399 (apply!2079 (c!185681 lt!368606) (ite (>= (size!8150 lt!368606) 0) (div (size!8150 lt!368606) 2) (- (div (- (size!8150 lt!368606)) 2)))))))

(declare-fun e!693779 () Bool)

(assert (=> d!309300 e!693779))

(declare-fun res!486589 () Bool)

(assert (=> d!309300 (=> (not res!486589) (not e!693779))))

(assert (=> d!309300 (= res!486589 (<= 0 (ite (>= (size!8150 lt!368606) 0) (div (size!8150 lt!368606) 2) (- (div (- (size!8150 lt!368606)) 2)))))))

(assert (=> d!309300 (= (apply!2077 lt!368606 (ite (>= (size!8150 lt!368606) 0) (div (size!8150 lt!368606) 2) (- (div (- (size!8150 lt!368606)) 2)))) lt!369399)))

(declare-fun b!1095861 () Bool)

(assert (=> b!1095861 (= e!693779 (< (ite (>= (size!8150 lt!368606) 0) (div (size!8150 lt!368606) 2) (- (div (- (size!8150 lt!368606)) 2))) (size!8150 lt!368606)))))

(assert (= (and d!309300 res!486589) b!1095861))

(assert (=> d!309300 m!1247675))

(assert (=> d!309300 m!1247675))

(declare-fun m!1250253 () Bool)

(assert (=> d!309300 m!1250253))

(declare-fun m!1250255 () Bool)

(assert (=> d!309300 m!1250255))

(assert (=> b!1095861 m!1247727))

(assert (=> b!1095045 d!309300))

(declare-fun d!309302 () Bool)

(declare-fun e!693780 () Bool)

(assert (=> d!309302 e!693780))

(declare-fun res!486590 () Bool)

(assert (=> d!309302 (=> (not res!486590) (not e!693780))))

(assert (=> d!309302 (= res!486590 (isBalanced!892 (filter!279 (c!185681 lt!368606) lambda!42563)))))

(declare-fun lt!369400 () BalanceConc!6472)

(assert (=> d!309302 (= lt!369400 (BalanceConc!6473 (filter!279 (c!185681 lt!368606) lambda!42563)))))

(assert (=> d!309302 (= (filter!277 lt!368606 lambda!42563) lt!369400)))

(declare-fun b!1095862 () Bool)

(assert (=> b!1095862 (= e!693780 (= (list!3778 lt!369400) (filter!276 (list!3778 lt!368606) lambda!42563)))))

(assert (= (and d!309302 res!486590) b!1095862))

(declare-fun m!1250257 () Bool)

(assert (=> d!309302 m!1250257))

(assert (=> d!309302 m!1250257))

(declare-fun m!1250259 () Bool)

(assert (=> d!309302 m!1250259))

(declare-fun m!1250261 () Bool)

(assert (=> b!1095862 m!1250261))

(assert (=> b!1095862 m!1247675))

(assert (=> b!1095862 m!1247675))

(assert (=> b!1095862 m!1250107))

(assert (=> b!1095045 d!309302))

(declare-fun d!309304 () Bool)

(assert (=> d!309304 (= (isEmpty!6672 lt!368969) ((_ is Nil!10530) lt!368969))))

(assert (=> b!1095045 d!309304))

(declare-fun d!309306 () Bool)

(declare-fun e!693781 () Bool)

(assert (=> d!309306 e!693781))

(declare-fun res!486591 () Bool)

(assert (=> d!309306 (=> res!486591 e!693781)))

(assert (=> d!309306 (= res!486591 (isEmpty!6672 lt!368969))))

(declare-fun lt!369401 () Unit!16034)

(assert (=> d!309306 (= lt!369401 (choose!7055 lt!368969 lambda!42563))))

(assert (=> d!309306 (not (forall!2374 lt!368969 lambda!42563))))

(assert (=> d!309306 (= (lemmaNotForallFilterShorter!43 lt!368969 lambda!42563) lt!369401)))

(declare-fun b!1095863 () Bool)

(assert (=> b!1095863 (= e!693781 (< (size!8149 (filter!276 lt!368969 lambda!42563)) (size!8149 lt!368969)))))

(assert (= (and d!309306 (not res!486591)) b!1095863))

(assert (=> d!309306 m!1248323))

(declare-fun m!1250263 () Bool)

(assert (=> d!309306 m!1250263))

(declare-fun m!1250265 () Bool)

(assert (=> d!309306 m!1250265))

(assert (=> b!1095863 m!1248339))

(assert (=> b!1095863 m!1248339))

(assert (=> b!1095863 m!1248341))

(assert (=> b!1095863 m!1248343))

(assert (=> b!1095045 d!309306))

(declare-fun b!1095872 () Bool)

(declare-fun res!486601 () Bool)

(declare-fun e!693784 () Bool)

(assert (=> b!1095872 (=> (not res!486601) (not e!693784))))

(declare-fun ++!2859 (Conc!3229 Conc!3229) Conc!3229)

(assert (=> b!1095872 (= res!486601 (isBalanced!892 (++!2859 (c!185681 (sortObjectsByID!0 lt!368950)) (c!185681 lt!368944))))))

(declare-fun b!1095874 () Bool)

(declare-fun res!486602 () Bool)

(assert (=> b!1095874 (=> (not res!486602) (not e!693784))))

(declare-fun height!422 (Conc!3229) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1095874 (= res!486602 (>= (height!422 (++!2859 (c!185681 (sortObjectsByID!0 lt!368950)) (c!185681 lt!368944))) (max!0 (height!422 (c!185681 (sortObjectsByID!0 lt!368950))) (height!422 (c!185681 lt!368944)))))))

(declare-fun b!1095873 () Bool)

(declare-fun res!486603 () Bool)

(assert (=> b!1095873 (=> (not res!486603) (not e!693784))))

(assert (=> b!1095873 (= res!486603 (<= (height!422 (++!2859 (c!185681 (sortObjectsByID!0 lt!368950)) (c!185681 lt!368944))) (+ (max!0 (height!422 (c!185681 (sortObjectsByID!0 lt!368950))) (height!422 (c!185681 lt!368944))) 1)))))

(declare-fun b!1095875 () Bool)

(declare-fun lt!369404 () BalanceConc!6472)

(assert (=> b!1095875 (= e!693784 (= (list!3778 lt!369404) (++!2855 (list!3778 (sortObjectsByID!0 lt!368950)) (list!3778 lt!368944))))))

(declare-fun d!309308 () Bool)

(assert (=> d!309308 e!693784))

(declare-fun res!486600 () Bool)

(assert (=> d!309308 (=> (not res!486600) (not e!693784))))

(declare-fun appendAssocInst!208 (Conc!3229 Conc!3229) Bool)

(assert (=> d!309308 (= res!486600 (appendAssocInst!208 (c!185681 (sortObjectsByID!0 lt!368950)) (c!185681 lt!368944)))))

(assert (=> d!309308 (= lt!369404 (BalanceConc!6473 (++!2859 (c!185681 (sortObjectsByID!0 lt!368950)) (c!185681 lt!368944))))))

(assert (=> d!309308 (= (++!2857 (sortObjectsByID!0 lt!368950) lt!368944) lt!369404)))

(assert (= (and d!309308 res!486600) b!1095872))

(assert (= (and b!1095872 res!486601) b!1095873))

(assert (= (and b!1095873 res!486603) b!1095874))

(assert (= (and b!1095874 res!486602) b!1095875))

(declare-fun m!1250267 () Bool)

(assert (=> b!1095875 m!1250267))

(assert (=> b!1095875 m!1248279))

(assert (=> b!1095875 m!1248271))

(assert (=> b!1095875 m!1248273))

(assert (=> b!1095875 m!1248271))

(assert (=> b!1095875 m!1248273))

(assert (=> b!1095875 m!1248275))

(declare-fun m!1250269 () Bool)

(assert (=> b!1095872 m!1250269))

(assert (=> b!1095872 m!1250269))

(declare-fun m!1250271 () Bool)

(assert (=> b!1095872 m!1250271))

(declare-fun m!1250273 () Bool)

(assert (=> b!1095874 m!1250273))

(assert (=> b!1095874 m!1250269))

(declare-fun m!1250275 () Bool)

(assert (=> b!1095874 m!1250275))

(assert (=> b!1095874 m!1250269))

(declare-fun m!1250277 () Bool)

(assert (=> b!1095874 m!1250277))

(assert (=> b!1095874 m!1250277))

(assert (=> b!1095874 m!1250273))

(declare-fun m!1250279 () Bool)

(assert (=> b!1095874 m!1250279))

(assert (=> b!1095873 m!1250273))

(assert (=> b!1095873 m!1250269))

(assert (=> b!1095873 m!1250275))

(assert (=> b!1095873 m!1250269))

(assert (=> b!1095873 m!1250277))

(assert (=> b!1095873 m!1250277))

(assert (=> b!1095873 m!1250273))

(assert (=> b!1095873 m!1250279))

(declare-fun m!1250281 () Bool)

(assert (=> d!309308 m!1250281))

(assert (=> d!309308 m!1250269))

(assert (=> b!1095045 d!309308))

(assert (=> b!1095045 d!308598))

(declare-fun d!309310 () Bool)

(assert (=> d!309310 (= (list!3778 (sortObjectsByID!0 lt!368950)) (list!3780 (c!185681 (sortObjectsByID!0 lt!368950))))))

(declare-fun bs!258833 () Bool)

(assert (= bs!258833 d!309310))

(declare-fun m!1250283 () Bool)

(assert (=> bs!258833 m!1250283))

(assert (=> b!1095045 d!309310))

(declare-fun b!1095878 () Bool)

(declare-fun res!486604 () Bool)

(declare-fun e!693785 () Bool)

(assert (=> b!1095878 (=> (not res!486604) (not e!693785))))

(declare-fun lt!369405 () List!10546)

(assert (=> b!1095878 (= res!486604 (= (size!8149 lt!369405) (+ (size!8149 (list!3778 (sortObjectsByID!0 lt!368950))) (size!8149 (list!3778 lt!368944)))))))

(declare-fun b!1095877 () Bool)

(declare-fun e!693786 () List!10546)

(assert (=> b!1095877 (= e!693786 (Cons!10530 (h!15931 (list!3778 (sortObjectsByID!0 lt!368950))) (++!2855 (t!103088 (list!3778 (sortObjectsByID!0 lt!368950))) (list!3778 lt!368944))))))

(declare-fun d!309312 () Bool)

(assert (=> d!309312 e!693785))

(declare-fun res!486605 () Bool)

(assert (=> d!309312 (=> (not res!486605) (not e!693785))))

(assert (=> d!309312 (= res!486605 (= (content!1520 lt!369405) ((_ map or) (content!1520 (list!3778 (sortObjectsByID!0 lt!368950))) (content!1520 (list!3778 lt!368944)))))))

(assert (=> d!309312 (= lt!369405 e!693786)))

(declare-fun c!185922 () Bool)

(assert (=> d!309312 (= c!185922 ((_ is Nil!10530) (list!3778 (sortObjectsByID!0 lt!368950))))))

(assert (=> d!309312 (= (++!2855 (list!3778 (sortObjectsByID!0 lt!368950)) (list!3778 lt!368944)) lt!369405)))

(declare-fun b!1095876 () Bool)

(assert (=> b!1095876 (= e!693786 (list!3778 lt!368944))))

(declare-fun b!1095879 () Bool)

(assert (=> b!1095879 (= e!693785 (or (not (= (list!3778 lt!368944) Nil!10530)) (= lt!369405 (list!3778 (sortObjectsByID!0 lt!368950)))))))

(assert (= (and d!309312 c!185922) b!1095876))

(assert (= (and d!309312 (not c!185922)) b!1095877))

(assert (= (and d!309312 res!486605) b!1095878))

(assert (= (and b!1095878 res!486604) b!1095879))

(declare-fun m!1250285 () Bool)

(assert (=> b!1095878 m!1250285))

(assert (=> b!1095878 m!1248271))

(declare-fun m!1250287 () Bool)

(assert (=> b!1095878 m!1250287))

(assert (=> b!1095878 m!1248273))

(declare-fun m!1250289 () Bool)

(assert (=> b!1095878 m!1250289))

(assert (=> b!1095877 m!1248273))

(declare-fun m!1250291 () Bool)

(assert (=> b!1095877 m!1250291))

(declare-fun m!1250293 () Bool)

(assert (=> d!309312 m!1250293))

(assert (=> d!309312 m!1248271))

(declare-fun m!1250295 () Bool)

(assert (=> d!309312 m!1250295))

(assert (=> d!309312 m!1248273))

(declare-fun m!1250297 () Bool)

(assert (=> d!309312 m!1250297))

(assert (=> b!1095045 d!309312))

(declare-fun b!1095880 () Bool)

(declare-fun res!486607 () Bool)

(declare-fun e!693787 () Bool)

(assert (=> b!1095880 (=> (not res!486607) (not e!693787))))

(assert (=> b!1095880 (= res!486607 (isBalanced!892 (++!2859 (c!185681 (++!2857 (sortObjectsByID!0 lt!368950) lt!368944)) (c!185681 (sortObjectsByID!0 lt!368955)))))))

(declare-fun b!1095882 () Bool)

(declare-fun res!486608 () Bool)

(assert (=> b!1095882 (=> (not res!486608) (not e!693787))))

(assert (=> b!1095882 (= res!486608 (>= (height!422 (++!2859 (c!185681 (++!2857 (sortObjectsByID!0 lt!368950) lt!368944)) (c!185681 (sortObjectsByID!0 lt!368955)))) (max!0 (height!422 (c!185681 (++!2857 (sortObjectsByID!0 lt!368950) lt!368944))) (height!422 (c!185681 (sortObjectsByID!0 lt!368955))))))))

(declare-fun b!1095881 () Bool)

(declare-fun res!486609 () Bool)

(assert (=> b!1095881 (=> (not res!486609) (not e!693787))))

(assert (=> b!1095881 (= res!486609 (<= (height!422 (++!2859 (c!185681 (++!2857 (sortObjectsByID!0 lt!368950) lt!368944)) (c!185681 (sortObjectsByID!0 lt!368955)))) (+ (max!0 (height!422 (c!185681 (++!2857 (sortObjectsByID!0 lt!368950) lt!368944))) (height!422 (c!185681 (sortObjectsByID!0 lt!368955)))) 1)))))

(declare-fun b!1095883 () Bool)

(declare-fun lt!369406 () BalanceConc!6472)

(assert (=> b!1095883 (= e!693787 (= (list!3778 lt!369406) (++!2855 (list!3778 (++!2857 (sortObjectsByID!0 lt!368950) lt!368944)) (list!3778 (sortObjectsByID!0 lt!368955)))))))

(declare-fun d!309314 () Bool)

(assert (=> d!309314 e!693787))

(declare-fun res!486606 () Bool)

(assert (=> d!309314 (=> (not res!486606) (not e!693787))))

(assert (=> d!309314 (= res!486606 (appendAssocInst!208 (c!185681 (++!2857 (sortObjectsByID!0 lt!368950) lt!368944)) (c!185681 (sortObjectsByID!0 lt!368955))))))

(assert (=> d!309314 (= lt!369406 (BalanceConc!6473 (++!2859 (c!185681 (++!2857 (sortObjectsByID!0 lt!368950) lt!368944)) (c!185681 (sortObjectsByID!0 lt!368955)))))))

(assert (=> d!309314 (= (++!2857 (++!2857 (sortObjectsByID!0 lt!368950) lt!368944) (sortObjectsByID!0 lt!368955)) lt!369406)))

(assert (= (and d!309314 res!486606) b!1095880))

(assert (= (and b!1095880 res!486607) b!1095881))

(assert (= (and b!1095881 res!486609) b!1095882))

(assert (= (and b!1095882 res!486608) b!1095883))

(declare-fun m!1250299 () Bool)

(assert (=> b!1095883 m!1250299))

(assert (=> b!1095883 m!1248301))

(declare-fun m!1250301 () Bool)

(assert (=> b!1095883 m!1250301))

(assert (=> b!1095883 m!1248287))

(assert (=> b!1095883 m!1248289))

(assert (=> b!1095883 m!1250301))

(assert (=> b!1095883 m!1248289))

(declare-fun m!1250303 () Bool)

(assert (=> b!1095883 m!1250303))

(declare-fun m!1250305 () Bool)

(assert (=> b!1095880 m!1250305))

(assert (=> b!1095880 m!1250305))

(declare-fun m!1250307 () Bool)

(assert (=> b!1095880 m!1250307))

(declare-fun m!1250309 () Bool)

(assert (=> b!1095882 m!1250309))

(assert (=> b!1095882 m!1250305))

(declare-fun m!1250311 () Bool)

(assert (=> b!1095882 m!1250311))

(assert (=> b!1095882 m!1250305))

(declare-fun m!1250313 () Bool)

(assert (=> b!1095882 m!1250313))

(assert (=> b!1095882 m!1250313))

(assert (=> b!1095882 m!1250309))

(declare-fun m!1250315 () Bool)

(assert (=> b!1095882 m!1250315))

(assert (=> b!1095881 m!1250309))

(assert (=> b!1095881 m!1250305))

(assert (=> b!1095881 m!1250311))

(assert (=> b!1095881 m!1250305))

(assert (=> b!1095881 m!1250313))

(assert (=> b!1095881 m!1250313))

(assert (=> b!1095881 m!1250309))

(assert (=> b!1095881 m!1250315))

(declare-fun m!1250317 () Bool)

(assert (=> d!309314 m!1250317))

(assert (=> d!309314 m!1250305))

(assert (=> b!1095045 d!309314))

(declare-fun d!309316 () Bool)

(assert (=> d!309316 (forall!2374 lt!368965 lambda!42566)))

(declare-fun lt!369407 () Unit!16034)

(assert (=> d!309316 (= lt!369407 (choose!7058 lt!368965 lt!368961 lambda!42566))))

(assert (=> d!309316 (forall!2374 lt!368961 lambda!42566)))

(assert (=> d!309316 (= (lemmaForallSubseq!45 lt!368965 lt!368961 lambda!42566) lt!369407)))

(declare-fun bs!258834 () Bool)

(assert (= bs!258834 d!309316))

(assert (=> bs!258834 m!1248305))

(declare-fun m!1250319 () Bool)

(assert (=> bs!258834 m!1250319))

(declare-fun m!1250321 () Bool)

(assert (=> bs!258834 m!1250321))

(assert (=> b!1095045 d!309316))

(declare-fun d!309318 () Bool)

(assert (=> d!309318 (= (list!3778 lt!368944) (list!3780 (c!185681 lt!368944)))))

(declare-fun bs!258835 () Bool)

(assert (= bs!258835 d!309318))

(declare-fun m!1250323 () Bool)

(assert (=> bs!258835 m!1250323))

(assert (=> b!1095045 d!309318))

(declare-fun d!309320 () Bool)

(declare-fun e!693788 () Bool)

(assert (=> d!309320 e!693788))

(declare-fun res!486610 () Bool)

(assert (=> d!309320 (=> (not res!486610) (not e!693788))))

(assert (=> d!309320 (= res!486610 (isBalanced!892 (filter!279 (c!185681 lt!368606) lambda!42564)))))

(declare-fun lt!369408 () BalanceConc!6472)

(assert (=> d!309320 (= lt!369408 (BalanceConc!6473 (filter!279 (c!185681 lt!368606) lambda!42564)))))

(assert (=> d!309320 (= (filter!277 lt!368606 lambda!42564) lt!369408)))

(declare-fun b!1095884 () Bool)

(assert (=> b!1095884 (= e!693788 (= (list!3778 lt!369408) (filter!276 (list!3778 lt!368606) lambda!42564)))))

(assert (= (and d!309320 res!486610) b!1095884))

(declare-fun m!1250325 () Bool)

(assert (=> d!309320 m!1250325))

(assert (=> d!309320 m!1250325))

(declare-fun m!1250327 () Bool)

(assert (=> d!309320 m!1250327))

(declare-fun m!1250329 () Bool)

(assert (=> b!1095884 m!1250329))

(assert (=> b!1095884 m!1247675))

(assert (=> b!1095884 m!1247675))

(assert (=> b!1095884 m!1250219))

(assert (=> b!1095045 d!309320))

(declare-fun d!309322 () Bool)

(declare-fun e!693789 () Bool)

(assert (=> d!309322 e!693789))

(declare-fun res!486611 () Bool)

(assert (=> d!309322 (=> (not res!486611) (not e!693789))))

(assert (=> d!309322 (= res!486611 (isBalanced!892 (filter!279 (c!185681 lt!368606) lambda!42565)))))

(declare-fun lt!369409 () BalanceConc!6472)

(assert (=> d!309322 (= lt!369409 (BalanceConc!6473 (filter!279 (c!185681 lt!368606) lambda!42565)))))

(assert (=> d!309322 (= (filter!277 lt!368606 lambda!42565) lt!369409)))

(declare-fun b!1095885 () Bool)

(assert (=> b!1095885 (= e!693789 (= (list!3778 lt!369409) (filter!276 (list!3778 lt!368606) lambda!42565)))))

(assert (= (and d!309322 res!486611) b!1095885))

(declare-fun m!1250331 () Bool)

(assert (=> d!309322 m!1250331))

(assert (=> d!309322 m!1250331))

(declare-fun m!1250333 () Bool)

(assert (=> d!309322 m!1250333))

(declare-fun m!1250335 () Bool)

(assert (=> b!1095885 m!1250335))

(assert (=> b!1095885 m!1247675))

(assert (=> b!1095885 m!1247675))

(assert (=> b!1095885 m!1250233))

(assert (=> b!1095045 d!309322))

(declare-fun d!309324 () Bool)

(assert (=> d!309324 (= (list!3778 (filter!277 lt!368606 lambda!42564)) (list!3780 (c!185681 (filter!277 lt!368606 lambda!42564))))))

(declare-fun bs!258836 () Bool)

(assert (= bs!258836 d!309324))

(declare-fun m!1250337 () Bool)

(assert (=> bs!258836 m!1250337))

(assert (=> b!1095045 d!309324))

(declare-fun d!309326 () Bool)

(declare-datatypes ((JsonLexer!294 0))(
  ( (JsonLexer!295) )
))
(declare-fun rules!109 (JsonLexer!294) List!10545)

(assert (=> d!309326 (= (usesJsonRules!0 (_2!6689 (h!15931 lt!368613))) (= (rules!9087 (_2!6689 (h!15931 lt!368613))) (rules!109 JsonLexer!295)))))

(declare-fun bs!258837 () Bool)

(assert (= bs!258837 d!309326))

(declare-fun m!1250339 () Bool)

(assert (=> bs!258837 m!1250339))

(assert (=> bs!258607 d!309326))

(declare-fun d!309328 () Bool)

(declare-fun lt!369410 () Int)

(assert (=> d!309328 (>= lt!369410 0)))

(declare-fun e!693790 () Int)

(assert (=> d!309328 (= lt!369410 e!693790)))

(declare-fun c!185923 () Bool)

(assert (=> d!309328 (= c!185923 ((_ is Nil!10530) lt!368988))))

(assert (=> d!309328 (= (size!8149 lt!368988) lt!369410)))

(declare-fun b!1095886 () Bool)

(assert (=> b!1095886 (= e!693790 0)))

(declare-fun b!1095887 () Bool)

(assert (=> b!1095887 (= e!693790 (+ 1 (size!8149 (t!103088 lt!368988))))))

(assert (= (and d!309328 c!185923) b!1095886))

(assert (= (and d!309328 (not c!185923)) b!1095887))

(declare-fun m!1250341 () Bool)

(assert (=> b!1095887 m!1250341))

(assert (=> b!1095070 d!309328))

(declare-fun d!309330 () Bool)

(declare-fun lt!369411 () Int)

(assert (=> d!309330 (>= lt!369411 0)))

(declare-fun e!693791 () Int)

(assert (=> d!309330 (= lt!369411 e!693791)))

(declare-fun c!185924 () Bool)

(assert (=> d!309330 (= c!185924 ((_ is Nil!10530) lt!368599))))

(assert (=> d!309330 (= (size!8149 lt!368599) lt!369411)))

(declare-fun b!1095888 () Bool)

(assert (=> b!1095888 (= e!693791 0)))

(declare-fun b!1095889 () Bool)

(assert (=> b!1095889 (= e!693791 (+ 1 (size!8149 (t!103088 lt!368599))))))

(assert (= (and d!309330 c!185924) b!1095888))

(assert (= (and d!309330 (not c!185924)) b!1095889))

(declare-fun m!1250343 () Bool)

(assert (=> b!1095889 m!1250343))

(assert (=> b!1095070 d!309330))

(declare-fun d!309332 () Bool)

(declare-fun lt!369412 () Int)

(assert (=> d!309332 (>= lt!369412 0)))

(declare-fun e!693792 () Int)

(assert (=> d!309332 (= lt!369412 e!693792)))

(declare-fun c!185925 () Bool)

(assert (=> d!309332 (= c!185925 ((_ is Nil!10530) lt!368602))))

(assert (=> d!309332 (= (size!8149 lt!368602) lt!369412)))

(declare-fun b!1095890 () Bool)

(assert (=> b!1095890 (= e!693792 0)))

(declare-fun b!1095891 () Bool)

(assert (=> b!1095891 (= e!693792 (+ 1 (size!8149 (t!103088 lt!368602))))))

(assert (= (and d!309332 c!185925) b!1095890))

(assert (= (and d!309332 (not c!185925)) b!1095891))

(declare-fun m!1250345 () Bool)

(assert (=> b!1095891 m!1250345))

(assert (=> b!1095070 d!309332))

(declare-fun d!309334 () Bool)

(declare-fun e!693793 () Bool)

(assert (=> d!309334 e!693793))

(declare-fun res!486612 () Bool)

(assert (=> d!309334 (=> res!486612 e!693793)))

(assert (=> d!309334 (= res!486612 (isEmpty!6672 lt!369005))))

(declare-fun lt!369413 () Unit!16034)

(assert (=> d!309334 (= lt!369413 (choose!7055 lt!369005 lambda!42570))))

(assert (=> d!309334 (not (forall!2374 lt!369005 lambda!42570))))

(assert (=> d!309334 (= (lemmaNotForallFilterShorter!43 lt!369005 lambda!42570) lt!369413)))

(declare-fun b!1095892 () Bool)

(assert (=> b!1095892 (= e!693793 (< (size!8149 (filter!276 lt!369005 lambda!42570)) (size!8149 lt!369005)))))

(assert (= (and d!309334 (not res!486612)) b!1095892))

(assert (=> d!309334 m!1248485))

(declare-fun m!1250347 () Bool)

(assert (=> d!309334 m!1250347))

(declare-fun m!1250349 () Bool)

(assert (=> d!309334 m!1250349))

(assert (=> b!1095892 m!1248507))

(assert (=> b!1095892 m!1248507))

(assert (=> b!1095892 m!1248509))

(assert (=> b!1095892 m!1248511))

(assert (=> b!1095081 d!309334))

(declare-fun d!309336 () Bool)

(declare-fun res!486613 () Bool)

(declare-fun e!693794 () Bool)

(assert (=> d!309336 (=> res!486613 e!693794)))

(assert (=> d!309336 (= res!486613 ((_ is Nil!10530) lt!369014))))

(assert (=> d!309336 (= (forall!2374 lt!369014 lambda!42571) e!693794)))

(declare-fun b!1095893 () Bool)

(declare-fun e!693795 () Bool)

(assert (=> b!1095893 (= e!693794 e!693795)))

(declare-fun res!486614 () Bool)

(assert (=> b!1095893 (=> (not res!486614) (not e!693795))))

(assert (=> b!1095893 (= res!486614 (dynLambda!4609 lambda!42571 (h!15931 lt!369014)))))

(declare-fun b!1095894 () Bool)

(assert (=> b!1095894 (= e!693795 (forall!2374 (t!103088 lt!369014) lambda!42571))))

(assert (= (and d!309336 (not res!486613)) b!1095893))

(assert (= (and b!1095893 res!486614) b!1095894))

(declare-fun b_lambda!31465 () Bool)

(assert (=> (not b_lambda!31465) (not b!1095893)))

(declare-fun m!1250351 () Bool)

(assert (=> b!1095893 m!1250351))

(declare-fun m!1250353 () Bool)

(assert (=> b!1095894 m!1250353))

(assert (=> b!1095081 d!309336))

(declare-fun d!309338 () Bool)

(assert (=> d!309338 (= (isEmpty!6672 lt!369018) ((_ is Nil!10530) lt!369018))))

(assert (=> b!1095081 d!309338))

(assert (=> b!1095081 d!308578))

(declare-fun d!309340 () Bool)

(assert (=> d!309340 (subseq!148 (filter!276 (list!3778 lt!368625) lambda!42570) (list!3778 lt!368625))))

(declare-fun lt!369414 () Unit!16034)

(assert (=> d!309340 (= lt!369414 (choose!7057 (list!3778 lt!368625) lambda!42570))))

(assert (=> d!309340 (= (filterSubseq!37 (list!3778 lt!368625) lambda!42570) lt!369414)))

(declare-fun bs!258838 () Bool)

(assert (= bs!258838 d!309340))

(assert (=> bs!258838 m!1247645))

(declare-fun m!1250355 () Bool)

(assert (=> bs!258838 m!1250355))

(assert (=> bs!258838 m!1250355))

(assert (=> bs!258838 m!1247645))

(declare-fun m!1250357 () Bool)

(assert (=> bs!258838 m!1250357))

(assert (=> bs!258838 m!1247645))

(declare-fun m!1250359 () Bool)

(assert (=> bs!258838 m!1250359))

(assert (=> b!1095081 d!309340))

(declare-fun d!309342 () Bool)

(assert (=> d!309342 (= (isEmpty!6672 lt!369005) ((_ is Nil!10530) lt!369005))))

(assert (=> b!1095081 d!309342))

(declare-fun d!309344 () Bool)

(declare-fun e!693796 () Bool)

(assert (=> d!309344 e!693796))

(declare-fun res!486615 () Bool)

(assert (=> d!309344 (=> (not res!486615) (not e!693796))))

(assert (=> d!309344 (= res!486615 (isBalanced!892 (filter!279 (c!185681 lt!368625) lambda!42570)))))

(declare-fun lt!369415 () BalanceConc!6472)

(assert (=> d!309344 (= lt!369415 (BalanceConc!6473 (filter!279 (c!185681 lt!368625) lambda!42570)))))

(assert (=> d!309344 (= (filter!277 lt!368625 lambda!42570) lt!369415)))

(declare-fun b!1095895 () Bool)

(assert (=> b!1095895 (= e!693796 (= (list!3778 lt!369415) (filter!276 (list!3778 lt!368625) lambda!42570)))))

(assert (= (and d!309344 res!486615) b!1095895))

(declare-fun m!1250361 () Bool)

(assert (=> d!309344 m!1250361))

(assert (=> d!309344 m!1250361))

(declare-fun m!1250363 () Bool)

(assert (=> d!309344 m!1250363))

(declare-fun m!1250365 () Bool)

(assert (=> b!1095895 m!1250365))

(assert (=> b!1095895 m!1247645))

(assert (=> b!1095895 m!1247645))

(assert (=> b!1095895 m!1250355))

(assert (=> b!1095081 d!309344))

(declare-fun d!309346 () Bool)

(assert (=> d!309346 (forall!2374 (++!2855 (list!3778 (sortObjectsByID!0 lt!368999)) (list!3778 lt!368993)) lambda!42571)))

(declare-fun lt!369416 () Unit!16034)

(assert (=> d!309346 (= lt!369416 (choose!7059 (list!3778 (sortObjectsByID!0 lt!368999)) (list!3778 lt!368993) lambda!42571))))

(assert (=> d!309346 (forall!2374 (list!3778 (sortObjectsByID!0 lt!368999)) lambda!42571)))

(assert (=> d!309346 (= (lemmaConcatPreservesForall!88 (list!3778 (sortObjectsByID!0 lt!368999)) (list!3778 lt!368993) lambda!42571) lt!369416)))

(declare-fun bs!258839 () Bool)

(assert (= bs!258839 d!309346))

(assert (=> bs!258839 m!1248425))

(assert (=> bs!258839 m!1248427))

(assert (=> bs!258839 m!1248429))

(assert (=> bs!258839 m!1248429))

(declare-fun m!1250367 () Bool)

(assert (=> bs!258839 m!1250367))

(assert (=> bs!258839 m!1248425))

(assert (=> bs!258839 m!1248427))

(declare-fun m!1250369 () Bool)

(assert (=> bs!258839 m!1250369))

(assert (=> bs!258839 m!1248425))

(declare-fun m!1250371 () Bool)

(assert (=> bs!258839 m!1250371))

(assert (=> b!1095081 d!309346))

(declare-fun d!309348 () Bool)

(declare-fun res!486616 () Bool)

(declare-fun e!693797 () Bool)

(assert (=> d!309348 (=> res!486616 e!693797)))

(assert (=> d!309348 (= res!486616 ((_ is Nil!10530) lt!369015))))

(assert (=> d!309348 (= (forall!2374 lt!369015 lambda!42571) e!693797)))

(declare-fun b!1095896 () Bool)

(declare-fun e!693798 () Bool)

(assert (=> b!1095896 (= e!693797 e!693798)))

(declare-fun res!486617 () Bool)

(assert (=> b!1095896 (=> (not res!486617) (not e!693798))))

(assert (=> b!1095896 (= res!486617 (dynLambda!4609 lambda!42571 (h!15931 lt!369015)))))

(declare-fun b!1095897 () Bool)

(assert (=> b!1095897 (= e!693798 (forall!2374 (t!103088 lt!369015) lambda!42571))))

(assert (= (and d!309348 (not res!486616)) b!1095896))

(assert (= (and b!1095896 res!486617) b!1095897))

(declare-fun b_lambda!31467 () Bool)

(assert (=> (not b_lambda!31467) (not b!1095896)))

(declare-fun m!1250373 () Bool)

(assert (=> b!1095896 m!1250373))

(declare-fun m!1250375 () Bool)

(assert (=> b!1095897 m!1250375))

(assert (=> b!1095081 d!309348))

(declare-fun d!309350 () Bool)

(declare-fun lt!369417 () tuple2!11726)

(assert (=> d!309350 (= lt!369417 (apply!2078 (list!3778 lt!368625) (ite (>= (size!8150 lt!368625) 0) (div (size!8150 lt!368625) 2) (- (div (- (size!8150 lt!368625)) 2)))))))

(assert (=> d!309350 (= lt!369417 (apply!2079 (c!185681 lt!368625) (ite (>= (size!8150 lt!368625) 0) (div (size!8150 lt!368625) 2) (- (div (- (size!8150 lt!368625)) 2)))))))

(declare-fun e!693799 () Bool)

(assert (=> d!309350 e!693799))

(declare-fun res!486618 () Bool)

(assert (=> d!309350 (=> (not res!486618) (not e!693799))))

(assert (=> d!309350 (= res!486618 (<= 0 (ite (>= (size!8150 lt!368625) 0) (div (size!8150 lt!368625) 2) (- (div (- (size!8150 lt!368625)) 2)))))))

(assert (=> d!309350 (= (apply!2077 lt!368625 (ite (>= (size!8150 lt!368625) 0) (div (size!8150 lt!368625) 2) (- (div (- (size!8150 lt!368625)) 2)))) lt!369417)))

(declare-fun b!1095898 () Bool)

(assert (=> b!1095898 (= e!693799 (< (ite (>= (size!8150 lt!368625) 0) (div (size!8150 lt!368625) 2) (- (div (- (size!8150 lt!368625)) 2))) (size!8150 lt!368625)))))

(assert (= (and d!309350 res!486618) b!1095898))

(assert (=> d!309350 m!1247645))

(assert (=> d!309350 m!1247645))

(declare-fun m!1250377 () Bool)

(assert (=> d!309350 m!1250377))

(declare-fun m!1250379 () Bool)

(assert (=> d!309350 m!1250379))

(assert (=> b!1095898 m!1247743))

(assert (=> b!1095081 d!309350))

(declare-fun d!309352 () Bool)

(declare-fun lt!369418 () Bool)

(assert (=> d!309352 (= lt!369418 (contains!1801 (list!3778 lt!369004) lt!368989))))

(assert (=> d!309352 (= lt!369418 (contains!1802 (c!185681 lt!369004) lt!368989))))

(assert (=> d!309352 (= (contains!1798 lt!369004 lt!368989) lt!369418)))

(declare-fun bs!258840 () Bool)

(assert (= bs!258840 d!309352))

(assert (=> bs!258840 m!1248513))

(assert (=> bs!258840 m!1248513))

(assert (=> bs!258840 m!1249927))

(declare-fun m!1250381 () Bool)

(assert (=> bs!258840 m!1250381))

(assert (=> b!1095081 d!309352))

(declare-fun d!309354 () Bool)

(assert (=> d!309354 (= (list!3778 (sortObjectsByID!0 lt!369004)) (list!3780 (c!185681 (sortObjectsByID!0 lt!369004))))))

(declare-fun bs!258841 () Bool)

(assert (= bs!258841 d!309354))

(declare-fun m!1250383 () Bool)

(assert (=> bs!258841 m!1250383))

(assert (=> b!1095081 d!309354))

(declare-fun d!309356 () Bool)

(assert (=> d!309356 (= (list!3778 (sortObjectsByID!0 lt!368999)) (list!3780 (c!185681 (sortObjectsByID!0 lt!368999))))))

(declare-fun bs!258842 () Bool)

(assert (= bs!258842 d!309356))

(declare-fun m!1250385 () Bool)

(assert (=> bs!258842 m!1250385))

(assert (=> b!1095081 d!309356))

(declare-fun d!309358 () Bool)

(declare-fun lt!369419 () Bool)

(assert (=> d!309358 (= lt!369419 (forall!2374 (list!3778 lt!368625) lambda!42570))))

(assert (=> d!309358 (= lt!369419 (forall!2377 (c!185681 lt!368625) lambda!42570))))

(assert (=> d!309358 (= (forall!2375 lt!368625 lambda!42570) lt!369419)))

(declare-fun bs!258843 () Bool)

(assert (= bs!258843 d!309358))

(assert (=> bs!258843 m!1247645))

(assert (=> bs!258843 m!1247645))

(declare-fun m!1250387 () Bool)

(assert (=> bs!258843 m!1250387))

(declare-fun m!1250389 () Bool)

(assert (=> bs!258843 m!1250389))

(assert (=> b!1095081 d!309358))

(declare-fun bs!258844 () Bool)

(declare-fun b!1095908 () Bool)

(assert (= bs!258844 (and b!1095908 b!1095829)))

(declare-fun lambda!42603 () Int)

(assert (=> bs!258844 (not (= lambda!42603 lambda!42594))))

(declare-fun bs!258845 () Bool)

(assert (= bs!258845 (and b!1095908 b!1095045)))

(assert (=> bs!258845 (not (= lambda!42603 lambda!42566))))

(assert (=> bs!258845 (not (= lambda!42603 lambda!42565))))

(declare-fun bs!258846 () Bool)

(assert (= bs!258846 (and b!1095908 d!309264)))

(assert (=> bs!258846 (not (= lambda!42603 lambda!42597))))

(declare-fun bs!258847 () Bool)

(assert (= bs!258847 (and b!1095908 d!308628)))

(assert (=> bs!258847 (not (= lambda!42603 lambda!42567))))

(declare-fun bs!258848 () Bool)

(assert (= bs!258848 (and b!1095908 b!1095081)))

(assert (=> bs!258848 (not (= lambda!42603 lambda!42569))))

(declare-fun bs!258849 () Bool)

(assert (= bs!258849 (and b!1095908 d!308738)))

(assert (=> bs!258849 (not (= lambda!42603 lambda!42572))))

(assert (=> bs!258844 (not (= lambda!42603 lambda!42596))))

(assert (=> bs!258848 (not (= lambda!42603 lambda!42571))))

(declare-fun bs!258850 () Bool)

(assert (= bs!258850 (and b!1095908 b!1094737)))

(assert (=> bs!258850 (not (= lambda!42603 lambda!42459))))

(assert (=> bs!258848 (not (= lambda!42603 lambda!42570))))

(assert (=> bs!258844 (not (= lambda!42603 lambda!42595))))

(assert (=> bs!258850 (not (= lambda!42603 lambda!42460))))

(declare-fun lt!369420 () tuple2!11726)

(assert (=> bs!258845 (= (= (_1!6689 lt!369420) (_1!6689 lt!368940)) (= lambda!42603 lambda!42563))))

(declare-fun bs!258851 () Bool)

(assert (= bs!258851 (and b!1095908 b!1095851)))

(assert (=> bs!258851 (not (= lambda!42603 lambda!42600))))

(assert (=> bs!258851 (not (= lambda!42603 lambda!42599))))

(declare-fun bs!258852 () Bool)

(assert (= bs!258852 (and b!1095908 start!93782)))

(assert (=> bs!258852 (not (= lambda!42603 lambda!42457))))

(assert (=> bs!258850 (= (= (_1!6689 lt!369420) (_1!6689 lt!368619)) (= lambda!42603 lambda!42458))))

(assert (=> bs!258851 (= (= (_1!6689 lt!369420) (_1!6689 lt!369356)) (= lambda!42603 lambda!42598))))

(assert (=> bs!258851 (not (= lambda!42603 lambda!42601))))

(assert (=> bs!258848 (= (= (_1!6689 lt!369420) (_1!6689 lt!368989)) (= lambda!42603 lambda!42568))))

(assert (=> bs!258844 (= (= (_1!6689 lt!369420) (_1!6689 lt!369317)) (= lambda!42603 lambda!42593))))

(declare-fun bs!258853 () Bool)

(assert (= bs!258853 (and b!1095908 d!309280)))

(assert (=> bs!258853 (not (= lambda!42603 lambda!42602))))

(assert (=> bs!258845 (not (= lambda!42603 lambda!42564))))

(declare-fun b!1095912 () Bool)

(declare-fun e!693808 () Bool)

(assert (=> b!1095912 (= e!693808 true)))

(declare-fun b!1095911 () Bool)

(declare-fun e!693807 () Bool)

(assert (=> b!1095911 (= e!693807 e!693808)))

(assert (=> b!1095908 e!693807))

(assert (= b!1095911 b!1095912))

(assert (= b!1095908 b!1095911))

(declare-fun lambda!42604 () Int)

(assert (=> bs!258844 (= (= (_1!6689 lt!369420) (_1!6689 lt!369317)) (= lambda!42604 lambda!42594))))

(assert (=> bs!258845 (not (= lambda!42604 lambda!42566))))

(assert (=> bs!258845 (not (= lambda!42604 lambda!42565))))

(assert (=> bs!258846 (not (= lambda!42604 lambda!42597))))

(assert (=> bs!258848 (= (= (_1!6689 lt!369420) (_1!6689 lt!368989)) (= lambda!42604 lambda!42569))))

(assert (=> bs!258849 (not (= lambda!42604 lambda!42572))))

(assert (=> bs!258844 (not (= lambda!42604 lambda!42596))))

(assert (=> bs!258848 (not (= lambda!42604 lambda!42571))))

(assert (=> bs!258850 (= (= (_1!6689 lt!369420) (_1!6689 lt!368619)) (= lambda!42604 lambda!42459))))

(assert (=> bs!258848 (not (= lambda!42604 lambda!42570))))

(assert (=> bs!258844 (not (= lambda!42604 lambda!42595))))

(assert (=> bs!258850 (not (= lambda!42604 lambda!42460))))

(assert (=> bs!258845 (not (= lambda!42604 lambda!42563))))

(assert (=> bs!258851 (not (= lambda!42604 lambda!42600))))

(assert (=> bs!258851 (= (= (_1!6689 lt!369420) (_1!6689 lt!369356)) (= lambda!42604 lambda!42599))))

(assert (=> bs!258852 (not (= lambda!42604 lambda!42457))))

(assert (=> bs!258850 (not (= lambda!42604 lambda!42458))))

(assert (=> bs!258851 (not (= lambda!42604 lambda!42598))))

(assert (=> bs!258851 (not (= lambda!42604 lambda!42601))))

(assert (=> bs!258848 (not (= lambda!42604 lambda!42568))))

(assert (=> bs!258844 (not (= lambda!42604 lambda!42593))))

(assert (=> bs!258853 (not (= lambda!42604 lambda!42602))))

(assert (=> bs!258845 (= (= (_1!6689 lt!369420) (_1!6689 lt!368940)) (= lambda!42604 lambda!42564))))

(assert (=> b!1095908 (not (= lambda!42604 lambda!42603))))

(assert (=> bs!258847 (not (= lambda!42604 lambda!42567))))

(declare-fun b!1095914 () Bool)

(declare-fun e!693810 () Bool)

(assert (=> b!1095914 (= e!693810 true)))

(declare-fun b!1095913 () Bool)

(declare-fun e!693809 () Bool)

(assert (=> b!1095913 (= e!693809 e!693810)))

(assert (=> b!1095908 e!693809))

(assert (= b!1095913 b!1095914))

(assert (= b!1095908 b!1095913))

(declare-fun lambda!42605 () Int)

(assert (=> bs!258844 (not (= lambda!42605 lambda!42594))))

(assert (=> bs!258845 (not (= lambda!42605 lambda!42566))))

(assert (=> bs!258845 (= (= (_1!6689 lt!369420) (_1!6689 lt!368940)) (= lambda!42605 lambda!42565))))

(assert (=> bs!258848 (not (= lambda!42605 lambda!42569))))

(assert (=> bs!258849 (not (= lambda!42605 lambda!42572))))

(assert (=> bs!258844 (not (= lambda!42605 lambda!42596))))

(assert (=> bs!258848 (not (= lambda!42605 lambda!42571))))

(assert (=> bs!258850 (not (= lambda!42605 lambda!42459))))

(assert (=> bs!258848 (= (= (_1!6689 lt!369420) (_1!6689 lt!368989)) (= lambda!42605 lambda!42570))))

(assert (=> bs!258844 (= (= (_1!6689 lt!369420) (_1!6689 lt!369317)) (= lambda!42605 lambda!42595))))

(assert (=> bs!258850 (= (= (_1!6689 lt!369420) (_1!6689 lt!368619)) (= lambda!42605 lambda!42460))))

(assert (=> bs!258845 (not (= lambda!42605 lambda!42563))))

(assert (=> bs!258851 (= (= (_1!6689 lt!369420) (_1!6689 lt!369356)) (= lambda!42605 lambda!42600))))

(assert (=> bs!258851 (not (= lambda!42605 lambda!42599))))

(assert (=> bs!258852 (not (= lambda!42605 lambda!42457))))

(assert (=> bs!258850 (not (= lambda!42605 lambda!42458))))

(assert (=> bs!258851 (not (= lambda!42605 lambda!42598))))

(assert (=> bs!258851 (not (= lambda!42605 lambda!42601))))

(assert (=> bs!258848 (not (= lambda!42605 lambda!42568))))

(assert (=> bs!258844 (not (= lambda!42605 lambda!42593))))

(assert (=> bs!258853 (not (= lambda!42605 lambda!42602))))

(assert (=> bs!258845 (not (= lambda!42605 lambda!42564))))

(assert (=> b!1095908 (not (= lambda!42605 lambda!42604))))

(assert (=> bs!258846 (not (= lambda!42605 lambda!42597))))

(assert (=> b!1095908 (not (= lambda!42605 lambda!42603))))

(assert (=> bs!258847 (not (= lambda!42605 lambda!42567))))

(declare-fun b!1095916 () Bool)

(declare-fun e!693812 () Bool)

(assert (=> b!1095916 (= e!693812 true)))

(declare-fun b!1095915 () Bool)

(declare-fun e!693811 () Bool)

(assert (=> b!1095915 (= e!693811 e!693812)))

(assert (=> b!1095908 e!693811))

(assert (= b!1095915 b!1095916))

(assert (= b!1095908 b!1095915))

(declare-fun lambda!42606 () Int)

(assert (=> bs!258844 (not (= lambda!42606 lambda!42594))))

(assert (=> b!1095908 (not (= lambda!42606 lambda!42605))))

(assert (=> bs!258845 (= lambda!42606 lambda!42566)))

(assert (=> bs!258845 (not (= lambda!42606 lambda!42565))))

(assert (=> bs!258848 (not (= lambda!42606 lambda!42569))))

(assert (=> bs!258849 (= lambda!42606 lambda!42572)))

(assert (=> bs!258844 (= lambda!42606 lambda!42596)))

(assert (=> bs!258848 (= lambda!42606 lambda!42571)))

(assert (=> bs!258850 (not (= lambda!42606 lambda!42459))))

(assert (=> bs!258848 (not (= lambda!42606 lambda!42570))))

(assert (=> bs!258844 (not (= lambda!42606 lambda!42595))))

(assert (=> bs!258850 (not (= lambda!42606 lambda!42460))))

(assert (=> bs!258845 (not (= lambda!42606 lambda!42563))))

(assert (=> bs!258851 (not (= lambda!42606 lambda!42600))))

(assert (=> bs!258851 (not (= lambda!42606 lambda!42599))))

(assert (=> bs!258852 (= lambda!42606 lambda!42457)))

(assert (=> bs!258850 (not (= lambda!42606 lambda!42458))))

(assert (=> bs!258851 (not (= lambda!42606 lambda!42598))))

(assert (=> bs!258851 (= lambda!42606 lambda!42601)))

(assert (=> bs!258848 (not (= lambda!42606 lambda!42568))))

(assert (=> bs!258844 (not (= lambda!42606 lambda!42593))))

(assert (=> bs!258853 (= lambda!42606 lambda!42602)))

(assert (=> bs!258845 (not (= lambda!42606 lambda!42564))))

(assert (=> b!1095908 (not (= lambda!42606 lambda!42604))))

(assert (=> bs!258846 (= lambda!42606 lambda!42597)))

(assert (=> b!1095908 (not (= lambda!42606 lambda!42603))))

(assert (=> bs!258847 (= lambda!42606 lambda!42567)))

(declare-fun bs!258854 () Bool)

(declare-fun d!309360 () Bool)

(assert (= bs!258854 (and d!309360 b!1095829)))

(declare-fun lambda!42607 () Int)

(assert (=> bs!258854 (not (= lambda!42607 lambda!42594))))

(declare-fun bs!258855 () Bool)

(assert (= bs!258855 (and d!309360 b!1095908)))

(assert (=> bs!258855 (not (= lambda!42607 lambda!42605))))

(declare-fun bs!258856 () Bool)

(assert (= bs!258856 (and d!309360 b!1095045)))

(assert (=> bs!258856 (= lambda!42607 lambda!42566)))

(assert (=> bs!258856 (not (= lambda!42607 lambda!42565))))

(declare-fun bs!258857 () Bool)

(assert (= bs!258857 (and d!309360 b!1095081)))

(assert (=> bs!258857 (not (= lambda!42607 lambda!42569))))

(declare-fun bs!258858 () Bool)

(assert (= bs!258858 (and d!309360 d!308738)))

(assert (=> bs!258858 (= lambda!42607 lambda!42572)))

(assert (=> bs!258854 (= lambda!42607 lambda!42596)))

(assert (=> bs!258857 (= lambda!42607 lambda!42571)))

(declare-fun bs!258859 () Bool)

(assert (= bs!258859 (and d!309360 b!1094737)))

(assert (=> bs!258859 (not (= lambda!42607 lambda!42459))))

(assert (=> bs!258857 (not (= lambda!42607 lambda!42570))))

(assert (=> bs!258854 (not (= lambda!42607 lambda!42595))))

(assert (=> bs!258859 (not (= lambda!42607 lambda!42460))))

(assert (=> bs!258856 (not (= lambda!42607 lambda!42563))))

(declare-fun bs!258860 () Bool)

(assert (= bs!258860 (and d!309360 b!1095851)))

(assert (=> bs!258860 (not (= lambda!42607 lambda!42600))))

(assert (=> bs!258860 (not (= lambda!42607 lambda!42599))))

(declare-fun bs!258861 () Bool)

(assert (= bs!258861 (and d!309360 start!93782)))

(assert (=> bs!258861 (= lambda!42607 lambda!42457)))

(assert (=> bs!258855 (= lambda!42607 lambda!42606)))

(assert (=> bs!258859 (not (= lambda!42607 lambda!42458))))

(assert (=> bs!258860 (not (= lambda!42607 lambda!42598))))

(assert (=> bs!258860 (= lambda!42607 lambda!42601)))

(assert (=> bs!258857 (not (= lambda!42607 lambda!42568))))

(assert (=> bs!258854 (not (= lambda!42607 lambda!42593))))

(declare-fun bs!258862 () Bool)

(assert (= bs!258862 (and d!309360 d!309280)))

(assert (=> bs!258862 (= lambda!42607 lambda!42602)))

(assert (=> bs!258856 (not (= lambda!42607 lambda!42564))))

(assert (=> bs!258855 (not (= lambda!42607 lambda!42604))))

(declare-fun bs!258863 () Bool)

(assert (= bs!258863 (and d!309360 d!309264)))

(assert (=> bs!258863 (= lambda!42607 lambda!42597)))

(assert (=> bs!258855 (not (= lambda!42607 lambda!42603))))

(declare-fun bs!258864 () Bool)

(assert (= bs!258864 (and d!309360 d!308628)))

(assert (=> bs!258864 (= lambda!42607 lambda!42567)))

(declare-fun b!1095899 () Bool)

(assert (=> b!1095899 true))

(declare-fun lt!369439 () Unit!16034)

(declare-fun lt!369430 () BalanceConc!6472)

(assert (=> b!1095899 (= lt!369439 (forallContained!502 (list!3778 lt!369430) lambda!42603 lt!369420))))

(declare-fun e!693805 () Unit!16034)

(declare-fun err!2379 () Unit!16034)

(assert (=> b!1095899 (= e!693805 err!2379)))

(declare-fun b!1095900 () Bool)

(declare-fun e!693802 () Bool)

(declare-fun lt!369436 () List!10546)

(assert (=> b!1095900 (= e!693802 (< (size!8149 (filter!276 lt!369436 lambda!42605)) (size!8149 lt!369436)))))

(declare-fun b!1095901 () Bool)

(declare-fun e!693800 () BalanceConc!6472)

(assert (=> b!1095901 (= e!693800 lt!368999)))

(declare-fun b!1095902 () Bool)

(assert (=> b!1095902 true))

(declare-fun lt!369428 () Unit!16034)

(declare-fun lt!369435 () BalanceConc!6472)

(assert (=> b!1095902 (= lt!369428 (forallContained!502 (list!3778 lt!369435) lambda!42605 lt!369420))))

(declare-fun e!693806 () Unit!16034)

(declare-fun err!2381 () Unit!16034)

(assert (=> b!1095902 (= e!693806 err!2381)))

(declare-fun b!1095903 () Bool)

(declare-fun e!693804 () Unit!16034)

(declare-fun Unit!16073 () Unit!16034)

(assert (=> b!1095903 (= e!693804 Unit!16073)))

(declare-fun b!1095904 () Bool)

(declare-fun Unit!16074 () Unit!16034)

(assert (=> b!1095904 (= e!693806 Unit!16074)))

(declare-fun lt!369432 () BalanceConc!6472)

(assert (=> d!309360 (forall!2375 lt!369432 lambda!42607)))

(assert (=> d!309360 (= lt!369432 e!693800)))

(declare-fun c!185926 () Bool)

(assert (=> d!309360 (= c!185926 (<= (size!8150 lt!368999) 1))))

(assert (=> d!309360 (= (sortObjectsByID!0 lt!368999) lt!369432)))

(declare-fun b!1095905 () Bool)

(declare-fun e!693803 () Unit!16034)

(declare-fun Unit!16075 () Unit!16034)

(assert (=> b!1095905 (= e!693803 Unit!16075)))

(declare-fun b!1095906 () Bool)

(declare-fun Unit!16076 () Unit!16034)

(assert (=> b!1095906 (= e!693805 Unit!16076)))

(declare-fun b!1095907 () Bool)

(assert (=> b!1095907 true))

(declare-fun lt!369434 () Unit!16034)

(assert (=> b!1095907 (= lt!369434 (forallContained!502 (list!3778 lt!368999) lambda!42605 lt!369420))))

(declare-fun err!2378 () Unit!16034)

(assert (=> b!1095907 (= e!693804 err!2378)))

(declare-fun lt!369424 () BalanceConc!6472)

(assert (=> b!1095908 (= e!693800 (++!2857 (++!2857 (sortObjectsByID!0 lt!369430) lt!369424) (sortObjectsByID!0 lt!369435)))))

(assert (=> b!1095908 (= lt!369420 (apply!2077 lt!368999 (ite (>= (size!8150 lt!368999) 0) (div (size!8150 lt!368999) 2) (- (div (- (size!8150 lt!368999)) 2)))))))

(assert (=> b!1095908 (= lt!369430 (filter!277 lt!368999 lambda!42603))))

(assert (=> b!1095908 (= lt!369424 (filter!277 lt!368999 lambda!42604))))

(assert (=> b!1095908 (= lt!369435 (filter!277 lt!368999 lambda!42605))))

(declare-fun c!185927 () Bool)

(assert (=> b!1095908 (= c!185927 (contains!1798 lt!369430 lt!369420))))

(declare-fun lt!369451 () Unit!16034)

(assert (=> b!1095908 (= lt!369451 e!693805)))

(declare-fun c!185929 () Bool)

(assert (=> b!1095908 (= c!185929 (forall!2375 lt!368999 lambda!42603))))

(declare-fun lt!369453 () Unit!16034)

(assert (=> b!1095908 (= lt!369453 e!693803)))

(declare-fun lt!369449 () List!10546)

(assert (=> b!1095908 (= lt!369449 (list!3778 lt!368999))))

(declare-fun lt!369454 () Unit!16034)

(assert (=> b!1095908 (= lt!369454 (lemmaNotForallFilterShorter!43 lt!369449 lambda!42603))))

(declare-fun res!486619 () Bool)

(assert (=> b!1095908 (= res!486619 (isEmpty!6672 lt!369449))))

(declare-fun e!693801 () Bool)

(assert (=> b!1095908 (=> res!486619 e!693801)))

(assert (=> b!1095908 e!693801))

(declare-fun lt!369444 () Unit!16034)

(assert (=> b!1095908 (= lt!369444 lt!369454)))

(declare-fun c!185930 () Bool)

(assert (=> b!1095908 (= c!185930 (contains!1798 lt!369435 lt!369420))))

(declare-fun lt!369455 () Unit!16034)

(assert (=> b!1095908 (= lt!369455 e!693806)))

(declare-fun c!185928 () Bool)

(assert (=> b!1095908 (= c!185928 (forall!2375 lt!368999 lambda!42605))))

(declare-fun lt!369440 () Unit!16034)

(assert (=> b!1095908 (= lt!369440 e!693804)))

(assert (=> b!1095908 (= lt!369436 (list!3778 lt!368999))))

(declare-fun lt!369452 () Unit!16034)

(assert (=> b!1095908 (= lt!369452 (lemmaNotForallFilterShorter!43 lt!369436 lambda!42605))))

(declare-fun res!486620 () Bool)

(assert (=> b!1095908 (= res!486620 (isEmpty!6672 lt!369436))))

(assert (=> b!1095908 (=> res!486620 e!693802)))

(assert (=> b!1095908 e!693802))

(declare-fun lt!369422 () Unit!16034)

(assert (=> b!1095908 (= lt!369422 lt!369452)))

(declare-fun lt!369443 () Unit!16034)

(assert (=> b!1095908 (= lt!369443 (filterSubseq!37 (list!3778 lt!368999) lambda!42603))))

(declare-fun lt!369423 () Unit!16034)

(assert (=> b!1095908 (= lt!369423 (filterSubseq!37 (list!3778 lt!368999) lambda!42604))))

(declare-fun lt!369427 () Unit!16034)

(assert (=> b!1095908 (= lt!369427 (filterSubseq!37 (list!3778 lt!368999) lambda!42605))))

(declare-fun lt!369448 () List!10546)

(assert (=> b!1095908 (= lt!369448 (list!3778 (filter!277 lt!368999 lambda!42603)))))

(declare-fun lt!369421 () List!10546)

(assert (=> b!1095908 (= lt!369421 (list!3778 lt!368999))))

(declare-fun lt!369437 () Unit!16034)

(assert (=> b!1095908 (= lt!369437 (lemmaForallSubseq!45 lt!369448 lt!369421 lambda!42606))))

(assert (=> b!1095908 (forall!2374 lt!369448 lambda!42606)))

(declare-fun lt!369431 () Unit!16034)

(assert (=> b!1095908 (= lt!369431 lt!369437)))

(declare-fun lt!369445 () List!10546)

(assert (=> b!1095908 (= lt!369445 (list!3778 (filter!277 lt!368999 lambda!42604)))))

(declare-fun lt!369441 () List!10546)

(assert (=> b!1095908 (= lt!369441 (list!3778 lt!368999))))

(declare-fun lt!369429 () Unit!16034)

(assert (=> b!1095908 (= lt!369429 (lemmaForallSubseq!45 lt!369445 lt!369441 lambda!42606))))

(assert (=> b!1095908 (forall!2374 lt!369445 lambda!42606)))

(declare-fun lt!369438 () Unit!16034)

(assert (=> b!1095908 (= lt!369438 lt!369429)))

(declare-fun lt!369446 () List!10546)

(assert (=> b!1095908 (= lt!369446 (list!3778 (filter!277 lt!368999 lambda!42605)))))

(declare-fun lt!369447 () List!10546)

(assert (=> b!1095908 (= lt!369447 (list!3778 lt!368999))))

(declare-fun lt!369433 () Unit!16034)

(assert (=> b!1095908 (= lt!369433 (lemmaForallSubseq!45 lt!369446 lt!369447 lambda!42606))))

(assert (=> b!1095908 (forall!2374 lt!369446 lambda!42606)))

(declare-fun lt!369426 () Unit!16034)

(assert (=> b!1095908 (= lt!369426 lt!369433)))

(declare-fun lt!369442 () Unit!16034)

(assert (=> b!1095908 (= lt!369442 (lemmaConcatPreservesForall!88 (list!3778 (sortObjectsByID!0 lt!369430)) (list!3778 lt!369424) lambda!42606))))

(declare-fun lt!369425 () Unit!16034)

(assert (=> b!1095908 (= lt!369425 (lemmaConcatPreservesForall!88 (++!2855 (list!3778 (sortObjectsByID!0 lt!369430)) (list!3778 lt!369424)) (list!3778 (sortObjectsByID!0 lt!369435)) lambda!42606))))

(declare-fun b!1095909 () Bool)

(assert (=> b!1095909 (= e!693801 (< (size!8149 (filter!276 lt!369449 lambda!42603)) (size!8149 lt!369449)))))

(declare-fun b!1095910 () Bool)

(assert (=> b!1095910 true))

(declare-fun lt!369450 () Unit!16034)

(assert (=> b!1095910 (= lt!369450 (forallContained!502 (list!3778 lt!368999) lambda!42603 lt!369420))))

(declare-fun err!2380 () Unit!16034)

(assert (=> b!1095910 (= e!693803 err!2380)))

(assert (= (and d!309360 c!185926) b!1095901))

(assert (= (and d!309360 (not c!185926)) b!1095908))

(assert (= (and b!1095908 c!185927) b!1095899))

(assert (= (and b!1095908 (not c!185927)) b!1095906))

(assert (= (and b!1095908 c!185929) b!1095910))

(assert (= (and b!1095908 (not c!185929)) b!1095905))

(assert (= (and b!1095908 (not res!486619)) b!1095909))

(assert (= (and b!1095908 c!185930) b!1095902))

(assert (= (and b!1095908 (not c!185930)) b!1095904))

(assert (= (and b!1095908 c!185928) b!1095907))

(assert (= (and b!1095908 (not c!185928)) b!1095903))

(assert (= (and b!1095908 (not res!486620)) b!1095900))

(declare-fun m!1250391 () Bool)

(assert (=> b!1095908 m!1250391))

(declare-fun m!1250393 () Bool)

(assert (=> b!1095908 m!1250393))

(declare-fun m!1250395 () Bool)

(assert (=> b!1095908 m!1250395))

(declare-fun m!1250397 () Bool)

(assert (=> b!1095908 m!1250397))

(declare-fun m!1250399 () Bool)

(assert (=> b!1095908 m!1250399))

(assert (=> b!1095908 m!1250391))

(declare-fun m!1250401 () Bool)

(assert (=> b!1095908 m!1250401))

(assert (=> b!1095908 m!1250399))

(declare-fun m!1250403 () Bool)

(assert (=> b!1095908 m!1250403))

(declare-fun m!1250405 () Bool)

(assert (=> b!1095908 m!1250405))

(declare-fun m!1250407 () Bool)

(assert (=> b!1095908 m!1250407))

(declare-fun m!1250409 () Bool)

(assert (=> b!1095908 m!1250409))

(declare-fun m!1250411 () Bool)

(assert (=> b!1095908 m!1250411))

(assert (=> b!1095908 m!1250397))

(declare-fun m!1250413 () Bool)

(assert (=> b!1095908 m!1250413))

(declare-fun m!1250415 () Bool)

(assert (=> b!1095908 m!1250415))

(declare-fun m!1250417 () Bool)

(assert (=> b!1095908 m!1250417))

(declare-fun m!1250419 () Bool)

(assert (=> b!1095908 m!1250419))

(declare-fun m!1250421 () Bool)

(assert (=> b!1095908 m!1250421))

(assert (=> b!1095908 m!1248501))

(assert (=> b!1095908 m!1250407))

(declare-fun m!1250423 () Bool)

(assert (=> b!1095908 m!1250423))

(assert (=> b!1095908 m!1250407))

(declare-fun m!1250425 () Bool)

(assert (=> b!1095908 m!1250425))

(declare-fun m!1250427 () Bool)

(assert (=> b!1095908 m!1250427))

(assert (=> b!1095908 m!1250393))

(assert (=> b!1095908 m!1250391))

(assert (=> b!1095908 m!1250393))

(declare-fun m!1250429 () Bool)

(assert (=> b!1095908 m!1250429))

(assert (=> b!1095908 m!1250399))

(assert (=> b!1095908 m!1250423))

(assert (=> b!1095908 m!1248501))

(declare-fun m!1250431 () Bool)

(assert (=> b!1095908 m!1250431))

(declare-fun m!1250433 () Bool)

(assert (=> b!1095908 m!1250433))

(declare-fun m!1250435 () Bool)

(assert (=> b!1095908 m!1250435))

(declare-fun m!1250437 () Bool)

(assert (=> b!1095908 m!1250437))

(assert (=> b!1095908 m!1250437))

(declare-fun m!1250439 () Bool)

(assert (=> b!1095908 m!1250439))

(declare-fun m!1250441 () Bool)

(assert (=> b!1095908 m!1250441))

(assert (=> b!1095908 m!1248501))

(declare-fun m!1250443 () Bool)

(assert (=> b!1095908 m!1250443))

(declare-fun m!1250445 () Bool)

(assert (=> b!1095908 m!1250445))

(assert (=> b!1095908 m!1250395))

(assert (=> b!1095908 m!1250409))

(declare-fun m!1250447 () Bool)

(assert (=> b!1095908 m!1250447))

(assert (=> b!1095908 m!1250397))

(declare-fun m!1250449 () Bool)

(assert (=> b!1095908 m!1250449))

(assert (=> b!1095908 m!1248501))

(declare-fun m!1250451 () Bool)

(assert (=> b!1095908 m!1250451))

(declare-fun m!1250453 () Bool)

(assert (=> b!1095908 m!1250453))

(declare-fun m!1250455 () Bool)

(assert (=> b!1095908 m!1250455))

(assert (=> b!1095908 m!1250435))

(declare-fun m!1250457 () Bool)

(assert (=> b!1095908 m!1250457))

(declare-fun m!1250459 () Bool)

(assert (=> b!1095908 m!1250459))

(assert (=> b!1095908 m!1250435))

(assert (=> b!1095908 m!1250437))

(declare-fun m!1250461 () Bool)

(assert (=> b!1095909 m!1250461))

(assert (=> b!1095909 m!1250461))

(declare-fun m!1250463 () Bool)

(assert (=> b!1095909 m!1250463))

(declare-fun m!1250465 () Bool)

(assert (=> b!1095909 m!1250465))

(assert (=> b!1095910 m!1248501))

(assert (=> b!1095910 m!1248501))

(declare-fun m!1250467 () Bool)

(assert (=> b!1095910 m!1250467))

(declare-fun m!1250469 () Bool)

(assert (=> b!1095899 m!1250469))

(assert (=> b!1095899 m!1250469))

(declare-fun m!1250471 () Bool)

(assert (=> b!1095899 m!1250471))

(assert (=> b!1095907 m!1248501))

(assert (=> b!1095907 m!1248501))

(declare-fun m!1250473 () Bool)

(assert (=> b!1095907 m!1250473))

(declare-fun m!1250475 () Bool)

(assert (=> b!1095900 m!1250475))

(assert (=> b!1095900 m!1250475))

(declare-fun m!1250477 () Bool)

(assert (=> b!1095900 m!1250477))

(declare-fun m!1250479 () Bool)

(assert (=> b!1095900 m!1250479))

(declare-fun m!1250481 () Bool)

(assert (=> b!1095902 m!1250481))

(assert (=> b!1095902 m!1250481))

(declare-fun m!1250483 () Bool)

(assert (=> b!1095902 m!1250483))

(declare-fun m!1250485 () Bool)

(assert (=> d!309360 m!1250485))

(assert (=> d!309360 m!1250417))

(assert (=> b!1095081 d!309360))

(declare-fun d!309362 () Bool)

(declare-fun e!693813 () Bool)

(assert (=> d!309362 e!693813))

(declare-fun res!486621 () Bool)

(assert (=> d!309362 (=> (not res!486621) (not e!693813))))

(assert (=> d!309362 (= res!486621 (isBalanced!892 (filter!279 (c!185681 lt!368625) lambda!42569)))))

(declare-fun lt!369456 () BalanceConc!6472)

(assert (=> d!309362 (= lt!369456 (BalanceConc!6473 (filter!279 (c!185681 lt!368625) lambda!42569)))))

(assert (=> d!309362 (= (filter!277 lt!368625 lambda!42569) lt!369456)))

(declare-fun b!1095917 () Bool)

(assert (=> b!1095917 (= e!693813 (= (list!3778 lt!369456) (filter!276 (list!3778 lt!368625) lambda!42569)))))

(assert (= (and d!309362 res!486621) b!1095917))

(declare-fun m!1250487 () Bool)

(assert (=> d!309362 m!1250487))

(assert (=> d!309362 m!1250487))

(declare-fun m!1250489 () Bool)

(assert (=> d!309362 m!1250489))

(declare-fun m!1250491 () Bool)

(assert (=> b!1095917 m!1250491))

(assert (=> b!1095917 m!1247645))

(assert (=> b!1095917 m!1247645))

(declare-fun m!1250493 () Bool)

(assert (=> b!1095917 m!1250493))

(assert (=> b!1095081 d!309362))

(declare-fun d!309364 () Bool)

(assert (=> d!309364 (= (list!3778 (filter!277 lt!368625 lambda!42568)) (list!3780 (c!185681 (filter!277 lt!368625 lambda!42568))))))

(declare-fun bs!258865 () Bool)

(assert (= bs!258865 d!309364))

(declare-fun m!1250495 () Bool)

(assert (=> bs!258865 m!1250495))

(assert (=> b!1095081 d!309364))

(declare-fun d!309366 () Bool)

(assert (=> d!309366 (forall!2374 lt!369017 lambda!42571)))

(declare-fun lt!369457 () Unit!16034)

(assert (=> d!309366 (= lt!369457 (choose!7058 lt!369017 lt!368990 lambda!42571))))

(assert (=> d!309366 (forall!2374 lt!368990 lambda!42571)))

(assert (=> d!309366 (= (lemmaForallSubseq!45 lt!369017 lt!368990 lambda!42571) lt!369457)))

(declare-fun bs!258866 () Bool)

(assert (= bs!258866 d!309366))

(assert (=> bs!258866 m!1248473))

(declare-fun m!1250497 () Bool)

(assert (=> bs!258866 m!1250497))

(declare-fun m!1250499 () Bool)

(assert (=> bs!258866 m!1250499))

(assert (=> b!1095081 d!309366))

(declare-fun d!309368 () Bool)

(assert (=> d!309368 (forall!2374 lt!369015 lambda!42571)))

(declare-fun lt!369458 () Unit!16034)

(assert (=> d!309368 (= lt!369458 (choose!7058 lt!369015 lt!369016 lambda!42571))))

(assert (=> d!309368 (forall!2374 lt!369016 lambda!42571)))

(assert (=> d!309368 (= (lemmaForallSubseq!45 lt!369015 lt!369016 lambda!42571) lt!369458)))

(declare-fun bs!258867 () Bool)

(assert (= bs!258867 d!309368))

(assert (=> bs!258867 m!1248465))

(declare-fun m!1250501 () Bool)

(assert (=> bs!258867 m!1250501))

(declare-fun m!1250503 () Bool)

(assert (=> bs!258867 m!1250503))

(assert (=> b!1095081 d!309368))

(declare-fun d!309370 () Bool)

(declare-fun e!693814 () Bool)

(assert (=> d!309370 e!693814))

(declare-fun res!486622 () Bool)

(assert (=> d!309370 (=> (not res!486622) (not e!693814))))

(assert (=> d!309370 (= res!486622 (isBalanced!892 (filter!279 (c!185681 lt!368625) lambda!42568)))))

(declare-fun lt!369459 () BalanceConc!6472)

(assert (=> d!309370 (= lt!369459 (BalanceConc!6473 (filter!279 (c!185681 lt!368625) lambda!42568)))))

(assert (=> d!309370 (= (filter!277 lt!368625 lambda!42568) lt!369459)))

(declare-fun b!1095918 () Bool)

(assert (=> b!1095918 (= e!693814 (= (list!3778 lt!369459) (filter!276 (list!3778 lt!368625) lambda!42568)))))

(assert (= (and d!309370 res!486622) b!1095918))

(declare-fun m!1250505 () Bool)

(assert (=> d!309370 m!1250505))

(assert (=> d!309370 m!1250505))

(declare-fun m!1250507 () Bool)

(assert (=> d!309370 m!1250507))

(declare-fun m!1250509 () Bool)

(assert (=> b!1095918 m!1250509))

(assert (=> b!1095918 m!1247645))

(assert (=> b!1095918 m!1247645))

(declare-fun m!1250511 () Bool)

(assert (=> b!1095918 m!1250511))

(assert (=> b!1095081 d!309370))

(declare-fun d!309372 () Bool)

(assert (=> d!309372 (= (list!3778 (filter!277 lt!368625 lambda!42570)) (list!3780 (c!185681 (filter!277 lt!368625 lambda!42570))))))

(declare-fun bs!258868 () Bool)

(assert (= bs!258868 d!309372))

(declare-fun m!1250513 () Bool)

(assert (=> bs!258868 m!1250513))

(assert (=> b!1095081 d!309372))

(declare-fun b!1095919 () Bool)

(declare-fun res!486624 () Bool)

(declare-fun e!693815 () Bool)

(assert (=> b!1095919 (=> (not res!486624) (not e!693815))))

(assert (=> b!1095919 (= res!486624 (isBalanced!892 (++!2859 (c!185681 (++!2857 (sortObjectsByID!0 lt!368999) lt!368993)) (c!185681 (sortObjectsByID!0 lt!369004)))))))

(declare-fun b!1095921 () Bool)

(declare-fun res!486625 () Bool)

(assert (=> b!1095921 (=> (not res!486625) (not e!693815))))

(assert (=> b!1095921 (= res!486625 (>= (height!422 (++!2859 (c!185681 (++!2857 (sortObjectsByID!0 lt!368999) lt!368993)) (c!185681 (sortObjectsByID!0 lt!369004)))) (max!0 (height!422 (c!185681 (++!2857 (sortObjectsByID!0 lt!368999) lt!368993))) (height!422 (c!185681 (sortObjectsByID!0 lt!369004))))))))

(declare-fun b!1095920 () Bool)

(declare-fun res!486626 () Bool)

(assert (=> b!1095920 (=> (not res!486626) (not e!693815))))

(assert (=> b!1095920 (= res!486626 (<= (height!422 (++!2859 (c!185681 (++!2857 (sortObjectsByID!0 lt!368999) lt!368993)) (c!185681 (sortObjectsByID!0 lt!369004)))) (+ (max!0 (height!422 (c!185681 (++!2857 (sortObjectsByID!0 lt!368999) lt!368993))) (height!422 (c!185681 (sortObjectsByID!0 lt!369004)))) 1)))))

(declare-fun lt!369460 () BalanceConc!6472)

(declare-fun b!1095922 () Bool)

(assert (=> b!1095922 (= e!693815 (= (list!3778 lt!369460) (++!2855 (list!3778 (++!2857 (sortObjectsByID!0 lt!368999) lt!368993)) (list!3778 (sortObjectsByID!0 lt!369004)))))))

(declare-fun d!309374 () Bool)

(assert (=> d!309374 e!693815))

(declare-fun res!486623 () Bool)

(assert (=> d!309374 (=> (not res!486623) (not e!693815))))

(assert (=> d!309374 (= res!486623 (appendAssocInst!208 (c!185681 (++!2857 (sortObjectsByID!0 lt!368999) lt!368993)) (c!185681 (sortObjectsByID!0 lt!369004))))))

(assert (=> d!309374 (= lt!369460 (BalanceConc!6473 (++!2859 (c!185681 (++!2857 (sortObjectsByID!0 lt!368999) lt!368993)) (c!185681 (sortObjectsByID!0 lt!369004)))))))

(assert (=> d!309374 (= (++!2857 (++!2857 (sortObjectsByID!0 lt!368999) lt!368993) (sortObjectsByID!0 lt!369004)) lt!369460)))

(assert (= (and d!309374 res!486623) b!1095919))

(assert (= (and b!1095919 res!486624) b!1095920))

(assert (= (and b!1095920 res!486626) b!1095921))

(assert (= (and b!1095921 res!486625) b!1095922))

(declare-fun m!1250515 () Bool)

(assert (=> b!1095922 m!1250515))

(assert (=> b!1095922 m!1248455))

(declare-fun m!1250517 () Bool)

(assert (=> b!1095922 m!1250517))

(assert (=> b!1095922 m!1248441))

(assert (=> b!1095922 m!1248443))

(assert (=> b!1095922 m!1250517))

(assert (=> b!1095922 m!1248443))

(declare-fun m!1250519 () Bool)

(assert (=> b!1095922 m!1250519))

(declare-fun m!1250521 () Bool)

(assert (=> b!1095919 m!1250521))

(assert (=> b!1095919 m!1250521))

(declare-fun m!1250523 () Bool)

(assert (=> b!1095919 m!1250523))

(declare-fun m!1250525 () Bool)

(assert (=> b!1095921 m!1250525))

(assert (=> b!1095921 m!1250521))

(declare-fun m!1250527 () Bool)

(assert (=> b!1095921 m!1250527))

(assert (=> b!1095921 m!1250521))

(declare-fun m!1250529 () Bool)

(assert (=> b!1095921 m!1250529))

(assert (=> b!1095921 m!1250529))

(assert (=> b!1095921 m!1250525))

(declare-fun m!1250531 () Bool)

(assert (=> b!1095921 m!1250531))

(assert (=> b!1095920 m!1250525))

(assert (=> b!1095920 m!1250521))

(assert (=> b!1095920 m!1250527))

(assert (=> b!1095920 m!1250521))

(assert (=> b!1095920 m!1250529))

(assert (=> b!1095920 m!1250529))

(assert (=> b!1095920 m!1250525))

(assert (=> b!1095920 m!1250531))

(declare-fun m!1250533 () Bool)

(assert (=> d!309374 m!1250533))

(assert (=> d!309374 m!1250521))

(assert (=> b!1095081 d!309374))

(declare-fun d!309376 () Bool)

(declare-fun lt!369461 () Bool)

(assert (=> d!309376 (= lt!369461 (forall!2374 (list!3778 lt!368625) lambda!42568))))

(assert (=> d!309376 (= lt!369461 (forall!2377 (c!185681 lt!368625) lambda!42568))))

(assert (=> d!309376 (= (forall!2375 lt!368625 lambda!42568) lt!369461)))

(declare-fun bs!258869 () Bool)

(assert (= bs!258869 d!309376))

(assert (=> bs!258869 m!1247645))

(assert (=> bs!258869 m!1247645))

(declare-fun m!1250535 () Bool)

(assert (=> bs!258869 m!1250535))

(declare-fun m!1250537 () Bool)

(assert (=> bs!258869 m!1250537))

(assert (=> b!1095081 d!309376))

(declare-fun d!309378 () Bool)

(declare-fun lt!369462 () Bool)

(assert (=> d!309378 (= lt!369462 (contains!1801 (list!3778 lt!368999) lt!368989))))

(assert (=> d!309378 (= lt!369462 (contains!1802 (c!185681 lt!368999) lt!368989))))

(assert (=> d!309378 (= (contains!1798 lt!368999 lt!368989) lt!369462)))

(declare-fun bs!258870 () Bool)

(assert (= bs!258870 d!309378))

(assert (=> bs!258870 m!1248501))

(assert (=> bs!258870 m!1248501))

(declare-fun m!1250539 () Bool)

(assert (=> bs!258870 m!1250539))

(declare-fun m!1250541 () Bool)

(assert (=> bs!258870 m!1250541))

(assert (=> b!1095081 d!309378))

(declare-fun b!1095925 () Bool)

(declare-fun res!486627 () Bool)

(declare-fun e!693816 () Bool)

(assert (=> b!1095925 (=> (not res!486627) (not e!693816))))

(declare-fun lt!369463 () List!10546)

(assert (=> b!1095925 (= res!486627 (= (size!8149 lt!369463) (+ (size!8149 (list!3778 (sortObjectsByID!0 lt!368999))) (size!8149 (list!3778 lt!368993)))))))

(declare-fun b!1095924 () Bool)

(declare-fun e!693817 () List!10546)

(assert (=> b!1095924 (= e!693817 (Cons!10530 (h!15931 (list!3778 (sortObjectsByID!0 lt!368999))) (++!2855 (t!103088 (list!3778 (sortObjectsByID!0 lt!368999))) (list!3778 lt!368993))))))

(declare-fun d!309380 () Bool)

(assert (=> d!309380 e!693816))

(declare-fun res!486628 () Bool)

(assert (=> d!309380 (=> (not res!486628) (not e!693816))))

(assert (=> d!309380 (= res!486628 (= (content!1520 lt!369463) ((_ map or) (content!1520 (list!3778 (sortObjectsByID!0 lt!368999))) (content!1520 (list!3778 lt!368993)))))))

(assert (=> d!309380 (= lt!369463 e!693817)))

(declare-fun c!185931 () Bool)

(assert (=> d!309380 (= c!185931 ((_ is Nil!10530) (list!3778 (sortObjectsByID!0 lt!368999))))))

(assert (=> d!309380 (= (++!2855 (list!3778 (sortObjectsByID!0 lt!368999)) (list!3778 lt!368993)) lt!369463)))

(declare-fun b!1095923 () Bool)

(assert (=> b!1095923 (= e!693817 (list!3778 lt!368993))))

(declare-fun b!1095926 () Bool)

(assert (=> b!1095926 (= e!693816 (or (not (= (list!3778 lt!368993) Nil!10530)) (= lt!369463 (list!3778 (sortObjectsByID!0 lt!368999)))))))

(assert (= (and d!309380 c!185931) b!1095923))

(assert (= (and d!309380 (not c!185931)) b!1095924))

(assert (= (and d!309380 res!486628) b!1095925))

(assert (= (and b!1095925 res!486627) b!1095926))

(declare-fun m!1250543 () Bool)

(assert (=> b!1095925 m!1250543))

(assert (=> b!1095925 m!1248425))

(declare-fun m!1250545 () Bool)

(assert (=> b!1095925 m!1250545))

(assert (=> b!1095925 m!1248427))

(declare-fun m!1250547 () Bool)

(assert (=> b!1095925 m!1250547))

(assert (=> b!1095924 m!1248427))

(declare-fun m!1250549 () Bool)

(assert (=> b!1095924 m!1250549))

(declare-fun m!1250551 () Bool)

(assert (=> d!309380 m!1250551))

(assert (=> d!309380 m!1248425))

(declare-fun m!1250553 () Bool)

(assert (=> d!309380 m!1250553))

(assert (=> d!309380 m!1248427))

(declare-fun m!1250555 () Bool)

(assert (=> d!309380 m!1250555))

(assert (=> b!1095081 d!309380))

(declare-fun d!309382 () Bool)

(assert (=> d!309382 (forall!2374 lt!369014 lambda!42571)))

(declare-fun lt!369464 () Unit!16034)

(assert (=> d!309382 (= lt!369464 (choose!7058 lt!369014 lt!369010 lambda!42571))))

(assert (=> d!309382 (forall!2374 lt!369010 lambda!42571)))

(assert (=> d!309382 (= (lemmaForallSubseq!45 lt!369014 lt!369010 lambda!42571) lt!369464)))

(declare-fun bs!258871 () Bool)

(assert (= bs!258871 d!309382))

(assert (=> bs!258871 m!1248459))

(declare-fun m!1250557 () Bool)

(assert (=> bs!258871 m!1250557))

(declare-fun m!1250559 () Bool)

(assert (=> bs!258871 m!1250559))

(assert (=> b!1095081 d!309382))

(declare-fun d!309384 () Bool)

(declare-fun e!693818 () Bool)

(assert (=> d!309384 e!693818))

(declare-fun res!486629 () Bool)

(assert (=> d!309384 (=> res!486629 e!693818)))

(assert (=> d!309384 (= res!486629 (isEmpty!6672 lt!369018))))

(declare-fun lt!369465 () Unit!16034)

(assert (=> d!309384 (= lt!369465 (choose!7055 lt!369018 lambda!42568))))

(assert (=> d!309384 (not (forall!2374 lt!369018 lambda!42568))))

(assert (=> d!309384 (= (lemmaNotForallFilterShorter!43 lt!369018 lambda!42568) lt!369465)))

(declare-fun b!1095927 () Bool)

(assert (=> b!1095927 (= e!693818 (< (size!8149 (filter!276 lt!369018 lambda!42568)) (size!8149 lt!369018)))))

(assert (= (and d!309384 (not res!486629)) b!1095927))

(assert (=> d!309384 m!1248477))

(declare-fun m!1250561 () Bool)

(assert (=> d!309384 m!1250561))

(declare-fun m!1250563 () Bool)

(assert (=> d!309384 m!1250563))

(assert (=> b!1095927 m!1248493))

(assert (=> b!1095927 m!1248493))

(assert (=> b!1095927 m!1248495))

(assert (=> b!1095927 m!1248497))

(assert (=> b!1095081 d!309384))

(declare-fun d!309386 () Bool)

(assert (=> d!309386 (= (list!3778 (filter!277 lt!368625 lambda!42569)) (list!3780 (c!185681 (filter!277 lt!368625 lambda!42569))))))

(declare-fun bs!258872 () Bool)

(assert (= bs!258872 d!309386))

(declare-fun m!1250565 () Bool)

(assert (=> bs!258872 m!1250565))

(assert (=> b!1095081 d!309386))

(assert (=> b!1095081 d!308616))

(declare-fun b!1095928 () Bool)

(declare-fun res!486631 () Bool)

(declare-fun e!693819 () Bool)

(assert (=> b!1095928 (=> (not res!486631) (not e!693819))))

(assert (=> b!1095928 (= res!486631 (isBalanced!892 (++!2859 (c!185681 (sortObjectsByID!0 lt!368999)) (c!185681 lt!368993))))))

(declare-fun b!1095930 () Bool)

(declare-fun res!486632 () Bool)

(assert (=> b!1095930 (=> (not res!486632) (not e!693819))))

(assert (=> b!1095930 (= res!486632 (>= (height!422 (++!2859 (c!185681 (sortObjectsByID!0 lt!368999)) (c!185681 lt!368993))) (max!0 (height!422 (c!185681 (sortObjectsByID!0 lt!368999))) (height!422 (c!185681 lt!368993)))))))

(declare-fun b!1095929 () Bool)

(declare-fun res!486633 () Bool)

(assert (=> b!1095929 (=> (not res!486633) (not e!693819))))

(assert (=> b!1095929 (= res!486633 (<= (height!422 (++!2859 (c!185681 (sortObjectsByID!0 lt!368999)) (c!185681 lt!368993))) (+ (max!0 (height!422 (c!185681 (sortObjectsByID!0 lt!368999))) (height!422 (c!185681 lt!368993))) 1)))))

(declare-fun b!1095931 () Bool)

(declare-fun lt!369466 () BalanceConc!6472)

(assert (=> b!1095931 (= e!693819 (= (list!3778 lt!369466) (++!2855 (list!3778 (sortObjectsByID!0 lt!368999)) (list!3778 lt!368993))))))

(declare-fun d!309388 () Bool)

(assert (=> d!309388 e!693819))

(declare-fun res!486630 () Bool)

(assert (=> d!309388 (=> (not res!486630) (not e!693819))))

(assert (=> d!309388 (= res!486630 (appendAssocInst!208 (c!185681 (sortObjectsByID!0 lt!368999)) (c!185681 lt!368993)))))

(assert (=> d!309388 (= lt!369466 (BalanceConc!6473 (++!2859 (c!185681 (sortObjectsByID!0 lt!368999)) (c!185681 lt!368993))))))

(assert (=> d!309388 (= (++!2857 (sortObjectsByID!0 lt!368999) lt!368993) lt!369466)))

(assert (= (and d!309388 res!486630) b!1095928))

(assert (= (and b!1095928 res!486631) b!1095929))

(assert (= (and b!1095929 res!486633) b!1095930))

(assert (= (and b!1095930 res!486632) b!1095931))

(declare-fun m!1250567 () Bool)

(assert (=> b!1095931 m!1250567))

(assert (=> b!1095931 m!1248433))

(assert (=> b!1095931 m!1248425))

(assert (=> b!1095931 m!1248427))

(assert (=> b!1095931 m!1248425))

(assert (=> b!1095931 m!1248427))

(assert (=> b!1095931 m!1248429))

(declare-fun m!1250569 () Bool)

(assert (=> b!1095928 m!1250569))

(assert (=> b!1095928 m!1250569))

(declare-fun m!1250571 () Bool)

(assert (=> b!1095928 m!1250571))

(declare-fun m!1250573 () Bool)

(assert (=> b!1095930 m!1250573))

(assert (=> b!1095930 m!1250569))

(declare-fun m!1250575 () Bool)

(assert (=> b!1095930 m!1250575))

(assert (=> b!1095930 m!1250569))

(declare-fun m!1250577 () Bool)

(assert (=> b!1095930 m!1250577))

(assert (=> b!1095930 m!1250577))

(assert (=> b!1095930 m!1250573))

(declare-fun m!1250579 () Bool)

(assert (=> b!1095930 m!1250579))

(assert (=> b!1095929 m!1250573))

(assert (=> b!1095929 m!1250569))

(assert (=> b!1095929 m!1250575))

(assert (=> b!1095929 m!1250569))

(assert (=> b!1095929 m!1250577))

(assert (=> b!1095929 m!1250577))

(assert (=> b!1095929 m!1250573))

(assert (=> b!1095929 m!1250579))

(declare-fun m!1250581 () Bool)

(assert (=> d!309388 m!1250581))

(assert (=> d!309388 m!1250569))

(assert (=> b!1095081 d!309388))

(declare-fun d!309390 () Bool)

(assert (=> d!309390 (subseq!148 (filter!276 (list!3778 lt!368625) lambda!42569) (list!3778 lt!368625))))

(declare-fun lt!369467 () Unit!16034)

(assert (=> d!309390 (= lt!369467 (choose!7057 (list!3778 lt!368625) lambda!42569))))

(assert (=> d!309390 (= (filterSubseq!37 (list!3778 lt!368625) lambda!42569) lt!369467)))

(declare-fun bs!258873 () Bool)

(assert (= bs!258873 d!309390))

(assert (=> bs!258873 m!1247645))

(assert (=> bs!258873 m!1250493))

(assert (=> bs!258873 m!1250493))

(assert (=> bs!258873 m!1247645))

(declare-fun m!1250583 () Bool)

(assert (=> bs!258873 m!1250583))

(assert (=> bs!258873 m!1247645))

(declare-fun m!1250585 () Bool)

(assert (=> bs!258873 m!1250585))

(assert (=> b!1095081 d!309390))

(declare-fun d!309392 () Bool)

(declare-fun res!486634 () Bool)

(declare-fun e!693820 () Bool)

(assert (=> d!309392 (=> res!486634 e!693820)))

(assert (=> d!309392 (= res!486634 ((_ is Nil!10530) lt!369017))))

(assert (=> d!309392 (= (forall!2374 lt!369017 lambda!42571) e!693820)))

(declare-fun b!1095932 () Bool)

(declare-fun e!693821 () Bool)

(assert (=> b!1095932 (= e!693820 e!693821)))

(declare-fun res!486635 () Bool)

(assert (=> b!1095932 (=> (not res!486635) (not e!693821))))

(assert (=> b!1095932 (= res!486635 (dynLambda!4609 lambda!42571 (h!15931 lt!369017)))))

(declare-fun b!1095933 () Bool)

(assert (=> b!1095933 (= e!693821 (forall!2374 (t!103088 lt!369017) lambda!42571))))

(assert (= (and d!309392 (not res!486634)) b!1095932))

(assert (= (and b!1095932 res!486635) b!1095933))

(declare-fun b_lambda!31469 () Bool)

(assert (=> (not b_lambda!31469) (not b!1095932)))

(declare-fun m!1250587 () Bool)

(assert (=> b!1095932 m!1250587))

(declare-fun m!1250589 () Bool)

(assert (=> b!1095933 m!1250589))

(assert (=> b!1095081 d!309392))

(declare-fun d!309394 () Bool)

(assert (=> d!309394 (forall!2374 (++!2855 (++!2855 (list!3778 (sortObjectsByID!0 lt!368999)) (list!3778 lt!368993)) (list!3778 (sortObjectsByID!0 lt!369004))) lambda!42571)))

(declare-fun lt!369468 () Unit!16034)

(assert (=> d!309394 (= lt!369468 (choose!7059 (++!2855 (list!3778 (sortObjectsByID!0 lt!368999)) (list!3778 lt!368993)) (list!3778 (sortObjectsByID!0 lt!369004)) lambda!42571))))

(assert (=> d!309394 (forall!2374 (++!2855 (list!3778 (sortObjectsByID!0 lt!368999)) (list!3778 lt!368993)) lambda!42571)))

(assert (=> d!309394 (= (lemmaConcatPreservesForall!88 (++!2855 (list!3778 (sortObjectsByID!0 lt!368999)) (list!3778 lt!368993)) (list!3778 (sortObjectsByID!0 lt!369004)) lambda!42571) lt!369468)))

(declare-fun bs!258874 () Bool)

(assert (= bs!258874 d!309394))

(assert (=> bs!258874 m!1248429))

(assert (=> bs!258874 m!1248443))

(declare-fun m!1250591 () Bool)

(assert (=> bs!258874 m!1250591))

(assert (=> bs!258874 m!1250591))

(declare-fun m!1250593 () Bool)

(assert (=> bs!258874 m!1250593))

(assert (=> bs!258874 m!1248429))

(assert (=> bs!258874 m!1248443))

(declare-fun m!1250595 () Bool)

(assert (=> bs!258874 m!1250595))

(assert (=> bs!258874 m!1248429))

(assert (=> bs!258874 m!1250367))

(assert (=> b!1095081 d!309394))

(declare-fun d!309396 () Bool)

(assert (=> d!309396 (= (list!3778 lt!368993) (list!3780 (c!185681 lt!368993)))))

(declare-fun bs!258875 () Bool)

(assert (= bs!258875 d!309396))

(declare-fun m!1250597 () Bool)

(assert (=> bs!258875 m!1250597))

(assert (=> b!1095081 d!309396))

(declare-fun bs!258876 () Bool)

(declare-fun b!1095943 () Bool)

(assert (= bs!258876 (and b!1095943 b!1095829)))

(declare-fun lambda!42608 () Int)

(assert (=> bs!258876 (not (= lambda!42608 lambda!42594))))

(declare-fun bs!258877 () Bool)

(assert (= bs!258877 (and b!1095943 b!1095908)))

(assert (=> bs!258877 (not (= lambda!42608 lambda!42605))))

(declare-fun bs!258878 () Bool)

(assert (= bs!258878 (and b!1095943 b!1095045)))

(assert (=> bs!258878 (not (= lambda!42608 lambda!42566))))

(assert (=> bs!258878 (not (= lambda!42608 lambda!42565))))

(declare-fun bs!258879 () Bool)

(assert (= bs!258879 (and b!1095943 b!1095081)))

(assert (=> bs!258879 (not (= lambda!42608 lambda!42569))))

(declare-fun bs!258880 () Bool)

(assert (= bs!258880 (and b!1095943 d!308738)))

(assert (=> bs!258880 (not (= lambda!42608 lambda!42572))))

(assert (=> bs!258876 (not (= lambda!42608 lambda!42596))))

(assert (=> bs!258879 (not (= lambda!42608 lambda!42571))))

(declare-fun bs!258881 () Bool)

(assert (= bs!258881 (and b!1095943 b!1094737)))

(assert (=> bs!258881 (not (= lambda!42608 lambda!42459))))

(assert (=> bs!258879 (not (= lambda!42608 lambda!42570))))

(assert (=> bs!258876 (not (= lambda!42608 lambda!42595))))

(assert (=> bs!258881 (not (= lambda!42608 lambda!42460))))

(declare-fun lt!369469 () tuple2!11726)

(assert (=> bs!258878 (= (= (_1!6689 lt!369469) (_1!6689 lt!368940)) (= lambda!42608 lambda!42563))))

(declare-fun bs!258882 () Bool)

(assert (= bs!258882 (and b!1095943 b!1095851)))

(assert (=> bs!258882 (not (= lambda!42608 lambda!42600))))

(assert (=> bs!258882 (not (= lambda!42608 lambda!42599))))

(declare-fun bs!258883 () Bool)

(assert (= bs!258883 (and b!1095943 start!93782)))

(assert (=> bs!258883 (not (= lambda!42608 lambda!42457))))

(assert (=> bs!258877 (not (= lambda!42608 lambda!42606))))

(assert (=> bs!258881 (= (= (_1!6689 lt!369469) (_1!6689 lt!368619)) (= lambda!42608 lambda!42458))))

(assert (=> bs!258882 (= (= (_1!6689 lt!369469) (_1!6689 lt!369356)) (= lambda!42608 lambda!42598))))

(assert (=> bs!258882 (not (= lambda!42608 lambda!42601))))

(declare-fun bs!258884 () Bool)

(assert (= bs!258884 (and b!1095943 d!309360)))

(assert (=> bs!258884 (not (= lambda!42608 lambda!42607))))

(assert (=> bs!258879 (= (= (_1!6689 lt!369469) (_1!6689 lt!368989)) (= lambda!42608 lambda!42568))))

(assert (=> bs!258876 (= (= (_1!6689 lt!369469) (_1!6689 lt!369317)) (= lambda!42608 lambda!42593))))

(declare-fun bs!258885 () Bool)

(assert (= bs!258885 (and b!1095943 d!309280)))

(assert (=> bs!258885 (not (= lambda!42608 lambda!42602))))

(assert (=> bs!258878 (not (= lambda!42608 lambda!42564))))

(assert (=> bs!258877 (not (= lambda!42608 lambda!42604))))

(declare-fun bs!258886 () Bool)

(assert (= bs!258886 (and b!1095943 d!309264)))

(assert (=> bs!258886 (not (= lambda!42608 lambda!42597))))

(assert (=> bs!258877 (= (= (_1!6689 lt!369469) (_1!6689 lt!369420)) (= lambda!42608 lambda!42603))))

(declare-fun bs!258887 () Bool)

(assert (= bs!258887 (and b!1095943 d!308628)))

(assert (=> bs!258887 (not (= lambda!42608 lambda!42567))))

(declare-fun b!1095947 () Bool)

(declare-fun e!693830 () Bool)

(assert (=> b!1095947 (= e!693830 true)))

(declare-fun b!1095946 () Bool)

(declare-fun e!693829 () Bool)

(assert (=> b!1095946 (= e!693829 e!693830)))

(assert (=> b!1095943 e!693829))

(assert (= b!1095946 b!1095947))

(assert (= b!1095943 b!1095946))

(declare-fun lambda!42609 () Int)

(assert (=> bs!258876 (= (= (_1!6689 lt!369469) (_1!6689 lt!369317)) (= lambda!42609 lambda!42594))))

(assert (=> bs!258877 (not (= lambda!42609 lambda!42605))))

(assert (=> bs!258878 (not (= lambda!42609 lambda!42566))))

(assert (=> bs!258878 (not (= lambda!42609 lambda!42565))))

(assert (=> bs!258879 (= (= (_1!6689 lt!369469) (_1!6689 lt!368989)) (= lambda!42609 lambda!42569))))

(assert (=> bs!258880 (not (= lambda!42609 lambda!42572))))

(assert (=> bs!258876 (not (= lambda!42609 lambda!42596))))

(assert (=> bs!258879 (not (= lambda!42609 lambda!42571))))

(assert (=> bs!258881 (= (= (_1!6689 lt!369469) (_1!6689 lt!368619)) (= lambda!42609 lambda!42459))))

(assert (=> bs!258879 (not (= lambda!42609 lambda!42570))))

(assert (=> b!1095943 (not (= lambda!42609 lambda!42608))))

(assert (=> bs!258876 (not (= lambda!42609 lambda!42595))))

(assert (=> bs!258881 (not (= lambda!42609 lambda!42460))))

(assert (=> bs!258878 (not (= lambda!42609 lambda!42563))))

(assert (=> bs!258882 (not (= lambda!42609 lambda!42600))))

(assert (=> bs!258882 (= (= (_1!6689 lt!369469) (_1!6689 lt!369356)) (= lambda!42609 lambda!42599))))

(assert (=> bs!258883 (not (= lambda!42609 lambda!42457))))

(assert (=> bs!258877 (not (= lambda!42609 lambda!42606))))

(assert (=> bs!258881 (not (= lambda!42609 lambda!42458))))

(assert (=> bs!258882 (not (= lambda!42609 lambda!42598))))

(assert (=> bs!258882 (not (= lambda!42609 lambda!42601))))

(assert (=> bs!258884 (not (= lambda!42609 lambda!42607))))

(assert (=> bs!258879 (not (= lambda!42609 lambda!42568))))

(assert (=> bs!258876 (not (= lambda!42609 lambda!42593))))

(assert (=> bs!258885 (not (= lambda!42609 lambda!42602))))

(assert (=> bs!258878 (= (= (_1!6689 lt!369469) (_1!6689 lt!368940)) (= lambda!42609 lambda!42564))))

(assert (=> bs!258877 (= (= (_1!6689 lt!369469) (_1!6689 lt!369420)) (= lambda!42609 lambda!42604))))

(assert (=> bs!258886 (not (= lambda!42609 lambda!42597))))

(assert (=> bs!258877 (not (= lambda!42609 lambda!42603))))

(assert (=> bs!258887 (not (= lambda!42609 lambda!42567))))

(declare-fun b!1095949 () Bool)

(declare-fun e!693832 () Bool)

(assert (=> b!1095949 (= e!693832 true)))

(declare-fun b!1095948 () Bool)

(declare-fun e!693831 () Bool)

(assert (=> b!1095948 (= e!693831 e!693832)))

(assert (=> b!1095943 e!693831))

(assert (= b!1095948 b!1095949))

(assert (= b!1095943 b!1095948))

(declare-fun lambda!42610 () Int)

(assert (=> bs!258876 (not (= lambda!42610 lambda!42594))))

(assert (=> bs!258877 (= (= (_1!6689 lt!369469) (_1!6689 lt!369420)) (= lambda!42610 lambda!42605))))

(assert (=> bs!258878 (not (= lambda!42610 lambda!42566))))

(assert (=> bs!258878 (= (= (_1!6689 lt!369469) (_1!6689 lt!368940)) (= lambda!42610 lambda!42565))))

(assert (=> b!1095943 (not (= lambda!42610 lambda!42609))))

(assert (=> bs!258879 (not (= lambda!42610 lambda!42569))))

(assert (=> bs!258880 (not (= lambda!42610 lambda!42572))))

(assert (=> bs!258876 (not (= lambda!42610 lambda!42596))))

(assert (=> bs!258879 (not (= lambda!42610 lambda!42571))))

(assert (=> bs!258881 (not (= lambda!42610 lambda!42459))))

(assert (=> bs!258879 (= (= (_1!6689 lt!369469) (_1!6689 lt!368989)) (= lambda!42610 lambda!42570))))

(assert (=> b!1095943 (not (= lambda!42610 lambda!42608))))

(assert (=> bs!258876 (= (= (_1!6689 lt!369469) (_1!6689 lt!369317)) (= lambda!42610 lambda!42595))))

(assert (=> bs!258881 (= (= (_1!6689 lt!369469) (_1!6689 lt!368619)) (= lambda!42610 lambda!42460))))

(assert (=> bs!258878 (not (= lambda!42610 lambda!42563))))

(assert (=> bs!258882 (= (= (_1!6689 lt!369469) (_1!6689 lt!369356)) (= lambda!42610 lambda!42600))))

(assert (=> bs!258882 (not (= lambda!42610 lambda!42599))))

(assert (=> bs!258883 (not (= lambda!42610 lambda!42457))))

(assert (=> bs!258877 (not (= lambda!42610 lambda!42606))))

(assert (=> bs!258881 (not (= lambda!42610 lambda!42458))))

(assert (=> bs!258882 (not (= lambda!42610 lambda!42598))))

(assert (=> bs!258882 (not (= lambda!42610 lambda!42601))))

(assert (=> bs!258884 (not (= lambda!42610 lambda!42607))))

(assert (=> bs!258879 (not (= lambda!42610 lambda!42568))))

(assert (=> bs!258876 (not (= lambda!42610 lambda!42593))))

(assert (=> bs!258885 (not (= lambda!42610 lambda!42602))))

(assert (=> bs!258878 (not (= lambda!42610 lambda!42564))))

(assert (=> bs!258877 (not (= lambda!42610 lambda!42604))))

(assert (=> bs!258886 (not (= lambda!42610 lambda!42597))))

(assert (=> bs!258877 (not (= lambda!42610 lambda!42603))))

(assert (=> bs!258887 (not (= lambda!42610 lambda!42567))))

(declare-fun b!1095951 () Bool)

(declare-fun e!693834 () Bool)

(assert (=> b!1095951 (= e!693834 true)))

(declare-fun b!1095950 () Bool)

(declare-fun e!693833 () Bool)

(assert (=> b!1095950 (= e!693833 e!693834)))

(assert (=> b!1095943 e!693833))

(assert (= b!1095950 b!1095951))

(assert (= b!1095943 b!1095950))

(declare-fun lambda!42611 () Int)

(assert (=> bs!258876 (not (= lambda!42611 lambda!42594))))

(assert (=> bs!258877 (not (= lambda!42611 lambda!42605))))

(assert (=> bs!258878 (= lambda!42611 lambda!42566)))

(assert (=> bs!258878 (not (= lambda!42611 lambda!42565))))

(assert (=> b!1095943 (not (= lambda!42611 lambda!42609))))

(assert (=> bs!258879 (not (= lambda!42611 lambda!42569))))

(assert (=> bs!258880 (= lambda!42611 lambda!42572)))

(assert (=> bs!258876 (= lambda!42611 lambda!42596)))

(assert (=> bs!258879 (= lambda!42611 lambda!42571)))

(assert (=> bs!258881 (not (= lambda!42611 lambda!42459))))

(assert (=> bs!258879 (not (= lambda!42611 lambda!42570))))

(assert (=> b!1095943 (not (= lambda!42611 lambda!42608))))

(assert (=> b!1095943 (not (= lambda!42611 lambda!42610))))

(assert (=> bs!258876 (not (= lambda!42611 lambda!42595))))

(assert (=> bs!258881 (not (= lambda!42611 lambda!42460))))

(assert (=> bs!258878 (not (= lambda!42611 lambda!42563))))

(assert (=> bs!258882 (not (= lambda!42611 lambda!42600))))

(assert (=> bs!258882 (not (= lambda!42611 lambda!42599))))

(assert (=> bs!258883 (= lambda!42611 lambda!42457)))

(assert (=> bs!258877 (= lambda!42611 lambda!42606)))

(assert (=> bs!258881 (not (= lambda!42611 lambda!42458))))

(assert (=> bs!258882 (not (= lambda!42611 lambda!42598))))

(assert (=> bs!258882 (= lambda!42611 lambda!42601)))

(assert (=> bs!258884 (= lambda!42611 lambda!42607)))

(assert (=> bs!258879 (not (= lambda!42611 lambda!42568))))

(assert (=> bs!258876 (not (= lambda!42611 lambda!42593))))

(assert (=> bs!258885 (= lambda!42611 lambda!42602)))

(assert (=> bs!258878 (not (= lambda!42611 lambda!42564))))

(assert (=> bs!258877 (not (= lambda!42611 lambda!42604))))

(assert (=> bs!258886 (= lambda!42611 lambda!42597)))

(assert (=> bs!258877 (not (= lambda!42611 lambda!42603))))

(assert (=> bs!258887 (= lambda!42611 lambda!42567)))

(declare-fun bs!258888 () Bool)

(declare-fun d!309398 () Bool)

(assert (= bs!258888 (and d!309398 b!1095829)))

(declare-fun lambda!42612 () Int)

(assert (=> bs!258888 (not (= lambda!42612 lambda!42594))))

(declare-fun bs!258889 () Bool)

(assert (= bs!258889 (and d!309398 b!1095908)))

(assert (=> bs!258889 (not (= lambda!42612 lambda!42605))))

(declare-fun bs!258890 () Bool)

(assert (= bs!258890 (and d!309398 b!1095045)))

(assert (=> bs!258890 (= lambda!42612 lambda!42566)))

(assert (=> bs!258890 (not (= lambda!42612 lambda!42565))))

(declare-fun bs!258891 () Bool)

(assert (= bs!258891 (and d!309398 b!1095081)))

(assert (=> bs!258891 (not (= lambda!42612 lambda!42569))))

(declare-fun bs!258892 () Bool)

(assert (= bs!258892 (and d!309398 d!308738)))

(assert (=> bs!258892 (= lambda!42612 lambda!42572)))

(assert (=> bs!258888 (= lambda!42612 lambda!42596)))

(assert (=> bs!258891 (= lambda!42612 lambda!42571)))

(declare-fun bs!258893 () Bool)

(assert (= bs!258893 (and d!309398 b!1094737)))

(assert (=> bs!258893 (not (= lambda!42612 lambda!42459))))

(assert (=> bs!258891 (not (= lambda!42612 lambda!42570))))

(declare-fun bs!258894 () Bool)

(assert (= bs!258894 (and d!309398 b!1095943)))

(assert (=> bs!258894 (not (= lambda!42612 lambda!42608))))

(assert (=> bs!258894 (not (= lambda!42612 lambda!42610))))

(assert (=> bs!258888 (not (= lambda!42612 lambda!42595))))

(assert (=> bs!258893 (not (= lambda!42612 lambda!42460))))

(assert (=> bs!258890 (not (= lambda!42612 lambda!42563))))

(declare-fun bs!258895 () Bool)

(assert (= bs!258895 (and d!309398 b!1095851)))

(assert (=> bs!258895 (not (= lambda!42612 lambda!42600))))

(assert (=> bs!258895 (not (= lambda!42612 lambda!42599))))

(declare-fun bs!258896 () Bool)

(assert (= bs!258896 (and d!309398 start!93782)))

(assert (=> bs!258896 (= lambda!42612 lambda!42457)))

(assert (=> bs!258889 (= lambda!42612 lambda!42606)))

(assert (=> bs!258893 (not (= lambda!42612 lambda!42458))))

(assert (=> bs!258895 (not (= lambda!42612 lambda!42598))))

(assert (=> bs!258895 (= lambda!42612 lambda!42601)))

(declare-fun bs!258897 () Bool)

(assert (= bs!258897 (and d!309398 d!309360)))

(assert (=> bs!258897 (= lambda!42612 lambda!42607)))

(assert (=> bs!258891 (not (= lambda!42612 lambda!42568))))

(assert (=> bs!258888 (not (= lambda!42612 lambda!42593))))

(declare-fun bs!258898 () Bool)

(assert (= bs!258898 (and d!309398 d!309280)))

(assert (=> bs!258898 (= lambda!42612 lambda!42602)))

(assert (=> bs!258890 (not (= lambda!42612 lambda!42564))))

(assert (=> bs!258889 (not (= lambda!42612 lambda!42604))))

(declare-fun bs!258899 () Bool)

(assert (= bs!258899 (and d!309398 d!309264)))

(assert (=> bs!258899 (= lambda!42612 lambda!42597)))

(assert (=> bs!258889 (not (= lambda!42612 lambda!42603))))

(declare-fun bs!258900 () Bool)

(assert (= bs!258900 (and d!309398 d!308628)))

(assert (=> bs!258900 (= lambda!42612 lambda!42567)))

(assert (=> bs!258894 (= lambda!42612 lambda!42611)))

(assert (=> bs!258894 (not (= lambda!42612 lambda!42609))))

(declare-fun b!1095934 () Bool)

(assert (=> b!1095934 true))

(declare-fun lt!369488 () Unit!16034)

(declare-fun lt!369479 () BalanceConc!6472)

(assert (=> b!1095934 (= lt!369488 (forallContained!502 (list!3778 lt!369479) lambda!42608 lt!369469))))

(declare-fun e!693827 () Unit!16034)

(declare-fun err!2383 () Unit!16034)

(assert (=> b!1095934 (= e!693827 err!2383)))

(declare-fun b!1095935 () Bool)

(declare-fun e!693824 () Bool)

(declare-fun lt!369485 () List!10546)

(assert (=> b!1095935 (= e!693824 (< (size!8149 (filter!276 lt!369485 lambda!42610)) (size!8149 lt!369485)))))

(declare-fun b!1095936 () Bool)

(declare-fun e!693822 () BalanceConc!6472)

(assert (=> b!1095936 (= e!693822 lt!369004)))

(declare-fun b!1095937 () Bool)

(assert (=> b!1095937 true))

(declare-fun lt!369484 () BalanceConc!6472)

(declare-fun lt!369477 () Unit!16034)

(assert (=> b!1095937 (= lt!369477 (forallContained!502 (list!3778 lt!369484) lambda!42610 lt!369469))))

(declare-fun e!693828 () Unit!16034)

(declare-fun err!2385 () Unit!16034)

(assert (=> b!1095937 (= e!693828 err!2385)))

(declare-fun b!1095938 () Bool)

(declare-fun e!693826 () Unit!16034)

(declare-fun Unit!16077 () Unit!16034)

(assert (=> b!1095938 (= e!693826 Unit!16077)))

(declare-fun b!1095939 () Bool)

(declare-fun Unit!16078 () Unit!16034)

(assert (=> b!1095939 (= e!693828 Unit!16078)))

(declare-fun lt!369481 () BalanceConc!6472)

(assert (=> d!309398 (forall!2375 lt!369481 lambda!42612)))

(assert (=> d!309398 (= lt!369481 e!693822)))

(declare-fun c!185932 () Bool)

(assert (=> d!309398 (= c!185932 (<= (size!8150 lt!369004) 1))))

(assert (=> d!309398 (= (sortObjectsByID!0 lt!369004) lt!369481)))

(declare-fun b!1095940 () Bool)

(declare-fun e!693825 () Unit!16034)

(declare-fun Unit!16079 () Unit!16034)

(assert (=> b!1095940 (= e!693825 Unit!16079)))

(declare-fun b!1095941 () Bool)

(declare-fun Unit!16080 () Unit!16034)

(assert (=> b!1095941 (= e!693827 Unit!16080)))

(declare-fun b!1095942 () Bool)

(assert (=> b!1095942 true))

(declare-fun lt!369483 () Unit!16034)

(assert (=> b!1095942 (= lt!369483 (forallContained!502 (list!3778 lt!369004) lambda!42610 lt!369469))))

(declare-fun err!2382 () Unit!16034)

(assert (=> b!1095942 (= e!693826 err!2382)))

(declare-fun lt!369473 () BalanceConc!6472)

(assert (=> b!1095943 (= e!693822 (++!2857 (++!2857 (sortObjectsByID!0 lt!369479) lt!369473) (sortObjectsByID!0 lt!369484)))))

(assert (=> b!1095943 (= lt!369469 (apply!2077 lt!369004 (ite (>= (size!8150 lt!369004) 0) (div (size!8150 lt!369004) 2) (- (div (- (size!8150 lt!369004)) 2)))))))

(assert (=> b!1095943 (= lt!369479 (filter!277 lt!369004 lambda!42608))))

(assert (=> b!1095943 (= lt!369473 (filter!277 lt!369004 lambda!42609))))

(assert (=> b!1095943 (= lt!369484 (filter!277 lt!369004 lambda!42610))))

(declare-fun c!185933 () Bool)

(assert (=> b!1095943 (= c!185933 (contains!1798 lt!369479 lt!369469))))

(declare-fun lt!369500 () Unit!16034)

(assert (=> b!1095943 (= lt!369500 e!693827)))

(declare-fun c!185935 () Bool)

(assert (=> b!1095943 (= c!185935 (forall!2375 lt!369004 lambda!42608))))

(declare-fun lt!369502 () Unit!16034)

(assert (=> b!1095943 (= lt!369502 e!693825)))

(declare-fun lt!369498 () List!10546)

(assert (=> b!1095943 (= lt!369498 (list!3778 lt!369004))))

(declare-fun lt!369503 () Unit!16034)

(assert (=> b!1095943 (= lt!369503 (lemmaNotForallFilterShorter!43 lt!369498 lambda!42608))))

(declare-fun res!486636 () Bool)

(assert (=> b!1095943 (= res!486636 (isEmpty!6672 lt!369498))))

(declare-fun e!693823 () Bool)

(assert (=> b!1095943 (=> res!486636 e!693823)))

(assert (=> b!1095943 e!693823))

(declare-fun lt!369493 () Unit!16034)

(assert (=> b!1095943 (= lt!369493 lt!369503)))

(declare-fun c!185936 () Bool)

(assert (=> b!1095943 (= c!185936 (contains!1798 lt!369484 lt!369469))))

(declare-fun lt!369504 () Unit!16034)

(assert (=> b!1095943 (= lt!369504 e!693828)))

(declare-fun c!185934 () Bool)

(assert (=> b!1095943 (= c!185934 (forall!2375 lt!369004 lambda!42610))))

(declare-fun lt!369489 () Unit!16034)

(assert (=> b!1095943 (= lt!369489 e!693826)))

(assert (=> b!1095943 (= lt!369485 (list!3778 lt!369004))))

(declare-fun lt!369501 () Unit!16034)

(assert (=> b!1095943 (= lt!369501 (lemmaNotForallFilterShorter!43 lt!369485 lambda!42610))))

(declare-fun res!486637 () Bool)

(assert (=> b!1095943 (= res!486637 (isEmpty!6672 lt!369485))))

(assert (=> b!1095943 (=> res!486637 e!693824)))

(assert (=> b!1095943 e!693824))

(declare-fun lt!369471 () Unit!16034)

(assert (=> b!1095943 (= lt!369471 lt!369501)))

(declare-fun lt!369492 () Unit!16034)

(assert (=> b!1095943 (= lt!369492 (filterSubseq!37 (list!3778 lt!369004) lambda!42608))))

(declare-fun lt!369472 () Unit!16034)

(assert (=> b!1095943 (= lt!369472 (filterSubseq!37 (list!3778 lt!369004) lambda!42609))))

(declare-fun lt!369476 () Unit!16034)

(assert (=> b!1095943 (= lt!369476 (filterSubseq!37 (list!3778 lt!369004) lambda!42610))))

(declare-fun lt!369497 () List!10546)

(assert (=> b!1095943 (= lt!369497 (list!3778 (filter!277 lt!369004 lambda!42608)))))

(declare-fun lt!369470 () List!10546)

(assert (=> b!1095943 (= lt!369470 (list!3778 lt!369004))))

(declare-fun lt!369486 () Unit!16034)

(assert (=> b!1095943 (= lt!369486 (lemmaForallSubseq!45 lt!369497 lt!369470 lambda!42611))))

(assert (=> b!1095943 (forall!2374 lt!369497 lambda!42611)))

(declare-fun lt!369480 () Unit!16034)

(assert (=> b!1095943 (= lt!369480 lt!369486)))

(declare-fun lt!369494 () List!10546)

(assert (=> b!1095943 (= lt!369494 (list!3778 (filter!277 lt!369004 lambda!42609)))))

(declare-fun lt!369490 () List!10546)

(assert (=> b!1095943 (= lt!369490 (list!3778 lt!369004))))

(declare-fun lt!369478 () Unit!16034)

(assert (=> b!1095943 (= lt!369478 (lemmaForallSubseq!45 lt!369494 lt!369490 lambda!42611))))

(assert (=> b!1095943 (forall!2374 lt!369494 lambda!42611)))

(declare-fun lt!369487 () Unit!16034)

(assert (=> b!1095943 (= lt!369487 lt!369478)))

(declare-fun lt!369495 () List!10546)

(assert (=> b!1095943 (= lt!369495 (list!3778 (filter!277 lt!369004 lambda!42610)))))

(declare-fun lt!369496 () List!10546)

(assert (=> b!1095943 (= lt!369496 (list!3778 lt!369004))))

(declare-fun lt!369482 () Unit!16034)

(assert (=> b!1095943 (= lt!369482 (lemmaForallSubseq!45 lt!369495 lt!369496 lambda!42611))))

(assert (=> b!1095943 (forall!2374 lt!369495 lambda!42611)))

(declare-fun lt!369475 () Unit!16034)

(assert (=> b!1095943 (= lt!369475 lt!369482)))

(declare-fun lt!369491 () Unit!16034)

(assert (=> b!1095943 (= lt!369491 (lemmaConcatPreservesForall!88 (list!3778 (sortObjectsByID!0 lt!369479)) (list!3778 lt!369473) lambda!42611))))

(declare-fun lt!369474 () Unit!16034)

(assert (=> b!1095943 (= lt!369474 (lemmaConcatPreservesForall!88 (++!2855 (list!3778 (sortObjectsByID!0 lt!369479)) (list!3778 lt!369473)) (list!3778 (sortObjectsByID!0 lt!369484)) lambda!42611))))

(declare-fun b!1095944 () Bool)

(assert (=> b!1095944 (= e!693823 (< (size!8149 (filter!276 lt!369498 lambda!42608)) (size!8149 lt!369498)))))

(declare-fun b!1095945 () Bool)

(assert (=> b!1095945 true))

(declare-fun lt!369499 () Unit!16034)

(assert (=> b!1095945 (= lt!369499 (forallContained!502 (list!3778 lt!369004) lambda!42608 lt!369469))))

(declare-fun err!2384 () Unit!16034)

(assert (=> b!1095945 (= e!693825 err!2384)))

(assert (= (and d!309398 c!185932) b!1095936))

(assert (= (and d!309398 (not c!185932)) b!1095943))

(assert (= (and b!1095943 c!185933) b!1095934))

(assert (= (and b!1095943 (not c!185933)) b!1095941))

(assert (= (and b!1095943 c!185935) b!1095945))

(assert (= (and b!1095943 (not c!185935)) b!1095940))

(assert (= (and b!1095943 (not res!486636)) b!1095944))

(assert (= (and b!1095943 c!185936) b!1095937))

(assert (= (and b!1095943 (not c!185936)) b!1095939))

(assert (= (and b!1095943 c!185934) b!1095942))

(assert (= (and b!1095943 (not c!185934)) b!1095938))

(assert (= (and b!1095943 (not res!486637)) b!1095935))

(declare-fun m!1250599 () Bool)

(assert (=> b!1095943 m!1250599))

(declare-fun m!1250601 () Bool)

(assert (=> b!1095943 m!1250601))

(declare-fun m!1250603 () Bool)

(assert (=> b!1095943 m!1250603))

(declare-fun m!1250605 () Bool)

(assert (=> b!1095943 m!1250605))

(declare-fun m!1250607 () Bool)

(assert (=> b!1095943 m!1250607))

(assert (=> b!1095943 m!1250599))

(declare-fun m!1250609 () Bool)

(assert (=> b!1095943 m!1250609))

(assert (=> b!1095943 m!1250607))

(declare-fun m!1250611 () Bool)

(assert (=> b!1095943 m!1250611))

(declare-fun m!1250613 () Bool)

(assert (=> b!1095943 m!1250613))

(declare-fun m!1250615 () Bool)

(assert (=> b!1095943 m!1250615))

(declare-fun m!1250617 () Bool)

(assert (=> b!1095943 m!1250617))

(declare-fun m!1250619 () Bool)

(assert (=> b!1095943 m!1250619))

(assert (=> b!1095943 m!1250605))

(declare-fun m!1250621 () Bool)

(assert (=> b!1095943 m!1250621))

(declare-fun m!1250623 () Bool)

(assert (=> b!1095943 m!1250623))

(declare-fun m!1250625 () Bool)

(assert (=> b!1095943 m!1250625))

(declare-fun m!1250627 () Bool)

(assert (=> b!1095943 m!1250627))

(declare-fun m!1250629 () Bool)

(assert (=> b!1095943 m!1250629))

(assert (=> b!1095943 m!1248513))

(assert (=> b!1095943 m!1250615))

(declare-fun m!1250631 () Bool)

(assert (=> b!1095943 m!1250631))

(assert (=> b!1095943 m!1250615))

(declare-fun m!1250633 () Bool)

(assert (=> b!1095943 m!1250633))

(declare-fun m!1250635 () Bool)

(assert (=> b!1095943 m!1250635))

(assert (=> b!1095943 m!1250601))

(assert (=> b!1095943 m!1250599))

(assert (=> b!1095943 m!1250601))

(declare-fun m!1250637 () Bool)

(assert (=> b!1095943 m!1250637))

(assert (=> b!1095943 m!1250607))

(assert (=> b!1095943 m!1250631))

(assert (=> b!1095943 m!1248513))

(declare-fun m!1250639 () Bool)

(assert (=> b!1095943 m!1250639))

(declare-fun m!1250641 () Bool)

(assert (=> b!1095943 m!1250641))

(declare-fun m!1250643 () Bool)

(assert (=> b!1095943 m!1250643))

(declare-fun m!1250645 () Bool)

(assert (=> b!1095943 m!1250645))

(assert (=> b!1095943 m!1250645))

(declare-fun m!1250647 () Bool)

(assert (=> b!1095943 m!1250647))

(declare-fun m!1250649 () Bool)

(assert (=> b!1095943 m!1250649))

(assert (=> b!1095943 m!1248513))

(declare-fun m!1250651 () Bool)

(assert (=> b!1095943 m!1250651))

(declare-fun m!1250653 () Bool)

(assert (=> b!1095943 m!1250653))

(assert (=> b!1095943 m!1250603))

(assert (=> b!1095943 m!1250617))

(declare-fun m!1250655 () Bool)

(assert (=> b!1095943 m!1250655))

(assert (=> b!1095943 m!1250605))

(declare-fun m!1250657 () Bool)

(assert (=> b!1095943 m!1250657))

(assert (=> b!1095943 m!1248513))

(declare-fun m!1250659 () Bool)

(assert (=> b!1095943 m!1250659))

(declare-fun m!1250661 () Bool)

(assert (=> b!1095943 m!1250661))

(declare-fun m!1250663 () Bool)

(assert (=> b!1095943 m!1250663))

(assert (=> b!1095943 m!1250643))

(declare-fun m!1250665 () Bool)

(assert (=> b!1095943 m!1250665))

(declare-fun m!1250667 () Bool)

(assert (=> b!1095943 m!1250667))

(assert (=> b!1095943 m!1250643))

(assert (=> b!1095943 m!1250645))

(declare-fun m!1250669 () Bool)

(assert (=> b!1095944 m!1250669))

(assert (=> b!1095944 m!1250669))

(declare-fun m!1250671 () Bool)

(assert (=> b!1095944 m!1250671))

(declare-fun m!1250673 () Bool)

(assert (=> b!1095944 m!1250673))

(assert (=> b!1095945 m!1248513))

(assert (=> b!1095945 m!1248513))

(declare-fun m!1250675 () Bool)

(assert (=> b!1095945 m!1250675))

(declare-fun m!1250677 () Bool)

(assert (=> b!1095934 m!1250677))

(assert (=> b!1095934 m!1250677))

(declare-fun m!1250679 () Bool)

(assert (=> b!1095934 m!1250679))

(assert (=> b!1095942 m!1248513))

(assert (=> b!1095942 m!1248513))

(declare-fun m!1250681 () Bool)

(assert (=> b!1095942 m!1250681))

(declare-fun m!1250683 () Bool)

(assert (=> b!1095935 m!1250683))

(assert (=> b!1095935 m!1250683))

(declare-fun m!1250685 () Bool)

(assert (=> b!1095935 m!1250685))

(declare-fun m!1250687 () Bool)

(assert (=> b!1095935 m!1250687))

(declare-fun m!1250689 () Bool)

(assert (=> b!1095937 m!1250689))

(assert (=> b!1095937 m!1250689))

(declare-fun m!1250691 () Bool)

(assert (=> b!1095937 m!1250691))

(declare-fun m!1250693 () Bool)

(assert (=> d!309398 m!1250693))

(assert (=> d!309398 m!1250625))

(assert (=> b!1095081 d!309398))

(declare-fun d!309400 () Bool)

(assert (=> d!309400 (subseq!148 (filter!276 (list!3778 lt!368625) lambda!42568) (list!3778 lt!368625))))

(declare-fun lt!369505 () Unit!16034)

(assert (=> d!309400 (= lt!369505 (choose!7057 (list!3778 lt!368625) lambda!42568))))

(assert (=> d!309400 (= (filterSubseq!37 (list!3778 lt!368625) lambda!42568) lt!369505)))

(declare-fun bs!258901 () Bool)

(assert (= bs!258901 d!309400))

(assert (=> bs!258901 m!1247645))

(assert (=> bs!258901 m!1250511))

(assert (=> bs!258901 m!1250511))

(assert (=> bs!258901 m!1247645))

(declare-fun m!1250695 () Bool)

(assert (=> bs!258901 m!1250695))

(assert (=> bs!258901 m!1247645))

(declare-fun m!1250697 () Bool)

(assert (=> bs!258901 m!1250697))

(assert (=> b!1095081 d!309400))

(assert (=> d!308726 d!308732))

(declare-fun d!309402 () Bool)

(assert (=> d!309402 (forall!2374 lt!368613 lambda!42457)))

(assert (=> d!309402 true))

(declare-fun _$37!269 () Unit!16034)

(assert (=> d!309402 (= (choose!7058 lt!368613 lt!368623 lambda!42457) _$37!269)))

(declare-fun bs!258902 () Bool)

(assert (= bs!258902 d!309402))

(assert (=> bs!258902 m!1247717))

(assert (=> d!308726 d!309402))

(assert (=> d!308726 d!309252))

(declare-fun d!309404 () Bool)

(declare-fun lt!369506 () Int)

(assert (=> d!309404 (>= lt!369506 0)))

(declare-fun e!693835 () Int)

(assert (=> d!309404 (= lt!369506 e!693835)))

(declare-fun c!185937 () Bool)

(assert (=> d!309404 (= c!185937 ((_ is Nil!10530) (list!3778 lt!368606)))))

(assert (=> d!309404 (= (size!8149 (list!3778 lt!368606)) lt!369506)))

(declare-fun b!1095952 () Bool)

(assert (=> b!1095952 (= e!693835 0)))

(declare-fun b!1095953 () Bool)

(assert (=> b!1095953 (= e!693835 (+ 1 (size!8149 (t!103088 (list!3778 lt!368606)))))))

(assert (= (and d!309404 c!185937) b!1095952))

(assert (= (and d!309404 (not c!185937)) b!1095953))

(declare-fun m!1250699 () Bool)

(assert (=> b!1095953 m!1250699))

(assert (=> d!308598 d!309404))

(assert (=> d!308598 d!308746))

(declare-fun d!309406 () Bool)

(declare-fun lt!369509 () Int)

(assert (=> d!309406 (= lt!369509 (size!8149 (list!3780 (c!185681 lt!368606))))))

(assert (=> d!309406 (= lt!369509 (ite ((_ is Empty!3229) (c!185681 lt!368606)) 0 (ite ((_ is Leaf!5135) (c!185681 lt!368606)) (csize!6689 (c!185681 lt!368606)) (csize!6688 (c!185681 lt!368606)))))))

(assert (=> d!309406 (= (size!8152 (c!185681 lt!368606)) lt!369509)))

(declare-fun bs!258903 () Bool)

(assert (= bs!258903 d!309406))

(assert (=> bs!258903 m!1248529))

(assert (=> bs!258903 m!1248529))

(declare-fun m!1250701 () Bool)

(assert (=> bs!258903 m!1250701))

(assert (=> d!308598 d!309406))

(declare-fun d!309408 () Bool)

(declare-fun lt!369510 () Bool)

(assert (=> d!309408 (= lt!369510 (select (content!1520 (list!3778 lt!368625)) lt!368619))))

(declare-fun e!693837 () Bool)

(assert (=> d!309408 (= lt!369510 e!693837)))

(declare-fun res!486639 () Bool)

(assert (=> d!309408 (=> (not res!486639) (not e!693837))))

(assert (=> d!309408 (= res!486639 ((_ is Cons!10530) (list!3778 lt!368625)))))

(assert (=> d!309408 (= (contains!1801 (list!3778 lt!368625) lt!368619) lt!369510)))

(declare-fun b!1095954 () Bool)

(declare-fun e!693836 () Bool)

(assert (=> b!1095954 (= e!693837 e!693836)))

(declare-fun res!486638 () Bool)

(assert (=> b!1095954 (=> res!486638 e!693836)))

(assert (=> b!1095954 (= res!486638 (= (h!15931 (list!3778 lt!368625)) lt!368619))))

(declare-fun b!1095955 () Bool)

(assert (=> b!1095955 (= e!693836 (contains!1801 (t!103088 (list!3778 lt!368625)) lt!368619))))

(assert (= (and d!309408 res!486639) b!1095954))

(assert (= (and b!1095954 (not res!486638)) b!1095955))

(assert (=> d!309408 m!1247645))

(declare-fun m!1250703 () Bool)

(assert (=> d!309408 m!1250703))

(declare-fun m!1250705 () Bool)

(assert (=> d!309408 m!1250705))

(declare-fun m!1250707 () Bool)

(assert (=> b!1095955 m!1250707))

(assert (=> b!1094839 d!309408))

(declare-fun d!309410 () Bool)

(declare-fun c!185938 () Bool)

(assert (=> d!309410 (= c!185938 ((_ is Node!3229) (left!9060 (c!185681 objs!8))))))

(declare-fun e!693838 () Bool)

(assert (=> d!309410 (= (inv!13489 (left!9060 (c!185681 objs!8))) e!693838)))

(declare-fun b!1095956 () Bool)

(assert (=> b!1095956 (= e!693838 (inv!13490 (left!9060 (c!185681 objs!8))))))

(declare-fun b!1095957 () Bool)

(declare-fun e!693839 () Bool)

(assert (=> b!1095957 (= e!693838 e!693839)))

(declare-fun res!486640 () Bool)

(assert (=> b!1095957 (= res!486640 (not ((_ is Leaf!5135) (left!9060 (c!185681 objs!8)))))))

(assert (=> b!1095957 (=> res!486640 e!693839)))

(declare-fun b!1095958 () Bool)

(assert (=> b!1095958 (= e!693839 (inv!13491 (left!9060 (c!185681 objs!8))))))

(assert (= (and d!309410 c!185938) b!1095956))

(assert (= (and d!309410 (not c!185938)) b!1095957))

(assert (= (and b!1095957 (not res!486640)) b!1095958))

(declare-fun m!1250709 () Bool)

(assert (=> b!1095956 m!1250709))

(declare-fun m!1250711 () Bool)

(assert (=> b!1095958 m!1250711))

(assert (=> b!1095121 d!309410))

(declare-fun d!309412 () Bool)

(declare-fun c!185939 () Bool)

(assert (=> d!309412 (= c!185939 ((_ is Node!3229) (right!9390 (c!185681 objs!8))))))

(declare-fun e!693840 () Bool)

(assert (=> d!309412 (= (inv!13489 (right!9390 (c!185681 objs!8))) e!693840)))

(declare-fun b!1095959 () Bool)

(assert (=> b!1095959 (= e!693840 (inv!13490 (right!9390 (c!185681 objs!8))))))

(declare-fun b!1095960 () Bool)

(declare-fun e!693841 () Bool)

(assert (=> b!1095960 (= e!693840 e!693841)))

(declare-fun res!486641 () Bool)

(assert (=> b!1095960 (= res!486641 (not ((_ is Leaf!5135) (right!9390 (c!185681 objs!8)))))))

(assert (=> b!1095960 (=> res!486641 e!693841)))

(declare-fun b!1095961 () Bool)

(assert (=> b!1095961 (= e!693841 (inv!13491 (right!9390 (c!185681 objs!8))))))

(assert (= (and d!309412 c!185939) b!1095959))

(assert (= (and d!309412 (not c!185939)) b!1095960))

(assert (= (and b!1095960 (not res!486641)) b!1095961))

(declare-fun m!1250713 () Bool)

(assert (=> b!1095959 m!1250713))

(declare-fun m!1250715 () Bool)

(assert (=> b!1095961 m!1250715))

(assert (=> b!1095121 d!309412))

(declare-fun d!309414 () Bool)

(declare-fun c!185940 () Bool)

(assert (=> d!309414 (= c!185940 ((_ is Nil!10530) lt!368673))))

(declare-fun e!693842 () (InoxSet tuple2!11726))

(assert (=> d!309414 (= (content!1520 lt!368673) e!693842)))

(declare-fun b!1095962 () Bool)

(assert (=> b!1095962 (= e!693842 ((as const (Array tuple2!11726 Bool)) false))))

(declare-fun b!1095963 () Bool)

(assert (=> b!1095963 (= e!693842 ((_ map or) (store ((as const (Array tuple2!11726 Bool)) false) (h!15931 lt!368673) true) (content!1520 (t!103088 lt!368673))))))

(assert (= (and d!309414 c!185940) b!1095962))

(assert (= (and d!309414 (not c!185940)) b!1095963))

(declare-fun m!1250717 () Bool)

(assert (=> b!1095963 m!1250717))

(declare-fun m!1250719 () Bool)

(assert (=> b!1095963 m!1250719))

(assert (=> b!1094815 d!309414))

(assert (=> b!1094815 d!309242))

(declare-fun d!309416 () Bool)

(assert (=> d!309416 (dynLambda!4609 lambda!42568 lt!368989)))

(declare-fun lt!369511 () Unit!16034)

(assert (=> d!309416 (= lt!369511 (choose!7056 (list!3778 lt!368625) lambda!42568 lt!368989))))

(declare-fun e!693843 () Bool)

(assert (=> d!309416 e!693843))

(declare-fun res!486642 () Bool)

(assert (=> d!309416 (=> (not res!486642) (not e!693843))))

(assert (=> d!309416 (= res!486642 (forall!2374 (list!3778 lt!368625) lambda!42568))))

(assert (=> d!309416 (= (forallContained!502 (list!3778 lt!368625) lambda!42568 lt!368989) lt!369511)))

(declare-fun b!1095964 () Bool)

(assert (=> b!1095964 (= e!693843 (contains!1801 (list!3778 lt!368625) lt!368989))))

(assert (= (and d!309416 res!486642) b!1095964))

(declare-fun b_lambda!31471 () Bool)

(assert (=> (not b_lambda!31471) (not d!309416)))

(declare-fun m!1250721 () Bool)

(assert (=> d!309416 m!1250721))

(assert (=> d!309416 m!1247645))

(declare-fun m!1250723 () Bool)

(assert (=> d!309416 m!1250723))

(assert (=> d!309416 m!1247645))

(assert (=> d!309416 m!1250535))

(assert (=> b!1095964 m!1247645))

(declare-fun m!1250725 () Bool)

(assert (=> b!1095964 m!1250725))

(assert (=> b!1095083 d!309416))

(assert (=> b!1095083 d!308616))

(declare-fun d!309418 () Bool)

(declare-fun lt!369512 () Bool)

(assert (=> d!309418 (= lt!369512 (select (content!1520 (list!3778 lt!368606)) lt!368619))))

(declare-fun e!693845 () Bool)

(assert (=> d!309418 (= lt!369512 e!693845)))

(declare-fun res!486644 () Bool)

(assert (=> d!309418 (=> (not res!486644) (not e!693845))))

(assert (=> d!309418 (= res!486644 ((_ is Cons!10530) (list!3778 lt!368606)))))

(assert (=> d!309418 (= (contains!1801 (list!3778 lt!368606) lt!368619) lt!369512)))

(declare-fun b!1095965 () Bool)

(declare-fun e!693844 () Bool)

(assert (=> b!1095965 (= e!693845 e!693844)))

(declare-fun res!486643 () Bool)

(assert (=> b!1095965 (=> res!486643 e!693844)))

(assert (=> b!1095965 (= res!486643 (= (h!15931 (list!3778 lt!368606)) lt!368619))))

(declare-fun b!1095966 () Bool)

(assert (=> b!1095966 (= e!693844 (contains!1801 (t!103088 (list!3778 lt!368606)) lt!368619))))

(assert (= (and d!309418 res!486644) b!1095965))

(assert (= (and b!1095965 (not res!486643)) b!1095966))

(assert (=> d!309418 m!1247675))

(declare-fun m!1250727 () Bool)

(assert (=> d!309418 m!1250727))

(declare-fun m!1250729 () Bool)

(assert (=> d!309418 m!1250729))

(declare-fun m!1250731 () Bool)

(assert (=> b!1095966 m!1250731))

(assert (=> d!308742 d!309418))

(assert (=> d!308742 d!308746))

(declare-fun b!1095976 () Bool)

(declare-fun e!693853 () Bool)

(declare-fun contains!1804 (IArray!6463 tuple2!11726) Bool)

(assert (=> b!1095976 (= e!693853 (contains!1804 (xs!5922 (c!185681 lt!368606)) lt!368619))))

(declare-fun b!1095978 () Bool)

(declare-fun e!693854 () Bool)

(assert (=> b!1095978 (= e!693854 (contains!1802 (right!9390 (c!185681 lt!368606)) lt!368619))))

(declare-fun b!1095975 () Bool)

(declare-fun e!693852 () Bool)

(assert (=> b!1095975 (= e!693852 e!693853)))

(declare-fun c!185943 () Bool)

(assert (=> b!1095975 (= c!185943 ((_ is Leaf!5135) (c!185681 lt!368606)))))

(declare-fun d!309420 () Bool)

(declare-fun lt!369515 () Bool)

(assert (=> d!309420 (= lt!369515 (contains!1801 (list!3780 (c!185681 lt!368606)) lt!368619))))

(assert (=> d!309420 (= lt!369515 e!693852)))

(declare-fun res!486649 () Bool)

(assert (=> d!309420 (=> (not res!486649) (not e!693852))))

(assert (=> d!309420 (= res!486649 (not ((_ is Empty!3229) (c!185681 lt!368606))))))

(assert (=> d!309420 (= (contains!1802 (c!185681 lt!368606) lt!368619) lt!369515)))

(declare-fun b!1095977 () Bool)

(assert (=> b!1095977 (= e!693853 e!693854)))

(declare-fun res!486650 () Bool)

(assert (=> b!1095977 (= res!486650 (contains!1802 (left!9060 (c!185681 lt!368606)) lt!368619))))

(assert (=> b!1095977 (=> res!486650 e!693854)))

(assert (= (and d!309420 res!486649) b!1095975))

(assert (= (and b!1095975 c!185943) b!1095976))

(assert (= (and b!1095975 (not c!185943)) b!1095977))

(assert (= (and b!1095977 (not res!486650)) b!1095978))

(declare-fun m!1250733 () Bool)

(assert (=> b!1095976 m!1250733))

(declare-fun m!1250735 () Bool)

(assert (=> b!1095978 m!1250735))

(assert (=> d!309420 m!1248529))

(assert (=> d!309420 m!1248529))

(declare-fun m!1250737 () Bool)

(assert (=> d!309420 m!1250737))

(declare-fun m!1250739 () Bool)

(assert (=> b!1095977 m!1250739))

(assert (=> d!308742 d!309420))

(declare-fun d!309422 () Bool)

(assert (=> d!309422 (dynLambda!4609 lambda!42458 lt!368619)))

(assert (=> d!309422 true))

(declare-fun _$7!665 () Unit!16034)

(assert (=> d!309422 (= (choose!7056 (list!3778 lt!368625) lambda!42458 lt!368619) _$7!665)))

(declare-fun b_lambda!31473 () Bool)

(assert (=> (not b_lambda!31473) (not d!309422)))

(declare-fun bs!258904 () Bool)

(assert (= bs!258904 d!309422))

(assert (=> bs!258904 m!1247931))

(assert (=> d!308614 d!309422))

(declare-fun d!309424 () Bool)

(declare-fun res!486651 () Bool)

(declare-fun e!693855 () Bool)

(assert (=> d!309424 (=> res!486651 e!693855)))

(assert (=> d!309424 (= res!486651 ((_ is Nil!10530) (list!3778 lt!368625)))))

(assert (=> d!309424 (= (forall!2374 (list!3778 lt!368625) lambda!42458) e!693855)))

(declare-fun b!1095979 () Bool)

(declare-fun e!693856 () Bool)

(assert (=> b!1095979 (= e!693855 e!693856)))

(declare-fun res!486652 () Bool)

(assert (=> b!1095979 (=> (not res!486652) (not e!693856))))

(assert (=> b!1095979 (= res!486652 (dynLambda!4609 lambda!42458 (h!15931 (list!3778 lt!368625))))))

(declare-fun b!1095980 () Bool)

(assert (=> b!1095980 (= e!693856 (forall!2374 (t!103088 (list!3778 lt!368625)) lambda!42458))))

(assert (= (and d!309424 (not res!486651)) b!1095979))

(assert (= (and b!1095979 res!486652) b!1095980))

(declare-fun b_lambda!31475 () Bool)

(assert (=> (not b_lambda!31475) (not b!1095979)))

(declare-fun m!1250741 () Bool)

(assert (=> b!1095979 m!1250741))

(declare-fun m!1250743 () Bool)

(assert (=> b!1095980 m!1250743))

(assert (=> d!308614 d!309424))

(declare-fun b!1095989 () Bool)

(declare-fun e!693868 () Bool)

(declare-fun e!693865 () Bool)

(assert (=> b!1095989 (= e!693868 e!693865)))

(declare-fun res!486664 () Bool)

(assert (=> b!1095989 (=> (not res!486664) (not e!693865))))

(assert (=> b!1095989 (= res!486664 ((_ is Cons!10530) lt!368623))))

(declare-fun b!1095990 () Bool)

(declare-fun e!693867 () Bool)

(assert (=> b!1095990 (= e!693865 e!693867)))

(declare-fun res!486661 () Bool)

(assert (=> b!1095990 (=> res!486661 e!693867)))

(declare-fun e!693866 () Bool)

(assert (=> b!1095990 (= res!486661 e!693866)))

(declare-fun res!486663 () Bool)

(assert (=> b!1095990 (=> (not res!486663) (not e!693866))))

(assert (=> b!1095990 (= res!486663 (= (h!15931 (filter!276 lt!368623 lambda!42458)) (h!15931 lt!368623)))))

(declare-fun b!1095992 () Bool)

(assert (=> b!1095992 (= e!693867 (subseq!148 (filter!276 lt!368623 lambda!42458) (t!103088 lt!368623)))))

(declare-fun b!1095991 () Bool)

(assert (=> b!1095991 (= e!693866 (subseq!148 (t!103088 (filter!276 lt!368623 lambda!42458)) (t!103088 lt!368623)))))

(declare-fun d!309426 () Bool)

(declare-fun res!486662 () Bool)

(assert (=> d!309426 (=> res!486662 e!693868)))

(assert (=> d!309426 (= res!486662 ((_ is Nil!10530) (filter!276 lt!368623 lambda!42458)))))

(assert (=> d!309426 (= (subseq!148 (filter!276 lt!368623 lambda!42458) lt!368623) e!693868)))

(assert (= (and d!309426 (not res!486662)) b!1095989))

(assert (= (and b!1095989 res!486664) b!1095990))

(assert (= (and b!1095990 res!486663) b!1095991))

(assert (= (and b!1095990 (not res!486661)) b!1095992))

(assert (=> b!1095992 m!1247733))

(declare-fun m!1250745 () Bool)

(assert (=> b!1095992 m!1250745))

(declare-fun m!1250747 () Bool)

(assert (=> b!1095991 m!1250747))

(assert (=> d!308718 d!309426))

(assert (=> d!308718 d!308586))

(declare-fun d!309428 () Bool)

(assert (=> d!309428 (subseq!148 (filter!276 lt!368623 lambda!42458) lt!368623)))

(assert (=> d!309428 true))

(declare-fun _$14!608 () Unit!16034)

(assert (=> d!309428 (= (choose!7057 lt!368623 lambda!42458) _$14!608)))

(declare-fun bs!258905 () Bool)

(assert (= bs!258905 d!309428))

(assert (=> bs!258905 m!1247733))

(assert (=> bs!258905 m!1247733))

(assert (=> bs!258905 m!1248381))

(assert (=> d!308718 d!309428))

(declare-fun d!309430 () Bool)

(declare-fun lt!369516 () Int)

(assert (=> d!309430 (>= lt!369516 0)))

(declare-fun e!693869 () Int)

(assert (=> d!309430 (= lt!369516 e!693869)))

(declare-fun c!185944 () Bool)

(assert (=> d!309430 (= c!185944 ((_ is Nil!10530) lt!369029))))

(assert (=> d!309430 (= (size!8149 lt!369029) lt!369516)))

(declare-fun b!1095993 () Bool)

(assert (=> b!1095993 (= e!693869 0)))

(declare-fun b!1095994 () Bool)

(assert (=> b!1095994 (= e!693869 (+ 1 (size!8149 (t!103088 lt!369029))))))

(assert (= (and d!309430 c!185944) b!1095993))

(assert (= (and d!309430 (not c!185944)) b!1095994))

(declare-fun m!1250749 () Bool)

(assert (=> b!1095994 m!1250749))

(assert (=> d!308752 d!309430))

(assert (=> d!308752 d!308588))

(declare-fun d!309432 () Bool)

(assert (=> d!309432 (= (usesJsonRules!0 (_2!6689 (h!15931 lt!368610))) (= (rules!9087 (_2!6689 (h!15931 lt!368610))) (rules!109 JsonLexer!295)))))

(declare-fun bs!258906 () Bool)

(assert (= bs!258906 d!309432))

(assert (=> bs!258906 m!1250339))

(assert (=> bs!258604 d!309432))

(declare-fun d!309434 () Bool)

(declare-fun res!486665 () Bool)

(declare-fun e!693870 () Bool)

(assert (=> d!309434 (=> res!486665 e!693870)))

(assert (=> d!309434 (= res!486665 ((_ is Nil!10530) (t!103088 lt!368622)))))

(assert (=> d!309434 (= (forall!2374 (t!103088 lt!368622) lambda!42457) e!693870)))

(declare-fun b!1095995 () Bool)

(declare-fun e!693871 () Bool)

(assert (=> b!1095995 (= e!693870 e!693871)))

(declare-fun res!486666 () Bool)

(assert (=> b!1095995 (=> (not res!486666) (not e!693871))))

(assert (=> b!1095995 (= res!486666 (dynLambda!4609 lambda!42457 (h!15931 (t!103088 lt!368622))))))

(declare-fun b!1095996 () Bool)

(assert (=> b!1095996 (= e!693871 (forall!2374 (t!103088 (t!103088 lt!368622)) lambda!42457))))

(assert (= (and d!309434 (not res!486665)) b!1095995))

(assert (= (and b!1095995 res!486666) b!1095996))

(declare-fun b_lambda!31477 () Bool)

(assert (=> (not b_lambda!31477) (not b!1095995)))

(declare-fun m!1250751 () Bool)

(assert (=> b!1095995 m!1250751))

(declare-fun m!1250753 () Bool)

(assert (=> b!1095996 m!1250753))

(assert (=> b!1095057 d!309434))

(declare-fun d!309436 () Bool)

(declare-fun lt!369517 () Int)

(assert (=> d!309436 (>= lt!369517 0)))

(declare-fun e!693872 () Int)

(assert (=> d!309436 (= lt!369517 e!693872)))

(declare-fun c!185945 () Bool)

(assert (=> d!309436 (= c!185945 ((_ is Nil!10530) (list!3778 objs!8)))))

(assert (=> d!309436 (= (size!8149 (list!3778 objs!8)) lt!369517)))

(declare-fun b!1095997 () Bool)

(assert (=> b!1095997 (= e!693872 0)))

(declare-fun b!1095998 () Bool)

(assert (=> b!1095998 (= e!693872 (+ 1 (size!8149 (t!103088 (list!3778 objs!8)))))))

(assert (= (and d!309436 c!185945) b!1095997))

(assert (= (and d!309436 (not c!185945)) b!1095998))

(declare-fun m!1250755 () Bool)

(assert (=> b!1095998 m!1250755))

(assert (=> d!308748 d!309436))

(assert (=> d!308748 d!308576))

(declare-fun d!309438 () Bool)

(declare-fun lt!369518 () Int)

(assert (=> d!309438 (= lt!369518 (size!8149 (list!3780 (c!185681 objs!8))))))

(assert (=> d!309438 (= lt!369518 (ite ((_ is Empty!3229) (c!185681 objs!8)) 0 (ite ((_ is Leaf!5135) (c!185681 objs!8)) (csize!6689 (c!185681 objs!8)) (csize!6688 (c!185681 objs!8)))))))

(assert (=> d!309438 (= (size!8152 (c!185681 objs!8)) lt!369518)))

(declare-fun bs!258907 () Bool)

(assert (= bs!258907 d!309438))

(assert (=> bs!258907 m!1247847))

(assert (=> bs!258907 m!1247847))

(declare-fun m!1250757 () Bool)

(assert (=> bs!258907 m!1250757))

(assert (=> d!308748 d!309438))

(assert (=> b!1094834 d!308748))

(declare-fun d!309440 () Bool)

(assert (=> d!309440 (= (usesJsonRules!0 (_2!6689 (h!15931 lt!368622))) (= (rules!9087 (_2!6689 (h!15931 lt!368622))) (rules!109 JsonLexer!295)))))

(declare-fun bs!258908 () Bool)

(assert (= bs!258908 d!309440))

(assert (=> bs!258908 m!1250339))

(assert (=> bs!258609 d!309440))

(assert (=> b!1094739 d!308592))

(declare-fun d!309442 () Bool)

(assert (=> d!309442 (dynLambda!4609 lambda!42563 lt!368940)))

(declare-fun lt!369519 () Unit!16034)

(assert (=> d!309442 (= lt!369519 (choose!7056 (list!3778 lt!368950) lambda!42563 lt!368940))))

(declare-fun e!693873 () Bool)

(assert (=> d!309442 e!693873))

(declare-fun res!486667 () Bool)

(assert (=> d!309442 (=> (not res!486667) (not e!693873))))

(assert (=> d!309442 (= res!486667 (forall!2374 (list!3778 lt!368950) lambda!42563))))

(assert (=> d!309442 (= (forallContained!502 (list!3778 lt!368950) lambda!42563 lt!368940) lt!369519)))

(declare-fun b!1095999 () Bool)

(assert (=> b!1095999 (= e!693873 (contains!1801 (list!3778 lt!368950) lt!368940))))

(assert (= (and d!309442 res!486667) b!1095999))

(declare-fun b_lambda!31479 () Bool)

(assert (=> (not b_lambda!31479) (not d!309442)))

(assert (=> d!309442 m!1249979))

(assert (=> d!309442 m!1248347))

(declare-fun m!1250759 () Bool)

(assert (=> d!309442 m!1250759))

(assert (=> d!309442 m!1248347))

(declare-fun m!1250761 () Bool)

(assert (=> d!309442 m!1250761))

(assert (=> b!1095999 m!1248347))

(assert (=> b!1095999 m!1250115))

(assert (=> b!1095036 d!309442))

(declare-fun d!309444 () Bool)

(assert (=> d!309444 (= (list!3778 lt!368950) (list!3780 (c!185681 lt!368950)))))

(declare-fun bs!258909 () Bool)

(assert (= bs!258909 d!309444))

(declare-fun m!1250763 () Bool)

(assert (=> bs!258909 m!1250763))

(assert (=> b!1095036 d!309444))

(assert (=> d!308600 d!308580))

(declare-fun d!309446 () Bool)

(declare-fun e!693876 () Bool)

(assert (=> d!309446 e!693876))

(declare-fun res!486670 () Bool)

(assert (=> d!309446 (=> res!486670 e!693876)))

(assert (=> d!309446 (= res!486670 (isEmpty!6672 lt!368623))))

(assert (=> d!309446 true))

(declare-fun _$38!326 () Unit!16034)

(assert (=> d!309446 (= (choose!7055 lt!368623 lambda!42460) _$38!326)))

(declare-fun b!1096002 () Bool)

(assert (=> b!1096002 (= e!693876 (< (size!8149 (filter!276 lt!368623 lambda!42460)) (size!8149 lt!368623)))))

(assert (= (and d!309446 (not res!486670)) b!1096002))

(assert (=> d!309446 m!1247741))

(assert (=> b!1096002 m!1247681))

(assert (=> b!1096002 m!1247681))

(assert (=> b!1096002 m!1247683))

(assert (=> b!1096002 m!1247685))

(assert (=> d!308600 d!309446))

(declare-fun d!309448 () Bool)

(declare-fun res!486671 () Bool)

(declare-fun e!693877 () Bool)

(assert (=> d!309448 (=> res!486671 e!693877)))

(assert (=> d!309448 (= res!486671 ((_ is Nil!10530) lt!368623))))

(assert (=> d!309448 (= (forall!2374 lt!368623 lambda!42460) e!693877)))

(declare-fun b!1096003 () Bool)

(declare-fun e!693878 () Bool)

(assert (=> b!1096003 (= e!693877 e!693878)))

(declare-fun res!486672 () Bool)

(assert (=> b!1096003 (=> (not res!486672) (not e!693878))))

(assert (=> b!1096003 (= res!486672 (dynLambda!4609 lambda!42460 (h!15931 lt!368623)))))

(declare-fun b!1096004 () Bool)

(assert (=> b!1096004 (= e!693878 (forall!2374 (t!103088 lt!368623) lambda!42460))))

(assert (= (and d!309448 (not res!486671)) b!1096003))

(assert (= (and b!1096003 res!486672) b!1096004))

(declare-fun b_lambda!31481 () Bool)

(assert (=> (not b_lambda!31481) (not b!1096003)))

(assert (=> b!1096003 m!1248539))

(declare-fun m!1250765 () Bool)

(assert (=> b!1096004 m!1250765))

(assert (=> d!308600 d!309448))

(declare-fun d!309450 () Bool)

(declare-fun lt!369520 () Int)

(assert (=> d!309450 (>= lt!369520 0)))

(declare-fun e!693879 () Int)

(assert (=> d!309450 (= lt!369520 e!693879)))

(declare-fun c!185946 () Bool)

(assert (=> d!309450 (= c!185946 ((_ is Nil!10530) (t!103088 (filter!276 lt!368623 lambda!42458))))))

(assert (=> d!309450 (= (size!8149 (t!103088 (filter!276 lt!368623 lambda!42458))) lt!369520)))

(declare-fun b!1096005 () Bool)

(assert (=> b!1096005 (= e!693879 0)))

(declare-fun b!1096006 () Bool)

(assert (=> b!1096006 (= e!693879 (+ 1 (size!8149 (t!103088 (t!103088 (filter!276 lt!368623 lambda!42458))))))))

(assert (= (and d!309450 c!185946) b!1096005))

(assert (= (and d!309450 (not c!185946)) b!1096006))

(declare-fun m!1250767 () Bool)

(assert (=> b!1096006 m!1250767))

(assert (=> b!1094798 d!309450))

(declare-fun b!1096010 () Bool)

(declare-fun e!693881 () List!10546)

(assert (=> b!1096010 (= e!693881 (++!2855 (list!3780 (left!9060 (c!185681 (filter!277 objs!8 lambda!42458)))) (list!3780 (right!9390 (c!185681 (filter!277 objs!8 lambda!42458))))))))

(declare-fun b!1096008 () Bool)

(declare-fun e!693880 () List!10546)

(assert (=> b!1096008 (= e!693880 e!693881)))

(declare-fun c!185948 () Bool)

(assert (=> b!1096008 (= c!185948 ((_ is Leaf!5135) (c!185681 (filter!277 objs!8 lambda!42458))))))

(declare-fun b!1096007 () Bool)

(assert (=> b!1096007 (= e!693880 Nil!10530)))

(declare-fun b!1096009 () Bool)

(assert (=> b!1096009 (= e!693881 (list!3782 (xs!5922 (c!185681 (filter!277 objs!8 lambda!42458)))))))

(declare-fun d!309452 () Bool)

(declare-fun c!185947 () Bool)

(assert (=> d!309452 (= c!185947 ((_ is Empty!3229) (c!185681 (filter!277 objs!8 lambda!42458))))))

(assert (=> d!309452 (= (list!3780 (c!185681 (filter!277 objs!8 lambda!42458))) e!693880)))

(assert (= (and d!309452 c!185947) b!1096007))

(assert (= (and d!309452 (not c!185947)) b!1096008))

(assert (= (and b!1096008 c!185948) b!1096009))

(assert (= (and b!1096008 (not c!185948)) b!1096010))

(declare-fun m!1250769 () Bool)

(assert (=> b!1096010 m!1250769))

(declare-fun m!1250771 () Bool)

(assert (=> b!1096010 m!1250771))

(assert (=> b!1096010 m!1250769))

(assert (=> b!1096010 m!1250771))

(declare-fun m!1250773 () Bool)

(assert (=> b!1096010 m!1250773))

(declare-fun m!1250775 () Bool)

(assert (=> b!1096009 m!1250775))

(assert (=> d!308728 d!309452))

(assert (=> b!1094828 d!308750))

(assert (=> b!1094828 d!308752))

(assert (=> b!1094828 d!308588))

(declare-fun d!309454 () Bool)

(assert (=> d!309454 (dynLambda!4609 lambda!42460 lt!368619)))

(assert (=> d!309454 true))

(declare-fun _$7!666 () Unit!16034)

(assert (=> d!309454 (= (choose!7056 (list!3778 lt!368606) lambda!42460 lt!368619) _$7!666)))

(declare-fun b_lambda!31483 () Bool)

(assert (=> (not b_lambda!31483) (not d!309454)))

(declare-fun bs!258910 () Bool)

(assert (= bs!258910 d!309454))

(assert (=> bs!258910 m!1247945))

(assert (=> d!308744 d!309454))

(declare-fun d!309456 () Bool)

(declare-fun res!486673 () Bool)

(declare-fun e!693882 () Bool)

(assert (=> d!309456 (=> res!486673 e!693882)))

(assert (=> d!309456 (= res!486673 ((_ is Nil!10530) (list!3778 lt!368606)))))

(assert (=> d!309456 (= (forall!2374 (list!3778 lt!368606) lambda!42460) e!693882)))

(declare-fun b!1096011 () Bool)

(declare-fun e!693883 () Bool)

(assert (=> b!1096011 (= e!693882 e!693883)))

(declare-fun res!486674 () Bool)

(assert (=> b!1096011 (=> (not res!486674) (not e!693883))))

(assert (=> b!1096011 (= res!486674 (dynLambda!4609 lambda!42460 (h!15931 (list!3778 lt!368606))))))

(declare-fun b!1096012 () Bool)

(assert (=> b!1096012 (= e!693883 (forall!2374 (t!103088 (list!3778 lt!368606)) lambda!42460))))

(assert (= (and d!309456 (not res!486673)) b!1096011))

(assert (= (and b!1096011 res!486674) b!1096012))

(declare-fun b_lambda!31485 () Bool)

(assert (=> (not b_lambda!31485) (not b!1096011)))

(declare-fun m!1250777 () Bool)

(assert (=> b!1096011 m!1250777))

(declare-fun m!1250779 () Bool)

(assert (=> b!1096012 m!1250779))

(assert (=> d!308744 d!309456))

(declare-fun d!309458 () Bool)

(declare-fun lt!369521 () Int)

(assert (=> d!309458 (>= lt!369521 0)))

(declare-fun e!693884 () Int)

(assert (=> d!309458 (= lt!369521 e!693884)))

(declare-fun c!185949 () Bool)

(assert (=> d!309458 (= c!185949 ((_ is Nil!10530) lt!368673))))

(assert (=> d!309458 (= (size!8149 lt!368673) lt!369521)))

(declare-fun b!1096013 () Bool)

(assert (=> b!1096013 (= e!693884 0)))

(declare-fun b!1096014 () Bool)

(assert (=> b!1096014 (= e!693884 (+ 1 (size!8149 (t!103088 lt!368673))))))

(assert (= (and d!309458 c!185949) b!1096013))

(assert (= (and d!309458 (not c!185949)) b!1096014))

(declare-fun m!1250781 () Bool)

(assert (=> b!1096014 m!1250781))

(assert (=> d!308586 d!309458))

(assert (=> d!308586 d!308588))

(declare-fun b!1096018 () Bool)

(declare-fun e!693886 () List!10546)

(assert (=> b!1096018 (= e!693886 (++!2855 (list!3780 (left!9060 (c!185681 (filter!277 objs!8 lambda!42460)))) (list!3780 (right!9390 (c!185681 (filter!277 objs!8 lambda!42460))))))))

(declare-fun b!1096016 () Bool)

(declare-fun e!693885 () List!10546)

(assert (=> b!1096016 (= e!693885 e!693886)))

(declare-fun c!185951 () Bool)

(assert (=> b!1096016 (= c!185951 ((_ is Leaf!5135) (c!185681 (filter!277 objs!8 lambda!42460))))))

(declare-fun b!1096015 () Bool)

(assert (=> b!1096015 (= e!693885 Nil!10530)))

(declare-fun b!1096017 () Bool)

(assert (=> b!1096017 (= e!693886 (list!3782 (xs!5922 (c!185681 (filter!277 objs!8 lambda!42460)))))))

(declare-fun d!309460 () Bool)

(declare-fun c!185950 () Bool)

(assert (=> d!309460 (= c!185950 ((_ is Empty!3229) (c!185681 (filter!277 objs!8 lambda!42460))))))

(assert (=> d!309460 (= (list!3780 (c!185681 (filter!277 objs!8 lambda!42460))) e!693885)))

(assert (= (and d!309460 c!185950) b!1096015))

(assert (= (and d!309460 (not c!185950)) b!1096016))

(assert (= (and b!1096016 c!185951) b!1096017))

(assert (= (and b!1096016 (not c!185951)) b!1096018))

(declare-fun m!1250783 () Bool)

(assert (=> b!1096018 m!1250783))

(declare-fun m!1250785 () Bool)

(assert (=> b!1096018 m!1250785))

(assert (=> b!1096018 m!1250783))

(assert (=> b!1096018 m!1250785))

(declare-fun m!1250787 () Bool)

(assert (=> b!1096018 m!1250787))

(declare-fun m!1250789 () Bool)

(assert (=> b!1096017 m!1250789))

(assert (=> d!308720 d!309460))

(assert (=> d!308582 d!308580))

(declare-fun d!309462 () Bool)

(declare-fun e!693887 () Bool)

(assert (=> d!309462 e!693887))

(declare-fun res!486675 () Bool)

(assert (=> d!309462 (=> res!486675 e!693887)))

(assert (=> d!309462 (= res!486675 (isEmpty!6672 lt!368623))))

(assert (=> d!309462 true))

(declare-fun _$38!327 () Unit!16034)

(assert (=> d!309462 (= (choose!7055 lt!368623 lambda!42458) _$38!327)))

(declare-fun b!1096019 () Bool)

(assert (=> b!1096019 (= e!693887 (< (size!8149 (filter!276 lt!368623 lambda!42458)) (size!8149 lt!368623)))))

(assert (= (and d!309462 (not res!486675)) b!1096019))

(assert (=> d!309462 m!1247741))

(assert (=> b!1096019 m!1247733))

(assert (=> b!1096019 m!1247733))

(assert (=> b!1096019 m!1247735))

(assert (=> b!1096019 m!1247685))

(assert (=> d!308582 d!309462))

(declare-fun d!309464 () Bool)

(declare-fun res!486676 () Bool)

(declare-fun e!693888 () Bool)

(assert (=> d!309464 (=> res!486676 e!693888)))

(assert (=> d!309464 (= res!486676 ((_ is Nil!10530) lt!368623))))

(assert (=> d!309464 (= (forall!2374 lt!368623 lambda!42458) e!693888)))

(declare-fun b!1096020 () Bool)

(declare-fun e!693889 () Bool)

(assert (=> b!1096020 (= e!693888 e!693889)))

(declare-fun res!486677 () Bool)

(assert (=> b!1096020 (=> (not res!486677) (not e!693889))))

(assert (=> b!1096020 (= res!486677 (dynLambda!4609 lambda!42458 (h!15931 lt!368623)))))

(declare-fun b!1096021 () Bool)

(assert (=> b!1096021 (= e!693889 (forall!2374 (t!103088 lt!368623) lambda!42458))))

(assert (= (and d!309464 (not res!486676)) b!1096020))

(assert (= (and b!1096020 res!486677) b!1096021))

(declare-fun b_lambda!31487 () Bool)

(assert (=> (not b_lambda!31487) (not b!1096020)))

(assert (=> b!1096020 m!1247861))

(declare-fun m!1250791 () Bool)

(assert (=> b!1096021 m!1250791))

(assert (=> d!308582 d!309464))

(declare-fun d!309466 () Bool)

(declare-fun lt!369522 () Bool)

(assert (=> d!309466 (= lt!369522 (select (content!1520 (list!3778 objs!8)) lt!368619))))

(declare-fun e!693891 () Bool)

(assert (=> d!309466 (= lt!369522 e!693891)))

(declare-fun res!486679 () Bool)

(assert (=> d!309466 (=> (not res!486679) (not e!693891))))

(assert (=> d!309466 (= res!486679 ((_ is Cons!10530) (list!3778 objs!8)))))

(assert (=> d!309466 (= (contains!1801 (list!3778 objs!8) lt!368619) lt!369522)))

(declare-fun b!1096022 () Bool)

(declare-fun e!693890 () Bool)

(assert (=> b!1096022 (= e!693891 e!693890)))

(declare-fun res!486678 () Bool)

(assert (=> b!1096022 (=> res!486678 e!693890)))

(assert (=> b!1096022 (= res!486678 (= (h!15931 (list!3778 objs!8)) lt!368619))))

(declare-fun b!1096023 () Bool)

(assert (=> b!1096023 (= e!693890 (contains!1801 (t!103088 (list!3778 objs!8)) lt!368619))))

(assert (= (and d!309466 res!486679) b!1096022))

(assert (= (and b!1096022 (not res!486678)) b!1096023))

(assert (=> d!309466 m!1247649))

(assert (=> d!309466 m!1249969))

(declare-fun m!1250793 () Bool)

(assert (=> d!309466 m!1250793))

(declare-fun m!1250795 () Bool)

(assert (=> b!1096023 m!1250795))

(assert (=> d!308608 d!309466))

(assert (=> d!308608 d!308576))

(declare-fun b!1096025 () Bool)

(declare-fun e!693893 () Bool)

(assert (=> b!1096025 (= e!693893 (contains!1804 (xs!5922 (c!185681 objs!8)) lt!368619))))

(declare-fun b!1096027 () Bool)

(declare-fun e!693894 () Bool)

(assert (=> b!1096027 (= e!693894 (contains!1802 (right!9390 (c!185681 objs!8)) lt!368619))))

(declare-fun b!1096024 () Bool)

(declare-fun e!693892 () Bool)

(assert (=> b!1096024 (= e!693892 e!693893)))

(declare-fun c!185952 () Bool)

(assert (=> b!1096024 (= c!185952 ((_ is Leaf!5135) (c!185681 objs!8)))))

(declare-fun d!309468 () Bool)

(declare-fun lt!369523 () Bool)

(assert (=> d!309468 (= lt!369523 (contains!1801 (list!3780 (c!185681 objs!8)) lt!368619))))

(assert (=> d!309468 (= lt!369523 e!693892)))

(declare-fun res!486680 () Bool)

(assert (=> d!309468 (=> (not res!486680) (not e!693892))))

(assert (=> d!309468 (= res!486680 (not ((_ is Empty!3229) (c!185681 objs!8))))))

(assert (=> d!309468 (= (contains!1802 (c!185681 objs!8) lt!368619) lt!369523)))

(declare-fun b!1096026 () Bool)

(assert (=> b!1096026 (= e!693893 e!693894)))

(declare-fun res!486681 () Bool)

(assert (=> b!1096026 (= res!486681 (contains!1802 (left!9060 (c!185681 objs!8)) lt!368619))))

(assert (=> b!1096026 (=> res!486681 e!693894)))

(assert (= (and d!309468 res!486680) b!1096024))

(assert (= (and b!1096024 c!185952) b!1096025))

(assert (= (and b!1096024 (not c!185952)) b!1096026))

(assert (= (and b!1096026 (not res!486681)) b!1096027))

(declare-fun m!1250797 () Bool)

(assert (=> b!1096025 m!1250797))

(declare-fun m!1250799 () Bool)

(assert (=> b!1096027 m!1250799))

(assert (=> d!309468 m!1247847))

(assert (=> d!309468 m!1247847))

(declare-fun m!1250801 () Bool)

(assert (=> d!309468 m!1250801))

(declare-fun m!1250803 () Bool)

(assert (=> b!1096026 m!1250803))

(assert (=> d!308608 d!309468))

(declare-fun d!309470 () Bool)

(declare-fun res!486682 () Bool)

(declare-fun e!693895 () Bool)

(assert (=> d!309470 (=> res!486682 e!693895)))

(assert (=> d!309470 (= res!486682 ((_ is Nil!10530) (t!103088 lt!368612)))))

(assert (=> d!309470 (= (forall!2374 (t!103088 lt!368612) lambda!42457) e!693895)))

(declare-fun b!1096028 () Bool)

(declare-fun e!693896 () Bool)

(assert (=> b!1096028 (= e!693895 e!693896)))

(declare-fun res!486683 () Bool)

(assert (=> b!1096028 (=> (not res!486683) (not e!693896))))

(assert (=> b!1096028 (= res!486683 (dynLambda!4609 lambda!42457 (h!15931 (t!103088 lt!368612))))))

(declare-fun b!1096029 () Bool)

(assert (=> b!1096029 (= e!693896 (forall!2374 (t!103088 (t!103088 lt!368612)) lambda!42457))))

(assert (= (and d!309470 (not res!486682)) b!1096028))

(assert (= (and b!1096028 res!486683) b!1096029))

(declare-fun b_lambda!31489 () Bool)

(assert (=> (not b_lambda!31489) (not b!1096028)))

(declare-fun m!1250805 () Bool)

(assert (=> b!1096028 m!1250805))

(declare-fun m!1250807 () Bool)

(assert (=> b!1096029 m!1250807))

(assert (=> b!1094849 d!309470))

(declare-fun b!1096033 () Bool)

(declare-fun e!693898 () List!10546)

(assert (=> b!1096033 (= e!693898 (++!2855 (list!3780 (left!9060 (c!185681 lt!368625))) (list!3780 (right!9390 (c!185681 lt!368625)))))))

(declare-fun b!1096031 () Bool)

(declare-fun e!693897 () List!10546)

(assert (=> b!1096031 (= e!693897 e!693898)))

(declare-fun c!185954 () Bool)

(assert (=> b!1096031 (= c!185954 ((_ is Leaf!5135) (c!185681 lt!368625)))))

(declare-fun b!1096030 () Bool)

(assert (=> b!1096030 (= e!693897 Nil!10530)))

(declare-fun b!1096032 () Bool)

(assert (=> b!1096032 (= e!693898 (list!3782 (xs!5922 (c!185681 lt!368625))))))

(declare-fun d!309472 () Bool)

(declare-fun c!185953 () Bool)

(assert (=> d!309472 (= c!185953 ((_ is Empty!3229) (c!185681 lt!368625)))))

(assert (=> d!309472 (= (list!3780 (c!185681 lt!368625)) e!693897)))

(assert (= (and d!309472 c!185953) b!1096030))

(assert (= (and d!309472 (not c!185953)) b!1096031))

(assert (= (and b!1096031 c!185954) b!1096032))

(assert (= (and b!1096031 (not c!185954)) b!1096033))

(declare-fun m!1250809 () Bool)

(assert (=> b!1096033 m!1250809))

(declare-fun m!1250811 () Bool)

(assert (=> b!1096033 m!1250811))

(assert (=> b!1096033 m!1250809))

(assert (=> b!1096033 m!1250811))

(declare-fun m!1250813 () Bool)

(assert (=> b!1096033 m!1250813))

(declare-fun m!1250815 () Bool)

(assert (=> b!1096032 m!1250815))

(assert (=> d!308616 d!309472))

(declare-fun d!309474 () Bool)

(assert (=> d!309474 (= (usesJsonRules!0 (_2!6689 (h!15931 lt!368594))) (= (rules!9087 (_2!6689 (h!15931 lt!368594))) (rules!109 JsonLexer!295)))))

(declare-fun bs!258911 () Bool)

(assert (= bs!258911 d!309474))

(assert (=> bs!258911 m!1250339))

(assert (=> bs!258606 d!309474))

(declare-fun b!1096037 () Bool)

(declare-fun e!693900 () List!10546)

(assert (=> b!1096037 (= e!693900 (++!2855 (list!3780 (left!9060 (c!185681 (sortObjectsByID!0 lt!368606)))) (list!3780 (right!9390 (c!185681 (sortObjectsByID!0 lt!368606))))))))

(declare-fun b!1096035 () Bool)

(declare-fun e!693899 () List!10546)

(assert (=> b!1096035 (= e!693899 e!693900)))

(declare-fun c!185956 () Bool)

(assert (=> b!1096035 (= c!185956 ((_ is Leaf!5135) (c!185681 (sortObjectsByID!0 lt!368606))))))

(declare-fun b!1096034 () Bool)

(assert (=> b!1096034 (= e!693899 Nil!10530)))

(declare-fun b!1096036 () Bool)

(assert (=> b!1096036 (= e!693900 (list!3782 (xs!5922 (c!185681 (sortObjectsByID!0 lt!368606)))))))

(declare-fun d!309476 () Bool)

(declare-fun c!185955 () Bool)

(assert (=> d!309476 (= c!185955 ((_ is Empty!3229) (c!185681 (sortObjectsByID!0 lt!368606))))))

(assert (=> d!309476 (= (list!3780 (c!185681 (sortObjectsByID!0 lt!368606))) e!693899)))

(assert (= (and d!309476 c!185955) b!1096034))

(assert (= (and d!309476 (not c!185955)) b!1096035))

(assert (= (and b!1096035 c!185956) b!1096036))

(assert (= (and b!1096035 (not c!185956)) b!1096037))

(declare-fun m!1250817 () Bool)

(assert (=> b!1096037 m!1250817))

(declare-fun m!1250819 () Bool)

(assert (=> b!1096037 m!1250819))

(assert (=> b!1096037 m!1250817))

(assert (=> b!1096037 m!1250819))

(declare-fun m!1250821 () Bool)

(assert (=> b!1096037 m!1250821))

(declare-fun m!1250823 () Bool)

(assert (=> b!1096036 m!1250823))

(assert (=> d!308714 d!309476))

(declare-fun d!309478 () Bool)

(declare-fun res!486684 () Bool)

(declare-fun e!693901 () Bool)

(assert (=> d!309478 (=> res!486684 e!693901)))

(assert (=> d!309478 (= res!486684 ((_ is Nil!10530) lt!369029))))

(assert (=> d!309478 (= (forall!2374 lt!369029 lambda!42460) e!693901)))

(declare-fun b!1096038 () Bool)

(declare-fun e!693902 () Bool)

(assert (=> b!1096038 (= e!693901 e!693902)))

(declare-fun res!486685 () Bool)

(assert (=> b!1096038 (=> (not res!486685) (not e!693902))))

(assert (=> b!1096038 (= res!486685 (dynLambda!4609 lambda!42460 (h!15931 lt!369029)))))

(declare-fun b!1096039 () Bool)

(assert (=> b!1096039 (= e!693902 (forall!2374 (t!103088 lt!369029) lambda!42460))))

(assert (= (and d!309478 (not res!486684)) b!1096038))

(assert (= (and b!1096038 res!486685) b!1096039))

(declare-fun b_lambda!31491 () Bool)

(assert (=> (not b_lambda!31491) (not b!1096038)))

(declare-fun m!1250825 () Bool)

(assert (=> b!1096038 m!1250825))

(declare-fun m!1250827 () Bool)

(assert (=> b!1096039 m!1250827))

(assert (=> b!1095094 d!309478))

(declare-fun d!309480 () Bool)

(declare-fun e!693903 () Bool)

(assert (=> d!309480 e!693903))

(declare-fun res!486686 () Bool)

(assert (=> d!309480 (=> (not res!486686) (not e!693903))))

(declare-fun lt!369524 () List!10546)

(assert (=> d!309480 (= res!486686 (<= (size!8149 lt!369524) (size!8149 (t!103088 lt!368623))))))

(declare-fun e!693905 () List!10546)

(assert (=> d!309480 (= lt!369524 e!693905)))

(declare-fun c!185958 () Bool)

(assert (=> d!309480 (= c!185958 ((_ is Nil!10530) (t!103088 lt!368623)))))

(assert (=> d!309480 (= (filter!276 (t!103088 lt!368623) lambda!42460) lt!369524)))

(declare-fun bm!80330 () Bool)

(declare-fun call!80335 () List!10546)

(assert (=> bm!80330 (= call!80335 (filter!276 (t!103088 (t!103088 lt!368623)) lambda!42460))))

(declare-fun b!1096040 () Bool)

(declare-fun e!693904 () List!10546)

(assert (=> b!1096040 (= e!693904 call!80335)))

(declare-fun b!1096041 () Bool)

(assert (=> b!1096041 (= e!693903 (forall!2374 lt!369524 lambda!42460))))

(declare-fun b!1096042 () Bool)

(assert (=> b!1096042 (= e!693904 (Cons!10530 (h!15931 (t!103088 lt!368623)) call!80335))))

(declare-fun b!1096043 () Bool)

(assert (=> b!1096043 (= e!693905 e!693904)))

(declare-fun c!185957 () Bool)

(assert (=> b!1096043 (= c!185957 (dynLambda!4609 lambda!42460 (h!15931 (t!103088 lt!368623))))))

(declare-fun b!1096044 () Bool)

(declare-fun res!486687 () Bool)

(assert (=> b!1096044 (=> (not res!486687) (not e!693903))))

(assert (=> b!1096044 (= res!486687 (= ((_ map implies) (content!1520 lt!369524) (content!1520 (t!103088 lt!368623))) ((as const (InoxSet tuple2!11726)) true)))))

(declare-fun b!1096045 () Bool)

(assert (=> b!1096045 (= e!693905 Nil!10530)))

(assert (= (and d!309480 c!185958) b!1096045))

(assert (= (and d!309480 (not c!185958)) b!1096043))

(assert (= (and b!1096043 c!185957) b!1096042))

(assert (= (and b!1096043 (not c!185957)) b!1096040))

(assert (= (or b!1096042 b!1096040) bm!80330))

(assert (= (and d!309480 res!486686) b!1096044))

(assert (= (and b!1096044 res!486687) b!1096041))

(declare-fun b_lambda!31493 () Bool)

(assert (=> (not b_lambda!31493) (not b!1096043)))

(declare-fun m!1250829 () Bool)

(assert (=> d!309480 m!1250829))

(assert (=> d!309480 m!1247871))

(declare-fun m!1250831 () Bool)

(assert (=> b!1096043 m!1250831))

(declare-fun m!1250833 () Bool)

(assert (=> bm!80330 m!1250833))

(declare-fun m!1250835 () Bool)

(assert (=> b!1096044 m!1250835))

(assert (=> b!1096044 m!1249953))

(declare-fun m!1250837 () Bool)

(assert (=> b!1096041 m!1250837))

(assert (=> bm!80315 d!309480))

(declare-fun d!309482 () Bool)

(declare-fun res!486688 () Bool)

(declare-fun e!693906 () Bool)

(assert (=> d!309482 (=> res!486688 e!693906)))

(assert (=> d!309482 (= res!486688 ((_ is Nil!10530) (list!3778 objs!8)))))

(assert (=> d!309482 (= (forall!2374 (list!3778 objs!8) lambda!42458) e!693906)))

(declare-fun b!1096046 () Bool)

(declare-fun e!693907 () Bool)

(assert (=> b!1096046 (= e!693906 e!693907)))

(declare-fun res!486689 () Bool)

(assert (=> b!1096046 (=> (not res!486689) (not e!693907))))

(assert (=> b!1096046 (= res!486689 (dynLambda!4609 lambda!42458 (h!15931 (list!3778 objs!8))))))

(declare-fun b!1096047 () Bool)

(assert (=> b!1096047 (= e!693907 (forall!2374 (t!103088 (list!3778 objs!8)) lambda!42458))))

(assert (= (and d!309482 (not res!486688)) b!1096046))

(assert (= (and b!1096046 res!486689) b!1096047))

(declare-fun b_lambda!31495 () Bool)

(assert (=> (not b_lambda!31495) (not b!1096046)))

(declare-fun m!1250839 () Bool)

(assert (=> b!1096046 m!1250839))

(declare-fun m!1250841 () Bool)

(assert (=> b!1096047 m!1250841))

(assert (=> d!308574 d!309482))

(assert (=> d!308574 d!308576))

(declare-fun b!1096057 () Bool)

(declare-fun e!693916 () Bool)

(declare-fun forall!2379 (IArray!6463 Int) Bool)

(assert (=> b!1096057 (= e!693916 (forall!2379 (xs!5922 (c!185681 objs!8)) lambda!42458))))

(declare-fun b!1096058 () Bool)

(declare-fun e!693914 () Bool)

(assert (=> b!1096058 (= e!693916 e!693914)))

(declare-fun lt!369529 () Unit!16034)

(declare-fun lemmaForallConcat!62 (List!10546 List!10546 Int) Unit!16034)

(assert (=> b!1096058 (= lt!369529 (lemmaForallConcat!62 (list!3780 (left!9060 (c!185681 objs!8))) (list!3780 (right!9390 (c!185681 objs!8))) lambda!42458))))

(declare-fun res!486694 () Bool)

(assert (=> b!1096058 (= res!486694 (forall!2377 (left!9060 (c!185681 objs!8)) lambda!42458))))

(assert (=> b!1096058 (=> (not res!486694) (not e!693914))))

(declare-fun b!1096059 () Bool)

(assert (=> b!1096059 (= e!693914 (forall!2377 (right!9390 (c!185681 objs!8)) lambda!42458))))

(declare-fun d!309484 () Bool)

(declare-fun lt!369530 () Bool)

(assert (=> d!309484 (= lt!369530 (forall!2374 (list!3780 (c!185681 objs!8)) lambda!42458))))

(declare-fun e!693915 () Bool)

(assert (=> d!309484 (= lt!369530 e!693915)))

(declare-fun res!486695 () Bool)

(assert (=> d!309484 (=> res!486695 e!693915)))

(assert (=> d!309484 (= res!486695 ((_ is Empty!3229) (c!185681 objs!8)))))

(assert (=> d!309484 (= (forall!2377 (c!185681 objs!8) lambda!42458) lt!369530)))

(declare-fun b!1096056 () Bool)

(assert (=> b!1096056 (= e!693915 e!693916)))

(declare-fun c!185961 () Bool)

(assert (=> b!1096056 (= c!185961 ((_ is Leaf!5135) (c!185681 objs!8)))))

(assert (= (and d!309484 (not res!486695)) b!1096056))

(assert (= (and b!1096056 c!185961) b!1096057))

(assert (= (and b!1096056 (not c!185961)) b!1096058))

(assert (= (and b!1096058 res!486694) b!1096059))

(declare-fun m!1250843 () Bool)

(assert (=> b!1096057 m!1250843))

(declare-fun m!1250845 () Bool)

(assert (=> b!1096058 m!1250845))

(declare-fun m!1250847 () Bool)

(assert (=> b!1096058 m!1250847))

(assert (=> b!1096058 m!1250845))

(assert (=> b!1096058 m!1250847))

(declare-fun m!1250849 () Bool)

(assert (=> b!1096058 m!1250849))

(declare-fun m!1250851 () Bool)

(assert (=> b!1096058 m!1250851))

(declare-fun m!1250853 () Bool)

(assert (=> b!1096059 m!1250853))

(assert (=> d!309484 m!1247847))

(assert (=> d!309484 m!1247847))

(declare-fun m!1250855 () Bool)

(assert (=> d!309484 m!1250855))

(assert (=> d!308574 d!309484))

(declare-fun d!309486 () Bool)

(declare-fun res!486696 () Bool)

(declare-fun e!693917 () Bool)

(assert (=> d!309486 (=> res!486696 e!693917)))

(assert (=> d!309486 (= res!486696 ((_ is Nil!10530) (t!103088 lt!368594)))))

(assert (=> d!309486 (= (forall!2374 (t!103088 lt!368594) lambda!42457) e!693917)))

(declare-fun b!1096060 () Bool)

(declare-fun e!693918 () Bool)

(assert (=> b!1096060 (= e!693917 e!693918)))

(declare-fun res!486697 () Bool)

(assert (=> b!1096060 (=> (not res!486697) (not e!693918))))

(assert (=> b!1096060 (= res!486697 (dynLambda!4609 lambda!42457 (h!15931 (t!103088 lt!368594))))))

(declare-fun b!1096061 () Bool)

(assert (=> b!1096061 (= e!693918 (forall!2374 (t!103088 (t!103088 lt!368594)) lambda!42457))))

(assert (= (and d!309486 (not res!486696)) b!1096060))

(assert (= (and b!1096060 res!486697) b!1096061))

(declare-fun b_lambda!31497 () Bool)

(assert (=> (not b_lambda!31497) (not b!1096060)))

(declare-fun m!1250857 () Bool)

(assert (=> b!1096060 m!1250857))

(declare-fun m!1250859 () Bool)

(assert (=> b!1096061 m!1250859))

(assert (=> b!1095055 d!309486))

(declare-fun d!309488 () Bool)

(assert (=> d!309488 (dynLambda!4609 lambda!42568 lt!368989)))

(declare-fun lt!369531 () Unit!16034)

(assert (=> d!309488 (= lt!369531 (choose!7056 (list!3778 lt!368999) lambda!42568 lt!368989))))

(declare-fun e!693919 () Bool)

(assert (=> d!309488 e!693919))

(declare-fun res!486698 () Bool)

(assert (=> d!309488 (=> (not res!486698) (not e!693919))))

(assert (=> d!309488 (= res!486698 (forall!2374 (list!3778 lt!368999) lambda!42568))))

(assert (=> d!309488 (= (forallContained!502 (list!3778 lt!368999) lambda!42568 lt!368989) lt!369531)))

(declare-fun b!1096062 () Bool)

(assert (=> b!1096062 (= e!693919 (contains!1801 (list!3778 lt!368999) lt!368989))))

(assert (= (and d!309488 res!486698) b!1096062))

(declare-fun b_lambda!31499 () Bool)

(assert (=> (not b_lambda!31499) (not d!309488)))

(assert (=> d!309488 m!1250721))

(assert (=> d!309488 m!1248501))

(declare-fun m!1250861 () Bool)

(assert (=> d!309488 m!1250861))

(assert (=> d!309488 m!1248501))

(declare-fun m!1250863 () Bool)

(assert (=> d!309488 m!1250863))

(assert (=> b!1096062 m!1248501))

(assert (=> b!1096062 m!1250539))

(assert (=> b!1095072 d!309488))

(declare-fun d!309490 () Bool)

(assert (=> d!309490 (= (list!3778 lt!368999) (list!3780 (c!185681 lt!368999)))))

(declare-fun bs!258912 () Bool)

(assert (= bs!258912 d!309490))

(declare-fun m!1250865 () Bool)

(assert (=> bs!258912 m!1250865))

(assert (=> b!1095072 d!309490))

(declare-fun d!309492 () Bool)

(declare-fun res!486699 () Bool)

(declare-fun e!693920 () Bool)

(assert (=> d!309492 (=> res!486699 e!693920)))

(assert (=> d!309492 (= res!486699 ((_ is Nil!10530) lt!368673))))

(assert (=> d!309492 (= (forall!2374 lt!368673 lambda!42458) e!693920)))

(declare-fun b!1096063 () Bool)

(declare-fun e!693921 () Bool)

(assert (=> b!1096063 (= e!693920 e!693921)))

(declare-fun res!486700 () Bool)

(assert (=> b!1096063 (=> (not res!486700) (not e!693921))))

(assert (=> b!1096063 (= res!486700 (dynLambda!4609 lambda!42458 (h!15931 lt!368673)))))

(declare-fun b!1096064 () Bool)

(assert (=> b!1096064 (= e!693921 (forall!2374 (t!103088 lt!368673) lambda!42458))))

(assert (= (and d!309492 (not res!486699)) b!1096063))

(assert (= (and b!1096063 res!486700) b!1096064))

(declare-fun b_lambda!31501 () Bool)

(assert (=> (not b_lambda!31501) (not b!1096063)))

(declare-fun m!1250867 () Bool)

(assert (=> b!1096063 m!1250867))

(declare-fun m!1250869 () Bool)

(assert (=> b!1096064 m!1250869))

(assert (=> b!1094812 d!309492))

(declare-fun d!309494 () Bool)

(assert (=> d!309494 (dynLambda!4609 lambda!42565 lt!368940)))

(declare-fun lt!369532 () Unit!16034)

(assert (=> d!309494 (= lt!369532 (choose!7056 (list!3778 lt!368606) lambda!42565 lt!368940))))

(declare-fun e!693922 () Bool)

(assert (=> d!309494 e!693922))

(declare-fun res!486701 () Bool)

(assert (=> d!309494 (=> (not res!486701) (not e!693922))))

(assert (=> d!309494 (= res!486701 (forall!2374 (list!3778 lt!368606) lambda!42565))))

(assert (=> d!309494 (= (forallContained!502 (list!3778 lt!368606) lambda!42565 lt!368940) lt!369532)))

(declare-fun b!1096065 () Bool)

(assert (=> b!1096065 (= e!693922 (contains!1801 (list!3778 lt!368606) lt!368940))))

(assert (= (and d!309494 res!486701) b!1096065))

(declare-fun b_lambda!31503 () Bool)

(assert (=> (not b_lambda!31503) (not d!309494)))

(declare-fun m!1250871 () Bool)

(assert (=> d!309494 m!1250871))

(assert (=> d!309494 m!1247675))

(declare-fun m!1250873 () Bool)

(assert (=> d!309494 m!1250873))

(assert (=> d!309494 m!1247675))

(assert (=> d!309494 m!1249995))

(assert (=> b!1096065 m!1247675))

(assert (=> b!1096065 m!1249985))

(assert (=> b!1095044 d!309494))

(assert (=> b!1095044 d!308746))

(assert (=> b!1095090 d!309418))

(declare-fun d!309496 () Bool)

(declare-fun e!693923 () Bool)

(assert (=> d!309496 e!693923))

(declare-fun res!486702 () Bool)

(assert (=> d!309496 (=> (not res!486702) (not e!693923))))

(declare-fun lt!369533 () List!10546)

(assert (=> d!309496 (= res!486702 (<= (size!8149 lt!369533) (size!8149 (t!103088 lt!368623))))))

(declare-fun e!693925 () List!10546)

(assert (=> d!309496 (= lt!369533 e!693925)))

(declare-fun c!185963 () Bool)

(assert (=> d!309496 (= c!185963 ((_ is Nil!10530) (t!103088 lt!368623)))))

(assert (=> d!309496 (= (filter!276 (t!103088 lt!368623) lambda!42458) lt!369533)))

(declare-fun bm!80331 () Bool)

(declare-fun call!80336 () List!10546)

(assert (=> bm!80331 (= call!80336 (filter!276 (t!103088 (t!103088 lt!368623)) lambda!42458))))

(declare-fun b!1096066 () Bool)

(declare-fun e!693924 () List!10546)

(assert (=> b!1096066 (= e!693924 call!80336)))

(declare-fun b!1096067 () Bool)

(assert (=> b!1096067 (= e!693923 (forall!2374 lt!369533 lambda!42458))))

(declare-fun b!1096068 () Bool)

(assert (=> b!1096068 (= e!693924 (Cons!10530 (h!15931 (t!103088 lt!368623)) call!80336))))

(declare-fun b!1096069 () Bool)

(assert (=> b!1096069 (= e!693925 e!693924)))

(declare-fun c!185962 () Bool)

(assert (=> b!1096069 (= c!185962 (dynLambda!4609 lambda!42458 (h!15931 (t!103088 lt!368623))))))

(declare-fun b!1096070 () Bool)

(declare-fun res!486703 () Bool)

(assert (=> b!1096070 (=> (not res!486703) (not e!693923))))

(assert (=> b!1096070 (= res!486703 (= ((_ map implies) (content!1520 lt!369533) (content!1520 (t!103088 lt!368623))) ((as const (InoxSet tuple2!11726)) true)))))

(declare-fun b!1096071 () Bool)

(assert (=> b!1096071 (= e!693925 Nil!10530)))

(assert (= (and d!309496 c!185963) b!1096071))

(assert (= (and d!309496 (not c!185963)) b!1096069))

(assert (= (and b!1096069 c!185962) b!1096068))

(assert (= (and b!1096069 (not c!185962)) b!1096066))

(assert (= (or b!1096068 b!1096066) bm!80331))

(assert (= (and d!309496 res!486702) b!1096070))

(assert (= (and b!1096070 res!486703) b!1096067))

(declare-fun b_lambda!31505 () Bool)

(assert (=> (not b_lambda!31505) (not b!1096069)))

(declare-fun m!1250875 () Bool)

(assert (=> d!309496 m!1250875))

(assert (=> d!309496 m!1247871))

(declare-fun m!1250877 () Bool)

(assert (=> b!1096069 m!1250877))

(declare-fun m!1250879 () Bool)

(assert (=> bm!80331 m!1250879))

(declare-fun m!1250881 () Bool)

(assert (=> b!1096070 m!1250881))

(assert (=> b!1096070 m!1249953))

(declare-fun m!1250883 () Bool)

(assert (=> b!1096067 m!1250883))

(assert (=> bm!80310 d!309496))

(declare-fun d!309498 () Bool)

(declare-fun res!486704 () Bool)

(declare-fun e!693926 () Bool)

(assert (=> d!309498 (=> res!486704 e!693926)))

(assert (=> d!309498 (= res!486704 ((_ is Nil!10530) (t!103088 lt!368610)))))

(assert (=> d!309498 (= (forall!2374 (t!103088 lt!368610) lambda!42457) e!693926)))

(declare-fun b!1096072 () Bool)

(declare-fun e!693927 () Bool)

(assert (=> b!1096072 (= e!693926 e!693927)))

(declare-fun res!486705 () Bool)

(assert (=> b!1096072 (=> (not res!486705) (not e!693927))))

(assert (=> b!1096072 (= res!486705 (dynLambda!4609 lambda!42457 (h!15931 (t!103088 lt!368610))))))

(declare-fun b!1096073 () Bool)

(assert (=> b!1096073 (= e!693927 (forall!2374 (t!103088 (t!103088 lt!368610)) lambda!42457))))

(assert (= (and d!309498 (not res!486704)) b!1096072))

(assert (= (and b!1096072 res!486705) b!1096073))

(declare-fun b_lambda!31507 () Bool)

(assert (=> (not b_lambda!31507) (not b!1096072)))

(declare-fun m!1250885 () Bool)

(assert (=> b!1096072 m!1250885))

(declare-fun m!1250887 () Bool)

(assert (=> b!1096073 m!1250887))

(assert (=> b!1094845 d!309498))

(declare-fun d!309500 () Bool)

(declare-fun lt!369534 () Int)

(assert (=> d!309500 (>= lt!369534 0)))

(declare-fun e!693928 () Int)

(assert (=> d!309500 (= lt!369534 e!693928)))

(declare-fun c!185964 () Bool)

(assert (=> d!309500 (= c!185964 ((_ is Nil!10530) (filter!276 lt!368969 lambda!42563)))))

(assert (=> d!309500 (= (size!8149 (filter!276 lt!368969 lambda!42563)) lt!369534)))

(declare-fun b!1096074 () Bool)

(assert (=> b!1096074 (= e!693928 0)))

(declare-fun b!1096075 () Bool)

(assert (=> b!1096075 (= e!693928 (+ 1 (size!8149 (t!103088 (filter!276 lt!368969 lambda!42563)))))))

(assert (= (and d!309500 c!185964) b!1096074))

(assert (= (and d!309500 (not c!185964)) b!1096075))

(declare-fun m!1250889 () Bool)

(assert (=> b!1096075 m!1250889))

(assert (=> b!1095046 d!309500))

(declare-fun d!309502 () Bool)

(declare-fun e!693929 () Bool)

(assert (=> d!309502 e!693929))

(declare-fun res!486706 () Bool)

(assert (=> d!309502 (=> (not res!486706) (not e!693929))))

(declare-fun lt!369535 () List!10546)

(assert (=> d!309502 (= res!486706 (<= (size!8149 lt!369535) (size!8149 lt!368969)))))

(declare-fun e!693931 () List!10546)

(assert (=> d!309502 (= lt!369535 e!693931)))

(declare-fun c!185966 () Bool)

(assert (=> d!309502 (= c!185966 ((_ is Nil!10530) lt!368969))))

(assert (=> d!309502 (= (filter!276 lt!368969 lambda!42563) lt!369535)))

(declare-fun bm!80332 () Bool)

(declare-fun call!80337 () List!10546)

(assert (=> bm!80332 (= call!80337 (filter!276 (t!103088 lt!368969) lambda!42563))))

(declare-fun b!1096076 () Bool)

(declare-fun e!693930 () List!10546)

(assert (=> b!1096076 (= e!693930 call!80337)))

(declare-fun b!1096077 () Bool)

(assert (=> b!1096077 (= e!693929 (forall!2374 lt!369535 lambda!42563))))

(declare-fun b!1096078 () Bool)

(assert (=> b!1096078 (= e!693930 (Cons!10530 (h!15931 lt!368969) call!80337))))

(declare-fun b!1096079 () Bool)

(assert (=> b!1096079 (= e!693931 e!693930)))

(declare-fun c!185965 () Bool)

(assert (=> b!1096079 (= c!185965 (dynLambda!4609 lambda!42563 (h!15931 lt!368969)))))

(declare-fun b!1096080 () Bool)

(declare-fun res!486707 () Bool)

(assert (=> b!1096080 (=> (not res!486707) (not e!693929))))

(assert (=> b!1096080 (= res!486707 (= ((_ map implies) (content!1520 lt!369535) (content!1520 lt!368969)) ((as const (InoxSet tuple2!11726)) true)))))

(declare-fun b!1096081 () Bool)

(assert (=> b!1096081 (= e!693931 Nil!10530)))

(assert (= (and d!309502 c!185966) b!1096081))

(assert (= (and d!309502 (not c!185966)) b!1096079))

(assert (= (and b!1096079 c!185965) b!1096078))

(assert (= (and b!1096079 (not c!185965)) b!1096076))

(assert (= (or b!1096078 b!1096076) bm!80332))

(assert (= (and d!309502 res!486706) b!1096080))

(assert (= (and b!1096080 res!486707) b!1096077))

(declare-fun b_lambda!31509 () Bool)

(assert (=> (not b_lambda!31509) (not b!1096079)))

(declare-fun m!1250891 () Bool)

(assert (=> d!309502 m!1250891))

(assert (=> d!309502 m!1248343))

(declare-fun m!1250893 () Bool)

(assert (=> b!1096079 m!1250893))

(declare-fun m!1250895 () Bool)

(assert (=> bm!80332 m!1250895))

(declare-fun m!1250897 () Bool)

(assert (=> b!1096080 m!1250897))

(declare-fun m!1250899 () Bool)

(assert (=> b!1096080 m!1250899))

(declare-fun m!1250901 () Bool)

(assert (=> b!1096077 m!1250901))

(assert (=> b!1095046 d!309502))

(declare-fun d!309504 () Bool)

(declare-fun lt!369536 () Int)

(assert (=> d!309504 (>= lt!369536 0)))

(declare-fun e!693932 () Int)

(assert (=> d!309504 (= lt!369536 e!693932)))

(declare-fun c!185967 () Bool)

(assert (=> d!309504 (= c!185967 ((_ is Nil!10530) lt!368969))))

(assert (=> d!309504 (= (size!8149 lt!368969) lt!369536)))

(declare-fun b!1096082 () Bool)

(assert (=> b!1096082 (= e!693932 0)))

(declare-fun b!1096083 () Bool)

(assert (=> b!1096083 (= e!693932 (+ 1 (size!8149 (t!103088 lt!368969))))))

(assert (= (and d!309504 c!185967) b!1096082))

(assert (= (and d!309504 (not c!185967)) b!1096083))

(declare-fun m!1250903 () Bool)

(assert (=> b!1096083 m!1250903))

(assert (=> b!1095046 d!309504))

(declare-fun b!1096087 () Bool)

(declare-fun e!693934 () List!10546)

(assert (=> b!1096087 (= e!693934 (++!2855 (list!3780 (left!9060 (c!185681 (sortObjectsByID!0 lt!368625)))) (list!3780 (right!9390 (c!185681 (sortObjectsByID!0 lt!368625))))))))

(declare-fun b!1096085 () Bool)

(declare-fun e!693933 () List!10546)

(assert (=> b!1096085 (= e!693933 e!693934)))

(declare-fun c!185969 () Bool)

(assert (=> b!1096085 (= c!185969 ((_ is Leaf!5135) (c!185681 (sortObjectsByID!0 lt!368625))))))

(declare-fun b!1096084 () Bool)

(assert (=> b!1096084 (= e!693933 Nil!10530)))

(declare-fun b!1096086 () Bool)

(assert (=> b!1096086 (= e!693934 (list!3782 (xs!5922 (c!185681 (sortObjectsByID!0 lt!368625)))))))

(declare-fun d!309506 () Bool)

(declare-fun c!185968 () Bool)

(assert (=> d!309506 (= c!185968 ((_ is Empty!3229) (c!185681 (sortObjectsByID!0 lt!368625))))))

(assert (=> d!309506 (= (list!3780 (c!185681 (sortObjectsByID!0 lt!368625))) e!693933)))

(assert (= (and d!309506 c!185968) b!1096084))

(assert (= (and d!309506 (not c!185968)) b!1096085))

(assert (= (and b!1096085 c!185969) b!1096086))

(assert (= (and b!1096085 (not c!185969)) b!1096087))

(declare-fun m!1250905 () Bool)

(assert (=> b!1096087 m!1250905))

(declare-fun m!1250907 () Bool)

(assert (=> b!1096087 m!1250907))

(assert (=> b!1096087 m!1250905))

(assert (=> b!1096087 m!1250907))

(declare-fun m!1250909 () Bool)

(assert (=> b!1096087 m!1250909))

(declare-fun m!1250911 () Bool)

(assert (=> b!1096086 m!1250911))

(assert (=> d!308740 d!309506))

(declare-fun d!309508 () Bool)

(declare-fun res!486714 () Bool)

(declare-fun e!693937 () Bool)

(assert (=> d!309508 (=> (not res!486714) (not e!693937))))

(assert (=> d!309508 (= res!486714 (= (csize!6688 (c!185681 objs!8)) (+ (size!8152 (left!9060 (c!185681 objs!8))) (size!8152 (right!9390 (c!185681 objs!8))))))))

(assert (=> d!309508 (= (inv!13490 (c!185681 objs!8)) e!693937)))

(declare-fun b!1096094 () Bool)

(declare-fun res!486715 () Bool)

(assert (=> b!1096094 (=> (not res!486715) (not e!693937))))

(assert (=> b!1096094 (= res!486715 (and (not (= (left!9060 (c!185681 objs!8)) Empty!3229)) (not (= (right!9390 (c!185681 objs!8)) Empty!3229))))))

(declare-fun b!1096095 () Bool)

(declare-fun res!486716 () Bool)

(assert (=> b!1096095 (=> (not res!486716) (not e!693937))))

(assert (=> b!1096095 (= res!486716 (= (cheight!3440 (c!185681 objs!8)) (+ (max!0 (height!422 (left!9060 (c!185681 objs!8))) (height!422 (right!9390 (c!185681 objs!8)))) 1)))))

(declare-fun b!1096096 () Bool)

(assert (=> b!1096096 (= e!693937 (<= 0 (cheight!3440 (c!185681 objs!8))))))

(assert (= (and d!309508 res!486714) b!1096094))

(assert (= (and b!1096094 res!486715) b!1096095))

(assert (= (and b!1096095 res!486716) b!1096096))

(declare-fun m!1250913 () Bool)

(assert (=> d!309508 m!1250913))

(declare-fun m!1250915 () Bool)

(assert (=> d!309508 m!1250915))

(declare-fun m!1250917 () Bool)

(assert (=> b!1096095 m!1250917))

(declare-fun m!1250919 () Bool)

(assert (=> b!1096095 m!1250919))

(assert (=> b!1096095 m!1250917))

(assert (=> b!1096095 m!1250919))

(declare-fun m!1250921 () Bool)

(assert (=> b!1096095 m!1250921))

(assert (=> b!1094825 d!309508))

(declare-fun b!1096109 () Bool)

(declare-fun e!693943 () Bool)

(declare-fun e!693942 () Bool)

(assert (=> b!1096109 (= e!693943 e!693942)))

(declare-fun res!486733 () Bool)

(assert (=> b!1096109 (=> (not res!486733) (not e!693942))))

(assert (=> b!1096109 (= res!486733 (<= (- 1) (- (height!422 (left!9060 (filter!279 (c!185681 objs!8) lambda!42458))) (height!422 (right!9390 (filter!279 (c!185681 objs!8) lambda!42458))))))))

(declare-fun b!1096110 () Bool)

(declare-fun isEmpty!6674 (Conc!3229) Bool)

(assert (=> b!1096110 (= e!693942 (not (isEmpty!6674 (right!9390 (filter!279 (c!185681 objs!8) lambda!42458)))))))

(declare-fun d!309510 () Bool)

(declare-fun res!486731 () Bool)

(assert (=> d!309510 (=> res!486731 e!693943)))

(assert (=> d!309510 (= res!486731 (not ((_ is Node!3229) (filter!279 (c!185681 objs!8) lambda!42458))))))

(assert (=> d!309510 (= (isBalanced!892 (filter!279 (c!185681 objs!8) lambda!42458)) e!693943)))

(declare-fun b!1096111 () Bool)

(declare-fun res!486730 () Bool)

(assert (=> b!1096111 (=> (not res!486730) (not e!693942))))

(assert (=> b!1096111 (= res!486730 (not (isEmpty!6674 (left!9060 (filter!279 (c!185681 objs!8) lambda!42458)))))))

(declare-fun b!1096112 () Bool)

(declare-fun res!486732 () Bool)

(assert (=> b!1096112 (=> (not res!486732) (not e!693942))))

(assert (=> b!1096112 (= res!486732 (isBalanced!892 (left!9060 (filter!279 (c!185681 objs!8) lambda!42458))))))

(declare-fun b!1096113 () Bool)

(declare-fun res!486734 () Bool)

(assert (=> b!1096113 (=> (not res!486734) (not e!693942))))

(assert (=> b!1096113 (= res!486734 (<= (- (height!422 (left!9060 (filter!279 (c!185681 objs!8) lambda!42458))) (height!422 (right!9390 (filter!279 (c!185681 objs!8) lambda!42458)))) 1))))

(declare-fun b!1096114 () Bool)

(declare-fun res!486729 () Bool)

(assert (=> b!1096114 (=> (not res!486729) (not e!693942))))

(assert (=> b!1096114 (= res!486729 (isBalanced!892 (right!9390 (filter!279 (c!185681 objs!8) lambda!42458))))))

(assert (= (and d!309510 (not res!486731)) b!1096109))

(assert (= (and b!1096109 res!486733) b!1096113))

(assert (= (and b!1096113 res!486734) b!1096112))

(assert (= (and b!1096112 res!486732) b!1096114))

(assert (= (and b!1096114 res!486729) b!1096111))

(assert (= (and b!1096111 res!486730) b!1096110))

(declare-fun m!1250923 () Bool)

(assert (=> b!1096113 m!1250923))

(declare-fun m!1250925 () Bool)

(assert (=> b!1096113 m!1250925))

(declare-fun m!1250927 () Bool)

(assert (=> b!1096110 m!1250927))

(assert (=> b!1096109 m!1250923))

(assert (=> b!1096109 m!1250925))

(declare-fun m!1250929 () Bool)

(assert (=> b!1096114 m!1250929))

(declare-fun m!1250931 () Bool)

(assert (=> b!1096112 m!1250931))

(declare-fun m!1250933 () Bool)

(assert (=> b!1096111 m!1250933))

(assert (=> d!308610 d!309510))

(declare-fun b!1096129 () Bool)

(declare-fun c!185977 () Bool)

(declare-fun lt!369545 () IArray!6463)

(declare-fun size!8154 (IArray!6463) Int)

(assert (=> b!1096129 (= c!185977 (= (size!8154 lt!369545) 0))))

(declare-fun filter!281 (IArray!6463 Int) IArray!6463)

(assert (=> b!1096129 (= lt!369545 (filter!281 (xs!5922 (c!185681 objs!8)) lambda!42458))))

(declare-fun e!693953 () Conc!3229)

(declare-fun e!693955 () Conc!3229)

(assert (=> b!1096129 (= e!693953 e!693955)))

(declare-fun b!1096130 () Bool)

(declare-fun e!693952 () Conc!3229)

(assert (=> b!1096130 (= e!693952 (c!185681 objs!8))))

(declare-fun b!1096131 () Bool)

(assert (=> b!1096131 (= e!693955 (Leaf!5135 lt!369545 (size!8154 lt!369545)))))

(declare-fun d!309512 () Bool)

(declare-fun e!693954 () Bool)

(assert (=> d!309512 e!693954))

(declare-fun res!486737 () Bool)

(assert (=> d!309512 (=> (not res!486737) (not e!693954))))

(declare-fun lt!369544 () Conc!3229)

(assert (=> d!309512 (= res!486737 (isBalanced!892 lt!369544))))

(assert (=> d!309512 (= lt!369544 e!693952)))

(declare-fun c!185978 () Bool)

(assert (=> d!309512 (= c!185978 ((_ is Empty!3229) (c!185681 objs!8)))))

(assert (=> d!309512 (isBalanced!892 (c!185681 objs!8))))

(assert (=> d!309512 (= (filter!279 (c!185681 objs!8) lambda!42458) lt!369544)))

(declare-fun b!1096132 () Bool)

(assert (=> b!1096132 (= e!693954 (= (list!3780 lt!369544) (filter!276 (list!3780 (c!185681 objs!8)) lambda!42458)))))

(declare-fun b!1096133 () Bool)

(assert (=> b!1096133 (= e!693955 Empty!3229)))

(declare-fun b!1096134 () Bool)

(assert (=> b!1096134 (= e!693952 e!693953)))

(declare-fun c!185976 () Bool)

(assert (=> b!1096134 (= c!185976 ((_ is Leaf!5135) (c!185681 objs!8)))))

(declare-fun b!1096135 () Bool)

(declare-fun lt!369543 () Unit!16034)

(declare-fun lemmaFilterConcat!8 (List!10546 List!10546 Int) Unit!16034)

(assert (=> b!1096135 (= lt!369543 (lemmaFilterConcat!8 (list!3780 (left!9060 (c!185681 objs!8))) (list!3780 (right!9390 (c!185681 objs!8))) lambda!42458))))

(assert (=> b!1096135 (= e!693953 (++!2859 (filter!279 (left!9060 (c!185681 objs!8)) lambda!42458) (filter!279 (right!9390 (c!185681 objs!8)) lambda!42458)))))

(assert (= (and d!309512 c!185978) b!1096130))

(assert (= (and d!309512 (not c!185978)) b!1096134))

(assert (= (and b!1096134 c!185976) b!1096129))

(assert (= (and b!1096134 (not c!185976)) b!1096135))

(assert (= (and b!1096129 c!185977) b!1096133))

(assert (= (and b!1096129 (not c!185977)) b!1096131))

(assert (= (and d!309512 res!486737) b!1096132))

(declare-fun m!1250935 () Bool)

(assert (=> b!1096132 m!1250935))

(assert (=> b!1096132 m!1247847))

(assert (=> b!1096132 m!1247847))

(declare-fun m!1250937 () Bool)

(assert (=> b!1096132 m!1250937))

(assert (=> b!1096135 m!1250847))

(assert (=> b!1096135 m!1250845))

(assert (=> b!1096135 m!1250847))

(declare-fun m!1250939 () Bool)

(assert (=> b!1096135 m!1250939))

(declare-fun m!1250941 () Bool)

(assert (=> b!1096135 m!1250941))

(declare-fun m!1250943 () Bool)

(assert (=> b!1096135 m!1250943))

(assert (=> b!1096135 m!1250845))

(assert (=> b!1096135 m!1250943))

(assert (=> b!1096135 m!1250941))

(declare-fun m!1250945 () Bool)

(assert (=> b!1096135 m!1250945))

(declare-fun m!1250947 () Bool)

(assert (=> d!309512 m!1250947))

(assert (=> d!309512 m!1247885))

(declare-fun m!1250949 () Bool)

(assert (=> b!1096129 m!1250949))

(declare-fun m!1250951 () Bool)

(assert (=> b!1096129 m!1250951))

(assert (=> b!1096131 m!1250949))

(assert (=> d!308610 d!309512))

(declare-fun b!1096136 () Bool)

(declare-fun e!693959 () Bool)

(declare-fun e!693956 () Bool)

(assert (=> b!1096136 (= e!693959 e!693956)))

(declare-fun res!486741 () Bool)

(assert (=> b!1096136 (=> (not res!486741) (not e!693956))))

(assert (=> b!1096136 (= res!486741 ((_ is Cons!10530) lt!368623))))

(declare-fun b!1096137 () Bool)

(declare-fun e!693958 () Bool)

(assert (=> b!1096137 (= e!693956 e!693958)))

(declare-fun res!486738 () Bool)

(assert (=> b!1096137 (=> res!486738 e!693958)))

(declare-fun e!693957 () Bool)

(assert (=> b!1096137 (= res!486738 e!693957)))

(declare-fun res!486740 () Bool)

(assert (=> b!1096137 (=> (not res!486740) (not e!693957))))

(assert (=> b!1096137 (= res!486740 (= (h!15931 (filter!276 lt!368623 lambda!42460)) (h!15931 lt!368623)))))

(declare-fun b!1096139 () Bool)

(assert (=> b!1096139 (= e!693958 (subseq!148 (filter!276 lt!368623 lambda!42460) (t!103088 lt!368623)))))

(declare-fun b!1096138 () Bool)

(assert (=> b!1096138 (= e!693957 (subseq!148 (t!103088 (filter!276 lt!368623 lambda!42460)) (t!103088 lt!368623)))))

(declare-fun d!309514 () Bool)

(declare-fun res!486739 () Bool)

(assert (=> d!309514 (=> res!486739 e!693959)))

(assert (=> d!309514 (= res!486739 ((_ is Nil!10530) (filter!276 lt!368623 lambda!42460)))))

(assert (=> d!309514 (= (subseq!148 (filter!276 lt!368623 lambda!42460) lt!368623) e!693959)))

(assert (= (and d!309514 (not res!486739)) b!1096136))

(assert (= (and b!1096136 res!486741) b!1096137))

(assert (= (and b!1096137 res!486740) b!1096138))

(assert (= (and b!1096137 (not res!486738)) b!1096139))

(assert (=> b!1096139 m!1247681))

(declare-fun m!1250953 () Bool)

(assert (=> b!1096139 m!1250953))

(declare-fun m!1250955 () Bool)

(assert (=> b!1096138 m!1250955))

(assert (=> d!308626 d!309514))

(assert (=> d!308626 d!308752))

(declare-fun d!309516 () Bool)

(assert (=> d!309516 (subseq!148 (filter!276 lt!368623 lambda!42460) lt!368623)))

(assert (=> d!309516 true))

(declare-fun _$14!609 () Unit!16034)

(assert (=> d!309516 (= (choose!7057 lt!368623 lambda!42460) _$14!609)))

(declare-fun bs!258913 () Bool)

(assert (= bs!258913 d!309516))

(assert (=> bs!258913 m!1247681))

(assert (=> bs!258913 m!1247681))

(assert (=> bs!258913 m!1247955))

(assert (=> d!308626 d!309516))

(declare-fun d!309518 () Bool)

(declare-fun res!486742 () Bool)

(declare-fun e!693960 () Bool)

(assert (=> d!309518 (=> res!486742 e!693960)))

(assert (=> d!309518 (= res!486742 ((_ is Nil!10530) (list!3778 objs!8)))))

(assert (=> d!309518 (= (forall!2374 (list!3778 objs!8) lambda!42460) e!693960)))

(declare-fun b!1096140 () Bool)

(declare-fun e!693961 () Bool)

(assert (=> b!1096140 (= e!693960 e!693961)))

(declare-fun res!486743 () Bool)

(assert (=> b!1096140 (=> (not res!486743) (not e!693961))))

(assert (=> b!1096140 (= res!486743 (dynLambda!4609 lambda!42460 (h!15931 (list!3778 objs!8))))))

(declare-fun b!1096141 () Bool)

(assert (=> b!1096141 (= e!693961 (forall!2374 (t!103088 (list!3778 objs!8)) lambda!42460))))

(assert (= (and d!309518 (not res!486742)) b!1096140))

(assert (= (and b!1096140 res!486743) b!1096141))

(declare-fun b_lambda!31511 () Bool)

(assert (=> (not b_lambda!31511) (not b!1096140)))

(assert (=> b!1096140 m!1249963))

(declare-fun m!1250957 () Bool)

(assert (=> b!1096141 m!1250957))

(assert (=> d!308602 d!309518))

(assert (=> d!308602 d!308576))

(declare-fun b!1096143 () Bool)

(declare-fun e!693964 () Bool)

(assert (=> b!1096143 (= e!693964 (forall!2379 (xs!5922 (c!185681 objs!8)) lambda!42460))))

(declare-fun b!1096144 () Bool)

(declare-fun e!693962 () Bool)

(assert (=> b!1096144 (= e!693964 e!693962)))

(declare-fun lt!369546 () Unit!16034)

(assert (=> b!1096144 (= lt!369546 (lemmaForallConcat!62 (list!3780 (left!9060 (c!185681 objs!8))) (list!3780 (right!9390 (c!185681 objs!8))) lambda!42460))))

(declare-fun res!486744 () Bool)

(assert (=> b!1096144 (= res!486744 (forall!2377 (left!9060 (c!185681 objs!8)) lambda!42460))))

(assert (=> b!1096144 (=> (not res!486744) (not e!693962))))

(declare-fun b!1096145 () Bool)

(assert (=> b!1096145 (= e!693962 (forall!2377 (right!9390 (c!185681 objs!8)) lambda!42460))))

(declare-fun d!309520 () Bool)

(declare-fun lt!369547 () Bool)

(assert (=> d!309520 (= lt!369547 (forall!2374 (list!3780 (c!185681 objs!8)) lambda!42460))))

(declare-fun e!693963 () Bool)

(assert (=> d!309520 (= lt!369547 e!693963)))

(declare-fun res!486745 () Bool)

(assert (=> d!309520 (=> res!486745 e!693963)))

(assert (=> d!309520 (= res!486745 ((_ is Empty!3229) (c!185681 objs!8)))))

(assert (=> d!309520 (= (forall!2377 (c!185681 objs!8) lambda!42460) lt!369547)))

(declare-fun b!1096142 () Bool)

(assert (=> b!1096142 (= e!693963 e!693964)))

(declare-fun c!185979 () Bool)

(assert (=> b!1096142 (= c!185979 ((_ is Leaf!5135) (c!185681 objs!8)))))

(assert (= (and d!309520 (not res!486745)) b!1096142))

(assert (= (and b!1096142 c!185979) b!1096143))

(assert (= (and b!1096142 (not c!185979)) b!1096144))

(assert (= (and b!1096144 res!486744) b!1096145))

(declare-fun m!1250959 () Bool)

(assert (=> b!1096143 m!1250959))

(assert (=> b!1096144 m!1250845))

(assert (=> b!1096144 m!1250847))

(assert (=> b!1096144 m!1250845))

(assert (=> b!1096144 m!1250847))

(declare-fun m!1250961 () Bool)

(assert (=> b!1096144 m!1250961))

(declare-fun m!1250963 () Bool)

(assert (=> b!1096144 m!1250963))

(declare-fun m!1250965 () Bool)

(assert (=> b!1096145 m!1250965))

(assert (=> d!309520 m!1247847))

(assert (=> d!309520 m!1247847))

(declare-fun m!1250967 () Bool)

(assert (=> d!309520 m!1250967))

(assert (=> d!308602 d!309520))

(declare-fun d!309522 () Bool)

(assert (=> d!309522 (= (list!3778 lt!368689) (list!3780 (c!185681 lt!368689)))))

(declare-fun bs!258914 () Bool)

(assert (= bs!258914 d!309522))

(declare-fun m!1250969 () Bool)

(assert (=> bs!258914 m!1250969))

(assert (=> b!1094835 d!309522))

(declare-fun d!309524 () Bool)

(declare-fun e!693965 () Bool)

(assert (=> d!309524 e!693965))

(declare-fun res!486746 () Bool)

(assert (=> d!309524 (=> (not res!486746) (not e!693965))))

(declare-fun lt!369548 () List!10546)

(assert (=> d!309524 (= res!486746 (<= (size!8149 lt!369548) (size!8149 (list!3778 objs!8))))))

(declare-fun e!693967 () List!10546)

(assert (=> d!309524 (= lt!369548 e!693967)))

(declare-fun c!185981 () Bool)

(assert (=> d!309524 (= c!185981 ((_ is Nil!10530) (list!3778 objs!8)))))

(assert (=> d!309524 (= (filter!276 (list!3778 objs!8) lambda!42458) lt!369548)))

(declare-fun bm!80333 () Bool)

(declare-fun call!80338 () List!10546)

(assert (=> bm!80333 (= call!80338 (filter!276 (t!103088 (list!3778 objs!8)) lambda!42458))))

(declare-fun b!1096146 () Bool)

(declare-fun e!693966 () List!10546)

(assert (=> b!1096146 (= e!693966 call!80338)))

(declare-fun b!1096147 () Bool)

(assert (=> b!1096147 (= e!693965 (forall!2374 lt!369548 lambda!42458))))

(declare-fun b!1096148 () Bool)

(assert (=> b!1096148 (= e!693966 (Cons!10530 (h!15931 (list!3778 objs!8)) call!80338))))

(declare-fun b!1096149 () Bool)

(assert (=> b!1096149 (= e!693967 e!693966)))

(declare-fun c!185980 () Bool)

(assert (=> b!1096149 (= c!185980 (dynLambda!4609 lambda!42458 (h!15931 (list!3778 objs!8))))))

(declare-fun b!1096150 () Bool)

(declare-fun res!486747 () Bool)

(assert (=> b!1096150 (=> (not res!486747) (not e!693965))))

(assert (=> b!1096150 (= res!486747 (= ((_ map implies) (content!1520 lt!369548) (content!1520 (list!3778 objs!8))) ((as const (InoxSet tuple2!11726)) true)))))

(declare-fun b!1096151 () Bool)

(assert (=> b!1096151 (= e!693967 Nil!10530)))

(assert (= (and d!309524 c!185981) b!1096151))

(assert (= (and d!309524 (not c!185981)) b!1096149))

(assert (= (and b!1096149 c!185980) b!1096148))

(assert (= (and b!1096149 (not c!185980)) b!1096146))

(assert (= (or b!1096148 b!1096146) bm!80333))

(assert (= (and d!309524 res!486746) b!1096150))

(assert (= (and b!1096150 res!486747) b!1096147))

(declare-fun b_lambda!31513 () Bool)

(assert (=> (not b_lambda!31513) (not b!1096149)))

(declare-fun m!1250971 () Bool)

(assert (=> d!309524 m!1250971))

(assert (=> d!309524 m!1247649))

(assert (=> d!309524 m!1248531))

(assert (=> b!1096149 m!1250839))

(declare-fun m!1250973 () Bool)

(assert (=> bm!80333 m!1250973))

(declare-fun m!1250975 () Bool)

(assert (=> b!1096150 m!1250975))

(assert (=> b!1096150 m!1247649))

(assert (=> b!1096150 m!1249969))

(declare-fun m!1250977 () Bool)

(assert (=> b!1096147 m!1250977))

(assert (=> b!1094835 d!309524))

(assert (=> b!1094835 d!308576))

(declare-fun d!309526 () Bool)

(declare-fun lt!369549 () Bool)

(assert (=> d!309526 (= lt!369549 (forall!2374 (list!3778 lt!369001) lambda!42572))))

(assert (=> d!309526 (= lt!369549 (forall!2377 (c!185681 lt!369001) lambda!42572))))

(assert (=> d!309526 (= (forall!2375 lt!369001 lambda!42572) lt!369549)))

(declare-fun bs!258915 () Bool)

(assert (= bs!258915 d!309526))

(declare-fun m!1250979 () Bool)

(assert (=> bs!258915 m!1250979))

(assert (=> bs!258915 m!1250979))

(declare-fun m!1250981 () Bool)

(assert (=> bs!258915 m!1250981))

(declare-fun m!1250983 () Bool)

(assert (=> bs!258915 m!1250983))

(assert (=> d!308738 d!309526))

(assert (=> d!308738 d!308578))

(declare-fun d!309528 () Bool)

(declare-fun lt!369550 () Int)

(assert (=> d!309528 (>= lt!369550 0)))

(declare-fun e!693968 () Int)

(assert (=> d!309528 (= lt!369550 e!693968)))

(declare-fun c!185982 () Bool)

(assert (=> d!309528 (= c!185982 ((_ is Nil!10530) (t!103088 lt!368623)))))

(assert (=> d!309528 (= (size!8149 (t!103088 lt!368623)) lt!369550)))

(declare-fun b!1096152 () Bool)

(assert (=> b!1096152 (= e!693968 0)))

(declare-fun b!1096153 () Bool)

(assert (=> b!1096153 (= e!693968 (+ 1 (size!8149 (t!103088 (t!103088 lt!368623)))))))

(assert (= (and d!309528 c!185982) b!1096152))

(assert (= (and d!309528 (not c!185982)) b!1096153))

(declare-fun m!1250985 () Bool)

(assert (=> b!1096153 m!1250985))

(assert (=> b!1094818 d!309528))

(declare-fun d!309530 () Bool)

(assert (=> d!309530 (= (list!3778 lt!368684) (list!3780 (c!185681 lt!368684)))))

(declare-fun bs!258916 () Bool)

(assert (= bs!258916 d!309530))

(declare-fun m!1250987 () Bool)

(assert (=> bs!258916 m!1250987))

(assert (=> b!1094831 d!309530))

(declare-fun d!309532 () Bool)

(declare-fun e!693969 () Bool)

(assert (=> d!309532 e!693969))

(declare-fun res!486748 () Bool)

(assert (=> d!309532 (=> (not res!486748) (not e!693969))))

(declare-fun lt!369551 () List!10546)

(assert (=> d!309532 (= res!486748 (<= (size!8149 lt!369551) (size!8149 (list!3778 objs!8))))))

(declare-fun e!693971 () List!10546)

(assert (=> d!309532 (= lt!369551 e!693971)))

(declare-fun c!185984 () Bool)

(assert (=> d!309532 (= c!185984 ((_ is Nil!10530) (list!3778 objs!8)))))

(assert (=> d!309532 (= (filter!276 (list!3778 objs!8) lambda!42459) lt!369551)))

(declare-fun bm!80334 () Bool)

(declare-fun call!80339 () List!10546)

(assert (=> bm!80334 (= call!80339 (filter!276 (t!103088 (list!3778 objs!8)) lambda!42459))))

(declare-fun b!1096154 () Bool)

(declare-fun e!693970 () List!10546)

(assert (=> b!1096154 (= e!693970 call!80339)))

(declare-fun b!1096155 () Bool)

(assert (=> b!1096155 (= e!693969 (forall!2374 lt!369551 lambda!42459))))

(declare-fun b!1096156 () Bool)

(assert (=> b!1096156 (= e!693970 (Cons!10530 (h!15931 (list!3778 objs!8)) call!80339))))

(declare-fun b!1096157 () Bool)

(assert (=> b!1096157 (= e!693971 e!693970)))

(declare-fun c!185983 () Bool)

(assert (=> b!1096157 (= c!185983 (dynLambda!4609 lambda!42459 (h!15931 (list!3778 objs!8))))))

(declare-fun b!1096158 () Bool)

(declare-fun res!486749 () Bool)

(assert (=> b!1096158 (=> (not res!486749) (not e!693969))))

(assert (=> b!1096158 (= res!486749 (= ((_ map implies) (content!1520 lt!369551) (content!1520 (list!3778 objs!8))) ((as const (InoxSet tuple2!11726)) true)))))

(declare-fun b!1096159 () Bool)

(assert (=> b!1096159 (= e!693971 Nil!10530)))

(assert (= (and d!309532 c!185984) b!1096159))

(assert (= (and d!309532 (not c!185984)) b!1096157))

(assert (= (and b!1096157 c!185983) b!1096156))

(assert (= (and b!1096157 (not c!185983)) b!1096154))

(assert (= (or b!1096156 b!1096154) bm!80334))

(assert (= (and d!309532 res!486748) b!1096158))

(assert (= (and b!1096158 res!486749) b!1096155))

(declare-fun b_lambda!31515 () Bool)

(assert (=> (not b_lambda!31515) (not b!1096157)))

(declare-fun m!1250989 () Bool)

(assert (=> d!309532 m!1250989))

(assert (=> d!309532 m!1247649))

(assert (=> d!309532 m!1248531))

(declare-fun m!1250991 () Bool)

(assert (=> b!1096157 m!1250991))

(declare-fun m!1250993 () Bool)

(assert (=> bm!80334 m!1250993))

(declare-fun m!1250995 () Bool)

(assert (=> b!1096158 m!1250995))

(assert (=> b!1096158 m!1247649))

(assert (=> b!1096158 m!1249969))

(declare-fun m!1250997 () Bool)

(assert (=> b!1096155 m!1250997))

(assert (=> b!1094831 d!309532))

(assert (=> b!1094831 d!308576))

(declare-fun b!1096162 () Bool)

(declare-fun res!486750 () Bool)

(declare-fun e!693972 () Bool)

(assert (=> b!1096162 (=> (not res!486750) (not e!693972))))

(declare-fun lt!369552 () List!10546)

(assert (=> b!1096162 (= res!486750 (= (size!8149 lt!369552) (+ (size!8149 (t!103088 lt!368599)) (size!8149 lt!368602))))))

(declare-fun b!1096161 () Bool)

(declare-fun e!693973 () List!10546)

(assert (=> b!1096161 (= e!693973 (Cons!10530 (h!15931 (t!103088 lt!368599)) (++!2855 (t!103088 (t!103088 lt!368599)) lt!368602)))))

(declare-fun d!309534 () Bool)

(assert (=> d!309534 e!693972))

(declare-fun res!486751 () Bool)

(assert (=> d!309534 (=> (not res!486751) (not e!693972))))

(assert (=> d!309534 (= res!486751 (= (content!1520 lt!369552) ((_ map or) (content!1520 (t!103088 lt!368599)) (content!1520 lt!368602))))))

(assert (=> d!309534 (= lt!369552 e!693973)))

(declare-fun c!185985 () Bool)

(assert (=> d!309534 (= c!185985 ((_ is Nil!10530) (t!103088 lt!368599)))))

(assert (=> d!309534 (= (++!2855 (t!103088 lt!368599) lt!368602) lt!369552)))

(declare-fun b!1096160 () Bool)

(assert (=> b!1096160 (= e!693973 lt!368602)))

(declare-fun b!1096163 () Bool)

(assert (=> b!1096163 (= e!693972 (or (not (= lt!368602 Nil!10530)) (= lt!369552 (t!103088 lt!368599))))))

(assert (= (and d!309534 c!185985) b!1096160))

(assert (= (and d!309534 (not c!185985)) b!1096161))

(assert (= (and d!309534 res!486751) b!1096162))

(assert (= (and b!1096162 res!486750) b!1096163))

(declare-fun m!1250999 () Bool)

(assert (=> b!1096162 m!1250999))

(assert (=> b!1096162 m!1250343))

(assert (=> b!1096162 m!1248413))

(declare-fun m!1251001 () Bool)

(assert (=> b!1096161 m!1251001))

(declare-fun m!1251003 () Bool)

(assert (=> d!309534 m!1251003))

(declare-fun m!1251005 () Bool)

(assert (=> d!309534 m!1251005))

(assert (=> d!309534 m!1248421))

(assert (=> b!1095069 d!309534))

(declare-fun d!309536 () Bool)

(declare-fun res!486756 () Bool)

(declare-fun e!693976 () Bool)

(assert (=> d!309536 (=> (not res!486756) (not e!693976))))

(assert (=> d!309536 (= res!486756 (<= (size!8149 (list!3782 (xs!5922 (c!185681 objs!8)))) 512))))

(assert (=> d!309536 (= (inv!13491 (c!185681 objs!8)) e!693976)))

(declare-fun b!1096168 () Bool)

(declare-fun res!486757 () Bool)

(assert (=> b!1096168 (=> (not res!486757) (not e!693976))))

(assert (=> b!1096168 (= res!486757 (= (csize!6689 (c!185681 objs!8)) (size!8149 (list!3782 (xs!5922 (c!185681 objs!8))))))))

(declare-fun b!1096169 () Bool)

(assert (=> b!1096169 (= e!693976 (and (> (csize!6689 (c!185681 objs!8)) 0) (<= (csize!6689 (c!185681 objs!8)) 512)))))

(assert (= (and d!309536 res!486756) b!1096168))

(assert (= (and b!1096168 res!486757) b!1096169))

(declare-fun m!1251007 () Bool)

(assert (=> d!309536 m!1251007))

(assert (=> d!309536 m!1251007))

(declare-fun m!1251009 () Bool)

(assert (=> d!309536 m!1251009))

(assert (=> b!1096168 m!1251007))

(assert (=> b!1096168 m!1251007))

(assert (=> b!1096168 m!1251009))

(assert (=> b!1094827 d!309536))

(declare-fun d!309538 () Bool)

(assert (=> d!309538 (dynLambda!4609 lambda!42570 lt!368989)))

(declare-fun lt!369553 () Unit!16034)

(assert (=> d!309538 (= lt!369553 (choose!7056 (list!3778 lt!368625) lambda!42570 lt!368989))))

(declare-fun e!693977 () Bool)

(assert (=> d!309538 e!693977))

(declare-fun res!486758 () Bool)

(assert (=> d!309538 (=> (not res!486758) (not e!693977))))

(assert (=> d!309538 (= res!486758 (forall!2374 (list!3778 lt!368625) lambda!42570))))

(assert (=> d!309538 (= (forallContained!502 (list!3778 lt!368625) lambda!42570 lt!368989) lt!369553)))

(declare-fun b!1096170 () Bool)

(assert (=> b!1096170 (= e!693977 (contains!1801 (list!3778 lt!368625) lt!368989))))

(assert (= (and d!309538 res!486758) b!1096170))

(declare-fun b_lambda!31517 () Bool)

(assert (=> (not b_lambda!31517) (not d!309538)))

(assert (=> d!309538 m!1249921))

(assert (=> d!309538 m!1247645))

(declare-fun m!1251011 () Bool)

(assert (=> d!309538 m!1251011))

(assert (=> d!309538 m!1247645))

(assert (=> d!309538 m!1250387))

(assert (=> b!1096170 m!1247645))

(assert (=> b!1096170 m!1250725))

(assert (=> b!1095080 d!309538))

(assert (=> b!1095080 d!308616))

(declare-fun d!309540 () Bool)

(assert (=> d!309540 (= (inv!13495 (xs!5922 (c!185681 objs!8))) (<= (size!8149 (innerList!3289 (xs!5922 (c!185681 objs!8)))) 2147483647))))

(declare-fun bs!258917 () Bool)

(assert (= bs!258917 d!309540))

(declare-fun m!1251013 () Bool)

(assert (=> bs!258917 m!1251013))

(assert (=> b!1095122 d!309540))

(assert (=> d!308590 d!309408))

(assert (=> d!308590 d!308616))

(declare-fun b!1096172 () Bool)

(declare-fun e!693979 () Bool)

(assert (=> b!1096172 (= e!693979 (contains!1804 (xs!5922 (c!185681 lt!368625)) lt!368619))))

(declare-fun b!1096174 () Bool)

(declare-fun e!693980 () Bool)

(assert (=> b!1096174 (= e!693980 (contains!1802 (right!9390 (c!185681 lt!368625)) lt!368619))))

(declare-fun b!1096171 () Bool)

(declare-fun e!693978 () Bool)

(assert (=> b!1096171 (= e!693978 e!693979)))

(declare-fun c!185986 () Bool)

(assert (=> b!1096171 (= c!185986 ((_ is Leaf!5135) (c!185681 lt!368625)))))

(declare-fun d!309542 () Bool)

(declare-fun lt!369554 () Bool)

(assert (=> d!309542 (= lt!369554 (contains!1801 (list!3780 (c!185681 lt!368625)) lt!368619))))

(assert (=> d!309542 (= lt!369554 e!693978)))

(declare-fun res!486759 () Bool)

(assert (=> d!309542 (=> (not res!486759) (not e!693978))))

(assert (=> d!309542 (= res!486759 (not ((_ is Empty!3229) (c!185681 lt!368625))))))

(assert (=> d!309542 (= (contains!1802 (c!185681 lt!368625) lt!368619) lt!369554)))

(declare-fun b!1096173 () Bool)

(assert (=> b!1096173 (= e!693979 e!693980)))

(declare-fun res!486760 () Bool)

(assert (=> b!1096173 (= res!486760 (contains!1802 (left!9060 (c!185681 lt!368625)) lt!368619))))

(assert (=> b!1096173 (=> res!486760 e!693980)))

(assert (= (and d!309542 res!486759) b!1096171))

(assert (= (and b!1096171 c!185986) b!1096172))

(assert (= (and b!1096171 (not c!185986)) b!1096173))

(assert (= (and b!1096173 (not res!486760)) b!1096174))

(declare-fun m!1251015 () Bool)

(assert (=> b!1096172 m!1251015))

(declare-fun m!1251017 () Bool)

(assert (=> b!1096174 m!1251017))

(assert (=> d!309542 m!1247937))

(assert (=> d!309542 m!1247937))

(declare-fun m!1251019 () Bool)

(assert (=> d!309542 m!1251019))

(declare-fun m!1251021 () Bool)

(assert (=> b!1096173 m!1251021))

(assert (=> d!308590 d!309542))

(declare-fun b!1096178 () Bool)

(declare-fun e!693982 () List!10546)

(assert (=> b!1096178 (= e!693982 (++!2855 (list!3780 (left!9060 (c!185681 lt!368606))) (list!3780 (right!9390 (c!185681 lt!368606)))))))

(declare-fun b!1096176 () Bool)

(declare-fun e!693981 () List!10546)

(assert (=> b!1096176 (= e!693981 e!693982)))

(declare-fun c!185988 () Bool)

(assert (=> b!1096176 (= c!185988 ((_ is Leaf!5135) (c!185681 lt!368606)))))

(declare-fun b!1096175 () Bool)

(assert (=> b!1096175 (= e!693981 Nil!10530)))

(declare-fun b!1096177 () Bool)

(assert (=> b!1096177 (= e!693982 (list!3782 (xs!5922 (c!185681 lt!368606))))))

(declare-fun d!309544 () Bool)

(declare-fun c!185987 () Bool)

(assert (=> d!309544 (= c!185987 ((_ is Empty!3229) (c!185681 lt!368606)))))

(assert (=> d!309544 (= (list!3780 (c!185681 lt!368606)) e!693981)))

(assert (= (and d!309544 c!185987) b!1096175))

(assert (= (and d!309544 (not c!185987)) b!1096176))

(assert (= (and b!1096176 c!185988) b!1096177))

(assert (= (and b!1096176 (not c!185988)) b!1096178))

(declare-fun m!1251023 () Bool)

(assert (=> b!1096178 m!1251023))

(declare-fun m!1251025 () Bool)

(assert (=> b!1096178 m!1251025))

(assert (=> b!1096178 m!1251023))

(assert (=> b!1096178 m!1251025))

(declare-fun m!1251027 () Bool)

(assert (=> b!1096178 m!1251027))

(declare-fun m!1251029 () Bool)

(assert (=> b!1096177 m!1251029))

(assert (=> d!308746 d!309544))

(declare-fun d!309546 () Bool)

(declare-fun res!486761 () Bool)

(declare-fun e!693983 () Bool)

(assert (=> d!309546 (=> res!486761 e!693983)))

(assert (=> d!309546 (= res!486761 ((_ is Nil!10530) (t!103088 lt!368613)))))

(assert (=> d!309546 (= (forall!2374 (t!103088 lt!368613) lambda!42457) e!693983)))

(declare-fun b!1096179 () Bool)

(declare-fun e!693984 () Bool)

(assert (=> b!1096179 (= e!693983 e!693984)))

(declare-fun res!486762 () Bool)

(assert (=> b!1096179 (=> (not res!486762) (not e!693984))))

(assert (=> b!1096179 (= res!486762 (dynLambda!4609 lambda!42457 (h!15931 (t!103088 lt!368613))))))

(declare-fun b!1096180 () Bool)

(assert (=> b!1096180 (= e!693984 (forall!2374 (t!103088 (t!103088 lt!368613)) lambda!42457))))

(assert (= (and d!309546 (not res!486761)) b!1096179))

(assert (= (and b!1096179 res!486762) b!1096180))

(declare-fun b_lambda!31519 () Bool)

(assert (=> (not b_lambda!31519) (not b!1096179)))

(declare-fun m!1251031 () Bool)

(assert (=> b!1096179 m!1251031))

(declare-fun m!1251033 () Bool)

(assert (=> b!1096180 m!1251033))

(assert (=> b!1095059 d!309546))

(declare-fun d!309548 () Bool)

(declare-fun lt!369555 () Int)

(assert (=> d!309548 (>= lt!369555 0)))

(declare-fun e!693985 () Int)

(assert (=> d!309548 (= lt!369555 e!693985)))

(declare-fun c!185989 () Bool)

(assert (=> d!309548 (= c!185989 ((_ is Nil!10530) (filter!276 lt!369018 lambda!42568)))))

(assert (=> d!309548 (= (size!8149 (filter!276 lt!369018 lambda!42568)) lt!369555)))

(declare-fun b!1096181 () Bool)

(assert (=> b!1096181 (= e!693985 0)))

(declare-fun b!1096182 () Bool)

(assert (=> b!1096182 (= e!693985 (+ 1 (size!8149 (t!103088 (filter!276 lt!369018 lambda!42568)))))))

(assert (= (and d!309548 c!185989) b!1096181))

(assert (= (and d!309548 (not c!185989)) b!1096182))

(declare-fun m!1251035 () Bool)

(assert (=> b!1096182 m!1251035))

(assert (=> b!1095082 d!309548))

(declare-fun d!309550 () Bool)

(declare-fun e!693986 () Bool)

(assert (=> d!309550 e!693986))

(declare-fun res!486763 () Bool)

(assert (=> d!309550 (=> (not res!486763) (not e!693986))))

(declare-fun lt!369556 () List!10546)

(assert (=> d!309550 (= res!486763 (<= (size!8149 lt!369556) (size!8149 lt!369018)))))

(declare-fun e!693988 () List!10546)

(assert (=> d!309550 (= lt!369556 e!693988)))

(declare-fun c!185991 () Bool)

(assert (=> d!309550 (= c!185991 ((_ is Nil!10530) lt!369018))))

(assert (=> d!309550 (= (filter!276 lt!369018 lambda!42568) lt!369556)))

(declare-fun bm!80335 () Bool)

(declare-fun call!80340 () List!10546)

(assert (=> bm!80335 (= call!80340 (filter!276 (t!103088 lt!369018) lambda!42568))))

(declare-fun b!1096183 () Bool)

(declare-fun e!693987 () List!10546)

(assert (=> b!1096183 (= e!693987 call!80340)))

(declare-fun b!1096184 () Bool)

(assert (=> b!1096184 (= e!693986 (forall!2374 lt!369556 lambda!42568))))

(declare-fun b!1096185 () Bool)

(assert (=> b!1096185 (= e!693987 (Cons!10530 (h!15931 lt!369018) call!80340))))

(declare-fun b!1096186 () Bool)

(assert (=> b!1096186 (= e!693988 e!693987)))

(declare-fun c!185990 () Bool)

(assert (=> b!1096186 (= c!185990 (dynLambda!4609 lambda!42568 (h!15931 lt!369018)))))

(declare-fun b!1096187 () Bool)

(declare-fun res!486764 () Bool)

(assert (=> b!1096187 (=> (not res!486764) (not e!693986))))

(assert (=> b!1096187 (= res!486764 (= ((_ map implies) (content!1520 lt!369556) (content!1520 lt!369018)) ((as const (InoxSet tuple2!11726)) true)))))

(declare-fun b!1096188 () Bool)

(assert (=> b!1096188 (= e!693988 Nil!10530)))

(assert (= (and d!309550 c!185991) b!1096188))

(assert (= (and d!309550 (not c!185991)) b!1096186))

(assert (= (and b!1096186 c!185990) b!1096185))

(assert (= (and b!1096186 (not c!185990)) b!1096183))

(assert (= (or b!1096185 b!1096183) bm!80335))

(assert (= (and d!309550 res!486763) b!1096187))

(assert (= (and b!1096187 res!486764) b!1096184))

(declare-fun b_lambda!31521 () Bool)

(assert (=> (not b_lambda!31521) (not b!1096186)))

(declare-fun m!1251037 () Bool)

(assert (=> d!309550 m!1251037))

(assert (=> d!309550 m!1248497))

(declare-fun m!1251039 () Bool)

(assert (=> b!1096186 m!1251039))

(declare-fun m!1251041 () Bool)

(assert (=> bm!80335 m!1251041))

(declare-fun m!1251043 () Bool)

(assert (=> b!1096187 m!1251043))

(declare-fun m!1251045 () Bool)

(assert (=> b!1096187 m!1251045))

(declare-fun m!1251047 () Bool)

(assert (=> b!1096184 m!1251047))

(assert (=> b!1095082 d!309550))

(declare-fun d!309552 () Bool)

(declare-fun lt!369557 () Int)

(assert (=> d!309552 (>= lt!369557 0)))

(declare-fun e!693989 () Int)

(assert (=> d!309552 (= lt!369557 e!693989)))

(declare-fun c!185992 () Bool)

(assert (=> d!309552 (= c!185992 ((_ is Nil!10530) lt!369018))))

(assert (=> d!309552 (= (size!8149 lt!369018) lt!369557)))

(declare-fun b!1096189 () Bool)

(assert (=> b!1096189 (= e!693989 0)))

(declare-fun b!1096190 () Bool)

(assert (=> b!1096190 (= e!693989 (+ 1 (size!8149 (t!103088 lt!369018))))))

(assert (= (and d!309552 c!185992) b!1096189))

(assert (= (and d!309552 (not c!185992)) b!1096190))

(declare-fun m!1251049 () Bool)

(assert (=> b!1096190 m!1251049))

(assert (=> b!1095082 d!309552))

(declare-fun d!309554 () Bool)

(assert (=> d!309554 (dynLambda!4609 lambda!42458 lt!368619)))

(assert (=> d!309554 true))

(declare-fun _$7!667 () Unit!16034)

(assert (=> d!309554 (= (choose!7056 (list!3778 objs!8) lambda!42458 lt!368619) _$7!667)))

(declare-fun b_lambda!31523 () Bool)

(assert (=> (not b_lambda!31523) (not d!309554)))

(declare-fun bs!258918 () Bool)

(assert (= bs!258918 d!309554))

(assert (=> bs!258918 m!1247931))

(assert (=> d!308620 d!309554))

(assert (=> d!308620 d!309482))

(declare-fun b!1096194 () Bool)

(declare-fun e!693991 () List!10546)

(assert (=> b!1096194 (= e!693991 (++!2855 (list!3780 (left!9060 (c!185681 objs!8))) (list!3780 (right!9390 (c!185681 objs!8)))))))

(declare-fun b!1096192 () Bool)

(declare-fun e!693990 () List!10546)

(assert (=> b!1096192 (= e!693990 e!693991)))

(declare-fun c!185994 () Bool)

(assert (=> b!1096192 (= c!185994 ((_ is Leaf!5135) (c!185681 objs!8)))))

(declare-fun b!1096191 () Bool)

(assert (=> b!1096191 (= e!693990 Nil!10530)))

(declare-fun b!1096193 () Bool)

(assert (=> b!1096193 (= e!693991 (list!3782 (xs!5922 (c!185681 objs!8))))))

(declare-fun d!309556 () Bool)

(declare-fun c!185993 () Bool)

(assert (=> d!309556 (= c!185993 ((_ is Empty!3229) (c!185681 objs!8)))))

(assert (=> d!309556 (= (list!3780 (c!185681 objs!8)) e!693990)))

(assert (= (and d!309556 c!185993) b!1096191))

(assert (= (and d!309556 (not c!185993)) b!1096192))

(assert (= (and b!1096192 c!185994) b!1096193))

(assert (= (and b!1096192 (not c!185994)) b!1096194))

(assert (=> b!1096194 m!1250845))

(assert (=> b!1096194 m!1250847))

(assert (=> b!1096194 m!1250845))

(assert (=> b!1096194 m!1250847))

(declare-fun m!1251051 () Bool)

(assert (=> b!1096194 m!1251051))

(assert (=> b!1096193 m!1251007))

(assert (=> d!308576 d!309556))

(assert (=> b!1094846 d!309466))

(declare-fun d!309558 () Bool)

(declare-fun res!486765 () Bool)

(declare-fun e!693992 () Bool)

(assert (=> d!309558 (=> res!486765 e!693992)))

(assert (=> d!309558 (= res!486765 ((_ is Nil!10530) (list!3778 objs!8)))))

(assert (=> d!309558 (= (forall!2374 (list!3778 objs!8) lambda!42457) e!693992)))

(declare-fun b!1096195 () Bool)

(declare-fun e!693993 () Bool)

(assert (=> b!1096195 (= e!693992 e!693993)))

(declare-fun res!486766 () Bool)

(assert (=> b!1096195 (=> (not res!486766) (not e!693993))))

(assert (=> b!1096195 (= res!486766 (dynLambda!4609 lambda!42457 (h!15931 (list!3778 objs!8))))))

(declare-fun b!1096196 () Bool)

(assert (=> b!1096196 (= e!693993 (forall!2374 (t!103088 (list!3778 objs!8)) lambda!42457))))

(assert (= (and d!309558 (not res!486765)) b!1096195))

(assert (= (and b!1096195 res!486766) b!1096196))

(declare-fun b_lambda!31525 () Bool)

(assert (=> (not b_lambda!31525) (not b!1096195)))

(declare-fun m!1251053 () Bool)

(assert (=> b!1096195 m!1251053))

(declare-fun m!1251055 () Bool)

(assert (=> b!1096196 m!1251055))

(assert (=> d!308594 d!309558))

(assert (=> d!308594 d!308576))

(declare-fun b!1096198 () Bool)

(declare-fun e!693996 () Bool)

(assert (=> b!1096198 (= e!693996 (forall!2379 (xs!5922 (c!185681 objs!8)) lambda!42457))))

(declare-fun b!1096199 () Bool)

(declare-fun e!693994 () Bool)

(assert (=> b!1096199 (= e!693996 e!693994)))

(declare-fun lt!369558 () Unit!16034)

(assert (=> b!1096199 (= lt!369558 (lemmaForallConcat!62 (list!3780 (left!9060 (c!185681 objs!8))) (list!3780 (right!9390 (c!185681 objs!8))) lambda!42457))))

(declare-fun res!486767 () Bool)

(assert (=> b!1096199 (= res!486767 (forall!2377 (left!9060 (c!185681 objs!8)) lambda!42457))))

(assert (=> b!1096199 (=> (not res!486767) (not e!693994))))

(declare-fun b!1096200 () Bool)

(assert (=> b!1096200 (= e!693994 (forall!2377 (right!9390 (c!185681 objs!8)) lambda!42457))))

(declare-fun d!309560 () Bool)

(declare-fun lt!369559 () Bool)

(assert (=> d!309560 (= lt!369559 (forall!2374 (list!3780 (c!185681 objs!8)) lambda!42457))))

(declare-fun e!693995 () Bool)

(assert (=> d!309560 (= lt!369559 e!693995)))

(declare-fun res!486768 () Bool)

(assert (=> d!309560 (=> res!486768 e!693995)))

(assert (=> d!309560 (= res!486768 ((_ is Empty!3229) (c!185681 objs!8)))))

(assert (=> d!309560 (= (forall!2377 (c!185681 objs!8) lambda!42457) lt!369559)))

(declare-fun b!1096197 () Bool)

(assert (=> b!1096197 (= e!693995 e!693996)))

(declare-fun c!185995 () Bool)

(assert (=> b!1096197 (= c!185995 ((_ is Leaf!5135) (c!185681 objs!8)))))

(assert (= (and d!309560 (not res!486768)) b!1096197))

(assert (= (and b!1096197 c!185995) b!1096198))

(assert (= (and b!1096197 (not c!185995)) b!1096199))

(assert (= (and b!1096199 res!486767) b!1096200))

(declare-fun m!1251057 () Bool)

(assert (=> b!1096198 m!1251057))

(assert (=> b!1096199 m!1250845))

(assert (=> b!1096199 m!1250847))

(assert (=> b!1096199 m!1250845))

(assert (=> b!1096199 m!1250847))

(declare-fun m!1251059 () Bool)

(assert (=> b!1096199 m!1251059))

(declare-fun m!1251061 () Bool)

(assert (=> b!1096199 m!1251061))

(declare-fun m!1251063 () Bool)

(assert (=> b!1096200 m!1251063))

(assert (=> d!309560 m!1247847))

(assert (=> d!309560 m!1247847))

(declare-fun m!1251065 () Bool)

(assert (=> d!309560 m!1251065))

(assert (=> d!308594 d!309560))

(assert (=> b!1094792 d!308584))

(assert (=> b!1094792 d!308586))

(assert (=> b!1094792 d!308588))

(declare-fun b!1096201 () Bool)

(declare-fun e!693998 () Bool)

(declare-fun e!693997 () Bool)

(assert (=> b!1096201 (= e!693998 e!693997)))

(declare-fun res!486773 () Bool)

(assert (=> b!1096201 (=> (not res!486773) (not e!693997))))

(assert (=> b!1096201 (= res!486773 (<= (- 1) (- (height!422 (left!9060 (filter!279 (c!185681 objs!8) lambda!42459))) (height!422 (right!9390 (filter!279 (c!185681 objs!8) lambda!42459))))))))

(declare-fun b!1096202 () Bool)

(assert (=> b!1096202 (= e!693997 (not (isEmpty!6674 (right!9390 (filter!279 (c!185681 objs!8) lambda!42459)))))))

(declare-fun d!309562 () Bool)

(declare-fun res!486771 () Bool)

(assert (=> d!309562 (=> res!486771 e!693998)))

(assert (=> d!309562 (= res!486771 (not ((_ is Node!3229) (filter!279 (c!185681 objs!8) lambda!42459))))))

(assert (=> d!309562 (= (isBalanced!892 (filter!279 (c!185681 objs!8) lambda!42459)) e!693998)))

(declare-fun b!1096203 () Bool)

(declare-fun res!486770 () Bool)

(assert (=> b!1096203 (=> (not res!486770) (not e!693997))))

(assert (=> b!1096203 (= res!486770 (not (isEmpty!6674 (left!9060 (filter!279 (c!185681 objs!8) lambda!42459)))))))

(declare-fun b!1096204 () Bool)

(declare-fun res!486772 () Bool)

(assert (=> b!1096204 (=> (not res!486772) (not e!693997))))

(assert (=> b!1096204 (= res!486772 (isBalanced!892 (left!9060 (filter!279 (c!185681 objs!8) lambda!42459))))))

(declare-fun b!1096205 () Bool)

(declare-fun res!486774 () Bool)

(assert (=> b!1096205 (=> (not res!486774) (not e!693997))))

(assert (=> b!1096205 (= res!486774 (<= (- (height!422 (left!9060 (filter!279 (c!185681 objs!8) lambda!42459))) (height!422 (right!9390 (filter!279 (c!185681 objs!8) lambda!42459)))) 1))))

(declare-fun b!1096206 () Bool)

(declare-fun res!486769 () Bool)

(assert (=> b!1096206 (=> (not res!486769) (not e!693997))))

(assert (=> b!1096206 (= res!486769 (isBalanced!892 (right!9390 (filter!279 (c!185681 objs!8) lambda!42459))))))

(assert (= (and d!309562 (not res!486771)) b!1096201))

(assert (= (and b!1096201 res!486773) b!1096205))

(assert (= (and b!1096205 res!486774) b!1096204))

(assert (= (and b!1096204 res!486772) b!1096206))

(assert (= (and b!1096206 res!486769) b!1096203))

(assert (= (and b!1096203 res!486770) b!1096202))

(declare-fun m!1251067 () Bool)

(assert (=> b!1096205 m!1251067))

(declare-fun m!1251069 () Bool)

(assert (=> b!1096205 m!1251069))

(declare-fun m!1251071 () Bool)

(assert (=> b!1096202 m!1251071))

(assert (=> b!1096201 m!1251067))

(assert (=> b!1096201 m!1251069))

(declare-fun m!1251073 () Bool)

(assert (=> b!1096206 m!1251073))

(declare-fun m!1251075 () Bool)

(assert (=> b!1096204 m!1251075))

(declare-fun m!1251077 () Bool)

(assert (=> b!1096203 m!1251077))

(assert (=> d!308604 d!309562))

(declare-fun b!1096207 () Bool)

(declare-fun c!185997 () Bool)

(declare-fun lt!369562 () IArray!6463)

(assert (=> b!1096207 (= c!185997 (= (size!8154 lt!369562) 0))))

(assert (=> b!1096207 (= lt!369562 (filter!281 (xs!5922 (c!185681 objs!8)) lambda!42459))))

(declare-fun e!694000 () Conc!3229)

(declare-fun e!694002 () Conc!3229)

(assert (=> b!1096207 (= e!694000 e!694002)))

(declare-fun b!1096208 () Bool)

(declare-fun e!693999 () Conc!3229)

(assert (=> b!1096208 (= e!693999 (c!185681 objs!8))))

(declare-fun b!1096209 () Bool)

(assert (=> b!1096209 (= e!694002 (Leaf!5135 lt!369562 (size!8154 lt!369562)))))

(declare-fun d!309564 () Bool)

(declare-fun e!694001 () Bool)

(assert (=> d!309564 e!694001))

(declare-fun res!486775 () Bool)

(assert (=> d!309564 (=> (not res!486775) (not e!694001))))

(declare-fun lt!369561 () Conc!3229)

(assert (=> d!309564 (= res!486775 (isBalanced!892 lt!369561))))

(assert (=> d!309564 (= lt!369561 e!693999)))

(declare-fun c!185998 () Bool)

(assert (=> d!309564 (= c!185998 ((_ is Empty!3229) (c!185681 objs!8)))))

(assert (=> d!309564 (isBalanced!892 (c!185681 objs!8))))

(assert (=> d!309564 (= (filter!279 (c!185681 objs!8) lambda!42459) lt!369561)))

(declare-fun b!1096210 () Bool)

(assert (=> b!1096210 (= e!694001 (= (list!3780 lt!369561) (filter!276 (list!3780 (c!185681 objs!8)) lambda!42459)))))

(declare-fun b!1096211 () Bool)

(assert (=> b!1096211 (= e!694002 Empty!3229)))

(declare-fun b!1096212 () Bool)

(assert (=> b!1096212 (= e!693999 e!694000)))

(declare-fun c!185996 () Bool)

(assert (=> b!1096212 (= c!185996 ((_ is Leaf!5135) (c!185681 objs!8)))))

(declare-fun b!1096213 () Bool)

(declare-fun lt!369560 () Unit!16034)

(assert (=> b!1096213 (= lt!369560 (lemmaFilterConcat!8 (list!3780 (left!9060 (c!185681 objs!8))) (list!3780 (right!9390 (c!185681 objs!8))) lambda!42459))))

(assert (=> b!1096213 (= e!694000 (++!2859 (filter!279 (left!9060 (c!185681 objs!8)) lambda!42459) (filter!279 (right!9390 (c!185681 objs!8)) lambda!42459)))))

(assert (= (and d!309564 c!185998) b!1096208))

(assert (= (and d!309564 (not c!185998)) b!1096212))

(assert (= (and b!1096212 c!185996) b!1096207))

(assert (= (and b!1096212 (not c!185996)) b!1096213))

(assert (= (and b!1096207 c!185997) b!1096211))

(assert (= (and b!1096207 (not c!185997)) b!1096209))

(assert (= (and d!309564 res!486775) b!1096210))

(declare-fun m!1251079 () Bool)

(assert (=> b!1096210 m!1251079))

(assert (=> b!1096210 m!1247847))

(assert (=> b!1096210 m!1247847))

(declare-fun m!1251081 () Bool)

(assert (=> b!1096210 m!1251081))

(assert (=> b!1096213 m!1250847))

(assert (=> b!1096213 m!1250845))

(assert (=> b!1096213 m!1250847))

(declare-fun m!1251083 () Bool)

(assert (=> b!1096213 m!1251083))

(declare-fun m!1251085 () Bool)

(assert (=> b!1096213 m!1251085))

(declare-fun m!1251087 () Bool)

(assert (=> b!1096213 m!1251087))

(assert (=> b!1096213 m!1250845))

(assert (=> b!1096213 m!1251087))

(assert (=> b!1096213 m!1251085))

(declare-fun m!1251089 () Bool)

(assert (=> b!1096213 m!1251089))

(declare-fun m!1251091 () Bool)

(assert (=> d!309564 m!1251091))

(assert (=> d!309564 m!1247885))

(declare-fun m!1251093 () Bool)

(assert (=> b!1096207 m!1251093))

(declare-fun m!1251095 () Bool)

(assert (=> b!1096207 m!1251095))

(assert (=> b!1096209 m!1251093))

(assert (=> d!308604 d!309564))

(declare-fun d!309566 () Bool)

(assert (=> d!309566 (dynLambda!4609 lambda!42460 lt!368619)))

(assert (=> d!309566 true))

(declare-fun _$7!668 () Unit!16034)

(assert (=> d!309566 (= (choose!7056 lt!368623 lambda!42460 lt!368619) _$7!668)))

(declare-fun b_lambda!31527 () Bool)

(assert (=> (not b_lambda!31527) (not d!309566)))

(declare-fun bs!258919 () Bool)

(assert (= bs!258919 d!309566))

(assert (=> bs!258919 m!1247945))

(assert (=> d!308622 d!309566))

(assert (=> d!308622 d!309448))

(declare-fun b!1096214 () Bool)

(declare-fun e!694004 () Bool)

(declare-fun e!694003 () Bool)

(assert (=> b!1096214 (= e!694004 e!694003)))

(declare-fun res!486780 () Bool)

(assert (=> b!1096214 (=> (not res!486780) (not e!694003))))

(assert (=> b!1096214 (= res!486780 (<= (- 1) (- (height!422 (left!9060 (filter!279 (c!185681 objs!8) lambda!42460))) (height!422 (right!9390 (filter!279 (c!185681 objs!8) lambda!42460))))))))

(declare-fun b!1096215 () Bool)

(assert (=> b!1096215 (= e!694003 (not (isEmpty!6674 (right!9390 (filter!279 (c!185681 objs!8) lambda!42460)))))))

(declare-fun d!309568 () Bool)

(declare-fun res!486778 () Bool)

(assert (=> d!309568 (=> res!486778 e!694004)))

(assert (=> d!309568 (= res!486778 (not ((_ is Node!3229) (filter!279 (c!185681 objs!8) lambda!42460))))))

(assert (=> d!309568 (= (isBalanced!892 (filter!279 (c!185681 objs!8) lambda!42460)) e!694004)))

(declare-fun b!1096216 () Bool)

(declare-fun res!486777 () Bool)

(assert (=> b!1096216 (=> (not res!486777) (not e!694003))))

(assert (=> b!1096216 (= res!486777 (not (isEmpty!6674 (left!9060 (filter!279 (c!185681 objs!8) lambda!42460)))))))

(declare-fun b!1096217 () Bool)

(declare-fun res!486779 () Bool)

(assert (=> b!1096217 (=> (not res!486779) (not e!694003))))

(assert (=> b!1096217 (= res!486779 (isBalanced!892 (left!9060 (filter!279 (c!185681 objs!8) lambda!42460))))))

(declare-fun b!1096218 () Bool)

(declare-fun res!486781 () Bool)

(assert (=> b!1096218 (=> (not res!486781) (not e!694003))))

(assert (=> b!1096218 (= res!486781 (<= (- (height!422 (left!9060 (filter!279 (c!185681 objs!8) lambda!42460))) (height!422 (right!9390 (filter!279 (c!185681 objs!8) lambda!42460)))) 1))))

(declare-fun b!1096219 () Bool)

(declare-fun res!486776 () Bool)

(assert (=> b!1096219 (=> (not res!486776) (not e!694003))))

(assert (=> b!1096219 (= res!486776 (isBalanced!892 (right!9390 (filter!279 (c!185681 objs!8) lambda!42460))))))

(assert (= (and d!309568 (not res!486778)) b!1096214))

(assert (= (and b!1096214 res!486780) b!1096218))

(assert (= (and b!1096218 res!486781) b!1096217))

(assert (= (and b!1096217 res!486779) b!1096219))

(assert (= (and b!1096219 res!486776) b!1096216))

(assert (= (and b!1096216 res!486777) b!1096215))

(declare-fun m!1251097 () Bool)

(assert (=> b!1096218 m!1251097))

(declare-fun m!1251099 () Bool)

(assert (=> b!1096218 m!1251099))

(declare-fun m!1251101 () Bool)

(assert (=> b!1096215 m!1251101))

(assert (=> b!1096214 m!1251097))

(assert (=> b!1096214 m!1251099))

(declare-fun m!1251103 () Bool)

(assert (=> b!1096219 m!1251103))

(declare-fun m!1251105 () Bool)

(assert (=> b!1096217 m!1251105))

(declare-fun m!1251107 () Bool)

(assert (=> b!1096216 m!1251107))

(assert (=> d!308612 d!309568))

(declare-fun b!1096220 () Bool)

(declare-fun c!186000 () Bool)

(declare-fun lt!369565 () IArray!6463)

(assert (=> b!1096220 (= c!186000 (= (size!8154 lt!369565) 0))))

(assert (=> b!1096220 (= lt!369565 (filter!281 (xs!5922 (c!185681 objs!8)) lambda!42460))))

(declare-fun e!694006 () Conc!3229)

(declare-fun e!694008 () Conc!3229)

(assert (=> b!1096220 (= e!694006 e!694008)))

(declare-fun b!1096221 () Bool)

(declare-fun e!694005 () Conc!3229)

(assert (=> b!1096221 (= e!694005 (c!185681 objs!8))))

(declare-fun b!1096222 () Bool)

(assert (=> b!1096222 (= e!694008 (Leaf!5135 lt!369565 (size!8154 lt!369565)))))

(declare-fun d!309570 () Bool)

(declare-fun e!694007 () Bool)

(assert (=> d!309570 e!694007))

(declare-fun res!486782 () Bool)

(assert (=> d!309570 (=> (not res!486782) (not e!694007))))

(declare-fun lt!369564 () Conc!3229)

(assert (=> d!309570 (= res!486782 (isBalanced!892 lt!369564))))

(assert (=> d!309570 (= lt!369564 e!694005)))

(declare-fun c!186001 () Bool)

(assert (=> d!309570 (= c!186001 ((_ is Empty!3229) (c!185681 objs!8)))))

(assert (=> d!309570 (isBalanced!892 (c!185681 objs!8))))

(assert (=> d!309570 (= (filter!279 (c!185681 objs!8) lambda!42460) lt!369564)))

(declare-fun b!1096223 () Bool)

(assert (=> b!1096223 (= e!694007 (= (list!3780 lt!369564) (filter!276 (list!3780 (c!185681 objs!8)) lambda!42460)))))

(declare-fun b!1096224 () Bool)

(assert (=> b!1096224 (= e!694008 Empty!3229)))

(declare-fun b!1096225 () Bool)

(assert (=> b!1096225 (= e!694005 e!694006)))

(declare-fun c!185999 () Bool)

(assert (=> b!1096225 (= c!185999 ((_ is Leaf!5135) (c!185681 objs!8)))))

(declare-fun b!1096226 () Bool)

(declare-fun lt!369563 () Unit!16034)

(assert (=> b!1096226 (= lt!369563 (lemmaFilterConcat!8 (list!3780 (left!9060 (c!185681 objs!8))) (list!3780 (right!9390 (c!185681 objs!8))) lambda!42460))))

(assert (=> b!1096226 (= e!694006 (++!2859 (filter!279 (left!9060 (c!185681 objs!8)) lambda!42460) (filter!279 (right!9390 (c!185681 objs!8)) lambda!42460)))))

(assert (= (and d!309570 c!186001) b!1096221))

(assert (= (and d!309570 (not c!186001)) b!1096225))

(assert (= (and b!1096225 c!185999) b!1096220))

(assert (= (and b!1096225 (not c!185999)) b!1096226))

(assert (= (and b!1096220 c!186000) b!1096224))

(assert (= (and b!1096220 (not c!186000)) b!1096222))

(assert (= (and d!309570 res!486782) b!1096223))

(declare-fun m!1251109 () Bool)

(assert (=> b!1096223 m!1251109))

(assert (=> b!1096223 m!1247847))

(assert (=> b!1096223 m!1247847))

(declare-fun m!1251111 () Bool)

(assert (=> b!1096223 m!1251111))

(assert (=> b!1096226 m!1250847))

(assert (=> b!1096226 m!1250845))

(assert (=> b!1096226 m!1250847))

(declare-fun m!1251113 () Bool)

(assert (=> b!1096226 m!1251113))

(declare-fun m!1251115 () Bool)

(assert (=> b!1096226 m!1251115))

(declare-fun m!1251117 () Bool)

(assert (=> b!1096226 m!1251117))

(assert (=> b!1096226 m!1250845))

(assert (=> b!1096226 m!1251117))

(assert (=> b!1096226 m!1251115))

(declare-fun m!1251119 () Bool)

(assert (=> b!1096226 m!1251119))

(declare-fun m!1251121 () Bool)

(assert (=> d!309570 m!1251121))

(assert (=> d!309570 m!1247885))

(declare-fun m!1251123 () Bool)

(assert (=> b!1096220 m!1251123))

(declare-fun m!1251125 () Bool)

(assert (=> b!1096220 m!1251125))

(assert (=> b!1096222 m!1251123))

(assert (=> d!308612 d!309570))

(declare-fun d!309572 () Bool)

(declare-fun lt!369566 () Bool)

(assert (=> d!309572 (= lt!369566 (forall!2374 (list!3778 lt!368952) lambda!42567))))

(assert (=> d!309572 (= lt!369566 (forall!2377 (c!185681 lt!368952) lambda!42567))))

(assert (=> d!309572 (= (forall!2375 lt!368952 lambda!42567) lt!369566)))

(declare-fun bs!258920 () Bool)

(assert (= bs!258920 d!309572))

(declare-fun m!1251127 () Bool)

(assert (=> bs!258920 m!1251127))

(assert (=> bs!258920 m!1251127))

(declare-fun m!1251129 () Bool)

(assert (=> bs!258920 m!1251129))

(declare-fun m!1251131 () Bool)

(assert (=> bs!258920 m!1251131))

(assert (=> d!308628 d!309572))

(assert (=> d!308628 d!308598))

(declare-fun d!309574 () Bool)

(assert (=> d!309574 (dynLambda!4609 lambda!42565 lt!368940)))

(declare-fun lt!369567 () Unit!16034)

(assert (=> d!309574 (= lt!369567 (choose!7056 (list!3778 lt!368955) lambda!42565 lt!368940))))

(declare-fun e!694009 () Bool)

(assert (=> d!309574 e!694009))

(declare-fun res!486783 () Bool)

(assert (=> d!309574 (=> (not res!486783) (not e!694009))))

(assert (=> d!309574 (= res!486783 (forall!2374 (list!3778 lt!368955) lambda!42565))))

(assert (=> d!309574 (= (forallContained!502 (list!3778 lt!368955) lambda!42565 lt!368940) lt!369567)))

(declare-fun b!1096227 () Bool)

(assert (=> b!1096227 (= e!694009 (contains!1801 (list!3778 lt!368955) lt!368940))))

(assert (= (and d!309574 res!486783) b!1096227))

(declare-fun b_lambda!31529 () Bool)

(assert (=> (not b_lambda!31529) (not d!309574)))

(assert (=> d!309574 m!1250871))

(assert (=> d!309574 m!1248359))

(declare-fun m!1251133 () Bool)

(assert (=> d!309574 m!1251133))

(assert (=> d!309574 m!1248359))

(declare-fun m!1251135 () Bool)

(assert (=> d!309574 m!1251135))

(assert (=> b!1096227 m!1248359))

(assert (=> b!1096227 m!1250243))

(assert (=> b!1095039 d!309574))

(declare-fun d!309576 () Bool)

(assert (=> d!309576 (= (list!3778 lt!368955) (list!3780 (c!185681 lt!368955)))))

(declare-fun bs!258921 () Bool)

(assert (= bs!258921 d!309576))

(declare-fun m!1251137 () Bool)

(assert (=> bs!258921 m!1251137))

(assert (=> b!1095039 d!309576))

(assert (=> d!308708 d!308712))

(declare-fun d!309578 () Bool)

(assert (=> d!309578 (forall!2374 lt!368622 lambda!42457)))

(assert (=> d!309578 true))

(declare-fun _$37!270 () Unit!16034)

(assert (=> d!309578 (= (choose!7058 lt!368622 lt!368623 lambda!42457) _$37!270)))

(declare-fun bs!258922 () Bool)

(assert (= bs!258922 d!309578))

(assert (=> bs!258922 m!1247693))

(assert (=> d!308708 d!309578))

(assert (=> d!308708 d!309252))

(declare-fun d!309580 () Bool)

(declare-fun lt!369568 () Int)

(assert (=> d!309580 (>= lt!369568 0)))

(declare-fun e!694010 () Int)

(assert (=> d!309580 (= lt!369568 e!694010)))

(declare-fun c!186002 () Bool)

(assert (=> d!309580 (= c!186002 ((_ is Nil!10530) (filter!276 lt!368956 lambda!42565)))))

(assert (=> d!309580 (= (size!8149 (filter!276 lt!368956 lambda!42565)) lt!369568)))

(declare-fun b!1096228 () Bool)

(assert (=> b!1096228 (= e!694010 0)))

(declare-fun b!1096229 () Bool)

(assert (=> b!1096229 (= e!694010 (+ 1 (size!8149 (t!103088 (filter!276 lt!368956 lambda!42565)))))))

(assert (= (and d!309580 c!186002) b!1096228))

(assert (= (and d!309580 (not c!186002)) b!1096229))

(declare-fun m!1251139 () Bool)

(assert (=> b!1096229 m!1251139))

(assert (=> b!1095037 d!309580))

(declare-fun d!309582 () Bool)

(declare-fun e!694011 () Bool)

(assert (=> d!309582 e!694011))

(declare-fun res!486784 () Bool)

(assert (=> d!309582 (=> (not res!486784) (not e!694011))))

(declare-fun lt!369569 () List!10546)

(assert (=> d!309582 (= res!486784 (<= (size!8149 lt!369569) (size!8149 lt!368956)))))

(declare-fun e!694013 () List!10546)

(assert (=> d!309582 (= lt!369569 e!694013)))

(declare-fun c!186004 () Bool)

(assert (=> d!309582 (= c!186004 ((_ is Nil!10530) lt!368956))))

(assert (=> d!309582 (= (filter!276 lt!368956 lambda!42565) lt!369569)))

(declare-fun bm!80336 () Bool)

(declare-fun call!80341 () List!10546)

(assert (=> bm!80336 (= call!80341 (filter!276 (t!103088 lt!368956) lambda!42565))))

(declare-fun b!1096230 () Bool)

(declare-fun e!694012 () List!10546)

(assert (=> b!1096230 (= e!694012 call!80341)))

(declare-fun b!1096231 () Bool)

(assert (=> b!1096231 (= e!694011 (forall!2374 lt!369569 lambda!42565))))

(declare-fun b!1096232 () Bool)

(assert (=> b!1096232 (= e!694012 (Cons!10530 (h!15931 lt!368956) call!80341))))

(declare-fun b!1096233 () Bool)

(assert (=> b!1096233 (= e!694013 e!694012)))

(declare-fun c!186003 () Bool)

(assert (=> b!1096233 (= c!186003 (dynLambda!4609 lambda!42565 (h!15931 lt!368956)))))

(declare-fun b!1096234 () Bool)

(declare-fun res!486785 () Bool)

(assert (=> b!1096234 (=> (not res!486785) (not e!694011))))

(assert (=> b!1096234 (= res!486785 (= ((_ map implies) (content!1520 lt!369569) (content!1520 lt!368956)) ((as const (InoxSet tuple2!11726)) true)))))

(declare-fun b!1096235 () Bool)

(assert (=> b!1096235 (= e!694013 Nil!10530)))

(assert (= (and d!309582 c!186004) b!1096235))

(assert (= (and d!309582 (not c!186004)) b!1096233))

(assert (= (and b!1096233 c!186003) b!1096232))

(assert (= (and b!1096233 (not c!186003)) b!1096230))

(assert (= (or b!1096232 b!1096230) bm!80336))

(assert (= (and d!309582 res!486784) b!1096234))

(assert (= (and b!1096234 res!486785) b!1096231))

(declare-fun b_lambda!31531 () Bool)

(assert (=> (not b_lambda!31531) (not b!1096233)))

(declare-fun m!1251141 () Bool)

(assert (=> d!309582 m!1251141))

(assert (=> d!309582 m!1248357))

(declare-fun m!1251143 () Bool)

(assert (=> b!1096233 m!1251143))

(declare-fun m!1251145 () Bool)

(assert (=> bm!80336 m!1251145))

(declare-fun m!1251147 () Bool)

(assert (=> b!1096234 m!1251147))

(declare-fun m!1251149 () Bool)

(assert (=> b!1096234 m!1251149))

(declare-fun m!1251151 () Bool)

(assert (=> b!1096231 m!1251151))

(assert (=> b!1095037 d!309582))

(declare-fun d!309584 () Bool)

(declare-fun lt!369570 () Int)

(assert (=> d!309584 (>= lt!369570 0)))

(declare-fun e!694014 () Int)

(assert (=> d!309584 (= lt!369570 e!694014)))

(declare-fun c!186005 () Bool)

(assert (=> d!309584 (= c!186005 ((_ is Nil!10530) lt!368956))))

(assert (=> d!309584 (= (size!8149 lt!368956) lt!369570)))

(declare-fun b!1096236 () Bool)

(assert (=> b!1096236 (= e!694014 0)))

(declare-fun b!1096237 () Bool)

(assert (=> b!1096237 (= e!694014 (+ 1 (size!8149 (t!103088 lt!368956))))))

(assert (= (and d!309584 c!186005) b!1096236))

(assert (= (and d!309584 (not c!186005)) b!1096237))

(declare-fun m!1251153 () Bool)

(assert (=> b!1096237 m!1251153))

(assert (=> b!1095037 d!309584))

(declare-fun d!309586 () Bool)

(declare-fun c!186006 () Bool)

(assert (=> d!309586 (= c!186006 ((_ is Nil!10530) lt!368988))))

(declare-fun e!694015 () (InoxSet tuple2!11726))

(assert (=> d!309586 (= (content!1520 lt!368988) e!694015)))

(declare-fun b!1096238 () Bool)

(assert (=> b!1096238 (= e!694015 ((as const (Array tuple2!11726 Bool)) false))))

(declare-fun b!1096239 () Bool)

(assert (=> b!1096239 (= e!694015 ((_ map or) (store ((as const (Array tuple2!11726 Bool)) false) (h!15931 lt!368988) true) (content!1520 (t!103088 lt!368988))))))

(assert (= (and d!309586 c!186006) b!1096238))

(assert (= (and d!309586 (not c!186006)) b!1096239))

(declare-fun m!1251155 () Bool)

(assert (=> b!1096239 m!1251155))

(declare-fun m!1251157 () Bool)

(assert (=> b!1096239 m!1251157))

(assert (=> d!308734 d!309586))

(declare-fun d!309588 () Bool)

(declare-fun c!186007 () Bool)

(assert (=> d!309588 (= c!186007 ((_ is Nil!10530) lt!368599))))

(declare-fun e!694016 () (InoxSet tuple2!11726))

(assert (=> d!309588 (= (content!1520 lt!368599) e!694016)))

(declare-fun b!1096240 () Bool)

(assert (=> b!1096240 (= e!694016 ((as const (Array tuple2!11726 Bool)) false))))

(declare-fun b!1096241 () Bool)

(assert (=> b!1096241 (= e!694016 ((_ map or) (store ((as const (Array tuple2!11726 Bool)) false) (h!15931 lt!368599) true) (content!1520 (t!103088 lt!368599))))))

(assert (= (and d!309588 c!186007) b!1096240))

(assert (= (and d!309588 (not c!186007)) b!1096241))

(declare-fun m!1251159 () Bool)

(assert (=> b!1096241 m!1251159))

(assert (=> b!1096241 m!1251005))

(assert (=> d!308734 d!309588))

(declare-fun d!309590 () Bool)

(declare-fun c!186008 () Bool)

(assert (=> d!309590 (= c!186008 ((_ is Nil!10530) lt!368602))))

(declare-fun e!694017 () (InoxSet tuple2!11726))

(assert (=> d!309590 (= (content!1520 lt!368602) e!694017)))

(declare-fun b!1096242 () Bool)

(assert (=> b!1096242 (= e!694017 ((as const (Array tuple2!11726 Bool)) false))))

(declare-fun b!1096243 () Bool)

(assert (=> b!1096243 (= e!694017 ((_ map or) (store ((as const (Array tuple2!11726 Bool)) false) (h!15931 lt!368602) true) (content!1520 (t!103088 lt!368602))))))

(assert (= (and d!309590 c!186008) b!1096242))

(assert (= (and d!309590 (not c!186008)) b!1096243))

(declare-fun m!1251161 () Bool)

(assert (=> b!1096243 m!1251161))

(declare-fun m!1251163 () Bool)

(assert (=> b!1096243 m!1251163))

(assert (=> d!308734 d!309590))

(declare-fun d!309592 () Bool)

(assert (=> d!309592 (= (usesJsonRules!0 (_2!6689 (h!15931 lt!368612))) (= (rules!9087 (_2!6689 (h!15931 lt!368612))) (rules!109 JsonLexer!295)))))

(declare-fun bs!258923 () Bool)

(assert (= bs!258923 d!309592))

(assert (=> bs!258923 m!1250339))

(assert (=> bs!258610 d!309592))

(declare-fun d!309594 () Bool)

(declare-fun lt!369573 () tuple2!11726)

(assert (=> d!309594 (contains!1801 (list!3778 objs!8) lt!369573)))

(declare-fun e!694023 () tuple2!11726)

(assert (=> d!309594 (= lt!369573 e!694023)))

(declare-fun c!186011 () Bool)

(assert (=> d!309594 (= c!186011 (= (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2))) 0))))

(declare-fun e!694022 () Bool)

(assert (=> d!309594 e!694022))

(declare-fun res!486788 () Bool)

(assert (=> d!309594 (=> (not res!486788) (not e!694022))))

(assert (=> d!309594 (= res!486788 (<= 0 (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2)))))))

(assert (=> d!309594 (= (apply!2078 (list!3778 objs!8) (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2)))) lt!369573)))

(declare-fun b!1096250 () Bool)

(assert (=> b!1096250 (= e!694022 (< (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2))) (size!8149 (list!3778 objs!8))))))

(declare-fun b!1096251 () Bool)

(declare-fun head!2033 (List!10546) tuple2!11726)

(assert (=> b!1096251 (= e!694023 (head!2033 (list!3778 objs!8)))))

(declare-fun b!1096252 () Bool)

(declare-fun tail!1593 (List!10546) List!10546)

(assert (=> b!1096252 (= e!694023 (apply!2078 (tail!1593 (list!3778 objs!8)) (- (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2))) 1)))))

(assert (= (and d!309594 res!486788) b!1096250))

(assert (= (and d!309594 c!186011) b!1096251))

(assert (= (and d!309594 (not c!186011)) b!1096252))

(assert (=> d!309594 m!1247649))

(declare-fun m!1251165 () Bool)

(assert (=> d!309594 m!1251165))

(assert (=> b!1096250 m!1247649))

(assert (=> b!1096250 m!1248531))

(assert (=> b!1096251 m!1247649))

(declare-fun m!1251167 () Bool)

(assert (=> b!1096251 m!1251167))

(assert (=> b!1096252 m!1247649))

(declare-fun m!1251169 () Bool)

(assert (=> b!1096252 m!1251169))

(assert (=> b!1096252 m!1251169))

(declare-fun m!1251171 () Bool)

(assert (=> b!1096252 m!1251171))

(assert (=> d!308606 d!309594))

(assert (=> d!308606 d!308576))

(declare-fun b!1096268 () Bool)

(declare-fun e!694035 () Int)

(assert (=> b!1096268 (= e!694035 (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2))))))

(declare-fun b!1096269 () Bool)

(declare-fun e!694033 () tuple2!11726)

(declare-fun e!694034 () tuple2!11726)

(assert (=> b!1096269 (= e!694033 e!694034)))

(declare-fun lt!369578 () Bool)

(declare-fun appendIndex!82 (List!10546 List!10546 Int) Bool)

(assert (=> b!1096269 (= lt!369578 (appendIndex!82 (list!3780 (left!9060 (c!185681 objs!8))) (list!3780 (right!9390 (c!185681 objs!8))) (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2)))))))

(declare-fun c!186019 () Bool)

(assert (=> b!1096269 (= c!186019 (< (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2))) (size!8152 (left!9060 (c!185681 objs!8)))))))

(declare-fun b!1096270 () Bool)

(declare-fun apply!2083 (IArray!6463 Int) tuple2!11726)

(assert (=> b!1096270 (= e!694033 (apply!2083 (xs!5922 (c!185681 objs!8)) (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2)))))))

(declare-fun b!1096271 () Bool)

(declare-fun call!80344 () tuple2!11726)

(assert (=> b!1096271 (= e!694034 call!80344)))

(declare-fun b!1096272 () Bool)

(assert (=> b!1096272 (= e!694034 call!80344)))

(declare-fun bm!80339 () Bool)

(declare-fun c!186020 () Bool)

(assert (=> bm!80339 (= c!186020 c!186019)))

(assert (=> bm!80339 (= call!80344 (apply!2079 (ite c!186019 (left!9060 (c!185681 objs!8)) (right!9390 (c!185681 objs!8))) e!694035))))

(declare-fun b!1096273 () Bool)

(assert (=> b!1096273 (= e!694035 (- (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2))) (size!8152 (left!9060 (c!185681 objs!8)))))))

(declare-fun d!309596 () Bool)

(declare-fun lt!369579 () tuple2!11726)

(assert (=> d!309596 (= lt!369579 (apply!2078 (list!3780 (c!185681 objs!8)) (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2)))))))

(assert (=> d!309596 (= lt!369579 e!694033)))

(declare-fun c!186018 () Bool)

(assert (=> d!309596 (= c!186018 ((_ is Leaf!5135) (c!185681 objs!8)))))

(declare-fun e!694032 () Bool)

(assert (=> d!309596 e!694032))

(declare-fun res!486791 () Bool)

(assert (=> d!309596 (=> (not res!486791) (not e!694032))))

(assert (=> d!309596 (= res!486791 (<= 0 (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2)))))))

(assert (=> d!309596 (= (apply!2079 (c!185681 objs!8) (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2)))) lt!369579)))

(declare-fun b!1096267 () Bool)

(assert (=> b!1096267 (= e!694032 (< (ite (>= lt!368593 0) (div lt!368593 2) (- (div (- lt!368593) 2))) (size!8152 (c!185681 objs!8))))))

(assert (= (and d!309596 res!486791) b!1096267))

(assert (= (and d!309596 c!186018) b!1096270))

(assert (= (and d!309596 (not c!186018)) b!1096269))

(assert (= (and b!1096269 c!186019) b!1096272))

(assert (= (and b!1096269 (not c!186019)) b!1096271))

(assert (= (or b!1096272 b!1096271) bm!80339))

(assert (= (and bm!80339 c!186020) b!1096268))

(assert (= (and bm!80339 (not c!186020)) b!1096273))

(assert (=> b!1096267 m!1248533))

(assert (=> d!309596 m!1247847))

(assert (=> d!309596 m!1247847))

(declare-fun m!1251173 () Bool)

(assert (=> d!309596 m!1251173))

(assert (=> b!1096269 m!1250845))

(assert (=> b!1096269 m!1250847))

(assert (=> b!1096269 m!1250845))

(assert (=> b!1096269 m!1250847))

(declare-fun m!1251175 () Bool)

(assert (=> b!1096269 m!1251175))

(assert (=> b!1096269 m!1250913))

(declare-fun m!1251177 () Bool)

(assert (=> b!1096270 m!1251177))

(assert (=> b!1096273 m!1250913))

(declare-fun m!1251179 () Bool)

(assert (=> bm!80339 m!1251179))

(assert (=> d!308606 d!309596))

(declare-fun d!309598 () Bool)

(declare-fun lt!369580 () Int)

(assert (=> d!309598 (>= lt!369580 0)))

(declare-fun e!694036 () Int)

(assert (=> d!309598 (= lt!369580 e!694036)))

(declare-fun c!186021 () Bool)

(assert (=> d!309598 (= c!186021 ((_ is Nil!10530) (filter!276 lt!369005 lambda!42570)))))

(assert (=> d!309598 (= (size!8149 (filter!276 lt!369005 lambda!42570)) lt!369580)))

(declare-fun b!1096274 () Bool)

(assert (=> b!1096274 (= e!694036 0)))

(declare-fun b!1096275 () Bool)

(assert (=> b!1096275 (= e!694036 (+ 1 (size!8149 (t!103088 (filter!276 lt!369005 lambda!42570)))))))

(assert (= (and d!309598 c!186021) b!1096274))

(assert (= (and d!309598 (not c!186021)) b!1096275))

(declare-fun m!1251181 () Bool)

(assert (=> b!1096275 m!1251181))

(assert (=> b!1095073 d!309598))

(declare-fun d!309600 () Bool)

(declare-fun e!694037 () Bool)

(assert (=> d!309600 e!694037))

(declare-fun res!486792 () Bool)

(assert (=> d!309600 (=> (not res!486792) (not e!694037))))

(declare-fun lt!369581 () List!10546)

(assert (=> d!309600 (= res!486792 (<= (size!8149 lt!369581) (size!8149 lt!369005)))))

(declare-fun e!694039 () List!10546)

(assert (=> d!309600 (= lt!369581 e!694039)))

(declare-fun c!186023 () Bool)

(assert (=> d!309600 (= c!186023 ((_ is Nil!10530) lt!369005))))

(assert (=> d!309600 (= (filter!276 lt!369005 lambda!42570) lt!369581)))

(declare-fun bm!80340 () Bool)

(declare-fun call!80345 () List!10546)

(assert (=> bm!80340 (= call!80345 (filter!276 (t!103088 lt!369005) lambda!42570))))

(declare-fun b!1096276 () Bool)

(declare-fun e!694038 () List!10546)

(assert (=> b!1096276 (= e!694038 call!80345)))

(declare-fun b!1096277 () Bool)

(assert (=> b!1096277 (= e!694037 (forall!2374 lt!369581 lambda!42570))))

(declare-fun b!1096278 () Bool)

(assert (=> b!1096278 (= e!694038 (Cons!10530 (h!15931 lt!369005) call!80345))))

(declare-fun b!1096279 () Bool)

(assert (=> b!1096279 (= e!694039 e!694038)))

(declare-fun c!186022 () Bool)

(assert (=> b!1096279 (= c!186022 (dynLambda!4609 lambda!42570 (h!15931 lt!369005)))))

(declare-fun b!1096280 () Bool)

(declare-fun res!486793 () Bool)

(assert (=> b!1096280 (=> (not res!486793) (not e!694037))))

(assert (=> b!1096280 (= res!486793 (= ((_ map implies) (content!1520 lt!369581) (content!1520 lt!369005)) ((as const (InoxSet tuple2!11726)) true)))))

(declare-fun b!1096281 () Bool)

(assert (=> b!1096281 (= e!694039 Nil!10530)))

(assert (= (and d!309600 c!186023) b!1096281))

(assert (= (and d!309600 (not c!186023)) b!1096279))

(assert (= (and b!1096279 c!186022) b!1096278))

(assert (= (and b!1096279 (not c!186022)) b!1096276))

(assert (= (or b!1096278 b!1096276) bm!80340))

(assert (= (and d!309600 res!486792) b!1096280))

(assert (= (and b!1096280 res!486793) b!1096277))

(declare-fun b_lambda!31533 () Bool)

(assert (=> (not b_lambda!31533) (not b!1096279)))

(declare-fun m!1251183 () Bool)

(assert (=> d!309600 m!1251183))

(assert (=> d!309600 m!1248511))

(declare-fun m!1251185 () Bool)

(assert (=> b!1096279 m!1251185))

(declare-fun m!1251187 () Bool)

(assert (=> bm!80340 m!1251187))

(declare-fun m!1251189 () Bool)

(assert (=> b!1096280 m!1251189))

(declare-fun m!1251191 () Bool)

(assert (=> b!1096280 m!1251191))

(declare-fun m!1251193 () Bool)

(assert (=> b!1096277 m!1251193))

(assert (=> b!1095073 d!309600))

(declare-fun d!309602 () Bool)

(declare-fun lt!369582 () Int)

(assert (=> d!309602 (>= lt!369582 0)))

(declare-fun e!694040 () Int)

(assert (=> d!309602 (= lt!369582 e!694040)))

(declare-fun c!186024 () Bool)

(assert (=> d!309602 (= c!186024 ((_ is Nil!10530) lt!369005))))

(assert (=> d!309602 (= (size!8149 lt!369005) lt!369582)))

(declare-fun b!1096282 () Bool)

(assert (=> b!1096282 (= e!694040 0)))

(declare-fun b!1096283 () Bool)

(assert (=> b!1096283 (= e!694040 (+ 1 (size!8149 (t!103088 lt!369005))))))

(assert (= (and d!309602 c!186024) b!1096282))

(assert (= (and d!309602 (not c!186024)) b!1096283))

(declare-fun m!1251195 () Bool)

(assert (=> b!1096283 m!1251195))

(assert (=> b!1095073 d!309602))

(declare-fun d!309604 () Bool)

(declare-fun lt!369583 () Int)

(assert (=> d!309604 (>= lt!369583 0)))

(declare-fun e!694041 () Int)

(assert (=> d!309604 (= lt!369583 e!694041)))

(declare-fun c!186025 () Bool)

(assert (=> d!309604 (= c!186025 ((_ is Nil!10530) (list!3778 lt!368625)))))

(assert (=> d!309604 (= (size!8149 (list!3778 lt!368625)) lt!369583)))

(declare-fun b!1096284 () Bool)

(assert (=> b!1096284 (= e!694041 0)))

(declare-fun b!1096285 () Bool)

(assert (=> b!1096285 (= e!694041 (+ 1 (size!8149 (t!103088 (list!3778 lt!368625)))))))

(assert (= (and d!309604 c!186025) b!1096284))

(assert (= (and d!309604 (not c!186025)) b!1096285))

(declare-fun m!1251197 () Bool)

(assert (=> b!1096285 m!1251197))

(assert (=> d!308578 d!309604))

(assert (=> d!308578 d!308616))

(declare-fun d!309606 () Bool)

(declare-fun lt!369584 () Int)

(assert (=> d!309606 (= lt!369584 (size!8149 (list!3780 (c!185681 lt!368625))))))

(assert (=> d!309606 (= lt!369584 (ite ((_ is Empty!3229) (c!185681 lt!368625)) 0 (ite ((_ is Leaf!5135) (c!185681 lt!368625)) (csize!6689 (c!185681 lt!368625)) (csize!6688 (c!185681 lt!368625)))))))

(assert (=> d!309606 (= (size!8152 (c!185681 lt!368625)) lt!369584)))

(declare-fun bs!258924 () Bool)

(assert (= bs!258924 d!309606))

(assert (=> bs!258924 m!1247937))

(assert (=> bs!258924 m!1247937))

(declare-fun m!1251199 () Bool)

(assert (=> bs!258924 m!1251199))

(assert (=> d!308578 d!309606))

(declare-fun b!1096286 () Bool)

(declare-fun e!694043 () Bool)

(declare-fun e!694042 () Bool)

(assert (=> b!1096286 (= e!694043 e!694042)))

(declare-fun res!486798 () Bool)

(assert (=> b!1096286 (=> (not res!486798) (not e!694042))))

(assert (=> b!1096286 (= res!486798 (<= (- 1) (- (height!422 (left!9060 (c!185681 objs!8))) (height!422 (right!9390 (c!185681 objs!8))))))))

(declare-fun b!1096287 () Bool)

(assert (=> b!1096287 (= e!694042 (not (isEmpty!6674 (right!9390 (c!185681 objs!8)))))))

(declare-fun d!309608 () Bool)

(declare-fun res!486796 () Bool)

(assert (=> d!309608 (=> res!486796 e!694043)))

(assert (=> d!309608 (= res!486796 (not ((_ is Node!3229) (c!185681 objs!8))))))

(assert (=> d!309608 (= (isBalanced!892 (c!185681 objs!8)) e!694043)))

(declare-fun b!1096288 () Bool)

(declare-fun res!486795 () Bool)

(assert (=> b!1096288 (=> (not res!486795) (not e!694042))))

(assert (=> b!1096288 (= res!486795 (not (isEmpty!6674 (left!9060 (c!185681 objs!8)))))))

(declare-fun b!1096289 () Bool)

(declare-fun res!486797 () Bool)

(assert (=> b!1096289 (=> (not res!486797) (not e!694042))))

(assert (=> b!1096289 (= res!486797 (isBalanced!892 (left!9060 (c!185681 objs!8))))))

(declare-fun b!1096290 () Bool)

(declare-fun res!486799 () Bool)

(assert (=> b!1096290 (=> (not res!486799) (not e!694042))))

(assert (=> b!1096290 (= res!486799 (<= (- (height!422 (left!9060 (c!185681 objs!8))) (height!422 (right!9390 (c!185681 objs!8)))) 1))))

(declare-fun b!1096291 () Bool)

(declare-fun res!486794 () Bool)

(assert (=> b!1096291 (=> (not res!486794) (not e!694042))))

(assert (=> b!1096291 (= res!486794 (isBalanced!892 (right!9390 (c!185681 objs!8))))))

(assert (= (and d!309608 (not res!486796)) b!1096286))

(assert (= (and b!1096286 res!486798) b!1096290))

(assert (= (and b!1096290 res!486799) b!1096289))

(assert (= (and b!1096289 res!486797) b!1096291))

(assert (= (and b!1096291 res!486794) b!1096288))

(assert (= (and b!1096288 res!486795) b!1096287))

(assert (=> b!1096290 m!1250917))

(assert (=> b!1096290 m!1250919))

(declare-fun m!1251201 () Bool)

(assert (=> b!1096287 m!1251201))

(assert (=> b!1096286 m!1250917))

(assert (=> b!1096286 m!1250919))

(declare-fun m!1251203 () Bool)

(assert (=> b!1096291 m!1251203))

(declare-fun m!1251205 () Bool)

(assert (=> b!1096289 m!1251205))

(declare-fun m!1251207 () Bool)

(assert (=> b!1096288 m!1251207))

(assert (=> d!308596 d!309608))

(declare-fun b!1096295 () Bool)

(declare-fun e!694045 () List!10546)

(assert (=> b!1096295 (= e!694045 (++!2855 (list!3780 (left!9060 (c!185681 lt!368597))) (list!3780 (right!9390 (c!185681 lt!368597)))))))

(declare-fun b!1096293 () Bool)

(declare-fun e!694044 () List!10546)

(assert (=> b!1096293 (= e!694044 e!694045)))

(declare-fun c!186027 () Bool)

(assert (=> b!1096293 (= c!186027 ((_ is Leaf!5135) (c!185681 lt!368597)))))

(declare-fun b!1096292 () Bool)

(assert (=> b!1096292 (= e!694044 Nil!10530)))

(declare-fun b!1096294 () Bool)

(assert (=> b!1096294 (= e!694045 (list!3782 (xs!5922 (c!185681 lt!368597))))))

(declare-fun d!309610 () Bool)

(declare-fun c!186026 () Bool)

(assert (=> d!309610 (= c!186026 ((_ is Empty!3229) (c!185681 lt!368597)))))

(assert (=> d!309610 (= (list!3780 (c!185681 lt!368597)) e!694044)))

(assert (= (and d!309610 c!186026) b!1096292))

(assert (= (and d!309610 (not c!186026)) b!1096293))

(assert (= (and b!1096293 c!186027) b!1096294))

(assert (= (and b!1096293 (not c!186027)) b!1096295))

(declare-fun m!1251209 () Bool)

(assert (=> b!1096295 m!1251209))

(declare-fun m!1251211 () Bool)

(assert (=> b!1096295 m!1251211))

(assert (=> b!1096295 m!1251209))

(assert (=> b!1096295 m!1251211))

(declare-fun m!1251213 () Bool)

(assert (=> b!1096295 m!1251213))

(declare-fun m!1251215 () Bool)

(assert (=> b!1096294 m!1251215))

(assert (=> d!308730 d!309610))

(declare-fun b!1096296 () Bool)

(declare-fun e!694049 () Bool)

(declare-fun e!694046 () Bool)

(assert (=> b!1096296 (= e!694049 e!694046)))

(declare-fun res!486803 () Bool)

(assert (=> b!1096296 (=> (not res!486803) (not e!694046))))

(assert (=> b!1096296 (= res!486803 ((_ is Cons!10530) lt!368623))))

(declare-fun b!1096297 () Bool)

(declare-fun e!694048 () Bool)

(assert (=> b!1096297 (= e!694046 e!694048)))

(declare-fun res!486800 () Bool)

(assert (=> b!1096297 (=> res!486800 e!694048)))

(declare-fun e!694047 () Bool)

(assert (=> b!1096297 (= res!486800 e!694047)))

(declare-fun res!486802 () Bool)

(assert (=> b!1096297 (=> (not res!486802) (not e!694047))))

(assert (=> b!1096297 (= res!486802 (= (h!15931 (filter!276 lt!368623 lambda!42459)) (h!15931 lt!368623)))))

(declare-fun b!1096299 () Bool)

(assert (=> b!1096299 (= e!694048 (subseq!148 (filter!276 lt!368623 lambda!42459) (t!103088 lt!368623)))))

(declare-fun b!1096298 () Bool)

(assert (=> b!1096298 (= e!694047 (subseq!148 (t!103088 (filter!276 lt!368623 lambda!42459)) (t!103088 lt!368623)))))

(declare-fun d!309612 () Bool)

(declare-fun res!486801 () Bool)

(assert (=> d!309612 (=> res!486801 e!694049)))

(assert (=> d!309612 (= res!486801 ((_ is Nil!10530) (filter!276 lt!368623 lambda!42459)))))

(assert (=> d!309612 (= (subseq!148 (filter!276 lt!368623 lambda!42459) lt!368623) e!694049)))

(assert (= (and d!309612 (not res!486801)) b!1096296))

(assert (= (and b!1096296 res!486803) b!1096297))

(assert (= (and b!1096297 res!486802) b!1096298))

(assert (= (and b!1096297 (not res!486800)) b!1096299))

(assert (=> b!1096299 m!1248393))

(declare-fun m!1251217 () Bool)

(assert (=> b!1096299 m!1251217))

(declare-fun m!1251219 () Bool)

(assert (=> b!1096298 m!1251219))

(assert (=> d!308724 d!309612))

(declare-fun d!309614 () Bool)

(declare-fun e!694050 () Bool)

(assert (=> d!309614 e!694050))

(declare-fun res!486804 () Bool)

(assert (=> d!309614 (=> (not res!486804) (not e!694050))))

(declare-fun lt!369585 () List!10546)

(assert (=> d!309614 (= res!486804 (<= (size!8149 lt!369585) (size!8149 lt!368623)))))

(declare-fun e!694052 () List!10546)

(assert (=> d!309614 (= lt!369585 e!694052)))

(declare-fun c!186029 () Bool)

(assert (=> d!309614 (= c!186029 ((_ is Nil!10530) lt!368623))))

(assert (=> d!309614 (= (filter!276 lt!368623 lambda!42459) lt!369585)))

(declare-fun bm!80341 () Bool)

(declare-fun call!80346 () List!10546)

(assert (=> bm!80341 (= call!80346 (filter!276 (t!103088 lt!368623) lambda!42459))))

(declare-fun b!1096300 () Bool)

(declare-fun e!694051 () List!10546)

(assert (=> b!1096300 (= e!694051 call!80346)))

(declare-fun b!1096301 () Bool)

(assert (=> b!1096301 (= e!694050 (forall!2374 lt!369585 lambda!42459))))

(declare-fun b!1096302 () Bool)

(assert (=> b!1096302 (= e!694051 (Cons!10530 (h!15931 lt!368623) call!80346))))

(declare-fun b!1096303 () Bool)

(assert (=> b!1096303 (= e!694052 e!694051)))

(declare-fun c!186028 () Bool)

(assert (=> b!1096303 (= c!186028 (dynLambda!4609 lambda!42459 (h!15931 lt!368623)))))

(declare-fun b!1096304 () Bool)

(declare-fun res!486805 () Bool)

(assert (=> b!1096304 (=> (not res!486805) (not e!694050))))

(assert (=> b!1096304 (= res!486805 (= ((_ map implies) (content!1520 lt!369585) (content!1520 lt!368623)) ((as const (InoxSet tuple2!11726)) true)))))

(declare-fun b!1096305 () Bool)

(assert (=> b!1096305 (= e!694052 Nil!10530)))

(assert (= (and d!309614 c!186029) b!1096305))

(assert (= (and d!309614 (not c!186029)) b!1096303))

(assert (= (and b!1096303 c!186028) b!1096302))

(assert (= (and b!1096303 (not c!186028)) b!1096300))

(assert (= (or b!1096302 b!1096300) bm!80341))

(assert (= (and d!309614 res!486804) b!1096304))

(assert (= (and b!1096304 res!486805) b!1096301))

(declare-fun b_lambda!31535 () Bool)

(assert (=> (not b_lambda!31535) (not b!1096303)))

(declare-fun m!1251221 () Bool)

(assert (=> d!309614 m!1251221))

(assert (=> d!309614 m!1247685))

(declare-fun m!1251223 () Bool)

(assert (=> b!1096303 m!1251223))

(declare-fun m!1251225 () Bool)

(assert (=> bm!80341 m!1251225))

(declare-fun m!1251227 () Bool)

(assert (=> b!1096304 m!1251227))

(assert (=> b!1096304 m!1247867))

(declare-fun m!1251229 () Bool)

(assert (=> b!1096301 m!1251229))

(assert (=> d!308724 d!309614))

(declare-fun d!309616 () Bool)

(assert (=> d!309616 (subseq!148 (filter!276 lt!368623 lambda!42459) lt!368623)))

(assert (=> d!309616 true))

(declare-fun _$14!610 () Unit!16034)

(assert (=> d!309616 (= (choose!7057 lt!368623 lambda!42459) _$14!610)))

(declare-fun bs!258925 () Bool)

(assert (= bs!258925 d!309616))

(assert (=> bs!258925 m!1248393))

(assert (=> bs!258925 m!1248393))

(assert (=> bs!258925 m!1248395))

(assert (=> d!308724 d!309616))

(declare-fun b!1096306 () Bool)

(declare-fun e!694053 () Bool)

(assert (=> b!1096306 (= e!694053 true)))

(declare-fun b!1096308 () Bool)

(declare-fun e!694054 () Bool)

(assert (=> b!1096308 (= e!694054 true)))

(declare-fun b!1096307 () Bool)

(assert (=> b!1096307 (= e!694053 e!694054)))

(assert (=> b!1095087 e!694053))

(assert (= (and b!1095087 ((_ is Node!3228) (c!185680 (tokens!1359 (_2!6689 lt!368989))))) b!1096306))

(assert (= b!1096307 b!1096308))

(assert (= (and b!1095087 ((_ is Leaf!5134) (c!185680 (tokens!1359 (_2!6689 lt!368989))))) b!1096307))

(declare-fun b!1096311 () Bool)

(declare-fun e!694057 () Bool)

(assert (=> b!1096311 (= e!694057 true)))

(declare-fun b!1096310 () Bool)

(declare-fun e!694056 () Bool)

(assert (=> b!1096310 (= e!694056 e!694057)))

(declare-fun b!1096309 () Bool)

(declare-fun e!694055 () Bool)

(assert (=> b!1096309 (= e!694055 e!694056)))

(assert (=> b!1095141 e!694055))

(assert (= b!1096310 b!1096311))

(assert (= b!1096309 b!1096310))

(assert (= (and b!1095141 ((_ is Cons!10529) (t!103087 (rules!9087 (_2!6689 lt!368619))))) b!1096309))

(assert (=> b!1096311 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (h!15930 (t!103087 (rules!9087 (_2!6689 lt!368619))))))) (dynLambda!4614 order!6353 lambda!42459))))

(assert (=> b!1096311 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (h!15930 (t!103087 (rules!9087 (_2!6689 lt!368619))))))) (dynLambda!4614 order!6353 lambda!42459))))

(declare-fun b!1096312 () Bool)

(declare-fun e!694058 () Bool)

(assert (=> b!1096312 (= e!694058 true)))

(declare-fun b!1096314 () Bool)

(declare-fun e!694059 () Bool)

(assert (=> b!1096314 (= e!694059 true)))

(declare-fun b!1096313 () Bool)

(assert (=> b!1096313 (= e!694058 e!694059)))

(assert (=> b!1095053 e!694058))

(assert (= (and b!1095053 ((_ is Node!3228) (c!185680 (tokens!1359 (_2!6689 lt!368940))))) b!1096312))

(assert (= b!1096313 b!1096314))

(assert (= (and b!1095053 ((_ is Leaf!5134) (c!185680 (tokens!1359 (_2!6689 lt!368940))))) b!1096313))

(declare-fun b!1096317 () Bool)

(declare-fun e!694062 () Bool)

(assert (=> b!1096317 (= e!694062 true)))

(declare-fun b!1096316 () Bool)

(declare-fun e!694061 () Bool)

(assert (=> b!1096316 (= e!694061 e!694062)))

(declare-fun b!1096315 () Bool)

(declare-fun e!694060 () Bool)

(assert (=> b!1096315 (= e!694060 e!694061)))

(assert (=> b!1095086 e!694060))

(assert (= b!1096316 b!1096317))

(assert (= b!1096315 b!1096316))

(assert (= (and b!1095086 ((_ is Cons!10529) (rules!9087 (_2!6689 lt!368989)))) b!1096315))

(assert (=> b!1096317 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368989)))))) (dynLambda!4614 order!6353 lambda!42569))))

(assert (=> b!1096317 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368989)))))) (dynLambda!4614 order!6353 lambda!42569))))

(declare-fun b!1096318 () Bool)

(declare-fun e!694063 () Bool)

(assert (=> b!1096318 (= e!694063 true)))

(declare-fun b!1096320 () Bool)

(declare-fun e!694064 () Bool)

(assert (=> b!1096320 (= e!694064 true)))

(declare-fun b!1096319 () Bool)

(assert (=> b!1096319 (= e!694063 e!694064)))

(assert (=> b!1095089 e!694063))

(assert (= (and b!1095089 ((_ is Node!3228) (c!185680 (tokens!1359 (_2!6689 lt!368989))))) b!1096318))

(assert (= b!1096319 b!1096320))

(assert (= (and b!1095089 ((_ is Leaf!5134) (c!185680 (tokens!1359 (_2!6689 lt!368989))))) b!1096319))

(declare-fun b!1096331 () Bool)

(declare-fun e!694072 () Bool)

(declare-fun tp!326660 () Bool)

(declare-fun inv!13499 (Conc!3228) Bool)

(assert (=> b!1096331 (= e!694072 (and (inv!13499 (c!185680 (tokens!1359 (_2!6689 (h!15931 (innerList!3289 (xs!5922 (c!185681 objs!8)))))))) tp!326660))))

(declare-fun e!694071 () Bool)

(declare-fun tp!326658 () Bool)

(declare-fun b!1096330 () Bool)

(declare-fun inv!13500 (BalanceConc!6470) Bool)

(assert (=> b!1096330 (= e!694071 (and tp!326658 (inv!13500 (tokens!1359 (_2!6689 (h!15931 (innerList!3289 (xs!5922 (c!185681 objs!8))))))) e!694072))))

(declare-fun e!694073 () Bool)

(declare-fun tp!326659 () Bool)

(declare-fun b!1096329 () Bool)

(declare-fun inv!13501 (PrintableTokens!316) Bool)

(assert (=> b!1096329 (= e!694073 (and (inv!13501 (_2!6689 (h!15931 (innerList!3289 (xs!5922 (c!185681 objs!8)))))) e!694071 tp!326659))))

(assert (=> b!1095123 (= tp!326635 e!694073)))

(assert (= b!1096330 b!1096331))

(assert (= b!1096329 b!1096330))

(assert (= (and b!1095123 ((_ is Cons!10530) (innerList!3289 (xs!5922 (c!185681 objs!8))))) b!1096329))

(declare-fun m!1251231 () Bool)

(assert (=> b!1096331 m!1251231))

(declare-fun m!1251233 () Bool)

(assert (=> b!1096330 m!1251233))

(declare-fun m!1251235 () Bool)

(assert (=> b!1096329 m!1251235))

(declare-fun b!1096332 () Bool)

(declare-fun e!694074 () Bool)

(declare-fun tp!326663 () Bool)

(declare-fun tp!326661 () Bool)

(assert (=> b!1096332 (= e!694074 (and (inv!13489 (left!9060 (left!9060 (c!185681 objs!8)))) tp!326663 (inv!13489 (right!9390 (left!9060 (c!185681 objs!8)))) tp!326661))))

(declare-fun b!1096334 () Bool)

(declare-fun e!694075 () Bool)

(declare-fun tp!326662 () Bool)

(assert (=> b!1096334 (= e!694075 tp!326662)))

(declare-fun b!1096333 () Bool)

(assert (=> b!1096333 (= e!694074 (and (inv!13495 (xs!5922 (left!9060 (c!185681 objs!8)))) e!694075))))

(assert (=> b!1095121 (= tp!326636 (and (inv!13489 (left!9060 (c!185681 objs!8))) e!694074))))

(assert (= (and b!1095121 ((_ is Node!3229) (left!9060 (c!185681 objs!8)))) b!1096332))

(assert (= b!1096333 b!1096334))

(assert (= (and b!1095121 ((_ is Leaf!5135) (left!9060 (c!185681 objs!8)))) b!1096333))

(declare-fun m!1251237 () Bool)

(assert (=> b!1096332 m!1251237))

(declare-fun m!1251239 () Bool)

(assert (=> b!1096332 m!1251239))

(declare-fun m!1251241 () Bool)

(assert (=> b!1096333 m!1251241))

(assert (=> b!1095121 m!1248547))

(declare-fun tp!326664 () Bool)

(declare-fun tp!326666 () Bool)

(declare-fun b!1096335 () Bool)

(declare-fun e!694076 () Bool)

(assert (=> b!1096335 (= e!694076 (and (inv!13489 (left!9060 (right!9390 (c!185681 objs!8)))) tp!326666 (inv!13489 (right!9390 (right!9390 (c!185681 objs!8)))) tp!326664))))

(declare-fun b!1096337 () Bool)

(declare-fun e!694077 () Bool)

(declare-fun tp!326665 () Bool)

(assert (=> b!1096337 (= e!694077 tp!326665)))

(declare-fun b!1096336 () Bool)

(assert (=> b!1096336 (= e!694076 (and (inv!13495 (xs!5922 (right!9390 (c!185681 objs!8)))) e!694077))))

(assert (=> b!1095121 (= tp!326634 (and (inv!13489 (right!9390 (c!185681 objs!8))) e!694076))))

(assert (= (and b!1095121 ((_ is Node!3229) (right!9390 (c!185681 objs!8)))) b!1096335))

(assert (= b!1096336 b!1096337))

(assert (= (and b!1095121 ((_ is Leaf!5135) (right!9390 (c!185681 objs!8)))) b!1096336))

(declare-fun m!1251243 () Bool)

(assert (=> b!1096335 m!1251243))

(declare-fun m!1251245 () Bool)

(assert (=> b!1096335 m!1251245))

(declare-fun m!1251247 () Bool)

(assert (=> b!1096336 m!1251247))

(assert (=> b!1095121 m!1248549))

(declare-fun b!1096340 () Bool)

(declare-fun e!694080 () Bool)

(assert (=> b!1096340 (= e!694080 true)))

(declare-fun b!1096339 () Bool)

(declare-fun e!694079 () Bool)

(assert (=> b!1096339 (= e!694079 e!694080)))

(declare-fun b!1096338 () Bool)

(declare-fun e!694078 () Bool)

(assert (=> b!1096338 (= e!694078 e!694079)))

(assert (=> b!1095088 e!694078))

(assert (= b!1096339 b!1096340))

(assert (= b!1096338 b!1096339))

(assert (= (and b!1095088 ((_ is Cons!10529) (rules!9087 (_2!6689 lt!368989)))) b!1096338))

(assert (=> b!1096340 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368989)))))) (dynLambda!4614 order!6353 lambda!42570))))

(assert (=> b!1096340 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368989)))))) (dynLambda!4614 order!6353 lambda!42570))))

(declare-fun b!1096343 () Bool)

(declare-fun e!694083 () Bool)

(assert (=> b!1096343 (= e!694083 true)))

(declare-fun b!1096342 () Bool)

(declare-fun e!694082 () Bool)

(assert (=> b!1096342 (= e!694082 e!694083)))

(declare-fun b!1096341 () Bool)

(declare-fun e!694081 () Bool)

(assert (=> b!1096341 (= e!694081 e!694082)))

(assert (=> b!1095135 e!694081))

(assert (= b!1096342 b!1096343))

(assert (= b!1096341 b!1096342))

(assert (= (and b!1095135 ((_ is Cons!10529) (t!103087 (rules!9087 (_2!6689 lt!368619))))) b!1096341))

(assert (=> b!1096343 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (h!15930 (t!103087 (rules!9087 (_2!6689 lt!368619))))))) (dynLambda!4614 order!6353 lambda!42460))))

(assert (=> b!1096343 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (h!15930 (t!103087 (rules!9087 (_2!6689 lt!368619))))))) (dynLambda!4614 order!6353 lambda!42460))))

(declare-fun b!1096344 () Bool)

(declare-fun e!694084 () Bool)

(assert (=> b!1096344 (= e!694084 true)))

(declare-fun b!1096346 () Bool)

(declare-fun e!694085 () Bool)

(assert (=> b!1096346 (= e!694085 true)))

(declare-fun b!1096345 () Bool)

(assert (=> b!1096345 (= e!694084 e!694085)))

(assert (=> b!1095049 e!694084))

(assert (= (and b!1095049 ((_ is Node!3228) (c!185680 (tokens!1359 (_2!6689 lt!368940))))) b!1096344))

(assert (= b!1096345 b!1096346))

(assert (= (and b!1095049 ((_ is Leaf!5134) (c!185680 (tokens!1359 (_2!6689 lt!368940))))) b!1096345))

(declare-fun b!1096349 () Bool)

(declare-fun e!694088 () Bool)

(assert (=> b!1096349 (= e!694088 true)))

(declare-fun b!1096348 () Bool)

(declare-fun e!694087 () Bool)

(assert (=> b!1096348 (= e!694087 e!694088)))

(declare-fun b!1096347 () Bool)

(declare-fun e!694086 () Bool)

(assert (=> b!1096347 (= e!694086 e!694087)))

(assert (=> b!1095048 e!694086))

(assert (= b!1096348 b!1096349))

(assert (= b!1096347 b!1096348))

(assert (= (and b!1095048 ((_ is Cons!10529) (rules!9087 (_2!6689 lt!368940)))) b!1096347))

(assert (=> b!1096349 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368940)))))) (dynLambda!4614 order!6353 lambda!42563))))

(assert (=> b!1096349 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368940)))))) (dynLambda!4614 order!6353 lambda!42563))))

(declare-fun b!1096350 () Bool)

(declare-fun e!694089 () Bool)

(assert (=> b!1096350 (= e!694089 true)))

(declare-fun b!1096352 () Bool)

(declare-fun e!694090 () Bool)

(assert (=> b!1096352 (= e!694090 true)))

(declare-fun b!1096351 () Bool)

(assert (=> b!1096351 (= e!694089 e!694090)))

(assert (=> b!1095107 e!694089))

(assert (= (and b!1095107 ((_ is Node!3228) (left!9059 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))) b!1096350))

(assert (= b!1096351 b!1096352))

(assert (= (and b!1095107 ((_ is Leaf!5134) (left!9059 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))) b!1096351))

(declare-fun b!1096353 () Bool)

(declare-fun e!694091 () Bool)

(assert (=> b!1096353 (= e!694091 true)))

(declare-fun b!1096355 () Bool)

(declare-fun e!694092 () Bool)

(assert (=> b!1096355 (= e!694092 true)))

(declare-fun b!1096354 () Bool)

(assert (=> b!1096354 (= e!694091 e!694092)))

(assert (=> b!1095107 e!694091))

(assert (= (and b!1095107 ((_ is Node!3228) (right!9389 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))) b!1096353))

(assert (= b!1096354 b!1096355))

(assert (= (and b!1095107 ((_ is Leaf!5134) (right!9389 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))) b!1096354))

(declare-fun b!1096367 () Bool)

(declare-fun e!694102 () Bool)

(declare-fun e!694103 () Bool)

(assert (=> b!1096367 (= e!694102 e!694103)))

(declare-fun b!1096369 () Bool)

(declare-fun e!694104 () Bool)

(assert (=> b!1096369 (= e!694104 true)))

(declare-fun b!1096368 () Bool)

(assert (=> b!1096368 (= e!694103 e!694104)))

(declare-fun e!694101 () Bool)

(assert (=> b!1095109 e!694101))

(declare-fun b!1096366 () Bool)

(assert (=> b!1096366 (= e!694101 e!694102)))

(assert (= b!1096368 b!1096369))

(assert (= b!1096367 b!1096368))

(assert (= b!1096366 b!1096367))

(assert (= (and b!1095109 ((_ is Cons!10528) (innerList!3288 (xs!5921 (c!185680 (tokens!1359 (_2!6689 lt!368619))))))) b!1096366))

(assert (=> b!1096369 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (rule!3223 (h!15929 (innerList!3288 (xs!5921 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))))))) (dynLambda!4614 order!6353 lambda!42459))))

(assert (=> b!1096369 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (rule!3223 (h!15929 (innerList!3288 (xs!5921 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))))))) (dynLambda!4614 order!6353 lambda!42459))))

(declare-fun b!1096372 () Bool)

(declare-fun e!694107 () Bool)

(assert (=> b!1096372 (= e!694107 true)))

(declare-fun b!1096371 () Bool)

(declare-fun e!694106 () Bool)

(assert (=> b!1096371 (= e!694106 e!694107)))

(declare-fun b!1096370 () Bool)

(declare-fun e!694105 () Bool)

(assert (=> b!1096370 (= e!694105 e!694106)))

(assert (=> b!1095138 e!694105))

(assert (= b!1096371 b!1096372))

(assert (= b!1096370 b!1096371))

(assert (= (and b!1095138 ((_ is Cons!10529) (t!103087 (rules!9087 (_2!6689 lt!368619))))) b!1096370))

(assert (=> b!1096372 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (h!15930 (t!103087 (rules!9087 (_2!6689 lt!368619))))))) (dynLambda!4614 order!6353 lambda!42458))))

(assert (=> b!1096372 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (h!15930 (t!103087 (rules!9087 (_2!6689 lt!368619))))))) (dynLambda!4614 order!6353 lambda!42458))))

(declare-fun b!1096375 () Bool)

(declare-fun e!694110 () Bool)

(assert (=> b!1096375 (= e!694110 true)))

(declare-fun b!1096374 () Bool)

(declare-fun e!694109 () Bool)

(assert (=> b!1096374 (= e!694109 e!694110)))

(declare-fun b!1096373 () Bool)

(declare-fun e!694108 () Bool)

(assert (=> b!1096373 (= e!694108 e!694109)))

(assert (=> b!1095084 e!694108))

(assert (= b!1096374 b!1096375))

(assert (= b!1096373 b!1096374))

(assert (= (and b!1095084 ((_ is Cons!10529) (rules!9087 (_2!6689 lt!368989)))) b!1096373))

(assert (=> b!1096375 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368989)))))) (dynLambda!4614 order!6353 lambda!42568))))

(assert (=> b!1096375 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368989)))))) (dynLambda!4614 order!6353 lambda!42568))))

(declare-fun b!1096376 () Bool)

(declare-fun e!694111 () Bool)

(assert (=> b!1096376 (= e!694111 true)))

(declare-fun b!1096378 () Bool)

(declare-fun e!694112 () Bool)

(assert (=> b!1096378 (= e!694112 true)))

(declare-fun b!1096377 () Bool)

(assert (=> b!1096377 (= e!694111 e!694112)))

(assert (=> b!1095085 e!694111))

(assert (= (and b!1095085 ((_ is Node!3228) (c!185680 (tokens!1359 (_2!6689 lt!368989))))) b!1096376))

(assert (= b!1096377 b!1096378))

(assert (= (and b!1095085 ((_ is Leaf!5134) (c!185680 (tokens!1359 (_2!6689 lt!368989))))) b!1096377))

(declare-fun b!1096379 () Bool)

(declare-fun e!694113 () Bool)

(assert (=> b!1096379 (= e!694113 true)))

(declare-fun b!1096381 () Bool)

(declare-fun e!694114 () Bool)

(assert (=> b!1096381 (= e!694114 true)))

(declare-fun b!1096380 () Bool)

(assert (=> b!1096380 (= e!694113 e!694114)))

(assert (=> b!1095110 e!694113))

(assert (= (and b!1095110 ((_ is Node!3228) (left!9059 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))) b!1096379))

(assert (= b!1096380 b!1096381))

(assert (= (and b!1095110 ((_ is Leaf!5134) (left!9059 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))) b!1096380))

(declare-fun b!1096382 () Bool)

(declare-fun e!694115 () Bool)

(assert (=> b!1096382 (= e!694115 true)))

(declare-fun b!1096384 () Bool)

(declare-fun e!694116 () Bool)

(assert (=> b!1096384 (= e!694116 true)))

(declare-fun b!1096383 () Bool)

(assert (=> b!1096383 (= e!694115 e!694116)))

(assert (=> b!1095110 e!694115))

(assert (= (and b!1095110 ((_ is Node!3228) (right!9389 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))) b!1096382))

(assert (= b!1096383 b!1096384))

(assert (= (and b!1095110 ((_ is Leaf!5134) (right!9389 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))) b!1096383))

(declare-fun b!1096386 () Bool)

(declare-fun e!694118 () Bool)

(declare-fun e!694119 () Bool)

(assert (=> b!1096386 (= e!694118 e!694119)))

(declare-fun b!1096388 () Bool)

(declare-fun e!694120 () Bool)

(assert (=> b!1096388 (= e!694120 true)))

(declare-fun b!1096387 () Bool)

(assert (=> b!1096387 (= e!694119 e!694120)))

(declare-fun e!694117 () Bool)

(assert (=> b!1095126 e!694117))

(declare-fun b!1096385 () Bool)

(assert (=> b!1096385 (= e!694117 e!694118)))

(assert (= b!1096387 b!1096388))

(assert (= b!1096386 b!1096387))

(assert (= b!1096385 b!1096386))

(assert (= (and b!1095126 ((_ is Cons!10528) (innerList!3288 (xs!5921 (c!185680 (tokens!1359 (_2!6689 lt!368619))))))) b!1096385))

(assert (=> b!1096388 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (rule!3223 (h!15929 (innerList!3288 (xs!5921 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))))))) (dynLambda!4614 order!6353 lambda!42458))))

(assert (=> b!1096388 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (rule!3223 (h!15929 (innerList!3288 (xs!5921 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))))))) (dynLambda!4614 order!6353 lambda!42458))))

(declare-fun b!1096391 () Bool)

(declare-fun e!694123 () Bool)

(assert (=> b!1096391 (= e!694123 true)))

(declare-fun b!1096390 () Bool)

(declare-fun e!694122 () Bool)

(assert (=> b!1096390 (= e!694122 e!694123)))

(declare-fun b!1096389 () Bool)

(declare-fun e!694121 () Bool)

(assert (=> b!1096389 (= e!694121 e!694122)))

(assert (=> b!1095050 e!694121))

(assert (= b!1096390 b!1096391))

(assert (= b!1096389 b!1096390))

(assert (= (and b!1095050 ((_ is Cons!10529) (rules!9087 (_2!6689 lt!368940)))) b!1096389))

(assert (=> b!1096391 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368940)))))) (dynLambda!4614 order!6353 lambda!42564))))

(assert (=> b!1096391 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368940)))))) (dynLambda!4614 order!6353 lambda!42564))))

(declare-fun b!1096392 () Bool)

(declare-fun e!694124 () Bool)

(assert (=> b!1096392 (= e!694124 true)))

(declare-fun b!1096394 () Bool)

(declare-fun e!694125 () Bool)

(assert (=> b!1096394 (= e!694125 true)))

(declare-fun b!1096393 () Bool)

(assert (=> b!1096393 (= e!694124 e!694125)))

(assert (=> b!1095124 e!694124))

(assert (= (and b!1095124 ((_ is Node!3228) (left!9059 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))) b!1096392))

(assert (= b!1096393 b!1096394))

(assert (= (and b!1095124 ((_ is Leaf!5134) (left!9059 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))) b!1096393))

(declare-fun b!1096395 () Bool)

(declare-fun e!694126 () Bool)

(assert (=> b!1096395 (= e!694126 true)))

(declare-fun b!1096397 () Bool)

(declare-fun e!694127 () Bool)

(assert (=> b!1096397 (= e!694127 true)))

(declare-fun b!1096396 () Bool)

(assert (=> b!1096396 (= e!694126 e!694127)))

(assert (=> b!1095124 e!694126))

(assert (= (and b!1095124 ((_ is Node!3228) (right!9389 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))) b!1096395))

(assert (= b!1096396 b!1096397))

(assert (= (and b!1095124 ((_ is Leaf!5134) (right!9389 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))) b!1096396))

(declare-fun b!1096398 () Bool)

(declare-fun e!694128 () Bool)

(assert (=> b!1096398 (= e!694128 true)))

(declare-fun b!1096400 () Bool)

(declare-fun e!694129 () Bool)

(assert (=> b!1096400 (= e!694129 true)))

(declare-fun b!1096399 () Bool)

(assert (=> b!1096399 (= e!694128 e!694129)))

(assert (=> b!1095051 e!694128))

(assert (= (and b!1095051 ((_ is Node!3228) (c!185680 (tokens!1359 (_2!6689 lt!368940))))) b!1096398))

(assert (= b!1096399 b!1096400))

(assert (= (and b!1095051 ((_ is Leaf!5134) (c!185680 (tokens!1359 (_2!6689 lt!368940))))) b!1096399))

(declare-fun b!1096402 () Bool)

(declare-fun e!694131 () Bool)

(declare-fun e!694132 () Bool)

(assert (=> b!1096402 (= e!694131 e!694132)))

(declare-fun b!1096404 () Bool)

(declare-fun e!694133 () Bool)

(assert (=> b!1096404 (= e!694133 true)))

(declare-fun b!1096403 () Bool)

(assert (=> b!1096403 (= e!694132 e!694133)))

(declare-fun e!694130 () Bool)

(assert (=> b!1095112 e!694130))

(declare-fun b!1096401 () Bool)

(assert (=> b!1096401 (= e!694130 e!694131)))

(assert (= b!1096403 b!1096404))

(assert (= b!1096402 b!1096403))

(assert (= b!1096401 b!1096402))

(assert (= (and b!1095112 ((_ is Cons!10528) (innerList!3288 (xs!5921 (c!185680 (tokens!1359 (_2!6689 lt!368619))))))) b!1096401))

(assert (=> b!1096404 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (rule!3223 (h!15929 (innerList!3288 (xs!5921 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))))))) (dynLambda!4614 order!6353 lambda!42460))))

(assert (=> b!1096404 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (rule!3223 (h!15929 (innerList!3288 (xs!5921 (c!185680 (tokens!1359 (_2!6689 lt!368619)))))))))) (dynLambda!4614 order!6353 lambda!42460))))

(declare-fun b!1096407 () Bool)

(declare-fun e!694136 () Bool)

(assert (=> b!1096407 (= e!694136 true)))

(declare-fun b!1096406 () Bool)

(declare-fun e!694135 () Bool)

(assert (=> b!1096406 (= e!694135 e!694136)))

(declare-fun b!1096405 () Bool)

(declare-fun e!694134 () Bool)

(assert (=> b!1096405 (= e!694134 e!694135)))

(assert (=> b!1095052 e!694134))

(assert (= b!1096406 b!1096407))

(assert (= b!1096405 b!1096406))

(assert (= (and b!1095052 ((_ is Cons!10529) (rules!9087 (_2!6689 lt!368940)))) b!1096405))

(assert (=> b!1096407 (< (dynLambda!4613 order!6351 (toValue!2877 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368940)))))) (dynLambda!4614 order!6353 lambda!42565))))

(assert (=> b!1096407 (< (dynLambda!4615 order!6355 (toChars!2736 (transformation!1800 (h!15930 (rules!9087 (_2!6689 lt!368940)))))) (dynLambda!4614 order!6353 lambda!42565))))

(declare-fun b_lambda!31537 () Bool)

(assert (= b_lambda!31529 (or b!1095045 b_lambda!31537)))

(declare-fun bs!258926 () Bool)

(declare-fun d!309618 () Bool)

(assert (= bs!258926 (and d!309618 b!1095045)))

(assert (=> bs!258926 (= (dynLambda!4609 lambda!42565 lt!368940) (> (_1!6689 lt!368940) (_1!6689 lt!368940)))))

(assert (=> d!309574 d!309618))

(declare-fun b_lambda!31539 () Bool)

(assert (= b_lambda!31493 (or b!1094737 b_lambda!31539)))

(declare-fun bs!258927 () Bool)

(declare-fun d!309620 () Bool)

(assert (= bs!258927 (and d!309620 b!1094737)))

(assert (=> bs!258927 (= (dynLambda!4609 lambda!42460 (h!15931 (t!103088 lt!368623))) (> (_1!6689 (h!15931 (t!103088 lt!368623))) (_1!6689 lt!368619)))))

(assert (=> b!1096043 d!309620))

(declare-fun b_lambda!31541 () Bool)

(assert (= b_lambda!31459 (or b!1095045 b_lambda!31541)))

(declare-fun bs!258928 () Bool)

(declare-fun d!309622 () Bool)

(assert (= bs!258928 (and d!309622 b!1095045)))

(assert (=> bs!258928 (= (dynLambda!4609 lambda!42566 (h!15931 lt!368966)) (usesJsonRules!0 (_2!6689 (h!15931 lt!368966))))))

(declare-fun m!1251249 () Bool)

(assert (=> bs!258928 m!1251249))

(assert (=> b!1095818 d!309622))

(declare-fun b_lambda!31543 () Bool)

(assert (= b_lambda!31485 (or b!1094737 b_lambda!31543)))

(declare-fun bs!258929 () Bool)

(declare-fun d!309624 () Bool)

(assert (= bs!258929 (and d!309624 b!1094737)))

(assert (=> bs!258929 (= (dynLambda!4609 lambda!42460 (h!15931 (list!3778 lt!368606))) (> (_1!6689 (h!15931 (list!3778 lt!368606))) (_1!6689 lt!368619)))))

(assert (=> b!1096011 d!309624))

(declare-fun b_lambda!31545 () Bool)

(assert (= b_lambda!31481 (or b!1094737 b_lambda!31545)))

(assert (=> b!1096003 d!308754))

(declare-fun b_lambda!31547 () Bool)

(assert (= b_lambda!31469 (or b!1095081 b_lambda!31547)))

(declare-fun bs!258930 () Bool)

(declare-fun d!309626 () Bool)

(assert (= bs!258930 (and d!309626 b!1095081)))

(assert (=> bs!258930 (= (dynLambda!4609 lambda!42571 (h!15931 lt!369017)) (usesJsonRules!0 (_2!6689 (h!15931 lt!369017))))))

(declare-fun m!1251251 () Bool)

(assert (=> bs!258930 m!1251251))

(assert (=> b!1095932 d!309626))

(declare-fun b_lambda!31549 () Bool)

(assert (= b_lambda!31457 (or b!1095045 b_lambda!31549)))

(declare-fun bs!258931 () Bool)

(declare-fun d!309628 () Bool)

(assert (= bs!258931 (and d!309628 b!1095045)))

(assert (=> bs!258931 (= (dynLambda!4609 lambda!42563 lt!368940) (< (_1!6689 lt!368940) (_1!6689 lt!368940)))))

(assert (=> d!309256 d!309628))

(declare-fun b_lambda!31551 () Bool)

(assert (= b_lambda!31499 (or b!1095081 b_lambda!31551)))

(declare-fun bs!258932 () Bool)

(declare-fun d!309630 () Bool)

(assert (= bs!258932 (and d!309630 b!1095081)))

(assert (=> bs!258932 (= (dynLambda!4609 lambda!42568 lt!368989) (< (_1!6689 lt!368989) (_1!6689 lt!368989)))))

(assert (=> d!309488 d!309630))

(declare-fun b_lambda!31553 () Bool)

(assert (= b_lambda!31467 (or b!1095081 b_lambda!31553)))

(declare-fun bs!258933 () Bool)

(declare-fun d!309632 () Bool)

(assert (= bs!258933 (and d!309632 b!1095081)))

(assert (=> bs!258933 (= (dynLambda!4609 lambda!42571 (h!15931 lt!369015)) (usesJsonRules!0 (_2!6689 (h!15931 lt!369015))))))

(declare-fun m!1251253 () Bool)

(assert (=> bs!258933 m!1251253))

(assert (=> b!1095896 d!309632))

(declare-fun b_lambda!31555 () Bool)

(assert (= b_lambda!31483 (or b!1094737 b_lambda!31555)))

(assert (=> d!309454 d!308760))

(declare-fun b_lambda!31557 () Bool)

(assert (= b_lambda!31517 (or b!1095081 b_lambda!31557)))

(declare-fun bs!258934 () Bool)

(declare-fun d!309634 () Bool)

(assert (= bs!258934 (and d!309634 b!1095081)))

(assert (=> bs!258934 (= (dynLambda!4609 lambda!42570 lt!368989) (> (_1!6689 lt!368989) (_1!6689 lt!368989)))))

(assert (=> d!309538 d!309634))

(declare-fun b_lambda!31559 () Bool)

(assert (= b_lambda!31489 (or start!93782 b_lambda!31559)))

(declare-fun bs!258935 () Bool)

(declare-fun d!309636 () Bool)

(assert (= bs!258935 (and d!309636 start!93782)))

(assert (=> bs!258935 (= (dynLambda!4609 lambda!42457 (h!15931 (t!103088 lt!368612))) (usesJsonRules!0 (_2!6689 (h!15931 (t!103088 lt!368612)))))))

(declare-fun m!1251255 () Bool)

(assert (=> bs!258935 m!1251255))

(assert (=> b!1096028 d!309636))

(declare-fun b_lambda!31561 () Bool)

(assert (= b_lambda!31511 (or b!1094737 b_lambda!31561)))

(declare-fun bs!258936 () Bool)

(declare-fun d!309638 () Bool)

(assert (= bs!258936 (and d!309638 b!1094737)))

(assert (=> bs!258936 (= (dynLambda!4609 lambda!42460 (h!15931 (list!3778 objs!8))) (> (_1!6689 (h!15931 (list!3778 objs!8))) (_1!6689 lt!368619)))))

(assert (=> b!1096140 d!309638))

(declare-fun b_lambda!31563 () Bool)

(assert (= b_lambda!31465 (or b!1095081 b_lambda!31563)))

(declare-fun bs!258937 () Bool)

(declare-fun d!309640 () Bool)

(assert (= bs!258937 (and d!309640 b!1095081)))

(assert (=> bs!258937 (= (dynLambda!4609 lambda!42571 (h!15931 lt!369014)) (usesJsonRules!0 (_2!6689 (h!15931 lt!369014))))))

(declare-fun m!1251257 () Bool)

(assert (=> bs!258937 m!1251257))

(assert (=> b!1095893 d!309640))

(declare-fun b_lambda!31565 () Bool)

(assert (= b_lambda!31527 (or b!1094737 b_lambda!31565)))

(assert (=> d!309566 d!308760))

(declare-fun b_lambda!31567 () Bool)

(assert (= b_lambda!31495 (or b!1094737 b_lambda!31567)))

(declare-fun bs!258938 () Bool)

(declare-fun d!309642 () Bool)

(assert (= bs!258938 (and d!309642 b!1094737)))

(assert (=> bs!258938 (= (dynLambda!4609 lambda!42458 (h!15931 (list!3778 objs!8))) (< (_1!6689 (h!15931 (list!3778 objs!8))) (_1!6689 lt!368619)))))

(assert (=> b!1096046 d!309642))

(declare-fun b_lambda!31569 () Bool)

(assert (= b_lambda!31509 (or b!1095045 b_lambda!31569)))

(declare-fun bs!258939 () Bool)

(declare-fun d!309644 () Bool)

(assert (= bs!258939 (and d!309644 b!1095045)))

(assert (=> bs!258939 (= (dynLambda!4609 lambda!42563 (h!15931 lt!368969)) (< (_1!6689 (h!15931 lt!368969)) (_1!6689 lt!368940)))))

(assert (=> b!1096079 d!309644))

(declare-fun b_lambda!31571 () Bool)

(assert (= b_lambda!31501 (or b!1094737 b_lambda!31571)))

(declare-fun bs!258940 () Bool)

(declare-fun d!309646 () Bool)

(assert (= bs!258940 (and d!309646 b!1094737)))

(assert (=> bs!258940 (= (dynLambda!4609 lambda!42458 (h!15931 lt!368673)) (< (_1!6689 (h!15931 lt!368673)) (_1!6689 lt!368619)))))

(assert (=> b!1096063 d!309646))

(declare-fun b_lambda!31573 () Bool)

(assert (= b_lambda!31463 (or b!1095045 b_lambda!31573)))

(declare-fun bs!258941 () Bool)

(declare-fun d!309648 () Bool)

(assert (= bs!258941 (and d!309648 b!1095045)))

(assert (=> bs!258941 (= (dynLambda!4609 lambda!42566 (h!15931 lt!368965)) (usesJsonRules!0 (_2!6689 (h!15931 lt!368965))))))

(declare-fun m!1251259 () Bool)

(assert (=> bs!258941 m!1251259))

(assert (=> b!1095840 d!309648))

(declare-fun b_lambda!31575 () Bool)

(assert (= b_lambda!31471 (or b!1095081 b_lambda!31575)))

(assert (=> d!309416 d!309630))

(declare-fun b_lambda!31577 () Bool)

(assert (= b_lambda!31477 (or start!93782 b_lambda!31577)))

(declare-fun bs!258942 () Bool)

(declare-fun d!309650 () Bool)

(assert (= bs!258942 (and d!309650 start!93782)))

(assert (=> bs!258942 (= (dynLambda!4609 lambda!42457 (h!15931 (t!103088 lt!368622))) (usesJsonRules!0 (_2!6689 (h!15931 (t!103088 lt!368622)))))))

(declare-fun m!1251261 () Bool)

(assert (=> bs!258942 m!1251261))

(assert (=> b!1095995 d!309650))

(declare-fun b_lambda!31579 () Bool)

(assert (= b_lambda!31461 (or b!1095045 b_lambda!31579)))

(declare-fun bs!258943 () Bool)

(declare-fun d!309652 () Bool)

(assert (= bs!258943 (and d!309652 b!1095045)))

(assert (=> bs!258943 (= (dynLambda!4609 lambda!42566 (h!15931 lt!368968)) (usesJsonRules!0 (_2!6689 (h!15931 lt!368968))))))

(declare-fun m!1251263 () Bool)

(assert (=> bs!258943 m!1251263))

(assert (=> b!1095838 d!309652))

(declare-fun b_lambda!31581 () Bool)

(assert (= b_lambda!31455 (or start!93782 b_lambda!31581)))

(declare-fun bs!258944 () Bool)

(declare-fun d!309654 () Bool)

(assert (= bs!258944 (and d!309654 start!93782)))

(assert (=> bs!258944 (= (dynLambda!4609 lambda!42457 (h!15931 lt!368623)) (usesJsonRules!0 (_2!6689 (h!15931 lt!368623))))))

(declare-fun m!1251265 () Bool)

(assert (=> bs!258944 m!1251265))

(assert (=> b!1095813 d!309654))

(declare-fun b_lambda!31583 () Bool)

(assert (= b_lambda!31515 (or b!1094737 b_lambda!31583)))

(declare-fun bs!258945 () Bool)

(declare-fun d!309656 () Bool)

(assert (= bs!258945 (and d!309656 b!1094737)))

(assert (=> bs!258945 (= (dynLambda!4609 lambda!42459 (h!15931 (list!3778 objs!8))) (= (_1!6689 (h!15931 (list!3778 objs!8))) (_1!6689 lt!368619)))))

(assert (=> b!1096157 d!309656))

(declare-fun b_lambda!31585 () Bool)

(assert (= b_lambda!31479 (or b!1095045 b_lambda!31585)))

(assert (=> d!309442 d!309628))

(declare-fun b_lambda!31587 () Bool)

(assert (= b_lambda!31447 (or b!1095081 b_lambda!31587)))

(assert (=> d!309228 d!309634))

(declare-fun b_lambda!31589 () Bool)

(assert (= b_lambda!31531 (or b!1095045 b_lambda!31589)))

(declare-fun bs!258946 () Bool)

(declare-fun d!309658 () Bool)

(assert (= bs!258946 (and d!309658 b!1095045)))

(assert (=> bs!258946 (= (dynLambda!4609 lambda!42565 (h!15931 lt!368956)) (> (_1!6689 (h!15931 lt!368956)) (_1!6689 lt!368940)))))

(assert (=> b!1096233 d!309658))

(declare-fun b_lambda!31591 () Bool)

(assert (= b_lambda!31453 (or b!1094737 b_lambda!31591)))

(assert (=> b!1095810 d!309638))

(declare-fun b_lambda!31593 () Bool)

(assert (= b_lambda!31525 (or start!93782 b_lambda!31593)))

(declare-fun bs!258947 () Bool)

(declare-fun d!309660 () Bool)

(assert (= bs!258947 (and d!309660 start!93782)))

(assert (=> bs!258947 (= (dynLambda!4609 lambda!42457 (h!15931 (list!3778 objs!8))) (usesJsonRules!0 (_2!6689 (h!15931 (list!3778 objs!8)))))))

(declare-fun m!1251267 () Bool)

(assert (=> bs!258947 m!1251267))

(assert (=> b!1096195 d!309660))

(declare-fun b_lambda!31595 () Bool)

(assert (= b_lambda!31475 (or b!1094737 b_lambda!31595)))

(declare-fun bs!258948 () Bool)

(declare-fun d!309662 () Bool)

(assert (= bs!258948 (and d!309662 b!1094737)))

(assert (=> bs!258948 (= (dynLambda!4609 lambda!42458 (h!15931 (list!3778 lt!368625))) (< (_1!6689 (h!15931 (list!3778 lt!368625))) (_1!6689 lt!368619)))))

(assert (=> b!1095979 d!309662))

(declare-fun b_lambda!31597 () Bool)

(assert (= b_lambda!31487 (or b!1094737 b_lambda!31597)))

(assert (=> b!1096020 d!308756))

(declare-fun b_lambda!31599 () Bool)

(assert (= b_lambda!31507 (or start!93782 b_lambda!31599)))

(declare-fun bs!258949 () Bool)

(declare-fun d!309664 () Bool)

(assert (= bs!258949 (and d!309664 start!93782)))

(assert (=> bs!258949 (= (dynLambda!4609 lambda!42457 (h!15931 (t!103088 lt!368610))) (usesJsonRules!0 (_2!6689 (h!15931 (t!103088 lt!368610)))))))

(declare-fun m!1251269 () Bool)

(assert (=> bs!258949 m!1251269))

(assert (=> b!1096072 d!309664))

(declare-fun b_lambda!31601 () Bool)

(assert (= b_lambda!31451 (or start!93782 b_lambda!31601)))

(declare-fun bs!258950 () Bool)

(declare-fun d!309666 () Bool)

(assert (= bs!258950 (and d!309666 start!93782)))

(assert (=> bs!258950 (= (dynLambda!4609 lambda!42457 (h!15931 lt!368599)) (usesJsonRules!0 (_2!6689 (h!15931 lt!368599))))))

(declare-fun m!1251271 () Bool)

(assert (=> bs!258950 m!1251271))

(assert (=> b!1095779 d!309666))

(declare-fun b_lambda!31603 () Bool)

(assert (= b_lambda!31523 (or b!1094737 b_lambda!31603)))

(assert (=> d!309554 d!308766))

(declare-fun b_lambda!31605 () Bool)

(assert (= b_lambda!31519 (or start!93782 b_lambda!31605)))

(declare-fun bs!258951 () Bool)

(declare-fun d!309668 () Bool)

(assert (= bs!258951 (and d!309668 start!93782)))

(assert (=> bs!258951 (= (dynLambda!4609 lambda!42457 (h!15931 (t!103088 lt!368613))) (usesJsonRules!0 (_2!6689 (h!15931 (t!103088 lt!368613)))))))

(declare-fun m!1251273 () Bool)

(assert (=> bs!258951 m!1251273))

(assert (=> b!1096179 d!309668))

(declare-fun b_lambda!31607 () Bool)

(assert (= b_lambda!31535 (or b!1094737 b_lambda!31607)))

(declare-fun bs!258952 () Bool)

(declare-fun d!309670 () Bool)

(assert (= bs!258952 (and d!309670 b!1094737)))

(assert (=> bs!258952 (= (dynLambda!4609 lambda!42459 (h!15931 lt!368623)) (= (_1!6689 (h!15931 lt!368623)) (_1!6689 lt!368619)))))

(assert (=> b!1096303 d!309670))

(declare-fun b_lambda!31609 () Bool)

(assert (= b_lambda!31533 (or b!1095081 b_lambda!31609)))

(declare-fun bs!258953 () Bool)

(declare-fun d!309672 () Bool)

(assert (= bs!258953 (and d!309672 b!1095081)))

(assert (=> bs!258953 (= (dynLambda!4609 lambda!42570 (h!15931 lt!369005)) (> (_1!6689 (h!15931 lt!369005)) (_1!6689 lt!368989)))))

(assert (=> b!1096279 d!309672))

(declare-fun b_lambda!31611 () Bool)

(assert (= b_lambda!31497 (or start!93782 b_lambda!31611)))

(declare-fun bs!258954 () Bool)

(declare-fun d!309674 () Bool)

(assert (= bs!258954 (and d!309674 start!93782)))

(assert (=> bs!258954 (= (dynLambda!4609 lambda!42457 (h!15931 (t!103088 lt!368594))) (usesJsonRules!0 (_2!6689 (h!15931 (t!103088 lt!368594)))))))

(declare-fun m!1251275 () Bool)

(assert (=> bs!258954 m!1251275))

(assert (=> b!1096060 d!309674))

(declare-fun b_lambda!31613 () Bool)

(assert (= b_lambda!31449 (or start!93782 b_lambda!31613)))

(declare-fun bs!258955 () Bool)

(declare-fun d!309676 () Bool)

(assert (= bs!258955 (and d!309676 start!93782)))

(assert (=> bs!258955 (= (dynLambda!4609 lambda!42457 (h!15931 (++!2855 lt!368599 lt!368602))) (usesJsonRules!0 (_2!6689 (h!15931 (++!2855 lt!368599 lt!368602)))))))

(declare-fun m!1251277 () Bool)

(assert (=> bs!258955 m!1251277))

(assert (=> b!1095777 d!309676))

(declare-fun b_lambda!31615 () Bool)

(assert (= b_lambda!31513 (or b!1094737 b_lambda!31615)))

(assert (=> b!1096149 d!309642))

(declare-fun b_lambda!31617 () Bool)

(assert (= b_lambda!31503 (or b!1095045 b_lambda!31617)))

(assert (=> d!309494 d!309618))

(declare-fun b_lambda!31619 () Bool)

(assert (= b_lambda!31491 (or b!1094737 b_lambda!31619)))

(declare-fun bs!258956 () Bool)

(declare-fun d!309678 () Bool)

(assert (= bs!258956 (and d!309678 b!1094737)))

(assert (=> bs!258956 (= (dynLambda!4609 lambda!42460 (h!15931 lt!369029)) (> (_1!6689 (h!15931 lt!369029)) (_1!6689 lt!368619)))))

(assert (=> b!1096038 d!309678))

(declare-fun b_lambda!31621 () Bool)

(assert (= b_lambda!31505 (or b!1094737 b_lambda!31621)))

(declare-fun bs!258957 () Bool)

(declare-fun d!309680 () Bool)

(assert (= bs!258957 (and d!309680 b!1094737)))

(assert (=> bs!258957 (= (dynLambda!4609 lambda!42458 (h!15931 (t!103088 lt!368623))) (< (_1!6689 (h!15931 (t!103088 lt!368623))) (_1!6689 lt!368619)))))

(assert (=> b!1096069 d!309680))

(declare-fun b_lambda!31623 () Bool)

(assert (= b_lambda!31473 (or b!1094737 b_lambda!31623)))

(assert (=> d!309422 d!308766))

(declare-fun b_lambda!31625 () Bool)

(assert (= b_lambda!31521 (or b!1095081 b_lambda!31625)))

(declare-fun bs!258958 () Bool)

(declare-fun d!309682 () Bool)

(assert (= bs!258958 (and d!309682 b!1095081)))

(assert (=> bs!258958 (= (dynLambda!4609 lambda!42568 (h!15931 lt!369018)) (< (_1!6689 (h!15931 lt!369018)) (_1!6689 lt!368989)))))

(assert (=> b!1096186 d!309682))

(check-sat (not b!1095853) (not b!1096384) (not bm!80334) (not b!1096306) (not b!1096012) (not d!309280) (not b_lambda!31251) (not b!1096190) (not d!309542) (not b!1096350) (not b!1096039) (not b_lambda!31595) (not b!1095898) (not bm!80330) (not b!1096198) (not b!1095899) (not b!1095907) (not d!309284) (not d!309388) (not d!309322) (not b!1096329) (not d!309350) (not b!1095852) (not d!309592) (not b!1096241) (not b!1096237) (not b!1095980) (not d!309606) (not b!1095831) (not d!309572) (not b_lambda!31623) (not b!1096047) (not b!1095843) (not b!1096280) (not b_lambda!31621) (not b!1096095) (not b!1096287) (not b!1096027) (not bm!80331) (not b_lambda!31245) (not b!1096210) (not b_lambda!31261) (not d!309600) (not b_lambda!31581) (not b_lambda!31249) (not b!1096400) (not b_lambda!31619) (not b!1096044) (not b!1095908) (not d!309314) (not b!1095966) (not b!1096194) (not d!309596) (not b!1095855) (not b!1096209) (not b!1096187) (not d!309418) (not b!1096114) (not b!1096202) (not b!1096132) (not d!309524) (not b_lambda!31541) (not b!1096214) (not b_lambda!31599) (not b!1095854) (not b!1095819) (not b!1095964) (not b!1095992) (not b!1096026) (not b!1096385) (not b!1095828) (not d!309420) (not d!309356) (not b!1095808) (not b!1095836) (not b_lambda!31587) (not b!1096337) (not b!1095994) (not b!1095924) (not b!1095998) (not b!1096061) (not b_lambda!31565) (not d!309370) (not b!1096172) (not d!309352) (not b!1095834) (not b!1095956) (not b!1096222) (not d!309256) (not b!1095821) (not d!309442) (not b!1095887) (not b!1096338) (not b!1095944) (not d!309368) (not b!1096213) (not b!1096217) (not b_lambda!31577) (not b!1095894) (not b!1095925) (not d!309540) (not b!1096168) (not b!1095874) (not b!1096018) (not d!309484) (not d!309400) (not d!309294) (not b!1095830) (not d!309496) (not d!309428) (not b!1096353) (not bs!258928) (not d!309382) (not b!1095820) (not b!1096205) (not b!1096073) (not d!309490) (not b!1096373) (not b!1095873) (not b!1096283) (not b!1096273) (not b!1096036) (not b!1096203) (not d!309316) (not b!1095878) (not b!1095880) (not d!309228) (not d!309508) (not b!1096004) (not b!1095778) (not b!1095978) (not b!1095915) (not d!309466) (not b!1096315) (not b!1096207) (not bs!258935) (not b!1096251) (not d!309576) (not d!309526) (not b!1096077) (not b!1096017) (not d!309300) (not b!1096252) (not b_lambda!31575) (not b!1096398) (not b!1096275) (not b_lambda!31539) (not b!1096057) (not d!309474) (not d!309386) (not bm!80335) (not bs!258950) (not b_lambda!31567) (not b!1096341) (not b!1096223) (not b!1096318) (not b!1095877) (not d!309244) (not d!309326) (not b!1095850) (not b!1095800) (not d!309346) (not b!1096298) (not b!1096394) (not d!309398) (not b_lambda!31547) (not bs!258954) (not d!309298) (not d!309480) (not b!1096291) (not b_lambda!31253) (not bm!80336) (not d!309488) (not d!309578) (not b!1096206) (not b!1096184) (not b_lambda!31571) (not b!1095927) (not d!309264) (not b!1096243) (not b!1095953) (not b_lambda!31573) (not b!1096301) (not d!309250) (not b!1095948) (not b!1096065) (not d!309360) (not bs!258942) (not d!309462) (not b!1096150) (not d!309318) (not b!1096014) (not d!309362) (not d!309270) (not b!1096173) (not d!309286) (not b!1096392) (not b!1096226) (not d!309354) (not b!1096218) (not b!1095961) (not d!309358) (not b!1096064) (not d!309502) (not b!1096336) (not b!1096062) (not d!309560) (not b!1095942) (not d!309512) (not b!1095863) (not b!1096332) (not b!1096308) (not bs!258951) (not d!309440) (not b!1095977) (not bs!258933) (not b!1096346) (not d!309230) (not b!1095806) (not b!1095911) (not b!1095857) (not b_lambda!31559) (not b!1096267) (not d!309536) (not b!1096110) (not b_lambda!31601) (not b!1096002) (not b!1096334) (not b!1096405) (not b!1095934) (not bm!80341) (not b!1096009) (not b!1095930) (not d!309446) (not b!1095776) (not b!1096231) (not b!1095875) (not b_lambda!31259) (not b_lambda!31597) (not b_lambda!31265) (not b_lambda!31255) (not d!309258) (not b!1096158) (not b!1096401) (not b!1096289) (not b_lambda!31613) (not b!1095881) (not b!1095919) (not b!1096277) (not d!309266) (not b!1095829) (not b_lambda!31247) (not d!309378) (not b!1096382) (not d!309494) (not b!1095937) (not b!1095950) (not b!1095951) (not b_lambda!31551) (not b!1096032) (not b!1096199) (not b!1096219) (not b!1095902) (not b!1096138) (not b!1095959) (not b!1096270) (not b!1095856) (not d!309374) (not b!1096347) (not b!1096330) (not b!1096162) (not b!1096112) (not d!309530) (not b!1096144) (not b!1095914) (not b!1095918) (not b!1095920) (not d!309532) (not b!1095976) (not b!1095892) (not b!1096080) (not b_lambda!31543) (not b_lambda!31585) (not b!1095912) (not bm!80333) (not b!1096397) (not b!1096299) (not b!1095946) (not b_lambda!31263) (not d!309372) (not b!1096006) (not d!309432) (not d!309260) (not b!1095883) (not b!1095889) (not b!1096058) (not bs!258947) (not b!1095910) (not b!1095947) (not b!1095913) (not b!1096196) (not b!1096170) (not b!1096239) (not b!1095837) (not d!309468) (not b!1096381) (not b_lambda!31593) (not b_lambda!31563) (not b_lambda!31605) (not b!1095861) (not b!1096083) (not d!309302) (not b!1095823) (not b!1095922) (not b!1096344) (not d!309340) (not b!1096201) (not b!1096335) (not bm!80329) (not d!309522) (not b!1095859) (not bs!258949) (not d!309246) (not b_lambda!31553) (not d!309288) (not b_lambda!31557) (not b!1095860) (not b!1096155) (not b!1096234) (not b_lambda!31589) (not b_lambda!31591) (not b_lambda!31611) (not b!1096139) (not b!1095884) (not b!1095943) (not b!1095833) (not b_lambda!31607) (not b_lambda!31549) (not b!1095811) (not d!309594) (not b_lambda!31561) (not d!309574) (not b_lambda!31579) (not b!1095996) (not b!1096204) (not b!1095897) (not bm!80340) (not d!309380) (not d!309538) (not d!309614) (not d!309550) (not b!1096333) (not b_lambda!31537) (not b!1096021) (not b!1095917) (not b!1096376) (not b!1096174) (not b!1096143) (not b!1096145) (not b!1096182) (not bs!258941) (not b_lambda!31555) (not d!309396) (not b!1096312) (not d!309296) (not b!1096309) (not b!1096037) (not b!1095999) (not b_lambda!31545) (not d!309402) (not b!1096288) (not b!1096269) (not b!1095851) (not d!309334) (not bm!80332) (not b!1096010) (not b!1096320) (not d!309292) (not b!1096229) (not bs!258955) (not b!1096227) (not b_lambda!31603) (not d!309406) (not b!1095916) (not bs!258944) (not d!309364) (not b!1096215) (not d!309320) (not d!309234) (not b!1096395) (not d!309564) (not b!1095791) (not b!1096294) (not d!309310) (not b!1096075) (not b!1096200) (not b!1095839) (not b!1096059) (not b!1096220) (not b!1095891) (not b!1096111) (not b!1095814) (not b!1096378) (not b!1095931) (not d!309290) (not b!1096023) (not b!1096033) (not b!1095929) (not d!309394) (not d!309416) (not d!309248) (not d!309306) (not b!1096366) (not b!1095928) (not b!1095933) (not d!309520) (not b!1096141) (not d!309516) (not d!309276) (not b!1095872) (not b!1095798) (not b_lambda!31569) (not b_lambda!31257) (not d!309312) (not d!309366) (not d!309534) (not b!1095862) (not b!1095858) (not b!1095955) (not b!1095780) (not b!1096304) (not b!1096019) (not b!1096177) (not b!1096086) (not d!309438) (not b!1096025) (not b!1095963) (not b!1095842) (not b!1095900) (not d!309344) (not d!309408) (not b!1095792) (not bs!258943) (not b!1095949) (not b!1096180) (not b!1096129) (not b_lambda!31617) (not b_lambda!31625) (not b!1096286) (not b!1095935) (not b!1096147) (not b_lambda!31609) (not b!1095909) (not d!309582) (not b!1096067) (not b_lambda!31615) (not d!309274) (not b!1096193) (not b!1096087) (not d!309324) (not d!309282) (not b!1096113) (not b!1095832) (not b!1096250) (not b!1096109) (not d!309376) (not d!309616) (not b_lambda!31583) (not b!1096314) (not b!1095835) (not b!1096290) (not bs!258930) (not d!309390) (not b!1095816) (not b!1095945) (not b!1095958) (not d!309308) (not b!1096355) (not b!1096331) (not d!309384) (not b!1095845) (not b!1096295) (not b!1096131) (not b!1096379) (not b!1095921) (not b!1095885) (not b!1096070) (not b!1096216) (not d!309570) (not b!1096285) (not b!1095882) (not b!1096153) (not b!1095895) (not b!1095841) (not b!1095991) (not b!1096135) (not b!1096389) (not b!1096041) (not b!1095817) (not b!1096029) (not d!309444) (not b!1096161) (not b!1096178) (not b!1096352) (not bm!80339) (not b!1096370) (not b!1095121) (not bs!258937))
(check-sat)
