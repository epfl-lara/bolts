; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!128420 () Bool)

(assert start!128420)

(declare-datatypes ((List!14409 0))(
  ( (Nil!14343) (Cons!14343 (h!19744 (_ BitVec 16)) (t!123114 List!14409)) )
))
(declare-datatypes ((TokenValue!2576 0))(
  ( (FloatLiteralValue!5152 (text!18477 List!14409)) (TokenValueExt!2575 (__x!8981 Int)) (Broken!12880 (value!80459 List!14409)) (Object!2641) (End!2576) (Def!2576) (Underscore!2576) (Match!2576) (Else!2576) (Error!2576) (Case!2576) (If!2576) (Extends!2576) (Abstract!2576) (Class!2576) (Val!2576) (DelimiterValue!5152 (del!2636 List!14409)) (KeywordValue!2582 (value!80460 List!14409)) (CommentValue!5152 (value!80461 List!14409)) (WhitespaceValue!5152 (value!80462 List!14409)) (IndentationValue!2576 (value!80463 List!14409)) (String!17117) (Int32!2576) (Broken!12881 (value!80464 List!14409)) (Boolean!2577) (Unit!20725) (OperatorValue!2579 (op!2636 List!14409)) (IdentifierValue!5152 (value!80465 List!14409)) (IdentifierValue!5153 (value!80466 List!14409)) (WhitespaceValue!5153 (value!80467 List!14409)) (True!5152) (False!5152) (Broken!12882 (value!80468 List!14409)) (Broken!12883 (value!80469 List!14409)) (True!5153) (RightBrace!2576) (RightBracket!2576) (Colon!2576) (Null!2576) (Comma!2576) (LeftBracket!2576) (False!5153) (LeftBrace!2576) (ImaginaryLiteralValue!2576 (text!18478 List!14409)) (StringLiteralValue!7728 (value!80470 List!14409)) (EOFValue!2576 (value!80471 List!14409)) (IdentValue!2576 (value!80472 List!14409)) (DelimiterValue!5153 (value!80473 List!14409)) (DedentValue!2576 (value!80474 List!14409)) (NewLineValue!2576 (value!80475 List!14409)) (IntegerValue!7728 (value!80476 (_ BitVec 32)) (text!18479 List!14409)) (IntegerValue!7729 (value!80477 Int) (text!18480 List!14409)) (Times!2576) (Or!2576) (Equal!2576) (Minus!2576) (Broken!12884 (value!80478 List!14409)) (And!2576) (Div!2576) (LessEqual!2576) (Mod!2576) (Concat!6376) (Not!2576) (Plus!2576) (SpaceValue!2576 (value!80479 List!14409)) (IntegerValue!7730 (value!80480 Int) (text!18481 List!14409)) (StringLiteralValue!7729 (text!18482 List!14409)) (FloatLiteralValue!5153 (text!18483 List!14409)) (BytesLiteralValue!2576 (value!80481 List!14409)) (CommentValue!5153 (value!80482 List!14409)) (StringLiteralValue!7730 (value!80483 List!14409)) (ErrorTokenValue!2576 (msg!2637 List!14409)) )
))
(declare-datatypes ((Regex!3800 0))(
  ( (ElementMatch!3800 (c!231447 (_ BitVec 16))) (Concat!6377 (regOne!8112 Regex!3800) (regTwo!8112 Regex!3800)) (EmptyExpr!3800) (Star!3800 (reg!4129 Regex!3800)) (EmptyLang!3800) (Union!3800 (regOne!8113 Regex!3800) (regTwo!8113 Regex!3800)) )
))
(declare-datatypes ((String!17118 0))(
  ( (String!17119 (value!80484 String)) )
))
(declare-datatypes ((IArray!9469 0))(
  ( (IArray!9470 (innerList!4792 List!14409)) )
))
(declare-datatypes ((Conc!4732 0))(
  ( (Node!4732 (left!12245 Conc!4732) (right!12575 Conc!4732) (csize!9694 Int) (cheight!4943 Int)) (Leaf!7172 (xs!7459 IArray!9469) (csize!9695 Int)) (Empty!4732) )
))
(declare-datatypes ((BalanceConc!9404 0))(
  ( (BalanceConc!9405 (c!231448 Conc!4732)) )
))
(declare-datatypes ((TokenValueInjection!4812 0))(
  ( (TokenValueInjection!4813 (toValue!3777 Int) (toChars!3636 Int)) )
))
(declare-datatypes ((Rule!4772 0))(
  ( (Rule!4773 (regex!2486 Regex!3800) (tag!2748 String!17118) (isSeparator!2486 Bool) (transformation!2486 TokenValueInjection!4812)) )
))
(declare-datatypes ((Token!4634 0))(
  ( (Token!4635 (value!80485 TokenValue!2576) (rule!4249 Rule!4772) (size!11803 Int) (originalCharacters!3348 List!14409)) )
))
(declare-datatypes ((List!14410 0))(
  ( (Nil!14344) (Cons!14344 (h!19745 Token!4634) (t!123115 List!14410)) )
))
(declare-datatypes ((IArray!9471 0))(
  ( (IArray!9472 (innerList!4793 List!14410)) )
))
(declare-datatypes ((Conc!4733 0))(
  ( (Node!4733 (left!12246 Conc!4733) (right!12576 Conc!4733) (csize!9696 Int) (cheight!4944 Int)) (Leaf!7173 (xs!7460 IArray!9471) (csize!9697 Int)) (Empty!4733) )
))
(declare-datatypes ((List!14411 0))(
  ( (Nil!14345) (Cons!14345 (h!19746 Rule!4772) (t!123116 List!14411)) )
))
(declare-datatypes ((BalanceConc!9406 0))(
  ( (BalanceConc!9407 (c!231449 Conc!4733)) )
))
(declare-datatypes ((PrintableTokens!754 0))(
  ( (PrintableTokens!755 (rules!10949 List!14411) (tokens!1703 BalanceConc!9406)) )
))
(declare-fun acc!229 () PrintableTokens!754)

