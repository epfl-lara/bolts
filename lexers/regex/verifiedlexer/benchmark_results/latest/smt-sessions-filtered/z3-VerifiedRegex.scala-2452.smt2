; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129736 () Bool)

(assert start!129736)

(declare-fun b!1414627 () Bool)

(declare-fun res!640685 () Bool)

(declare-fun e!903082 () Bool)

(assert (=> b!1414627 (=> (not res!640685) (not e!903082))))

(declare-datatypes ((List!14525 0))(
  ( (Nil!14459) (Cons!14459 (h!19860 (_ BitVec 16)) (t!123910 List!14525)) )
))
(declare-datatypes ((TokenValue!2603 0))(
  ( (FloatLiteralValue!5206 (text!18666 List!14525)) (TokenValueExt!2602 (__x!9023 Int)) (Broken!13015 (value!81227 List!14525)) (Object!2668) (End!2603) (Def!2603) (Underscore!2603) (Match!2603) (Else!2603) (Error!2603) (Case!2603) (If!2603) (Extends!2603) (Abstract!2603) (Class!2603) (Val!2603) (DelimiterValue!5206 (del!2663 List!14525)) (KeywordValue!2609 (value!81228 List!14525)) (CommentValue!5206 (value!81229 List!14525)) (WhitespaceValue!5206 (value!81230 List!14525)) (IndentationValue!2603 (value!81231 List!14525)) (String!17250) (Int32!2603) (Broken!13016 (value!81232 List!14525)) (Boolean!2604) (Unit!21181) (OperatorValue!2606 (op!2663 List!14525)) (IdentifierValue!5206 (value!81233 List!14525)) (IdentifierValue!5207 (value!81234 List!14525)) (WhitespaceValue!5207 (value!81235 List!14525)) (True!5206) (False!5206) (Broken!13017 (value!81236 List!14525)) (Broken!13018 (value!81237 List!14525)) (True!5207) (RightBrace!2603) (RightBracket!2603) (Colon!2603) (Null!2603) (Comma!2603) (LeftBracket!2603) (False!5207) (LeftBrace!2603) (ImaginaryLiteralValue!2603 (text!18667 List!14525)) (StringLiteralValue!7809 (value!81238 List!14525)) (EOFValue!2603 (value!81239 List!14525)) (IdentValue!2603 (value!81240 List!14525)) (DelimiterValue!5207 (value!81241 List!14525)) (DedentValue!2603 (value!81242 List!14525)) (NewLineValue!2603 (value!81243 List!14525)) (IntegerValue!7809 (value!81244 (_ BitVec 32)) (text!18668 List!14525)) (IntegerValue!7810 (value!81245 Int) (text!18669 List!14525)) (Times!2603) (Or!2603) (Equal!2603) (Minus!2603) (Broken!13019 (value!81246 List!14525)) (And!2603) (Div!2603) (LessEqual!2603) (Mod!2603) (Concat!6430) (Not!2603) (Plus!2603) (SpaceValue!2603 (value!81247 List!14525)) (IntegerValue!7811 (value!81248 Int) (text!18670 List!14525)) (StringLiteralValue!7810 (text!18671 List!14525)) (FloatLiteralValue!5207 (text!18672 List!14525)) (BytesLiteralValue!2603 (value!81249 List!14525)) (CommentValue!5207 (value!81250 List!14525)) (StringLiteralValue!7811 (value!81251 List!14525)) (ErrorTokenValue!2603 (msg!2664 List!14525)) )
))
(declare-datatypes ((Regex!3827 0))(
  ( (ElementMatch!3827 (c!232436 (_ BitVec 16))) (Concat!6431 (regOne!8166 Regex!3827) (regTwo!8166 Regex!3827)) (EmptyExpr!3827) (Star!3827 (reg!4156 Regex!3827)) (EmptyLang!3827) (Union!3827 (regOne!8167 Regex!3827) (regTwo!8167 Regex!3827)) )
))
(declare-datatypes ((String!17251 0))(
  ( (String!17252 (value!81252 String)) )
))
(declare-datatypes ((IArray!9631 0))(
  ( (IArray!9632 (innerList!4873 List!14525)) )
))
(declare-datatypes ((Conc!4813 0))(
  ( (Node!4813 (left!12355 Conc!4813) (right!12685 Conc!4813) (csize!9856 Int) (cheight!5024 Int)) (Leaf!7266 (xs!7540 IArray!9631) (csize!9857 Int)) (Empty!4813) )
))
(declare-datatypes ((BalanceConc!9566 0))(
  ( (BalanceConc!9567 (c!232437 Conc!4813)) )
))
(declare-datatypes ((TokenValueInjection!4866 0))(
  ( (TokenValueInjection!4867 (toValue!3812 Int) (toChars!3671 Int)) )
))
(declare-datatypes ((Rule!4826 0))(
  ( (Rule!4827 (regex!2513 Regex!3827) (tag!2775 String!17251) (isSeparator!2513 Bool) (transformation!2513 TokenValueInjection!4866)) )
))
(declare-datatypes ((Token!4688 0))(
  ( (Token!4689 (value!81253 TokenValue!2603) (rule!4276 Rule!4826) (size!11927 Int) (originalCharacters!3375 List!14525)) )
))
(declare-datatypes ((List!14526 0))(
  ( (Nil!14460) (Cons!14460 (h!19861 Token!4688) (t!123911 List!14526)) )
))
(declare-datatypes ((IArray!9633 0))(
  ( (IArray!9634 (innerList!4874 List!14526)) )
))
(declare-datatypes ((Conc!4814 0))(
  ( (Node!4814 (left!12356 Conc!4814) (right!12686 Conc!4814) (csize!9858 Int) (cheight!5025 Int)) (Leaf!7267 (xs!7541 IArray!9633) (csize!9859 Int)) (Empty!4814) )
))
(declare-datatypes ((List!14527 0))(
  ( (Nil!14461) (Cons!14461 (h!19862 Rule!4826) (t!123912 List!14527)) )
))
(declare-datatypes ((BalanceConc!9568 0))(
  ( (BalanceConc!9569 (c!232438 Conc!4814)) )
))
(declare-datatypes ((PrintableTokens!808 0))(
  ( (PrintableTokens!809 (rules!11058 List!14527) (tokens!1776 BalanceConc!9568)) )
))
(declare-datatypes ((List!14528 0))(
  ( (Nil!14462) (Cons!14462 (h!19863 PrintableTokens!808) (t!123913 List!14528)) )
))
(declare-datatypes ((IArray!9635 0))(
  ( (IArray!9636 (innerList!4875 List!14528)) )
))
(declare-datatypes ((Conc!4815 0))(
  ( (Node!4815 (left!12357 Conc!4815) (right!12687 Conc!4815) (csize!9860 Int) (cheight!5026 Int)) (Leaf!7268 (xs!7542 IArray!9635) (csize!9861 Int)) (Empty!4815) )
))
(declare-datatypes ((BalanceConc!9570 0))(
  ( (BalanceConc!9571 (c!232439 Conc!4815)) )
))
(declare-fun objs!24 () BalanceConc!9570)

(declare-fun isEmpty!8856 (BalanceConc!9570) Bool)

(assert (=> b!1414627 (= res!640685 (not (isEmpty!8856 objs!24)))))

(declare-fun b!1414628 () Bool)

(declare-fun e!903080 () Bool)

(declare-fun tp!401364 () Bool)

(declare-fun inv!18938 (Conc!4815) Bool)

(assert (=> b!1414628 (= e!903080 (and (inv!18938 (c!232439 objs!24)) tp!401364))))

(declare-fun b!1414629 () Bool)

(declare-fun e!903079 () Bool)

(declare-datatypes ((Option!2774 0))(
  ( (None!2773) (Some!2773 (v!21941 PrintableTokens!808)) )
))
(declare-fun lt!474682 () Option!2774)

(declare-fun usesJsonRules!0 (PrintableTokens!808) Bool)

(assert (=> b!1414629 (= e!903079 (not (usesJsonRules!0 (v!21941 lt!474682))))))

(declare-fun acc!229 () PrintableTokens!808)

(declare-fun b!1414630 () Bool)

(declare-fun e!903078 () Bool)

(declare-fun tp!401365 () Bool)

(declare-fun e!903077 () Bool)

(declare-fun inv!18939 (BalanceConc!9568) Bool)

(assert (=> b!1414630 (= e!903077 (and tp!401365 (inv!18939 (tokens!1776 acc!229)) e!903078))))

(declare-fun tp!401368 () Bool)

(declare-fun b!1414631 () Bool)

(declare-fun e!903081 () Bool)

(declare-fun sep!3 () PrintableTokens!808)

(declare-fun e!903076 () Bool)

(assert (=> b!1414631 (= e!903076 (and tp!401368 (inv!18939 (tokens!1776 sep!3)) e!903081))))

(declare-fun b!1414632 () Bool)

(declare-fun e!903083 () Bool)

(assert (=> b!1414632 (= e!903082 e!903083)))

(declare-fun res!640688 () Bool)

(assert (=> b!1414632 (=> (not res!640688) (not e!903083))))

(declare-fun lt!474681 () Option!2774)

(get-info :version)

(assert (=> b!1414632 (= res!640688 ((_ is Some!2773) lt!474681))))

(declare-fun append!432 (PrintableTokens!808 PrintableTokens!808) Option!2774)

(declare-fun head!2705 (BalanceConc!9570) PrintableTokens!808)

(assert (=> b!1414632 (= lt!474681 (append!432 (head!2705 objs!24) sep!3))))

(declare-fun res!640684 () Bool)

(assert (=> start!129736 (=> (not res!640684) (not e!903082))))

(declare-fun lambda!62499 () Int)

(declare-fun forall!3561 (BalanceConc!9570 Int) Bool)

(assert (=> start!129736 (= res!640684 (forall!3561 objs!24 lambda!62499))))

(assert (=> start!129736 e!903082))

(declare-fun inv!18940 (BalanceConc!9570) Bool)

(assert (=> start!129736 (and (inv!18940 objs!24) e!903080)))

(declare-fun inv!18941 (PrintableTokens!808) Bool)

(assert (=> start!129736 (and (inv!18941 acc!229) e!903077)))

(assert (=> start!129736 (and (inv!18941 sep!3) e!903076)))

(declare-fun b!1414633 () Bool)

(declare-fun res!640691 () Bool)

(assert (=> b!1414633 (=> (not res!640691) (not e!903082))))

(assert (=> b!1414633 (= res!640691 (usesJsonRules!0 sep!3))))

(declare-fun b!1414634 () Bool)

(declare-fun tp!401366 () Bool)

(declare-fun inv!18942 (Conc!4814) Bool)

(assert (=> b!1414634 (= e!903078 (and (inv!18942 (c!232438 (tokens!1776 acc!229))) tp!401366))))

(declare-fun b!1414635 () Bool)

(declare-fun res!640690 () Bool)

(assert (=> b!1414635 (=> (not res!640690) (not e!903079))))

(declare-fun tail!2078 (BalanceConc!9570) BalanceConc!9570)

(assert (=> b!1414635 (= res!640690 (forall!3561 (tail!2078 objs!24) lambda!62499))))

(declare-fun b!1414636 () Bool)

(assert (=> b!1414636 (= e!903083 e!903079)))

(declare-fun res!640687 () Bool)

(assert (=> b!1414636 (=> (not res!640687) (not e!903079))))

(assert (=> b!1414636 (= res!640687 ((_ is Some!2773) lt!474682))))

(assert (=> b!1414636 (= lt!474682 (append!432 acc!229 (v!21941 lt!474681)))))

(declare-fun b!1414637 () Bool)

(declare-fun res!640686 () Bool)

(assert (=> b!1414637 (=> (not res!640686) (not e!903082))))

(declare-fun size!11928 (BalanceConc!9570) Int)

(assert (=> b!1414637 (= res!640686 (not (= (size!11928 objs!24) 1)))))

(declare-fun b!1414638 () Bool)

(declare-fun tp!401367 () Bool)

(assert (=> b!1414638 (= e!903081 (and (inv!18942 (c!232438 (tokens!1776 sep!3))) tp!401367))))

(declare-fun b!1414639 () Bool)

(declare-fun res!640689 () Bool)

(assert (=> b!1414639 (=> (not res!640689) (not e!903082))))

(assert (=> b!1414639 (= res!640689 (usesJsonRules!0 acc!229))))

(assert (= (and start!129736 res!640684) b!1414639))

(assert (= (and b!1414639 res!640689) b!1414633))

(assert (= (and b!1414633 res!640691) b!1414627))

(assert (= (and b!1414627 res!640685) b!1414637))

(assert (= (and b!1414637 res!640686) b!1414632))

(assert (= (and b!1414632 res!640688) b!1414636))

(assert (= (and b!1414636 res!640687) b!1414635))

(assert (= (and b!1414635 res!640690) b!1414629))

(assert (= start!129736 b!1414628))

(assert (= b!1414630 b!1414634))

(assert (= start!129736 b!1414630))

(assert (= b!1414631 b!1414638))

(assert (= start!129736 b!1414631))

(declare-fun m!1598885 () Bool)

(assert (=> b!1414638 m!1598885))

(declare-fun m!1598887 () Bool)

(assert (=> b!1414628 m!1598887))

(declare-fun m!1598889 () Bool)

(assert (=> b!1414639 m!1598889))

(declare-fun m!1598891 () Bool)

(assert (=> b!1414630 m!1598891))

(declare-fun m!1598893 () Bool)

(assert (=> b!1414627 m!1598893))

(declare-fun m!1598895 () Bool)

(assert (=> b!1414637 m!1598895))

(declare-fun m!1598897 () Bool)

(assert (=> b!1414631 m!1598897))

(declare-fun m!1598899 () Bool)

(assert (=> b!1414633 m!1598899))

(declare-fun m!1598901 () Bool)

(assert (=> b!1414629 m!1598901))

(declare-fun m!1598903 () Bool)

(assert (=> start!129736 m!1598903))

(declare-fun m!1598905 () Bool)

(assert (=> start!129736 m!1598905))

(declare-fun m!1598907 () Bool)

(assert (=> start!129736 m!1598907))

(declare-fun m!1598909 () Bool)

(assert (=> start!129736 m!1598909))

(declare-fun m!1598911 () Bool)

(assert (=> b!1414635 m!1598911))

(assert (=> b!1414635 m!1598911))

(declare-fun m!1598913 () Bool)

(assert (=> b!1414635 m!1598913))

(declare-fun m!1598915 () Bool)

(assert (=> b!1414636 m!1598915))

(declare-fun m!1598917 () Bool)

(assert (=> b!1414634 m!1598917))

