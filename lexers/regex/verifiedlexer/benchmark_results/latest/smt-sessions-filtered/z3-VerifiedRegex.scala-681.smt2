; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26002 () Bool)

(assert start!26002)

(declare-fun b!245610 () Bool)

(declare-fun b_free!9113 () Bool)

(declare-fun b_next!9113 () Bool)

(assert (=> b!245610 (= b_free!9113 (not b_next!9113))))

(declare-fun tp!96198 () Bool)

(declare-fun b_and!18485 () Bool)

(assert (=> b!245610 (= tp!96198 b_and!18485)))

(declare-fun b_free!9115 () Bool)

(declare-fun b_next!9115 () Bool)

(assert (=> b!245610 (= b_free!9115 (not b_next!9115))))

(declare-fun tp!96206 () Bool)

(declare-fun b_and!18487 () Bool)

(assert (=> b!245610 (= tp!96206 b_and!18487)))

(declare-fun b!245624 () Bool)

(declare-fun b_free!9117 () Bool)

(declare-fun b_next!9117 () Bool)

(assert (=> b!245624 (= b_free!9117 (not b_next!9117))))

(declare-fun tp!96204 () Bool)

(declare-fun b_and!18489 () Bool)

(assert (=> b!245624 (= tp!96204 b_and!18489)))

(declare-fun b_free!9119 () Bool)

(declare-fun b_next!9119 () Bool)

(assert (=> b!245624 (= b_free!9119 (not b_next!9119))))

(declare-fun tp!96205 () Bool)

(declare-fun b_and!18491 () Bool)

(assert (=> b!245624 (= tp!96205 b_and!18491)))

(declare-fun b!245641 () Bool)

(declare-fun b_free!9121 () Bool)

(declare-fun b_next!9121 () Bool)

(assert (=> b!245641 (= b_free!9121 (not b_next!9121))))

(declare-fun tp!96202 () Bool)

(declare-fun b_and!18493 () Bool)

(assert (=> b!245641 (= tp!96202 b_and!18493)))

(declare-fun b_free!9123 () Bool)

(declare-fun b_next!9123 () Bool)

(assert (=> b!245641 (= b_free!9123 (not b_next!9123))))

(declare-fun tp!96195 () Bool)

(declare-fun b_and!18495 () Bool)

(assert (=> b!245641 (= tp!96195 b_and!18495)))

(declare-fun bs!26342 () Bool)

(declare-fun b!245631 () Bool)

(declare-fun b!245614 () Bool)

(assert (= bs!26342 (and b!245631 b!245614)))

(declare-fun lambda!8044 () Int)

(declare-fun lambda!8043 () Int)

(assert (=> bs!26342 (not (= lambda!8044 lambda!8043))))

(declare-fun b!245652 () Bool)

(declare-fun e!152332 () Bool)

(assert (=> b!245652 (= e!152332 true)))

(declare-fun b!245651 () Bool)

(declare-fun e!152331 () Bool)

(assert (=> b!245651 (= e!152331 e!152332)))

(declare-fun b!245650 () Bool)

(declare-fun e!152330 () Bool)

(assert (=> b!245650 (= e!152330 e!152331)))

(assert (=> b!245631 e!152330))

(assert (= b!245651 b!245652))

(assert (= b!245650 b!245651))

(declare-datatypes ((List!3625 0))(
  ( (Nil!3615) (Cons!3615 (h!9012 (_ BitVec 16)) (t!35109 List!3625)) )
))
(declare-datatypes ((TokenValue!707 0))(
  ( (FloatLiteralValue!1414 (text!5394 List!3625)) (TokenValueExt!706 (__x!2901 Int)) (Broken!3535 (value!23812 List!3625)) (Object!716) (End!707) (Def!707) (Underscore!707) (Match!707) (Else!707) (Error!707) (Case!707) (If!707) (Extends!707) (Abstract!707) (Class!707) (Val!707) (DelimiterValue!1414 (del!767 List!3625)) (KeywordValue!713 (value!23813 List!3625)) (CommentValue!1414 (value!23814 List!3625)) (WhitespaceValue!1414 (value!23815 List!3625)) (IndentationValue!707 (value!23816 List!3625)) (String!4614) (Int32!707) (Broken!3536 (value!23817 List!3625)) (Boolean!708) (Unit!4381) (OperatorValue!710 (op!767 List!3625)) (IdentifierValue!1414 (value!23818 List!3625)) (IdentifierValue!1415 (value!23819 List!3625)) (WhitespaceValue!1415 (value!23820 List!3625)) (True!1414) (False!1414) (Broken!3537 (value!23821 List!3625)) (Broken!3538 (value!23822 List!3625)) (True!1415) (RightBrace!707) (RightBracket!707) (Colon!707) (Null!707) (Comma!707) (LeftBracket!707) (False!1415) (LeftBrace!707) (ImaginaryLiteralValue!707 (text!5395 List!3625)) (StringLiteralValue!2121 (value!23823 List!3625)) (EOFValue!707 (value!23824 List!3625)) (IdentValue!707 (value!23825 List!3625)) (DelimiterValue!1415 (value!23826 List!3625)) (DedentValue!707 (value!23827 List!3625)) (NewLineValue!707 (value!23828 List!3625)) (IntegerValue!2121 (value!23829 (_ BitVec 32)) (text!5396 List!3625)) (IntegerValue!2122 (value!23830 Int) (text!5397 List!3625)) (Times!707) (Or!707) (Equal!707) (Minus!707) (Broken!3539 (value!23831 List!3625)) (And!707) (Div!707) (LessEqual!707) (Mod!707) (Concat!1616) (Not!707) (Plus!707) (SpaceValue!707 (value!23832 List!3625)) (IntegerValue!2123 (value!23833 Int) (text!5398 List!3625)) (StringLiteralValue!2122 (text!5399 List!3625)) (FloatLiteralValue!1415 (text!5400 List!3625)) (BytesLiteralValue!707 (value!23834 List!3625)) (CommentValue!1415 (value!23835 List!3625)) (StringLiteralValue!2123 (value!23836 List!3625)) (ErrorTokenValue!707 (msg!768 List!3625)) )
))
(declare-datatypes ((C!2740 0))(
  ( (C!2741 (val!1256 Int)) )
))
(declare-datatypes ((List!3626 0))(
  ( (Nil!3616) (Cons!3616 (h!9013 C!2740) (t!35110 List!3626)) )
))
(declare-datatypes ((IArray!2385 0))(
  ( (IArray!2386 (innerList!1250 List!3626)) )
))
(declare-datatypes ((Conc!1192 0))(
  ( (Node!1192 (left!2961 Conc!1192) (right!3291 Conc!1192) (csize!2614 Int) (cheight!1403 Int)) (Leaf!1874 (xs!3787 IArray!2385) (csize!2615 Int)) (Empty!1192) )
))
(declare-datatypes ((BalanceConc!2392 0))(
  ( (BalanceConc!2393 (c!46908 Conc!1192)) )
))
(declare-datatypes ((TokenValueInjection!1186 0))(
  ( (TokenValueInjection!1187 (toValue!1388 Int) (toChars!1247 Int)) )
))
(declare-datatypes ((Regex!909 0))(
  ( (ElementMatch!909 (c!46909 C!2740)) (Concat!1617 (regOne!2330 Regex!909) (regTwo!2330 Regex!909)) (EmptyExpr!909) (Star!909 (reg!1238 Regex!909)) (EmptyLang!909) (Union!909 (regOne!2331 Regex!909) (regTwo!2331 Regex!909)) )
))
(declare-datatypes ((String!4615 0))(
  ( (String!4616 (value!23837 String)) )
))
(declare-datatypes ((Rule!1170 0))(
  ( (Rule!1171 (regex!685 Regex!909) (tag!893 String!4615) (isSeparator!685 Bool) (transformation!685 TokenValueInjection!1186)) )
))
(declare-datatypes ((List!3627 0))(
  ( (Nil!3617) (Cons!3617 (h!9014 Rule!1170) (t!35111 List!3627)) )
))
(declare-fun rules!1920 () List!3627)

(get-info :version)

(assert (= (and b!245631 ((_ is Cons!3617) rules!1920)) b!245650))

(declare-fun order!2649 () Int)

(declare-fun order!2651 () Int)

(declare-fun dynLambda!1753 (Int Int) Int)

(declare-fun dynLambda!1754 (Int Int) Int)

(assert (=> b!245652 (< (dynLambda!1753 order!2649 (toValue!1388 (transformation!685 (h!9014 rules!1920)))) (dynLambda!1754 order!2651 lambda!8044))))

(declare-fun order!2653 () Int)

(declare-fun dynLambda!1755 (Int Int) Int)

(assert (=> b!245652 (< (dynLambda!1755 order!2653 (toChars!1247 (transformation!685 (h!9014 rules!1920)))) (dynLambda!1754 order!2651 lambda!8044))))

(assert (=> b!245631 true))

(declare-fun b!245609 () Bool)

(declare-datatypes ((Token!1114 0))(
  ( (Token!1115 (value!23838 TokenValue!707) (rule!1262 Rule!1170) (size!2867 Int) (originalCharacters!728 List!3626)) )
))
(declare-datatypes ((List!3628 0))(
  ( (Nil!3618) (Cons!3618 (h!9015 Token!1114) (t!35112 List!3628)) )
))
(declare-fun tokens!465 () List!3628)

(declare-fun e!152319 () Bool)

(declare-fun tp!96196 () Bool)

(declare-fun e!152308 () Bool)

(declare-fun inv!21 (TokenValue!707) Bool)

(assert (=> b!245609 (= e!152319 (and (inv!21 (value!23838 (h!9015 tokens!465))) e!152308 tp!96196))))

(declare-fun e!152309 () Bool)

(assert (=> b!245610 (= e!152309 (and tp!96198 tp!96206))))

(declare-fun b!245611 () Bool)

(declare-fun res!113626 () Bool)

(declare-fun e!152318 () Bool)

(assert (=> b!245611 (=> res!113626 e!152318)))

(declare-datatypes ((LexerInterface!571 0))(
  ( (LexerInterfaceExt!568 (__x!2902 Int)) (Lexer!569) )
))
(declare-fun thiss!17480 () LexerInterface!571)

(declare-fun rulesProduceIndividualToken!320 (LexerInterface!571 List!3627 Token!1114) Bool)

(assert (=> b!245611 (= res!113626 (not (rulesProduceIndividualToken!320 thiss!17480 rules!1920 (h!9015 tokens!465))))))

(declare-fun b!245612 () Bool)

(declare-fun e!152310 () Bool)

(declare-fun e!152321 () Bool)

(assert (=> b!245612 (= e!152310 e!152321)))

(declare-fun res!113624 () Bool)

(assert (=> b!245612 (=> (not res!113624) (not e!152321))))

(declare-fun lt!99540 () List!3626)

(declare-fun lt!99536 () List!3626)

(assert (=> b!245612 (= res!113624 (= lt!99540 lt!99536))))

(declare-datatypes ((IArray!2387 0))(
  ( (IArray!2388 (innerList!1251 List!3628)) )
))
(declare-datatypes ((Conc!1193 0))(
  ( (Node!1193 (left!2962 Conc!1193) (right!3292 Conc!1193) (csize!2616 Int) (cheight!1404 Int)) (Leaf!1875 (xs!3788 IArray!2387) (csize!2617 Int)) (Empty!1193) )
))
(declare-datatypes ((BalanceConc!2394 0))(
  ( (BalanceConc!2395 (c!46910 Conc!1193)) )
))
(declare-fun lt!99537 () BalanceConc!2394)

(declare-fun separatorToken!170 () Token!1114)

(declare-fun list!1420 (BalanceConc!2392) List!3626)

(declare-fun printWithSeparatorTokenWhenNeededRec!254 (LexerInterface!571 List!3627 BalanceConc!2394 Token!1114 Int) BalanceConc!2392)