(declare-fun b!1407898 () Bool)

(declare-fun tp!399742 () Bool)

(declare-fun e!898753 () Bool)

(declare-fun e!898755 () Bool)

(declare-fun inv!18641 (BalanceConc!9406) Bool)

(assert (=> b!1407898 (= e!898755 (and tp!399742 (inv!18641 (tokens!1703 acc!229)) e!898753))))

(declare-fun b!1407899 () Bool)

(declare-fun e!898757 () Bool)

(declare-datatypes ((List!14412 0))(
  ( (Nil!14346) (Cons!14346 (h!19747 PrintableTokens!754) (t!123117 List!14412)) )
))
(declare-datatypes ((IArray!9473 0))(
  ( (IArray!9474 (innerList!4794 List!14412)) )
))
(declare-datatypes ((Conc!4734 0))(
  ( (Node!4734 (left!12247 Conc!4734) (right!12577 Conc!4734) (csize!9698 Int) (cheight!4945 Int)) (Leaf!7174 (xs!7461 IArray!9473) (csize!9699 Int)) (Empty!4734) )
))
(declare-datatypes ((BalanceConc!9408 0))(
  ( (BalanceConc!9409 (c!231450 Conc!4734)) )
))
(declare-fun objs!24 () BalanceConc!9408)

(declare-fun tp!399745 () Bool)

(declare-fun inv!18642 (Conc!4734) Bool)

(assert (=> b!1407899 (= e!898757 (and (inv!18642 (c!231450 objs!24)) tp!399745))))

(declare-fun res!637599 () Bool)

(declare-fun e!898756 () Bool)

(assert (=> start!128420 (=> (not res!637599) (not e!898756))))

(declare-fun lambda!62266 () Int)

(declare-fun forall!3472 (BalanceConc!9408 Int) Bool)

(assert (=> start!128420 (= res!637599 (forall!3472 objs!24 lambda!62266))))

(assert (=> start!128420 e!898756))

(declare-fun inv!18643 (BalanceConc!9408) Bool)

(assert (=> start!128420 (and (inv!18643 objs!24) e!898757)))

(declare-fun inv!18644 (PrintableTokens!754) Bool)

(assert (=> start!128420 (and (inv!18644 acc!229) e!898755)))

(declare-fun sep!3 () PrintableTokens!754)

(declare-fun e!898759 () Bool)

(assert (=> start!128420 (and (inv!18644 sep!3) e!898759)))

(declare-fun b!1407900 () Bool)

(declare-fun tp!399741 () Bool)

(declare-fun inv!18645 (Conc!4733) Bool)

(assert (=> b!1407900 (= e!898753 (and (inv!18645 (c!231449 (tokens!1703 acc!229))) tp!399741))))

(declare-fun b!1407901 () Bool)

(declare-fun res!637600 () Bool)

(assert (=> b!1407901 (=> (not res!637600) (not e!898756))))

(declare-fun usesJsonRules!0 (PrintableTokens!754) Bool)

(assert (=> b!1407901 (= res!637600 (usesJsonRules!0 acc!229))))

(declare-fun b!1407902 () Bool)

(declare-fun res!637598 () Bool)

(assert (=> b!1407902 (=> (not res!637598) (not e!898756))))

(declare-fun isEmpty!8736 (BalanceConc!9408) Bool)

(assert (=> b!1407902 (= res!637598 (isEmpty!8736 objs!24))))

