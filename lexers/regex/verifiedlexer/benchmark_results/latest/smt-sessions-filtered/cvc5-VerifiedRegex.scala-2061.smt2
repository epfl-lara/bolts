; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!104900 () Bool)

(assert start!104900)

(declare-fun b!1183188 () Bool)

(declare-fun b_free!28293 () Bool)

(declare-fun b_next!28997 () Bool)

(assert (=> b!1183188 (= b_free!28293 (not b_next!28997))))

(declare-fun tp!337243 () Bool)

(declare-fun b_and!81333 () Bool)

(assert (=> b!1183188 (= tp!337243 b_and!81333)))

(declare-fun b_free!28295 () Bool)

(declare-fun b_next!28999 () Bool)

(assert (=> b!1183188 (= b_free!28295 (not b_next!28999))))

(declare-fun tp!337239 () Bool)

(declare-fun b_and!81335 () Bool)

(assert (=> b!1183188 (= tp!337239 b_and!81335)))

(declare-fun b!1183197 () Bool)

(declare-fun b_free!28297 () Bool)

(declare-fun b_next!29001 () Bool)

(assert (=> b!1183197 (= b_free!28297 (not b_next!29001))))

(declare-fun tp!337240 () Bool)

(declare-fun b_and!81337 () Bool)

(assert (=> b!1183197 (= tp!337240 b_and!81337)))

(declare-fun b_free!28299 () Bool)

(declare-fun b_next!29003 () Bool)

(assert (=> b!1183197 (= b_free!28299 (not b_next!29003))))

(declare-fun tp!337244 () Bool)

(declare-fun b_and!81339 () Bool)

(assert (=> b!1183197 (= tp!337244 b_and!81339)))

(declare-fun b!1183212 () Bool)

(declare-fun e!759702 () Bool)

(assert (=> b!1183212 (= e!759702 true)))

(declare-fun b!1183211 () Bool)

(declare-fun e!759701 () Bool)

(assert (=> b!1183211 (= e!759701 e!759702)))

(declare-fun b!1183210 () Bool)

(declare-fun e!759700 () Bool)

(assert (=> b!1183210 (= e!759700 e!759701)))

(declare-fun b!1183196 () Bool)

(assert (=> b!1183196 e!759700))

(assert (= b!1183211 b!1183212))

(assert (= b!1183210 b!1183211))