(assert (=> b!245612 (= lt!99536 (list!1420 (printWithSeparatorTokenWhenNeededRec!254 thiss!17480 rules!1920 lt!99537 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!264 (LexerInterface!571 List!3627 List!3628 Token!1114) List!3626)

(assert (=> b!245612 (= lt!99540 (printWithSeparatorTokenWhenNeededList!264 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!245613 () Bool)

(declare-fun e!152297 () Bool)

(declare-fun e!152313 () Bool)

(assert (=> b!245613 (= e!152297 e!152313)))

(declare-fun res!113639 () Bool)

(assert (=> b!245613 (=> res!113639 e!152313)))

(declare-fun e!152307 () Bool)

(assert (=> b!245613 (= res!113639 e!152307)))

(declare-fun res!113628 () Bool)

(assert (=> b!245613 (=> (not res!113628) (not e!152307))))

(declare-fun lt!99541 () Bool)

(assert (=> b!245613 (= res!113628 (not lt!99541))))

(declare-fun lt!99530 () List!3626)

(assert (=> b!245613 (= lt!99541 (= lt!99540 lt!99530))))

(declare-fun res!113631 () Bool)

(assert (=> b!245614 (=> (not res!113631) (not e!152310))))

(declare-fun forall!841 (List!3628 Int) Bool)

(assert (=> b!245614 (= res!113631 (forall!841 tokens!465 lambda!8043))))

(declare-fun b!245615 () Bool)

(declare-fun tp!96199 () Bool)

(declare-fun e!152299 () Bool)

(declare-fun inv!4466 (String!4615) Bool)

(declare-fun inv!4469 (TokenValueInjection!1186) Bool)

(assert (=> b!245615 (= e!152308 (and tp!96199 (inv!4466 (tag!893 (rule!1262 (h!9015 tokens!465)))) (inv!4469 (transformation!685 (rule!1262 (h!9015 tokens!465)))) e!152299))))

(declare-fun b!245616 () Bool)

(assert (=> b!245616 (= e!152313 e!152318)))

(declare-fun res!113634 () Bool)

(assert (=> b!245616 (=> res!113634 e!152318)))

(declare-fun lt!99544 () List!3626)

(declare-fun lt!99539 () List!3626)

(declare-fun lt!99542 () List!3626)

(assert (=> b!245616 (= res!113634 (or (not (= lt!99542 lt!99539)) (not (= lt!99539 lt!99544)) (not (= lt!99542 lt!99544))))))

(declare-fun printList!255 (LexerInterface!571 List!3628) List!3626)

(assert (=> b!245616 (= lt!99539 (printList!255 thiss!17480 (Cons!3618 (h!9015 tokens!465) Nil!3618)))))

(declare-fun lt!99549 () BalanceConc!2392)

(assert (=> b!245616 (= lt!99542 (list!1420 lt!99549))))

(declare-fun lt!99548 () BalanceConc!2394)

(declare-fun printTailRec!265 (LexerInterface!571 BalanceConc!2394 Int BalanceConc!2392) BalanceConc!2392)

(assert (=> b!245616 (= lt!99549 (printTailRec!265 thiss!17480 lt!99548 0 (BalanceConc!2393 Empty!1192)))))

(declare-fun print!302 (LexerInterface!571 BalanceConc!2394) BalanceConc!2392)

(assert (=> b!245616 (= lt!99549 (print!302 thiss!17480 lt!99548))))

(declare-fun singletonSeq!237 (Token!1114) BalanceConc!2394)

(assert (=> b!245616 (= lt!99548 (singletonSeq!237 (h!9015 tokens!465)))))

(declare-fun b!245617 () Bool)

(declare-fun res!113635 () Bool)

(declare-fun e!152298 () Bool)

(assert (=> b!245617 (=> (not res!113635) (not e!152298))))

(declare-fun rulesInvariant!537 (LexerInterface!571 List!3627) Bool)

(assert (=> b!245617 (= res!113635 (rulesInvariant!537 thiss!17480 rules!1920))))

(declare-fun lt!99534 () List!3626)

(declare-fun b!245618 () Bool)

(declare-fun ++!922 (List!3626 List!3626) List!3626)

(assert (=> b!245618 (= e!152307 (not (= lt!99540 (++!922 lt!99544 lt!99534))))))

(declare-fun b!245619 () Bool)

(declare-fun res!113618 () Bool)

(assert (=> b!245619 (=> (not res!113618) (not e!152310))))

(assert (=> b!245619 (= res!113618 ((_ is Cons!3618) tokens!465))))

(declare-fun b!245620 () Bool)

(declare-fun e!152314 () Bool)

(declare-fun e!152305 () Bool)

(declare-fun tp!96207 () Bool)

(assert (=> b!245620 (= e!152314 (and e!152305 tp!96207))))

(declare-fun b!245621 () Bool)

(declare-fun e!152317 () Bool)

(declare-fun rulesValidInductive!178 (LexerInterface!571 List!3627) Bool)

(assert (=> b!245621 (= e!152317 (rulesValidInductive!178 thiss!17480 rules!1920))))

(declare-fun isPrefix!369 (List!3626 List!3626) Bool)

(assert (=> b!245621 (isPrefix!369 lt!99544 (++!922 lt!99544 lt!99534))))

(declare-datatypes ((Unit!4382 0))(
  ( (Unit!4383) )
))
(declare-fun lt!99547 () Unit!4382)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!264 (List!3626 List!3626) Unit!4382)

(assert (=> b!245621 (= lt!99547 (lemmaConcatTwoListThenFirstIsPrefix!264 lt!99544 lt!99534))))

(declare-fun lt!99532 () BalanceConc!2392)

(declare-fun filter!67 (List!3628 Int) List!3628)

(declare-fun list!1421 (BalanceConc!2394) List!3628)

(declare-datatypes ((tuple2!4018 0))(
  ( (tuple2!4019 (_1!2225 BalanceConc!2394) (_2!2225 BalanceConc!2392)) )
))
(declare-fun lex!371 (LexerInterface!571 List!3627 BalanceConc!2392) tuple2!4018)

(assert (=> b!245621 (= (filter!67 (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 lt!99532))) lambda!8043) (t!35112 tokens!465))))

(declare-fun lt!99535 () Unit!4382)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!58 (LexerInterface!571 List!3627 List!3628 Token!1114) Unit!4382)

(assert (=> b!245621 (= lt!99535 (theoremInvertabilityFromTokensSepTokenWhenNeeded!58 thiss!17480 rules!1920 (t!35112 tokens!465) separatorToken!170))))

(declare-fun e!152300 () Bool)

(assert (=> b!245621 e!152300))

(declare-fun res!113620 () Bool)

(assert (=> b!245621 (=> res!113620 e!152300)))

(declare-fun isEmpty!2197 (List!3628) Bool)

(assert (=> b!245621 (= res!113620 (isEmpty!2197 tokens!465))))

(declare-fun lt!99545 () Unit!4382)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!140 (LexerInterface!571 List!3627 List!3628 Token!1114) Unit!4382)

(assert (=> b!245621 (= lt!99545 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!140 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!245622 () Bool)

(declare-fun res!113632 () Bool)

(assert (=> b!245622 (=> (not res!113632) (not e!152298))))

(declare-fun isEmpty!2198 (List!3627) Bool)

(assert (=> b!245622 (= res!113632 (not (isEmpty!2198 rules!1920)))))

(declare-fun res!113619 () Bool)

(assert (=> start!26002 (=> (not res!113619) (not e!152298))))

(assert (=> start!26002 (= res!113619 ((_ is Lexer!569) thiss!17480))))

(assert (=> start!26002 e!152298))

(assert (=> start!26002 true))

(assert (=> start!26002 e!152314))

(declare-fun e!152301 () Bool)

(declare-fun inv!4470 (Token!1114) Bool)

(assert (=> start!26002 (and (inv!4470 separatorToken!170) e!152301)))

(declare-fun e!152323 () Bool)

(assert (=> start!26002 e!152323))

(declare-fun b!245623 () Bool)

(declare-fun res!113633 () Bool)

(assert (=> b!245623 (=> res!113633 e!152318)))

(declare-fun isEmpty!2199 (BalanceConc!2394) Bool)

(declare-fun seqFromList!747 (List!3626) BalanceConc!2392)

(assert (=> b!245623 (= res!113633 (isEmpty!2199 (_1!2225 (lex!371 thiss!17480 rules!1920 (seqFromList!747 lt!99544)))))))

(assert (=> b!245624 (= e!152299 (and tp!96204 tp!96205))))

(declare-fun b!245625 () Bool)

(declare-fun res!113629 () Bool)

(assert (=> b!245625 (=> (not res!113629) (not e!152321))))

(assert (=> b!245625 (= res!113629 (= (list!1420 (seqFromList!747 lt!99540)) lt!99536))))

(declare-fun b!245626 () Bool)

(declare-fun e!152312 () Bool)

(assert (=> b!245626 (= e!152300 e!152312)))

(declare-fun res!113622 () Bool)

(assert (=> b!245626 (=> (not res!113622) (not e!152312))))

(declare-datatypes ((tuple2!4020 0))(
  ( (tuple2!4021 (_1!2226 Token!1114) (_2!2226 List!3626)) )
))
(declare-datatypes ((Option!732 0))(
  ( (None!731) (Some!731 (v!14492 tuple2!4020)) )
))
(declare-fun lt!99546 () Option!732)

(declare-fun isDefined!583 (Option!732) Bool)

(assert (=> b!245626 (= res!113622 (isDefined!583 lt!99546))))

(declare-fun maxPrefix!301 (LexerInterface!571 List!3627 List!3626) Option!732)

(assert (=> b!245626 (= lt!99546 (maxPrefix!301 thiss!17480 rules!1920 lt!99540))))

(declare-fun tp!96201 () Bool)

(declare-fun b!245627 () Bool)

(declare-fun e!152302 () Bool)

(assert (=> b!245627 (= e!152305 (and tp!96201 (inv!4466 (tag!893 (h!9014 rules!1920))) (inv!4469 (transformation!685 (h!9014 rules!1920))) e!152302))))

(declare-fun b!245628 () Bool)

(declare-fun res!113630 () Bool)

(declare-fun e!152316 () Bool)

(assert (=> b!245628 (=> (not res!113630) (not e!152316))))

(declare-fun lt!99551 () tuple2!4020)

(declare-fun isEmpty!2200 (List!3626) Bool)

(assert (=> b!245628 (= res!113630 (isEmpty!2200 (_2!2226 lt!99551)))))

(declare-fun tp!96197 () Bool)

(declare-fun e!152322 () Bool)

(declare-fun b!245629 () Bool)

(assert (=> b!245629 (= e!152301 (and (inv!21 (value!23838 separatorToken!170)) e!152322 tp!96197))))

(declare-fun b!245630 () Bool)

(declare-fun tp!96203 () Bool)

(assert (=> b!245630 (= e!152323 (and (inv!4470 (h!9015 tokens!465)) e!152319 tp!96203))))

(declare-fun e!152320 () Bool)

(assert (=> b!245631 (= e!152318 e!152320)))

(declare-fun res!113638 () Bool)

(assert (=> b!245631 (=> res!113638 e!152320)))

(declare-datatypes ((tuple2!4022 0))(
  ( (tuple2!4023 (_1!2227 Token!1114) (_2!2227 BalanceConc!2392)) )
))
(declare-datatypes ((Option!733 0))(
  ( (None!732) (Some!732 (v!14493 tuple2!4022)) )
))
(declare-fun isDefined!584 (Option!733) Bool)

(declare-fun maxPrefixZipperSequence!264 (LexerInterface!571 List!3627 BalanceConc!2392) Option!733)

(assert (=> b!245631 (= res!113638 (not (isDefined!584 (maxPrefixZipperSequence!264 thiss!17480 rules!1920 (seqFromList!747 (originalCharacters!728 (h!9015 tokens!465)))))))))

(declare-fun lt!99533 () Unit!4382)

(declare-fun forallContained!252 (List!3628 Int Token!1114) Unit!4382)

(assert (=> b!245631 (= lt!99533 (forallContained!252 tokens!465 lambda!8044 (h!9015 tokens!465)))))

(assert (=> b!245631 (= lt!99544 (originalCharacters!728 (h!9015 tokens!465)))))

(declare-fun b!245632 () Bool)

(declare-fun res!113637 () Bool)

(assert (=> b!245632 (=> (not res!113637) (not e!152310))))

(declare-fun sepAndNonSepRulesDisjointChars!274 (List!3627 List!3627) Bool)

(assert (=> b!245632 (= res!113637 (sepAndNonSepRulesDisjointChars!274 rules!1920 rules!1920))))

(declare-fun b!245633 () Bool)

(assert (=> b!245633 (= e!152321 (not e!152297))))

(declare-fun res!113640 () Bool)

(assert (=> b!245633 (=> res!113640 e!152297)))

(assert (=> b!245633 (= res!113640 (not (= lt!99534 (list!1420 lt!99532))))))

(declare-fun seqFromList!748 (List!3628) BalanceConc!2394)

(assert (=> b!245633 (= lt!99532 (printWithSeparatorTokenWhenNeededRec!254 thiss!17480 rules!1920 (seqFromList!748 (t!35112 tokens!465)) separatorToken!170 0))))

(declare-fun lt!99552 () List!3626)

(assert (=> b!245633 (= lt!99552 lt!99530)))

(declare-fun lt!99543 () List!3626)

(assert (=> b!245633 (= lt!99530 (++!922 lt!99544 lt!99543))))

(declare-fun lt!99531 () List!3626)

(assert (=> b!245633 (= lt!99552 (++!922 (++!922 lt!99544 lt!99531) lt!99534))))

(declare-fun lt!99538 () Unit!4382)

(declare-fun lemmaConcatAssociativity!390 (List!3626 List!3626 List!3626) Unit!4382)

(assert (=> b!245633 (= lt!99538 (lemmaConcatAssociativity!390 lt!99544 lt!99531 lt!99534))))

(declare-fun charsOf!340 (Token!1114) BalanceConc!2392)

(assert (=> b!245633 (= lt!99544 (list!1420 (charsOf!340 (h!9015 tokens!465))))))

(assert (=> b!245633 (= lt!99543 (++!922 lt!99531 lt!99534))))

(assert (=> b!245633 (= lt!99534 (printWithSeparatorTokenWhenNeededList!264 thiss!17480 rules!1920 (t!35112 tokens!465) separatorToken!170))))

(assert (=> b!245633 (= lt!99531 (list!1420 (charsOf!340 separatorToken!170)))))

(declare-fun b!245634 () Bool)

(assert (=> b!245634 (= e!152298 e!152310)))

(declare-fun res!113627 () Bool)

(assert (=> b!245634 (=> (not res!113627) (not e!152310))))

(declare-fun rulesProduceEachTokenIndividually!363 (LexerInterface!571 List!3627 BalanceConc!2394) Bool)

(assert (=> b!245634 (= res!113627 (rulesProduceEachTokenIndividually!363 thiss!17480 rules!1920 lt!99537))))

(assert (=> b!245634 (= lt!99537 (seqFromList!748 tokens!465))))

(declare-fun b!245635 () Bool)

(declare-fun matchR!247 (Regex!909 List!3626) Bool)

(assert (=> b!245635 (= e!152316 (matchR!247 (regex!685 (rule!1262 (h!9015 tokens!465))) lt!99544))))

(declare-fun b!245636 () Bool)

(declare-fun get!1182 (Option!732) tuple2!4020)

(declare-fun head!844 (List!3628) Token!1114)

(assert (=> b!245636 (= e!152312 (= (_1!2226 (get!1182 lt!99546)) (head!844 tokens!465)))))

(declare-fun b!245637 () Bool)

(assert (=> b!245637 (= e!152320 e!152317)))

(declare-fun res!113636 () Bool)

(assert (=> b!245637 (=> res!113636 e!152317)))

(assert (=> b!245637 (= res!113636 lt!99541)))

(assert (=> b!245637 e!152316))

(declare-fun res!113623 () Bool)

(assert (=> b!245637 (=> (not res!113623) (not e!152316))))

(assert (=> b!245637 (= res!113623 (= (_1!2226 lt!99551) (h!9015 tokens!465)))))

(declare-fun lt!99550 () Option!732)

(assert (=> b!245637 (= lt!99551 (get!1182 lt!99550))))

(assert (=> b!245637 (isDefined!583 lt!99550)))

(assert (=> b!245637 (= lt!99550 (maxPrefix!301 thiss!17480 rules!1920 lt!99544))))

(declare-fun b!245638 () Bool)

(declare-fun tp!96200 () Bool)

(assert (=> b!245638 (= e!152322 (and tp!96200 (inv!4466 (tag!893 (rule!1262 separatorToken!170))) (inv!4469 (transformation!685 (rule!1262 separatorToken!170))) e!152309))))

(declare-fun b!245639 () Bool)

(declare-fun res!113621 () Bool)

(assert (=> b!245639 (=> (not res!113621) (not e!152310))))

(assert (=> b!245639 (= res!113621 (rulesProduceIndividualToken!320 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!245640 () Bool)

(declare-fun res!113625 () Bool)

(assert (=> b!245640 (=> (not res!113625) (not e!152310))))

(assert (=> b!245640 (= res!113625 (isSeparator!685 (rule!1262 separatorToken!170)))))

(assert (=> b!245641 (= e!152302 (and tp!96202 tp!96195))))

(assert (= (and start!26002 res!113619) b!245622))

(assert (= (and b!245622 res!113632) b!245617))

(assert (= (and b!245617 res!113635) b!245634))

(assert (= (and b!245634 res!113627) b!245639))

(assert (= (and b!245639 res!113621) b!245640))

(assert (= (and b!245640 res!113625) b!245614))

(assert (= (and b!245614 res!113631) b!245632))

(assert (= (and b!245632 res!113637) b!245619))

(assert (= (and b!245619 res!113618) b!245612))

(assert (= (and b!245612 res!113624) b!245625))

(assert (= (and b!245625 res!113629) b!245633))

(assert (= (and b!245633 (not res!113640)) b!245613))

(assert (= (and b!245613 res!113628) b!245618))

(assert (= (and b!245613 (not res!113639)) b!245616))

(assert (= (and b!245616 (not res!113634)) b!245611))

(assert (= (and b!245611 (not res!113626)) b!245623))

(assert (= (and b!245623 (not res!113633)) b!245631))

(assert (= (and b!245631 (not res!113638)) b!245637))

(assert (= (and b!245637 res!113623) b!245628))

(assert (= (and b!245628 res!113630) b!245635))

(assert (= (and b!245637 (not res!113636)) b!245621))

(assert (= (and b!245621 (not res!113620)) b!245626))

(assert (= (and b!245626 res!113622) b!245636))

(assert (= b!245627 b!245641))

(assert (= b!245620 b!245627))

(assert (= (and start!26002 ((_ is Cons!3617) rules!1920)) b!245620))

(assert (= b!245638 b!245610))

(assert (= b!245629 b!245638))

(assert (= start!26002 b!245629))

(assert (= b!245615 b!245624))

(assert (= b!245609 b!245615))

(assert (= b!245630 b!245609))

(assert (= (and start!26002 ((_ is Cons!3618) tokens!465)) b!245630))

(declare-fun m!300345 () Bool)

(assert (=> b!245615 m!300345))

(declare-fun m!300347 () Bool)

(assert (=> b!245615 m!300347))

(declare-fun m!300349 () Bool)

(assert (=> b!245630 m!300349))

(declare-fun m!300351 () Bool)

(assert (=> b!245621 m!300351))

(declare-fun m!300353 () Bool)

(assert (=> b!245621 m!300353))

(declare-fun m!300355 () Bool)

(assert (=> b!245621 m!300355))

(declare-fun m!300357 () Bool)

(assert (=> b!245621 m!300357))

(declare-fun m!300359 () Bool)

(assert (=> b!245621 m!300359))

(declare-fun m!300361 () Bool)

(assert (=> b!245621 m!300361))

(assert (=> b!245621 m!300359))

(declare-fun m!300363 () Bool)

(assert (=> b!245621 m!300363))

(declare-fun m!300365 () Bool)

(assert (=> b!245621 m!300365))

(declare-fun m!300367 () Bool)

(assert (=> b!245621 m!300367))

(assert (=> b!245621 m!300355))

(declare-fun m!300369 () Bool)

(assert (=> b!245621 m!300369))

(declare-fun m!300371 () Bool)

(assert (=> b!245611 m!300371))

(declare-fun m!300373 () Bool)

(assert (=> b!245617 m!300373))

(declare-fun m!300375 () Bool)

(assert (=> b!245623 m!300375))

(assert (=> b!245623 m!300375))

(declare-fun m!300377 () Bool)

(assert (=> b!245623 m!300377))

(declare-fun m!300379 () Bool)

(assert (=> b!245623 m!300379))

(declare-fun m!300381 () Bool)

(assert (=> b!245634 m!300381))

(declare-fun m!300383 () Bool)

(assert (=> b!245634 m!300383))

(declare-fun m!300385 () Bool)

(assert (=> b!245627 m!300385))

(declare-fun m!300387 () Bool)

(assert (=> b!245627 m!300387))

(declare-fun m!300389 () Bool)

(assert (=> b!245614 m!300389))

(declare-fun m!300391 () Bool)

(assert (=> b!245612 m!300391))

(assert (=> b!245612 m!300391))

(declare-fun m!300393 () Bool)

(assert (=> b!245612 m!300393))

(declare-fun m!300395 () Bool)

(assert (=> b!245612 m!300395))

(declare-fun m!300397 () Bool)

(assert (=> b!245636 m!300397))

(declare-fun m!300399 () Bool)

(assert (=> b!245636 m!300399))

(declare-fun m!300401 () Bool)

(assert (=> b!245622 m!300401))

(declare-fun m!300403 () Bool)

(assert (=> b!245638 m!300403))

(declare-fun m!300405 () Bool)

(assert (=> b!245638 m!300405))

(declare-fun m!300407 () Bool)

(assert (=> b!245639 m!300407))

(assert (=> b!245618 m!300359))

(declare-fun m!300409 () Bool)

(assert (=> b!245609 m!300409))

(declare-fun m!300411 () Bool)

(assert (=> b!245626 m!300411))

(declare-fun m!300413 () Bool)

(assert (=> b!245626 m!300413))

(declare-fun m!300415 () Bool)

(assert (=> b!245625 m!300415))

(assert (=> b!245625 m!300415))

(declare-fun m!300417 () Bool)

(assert (=> b!245625 m!300417))

(declare-fun m!300419 () Bool)

(assert (=> b!245628 m!300419))

(declare-fun m!300421 () Bool)

(assert (=> b!245635 m!300421))

(declare-fun m!300423 () Bool)

(assert (=> start!26002 m!300423))

(declare-fun m!300425 () Bool)

(assert (=> b!245637 m!300425))

(declare-fun m!300427 () Bool)

(assert (=> b!245637 m!300427))

(declare-fun m!300429 () Bool)

(assert (=> b!245637 m!300429))

(declare-fun m!300431 () Bool)

(assert (=> b!245633 m!300431))

(declare-fun m!300433 () Bool)

(assert (=> b!245633 m!300433))

(declare-fun m!300435 () Bool)

(assert (=> b!245633 m!300435))

(declare-fun m!300437 () Bool)

(assert (=> b!245633 m!300437))

(declare-fun m!300439 () Bool)

(assert (=> b!245633 m!300439))

(declare-fun m!300441 () Bool)

(assert (=> b!245633 m!300441))

(declare-fun m!300443 () Bool)

(assert (=> b!245633 m!300443))

(declare-fun m!300445 () Bool)

(assert (=> b!245633 m!300445))

(declare-fun m!300447 () Bool)

(assert (=> b!245633 m!300447))

(assert (=> b!245633 m!300443))

(assert (=> b!245633 m!300439))

(declare-fun m!300449 () Bool)

(assert (=> b!245633 m!300449))

(declare-fun m!300451 () Bool)

(assert (=> b!245633 m!300451))

(assert (=> b!245633 m!300433))

(declare-fun m!300453 () Bool)

(assert (=> b!245633 m!300453))

(assert (=> b!245633 m!300449))

(declare-fun m!300455 () Bool)

(assert (=> b!245633 m!300455))

(declare-fun m!300457 () Bool)

(assert (=> b!245616 m!300457))

(declare-fun m!300459 () Bool)

(assert (=> b!245616 m!300459))

(declare-fun m!300461 () Bool)

(assert (=> b!245616 m!300461))

(declare-fun m!300463 () Bool)

(assert (=> b!245616 m!300463))

(declare-fun m!300465 () Bool)

(assert (=> b!245616 m!300465))

(declare-fun m!300467 () Bool)

(assert (=> b!245629 m!300467))

(declare-fun m!300469 () Bool)

(assert (=> b!245631 m!300469))

(assert (=> b!245631 m!300469))

(declare-fun m!300471 () Bool)

(assert (=> b!245631 m!300471))

(assert (=> b!245631 m!300471))

(declare-fun m!300473 () Bool)

(assert (=> b!245631 m!300473))

(declare-fun m!300475 () Bool)

(assert (=> b!245631 m!300475))

(declare-fun m!300477 () Bool)

(assert (=> b!245632 m!300477))

(check-sat (not b_next!9113) (not b!245629) (not b!245635) (not b!245623) (not b!245617) (not b_next!9123) (not b!245638) (not b!245633) (not b!245621) (not start!26002) (not b!245626) (not b!245632) b_and!18493 (not b!245614) (not b!245625) (not b!245631) (not b!245622) b_and!18485 (not b!245616) (not b!245637) (not b!245627) (not b_next!9117) (not b_next!9119) (not b!245639) (not b!245612) (not b!245634) b_and!18491 (not b!245630) (not b!245620) (not b!245628) (not b!245636) (not b!245615) (not b!245618) b_and!18495 (not b!245611) (not b!245609) (not b_next!9121) (not b_next!9115) (not b!245650) b_and!18489 b_and!18487)
(check-sat (not b_next!9113) b_and!18493 b_and!18485 (not b_next!9123) b_and!18491 b_and!18495 (not b_next!9117) (not b_next!9119) (not b_next!9121) (not b_next!9115) b_and!18489 b_and!18487)
(get-model)

(declare-fun d!69286 () Bool)

(declare-fun res!113659 () Bool)

(declare-fun e!152346 () Bool)

(assert (=> d!69286 (=> res!113659 e!152346)))

(assert (=> d!69286 (= res!113659 ((_ is Nil!3618) tokens!465))))

(assert (=> d!69286 (= (forall!841 tokens!465 lambda!8043) e!152346)))

(declare-fun b!245677 () Bool)

(declare-fun e!152347 () Bool)

(assert (=> b!245677 (= e!152346 e!152347)))

(declare-fun res!113660 () Bool)

(assert (=> b!245677 (=> (not res!113660) (not e!152347))))

(declare-fun dynLambda!1758 (Int Token!1114) Bool)

(assert (=> b!245677 (= res!113660 (dynLambda!1758 lambda!8043 (h!9015 tokens!465)))))

(declare-fun b!245678 () Bool)

(assert (=> b!245678 (= e!152347 (forall!841 (t!35112 tokens!465) lambda!8043))))

(assert (= (and d!69286 (not res!113659)) b!245677))

(assert (= (and b!245677 res!113660) b!245678))

(declare-fun b_lambda!7165 () Bool)

(assert (=> (not b_lambda!7165) (not b!245677)))

(declare-fun m!300493 () Bool)

(assert (=> b!245677 m!300493))

(declare-fun m!300495 () Bool)

(assert (=> b!245678 m!300495))

(assert (=> b!245614 d!69286))

(declare-fun b!245708 () Bool)

(declare-fun res!113683 () Bool)

(declare-fun e!152364 () Bool)

(assert (=> b!245708 (=> (not res!113683) (not e!152364))))

(declare-fun call!12858 () Bool)

(assert (=> b!245708 (= res!113683 (not call!12858))))

(declare-fun b!245709 () Bool)

(declare-fun e!152362 () Bool)

(declare-fun derivativeStep!123 (Regex!909 C!2740) Regex!909)

(declare-fun head!846 (List!3626) C!2740)

(declare-fun tail!445 (List!3626) List!3626)

(assert (=> b!245709 (= e!152362 (matchR!247 (derivativeStep!123 (regex!685 (rule!1262 (h!9015 tokens!465))) (head!846 lt!99544)) (tail!445 lt!99544)))))

(declare-fun bm!12853 () Bool)

(assert (=> bm!12853 (= call!12858 (isEmpty!2200 lt!99544))))

(declare-fun b!245710 () Bool)

(declare-fun res!113682 () Bool)

(declare-fun e!152363 () Bool)

(assert (=> b!245710 (=> res!113682 e!152363)))

(assert (=> b!245710 (= res!113682 e!152364)))

(declare-fun res!113680 () Bool)

(assert (=> b!245710 (=> (not res!113680) (not e!152364))))

(declare-fun lt!99561 () Bool)

(assert (=> b!245710 (= res!113680 lt!99561)))

(declare-fun b!245711 () Bool)

(assert (=> b!245711 (= e!152364 (= (head!846 lt!99544) (c!46909 (regex!685 (rule!1262 (h!9015 tokens!465))))))))

(declare-fun b!245712 () Bool)

(declare-fun e!152365 () Bool)

(declare-fun e!152367 () Bool)

(assert (=> b!245712 (= e!152365 e!152367)))

(declare-fun c!46924 () Bool)

(assert (=> b!245712 (= c!46924 ((_ is EmptyLang!909) (regex!685 (rule!1262 (h!9015 tokens!465)))))))

(declare-fun b!245713 () Bool)

(declare-fun res!113679 () Bool)

(assert (=> b!245713 (=> (not res!113679) (not e!152364))))

(assert (=> b!245713 (= res!113679 (isEmpty!2200 (tail!445 lt!99544)))))

(declare-fun b!245714 () Bool)

(declare-fun e!152368 () Bool)

(declare-fun e!152366 () Bool)

(assert (=> b!245714 (= e!152368 e!152366)))

(declare-fun res!113678 () Bool)

(assert (=> b!245714 (=> res!113678 e!152366)))

(assert (=> b!245714 (= res!113678 call!12858)))

(declare-fun b!245715 () Bool)

(assert (=> b!245715 (= e!152363 e!152368)))

(declare-fun res!113677 () Bool)

(assert (=> b!245715 (=> (not res!113677) (not e!152368))))

(assert (=> b!245715 (= res!113677 (not lt!99561))))

(declare-fun b!245716 () Bool)

(declare-fun res!113681 () Bool)

(assert (=> b!245716 (=> res!113681 e!152363)))

(assert (=> b!245716 (= res!113681 (not ((_ is ElementMatch!909) (regex!685 (rule!1262 (h!9015 tokens!465))))))))

(assert (=> b!245716 (= e!152367 e!152363)))

(declare-fun b!245717 () Bool)

(assert (=> b!245717 (= e!152365 (= lt!99561 call!12858))))

(declare-fun b!245707 () Bool)

(declare-fun res!113684 () Bool)

(assert (=> b!245707 (=> res!113684 e!152366)))

(assert (=> b!245707 (= res!113684 (not (isEmpty!2200 (tail!445 lt!99544))))))

(declare-fun d!69288 () Bool)

(assert (=> d!69288 e!152365))

(declare-fun c!46923 () Bool)

(assert (=> d!69288 (= c!46923 ((_ is EmptyExpr!909) (regex!685 (rule!1262 (h!9015 tokens!465)))))))

(assert (=> d!69288 (= lt!99561 e!152362)))

(declare-fun c!46925 () Bool)

(assert (=> d!69288 (= c!46925 (isEmpty!2200 lt!99544))))

(declare-fun validRegex!232 (Regex!909) Bool)

(assert (=> d!69288 (validRegex!232 (regex!685 (rule!1262 (h!9015 tokens!465))))))

(assert (=> d!69288 (= (matchR!247 (regex!685 (rule!1262 (h!9015 tokens!465))) lt!99544) lt!99561)))

(declare-fun b!245718 () Bool)

(assert (=> b!245718 (= e!152367 (not lt!99561))))

(declare-fun b!245719 () Bool)

(declare-fun nullable!157 (Regex!909) Bool)

(assert (=> b!245719 (= e!152362 (nullable!157 (regex!685 (rule!1262 (h!9015 tokens!465)))))))

(declare-fun b!245720 () Bool)

(assert (=> b!245720 (= e!152366 (not (= (head!846 lt!99544) (c!46909 (regex!685 (rule!1262 (h!9015 tokens!465)))))))))

(assert (= (and d!69288 c!46925) b!245719))

(assert (= (and d!69288 (not c!46925)) b!245709))

(assert (= (and d!69288 c!46923) b!245717))

(assert (= (and d!69288 (not c!46923)) b!245712))

(assert (= (and b!245712 c!46924) b!245718))

(assert (= (and b!245712 (not c!46924)) b!245716))

(assert (= (and b!245716 (not res!113681)) b!245710))

(assert (= (and b!245710 res!113680) b!245708))

(assert (= (and b!245708 res!113683) b!245713))

(assert (= (and b!245713 res!113679) b!245711))

(assert (= (and b!245710 (not res!113682)) b!245715))

(assert (= (and b!245715 res!113677) b!245714))

(assert (= (and b!245714 (not res!113678)) b!245707))

(assert (= (and b!245707 (not res!113684)) b!245720))

(assert (= (or b!245717 b!245708 b!245714) bm!12853))

(declare-fun m!300505 () Bool)

(assert (=> b!245711 m!300505))

(declare-fun m!300507 () Bool)

(assert (=> b!245707 m!300507))

(assert (=> b!245707 m!300507))

(declare-fun m!300509 () Bool)

(assert (=> b!245707 m!300509))

(assert (=> b!245713 m!300507))

(assert (=> b!245713 m!300507))

(assert (=> b!245713 m!300509))

(declare-fun m!300511 () Bool)

(assert (=> b!245719 m!300511))

(assert (=> b!245720 m!300505))

(declare-fun m!300513 () Bool)

(assert (=> d!69288 m!300513))

(declare-fun m!300515 () Bool)

(assert (=> d!69288 m!300515))

(assert (=> b!245709 m!300505))

(assert (=> b!245709 m!300505))

(declare-fun m!300517 () Bool)

(assert (=> b!245709 m!300517))

(assert (=> b!245709 m!300507))

(assert (=> b!245709 m!300517))

(assert (=> b!245709 m!300507))

(declare-fun m!300519 () Bool)

(assert (=> b!245709 m!300519))

(assert (=> bm!12853 m!300513))

(assert (=> b!245635 d!69288))

(declare-fun d!69294 () Bool)

(assert (=> d!69294 (= (get!1182 lt!99550) (v!14492 lt!99550))))

(assert (=> b!245637 d!69294))

(declare-fun d!69296 () Bool)

(declare-fun isEmpty!2203 (Option!732) Bool)

(assert (=> d!69296 (= (isDefined!583 lt!99550) (not (isEmpty!2203 lt!99550)))))

(declare-fun bs!26346 () Bool)

(assert (= bs!26346 d!69296))

(declare-fun m!300521 () Bool)

(assert (=> bs!26346 m!300521))

(assert (=> b!245637 d!69296))

(declare-fun b!245766 () Bool)

(declare-fun e!152394 () Option!732)

(declare-fun lt!99579 () Option!732)

(declare-fun lt!99580 () Option!732)

(assert (=> b!245766 (= e!152394 (ite (and ((_ is None!731) lt!99579) ((_ is None!731) lt!99580)) None!731 (ite ((_ is None!731) lt!99580) lt!99579 (ite ((_ is None!731) lt!99579) lt!99580 (ite (>= (size!2867 (_1!2226 (v!14492 lt!99579))) (size!2867 (_1!2226 (v!14492 lt!99580)))) lt!99579 lt!99580)))))))

(declare-fun call!12861 () Option!732)

(assert (=> b!245766 (= lt!99579 call!12861)))

(assert (=> b!245766 (= lt!99580 (maxPrefix!301 thiss!17480 (t!35111 rules!1920) lt!99544))))

(declare-fun b!245768 () Bool)

(declare-fun res!113726 () Bool)

(declare-fun e!152393 () Bool)

(assert (=> b!245768 (=> (not res!113726) (not e!152393))))

(declare-fun lt!99578 () Option!732)

(declare-fun size!2872 (List!3626) Int)

(assert (=> b!245768 (= res!113726 (< (size!2872 (_2!2226 (get!1182 lt!99578))) (size!2872 lt!99544)))))

(declare-fun b!245769 () Bool)

(declare-fun contains!666 (List!3627 Rule!1170) Bool)

(assert (=> b!245769 (= e!152393 (contains!666 rules!1920 (rule!1262 (_1!2226 (get!1182 lt!99578)))))))

(declare-fun b!245770 () Bool)

(declare-fun res!113721 () Bool)

(assert (=> b!245770 (=> (not res!113721) (not e!152393))))

(assert (=> b!245770 (= res!113721 (= (list!1420 (charsOf!340 (_1!2226 (get!1182 lt!99578)))) (originalCharacters!728 (_1!2226 (get!1182 lt!99578)))))))

(declare-fun bm!12856 () Bool)

(declare-fun maxPrefixOneRule!122 (LexerInterface!571 Rule!1170 List!3626) Option!732)

(assert (=> bm!12856 (= call!12861 (maxPrefixOneRule!122 thiss!17480 (h!9014 rules!1920) lt!99544))))

(declare-fun b!245771 () Bool)

(declare-fun e!152395 () Bool)

(assert (=> b!245771 (= e!152395 e!152393)))

(declare-fun res!113723 () Bool)

(assert (=> b!245771 (=> (not res!113723) (not e!152393))))

(assert (=> b!245771 (= res!113723 (isDefined!583 lt!99578))))

(declare-fun b!245772 () Bool)

(declare-fun res!113724 () Bool)

(assert (=> b!245772 (=> (not res!113724) (not e!152393))))

(declare-fun apply!677 (TokenValueInjection!1186 BalanceConc!2392) TokenValue!707)

(assert (=> b!245772 (= res!113724 (= (value!23838 (_1!2226 (get!1182 lt!99578))) (apply!677 (transformation!685 (rule!1262 (_1!2226 (get!1182 lt!99578)))) (seqFromList!747 (originalCharacters!728 (_1!2226 (get!1182 lt!99578)))))))))

(declare-fun d!69298 () Bool)

(assert (=> d!69298 e!152395))

(declare-fun res!113725 () Bool)

(assert (=> d!69298 (=> res!113725 e!152395)))

(assert (=> d!69298 (= res!113725 (isEmpty!2203 lt!99578))))

(assert (=> d!69298 (= lt!99578 e!152394)))

(declare-fun c!46931 () Bool)

(assert (=> d!69298 (= c!46931 (and ((_ is Cons!3617) rules!1920) ((_ is Nil!3617) (t!35111 rules!1920))))))

(declare-fun lt!99582 () Unit!4382)

(declare-fun lt!99581 () Unit!4382)

(assert (=> d!69298 (= lt!99582 lt!99581)))

(assert (=> d!69298 (isPrefix!369 lt!99544 lt!99544)))

(declare-fun lemmaIsPrefixRefl!189 (List!3626 List!3626) Unit!4382)

(assert (=> d!69298 (= lt!99581 (lemmaIsPrefixRefl!189 lt!99544 lt!99544))))

(assert (=> d!69298 (rulesValidInductive!178 thiss!17480 rules!1920)))

(assert (=> d!69298 (= (maxPrefix!301 thiss!17480 rules!1920 lt!99544) lt!99578)))

(declare-fun b!245767 () Bool)

(declare-fun res!113722 () Bool)

(assert (=> b!245767 (=> (not res!113722) (not e!152393))))

(assert (=> b!245767 (= res!113722 (= (++!922 (list!1420 (charsOf!340 (_1!2226 (get!1182 lt!99578)))) (_2!2226 (get!1182 lt!99578))) lt!99544))))

(declare-fun b!245773 () Bool)

(assert (=> b!245773 (= e!152394 call!12861)))

(declare-fun b!245774 () Bool)

(declare-fun res!113720 () Bool)

(assert (=> b!245774 (=> (not res!113720) (not e!152393))))

(assert (=> b!245774 (= res!113720 (matchR!247 (regex!685 (rule!1262 (_1!2226 (get!1182 lt!99578)))) (list!1420 (charsOf!340 (_1!2226 (get!1182 lt!99578))))))))

(assert (= (and d!69298 c!46931) b!245773))

(assert (= (and d!69298 (not c!46931)) b!245766))

(assert (= (or b!245773 b!245766) bm!12856))

(assert (= (and d!69298 (not res!113725)) b!245771))

(assert (= (and b!245771 res!113723) b!245770))

(assert (= (and b!245770 res!113721) b!245768))

(assert (= (and b!245768 res!113726) b!245767))

(assert (= (and b!245767 res!113722) b!245772))

(assert (= (and b!245772 res!113724) b!245774))

(assert (= (and b!245774 res!113720) b!245769))

(declare-fun m!300555 () Bool)

(assert (=> b!245772 m!300555))

(declare-fun m!300557 () Bool)

(assert (=> b!245772 m!300557))

(assert (=> b!245772 m!300557))

(declare-fun m!300559 () Bool)

(assert (=> b!245772 m!300559))

(assert (=> b!245770 m!300555))

(declare-fun m!300561 () Bool)

(assert (=> b!245770 m!300561))

(assert (=> b!245770 m!300561))

(declare-fun m!300563 () Bool)

(assert (=> b!245770 m!300563))

(declare-fun m!300565 () Bool)

(assert (=> d!69298 m!300565))

(declare-fun m!300567 () Bool)

(assert (=> d!69298 m!300567))

(declare-fun m!300569 () Bool)

(assert (=> d!69298 m!300569))

(assert (=> d!69298 m!300351))

(declare-fun m!300571 () Bool)

(assert (=> b!245766 m!300571))

(declare-fun m!300573 () Bool)

(assert (=> bm!12856 m!300573))

(assert (=> b!245768 m!300555))

(declare-fun m!300575 () Bool)

(assert (=> b!245768 m!300575))

(declare-fun m!300577 () Bool)

(assert (=> b!245768 m!300577))

(assert (=> b!245774 m!300555))

(assert (=> b!245774 m!300561))

(assert (=> b!245774 m!300561))

(assert (=> b!245774 m!300563))

(assert (=> b!245774 m!300563))

(declare-fun m!300579 () Bool)

(assert (=> b!245774 m!300579))

(declare-fun m!300581 () Bool)

(assert (=> b!245771 m!300581))

(assert (=> b!245767 m!300555))

(assert (=> b!245767 m!300561))

(assert (=> b!245767 m!300561))

(assert (=> b!245767 m!300563))

(assert (=> b!245767 m!300563))

(declare-fun m!300583 () Bool)

(assert (=> b!245767 m!300583))

(assert (=> b!245769 m!300555))

(declare-fun m!300585 () Bool)

(assert (=> b!245769 m!300585))

(assert (=> b!245637 d!69298))

(declare-fun d!69306 () Bool)

(assert (=> d!69306 (= (get!1182 lt!99546) (v!14492 lt!99546))))

(assert (=> b!245636 d!69306))

(declare-fun d!69308 () Bool)

(assert (=> d!69308 (= (head!844 tokens!465) (h!9015 tokens!465))))

(assert (=> b!245636 d!69308))

(declare-fun d!69310 () Bool)

(assert (=> d!69310 (= (inv!4466 (tag!893 (rule!1262 (h!9015 tokens!465)))) (= (mod (str.len (value!23837 (tag!893 (rule!1262 (h!9015 tokens!465))))) 2) 0))))

(assert (=> b!245615 d!69310))

(declare-fun d!69314 () Bool)

(declare-fun res!113735 () Bool)

(declare-fun e!152404 () Bool)

(assert (=> d!69314 (=> (not res!113735) (not e!152404))))

(declare-fun semiInverseModEq!230 (Int Int) Bool)

(assert (=> d!69314 (= res!113735 (semiInverseModEq!230 (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))) (toValue!1388 (transformation!685 (rule!1262 (h!9015 tokens!465))))))))

(assert (=> d!69314 (= (inv!4469 (transformation!685 (rule!1262 (h!9015 tokens!465)))) e!152404)))

(declare-fun b!245789 () Bool)

(declare-fun equivClasses!213 (Int Int) Bool)

(assert (=> b!245789 (= e!152404 (equivClasses!213 (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))) (toValue!1388 (transformation!685 (rule!1262 (h!9015 tokens!465))))))))

(assert (= (and d!69314 res!113735) b!245789))

(declare-fun m!300599 () Bool)

(assert (=> d!69314 m!300599))

(declare-fun m!300601 () Bool)

(assert (=> b!245789 m!300601))

(assert (=> b!245615 d!69314))

(declare-fun d!69316 () Bool)

(assert (=> d!69316 (= (inv!4466 (tag!893 (rule!1262 separatorToken!170))) (= (mod (str.len (value!23837 (tag!893 (rule!1262 separatorToken!170)))) 2) 0))))

(assert (=> b!245638 d!69316))

(declare-fun d!69318 () Bool)

(declare-fun res!113736 () Bool)

(declare-fun e!152405 () Bool)

(assert (=> d!69318 (=> (not res!113736) (not e!152405))))

(assert (=> d!69318 (= res!113736 (semiInverseModEq!230 (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))) (toValue!1388 (transformation!685 (rule!1262 separatorToken!170)))))))

(assert (=> d!69318 (= (inv!4469 (transformation!685 (rule!1262 separatorToken!170))) e!152405)))

(declare-fun b!245790 () Bool)

(assert (=> b!245790 (= e!152405 (equivClasses!213 (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))) (toValue!1388 (transformation!685 (rule!1262 separatorToken!170)))))))