(declare-fun b!1407903 () Bool)

(declare-fun res!637597 () Bool)

(assert (=> b!1407903 (=> (not res!637597) (not e!898756))))

(assert (=> b!1407903 (= res!637597 (usesJsonRules!0 sep!3))))

(declare-fun b!1407904 () Bool)

(declare-fun e!898758 () Bool)

(declare-fun tp!399744 () Bool)

(assert (=> b!1407904 (= e!898758 (and (inv!18645 (c!231449 (tokens!1703 sep!3))) tp!399744))))

(declare-fun b!1407905 () Bool)

(declare-fun tp!399743 () Bool)

(assert (=> b!1407905 (= e!898759 (and tp!399743 (inv!18641 (tokens!1703 sep!3)) e!898758))))

(declare-fun b!1407906 () Bool)

(declare-fun e!898754 () Bool)

(assert (=> b!1407906 (= e!898756 e!898754)))

(declare-fun res!637596 () Bool)

(assert (=> b!1407906 (=> (not res!637596) (not e!898754))))

(declare-datatypes ((Option!2749 0))(
  ( (None!2748) (Some!2748 (v!21716 PrintableTokens!754)) )
))
(declare-fun lt!470033 () Option!2749)

(declare-fun isEmpty!8737 (Option!2749) Bool)

(assert (=> b!1407906 (= res!637596 (not (isEmpty!8737 lt!470033)))))

(assert (=> b!1407906 (= lt!470033 (Some!2748 acc!229))))

(declare-fun b!1407907 () Bool)

(declare-fun isDefined!2252 (Option!2749) Bool)

(assert (=> b!1407907 (= e!898754 (not (isDefined!2252 lt!470033)))))

(assert (= (and start!128420 res!637599) b!1407901))

(assert (= (and b!1407901 res!637600) b!1407903))

(assert (= (and b!1407903 res!637597) b!1407902))

(assert (= (and b!1407902 res!637598) b!1407906))

(assert (= (and b!1407906 res!637596) b!1407907))

(assert (= start!128420 b!1407899))

(assert (= b!1407898 b!1407900))

(assert (= start!128420 b!1407898))

(assert (= b!1407905 b!1407904))

(assert (= start!128420 b!1407905))

(declare-fun m!1585683 () Bool)

(assert (=> b!1407900 m!1585683))

(declare-fun m!1585685 () Bool)

(assert (=> b!1407902 m!1585685))

(declare-fun m!1585687 () Bool)

(assert (=> b!1407901 m!1585687))

(declare-fun m!1585689 () Bool)

(assert (=> b!1407907 m!1585689))

(declare-fun m!1585691 () Bool)

(assert (=> b!1407906 m!1585691))

(declare-fun m!1585693 () Bool)

(assert (=> b!1407905 m!1585693))

(declare-fun m!1585695 () Bool)

(assert (=> b!1407899 m!1585695))

(declare-fun m!1585697 () Bool)

(assert (=> b!1407904 m!1585697))

(declare-fun m!1585699 () Bool)

(assert (=> b!1407903 m!1585699))

(declare-fun m!1585701 () Bool)

(assert (=> start!128420 m!1585701))

(declare-fun m!1585703 () Bool)

(assert (=> start!128420 m!1585703))

(declare-fun m!1585705 () Bool)

(assert (=> start!128420 m!1585705))

(declare-fun m!1585707 () Bool)

(assert (=> start!128420 m!1585707))

(declare-fun m!1585709 () Bool)

(assert (=> b!1407898 m!1585709))

(push 1)

(assert (not b!1407902))

(assert (not b!1407899))

(assert (not b!1407901))

(assert (not b!1407906))

(assert (not b!1407907))

(assert (not start!128420))

(assert (not b!1407898))

(assert (not b!1407903))

(assert (not b!1407904))

(assert (not b!1407900))

(assert (not b!1407905))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!402000 () Bool)

(declare-fun c!231457 () Bool)

(assert (=> d!402000 (= c!231457 (is-Node!4734 (c!231450 objs!24)))))

(declare-fun e!898785 () Bool)

(assert (=> d!402000 (= (inv!18642 (c!231450 objs!24)) e!898785)))

(declare-fun b!1407944 () Bool)

(declare-fun inv!18651 (Conc!4734) Bool)

(assert (=> b!1407944 (= e!898785 (inv!18651 (c!231450 objs!24)))))

(declare-fun b!1407945 () Bool)

(declare-fun e!898786 () Bool)

(assert (=> b!1407945 (= e!898785 e!898786)))

(declare-fun res!637620 () Bool)

(assert (=> b!1407945 (= res!637620 (not (is-Leaf!7174 (c!231450 objs!24))))))