(declare-fun m!1598919 () Bool)

(assert (=> b!1414632 m!1598919))

(assert (=> b!1414632 m!1598919))

(declare-fun m!1598921 () Bool)

(assert (=> b!1414632 m!1598921))

(check-sat (not b!1414636) (not b!1414627) (not b!1414629) (not b!1414630) (not b!1414632) (not b!1414634) (not b!1414638) (not b!1414635) (not b!1414628) (not b!1414639) (not b!1414631) (not start!129736) (not b!1414637) (not b!1414633))
(check-sat)
(get-model)

(declare-fun d!404993 () Bool)

(declare-fun isBalanced!1427 (Conc!4814) Bool)

(assert (=> d!404993 (= (inv!18939 (tokens!1776 acc!229)) (isBalanced!1427 (c!232438 (tokens!1776 acc!229))))))

(declare-fun bs!339297 () Bool)

(assert (= bs!339297 d!404993))

(declare-fun m!1598923 () Bool)

(assert (=> bs!339297 m!1598923))

(assert (=> b!1414630 d!404993))

(declare-fun d!404995 () Bool)

(assert (=> d!404995 (= (inv!18939 (tokens!1776 sep!3)) (isBalanced!1427 (c!232438 (tokens!1776 sep!3))))))

(declare-fun bs!339298 () Bool)

(assert (= bs!339298 d!404995))

(declare-fun m!1598925 () Bool)

(assert (=> bs!339298 m!1598925))

(assert (=> b!1414631 d!404995))

(declare-fun c!232466 () Bool)

(declare-fun bm!95227 () Bool)

(declare-fun call!95253 () BalanceConc!9566)

(declare-fun c!232463 () Bool)

(declare-fun print!965 (PrintableTokens!808) BalanceConc!9566)

(assert (=> bm!95227 (= call!95253 (print!965 (ite (or c!232466 c!232463) sep!3 (head!2705 objs!24))))))

(declare-fun bm!95228 () Bool)

(declare-fun call!95267 () BalanceConc!9566)

(declare-datatypes ((LexerInterface!2197 0))(
  ( (LexerInterfaceExt!2194 (__x!9025 Int)) (Lexer!2195) )
))
(declare-fun print!966 (LexerInterface!2197 BalanceConc!9568) BalanceConc!9566)

(assert (=> bm!95228 (= call!95267 (print!966 Lexer!2195 (tokens!1776 sep!3)))))

(declare-fun call!95252 () BalanceConc!9566)

(declare-fun bm!95229 () Bool)

(assert (=> bm!95229 (= call!95252 (print!965 (ite (or c!232466 c!232463) (head!2705 objs!24) sep!3)))))

(declare-fun bm!95230 () Bool)

(declare-fun call!95260 () BalanceConc!9566)

(assert (=> bm!95230 (= call!95260 call!95253)))

(declare-fun b!1414702 () Bool)

(declare-fun e!903120 () List!14525)

(declare-fun call!95233 () List!14525)

(assert (=> b!1414702 (= e!903120 call!95233)))

(declare-fun bm!95231 () Bool)

(declare-fun call!95242 () List!14526)

(declare-fun list!5687 (BalanceConc!9568) List!14526)

(assert (=> bm!95231 (= call!95242 (list!5687 (tokens!1776 sep!3)))))

(declare-fun b!1414703 () Bool)

(declare-fun e!903121 () List!14526)

(declare-fun call!95266 () List!14526)

(assert (=> b!1414703 (= e!903121 call!95266)))

(declare-fun b!1414704 () Bool)

(declare-fun res!640721 () Bool)

(declare-fun e!903125 () Bool)

(assert (=> b!1414704 (=> (not res!640721) (not e!903125))))

(declare-fun lt!474825 () Option!2774)

(declare-fun get!4448 (Option!2774) PrintableTokens!808)

(declare-fun ++!3781 (List!14526 List!14526) List!14526)

(assert (=> b!1414704 (= res!640721 (= (list!5687 (tokens!1776 (get!4448 lt!474825))) (++!3781 (list!5687 (tokens!1776 (head!2705 objs!24))) (list!5687 (tokens!1776 sep!3)))))))

(declare-fun bm!95232 () Bool)

(declare-fun call!95254 () List!14526)

(declare-fun call!95258 () List!14526)

(assert (=> bm!95232 (= call!95254 call!95258)))

(declare-fun b!1414705 () Bool)

(declare-fun lt!474838 () List!14526)

(declare-fun lt!474874 () List!14526)

(assert (=> b!1414705 (= e!903121 (++!3781 lt!474838 lt!474874))))

(declare-fun call!95244 () List!14525)

(declare-fun lt!474850 () LexerInterface!2197)

(declare-fun lt!474859 () LexerInterface!2197)

(declare-fun lt!474831 () List!14526)

(declare-fun bm!95233 () Bool)

(declare-fun printList!655 (LexerInterface!2197 List!14526) List!14525)

(assert (=> bm!95233 (= call!95244 (printList!655 (ite c!232466 Lexer!2195 (ite c!232463 lt!474859 lt!474850)) (ite c!232466 call!95242 (ite c!232463 lt!474831 lt!474838))))))

(declare-fun lt!474845 () LexerInterface!2197)

(declare-fun call!95255 () List!14525)

(declare-fun bm!95234 () Bool)

(declare-fun lt!474826 () LexerInterface!2197)

(declare-fun lt!474851 () List!14526)

(declare-fun e!903117 () List!14526)

(assert (=> bm!95234 (= call!95255 (printList!655 (ite c!232466 lt!474826 (ite c!232463 lt!474859 lt!474845)) (ite c!232466 lt!474851 e!903117)))))

(declare-fun d!404997 () Bool)

(declare-fun e!903119 () Bool)

(assert (=> d!404997 e!903119))

(declare-fun res!640722 () Bool)

(assert (=> d!404997 (=> res!640722 e!903119)))

(declare-fun isEmpty!8860 (Option!2774) Bool)

(assert (=> d!404997 (= res!640722 (isEmpty!8860 lt!474825))))

(declare-fun e!903122 () Option!2774)

(assert (=> d!404997 (= lt!474825 e!903122)))

(declare-fun isEmpty!8861 (BalanceConc!9568) Bool)

(assert (=> d!404997 (= c!232466 (isEmpty!8861 (tokens!1776 sep!3)))))

(declare-datatypes ((Unit!21197 0))(
  ( (Unit!21198) )
))
(declare-fun lt!474881 () Unit!21197)

(declare-fun lemmaInvariant!227 (PrintableTokens!808) Unit!21197)

(assert (=> d!404997 (= lt!474881 (lemmaInvariant!227 (head!2705 objs!24)))))

(declare-fun lt!474867 () Unit!21197)

(assert (=> d!404997 (= lt!474867 (lemmaInvariant!227 sep!3))))

(assert (=> d!404997 (= (rules!11058 (head!2705 objs!24)) (rules!11058 sep!3))))

(assert (=> d!404997 (= (append!432 (head!2705 objs!24) sep!3) lt!474825)))

(declare-fun bm!95235 () Bool)

(assert (=> bm!95235 (= call!95258 (list!5687 (tokens!1776 (head!2705 objs!24))))))

(declare-fun bm!95236 () Bool)

(declare-fun call!95262 () BalanceConc!9566)

(assert (=> bm!95236 (= call!95262 call!95252)))

(declare-fun b!1414706 () Bool)

(declare-fun call!95249 () List!14526)

(assert (=> b!1414706 (= e!903117 call!95249)))

(declare-fun b!1414707 () Bool)

(declare-fun list!5688 (BalanceConc!9566) List!14525)

(declare-fun ++!3782 (List!14525 List!14525) List!14525)

(assert (=> b!1414707 (= e!903125 (= (list!5688 (print!965 (get!4448 lt!474825))) (++!3782 (list!5688 (print!965 (head!2705 objs!24))) (list!5688 (print!965 sep!3)))))))

(declare-fun bm!95237 () Bool)

(declare-fun call!95239 () Unit!21197)

(declare-fun theoremInvertabilityWhenTokenListSeparable!25 (LexerInterface!2197 List!14527 List!14526) Unit!21197)

(assert (=> bm!95237 (= call!95239 (theoremInvertabilityWhenTokenListSeparable!25 Lexer!2195 (ite c!232466 (rules!11058 sep!3) (rules!11058 (head!2705 objs!24))) (ite c!232466 call!95242 call!95254)))))

(declare-fun b!1414708 () Bool)

(declare-fun e!903126 () Option!2774)

(assert (=> b!1414708 (= e!903126 None!2773)))

(declare-fun b!1414709 () Bool)

(declare-fun call!95235 () List!14525)

(assert (=> b!1414709 (= e!903120 call!95235)))

(declare-fun bm!95238 () Bool)

(declare-fun call!95232 () List!14525)

(declare-fun call!95265 () List!14525)

(assert (=> bm!95238 (= call!95232 call!95265)))

(declare-fun bm!95239 () Bool)

(declare-fun call!95250 () BalanceConc!9566)

(assert (=> bm!95239 (= call!95250 call!95267)))

(declare-fun bm!95240 () Bool)

(declare-fun call!95243 () List!14525)

(assert (=> bm!95240 (= call!95235 call!95243)))

(declare-fun call!95269 () BalanceConc!9566)

(declare-fun bm!95241 () Bool)

(declare-fun lt!474876 () List!14526)

(declare-fun lt!474819 () List!14526)

(declare-fun charsOf!1472 (Token!4688) BalanceConc!9566)

(assert (=> bm!95241 (= call!95269 (charsOf!1472 (ite c!232466 (h!19861 lt!474876) (h!19861 lt!474819))))))

(declare-fun bm!95242 () Bool)

(declare-fun call!95234 () Unit!21197)

(assert (=> bm!95242 (= call!95234 call!95239)))

(declare-fun bm!95243 () Bool)

(assert (=> bm!95243 (= call!95266 call!95242)))

(declare-fun b!1414710 () Bool)

(declare-fun e!903118 () List!14525)

(assert (=> b!1414710 (= e!903118 Nil!14459)))

(declare-fun b!1414711 () Bool)

(declare-fun e!903123 () List!14525)

(assert (=> b!1414711 (= e!903123 Nil!14459)))

(declare-fun bm!95244 () Bool)

(declare-fun call!95268 () BalanceConc!9566)

(declare-fun call!95236 () BalanceConc!9566)

(assert (=> bm!95244 (= call!95268 call!95236)))

(declare-fun bm!95245 () Bool)

(declare-fun call!95238 () List!14525)

(declare-fun call!95241 () List!14525)

(declare-fun call!95237 () List!14525)

(assert (=> bm!95245 (= call!95241 (++!3782 (ite c!232466 call!95255 (ite c!232463 call!95232 call!95237)) (ite c!232466 call!95243 (ite c!232463 call!95237 call!95238))))))

(declare-fun b!1414712 () Bool)

(assert (=> b!1414712 (= e!903122 (Some!2773 (head!2705 objs!24)))))

(assert (=> b!1414712 (= lt!474826 Lexer!2195)))

(assert (=> b!1414712 (= lt!474851 call!95258)))

(declare-fun lt!474833 () List!14526)

(assert (=> b!1414712 (= lt!474833 Nil!14460)))

(declare-fun lt!474836 () Unit!21197)

(declare-fun call!95251 () Unit!21197)

(assert (=> b!1414712 (= lt!474836 call!95251)))

(assert (=> b!1414712 (= call!95265 call!95241)))

(declare-fun lt!474830 () Unit!21197)

(assert (=> b!1414712 (= lt!474830 lt!474836)))

(declare-fun call!95270 () List!14525)

(assert (=> b!1414712 (= call!95270 Nil!14459)))

(declare-fun lt!474846 () Unit!21197)

(declare-fun Unit!21204 () Unit!21197)

(assert (=> b!1414712 (= lt!474846 Unit!21204)))

(declare-fun lt!474868 () Unit!21197)

(declare-fun call!95245 () Unit!21197)

(assert (=> b!1414712 (= lt!474868 call!95245)))

(assert (=> b!1414712 (= call!95252 call!95236)))

(declare-fun lt!474862 () Unit!21197)

(declare-fun Unit!21205 () Unit!21197)

(assert (=> b!1414712 (= lt!474862 Unit!21205)))

(declare-fun lt!474824 () Unit!21197)

(assert (=> b!1414712 (= lt!474824 call!95239)))

(assert (=> b!1414712 (= call!95253 call!95267)))

(declare-fun lt!474837 () Unit!21197)

(declare-fun Unit!21206 () Unit!21197)

(assert (=> b!1414712 (= lt!474837 Unit!21206)))

(declare-fun call!95247 () BalanceConc!9566)

(assert (=> b!1414712 (= call!95267 call!95247)))

(declare-fun lt!474834 () Unit!21197)

(declare-fun Unit!21207 () Unit!21197)

(assert (=> b!1414712 (= lt!474834 Unit!21207)))

(assert (=> b!1414712 (= lt!474876 call!95242)))

(declare-fun c!232469 () Bool)

(assert (=> b!1414712 (= c!232469 ((_ is Cons!14460) lt!474876))))

(assert (=> b!1414712 (= call!95244 e!903118)))

(declare-fun lt!474823 () Unit!21197)

(declare-fun Unit!21208 () Unit!21197)

(assert (=> b!1414712 (= lt!474823 Unit!21208)))

(declare-fun bm!95246 () Bool)

(declare-fun call!95263 () Unit!21197)

(assert (=> bm!95246 (= call!95263 call!95245)))

(declare-fun bm!95247 () Bool)

(assert (=> bm!95247 (= call!95236 (print!966 Lexer!2195 (tokens!1776 (head!2705 objs!24))))))

(declare-fun call!95256 () List!14525)

(declare-fun call!95261 () List!14525)

(declare-fun bm!95248 () Bool)

(assert (=> bm!95248 (= call!95256 (++!3782 (ite c!232466 call!95233 e!903120) (ite c!232466 call!95261 (ite c!232463 call!95238 call!95232))))))

(declare-fun b!1414713 () Bool)

(assert (=> b!1414713 (= e!903119 e!903125)))

(declare-fun res!640720 () Bool)

(assert (=> b!1414713 (=> (not res!640720) (not e!903125))))

(assert (=> b!1414713 (= res!640720 (= (rules!11058 (get!4448 lt!474825)) (rules!11058 (head!2705 objs!24))))))

(declare-fun b!1414714 () Bool)

(declare-fun call!95246 () List!14526)

(assert (=> b!1414714 (= e!903117 call!95246)))

(declare-fun b!1414715 () Bool)

(declare-fun call!95248 () List!14525)