(assert (= (and d!69318 res!113736) b!245790))

(declare-fun m!300603 () Bool)

(assert (=> d!69318 m!300603))

(declare-fun m!300605 () Bool)

(assert (=> b!245790 m!300605))

(assert (=> b!245638 d!69318))

(declare-fun d!69320 () Bool)

(declare-fun res!113739 () Bool)

(declare-fun e!152408 () Bool)

(assert (=> d!69320 (=> (not res!113739) (not e!152408))))

(declare-fun rulesValid!196 (LexerInterface!571 List!3627) Bool)

(assert (=> d!69320 (= res!113739 (rulesValid!196 thiss!17480 rules!1920))))

(assert (=> d!69320 (= (rulesInvariant!537 thiss!17480 rules!1920) e!152408)))

(declare-fun b!245793 () Bool)

(declare-datatypes ((List!3629 0))(
  ( (Nil!3619) (Cons!3619 (h!9016 String!4615) (t!35177 List!3629)) )
))
(declare-fun noDuplicateTag!196 (LexerInterface!571 List!3627 List!3629) Bool)

(assert (=> b!245793 (= e!152408 (noDuplicateTag!196 thiss!17480 rules!1920 Nil!3619))))

(assert (= (and d!69320 res!113739) b!245793))

(declare-fun m!300607 () Bool)

(assert (=> d!69320 m!300607))

(declare-fun m!300609 () Bool)

(assert (=> b!245793 m!300609))

(assert (=> b!245617 d!69320))

(declare-fun d!69322 () Bool)

(declare-fun lt!99606 () BalanceConc!2392)

(declare-fun printListTailRec!108 (LexerInterface!571 List!3628 List!3626) List!3626)

(declare-fun dropList!140 (BalanceConc!2394 Int) List!3628)

(assert (=> d!69322 (= (list!1420 lt!99606) (printListTailRec!108 thiss!17480 (dropList!140 lt!99548 0) (list!1420 (BalanceConc!2393 Empty!1192))))))

(declare-fun e!152414 () BalanceConc!2392)

(assert (=> d!69322 (= lt!99606 e!152414)))

(declare-fun c!46937 () Bool)

(declare-fun size!2873 (BalanceConc!2394) Int)

(assert (=> d!69322 (= c!46937 (>= 0 (size!2873 lt!99548)))))

(declare-fun e!152413 () Bool)

(assert (=> d!69322 e!152413))

(declare-fun res!113742 () Bool)

(assert (=> d!69322 (=> (not res!113742) (not e!152413))))

(assert (=> d!69322 (= res!113742 (>= 0 0))))

(assert (=> d!69322 (= (printTailRec!265 thiss!17480 lt!99548 0 (BalanceConc!2393 Empty!1192)) lt!99606)))

(declare-fun b!245800 () Bool)

(assert (=> b!245800 (= e!152413 (<= 0 (size!2873 lt!99548)))))

(declare-fun b!245801 () Bool)

(assert (=> b!245801 (= e!152414 (BalanceConc!2393 Empty!1192))))

(declare-fun b!245802 () Bool)

(declare-fun ++!924 (BalanceConc!2392 BalanceConc!2392) BalanceConc!2392)

(declare-fun apply!678 (BalanceConc!2394 Int) Token!1114)

(assert (=> b!245802 (= e!152414 (printTailRec!265 thiss!17480 lt!99548 (+ 0 1) (++!924 (BalanceConc!2393 Empty!1192) (charsOf!340 (apply!678 lt!99548 0)))))))

(declare-fun lt!99603 () List!3628)

(assert (=> b!245802 (= lt!99603 (list!1421 lt!99548))))

(declare-fun lt!99604 () Unit!4382)

(declare-fun lemmaDropApply!180 (List!3628 Int) Unit!4382)

(assert (=> b!245802 (= lt!99604 (lemmaDropApply!180 lt!99603 0))))

(declare-fun drop!193 (List!3628 Int) List!3628)

(declare-fun apply!679 (List!3628 Int) Token!1114)

(assert (=> b!245802 (= (head!844 (drop!193 lt!99603 0)) (apply!679 lt!99603 0))))

(declare-fun lt!99608 () Unit!4382)

(assert (=> b!245802 (= lt!99608 lt!99604)))

(declare-fun lt!99605 () List!3628)

(assert (=> b!245802 (= lt!99605 (list!1421 lt!99548))))

(declare-fun lt!99609 () Unit!4382)

(declare-fun lemmaDropTail!172 (List!3628 Int) Unit!4382)

(assert (=> b!245802 (= lt!99609 (lemmaDropTail!172 lt!99605 0))))

(declare-fun tail!446 (List!3628) List!3628)

(assert (=> b!245802 (= (tail!446 (drop!193 lt!99605 0)) (drop!193 lt!99605 (+ 0 1)))))

(declare-fun lt!99607 () Unit!4382)

(assert (=> b!245802 (= lt!99607 lt!99609)))

(assert (= (and d!69322 res!113742) b!245800))

(assert (= (and d!69322 c!46937) b!245801))

(assert (= (and d!69322 (not c!46937)) b!245802))

(declare-fun m!300611 () Bool)

(assert (=> d!69322 m!300611))

(declare-fun m!300613 () Bool)

(assert (=> d!69322 m!300613))

(declare-fun m!300615 () Bool)

(assert (=> d!69322 m!300615))

(declare-fun m!300617 () Bool)

(assert (=> d!69322 m!300617))

(assert (=> d!69322 m!300615))

(assert (=> d!69322 m!300611))

(declare-fun m!300619 () Bool)

(assert (=> d!69322 m!300619))

(assert (=> b!245800 m!300613))

(declare-fun m!300621 () Bool)

(assert (=> b!245802 m!300621))

(declare-fun m!300623 () Bool)

(assert (=> b!245802 m!300623))

(declare-fun m!300625 () Bool)

(assert (=> b!245802 m!300625))

(declare-fun m!300627 () Bool)

(assert (=> b!245802 m!300627))

(assert (=> b!245802 m!300627))

(declare-fun m!300629 () Bool)

(assert (=> b!245802 m!300629))

(declare-fun m!300631 () Bool)

(assert (=> b!245802 m!300631))

(declare-fun m!300633 () Bool)

(assert (=> b!245802 m!300633))

(declare-fun m!300635 () Bool)

(assert (=> b!245802 m!300635))

(declare-fun m!300637 () Bool)

(assert (=> b!245802 m!300637))

(declare-fun m!300639 () Bool)

(assert (=> b!245802 m!300639))

(assert (=> b!245802 m!300637))

(assert (=> b!245802 m!300623))

(declare-fun m!300641 () Bool)

(assert (=> b!245802 m!300641))

(declare-fun m!300643 () Bool)

(assert (=> b!245802 m!300643))

(assert (=> b!245802 m!300635))

(assert (=> b!245802 m!300641))

(declare-fun m!300645 () Bool)

(assert (=> b!245802 m!300645))

(assert (=> b!245616 d!69322))

(declare-fun d!69324 () Bool)

(declare-fun lt!99612 () BalanceConc!2392)

(assert (=> d!69324 (= (list!1420 lt!99612) (printList!255 thiss!17480 (list!1421 lt!99548)))))

(assert (=> d!69324 (= lt!99612 (printTailRec!265 thiss!17480 lt!99548 0 (BalanceConc!2393 Empty!1192)))))

(assert (=> d!69324 (= (print!302 thiss!17480 lt!99548) lt!99612)))

(declare-fun bs!26348 () Bool)

(assert (= bs!26348 d!69324))

(declare-fun m!300647 () Bool)

(assert (=> bs!26348 m!300647))

(assert (=> bs!26348 m!300633))

(assert (=> bs!26348 m!300633))

(declare-fun m!300649 () Bool)

(assert (=> bs!26348 m!300649))

(assert (=> bs!26348 m!300461))

(assert (=> b!245616 d!69324))

(declare-fun d!69326 () Bool)

(declare-fun list!1424 (Conc!1192) List!3626)

(assert (=> d!69326 (= (list!1420 lt!99549) (list!1424 (c!46908 lt!99549)))))

(declare-fun bs!26349 () Bool)

(assert (= bs!26349 d!69326))

(declare-fun m!300651 () Bool)

(assert (=> bs!26349 m!300651))

(assert (=> b!245616 d!69326))

(declare-fun d!69328 () Bool)

(declare-fun e!152417 () Bool)

(assert (=> d!69328 e!152417))

(declare-fun res!113745 () Bool)

(assert (=> d!69328 (=> (not res!113745) (not e!152417))))

(declare-fun lt!99615 () BalanceConc!2394)

(assert (=> d!69328 (= res!113745 (= (list!1421 lt!99615) (Cons!3618 (h!9015 tokens!465) Nil!3618)))))

(declare-fun singleton!89 (Token!1114) BalanceConc!2394)

(assert (=> d!69328 (= lt!99615 (singleton!89 (h!9015 tokens!465)))))

(assert (=> d!69328 (= (singletonSeq!237 (h!9015 tokens!465)) lt!99615)))

(declare-fun b!245805 () Bool)

(declare-fun isBalanced!310 (Conc!1193) Bool)

(assert (=> b!245805 (= e!152417 (isBalanced!310 (c!46910 lt!99615)))))

(assert (= (and d!69328 res!113745) b!245805))

(declare-fun m!300653 () Bool)

(assert (=> d!69328 m!300653))

(declare-fun m!300655 () Bool)

(assert (=> d!69328 m!300655))

(declare-fun m!300657 () Bool)

(assert (=> b!245805 m!300657))

(assert (=> b!245616 d!69328))

(declare-fun d!69330 () Bool)

(declare-fun c!46940 () Bool)

(assert (=> d!69330 (= c!46940 ((_ is Cons!3618) (Cons!3618 (h!9015 tokens!465) Nil!3618)))))

(declare-fun e!152420 () List!3626)

(assert (=> d!69330 (= (printList!255 thiss!17480 (Cons!3618 (h!9015 tokens!465) Nil!3618)) e!152420)))

(declare-fun b!245810 () Bool)

(assert (=> b!245810 (= e!152420 (++!922 (list!1420 (charsOf!340 (h!9015 (Cons!3618 (h!9015 tokens!465) Nil!3618)))) (printList!255 thiss!17480 (t!35112 (Cons!3618 (h!9015 tokens!465) Nil!3618)))))))

(declare-fun b!245811 () Bool)

(assert (=> b!245811 (= e!152420 Nil!3616)))

(assert (= (and d!69330 c!46940) b!245810))

(assert (= (and d!69330 (not c!46940)) b!245811))

(declare-fun m!300659 () Bool)

(assert (=> b!245810 m!300659))

(assert (=> b!245810 m!300659))

(declare-fun m!300661 () Bool)

(assert (=> b!245810 m!300661))

(declare-fun m!300663 () Bool)

(assert (=> b!245810 m!300663))

(assert (=> b!245810 m!300661))

(assert (=> b!245810 m!300663))

(declare-fun m!300665 () Bool)

(assert (=> b!245810 m!300665))

(assert (=> b!245616 d!69330))

(declare-fun d!69332 () Bool)

(declare-fun e!152426 () Bool)

(assert (=> d!69332 e!152426))

(declare-fun res!113750 () Bool)

(assert (=> d!69332 (=> (not res!113750) (not e!152426))))

(declare-fun lt!99618 () List!3626)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!502 (List!3626) (InoxSet C!2740))

(assert (=> d!69332 (= res!113750 (= (content!502 lt!99618) ((_ map or) (content!502 lt!99544) (content!502 lt!99534))))))

(declare-fun e!152425 () List!3626)

(assert (=> d!69332 (= lt!99618 e!152425)))

(declare-fun c!46943 () Bool)

(assert (=> d!69332 (= c!46943 ((_ is Nil!3616) lt!99544))))

(assert (=> d!69332 (= (++!922 lt!99544 lt!99534) lt!99618)))

(declare-fun b!245820 () Bool)

(assert (=> b!245820 (= e!152425 lt!99534)))

(declare-fun b!245821 () Bool)

(assert (=> b!245821 (= e!152425 (Cons!3616 (h!9013 lt!99544) (++!922 (t!35110 lt!99544) lt!99534)))))

(declare-fun b!245823 () Bool)

(assert (=> b!245823 (= e!152426 (or (not (= lt!99534 Nil!3616)) (= lt!99618 lt!99544)))))

(declare-fun b!245822 () Bool)

(declare-fun res!113751 () Bool)

(assert (=> b!245822 (=> (not res!113751) (not e!152426))))

(assert (=> b!245822 (= res!113751 (= (size!2872 lt!99618) (+ (size!2872 lt!99544) (size!2872 lt!99534))))))

(assert (= (and d!69332 c!46943) b!245820))

(assert (= (and d!69332 (not c!46943)) b!245821))

(assert (= (and d!69332 res!113750) b!245822))

(assert (= (and b!245822 res!113751) b!245823))

(declare-fun m!300667 () Bool)

(assert (=> d!69332 m!300667))

(declare-fun m!300669 () Bool)

(assert (=> d!69332 m!300669))

(declare-fun m!300671 () Bool)

(assert (=> d!69332 m!300671))

(declare-fun m!300673 () Bool)

(assert (=> b!245821 m!300673))

(declare-fun m!300675 () Bool)

(assert (=> b!245822 m!300675))

(assert (=> b!245822 m!300577))

(declare-fun m!300677 () Bool)

(assert (=> b!245822 m!300677))

(assert (=> b!245618 d!69332))

(declare-fun d!69334 () Bool)

(declare-fun lt!99629 () Bool)

(declare-fun e!152443 () Bool)

(assert (=> d!69334 (= lt!99629 e!152443)))

(declare-fun res!113771 () Bool)

(assert (=> d!69334 (=> (not res!113771) (not e!152443))))

(assert (=> d!69334 (= res!113771 (= (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 (print!302 thiss!17480 (singletonSeq!237 separatorToken!170))))) (list!1421 (singletonSeq!237 separatorToken!170))))))

(declare-fun e!152444 () Bool)

(assert (=> d!69334 (= lt!99629 e!152444)))

(declare-fun res!113770 () Bool)

(assert (=> d!69334 (=> (not res!113770) (not e!152444))))

(declare-fun lt!99630 () tuple2!4018)

(assert (=> d!69334 (= res!113770 (= (size!2873 (_1!2225 lt!99630)) 1))))

(assert (=> d!69334 (= lt!99630 (lex!371 thiss!17480 rules!1920 (print!302 thiss!17480 (singletonSeq!237 separatorToken!170))))))

(assert (=> d!69334 (not (isEmpty!2198 rules!1920))))

(assert (=> d!69334 (= (rulesProduceIndividualToken!320 thiss!17480 rules!1920 separatorToken!170) lt!99629)))

(declare-fun b!245844 () Bool)

(declare-fun res!113772 () Bool)

(assert (=> b!245844 (=> (not res!113772) (not e!152444))))

(assert (=> b!245844 (= res!113772 (= (apply!678 (_1!2225 lt!99630) 0) separatorToken!170))))

(declare-fun b!245845 () Bool)

(declare-fun isEmpty!2205 (BalanceConc!2392) Bool)

(assert (=> b!245845 (= e!152444 (isEmpty!2205 (_2!2225 lt!99630)))))

(declare-fun b!245846 () Bool)

(assert (=> b!245846 (= e!152443 (isEmpty!2205 (_2!2225 (lex!371 thiss!17480 rules!1920 (print!302 thiss!17480 (singletonSeq!237 separatorToken!170))))))))

(assert (= (and d!69334 res!113770) b!245844))

(assert (= (and b!245844 res!113772) b!245845))

(assert (= (and d!69334 res!113771) b!245846))

(assert (=> d!69334 m!300401))

(declare-fun m!300695 () Bool)

(assert (=> d!69334 m!300695))

(assert (=> d!69334 m!300695))

(declare-fun m!300697 () Bool)

(assert (=> d!69334 m!300697))

(declare-fun m!300699 () Bool)

(assert (=> d!69334 m!300699))

(assert (=> d!69334 m!300695))

(declare-fun m!300701 () Bool)

(assert (=> d!69334 m!300701))

(declare-fun m!300703 () Bool)

(assert (=> d!69334 m!300703))

(assert (=> d!69334 m!300701))

(declare-fun m!300705 () Bool)

(assert (=> d!69334 m!300705))

(declare-fun m!300707 () Bool)

(assert (=> b!245844 m!300707))

(declare-fun m!300709 () Bool)

(assert (=> b!245845 m!300709))

(assert (=> b!245846 m!300695))

(assert (=> b!245846 m!300695))

(assert (=> b!245846 m!300701))

(assert (=> b!245846 m!300701))

(assert (=> b!245846 m!300705))

(declare-fun m!300711 () Bool)

(assert (=> b!245846 m!300711))

(assert (=> b!245639 d!69334))

(declare-fun d!69342 () Bool)

(assert (=> d!69342 true))

(declare-fun lt!99633 () Bool)

(declare-fun lambda!8053 () Int)

(declare-fun forall!844 (List!3627 Int) Bool)

(assert (=> d!69342 (= lt!99633 (forall!844 rules!1920 lambda!8053))))

(declare-fun e!152450 () Bool)

(assert (=> d!69342 (= lt!99633 e!152450)))

(declare-fun res!113777 () Bool)

(assert (=> d!69342 (=> res!113777 e!152450)))

(assert (=> d!69342 (= res!113777 (not ((_ is Cons!3617) rules!1920)))))

(assert (=> d!69342 (= (rulesValidInductive!178 thiss!17480 rules!1920) lt!99633)))

(declare-fun b!245851 () Bool)

(declare-fun e!152449 () Bool)

(assert (=> b!245851 (= e!152450 e!152449)))

(declare-fun res!113778 () Bool)

(assert (=> b!245851 (=> (not res!113778) (not e!152449))))

(declare-fun ruleValid!84 (LexerInterface!571 Rule!1170) Bool)

(assert (=> b!245851 (= res!113778 (ruleValid!84 thiss!17480 (h!9014 rules!1920)))))

(declare-fun b!245852 () Bool)

(assert (=> b!245852 (= e!152449 (rulesValidInductive!178 thiss!17480 (t!35111 rules!1920)))))

(assert (= (and d!69342 (not res!113777)) b!245851))

(assert (= (and b!245851 res!113778) b!245852))

(declare-fun m!300713 () Bool)

(assert (=> d!69342 m!300713))

(declare-fun m!300715 () Bool)

(assert (=> b!245851 m!300715))

(declare-fun m!300717 () Bool)

(assert (=> b!245852 m!300717))

(assert (=> b!245621 d!69342))

(declare-fun bs!26356 () Bool)

(declare-fun d!69344 () Bool)

(assert (= bs!26356 (and d!69344 b!245614)))

(declare-fun lambda!8061 () Int)

(assert (=> bs!26356 (= lambda!8061 lambda!8043)))

(declare-fun bs!26357 () Bool)

(assert (= bs!26357 (and d!69344 b!245631)))

(assert (=> bs!26357 (not (= lambda!8061 lambda!8044))))

(assert (=> d!69344 (= (filter!67 (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!254 thiss!17480 rules!1920 (seqFromList!748 (t!35112 tokens!465)) separatorToken!170 0)))) lambda!8061) (t!35112 tokens!465))))

(declare-fun lt!99653 () Unit!4382)

(declare-fun choose!2323 (LexerInterface!571 List!3627 List!3628 Token!1114) Unit!4382)

(assert (=> d!69344 (= lt!99653 (choose!2323 thiss!17480 rules!1920 (t!35112 tokens!465) separatorToken!170))))

(assert (=> d!69344 (not (isEmpty!2198 rules!1920))))

(assert (=> d!69344 (= (theoremInvertabilityFromTokensSepTokenWhenNeeded!58 thiss!17480 rules!1920 (t!35112 tokens!465) separatorToken!170) lt!99653)))

(declare-fun bs!26358 () Bool)

(assert (= bs!26358 d!69344))

(assert (=> bs!26358 m!300433))

(declare-fun m!300743 () Bool)

(assert (=> bs!26358 m!300743))

(assert (=> bs!26358 m!300401))

(assert (=> bs!26358 m!300743))

(declare-fun m!300745 () Bool)

(assert (=> bs!26358 m!300745))

(assert (=> bs!26358 m!300453))

(declare-fun m!300747 () Bool)

(assert (=> bs!26358 m!300747))

(declare-fun m!300749 () Bool)

(assert (=> bs!26358 m!300749))

(assert (=> bs!26358 m!300433))

(assert (=> bs!26358 m!300453))

(assert (=> b!245621 d!69344))

(declare-fun b!245905 () Bool)

(declare-fun res!113815 () Bool)

(declare-fun e!152487 () Bool)

(assert (=> b!245905 (=> (not res!113815) (not e!152487))))

(assert (=> b!245905 (= res!113815 (= (head!846 lt!99544) (head!846 (++!922 lt!99544 lt!99534))))))

(declare-fun b!245907 () Bool)

(declare-fun e!152488 () Bool)

(assert (=> b!245907 (= e!152488 (>= (size!2872 (++!922 lt!99544 lt!99534)) (size!2872 lt!99544)))))

(declare-fun b!245904 () Bool)

(declare-fun e!152489 () Bool)

(assert (=> b!245904 (= e!152489 e!152487)))

(declare-fun res!113817 () Bool)

(assert (=> b!245904 (=> (not res!113817) (not e!152487))))

(assert (=> b!245904 (= res!113817 (not ((_ is Nil!3616) (++!922 lt!99544 lt!99534))))))

(declare-fun d!69354 () Bool)

(assert (=> d!69354 e!152488))

(declare-fun res!113816 () Bool)

(assert (=> d!69354 (=> res!113816 e!152488)))

(declare-fun lt!99663 () Bool)

(assert (=> d!69354 (= res!113816 (not lt!99663))))

(assert (=> d!69354 (= lt!99663 e!152489)))

(declare-fun res!113814 () Bool)

(assert (=> d!69354 (=> res!113814 e!152489)))

(assert (=> d!69354 (= res!113814 ((_ is Nil!3616) lt!99544))))

(assert (=> d!69354 (= (isPrefix!369 lt!99544 (++!922 lt!99544 lt!99534)) lt!99663)))

(declare-fun b!245906 () Bool)

(assert (=> b!245906 (= e!152487 (isPrefix!369 (tail!445 lt!99544) (tail!445 (++!922 lt!99544 lt!99534))))))

(assert (= (and d!69354 (not res!113814)) b!245904))

(assert (= (and b!245904 res!113817) b!245905))

(assert (= (and b!245905 res!113815) b!245906))

(assert (= (and d!69354 (not res!113816)) b!245907))

(assert (=> b!245905 m!300505))

(assert (=> b!245905 m!300359))

(declare-fun m!300779 () Bool)

(assert (=> b!245905 m!300779))

(assert (=> b!245907 m!300359))

(declare-fun m!300781 () Bool)

(assert (=> b!245907 m!300781))

(assert (=> b!245907 m!300577))

(assert (=> b!245906 m!300507))

(assert (=> b!245906 m!300359))

(declare-fun m!300783 () Bool)

(assert (=> b!245906 m!300783))

(assert (=> b!245906 m!300507))

(assert (=> b!245906 m!300783))

(declare-fun m!300785 () Bool)

(assert (=> b!245906 m!300785))

(assert (=> b!245621 d!69354))

(declare-fun d!69360 () Bool)

(assert (=> d!69360 (= (isEmpty!2197 tokens!465) ((_ is Nil!3618) tokens!465))))

(assert (=> b!245621 d!69360))

(declare-fun d!69362 () Bool)

(declare-fun list!1425 (Conc!1193) List!3628)

(assert (=> d!69362 (= (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 lt!99532))) (list!1425 (c!46910 (_1!2225 (lex!371 thiss!17480 rules!1920 lt!99532)))))))

(declare-fun bs!26360 () Bool)

(assert (= bs!26360 d!69362))

(declare-fun m!300787 () Bool)

(assert (=> bs!26360 m!300787))

(assert (=> b!245621 d!69362))

(declare-fun d!69364 () Bool)

(declare-fun e!152504 () Bool)

(assert (=> d!69364 e!152504))

(declare-fun res!113834 () Bool)

(assert (=> d!69364 (=> res!113834 e!152504)))

(assert (=> d!69364 (= res!113834 (isEmpty!2197 tokens!465))))

(declare-fun lt!99675 () Unit!4382)

(declare-fun choose!2324 (LexerInterface!571 List!3627 List!3628 Token!1114) Unit!4382)