(assert (=> b!1407945 (=> res!637620 e!898786)))

(declare-fun b!1407946 () Bool)

(declare-fun inv!18652 (Conc!4734) Bool)

(assert (=> b!1407946 (= e!898786 (inv!18652 (c!231450 objs!24)))))

(assert (= (and d!402000 c!231457) b!1407944))

(assert (= (and d!402000 (not c!231457)) b!1407945))

(assert (= (and b!1407945 (not res!637620)) b!1407946))

(declare-fun m!1585739 () Bool)

(assert (=> b!1407944 m!1585739))

(declare-fun m!1585741 () Bool)

(assert (=> b!1407946 m!1585741))

(assert (=> b!1407899 d!402000))

(declare-fun d!402004 () Bool)

(declare-fun c!231460 () Bool)

(assert (=> d!402004 (= c!231460 (is-Node!4733 (c!231449 (tokens!1703 sep!3))))))

(declare-fun e!898791 () Bool)

(assert (=> d!402004 (= (inv!18645 (c!231449 (tokens!1703 sep!3))) e!898791)))

(declare-fun b!1407953 () Bool)

(declare-fun inv!18653 (Conc!4733) Bool)

(assert (=> b!1407953 (= e!898791 (inv!18653 (c!231449 (tokens!1703 sep!3))))))

(declare-fun b!1407954 () Bool)

(declare-fun e!898792 () Bool)

(assert (=> b!1407954 (= e!898791 e!898792)))

(declare-fun res!637623 () Bool)

(assert (=> b!1407954 (= res!637623 (not (is-Leaf!7173 (c!231449 (tokens!1703 sep!3)))))))

(assert (=> b!1407954 (=> res!637623 e!898792)))

(declare-fun b!1407955 () Bool)

(declare-fun inv!18654 (Conc!4733) Bool)

(assert (=> b!1407955 (= e!898792 (inv!18654 (c!231449 (tokens!1703 sep!3))))))

(assert (= (and d!402004 c!231460) b!1407953))

(assert (= (and d!402004 (not c!231460)) b!1407954))

(assert (= (and b!1407954 (not res!637623)) b!1407955))

(declare-fun m!1585743 () Bool)

(assert (=> b!1407953 m!1585743))

(declare-fun m!1585745 () Bool)

(assert (=> b!1407955 m!1585745))

(assert (=> b!1407904 d!402004))

(declare-fun d!402008 () Bool)

(declare-datatypes ((JsonLexer!366 0))(
  ( (JsonLexer!367) )
))
(declare-fun rules!109 (JsonLexer!366) List!14411)

(assert (=> d!402008 (= (usesJsonRules!0 sep!3) (= (rules!10949 sep!3) (rules!109 JsonLexer!367)))))

(declare-fun bs!338640 () Bool)

(assert (= bs!338640 d!402008))

(declare-fun m!1585747 () Bool)

(assert (=> bs!338640 m!1585747))

(assert (=> b!1407903 d!402008))

(declare-fun d!402010 () Bool)

(declare-fun isBalanced!1395 (Conc!4733) Bool)

(assert (=> d!402010 (= (inv!18641 (tokens!1703 acc!229)) (isBalanced!1395 (c!231449 (tokens!1703 acc!229))))))

(declare-fun bs!338641 () Bool)

(assert (= bs!338641 d!402010))

(declare-fun m!1585749 () Bool)

(assert (=> bs!338641 m!1585749))

(assert (=> b!1407898 d!402010))

(declare-fun d!402012 () Bool)

(assert (=> d!402012 (= (isDefined!2252 lt!470033) (not (isEmpty!8737 lt!470033)))))

(declare-fun bs!338642 () Bool)

(assert (= bs!338642 d!402012))

(assert (=> bs!338642 m!1585691))

(assert (=> b!1407907 d!402012))

(declare-fun d!402014 () Bool)

(declare-fun lt!470039 () Bool)

(declare-fun isEmpty!8740 (List!14412) Bool)

(declare-fun list!5607 (BalanceConc!9408) List!14412)

(assert (=> d!402014 (= lt!470039 (isEmpty!8740 (list!5607 objs!24)))))

(declare-fun isEmpty!8741 (Conc!4734) Bool)

(assert (=> d!402014 (= lt!470039 (isEmpty!8741 (c!231450 objs!24)))))

(assert (=> d!402014 (= (isEmpty!8736 objs!24) lt!470039)))

(declare-fun bs!338643 () Bool)

(assert (= bs!338643 d!402014))

(declare-fun m!1585751 () Bool)

(assert (=> bs!338643 m!1585751))

(assert (=> bs!338643 m!1585751))

(declare-fun m!1585753 () Bool)