(assert (=> b!1414715 (= e!903123 call!95248)))

(declare-fun bm!95249 () Bool)

(declare-fun c!232467 () Bool)

(assert (=> bm!95249 (= c!232467 c!232463)))

(declare-fun call!95240 () List!14525)

(assert (=> bm!95249 (= call!95240 call!95270)))

(declare-fun b!1414716 () Bool)

(declare-fun lt!474848 () Unit!21197)

(declare-fun Unit!21209 () Unit!21197)

(assert (=> b!1414716 (= lt!474848 Unit!21209)))

(assert (=> b!1414716 (= call!95240 e!903123)))

(declare-fun c!232462 () Bool)

(assert (=> b!1414716 (= c!232462 ((_ is Cons!14460) lt!474819))))

(assert (=> b!1414716 (= lt!474819 call!95266)))

(declare-fun lt!474844 () Unit!21197)

(declare-fun Unit!21210 () Unit!21197)

(assert (=> b!1414716 (= lt!474844 Unit!21210)))

(assert (=> b!1414716 (= call!95250 call!95247)))

(declare-fun lt!474828 () Unit!21197)

(declare-fun Unit!21211 () Unit!21197)

(assert (=> b!1414716 (= lt!474828 Unit!21211)))

(assert (=> b!1414716 (= call!95260 call!95250)))

(declare-fun lt!474861 () Unit!21197)

(assert (=> b!1414716 (= lt!474861 call!95263)))

(declare-fun lt!474879 () Unit!21197)

(declare-fun Unit!21212 () Unit!21197)

(assert (=> b!1414716 (= lt!474879 Unit!21212)))

(assert (=> b!1414716 (= call!95262 call!95268)))

(declare-fun lt!474856 () Unit!21197)

(assert (=> b!1414716 (= lt!474856 call!95234)))

(declare-fun lt!474875 () Unit!21197)

(declare-fun Unit!21213 () Unit!21197)

(assert (=> b!1414716 (= lt!474875 Unit!21213)))

(assert (=> b!1414716 (= call!95235 Nil!14459)))

(declare-fun lt!474873 () Unit!21197)

(declare-fun lt!474835 () Unit!21197)

(assert (=> b!1414716 (= lt!474873 lt!474835)))

(declare-fun call!95259 () List!14525)

(declare-fun call!95264 () List!14525)

(assert (=> b!1414716 (= call!95259 call!95264)))

(declare-fun call!95257 () Unit!21197)

(assert (=> b!1414716 (= lt!474835 call!95257)))

(assert (=> b!1414716 (= lt!474831 call!95266)))

(declare-fun lt!474870 () List!14526)

(assert (=> b!1414716 (= lt!474870 Nil!14460)))

(assert (=> b!1414716 (= lt!474859 Lexer!2195)))

(declare-fun e!903124 () Option!2774)

(assert (=> b!1414716 (= e!903124 (Some!2773 sep!3))))

(declare-fun bm!95250 () Bool)

(declare-fun c!232464 () Bool)

(assert (=> bm!95250 (= c!232464 c!232463)))

(assert (=> bm!95250 (= call!95248 call!95256)))

(declare-fun bm!95251 () Bool)

(assert (=> bm!95251 (= call!95264 call!95241)))

(declare-fun bm!95252 () Bool)

(assert (=> bm!95252 (= call!95237 call!95244)))

(declare-fun bm!95253 () Bool)

(assert (=> bm!95253 (= call!95245 (theoremInvertabilityWhenTokenListSeparable!25 Lexer!2195 (ite c!232466 (rules!11058 (head!2705 objs!24)) (rules!11058 sep!3)) (ite c!232466 call!95258 call!95266)))))

(declare-fun bm!95254 () Bool)

(assert (=> bm!95254 (= call!95270 (printList!655 (ite (or c!232466 c!232463) Lexer!2195 lt!474850) (ite c!232466 Nil!14460 e!903121)))))

(declare-fun b!1414717 () Bool)

(assert (=> b!1414717 (= e!903122 e!903124)))

(assert (=> b!1414717 (= c!232463 (isEmpty!8861 (tokens!1776 (head!2705 objs!24))))))

(declare-fun bm!95255 () Bool)

(declare-fun printTailRec!637 (LexerInterface!2197 BalanceConc!9568 Int BalanceConc!9566) BalanceConc!9566)

(assert (=> bm!95255 (= call!95247 (printTailRec!637 Lexer!2195 (tokens!1776 sep!3) 0 (BalanceConc!9567 Empty!4813)))))

(declare-fun b!1414718 () Bool)

(assert (=> b!1414718 (= e!903118 call!95256)))

(declare-fun bm!95256 () Bool)

(assert (=> bm!95256 (= call!95233 (list!5688 call!95269))))

(declare-fun lt!474860 () List!14526)

(declare-fun lt!474818 () List!14526)

(declare-fun bm!95257 () Bool)

(assert (=> bm!95257 (= call!95249 (++!3781 (ite c!232463 lt!474870 lt!474818) (ite c!232463 lt!474831 lt!474860)))))

(declare-fun bm!95258 () Bool)

(assert (=> bm!95258 (= call!95261 (printList!655 (ite (or c!232466 c!232463) Lexer!2195 lt!474850) (ite c!232466 (t!123911 lt!474876) (ite c!232463 (t!123911 lt!474819) lt!474874))))))

(declare-fun lt!474840 () List!14526)

(declare-fun bm!95259 () Bool)

(assert (=> bm!95259 (= call!95265 (printList!655 (ite c!232466 lt!474826 (ite c!232463 lt!474859 lt!474845)) (ite c!232466 call!95246 (ite c!232463 lt!474870 lt!474840))))))

(declare-fun lt!474865 () List!14526)

(declare-fun bm!95260 () Bool)

(assert (=> bm!95260 (= call!95246 (++!3781 (ite c!232466 lt!474851 lt!474865) (ite c!232466 lt!474833 lt!474840)))))

(declare-fun bm!95261 () Bool)

(declare-fun c!232468 () Bool)

(assert (=> bm!95261 (= c!232468 c!232463)))

(assert (=> bm!95261 (= call!95259 call!95255)))

(declare-fun bm!95262 () Bool)

(assert (=> bm!95262 (= call!95257 call!95251)))

(declare-fun bm!95263 () Bool)

(assert (=> bm!95263 (= call!95243 (printList!655 (ite c!232466 lt!474826 (ite c!232463 Lexer!2195 lt!474845)) (ite c!232466 lt!474833 (ite c!232463 Nil!14460 lt!474865))))))

(declare-fun bm!95264 () Bool)

(declare-fun lemmaPrintConcatSameAsConcatPrint!20 (LexerInterface!2197 List!14526 List!14526) Unit!21197)

(assert (=> bm!95264 (= call!95251 (lemmaPrintConcatSameAsConcatPrint!20 (ite c!232466 lt!474826 (ite c!232463 lt!474859 lt!474850)) (ite c!232466 lt!474851 (ite c!232463 lt!474870 lt!474838)) (ite c!232466 lt!474833 (ite c!232463 lt!474831 lt!474874))))))

(declare-fun bm!95265 () Bool)

(assert (=> bm!95265 (= call!95238 call!95261)))

(declare-fun b!1414719 () Bool)

(declare-fun ++!3783 (BalanceConc!9568 BalanceConc!9568) BalanceConc!9568)

(assert (=> b!1414719 (= e!903126 (Some!2773 (PrintableTokens!809 (rules!11058 (head!2705 objs!24)) (++!3783 (tokens!1776 (head!2705 objs!24)) (tokens!1776 sep!3)))))))

(declare-fun lt!474821 () LexerInterface!2197)

(assert (=> b!1414719 (= lt!474821 Lexer!2195)))

(assert (=> b!1414719 (= lt!474818 call!95254)))

(assert (=> b!1414719 (= lt!474860 call!95266)))

(declare-fun lt!474829 () Unit!21197)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!20 (LexerInterface!2197 List!14526 List!14526 List!14527) Unit!21197)

(assert (=> b!1414719 (= lt!474829 (tokensListTwoByTwoPredicateConcatSeparableTokensList!20 lt!474821 lt!474818 lt!474860 (rules!11058 (head!2705 objs!24))))))

(declare-fun lt!474863 () Unit!21197)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!20 (LexerInterface!2197 List!14527 List!14526 List!14526) Unit!21197)

(assert (=> b!1414719 (= lt!474863 (lemmaRulesProduceEachTokenIndividuallyConcat!20 lt!474821 (rules!11058 (head!2705 objs!24)) lt!474818 lt!474860))))

(declare-fun rulesProduceEachTokenIndividuallyList!680 (LexerInterface!2197 List!14527 List!14526) Bool)

(assert (=> b!1414719 (rulesProduceEachTokenIndividuallyList!680 lt!474821 (rules!11058 (head!2705 objs!24)) call!95249)))

(declare-fun lt!474841 () Unit!21197)

(assert (=> b!1414719 (= lt!474841 lt!474863)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!201 (LexerInterface!2197 List!14526 List!14527) Bool)

(assert (=> b!1414719 (tokensListTwoByTwoPredicateSeparableList!201 lt!474821 call!95249 (rules!11058 (head!2705 objs!24)))))

(declare-fun lt!474847 () Unit!21197)

(assert (=> b!1414719 (= lt!474847 lt!474829)))

(assert (=> b!1414719 (= lt!474850 Lexer!2195)))

(assert (=> b!1414719 (= lt!474838 call!95254)))

(assert (=> b!1414719 (= lt!474874 call!95266)))

(declare-fun lt!474877 () Unit!21197)

(assert (=> b!1414719 (= lt!474877 call!95257)))

(assert (=> b!1414719 (= call!95240 call!95264)))

(declare-fun lt!474843 () Unit!21197)

(assert (=> b!1414719 (= lt!474843 lt!474877)))

(declare-fun lt!474854 () Unit!21197)

(assert (=> b!1414719 (= lt!474854 call!95234)))

(assert (=> b!1414719 (= call!95260 call!95268)))

(declare-fun lt!474869 () Unit!21197)

(declare-fun Unit!21214 () Unit!21197)

(assert (=> b!1414719 (= lt!474869 Unit!21214)))

(declare-fun lt!474822 () Unit!21197)

(assert (=> b!1414719 (= lt!474822 call!95263)))

(assert (=> b!1414719 (= call!95262 call!95250)))

(declare-fun lt!474878 () Unit!21197)

(declare-fun Unit!21215 () Unit!21197)

(assert (=> b!1414719 (= lt!474878 Unit!21215)))

(declare-fun lt!474852 () PrintableTokens!808)

(assert (=> b!1414719 (= lt!474852 (PrintableTokens!809 (rules!11058 (head!2705 objs!24)) (++!3783 (tokens!1776 (head!2705 objs!24)) (tokens!1776 sep!3))))))

(declare-fun lt!474871 () BalanceConc!9568)

(assert (=> b!1414719 (= lt!474871 (++!3783 (tokens!1776 (head!2705 objs!24)) (tokens!1776 sep!3)))))

(declare-fun lt!474880 () Unit!21197)

(assert (=> b!1414719 (= lt!474880 (theoremInvertabilityWhenTokenListSeparable!25 Lexer!2195 (rules!11058 (head!2705 objs!24)) (list!5687 (++!3783 (tokens!1776 (head!2705 objs!24)) (tokens!1776 sep!3)))))))

(assert (=> b!1414719 (= (print!965 (PrintableTokens!809 (rules!11058 (head!2705 objs!24)) (++!3783 (tokens!1776 (head!2705 objs!24)) (tokens!1776 sep!3)))) (print!966 Lexer!2195 (++!3783 (tokens!1776 (head!2705 objs!24)) (tokens!1776 sep!3))))))

(declare-fun lt!474842 () Unit!21197)

(declare-fun Unit!21216 () Unit!21197)

(assert (=> b!1414719 (= lt!474842 Unit!21216)))

(assert (=> b!1414719 (= lt!474845 Lexer!2195)))

(assert (=> b!1414719 (= lt!474865 call!95254)))

(assert (=> b!1414719 (= lt!474840 call!95266)))

(declare-fun lt!474827 () Unit!21197)

(assert (=> b!1414719 (= lt!474827 (lemmaPrintConcatSameAsConcatPrint!20 lt!474845 lt!474865 lt!474840))))

(assert (=> b!1414719 (= call!95259 call!95248)))

(declare-fun lt!474857 () Unit!21197)

(assert (=> b!1414719 (= lt!474857 lt!474827)))

(declare-fun b!1414720 () Bool)

(declare-fun c!232465 () Bool)

(declare-fun separableTokensPredicate!478 (LexerInterface!2197 Token!4688 Token!4688 List!14527) Bool)

(declare-fun last!71 (BalanceConc!9568) Token!4688)

(declare-fun head!2707 (BalanceConc!9568) Token!4688)

(assert (=> b!1414720 (= c!232465 (separableTokensPredicate!478 Lexer!2195 (last!71 (tokens!1776 (head!2705 objs!24))) (head!2707 (tokens!1776 sep!3)) (rules!11058 (head!2705 objs!24))))))

(declare-fun lt!474832 () Unit!21197)

(declare-fun lt!474820 () Unit!21197)

(assert (=> b!1414720 (= lt!474832 lt!474820)))

(declare-fun lt!474866 () LexerInterface!2197)

(declare-fun lt!474864 () Token!4688)

(declare-fun rulesProduceIndividualToken!1164 (LexerInterface!2197 List!14527 Token!4688) Bool)

(assert (=> b!1414720 (rulesProduceIndividualToken!1164 lt!474866 (rules!11058 (head!2705 objs!24)) lt!474864)))

(declare-fun lt!474849 () List!14526)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!349 (LexerInterface!2197 List!14527 List!14526 Token!4688) Unit!21197)

(assert (=> b!1414720 (= lt!474820 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!349 lt!474866 (rules!11058 (head!2705 objs!24)) lt!474849 lt!474864))))

(assert (=> b!1414720 (= lt!474864 (head!2707 (tokens!1776 sep!3)))))

(assert (=> b!1414720 (= lt!474849 call!95266)))

(assert (=> b!1414720 (= lt!474866 Lexer!2195)))

(declare-fun lt!474858 () Unit!21197)

(declare-fun lt!474872 () Unit!21197)

(assert (=> b!1414720 (= lt!474858 lt!474872)))

(declare-fun lt!474853 () LexerInterface!2197)

(declare-fun lt!474855 () Token!4688)

(assert (=> b!1414720 (rulesProduceIndividualToken!1164 lt!474853 (rules!11058 (head!2705 objs!24)) lt!474855)))

(declare-fun lt!474839 () List!14526)

