; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183668 () Bool)

(assert start!183668)

(declare-fun b!1843606 () Bool)

(declare-fun e!1178081 () Bool)

(declare-datatypes ((List!20365 0))(
  ( (Nil!20295) (Cons!20295 (h!25696 (_ BitVec 16)) (t!171860 List!20365)) )
))
(declare-datatypes ((TokenValue!3744 0))(
  ( (FloatLiteralValue!7488 (text!26653 List!20365)) (TokenValueExt!3743 (__x!12787 Int)) (Broken!18720 (value!113915 List!20365)) (Object!3813) (End!3744) (Def!3744) (Underscore!3744) (Match!3744) (Else!3744) (Error!3744) (Case!3744) (If!3744) (Extends!3744) (Abstract!3744) (Class!3744) (Val!3744) (DelimiterValue!7488 (del!3804 List!20365)) (KeywordValue!3750 (value!113916 List!20365)) (CommentValue!7488 (value!113917 List!20365)) (WhitespaceValue!7488 (value!113918 List!20365)) (IndentationValue!3744 (value!113919 List!20365)) (String!23233) (Int32!3744) (Broken!18721 (value!113920 List!20365)) (Boolean!3745) (Unit!35003) (OperatorValue!3747 (op!3804 List!20365)) (IdentifierValue!7488 (value!113921 List!20365)) (IdentifierValue!7489 (value!113922 List!20365)) (WhitespaceValue!7489 (value!113923 List!20365)) (True!7488) (False!7488) (Broken!18722 (value!113924 List!20365)) (Broken!18723 (value!113925 List!20365)) (True!7489) (RightBrace!3744) (RightBracket!3744) (Colon!3744) (Null!3744) (Comma!3744) (LeftBracket!3744) (False!7489) (LeftBrace!3744) (ImaginaryLiteralValue!3744 (text!26654 List!20365)) (StringLiteralValue!11232 (value!113926 List!20365)) (EOFValue!3744 (value!113927 List!20365)) (IdentValue!3744 (value!113928 List!20365)) (DelimiterValue!7489 (value!113929 List!20365)) (DedentValue!3744 (value!113930 List!20365)) (NewLineValue!3744 (value!113931 List!20365)) (IntegerValue!11232 (value!113932 (_ BitVec 32)) (text!26655 List!20365)) (IntegerValue!11233 (value!113933 Int) (text!26656 List!20365)) (Times!3744) (Or!3744) (Equal!3744) (Minus!3744) (Broken!18724 (value!113934 List!20365)) (And!3744) (Div!3744) (LessEqual!3744) (Mod!3744) (Concat!8724) (Not!3744) (Plus!3744) (SpaceValue!3744 (value!113935 List!20365)) (IntegerValue!11234 (value!113936 Int) (text!26657 List!20365)) (StringLiteralValue!11233 (text!26658 List!20365)) (FloatLiteralValue!7489 (text!26659 List!20365)) (BytesLiteralValue!3744 (value!113937 List!20365)) (CommentValue!7489 (value!113938 List!20365)) (StringLiteralValue!11234 (value!113939 List!20365)) (ErrorTokenValue!3744 (msg!3805 List!20365)) )
))
(declare-datatypes ((Regex!4980 0))(
  ( (ElementMatch!4980 (c!301018 (_ BitVec 16))) (Concat!8725 (regOne!10472 Regex!4980) (regTwo!10472 Regex!4980)) (EmptyExpr!4980) (Star!4980 (reg!5309 Regex!4980)) (EmptyLang!4980) (Union!4980 (regOne!10473 Regex!4980) (regTwo!10473 Regex!4980)) )
))
(declare-datatypes ((String!23234 0))(
  ( (String!23235 (value!113940 String)) )
))
(declare-datatypes ((IArray!13437 0))(
  ( (IArray!13438 (innerList!6776 List!20365)) )
))
(declare-datatypes ((Conc!6716 0))(
  ( (Node!6716 (left!16239 Conc!6716) (right!16569 Conc!6716) (csize!13662 Int) (cheight!6927 Int)) (Leaf!9810 (xs!9592 IArray!13437) (csize!13663 Int)) (Empty!6716) )
))
(declare-datatypes ((BalanceConc!13352 0))(
  ( (BalanceConc!13353 (c!301019 Conc!6716)) )
))
(declare-datatypes ((TokenValueInjection!7144 0))(
  ( (TokenValueInjection!7145 (toValue!5207 Int) (toChars!5066 Int)) )
))
(declare-datatypes ((Rule!7104 0))(
  ( (Rule!7105 (regex!3652 Regex!4980) (tag!4066 String!23234) (isSeparator!3652 Bool) (transformation!3652 TokenValueInjection!7144)) )
))
(declare-datatypes ((Token!6858 0))(
  ( (Token!6859 (value!113941 TokenValue!3744) (rule!5846 Rule!7104) (size!16091 Int) (originalCharacters!4460 List!20365)) )
))
(declare-datatypes ((List!20366 0))(
  ( (Nil!20296) (Cons!20296 (h!25697 Token!6858) (t!171861 List!20366)) )
))
(declare-datatypes ((IArray!13439 0))(
  ( (IArray!13440 (innerList!6777 List!20366)) )
))
(declare-datatypes ((Conc!6717 0))(
  ( (Node!6717 (left!16240 Conc!6717) (right!16570 Conc!6717) (csize!13664 Int) (cheight!6928 Int)) (Leaf!9811 (xs!9593 IArray!13439) (csize!13665 Int)) (Empty!6717) )
))
(declare-datatypes ((List!20367 0))(
  ( (Nil!20297) (Cons!20297 (h!25698 Rule!7104) (t!171862 List!20367)) )
))
(declare-datatypes ((BalanceConc!13354 0))(
  ( (BalanceConc!13355 (c!301020 Conc!6717)) )
))
(declare-datatypes ((PrintableTokens!1222 0))(
  ( (PrintableTokens!1223 (rules!15011 List!20367) (tokens!2435 BalanceConc!13354)) )
))
(declare-datatypes ((tuple2!19676 0))(
  ( (tuple2!19677 (_1!11240 Int) (_2!11240 PrintableTokens!1222)) )
))
(declare-datatypes ((List!20368 0))(
  ( (Nil!20298) (Cons!20298 (h!25699 tuple2!19676) (t!171863 List!20368)) )
))
(declare-fun l!2176 () List!20368)