(assert (=> bs!338643 m!1585753))

(declare-fun m!1585755 () Bool)

(assert (=> bs!338643 m!1585755))

(assert (=> b!1407902 d!402014))

(declare-fun d!402016 () Bool)

(assert (=> d!402016 (= (usesJsonRules!0 acc!229) (= (rules!10949 acc!229) (rules!109 JsonLexer!367)))))

(declare-fun bs!338644 () Bool)

(assert (= bs!338644 d!402016))

(assert (=> bs!338644 m!1585747))

(assert (=> b!1407901 d!402016))

(declare-fun d!402018 () Bool)

(declare-fun lt!470042 () Bool)

(declare-fun forall!3474 (List!14412 Int) Bool)

(assert (=> d!402018 (= lt!470042 (forall!3474 (list!5607 objs!24) lambda!62266))))

(declare-fun forall!3475 (Conc!4734 Int) Bool)

(assert (=> d!402018 (= lt!470042 (forall!3475 (c!231450 objs!24) lambda!62266))))

(assert (=> d!402018 (= (forall!3472 objs!24 lambda!62266) lt!470042)))

(declare-fun bs!338645 () Bool)

(assert (= bs!338645 d!402018))

(assert (=> bs!338645 m!1585751))

(assert (=> bs!338645 m!1585751))

(declare-fun m!1585757 () Bool)

(assert (=> bs!338645 m!1585757))

(declare-fun m!1585759 () Bool)

(assert (=> bs!338645 m!1585759))

(assert (=> start!128420 d!402018))

(declare-fun d!402020 () Bool)

(declare-fun isBalanced!1396 (Conc!4734) Bool)

(assert (=> d!402020 (= (inv!18643 objs!24) (isBalanced!1396 (c!231450 objs!24)))))

(declare-fun bs!338646 () Bool)

(assert (= bs!338646 d!402020))

(declare-fun m!1585761 () Bool)

(assert (=> bs!338646 m!1585761))

(assert (=> start!128420 d!402020))

(declare-fun d!402022 () Bool)

(declare-fun res!637633 () Bool)

(declare-fun e!898801 () Bool)

(assert (=> d!402022 (=> (not res!637633) (not e!898801))))

(declare-fun isEmpty!8742 (List!14411) Bool)

(assert (=> d!402022 (= res!637633 (not (isEmpty!8742 (rules!10949 acc!229))))))

(assert (=> d!402022 (= (inv!18644 acc!229) e!898801)))

(declare-fun b!1407971 () Bool)

(declare-fun res!637634 () Bool)

(assert (=> b!1407971 (=> (not res!637634) (not e!898801))))

(declare-datatypes ((LexerInterface!2181 0))(
  ( (LexerInterfaceExt!2178 (__x!8983 Int)) (Lexer!2179) )
))
(declare-fun rulesInvariant!2051 (LexerInterface!2181 List!14411) Bool)

(assert (=> b!1407971 (= res!637634 (rulesInvariant!2051 Lexer!2179 (rules!10949 acc!229)))))

(declare-fun b!1407972 () Bool)

(declare-fun res!637635 () Bool)

(assert (=> b!1407972 (=> (not res!637635) (not e!898801))))

(declare-fun rulesProduceEachTokenIndividually!778 (LexerInterface!2181 List!14411 BalanceConc!9406) Bool)

(assert (=> b!1407972 (= res!637635 (rulesProduceEachTokenIndividually!778 Lexer!2179 (rules!10949 acc!229) (tokens!1703 acc!229)))))

(declare-fun b!1407973 () Bool)

(declare-fun separableTokens!163 (LexerInterface!2181 BalanceConc!9406 List!14411) Bool)

(assert (=> b!1407973 (= e!898801 (separableTokens!163 Lexer!2179 (tokens!1703 acc!229) (rules!10949 acc!229)))))

(assert (= (and d!402022 res!637633) b!1407971))

(assert (= (and b!1407971 res!637634) b!1407972))

(assert (= (and b!1407972 res!637635) b!1407973))

(declare-fun m!1585783 () Bool)

(assert (=> d!402022 m!1585783))

(declare-fun m!1585785 () Bool)

(assert (=> b!1407971 m!1585785))

(declare-fun m!1585787 () Bool)

(assert (=> b!1407972 m!1585787))

(declare-fun m!1585789 () Bool)

(assert (=> b!1407973 m!1585789))

(assert (=> start!128420 d!402022))

(declare-fun d!402036 () Bool)

(declare-fun res!637636 () Bool)

(declare-fun e!898802 () Bool)

(assert (=> d!402036 (=> (not res!637636) (not e!898802))))

(assert (=> d!402036 (= res!637636 (not (isEmpty!8742 (rules!10949 sep!3))))))