(assert (=> d!69364 (= lt!99675 (choose!2324 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!69364 (not (isEmpty!2198 rules!1920))))

(assert (=> d!69364 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!140 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!99675)))

(declare-fun b!245924 () Bool)

(declare-fun e!152503 () Bool)

(assert (=> b!245924 (= e!152504 e!152503)))

(declare-fun res!113835 () Bool)

(assert (=> b!245924 (=> (not res!113835) (not e!152503))))

(assert (=> b!245924 (= res!113835 (isDefined!583 (maxPrefix!301 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!264 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!245925 () Bool)

(assert (=> b!245925 (= e!152503 (= (_1!2226 (get!1182 (maxPrefix!301 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!264 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!844 tokens!465)))))

(assert (= (and d!69364 (not res!113834)) b!245924))

(assert (= (and b!245924 res!113835) b!245925))

(assert (=> d!69364 m!300367))

(declare-fun m!300817 () Bool)

(assert (=> d!69364 m!300817))

(assert (=> d!69364 m!300401))

(assert (=> b!245924 m!300395))

(assert (=> b!245924 m!300395))

(declare-fun m!300819 () Bool)

(assert (=> b!245924 m!300819))

(assert (=> b!245924 m!300819))

(declare-fun m!300821 () Bool)

(assert (=> b!245924 m!300821))

(assert (=> b!245925 m!300395))

(assert (=> b!245925 m!300395))

(assert (=> b!245925 m!300819))

(assert (=> b!245925 m!300819))

(declare-fun m!300823 () Bool)

(assert (=> b!245925 m!300823))

(assert (=> b!245925 m!300399))

(assert (=> b!245621 d!69364))

(declare-fun b!245936 () Bool)

(declare-fun e!152511 () Bool)

(declare-fun e!152513 () Bool)

(assert (=> b!245936 (= e!152511 e!152513)))

(declare-fun res!113842 () Bool)

(declare-fun lt!99678 () tuple2!4018)

(declare-fun size!2874 (BalanceConc!2392) Int)

(assert (=> b!245936 (= res!113842 (< (size!2874 (_2!2225 lt!99678)) (size!2874 lt!99532)))))

(assert (=> b!245936 (=> (not res!113842) (not e!152513))))

(declare-fun b!245937 () Bool)

(declare-fun res!113843 () Bool)

(declare-fun e!152512 () Bool)

(assert (=> b!245937 (=> (not res!113843) (not e!152512))))

(declare-datatypes ((tuple2!4026 0))(
  ( (tuple2!4027 (_1!2229 List!3628) (_2!2229 List!3626)) )
))
(declare-fun lexList!185 (LexerInterface!571 List!3627 List!3626) tuple2!4026)

(assert (=> b!245937 (= res!113843 (= (list!1421 (_1!2225 lt!99678)) (_1!2229 (lexList!185 thiss!17480 rules!1920 (list!1420 lt!99532)))))))

(declare-fun b!245938 () Bool)

(assert (=> b!245938 (= e!152513 (not (isEmpty!2199 (_1!2225 lt!99678))))))

(declare-fun b!245939 () Bool)

(assert (=> b!245939 (= e!152511 (= (_2!2225 lt!99678) lt!99532))))

(declare-fun b!245940 () Bool)

(assert (=> b!245940 (= e!152512 (= (list!1420 (_2!2225 lt!99678)) (_2!2229 (lexList!185 thiss!17480 rules!1920 (list!1420 lt!99532)))))))

(declare-fun d!69372 () Bool)

(assert (=> d!69372 e!152512))

(declare-fun res!113844 () Bool)

(assert (=> d!69372 (=> (not res!113844) (not e!152512))))

(assert (=> d!69372 (= res!113844 e!152511)))

(declare-fun c!46949 () Bool)

(assert (=> d!69372 (= c!46949 (> (size!2873 (_1!2225 lt!99678)) 0))))

(declare-fun lexTailRecV2!152 (LexerInterface!571 List!3627 BalanceConc!2392 BalanceConc!2392 BalanceConc!2392 BalanceConc!2394) tuple2!4018)

(assert (=> d!69372 (= lt!99678 (lexTailRecV2!152 thiss!17480 rules!1920 lt!99532 (BalanceConc!2393 Empty!1192) lt!99532 (BalanceConc!2395 Empty!1193)))))

(assert (=> d!69372 (= (lex!371 thiss!17480 rules!1920 lt!99532) lt!99678)))

(assert (= (and d!69372 c!46949) b!245936))

(assert (= (and d!69372 (not c!46949)) b!245939))

(assert (= (and b!245936 res!113842) b!245938))

(assert (= (and d!69372 res!113844) b!245937))

(assert (= (and b!245937 res!113843) b!245940))

(declare-fun m!300825 () Bool)

(assert (=> b!245936 m!300825))

(declare-fun m!300827 () Bool)

(assert (=> b!245936 m!300827))

(declare-fun m!300829 () Bool)

(assert (=> b!245937 m!300829))

(assert (=> b!245937 m!300447))

(assert (=> b!245937 m!300447))

(declare-fun m!300831 () Bool)

(assert (=> b!245937 m!300831))

(declare-fun m!300833 () Bool)

(assert (=> b!245938 m!300833))

(declare-fun m!300835 () Bool)

(assert (=> b!245940 m!300835))

(assert (=> b!245940 m!300447))

(assert (=> b!245940 m!300447))

(assert (=> b!245940 m!300831))

(declare-fun m!300837 () Bool)

(assert (=> d!69372 m!300837))

(declare-fun m!300839 () Bool)

(assert (=> d!69372 m!300839))

(assert (=> b!245621 d!69372))

(assert (=> b!245621 d!69332))

(declare-fun b!245953 () Bool)

(declare-fun e!152522 () Bool)

(declare-fun lt!99681 () List!3628)

(assert (=> b!245953 (= e!152522 (forall!841 lt!99681 lambda!8043))))

(declare-fun bm!12862 () Bool)

(declare-fun call!12867 () List!3628)

(assert (=> bm!12862 (= call!12867 (filter!67 (t!35112 (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 lt!99532)))) lambda!8043))))

(declare-fun b!245954 () Bool)

(declare-fun e!152521 () List!3628)

(assert (=> b!245954 (= e!152521 call!12867)))

(declare-fun d!69374 () Bool)

(assert (=> d!69374 e!152522))

(declare-fun res!113849 () Bool)

(assert (=> d!69374 (=> (not res!113849) (not e!152522))))

(declare-fun size!2875 (List!3628) Int)

(assert (=> d!69374 (= res!113849 (<= (size!2875 lt!99681) (size!2875 (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 lt!99532))))))))

(declare-fun e!152520 () List!3628)

(assert (=> d!69374 (= lt!99681 e!152520)))

(declare-fun c!46954 () Bool)

(assert (=> d!69374 (= c!46954 ((_ is Nil!3618) (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 lt!99532)))))))

(assert (=> d!69374 (= (filter!67 (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 lt!99532))) lambda!8043) lt!99681)))

(declare-fun b!245955 () Bool)

(assert (=> b!245955 (= e!152520 Nil!3618)))

(declare-fun b!245956 () Bool)

(assert (=> b!245956 (= e!152521 (Cons!3618 (h!9015 (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 lt!99532)))) call!12867))))

(declare-fun b!245957 () Bool)

(declare-fun res!113850 () Bool)

(assert (=> b!245957 (=> (not res!113850) (not e!152522))))

(declare-fun content!503 (List!3628) (InoxSet Token!1114))

(assert (=> b!245957 (= res!113850 (= ((_ map implies) (content!503 lt!99681) (content!503 (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 lt!99532))))) ((as const (InoxSet Token!1114)) true)))))

(declare-fun b!245958 () Bool)

(assert (=> b!245958 (= e!152520 e!152521)))

(declare-fun c!46955 () Bool)

(assert (=> b!245958 (= c!46955 (dynLambda!1758 lambda!8043 (h!9015 (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 lt!99532))))))))

(assert (= (and d!69374 c!46954) b!245955))

(assert (= (and d!69374 (not c!46954)) b!245958))

(assert (= (and b!245958 c!46955) b!245956))

(assert (= (and b!245958 (not c!46955)) b!245954))

(assert (= (or b!245956 b!245954) bm!12862))

(assert (= (and d!69374 res!113849) b!245957))

(assert (= (and b!245957 res!113850) b!245953))

(declare-fun b_lambda!7171 () Bool)

(assert (=> (not b_lambda!7171) (not b!245958)))

(declare-fun m!300841 () Bool)

(assert (=> b!245953 m!300841))

(declare-fun m!300843 () Bool)

(assert (=> d!69374 m!300843))

(assert (=> d!69374 m!300355))

(declare-fun m!300845 () Bool)

(assert (=> d!69374 m!300845))

(declare-fun m!300847 () Bool)

(assert (=> b!245957 m!300847))

(assert (=> b!245957 m!300355))

(declare-fun m!300849 () Bool)

(assert (=> b!245957 m!300849))

(declare-fun m!300851 () Bool)

(assert (=> bm!12862 m!300851))

(declare-fun m!300853 () Bool)

(assert (=> b!245958 m!300853))

(assert (=> b!245621 d!69374))

(declare-fun d!69376 () Bool)

(assert (=> d!69376 (isPrefix!369 lt!99544 (++!922 lt!99544 lt!99534))))

(declare-fun lt!99684 () Unit!4382)

(declare-fun choose!2325 (List!3626 List!3626) Unit!4382)

(assert (=> d!69376 (= lt!99684 (choose!2325 lt!99544 lt!99534))))

(assert (=> d!69376 (= (lemmaConcatTwoListThenFirstIsPrefix!264 lt!99544 lt!99534) lt!99684)))

(declare-fun bs!26362 () Bool)

(assert (= bs!26362 d!69376))

(assert (=> bs!26362 m!300359))

(assert (=> bs!26362 m!300359))

(assert (=> bs!26362 m!300363))

(declare-fun m!300855 () Bool)

(assert (=> bs!26362 m!300855))

(assert (=> b!245621 d!69376))

(declare-fun d!69378 () Bool)

(assert (=> d!69378 (= (isEmpty!2198 rules!1920) ((_ is Nil!3617) rules!1920))))

(assert (=> b!245622 d!69378))

(declare-fun d!69380 () Bool)

(declare-fun lt!99687 () Bool)

(assert (=> d!69380 (= lt!99687 (isEmpty!2197 (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 (seqFromList!747 lt!99544))))))))

(declare-fun isEmpty!2206 (Conc!1193) Bool)

(assert (=> d!69380 (= lt!99687 (isEmpty!2206 (c!46910 (_1!2225 (lex!371 thiss!17480 rules!1920 (seqFromList!747 lt!99544))))))))

(assert (=> d!69380 (= (isEmpty!2199 (_1!2225 (lex!371 thiss!17480 rules!1920 (seqFromList!747 lt!99544)))) lt!99687)))

(declare-fun bs!26363 () Bool)

(assert (= bs!26363 d!69380))

(declare-fun m!300857 () Bool)

(assert (=> bs!26363 m!300857))

(assert (=> bs!26363 m!300857))

(declare-fun m!300859 () Bool)

(assert (=> bs!26363 m!300859))

(declare-fun m!300861 () Bool)

(assert (=> bs!26363 m!300861))

(assert (=> b!245623 d!69380))

(declare-fun b!245959 () Bool)

(declare-fun e!152523 () Bool)

(declare-fun e!152525 () Bool)

(assert (=> b!245959 (= e!152523 e!152525)))

(declare-fun res!113851 () Bool)

(declare-fun lt!99688 () tuple2!4018)

(assert (=> b!245959 (= res!113851 (< (size!2874 (_2!2225 lt!99688)) (size!2874 (seqFromList!747 lt!99544))))))

(assert (=> b!245959 (=> (not res!113851) (not e!152525))))

(declare-fun b!245960 () Bool)

(declare-fun res!113852 () Bool)

(declare-fun e!152524 () Bool)

(assert (=> b!245960 (=> (not res!113852) (not e!152524))))

(assert (=> b!245960 (= res!113852 (= (list!1421 (_1!2225 lt!99688)) (_1!2229 (lexList!185 thiss!17480 rules!1920 (list!1420 (seqFromList!747 lt!99544))))))))

(declare-fun b!245961 () Bool)

(assert (=> b!245961 (= e!152525 (not (isEmpty!2199 (_1!2225 lt!99688))))))

(declare-fun b!245962 () Bool)

(assert (=> b!245962 (= e!152523 (= (_2!2225 lt!99688) (seqFromList!747 lt!99544)))))

(declare-fun b!245963 () Bool)

(assert (=> b!245963 (= e!152524 (= (list!1420 (_2!2225 lt!99688)) (_2!2229 (lexList!185 thiss!17480 rules!1920 (list!1420 (seqFromList!747 lt!99544))))))))

(declare-fun d!69382 () Bool)

(assert (=> d!69382 e!152524))

(declare-fun res!113853 () Bool)

(assert (=> d!69382 (=> (not res!113853) (not e!152524))))

(assert (=> d!69382 (= res!113853 e!152523)))

(declare-fun c!46956 () Bool)

(assert (=> d!69382 (= c!46956 (> (size!2873 (_1!2225 lt!99688)) 0))))

(assert (=> d!69382 (= lt!99688 (lexTailRecV2!152 thiss!17480 rules!1920 (seqFromList!747 lt!99544) (BalanceConc!2393 Empty!1192) (seqFromList!747 lt!99544) (BalanceConc!2395 Empty!1193)))))

(assert (=> d!69382 (= (lex!371 thiss!17480 rules!1920 (seqFromList!747 lt!99544)) lt!99688)))

(assert (= (and d!69382 c!46956) b!245959))

(assert (= (and d!69382 (not c!46956)) b!245962))

(assert (= (and b!245959 res!113851) b!245961))

(assert (= (and d!69382 res!113853) b!245960))

(assert (= (and b!245960 res!113852) b!245963))

(declare-fun m!300863 () Bool)

(assert (=> b!245959 m!300863))

(assert (=> b!245959 m!300375))

(declare-fun m!300865 () Bool)

(assert (=> b!245959 m!300865))

(declare-fun m!300867 () Bool)

(assert (=> b!245960 m!300867))

(assert (=> b!245960 m!300375))

(declare-fun m!300869 () Bool)

(assert (=> b!245960 m!300869))

(assert (=> b!245960 m!300869))

(declare-fun m!300871 () Bool)

(assert (=> b!245960 m!300871))

(declare-fun m!300873 () Bool)

(assert (=> b!245961 m!300873))

(declare-fun m!300875 () Bool)

(assert (=> b!245963 m!300875))

(assert (=> b!245963 m!300375))

(assert (=> b!245963 m!300869))

(assert (=> b!245963 m!300869))

(assert (=> b!245963 m!300871))

(declare-fun m!300877 () Bool)

(assert (=> d!69382 m!300877))

(assert (=> d!69382 m!300375))

(assert (=> d!69382 m!300375))

(declare-fun m!300879 () Bool)

(assert (=> d!69382 m!300879))

(assert (=> b!245623 d!69382))

(declare-fun d!69384 () Bool)

(declare-fun fromListB!268 (List!3626) BalanceConc!2392)

(assert (=> d!69384 (= (seqFromList!747 lt!99544) (fromListB!268 lt!99544))))

(declare-fun bs!26364 () Bool)

(assert (= bs!26364 d!69384))

(declare-fun m!300881 () Bool)

(assert (=> bs!26364 m!300881))

(assert (=> b!245623 d!69384))

(declare-fun d!69386 () Bool)

(assert (=> d!69386 (= (list!1420 (seqFromList!747 lt!99540)) (list!1424 (c!46908 (seqFromList!747 lt!99540))))))

(declare-fun bs!26365 () Bool)

(assert (= bs!26365 d!69386))

(declare-fun m!300883 () Bool)

(assert (=> bs!26365 m!300883))

(assert (=> b!245625 d!69386))

(declare-fun d!69388 () Bool)

(assert (=> d!69388 (= (seqFromList!747 lt!99540) (fromListB!268 lt!99540))))

(declare-fun bs!26366 () Bool)

(assert (= bs!26366 d!69388))

(declare-fun m!300885 () Bool)

(assert (=> bs!26366 m!300885))

(assert (=> b!245625 d!69388))

(declare-fun d!69390 () Bool)

(assert (=> d!69390 (= (isDefined!583 lt!99546) (not (isEmpty!2203 lt!99546)))))

(declare-fun bs!26367 () Bool)

(assert (= bs!26367 d!69390))

(declare-fun m!300887 () Bool)

(assert (=> bs!26367 m!300887))

(assert (=> b!245626 d!69390))

(declare-fun b!245964 () Bool)

(declare-fun e!152527 () Option!732)

(declare-fun lt!99690 () Option!732)

(declare-fun lt!99691 () Option!732)

(assert (=> b!245964 (= e!152527 (ite (and ((_ is None!731) lt!99690) ((_ is None!731) lt!99691)) None!731 (ite ((_ is None!731) lt!99691) lt!99690 (ite ((_ is None!731) lt!99690) lt!99691 (ite (>= (size!2867 (_1!2226 (v!14492 lt!99690))) (size!2867 (_1!2226 (v!14492 lt!99691)))) lt!99690 lt!99691)))))))

(declare-fun call!12868 () Option!732)

(assert (=> b!245964 (= lt!99690 call!12868)))

(assert (=> b!245964 (= lt!99691 (maxPrefix!301 thiss!17480 (t!35111 rules!1920) lt!99540))))

(declare-fun b!245966 () Bool)

(declare-fun res!113860 () Bool)

(declare-fun e!152526 () Bool)

(assert (=> b!245966 (=> (not res!113860) (not e!152526))))

(declare-fun lt!99689 () Option!732)

(assert (=> b!245966 (= res!113860 (< (size!2872 (_2!2226 (get!1182 lt!99689))) (size!2872 lt!99540)))))

(declare-fun b!245967 () Bool)

(assert (=> b!245967 (= e!152526 (contains!666 rules!1920 (rule!1262 (_1!2226 (get!1182 lt!99689)))))))

(declare-fun b!245968 () Bool)

(declare-fun res!113855 () Bool)

(assert (=> b!245968 (=> (not res!113855) (not e!152526))))

(assert (=> b!245968 (= res!113855 (= (list!1420 (charsOf!340 (_1!2226 (get!1182 lt!99689)))) (originalCharacters!728 (_1!2226 (get!1182 lt!99689)))))))

(declare-fun bm!12863 () Bool)

(assert (=> bm!12863 (= call!12868 (maxPrefixOneRule!122 thiss!17480 (h!9014 rules!1920) lt!99540))))

(declare-fun b!245969 () Bool)

(declare-fun e!152528 () Bool)

(assert (=> b!245969 (= e!152528 e!152526)))

(declare-fun res!113857 () Bool)

(assert (=> b!245969 (=> (not res!113857) (not e!152526))))

(assert (=> b!245969 (= res!113857 (isDefined!583 lt!99689))))

(declare-fun b!245970 () Bool)

(declare-fun res!113858 () Bool)

(assert (=> b!245970 (=> (not res!113858) (not e!152526))))

(assert (=> b!245970 (= res!113858 (= (value!23838 (_1!2226 (get!1182 lt!99689))) (apply!677 (transformation!685 (rule!1262 (_1!2226 (get!1182 lt!99689)))) (seqFromList!747 (originalCharacters!728 (_1!2226 (get!1182 lt!99689)))))))))

(declare-fun d!69392 () Bool)

(assert (=> d!69392 e!152528))

(declare-fun res!113859 () Bool)

(assert (=> d!69392 (=> res!113859 e!152528)))

(assert (=> d!69392 (= res!113859 (isEmpty!2203 lt!99689))))

(assert (=> d!69392 (= lt!99689 e!152527)))

(declare-fun c!46957 () Bool)

(assert (=> d!69392 (= c!46957 (and ((_ is Cons!3617) rules!1920) ((_ is Nil!3617) (t!35111 rules!1920))))))

(declare-fun lt!99693 () Unit!4382)

(declare-fun lt!99692 () Unit!4382)

(assert (=> d!69392 (= lt!99693 lt!99692)))

(assert (=> d!69392 (isPrefix!369 lt!99540 lt!99540)))

(assert (=> d!69392 (= lt!99692 (lemmaIsPrefixRefl!189 lt!99540 lt!99540))))

(assert (=> d!69392 (rulesValidInductive!178 thiss!17480 rules!1920)))

(assert (=> d!69392 (= (maxPrefix!301 thiss!17480 rules!1920 lt!99540) lt!99689)))

(declare-fun b!245965 () Bool)

(declare-fun res!113856 () Bool)

(assert (=> b!245965 (=> (not res!113856) (not e!152526))))

(assert (=> b!245965 (= res!113856 (= (++!922 (list!1420 (charsOf!340 (_1!2226 (get!1182 lt!99689)))) (_2!2226 (get!1182 lt!99689))) lt!99540))))

(declare-fun b!245971 () Bool)

(assert (=> b!245971 (= e!152527 call!12868)))

(declare-fun b!245972 () Bool)

(declare-fun res!113854 () Bool)

(assert (=> b!245972 (=> (not res!113854) (not e!152526))))

(assert (=> b!245972 (= res!113854 (matchR!247 (regex!685 (rule!1262 (_1!2226 (get!1182 lt!99689)))) (list!1420 (charsOf!340 (_1!2226 (get!1182 lt!99689))))))))

(assert (= (and d!69392 c!46957) b!245971))

(assert (= (and d!69392 (not c!46957)) b!245964))

(assert (= (or b!245971 b!245964) bm!12863))

(assert (= (and d!69392 (not res!113859)) b!245969))

(assert (= (and b!245969 res!113857) b!245968))

(assert (= (and b!245968 res!113855) b!245966))

(assert (= (and b!245966 res!113860) b!245965))

(assert (= (and b!245965 res!113856) b!245970))

(assert (= (and b!245970 res!113858) b!245972))

(assert (= (and b!245972 res!113854) b!245967))

(declare-fun m!300889 () Bool)

(assert (=> b!245970 m!300889))

(declare-fun m!300891 () Bool)

(assert (=> b!245970 m!300891))

(assert (=> b!245970 m!300891))

(declare-fun m!300893 () Bool)

(assert (=> b!245970 m!300893))

(assert (=> b!245968 m!300889))

(declare-fun m!300895 () Bool)

(assert (=> b!245968 m!300895))

(assert (=> b!245968 m!300895))

(declare-fun m!300897 () Bool)

(assert (=> b!245968 m!300897))

(declare-fun m!300899 () Bool)

(assert (=> d!69392 m!300899))

(declare-fun m!300901 () Bool)

(assert (=> d!69392 m!300901))

(declare-fun m!300903 () Bool)

(assert (=> d!69392 m!300903))

(assert (=> d!69392 m!300351))

(declare-fun m!300905 () Bool)

(assert (=> b!245964 m!300905))

(declare-fun m!300907 () Bool)

(assert (=> bm!12863 m!300907))

(assert (=> b!245966 m!300889))

(declare-fun m!300909 () Bool)

(assert (=> b!245966 m!300909))

(declare-fun m!300911 () Bool)

(assert (=> b!245966 m!300911))

(assert (=> b!245972 m!300889))

(assert (=> b!245972 m!300895))

(assert (=> b!245972 m!300895))

(assert (=> b!245972 m!300897))

(assert (=> b!245972 m!300897))

(declare-fun m!300913 () Bool)

(assert (=> b!245972 m!300913))

(declare-fun m!300915 () Bool)

(assert (=> b!245969 m!300915))

(assert (=> b!245965 m!300889))

(assert (=> b!245965 m!300895))

(assert (=> b!245965 m!300895))

(assert (=> b!245965 m!300897))

(assert (=> b!245965 m!300897))

(declare-fun m!300917 () Bool)

(assert (=> b!245965 m!300917))

(assert (=> b!245967 m!300889))

(declare-fun m!300919 () Bool)

(assert (=> b!245967 m!300919))

(assert (=> b!245626 d!69392))

(declare-fun d!69394 () Bool)

(declare-fun res!113865 () Bool)

(declare-fun e!152531 () Bool)

(assert (=> d!69394 (=> (not res!113865) (not e!152531))))

(assert (=> d!69394 (= res!113865 (not (isEmpty!2200 (originalCharacters!728 separatorToken!170))))))

(assert (=> d!69394 (= (inv!4470 separatorToken!170) e!152531)))

(declare-fun b!245977 () Bool)

(declare-fun res!113866 () Bool)

(assert (=> b!245977 (=> (not res!113866) (not e!152531))))

(declare-fun dynLambda!1759 (Int TokenValue!707) BalanceConc!2392)

(assert (=> b!245977 (= res!113866 (= (originalCharacters!728 separatorToken!170) (list!1420 (dynLambda!1759 (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))) (value!23838 separatorToken!170)))))))

(declare-fun b!245978 () Bool)

(assert (=> b!245978 (= e!152531 (= (size!2867 separatorToken!170) (size!2872 (originalCharacters!728 separatorToken!170))))))

(assert (= (and d!69394 res!113865) b!245977))

(assert (= (and b!245977 res!113866) b!245978))

(declare-fun b_lambda!7173 () Bool)

(assert (=> (not b_lambda!7173) (not b!245977)))

(declare-fun t!35127 () Bool)

(declare-fun tb!12655 () Bool)

(assert (=> (and b!245610 (= (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))) (toChars!1247 (transformation!685 (rule!1262 separatorToken!170)))) t!35127) tb!12655))

(declare-fun b!245983 () Bool)

(declare-fun e!152534 () Bool)

(declare-fun tp!96213 () Bool)

(declare-fun inv!4473 (Conc!1192) Bool)

(assert (=> b!245983 (= e!152534 (and (inv!4473 (c!46908 (dynLambda!1759 (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))) (value!23838 separatorToken!170)))) tp!96213))))

(declare-fun result!15940 () Bool)

(declare-fun inv!4474 (BalanceConc!2392) Bool)

(assert (=> tb!12655 (= result!15940 (and (inv!4474 (dynLambda!1759 (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))) (value!23838 separatorToken!170))) e!152534))))

(assert (= tb!12655 b!245983))

(declare-fun m!300921 () Bool)

(assert (=> b!245983 m!300921))

(declare-fun m!300923 () Bool)

(assert (=> tb!12655 m!300923))

(assert (=> b!245977 t!35127))

(declare-fun b_and!18503 () Bool)

(assert (= b_and!18487 (and (=> t!35127 result!15940) b_and!18503)))

(declare-fun t!35129 () Bool)

(declare-fun tb!12657 () Bool)

(assert (=> (and b!245624 (= (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))) (toChars!1247 (transformation!685 (rule!1262 separatorToken!170)))) t!35129) tb!12657))

(declare-fun result!15944 () Bool)

(assert (= result!15944 result!15940))

(assert (=> b!245977 t!35129))

(declare-fun b_and!18505 () Bool)

(assert (= b_and!18491 (and (=> t!35129 result!15944) b_and!18505)))

(declare-fun t!35131 () Bool)

(declare-fun tb!12659 () Bool)

(assert (=> (and b!245641 (= (toChars!1247 (transformation!685 (h!9014 rules!1920))) (toChars!1247 (transformation!685 (rule!1262 separatorToken!170)))) t!35131) tb!12659))

(declare-fun result!15946 () Bool)

(assert (= result!15946 result!15940))

(assert (=> b!245977 t!35131))

(declare-fun b_and!18507 () Bool)

(assert (= b_and!18495 (and (=> t!35131 result!15946) b_and!18507)))

(declare-fun m!300925 () Bool)

(assert (=> d!69394 m!300925))

(declare-fun m!300927 () Bool)

(assert (=> b!245977 m!300927))

(assert (=> b!245977 m!300927))

(declare-fun m!300929 () Bool)

(assert (=> b!245977 m!300929))

(declare-fun m!300931 () Bool)

(assert (=> b!245978 m!300931))

(assert (=> start!26002 d!69394))

(declare-fun d!69396 () Bool)

(assert (=> d!69396 (= (inv!4466 (tag!893 (h!9014 rules!1920))) (= (mod (str.len (value!23837 (tag!893 (h!9014 rules!1920)))) 2) 0))))

(assert (=> b!245627 d!69396))

(declare-fun d!69398 () Bool)

(declare-fun res!113867 () Bool)

(declare-fun e!152535 () Bool)

(assert (=> d!69398 (=> (not res!113867) (not e!152535))))

(assert (=> d!69398 (= res!113867 (semiInverseModEq!230 (toChars!1247 (transformation!685 (h!9014 rules!1920))) (toValue!1388 (transformation!685 (h!9014 rules!1920)))))))

(assert (=> d!69398 (= (inv!4469 (transformation!685 (h!9014 rules!1920))) e!152535)))

(declare-fun b!245984 () Bool)

(assert (=> b!245984 (= e!152535 (equivClasses!213 (toChars!1247 (transformation!685 (h!9014 rules!1920))) (toValue!1388 (transformation!685 (h!9014 rules!1920)))))))

(assert (= (and d!69398 res!113867) b!245984))

(declare-fun m!300933 () Bool)

(assert (=> d!69398 m!300933))

(declare-fun m!300935 () Bool)

(assert (=> b!245984 m!300935))

(assert (=> b!245627 d!69398))

(declare-fun b!245995 () Bool)

(declare-fun e!152542 () Bool)

(declare-fun e!152543 () Bool)

(assert (=> b!245995 (= e!152542 e!152543)))

(declare-fun c!46963 () Bool)

(assert (=> b!245995 (= c!46963 ((_ is IntegerValue!2122) (value!23838 separatorToken!170)))))

(declare-fun d!69400 () Bool)

(declare-fun c!46962 () Bool)

(assert (=> d!69400 (= c!46962 ((_ is IntegerValue!2121) (value!23838 separatorToken!170)))))

(assert (=> d!69400 (= (inv!21 (value!23838 separatorToken!170)) e!152542)))

(declare-fun b!245996 () Bool)

(declare-fun e!152544 () Bool)

(declare-fun inv!15 (TokenValue!707) Bool)

(assert (=> b!245996 (= e!152544 (inv!15 (value!23838 separatorToken!170)))))

(declare-fun b!245997 () Bool)

(declare-fun inv!16 (TokenValue!707) Bool)

