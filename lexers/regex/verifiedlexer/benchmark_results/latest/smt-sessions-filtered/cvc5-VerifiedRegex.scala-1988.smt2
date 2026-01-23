; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!101180 () Bool)

(assert start!101180)

(declare-fun b!1157679 () Bool)

(declare-fun e!740666 () Bool)

(assert (=> b!1157679 (= e!740666 true)))

(declare-fun b!1157678 () Bool)

(declare-fun e!740665 () Bool)

(assert (=> b!1157678 (= e!740665 e!740666)))

(declare-fun b!1157668 () Bool)

(assert (=> b!1157668 e!740665))

(assert (= b!1157678 b!1157679))

(assert (= b!1157668 b!1157678))

(declare-fun b!1157659 () Bool)

(declare-fun e!740652 () Bool)

(declare-fun e!740660 () Bool)

(assert (=> b!1157659 (= e!740652 e!740660)))

(declare-fun res!521164 () Bool)

(assert (=> b!1157659 (=> (not res!521164) (not e!740660))))

(declare-datatypes ((List!11315 0))(
  ( (Nil!11291) (Cons!11291 (h!16692 (_ BitVec 16)) (t!109202 List!11315)) )
))
(declare-datatypes ((TokenValue!2022 0))(
  ( (FloatLiteralValue!4044 (text!14599 List!11315)) (TokenValueExt!2021 (__x!7755 Int)) (Broken!10110 (value!63718 List!11315)) (Object!2045) (End!2022) (Def!2022) (Underscore!2022) (Match!2022) (Else!2022) (Error!2022) (Case!2022) (If!2022) (Extends!2022) (Abstract!2022) (Class!2022) (Val!2022) (DelimiterValue!4044 (del!2082 List!11315)) (KeywordValue!2028 (value!63719 List!11315)) (CommentValue!4044 (value!63720 List!11315)) (WhitespaceValue!4044 (value!63721 List!11315)) (IndentationValue!2022 (value!63722 List!11315)) (String!13699) (Int32!2022) (Broken!10111 (value!63723 List!11315)) (Boolean!2023) (Unit!17309) (OperatorValue!2025 (op!2082 List!11315)) (IdentifierValue!4044 (value!63724 List!11315)) (IdentifierValue!4045 (value!63725 List!11315)) (WhitespaceValue!4045 (value!63726 List!11315)) (True!4044) (False!4044) (Broken!10112 (value!63727 List!11315)) (Broken!10113 (value!63728 List!11315)) (True!4045) (RightBrace!2022) (RightBracket!2022) (Colon!2022) (Null!2022) (Comma!2022) (LeftBracket!2022) (False!4045) (LeftBrace!2022) (ImaginaryLiteralValue!2022 (text!14600 List!11315)) (StringLiteralValue!6066 (value!63729 List!11315)) (EOFValue!2022 (value!63730 List!11315)) (IdentValue!2022 (value!63731 List!11315)) (DelimiterValue!4045 (value!63732 List!11315)) (DedentValue!2022 (value!63733 List!11315)) (NewLineValue!2022 (value!63734 List!11315)) (IntegerValue!6066 (value!63735 (_ BitVec 32)) (text!14601 List!11315)) (IntegerValue!6067 (value!63736 Int) (text!14602 List!11315)) (Times!2022) (Or!2022) (Equal!2022) (Minus!2022) (Broken!10114 (value!63737 List!11315)) (And!2022) (Div!2022) (LessEqual!2022) (Mod!2022) (Concat!5248) (Not!2022) (Plus!2022) (SpaceValue!2022 (value!63738 List!11315)) (IntegerValue!6068 (value!63739 Int) (text!14603 List!11315)) (StringLiteralValue!6067 (text!14604 List!11315)) (FloatLiteralValue!4045 (text!14605 List!11315)) (BytesLiteralValue!2022 (value!63740 List!11315)) (CommentValue!4045 (value!63741 List!11315)) (StringLiteralValue!6068 (value!63742 List!11315)) (ErrorTokenValue!2022 (msg!2083 List!11315)) )
))
(declare-datatypes ((C!6770 0))(
  ( (C!6771 (val!3641 Int)) )
))
(declare-datatypes ((Regex!3226 0))(
  ( (ElementMatch!3226 (c!194107 C!6770)) (Concat!5249 (regOne!6964 Regex!3226) (regTwo!6964 Regex!3226)) (EmptyExpr!3226) (Star!3226 (reg!3555 Regex!3226)) (EmptyLang!3226) (Union!3226 (regOne!6965 Regex!3226) (regTwo!6965 Regex!3226)) )
))
(declare-datatypes ((String!13700 0))(
  ( (String!13701 (value!63743 String)) )
))
(declare-datatypes ((List!11316 0))(
  ( (Nil!11292) (Cons!11292 (h!16693 C!6770) (t!109203 List!11316)) )
))
(declare-datatypes ((IArray!7353 0))(
  ( (IArray!7354 (innerList!3734 List!11316)) )
))
(declare-datatypes ((Conc!3674 0))(
  ( (Node!3674 (left!9848 Conc!3674) (right!10178 Conc!3674) (csize!7578 Int) (cheight!3885 Int)) (Leaf!5663 (xs!6379 IArray!7353) (csize!7579 Int)) (Empty!3674) )
))
(declare-datatypes ((BalanceConc!7370 0))(
  ( (BalanceConc!7371 (c!194108 Conc!3674)) )
))
(declare-datatypes ((TokenValueInjection!3744 0))(
  ( (TokenValueInjection!3745 (toValue!3057 Int) (toChars!2916 Int)) )
))
(declare-datatypes ((Rule!3712 0))(
  ( (Rule!3713 (regex!1956 Regex!3226) (tag!2218 String!13700) (isSeparator!1956 Bool) (transformation!1956 TokenValueInjection!3744)) )
))
(declare-datatypes ((Token!3574 0))(
  ( (Token!3575 (value!63744 TokenValue!2022) (rule!3377 Rule!3712) (size!8882 Int) (originalCharacters!2510 List!11316)) )
))
(declare-datatypes ((List!11317 0))(
  ( (Nil!11293) (Cons!11293 (h!16694 Token!3574) (t!109204 List!11317)) )
))
(declare-datatypes ((List!11318 0))(
  ( (Nil!11294) (Cons!11294 (h!16695 Rule!3712) (t!109205 List!11318)) )
))
(declare-datatypes ((IArray!7355 0))(
  ( (IArray!7356 (innerList!3735 List!11317)) )
))
(declare-datatypes ((Conc!3675 0))(
  ( (Node!3675 (left!9849 Conc!3675) (right!10179 Conc!3675) (csize!7580 Int) (cheight!3886 Int)) (Leaf!5664 (xs!6380 IArray!7355) (csize!7581 Int)) (Empty!3675) )
))
(declare-datatypes ((BalanceConc!7372 0))(
  ( (BalanceConc!7373 (c!194109 Conc!3675)) )
))
(declare-datatypes ((PrintableTokens!598 0))(
  ( (PrintableTokens!599 (rules!9439 List!11318) (tokens!1555 BalanceConc!7372)) )
))
(declare-fun thiss!10527 () PrintableTokens!598)

(declare-datatypes ((LexerInterface!1651 0))(
  ( (LexerInterfaceExt!1648 (__x!7756 Int)) (Lexer!1649) )
))
(declare-fun rulesInvariant!1525 (LexerInterface!1651 List!11318) Bool)

(assert (=> b!1157659 (= res!521164 (rulesInvariant!1525 Lexer!1649 (rules!9439 thiss!10527)))))

(declare-datatypes ((Unit!17310 0))(
  ( (Unit!17311) )
))
(declare-fun lt!393467 () Unit!17310)

(declare-fun lemmaInvariant!143 (PrintableTokens!598) Unit!17310)

(assert (=> b!1157659 (= lt!393467 (lemmaInvariant!143 thiss!10527))))

(declare-fun b!1157661 () Bool)

(declare-fun lt!393468 () List!11317)

(declare-fun e!740650 () Bool)

(declare-fun e!740654 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!519 (LexerInterface!1651 List!11318 List!11317) Bool)

(assert (=> b!1157661 (= e!740654 (= (rulesProduceEachTokenIndividuallyList!519 Lexer!1649 (rules!9439 thiss!10527) lt!393468) e!740650))))

(declare-fun res!521169 () Bool)

(assert (=> b!1157661 (=> res!521169 e!740650)))

(assert (=> b!1157661 (= res!521169 (not (is-Cons!11293 lt!393468)))))

(declare-fun b!1157662 () Bool)

(declare-fun res!521165 () Bool)

(assert (=> b!1157662 (=> (not res!521165) (not e!740654))))

(declare-fun lambda!46836 () Int)

(declare-fun lt!393469 () BalanceConc!7372)

(declare-fun rulesProduceEachTokenIndividually!690 (LexerInterface!1651 List!11318 BalanceConc!7372) Bool)

(declare-fun forall!2906 (BalanceConc!7372 Int) Bool)

(assert (=> b!1157662 (= res!521165 (= (rulesProduceEachTokenIndividually!690 Lexer!1649 (rules!9439 thiss!10527) lt!393469) (forall!2906 lt!393469 lambda!46836)))))

(declare-fun e!740656 () Bool)

(declare-fun b!1157663 () Bool)

(declare-fun tp!333390 () Bool)

(declare-fun e!740658 () Bool)

(declare-fun inv!14835 (BalanceConc!7372) Bool)

(assert (=> b!1157663 (= e!740656 (and tp!333390 (inv!14835 (tokens!1555 thiss!10527)) e!740658))))

(declare-fun b!1157664 () Bool)

(declare-fun e!740655 () Bool)

(declare-fun e!740651 () Bool)

(assert (=> b!1157664 (= e!740655 e!740651)))

(declare-fun res!521166 () Bool)

(assert (=> b!1157664 (=> res!521166 e!740651)))

(declare-fun forall!2907 (List!11317 Int) Bool)

(assert (=> b!1157664 (= res!521166 (not (forall!2907 lt!393468 lambda!46836)))))

(assert (=> b!1157664 e!740654))

(declare-fun res!521170 () Bool)

(assert (=> b!1157664 (=> (not res!521170) (not e!740654))))