(assert (=> b!1414720 (= lt!474872 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!349 lt!474853 (rules!11058 (head!2705 objs!24)) lt!474839 lt!474855))))

(assert (=> b!1414720 (= lt!474855 (last!71 (tokens!1776 (head!2705 objs!24))))))

(assert (=> b!1414720 (= lt!474839 call!95254)))

(assert (=> b!1414720 (= lt!474853 Lexer!2195)))

(assert (=> b!1414720 (= e!903124 e!903126)))

(assert (= (and d!404997 c!232466) b!1414712))

(assert (= (and d!404997 (not c!232466)) b!1414717))

(assert (= (and b!1414712 c!232469) b!1414718))

(assert (= (and b!1414712 (not c!232469)) b!1414710))

(assert (= (and b!1414717 c!232463) b!1414716))

(assert (= (and b!1414717 (not c!232463)) b!1414720))

(assert (= (and b!1414716 c!232462) b!1414715))

(assert (= (and b!1414716 (not c!232462)) b!1414711))

(assert (= (and b!1414720 c!232465) b!1414719))

(assert (= (and b!1414720 (not c!232465)) b!1414708))

(assert (= (or b!1414716 b!1414719) bm!95238))

(assert (= (or b!1414716 b!1414719) bm!95257))

(assert (= (or b!1414716 b!1414719) bm!95262))

(assert (= (or b!1414716 b!1414719) bm!95252))

(assert (= (or b!1414716 b!1414719) bm!95240))

(assert (= (or b!1414716 b!1414720 b!1414719) bm!95243))

(assert (= (or b!1414715 b!1414719) bm!95265))

(assert (= (or b!1414716 b!1414720 b!1414719) bm!95232))

(assert (= (or b!1414716 b!1414719) bm!95230))

(assert (= (or b!1414716 b!1414719) bm!95244))

(assert (= (or b!1414716 b!1414719) bm!95236))

(assert (= (or b!1414716 b!1414719) bm!95239))

(assert (= (or b!1414716 b!1414719) bm!95242))

(assert (= (or b!1414716 b!1414719) bm!95249))

(assert (= (and bm!95249 c!232467) b!1414703))

(assert (= (and bm!95249 (not c!232467)) b!1414705))

(assert (= (or b!1414716 b!1414719) bm!95261))

(assert (= (and bm!95261 c!232468) b!1414706))

(assert (= (and bm!95261 (not c!232468)) b!1414714))

(assert (= (or b!1414716 b!1414719) bm!95246))

(assert (= (or b!1414716 b!1414719) bm!95251))

(assert (= (or b!1414715 b!1414719) bm!95250))

(assert (= (and bm!95250 c!232464) b!1414702))

(assert (= (and bm!95250 (not c!232464)) b!1414709))

(assert (= (or b!1414718 bm!95265) bm!95258))

(assert (= (or b!1414712 bm!95262) bm!95264))

(assert (= (or b!1414712 bm!95230) bm!95227))

(assert (= (or b!1414712 bm!95249) bm!95254))

(assert (= (or b!1414718 b!1414702) bm!95241))

(assert (= (or b!1414712 bm!95244) bm!95247))

(assert (= (or b!1414712 b!1414714) bm!95260))

(assert (= (or b!1414712 bm!95261) bm!95234))

(assert (= (or b!1414712 bm!95239) bm!95228))

(assert (= (or b!1414712 bm!95240) bm!95263))

(assert (= (or b!1414712 bm!95236) bm!95229))

(assert (= (or b!1414712 bm!95243) bm!95231))

(assert (= (or b!1414712 bm!95232) bm!95235))

(assert (= (or b!1414712 b!1414716) bm!95255))

(assert (= (or b!1414712 bm!95242) bm!95237))

(assert (= (or b!1414712 bm!95238) bm!95259))

(assert (= (or b!1414712 bm!95252) bm!95233))

(assert (= (or b!1414712 bm!95246) bm!95253))

(assert (= (or b!1414712 bm!95251) bm!95245))

(assert (= (or b!1414718 b!1414702) bm!95256))

(assert (= (or b!1414718 bm!95250) bm!95248))

(assert (= (and d!404997 (not res!640722)) b!1414713))

(assert (= (and b!1414713 res!640720) b!1414704))

(assert (= (and b!1414704 res!640721) b!1414707))

(declare-fun m!1598973 () Bool)

(assert (=> bm!95256 m!1598973))

(declare-fun m!1598975 () Bool)

(assert (=> bm!95241 m!1598975))

(declare-fun m!1598977 () Bool)

(assert (=> bm!95245 m!1598977))

(declare-fun m!1598979 () Bool)

(assert (=> bm!95263 m!1598979))

(declare-fun m!1598981 () Bool)

(assert (=> b!1414707 m!1598981))

(declare-fun m!1598983 () Bool)

(assert (=> b!1414707 m!1598983))

(declare-fun m!1598985 () Bool)

(assert (=> b!1414707 m!1598985))

(assert (=> b!1414707 m!1598983))

(declare-fun m!1598987 () Bool)

(assert (=> b!1414707 m!1598987))

(declare-fun m!1598989 () Bool)

(assert (=> b!1414707 m!1598989))

(declare-fun m!1598991 () Bool)

(assert (=> b!1414707 m!1598991))

(assert (=> b!1414707 m!1598985))

(assert (=> b!1414707 m!1598989))

(declare-fun m!1598993 () Bool)

(assert (=> b!1414707 m!1598993))

(assert (=> b!1414707 m!1598993))

(declare-fun m!1598995 () Bool)

(assert (=> b!1414707 m!1598995))

(assert (=> b!1414707 m!1598919))

(assert (=> b!1414707 m!1598991))

(assert (=> b!1414707 m!1598981))

(declare-fun m!1598997 () Bool)

(assert (=> bm!95248 m!1598997))

(declare-fun m!1598999 () Bool)

(assert (=> b!1414719 m!1598999))

(declare-fun m!1599001 () Bool)

(assert (=> b!1414719 m!1599001))

(assert (=> b!1414719 m!1598999))

(assert (=> b!1414719 m!1599001))

(declare-fun m!1599003 () Bool)

(assert (=> b!1414719 m!1599003))

(declare-fun m!1599005 () Bool)

(assert (=> b!1414719 m!1599005))

(declare-fun m!1599007 () Bool)

(assert (=> b!1414719 m!1599007))

(declare-fun m!1599009 () Bool)

(assert (=> b!1414719 m!1599009))

(assert (=> b!1414719 m!1598999))

(declare-fun m!1599011 () Bool)

(assert (=> b!1414719 m!1599011))

(declare-fun m!1599013 () Bool)

(assert (=> b!1414719 m!1599013))

(declare-fun m!1599015 () Bool)

(assert (=> b!1414719 m!1599015))

(declare-fun m!1599017 () Bool)

(assert (=> b!1414719 m!1599017))

(declare-fun m!1599019 () Bool)

(assert (=> b!1414705 m!1599019))

(declare-fun m!1599021 () Bool)

(assert (=> bm!95259 m!1599021))

(declare-fun m!1599023 () Bool)

(assert (=> bm!95227 m!1599023))

(declare-fun m!1599025 () Bool)

(assert (=> bm!95231 m!1599025))

(declare-fun m!1599027 () Bool)

(assert (=> bm!95237 m!1599027))

(declare-fun m!1599029 () Bool)

(assert (=> bm!95260 m!1599029))

(declare-fun m!1599031 () Bool)

(assert (=> b!1414720 m!1599031))

(declare-fun m!1599033 () Bool)

(assert (=> b!1414720 m!1599033))

(declare-fun m!1599035 () Bool)

(assert (=> b!1414720 m!1599035))

(declare-fun m!1599037 () Bool)

(assert (=> b!1414720 m!1599037))

(assert (=> b!1414720 m!1599035))

(assert (=> b!1414720 m!1599031))

(declare-fun m!1599039 () Bool)

(assert (=> b!1414720 m!1599039))

(declare-fun m!1599041 () Bool)

(assert (=> b!1414720 m!1599041))

(declare-fun m!1599043 () Bool)

(assert (=> b!1414720 m!1599043))

(declare-fun m!1599045 () Bool)

(assert (=> b!1414704 m!1599045))

(assert (=> b!1414704 m!1599025))

(declare-fun m!1599047 () Bool)

(assert (=> b!1414704 m!1599047))

(assert (=> b!1414704 m!1598989))

(assert (=> b!1414704 m!1599045))

(assert (=> b!1414704 m!1599025))

(declare-fun m!1599049 () Bool)

(assert (=> b!1414704 m!1599049))

(declare-fun m!1599051 () Bool)

(assert (=> bm!95257 m!1599051))

(declare-fun m!1599053 () Bool)

(assert (=> bm!95229 m!1599053))

(declare-fun m!1599055 () Bool)

(assert (=> bm!95258 m!1599055))

(declare-fun m!1599057 () Bool)

(assert (=> bm!95254 m!1599057))

(declare-fun m!1599059 () Bool)

(assert (=> bm!95253 m!1599059))

(declare-fun m!1599061 () Bool)

(assert (=> d!404997 m!1599061))

(declare-fun m!1599063 () Bool)

(assert (=> d!404997 m!1599063))

(assert (=> d!404997 m!1598919))

(declare-fun m!1599065 () Bool)

(assert (=> d!404997 m!1599065))

(declare-fun m!1599067 () Bool)

(assert (=> d!404997 m!1599067))

(assert (=> bm!95235 m!1599045))

(declare-fun m!1599069 () Bool)

(assert (=> bm!95233 m!1599069))

(declare-fun m!1599071 () Bool)

(assert (=> bm!95264 m!1599071))

(declare-fun m!1599073 () Bool)

(assert (=> bm!95247 m!1599073))

(declare-fun m!1599075 () Bool)

(assert (=> bm!95255 m!1599075))

(declare-fun m!1599077 () Bool)

(assert (=> bm!95234 m!1599077))

(declare-fun m!1599079 () Bool)

(assert (=> b!1414717 m!1599079))

(assert (=> b!1414713 m!1598989))

(declare-fun m!1599081 () Bool)

(assert (=> bm!95228 m!1599081))

(assert (=> b!1414632 d!404997))

(declare-fun d!405019 () Bool)

(declare-fun lt!474884 () PrintableTokens!808)

(declare-fun head!2708 (List!14528) PrintableTokens!808)

(declare-fun list!5689 (BalanceConc!9570) List!14528)

(assert (=> d!405019 (= lt!474884 (head!2708 (list!5689 objs!24)))))

(declare-fun head!2709 (Conc!4815) PrintableTokens!808)

(assert (=> d!405019 (= lt!474884 (head!2709 (c!232439 objs!24)))))

(assert (=> d!405019 (not (isEmpty!8856 objs!24))))

(assert (=> d!405019 (= (head!2705 objs!24) lt!474884)))

(declare-fun bs!339305 () Bool)

(assert (= bs!339305 d!405019))

(declare-fun m!1599083 () Bool)

(assert (=> bs!339305 m!1599083))

(assert (=> bs!339305 m!1599083))

(declare-fun m!1599085 () Bool)

(assert (=> bs!339305 m!1599085))

(declare-fun m!1599087 () Bool)

(assert (=> bs!339305 m!1599087))

(assert (=> bs!339305 m!1598893))

(assert (=> b!1414632 d!405019))

(declare-fun d!405021 () Bool)

(declare-datatypes ((JsonLexer!398 0))(
  ( (JsonLexer!399) )
))
(declare-fun rules!109 (JsonLexer!398) List!14527)

(assert (=> d!405021 (= (usesJsonRules!0 sep!3) (= (rules!11058 sep!3) (rules!109 JsonLexer!399)))))

(declare-fun bs!339306 () Bool)

(assert (= bs!339306 d!405021))

(declare-fun m!1599089 () Bool)

(assert (=> bs!339306 m!1599089))

(assert (=> b!1414633 d!405021))

(declare-fun d!405023 () Bool)

(declare-fun c!232486 () Bool)

(assert (=> d!405023 (= c!232486 ((_ is Node!4814) (c!232438 (tokens!1776 acc!229))))))

(declare-fun e!903145 () Bool)

(assert (=> d!405023 (= (inv!18942 (c!232438 (tokens!1776 acc!229))) e!903145)))

(declare-fun b!1414755 () Bool)

(declare-fun inv!18947 (Conc!4814) Bool)

(assert (=> b!1414755 (= e!903145 (inv!18947 (c!232438 (tokens!1776 acc!229))))))

(declare-fun b!1414756 () Bool)

(declare-fun e!903146 () Bool)

(assert (=> b!1414756 (= e!903145 e!903146)))

(declare-fun res!640725 () Bool)

(assert (=> b!1414756 (= res!640725 (not ((_ is Leaf!7267) (c!232438 (tokens!1776 acc!229)))))))

(assert (=> b!1414756 (=> res!640725 e!903146)))

(declare-fun b!1414757 () Bool)

(declare-fun inv!18948 (Conc!4814) Bool)

(assert (=> b!1414757 (= e!903146 (inv!18948 (c!232438 (tokens!1776 acc!229))))))

(assert (= (and d!405023 c!232486) b!1414755))

(assert (= (and d!405023 (not c!232486)) b!1414756))

(assert (= (and b!1414756 (not res!640725)) b!1414757))

(declare-fun m!1599091 () Bool)

(assert (=> b!1414755 m!1599091))

(declare-fun m!1599093 () Bool)

(assert (=> b!1414757 m!1599093))

(assert (=> b!1414634 d!405023))

(declare-fun d!405025 () Bool)

(declare-fun lt!475015 () Bool)

(declare-fun forall!3564 (List!14528 Int) Bool)

(assert (=> d!405025 (= lt!475015 (forall!3564 (list!5689 (tail!2078 objs!24)) lambda!62499))))

(declare-fun forall!3565 (Conc!4815 Int) Bool)

(assert (=> d!405025 (= lt!475015 (forall!3565 (c!232439 (tail!2078 objs!24)) lambda!62499))))

(assert (=> d!405025 (= (forall!3561 (tail!2078 objs!24) lambda!62499) lt!475015)))

(declare-fun bs!339307 () Bool)

(assert (= bs!339307 d!405025))

(assert (=> bs!339307 m!1598911))

(declare-fun m!1599095 () Bool)

(assert (=> bs!339307 m!1599095))

(assert (=> bs!339307 m!1599095))

(declare-fun m!1599097 () Bool)

(assert (=> bs!339307 m!1599097))

(declare-fun m!1599099 () Bool)

(assert (=> bs!339307 m!1599099))

(assert (=> b!1414635 d!405025))