(assert (=> b!245997 (= e!152542 (inv!16 (value!23838 separatorToken!170)))))

(declare-fun b!245998 () Bool)

(declare-fun inv!17 (TokenValue!707) Bool)

(assert (=> b!245998 (= e!152543 (inv!17 (value!23838 separatorToken!170)))))

(declare-fun b!245999 () Bool)

(declare-fun res!113870 () Bool)

(assert (=> b!245999 (=> res!113870 e!152544)))

(assert (=> b!245999 (= res!113870 (not ((_ is IntegerValue!2123) (value!23838 separatorToken!170))))))

(assert (=> b!245999 (= e!152543 e!152544)))

(assert (= (and d!69400 c!46962) b!245997))

(assert (= (and d!69400 (not c!46962)) b!245995))

(assert (= (and b!245995 c!46963) b!245998))

(assert (= (and b!245995 (not c!46963)) b!245999))

(assert (= (and b!245999 (not res!113870)) b!245996))

(declare-fun m!300937 () Bool)

(assert (=> b!245996 m!300937))

(declare-fun m!300939 () Bool)

(assert (=> b!245997 m!300939))

(declare-fun m!300941 () Bool)

(assert (=> b!245998 m!300941))

(assert (=> b!245629 d!69400))

(declare-fun d!69402 () Bool)

(assert (=> d!69402 (= (isEmpty!2200 (_2!2226 lt!99551)) ((_ is Nil!3616) (_2!2226 lt!99551)))))

(assert (=> b!245628 d!69402))

(declare-fun d!69404 () Bool)

(declare-fun res!113871 () Bool)

(declare-fun e!152545 () Bool)

(assert (=> d!69404 (=> (not res!113871) (not e!152545))))

(assert (=> d!69404 (= res!113871 (not (isEmpty!2200 (originalCharacters!728 (h!9015 tokens!465)))))))

(assert (=> d!69404 (= (inv!4470 (h!9015 tokens!465)) e!152545)))

(declare-fun b!246000 () Bool)

(declare-fun res!113872 () Bool)

(assert (=> b!246000 (=> (not res!113872) (not e!152545))))

(assert (=> b!246000 (= res!113872 (= (originalCharacters!728 (h!9015 tokens!465)) (list!1420 (dynLambda!1759 (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))) (value!23838 (h!9015 tokens!465))))))))

(declare-fun b!246001 () Bool)

(assert (=> b!246001 (= e!152545 (= (size!2867 (h!9015 tokens!465)) (size!2872 (originalCharacters!728 (h!9015 tokens!465)))))))

(assert (= (and d!69404 res!113871) b!246000))

(assert (= (and b!246000 res!113872) b!246001))

(declare-fun b_lambda!7175 () Bool)

(assert (=> (not b_lambda!7175) (not b!246000)))

(declare-fun t!35133 () Bool)

(declare-fun tb!12661 () Bool)

(assert (=> (and b!245610 (= (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))) (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465))))) t!35133) tb!12661))

(declare-fun b!246002 () Bool)

(declare-fun e!152546 () Bool)

(declare-fun tp!96214 () Bool)

(assert (=> b!246002 (= e!152546 (and (inv!4473 (c!46908 (dynLambda!1759 (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))) (value!23838 (h!9015 tokens!465))))) tp!96214))))

(declare-fun result!15948 () Bool)

(assert (=> tb!12661 (= result!15948 (and (inv!4474 (dynLambda!1759 (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))) (value!23838 (h!9015 tokens!465)))) e!152546))))

(assert (= tb!12661 b!246002))

(declare-fun m!300943 () Bool)

(assert (=> b!246002 m!300943))

(declare-fun m!300945 () Bool)

(assert (=> tb!12661 m!300945))

(assert (=> b!246000 t!35133))

(declare-fun b_and!18509 () Bool)

(assert (= b_and!18503 (and (=> t!35133 result!15948) b_and!18509)))

(declare-fun t!35135 () Bool)

(declare-fun tb!12663 () Bool)

(assert (=> (and b!245624 (= (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))) (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465))))) t!35135) tb!12663))

(declare-fun result!15950 () Bool)

(assert (= result!15950 result!15948))

(assert (=> b!246000 t!35135))

(declare-fun b_and!18511 () Bool)

(assert (= b_and!18505 (and (=> t!35135 result!15950) b_and!18511)))

(declare-fun tb!12665 () Bool)

(declare-fun t!35137 () Bool)

(assert (=> (and b!245641 (= (toChars!1247 (transformation!685 (h!9014 rules!1920))) (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465))))) t!35137) tb!12665))

(declare-fun result!15952 () Bool)

(assert (= result!15952 result!15948))

(assert (=> b!246000 t!35137))

(declare-fun b_and!18513 () Bool)

(assert (= b_and!18507 (and (=> t!35137 result!15952) b_and!18513)))

(declare-fun m!300947 () Bool)

(assert (=> d!69404 m!300947))

(declare-fun m!300949 () Bool)

(assert (=> b!246000 m!300949))

(assert (=> b!246000 m!300949))

(declare-fun m!300951 () Bool)

(assert (=> b!246000 m!300951))

(declare-fun m!300953 () Bool)

(assert (=> b!246001 m!300953))

(assert (=> b!245630 d!69404))

(declare-fun b!246003 () Bool)

(declare-fun e!152547 () Bool)

(declare-fun e!152548 () Bool)

(assert (=> b!246003 (= e!152547 e!152548)))

(declare-fun c!46965 () Bool)

(assert (=> b!246003 (= c!46965 ((_ is IntegerValue!2122) (value!23838 (h!9015 tokens!465))))))

(declare-fun d!69406 () Bool)

(declare-fun c!46964 () Bool)

(assert (=> d!69406 (= c!46964 ((_ is IntegerValue!2121) (value!23838 (h!9015 tokens!465))))))

(assert (=> d!69406 (= (inv!21 (value!23838 (h!9015 tokens!465))) e!152547)))

(declare-fun b!246004 () Bool)

(declare-fun e!152549 () Bool)

(assert (=> b!246004 (= e!152549 (inv!15 (value!23838 (h!9015 tokens!465))))))

(declare-fun b!246005 () Bool)

(assert (=> b!246005 (= e!152547 (inv!16 (value!23838 (h!9015 tokens!465))))))

(declare-fun b!246006 () Bool)

(assert (=> b!246006 (= e!152548 (inv!17 (value!23838 (h!9015 tokens!465))))))

(declare-fun b!246007 () Bool)

(declare-fun res!113873 () Bool)

(assert (=> b!246007 (=> res!113873 e!152549)))

(assert (=> b!246007 (= res!113873 (not ((_ is IntegerValue!2123) (value!23838 (h!9015 tokens!465)))))))

(assert (=> b!246007 (= e!152548 e!152549)))

(assert (= (and d!69406 c!46964) b!246005))

(assert (= (and d!69406 (not c!46964)) b!246003))

(assert (= (and b!246003 c!46965) b!246006))

(assert (= (and b!246003 (not c!46965)) b!246007))

(assert (= (and b!246007 (not res!113873)) b!246004))

(declare-fun m!300955 () Bool)

(assert (=> b!246004 m!300955))

(declare-fun m!300957 () Bool)

(assert (=> b!246005 m!300957))

(declare-fun m!300959 () Bool)

(assert (=> b!246006 m!300959))

(assert (=> b!245609 d!69406))

(declare-fun d!69408 () Bool)

(declare-fun isEmpty!2207 (Option!733) Bool)

(assert (=> d!69408 (= (isDefined!584 (maxPrefixZipperSequence!264 thiss!17480 rules!1920 (seqFromList!747 (originalCharacters!728 (h!9015 tokens!465))))) (not (isEmpty!2207 (maxPrefixZipperSequence!264 thiss!17480 rules!1920 (seqFromList!747 (originalCharacters!728 (h!9015 tokens!465)))))))))

(declare-fun bs!26368 () Bool)

(assert (= bs!26368 d!69408))

(assert (=> bs!26368 m!300471))

(declare-fun m!300961 () Bool)

(assert (=> bs!26368 m!300961))

(assert (=> b!245631 d!69408))

(declare-fun call!12886 () Option!733)

(declare-fun bm!12881 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!94 (LexerInterface!571 Rule!1170 BalanceConc!2392) Option!733)

(assert (=> bm!12881 (= call!12886 (maxPrefixOneRuleZipperSequence!94 thiss!17480 (h!9014 rules!1920) (seqFromList!747 (originalCharacters!728 (h!9015 tokens!465)))))))

(declare-fun b!246060 () Bool)

(declare-fun res!113895 () Bool)

(declare-fun e!152587 () Bool)

(assert (=> b!246060 (=> (not res!113895) (not e!152587))))

(declare-fun e!152588 () Bool)

(assert (=> b!246060 (= res!113895 e!152588)))

(declare-fun res!113897 () Bool)

(assert (=> b!246060 (=> res!113897 e!152588)))

(declare-fun lt!99751 () Option!733)

(assert (=> b!246060 (= res!113897 (not (isDefined!584 lt!99751)))))

(declare-fun b!246061 () Bool)

(declare-fun e!152591 () Bool)

(declare-fun get!1184 (Option!733) tuple2!4022)

(assert (=> b!246061 (= e!152591 (= (list!1420 (_2!2227 (get!1184 lt!99751))) (_2!2226 (get!1182 (maxPrefix!301 thiss!17480 rules!1920 (list!1420 (seqFromList!747 (originalCharacters!728 (h!9015 tokens!465)))))))))))

(declare-fun b!246062 () Bool)

(declare-fun e!152590 () Bool)

(assert (=> b!246062 (= e!152587 e!152590)))

(declare-fun res!113900 () Bool)

(assert (=> b!246062 (=> res!113900 e!152590)))

(assert (=> b!246062 (= res!113900 (not (isDefined!584 lt!99751)))))

(declare-fun b!246063 () Bool)

(assert (=> b!246063 (= e!152590 e!152591)))

(declare-fun res!113898 () Bool)

(assert (=> b!246063 (=> (not res!113898) (not e!152591))))

(assert (=> b!246063 (= res!113898 (= (_1!2227 (get!1184 lt!99751)) (_1!2226 (get!1182 (maxPrefix!301 thiss!17480 rules!1920 (list!1420 (seqFromList!747 (originalCharacters!728 (h!9015 tokens!465)))))))))))

(declare-fun b!246064 () Bool)

(declare-fun e!152589 () Bool)

(assert (=> b!246064 (= e!152588 e!152589)))

(declare-fun res!113896 () Bool)

(assert (=> b!246064 (=> (not res!113896) (not e!152589))))

(declare-fun maxPrefixZipper!93 (LexerInterface!571 List!3627 List!3626) Option!732)

(assert (=> b!246064 (= res!113896 (= (_1!2227 (get!1184 lt!99751)) (_1!2226 (get!1182 (maxPrefixZipper!93 thiss!17480 rules!1920 (list!1420 (seqFromList!747 (originalCharacters!728 (h!9015 tokens!465)))))))))))

(declare-fun d!69410 () Bool)

(assert (=> d!69410 e!152587))

(declare-fun res!113899 () Bool)

(assert (=> d!69410 (=> (not res!113899) (not e!152587))))

(assert (=> d!69410 (= res!113899 (= (isDefined!584 lt!99751) (isDefined!583 (maxPrefixZipper!93 thiss!17480 rules!1920 (list!1420 (seqFromList!747 (originalCharacters!728 (h!9015 tokens!465))))))))))

(declare-fun e!152586 () Option!733)

(assert (=> d!69410 (= lt!99751 e!152586)))

(declare-fun c!46980 () Bool)

(assert (=> d!69410 (= c!46980 (and ((_ is Cons!3617) rules!1920) ((_ is Nil!3617) (t!35111 rules!1920))))))

(declare-fun lt!99754 () Unit!4382)

(declare-fun lt!99752 () Unit!4382)

(assert (=> d!69410 (= lt!99754 lt!99752)))

(declare-fun lt!99750 () List!3626)

(declare-fun lt!99755 () List!3626)

(assert (=> d!69410 (isPrefix!369 lt!99750 lt!99755)))

(assert (=> d!69410 (= lt!99752 (lemmaIsPrefixRefl!189 lt!99750 lt!99755))))

(assert (=> d!69410 (= lt!99755 (list!1420 (seqFromList!747 (originalCharacters!728 (h!9015 tokens!465)))))))

(assert (=> d!69410 (= lt!99750 (list!1420 (seqFromList!747 (originalCharacters!728 (h!9015 tokens!465)))))))

(assert (=> d!69410 (rulesValidInductive!178 thiss!17480 rules!1920)))

(assert (=> d!69410 (= (maxPrefixZipperSequence!264 thiss!17480 rules!1920 (seqFromList!747 (originalCharacters!728 (h!9015 tokens!465)))) lt!99751)))

(declare-fun b!246065 () Bool)

(declare-fun lt!99753 () Option!733)

(declare-fun lt!99756 () Option!733)

(assert (=> b!246065 (= e!152586 (ite (and ((_ is None!732) lt!99753) ((_ is None!732) lt!99756)) None!732 (ite ((_ is None!732) lt!99756) lt!99753 (ite ((_ is None!732) lt!99753) lt!99756 (ite (>= (size!2867 (_1!2227 (v!14493 lt!99753))) (size!2867 (_1!2227 (v!14493 lt!99756)))) lt!99753 lt!99756)))))))

(assert (=> b!246065 (= lt!99753 call!12886)))

(assert (=> b!246065 (= lt!99756 (maxPrefixZipperSequence!264 thiss!17480 (t!35111 rules!1920) (seqFromList!747 (originalCharacters!728 (h!9015 tokens!465)))))))

(declare-fun b!246066 () Bool)

(assert (=> b!246066 (= e!152589 (= (list!1420 (_2!2227 (get!1184 lt!99751))) (_2!2226 (get!1182 (maxPrefixZipper!93 thiss!17480 rules!1920 (list!1420 (seqFromList!747 (originalCharacters!728 (h!9015 tokens!465)))))))))))

(declare-fun b!246067 () Bool)

(assert (=> b!246067 (= e!152586 call!12886)))

(assert (= (and d!69410 c!46980) b!246067))

(assert (= (and d!69410 (not c!46980)) b!246065))

(assert (= (or b!246067 b!246065) bm!12881))

(assert (= (and d!69410 res!113899) b!246060))

(assert (= (and b!246060 (not res!113897)) b!246064))

(assert (= (and b!246064 res!113896) b!246066))

(assert (= (and b!246060 res!113895) b!246062))

(assert (= (and b!246062 (not res!113900)) b!246063))

(assert (= (and b!246063 res!113898) b!246061))

(declare-fun m!301021 () Bool)

(assert (=> b!246062 m!301021))

(assert (=> b!246060 m!301021))

(assert (=> b!246065 m!300469))

(declare-fun m!301023 () Bool)

(assert (=> b!246065 m!301023))

(declare-fun m!301025 () Bool)

(assert (=> b!246066 m!301025))

(declare-fun m!301027 () Bool)

(assert (=> b!246066 m!301027))

(declare-fun m!301029 () Bool)

(assert (=> b!246066 m!301029))

(declare-fun m!301031 () Bool)

(assert (=> b!246066 m!301031))

(assert (=> b!246066 m!300469))

(assert (=> b!246066 m!301027))

(assert (=> b!246066 m!301029))

(declare-fun m!301033 () Bool)

(assert (=> b!246066 m!301033))

(assert (=> b!246064 m!301025))

(assert (=> b!246064 m!300469))

(assert (=> b!246064 m!301027))

(assert (=> b!246064 m!301027))

(assert (=> b!246064 m!301029))

(assert (=> b!246064 m!301029))

(assert (=> b!246064 m!301033))

(assert (=> bm!12881 m!300469))

(declare-fun m!301035 () Bool)

(assert (=> bm!12881 m!301035))

(assert (=> b!246061 m!301025))

(assert (=> b!246061 m!300469))

(assert (=> b!246061 m!301027))

(declare-fun m!301037 () Bool)

(assert (=> b!246061 m!301037))

(declare-fun m!301039 () Bool)

(assert (=> b!246061 m!301039))

(assert (=> b!246061 m!301027))

(assert (=> b!246061 m!301037))

(assert (=> b!246061 m!301031))

(declare-fun m!301041 () Bool)

(assert (=> d!69410 m!301041))

(assert (=> d!69410 m!301027))

(assert (=> d!69410 m!301029))

(assert (=> d!69410 m!301021))

(declare-fun m!301043 () Bool)

(assert (=> d!69410 m!301043))

(assert (=> d!69410 m!301029))

(declare-fun m!301045 () Bool)

(assert (=> d!69410 m!301045))

(assert (=> d!69410 m!300351))

(assert (=> d!69410 m!300469))

(assert (=> d!69410 m!301027))

(assert (=> b!246063 m!301025))

(assert (=> b!246063 m!300469))

(assert (=> b!246063 m!301027))

(assert (=> b!246063 m!301027))

(assert (=> b!246063 m!301037))

(assert (=> b!246063 m!301037))

(assert (=> b!246063 m!301039))

(assert (=> b!245631 d!69410))

(declare-fun d!69414 () Bool)

(assert (=> d!69414 (= (seqFromList!747 (originalCharacters!728 (h!9015 tokens!465))) (fromListB!268 (originalCharacters!728 (h!9015 tokens!465))))))

(declare-fun bs!26378 () Bool)

(assert (= bs!26378 d!69414))

(declare-fun m!301047 () Bool)

(assert (=> bs!26378 m!301047))

(assert (=> b!245631 d!69414))

(declare-fun d!69416 () Bool)

(assert (=> d!69416 (dynLambda!1758 lambda!8044 (h!9015 tokens!465))))

(declare-fun lt!99759 () Unit!4382)

(declare-fun choose!2327 (List!3628 Int Token!1114) Unit!4382)

(assert (=> d!69416 (= lt!99759 (choose!2327 tokens!465 lambda!8044 (h!9015 tokens!465)))))

(declare-fun e!152594 () Bool)

(assert (=> d!69416 e!152594))

(declare-fun res!113903 () Bool)

(assert (=> d!69416 (=> (not res!113903) (not e!152594))))

(assert (=> d!69416 (= res!113903 (forall!841 tokens!465 lambda!8044))))

(assert (=> d!69416 (= (forallContained!252 tokens!465 lambda!8044 (h!9015 tokens!465)) lt!99759)))

(declare-fun b!246070 () Bool)

(declare-fun contains!668 (List!3628 Token!1114) Bool)

(assert (=> b!246070 (= e!152594 (contains!668 tokens!465 (h!9015 tokens!465)))))

(assert (= (and d!69416 res!113903) b!246070))

(declare-fun b_lambda!7177 () Bool)

(assert (=> (not b_lambda!7177) (not d!69416)))

(declare-fun m!301049 () Bool)

(assert (=> d!69416 m!301049))

(declare-fun m!301051 () Bool)

(assert (=> d!69416 m!301051))

(declare-fun m!301053 () Bool)

(assert (=> d!69416 m!301053))

(declare-fun m!301055 () Bool)

(assert (=> b!246070 m!301055))

(assert (=> b!245631 d!69416))

(declare-fun d!69418 () Bool)

(declare-fun e!152596 () Bool)

(assert (=> d!69418 e!152596))

(declare-fun res!113904 () Bool)

(assert (=> d!69418 (=> (not res!113904) (not e!152596))))

(declare-fun lt!99760 () List!3626)

(assert (=> d!69418 (= res!113904 (= (content!502 lt!99760) ((_ map or) (content!502 lt!99531) (content!502 lt!99534))))))

(declare-fun e!152595 () List!3626)

(assert (=> d!69418 (= lt!99760 e!152595)))

(declare-fun c!46981 () Bool)

(assert (=> d!69418 (= c!46981 ((_ is Nil!3616) lt!99531))))

(assert (=> d!69418 (= (++!922 lt!99531 lt!99534) lt!99760)))

(declare-fun b!246071 () Bool)

(assert (=> b!246071 (= e!152595 lt!99534)))

(declare-fun b!246072 () Bool)

(assert (=> b!246072 (= e!152595 (Cons!3616 (h!9013 lt!99531) (++!922 (t!35110 lt!99531) lt!99534)))))

(declare-fun b!246074 () Bool)

(assert (=> b!246074 (= e!152596 (or (not (= lt!99534 Nil!3616)) (= lt!99760 lt!99531)))))

(declare-fun b!246073 () Bool)

(declare-fun res!113905 () Bool)

(assert (=> b!246073 (=> (not res!113905) (not e!152596))))

(assert (=> b!246073 (= res!113905 (= (size!2872 lt!99760) (+ (size!2872 lt!99531) (size!2872 lt!99534))))))

(assert (= (and d!69418 c!46981) b!246071))

(assert (= (and d!69418 (not c!46981)) b!246072))

(assert (= (and d!69418 res!113904) b!246073))

(assert (= (and b!246073 res!113905) b!246074))

(declare-fun m!301057 () Bool)

(assert (=> d!69418 m!301057))

(declare-fun m!301059 () Bool)

(assert (=> d!69418 m!301059))

(assert (=> d!69418 m!300671))

(declare-fun m!301061 () Bool)

(assert (=> b!246072 m!301061))

(declare-fun m!301063 () Bool)

(assert (=> b!246073 m!301063))

(declare-fun m!301065 () Bool)

(assert (=> b!246073 m!301065))

(assert (=> b!246073 m!300677))

(assert (=> b!245633 d!69418))

(declare-fun d!69420 () Bool)

(declare-fun fromListB!269 (List!3628) BalanceConc!2394)

(assert (=> d!69420 (= (seqFromList!748 (t!35112 tokens!465)) (fromListB!269 (t!35112 tokens!465)))))

(declare-fun bs!26379 () Bool)

(assert (= bs!26379 d!69420))

(declare-fun m!301067 () Bool)

(assert (=> bs!26379 m!301067))

(assert (=> b!245633 d!69420))

(declare-fun d!69422 () Bool)

(declare-fun e!152598 () Bool)

(assert (=> d!69422 e!152598))

(declare-fun res!113906 () Bool)

(assert (=> d!69422 (=> (not res!113906) (not e!152598))))

(declare-fun lt!99761 () List!3626)

(assert (=> d!69422 (= res!113906 (= (content!502 lt!99761) ((_ map or) (content!502 (++!922 lt!99544 lt!99531)) (content!502 lt!99534))))))

(declare-fun e!152597 () List!3626)

(assert (=> d!69422 (= lt!99761 e!152597)))

(declare-fun c!46982 () Bool)

(assert (=> d!69422 (= c!46982 ((_ is Nil!3616) (++!922 lt!99544 lt!99531)))))

(assert (=> d!69422 (= (++!922 (++!922 lt!99544 lt!99531) lt!99534) lt!99761)))

(declare-fun b!246075 () Bool)

(assert (=> b!246075 (= e!152597 lt!99534)))

(declare-fun b!246076 () Bool)

(assert (=> b!246076 (= e!152597 (Cons!3616 (h!9013 (++!922 lt!99544 lt!99531)) (++!922 (t!35110 (++!922 lt!99544 lt!99531)) lt!99534)))))

(declare-fun b!246078 () Bool)

(assert (=> b!246078 (= e!152598 (or (not (= lt!99534 Nil!3616)) (= lt!99761 (++!922 lt!99544 lt!99531))))))

(declare-fun b!246077 () Bool)

(declare-fun res!113907 () Bool)

(assert (=> b!246077 (=> (not res!113907) (not e!152598))))

(assert (=> b!246077 (= res!113907 (= (size!2872 lt!99761) (+ (size!2872 (++!922 lt!99544 lt!99531)) (size!2872 lt!99534))))))

(assert (= (and d!69422 c!46982) b!246075))

(assert (= (and d!69422 (not c!46982)) b!246076))

(assert (= (and d!69422 res!113906) b!246077))

(assert (= (and b!246077 res!113907) b!246078))

(declare-fun m!301069 () Bool)

(assert (=> d!69422 m!301069))

(assert (=> d!69422 m!300439))

(declare-fun m!301071 () Bool)

(assert (=> d!69422 m!301071))

(assert (=> d!69422 m!300671))

(declare-fun m!301073 () Bool)

(assert (=> b!246076 m!301073))

(declare-fun m!301075 () Bool)

(assert (=> b!246077 m!301075))

(assert (=> b!246077 m!300439))

(declare-fun m!301077 () Bool)

(assert (=> b!246077 m!301077))

(assert (=> b!246077 m!300677))

(assert (=> b!245633 d!69422))

(declare-fun bs!26390 () Bool)

(declare-fun b!246170 () Bool)

(assert (= bs!26390 (and b!246170 b!245614)))

(declare-fun lambda!8073 () Int)

(assert (=> bs!26390 (not (= lambda!8073 lambda!8043))))

(declare-fun bs!26391 () Bool)

(assert (= bs!26391 (and b!246170 b!245631)))

(assert (=> bs!26391 (= lambda!8073 lambda!8044)))

(declare-fun bs!26392 () Bool)

(assert (= bs!26392 (and b!246170 d!69344)))

(assert (=> bs!26392 (not (= lambda!8073 lambda!8061))))

(declare-fun b!246179 () Bool)

(declare-fun e!152658 () Bool)

(assert (=> b!246179 (= e!152658 true)))

(declare-fun b!246178 () Bool)

(declare-fun e!152657 () Bool)

(assert (=> b!246178 (= e!152657 e!152658)))

(declare-fun b!246177 () Bool)

(declare-fun e!152656 () Bool)

(assert (=> b!246177 (= e!152656 e!152657)))

(assert (=> b!246170 e!152656))

(assert (= b!246178 b!246179))

(assert (= b!246177 b!246178))

(assert (= (and b!246170 ((_ is Cons!3617) rules!1920)) b!246177))

(assert (=> b!246179 (< (dynLambda!1753 order!2649 (toValue!1388 (transformation!685 (h!9014 rules!1920)))) (dynLambda!1754 order!2651 lambda!8073))))

(assert (=> b!246179 (< (dynLambda!1755 order!2653 (toChars!1247 (transformation!685 (h!9014 rules!1920)))) (dynLambda!1754 order!2651 lambda!8073))))

(assert (=> b!246170 true))

(declare-fun b!246169 () Bool)

(declare-fun e!152655 () List!3626)

(declare-fun call!12912 () List!3626)

(declare-fun lt!99820 () List!3626)

(assert (=> b!246169 (= e!152655 (++!922 call!12912 lt!99820))))

(declare-fun bm!12907 () Bool)

(declare-fun call!12913 () BalanceConc!2392)

(assert (=> bm!12907 (= call!12913 (charsOf!340 (h!9015 (t!35112 tokens!465))))))

(declare-fun b!246171 () Bool)

(assert (=> b!246171 (= e!152655 Nil!3616)))

(assert (=> b!246171 (= (print!302 thiss!17480 (singletonSeq!237 (h!9015 (t!35112 tokens!465)))) (printTailRec!265 thiss!17480 (singletonSeq!237 (h!9015 (t!35112 tokens!465))) 0 (BalanceConc!2393 Empty!1192)))))

(declare-fun lt!99822 () Unit!4382)

(declare-fun Unit!4392 () Unit!4382)

(assert (=> b!246171 (= lt!99822 Unit!4392)))

(declare-fun call!12915 () List!3626)

(declare-fun lt!99824 () Unit!4382)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!88 (LexerInterface!571 List!3627 List!3626 List!3626) Unit!4382)

(assert (=> b!246171 (= lt!99824 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!88 thiss!17480 rules!1920 call!12915 lt!99820))))

(assert (=> b!246171 false))

(declare-fun lt!99821 () Unit!4382)

(declare-fun Unit!4393 () Unit!4382)

(assert (=> b!246171 (= lt!99821 Unit!4393)))

(declare-fun bm!12908 () Bool)

(declare-fun call!12916 () BalanceConc!2392)

(assert (=> bm!12908 (= call!12916 call!12913)))

(declare-fun call!12914 () List!3626)

(declare-fun c!47020 () Bool)

(declare-fun bm!12909 () Bool)

(assert (=> bm!12909 (= call!12914 (list!1420 (ite c!47020 call!12913 call!12916)))))