(declare-datatypes ((C!6982 0))(
  ( (C!6983 (val!3787 Int)) )
))
(declare-datatypes ((List!11840 0))(
  ( (Nil!11816) (Cons!11816 (h!17217 C!6982) (t!111612 List!11840)) )
))
(declare-datatypes ((IArray!7749 0))(
  ( (IArray!7750 (innerList!3932 List!11840)) )
))
(declare-datatypes ((Conc!3872 0))(
  ( (Node!3872 (left!10291 Conc!3872) (right!10621 Conc!3872) (csize!7974 Int) (cheight!4083 Int)) (Leaf!5934 (xs!6577 IArray!7749) (csize!7975 Int)) (Empty!3872) )
))
(declare-datatypes ((List!11841 0))(
  ( (Nil!11817) (Cons!11817 (h!17218 (_ BitVec 16)) (t!111613 List!11841)) )
))
(declare-datatypes ((BalanceConc!7766 0))(
  ( (BalanceConc!7767 (c!196948 Conc!3872)) )
))
(declare-datatypes ((TokenValue!2128 0))(
  ( (FloatLiteralValue!4256 (text!15341 List!11841)) (TokenValueExt!2127 (__x!7967 Int)) (Broken!10640 (value!66799 List!11841)) (Object!2151) (End!2128) (Def!2128) (Underscore!2128) (Match!2128) (Else!2128) (Error!2128) (Case!2128) (If!2128) (Extends!2128) (Abstract!2128) (Class!2128) (Val!2128) (DelimiterValue!4256 (del!2188 List!11841)) (KeywordValue!2134 (value!66800 List!11841)) (CommentValue!4256 (value!66801 List!11841)) (WhitespaceValue!4256 (value!66802 List!11841)) (IndentationValue!2128 (value!66803 List!11841)) (String!14309) (Int32!2128) (Broken!10641 (value!66804 List!11841)) (Boolean!2129) (Unit!18136) (OperatorValue!2131 (op!2188 List!11841)) (IdentifierValue!4256 (value!66805 List!11841)) (IdentifierValue!4257 (value!66806 List!11841)) (WhitespaceValue!4257 (value!66807 List!11841)) (True!4256) (False!4256) (Broken!10642 (value!66808 List!11841)) (Broken!10643 (value!66809 List!11841)) (True!4257) (RightBrace!2128) (RightBracket!2128) (Colon!2128) (Null!2128) (Comma!2128) (LeftBracket!2128) (False!4257) (LeftBrace!2128) (ImaginaryLiteralValue!2128 (text!15342 List!11841)) (StringLiteralValue!6384 (value!66810 List!11841)) (EOFValue!2128 (value!66811 List!11841)) (IdentValue!2128 (value!66812 List!11841)) (DelimiterValue!4257 (value!66813 List!11841)) (DedentValue!2128 (value!66814 List!11841)) (NewLineValue!2128 (value!66815 List!11841)) (IntegerValue!6384 (value!66816 (_ BitVec 32)) (text!15343 List!11841)) (IntegerValue!6385 (value!66817 Int) (text!15344 List!11841)) (Times!2128) (Or!2128) (Equal!2128) (Minus!2128) (Broken!10644 (value!66818 List!11841)) (And!2128) (Div!2128) (LessEqual!2128) (Mod!2128) (Concat!5460) (Not!2128) (Plus!2128) (SpaceValue!2128 (value!66819 List!11841)) (IntegerValue!6386 (value!66820 Int) (text!15345 List!11841)) (StringLiteralValue!6385 (text!15346 List!11841)) (FloatLiteralValue!4257 (text!15347 List!11841)) (BytesLiteralValue!2128 (value!66821 List!11841)) (CommentValue!4257 (value!66822 List!11841)) (StringLiteralValue!6386 (value!66823 List!11841)) (ErrorTokenValue!2128 (msg!2189 List!11841)) )
))
(declare-datatypes ((Regex!3332 0))(
  ( (ElementMatch!3332 (c!196949 C!6982)) (Concat!5461 (regOne!7176 Regex!3332) (regTwo!7176 Regex!3332)) (EmptyExpr!3332) (Star!3332 (reg!3661 Regex!3332)) (EmptyLang!3332) (Union!3332 (regOne!7177 Regex!3332) (regTwo!7177 Regex!3332)) )
))
(declare-datatypes ((String!14310 0))(
  ( (String!14311 (value!66824 String)) )
))
(declare-datatypes ((TokenValueInjection!3956 0))(
  ( (TokenValueInjection!3957 (toValue!3175 Int) (toChars!3034 Int)) )
))
(declare-datatypes ((Rule!3924 0))(
  ( (Rule!3925 (regex!2062 Regex!3332) (tag!2324 String!14310) (isSeparator!2062 Bool) (transformation!2062 TokenValueInjection!3956)) )
))
(declare-datatypes ((List!11842 0))(
  ( (Nil!11818) (Cons!11818 (h!17219 Rule!3924) (t!111614 List!11842)) )
))
(declare-fun rules!4386 () List!11842)

(assert (= (and b!1183196 (is-Cons!11818 rules!4386)) b!1183210))

(declare-fun order!7289 () Int)

(declare-fun lambda!48742 () Int)

(declare-fun order!7287 () Int)

(declare-fun dynLambda!5241 (Int Int) Int)

(declare-fun dynLambda!5242 (Int Int) Int)

(assert (=> b!1183212 (< (dynLambda!5241 order!7287 (toValue!3175 (transformation!2062 (h!17219 rules!4386)))) (dynLambda!5242 order!7289 lambda!48742))))

(declare-fun order!7291 () Int)

(declare-fun dynLambda!5243 (Int Int) Int)

(assert (=> b!1183212 (< (dynLambda!5243 order!7291 (toChars!3034 (transformation!2062 (h!17219 rules!4386)))) (dynLambda!5242 order!7289 lambda!48742))))

(declare-fun b!1183184 () Bool)

(declare-fun res!534696 () Bool)

(declare-fun e!759685 () Bool)

(assert (=> b!1183184 (=> (not res!534696) (not e!759685))))