(declare-fun d!405027 () Bool)

(declare-fun e!903153 () Bool)

(assert (=> d!405027 e!903153))

(declare-fun res!640734 () Bool)

(assert (=> d!405027 (=> (not res!640734) (not e!903153))))

(declare-fun isBalanced!1428 (Conc!4815) Bool)

(declare-fun tail!2081 (Conc!4815) Conc!4815)

(assert (=> d!405027 (= res!640734 (isBalanced!1428 (tail!2081 (c!232439 objs!24))))))

(declare-fun lt!475018 () BalanceConc!9570)

(assert (=> d!405027 (= lt!475018 (BalanceConc!9571 (tail!2081 (c!232439 objs!24))))))

(assert (=> d!405027 (not (isEmpty!8856 objs!24))))

(assert (=> d!405027 (= (tail!2078 objs!24) lt!475018)))

(declare-fun b!1414766 () Bool)

(declare-fun tail!2082 (List!14528) List!14528)

(assert (=> b!1414766 (= e!903153 (= (list!5689 lt!475018) (tail!2082 (list!5689 objs!24))))))

(assert (= (and d!405027 res!640734) b!1414766))

(declare-fun m!1599101 () Bool)

(assert (=> d!405027 m!1599101))

(assert (=> d!405027 m!1599101))

(declare-fun m!1599103 () Bool)

(assert (=> d!405027 m!1599103))

(assert (=> d!405027 m!1598893))

(declare-fun m!1599105 () Bool)

(assert (=> b!1414766 m!1599105))

(assert (=> b!1414766 m!1599083))

(assert (=> b!1414766 m!1599083))

(declare-fun m!1599107 () Bool)

(assert (=> b!1414766 m!1599107))

(assert (=> b!1414635 d!405027))

(declare-fun call!95370 () BalanceConc!9566)

(declare-fun c!232492 () Bool)

(declare-fun bm!95344 () Bool)

(declare-fun c!232489 () Bool)

(assert (=> bm!95344 (= call!95370 (print!965 (ite (or c!232492 c!232489) (v!21941 lt!474681) acc!229)))))

(declare-fun bm!95345 () Bool)

(declare-fun call!95384 () BalanceConc!9566)

(assert (=> bm!95345 (= call!95384 (print!966 Lexer!2195 (tokens!1776 (v!21941 lt!474681))))))

(declare-fun bm!95346 () Bool)

(declare-fun call!95369 () BalanceConc!9566)

(assert (=> bm!95346 (= call!95369 (print!965 (ite (or c!232492 c!232489) acc!229 (v!21941 lt!474681))))))

(declare-fun bm!95347 () Bool)

(declare-fun call!95377 () BalanceConc!9566)

(assert (=> bm!95347 (= call!95377 call!95370)))

(declare-fun b!1414767 () Bool)

(declare-fun e!903157 () List!14525)

(declare-fun call!95350 () List!14525)

(assert (=> b!1414767 (= e!903157 call!95350)))

(declare-fun bm!95348 () Bool)

(declare-fun call!95359 () List!14526)

(assert (=> bm!95348 (= call!95359 (list!5687 (tokens!1776 (v!21941 lt!474681))))))

(declare-fun b!1414768 () Bool)

(declare-fun e!903158 () List!14526)

(declare-fun call!95383 () List!14526)

(assert (=> b!1414768 (= e!903158 call!95383)))

(declare-fun b!1414769 () Bool)

(declare-fun res!640736 () Bool)

(declare-fun e!903162 () Bool)

(assert (=> b!1414769 (=> (not res!640736) (not e!903162))))

(declare-fun lt!475026 () Option!2774)

(assert (=> b!1414769 (= res!640736 (= (list!5687 (tokens!1776 (get!4448 lt!475026))) (++!3781 (list!5687 (tokens!1776 acc!229)) (list!5687 (tokens!1776 (v!21941 lt!474681))))))))

(declare-fun bm!95349 () Bool)

(declare-fun call!95371 () List!14526)

(declare-fun call!95375 () List!14526)

(assert (=> bm!95349 (= call!95371 call!95375)))

(declare-fun b!1414770 () Bool)

(declare-fun lt!475039 () List!14526)

(declare-fun lt!475075 () List!14526)

(assert (=> b!1414770 (= e!903158 (++!3781 lt!475039 lt!475075))))

(declare-fun lt!475060 () LexerInterface!2197)

(declare-fun lt!475051 () LexerInterface!2197)

(declare-fun lt!475032 () List!14526)

(declare-fun bm!95350 () Bool)

(declare-fun call!95361 () List!14525)

(assert (=> bm!95350 (= call!95361 (printList!655 (ite c!232492 Lexer!2195 (ite c!232489 lt!475060 lt!475051)) (ite c!232492 call!95359 (ite c!232489 lt!475032 lt!475039))))))

(declare-fun e!903154 () List!14526)

(declare-fun call!95372 () List!14525)

(declare-fun lt!475046 () LexerInterface!2197)

(declare-fun bm!95351 () Bool)

(declare-fun lt!475052 () List!14526)

(declare-fun lt!475027 () LexerInterface!2197)

(assert (=> bm!95351 (= call!95372 (printList!655 (ite c!232492 lt!475027 (ite c!232489 lt!475060 lt!475046)) (ite c!232492 lt!475052 e!903154)))))

(declare-fun d!405029 () Bool)

(declare-fun e!903156 () Bool)

(assert (=> d!405029 e!903156))

(declare-fun res!640737 () Bool)

(assert (=> d!405029 (=> res!640737 e!903156)))

(assert (=> d!405029 (= res!640737 (isEmpty!8860 lt!475026))))

(declare-fun e!903159 () Option!2774)

(assert (=> d!405029 (= lt!475026 e!903159)))

(assert (=> d!405029 (= c!232492 (isEmpty!8861 (tokens!1776 (v!21941 lt!474681))))))

(declare-fun lt!475082 () Unit!21197)

(assert (=> d!405029 (= lt!475082 (lemmaInvariant!227 acc!229))))

(declare-fun lt!475068 () Unit!21197)

(assert (=> d!405029 (= lt!475068 (lemmaInvariant!227 (v!21941 lt!474681)))))

(assert (=> d!405029 (= (rules!11058 acc!229) (rules!11058 (v!21941 lt!474681)))))

(assert (=> d!405029 (= (append!432 acc!229 (v!21941 lt!474681)) lt!475026)))

(declare-fun bm!95352 () Bool)

(assert (=> bm!95352 (= call!95375 (list!5687 (tokens!1776 acc!229)))))

(declare-fun bm!95353 () Bool)

(declare-fun call!95379 () BalanceConc!9566)

(assert (=> bm!95353 (= call!95379 call!95369)))

(declare-fun b!1414771 () Bool)

(declare-fun call!95366 () List!14526)

(assert (=> b!1414771 (= e!903154 call!95366)))

(declare-fun b!1414772 () Bool)

(assert (=> b!1414772 (= e!903162 (= (list!5688 (print!965 (get!4448 lt!475026))) (++!3782 (list!5688 (print!965 acc!229)) (list!5688 (print!965 (v!21941 lt!474681))))))))

(declare-fun call!95356 () Unit!21197)

(declare-fun bm!95354 () Bool)

(assert (=> bm!95354 (= call!95356 (theoremInvertabilityWhenTokenListSeparable!25 Lexer!2195 (ite c!232492 (rules!11058 (v!21941 lt!474681)) (rules!11058 acc!229)) (ite c!232492 call!95359 call!95371)))))

(declare-fun b!1414773 () Bool)

(declare-fun e!903163 () Option!2774)

(assert (=> b!1414773 (= e!903163 None!2773)))

(declare-fun b!1414774 () Bool)

(declare-fun call!95352 () List!14525)

(assert (=> b!1414774 (= e!903157 call!95352)))

(declare-fun bm!95355 () Bool)

(declare-fun call!95349 () List!14525)

(declare-fun call!95382 () List!14525)

(assert (=> bm!95355 (= call!95349 call!95382)))

(declare-fun bm!95356 () Bool)

(declare-fun call!95367 () BalanceConc!9566)

(assert (=> bm!95356 (= call!95367 call!95384)))

(declare-fun bm!95357 () Bool)

(declare-fun call!95360 () List!14525)

(assert (=> bm!95357 (= call!95352 call!95360)))

(declare-fun call!95386 () BalanceConc!9566)

(declare-fun lt!475020 () List!14526)

(declare-fun bm!95358 () Bool)

(declare-fun lt!475077 () List!14526)

(assert (=> bm!95358 (= call!95386 (charsOf!1472 (ite c!232492 (h!19861 lt!475077) (h!19861 lt!475020))))))

(declare-fun bm!95359 () Bool)

(declare-fun call!95351 () Unit!21197)

(assert (=> bm!95359 (= call!95351 call!95356)))

(declare-fun bm!95360 () Bool)

(assert (=> bm!95360 (= call!95383 call!95359)))

(declare-fun b!1414775 () Bool)

(declare-fun e!903155 () List!14525)

(assert (=> b!1414775 (= e!903155 Nil!14459)))

(declare-fun b!1414776 () Bool)

(declare-fun e!903160 () List!14525)

(assert (=> b!1414776 (= e!903160 Nil!14459)))

(declare-fun bm!95361 () Bool)

(declare-fun call!95385 () BalanceConc!9566)

(declare-fun call!95353 () BalanceConc!9566)

(assert (=> bm!95361 (= call!95385 call!95353)))

(declare-fun call!95358 () List!14525)

(declare-fun call!95355 () List!14525)

(declare-fun bm!95362 () Bool)

(declare-fun call!95354 () List!14525)

(assert (=> bm!95362 (= call!95358 (++!3782 (ite c!232492 call!95372 (ite c!232489 call!95349 call!95354)) (ite c!232492 call!95360 (ite c!232489 call!95354 call!95355))))))

(declare-fun b!1414777 () Bool)

(assert (=> b!1414777 (= e!903159 (Some!2773 acc!229))))

(assert (=> b!1414777 (= lt!475027 Lexer!2195)))

(assert (=> b!1414777 (= lt!475052 call!95375)))

(declare-fun lt!475034 () List!14526)

(assert (=> b!1414777 (= lt!475034 Nil!14460)))

(declare-fun lt!475037 () Unit!21197)

(declare-fun call!95368 () Unit!21197)

(assert (=> b!1414777 (= lt!475037 call!95368)))

(assert (=> b!1414777 (= call!95382 call!95358)))

(declare-fun lt!475031 () Unit!21197)

(assert (=> b!1414777 (= lt!475031 lt!475037)))

(declare-fun call!95387 () List!14525)

(assert (=> b!1414777 (= call!95387 Nil!14459)))

(declare-fun lt!475047 () Unit!21197)

(declare-fun Unit!21225 () Unit!21197)

(assert (=> b!1414777 (= lt!475047 Unit!21225)))

(declare-fun lt!475069 () Unit!21197)

(declare-fun call!95362 () Unit!21197)

(assert (=> b!1414777 (= lt!475069 call!95362)))

(assert (=> b!1414777 (= call!95369 call!95353)))

(declare-fun lt!475063 () Unit!21197)

(declare-fun Unit!21226 () Unit!21197)

(assert (=> b!1414777 (= lt!475063 Unit!21226)))

(declare-fun lt!475025 () Unit!21197)

(assert (=> b!1414777 (= lt!475025 call!95356)))

(assert (=> b!1414777 (= call!95370 call!95384)))

(declare-fun lt!475038 () Unit!21197)

(declare-fun Unit!21227 () Unit!21197)

(assert (=> b!1414777 (= lt!475038 Unit!21227)))

(declare-fun call!95364 () BalanceConc!9566)

(assert (=> b!1414777 (= call!95384 call!95364)))

(declare-fun lt!475035 () Unit!21197)

(declare-fun Unit!21228 () Unit!21197)

(assert (=> b!1414777 (= lt!475035 Unit!21228)))

(assert (=> b!1414777 (= lt!475077 call!95359)))

(declare-fun c!232495 () Bool)

(assert (=> b!1414777 (= c!232495 ((_ is Cons!14460) lt!475077))))

(assert (=> b!1414777 (= call!95361 e!903155)))

(declare-fun lt!475024 () Unit!21197)

(declare-fun Unit!21229 () Unit!21197)

(assert (=> b!1414777 (= lt!475024 Unit!21229)))

(declare-fun bm!95363 () Bool)

(declare-fun call!95380 () Unit!21197)

(assert (=> bm!95363 (= call!95380 call!95362)))

(declare-fun bm!95364 () Bool)

(assert (=> bm!95364 (= call!95353 (print!966 Lexer!2195 (tokens!1776 acc!229)))))

(declare-fun call!95378 () List!14525)

(declare-fun call!95373 () List!14525)

(declare-fun bm!95365 () Bool)

(assert (=> bm!95365 (= call!95373 (++!3782 (ite c!232492 call!95350 e!903157) (ite c!232492 call!95378 (ite c!232489 call!95355 call!95349))))))

(declare-fun b!1414778 () Bool)

(assert (=> b!1414778 (= e!903156 e!903162)))

(declare-fun res!640735 () Bool)

(assert (=> b!1414778 (=> (not res!640735) (not e!903162))))

(assert (=> b!1414778 (= res!640735 (= (rules!11058 (get!4448 lt!475026)) (rules!11058 acc!229)))))

(declare-fun b!1414779 () Bool)

(declare-fun call!95363 () List!14526)

(assert (=> b!1414779 (= e!903154 call!95363)))

(declare-fun b!1414780 () Bool)

(declare-fun call!95365 () List!14525)

(assert (=> b!1414780 (= e!903160 call!95365)))

(declare-fun bm!95366 () Bool)

(declare-fun c!232493 () Bool)

(assert (=> bm!95366 (= c!232493 c!232489)))

(declare-fun call!95357 () List!14525)

(assert (=> bm!95366 (= call!95357 call!95387)))

(declare-fun b!1414781 () Bool)

(declare-fun lt!475049 () Unit!21197)

(declare-fun Unit!21230 () Unit!21197)

(assert (=> b!1414781 (= lt!475049 Unit!21230)))

(assert (=> b!1414781 (= call!95357 e!903160)))

(declare-fun c!232488 () Bool)

(assert (=> b!1414781 (= c!232488 ((_ is Cons!14460) lt!475020))))

(assert (=> b!1414781 (= lt!475020 call!95383)))

(declare-fun lt!475045 () Unit!21197)

(declare-fun Unit!21231 () Unit!21197)

(assert (=> b!1414781 (= lt!475045 Unit!21231)))

(assert (=> b!1414781 (= call!95367 call!95364)))