(declare-fun b!246172 () Bool)

(declare-fun e!152653 () BalanceConc!2392)

(assert (=> b!246172 (= e!152653 call!12916)))

(declare-fun bm!12910 () Bool)

(assert (=> bm!12910 (= call!12915 (list!1420 e!152653))))

(declare-fun c!47022 () Bool)

(declare-fun c!47021 () Bool)

(assert (=> bm!12910 (= c!47022 c!47021)))

(declare-fun b!246173 () Bool)

(declare-fun e!152654 () List!3626)

(assert (=> b!246173 (= e!152654 Nil!3616)))

(declare-fun bm!12911 () Bool)

(assert (=> bm!12911 (= call!12912 (++!922 call!12914 (ite c!47020 lt!99820 call!12915)))))

(declare-fun e!152652 () List!3626)

(assert (=> b!246170 (= e!152654 e!152652)))

(declare-fun lt!99823 () Unit!4382)

(assert (=> b!246170 (= lt!99823 (forallContained!252 (t!35112 tokens!465) lambda!8073 (h!9015 (t!35112 tokens!465))))))

(assert (=> b!246170 (= lt!99820 (printWithSeparatorTokenWhenNeededList!264 thiss!17480 rules!1920 (t!35112 (t!35112 tokens!465)) separatorToken!170))))

(declare-fun lt!99819 () Option!732)

(assert (=> b!246170 (= lt!99819 (maxPrefix!301 thiss!17480 rules!1920 (++!922 (list!1420 (charsOf!340 (h!9015 (t!35112 tokens!465)))) lt!99820)))))

(assert (=> b!246170 (= c!47020 (and ((_ is Some!731) lt!99819) (= (_1!2226 (v!14492 lt!99819)) (h!9015 (t!35112 tokens!465)))))))

(declare-fun d!69424 () Bool)

(declare-fun c!47023 () Bool)

(assert (=> d!69424 (= c!47023 ((_ is Cons!3618) (t!35112 tokens!465)))))

(assert (=> d!69424 (= (printWithSeparatorTokenWhenNeededList!264 thiss!17480 rules!1920 (t!35112 tokens!465) separatorToken!170) e!152654)))

(declare-fun b!246174 () Bool)

(assert (=> b!246174 (= c!47021 (and ((_ is Some!731) lt!99819) (not (= (_1!2226 (v!14492 lt!99819)) (h!9015 (t!35112 tokens!465))))))))

(assert (=> b!246174 (= e!152652 e!152655)))

(declare-fun b!246175 () Bool)

(assert (=> b!246175 (= e!152652 call!12912)))

(declare-fun b!246176 () Bool)

(assert (=> b!246176 (= e!152653 (charsOf!340 separatorToken!170))))

(assert (= (and d!69424 c!47023) b!246170))

(assert (= (and d!69424 (not c!47023)) b!246173))

(assert (= (and b!246170 c!47020) b!246175))

(assert (= (and b!246170 (not c!47020)) b!246174))

(assert (= (and b!246174 c!47021) b!246169))

(assert (= (and b!246174 (not c!47021)) b!246171))

(assert (= (or b!246169 b!246171) bm!12908))

(assert (= (or b!246169 b!246171) bm!12910))

(assert (= (and bm!12910 c!47022) b!246176))

(assert (= (and bm!12910 (not c!47022)) b!246172))

(assert (= (or b!246175 bm!12908) bm!12907))

(assert (= (or b!246175 b!246169) bm!12909))

(assert (= (or b!246175 b!246169) bm!12911))

(assert (=> b!246176 m!300443))

(declare-fun m!301183 () Bool)

(assert (=> b!246170 m!301183))

(declare-fun m!301185 () Bool)

(assert (=> b!246170 m!301185))

(assert (=> b!246170 m!301183))

(declare-fun m!301187 () Bool)

(assert (=> b!246170 m!301187))

(assert (=> b!246170 m!301185))

(declare-fun m!301193 () Bool)

(assert (=> b!246170 m!301193))

(assert (=> b!246170 m!301193))

(declare-fun m!301195 () Bool)

(assert (=> b!246170 m!301195))

(declare-fun m!301197 () Bool)

(assert (=> b!246170 m!301197))

(declare-fun m!301199 () Bool)

(assert (=> b!246169 m!301199))

(declare-fun m!301201 () Bool)

(assert (=> bm!12909 m!301201))

(declare-fun m!301203 () Bool)

(assert (=> bm!12910 m!301203))

(declare-fun m!301205 () Bool)

(assert (=> bm!12911 m!301205))

(declare-fun m!301207 () Bool)

(assert (=> b!246171 m!301207))

(assert (=> b!246171 m!301207))

(declare-fun m!301209 () Bool)

(assert (=> b!246171 m!301209))

(assert (=> b!246171 m!301207))

(declare-fun m!301211 () Bool)

(assert (=> b!246171 m!301211))

(declare-fun m!301213 () Bool)

(assert (=> b!246171 m!301213))

(assert (=> bm!12907 m!301183))

(assert (=> b!245633 d!69424))

(declare-fun bs!26429 () Bool)

(declare-fun d!69468 () Bool)

(assert (= bs!26429 (and d!69468 b!245614)))

(declare-fun lambda!8081 () Int)

(assert (=> bs!26429 (= lambda!8081 lambda!8043)))

(declare-fun bs!26430 () Bool)

(assert (= bs!26430 (and d!69468 b!245631)))

(assert (=> bs!26430 (not (= lambda!8081 lambda!8044))))

(declare-fun bs!26431 () Bool)

(assert (= bs!26431 (and d!69468 d!69344)))

(assert (=> bs!26431 (= lambda!8081 lambda!8061)))

(declare-fun bs!26432 () Bool)

(assert (= bs!26432 (and d!69468 b!246170)))

(assert (=> bs!26432 (not (= lambda!8081 lambda!8073))))

(declare-fun bs!26433 () Bool)

(declare-fun b!246409 () Bool)

(assert (= bs!26433 (and b!246409 d!69344)))

(declare-fun lambda!8082 () Int)

(assert (=> bs!26433 (not (= lambda!8082 lambda!8061))))

(declare-fun bs!26434 () Bool)

(assert (= bs!26434 (and b!246409 b!246170)))

(assert (=> bs!26434 (= lambda!8082 lambda!8073)))

(declare-fun bs!26435 () Bool)

(assert (= bs!26435 (and b!246409 d!69468)))

(assert (=> bs!26435 (not (= lambda!8082 lambda!8081))))

(declare-fun bs!26436 () Bool)

(assert (= bs!26436 (and b!246409 b!245614)))

(assert (=> bs!26436 (not (= lambda!8082 lambda!8043))))

(declare-fun bs!26437 () Bool)

(assert (= bs!26437 (and b!246409 b!245631)))

(assert (=> bs!26437 (= lambda!8082 lambda!8044)))

(declare-fun b!246420 () Bool)

(declare-fun e!152807 () Bool)

(assert (=> b!246420 (= e!152807 true)))

(declare-fun b!246419 () Bool)

(declare-fun e!152806 () Bool)

(assert (=> b!246419 (= e!152806 e!152807)))

(declare-fun b!246418 () Bool)

(declare-fun e!152805 () Bool)

(assert (=> b!246418 (= e!152805 e!152806)))

(assert (=> b!246409 e!152805))

(assert (= b!246419 b!246420))

(assert (= b!246418 b!246419))

(assert (= (and b!246409 ((_ is Cons!3617) rules!1920)) b!246418))

(assert (=> b!246420 (< (dynLambda!1753 order!2649 (toValue!1388 (transformation!685 (h!9014 rules!1920)))) (dynLambda!1754 order!2651 lambda!8082))))

(assert (=> b!246420 (< (dynLambda!1755 order!2653 (toChars!1247 (transformation!685 (h!9014 rules!1920)))) (dynLambda!1754 order!2651 lambda!8082))))

(assert (=> b!246409 true))

(declare-fun b!246407 () Bool)

(declare-fun e!152804 () BalanceConc!2392)

(assert (=> b!246407 (= e!152804 (BalanceConc!2393 Empty!1192))))

(declare-fun bm!12939 () Bool)

(declare-fun call!12948 () Token!1114)

(assert (=> bm!12939 (= call!12948 (apply!678 (seqFromList!748 (t!35112 tokens!465)) 0))))

(declare-fun e!152799 () BalanceConc!2392)

(assert (=> b!246409 (= e!152804 e!152799)))

(declare-fun lt!99926 () List!3628)

(assert (=> b!246409 (= lt!99926 (list!1421 (seqFromList!748 (t!35112 tokens!465))))))

(declare-fun lt!99922 () Unit!4382)

(assert (=> b!246409 (= lt!99922 (lemmaDropApply!180 lt!99926 0))))

(assert (=> b!246409 (= (head!844 (drop!193 lt!99926 0)) (apply!679 lt!99926 0))))

(declare-fun lt!99918 () Unit!4382)

(assert (=> b!246409 (= lt!99918 lt!99922)))

(declare-fun lt!99913 () List!3628)

(assert (=> b!246409 (= lt!99913 (list!1421 (seqFromList!748 (t!35112 tokens!465))))))

(declare-fun lt!99915 () Unit!4382)

(assert (=> b!246409 (= lt!99915 (lemmaDropTail!172 lt!99913 0))))

(assert (=> b!246409 (= (tail!446 (drop!193 lt!99913 0)) (drop!193 lt!99913 (+ 0 1)))))

(declare-fun lt!99925 () Unit!4382)

(assert (=> b!246409 (= lt!99925 lt!99915)))

(declare-fun lt!99916 () Unit!4382)

(assert (=> b!246409 (= lt!99916 (forallContained!252 (list!1421 (seqFromList!748 (t!35112 tokens!465))) lambda!8082 (apply!678 (seqFromList!748 (t!35112 tokens!465)) 0)))))

(declare-fun lt!99920 () BalanceConc!2392)

(assert (=> b!246409 (= lt!99920 (printWithSeparatorTokenWhenNeededRec!254 thiss!17480 rules!1920 (seqFromList!748 (t!35112 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun lt!99921 () Option!733)

(assert (=> b!246409 (= lt!99921 (maxPrefixZipperSequence!264 thiss!17480 rules!1920 (++!924 (charsOf!340 (apply!678 (seqFromList!748 (t!35112 tokens!465)) 0)) lt!99920)))))

(declare-fun res!114015 () Bool)

(assert (=> b!246409 (= res!114015 ((_ is Some!732) lt!99921))))

(declare-fun e!152802 () Bool)

(assert (=> b!246409 (=> (not res!114015) (not e!152802))))

(declare-fun c!47060 () Bool)

(assert (=> b!246409 (= c!47060 e!152802)))

(declare-fun b!246410 () Bool)

(declare-fun e!152800 () BalanceConc!2392)

(declare-fun call!12946 () BalanceConc!2392)

(assert (=> b!246410 (= e!152800 call!12946)))

(declare-fun bm!12940 () Bool)

(declare-fun c!47062 () Bool)

(assert (=> bm!12940 (= c!47062 c!47060)))

(declare-fun call!12945 () BalanceConc!2392)

(declare-fun call!12947 () BalanceConc!2392)

(assert (=> bm!12940 (= call!12947 (++!924 e!152800 (ite c!47060 lt!99920 call!12945)))))

(declare-fun bm!12941 () Bool)

(declare-fun c!47061 () Bool)

(declare-fun call!12944 () Token!1114)

(assert (=> bm!12941 (= call!12946 (charsOf!340 (ite c!47060 call!12948 (ite c!47061 separatorToken!170 call!12944))))))

(declare-fun b!246411 () Bool)

(assert (=> b!246411 (= e!152800 (charsOf!340 call!12944))))

(declare-fun b!246412 () Bool)

(assert (=> b!246412 (= e!152802 (= (_1!2227 (v!14493 lt!99921)) (apply!678 (seqFromList!748 (t!35112 tokens!465)) 0)))))

(declare-fun b!246413 () Bool)

(declare-fun e!152801 () BalanceConc!2392)

(assert (=> b!246413 (= e!152801 (++!924 call!12947 lt!99920))))

(declare-fun b!246414 () Bool)

(declare-fun e!152798 () Bool)

(assert (=> b!246414 (= e!152798 (<= 0 (size!2873 (seqFromList!748 (t!35112 tokens!465)))))))

(declare-fun b!246415 () Bool)

(declare-fun e!152803 () Bool)

(assert (=> b!246415 (= e!152803 (not (= (_1!2227 (v!14493 lt!99921)) call!12948)))))

(declare-fun bm!12942 () Bool)

(assert (=> bm!12942 (= call!12945 call!12946)))

(declare-fun b!246416 () Bool)

(assert (=> b!246416 (= e!152799 call!12947)))

(declare-fun lt!99914 () BalanceConc!2392)

(assert (=> d!69468 (= (list!1420 lt!99914) (printWithSeparatorTokenWhenNeededList!264 thiss!17480 rules!1920 (dropList!140 (seqFromList!748 (t!35112 tokens!465)) 0) separatorToken!170))))

(assert (=> d!69468 (= lt!99914 e!152804)))

(declare-fun c!47059 () Bool)

(assert (=> d!69468 (= c!47059 (>= 0 (size!2873 (seqFromList!748 (t!35112 tokens!465)))))))

(declare-fun lt!99917 () Unit!4382)

(declare-fun lemmaContentSubsetPreservesForall!84 (List!3628 List!3628 Int) Unit!4382)

(assert (=> d!69468 (= lt!99917 (lemmaContentSubsetPreservesForall!84 (list!1421 (seqFromList!748 (t!35112 tokens!465))) (dropList!140 (seqFromList!748 (t!35112 tokens!465)) 0) lambda!8081))))

(assert (=> d!69468 e!152798))

(declare-fun res!114016 () Bool)

(assert (=> d!69468 (=> (not res!114016) (not e!152798))))

(assert (=> d!69468 (= res!114016 (>= 0 0))))

(assert (=> d!69468 (= (printWithSeparatorTokenWhenNeededRec!254 thiss!17480 rules!1920 (seqFromList!748 (t!35112 tokens!465)) separatorToken!170 0) lt!99914)))

(declare-fun b!246408 () Bool)

(assert (=> b!246408 (= e!152801 (BalanceConc!2393 Empty!1192))))

(assert (=> b!246408 (= (print!302 thiss!17480 (singletonSeq!237 call!12944)) (printTailRec!265 thiss!17480 (singletonSeq!237 call!12944) 0 (BalanceConc!2393 Empty!1192)))))

(declare-fun lt!99924 () Unit!4382)

(declare-fun Unit!4394 () Unit!4382)

(assert (=> b!246408 (= lt!99924 Unit!4394)))

(declare-fun lt!99919 () Unit!4382)

(assert (=> b!246408 (= lt!99919 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!88 thiss!17480 rules!1920 (list!1420 call!12945) (list!1420 lt!99920)))))

(assert (=> b!246408 false))

(declare-fun lt!99923 () Unit!4382)

(declare-fun Unit!4395 () Unit!4382)

(assert (=> b!246408 (= lt!99923 Unit!4395)))

(declare-fun b!246417 () Bool)

(assert (=> b!246417 (= c!47061 e!152803)))

(declare-fun res!114017 () Bool)

(assert (=> b!246417 (=> (not res!114017) (not e!152803))))

(assert (=> b!246417 (= res!114017 ((_ is Some!732) lt!99921))))

(assert (=> b!246417 (= e!152799 e!152801)))

(declare-fun bm!12943 () Bool)

(assert (=> bm!12943 (= call!12944 call!12948)))

(assert (= (and d!69468 res!114016) b!246414))

(assert (= (and d!69468 c!47059) b!246407))

(assert (= (and d!69468 (not c!47059)) b!246409))

(assert (= (and b!246409 res!114015) b!246412))

(assert (= (and b!246409 c!47060) b!246416))

(assert (= (and b!246409 (not c!47060)) b!246417))

(assert (= (and b!246417 res!114017) b!246415))

(assert (= (and b!246417 c!47061) b!246413))

(assert (= (and b!246417 (not c!47061)) b!246408))

(assert (= (or b!246413 b!246408) bm!12943))

(assert (= (or b!246413 b!246408) bm!12942))

(assert (= (or b!246416 b!246415 bm!12943) bm!12939))

(assert (= (or b!246416 bm!12942) bm!12941))

(assert (= (or b!246416 b!246413) bm!12940))

(assert (= (and bm!12940 c!47062) b!246410))

(assert (= (and bm!12940 (not c!47062)) b!246411))

(assert (=> d!69468 m!300433))

(declare-fun m!301505 () Bool)

(assert (=> d!69468 m!301505))

(declare-fun m!301507 () Bool)

(assert (=> d!69468 m!301507))

(declare-fun m!301509 () Bool)

(assert (=> d!69468 m!301509))

(declare-fun m!301511 () Bool)

(assert (=> d!69468 m!301511))

(assert (=> d!69468 m!300433))

(assert (=> d!69468 m!301509))

(assert (=> d!69468 m!300433))

(declare-fun m!301513 () Bool)

(assert (=> d!69468 m!301513))

(assert (=> d!69468 m!301513))

(assert (=> d!69468 m!301509))

(declare-fun m!301515 () Bool)

(assert (=> d!69468 m!301515))

(assert (=> bm!12939 m!300433))

(declare-fun m!301517 () Bool)

(assert (=> bm!12939 m!301517))

(assert (=> b!246414 m!300433))

(assert (=> b!246414 m!301505))

(declare-fun m!301519 () Bool)

(assert (=> bm!12941 m!301519))

(assert (=> b!246412 m!300433))

(assert (=> b!246412 m!301517))

(declare-fun m!301521 () Bool)

(assert (=> b!246411 m!301521))

(assert (=> b!246409 m!301517))

(declare-fun m!301523 () Bool)

(assert (=> b!246409 m!301523))

(declare-fun m!301525 () Bool)

(assert (=> b!246409 m!301525))

(assert (=> b!246409 m!301513))

(assert (=> b!246409 m!301517))

(declare-fun m!301527 () Bool)

(assert (=> b!246409 m!301527))

(declare-fun m!301529 () Bool)

(assert (=> b!246409 m!301529))

(declare-fun m!301531 () Bool)

(assert (=> b!246409 m!301531))

(declare-fun m!301533 () Bool)

(assert (=> b!246409 m!301533))

(declare-fun m!301535 () Bool)

(assert (=> b!246409 m!301535))

(assert (=> b!246409 m!300433))

(declare-fun m!301537 () Bool)

(assert (=> b!246409 m!301537))

(assert (=> b!246409 m!300433))

(assert (=> b!246409 m!301513))

(declare-fun m!301539 () Bool)

(assert (=> b!246409 m!301539))

(declare-fun m!301541 () Bool)

(assert (=> b!246409 m!301541))

(assert (=> b!246409 m!301525))

(declare-fun m!301543 () Bool)

(assert (=> b!246409 m!301543))

(assert (=> b!246409 m!301523))

(assert (=> b!246409 m!301533))

(declare-fun m!301545 () Bool)

(assert (=> b!246409 m!301545))

(assert (=> b!246409 m!300433))

(assert (=> b!246409 m!301517))

(declare-fun m!301547 () Bool)

(assert (=> b!246409 m!301547))

(assert (=> b!246409 m!301539))

(declare-fun m!301549 () Bool)

(assert (=> b!246408 m!301549))

(declare-fun m!301551 () Bool)

(assert (=> b!246408 m!301551))

(declare-fun m!301553 () Bool)

(assert (=> b!246408 m!301553))

(declare-fun m!301555 () Bool)

(assert (=> b!246408 m!301555))

(declare-fun m!301557 () Bool)

(assert (=> b!246408 m!301557))

(assert (=> b!246408 m!301549))

(assert (=> b!246408 m!301551))

(assert (=> b!246408 m!301555))

(assert (=> b!246408 m!301555))

(declare-fun m!301559 () Bool)

(assert (=> b!246408 m!301559))

(declare-fun m!301561 () Bool)

(assert (=> bm!12940 m!301561))

(declare-fun m!301563 () Bool)

(assert (=> b!246413 m!301563))

(assert (=> b!245633 d!69468))

(declare-fun d!69526 () Bool)

(declare-fun lt!99929 () BalanceConc!2392)

(assert (=> d!69526 (= (list!1420 lt!99929) (originalCharacters!728 separatorToken!170))))

(assert (=> d!69526 (= lt!99929 (dynLambda!1759 (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))) (value!23838 separatorToken!170)))))

(assert (=> d!69526 (= (charsOf!340 separatorToken!170) lt!99929)))

(declare-fun b_lambda!7201 () Bool)

(assert (=> (not b_lambda!7201) (not d!69526)))

(assert (=> d!69526 t!35127))

(declare-fun b_and!18541 () Bool)

(assert (= b_and!18509 (and (=> t!35127 result!15940) b_and!18541)))

(assert (=> d!69526 t!35129))

(declare-fun b_and!18543 () Bool)

(assert (= b_and!18511 (and (=> t!35129 result!15944) b_and!18543)))

(assert (=> d!69526 t!35131))

(declare-fun b_and!18545 () Bool)

(assert (= b_and!18513 (and (=> t!35131 result!15946) b_and!18545)))

(declare-fun m!301565 () Bool)

(assert (=> d!69526 m!301565))

(assert (=> d!69526 m!300927))

(assert (=> b!245633 d!69526))

(declare-fun d!69528 () Bool)

(assert (=> d!69528 (= (++!922 (++!922 lt!99544 lt!99531) lt!99534) (++!922 lt!99544 (++!922 lt!99531 lt!99534)))))

(declare-fun lt!99932 () Unit!4382)

(declare-fun choose!2328 (List!3626 List!3626 List!3626) Unit!4382)

(assert (=> d!69528 (= lt!99932 (choose!2328 lt!99544 lt!99531 lt!99534))))

(assert (=> d!69528 (= (lemmaConcatAssociativity!390 lt!99544 lt!99531 lt!99534) lt!99932)))

(declare-fun bs!26438 () Bool)

(assert (= bs!26438 d!69528))

(assert (=> bs!26438 m!300439))

(assert (=> bs!26438 m!300435))

(assert (=> bs!26438 m!300435))

(declare-fun m!301567 () Bool)

(assert (=> bs!26438 m!301567))

(declare-fun m!301569 () Bool)

(assert (=> bs!26438 m!301569))

(assert (=> bs!26438 m!300439))

(assert (=> bs!26438 m!300441))

(assert (=> b!245633 d!69528))

(declare-fun d!69530 () Bool)

(declare-fun e!152809 () Bool)

(assert (=> d!69530 e!152809))

(declare-fun res!114018 () Bool)

(assert (=> d!69530 (=> (not res!114018) (not e!152809))))

(declare-fun lt!99933 () List!3626)

(assert (=> d!69530 (= res!114018 (= (content!502 lt!99933) ((_ map or) (content!502 lt!99544) (content!502 lt!99531))))))

(declare-fun e!152808 () List!3626)

(assert (=> d!69530 (= lt!99933 e!152808)))

(declare-fun c!47063 () Bool)

(assert (=> d!69530 (= c!47063 ((_ is Nil!3616) lt!99544))))

(assert (=> d!69530 (= (++!922 lt!99544 lt!99531) lt!99933)))

(declare-fun b!246421 () Bool)

(assert (=> b!246421 (= e!152808 lt!99531)))

(declare-fun b!246422 () Bool)

(assert (=> b!246422 (= e!152808 (Cons!3616 (h!9013 lt!99544) (++!922 (t!35110 lt!99544) lt!99531)))))

(declare-fun b!246424 () Bool)

(assert (=> b!246424 (= e!152809 (or (not (= lt!99531 Nil!3616)) (= lt!99933 lt!99544)))))

(declare-fun b!246423 () Bool)

(declare-fun res!114019 () Bool)

(assert (=> b!246423 (=> (not res!114019) (not e!152809))))

(assert (=> b!246423 (= res!114019 (= (size!2872 lt!99933) (+ (size!2872 lt!99544) (size!2872 lt!99531))))))

(assert (= (and d!69530 c!47063) b!246421))

(assert (= (and d!69530 (not c!47063)) b!246422))

(assert (= (and d!69530 res!114018) b!246423))

(assert (= (and b!246423 res!114019) b!246424))

(declare-fun m!301571 () Bool)

(assert (=> d!69530 m!301571))

(assert (=> d!69530 m!300669))

(assert (=> d!69530 m!301059))

(declare-fun m!301573 () Bool)

(assert (=> b!246422 m!301573))

(declare-fun m!301575 () Bool)

(assert (=> b!246423 m!301575))

(assert (=> b!246423 m!300577))

(assert (=> b!246423 m!301065))

(assert (=> b!245633 d!69530))

(declare-fun d!69532 () Bool)

(assert (=> d!69532 (= (list!1420 (charsOf!340 (h!9015 tokens!465))) (list!1424 (c!46908 (charsOf!340 (h!9015 tokens!465)))))))

(declare-fun bs!26439 () Bool)

(assert (= bs!26439 d!69532))

(declare-fun m!301577 () Bool)

(assert (=> bs!26439 m!301577))

(assert (=> b!245633 d!69532))

(declare-fun d!69534 () Bool)

(declare-fun lt!99934 () BalanceConc!2392)

(assert (=> d!69534 (= (list!1420 lt!99934) (originalCharacters!728 (h!9015 tokens!465)))))

(assert (=> d!69534 (= lt!99934 (dynLambda!1759 (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))) (value!23838 (h!9015 tokens!465))))))

(assert (=> d!69534 (= (charsOf!340 (h!9015 tokens!465)) lt!99934)))

(declare-fun b_lambda!7203 () Bool)

(assert (=> (not b_lambda!7203) (not d!69534)))

(assert (=> d!69534 t!35133))

(declare-fun b_and!18547 () Bool)

(assert (= b_and!18541 (and (=> t!35133 result!15948) b_and!18547)))

(assert (=> d!69534 t!35135))

(declare-fun b_and!18549 () Bool)

(assert (= b_and!18543 (and (=> t!35135 result!15950) b_and!18549)))

(assert (=> d!69534 t!35137))

(declare-fun b_and!18551 () Bool)

(assert (= b_and!18545 (and (=> t!35137 result!15952) b_and!18551)))

(declare-fun m!301579 () Bool)

(assert (=> d!69534 m!301579))

(assert (=> d!69534 m!300949))

(assert (=> b!245633 d!69534))

(declare-fun d!69536 () Bool)

(declare-fun e!152811 () Bool)

(assert (=> d!69536 e!152811))

(declare-fun res!114020 () Bool)

(assert (=> d!69536 (=> (not res!114020) (not e!152811))))

(declare-fun lt!99935 () List!3626)

(assert (=> d!69536 (= res!114020 (= (content!502 lt!99935) ((_ map or) (content!502 lt!99544) (content!502 lt!99543))))))

(declare-fun e!152810 () List!3626)

(assert (=> d!69536 (= lt!99935 e!152810)))

(declare-fun c!47064 () Bool)

(assert (=> d!69536 (= c!47064 ((_ is Nil!3616) lt!99544))))

(assert (=> d!69536 (= (++!922 lt!99544 lt!99543) lt!99935)))

(declare-fun b!246425 () Bool)

(assert (=> b!246425 (= e!152810 lt!99543)))

(declare-fun b!246426 () Bool)

(assert (=> b!246426 (= e!152810 (Cons!3616 (h!9013 lt!99544) (++!922 (t!35110 lt!99544) lt!99543)))))

(declare-fun b!246428 () Bool)

(assert (=> b!246428 (= e!152811 (or (not (= lt!99543 Nil!3616)) (= lt!99935 lt!99544)))))

(declare-fun b!246427 () Bool)

(declare-fun res!114021 () Bool)

(assert (=> b!246427 (=> (not res!114021) (not e!152811))))

(assert (=> b!246427 (= res!114021 (= (size!2872 lt!99935) (+ (size!2872 lt!99544) (size!2872 lt!99543))))))

(assert (= (and d!69536 c!47064) b!246425))

(assert (= (and d!69536 (not c!47064)) b!246426))