(declare-fun tp!521201 () Bool)

(declare-fun inv!26547 (Conc!6717) Bool)

(assert (=> b!1843606 (= e!1178081 (and (inv!26547 (c!301020 (tokens!2435 (_2!11240 (h!25699 l!2176))))) tp!521201))))

(declare-fun b!1843603 () Bool)

(declare-fun e!1178082 () Bool)

(declare-fun ListPrimitiveSize!123 (List!20368) Int)

(assert (=> b!1843603 (= e!1178082 (< (ListPrimitiveSize!123 l!2176) 0))))

(declare-fun e!1178080 () Bool)

(declare-fun b!1843604 () Bool)

(declare-fun e!1178079 () Bool)

(declare-fun tp!521203 () Bool)

(declare-fun inv!26548 (PrintableTokens!1222) Bool)

(assert (=> b!1843604 (= e!1178080 (and (inv!26548 (_2!11240 (h!25699 l!2176))) e!1178079 tp!521203))))

(declare-fun res!828153 () Bool)

(assert (=> start!183668 (=> (not res!828153) (not e!1178082))))

(declare-fun lambda!72363 () Int)

(declare-fun forall!4368 (List!20368 Int) Bool)

(assert (=> start!183668 (= res!828153 (forall!4368 l!2176 lambda!72363))))

(assert (=> start!183668 e!1178082))

(assert (=> start!183668 e!1178080))

(declare-fun b!1843605 () Bool)

(declare-fun tp!521202 () Bool)

(declare-fun inv!26549 (BalanceConc!13354) Bool)