(declare-fun lt!475029 () Unit!21197)

(declare-fun Unit!21232 () Unit!21197)

(assert (=> b!1414781 (= lt!475029 Unit!21232)))

(assert (=> b!1414781 (= call!95377 call!95367)))

(declare-fun lt!475062 () Unit!21197)

(assert (=> b!1414781 (= lt!475062 call!95380)))

(declare-fun lt!475080 () Unit!21197)

(declare-fun Unit!21233 () Unit!21197)

(assert (=> b!1414781 (= lt!475080 Unit!21233)))

(assert (=> b!1414781 (= call!95379 call!95385)))

(declare-fun lt!475057 () Unit!21197)

(assert (=> b!1414781 (= lt!475057 call!95351)))

(declare-fun lt!475076 () Unit!21197)

(declare-fun Unit!21234 () Unit!21197)

(assert (=> b!1414781 (= lt!475076 Unit!21234)))

(assert (=> b!1414781 (= call!95352 Nil!14459)))

(declare-fun lt!475074 () Unit!21197)

(declare-fun lt!475036 () Unit!21197)

(assert (=> b!1414781 (= lt!475074 lt!475036)))

(declare-fun call!95376 () List!14525)

(declare-fun call!95381 () List!14525)

(assert (=> b!1414781 (= call!95376 call!95381)))

(declare-fun call!95374 () Unit!21197)

(assert (=> b!1414781 (= lt!475036 call!95374)))

(assert (=> b!1414781 (= lt!475032 call!95383)))

(declare-fun lt!475071 () List!14526)

(assert (=> b!1414781 (= lt!475071 Nil!14460)))

(assert (=> b!1414781 (= lt!475060 Lexer!2195)))

(declare-fun e!903161 () Option!2774)

(assert (=> b!1414781 (= e!903161 (Some!2773 (v!21941 lt!474681)))))

(declare-fun bm!95367 () Bool)

(declare-fun c!232490 () Bool)

(assert (=> bm!95367 (= c!232490 c!232489)))

(assert (=> bm!95367 (= call!95365 call!95373)))

(declare-fun bm!95368 () Bool)

(assert (=> bm!95368 (= call!95381 call!95358)))

(declare-fun bm!95369 () Bool)

(assert (=> bm!95369 (= call!95354 call!95361)))

(declare-fun bm!95370 () Bool)

(assert (=> bm!95370 (= call!95362 (theoremInvertabilityWhenTokenListSeparable!25 Lexer!2195 (ite c!232492 (rules!11058 acc!229) (rules!11058 (v!21941 lt!474681))) (ite c!232492 call!95375 call!95383)))))

(declare-fun bm!95371 () Bool)

(assert (=> bm!95371 (= call!95387 (printList!655 (ite (or c!232492 c!232489) Lexer!2195 lt!475051) (ite c!232492 Nil!14460 e!903158)))))

(declare-fun b!1414782 () Bool)

(assert (=> b!1414782 (= e!903159 e!903161)))

(assert (=> b!1414782 (= c!232489 (isEmpty!8861 (tokens!1776 acc!229)))))

(declare-fun bm!95372 () Bool)

(assert (=> bm!95372 (= call!95364 (printTailRec!637 Lexer!2195 (tokens!1776 (v!21941 lt!474681)) 0 (BalanceConc!9567 Empty!4813)))))

(declare-fun b!1414783 () Bool)

(assert (=> b!1414783 (= e!903155 call!95373)))

(declare-fun bm!95373 () Bool)

(assert (=> bm!95373 (= call!95350 (list!5688 call!95386))))

(declare-fun lt!475061 () List!14526)

(declare-fun lt!475019 () List!14526)

(declare-fun bm!95374 () Bool)

(assert (=> bm!95374 (= call!95366 (++!3781 (ite c!232489 lt!475071 lt!475019) (ite c!232489 lt!475032 lt!475061)))))

(declare-fun bm!95375 () Bool)

(assert (=> bm!95375 (= call!95378 (printList!655 (ite (or c!232492 c!232489) Lexer!2195 lt!475051) (ite c!232492 (t!123911 lt!475077) (ite c!232489 (t!123911 lt!475020) lt!475075))))))

(declare-fun bm!95376 () Bool)

(declare-fun lt!475041 () List!14526)

(assert (=> bm!95376 (= call!95382 (printList!655 (ite c!232492 lt!475027 (ite c!232489 lt!475060 lt!475046)) (ite c!232492 call!95363 (ite c!232489 lt!475071 lt!475041))))))

(declare-fun bm!95377 () Bool)

(declare-fun lt!475066 () List!14526)

(assert (=> bm!95377 (= call!95363 (++!3781 (ite c!232492 lt!475052 lt!475066) (ite c!232492 lt!475034 lt!475041)))))

(declare-fun bm!95378 () Bool)

(declare-fun c!232494 () Bool)

(assert (=> bm!95378 (= c!232494 c!232489)))

(assert (=> bm!95378 (= call!95376 call!95372)))

(declare-fun bm!95379 () Bool)

(assert (=> bm!95379 (= call!95374 call!95368)))

(declare-fun bm!95380 () Bool)

(assert (=> bm!95380 (= call!95360 (printList!655 (ite c!232492 lt!475027 (ite c!232489 Lexer!2195 lt!475046)) (ite c!232492 lt!475034 (ite c!232489 Nil!14460 lt!475066))))))

(declare-fun bm!95381 () Bool)

(assert (=> bm!95381 (= call!95368 (lemmaPrintConcatSameAsConcatPrint!20 (ite c!232492 lt!475027 (ite c!232489 lt!475060 lt!475051)) (ite c!232492 lt!475052 (ite c!232489 lt!475071 lt!475039)) (ite c!232492 lt!475034 (ite c!232489 lt!475032 lt!475075))))))

(declare-fun bm!95382 () Bool)

(assert (=> bm!95382 (= call!95355 call!95378)))

(declare-fun b!1414784 () Bool)

(assert (=> b!1414784 (= e!903163 (Some!2773 (PrintableTokens!809 (rules!11058 acc!229) (++!3783 (tokens!1776 acc!229) (tokens!1776 (v!21941 lt!474681))))))))

(declare-fun lt!475022 () LexerInterface!2197)

(assert (=> b!1414784 (= lt!475022 Lexer!2195)))

(assert (=> b!1414784 (= lt!475019 call!95371)))

(assert (=> b!1414784 (= lt!475061 call!95383)))

(declare-fun lt!475030 () Unit!21197)

(assert (=> b!1414784 (= lt!475030 (tokensListTwoByTwoPredicateConcatSeparableTokensList!20 lt!475022 lt!475019 lt!475061 (rules!11058 acc!229)))))

(declare-fun lt!475064 () Unit!21197)

(assert (=> b!1414784 (= lt!475064 (lemmaRulesProduceEachTokenIndividuallyConcat!20 lt!475022 (rules!11058 acc!229) lt!475019 lt!475061))))

(assert (=> b!1414784 (rulesProduceEachTokenIndividuallyList!680 lt!475022 (rules!11058 acc!229) call!95366)))

(declare-fun lt!475042 () Unit!21197)

(assert (=> b!1414784 (= lt!475042 lt!475064)))

(assert (=> b!1414784 (tokensListTwoByTwoPredicateSeparableList!201 lt!475022 call!95366 (rules!11058 acc!229))))

(declare-fun lt!475048 () Unit!21197)

(assert (=> b!1414784 (= lt!475048 lt!475030)))

(assert (=> b!1414784 (= lt!475051 Lexer!2195)))

(assert (=> b!1414784 (= lt!475039 call!95371)))

(assert (=> b!1414784 (= lt!475075 call!95383)))

(declare-fun lt!475078 () Unit!21197)

(assert (=> b!1414784 (= lt!475078 call!95374)))

(assert (=> b!1414784 (= call!95357 call!95381)))

(declare-fun lt!475044 () Unit!21197)

(assert (=> b!1414784 (= lt!475044 lt!475078)))

(declare-fun lt!475055 () Unit!21197)

(assert (=> b!1414784 (= lt!475055 call!95351)))

(assert (=> b!1414784 (= call!95377 call!95385)))

(declare-fun lt!475070 () Unit!21197)

(declare-fun Unit!21235 () Unit!21197)

(assert (=> b!1414784 (= lt!475070 Unit!21235)))

(declare-fun lt!475023 () Unit!21197)

(assert (=> b!1414784 (= lt!475023 call!95380)))

(assert (=> b!1414784 (= call!95379 call!95367)))

(declare-fun lt!475079 () Unit!21197)

(declare-fun Unit!21236 () Unit!21197)

(assert (=> b!1414784 (= lt!475079 Unit!21236)))

(declare-fun lt!475053 () PrintableTokens!808)

(assert (=> b!1414784 (= lt!475053 (PrintableTokens!809 (rules!11058 acc!229) (++!3783 (tokens!1776 acc!229) (tokens!1776 (v!21941 lt!474681)))))))

(declare-fun lt!475072 () BalanceConc!9568)

(assert (=> b!1414784 (= lt!475072 (++!3783 (tokens!1776 acc!229) (tokens!1776 (v!21941 lt!474681))))))

(declare-fun lt!475081 () Unit!21197)

(assert (=> b!1414784 (= lt!475081 (theoremInvertabilityWhenTokenListSeparable!25 Lexer!2195 (rules!11058 acc!229) (list!5687 (++!3783 (tokens!1776 acc!229) (tokens!1776 (v!21941 lt!474681))))))))

(assert (=> b!1414784 (= (print!965 (PrintableTokens!809 (rules!11058 acc!229) (++!3783 (tokens!1776 acc!229) (tokens!1776 (v!21941 lt!474681))))) (print!966 Lexer!2195 (++!3783 (tokens!1776 acc!229) (tokens!1776 (v!21941 lt!474681)))))))

(declare-fun lt!475043 () Unit!21197)

(declare-fun Unit!21237 () Unit!21197)

(assert (=> b!1414784 (= lt!475043 Unit!21237)))

(assert (=> b!1414784 (= lt!475046 Lexer!2195)))

(assert (=> b!1414784 (= lt!475066 call!95371)))

(assert (=> b!1414784 (= lt!475041 call!95383)))

(declare-fun lt!475028 () Unit!21197)

(assert (=> b!1414784 (= lt!475028 (lemmaPrintConcatSameAsConcatPrint!20 lt!475046 lt!475066 lt!475041))))

(assert (=> b!1414784 (= call!95376 call!95365)))

(declare-fun lt!475058 () Unit!21197)

(assert (=> b!1414784 (= lt!475058 lt!475028)))

(declare-fun b!1414785 () Bool)

(declare-fun c!232491 () Bool)

(assert (=> b!1414785 (= c!232491 (separableTokensPredicate!478 Lexer!2195 (last!71 (tokens!1776 acc!229)) (head!2707 (tokens!1776 (v!21941 lt!474681))) (rules!11058 acc!229)))))

(declare-fun lt!475033 () Unit!21197)

(declare-fun lt!475021 () Unit!21197)

(assert (=> b!1414785 (= lt!475033 lt!475021)))

(declare-fun lt!475067 () LexerInterface!2197)

(declare-fun lt!475065 () Token!4688)

(assert (=> b!1414785 (rulesProduceIndividualToken!1164 lt!475067 (rules!11058 acc!229) lt!475065)))

(declare-fun lt!475050 () List!14526)

(assert (=> b!1414785 (= lt!475021 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!349 lt!475067 (rules!11058 acc!229) lt!475050 lt!475065))))

(assert (=> b!1414785 (= lt!475065 (head!2707 (tokens!1776 (v!21941 lt!474681))))))

(assert (=> b!1414785 (= lt!475050 call!95383)))

(assert (=> b!1414785 (= lt!475067 Lexer!2195)))

(declare-fun lt!475059 () Unit!21197)

(declare-fun lt!475073 () Unit!21197)

(assert (=> b!1414785 (= lt!475059 lt!475073)))

(declare-fun lt!475054 () LexerInterface!2197)

(declare-fun lt!475056 () Token!4688)

(assert (=> b!1414785 (rulesProduceIndividualToken!1164 lt!475054 (rules!11058 acc!229) lt!475056)))

(declare-fun lt!475040 () List!14526)

(assert (=> b!1414785 (= lt!475073 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!349 lt!475054 (rules!11058 acc!229) lt!475040 lt!475056))))

(assert (=> b!1414785 (= lt!475056 (last!71 (tokens!1776 acc!229)))))

(assert (=> b!1414785 (= lt!475040 call!95371)))

(assert (=> b!1414785 (= lt!475054 Lexer!2195)))

(assert (=> b!1414785 (= e!903161 e!903163)))

(assert (= (and d!405029 c!232492) b!1414777))

(assert (= (and d!405029 (not c!232492)) b!1414782))

(assert (= (and b!1414777 c!232495) b!1414783))

(assert (= (and b!1414777 (not c!232495)) b!1414775))

(assert (= (and b!1414782 c!232489) b!1414781))

(assert (= (and b!1414782 (not c!232489)) b!1414785))

(assert (= (and b!1414781 c!232488) b!1414780))

(assert (= (and b!1414781 (not c!232488)) b!1414776))

(assert (= (and b!1414785 c!232491) b!1414784))

(assert (= (and b!1414785 (not c!232491)) b!1414773))

(assert (= (or b!1414781 b!1414784) bm!95355))

(assert (= (or b!1414781 b!1414784) bm!95374))

(assert (= (or b!1414781 b!1414784) bm!95379))

(assert (= (or b!1414781 b!1414784) bm!95369))

(assert (= (or b!1414781 b!1414784) bm!95357))

(assert (= (or b!1414781 b!1414785 b!1414784) bm!95360))

(assert (= (or b!1414780 b!1414784) bm!95382))

(assert (= (or b!1414781 b!1414785 b!1414784) bm!95349))

(assert (= (or b!1414781 b!1414784) bm!95347))

(assert (= (or b!1414781 b!1414784) bm!95361))

(assert (= (or b!1414781 b!1414784) bm!95353))

(assert (= (or b!1414781 b!1414784) bm!95356))

(assert (= (or b!1414781 b!1414784) bm!95359))

(assert (= (or b!1414781 b!1414784) bm!95366))

(assert (= (and bm!95366 c!232493) b!1414768))

(assert (= (and bm!95366 (not c!232493)) b!1414770))

(assert (= (or b!1414781 b!1414784) bm!95378))

(assert (= (and bm!95378 c!232494) b!1414771))

(assert (= (and bm!95378 (not c!232494)) b!1414779))

(assert (= (or b!1414781 b!1414784) bm!95363))

(assert (= (or b!1414781 b!1414784) bm!95368))