(declare-datatypes ((Token!3786 0))(
  ( (Token!3787 (value!66825 TokenValue!2128) (rule!3483 Rule!3924) (size!9334 Int) (originalCharacters!2616 List!11840)) )
))
(declare-datatypes ((List!11843 0))(
  ( (Nil!11819) (Cons!11819 (h!17220 Token!3786) (t!111615 List!11843)) )
))
(declare-fun l!6534 () List!11843)

(declare-datatypes ((LexerInterface!1757 0))(
  ( (LexerInterfaceExt!1754 (__x!7968 Int)) (Lexer!1755) )
))
(declare-fun thiss!27592 () LexerInterface!1757)

(declare-fun rulesProduceEachTokenIndividuallyList!623 (LexerInterface!1757 List!11842 List!11843) Bool)

(assert (=> b!1183184 (= res!534696 (rulesProduceEachTokenIndividuallyList!623 thiss!27592 rules!4386 (t!111615 l!6534)))))

(declare-fun e!759689 () Bool)

(declare-fun tp!337237 () Bool)

(declare-fun e!759681 () Bool)

(declare-fun b!1183185 () Bool)

(declare-fun inv!21 (TokenValue!2128) Bool)

(assert (=> b!1183185 (= e!759689 (and (inv!21 (value!66825 (h!17220 l!6534))) e!759681 tp!337237))))

(declare-fun e!759687 () Bool)

(declare-fun b!1183186 () Bool)

(declare-fun lt!407170 () List!11843)

(assert (=> b!1183186 (= e!759687 (rulesProduceEachTokenIndividuallyList!623 thiss!27592 rules!4386 (t!111615 lt!407170)))))

(declare-fun b!1183187 () Bool)

(declare-fun e!759690 () Bool)

(declare-fun e!759684 () Bool)

(declare-fun tp!337242 () Bool)

(assert (=> b!1183187 (= e!759690 (and e!759684 tp!337242))))

(declare-fun e!759682 () Bool)

(assert (=> b!1183188 (= e!759682 (and tp!337243 tp!337239))))

(declare-fun b!1183189 () Bool)

(declare-fun res!534699 () Bool)

(assert (=> b!1183189 (=> (not res!534699) (not e!759685))))