(assert (=> d!402036 (= (inv!18644 sep!3) e!898802)))

(declare-fun b!1407974 () Bool)

(declare-fun res!637637 () Bool)

(assert (=> b!1407974 (=> (not res!637637) (not e!898802))))

(assert (=> b!1407974 (= res!637637 (rulesInvariant!2051 Lexer!2179 (rules!10949 sep!3)))))

(declare-fun b!1407975 () Bool)

(declare-fun res!637638 () Bool)

(assert (=> b!1407975 (=> (not res!637638) (not e!898802))))

(assert (=> b!1407975 (= res!637638 (rulesProduceEachTokenIndividually!778 Lexer!2179 (rules!10949 sep!3) (tokens!1703 sep!3)))))

(declare-fun b!1407976 () Bool)

(assert (=> b!1407976 (= e!898802 (separableTokens!163 Lexer!2179 (tokens!1703 sep!3) (rules!10949 sep!3)))))

(assert (= (and d!402036 res!637636) b!1407974))

(assert (= (and b!1407974 res!637637) b!1407975))

(assert (= (and b!1407975 res!637638) b!1407976))

(declare-fun m!1585791 () Bool)

(assert (=> d!402036 m!1585791))

(declare-fun m!1585793 () Bool)

(assert (=> b!1407974 m!1585793))

(declare-fun m!1585795 () Bool)

(assert (=> b!1407975 m!1585795))

(declare-fun m!1585797 () Bool)

(assert (=> b!1407976 m!1585797))

(assert (=> start!128420 d!402036))

(declare-fun d!402038 () Bool)

(assert (=> d!402038 (= (isEmpty!8737 lt!470033) (not (is-Some!2748 lt!470033)))))

(assert (=> b!1407906 d!402038))

(declare-fun d!402040 () Bool)

(assert (=> d!402040 (= (inv!18641 (tokens!1703 sep!3)) (isBalanced!1395 (c!231449 (tokens!1703 sep!3))))))

(declare-fun bs!338652 () Bool)

(assert (= bs!338652 d!402040))

(declare-fun m!1585799 () Bool)

(assert (=> bs!338652 m!1585799))

(assert (=> b!1407905 d!402040))

(declare-fun d!402042 () Bool)

(declare-fun c!231464 () Bool)

(assert (=> d!402042 (= c!231464 (is-Node!4733 (c!231449 (tokens!1703 acc!229))))))

(declare-fun e!898803 () Bool)

(assert (=> d!402042 (= (inv!18645 (c!231449 (tokens!1703 acc!229))) e!898803)))

(declare-fun b!1407977 () Bool)

(assert (=> b!1407977 (= e!898803 (inv!18653 (c!231449 (tokens!1703 acc!229))))))

(declare-fun b!1407978 () Bool)

(declare-fun e!898804 () Bool)

(assert (=> b!1407978 (= e!898803 e!898804)))

(declare-fun res!637639 () Bool)

(assert (=> b!1407978 (= res!637639 (not (is-Leaf!7173 (c!231449 (tokens!1703 acc!229)))))))

(assert (=> b!1407978 (=> res!637639 e!898804)))

(declare-fun b!1407979 () Bool)

(assert (=> b!1407979 (= e!898804 (inv!18654 (c!231449 (tokens!1703 acc!229))))))

(assert (= (and d!402042 c!231464) b!1407977))

(assert (= (and d!402042 (not c!231464)) b!1407978))

(assert (= (and b!1407978 (not res!637639)) b!1407979))

(declare-fun m!1585801 () Bool)

(assert (=> b!1407977 m!1585801))

(declare-fun m!1585803 () Bool)

(assert (=> b!1407979 m!1585803))

(assert (=> b!1407900 d!402042))

(declare-fun b!1407988 () Bool)

(declare-fun e!898810 () Bool)

(declare-fun tp!399767 () Bool)

(declare-fun tp!399769 () Bool)

(assert (=> b!1407988 (= e!898810 (and (inv!18642 (left!12247 (c!231450 objs!24))) tp!399769 (inv!18642 (right!12577 (c!231450 objs!24))) tp!399767))))

(declare-fun b!1407990 () Bool)

(declare-fun e!898809 () Bool)

(declare-fun tp!399768 () Bool)

(assert (=> b!1407990 (= e!898809 tp!399768)))

(declare-fun b!1407989 () Bool)

(declare-fun inv!18655 (IArray!9473) Bool)

(assert (=> b!1407989 (= e!898810 (and (inv!18655 (xs!7461 (c!231450 objs!24))) e!898809))))

(assert (=> b!1407899 (= tp!399745 (and (inv!18642 (c!231450 objs!24)) e!898810))))