(assert (= (or b!1414780 b!1414784) bm!95367))

(assert (= (and bm!95367 c!232490) b!1414767))

(assert (= (and bm!95367 (not c!232490)) b!1414774))

(assert (= (or b!1414783 bm!95382) bm!95375))

(assert (= (or b!1414777 bm!95379) bm!95381))

(assert (= (or b!1414777 bm!95347) bm!95344))

(assert (= (or b!1414777 bm!95366) bm!95371))

(assert (= (or b!1414783 b!1414767) bm!95358))

(assert (= (or b!1414777 bm!95361) bm!95364))

(assert (= (or b!1414777 b!1414779) bm!95377))

(assert (= (or b!1414777 bm!95378) bm!95351))

(assert (= (or b!1414777 bm!95356) bm!95345))

(assert (= (or b!1414777 bm!95357) bm!95380))

(assert (= (or b!1414777 bm!95353) bm!95346))

(assert (= (or b!1414777 bm!95360) bm!95348))

(assert (= (or b!1414777 bm!95349) bm!95352))

(assert (= (or b!1414777 b!1414781) bm!95372))

(assert (= (or b!1414777 bm!95359) bm!95354))

(assert (= (or b!1414777 bm!95355) bm!95376))

(assert (= (or b!1414777 bm!95369) bm!95350))

(assert (= (or b!1414777 bm!95363) bm!95370))

(assert (= (or b!1414777 bm!95368) bm!95362))

(assert (= (or b!1414783 b!1414767) bm!95373))

(assert (= (or b!1414783 bm!95367) bm!95365))

(assert (= (and d!405029 (not res!640737)) b!1414778))

(assert (= (and b!1414778 res!640735) b!1414769))

(assert (= (and b!1414769 res!640736) b!1414772))

(declare-fun m!1599109 () Bool)

(assert (=> bm!95373 m!1599109))

(declare-fun m!1599111 () Bool)

(assert (=> bm!95358 m!1599111))

(declare-fun m!1599113 () Bool)

(assert (=> bm!95362 m!1599113))

(declare-fun m!1599115 () Bool)

(assert (=> bm!95380 m!1599115))

(declare-fun m!1599117 () Bool)

(assert (=> b!1414772 m!1599117))

(declare-fun m!1599119 () Bool)

(assert (=> b!1414772 m!1599119))

(declare-fun m!1599121 () Bool)

(assert (=> b!1414772 m!1599121))

(assert (=> b!1414772 m!1599119))

(declare-fun m!1599123 () Bool)

(assert (=> b!1414772 m!1599123))

(declare-fun m!1599125 () Bool)

(assert (=> b!1414772 m!1599125))

(declare-fun m!1599127 () Bool)

(assert (=> b!1414772 m!1599127))

(assert (=> b!1414772 m!1599121))

(assert (=> b!1414772 m!1599125))

(declare-fun m!1599129 () Bool)

(assert (=> b!1414772 m!1599129))

(assert (=> b!1414772 m!1599129))

(declare-fun m!1599131 () Bool)

(assert (=> b!1414772 m!1599131))

(assert (=> b!1414772 m!1599127))

(assert (=> b!1414772 m!1599117))

(declare-fun m!1599133 () Bool)

(assert (=> bm!95365 m!1599133))

(declare-fun m!1599135 () Bool)

(assert (=> b!1414784 m!1599135))

(declare-fun m!1599137 () Bool)

(assert (=> b!1414784 m!1599137))

(assert (=> b!1414784 m!1599135))

(assert (=> b!1414784 m!1599137))

(declare-fun m!1599139 () Bool)

(assert (=> b!1414784 m!1599139))

(declare-fun m!1599141 () Bool)

(assert (=> b!1414784 m!1599141))

(declare-fun m!1599143 () Bool)

(assert (=> b!1414784 m!1599143))

(declare-fun m!1599145 () Bool)

(assert (=> b!1414784 m!1599145))

(assert (=> b!1414784 m!1599135))

(declare-fun m!1599147 () Bool)

(assert (=> b!1414784 m!1599147))

(declare-fun m!1599149 () Bool)

(assert (=> b!1414784 m!1599149))

(declare-fun m!1599151 () Bool)

(assert (=> b!1414784 m!1599151))

(declare-fun m!1599153 () Bool)

(assert (=> b!1414784 m!1599153))

(declare-fun m!1599155 () Bool)

(assert (=> b!1414770 m!1599155))

(declare-fun m!1599157 () Bool)

(assert (=> bm!95376 m!1599157))

(declare-fun m!1599159 () Bool)

(assert (=> bm!95344 m!1599159))

(declare-fun m!1599161 () Bool)

(assert (=> bm!95348 m!1599161))

(declare-fun m!1599163 () Bool)

(assert (=> bm!95354 m!1599163))

(declare-fun m!1599165 () Bool)

(assert (=> bm!95377 m!1599165))

(declare-fun m!1599167 () Bool)

(assert (=> b!1414785 m!1599167))

(declare-fun m!1599169 () Bool)

(assert (=> b!1414785 m!1599169))

(declare-fun m!1599171 () Bool)

(assert (=> b!1414785 m!1599171))

(declare-fun m!1599173 () Bool)

(assert (=> b!1414785 m!1599173))

(assert (=> b!1414785 m!1599171))

(assert (=> b!1414785 m!1599167))

(declare-fun m!1599175 () Bool)

(assert (=> b!1414785 m!1599175))

(declare-fun m!1599177 () Bool)

(assert (=> b!1414785 m!1599177))

(declare-fun m!1599179 () Bool)

(assert (=> b!1414785 m!1599179))

(declare-fun m!1599181 () Bool)

(assert (=> b!1414769 m!1599181))

(assert (=> b!1414769 m!1599161))

(declare-fun m!1599183 () Bool)

(assert (=> b!1414769 m!1599183))

(assert (=> b!1414769 m!1599125))

(assert (=> b!1414769 m!1599181))

(assert (=> b!1414769 m!1599161))

(declare-fun m!1599185 () Bool)

(assert (=> b!1414769 m!1599185))

(declare-fun m!1599187 () Bool)

(assert (=> bm!95374 m!1599187))

(declare-fun m!1599189 () Bool)

(assert (=> bm!95346 m!1599189))

(declare-fun m!1599191 () Bool)

(assert (=> bm!95375 m!1599191))

(declare-fun m!1599193 () Bool)

(assert (=> bm!95371 m!1599193))

(declare-fun m!1599195 () Bool)

(assert (=> bm!95370 m!1599195))

(declare-fun m!1599197 () Bool)

(assert (=> d!405029 m!1599197))

(declare-fun m!1599199 () Bool)

(assert (=> d!405029 m!1599199))

(declare-fun m!1599201 () Bool)

(assert (=> d!405029 m!1599201))

(declare-fun m!1599203 () Bool)

(assert (=> d!405029 m!1599203))

(assert (=> bm!95352 m!1599181))

(declare-fun m!1599205 () Bool)

(assert (=> bm!95350 m!1599205))

(declare-fun m!1599207 () Bool)

(assert (=> bm!95381 m!1599207))

(declare-fun m!1599209 () Bool)

(assert (=> bm!95364 m!1599209))

(declare-fun m!1599211 () Bool)

(assert (=> bm!95372 m!1599211))

(declare-fun m!1599213 () Bool)

(assert (=> bm!95351 m!1599213))

(declare-fun m!1599215 () Bool)

(assert (=> b!1414782 m!1599215))

(assert (=> b!1414778 m!1599125))

(declare-fun m!1599217 () Bool)

(assert (=> bm!95345 m!1599217))

(assert (=> b!1414636 d!405029))

(declare-fun d!405031 () Bool)

(declare-fun lt!475083 () Bool)

(assert (=> d!405031 (= lt!475083 (forall!3564 (list!5689 objs!24) lambda!62499))))

(assert (=> d!405031 (= lt!475083 (forall!3565 (c!232439 objs!24) lambda!62499))))

(assert (=> d!405031 (= (forall!3561 objs!24 lambda!62499) lt!475083)))

(declare-fun bs!339308 () Bool)

(assert (= bs!339308 d!405031))

(assert (=> bs!339308 m!1599083))

(assert (=> bs!339308 m!1599083))

(declare-fun m!1599219 () Bool)

(assert (=> bs!339308 m!1599219))

(declare-fun m!1599221 () Bool)

(assert (=> bs!339308 m!1599221))

(assert (=> start!129736 d!405031))

(declare-fun d!405033 () Bool)

(assert (=> d!405033 (= (inv!18940 objs!24) (isBalanced!1428 (c!232439 objs!24)))))

(declare-fun bs!339309 () Bool)

(assert (= bs!339309 d!405033))

(declare-fun m!1599223 () Bool)

(assert (=> bs!339309 m!1599223))

(assert (=> start!129736 d!405033))

(declare-fun d!405035 () Bool)

(declare-fun res!640754 () Bool)

(declare-fun e!903222 () Bool)

(assert (=> d!405035 (=> (not res!640754) (not e!903222))))

(declare-fun isEmpty!8864 (List!14527) Bool)

(assert (=> d!405035 (= res!640754 (not (isEmpty!8864 (rules!11058 acc!229))))))

(assert (=> d!405035 (= (inv!18941 acc!229) e!903222)))

(declare-fun b!1414877 () Bool)

(declare-fun res!640755 () Bool)

(assert (=> b!1414877 (=> (not res!640755) (not e!903222))))

(declare-fun rulesInvariant!2067 (LexerInterface!2197 List!14527) Bool)

(assert (=> b!1414877 (= res!640755 (rulesInvariant!2067 Lexer!2195 (rules!11058 acc!229)))))

(declare-fun b!1414878 () Bool)

(declare-fun res!640756 () Bool)

(assert (=> b!1414878 (=> (not res!640756) (not e!903222))))

(declare-fun rulesProduceEachTokenIndividually!794 (LexerInterface!2197 List!14527 BalanceConc!9568) Bool)

(assert (=> b!1414878 (= res!640756 (rulesProduceEachTokenIndividually!794 Lexer!2195 (rules!11058 acc!229) (tokens!1776 acc!229)))))

(declare-fun b!1414879 () Bool)

(declare-fun separableTokens!179 (LexerInterface!2197 BalanceConc!9568 List!14527) Bool)

(assert (=> b!1414879 (= e!903222 (separableTokens!179 Lexer!2195 (tokens!1776 acc!229) (rules!11058 acc!229)))))

(assert (= (and d!405035 res!640754) b!1414877))

(assert (= (and b!1414877 res!640755) b!1414878))

(assert (= (and b!1414878 res!640756) b!1414879))

(declare-fun m!1599501 () Bool)

(assert (=> d!405035 m!1599501))

(declare-fun m!1599503 () Bool)

(assert (=> b!1414877 m!1599503))

(declare-fun m!1599505 () Bool)

(assert (=> b!1414878 m!1599505))

(declare-fun m!1599507 () Bool)

(assert (=> b!1414879 m!1599507))

(assert (=> start!129736 d!405035))

(declare-fun d!405053 () Bool)

(declare-fun res!640757 () Bool)

(declare-fun e!903223 () Bool)

(assert (=> d!405053 (=> (not res!640757) (not e!903223))))

(assert (=> d!405053 (= res!640757 (not (isEmpty!8864 (rules!11058 sep!3))))))

(assert (=> d!405053 (= (inv!18941 sep!3) e!903223)))

(declare-fun b!1414880 () Bool)

(declare-fun res!640758 () Bool)

(assert (=> b!1414880 (=> (not res!640758) (not e!903223))))

(assert (=> b!1414880 (= res!640758 (rulesInvariant!2067 Lexer!2195 (rules!11058 sep!3)))))

(declare-fun b!1414881 () Bool)

(declare-fun res!640759 () Bool)

(assert (=> b!1414881 (=> (not res!640759) (not e!903223))))

(assert (=> b!1414881 (= res!640759 (rulesProduceEachTokenIndividually!794 Lexer!2195 (rules!11058 sep!3) (tokens!1776 sep!3)))))

(declare-fun b!1414882 () Bool)

(assert (=> b!1414882 (= e!903223 (separableTokens!179 Lexer!2195 (tokens!1776 sep!3) (rules!11058 sep!3)))))

(assert (= (and d!405053 res!640757) b!1414880))

(assert (= (and b!1414880 res!640758) b!1414881))

(assert (= (and b!1414881 res!640759) b!1414882))

(declare-fun m!1599509 () Bool)

(assert (=> d!405053 m!1599509))

(declare-fun m!1599511 () Bool)

(assert (=> b!1414880 m!1599511))

(declare-fun m!1599513 () Bool)

(assert (=> b!1414881 m!1599513))

(declare-fun m!1599515 () Bool)

(assert (=> b!1414882 m!1599515))

(assert (=> start!129736 d!405053))

(declare-fun d!405055 () Bool)

(declare-fun lt!475223 () Int)

(declare-fun size!11931 (List!14528) Int)

(assert (=> d!405055 (= lt!475223 (size!11931 (list!5689 objs!24)))))

(declare-fun size!11932 (Conc!4815) Int)

(assert (=> d!405055 (= lt!475223 (size!11932 (c!232439 objs!24)))))

(assert (=> d!405055 (= (size!11928 objs!24) lt!475223)))

(declare-fun bs!339315 () Bool)

(assert (= bs!339315 d!405055))

(assert (=> bs!339315 m!1599083))

(assert (=> bs!339315 m!1599083))

(declare-fun m!1599517 () Bool)

(assert (=> bs!339315 m!1599517))

(declare-fun m!1599519 () Bool)

(assert (=> bs!339315 m!1599519))

(assert (=> b!1414637 d!405055))

(declare-fun d!405057 () Bool)

(declare-fun lt!475226 () Bool)

(declare-fun isEmpty!8865 (List!14528) Bool)

(assert (=> d!405057 (= lt!475226 (isEmpty!8865 (list!5689 objs!24)))))

(declare-fun isEmpty!8866 (Conc!4815) Bool)

(assert (=> d!405057 (= lt!475226 (isEmpty!8866 (c!232439 objs!24)))))

(assert (=> d!405057 (= (isEmpty!8856 objs!24) lt!475226)))

(declare-fun bs!339316 () Bool)

(assert (= bs!339316 d!405057))

(assert (=> bs!339316 m!1599083))

(assert (=> bs!339316 m!1599083))

(declare-fun m!1599521 () Bool)

(assert (=> bs!339316 m!1599521))

(declare-fun m!1599523 () Bool)

(assert (=> bs!339316 m!1599523))

(assert (=> b!1414627 d!405057))

(declare-fun d!405059 () Bool)