(assert (=> b!1843605 (= e!1178079 (and tp!521202 (inv!26549 (tokens!2435 (_2!11240 (h!25699 l!2176)))) e!1178081))))

(assert (= (and start!183668 res!828153) b!1843603))

(assert (= b!1843605 b!1843606))

(assert (= b!1843604 b!1843605))

(assert (= (and start!183668 (is-Cons!20298 l!2176)) b!1843604))

(declare-fun m!2272107 () Bool)

(assert (=> b!1843606 m!2272107))

(declare-fun m!2272109 () Bool)

(assert (=> b!1843604 m!2272109))

(declare-fun m!2272111 () Bool)

(assert (=> start!183668 m!2272111))

(declare-fun m!2272113 () Bool)

(assert (=> b!1843603 m!2272113))

(declare-fun m!2272115 () Bool)

(assert (=> b!1843605 m!2272115))

(push 1)

(assert (not b!1843606))

(assert (not start!183668))

(assert (not b!1843604))

(assert (not b!1843605))

(assert (not b!1843603))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!564302 () Bool)

(declare-fun lt!714583 () Int)

(assert (=> d!564302 (>= lt!714583 0)))

(declare-fun e!1178097 () Int)

(assert (=> d!564302 (= lt!714583 e!1178097)))

(declare-fun c!301026 () Bool)

(assert (=> d!564302 (= c!301026 (is-Nil!20298 l!2176))))

(assert (=> d!564302 (= (ListPrimitiveSize!123 l!2176) lt!714583)))

(declare-fun b!1843623 () Bool)

(assert (=> b!1843623 (= e!1178097 0)))

(declare-fun b!1843624 () Bool)

(assert (=> b!1843624 (= e!1178097 (+ 1 (ListPrimitiveSize!123 (t!171863 l!2176))))))

(assert (= (and d!564302 c!301026) b!1843623))

(assert (= (and d!564302 (not c!301026)) b!1843624))

(declare-fun m!2272127 () Bool)

(assert (=> b!1843624 m!2272127))

(assert (=> b!1843603 d!564302))

(declare-fun d!564304 () Bool)

(declare-fun res!828166 () Bool)

(declare-fun e!1178109 () Bool)

(assert (=> d!564304 (=> (not res!828166) (not e!1178109))))

(declare-fun isEmpty!12764 (List!20367) Bool)

(assert (=> d!564304 (= res!828166 (not (isEmpty!12764 (rules!15011 (_2!11240 (h!25699 l!2176))))))))

(assert (=> d!564304 (= (inv!26548 (_2!11240 (h!25699 l!2176))) e!1178109)))

(declare-fun b!1843646 () Bool)

(declare-fun res!828167 () Bool)

(assert (=> b!1843646 (=> (not res!828167) (not e!1178109))))

(declare-datatypes ((LexerInterface!3280 0))(
  ( (LexerInterfaceExt!3277 (__x!12789 Int)) (Lexer!3278) )
))
(declare-fun rulesInvariant!2949 (LexerInterface!3280 List!20367) Bool)

(assert (=> b!1843646 (= res!828167 (rulesInvariant!2949 Lexer!3278 (rules!15011 (_2!11240 (h!25699 l!2176)))))))

(declare-fun b!1843647 () Bool)

(declare-fun res!828168 () Bool)

(assert (=> b!1843647 (=> (not res!828168) (not e!1178109))))

(declare-fun rulesProduceEachTokenIndividually!917 (LexerInterface!3280 List!20367 BalanceConc!13354) Bool)

(assert (=> b!1843647 (= res!828168 (rulesProduceEachTokenIndividually!917 Lexer!3278 (rules!15011 (_2!11240 (h!25699 l!2176))) (tokens!2435 (_2!11240 (h!25699 l!2176)))))))

(declare-fun b!1843648 () Bool)

(declare-fun separableTokens!288 (LexerInterface!3280 BalanceConc!13354 List!20367) Bool)