(assert (= (and d!69536 res!114020) b!246427))

(assert (= (and b!246427 res!114021) b!246428))

(declare-fun m!301581 () Bool)

(assert (=> d!69536 m!301581))

(assert (=> d!69536 m!300669))

(declare-fun m!301583 () Bool)

(assert (=> d!69536 m!301583))

(declare-fun m!301585 () Bool)

(assert (=> b!246426 m!301585))

(declare-fun m!301587 () Bool)

(assert (=> b!246427 m!301587))

(assert (=> b!246427 m!300577))

(declare-fun m!301589 () Bool)

(assert (=> b!246427 m!301589))

(assert (=> b!245633 d!69536))

(declare-fun d!69538 () Bool)

(assert (=> d!69538 (= (list!1420 (charsOf!340 separatorToken!170)) (list!1424 (c!46908 (charsOf!340 separatorToken!170))))))

(declare-fun bs!26440 () Bool)

(assert (= bs!26440 d!69538))

(declare-fun m!301591 () Bool)

(assert (=> bs!26440 m!301591))

(assert (=> b!245633 d!69538))

(declare-fun d!69540 () Bool)

(assert (=> d!69540 (= (list!1420 lt!99532) (list!1424 (c!46908 lt!99532)))))

(declare-fun bs!26441 () Bool)

(assert (= bs!26441 d!69540))

(declare-fun m!301593 () Bool)

(assert (=> bs!26441 m!301593))

(assert (=> b!245633 d!69540))

(declare-fun d!69542 () Bool)

(declare-fun res!114026 () Bool)

(declare-fun e!152816 () Bool)

(assert (=> d!69542 (=> res!114026 e!152816)))

(assert (=> d!69542 (= res!114026 (not ((_ is Cons!3617) rules!1920)))))

(assert (=> d!69542 (= (sepAndNonSepRulesDisjointChars!274 rules!1920 rules!1920) e!152816)))

(declare-fun b!246433 () Bool)

(declare-fun e!152817 () Bool)

(assert (=> b!246433 (= e!152816 e!152817)))

(declare-fun res!114027 () Bool)

(assert (=> b!246433 (=> (not res!114027) (not e!152817))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!90 (Rule!1170 List!3627) Bool)

(assert (=> b!246433 (= res!114027 (ruleDisjointCharsFromAllFromOtherType!90 (h!9014 rules!1920) rules!1920))))

(declare-fun b!246434 () Bool)

(assert (=> b!246434 (= e!152817 (sepAndNonSepRulesDisjointChars!274 rules!1920 (t!35111 rules!1920)))))

(assert (= (and d!69542 (not res!114026)) b!246433))

(assert (= (and b!246433 res!114027) b!246434))

(declare-fun m!301595 () Bool)

(assert (=> b!246433 m!301595))

(declare-fun m!301597 () Bool)

(assert (=> b!246434 m!301597))

(assert (=> b!245632 d!69542))

(declare-fun d!69544 () Bool)

(declare-fun lt!99936 () Bool)

(declare-fun e!152818 () Bool)

(assert (=> d!69544 (= lt!99936 e!152818)))

(declare-fun res!114029 () Bool)

(assert (=> d!69544 (=> (not res!114029) (not e!152818))))

(assert (=> d!69544 (= res!114029 (= (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 (print!302 thiss!17480 (singletonSeq!237 (h!9015 tokens!465)))))) (list!1421 (singletonSeq!237 (h!9015 tokens!465)))))))

(declare-fun e!152819 () Bool)

(assert (=> d!69544 (= lt!99936 e!152819)))

(declare-fun res!114028 () Bool)

(assert (=> d!69544 (=> (not res!114028) (not e!152819))))

(declare-fun lt!99937 () tuple2!4018)

(assert (=> d!69544 (= res!114028 (= (size!2873 (_1!2225 lt!99937)) 1))))

(assert (=> d!69544 (= lt!99937 (lex!371 thiss!17480 rules!1920 (print!302 thiss!17480 (singletonSeq!237 (h!9015 tokens!465)))))))

(assert (=> d!69544 (not (isEmpty!2198 rules!1920))))

(assert (=> d!69544 (= (rulesProduceIndividualToken!320 thiss!17480 rules!1920 (h!9015 tokens!465)) lt!99936)))

(declare-fun b!246435 () Bool)

(declare-fun res!114030 () Bool)

(assert (=> b!246435 (=> (not res!114030) (not e!152819))))

(assert (=> b!246435 (= res!114030 (= (apply!678 (_1!2225 lt!99937) 0) (h!9015 tokens!465)))))

(declare-fun b!246436 () Bool)

(assert (=> b!246436 (= e!152819 (isEmpty!2205 (_2!2225 lt!99937)))))

(declare-fun b!246437 () Bool)

(assert (=> b!246437 (= e!152818 (isEmpty!2205 (_2!2225 (lex!371 thiss!17480 rules!1920 (print!302 thiss!17480 (singletonSeq!237 (h!9015 tokens!465)))))))))

(assert (= (and d!69544 res!114028) b!246435))

(assert (= (and b!246435 res!114030) b!246436))

(assert (= (and d!69544 res!114029) b!246437))

(assert (=> d!69544 m!300401))

(assert (=> d!69544 m!300465))

(assert (=> d!69544 m!300465))

(declare-fun m!301599 () Bool)

(assert (=> d!69544 m!301599))

(declare-fun m!301601 () Bool)

(assert (=> d!69544 m!301601))

(assert (=> d!69544 m!300465))

(declare-fun m!301603 () Bool)

(assert (=> d!69544 m!301603))

(declare-fun m!301605 () Bool)

(assert (=> d!69544 m!301605))

(assert (=> d!69544 m!301603))

(declare-fun m!301607 () Bool)

(assert (=> d!69544 m!301607))

(declare-fun m!301609 () Bool)

(assert (=> b!246435 m!301609))

(declare-fun m!301611 () Bool)

(assert (=> b!246436 m!301611))

(assert (=> b!246437 m!300465))

(assert (=> b!246437 m!300465))

(assert (=> b!246437 m!301603))

(assert (=> b!246437 m!301603))

(assert (=> b!246437 m!301607))

(declare-fun m!301613 () Bool)

(assert (=> b!246437 m!301613))

(assert (=> b!245611 d!69544))

(declare-fun bs!26442 () Bool)

(declare-fun d!69546 () Bool)

(assert (= bs!26442 (and d!69546 b!246170)))

(declare-fun lambda!8087 () Int)

(assert (=> bs!26442 (= lambda!8087 lambda!8073)))

(declare-fun bs!26443 () Bool)

(assert (= bs!26443 (and d!69546 d!69468)))

(assert (=> bs!26443 (not (= lambda!8087 lambda!8081))))

(declare-fun bs!26444 () Bool)

(assert (= bs!26444 (and d!69546 b!245614)))

(assert (=> bs!26444 (not (= lambda!8087 lambda!8043))))

(declare-fun bs!26445 () Bool)

(assert (= bs!26445 (and d!69546 b!245631)))

(assert (=> bs!26445 (= lambda!8087 lambda!8044)))

(declare-fun bs!26446 () Bool)

(assert (= bs!26446 (and d!69546 b!246409)))

(assert (=> bs!26446 (= lambda!8087 lambda!8082)))

(declare-fun bs!26447 () Bool)

(assert (= bs!26447 (and d!69546 d!69344)))

(assert (=> bs!26447 (not (= lambda!8087 lambda!8061))))

(declare-fun b!246443 () Bool)

(declare-fun e!152825 () Bool)

(assert (=> b!246443 (= e!152825 true)))

(declare-fun b!246442 () Bool)

(declare-fun e!152824 () Bool)

(assert (=> b!246442 (= e!152824 e!152825)))

(declare-fun b!246441 () Bool)

(declare-fun e!152823 () Bool)

(assert (=> b!246441 (= e!152823 e!152824)))

(assert (=> d!69546 e!152823))

(assert (= b!246442 b!246443))

(assert (= b!246441 b!246442))

(assert (= (and d!69546 ((_ is Cons!3617) rules!1920)) b!246441))

(assert (=> b!246443 (< (dynLambda!1753 order!2649 (toValue!1388 (transformation!685 (h!9014 rules!1920)))) (dynLambda!1754 order!2651 lambda!8087))))

(assert (=> b!246443 (< (dynLambda!1755 order!2653 (toChars!1247 (transformation!685 (h!9014 rules!1920)))) (dynLambda!1754 order!2651 lambda!8087))))

(assert (=> d!69546 true))

(declare-fun e!152822 () Bool)

(assert (=> d!69546 e!152822))

(declare-fun res!114033 () Bool)

(assert (=> d!69546 (=> (not res!114033) (not e!152822))))

(declare-fun lt!99940 () Bool)

(assert (=> d!69546 (= res!114033 (= lt!99940 (forall!841 (list!1421 lt!99537) lambda!8087)))))

(declare-fun forall!845 (BalanceConc!2394 Int) Bool)

(assert (=> d!69546 (= lt!99940 (forall!845 lt!99537 lambda!8087))))

(assert (=> d!69546 (not (isEmpty!2198 rules!1920))))

(assert (=> d!69546 (= (rulesProduceEachTokenIndividually!363 thiss!17480 rules!1920 lt!99537) lt!99940)))

(declare-fun b!246440 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!201 (LexerInterface!571 List!3627 List!3628) Bool)

(assert (=> b!246440 (= e!152822 (= lt!99940 (rulesProduceEachTokenIndividuallyList!201 thiss!17480 rules!1920 (list!1421 lt!99537))))))

(assert (= (and d!69546 res!114033) b!246440))

(declare-fun m!301615 () Bool)

(assert (=> d!69546 m!301615))

(assert (=> d!69546 m!301615))

(declare-fun m!301617 () Bool)

(assert (=> d!69546 m!301617))

(declare-fun m!301619 () Bool)

(assert (=> d!69546 m!301619))

(assert (=> d!69546 m!300401))

(assert (=> b!246440 m!301615))

(assert (=> b!246440 m!301615))

(declare-fun m!301621 () Bool)

(assert (=> b!246440 m!301621))

(assert (=> b!245634 d!69546))

(declare-fun d!69548 () Bool)

(assert (=> d!69548 (= (seqFromList!748 tokens!465) (fromListB!269 tokens!465))))

(declare-fun bs!26448 () Bool)

(assert (= bs!26448 d!69548))

(declare-fun m!301623 () Bool)

(assert (=> bs!26448 m!301623))

(assert (=> b!245634 d!69548))

(declare-fun d!69550 () Bool)

(assert (=> d!69550 (= (list!1420 (printWithSeparatorTokenWhenNeededRec!254 thiss!17480 rules!1920 lt!99537 separatorToken!170 0)) (list!1424 (c!46908 (printWithSeparatorTokenWhenNeededRec!254 thiss!17480 rules!1920 lt!99537 separatorToken!170 0))))))

(declare-fun bs!26449 () Bool)

(assert (= bs!26449 d!69550))

(declare-fun m!301625 () Bool)

(assert (=> bs!26449 m!301625))

(assert (=> b!245612 d!69550))

(declare-fun bs!26450 () Bool)

(declare-fun d!69552 () Bool)

(assert (= bs!26450 (and d!69552 b!246170)))

(declare-fun lambda!8088 () Int)

(assert (=> bs!26450 (not (= lambda!8088 lambda!8073))))

(declare-fun bs!26451 () Bool)

(assert (= bs!26451 (and d!69552 d!69468)))

(assert (=> bs!26451 (= lambda!8088 lambda!8081)))

(declare-fun bs!26452 () Bool)

(assert (= bs!26452 (and d!69552 b!245614)))

(assert (=> bs!26452 (= lambda!8088 lambda!8043)))

(declare-fun bs!26453 () Bool)

(assert (= bs!26453 (and d!69552 b!245631)))

(assert (=> bs!26453 (not (= lambda!8088 lambda!8044))))

(declare-fun bs!26454 () Bool)

(assert (= bs!26454 (and d!69552 d!69546)))

(assert (=> bs!26454 (not (= lambda!8088 lambda!8087))))

(declare-fun bs!26455 () Bool)

(assert (= bs!26455 (and d!69552 b!246409)))

(assert (=> bs!26455 (not (= lambda!8088 lambda!8082))))

(declare-fun bs!26456 () Bool)

(assert (= bs!26456 (and d!69552 d!69344)))

(assert (=> bs!26456 (= lambda!8088 lambda!8061)))

(declare-fun bs!26457 () Bool)

(declare-fun b!246446 () Bool)

(assert (= bs!26457 (and b!246446 b!246170)))

(declare-fun lambda!8089 () Int)

(assert (=> bs!26457 (= lambda!8089 lambda!8073)))

(declare-fun bs!26458 () Bool)

(assert (= bs!26458 (and b!246446 d!69468)))

(assert (=> bs!26458 (not (= lambda!8089 lambda!8081))))

(declare-fun bs!26459 () Bool)

(assert (= bs!26459 (and b!246446 b!245614)))

(assert (=> bs!26459 (not (= lambda!8089 lambda!8043))))

(declare-fun bs!26460 () Bool)

(assert (= bs!26460 (and b!246446 d!69546)))

(assert (=> bs!26460 (= lambda!8089 lambda!8087)))

(declare-fun bs!26461 () Bool)

(assert (= bs!26461 (and b!246446 b!246409)))

(assert (=> bs!26461 (= lambda!8089 lambda!8082)))

(declare-fun bs!26462 () Bool)

(assert (= bs!26462 (and b!246446 d!69344)))

(assert (=> bs!26462 (not (= lambda!8089 lambda!8061))))

(declare-fun bs!26463 () Bool)

(assert (= bs!26463 (and b!246446 b!245631)))

(assert (=> bs!26463 (= lambda!8089 lambda!8044)))

(declare-fun bs!26464 () Bool)

(assert (= bs!26464 (and b!246446 d!69552)))

(assert (=> bs!26464 (not (= lambda!8089 lambda!8088))))

(declare-fun b!246457 () Bool)

(declare-fun e!152835 () Bool)

(assert (=> b!246457 (= e!152835 true)))

(declare-fun b!246456 () Bool)

(declare-fun e!152834 () Bool)

(assert (=> b!246456 (= e!152834 e!152835)))

(declare-fun b!246455 () Bool)

(declare-fun e!152833 () Bool)

(assert (=> b!246455 (= e!152833 e!152834)))

(assert (=> b!246446 e!152833))

(assert (= b!246456 b!246457))

(assert (= b!246455 b!246456))

(assert (= (and b!246446 ((_ is Cons!3617) rules!1920)) b!246455))

(assert (=> b!246457 (< (dynLambda!1753 order!2649 (toValue!1388 (transformation!685 (h!9014 rules!1920)))) (dynLambda!1754 order!2651 lambda!8089))))

(assert (=> b!246457 (< (dynLambda!1755 order!2653 (toChars!1247 (transformation!685 (h!9014 rules!1920)))) (dynLambda!1754 order!2651 lambda!8089))))

(assert (=> b!246446 true))

(declare-fun b!246444 () Bool)

(declare-fun e!152832 () BalanceConc!2392)

(assert (=> b!246444 (= e!152832 (BalanceConc!2393 Empty!1192))))

(declare-fun bm!12944 () Bool)

(declare-fun call!12953 () Token!1114)

(assert (=> bm!12944 (= call!12953 (apply!678 lt!99537 0))))

(declare-fun e!152827 () BalanceConc!2392)

(assert (=> b!246446 (= e!152832 e!152827)))

(declare-fun lt!99954 () List!3628)

(assert (=> b!246446 (= lt!99954 (list!1421 lt!99537))))

(declare-fun lt!99950 () Unit!4382)

(assert (=> b!246446 (= lt!99950 (lemmaDropApply!180 lt!99954 0))))

(assert (=> b!246446 (= (head!844 (drop!193 lt!99954 0)) (apply!679 lt!99954 0))))

(declare-fun lt!99946 () Unit!4382)

(assert (=> b!246446 (= lt!99946 lt!99950)))

(declare-fun lt!99941 () List!3628)

(assert (=> b!246446 (= lt!99941 (list!1421 lt!99537))))

(declare-fun lt!99943 () Unit!4382)

(assert (=> b!246446 (= lt!99943 (lemmaDropTail!172 lt!99941 0))))

(assert (=> b!246446 (= (tail!446 (drop!193 lt!99941 0)) (drop!193 lt!99941 (+ 0 1)))))

(declare-fun lt!99953 () Unit!4382)

(assert (=> b!246446 (= lt!99953 lt!99943)))

(declare-fun lt!99944 () Unit!4382)

(assert (=> b!246446 (= lt!99944 (forallContained!252 (list!1421 lt!99537) lambda!8089 (apply!678 lt!99537 0)))))

(declare-fun lt!99948 () BalanceConc!2392)

(assert (=> b!246446 (= lt!99948 (printWithSeparatorTokenWhenNeededRec!254 thiss!17480 rules!1920 lt!99537 separatorToken!170 (+ 0 1)))))

(declare-fun lt!99949 () Option!733)

(assert (=> b!246446 (= lt!99949 (maxPrefixZipperSequence!264 thiss!17480 rules!1920 (++!924 (charsOf!340 (apply!678 lt!99537 0)) lt!99948)))))

(declare-fun res!114034 () Bool)

(assert (=> b!246446 (= res!114034 ((_ is Some!732) lt!99949))))

(declare-fun e!152830 () Bool)

(assert (=> b!246446 (=> (not res!114034) (not e!152830))))

(declare-fun c!47066 () Bool)

(assert (=> b!246446 (= c!47066 e!152830)))

(declare-fun b!246447 () Bool)

(declare-fun e!152828 () BalanceConc!2392)

(declare-fun call!12951 () BalanceConc!2392)

(assert (=> b!246447 (= e!152828 call!12951)))

(declare-fun bm!12945 () Bool)

(declare-fun c!47068 () Bool)

(assert (=> bm!12945 (= c!47068 c!47066)))

(declare-fun call!12952 () BalanceConc!2392)

(declare-fun call!12950 () BalanceConc!2392)

(assert (=> bm!12945 (= call!12952 (++!924 e!152828 (ite c!47066 lt!99948 call!12950)))))

(declare-fun c!47067 () Bool)

(declare-fun bm!12946 () Bool)

(declare-fun call!12949 () Token!1114)

(assert (=> bm!12946 (= call!12951 (charsOf!340 (ite c!47066 call!12953 (ite c!47067 separatorToken!170 call!12949))))))

(declare-fun b!246448 () Bool)

(assert (=> b!246448 (= e!152828 (charsOf!340 call!12949))))

(declare-fun b!246449 () Bool)

(assert (=> b!246449 (= e!152830 (= (_1!2227 (v!14493 lt!99949)) (apply!678 lt!99537 0)))))

(declare-fun b!246450 () Bool)

(declare-fun e!152829 () BalanceConc!2392)

(assert (=> b!246450 (= e!152829 (++!924 call!12952 lt!99948))))

(declare-fun b!246451 () Bool)

(declare-fun e!152826 () Bool)

(assert (=> b!246451 (= e!152826 (<= 0 (size!2873 lt!99537)))))

(declare-fun b!246452 () Bool)

(declare-fun e!152831 () Bool)

(assert (=> b!246452 (= e!152831 (not (= (_1!2227 (v!14493 lt!99949)) call!12953)))))

(declare-fun bm!12947 () Bool)

(assert (=> bm!12947 (= call!12950 call!12951)))

(declare-fun b!246453 () Bool)

(assert (=> b!246453 (= e!152827 call!12952)))

(declare-fun lt!99942 () BalanceConc!2392)

(assert (=> d!69552 (= (list!1420 lt!99942) (printWithSeparatorTokenWhenNeededList!264 thiss!17480 rules!1920 (dropList!140 lt!99537 0) separatorToken!170))))

(assert (=> d!69552 (= lt!99942 e!152832)))

(declare-fun c!47065 () Bool)

(assert (=> d!69552 (= c!47065 (>= 0 (size!2873 lt!99537)))))

(declare-fun lt!99945 () Unit!4382)

(assert (=> d!69552 (= lt!99945 (lemmaContentSubsetPreservesForall!84 (list!1421 lt!99537) (dropList!140 lt!99537 0) lambda!8088))))

(assert (=> d!69552 e!152826))

(declare-fun res!114035 () Bool)

(assert (=> d!69552 (=> (not res!114035) (not e!152826))))

(assert (=> d!69552 (= res!114035 (>= 0 0))))

(assert (=> d!69552 (= (printWithSeparatorTokenWhenNeededRec!254 thiss!17480 rules!1920 lt!99537 separatorToken!170 0) lt!99942)))

(declare-fun b!246445 () Bool)

(assert (=> b!246445 (= e!152829 (BalanceConc!2393 Empty!1192))))

(assert (=> b!246445 (= (print!302 thiss!17480 (singletonSeq!237 call!12949)) (printTailRec!265 thiss!17480 (singletonSeq!237 call!12949) 0 (BalanceConc!2393 Empty!1192)))))

(declare-fun lt!99952 () Unit!4382)

(declare-fun Unit!4396 () Unit!4382)

(assert (=> b!246445 (= lt!99952 Unit!4396)))

(declare-fun lt!99947 () Unit!4382)

(assert (=> b!246445 (= lt!99947 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!88 thiss!17480 rules!1920 (list!1420 call!12950) (list!1420 lt!99948)))))

(assert (=> b!246445 false))

(declare-fun lt!99951 () Unit!4382)

(declare-fun Unit!4397 () Unit!4382)

(assert (=> b!246445 (= lt!99951 Unit!4397)))

(declare-fun b!246454 () Bool)

(assert (=> b!246454 (= c!47067 e!152831)))

(declare-fun res!114036 () Bool)

(assert (=> b!246454 (=> (not res!114036) (not e!152831))))

(assert (=> b!246454 (= res!114036 ((_ is Some!732) lt!99949))))

(assert (=> b!246454 (= e!152827 e!152829)))

(declare-fun bm!12948 () Bool)

(assert (=> bm!12948 (= call!12949 call!12953)))

(assert (= (and d!69552 res!114035) b!246451))

(assert (= (and d!69552 c!47065) b!246444))

(assert (= (and d!69552 (not c!47065)) b!246446))

(assert (= (and b!246446 res!114034) b!246449))

(assert (= (and b!246446 c!47066) b!246453))

(assert (= (and b!246446 (not c!47066)) b!246454))

(assert (= (and b!246454 res!114036) b!246452))

(assert (= (and b!246454 c!47067) b!246450))

(assert (= (and b!246454 (not c!47067)) b!246445))

(assert (= (or b!246450 b!246445) bm!12948))

(assert (= (or b!246450 b!246445) bm!12947))

(assert (= (or b!246453 b!246452 bm!12948) bm!12944))

(assert (= (or b!246453 bm!12947) bm!12946))

(assert (= (or b!246453 b!246450) bm!12945))

(assert (= (and bm!12945 c!47068) b!246447))

(assert (= (and bm!12945 (not c!47068)) b!246448))

(declare-fun m!301627 () Bool)

(assert (=> d!69552 m!301627))

(declare-fun m!301629 () Bool)

(assert (=> d!69552 m!301629))

(declare-fun m!301631 () Bool)

(assert (=> d!69552 m!301631))

(declare-fun m!301633 () Bool)

(assert (=> d!69552 m!301633))

(assert (=> d!69552 m!301631))

(assert (=> d!69552 m!301615))

(assert (=> d!69552 m!301615))

(assert (=> d!69552 m!301631))

(declare-fun m!301635 () Bool)

(assert (=> d!69552 m!301635))

(declare-fun m!301637 () Bool)

(assert (=> bm!12944 m!301637))

(assert (=> b!246451 m!301627))

(declare-fun m!301639 () Bool)

(assert (=> bm!12946 m!301639))

(assert (=> b!246449 m!301637))

(declare-fun m!301641 () Bool)

(assert (=> b!246448 m!301641))

(assert (=> b!246446 m!301637))

(declare-fun m!301643 () Bool)

(assert (=> b!246446 m!301643))

(declare-fun m!301645 () Bool)

(assert (=> b!246446 m!301645))

(assert (=> b!246446 m!301615))

(assert (=> b!246446 m!301637))

(declare-fun m!301647 () Bool)

(assert (=> b!246446 m!301647))

(declare-fun m!301649 () Bool)

(assert (=> b!246446 m!301649))

(declare-fun m!301651 () Bool)

(assert (=> b!246446 m!301651))

(declare-fun m!301653 () Bool)

(assert (=> b!246446 m!301653))

(declare-fun m!301655 () Bool)

(assert (=> b!246446 m!301655))

(declare-fun m!301657 () Bool)

(assert (=> b!246446 m!301657))

(assert (=> b!246446 m!301615))

(declare-fun m!301659 () Bool)

(assert (=> b!246446 m!301659))

(declare-fun m!301661 () Bool)

(assert (=> b!246446 m!301661))

(assert (=> b!246446 m!301645))

(declare-fun m!301663 () Bool)

(assert (=> b!246446 m!301663))

(assert (=> b!246446 m!301643))

(assert (=> b!246446 m!301653))

(declare-fun m!301665 () Bool)

(assert (=> b!246446 m!301665))

(assert (=> b!246446 m!301637))

(declare-fun m!301667 () Bool)

(assert (=> b!246446 m!301667))

(assert (=> b!246446 m!301659))

(declare-fun m!301669 () Bool)

(assert (=> b!246445 m!301669))

(declare-fun m!301671 () Bool)

(assert (=> b!246445 m!301671))

(declare-fun m!301673 () Bool)

(assert (=> b!246445 m!301673))

(declare-fun m!301675 () Bool)

(assert (=> b!246445 m!301675))

(declare-fun m!301677 () Bool)

(assert (=> b!246445 m!301677))

(assert (=> b!246445 m!301669))

(assert (=> b!246445 m!301671))

(assert (=> b!246445 m!301675))

(assert (=> b!246445 m!301675))

(declare-fun m!301679 () Bool)

(assert (=> b!246445 m!301679))

(declare-fun m!301681 () Bool)

(assert (=> bm!12945 m!301681))

(declare-fun m!301683 () Bool)

(assert (=> b!246450 m!301683))

(assert (=> b!245612 d!69552))

(declare-fun bs!26465 () Bool)

(declare-fun b!246459 () Bool)

(assert (= bs!26465 (and b!246459 b!246446)))

(declare-fun lambda!8090 () Int)

(assert (=> bs!26465 (= lambda!8090 lambda!8089)))

(declare-fun bs!26466 () Bool)

(assert (= bs!26466 (and b!246459 b!246170)))

(assert (=> bs!26466 (= lambda!8090 lambda!8073)))

(declare-fun bs!26467 () Bool)

(assert (= bs!26467 (and b!246459 d!69468)))

(assert (=> bs!26467 (not (= lambda!8090 lambda!8081))))

(declare-fun bs!26468 () Bool)

(assert (= bs!26468 (and b!246459 b!245614)))

(assert (=> bs!26468 (not (= lambda!8090 lambda!8043))))

(declare-fun bs!26469 () Bool)

(assert (= bs!26469 (and b!246459 d!69546)))

(assert (=> bs!26469 (= lambda!8090 lambda!8087)))

(declare-fun bs!26470 () Bool)

(assert (= bs!26470 (and b!246459 b!246409)))

(assert (=> bs!26470 (= lambda!8090 lambda!8082)))

(declare-fun bs!26471 () Bool)

(assert (= bs!26471 (and b!246459 d!69344)))

(assert (=> bs!26471 (not (= lambda!8090 lambda!8061))))

(declare-fun bs!26472 () Bool)

(assert (= bs!26472 (and b!246459 b!245631)))

(assert (=> bs!26472 (= lambda!8090 lambda!8044)))

(declare-fun bs!26473 () Bool)

(assert (= bs!26473 (and b!246459 d!69552)))

(assert (=> bs!26473 (not (= lambda!8090 lambda!8088))))

(declare-fun b!246468 () Bool)

(declare-fun e!152842 () Bool)

(assert (=> b!246468 (= e!152842 true)))

(declare-fun b!246467 () Bool)