(assert (= (and b!1407899 (is-Node!4734 (c!231450 objs!24))) b!1407988))

(assert (= b!1407989 b!1407990))

(assert (= (and b!1407899 (is-Leaf!7174 (c!231450 objs!24))) b!1407989))

(declare-fun m!1585805 () Bool)

(assert (=> b!1407988 m!1585805))

(declare-fun m!1585807 () Bool)

(assert (=> b!1407988 m!1585807))

(declare-fun m!1585809 () Bool)

(assert (=> b!1407989 m!1585809))

(assert (=> b!1407899 m!1585695))

(declare-fun e!898815 () Bool)

(declare-fun tp!399777 () Bool)

(declare-fun tp!399776 () Bool)

(declare-fun b!1407999 () Bool)

(assert (=> b!1407999 (= e!898815 (and (inv!18645 (left!12246 (c!231449 (tokens!1703 sep!3)))) tp!399777 (inv!18645 (right!12576 (c!231449 (tokens!1703 sep!3)))) tp!399776))))

(declare-fun b!1408001 () Bool)

(declare-fun e!898816 () Bool)

(declare-fun tp!399778 () Bool)

(assert (=> b!1408001 (= e!898816 tp!399778)))

(declare-fun b!1408000 () Bool)

(declare-fun inv!18656 (IArray!9471) Bool)

(assert (=> b!1408000 (= e!898815 (and (inv!18656 (xs!7460 (c!231449 (tokens!1703 sep!3)))) e!898816))))

(assert (=> b!1407904 (= tp!399744 (and (inv!18645 (c!231449 (tokens!1703 sep!3))) e!898815))))

(assert (= (and b!1407904 (is-Node!4733 (c!231449 (tokens!1703 sep!3)))) b!1407999))

(assert (= b!1408000 b!1408001))

(assert (= (and b!1407904 (is-Leaf!7173 (c!231449 (tokens!1703 sep!3)))) b!1408000))

(declare-fun m!1585811 () Bool)

(assert (=> b!1407999 m!1585811))

(declare-fun m!1585813 () Bool)

(assert (=> b!1407999 m!1585813))

(declare-fun m!1585815 () Bool)

(assert (=> b!1408000 m!1585815))

(assert (=> b!1407904 m!1585697))

(declare-fun b!1408012 () Bool)

(declare-fun b_free!34399 () Bool)

(declare-fun b_next!35103 () Bool)

(assert (=> b!1408012 (= b_free!34399 (not b_next!35103))))

(declare-fun tp!399787 () Bool)

(declare-fun b_and!94271 () Bool)

(assert (=> b!1408012 (= tp!399787 b_and!94271)))

(declare-fun b_free!34401 () Bool)

(declare-fun b_next!35105 () Bool)

(assert (=> b!1408012 (= b_free!34401 (not b_next!35105))))

(declare-fun tp!399785 () Bool)

(declare-fun b_and!94273 () Bool)

(assert (=> b!1408012 (= tp!399785 b_and!94273)))

(declare-fun e!898825 () Bool)

(assert (=> b!1408012 (= e!898825 (and tp!399787 tp!399785))))

(declare-fun b!1408011 () Bool)

(declare-fun e!898828 () Bool)

(declare-fun inv!18638 (String!17118) Bool)

(declare-fun inv!18657 (TokenValueInjection!4812) Bool)

(assert (=> b!1408011 (= e!898828 (and (inv!18638 (tag!2748 (h!19746 (rules!10949 acc!229)))) (inv!18657 (transformation!2486 (h!19746 (rules!10949 acc!229)))) e!898825))))

(declare-fun b!1408010 () Bool)

(declare-fun e!898827 () Bool)

(declare-fun tp!399786 () Bool)

(assert (=> b!1408010 (= e!898827 (and e!898828 tp!399786))))

(assert (=> b!1407898 (= tp!399742 e!898827)))

(assert (= b!1408011 b!1408012))

(assert (= b!1408010 b!1408011))

(assert (= (and b!1407898 (is-Cons!14345 (rules!10949 acc!229))) b!1408010))

(declare-fun m!1585817 () Bool)

(assert (=> b!1408011 m!1585817))

(declare-fun m!1585819 () Bool)

(assert (=> b!1408011 m!1585819))

(declare-fun b!1408015 () Bool)

(declare-fun b_free!34403 () Bool)

(declare-fun b_next!35107 () Bool)

(assert (=> b!1408015 (= b_free!34403 (not b_next!35107))))

(declare-fun tp!399790 () Bool)

(declare-fun b_and!94275 () Bool)

(assert (=> b!1408015 (= tp!399790 b_and!94275)))

(declare-fun b_free!34405 () Bool)

(declare-fun b_next!35109 () Bool)