(assert (=> b!1157664 (= res!521170 (forall!2907 lt!393468 lambda!46836))))

(declare-fun lt!393472 () Unit!17310)

(declare-fun lt!393470 () List!11317)

(declare-fun lemmaForallSubseq!104 (List!11317 List!11317 Int) Unit!17310)

(assert (=> b!1157664 (= lt!393472 (lemmaForallSubseq!104 lt!393468 lt!393470 lambda!46836))))

(declare-fun list!4161 (BalanceConc!7372) List!11317)

(assert (=> b!1157664 (= lt!393468 (list!4161 lt!393469))))

(declare-fun to!267 () Int)

(declare-fun from!787 () Int)

(declare-fun slice!199 (BalanceConc!7372 Int Int) BalanceConc!7372)

(assert (=> b!1157664 (= lt!393469 (slice!199 (tokens!1555 thiss!10527) from!787 to!267))))

(declare-fun subseq!212 (List!11317 List!11317) Bool)

(declare-fun slice!200 (List!11317 Int Int) List!11317)

(assert (=> b!1157664 (subseq!212 (slice!200 lt!393470 from!787 to!267) lt!393470)))

(declare-fun lt!393471 () Unit!17310)

(declare-fun lemmaSliceSubseq!53 (List!11317 Int Int) Unit!17310)

(assert (=> b!1157664 (= lt!393471 (lemmaSliceSubseq!53 lt!393470 from!787 to!267))))

(declare-fun b!1157665 () Bool)

(declare-fun e!740653 () Bool)

(assert (=> b!1157665 (= e!740653 (rulesProduceEachTokenIndividuallyList!519 Lexer!1649 (rules!9439 thiss!10527) (t!109204 lt!393468)))))

(declare-fun b!1157666 () Bool)

(assert (=> b!1157666 (= e!740650 e!740653)))

(declare-fun res!521172 () Bool)

(assert (=> b!1157666 (=> (not res!521172) (not e!740653))))

(declare-fun rulesProduceIndividualToken!688 (LexerInterface!1651 List!11318 Token!3574) Bool)

(assert (=> b!1157666 (= res!521172 (rulesProduceIndividualToken!688 Lexer!1649 (rules!9439 thiss!10527) (h!16694 lt!393468)))))

(declare-fun b!1157667 () Bool)

(declare-fun isBalanced!1038 (Conc!3675) Bool)

(assert (=> b!1157667 (= e!740651 (isBalanced!1038 (c!194109 (tokens!1555 thiss!10527))))))

(assert (=> b!1157668 (= e!740660 (not e!740655))))

(declare-fun res!521162 () Bool)

(assert (=> b!1157668 (=> res!521162 e!740655)))

(assert (=> b!1157668 (= res!521162 (not (forall!2906 (tokens!1555 thiss!10527) lambda!46836)))))

(declare-fun e!740659 () Bool)

(assert (=> b!1157668 (= (rulesProduceEachTokenIndividuallyList!519 Lexer!1649 (rules!9439 thiss!10527) lt!393470) e!740659)))

(declare-fun res!521168 () Bool)

(assert (=> b!1157668 (=> res!521168 e!740659)))

(assert (=> b!1157668 (= res!521168 (not (is-Cons!11293 lt!393470)))))

(assert (=> b!1157668 (= lt!393470 (list!4161 (tokens!1555 thiss!10527)))))

(assert (=> b!1157668 (= (rulesProduceEachTokenIndividually!690 Lexer!1649 (rules!9439 thiss!10527) (tokens!1555 thiss!10527)) (forall!2906 (tokens!1555 thiss!10527) lambda!46836))))

(declare-fun b!1157669 () Bool)

(declare-fun e!740657 () Bool)

(assert (=> b!1157669 (= e!740657 (rulesProduceEachTokenIndividuallyList!519 Lexer!1649 (rules!9439 thiss!10527) (t!109204 lt!393470)))))

(declare-fun res!521163 () Bool)

(assert (=> start!101180 (=> (not res!521163) (not e!740652))))