(declare-fun e!152841 () Bool)

(assert (=> b!246467 (= e!152841 e!152842)))

(declare-fun b!246466 () Bool)

(declare-fun e!152840 () Bool)

(assert (=> b!246466 (= e!152840 e!152841)))

(assert (=> b!246459 e!152840))

(assert (= b!246467 b!246468))

(assert (= b!246466 b!246467))

(assert (= (and b!246459 ((_ is Cons!3617) rules!1920)) b!246466))

(assert (=> b!246468 (< (dynLambda!1753 order!2649 (toValue!1388 (transformation!685 (h!9014 rules!1920)))) (dynLambda!1754 order!2651 lambda!8090))))

(assert (=> b!246468 (< (dynLambda!1755 order!2653 (toChars!1247 (transformation!685 (h!9014 rules!1920)))) (dynLambda!1754 order!2651 lambda!8090))))

(assert (=> b!246459 true))

(declare-fun b!246458 () Bool)

(declare-fun e!152839 () List!3626)

(declare-fun call!12954 () List!3626)

(declare-fun lt!99956 () List!3626)

(assert (=> b!246458 (= e!152839 (++!922 call!12954 lt!99956))))

(declare-fun bm!12949 () Bool)

(declare-fun call!12955 () BalanceConc!2392)

(assert (=> bm!12949 (= call!12955 (charsOf!340 (h!9015 tokens!465)))))

(declare-fun b!246460 () Bool)

(assert (=> b!246460 (= e!152839 Nil!3616)))

(assert (=> b!246460 (= (print!302 thiss!17480 (singletonSeq!237 (h!9015 tokens!465))) (printTailRec!265 thiss!17480 (singletonSeq!237 (h!9015 tokens!465)) 0 (BalanceConc!2393 Empty!1192)))))

(declare-fun lt!99958 () Unit!4382)

(declare-fun Unit!4398 () Unit!4382)

(assert (=> b!246460 (= lt!99958 Unit!4398)))

(declare-fun call!12957 () List!3626)

(declare-fun lt!99960 () Unit!4382)

(assert (=> b!246460 (= lt!99960 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!88 thiss!17480 rules!1920 call!12957 lt!99956))))

(assert (=> b!246460 false))

(declare-fun lt!99957 () Unit!4382)

(declare-fun Unit!4399 () Unit!4382)

(assert (=> b!246460 (= lt!99957 Unit!4399)))

(declare-fun bm!12950 () Bool)

(declare-fun call!12958 () BalanceConc!2392)

(assert (=> bm!12950 (= call!12958 call!12955)))

(declare-fun bm!12951 () Bool)

(declare-fun c!47069 () Bool)

(declare-fun call!12956 () List!3626)

(assert (=> bm!12951 (= call!12956 (list!1420 (ite c!47069 call!12955 call!12958)))))

(declare-fun b!246461 () Bool)

(declare-fun e!152837 () BalanceConc!2392)

(assert (=> b!246461 (= e!152837 call!12958)))

(declare-fun bm!12952 () Bool)

(assert (=> bm!12952 (= call!12957 (list!1420 e!152837))))

(declare-fun c!47071 () Bool)

(declare-fun c!47070 () Bool)

(assert (=> bm!12952 (= c!47071 c!47070)))

(declare-fun b!246462 () Bool)

(declare-fun e!152838 () List!3626)

(assert (=> b!246462 (= e!152838 Nil!3616)))

(declare-fun bm!12953 () Bool)

(assert (=> bm!12953 (= call!12954 (++!922 call!12956 (ite c!47069 lt!99956 call!12957)))))

(declare-fun e!152836 () List!3626)

(assert (=> b!246459 (= e!152838 e!152836)))

(declare-fun lt!99959 () Unit!4382)

(assert (=> b!246459 (= lt!99959 (forallContained!252 tokens!465 lambda!8090 (h!9015 tokens!465)))))

(assert (=> b!246459 (= lt!99956 (printWithSeparatorTokenWhenNeededList!264 thiss!17480 rules!1920 (t!35112 tokens!465) separatorToken!170))))

(declare-fun lt!99955 () Option!732)

(assert (=> b!246459 (= lt!99955 (maxPrefix!301 thiss!17480 rules!1920 (++!922 (list!1420 (charsOf!340 (h!9015 tokens!465))) lt!99956)))))

(assert (=> b!246459 (= c!47069 (and ((_ is Some!731) lt!99955) (= (_1!2226 (v!14492 lt!99955)) (h!9015 tokens!465))))))

(declare-fun d!69554 () Bool)

(declare-fun c!47072 () Bool)

(assert (=> d!69554 (= c!47072 ((_ is Cons!3618) tokens!465))))

(assert (=> d!69554 (= (printWithSeparatorTokenWhenNeededList!264 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!152838)))

(declare-fun b!246463 () Bool)

(assert (=> b!246463 (= c!47070 (and ((_ is Some!731) lt!99955) (not (= (_1!2226 (v!14492 lt!99955)) (h!9015 tokens!465)))))))

(assert (=> b!246463 (= e!152836 e!152839)))

(declare-fun b!246464 () Bool)

(assert (=> b!246464 (= e!152836 call!12954)))

(declare-fun b!246465 () Bool)

(assert (=> b!246465 (= e!152837 (charsOf!340 separatorToken!170))))

(assert (= (and d!69554 c!47072) b!246459))

(assert (= (and d!69554 (not c!47072)) b!246462))

(assert (= (and b!246459 c!47069) b!246464))

(assert (= (and b!246459 (not c!47069)) b!246463))

(assert (= (and b!246463 c!47070) b!246458))

(assert (= (and b!246463 (not c!47070)) b!246460))

(assert (= (or b!246458 b!246460) bm!12950))

(assert (= (or b!246458 b!246460) bm!12952))

(assert (= (and bm!12952 c!47071) b!246465))

(assert (= (and bm!12952 (not c!47071)) b!246461))

(assert (= (or b!246464 bm!12950) bm!12949))

(assert (= (or b!246464 b!246458) bm!12951))

(assert (= (or b!246464 b!246458) bm!12953))

(assert (=> b!246465 m!300443))

(assert (=> b!246459 m!300449))

(assert (=> b!246459 m!300451))

(assert (=> b!246459 m!300449))

(assert (=> b!246459 m!300437))

(assert (=> b!246459 m!300451))

(declare-fun m!301685 () Bool)

(assert (=> b!246459 m!301685))

(assert (=> b!246459 m!301685))

(declare-fun m!301687 () Bool)

(assert (=> b!246459 m!301687))

(declare-fun m!301689 () Bool)

(assert (=> b!246459 m!301689))

(declare-fun m!301691 () Bool)

(assert (=> b!246458 m!301691))

(declare-fun m!301693 () Bool)

(assert (=> bm!12951 m!301693))

(declare-fun m!301695 () Bool)

(assert (=> bm!12952 m!301695))

(declare-fun m!301697 () Bool)

(assert (=> bm!12953 m!301697))

(assert (=> b!246460 m!300465))

(assert (=> b!246460 m!300465))

(assert (=> b!246460 m!301603))

(assert (=> b!246460 m!300465))

(declare-fun m!301699 () Bool)

(assert (=> b!246460 m!301699))

(declare-fun m!301701 () Bool)

(assert (=> b!246460 m!301701))

(assert (=> bm!12949 m!300449))

(assert (=> b!245612 d!69554))

(declare-fun b!246482 () Bool)

(declare-fun e!152845 () Bool)

(declare-fun tp!96285 () Bool)

(declare-fun tp!96282 () Bool)

(assert (=> b!246482 (= e!152845 (and tp!96285 tp!96282))))

(declare-fun b!246481 () Bool)

(declare-fun tp!96284 () Bool)

(assert (=> b!246481 (= e!152845 tp!96284)))

(declare-fun b!246480 () Bool)

(declare-fun tp!96286 () Bool)

(declare-fun tp!96283 () Bool)

(assert (=> b!246480 (= e!152845 (and tp!96286 tp!96283))))

(assert (=> b!245615 (= tp!96199 e!152845)))

(declare-fun b!246479 () Bool)

(declare-fun tp_is_empty!1759 () Bool)

(assert (=> b!246479 (= e!152845 tp_is_empty!1759)))

(assert (= (and b!245615 ((_ is ElementMatch!909) (regex!685 (rule!1262 (h!9015 tokens!465))))) b!246479))

(assert (= (and b!245615 ((_ is Concat!1617) (regex!685 (rule!1262 (h!9015 tokens!465))))) b!246480))

(assert (= (and b!245615 ((_ is Star!909) (regex!685 (rule!1262 (h!9015 tokens!465))))) b!246481))

(assert (= (and b!245615 ((_ is Union!909) (regex!685 (rule!1262 (h!9015 tokens!465))))) b!246482))

(declare-fun b!246486 () Bool)

(declare-fun e!152846 () Bool)

(declare-fun tp!96290 () Bool)

(declare-fun tp!96287 () Bool)

(assert (=> b!246486 (= e!152846 (and tp!96290 tp!96287))))

(declare-fun b!246485 () Bool)

(declare-fun tp!96289 () Bool)

(assert (=> b!246485 (= e!152846 tp!96289)))

(declare-fun b!246484 () Bool)

(declare-fun tp!96291 () Bool)

(declare-fun tp!96288 () Bool)

(assert (=> b!246484 (= e!152846 (and tp!96291 tp!96288))))

(assert (=> b!245638 (= tp!96200 e!152846)))

(declare-fun b!246483 () Bool)

(assert (=> b!246483 (= e!152846 tp_is_empty!1759)))

(assert (= (and b!245638 ((_ is ElementMatch!909) (regex!685 (rule!1262 separatorToken!170)))) b!246483))

(assert (= (and b!245638 ((_ is Concat!1617) (regex!685 (rule!1262 separatorToken!170)))) b!246484))

(assert (= (and b!245638 ((_ is Star!909) (regex!685 (rule!1262 separatorToken!170)))) b!246485))

(assert (= (and b!245638 ((_ is Union!909) (regex!685 (rule!1262 separatorToken!170)))) b!246486))

(declare-fun b!246490 () Bool)

(declare-fun e!152847 () Bool)

(declare-fun tp!96295 () Bool)

(declare-fun tp!96292 () Bool)

(assert (=> b!246490 (= e!152847 (and tp!96295 tp!96292))))

(declare-fun b!246489 () Bool)

(declare-fun tp!96294 () Bool)

(assert (=> b!246489 (= e!152847 tp!96294)))

(declare-fun b!246488 () Bool)

(declare-fun tp!96296 () Bool)

(declare-fun tp!96293 () Bool)

(assert (=> b!246488 (= e!152847 (and tp!96296 tp!96293))))

(assert (=> b!245627 (= tp!96201 e!152847)))

(declare-fun b!246487 () Bool)

(assert (=> b!246487 (= e!152847 tp_is_empty!1759)))

(assert (= (and b!245627 ((_ is ElementMatch!909) (regex!685 (h!9014 rules!1920)))) b!246487))

(assert (= (and b!245627 ((_ is Concat!1617) (regex!685 (h!9014 rules!1920)))) b!246488))

(assert (= (and b!245627 ((_ is Star!909) (regex!685 (h!9014 rules!1920)))) b!246489))

(assert (= (and b!245627 ((_ is Union!909) (regex!685 (h!9014 rules!1920)))) b!246490))

(declare-fun b!246495 () Bool)

(declare-fun e!152850 () Bool)

(declare-fun tp!96299 () Bool)

(assert (=> b!246495 (= e!152850 (and tp_is_empty!1759 tp!96299))))

(assert (=> b!245629 (= tp!96197 e!152850)))

(assert (= (and b!245629 ((_ is Cons!3616) (originalCharacters!728 separatorToken!170))) b!246495))

(declare-fun b!246509 () Bool)

(declare-fun b_free!9133 () Bool)

(declare-fun b_next!9133 () Bool)

(assert (=> b!246509 (= b_free!9133 (not b_next!9133))))

(declare-fun tp!96311 () Bool)

(declare-fun b_and!18553 () Bool)

(assert (=> b!246509 (= tp!96311 b_and!18553)))

(declare-fun b_free!9135 () Bool)

(declare-fun b_next!9135 () Bool)

(assert (=> b!246509 (= b_free!9135 (not b_next!9135))))

(declare-fun tb!12681 () Bool)

(declare-fun t!35170 () Bool)

(assert (=> (and b!246509 (= (toChars!1247 (transformation!685 (rule!1262 (h!9015 (t!35112 tokens!465))))) (toChars!1247 (transformation!685 (rule!1262 separatorToken!170)))) t!35170) tb!12681))

(declare-fun result!15982 () Bool)

(assert (= result!15982 result!15940))

(assert (=> b!245977 t!35170))

(declare-fun t!35172 () Bool)

(declare-fun tb!12683 () Bool)

(assert (=> (and b!246509 (= (toChars!1247 (transformation!685 (rule!1262 (h!9015 (t!35112 tokens!465))))) (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465))))) t!35172) tb!12683))

(declare-fun result!15984 () Bool)

(assert (= result!15984 result!15948))

(assert (=> b!246000 t!35172))

(assert (=> d!69526 t!35170))

(assert (=> d!69534 t!35172))

(declare-fun b_and!18555 () Bool)

(declare-fun tp!96312 () Bool)

(assert (=> b!246509 (= tp!96312 (and (=> t!35170 result!15982) (=> t!35172 result!15984) b_and!18555))))

(declare-fun tp!96313 () Bool)

(declare-fun e!152863 () Bool)

(declare-fun e!152867 () Bool)

(declare-fun b!246507 () Bool)

(assert (=> b!246507 (= e!152863 (and (inv!21 (value!23838 (h!9015 (t!35112 tokens!465)))) e!152867 tp!96313))))

(declare-fun e!152866 () Bool)

(assert (=> b!246509 (= e!152866 (and tp!96311 tp!96312))))

(declare-fun b!246508 () Bool)

(declare-fun tp!96310 () Bool)

(assert (=> b!246508 (= e!152867 (and tp!96310 (inv!4466 (tag!893 (rule!1262 (h!9015 (t!35112 tokens!465))))) (inv!4469 (transformation!685 (rule!1262 (h!9015 (t!35112 tokens!465))))) e!152866))))

(declare-fun tp!96314 () Bool)

(declare-fun e!152865 () Bool)

(declare-fun b!246506 () Bool)

(assert (=> b!246506 (= e!152865 (and (inv!4470 (h!9015 (t!35112 tokens!465))) e!152863 tp!96314))))

(assert (=> b!245630 (= tp!96203 e!152865)))

(assert (= b!246508 b!246509))

(assert (= b!246507 b!246508))

(assert (= b!246506 b!246507))

(assert (= (and b!245630 ((_ is Cons!3618) (t!35112 tokens!465))) b!246506))

(declare-fun m!301703 () Bool)

(assert (=> b!246507 m!301703))

(declare-fun m!301705 () Bool)

(assert (=> b!246508 m!301705))

(declare-fun m!301707 () Bool)

(assert (=> b!246508 m!301707))

(declare-fun m!301709 () Bool)

(assert (=> b!246506 m!301709))

(declare-fun b!246510 () Bool)

(declare-fun e!152869 () Bool)

(declare-fun tp!96315 () Bool)

(assert (=> b!246510 (= e!152869 (and tp_is_empty!1759 tp!96315))))

(assert (=> b!245609 (= tp!96196 e!152869)))

(assert (= (and b!245609 ((_ is Cons!3616) (originalCharacters!728 (h!9015 tokens!465)))) b!246510))

(declare-fun b!246521 () Bool)

(declare-fun b_free!9137 () Bool)

(declare-fun b_next!9137 () Bool)

(assert (=> b!246521 (= b_free!9137 (not b_next!9137))))

(declare-fun tp!96326 () Bool)

(declare-fun b_and!18557 () Bool)

(assert (=> b!246521 (= tp!96326 b_and!18557)))

(declare-fun b_free!9139 () Bool)

(declare-fun b_next!9139 () Bool)

(assert (=> b!246521 (= b_free!9139 (not b_next!9139))))

(declare-fun t!35174 () Bool)

(declare-fun tb!12685 () Bool)

(assert (=> (and b!246521 (= (toChars!1247 (transformation!685 (h!9014 (t!35111 rules!1920)))) (toChars!1247 (transformation!685 (rule!1262 separatorToken!170)))) t!35174) tb!12685))

(declare-fun result!15988 () Bool)

(assert (= result!15988 result!15940))

(assert (=> b!245977 t!35174))

(declare-fun t!35176 () Bool)

(declare-fun tb!12687 () Bool)

(assert (=> (and b!246521 (= (toChars!1247 (transformation!685 (h!9014 (t!35111 rules!1920)))) (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465))))) t!35176) tb!12687))

(declare-fun result!15990 () Bool)

(assert (= result!15990 result!15948))

(assert (=> b!246000 t!35176))

(assert (=> d!69526 t!35174))

(assert (=> d!69534 t!35176))

(declare-fun tp!96325 () Bool)

(declare-fun b_and!18559 () Bool)

(assert (=> b!246521 (= tp!96325 (and (=> t!35174 result!15988) (=> t!35176 result!15990) b_and!18559))))

(declare-fun e!152879 () Bool)

(assert (=> b!246521 (= e!152879 (and tp!96326 tp!96325))))

(declare-fun e!152881 () Bool)

(declare-fun b!246520 () Bool)

(declare-fun tp!96324 () Bool)

(assert (=> b!246520 (= e!152881 (and tp!96324 (inv!4466 (tag!893 (h!9014 (t!35111 rules!1920)))) (inv!4469 (transformation!685 (h!9014 (t!35111 rules!1920)))) e!152879))))

(declare-fun b!246519 () Bool)

(declare-fun e!152880 () Bool)

(declare-fun tp!96327 () Bool)

(assert (=> b!246519 (= e!152880 (and e!152881 tp!96327))))

(assert (=> b!245620 (= tp!96207 e!152880)))

(assert (= b!246520 b!246521))

(assert (= b!246519 b!246520))

(assert (= (and b!245620 ((_ is Cons!3617) (t!35111 rules!1920))) b!246519))

(declare-fun m!301711 () Bool)

(assert (=> b!246520 m!301711))

(declare-fun m!301713 () Bool)

(assert (=> b!246520 m!301713))

(declare-fun b!246524 () Bool)

(declare-fun e!152884 () Bool)

(assert (=> b!246524 (= e!152884 true)))

(declare-fun b!246523 () Bool)

(declare-fun e!152883 () Bool)

(assert (=> b!246523 (= e!152883 e!152884)))

(declare-fun b!246522 () Bool)

(declare-fun e!152882 () Bool)

(assert (=> b!246522 (= e!152882 e!152883)))

(assert (=> b!245650 e!152882))

(assert (= b!246523 b!246524))

(assert (= b!246522 b!246523))

(assert (= (and b!245650 ((_ is Cons!3617) (t!35111 rules!1920))) b!246522))

(assert (=> b!246524 (< (dynLambda!1753 order!2649 (toValue!1388 (transformation!685 (h!9014 (t!35111 rules!1920))))) (dynLambda!1754 order!2651 lambda!8044))))

(assert (=> b!246524 (< (dynLambda!1755 order!2653 (toChars!1247 (transformation!685 (h!9014 (t!35111 rules!1920))))) (dynLambda!1754 order!2651 lambda!8044))))

(declare-fun b_lambda!7205 () Bool)

(assert (= b_lambda!7165 (or b!245614 b_lambda!7205)))

(declare-fun bs!26474 () Bool)

(declare-fun d!69556 () Bool)

(assert (= bs!26474 (and d!69556 b!245614)))

(assert (=> bs!26474 (= (dynLambda!1758 lambda!8043 (h!9015 tokens!465)) (not (isSeparator!685 (rule!1262 (h!9015 tokens!465)))))))

(assert (=> b!245677 d!69556))

(declare-fun b_lambda!7207 () Bool)

(assert (= b_lambda!7173 (or (and b!245641 b_free!9123 (= (toChars!1247 (transformation!685 (h!9014 rules!1920))) (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))))) (and b!245624 b_free!9119 (= (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))) (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))))) (and b!246509 b_free!9135 (= (toChars!1247 (transformation!685 (rule!1262 (h!9015 (t!35112 tokens!465))))) (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))))) (and b!245610 b_free!9115) (and b!246521 b_free!9139 (= (toChars!1247 (transformation!685 (h!9014 (t!35111 rules!1920)))) (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))))) b_lambda!7207)))

(declare-fun b_lambda!7209 () Bool)

(assert (= b_lambda!7201 (or (and b!245641 b_free!9123 (= (toChars!1247 (transformation!685 (h!9014 rules!1920))) (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))))) (and b!245624 b_free!9119 (= (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))) (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))))) (and b!246509 b_free!9135 (= (toChars!1247 (transformation!685 (rule!1262 (h!9015 (t!35112 tokens!465))))) (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))))) (and b!245610 b_free!9115) (and b!246521 b_free!9139 (= (toChars!1247 (transformation!685 (h!9014 (t!35111 rules!1920)))) (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))))) b_lambda!7209)))

(declare-fun b_lambda!7211 () Bool)

(assert (= b_lambda!7171 (or b!245614 b_lambda!7211)))

(declare-fun bs!26475 () Bool)

(declare-fun d!69558 () Bool)

(assert (= bs!26475 (and d!69558 b!245614)))

(assert (=> bs!26475 (= (dynLambda!1758 lambda!8043 (h!9015 (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 lt!99532))))) (not (isSeparator!685 (rule!1262 (h!9015 (list!1421 (_1!2225 (lex!371 thiss!17480 rules!1920 lt!99532))))))))))

(assert (=> b!245958 d!69558))

(declare-fun b_lambda!7213 () Bool)

(assert (= b_lambda!7203 (or (and b!246521 b_free!9139 (= (toChars!1247 (transformation!685 (h!9014 (t!35111 rules!1920)))) (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))))) (and b!246509 b_free!9135 (= (toChars!1247 (transformation!685 (rule!1262 (h!9015 (t!35112 tokens!465))))) (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))))) (and b!245641 b_free!9123 (= (toChars!1247 (transformation!685 (h!9014 rules!1920))) (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))))) (and b!245610 b_free!9115 (= (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))) (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))))) (and b!245624 b_free!9119) b_lambda!7213)))

(declare-fun b_lambda!7215 () Bool)

(assert (= b_lambda!7177 (or b!245631 b_lambda!7215)))

(declare-fun bs!26476 () Bool)

(declare-fun d!69560 () Bool)

(assert (= bs!26476 (and d!69560 b!245631)))

(assert (=> bs!26476 (= (dynLambda!1758 lambda!8044 (h!9015 tokens!465)) (rulesProduceIndividualToken!320 thiss!17480 rules!1920 (h!9015 tokens!465)))))

(assert (=> bs!26476 m!300371))

(assert (=> d!69416 d!69560))

(declare-fun b_lambda!7217 () Bool)

(assert (= b_lambda!7175 (or (and b!246521 b_free!9139 (= (toChars!1247 (transformation!685 (h!9014 (t!35111 rules!1920)))) (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))))) (and b!246509 b_free!9135 (= (toChars!1247 (transformation!685 (rule!1262 (h!9015 (t!35112 tokens!465))))) (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))))) (and b!245641 b_free!9123 (= (toChars!1247 (transformation!685 (h!9014 rules!1920))) (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))))) (and b!245610 b_free!9115 (= (toChars!1247 (transformation!685 (rule!1262 separatorToken!170))) (toChars!1247 (transformation!685 (rule!1262 (h!9015 tokens!465)))))) (and b!245624 b_free!9119) b_lambda!7217)))

(check-sat (not b_next!9133) (not b!245769) (not b!245957) (not b_next!9113) (not b!246460) (not b!245938) (not b!246508) (not b!245998) (not b!246466) (not d!69538) (not bm!12940) (not b!246465) (not b!245977) (not b!245774) b_and!18547 (not d!69342) (not b!245963) (not bm!12909) (not b!246450) (not b!246422) (not d!69362) (not bm!12939) (not b!245960) (not d!69422) (not bm!12953) (not b!246070) (not d!69540) (not b!246481) (not b!245772) (not b!246064) (not d!69526) (not b!246001) (not b!246171) (not bm!12881) (not b!246458) (not b!246413) (not d!69380) (not b!246455) b_and!18493 (not b!246451) (not b!245984) (not d!69404) (not d!69298) (not d!69418) (not bm!12949) (not b!245852) (not b!245821) (not d!69364) (not b!245719) (not d!69372) (not b!245793) (not b!246060) (not b!246446) (not b!245965) (not b!246176) (not b!246177) (not b_next!9135) (not b!246445) (not b!246490) (not b!245845) (not d!69534) (not b!245822) (not b!246408) (not b!246000) (not b!246435) (not d!69392) (not d!69416) (not b!246436) (not b!245851) (not b!245953) (not b!245707) (not b!246002) (not d!69468) (not b!245711) (not b_lambda!7207) (not d!69408) (not b!246448) (not b!246066) b_and!18485 (not d!69420) (not bm!12862) (not b!245969) (not d!69532) (not bm!12863) (not d!69332) (not b!246433) (not bm!12941) (not bs!26476) (not b_lambda!7215) (not bm!12911) (not b!245983) (not b!245844) (not b!246076) (not b!246441) (not b!245846) b_and!18553 (not b!246484) (not b!245771) (not b!245906) (not d!69536) (not b!245972) (not d!69546) (not b_next!9123) (not b!245713) (not b!246486) (not b_lambda!7217) (not b!246440) (not b!246427) (not d!69394) (not b!245800) (not d!69320) (not d!69382) (not b_lambda!7211) (not b!245709) (not b_next!9137) (not b!245720) (not b!245937) b_and!18551 (not d!69550) (not b!246411) (not b!246004) (not b!246520) (not d!69386) (not d!69384) (not b!246488) (not d!69374) (not b!246506) (not b!245966) (not b_lambda!7213) (not b!246495) (not b!246061) (not b!245996) (not b!245925) (not b!245770) (not b!246485) (not tb!12655) (not b!246065) b_and!18555 (not b!245940) (not b_next!9117) (not b!245802) (not b!245790) (not b!246005) (not b_next!9119) (not b!246434) (not d!69530) b_and!18549 (not bm!12853) (not b!246072) (not b!246062) (not b!246169) (not b!245789) (not d!69376) (not b!245768) tp_is_empty!1759 (not b!245997) (not b!246073) (not d!69544) (not d!69334) (not b!245767) (not b!246418) (not d!69318) (not d!69552) (not d!69388) (not bm!12907) b_and!18559 (not bm!12951) (not b!246459) b_and!18557 (not b!245978) (not d!69390) (not b!245805) (not d!69328) (not b!246522) (not b!245907) (not bm!12856) (not d!69326) (not d!69324) (not b_lambda!7209) (not d!69410) (not b!246449) (not b!246507) (not b!245961) (not b!245967) (not d!69288) (not b!245766) (not b!245924) (not b!245905) (not b!245936) (not b!246489) (not b!246170) (not b!245810) (not b!246510) (not d!69322) (not b!246437) (not bm!12946) (not b!245678) (not b!246482) (not b!246423) (not b!246063) (not bm!12952) (not b_next!9139) (not b_lambda!7205) (not tb!12661) (not b!246426) (not bm!12910) (not d!69548) (not b!246480) (not b_next!9121) (not d!69398) (not b!246077) (not b_next!9115) (not b!246414) (not d!69414) (not d!69528) (not bm!12945) (not b!246412) (not bm!12944) (not b!246519) (not b!245968) b_and!18489 (not d!69296) (not b!245970) (not b!245964) (not b!246006) (not d!69314) (not b!245959) (not d!69344) (not b!246409))
(check-sat b_and!18547 b_and!18493 (not b_next!9135) b_and!18485 b_and!18553 (not b_next!9123) b_and!18555 b_and!18549 b_and!18559 b_and!18557 (not b_next!9139) b_and!18489 (not b_next!9133) (not b_next!9113) b_and!18551 (not b_next!9137) (not b_next!9117) (not b_next!9119) (not b_next!9121) (not b_next!9115))