(assert (=> b!1843648 (= e!1178109 (separableTokens!288 Lexer!3278 (tokens!2435 (_2!11240 (h!25699 l!2176))) (rules!15011 (_2!11240 (h!25699 l!2176)))))))

(assert (= (and d!564304 res!828166) b!1843646))

(assert (= (and b!1843646 res!828167) b!1843647))

(assert (= (and b!1843647 res!828168) b!1843648))

(declare-fun m!2272135 () Bool)

(assert (=> d!564304 m!2272135))

(declare-fun m!2272137 () Bool)

(assert (=> b!1843646 m!2272137))

(declare-fun m!2272139 () Bool)

(assert (=> b!1843647 m!2272139))

(declare-fun m!2272141 () Bool)

(assert (=> b!1843648 m!2272141))

(assert (=> b!1843604 d!564304))

(declare-fun d!564312 () Bool)

(declare-fun res!828173 () Bool)

(declare-fun e!1178114 () Bool)

(assert (=> d!564312 (=> res!828173 e!1178114)))

(assert (=> d!564312 (= res!828173 (is-Nil!20298 l!2176))))

(assert (=> d!564312 (= (forall!4368 l!2176 lambda!72363) e!1178114)))

(declare-fun b!1843653 () Bool)

(declare-fun e!1178115 () Bool)

(assert (=> b!1843653 (= e!1178114 e!1178115)))

(declare-fun res!828174 () Bool)

(assert (=> b!1843653 (=> (not res!828174) (not e!1178115))))

(declare-fun dynLambda!10093 (Int tuple2!19676) Bool)

(assert (=> b!1843653 (= res!828174 (dynLambda!10093 lambda!72363 (h!25699 l!2176)))))

(declare-fun b!1843654 () Bool)

(assert (=> b!1843654 (= e!1178115 (forall!4368 (t!171863 l!2176) lambda!72363))))

(assert (= (and d!564312 (not res!828173)) b!1843653))

(assert (= (and b!1843653 res!828174) b!1843654))

(declare-fun b_lambda!61137 () Bool)

(assert (=> (not b_lambda!61137) (not b!1843653)))

(declare-fun m!2272143 () Bool)

(assert (=> b!1843653 m!2272143))

(declare-fun m!2272145 () Bool)

(assert (=> b!1843654 m!2272145))

(assert (=> start!183668 d!564312))

(declare-fun d!564314 () Bool)

(declare-fun isBalanced!2091 (Conc!6717) Bool)

(assert (=> d!564314 (= (inv!26549 (tokens!2435 (_2!11240 (h!25699 l!2176)))) (isBalanced!2091 (c!301020 (tokens!2435 (_2!11240 (h!25699 l!2176))))))))

(declare-fun bs!408792 () Bool)

(assert (= bs!408792 d!564314))

(declare-fun m!2272147 () Bool)

(assert (=> bs!408792 m!2272147))

(assert (=> b!1843605 d!564314))

(declare-fun d!564316 () Bool)

(declare-fun c!301035 () Bool)

(assert (=> d!564316 (= c!301035 (is-Node!6717 (c!301020 (tokens!2435 (_2!11240 (h!25699 l!2176))))))))

(declare-fun e!1178120 () Bool)

(assert (=> d!564316 (= (inv!26547 (c!301020 (tokens!2435 (_2!11240 (h!25699 l!2176))))) e!1178120)))

(declare-fun b!1843661 () Bool)

(declare-fun inv!26553 (Conc!6717) Bool)

(assert (=> b!1843661 (= e!1178120 (inv!26553 (c!301020 (tokens!2435 (_2!11240 (h!25699 l!2176))))))))

(declare-fun b!1843662 () Bool)

(declare-fun e!1178121 () Bool)

(assert (=> b!1843662 (= e!1178120 e!1178121)))

(declare-fun res!828177 () Bool)

(assert (=> b!1843662 (= res!828177 (not (is-Leaf!9811 (c!301020 (tokens!2435 (_2!11240 (h!25699 l!2176)))))))))