(assert (=> b!1183189 (= res!534699 (rulesProduceEachTokenIndividuallyList!623 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1183190 () Bool)

(declare-fun res!534701 () Bool)

(assert (=> b!1183190 (=> (not res!534701) (not e!759685))))

(declare-fun isEmpty!7127 (List!11842) Bool)

(assert (=> b!1183190 (= res!534701 (not (isEmpty!7127 rules!4386)))))

(declare-fun e!759686 () Bool)

(declare-fun b!1183191 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!151 (LexerInterface!1757 List!11843 List!11842) Bool)

(assert (=> b!1183191 (= e!759686 (tokensListTwoByTwoPredicateSeparableList!151 thiss!27592 lt!407170 rules!4386))))

(declare-fun b!1183192 () Bool)

(declare-fun res!534700 () Bool)

(assert (=> b!1183192 (=> (not res!534700) (not e!759685))))

(declare-fun i!1621 () Int)

(assert (=> b!1183192 (= res!534700 (and (not (is-Nil!11819 l!6534)) (> i!1621 0)))))

(declare-fun tp!337245 () Bool)

(declare-fun b!1183193 () Bool)

(declare-fun inv!15642 (String!14310) Bool)

(declare-fun inv!15645 (TokenValueInjection!3956) Bool)

(assert (=> b!1183193 (= e!759681 (and tp!337245 (inv!15642 (tag!2324 (rule!3483 (h!17220 l!6534)))) (inv!15645 (transformation!2062 (rule!3483 (h!17220 l!6534)))) e!759682))))

(declare-fun b!1183194 () Bool)

(declare-fun res!534697 () Bool)

(assert (=> b!1183194 (=> (not res!534697) (not e!759685))))

(assert (=> b!1183194 (= res!534697 (tokensListTwoByTwoPredicateSeparableList!151 thiss!27592 (t!111615 l!6534) rules!4386))))

(declare-fun b!1183195 () Bool)

(declare-fun e!759693 () Bool)

(assert (=> b!1183195 (= e!759693 e!759687)))

(declare-fun res!534692 () Bool)

(assert (=> b!1183195 (=> (not res!534692) (not e!759687))))

(declare-fun rulesProduceIndividualToken!786 (LexerInterface!1757 List!11842 Token!3786) Bool)

(assert (=> b!1183195 (= res!534692 (rulesProduceIndividualToken!786 thiss!27592 rules!4386 (h!17220 lt!407170)))))

(assert (=> b!1183196 (= e!759685 (not true))))

(declare-fun lt!407173 () List!11843)

(declare-fun drop!540 (List!11843 Int) List!11843)

(assert (=> b!1183196 (= lt!407173 (drop!540 l!6534 i!1621))))

(assert (=> b!1183196 e!759686))

(declare-fun res!534694 () Bool)

(assert (=> b!1183196 (=> (not res!534694) (not e!759686))))

(declare-fun forall!3129 (List!11843 Int) Bool)

(assert (=> b!1183196 (= res!534694 (forall!3129 lt!407170 lambda!48742))))

(declare-datatypes ((Unit!18137 0))(
  ( (Unit!18138) )
))
(declare-fun lt!407172 () Unit!18137)

(declare-fun lemmaForallSubseq!180 (List!11843 List!11843 Int) Unit!18137)

(assert (=> b!1183196 (= lt!407172 (lemmaForallSubseq!180 lt!407170 (t!111615 l!6534) lambda!48742))))

(declare-fun subseq!316 (List!11843 List!11843) Bool)

(assert (=> b!1183196 (subseq!316 lt!407170 (t!111615 l!6534))))

(declare-fun lt!407169 () Unit!18137)

(declare-fun lemmaDropSubseq!79 (List!11843 Int) Unit!18137)

(assert (=> b!1183196 (= lt!407169 (lemmaDropSubseq!79 (t!111615 l!6534) (- i!1621 1)))))

(assert (=> b!1183196 (= (rulesProduceEachTokenIndividuallyList!623 thiss!27592 rules!4386 lt!407170) e!759693)))

(declare-fun res!534695 () Bool)

(assert (=> b!1183196 (=> res!534695 e!759693)))

(assert (=> b!1183196 (= res!534695 (not (is-Cons!11819 lt!407170)))))

(assert (=> b!1183196 (= lt!407170 (drop!540 (t!111615 l!6534) (- i!1621 1)))))

(declare-fun lt!407171 () Unit!18137)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!55 (LexerInterface!1757 List!11843 Int List!11842) Unit!18137)

(assert (=> b!1183196 (= lt!407171 (tokensListTwoByTwoPredicateSeparableTokensDropList!55 thiss!27592 (t!111615 l!6534) (- i!1621 1) rules!4386))))

(declare-fun e!759691 () Bool)

(assert (=> b!1183197 (= e!759691 (and tp!337240 tp!337244))))

(declare-fun b!1183198 () Bool)

(declare-fun res!534693 () Bool)

(assert (=> b!1183198 (=> (not res!534693) (not e!759685))))

(declare-fun rulesInvariant!1631 (LexerInterface!1757 List!11842) Bool)

(assert (=> b!1183198 (= res!534693 (rulesInvariant!1631 thiss!27592 rules!4386))))

(declare-fun res!534698 () Bool)

(assert (=> start!104900 (=> (not res!534698) (not e!759685))))

(assert (=> start!104900 (= res!534698 (is-Lexer!1755 thiss!27592))))

(assert (=> start!104900 e!759685))

(assert (=> start!104900 true))

(assert (=> start!104900 e!759690))

(declare-fun e!759692 () Bool)

(assert (=> start!104900 e!759692))

(declare-fun tp!337238 () Bool)

(declare-fun b!1183199 () Bool)

(declare-fun inv!15646 (Token!3786) Bool)

(assert (=> b!1183199 (= e!759692 (and (inv!15646 (h!17220 l!6534)) e!759689 tp!337238))))

(declare-fun tp!337241 () Bool)

(declare-fun b!1183200 () Bool)

(assert (=> b!1183200 (= e!759684 (and tp!337241 (inv!15642 (tag!2324 (h!17219 rules!4386))) (inv!15645 (transformation!2062 (h!17219 rules!4386))) e!759691))))

(declare-fun b!1183201 () Bool)

(declare-fun res!534691 () Bool)

(assert (=> b!1183201 (=> (not res!534691) (not e!759685))))

(assert (=> b!1183201 (= res!534691 (tokensListTwoByTwoPredicateSeparableList!151 thiss!27592 l!6534 rules!4386))))

(assert (= (and start!104900 res!534698) b!1183190))

(assert (= (and b!1183190 res!534701) b!1183198))

(assert (= (and b!1183198 res!534693) b!1183189))

(assert (= (and b!1183189 res!534699) b!1183201))

(assert (= (and b!1183201 res!534691) b!1183192))

(assert (= (and b!1183192 res!534700) b!1183184))

(assert (= (and b!1183184 res!534696) b!1183194))

(assert (= (and b!1183194 res!534697) b!1183196))

(assert (= (and b!1183196 (not res!534695)) b!1183195))

(assert (= (and b!1183195 res!534692) b!1183186))

(assert (= (and b!1183196 res!534694) b!1183191))

(assert (= b!1183200 b!1183197))

(assert (= b!1183187 b!1183200))

(assert (= (and start!104900 (is-Cons!11818 rules!4386)) b!1183187))

(assert (= b!1183193 b!1183188))

(assert (= b!1183185 b!1183193))

(assert (= b!1183199 b!1183185))

(assert (= (and start!104900 (is-Cons!11819 l!6534)) b!1183199))

(declare-fun m!1359117 () Bool)

(assert (=> b!1183195 m!1359117))

(declare-fun m!1359119 () Bool)

(assert (=> b!1183199 m!1359119))

(declare-fun m!1359121 () Bool)

(assert (=> b!1183201 m!1359121))

(declare-fun m!1359123 () Bool)

(assert (=> b!1183194 m!1359123))

(declare-fun m!1359125 () Bool)

(assert (=> b!1183185 m!1359125))

(declare-fun m!1359127 () Bool)

(assert (=> b!1183189 m!1359127))

(declare-fun m!1359129 () Bool)

(assert (=> b!1183196 m!1359129))

(declare-fun m!1359131 () Bool)

(assert (=> b!1183196 m!1359131))

(declare-fun m!1359133 () Bool)

(assert (=> b!1183196 m!1359133))

(declare-fun m!1359135 () Bool)

(assert (=> b!1183196 m!1359135))

(declare-fun m!1359137 () Bool)

(assert (=> b!1183196 m!1359137))

(declare-fun m!1359139 () Bool)

(assert (=> b!1183196 m!1359139))

(declare-fun m!1359141 () Bool)

(assert (=> b!1183196 m!1359141))

(declare-fun m!1359143 () Bool)

(assert (=> b!1183196 m!1359143))

(declare-fun m!1359145 () Bool)

(assert (=> b!1183186 m!1359145))

(declare-fun m!1359147 () Bool)

(assert (=> b!1183184 m!1359147))

(declare-fun m!1359149 () Bool)

(assert (=> b!1183193 m!1359149))

(declare-fun m!1359151 () Bool)

(assert (=> b!1183193 m!1359151))

(declare-fun m!1359153 () Bool)

(assert (=> b!1183200 m!1359153))

(declare-fun m!1359155 () Bool)

(assert (=> b!1183200 m!1359155))

(declare-fun m!1359157 () Bool)

(assert (=> b!1183190 m!1359157))

(declare-fun m!1359159 () Bool)

(assert (=> b!1183191 m!1359159))

(declare-fun m!1359161 () Bool)

(assert (=> b!1183198 m!1359161))

(push 1)

(assert (not b_next!29001))

(assert (not b!1183201))

(assert (not b!1183198))

(assert b_and!81335)

(assert (not b!1183184))

(assert b_and!81339)

(assert (not b!1183196))

(assert (not b!1183195))

(assert (not b!1183185))

(assert (not b!1183186))

(assert (not b!1183200))

(assert (not b!1183193))

(assert (not b!1183187))

(assert b_and!81337)

(assert (not b!1183190))

(assert (not b!1183191))

(assert b_and!81333)

(assert (not b_next!28997))

(assert (not b_next!29003))

(assert (not b!1183210))

(assert (not b!1183199))

(assert (not b!1183194))

(assert (not b!1183189))

(assert (not b_next!28999))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!29001))

(assert b_and!81335)

(assert b_and!81339)

(assert (not b_next!28999))

(assert b_and!81337)

(assert b_and!81333)

(assert (not b_next!28997))

(assert (not b_next!29003))

(check-sat)

(pop 1)