(assert (=> b!1408015 (= b_free!34405 (not b_next!35109))))

(declare-fun tp!399788 () Bool)

(declare-fun b_and!94277 () Bool)

(assert (=> b!1408015 (= tp!399788 b_and!94277)))

(declare-fun e!898829 () Bool)

(assert (=> b!1408015 (= e!898829 (and tp!399790 tp!399788))))

(declare-fun b!1408014 () Bool)

(declare-fun e!898832 () Bool)

(assert (=> b!1408014 (= e!898832 (and (inv!18638 (tag!2748 (h!19746 (rules!10949 sep!3)))) (inv!18657 (transformation!2486 (h!19746 (rules!10949 sep!3)))) e!898829))))

(declare-fun b!1408013 () Bool)

(declare-fun e!898831 () Bool)

(declare-fun tp!399789 () Bool)

(assert (=> b!1408013 (= e!898831 (and e!898832 tp!399789))))

(assert (=> b!1407905 (= tp!399743 e!898831)))

(assert (= b!1408014 b!1408015))

(assert (= b!1408013 b!1408014))

(assert (= (and b!1407905 (is-Cons!14345 (rules!10949 sep!3))) b!1408013))

(declare-fun m!1585821 () Bool)

(assert (=> b!1408014 m!1585821))

(declare-fun m!1585823 () Bool)

(assert (=> b!1408014 m!1585823))

(declare-fun b!1408016 () Bool)

(declare-fun tp!399791 () Bool)

(declare-fun tp!399792 () Bool)

(declare-fun e!898833 () Bool)

(assert (=> b!1408016 (= e!898833 (and (inv!18645 (left!12246 (c!231449 (tokens!1703 acc!229)))) tp!399792 (inv!18645 (right!12576 (c!231449 (tokens!1703 acc!229)))) tp!399791))))

(declare-fun b!1408018 () Bool)

(declare-fun e!898834 () Bool)

(declare-fun tp!399793 () Bool)

(assert (=> b!1408018 (= e!898834 tp!399793)))

(declare-fun b!1408017 () Bool)

(assert (=> b!1408017 (= e!898833 (and (inv!18656 (xs!7460 (c!231449 (tokens!1703 acc!229)))) e!898834))))

(assert (=> b!1407900 (= tp!399741 (and (inv!18645 (c!231449 (tokens!1703 acc!229))) e!898833))))

(assert (= (and b!1407900 (is-Node!4733 (c!231449 (tokens!1703 acc!229)))) b!1408016))

(assert (= b!1408017 b!1408018))

(assert (= (and b!1407900 (is-Leaf!7173 (c!231449 (tokens!1703 acc!229)))) b!1408017))

(declare-fun m!1585825 () Bool)

(assert (=> b!1408016 m!1585825))

(declare-fun m!1585827 () Bool)

(assert (=> b!1408016 m!1585827))

(declare-fun m!1585829 () Bool)

(assert (=> b!1408017 m!1585829))

(assert (=> b!1407900 m!1585683))

(push 1)

(assert (not b!1408017))

(assert (not b!1407899))

(assert (not b_next!35105))

(assert (not d!402036))

(assert (not b!1408001))

(assert (not b!1408016))

(assert (not d!402022))

(assert b_and!94277)

(assert (not b!1407944))

(assert b_and!94273)

(assert (not b!1407976))

(assert (not b!1408010))

(assert (not b!1407900))

(assert (not b!1407999))

(assert (not b!1408013))

(assert b_and!94275)

(assert (not d!402040))

(assert (not d!402018))

(assert (not b_next!35103))

(assert b_and!94271)

(assert (not b!1407971))

(assert (not d!402014))

(assert (not d!402016))

(assert (not b!1408000))

(assert (not b!1407946))

(assert (not b!1407972))

(assert (not b!1407973))

(assert (not b!1407955))

(assert (not b!1407975))

(assert (not d!402008))

(assert (not b!1407990))

(assert (not d!402012))

(assert (not b!1407977))

(assert (not b!1407989))

(assert (not b!1407974))

(assert (not b!1407904))

(assert (not b_next!35109))

(assert (not b!1408018))

(assert (not b!1408014))

(assert (not d!402020))

(assert (not b!1407979))

(assert (not b!1407988))

(assert (not b!1408011))

(assert (not b_next!35107))

(assert (not b!1407953))

(assert (not d!402010))

(check-sat)

(pop 1)

(push 1)

(assert b_and!94275)

(assert (not b_next!35105))

(assert b_and!94277)

(assert b_and!94273)

(assert (not b_next!35109))

(assert (not b_next!35107))

(assert (not b_next!35103))

(assert b_and!94271)

(check-sat)

(pop 1)