(assert (=> start!101180 (= res!521163 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101180 e!740652))

(assert (=> start!101180 true))

(declare-fun inv!14836 (PrintableTokens!598) Bool)

(assert (=> start!101180 (and (inv!14836 thiss!10527) e!740656)))

(declare-fun b!1157660 () Bool)

(assert (=> b!1157660 (= e!740659 e!740657)))

(declare-fun res!521171 () Bool)

(assert (=> b!1157660 (=> (not res!521171) (not e!740657))))

(assert (=> b!1157660 (= res!521171 (rulesProduceIndividualToken!688 Lexer!1649 (rules!9439 thiss!10527) (h!16694 lt!393470)))))

(declare-fun b!1157670 () Bool)

(declare-fun res!521167 () Bool)

(assert (=> b!1157670 (=> (not res!521167) (not e!740652))))

(declare-fun size!8883 (BalanceConc!7372) Int)

(assert (=> b!1157670 (= res!521167 (<= to!267 (size!8883 (tokens!1555 thiss!10527))))))

(declare-fun b!1157671 () Bool)

(declare-fun tp!333389 () Bool)

(declare-fun inv!14837 (Conc!3675) Bool)

(assert (=> b!1157671 (= e!740658 (and (inv!14837 (c!194109 (tokens!1555 thiss!10527))) tp!333389))))

(assert (= (and start!101180 res!521163) b!1157670))

(assert (= (and b!1157670 res!521167) b!1157659))

(assert (= (and b!1157659 res!521164) b!1157668))

(assert (= (and b!1157668 (not res!521168)) b!1157660))

(assert (= (and b!1157660 res!521171) b!1157669))

(assert (= (and b!1157668 (not res!521162)) b!1157664))

(assert (= (and b!1157664 res!521170) b!1157662))

(assert (= (and b!1157662 res!521165) b!1157661))

(assert (= (and b!1157661 (not res!521169)) b!1157666))

(assert (= (and b!1157666 res!521172) b!1157665))

(assert (= (and b!1157664 (not res!521166)) b!1157667))

(assert (= b!1157663 b!1157671))

(assert (= start!101180 b!1157663))

(declare-fun m!1324359 () Bool)

(assert (=> start!101180 m!1324359))

(declare-fun m!1324361 () Bool)

(assert (=> b!1157659 m!1324361))

(declare-fun m!1324363 () Bool)

(assert (=> b!1157659 m!1324363))

(declare-fun m!1324365 () Bool)

(assert (=> b!1157663 m!1324365))

(declare-fun m!1324367 () Bool)

(assert (=> b!1157670 m!1324367))

(declare-fun m!1324369 () Bool)

(assert (=> b!1157669 m!1324369))

(declare-fun m!1324371 () Bool)

(assert (=> b!1157661 m!1324371))

(declare-fun m!1324373 () Bool)

(assert (=> b!1157668 m!1324373))

(declare-fun m!1324375 () Bool)

(assert (=> b!1157668 m!1324375))

(declare-fun m!1324377 () Bool)

(assert (=> b!1157668 m!1324377))

(assert (=> b!1157668 m!1324373))

(declare-fun m!1324379 () Bool)

(assert (=> b!1157668 m!1324379))

(declare-fun m!1324381 () Bool)

(assert (=> b!1157660 m!1324381))

(declare-fun m!1324383 () Bool)

(assert (=> b!1157666 m!1324383))

(declare-fun m!1324385 () Bool)

(assert (=> b!1157664 m!1324385))

(declare-fun m!1324387 () Bool)

(assert (=> b!1157664 m!1324387))

(declare-fun m!1324389 () Bool)

(assert (=> b!1157664 m!1324389))

(declare-fun m!1324391 () Bool)

(assert (=> b!1157664 m!1324391))

(declare-fun m!1324393 () Bool)

(assert (=> b!1157664 m!1324393))

(declare-fun m!1324395 () Bool)

(assert (=> b!1157664 m!1324395))

(declare-fun m!1324397 () Bool)

(assert (=> b!1157664 m!1324397))

(assert (=> b!1157664 m!1324385))

(assert (=> b!1157664 m!1324389))

(declare-fun m!1324399 () Bool)

(assert (=> b!1157671 m!1324399))

(declare-fun m!1324401 () Bool)

(assert (=> b!1157665 m!1324401))

(declare-fun m!1324403 () Bool)

(assert (=> b!1157662 m!1324403))

(declare-fun m!1324405 () Bool)

(assert (=> b!1157662 m!1324405))

(declare-fun m!1324407 () Bool)

(assert (=> b!1157667 m!1324407))

(push 1)

(assert (not b!1157678))

(assert (not b!1157663))

(assert (not start!101180))

(assert (not b!1157671))

(assert (not b!1157659))

(assert (not b!1157669))

(assert (not b!1157664))

(assert (not b!1157661))

(assert (not b!1157679))

(assert (not b!1157670))

(assert (not b!1157668))

(assert (not b!1157662))

(assert (not b!1157667))

(assert (not b!1157666))

(assert (not b!1157665))

(assert (not b!1157660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!283091 () Bool)

(declare-fun d!330813 () Bool)

(assert (= bs!283091 (and d!330813 b!1157668)))

(declare-fun lambda!46852 () Int)

(assert (=> bs!283091 (= lambda!46852 lambda!46836)))

(declare-fun b!1157740 () Bool)

(declare-fun e!740717 () Bool)

(assert (=> b!1157740 (= e!740717 true)))

(declare-fun b!1157739 () Bool)

(declare-fun e!740716 () Bool)

(assert (=> b!1157739 (= e!740716 e!740717)))

(declare-fun b!1157738 () Bool)

(declare-fun e!740715 () Bool)

(assert (=> b!1157738 (= e!740715 e!740716)))

(assert (=> d!330813 e!740715))

(assert (= b!1157739 b!1157740))

(assert (= b!1157738 b!1157739))

(assert (= (and d!330813 (is-Cons!11294 (rules!9439 thiss!10527))) b!1157738))

(declare-fun order!6917 () Int)

(declare-fun order!6915 () Int)

(declare-fun dynLambda!4979 (Int Int) Int)

(declare-fun dynLambda!4980 (Int Int) Int)

(assert (=> b!1157740 (< (dynLambda!4979 order!6915 (toValue!3057 (transformation!1956 (h!16695 (rules!9439 thiss!10527))))) (dynLambda!4980 order!6917 lambda!46852))))

(declare-fun order!6919 () Int)

(declare-fun dynLambda!4981 (Int Int) Int)

(assert (=> b!1157740 (< (dynLambda!4981 order!6919 (toChars!2916 (transformation!1956 (h!16695 (rules!9439 thiss!10527))))) (dynLambda!4980 order!6917 lambda!46852))))

(assert (=> d!330813 true))

(declare-fun e!740708 () Bool)

(assert (=> d!330813 e!740708))

(declare-fun res!521208 () Bool)

(assert (=> d!330813 (=> (not res!521208) (not e!740708))))

(declare-fun lt!393493 () Bool)

(assert (=> d!330813 (= res!521208 (= lt!393493 (forall!2907 (list!4161 (tokens!1555 thiss!10527)) lambda!46852)))))

(assert (=> d!330813 (= lt!393493 (forall!2906 (tokens!1555 thiss!10527) lambda!46852))))

(declare-fun isEmpty!6944 (List!11318) Bool)

(assert (=> d!330813 (not (isEmpty!6944 (rules!9439 thiss!10527)))))

(assert (=> d!330813 (= (rulesProduceEachTokenIndividually!690 Lexer!1649 (rules!9439 thiss!10527) (tokens!1555 thiss!10527)) lt!393493)))

(declare-fun b!1157729 () Bool)

(assert (=> b!1157729 (= e!740708 (= lt!393493 (rulesProduceEachTokenIndividuallyList!519 Lexer!1649 (rules!9439 thiss!10527) (list!4161 (tokens!1555 thiss!10527)))))))

(assert (= (and d!330813 res!521208) b!1157729))

(assert (=> d!330813 m!1324379))

(assert (=> d!330813 m!1324379))

(declare-fun m!1324459 () Bool)

(assert (=> d!330813 m!1324459))

(declare-fun m!1324461 () Bool)

(assert (=> d!330813 m!1324461))

(declare-fun m!1324463 () Bool)

(assert (=> d!330813 m!1324463))

(assert (=> b!1157729 m!1324379))

(assert (=> b!1157729 m!1324379))

(declare-fun m!1324465 () Bool)

(assert (=> b!1157729 m!1324465))

(assert (=> b!1157668 d!330813))

(declare-fun bs!283092 () Bool)

(declare-fun d!330815 () Bool)

(assert (= bs!283092 (and d!330815 b!1157668)))

(declare-fun lambda!46855 () Int)

(assert (=> bs!283092 (= lambda!46855 lambda!46836)))

(declare-fun bs!283093 () Bool)

(assert (= bs!283093 (and d!330815 d!330813)))

(assert (=> bs!283093 (= lambda!46855 lambda!46852)))

(declare-fun b!1157751 () Bool)

(declare-fun e!740726 () Bool)

(assert (=> b!1157751 (= e!740726 true)))

(declare-fun b!1157750 () Bool)

(declare-fun e!740725 () Bool)

(assert (=> b!1157750 (= e!740725 e!740726)))

(declare-fun b!1157749 () Bool)

(declare-fun e!740724 () Bool)

(assert (=> b!1157749 (= e!740724 e!740725)))

(assert (=> d!330815 e!740724))

(assert (= b!1157750 b!1157751))

(assert (= b!1157749 b!1157750))

(assert (= (and d!330815 (is-Cons!11294 (rules!9439 thiss!10527))) b!1157749))

(assert (=> b!1157751 (< (dynLambda!4979 order!6915 (toValue!3057 (transformation!1956 (h!16695 (rules!9439 thiss!10527))))) (dynLambda!4980 order!6917 lambda!46855))))

(assert (=> b!1157751 (< (dynLambda!4981 order!6919 (toChars!2916 (transformation!1956 (h!16695 (rules!9439 thiss!10527))))) (dynLambda!4980 order!6917 lambda!46855))))

(assert (=> d!330815 true))

(declare-fun lt!393496 () Bool)

(assert (=> d!330815 (= lt!393496 (forall!2907 lt!393470 lambda!46855))))

(declare-fun e!740723 () Bool)

(assert (=> d!330815 (= lt!393496 e!740723)))

(declare-fun res!521214 () Bool)

(assert (=> d!330815 (=> res!521214 e!740723)))

(assert (=> d!330815 (= res!521214 (not (is-Cons!11293 lt!393470)))))

(assert (=> d!330815 (not (isEmpty!6944 (rules!9439 thiss!10527)))))

(assert (=> d!330815 (= (rulesProduceEachTokenIndividuallyList!519 Lexer!1649 (rules!9439 thiss!10527) lt!393470) lt!393496)))

(declare-fun b!1157747 () Bool)

(declare-fun e!740722 () Bool)

(assert (=> b!1157747 (= e!740723 e!740722)))

(declare-fun res!521213 () Bool)

(assert (=> b!1157747 (=> (not res!521213) (not e!740722))))

(assert (=> b!1157747 (= res!521213 (rulesProduceIndividualToken!688 Lexer!1649 (rules!9439 thiss!10527) (h!16694 lt!393470)))))

(declare-fun b!1157748 () Bool)

(assert (=> b!1157748 (= e!740722 (rulesProduceEachTokenIndividuallyList!519 Lexer!1649 (rules!9439 thiss!10527) (t!109204 lt!393470)))))

(assert (= (and d!330815 (not res!521214)) b!1157747))

(assert (= (and b!1157747 res!521213) b!1157748))

(declare-fun m!1324467 () Bool)

(assert (=> d!330815 m!1324467))

(assert (=> d!330815 m!1324463))

(assert (=> b!1157747 m!1324381))

(assert (=> b!1157748 m!1324369))

(assert (=> b!1157668 d!330815))

(declare-fun d!330817 () Bool)

(declare-fun list!4163 (Conc!3675) List!11317)

(assert (=> d!330817 (= (list!4161 (tokens!1555 thiss!10527)) (list!4163 (c!194109 (tokens!1555 thiss!10527))))))

(declare-fun bs!283094 () Bool)

(assert (= bs!283094 d!330817))

(declare-fun m!1324469 () Bool)

(assert (=> bs!283094 m!1324469))

(assert (=> b!1157668 d!330817))

(declare-fun d!330819 () Bool)

(declare-fun lt!393499 () Bool)

(assert (=> d!330819 (= lt!393499 (forall!2907 (list!4161 (tokens!1555 thiss!10527)) lambda!46836))))

(declare-fun forall!2910 (Conc!3675 Int) Bool)

(assert (=> d!330819 (= lt!393499 (forall!2910 (c!194109 (tokens!1555 thiss!10527)) lambda!46836))))

(assert (=> d!330819 (= (forall!2906 (tokens!1555 thiss!10527) lambda!46836) lt!393499)))

(declare-fun bs!283095 () Bool)

(assert (= bs!283095 d!330819))

(assert (=> bs!283095 m!1324379))

(assert (=> bs!283095 m!1324379))

(declare-fun m!1324471 () Bool)

(assert (=> bs!283095 m!1324471))

(declare-fun m!1324473 () Bool)

(assert (=> bs!283095 m!1324473))

(assert (=> b!1157668 d!330819))

(declare-fun b!1157768 () Bool)

(declare-fun res!521234 () Bool)

(declare-fun e!740735 () Bool)

(assert (=> b!1157768 (=> (not res!521234) (not e!740735))))

(assert (=> b!1157768 (= res!521234 (isBalanced!1038 (left!9849 (c!194109 (tokens!1555 thiss!10527)))))))

(declare-fun b!1157769 () Bool)

(declare-fun res!521233 () Bool)

(assert (=> b!1157769 (=> (not res!521233) (not e!740735))))

(declare-fun isEmpty!6945 (Conc!3675) Bool)

(assert (=> b!1157769 (= res!521233 (not (isEmpty!6945 (left!9849 (c!194109 (tokens!1555 thiss!10527))))))))

(declare-fun d!330821 () Bool)

(declare-fun res!521232 () Bool)

(declare-fun e!740736 () Bool)

(assert (=> d!330821 (=> res!521232 e!740736)))

(assert (=> d!330821 (= res!521232 (not (is-Node!3675 (c!194109 (tokens!1555 thiss!10527)))))))

(assert (=> d!330821 (= (isBalanced!1038 (c!194109 (tokens!1555 thiss!10527))) e!740736)))

(declare-fun b!1157770 () Bool)

(assert (=> b!1157770 (= e!740736 e!740735)))

(declare-fun res!521236 () Bool)

(assert (=> b!1157770 (=> (not res!521236) (not e!740735))))

(declare-fun height!503 (Conc!3675) Int)

(assert (=> b!1157770 (= res!521236 (<= (- 1) (- (height!503 (left!9849 (c!194109 (tokens!1555 thiss!10527)))) (height!503 (right!10179 (c!194109 (tokens!1555 thiss!10527)))))))))

(declare-fun b!1157771 () Bool)

(declare-fun res!521231 () Bool)

(assert (=> b!1157771 (=> (not res!521231) (not e!740735))))

(assert (=> b!1157771 (= res!521231 (isBalanced!1038 (right!10179 (c!194109 (tokens!1555 thiss!10527)))))))

(declare-fun b!1157772 () Bool)

(assert (=> b!1157772 (= e!740735 (not (isEmpty!6945 (right!10179 (c!194109 (tokens!1555 thiss!10527))))))))

(declare-fun b!1157773 () Bool)

(declare-fun res!521235 () Bool)

(assert (=> b!1157773 (=> (not res!521235) (not e!740735))))

(assert (=> b!1157773 (= res!521235 (<= (- (height!503 (left!9849 (c!194109 (tokens!1555 thiss!10527)))) (height!503 (right!10179 (c!194109 (tokens!1555 thiss!10527))))) 1))))

(assert (= (and d!330821 (not res!521232)) b!1157770))

(assert (= (and b!1157770 res!521236) b!1157773))

(assert (= (and b!1157773 res!521235) b!1157768))

(assert (= (and b!1157768 res!521234) b!1157771))

(assert (= (and b!1157771 res!521231) b!1157769))

(assert (= (and b!1157769 res!521233) b!1157772))

(declare-fun m!1324475 () Bool)

(assert (=> b!1157773 m!1324475))

(declare-fun m!1324477 () Bool)

(assert (=> b!1157773 m!1324477))

(declare-fun m!1324479 () Bool)

(assert (=> b!1157769 m!1324479))

(declare-fun m!1324481 () Bool)

(assert (=> b!1157768 m!1324481))

(assert (=> b!1157770 m!1324475))

(assert (=> b!1157770 m!1324477))

(declare-fun m!1324483 () Bool)

(assert (=> b!1157771 m!1324483))

(declare-fun m!1324485 () Bool)

(assert (=> b!1157772 m!1324485))

(assert (=> b!1157667 d!330821))

(declare-fun d!330823 () Bool)

(declare-fun lt!393507 () Bool)

(declare-fun e!740755 () Bool)

(assert (=> d!330823 (= lt!393507 e!740755)))

(declare-fun res!521249 () Bool)

(assert (=> d!330823 (=> (not res!521249) (not e!740755))))

(declare-datatypes ((tuple2!11980 0))(
  ( (tuple2!11981 (_1!6837 BalanceConc!7372) (_2!6837 BalanceConc!7370)) )
))
(declare-fun lex!683 (LexerInterface!1651 List!11318 BalanceConc!7370) tuple2!11980)

(declare-fun print!620 (LexerInterface!1651 BalanceConc!7372) BalanceConc!7370)

(declare-fun singletonSeq!638 (Token!3574) BalanceConc!7372)

(assert (=> d!330823 (= res!521249 (= (list!4161 (_1!6837 (lex!683 Lexer!1649 (rules!9439 thiss!10527) (print!620 Lexer!1649 (singletonSeq!638 (h!16694 lt!393470)))))) (list!4161 (singletonSeq!638 (h!16694 lt!393470)))))))

(declare-fun e!740756 () Bool)

(assert (=> d!330823 (= lt!393507 e!740756)))

(declare-fun res!521250 () Bool)

(assert (=> d!330823 (=> (not res!521250) (not e!740756))))

(declare-fun lt!393508 () tuple2!11980)

(assert (=> d!330823 (= res!521250 (= (size!8883 (_1!6837 lt!393508)) 1))))

(assert (=> d!330823 (= lt!393508 (lex!683 Lexer!1649 (rules!9439 thiss!10527) (print!620 Lexer!1649 (singletonSeq!638 (h!16694 lt!393470)))))))

(assert (=> d!330823 (not (isEmpty!6944 (rules!9439 thiss!10527)))))

(assert (=> d!330823 (= (rulesProduceIndividualToken!688 Lexer!1649 (rules!9439 thiss!10527) (h!16694 lt!393470)) lt!393507)))

(declare-fun b!1157798 () Bool)

(declare-fun res!521248 () Bool)

(assert (=> b!1157798 (=> (not res!521248) (not e!740756))))

(declare-fun apply!2407 (BalanceConc!7372 Int) Token!3574)

(assert (=> b!1157798 (= res!521248 (= (apply!2407 (_1!6837 lt!393508) 0) (h!16694 lt!393470)))))

(declare-fun b!1157799 () Bool)

(declare-fun isEmpty!6946 (BalanceConc!7370) Bool)

(assert (=> b!1157799 (= e!740756 (isEmpty!6946 (_2!6837 lt!393508)))))

(declare-fun b!1157800 () Bool)

(assert (=> b!1157800 (= e!740755 (isEmpty!6946 (_2!6837 (lex!683 Lexer!1649 (rules!9439 thiss!10527) (print!620 Lexer!1649 (singletonSeq!638 (h!16694 lt!393470)))))))))

(assert (= (and d!330823 res!521250) b!1157798))

(assert (= (and b!1157798 res!521248) b!1157799))

(assert (= (and d!330823 res!521249) b!1157800))

(declare-fun m!1324495 () Bool)

(assert (=> d!330823 m!1324495))

(assert (=> d!330823 m!1324463))

(declare-fun m!1324497 () Bool)

(assert (=> d!330823 m!1324497))

(declare-fun m!1324499 () Bool)

(assert (=> d!330823 m!1324499))

(declare-fun m!1324501 () Bool)

(assert (=> d!330823 m!1324501))

(assert (=> d!330823 m!1324497))

(declare-fun m!1324503 () Bool)

(assert (=> d!330823 m!1324503))

(assert (=> d!330823 m!1324501))

(declare-fun m!1324505 () Bool)

(assert (=> d!330823 m!1324505))

(assert (=> d!330823 m!1324501))

(declare-fun m!1324507 () Bool)

(assert (=> b!1157798 m!1324507))

(declare-fun m!1324509 () Bool)

(assert (=> b!1157799 m!1324509))

(assert (=> b!1157800 m!1324501))

(assert (=> b!1157800 m!1324501))

(assert (=> b!1157800 m!1324497))

(assert (=> b!1157800 m!1324497))

(assert (=> b!1157800 m!1324499))

(declare-fun m!1324511 () Bool)

(assert (=> b!1157800 m!1324511))

(assert (=> b!1157660 d!330823))

(declare-fun d!330829 () Bool)

(declare-fun c!194115 () Bool)

(assert (=> d!330829 (= c!194115 (is-Node!3675 (c!194109 (tokens!1555 thiss!10527))))))

(declare-fun e!740761 () Bool)

(assert (=> d!330829 (= (inv!14837 (c!194109 (tokens!1555 thiss!10527))) e!740761)))

(declare-fun b!1157807 () Bool)

(declare-fun inv!14841 (Conc!3675) Bool)

(assert (=> b!1157807 (= e!740761 (inv!14841 (c!194109 (tokens!1555 thiss!10527))))))

(declare-fun b!1157808 () Bool)

(declare-fun e!740762 () Bool)

(assert (=> b!1157808 (= e!740761 e!740762)))

(declare-fun res!521253 () Bool)

(assert (=> b!1157808 (= res!521253 (not (is-Leaf!5664 (c!194109 (tokens!1555 thiss!10527)))))))

(assert (=> b!1157808 (=> res!521253 e!740762)))

(declare-fun b!1157809 () Bool)

(declare-fun inv!14842 (Conc!3675) Bool)

(assert (=> b!1157809 (= e!740762 (inv!14842 (c!194109 (tokens!1555 thiss!10527))))))

(assert (= (and d!330829 c!194115) b!1157807))

(assert (= (and d!330829 (not c!194115)) b!1157808))

(assert (= (and b!1157808 (not res!521253)) b!1157809))

(declare-fun m!1324513 () Bool)

(assert (=> b!1157807 m!1324513))

(declare-fun m!1324515 () Bool)

(assert (=> b!1157809 m!1324515))

(assert (=> b!1157671 d!330829))

(declare-fun bs!283097 () Bool)

(declare-fun d!330831 () Bool)

(assert (= bs!283097 (and d!330831 b!1157668)))

(declare-fun lambda!46859 () Int)

(assert (=> bs!283097 (= lambda!46859 lambda!46836)))

(declare-fun bs!283098 () Bool)

(assert (= bs!283098 (and d!330831 d!330813)))

(assert (=> bs!283098 (= lambda!46859 lambda!46852)))

(declare-fun bs!283099 () Bool)

(assert (= bs!283099 (and d!330831 d!330815)))

(assert (=> bs!283099 (= lambda!46859 lambda!46855)))

(declare-fun b!1157814 () Bool)

(declare-fun e!740767 () Bool)

(assert (=> b!1157814 (= e!740767 true)))

(declare-fun b!1157813 () Bool)

(declare-fun e!740766 () Bool)

(assert (=> b!1157813 (= e!740766 e!740767)))

(declare-fun b!1157812 () Bool)

(declare-fun e!740765 () Bool)

(assert (=> b!1157812 (= e!740765 e!740766)))

(assert (=> d!330831 e!740765))

(assert (= b!1157813 b!1157814))

(assert (= b!1157812 b!1157813))

(assert (= (and d!330831 (is-Cons!11294 (rules!9439 thiss!10527))) b!1157812))

(assert (=> b!1157814 (< (dynLambda!4979 order!6915 (toValue!3057 (transformation!1956 (h!16695 (rules!9439 thiss!10527))))) (dynLambda!4980 order!6917 lambda!46859))))

(assert (=> b!1157814 (< (dynLambda!4981 order!6919 (toChars!2916 (transformation!1956 (h!16695 (rules!9439 thiss!10527))))) (dynLambda!4980 order!6917 lambda!46859))))

(assert (=> d!330831 true))

(declare-fun lt!393509 () Bool)

(assert (=> d!330831 (= lt!393509 (forall!2907 (t!109204 lt!393470) lambda!46859))))

(declare-fun e!740764 () Bool)

(assert (=> d!330831 (= lt!393509 e!740764)))

(declare-fun res!521255 () Bool)

(assert (=> d!330831 (=> res!521255 e!740764)))

(assert (=> d!330831 (= res!521255 (not (is-Cons!11293 (t!109204 lt!393470))))))

(assert (=> d!330831 (not (isEmpty!6944 (rules!9439 thiss!10527)))))

(assert (=> d!330831 (= (rulesProduceEachTokenIndividuallyList!519 Lexer!1649 (rules!9439 thiss!10527) (t!109204 lt!393470)) lt!393509)))

(declare-fun b!1157810 () Bool)

(declare-fun e!740763 () Bool)

(assert (=> b!1157810 (= e!740764 e!740763)))

(declare-fun res!521254 () Bool)

(assert (=> b!1157810 (=> (not res!521254) (not e!740763))))

(assert (=> b!1157810 (= res!521254 (rulesProduceIndividualToken!688 Lexer!1649 (rules!9439 thiss!10527) (h!16694 (t!109204 lt!393470))))))

(declare-fun b!1157811 () Bool)

(assert (=> b!1157811 (= e!740763 (rulesProduceEachTokenIndividuallyList!519 Lexer!1649 (rules!9439 thiss!10527) (t!109204 (t!109204 lt!393470))))))

(assert (= (and d!330831 (not res!521255)) b!1157810))

(assert (= (and b!1157810 res!521254) b!1157811))

(declare-fun m!1324517 () Bool)

(assert (=> d!330831 m!1324517))

(assert (=> d!330831 m!1324463))

(declare-fun m!1324519 () Bool)

(assert (=> b!1157810 m!1324519))

(declare-fun m!1324521 () Bool)

(assert (=> b!1157811 m!1324521))

(assert (=> b!1157669 d!330831))

(declare-fun d!330833 () Bool)

(declare-fun lt!393512 () Int)

(declare-fun size!8886 (List!11317) Int)

(assert (=> d!330833 (= lt!393512 (size!8886 (list!4161 (tokens!1555 thiss!10527))))))

(declare-fun size!8887 (Conc!3675) Int)

(assert (=> d!330833 (= lt!393512 (size!8887 (c!194109 (tokens!1555 thiss!10527))))))

(assert (=> d!330833 (= (size!8883 (tokens!1555 thiss!10527)) lt!393512)))

(declare-fun bs!283100 () Bool)

(assert (= bs!283100 d!330833))

(assert (=> bs!283100 m!1324379))

(assert (=> bs!283100 m!1324379))

(declare-fun m!1324523 () Bool)

(assert (=> bs!283100 m!1324523))

(declare-fun m!1324525 () Bool)

(assert (=> bs!283100 m!1324525))

(assert (=> b!1157670 d!330833))

(declare-fun d!330835 () Bool)

(declare-fun res!521258 () Bool)

(declare-fun e!740770 () Bool)

(assert (=> d!330835 (=> (not res!521258) (not e!740770))))

(declare-fun rulesValid!679 (LexerInterface!1651 List!11318) Bool)

(assert (=> d!330835 (= res!521258 (rulesValid!679 Lexer!1649 (rules!9439 thiss!10527)))))

(assert (=> d!330835 (= (rulesInvariant!1525 Lexer!1649 (rules!9439 thiss!10527)) e!740770)))

(declare-fun b!1157817 () Bool)

(declare-datatypes ((List!11323 0))(
  ( (Nil!11299) (Cons!11299 (h!16700 String!13700) (t!109236 List!11323)) )
))
(declare-fun noDuplicateTag!679 (LexerInterface!1651 List!11318 List!11323) Bool)

(assert (=> b!1157817 (= e!740770 (noDuplicateTag!679 Lexer!1649 (rules!9439 thiss!10527) Nil!11299))))

(assert (= (and d!330835 res!521258) b!1157817))

(declare-fun m!1324527 () Bool)

(assert (=> d!330835 m!1324527))

(declare-fun m!1324529 () Bool)

(assert (=> b!1157817 m!1324529))

(assert (=> b!1157659 d!330835))

(declare-fun d!330837 () Bool)

(declare-fun e!740819 () Bool)

(assert (=> d!330837 e!740819))

(declare-fun res!521306 () Bool)

(assert (=> d!330837 (=> (not res!521306) (not e!740819))))

(assert (=> d!330837 (= res!521306 (rulesInvariant!1525 Lexer!1649 (rules!9439 thiss!10527)))))

(declare-fun Unit!17315 () Unit!17310)

(assert (=> d!330837 (= (lemmaInvariant!143 thiss!10527) Unit!17315)))

(declare-fun b!1157877 () Bool)

(declare-fun res!521307 () Bool)

(assert (=> b!1157877 (=> (not res!521307) (not e!740819))))

(assert (=> b!1157877 (= res!521307 (rulesProduceEachTokenIndividually!690 Lexer!1649 (rules!9439 thiss!10527) (tokens!1555 thiss!10527)))))

(declare-fun b!1157878 () Bool)

(declare-fun separableTokens!99 (LexerInterface!1651 BalanceConc!7372 List!11318) Bool)

(assert (=> b!1157878 (= e!740819 (separableTokens!99 Lexer!1649 (tokens!1555 thiss!10527) (rules!9439 thiss!10527)))))

(assert (= (and d!330837 res!521306) b!1157877))

(assert (= (and b!1157877 res!521307) b!1157878))

(assert (=> d!330837 m!1324361))

(assert (=> b!1157877 m!1324377))

(declare-fun m!1324579 () Bool)

(assert (=> b!1157878 m!1324579))

(assert (=> b!1157659 d!330837))

(declare-fun d!330863 () Bool)

(assert (=> d!330863 (= (inv!14835 (tokens!1555 thiss!10527)) (isBalanced!1038 (c!194109 (tokens!1555 thiss!10527))))))

(declare-fun bs!283110 () Bool)

(assert (= bs!283110 d!330863))

(assert (=> bs!283110 m!1324407))

(assert (=> b!1157663 d!330863))

(declare-fun bs!283111 () Bool)

(declare-fun d!330865 () Bool)

(assert (= bs!283111 (and d!330865 b!1157668)))

(declare-fun lambda!46862 () Int)

(assert (=> bs!283111 (= lambda!46862 lambda!46836)))

(declare-fun bs!283112 () Bool)

(assert (= bs!283112 (and d!330865 d!330813)))

(assert (=> bs!283112 (= lambda!46862 lambda!46852)))

(declare-fun bs!283113 () Bool)

(assert (= bs!283113 (and d!330865 d!330815)))

(assert (=> bs!283113 (= lambda!46862 lambda!46855)))

(declare-fun bs!283114 () Bool)

(assert (= bs!283114 (and d!330865 d!330831)))

(assert (=> bs!283114 (= lambda!46862 lambda!46859)))

(declare-fun b!1157883 () Bool)

(declare-fun e!740824 () Bool)

(assert (=> b!1157883 (= e!740824 true)))

(declare-fun b!1157882 () Bool)

(declare-fun e!740823 () Bool)

(assert (=> b!1157882 (= e!740823 e!740824)))

(declare-fun b!1157881 () Bool)

(declare-fun e!740822 () Bool)

(assert (=> b!1157881 (= e!740822 e!740823)))

(assert (=> d!330865 e!740822))

(assert (= b!1157882 b!1157883))

(assert (= b!1157881 b!1157882))

(assert (= (and d!330865 (is-Cons!11294 (rules!9439 thiss!10527))) b!1157881))

(assert (=> b!1157883 (< (dynLambda!4979 order!6915 (toValue!3057 (transformation!1956 (h!16695 (rules!9439 thiss!10527))))) (dynLambda!4980 order!6917 lambda!46862))))

(assert (=> b!1157883 (< (dynLambda!4981 order!6919 (toChars!2916 (transformation!1956 (h!16695 (rules!9439 thiss!10527))))) (dynLambda!4980 order!6917 lambda!46862))))

(assert (=> d!330865 true))

(declare-fun lt!393524 () Bool)

(assert (=> d!330865 (= lt!393524 (forall!2907 lt!393468 lambda!46862))))

(declare-fun e!740821 () Bool)

(assert (=> d!330865 (= lt!393524 e!740821)))

(declare-fun res!521309 () Bool)

(assert (=> d!330865 (=> res!521309 e!740821)))

(assert (=> d!330865 (= res!521309 (not (is-Cons!11293 lt!393468)))))

(assert (=> d!330865 (not (isEmpty!6944 (rules!9439 thiss!10527)))))

(assert (=> d!330865 (= (rulesProduceEachTokenIndividuallyList!519 Lexer!1649 (rules!9439 thiss!10527) lt!393468) lt!393524)))

(declare-fun b!1157879 () Bool)

(declare-fun e!740820 () Bool)

(assert (=> b!1157879 (= e!740821 e!740820)))

(declare-fun res!521308 () Bool)

(assert (=> b!1157879 (=> (not res!521308) (not e!740820))))

(assert (=> b!1157879 (= res!521308 (rulesProduceIndividualToken!688 Lexer!1649 (rules!9439 thiss!10527) (h!16694 lt!393468)))))

(declare-fun b!1157880 () Bool)

(assert (=> b!1157880 (= e!740820 (rulesProduceEachTokenIndividuallyList!519 Lexer!1649 (rules!9439 thiss!10527) (t!109204 lt!393468)))))

(assert (= (and d!330865 (not res!521309)) b!1157879))

(assert (= (and b!1157879 res!521308) b!1157880))

(declare-fun m!1324581 () Bool)

(assert (=> d!330865 m!1324581))

(assert (=> d!330865 m!1324463))

(assert (=> b!1157879 m!1324383))

(assert (=> b!1157880 m!1324401))

(assert (=> b!1157661 d!330865))

(declare-fun bs!283115 () Bool)

(declare-fun d!330867 () Bool)

(assert (= bs!283115 (and d!330867 d!330865)))

(declare-fun lambda!46863 () Int)

(assert (=> bs!283115 (= lambda!46863 lambda!46862)))

(declare-fun bs!283116 () Bool)

(assert (= bs!283116 (and d!330867 d!330815)))

(assert (=> bs!283116 (= lambda!46863 lambda!46855)))

(declare-fun bs!283117 () Bool)

(assert (= bs!283117 (and d!330867 d!330831)))

(assert (=> bs!283117 (= lambda!46863 lambda!46859)))

(declare-fun bs!283118 () Bool)

(assert (= bs!283118 (and d!330867 d!330813)))

(assert (=> bs!283118 (= lambda!46863 lambda!46852)))

(declare-fun bs!283119 () Bool)

(assert (= bs!283119 (and d!330867 b!1157668)))

(assert (=> bs!283119 (= lambda!46863 lambda!46836)))

(declare-fun b!1157887 () Bool)

(declare-fun e!740828 () Bool)

(assert (=> b!1157887 (= e!740828 true)))

(declare-fun b!1157886 () Bool)

(declare-fun e!740827 () Bool)

(assert (=> b!1157886 (= e!740827 e!740828)))

(declare-fun b!1157885 () Bool)

(declare-fun e!740826 () Bool)

(assert (=> b!1157885 (= e!740826 e!740827)))

(assert (=> d!330867 e!740826))

(assert (= b!1157886 b!1157887))

(assert (= b!1157885 b!1157886))

(assert (= (and d!330867 (is-Cons!11294 (rules!9439 thiss!10527))) b!1157885))

(assert (=> b!1157887 (< (dynLambda!4979 order!6915 (toValue!3057 (transformation!1956 (h!16695 (rules!9439 thiss!10527))))) (dynLambda!4980 order!6917 lambda!46863))))

(assert (=> b!1157887 (< (dynLambda!4981 order!6919 (toChars!2916 (transformation!1956 (h!16695 (rules!9439 thiss!10527))))) (dynLambda!4980 order!6917 lambda!46863))))

(assert (=> d!330867 true))

(declare-fun e!740825 () Bool)

(assert (=> d!330867 e!740825))

(declare-fun res!521310 () Bool)

(assert (=> d!330867 (=> (not res!521310) (not e!740825))))

(declare-fun lt!393525 () Bool)

(assert (=> d!330867 (= res!521310 (= lt!393525 (forall!2907 (list!4161 lt!393469) lambda!46863)))))

(assert (=> d!330867 (= lt!393525 (forall!2906 lt!393469 lambda!46863))))

(assert (=> d!330867 (not (isEmpty!6944 (rules!9439 thiss!10527)))))

(assert (=> d!330867 (= (rulesProduceEachTokenIndividually!690 Lexer!1649 (rules!9439 thiss!10527) lt!393469) lt!393525)))

(declare-fun b!1157884 () Bool)

(assert (=> b!1157884 (= e!740825 (= lt!393525 (rulesProduceEachTokenIndividuallyList!519 Lexer!1649 (rules!9439 thiss!10527) (list!4161 lt!393469))))))

(assert (= (and d!330867 res!521310) b!1157884))

(assert (=> d!330867 m!1324395))

(assert (=> d!330867 m!1324395))

(declare-fun m!1324583 () Bool)

(assert (=> d!330867 m!1324583))

(declare-fun m!1324585 () Bool)

(assert (=> d!330867 m!1324585))

(assert (=> d!330867 m!1324463))

(assert (=> b!1157884 m!1324395))

(assert (=> b!1157884 m!1324395))

(declare-fun m!1324587 () Bool)

(assert (=> b!1157884 m!1324587))

(assert (=> b!1157662 d!330867))

(declare-fun d!330869 () Bool)

(declare-fun lt!393526 () Bool)

(assert (=> d!330869 (= lt!393526 (forall!2907 (list!4161 lt!393469) lambda!46836))))

(assert (=> d!330869 (= lt!393526 (forall!2910 (c!194109 lt!393469) lambda!46836))))

(assert (=> d!330869 (= (forall!2906 lt!393469 lambda!46836) lt!393526)))

(declare-fun bs!283120 () Bool)

(assert (= bs!283120 d!330869))

(assert (=> bs!283120 m!1324395))

(assert (=> bs!283120 m!1324395))

(declare-fun m!1324589 () Bool)

(assert (=> bs!283120 m!1324589))

(declare-fun m!1324591 () Bool)

(assert (=> bs!283120 m!1324591))

(assert (=> b!1157662 d!330869))

(declare-fun d!330871 () Bool)

(declare-fun res!521320 () Bool)

(declare-fun e!740837 () Bool)

(assert (=> d!330871 (=> (not res!521320) (not e!740837))))

(assert (=> d!330871 (= res!521320 (not (isEmpty!6944 (rules!9439 thiss!10527))))))

(assert (=> d!330871 (= (inv!14836 thiss!10527) e!740837)))

(declare-fun b!1157900 () Bool)

(declare-fun res!521321 () Bool)

(assert (=> b!1157900 (=> (not res!521321) (not e!740837))))

(assert (=> b!1157900 (= res!521321 (rulesInvariant!1525 Lexer!1649 (rules!9439 thiss!10527)))))

(declare-fun b!1157901 () Bool)

(declare-fun res!521322 () Bool)

(assert (=> b!1157901 (=> (not res!521322) (not e!740837))))

(assert (=> b!1157901 (= res!521322 (rulesProduceEachTokenIndividually!690 Lexer!1649 (rules!9439 thiss!10527) (tokens!1555 thiss!10527)))))

(declare-fun b!1157902 () Bool)

(assert (=> b!1157902 (= e!740837 (separableTokens!99 Lexer!1649 (tokens!1555 thiss!10527) (rules!9439 thiss!10527)))))

(assert (= (and d!330871 res!521320) b!1157900))

(assert (= (and b!1157900 res!521321) b!1157901))

(assert (= (and b!1157901 res!521322) b!1157902))

(assert (=> d!330871 m!1324463))

(assert (=> b!1157900 m!1324361))

(assert (=> b!1157901 m!1324377))

(assert (=> b!1157902 m!1324579))

(assert (=> start!101180 d!330871))

(declare-fun bs!283126 () Bool)

(declare-fun d!330877 () Bool)

(assert (= bs!283126 (and d!330877 d!330865)))

(declare-fun lambda!46869 () Int)

(assert (=> bs!283126 (= lambda!46869 lambda!46862)))

(declare-fun bs!283127 () Bool)

(assert (= bs!283127 (and d!330877 d!330867)))

(assert (=> bs!283127 (= lambda!46869 lambda!46863)))

(declare-fun bs!283128 () Bool)

(assert (= bs!283128 (and d!330877 d!330815)))

(assert (=> bs!283128 (= lambda!46869 lambda!46855)))

(declare-fun bs!283129 () Bool)

(assert (= bs!283129 (and d!330877 d!330831)))

(assert (=> bs!283129 (= lambda!46869 lambda!46859)))

(declare-fun bs!283130 () Bool)

(assert (= bs!283130 (and d!330877 d!330813)))

(assert (=> bs!283130 (= lambda!46869 lambda!46852)))

(declare-fun bs!283131 () Bool)

(assert (= bs!283131 (and d!330877 b!1157668)))

(assert (=> bs!283131 (= lambda!46869 lambda!46836)))

(declare-fun b!1157907 () Bool)

(declare-fun e!740842 () Bool)

(assert (=> b!1157907 (= e!740842 true)))

(declare-fun b!1157906 () Bool)

(declare-fun e!740841 () Bool)

(assert (=> b!1157906 (= e!740841 e!740842)))

(declare-fun b!1157905 () Bool)

(declare-fun e!740840 () Bool)

(assert (=> b!1157905 (= e!740840 e!740841)))

(assert (=> d!330877 e!740840))

(assert (= b!1157906 b!1157907))

(assert (= b!1157905 b!1157906))

(assert (= (and d!330877 (is-Cons!11294 (rules!9439 thiss!10527))) b!1157905))

(assert (=> b!1157907 (< (dynLambda!4979 order!6915 (toValue!3057 (transformation!1956 (h!16695 (rules!9439 thiss!10527))))) (dynLambda!4980 order!6917 lambda!46869))))

(assert (=> b!1157907 (< (dynLambda!4981 order!6919 (toChars!2916 (transformation!1956 (h!16695 (rules!9439 thiss!10527))))) (dynLambda!4980 order!6917 lambda!46869))))

(assert (=> d!330877 true))

(declare-fun lt!393533 () Bool)

(assert (=> d!330877 (= lt!393533 (forall!2907 (t!109204 lt!393468) lambda!46869))))

(declare-fun e!740839 () Bool)

(assert (=> d!330877 (= lt!393533 e!740839)))

(declare-fun res!521324 () Bool)

(assert (=> d!330877 (=> res!521324 e!740839)))

(assert (=> d!330877 (= res!521324 (not (is-Cons!11293 (t!109204 lt!393468))))))

(assert (=> d!330877 (not (isEmpty!6944 (rules!9439 thiss!10527)))))

(assert (=> d!330877 (= (rulesProduceEachTokenIndividuallyList!519 Lexer!1649 (rules!9439 thiss!10527) (t!109204 lt!393468)) lt!393533)))

(declare-fun b!1157903 () Bool)

(declare-fun e!740838 () Bool)

(assert (=> b!1157903 (= e!740839 e!740838)))

(declare-fun res!521323 () Bool)

(assert (=> b!1157903 (=> (not res!521323) (not e!740838))))

(assert (=> b!1157903 (= res!521323 (rulesProduceIndividualToken!688 Lexer!1649 (rules!9439 thiss!10527) (h!16694 (t!109204 lt!393468))))))

(declare-fun b!1157904 () Bool)

(assert (=> b!1157904 (= e!740838 (rulesProduceEachTokenIndividuallyList!519 Lexer!1649 (rules!9439 thiss!10527) (t!109204 (t!109204 lt!393468))))))

(assert (= (and d!330877 (not res!521324)) b!1157903))

(assert (= (and b!1157903 res!521323) b!1157904))

(declare-fun m!1324603 () Bool)

(assert (=> d!330877 m!1324603))

(assert (=> d!330877 m!1324463))

(declare-fun m!1324605 () Bool)

(assert (=> b!1157903 m!1324605))

(declare-fun m!1324607 () Bool)

(assert (=> b!1157904 m!1324607))

(assert (=> b!1157665 d!330877))

(declare-fun d!330879 () Bool)

(declare-fun lt!393534 () Bool)

(declare-fun e!740843 () Bool)

(assert (=> d!330879 (= lt!393534 e!740843)))

(declare-fun res!521326 () Bool)

(assert (=> d!330879 (=> (not res!521326) (not e!740843))))

(assert (=> d!330879 (= res!521326 (= (list!4161 (_1!6837 (lex!683 Lexer!1649 (rules!9439 thiss!10527) (print!620 Lexer!1649 (singletonSeq!638 (h!16694 lt!393468)))))) (list!4161 (singletonSeq!638 (h!16694 lt!393468)))))))

(declare-fun e!740844 () Bool)

(assert (=> d!330879 (= lt!393534 e!740844)))

(declare-fun res!521327 () Bool)

(assert (=> d!330879 (=> (not res!521327) (not e!740844))))

(declare-fun lt!393535 () tuple2!11980)

(assert (=> d!330879 (= res!521327 (= (size!8883 (_1!6837 lt!393535)) 1))))

(assert (=> d!330879 (= lt!393535 (lex!683 Lexer!1649 (rules!9439 thiss!10527) (print!620 Lexer!1649 (singletonSeq!638 (h!16694 lt!393468)))))))

(assert (=> d!330879 (not (isEmpty!6944 (rules!9439 thiss!10527)))))

(assert (=> d!330879 (= (rulesProduceIndividualToken!688 Lexer!1649 (rules!9439 thiss!10527) (h!16694 lt!393468)) lt!393534)))

(declare-fun b!1157908 () Bool)

(declare-fun res!521325 () Bool)

(assert (=> b!1157908 (=> (not res!521325) (not e!740844))))

(assert (=> b!1157908 (= res!521325 (= (apply!2407 (_1!6837 lt!393535) 0) (h!16694 lt!393468)))))

(declare-fun b!1157909 () Bool)

(assert (=> b!1157909 (= e!740844 (isEmpty!6946 (_2!6837 lt!393535)))))

(declare-fun b!1157910 () Bool)

(assert (=> b!1157910 (= e!740843 (isEmpty!6946 (_2!6837 (lex!683 Lexer!1649 (rules!9439 thiss!10527) (print!620 Lexer!1649 (singletonSeq!638 (h!16694 lt!393468)))))))))

(assert (= (and d!330879 res!521327) b!1157908))

(assert (= (and b!1157908 res!521325) b!1157909))

(assert (= (and d!330879 res!521326) b!1157910))

(declare-fun m!1324609 () Bool)

(assert (=> d!330879 m!1324609))

(assert (=> d!330879 m!1324463))

(declare-fun m!1324611 () Bool)

(assert (=> d!330879 m!1324611))

(declare-fun m!1324613 () Bool)

(assert (=> d!330879 m!1324613))

(declare-fun m!1324615 () Bool)

(assert (=> d!330879 m!1324615))

(assert (=> d!330879 m!1324611))

(declare-fun m!1324617 () Bool)

(assert (=> d!330879 m!1324617))

(assert (=> d!330879 m!1324615))

(declare-fun m!1324619 () Bool)

(assert (=> d!330879 m!1324619))

(assert (=> d!330879 m!1324615))

(declare-fun m!1324621 () Bool)

(assert (=> b!1157908 m!1324621))

(declare-fun m!1324623 () Bool)

(assert (=> b!1157909 m!1324623))

(assert (=> b!1157910 m!1324615))

(assert (=> b!1157910 m!1324615))

(assert (=> b!1157910 m!1324611))

(assert (=> b!1157910 m!1324611))

(assert (=> b!1157910 m!1324613))

(declare-fun m!1324625 () Bool)

(assert (=> b!1157910 m!1324625))

(assert (=> b!1157666 d!330879))

(declare-fun d!330881 () Bool)

(declare-fun res!521332 () Bool)

(declare-fun e!740849 () Bool)

(assert (=> d!330881 (=> res!521332 e!740849)))

(assert (=> d!330881 (= res!521332 (is-Nil!11293 lt!393468))))

(assert (=> d!330881 (= (forall!2907 lt!393468 lambda!46836) e!740849)))

(declare-fun b!1157915 () Bool)

(declare-fun e!740850 () Bool)

(assert (=> b!1157915 (= e!740849 e!740850)))

(declare-fun res!521333 () Bool)

(assert (=> b!1157915 (=> (not res!521333) (not e!740850))))

(declare-fun dynLambda!4985 (Int Token!3574) Bool)

(assert (=> b!1157915 (= res!521333 (dynLambda!4985 lambda!46836 (h!16694 lt!393468)))))

(declare-fun b!1157916 () Bool)

(assert (=> b!1157916 (= e!740850 (forall!2907 (t!109204 lt!393468) lambda!46836))))

(assert (= (and d!330881 (not res!521332)) b!1157915))

(assert (= (and b!1157915 res!521333) b!1157916))

(declare-fun b_lambda!34577 () Bool)

(assert (=> (not b_lambda!34577) (not b!1157915)))

(declare-fun m!1324627 () Bool)

(assert (=> b!1157915 m!1324627))

(declare-fun m!1324629 () Bool)

(assert (=> b!1157916 m!1324629))

(assert (=> b!1157664 d!330881))

(declare-fun d!330883 () Bool)

(declare-fun e!740855 () Bool)

(assert (=> d!330883 e!740855))

(declare-fun res!521340 () Bool)

(assert (=> d!330883 (=> (not res!521340) (not e!740855))))

(declare-fun slice!203 (Conc!3675 Int Int) Conc!3675)

(assert (=> d!330883 (= res!521340 (isBalanced!1038 (slice!203 (c!194109 (tokens!1555 thiss!10527)) from!787 to!267)))))

(declare-fun lt!393538 () BalanceConc!7372)

(assert (=> d!330883 (= lt!393538 (BalanceConc!7373 (slice!203 (c!194109 (tokens!1555 thiss!10527)) from!787 to!267)))))

(declare-fun e!740856 () Bool)

(assert (=> d!330883 e!740856))

(declare-fun res!521342 () Bool)

(assert (=> d!330883 (=> (not res!521342) (not e!740856))))

(assert (=> d!330883 (= res!521342 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!330883 (= (slice!199 (tokens!1555 thiss!10527) from!787 to!267) lt!393538)))

(declare-fun b!1157923 () Bool)

(declare-fun res!521341 () Bool)

(assert (=> b!1157923 (=> (not res!521341) (not e!740856))))

(assert (=> b!1157923 (= res!521341 (<= to!267 (size!8883 (tokens!1555 thiss!10527))))))

(declare-fun b!1157924 () Bool)

(assert (=> b!1157924 (= e!740856 (isBalanced!1038 (c!194109 (tokens!1555 thiss!10527))))))

(declare-fun b!1157925 () Bool)

(assert (=> b!1157925 (= e!740855 (= (list!4161 lt!393538) (slice!200 (list!4161 (tokens!1555 thiss!10527)) from!787 to!267)))))

(assert (= (and d!330883 res!521342) b!1157923))

(assert (= (and b!1157923 res!521341) b!1157924))

(assert (= (and d!330883 res!521340) b!1157925))

(declare-fun m!1324631 () Bool)

(assert (=> d!330883 m!1324631))

(assert (=> d!330883 m!1324631))

(declare-fun m!1324633 () Bool)

(assert (=> d!330883 m!1324633))

(assert (=> b!1157923 m!1324367))

(assert (=> b!1157924 m!1324407))

(declare-fun m!1324635 () Bool)

(assert (=> b!1157925 m!1324635))

(assert (=> b!1157925 m!1324379))

(assert (=> b!1157925 m!1324379))

(declare-fun m!1324637 () Bool)

(assert (=> b!1157925 m!1324637))

(assert (=> b!1157664 d!330883))

(declare-fun d!330885 () Bool)

(assert (=> d!330885 (forall!2907 lt!393468 lambda!46836)))

(declare-fun lt!393541 () Unit!17310)

(declare-fun choose!7432 (List!11317 List!11317 Int) Unit!17310)

(assert (=> d!330885 (= lt!393541 (choose!7432 lt!393468 lt!393470 lambda!46836))))

(assert (=> d!330885 (forall!2907 lt!393470 lambda!46836)))

(assert (=> d!330885 (= (lemmaForallSubseq!104 lt!393468 lt!393470 lambda!46836) lt!393541)))

(declare-fun bs!283132 () Bool)

(assert (= bs!283132 d!330885))

(assert (=> bs!283132 m!1324389))

(declare-fun m!1324639 () Bool)

(assert (=> bs!283132 m!1324639))

(declare-fun m!1324641 () Bool)

(assert (=> bs!283132 m!1324641))

(assert (=> b!1157664 d!330885))

(declare-fun e!740867 () Bool)

(declare-fun b!1157936 () Bool)

(assert (=> b!1157936 (= e!740867 (subseq!212 (t!109204 (slice!200 lt!393470 from!787 to!267)) (t!109204 lt!393470)))))

(declare-fun b!1157934 () Bool)

(declare-fun e!740868 () Bool)

(declare-fun e!740866 () Bool)

(assert (=> b!1157934 (= e!740868 e!740866)))

(declare-fun res!521351 () Bool)

(assert (=> b!1157934 (=> (not res!521351) (not e!740866))))

(assert (=> b!1157934 (= res!521351 (is-Cons!11293 lt!393470))))

(declare-fun d!330887 () Bool)

(declare-fun res!521354 () Bool)

(assert (=> d!330887 (=> res!521354 e!740868)))

(assert (=> d!330887 (= res!521354 (is-Nil!11293 (slice!200 lt!393470 from!787 to!267)))))

(assert (=> d!330887 (= (subseq!212 (slice!200 lt!393470 from!787 to!267) lt!393470) e!740868)))

(declare-fun b!1157937 () Bool)

(declare-fun e!740865 () Bool)

(assert (=> b!1157937 (= e!740865 (subseq!212 (slice!200 lt!393470 from!787 to!267) (t!109204 lt!393470)))))

(declare-fun b!1157935 () Bool)

(assert (=> b!1157935 (= e!740866 e!740865)))

(declare-fun res!521352 () Bool)

(assert (=> b!1157935 (=> res!521352 e!740865)))

(assert (=> b!1157935 (= res!521352 e!740867)))

(declare-fun res!521353 () Bool)

(assert (=> b!1157935 (=> (not res!521353) (not e!740867))))

(assert (=> b!1157935 (= res!521353 (= (h!16694 (slice!200 lt!393470 from!787 to!267)) (h!16694 lt!393470)))))

(assert (= (and d!330887 (not res!521354)) b!1157934))

(assert (= (and b!1157934 res!521351) b!1157935))

(assert (= (and b!1157935 res!521353) b!1157936))

(assert (= (and b!1157935 (not res!521352)) b!1157937))

(declare-fun m!1324643 () Bool)

(assert (=> b!1157936 m!1324643))

(assert (=> b!1157937 m!1324385))

(declare-fun m!1324645 () Bool)

(assert (=> b!1157937 m!1324645))

(assert (=> b!1157664 d!330887))

(declare-fun d!330889 () Bool)

(assert (=> d!330889 (= (list!4161 lt!393469) (list!4163 (c!194109 lt!393469)))))

(declare-fun bs!283133 () Bool)

(assert (= bs!283133 d!330889))

(declare-fun m!1324647 () Bool)

(assert (=> bs!283133 m!1324647))

(assert (=> b!1157664 d!330889))

(declare-fun d!330891 () Bool)

(assert (=> d!330891 (subseq!212 (slice!200 lt!393470 from!787 to!267) lt!393470)))

(declare-fun lt!393544 () Unit!17310)

(declare-fun choose!7434 (List!11317 Int Int) Unit!17310)

(assert (=> d!330891 (= lt!393544 (choose!7434 lt!393470 from!787 to!267))))

(declare-fun e!740871 () Bool)

(assert (=> d!330891 e!740871))

(declare-fun res!521357 () Bool)

(assert (=> d!330891 (=> (not res!521357) (not e!740871))))

(assert (=> d!330891 (= res!521357 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!330891 (= (lemmaSliceSubseq!53 lt!393470 from!787 to!267) lt!393544)))

(declare-fun b!1157940 () Bool)

(assert (=> b!1157940 (= e!740871 (<= to!267 (size!8886 lt!393470)))))

(assert (= (and d!330891 res!521357) b!1157940))

(assert (=> d!330891 m!1324385))

(assert (=> d!330891 m!1324385))

(assert (=> d!330891 m!1324387))

(declare-fun m!1324649 () Bool)

(assert (=> d!330891 m!1324649))

(declare-fun m!1324651 () Bool)

(assert (=> b!1157940 m!1324651))

(assert (=> b!1157664 d!330891))

(declare-fun d!330893 () Bool)

(declare-fun take!48 (List!11317 Int) List!11317)

(declare-fun drop!450 (List!11317 Int) List!11317)

(assert (=> d!330893 (= (slice!200 lt!393470 from!787 to!267) (take!48 (drop!450 lt!393470 from!787) (- to!267 from!787)))))

(declare-fun bs!283134 () Bool)

(assert (= bs!283134 d!330893))

(declare-fun m!1324653 () Bool)

(assert (=> bs!283134 m!1324653))

(assert (=> bs!283134 m!1324653))

(declare-fun m!1324655 () Bool)

(assert (=> bs!283134 m!1324655))

(assert (=> b!1157664 d!330893))

(declare-fun b!1157951 () Bool)

(declare-fun b_free!27697 () Bool)

(declare-fun b_next!28401 () Bool)

(assert (=> b!1157951 (= b_free!27697 (not b_next!28401))))

(declare-fun tp!333406 () Bool)

(declare-fun b_and!80573 () Bool)

(assert (=> b!1157951 (= tp!333406 b_and!80573)))

(declare-fun b_free!27699 () Bool)

(declare-fun b_next!28403 () Bool)

(assert (=> b!1157951 (= b_free!27699 (not b_next!28403))))

(declare-fun tp!333408 () Bool)

(declare-fun b_and!80575 () Bool)

(assert (=> b!1157951 (= tp!333408 b_and!80575)))

(declare-fun e!740880 () Bool)

(assert (=> b!1157951 (= e!740880 (and tp!333406 tp!333408))))

(declare-fun b!1157950 () Bool)

(declare-fun e!740881 () Bool)

(declare-fun tp!333405 () Bool)

(declare-fun inv!14832 (String!13700) Bool)

(declare-fun inv!14845 (TokenValueInjection!3744) Bool)

(assert (=> b!1157950 (= e!740881 (and tp!333405 (inv!14832 (tag!2218 (h!16695 (rules!9439 thiss!10527)))) (inv!14845 (transformation!1956 (h!16695 (rules!9439 thiss!10527)))) e!740880))))

(declare-fun b!1157949 () Bool)

(declare-fun e!740882 () Bool)

(declare-fun tp!333407 () Bool)

(assert (=> b!1157949 (= e!740882 (and e!740881 tp!333407))))

(assert (=> b!1157663 (= tp!333390 e!740882)))

(assert (= b!1157950 b!1157951))

(assert (= b!1157949 b!1157950))

(assert (= (and b!1157663 (is-Cons!11294 (rules!9439 thiss!10527))) b!1157949))

(declare-fun m!1324657 () Bool)

(assert (=> b!1157950 m!1324657))

(declare-fun m!1324659 () Bool)

(assert (=> b!1157950 m!1324659))

(declare-fun b!1157954 () Bool)

(declare-fun e!740886 () Bool)

(assert (=> b!1157954 (= e!740886 true)))

(declare-fun b!1157953 () Bool)

(declare-fun e!740885 () Bool)

(assert (=> b!1157953 (= e!740885 e!740886)))

(declare-fun b!1157952 () Bool)

(declare-fun e!740884 () Bool)

(assert (=> b!1157952 (= e!740884 e!740885)))

(assert (=> b!1157678 e!740884))

(assert (= b!1157953 b!1157954))

(assert (= b!1157952 b!1157953))

(assert (= (and b!1157678 (is-Cons!11294 (rules!9439 thiss!10527))) b!1157952))

(assert (=> b!1157954 (< (dynLambda!4979 order!6915 (toValue!3057 (transformation!1956 (h!16695 (rules!9439 thiss!10527))))) (dynLambda!4980 order!6917 lambda!46836))))

(assert (=> b!1157954 (< (dynLambda!4981 order!6919 (toChars!2916 (transformation!1956 (h!16695 (rules!9439 thiss!10527))))) (dynLambda!4980 order!6917 lambda!46836))))

(declare-fun b!1157963 () Bool)

(declare-fun e!740891 () Bool)

(assert (=> b!1157963 (= e!740891 true)))

(declare-fun b!1157965 () Bool)

(declare-fun e!740892 () Bool)

(assert (=> b!1157965 (= e!740892 true)))

(declare-fun b!1157964 () Bool)

(assert (=> b!1157964 (= e!740891 e!740892)))

(assert (=> b!1157679 e!740891))

(assert (= (and b!1157679 (is-Node!3675 (c!194109 (tokens!1555 thiss!10527)))) b!1157963))

(assert (= b!1157964 b!1157965))

(assert (= (and b!1157679 (is-Leaf!5664 (c!194109 (tokens!1555 thiss!10527)))) b!1157964))

(declare-fun e!740897 () Bool)

(declare-fun tp!333415 () Bool)

(declare-fun b!1157974 () Bool)

(declare-fun tp!333416 () Bool)

(assert (=> b!1157974 (= e!740897 (and (inv!14837 (left!9849 (c!194109 (tokens!1555 thiss!10527)))) tp!333415 (inv!14837 (right!10179 (c!194109 (tokens!1555 thiss!10527)))) tp!333416))))

(declare-fun b!1157976 () Bool)

(declare-fun e!740898 () Bool)

(declare-fun tp!333417 () Bool)

(assert (=> b!1157976 (= e!740898 tp!333417)))

(declare-fun b!1157975 () Bool)

(declare-fun inv!14846 (IArray!7355) Bool)

(assert (=> b!1157975 (= e!740897 (and (inv!14846 (xs!6380 (c!194109 (tokens!1555 thiss!10527)))) e!740898))))

(assert (=> b!1157671 (= tp!333389 (and (inv!14837 (c!194109 (tokens!1555 thiss!10527))) e!740897))))

(assert (= (and b!1157671 (is-Node!3675 (c!194109 (tokens!1555 thiss!10527)))) b!1157974))

(assert (= b!1157975 b!1157976))

(assert (= (and b!1157671 (is-Leaf!5664 (c!194109 (tokens!1555 thiss!10527)))) b!1157975))

(declare-fun m!1324661 () Bool)

(assert (=> b!1157974 m!1324661))

(declare-fun m!1324663 () Bool)

(assert (=> b!1157974 m!1324663))

(declare-fun m!1324665 () Bool)

(assert (=> b!1157975 m!1324665))

(assert (=> b!1157671 m!1324399))

(declare-fun b_lambda!34579 () Bool)

(assert (= b_lambda!34577 (or b!1157668 b_lambda!34579)))

(declare-fun bs!283135 () Bool)

(declare-fun d!330895 () Bool)

(assert (= bs!283135 (and d!330895 b!1157668)))

(assert (=> bs!283135 (= (dynLambda!4985 lambda!46836 (h!16694 lt!393468)) (rulesProduceIndividualToken!688 Lexer!1649 (rules!9439 thiss!10527) (h!16694 lt!393468)))))

(assert (=> bs!283135 m!1324383))

(assert (=> b!1157915 d!330895))

(push 1)

(assert (not b!1157810))

(assert (not b!1157671))

(assert (not b!1157799))

(assert (not b!1157879))

(assert (not b!1157812))

(assert (not d!330835))

(assert (not b!1157976))

(assert (not b!1157771))

(assert (not b!1157807))

(assert (not b_lambda!34579))

(assert (not d!330885))

(assert (not b!1157949))

(assert (not d!330823))

(assert (not b!1157950))

(assert (not b!1157902))

(assert (not b!1157749))

(assert (not b!1157878))

(assert (not b_next!28401))

(assert (not d!330813))

(assert (not b!1157940))

(assert (not d!330819))

(assert (not d!330865))

(assert (not d!330877))

(assert (not d!330891))

(assert (not b_next!28403))

(assert (not b!1157910))

(assert (not b!1157773))

(assert (not b!1157974))

(assert (not d!330871))

(assert (not d!330893))

(assert (not b!1157738))

(assert (not b!1157880))

(assert (not d!330867))

(assert (not b!1157952))

(assert (not b!1157963))

(assert (not b!1157748))

(assert (not bs!283135))

(assert (not d!330837))

(assert (not b!1157965))

(assert (not b!1157937))

(assert (not d!330879))

(assert (not b!1157798))

(assert (not d!330831))

(assert (not b!1157881))

(assert (not b!1157800))

(assert (not b!1157905))

(assert (not b!1157975))

(assert (not b!1157936))

(assert (not d!330869))

(assert (not b!1157817))

(assert (not b!1157900))

(assert (not b!1157747))

(assert (not d!330815))

(assert (not b!1157885))

(assert (not b!1157729))

(assert (not b!1157925))

(assert (not b!1157877))

(assert (not b!1157770))

(assert (not b!1157909))

(assert (not b!1157884))

(assert (not b!1157924))

(assert (not d!330889))

(assert (not b!1157904))

(assert (not b!1157916))

(assert (not b!1157811))

(assert (not b!1157903))

(assert (not b!1157901))

(assert (not d!330817))

(assert (not d!330883))

(assert (not b!1157908))

(assert (not b!1157769))

(assert b_and!80575)

(assert (not d!330833))

(assert (not d!330863))

(assert (not b!1157768))

(assert b_and!80573)

(assert (not b!1157772))

(assert (not b!1157923))

(assert (not b!1157809))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80573)

(assert b_and!80575)

(assert (not b_next!28401))

(assert (not b_next!28403))

(check-sat)

(pop 1)