(assert (=> b!1843662 (=> res!828177 e!1178121)))

(declare-fun b!1843663 () Bool)

(declare-fun inv!26554 (Conc!6717) Bool)

(assert (=> b!1843663 (= e!1178121 (inv!26554 (c!301020 (tokens!2435 (_2!11240 (h!25699 l!2176))))))))

(assert (= (and d!564316 c!301035) b!1843661))

(assert (= (and d!564316 (not c!301035)) b!1843662))

(assert (= (and b!1843662 (not res!828177)) b!1843663))

(declare-fun m!2272149 () Bool)

(assert (=> b!1843661 m!2272149))

(declare-fun m!2272151 () Bool)

(assert (=> b!1843663 m!2272151))

(assert (=> b!1843606 d!564316))

(declare-fun b!1843674 () Bool)

(declare-fun e!1178128 () Bool)

(declare-fun tp!521220 () Bool)

(assert (=> b!1843674 (= e!1178128 (and (inv!26547 (c!301020 (tokens!2435 (_2!11240 (h!25699 (t!171863 l!2176)))))) tp!521220))))

(declare-fun tp!521219 () Bool)

(declare-fun b!1843673 () Bool)

(declare-fun e!1178129 () Bool)

(assert (=> b!1843673 (= e!1178129 (and tp!521219 (inv!26549 (tokens!2435 (_2!11240 (h!25699 (t!171863 l!2176))))) e!1178128))))

(declare-fun tp!521221 () Bool)

(declare-fun e!1178130 () Bool)

(declare-fun b!1843672 () Bool)

(assert (=> b!1843672 (= e!1178130 (and (inv!26548 (_2!11240 (h!25699 (t!171863 l!2176)))) e!1178129 tp!521221))))

(assert (=> b!1843604 (= tp!521203 e!1178130)))

(assert (= b!1843673 b!1843674))

(assert (= b!1843672 b!1843673))

(assert (= (and b!1843604 (is-Cons!20298 (t!171863 l!2176))) b!1843672))

(declare-fun m!2272153 () Bool)

(assert (=> b!1843674 m!2272153))

(declare-fun m!2272155 () Bool)

(assert (=> b!1843673 m!2272155))

(declare-fun m!2272157 () Bool)

(assert (=> b!1843672 m!2272157))

(declare-fun b!1843685 () Bool)

(declare-fun b_free!51519 () Bool)

(declare-fun b_next!52223 () Bool)

(assert (=> b!1843685 (= b_free!51519 (not b_next!52223))))

(declare-fun tp!521229 () Bool)

(declare-fun b_and!143669 () Bool)

(assert (=> b!1843685 (= tp!521229 b_and!143669)))

(declare-fun b_free!51521 () Bool)

(declare-fun b_next!52225 () Bool)

(assert (=> b!1843685 (= b_free!51521 (not b_next!52225))))

(declare-fun tp!521230 () Bool)

(declare-fun b_and!143671 () Bool)

(assert (=> b!1843685 (= tp!521230 b_and!143671)))

(declare-fun e!1178142 () Bool)

(assert (=> b!1843685 (= e!1178142 (and tp!521229 tp!521230))))

(declare-fun b!1843684 () Bool)

(declare-fun e!1178141 () Bool)

(declare-fun inv!26544 (String!23234) Bool)

(declare-fun inv!26555 (TokenValueInjection!7144) Bool)

(assert (=> b!1843684 (= e!1178141 (and (inv!26544 (tag!4066 (h!25698 (rules!15011 (_2!11240 (h!25699 l!2176)))))) (inv!26555 (transformation!3652 (h!25698 (rules!15011 (_2!11240 (h!25699 l!2176)))))) e!1178142))))

(declare-fun b!1843683 () Bool)

(declare-fun e!1178139 () Bool)

(declare-fun tp!521228 () Bool)

(assert (=> b!1843683 (= e!1178139 (and e!1178141 tp!521228))))

(assert (=> b!1843605 (= tp!521202 e!1178139)))