(declare-fun c!232514 () Bool)

(assert (=> d!405059 (= c!232514 ((_ is Node!4814) (c!232438 (tokens!1776 sep!3))))))

(declare-fun e!903224 () Bool)

(assert (=> d!405059 (= (inv!18942 (c!232438 (tokens!1776 sep!3))) e!903224)))

(declare-fun b!1414883 () Bool)

(assert (=> b!1414883 (= e!903224 (inv!18947 (c!232438 (tokens!1776 sep!3))))))

(declare-fun b!1414884 () Bool)

(declare-fun e!903225 () Bool)

(assert (=> b!1414884 (= e!903224 e!903225)))

(declare-fun res!640760 () Bool)

(assert (=> b!1414884 (= res!640760 (not ((_ is Leaf!7267) (c!232438 (tokens!1776 sep!3)))))))

(assert (=> b!1414884 (=> res!640760 e!903225)))

(declare-fun b!1414885 () Bool)

(assert (=> b!1414885 (= e!903225 (inv!18948 (c!232438 (tokens!1776 sep!3))))))

(assert (= (and d!405059 c!232514) b!1414883))

(assert (= (and d!405059 (not c!232514)) b!1414884))

(assert (= (and b!1414884 (not res!640760)) b!1414885))

(declare-fun m!1599525 () Bool)

(assert (=> b!1414883 m!1599525))

(declare-fun m!1599527 () Bool)

(assert (=> b!1414885 m!1599527))

(assert (=> b!1414638 d!405059))

(declare-fun d!405061 () Bool)

(declare-fun c!232517 () Bool)

(assert (=> d!405061 (= c!232517 ((_ is Node!4815) (c!232439 objs!24)))))

(declare-fun e!903230 () Bool)

(assert (=> d!405061 (= (inv!18938 (c!232439 objs!24)) e!903230)))

(declare-fun b!1414892 () Bool)

(declare-fun inv!18952 (Conc!4815) Bool)

(assert (=> b!1414892 (= e!903230 (inv!18952 (c!232439 objs!24)))))

(declare-fun b!1414893 () Bool)

(declare-fun e!903231 () Bool)

(assert (=> b!1414893 (= e!903230 e!903231)))

(declare-fun res!640763 () Bool)

(assert (=> b!1414893 (= res!640763 (not ((_ is Leaf!7268) (c!232439 objs!24))))))

(assert (=> b!1414893 (=> res!640763 e!903231)))

(declare-fun b!1414894 () Bool)

(declare-fun inv!18953 (Conc!4815) Bool)

(assert (=> b!1414894 (= e!903231 (inv!18953 (c!232439 objs!24)))))

(assert (= (and d!405061 c!232517) b!1414892))

(assert (= (and d!405061 (not c!232517)) b!1414893))

(assert (= (and b!1414893 (not res!640763)) b!1414894))

(declare-fun m!1599529 () Bool)

(assert (=> b!1414892 m!1599529))

(declare-fun m!1599531 () Bool)

(assert (=> b!1414894 m!1599531))

(assert (=> b!1414628 d!405061))

(declare-fun d!405063 () Bool)

(assert (=> d!405063 (= (usesJsonRules!0 acc!229) (= (rules!11058 acc!229) (rules!109 JsonLexer!399)))))

(declare-fun bs!339317 () Bool)

(assert (= bs!339317 d!405063))

(assert (=> bs!339317 m!1599089))

(assert (=> b!1414639 d!405063))

(declare-fun d!405065 () Bool)

(assert (=> d!405065 (= (usesJsonRules!0 (v!21941 lt!474682)) (= (rules!11058 (v!21941 lt!474682)) (rules!109 JsonLexer!399)))))

(declare-fun bs!339318 () Bool)

(assert (= bs!339318 d!405065))

(assert (=> bs!339318 m!1599089))

(assert (=> b!1414629 d!405065))

(declare-fun b!1414905 () Bool)

(declare-fun b_free!34799 () Bool)

(declare-fun b_next!35503 () Bool)

(assert (=> b!1414905 (= b_free!34799 (not b_next!35503))))

(declare-fun tp!401409 () Bool)

(declare-fun b_and!94791 () Bool)

(assert (=> b!1414905 (= tp!401409 b_and!94791)))

(declare-fun b_free!34801 () Bool)

(declare-fun b_next!35505 () Bool)

(assert (=> b!1414905 (= b_free!34801 (not b_next!35505))))

(declare-fun tp!401408 () Bool)

(declare-fun b_and!94793 () Bool)

(assert (=> b!1414905 (= tp!401408 b_and!94793)))

(declare-fun e!903242 () Bool)

(assert (=> b!1414905 (= e!903242 (and tp!401409 tp!401408))))

(declare-fun b!1414904 () Bool)

(declare-fun e!903241 () Bool)

(declare-fun inv!18932 (String!17251) Bool)

(declare-fun inv!18954 (TokenValueInjection!4866) Bool)

(assert (=> b!1414904 (= e!903241 (and (inv!18932 (tag!2775 (h!19862 (rules!11058 acc!229)))) (inv!18954 (transformation!2513 (h!19862 (rules!11058 acc!229)))) e!903242))))

(declare-fun b!1414903 () Bool)

(declare-fun e!903240 () Bool)

(declare-fun tp!401410 () Bool)

(assert (=> b!1414903 (= e!903240 (and e!903241 tp!401410))))

(assert (=> b!1414630 (= tp!401365 e!903240)))

(assert (= b!1414904 b!1414905))

(assert (= b!1414903 b!1414904))

(assert (= (and b!1414630 ((_ is Cons!14461) (rules!11058 acc!229))) b!1414903))

(declare-fun m!1599533 () Bool)

(assert (=> b!1414904 m!1599533))

(declare-fun m!1599535 () Bool)

(assert (=> b!1414904 m!1599535))

(declare-fun b!1414908 () Bool)

(declare-fun b_free!34803 () Bool)

(declare-fun b_next!35507 () Bool)

(assert (=> b!1414908 (= b_free!34803 (not b_next!35507))))

(declare-fun tp!401412 () Bool)

(declare-fun b_and!94795 () Bool)

(assert (=> b!1414908 (= tp!401412 b_and!94795)))

(declare-fun b_free!34805 () Bool)

(declare-fun b_next!35509 () Bool)

(assert (=> b!1414908 (= b_free!34805 (not b_next!35509))))

(declare-fun tp!401411 () Bool)

(declare-fun b_and!94797 () Bool)

(assert (=> b!1414908 (= tp!401411 b_and!94797)))

(declare-fun e!903246 () Bool)

(assert (=> b!1414908 (= e!903246 (and tp!401412 tp!401411))))

(declare-fun b!1414907 () Bool)

(declare-fun e!903245 () Bool)

(assert (=> b!1414907 (= e!903245 (and (inv!18932 (tag!2775 (h!19862 (rules!11058 sep!3)))) (inv!18954 (transformation!2513 (h!19862 (rules!11058 sep!3)))) e!903246))))

(declare-fun b!1414906 () Bool)

(declare-fun e!903244 () Bool)

(declare-fun tp!401413 () Bool)

(assert (=> b!1414906 (= e!903244 (and e!903245 tp!401413))))

(assert (=> b!1414631 (= tp!401368 e!903244)))

(assert (= b!1414907 b!1414908))

(assert (= b!1414906 b!1414907))

(assert (= (and b!1414631 ((_ is Cons!14461) (rules!11058 sep!3))) b!1414906))

(declare-fun m!1599537 () Bool)

(assert (=> b!1414907 m!1599537))

(declare-fun m!1599539 () Bool)

(assert (=> b!1414907 m!1599539))

(declare-fun e!903253 () Bool)

(declare-fun b!1414917 () Bool)

(declare-fun tp!401422 () Bool)

(declare-fun tp!401420 () Bool)

(assert (=> b!1414917 (= e!903253 (and (inv!18942 (left!12356 (c!232438 (tokens!1776 sep!3)))) tp!401420 (inv!18942 (right!12686 (c!232438 (tokens!1776 sep!3)))) tp!401422))))

(declare-fun b!1414919 () Bool)

(declare-fun e!903252 () Bool)

(declare-fun tp!401421 () Bool)

(assert (=> b!1414919 (= e!903252 tp!401421)))

(declare-fun b!1414918 () Bool)

(declare-fun inv!18955 (IArray!9633) Bool)

(assert (=> b!1414918 (= e!903253 (and (inv!18955 (xs!7541 (c!232438 (tokens!1776 sep!3)))) e!903252))))

(assert (=> b!1414638 (= tp!401367 (and (inv!18942 (c!232438 (tokens!1776 sep!3))) e!903253))))

(assert (= (and b!1414638 ((_ is Node!4814) (c!232438 (tokens!1776 sep!3)))) b!1414917))

(assert (= b!1414918 b!1414919))

(assert (= (and b!1414638 ((_ is Leaf!7267) (c!232438 (tokens!1776 sep!3)))) b!1414918))

(declare-fun m!1599541 () Bool)

(assert (=> b!1414917 m!1599541))

(declare-fun m!1599543 () Bool)

(assert (=> b!1414917 m!1599543))

(declare-fun m!1599545 () Bool)

(assert (=> b!1414918 m!1599545))

(assert (=> b!1414638 m!1598885))

(declare-fun tp!401430 () Bool)

(declare-fun e!903259 () Bool)

(declare-fun tp!401431 () Bool)

(declare-fun b!1414928 () Bool)

(assert (=> b!1414928 (= e!903259 (and (inv!18938 (left!12357 (c!232439 objs!24))) tp!401431 (inv!18938 (right!12687 (c!232439 objs!24))) tp!401430))))

(declare-fun b!1414930 () Bool)

(declare-fun e!903258 () Bool)

(declare-fun tp!401429 () Bool)

(assert (=> b!1414930 (= e!903258 tp!401429)))

(declare-fun b!1414929 () Bool)

(declare-fun inv!18956 (IArray!9635) Bool)

(assert (=> b!1414929 (= e!903259 (and (inv!18956 (xs!7542 (c!232439 objs!24))) e!903258))))

(assert (=> b!1414628 (= tp!401364 (and (inv!18938 (c!232439 objs!24)) e!903259))))

(assert (= (and b!1414628 ((_ is Node!4815) (c!232439 objs!24))) b!1414928))

(assert (= b!1414929 b!1414930))

(assert (= (and b!1414628 ((_ is Leaf!7268) (c!232439 objs!24))) b!1414929))

(declare-fun m!1599547 () Bool)

(assert (=> b!1414928 m!1599547))

(declare-fun m!1599549 () Bool)

(assert (=> b!1414928 m!1599549))

(declare-fun m!1599551 () Bool)

(assert (=> b!1414929 m!1599551))

(assert (=> b!1414628 m!1598887))

(declare-fun tp!401434 () Bool)

(declare-fun b!1414931 () Bool)

(declare-fun tp!401432 () Bool)

(declare-fun e!903261 () Bool)

(assert (=> b!1414931 (= e!903261 (and (inv!18942 (left!12356 (c!232438 (tokens!1776 acc!229)))) tp!401432 (inv!18942 (right!12686 (c!232438 (tokens!1776 acc!229)))) tp!401434))))

(declare-fun b!1414933 () Bool)

(declare-fun e!903260 () Bool)

(declare-fun tp!401433 () Bool)

(assert (=> b!1414933 (= e!903260 tp!401433)))

(declare-fun b!1414932 () Bool)

(assert (=> b!1414932 (= e!903261 (and (inv!18955 (xs!7541 (c!232438 (tokens!1776 acc!229)))) e!903260))))

(assert (=> b!1414634 (= tp!401366 (and (inv!18942 (c!232438 (tokens!1776 acc!229))) e!903261))))

(assert (= (and b!1414634 ((_ is Node!4814) (c!232438 (tokens!1776 acc!229)))) b!1414931))

(assert (= b!1414932 b!1414933))

(assert (= (and b!1414634 ((_ is Leaf!7267) (c!232438 (tokens!1776 acc!229)))) b!1414932))

(declare-fun m!1599553 () Bool)

(assert (=> b!1414931 m!1599553))

(declare-fun m!1599555 () Bool)

(assert (=> b!1414931 m!1599555))

(declare-fun m!1599557 () Bool)

(assert (=> b!1414932 m!1599557))

(assert (=> b!1414634 m!1598917))

(check-sat b_and!94793 (not bm!95371) (not b!1414929) (not b!1414930) (not d!405035) (not b!1414707) (not bm!95258) (not b!1414906) (not bm!95264) (not b!1414880) (not bm!95374) (not bm!95254) (not bm!95375) (not b!1414878) (not bm!95260) (not b!1414785) (not b_next!35507) (not bm!95229) (not d!405033) (not b!1414628) (not bm!95245) (not bm!95227) (not b!1414931) (not b!1414907) (not bm!95259) (not b!1414881) (not bm!95352) (not d!405057) b_and!94795 (not bm!95228) (not bm!95348) (not bm!95354) (not b!1414904) (not d!404993) (not d!405055) (not bm!95255) (not b!1414918) (not b!1414877) (not d!405063) (not b!1414772) (not d!405025) (not d!405021) (not b_next!35509) (not bm!95233) (not b!1414757) (not b!1414882) (not b!1414782) (not bm!95358) (not b!1414705) (not b!1414755) (not b!1414766) (not bm!95350) (not b!1414720) (not bm!95241) (not bm!95364) (not bm!95257) b_and!94791 (not b!1414704) (not bm!95235) (not bm!95370) (not bm!95234) (not bm!95344) (not b!1414879) (not b!1414713) (not b!1414917) (not d!405029) (not d!405027) (not b!1414885) (not d!405031) (not d!405053) (not b!1414717) (not bm!95381) (not b_next!35505) (not bm!95351) (not bm!95263) (not b!1414932) (not bm!95365) (not b!1414933) (not b!1414634) (not bm!95247) (not bm!95256) (not b!1414778) (not bm!95380) (not bm!95372) (not b!1414919) (not bm!95373) (not b!1414769) (not bm!95248) (not b!1414784) (not b_next!35503) (not b!1414883) (not b!1414928) (not bm!95253) (not b!1414903) (not bm!95377) (not bm!95345) (not d!404997) (not bm!95237) (not d!405065) (not d!405019) (not b!1414892) (not bm!95362) (not b!1414719) (not b!1414638) (not bm!95346) (not bm!95231) (not bm!95376) b_and!94797 (not b!1414770) (not d!404995) (not b!1414894))
(check-sat (not b_next!35507) b_and!94795 b_and!94793 (not b_next!35509) b_and!94791 (not b_next!35505) (not b_next!35503) b_and!94797)