(assert (= b!1843684 b!1843685))

(assert (= b!1843683 b!1843684))

(assert (= (and b!1843605 (is-Cons!20297 (rules!15011 (_2!11240 (h!25699 l!2176))))) b!1843683))

(declare-fun m!2272159 () Bool)

(assert (=> b!1843684 m!2272159))

(declare-fun m!2272161 () Bool)

(assert (=> b!1843684 m!2272161))

(declare-fun e!1178148 () Bool)

(declare-fun tp!521238 () Bool)

(declare-fun tp!521237 () Bool)

(declare-fun b!1843694 () Bool)

(assert (=> b!1843694 (= e!1178148 (and (inv!26547 (left!16240 (c!301020 (tokens!2435 (_2!11240 (h!25699 l!2176)))))) tp!521237 (inv!26547 (right!16570 (c!301020 (tokens!2435 (_2!11240 (h!25699 l!2176)))))) tp!521238))))

(declare-fun b!1843696 () Bool)

(declare-fun e!1178147 () Bool)

(declare-fun tp!521239 () Bool)

(assert (=> b!1843696 (= e!1178147 tp!521239)))

(declare-fun b!1843695 () Bool)

(declare-fun inv!26556 (IArray!13439) Bool)

(assert (=> b!1843695 (= e!1178148 (and (inv!26556 (xs!9593 (c!301020 (tokens!2435 (_2!11240 (h!25699 l!2176)))))) e!1178147))))

(assert (=> b!1843606 (= tp!521201 (and (inv!26547 (c!301020 (tokens!2435 (_2!11240 (h!25699 l!2176))))) e!1178148))))

(assert (= (and b!1843606 (is-Node!6717 (c!301020 (tokens!2435 (_2!11240 (h!25699 l!2176)))))) b!1843694))

(assert (= b!1843695 b!1843696))

(assert (= (and b!1843606 (is-Leaf!9811 (c!301020 (tokens!2435 (_2!11240 (h!25699 l!2176)))))) b!1843695))

(declare-fun m!2272163 () Bool)

(assert (=> b!1843694 m!2272163))

(declare-fun m!2272165 () Bool)

(assert (=> b!1843694 m!2272165))

(declare-fun m!2272167 () Bool)

(assert (=> b!1843695 m!2272167))

(assert (=> b!1843606 m!2272107))

(declare-fun b_lambda!61139 () Bool)

(assert (= b_lambda!61137 (or start!183668 b_lambda!61139)))

(declare-fun bs!408793 () Bool)

(declare-fun d!564318 () Bool)

(assert (= bs!408793 (and d!564318 start!183668)))

(declare-fun usesJsonRules!0 (PrintableTokens!1222) Bool)

(assert (=> bs!408793 (= (dynLambda!10093 lambda!72363 (h!25699 l!2176)) (usesJsonRules!0 (_2!11240 (h!25699 l!2176))))))

(declare-fun m!2272169 () Bool)

(assert (=> bs!408793 m!2272169))

(assert (=> b!1843653 d!564318))

(push 1)

(assert (not b!1843673))

(assert (not b!1843661))

(assert (not b!1843654))

(assert (not b!1843696))

(assert b_and!143669)

(assert b_and!143671)

(assert (not b!1843647))

(assert (not b!1843683))

(assert (not b!1843674))

(assert (not b!1843624))

(assert (not b!1843695))

(assert (not d!564304))

(assert (not b_next!52223))

(assert (not b!1843663))

(assert (not b_lambda!61139))

(assert (not b!1843606))

(assert (not d!564314))

(assert (not b_next!52225))

(assert (not b!1843694))

(assert (not b!1843648))

(assert (not b!1843672))

(assert (not bs!408793))

(assert (not b!1843646))

(assert (not b!1843684))

(check-sat)

(pop 1)

(push 1)

(assert b_and!143671)

(assert b_and!143669)

(assert (not b_next!52223))

(assert (not b_next!52225))

(check-sat)

(pop 1)

