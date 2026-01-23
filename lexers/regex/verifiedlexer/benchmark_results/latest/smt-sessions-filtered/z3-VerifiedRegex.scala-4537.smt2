; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!240414 () Bool)

(assert start!240414)

(declare-fun b!2465146 () Bool)

(declare-fun b_free!70821 () Bool)

(declare-fun b_next!71525 () Bool)

(assert (=> b!2465146 (= b_free!70821 (not b_next!71525))))

(declare-fun tp!786049 () Bool)

(declare-fun b_and!186181 () Bool)

(assert (=> b!2465146 (= tp!786049 b_and!186181)))

(declare-fun b_free!70823 () Bool)

(declare-fun b_next!71527 () Bool)

(assert (=> b!2465146 (= b_free!70823 (not b_next!71527))))

(declare-fun tp!786045 () Bool)

(declare-fun b_and!186183 () Bool)

(assert (=> b!2465146 (= tp!786045 b_and!186183)))

(declare-fun b!2465132 () Bool)

(declare-fun b_free!70825 () Bool)

(declare-fun b_next!71529 () Bool)

(assert (=> b!2465132 (= b_free!70825 (not b_next!71529))))

(declare-fun tp!786035 () Bool)

(declare-fun b_and!186185 () Bool)

(assert (=> b!2465132 (= tp!786035 b_and!186185)))

(declare-fun b_free!70827 () Bool)

(declare-fun b_next!71531 () Bool)

(assert (=> b!2465132 (= b_free!70827 (not b_next!71531))))

(declare-fun tp!786043 () Bool)

(declare-fun b_and!186187 () Bool)

(assert (=> b!2465132 (= tp!786043 b_and!186187)))

(declare-fun b!2465134 () Bool)

(declare-fun b_free!70829 () Bool)

(declare-fun b_next!71533 () Bool)

(assert (=> b!2465134 (= b_free!70829 (not b_next!71533))))

(declare-fun tp!786044 () Bool)

(declare-fun b_and!186189 () Bool)

(assert (=> b!2465134 (= tp!786044 b_and!186189)))

(declare-fun b_free!70831 () Bool)

(declare-fun b_next!71535 () Bool)

(assert (=> b!2465134 (= b_free!70831 (not b_next!71535))))

(declare-fun tp!786047 () Bool)

(declare-fun b_and!186191 () Bool)

(assert (=> b!2465134 (= tp!786047 b_and!186191)))

(declare-fun b!2465142 () Bool)

(declare-fun b_free!70833 () Bool)

(declare-fun b_next!71537 () Bool)

(assert (=> b!2465142 (= b_free!70833 (not b_next!71537))))

(declare-fun tp!786036 () Bool)

(declare-fun b_and!186193 () Bool)

(assert (=> b!2465142 (= tp!786036 b_and!186193)))

(declare-fun b_free!70835 () Bool)

(declare-fun b_next!71539 () Bool)

(assert (=> b!2465142 (= b_free!70835 (not b_next!71539))))

(declare-fun tp!786048 () Bool)

(declare-fun b_and!186195 () Bool)

(assert (=> b!2465142 (= tp!786048 b_and!186195)))

(declare-fun b!2465122 () Bool)

(declare-fun res!1044141 () Bool)

(declare-fun e!1563219 () Bool)

(assert (=> b!2465122 (=> (not res!1044141) (not e!1563219))))

(declare-datatypes ((LexerInterface!4058 0))(
  ( (LexerInterfaceExt!4055 (__x!18549 Int)) (Lexer!4056) )
))
(declare-fun thiss!27932 () LexerInterface!4058)

(declare-datatypes ((List!28786 0))(
  ( (Nil!28686) (Cons!28686 (h!34087 (_ BitVec 16)) (t!209215 List!28786)) )
))
(declare-datatypes ((TokenValue!4647 0))(
  ( (FloatLiteralValue!9294 (text!32974 List!28786)) (TokenValueExt!4646 (__x!18550 Int)) (Broken!23235 (value!142518 List!28786)) (Object!4746) (End!4647) (Def!4647) (Underscore!4647) (Match!4647) (Else!4647) (Error!4647) (Case!4647) (If!4647) (Extends!4647) (Abstract!4647) (Class!4647) (Val!4647) (DelimiterValue!9294 (del!4707 List!28786)) (KeywordValue!4653 (value!142519 List!28786)) (CommentValue!9294 (value!142520 List!28786)) (WhitespaceValue!9294 (value!142521 List!28786)) (IndentationValue!4647 (value!142522 List!28786)) (String!31530) (Int32!4647) (Broken!23236 (value!142523 List!28786)) (Boolean!4648) (Unit!42032) (OperatorValue!4650 (op!4707 List!28786)) (IdentifierValue!9294 (value!142524 List!28786)) (IdentifierValue!9295 (value!142525 List!28786)) (WhitespaceValue!9295 (value!142526 List!28786)) (True!9294) (False!9294) (Broken!23237 (value!142527 List!28786)) (Broken!23238 (value!142528 List!28786)) (True!9295) (RightBrace!4647) (RightBracket!4647) (Colon!4647) (Null!4647) (Comma!4647) (LeftBracket!4647) (False!9295) (LeftBrace!4647) (ImaginaryLiteralValue!4647 (text!32975 List!28786)) (StringLiteralValue!13941 (value!142529 List!28786)) (EOFValue!4647 (value!142530 List!28786)) (IdentValue!4647 (value!142531 List!28786)) (DelimiterValue!9295 (value!142532 List!28786)) (DedentValue!4647 (value!142533 List!28786)) (NewLineValue!4647 (value!142534 List!28786)) (IntegerValue!13941 (value!142535 (_ BitVec 32)) (text!32976 List!28786)) (IntegerValue!13942 (value!142536 Int) (text!32977 List!28786)) (Times!4647) (Or!4647) (Equal!4647) (Minus!4647) (Broken!23239 (value!142537 List!28786)) (And!4647) (Div!4647) (LessEqual!4647) (Mod!4647) (Concat!11896) (Not!4647) (Plus!4647) (SpaceValue!4647 (value!142538 List!28786)) (IntegerValue!13943 (value!142539 Int) (text!32978 List!28786)) (StringLiteralValue!13942 (text!32979 List!28786)) (FloatLiteralValue!9295 (text!32980 List!28786)) (BytesLiteralValue!4647 (value!142540 List!28786)) (CommentValue!9295 (value!142541 List!28786)) (StringLiteralValue!13943 (value!142542 List!28786)) (ErrorTokenValue!4647 (msg!4708 List!28786)) )
))
(declare-datatypes ((C!14656 0))(
  ( (C!14657 (val!8588 Int)) )
))
(declare-datatypes ((List!28787 0))(
  ( (Nil!28687) (Cons!28687 (h!34088 C!14656) (t!209216 List!28787)) )
))
(declare-datatypes ((IArray!18343 0))(
  ( (IArray!18344 (innerList!9229 List!28787)) )
))
(declare-datatypes ((Conc!9169 0))(
  ( (Node!9169 (left!22030 Conc!9169) (right!22360 Conc!9169) (csize!18568 Int) (cheight!9380 Int)) (Leaf!13707 (xs!12149 IArray!18343) (csize!18569 Int)) (Empty!9169) )
))
(declare-datatypes ((BalanceConc!17952 0))(
  ( (BalanceConc!17953 (c!393188 Conc!9169)) )
))
(declare-datatypes ((Regex!7249 0))(
  ( (ElementMatch!7249 (c!393189 C!14656)) (Concat!11897 (regOne!15010 Regex!7249) (regTwo!15010 Regex!7249)) (EmptyExpr!7249) (Star!7249 (reg!7578 Regex!7249)) (EmptyLang!7249) (Union!7249 (regOne!15011 Regex!7249) (regTwo!15011 Regex!7249)) )
))
(declare-datatypes ((String!31531 0))(
  ( (String!31532 (value!142543 String)) )
))
(declare-datatypes ((TokenValueInjection!8794 0))(
  ( (TokenValueInjection!8795 (toValue!6321 Int) (toChars!6180 Int)) )
))
(declare-datatypes ((Rule!8722 0))(
  ( (Rule!8723 (regex!4461 Regex!7249) (tag!4951 String!31531) (isSeparator!4461 Bool) (transformation!4461 TokenValueInjection!8794)) )
))
(declare-datatypes ((List!28788 0))(
  ( (Nil!28688) (Cons!28688 (h!34089 Rule!8722) (t!209217 List!28788)) )
))
(declare-fun rules!4472 () List!28788)

(declare-datatypes ((Token!8392 0))(
  ( (Token!8393 (value!142544 TokenValue!4647) (rule!6819 Rule!8722) (size!22328 Int) (originalCharacters!5227 List!28787)) )
))
(declare-fun t1!67 () Token!8392)

(declare-fun rulesProduceIndividualToken!1795 (LexerInterface!4058 List!28788 Token!8392) Bool)

(assert (=> b!2465122 (= res!1044141 (rulesProduceIndividualToken!1795 thiss!27932 rules!4472 t1!67))))

(declare-fun b!2465123 () Bool)

(declare-fun res!1044132 () Bool)

(assert (=> b!2465123 (=> (not res!1044132) (not e!1563219))))

(declare-fun i!1803 () Int)

(assert (=> b!2465123 (= res!1044132 (= i!1803 0))))

(declare-fun b!2465124 () Bool)

(declare-fun e!1563212 () Bool)

(declare-fun e!1563218 () Bool)

(declare-fun tp!786034 () Bool)

(assert (=> b!2465124 (= e!1563212 (and e!1563218 tp!786034))))

(declare-fun b!2465125 () Bool)

(declare-fun t2!67 () Token!8392)

(declare-fun isEmpty!16678 (BalanceConc!17952) Bool)

(declare-fun charsOf!2815 (Token!8392) BalanceConc!17952)

(assert (=> b!2465125 (= e!1563219 (isEmpty!16678 (charsOf!2815 t2!67)))))

(declare-fun res!1044137 () Bool)

(assert (=> start!240414 (=> (not res!1044137) (not e!1563219))))

(get-info :version)

(assert (=> start!240414 (= res!1044137 ((_ is Lexer!4056) thiss!27932))))

(assert (=> start!240414 e!1563219))

(assert (=> start!240414 true))

(assert (=> start!240414 e!1563212))

(declare-fun e!1563220 () Bool)

(declare-fun inv!38775 (Token!8392) Bool)

(assert (=> start!240414 (and (inv!38775 t2!67) e!1563220)))

(declare-fun e!1563226 () Bool)

(assert (=> start!240414 e!1563226))

(declare-fun e!1563224 () Bool)

(assert (=> start!240414 (and (inv!38775 t1!67) e!1563224)))

(declare-fun b!2465126 () Bool)

(declare-fun res!1044135 () Bool)

(assert (=> b!2465126 (=> (not res!1044135) (not e!1563219))))

(declare-datatypes ((List!28789 0))(
  ( (Nil!28689) (Cons!28689 (h!34090 Token!8392) (t!209218 List!28789)) )
))
(declare-fun l!6611 () List!28789)

(declare-fun apply!6743 (List!28789 Int) Token!8392)

(assert (=> b!2465126 (= res!1044135 (= (apply!6743 l!6611 i!1803) t1!67))))

(declare-fun b!2465127 () Bool)

(declare-fun res!1044131 () Bool)

(assert (=> b!2465127 (=> (not res!1044131) (not e!1563219))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!597 (LexerInterface!4058 List!28789 List!28788) Bool)

(assert (=> b!2465127 (= res!1044131 (tokensListTwoByTwoPredicateSeparableList!597 thiss!27932 l!6611 rules!4472))))

(declare-fun tp!786039 () Bool)

(declare-fun e!1563214 () Bool)

(declare-fun b!2465128 () Bool)

(declare-fun e!1563217 () Bool)

(declare-fun inv!38772 (String!31531) Bool)

(declare-fun inv!38776 (TokenValueInjection!8794) Bool)

(assert (=> b!2465128 (= e!1563214 (and tp!786039 (inv!38772 (tag!4951 (rule!6819 t2!67))) (inv!38776 (transformation!4461 (rule!6819 t2!67))) e!1563217))))

(declare-fun e!1563228 () Bool)

(declare-fun b!2465129 () Bool)

(declare-fun tp!786042 () Bool)

(declare-fun e!1563213 () Bool)

(assert (=> b!2465129 (= e!1563213 (and tp!786042 (inv!38772 (tag!4951 (rule!6819 (h!34090 l!6611)))) (inv!38776 (transformation!4461 (rule!6819 (h!34090 l!6611)))) e!1563228))))

(declare-fun b!2465130 () Bool)

(declare-fun res!1044134 () Bool)

(assert (=> b!2465130 (=> (not res!1044134) (not e!1563219))))

(assert (=> b!2465130 (= res!1044134 (rulesProduceIndividualToken!1795 thiss!27932 rules!4472 t2!67))))

(declare-fun b!2465131 () Bool)

(declare-fun res!1044140 () Bool)

(assert (=> b!2465131 (=> (not res!1044140) (not e!1563219))))

(declare-fun isEmpty!16679 (List!28788) Bool)

(assert (=> b!2465131 (= res!1044140 (not (isEmpty!16679 rules!4472)))))

(declare-fun e!1563211 () Bool)

(assert (=> b!2465132 (= e!1563211 (and tp!786035 tp!786043))))

(declare-fun tp!786033 () Bool)

(declare-fun b!2465133 () Bool)

(declare-fun inv!21 (TokenValue!4647) Bool)

(assert (=> b!2465133 (= e!1563220 (and (inv!21 (value!142544 t2!67)) e!1563214 tp!786033))))

(declare-fun e!1563229 () Bool)

(assert (=> b!2465134 (= e!1563229 (and tp!786044 tp!786047))))

(declare-fun b!2465135 () Bool)

(declare-fun res!1044139 () Bool)

(assert (=> b!2465135 (=> (not res!1044139) (not e!1563219))))

(declare-fun rulesInvariant!3558 (LexerInterface!4058 List!28788) Bool)

(assert (=> b!2465135 (= res!1044139 (rulesInvariant!3558 thiss!27932 rules!4472))))

(declare-fun b!2465136 () Bool)

(declare-fun tp!786037 () Bool)

(declare-fun e!1563227 () Bool)

(assert (=> b!2465136 (= e!1563226 (and (inv!38775 (h!34090 l!6611)) e!1563227 tp!786037))))

(declare-fun tp!786046 () Bool)

(declare-fun b!2465137 () Bool)

(assert (=> b!2465137 (= e!1563227 (and (inv!21 (value!142544 (h!34090 l!6611))) e!1563213 tp!786046))))

(declare-fun b!2465138 () Bool)

(declare-fun res!1044130 () Bool)

(assert (=> b!2465138 (=> (not res!1044130) (not e!1563219))))

(declare-fun size!22329 (List!28789) Int)

(assert (=> b!2465138 (= res!1044130 (< (+ 1 i!1803) (size!22329 l!6611)))))

(declare-fun b!2465139 () Bool)

(declare-fun tp!786041 () Bool)

(assert (=> b!2465139 (= e!1563218 (and tp!786041 (inv!38772 (tag!4951 (h!34089 rules!4472))) (inv!38776 (transformation!4461 (h!34089 rules!4472))) e!1563211))))

(declare-fun b!2465140 () Bool)

(declare-fun res!1044138 () Bool)

(assert (=> b!2465140 (=> (not res!1044138) (not e!1563219))))

(assert (=> b!2465140 (= res!1044138 (>= i!1803 0))))

(declare-fun e!1563230 () Bool)

(declare-fun tp!786038 () Bool)

(declare-fun b!2465141 () Bool)

(assert (=> b!2465141 (= e!1563230 (and tp!786038 (inv!38772 (tag!4951 (rule!6819 t1!67))) (inv!38776 (transformation!4461 (rule!6819 t1!67))) e!1563229))))

(assert (=> b!2465142 (= e!1563228 (and tp!786036 tp!786048))))

(declare-fun b!2465143 () Bool)

(declare-fun tp!786040 () Bool)

(assert (=> b!2465143 (= e!1563224 (and (inv!21 (value!142544 t1!67)) e!1563230 tp!786040))))

(declare-fun b!2465144 () Bool)

(declare-fun res!1044136 () Bool)

(assert (=> b!2465144 (=> (not res!1044136) (not e!1563219))))

(declare-fun rulesProduceEachTokenIndividuallyList!1374 (LexerInterface!4058 List!28788 List!28789) Bool)

(assert (=> b!2465144 (= res!1044136 (rulesProduceEachTokenIndividuallyList!1374 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2465145 () Bool)

(declare-fun res!1044133 () Bool)

(assert (=> b!2465145 (=> (not res!1044133) (not e!1563219))))

(assert (=> b!2465145 (= res!1044133 (= (apply!6743 l!6611 (+ 1 i!1803)) t2!67))))

(assert (=> b!2465146 (= e!1563217 (and tp!786049 tp!786045))))

(assert (= (and start!240414 res!1044137) b!2465131))

(assert (= (and b!2465131 res!1044140) b!2465135))

(assert (= (and b!2465135 res!1044139) b!2465144))

(assert (= (and b!2465144 res!1044136) b!2465127))

(assert (= (and b!2465127 res!1044131) b!2465140))

(assert (= (and b!2465140 res!1044138) b!2465138))

(assert (= (and b!2465138 res!1044130) b!2465126))

(assert (= (and b!2465126 res!1044135) b!2465145))

(assert (= (and b!2465145 res!1044133) b!2465123))

(assert (= (and b!2465123 res!1044132) b!2465122))

(assert (= (and b!2465122 res!1044141) b!2465130))

(assert (= (and b!2465130 res!1044134) b!2465125))

(assert (= b!2465139 b!2465132))

(assert (= b!2465124 b!2465139))

(assert (= (and start!240414 ((_ is Cons!28688) rules!4472)) b!2465124))

(assert (= b!2465128 b!2465146))

(assert (= b!2465133 b!2465128))

(assert (= start!240414 b!2465133))

(assert (= b!2465129 b!2465142))

(assert (= b!2465137 b!2465129))

(assert (= b!2465136 b!2465137))

(assert (= (and start!240414 ((_ is Cons!28689) l!6611)) b!2465136))

(assert (= b!2465141 b!2465134))

(assert (= b!2465143 b!2465141))

(assert (= start!240414 b!2465143))

(declare-fun m!2834721 () Bool)

(assert (=> b!2465130 m!2834721))

(declare-fun m!2834723 () Bool)

(assert (=> b!2465145 m!2834723))

(declare-fun m!2834725 () Bool)

(assert (=> b!2465129 m!2834725))

(declare-fun m!2834727 () Bool)

(assert (=> b!2465129 m!2834727))

(declare-fun m!2834729 () Bool)

(assert (=> b!2465128 m!2834729))

(declare-fun m!2834731 () Bool)

(assert (=> b!2465128 m!2834731))

(declare-fun m!2834733 () Bool)

(assert (=> b!2465126 m!2834733))

(declare-fun m!2834735 () Bool)

(assert (=> b!2465122 m!2834735))

(declare-fun m!2834737 () Bool)

(assert (=> b!2465144 m!2834737))

(declare-fun m!2834739 () Bool)

(assert (=> b!2465137 m!2834739))

(declare-fun m!2834741 () Bool)

(assert (=> b!2465138 m!2834741))

(declare-fun m!2834743 () Bool)

(assert (=> b!2465136 m!2834743))

(declare-fun m!2834745 () Bool)

(assert (=> b!2465125 m!2834745))

(assert (=> b!2465125 m!2834745))

(declare-fun m!2834747 () Bool)

(assert (=> b!2465125 m!2834747))

(declare-fun m!2834749 () Bool)

(assert (=> b!2465143 m!2834749))

(declare-fun m!2834751 () Bool)

(assert (=> b!2465141 m!2834751))

(declare-fun m!2834753 () Bool)

(assert (=> b!2465141 m!2834753))

(declare-fun m!2834755 () Bool)

(assert (=> b!2465133 m!2834755))

(declare-fun m!2834757 () Bool)

(assert (=> b!2465135 m!2834757))

(declare-fun m!2834759 () Bool)

(assert (=> b!2465131 m!2834759))

(declare-fun m!2834761 () Bool)

(assert (=> start!240414 m!2834761))

(declare-fun m!2834763 () Bool)

(assert (=> start!240414 m!2834763))

(declare-fun m!2834765 () Bool)

(assert (=> b!2465139 m!2834765))

(declare-fun m!2834767 () Bool)

(assert (=> b!2465139 m!2834767))

(declare-fun m!2834769 () Bool)

(assert (=> b!2465127 m!2834769))

(check-sat (not b!2465139) (not b!2465135) b_and!186181 (not b!2465125) (not b!2465127) (not b!2465133) (not b_next!71537) b_and!186193 (not b!2465129) (not b!2465141) (not b!2465138) (not b!2465136) b_and!186189 (not b_next!71533) (not b!2465137) (not b_next!71525) b_and!186187 (not b!2465128) (not b_next!71529) (not b_next!71527) (not b!2465122) (not b_next!71539) b_and!186191 (not b!2465126) b_and!186185 (not b!2465124) b_and!186195 (not b_next!71531) (not b!2465145) (not b!2465131) (not start!240414) (not b_next!71535) (not b!2465130) (not b!2465143) b_and!186183 (not b!2465144))
(check-sat b_and!186189 b_and!186181 b_and!186185 b_and!186195 (not b_next!71531) (not b_next!71535) b_and!186183 (not b_next!71537) b_and!186193 (not b_next!71533) (not b_next!71525) b_and!186187 (not b_next!71529) (not b_next!71527) (not b_next!71539) b_and!186191)
(get-model)

(declare-fun d!709922 () Bool)

(declare-fun lt!882092 () Bool)

(declare-fun e!1563255 () Bool)

(assert (=> d!709922 (= lt!882092 e!1563255)))

(declare-fun res!1044172 () Bool)

(assert (=> d!709922 (=> (not res!1044172) (not e!1563255))))

(declare-datatypes ((IArray!18347 0))(
  ( (IArray!18348 (innerList!9231 List!28789)) )
))
(declare-datatypes ((Conc!9171 0))(
  ( (Node!9171 (left!22036 Conc!9171) (right!22366 Conc!9171) (csize!18572 Int) (cheight!9382 Int)) (Leaf!13709 (xs!12151 IArray!18347) (csize!18573 Int)) (Empty!9171) )
))
(declare-datatypes ((BalanceConc!17956 0))(
  ( (BalanceConc!17957 (c!393225 Conc!9171)) )
))
(declare-fun list!11118 (BalanceConc!17956) List!28789)

(declare-datatypes ((tuple2!28230 0))(
  ( (tuple2!28231 (_1!16656 BalanceConc!17956) (_2!16656 BalanceConc!17952)) )
))
(declare-fun lex!1855 (LexerInterface!4058 List!28788 BalanceConc!17952) tuple2!28230)

(declare-fun print!1577 (LexerInterface!4058 BalanceConc!17956) BalanceConc!17952)

(declare-fun singletonSeq!1981 (Token!8392) BalanceConc!17956)

(assert (=> d!709922 (= res!1044172 (= (list!11118 (_1!16656 (lex!1855 thiss!27932 rules!4472 (print!1577 thiss!27932 (singletonSeq!1981 t2!67))))) (list!11118 (singletonSeq!1981 t2!67))))))

(declare-fun e!1563254 () Bool)

(assert (=> d!709922 (= lt!882092 e!1563254)))

(declare-fun res!1044173 () Bool)

(assert (=> d!709922 (=> (not res!1044173) (not e!1563254))))

(declare-fun lt!882093 () tuple2!28230)

(declare-fun size!22333 (BalanceConc!17956) Int)

(assert (=> d!709922 (= res!1044173 (= (size!22333 (_1!16656 lt!882093)) 1))))

(assert (=> d!709922 (= lt!882093 (lex!1855 thiss!27932 rules!4472 (print!1577 thiss!27932 (singletonSeq!1981 t2!67))))))

(assert (=> d!709922 (not (isEmpty!16679 rules!4472))))

(assert (=> d!709922 (= (rulesProduceIndividualToken!1795 thiss!27932 rules!4472 t2!67) lt!882092)))

(declare-fun b!2465180 () Bool)

(declare-fun res!1044174 () Bool)

(assert (=> b!2465180 (=> (not res!1044174) (not e!1563254))))

(declare-fun apply!6745 (BalanceConc!17956 Int) Token!8392)

(assert (=> b!2465180 (= res!1044174 (= (apply!6745 (_1!16656 lt!882093) 0) t2!67))))

(declare-fun b!2465181 () Bool)

(assert (=> b!2465181 (= e!1563254 (isEmpty!16678 (_2!16656 lt!882093)))))

(declare-fun b!2465182 () Bool)

(assert (=> b!2465182 (= e!1563255 (isEmpty!16678 (_2!16656 (lex!1855 thiss!27932 rules!4472 (print!1577 thiss!27932 (singletonSeq!1981 t2!67))))))))

(assert (= (and d!709922 res!1044173) b!2465180))

(assert (= (and b!2465180 res!1044174) b!2465181))

(assert (= (and d!709922 res!1044172) b!2465182))

(declare-fun m!2834795 () Bool)

(assert (=> d!709922 m!2834795))

(declare-fun m!2834797 () Bool)

(assert (=> d!709922 m!2834797))

(assert (=> d!709922 m!2834795))

(declare-fun m!2834799 () Bool)

(assert (=> d!709922 m!2834799))

(declare-fun m!2834801 () Bool)

(assert (=> d!709922 m!2834801))

(declare-fun m!2834803 () Bool)

(assert (=> d!709922 m!2834803))

(assert (=> d!709922 m!2834759))

(assert (=> d!709922 m!2834795))

(assert (=> d!709922 m!2834801))

(declare-fun m!2834805 () Bool)

(assert (=> d!709922 m!2834805))

(declare-fun m!2834807 () Bool)

(assert (=> b!2465180 m!2834807))

(declare-fun m!2834809 () Bool)

(assert (=> b!2465181 m!2834809))

(assert (=> b!2465182 m!2834795))

(assert (=> b!2465182 m!2834795))

(assert (=> b!2465182 m!2834801))

(assert (=> b!2465182 m!2834801))

(assert (=> b!2465182 m!2834803))

(declare-fun m!2834811 () Bool)

(assert (=> b!2465182 m!2834811))

(assert (=> b!2465130 d!709922))

(declare-fun d!709924 () Bool)

(assert (=> d!709924 (= (inv!38772 (tag!4951 (rule!6819 (h!34090 l!6611)))) (= (mod (str.len (value!142543 (tag!4951 (rule!6819 (h!34090 l!6611))))) 2) 0))))

(assert (=> b!2465129 d!709924))

(declare-fun d!709926 () Bool)

(declare-fun res!1044177 () Bool)

(declare-fun e!1563258 () Bool)

(assert (=> d!709926 (=> (not res!1044177) (not e!1563258))))

(declare-fun semiInverseModEq!1836 (Int Int) Bool)

(assert (=> d!709926 (= res!1044177 (semiInverseModEq!1836 (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))) (toValue!6321 (transformation!4461 (rule!6819 (h!34090 l!6611))))))))

(assert (=> d!709926 (= (inv!38776 (transformation!4461 (rule!6819 (h!34090 l!6611)))) e!1563258)))

(declare-fun b!2465185 () Bool)

(declare-fun equivClasses!1747 (Int Int) Bool)

(assert (=> b!2465185 (= e!1563258 (equivClasses!1747 (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))) (toValue!6321 (transformation!4461 (rule!6819 (h!34090 l!6611))))))))

(assert (= (and d!709926 res!1044177) b!2465185))

(declare-fun m!2834813 () Bool)

(assert (=> d!709926 m!2834813))

(declare-fun m!2834815 () Bool)

(assert (=> b!2465185 m!2834815))

(assert (=> b!2465129 d!709926))

(declare-fun d!709928 () Bool)

(assert (=> d!709928 (= (inv!38772 (tag!4951 (h!34089 rules!4472))) (= (mod (str.len (value!142543 (tag!4951 (h!34089 rules!4472)))) 2) 0))))

(assert (=> b!2465139 d!709928))

(declare-fun d!709930 () Bool)

(declare-fun res!1044178 () Bool)

(declare-fun e!1563259 () Bool)

(assert (=> d!709930 (=> (not res!1044178) (not e!1563259))))

(assert (=> d!709930 (= res!1044178 (semiInverseModEq!1836 (toChars!6180 (transformation!4461 (h!34089 rules!4472))) (toValue!6321 (transformation!4461 (h!34089 rules!4472)))))))

(assert (=> d!709930 (= (inv!38776 (transformation!4461 (h!34089 rules!4472))) e!1563259)))

(declare-fun b!2465186 () Bool)

(assert (=> b!2465186 (= e!1563259 (equivClasses!1747 (toChars!6180 (transformation!4461 (h!34089 rules!4472))) (toValue!6321 (transformation!4461 (h!34089 rules!4472)))))))

(assert (= (and d!709930 res!1044178) b!2465186))

(declare-fun m!2834817 () Bool)

(assert (=> d!709930 m!2834817))

(declare-fun m!2834819 () Bool)

(assert (=> b!2465186 m!2834819))

(assert (=> b!2465139 d!709930))

(declare-fun d!709932 () Bool)

(assert (=> d!709932 (= (inv!38772 (tag!4951 (rule!6819 t2!67))) (= (mod (str.len (value!142543 (tag!4951 (rule!6819 t2!67)))) 2) 0))))

(assert (=> b!2465128 d!709932))

(declare-fun d!709934 () Bool)

(declare-fun res!1044179 () Bool)

(declare-fun e!1563260 () Bool)

(assert (=> d!709934 (=> (not res!1044179) (not e!1563260))))

(assert (=> d!709934 (= res!1044179 (semiInverseModEq!1836 (toChars!6180 (transformation!4461 (rule!6819 t2!67))) (toValue!6321 (transformation!4461 (rule!6819 t2!67)))))))

(assert (=> d!709934 (= (inv!38776 (transformation!4461 (rule!6819 t2!67))) e!1563260)))

(declare-fun b!2465187 () Bool)

(assert (=> b!2465187 (= e!1563260 (equivClasses!1747 (toChars!6180 (transformation!4461 (rule!6819 t2!67))) (toValue!6321 (transformation!4461 (rule!6819 t2!67)))))))

(assert (= (and d!709934 res!1044179) b!2465187))

(declare-fun m!2834821 () Bool)

(assert (=> d!709934 m!2834821))

(declare-fun m!2834823 () Bool)

(assert (=> b!2465187 m!2834823))

(assert (=> b!2465128 d!709934))

(declare-fun d!709936 () Bool)

(declare-fun lt!882096 () Int)

(assert (=> d!709936 (>= lt!882096 0)))

(declare-fun e!1563263 () Int)

(assert (=> d!709936 (= lt!882096 e!1563263)))

(declare-fun c!393195 () Bool)

(assert (=> d!709936 (= c!393195 ((_ is Nil!28689) l!6611))))

(assert (=> d!709936 (= (size!22329 l!6611) lt!882096)))

(declare-fun b!2465192 () Bool)

(assert (=> b!2465192 (= e!1563263 0)))

(declare-fun b!2465193 () Bool)

(assert (=> b!2465193 (= e!1563263 (+ 1 (size!22329 (t!209218 l!6611))))))

(assert (= (and d!709936 c!393195) b!2465192))

(assert (= (and d!709936 (not c!393195)) b!2465193))

(declare-fun m!2834825 () Bool)

(assert (=> b!2465193 m!2834825))

(assert (=> b!2465138 d!709936))

(declare-fun d!709938 () Bool)

(declare-fun res!1044186 () Bool)

(declare-fun e!1563283 () Bool)

(assert (=> d!709938 (=> res!1044186 e!1563283)))

(assert (=> d!709938 (= res!1044186 (or (not ((_ is Cons!28689) l!6611)) (not ((_ is Cons!28689) (t!209218 l!6611)))))))

(assert (=> d!709938 (= (tokensListTwoByTwoPredicateSeparableList!597 thiss!27932 l!6611 rules!4472) e!1563283)))

(declare-fun b!2465219 () Bool)

(declare-fun e!1563282 () Bool)

(assert (=> b!2465219 (= e!1563283 e!1563282)))

(declare-fun res!1044187 () Bool)

(assert (=> b!2465219 (=> (not res!1044187) (not e!1563282))))

(declare-fun separableTokensPredicate!838 (LexerInterface!4058 Token!8392 Token!8392 List!28788) Bool)

(assert (=> b!2465219 (= res!1044187 (separableTokensPredicate!838 thiss!27932 (h!34090 l!6611) (h!34090 (t!209218 l!6611)) rules!4472))))

(declare-datatypes ((Unit!42038 0))(
  ( (Unit!42039) )
))
(declare-fun lt!882120 () Unit!42038)

(declare-fun Unit!42040 () Unit!42038)

(assert (=> b!2465219 (= lt!882120 Unit!42040)))

(declare-fun size!22334 (BalanceConc!17952) Int)

(assert (=> b!2465219 (> (size!22334 (charsOf!2815 (h!34090 (t!209218 l!6611)))) 0)))

(declare-fun lt!882117 () Unit!42038)

(declare-fun Unit!42041 () Unit!42038)

(assert (=> b!2465219 (= lt!882117 Unit!42041)))

(assert (=> b!2465219 (rulesProduceIndividualToken!1795 thiss!27932 rules!4472 (h!34090 (t!209218 l!6611)))))

(declare-fun lt!882116 () Unit!42038)

(declare-fun Unit!42042 () Unit!42038)

(assert (=> b!2465219 (= lt!882116 Unit!42042)))

(assert (=> b!2465219 (rulesProduceIndividualToken!1795 thiss!27932 rules!4472 (h!34090 l!6611))))

(declare-fun lt!882118 () Unit!42038)

(declare-fun lt!882115 () Unit!42038)

(assert (=> b!2465219 (= lt!882118 lt!882115)))

(assert (=> b!2465219 (rulesProduceIndividualToken!1795 thiss!27932 rules!4472 (h!34090 (t!209218 l!6611)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!656 (LexerInterface!4058 List!28788 List!28789 Token!8392) Unit!42038)

(assert (=> b!2465219 (= lt!882115 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!656 thiss!27932 rules!4472 l!6611 (h!34090 (t!209218 l!6611))))))

(declare-fun lt!882121 () Unit!42038)

(declare-fun lt!882119 () Unit!42038)

(assert (=> b!2465219 (= lt!882121 lt!882119)))

(assert (=> b!2465219 (rulesProduceIndividualToken!1795 thiss!27932 rules!4472 (h!34090 l!6611))))

(assert (=> b!2465219 (= lt!882119 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!656 thiss!27932 rules!4472 l!6611 (h!34090 l!6611)))))

(declare-fun b!2465220 () Bool)

(assert (=> b!2465220 (= e!1563282 (tokensListTwoByTwoPredicateSeparableList!597 thiss!27932 (Cons!28689 (h!34090 (t!209218 l!6611)) (t!209218 (t!209218 l!6611))) rules!4472))))

(assert (= (and d!709938 (not res!1044186)) b!2465219))

(assert (= (and b!2465219 res!1044187) b!2465220))

(declare-fun m!2834835 () Bool)

(assert (=> b!2465219 m!2834835))

(declare-fun m!2834837 () Bool)

(assert (=> b!2465219 m!2834837))

(declare-fun m!2834839 () Bool)

(assert (=> b!2465219 m!2834839))

(declare-fun m!2834841 () Bool)

(assert (=> b!2465219 m!2834841))

(declare-fun m!2834843 () Bool)

(assert (=> b!2465219 m!2834843))

(assert (=> b!2465219 m!2834839))

(declare-fun m!2834845 () Bool)

(assert (=> b!2465219 m!2834845))

(declare-fun m!2834847 () Bool)

(assert (=> b!2465219 m!2834847))

(declare-fun m!2834849 () Bool)

(assert (=> b!2465220 m!2834849))

(assert (=> b!2465127 d!709938))

(declare-fun d!709944 () Bool)

(declare-fun c!393203 () Bool)

(assert (=> d!709944 (= c!393203 ((_ is IntegerValue!13941) (value!142544 (h!34090 l!6611))))))

(declare-fun e!1563293 () Bool)

(assert (=> d!709944 (= (inv!21 (value!142544 (h!34090 l!6611))) e!1563293)))

(declare-fun b!2465232 () Bool)

(declare-fun e!1563291 () Bool)

(declare-fun inv!15 (TokenValue!4647) Bool)

(assert (=> b!2465232 (= e!1563291 (inv!15 (value!142544 (h!34090 l!6611))))))

(declare-fun b!2465233 () Bool)

(declare-fun e!1563292 () Bool)

(assert (=> b!2465233 (= e!1563293 e!1563292)))

(declare-fun c!393204 () Bool)

(assert (=> b!2465233 (= c!393204 ((_ is IntegerValue!13942) (value!142544 (h!34090 l!6611))))))

(declare-fun b!2465234 () Bool)

(declare-fun res!1044190 () Bool)

(assert (=> b!2465234 (=> res!1044190 e!1563291)))

(assert (=> b!2465234 (= res!1044190 (not ((_ is IntegerValue!13943) (value!142544 (h!34090 l!6611)))))))

(assert (=> b!2465234 (= e!1563292 e!1563291)))

(declare-fun b!2465235 () Bool)

(declare-fun inv!17 (TokenValue!4647) Bool)

(assert (=> b!2465235 (= e!1563292 (inv!17 (value!142544 (h!34090 l!6611))))))

(declare-fun b!2465236 () Bool)

(declare-fun inv!16 (TokenValue!4647) Bool)

(assert (=> b!2465236 (= e!1563293 (inv!16 (value!142544 (h!34090 l!6611))))))

(assert (= (and d!709944 c!393203) b!2465236))

(assert (= (and d!709944 (not c!393203)) b!2465233))

(assert (= (and b!2465233 c!393204) b!2465235))

(assert (= (and b!2465233 (not c!393204)) b!2465234))

(assert (= (and b!2465234 (not res!1044190)) b!2465232))

(declare-fun m!2834865 () Bool)

(assert (=> b!2465232 m!2834865))

(declare-fun m!2834867 () Bool)

(assert (=> b!2465235 m!2834867))

(declare-fun m!2834869 () Bool)

(assert (=> b!2465236 m!2834869))

(assert (=> b!2465137 d!709944))

(declare-fun d!709952 () Bool)

(declare-fun res!1044196 () Bool)

(declare-fun e!1563297 () Bool)

(assert (=> d!709952 (=> (not res!1044196) (not e!1563297))))

(declare-fun isEmpty!16682 (List!28787) Bool)

(assert (=> d!709952 (= res!1044196 (not (isEmpty!16682 (originalCharacters!5227 t2!67))))))

(assert (=> d!709952 (= (inv!38775 t2!67) e!1563297)))

(declare-fun b!2465242 () Bool)

(declare-fun res!1044197 () Bool)

(assert (=> b!2465242 (=> (not res!1044197) (not e!1563297))))

(declare-fun list!11119 (BalanceConc!17952) List!28787)

(declare-fun dynLambda!12323 (Int TokenValue!4647) BalanceConc!17952)

(assert (=> b!2465242 (= res!1044197 (= (originalCharacters!5227 t2!67) (list!11119 (dynLambda!12323 (toChars!6180 (transformation!4461 (rule!6819 t2!67))) (value!142544 t2!67)))))))

(declare-fun b!2465243 () Bool)

(declare-fun size!22335 (List!28787) Int)

(assert (=> b!2465243 (= e!1563297 (= (size!22328 t2!67) (size!22335 (originalCharacters!5227 t2!67))))))

(assert (= (and d!709952 res!1044196) b!2465242))

(assert (= (and b!2465242 res!1044197) b!2465243))

(declare-fun b_lambda!75547 () Bool)

(assert (=> (not b_lambda!75547) (not b!2465242)))

(declare-fun t!209239 () Bool)

(declare-fun tb!139265 () Bool)

(assert (=> (and b!2465146 (= (toChars!6180 (transformation!4461 (rule!6819 t2!67))) (toChars!6180 (transformation!4461 (rule!6819 t2!67)))) t!209239) tb!139265))

(declare-fun b!2465248 () Bool)

(declare-fun e!1563300 () Bool)

(declare-fun tp!786056 () Bool)

(declare-fun inv!38779 (Conc!9169) Bool)

(assert (=> b!2465248 (= e!1563300 (and (inv!38779 (c!393188 (dynLambda!12323 (toChars!6180 (transformation!4461 (rule!6819 t2!67))) (value!142544 t2!67)))) tp!786056))))

(declare-fun result!171874 () Bool)

(declare-fun inv!38780 (BalanceConc!17952) Bool)

(assert (=> tb!139265 (= result!171874 (and (inv!38780 (dynLambda!12323 (toChars!6180 (transformation!4461 (rule!6819 t2!67))) (value!142544 t2!67))) e!1563300))))

(assert (= tb!139265 b!2465248))

(declare-fun m!2834875 () Bool)

(assert (=> b!2465248 m!2834875))

(declare-fun m!2834877 () Bool)

(assert (=> tb!139265 m!2834877))

(assert (=> b!2465242 t!209239))

(declare-fun b_and!186213 () Bool)

(assert (= b_and!186183 (and (=> t!209239 result!171874) b_and!186213)))

(declare-fun t!209241 () Bool)

(declare-fun tb!139267 () Bool)

(assert (=> (and b!2465132 (= (toChars!6180 (transformation!4461 (h!34089 rules!4472))) (toChars!6180 (transformation!4461 (rule!6819 t2!67)))) t!209241) tb!139267))

(declare-fun result!171878 () Bool)

(assert (= result!171878 result!171874))

(assert (=> b!2465242 t!209241))

(declare-fun b_and!186215 () Bool)

(assert (= b_and!186187 (and (=> t!209241 result!171878) b_and!186215)))

(declare-fun t!209243 () Bool)

(declare-fun tb!139269 () Bool)

(assert (=> (and b!2465134 (= (toChars!6180 (transformation!4461 (rule!6819 t1!67))) (toChars!6180 (transformation!4461 (rule!6819 t2!67)))) t!209243) tb!139269))

(declare-fun result!171880 () Bool)

(assert (= result!171880 result!171874))

(assert (=> b!2465242 t!209243))

(declare-fun b_and!186217 () Bool)

(assert (= b_and!186191 (and (=> t!209243 result!171880) b_and!186217)))

(declare-fun tb!139271 () Bool)

(declare-fun t!209245 () Bool)

(assert (=> (and b!2465142 (= (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))) (toChars!6180 (transformation!4461 (rule!6819 t2!67)))) t!209245) tb!139271))

(declare-fun result!171882 () Bool)

(assert (= result!171882 result!171874))

(assert (=> b!2465242 t!209245))

(declare-fun b_and!186219 () Bool)

(assert (= b_and!186195 (and (=> t!209245 result!171882) b_and!186219)))

(declare-fun m!2834879 () Bool)

(assert (=> d!709952 m!2834879))

(declare-fun m!2834881 () Bool)

(assert (=> b!2465242 m!2834881))

(assert (=> b!2465242 m!2834881))

(declare-fun m!2834883 () Bool)

(assert (=> b!2465242 m!2834883))

(declare-fun m!2834885 () Bool)

(assert (=> b!2465243 m!2834885))

(assert (=> start!240414 d!709952))

(declare-fun d!709958 () Bool)

(declare-fun res!1044198 () Bool)

(declare-fun e!1563301 () Bool)

(assert (=> d!709958 (=> (not res!1044198) (not e!1563301))))

(assert (=> d!709958 (= res!1044198 (not (isEmpty!16682 (originalCharacters!5227 t1!67))))))

(assert (=> d!709958 (= (inv!38775 t1!67) e!1563301)))

(declare-fun b!2465249 () Bool)

(declare-fun res!1044199 () Bool)

(assert (=> b!2465249 (=> (not res!1044199) (not e!1563301))))

(assert (=> b!2465249 (= res!1044199 (= (originalCharacters!5227 t1!67) (list!11119 (dynLambda!12323 (toChars!6180 (transformation!4461 (rule!6819 t1!67))) (value!142544 t1!67)))))))

(declare-fun b!2465250 () Bool)

(assert (=> b!2465250 (= e!1563301 (= (size!22328 t1!67) (size!22335 (originalCharacters!5227 t1!67))))))

(assert (= (and d!709958 res!1044198) b!2465249))

(assert (= (and b!2465249 res!1044199) b!2465250))

(declare-fun b_lambda!75549 () Bool)

(assert (=> (not b_lambda!75549) (not b!2465249)))

(declare-fun tb!139273 () Bool)

(declare-fun t!209247 () Bool)

(assert (=> (and b!2465146 (= (toChars!6180 (transformation!4461 (rule!6819 t2!67))) (toChars!6180 (transformation!4461 (rule!6819 t1!67)))) t!209247) tb!139273))

(declare-fun b!2465251 () Bool)

(declare-fun e!1563302 () Bool)

(declare-fun tp!786057 () Bool)

(assert (=> b!2465251 (= e!1563302 (and (inv!38779 (c!393188 (dynLambda!12323 (toChars!6180 (transformation!4461 (rule!6819 t1!67))) (value!142544 t1!67)))) tp!786057))))

(declare-fun result!171884 () Bool)

(assert (=> tb!139273 (= result!171884 (and (inv!38780 (dynLambda!12323 (toChars!6180 (transformation!4461 (rule!6819 t1!67))) (value!142544 t1!67))) e!1563302))))

(assert (= tb!139273 b!2465251))

(declare-fun m!2834887 () Bool)

(assert (=> b!2465251 m!2834887))

(declare-fun m!2834889 () Bool)

(assert (=> tb!139273 m!2834889))

(assert (=> b!2465249 t!209247))

(declare-fun b_and!186221 () Bool)

(assert (= b_and!186213 (and (=> t!209247 result!171884) b_and!186221)))

(declare-fun t!209249 () Bool)

(declare-fun tb!139275 () Bool)

(assert (=> (and b!2465132 (= (toChars!6180 (transformation!4461 (h!34089 rules!4472))) (toChars!6180 (transformation!4461 (rule!6819 t1!67)))) t!209249) tb!139275))

(declare-fun result!171886 () Bool)

(assert (= result!171886 result!171884))

(assert (=> b!2465249 t!209249))

(declare-fun b_and!186223 () Bool)

(assert (= b_and!186215 (and (=> t!209249 result!171886) b_and!186223)))

(declare-fun t!209251 () Bool)

(declare-fun tb!139277 () Bool)

(assert (=> (and b!2465134 (= (toChars!6180 (transformation!4461 (rule!6819 t1!67))) (toChars!6180 (transformation!4461 (rule!6819 t1!67)))) t!209251) tb!139277))

(declare-fun result!171888 () Bool)

(assert (= result!171888 result!171884))

(assert (=> b!2465249 t!209251))

(declare-fun b_and!186225 () Bool)

(assert (= b_and!186217 (and (=> t!209251 result!171888) b_and!186225)))

(declare-fun tb!139279 () Bool)

(declare-fun t!209253 () Bool)

(assert (=> (and b!2465142 (= (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))) (toChars!6180 (transformation!4461 (rule!6819 t1!67)))) t!209253) tb!139279))

(declare-fun result!171890 () Bool)

(assert (= result!171890 result!171884))

(assert (=> b!2465249 t!209253))

(declare-fun b_and!186227 () Bool)

(assert (= b_and!186219 (and (=> t!209253 result!171890) b_and!186227)))

(declare-fun m!2834891 () Bool)

(assert (=> d!709958 m!2834891))

(declare-fun m!2834893 () Bool)

(assert (=> b!2465249 m!2834893))

(assert (=> b!2465249 m!2834893))

(declare-fun m!2834895 () Bool)

(assert (=> b!2465249 m!2834895))

(declare-fun m!2834897 () Bool)

(assert (=> b!2465250 m!2834897))

(assert (=> start!240414 d!709958))

(declare-fun d!709960 () Bool)

(declare-fun lt!882130 () Token!8392)

(declare-fun contains!4897 (List!28789 Token!8392) Bool)

(assert (=> d!709960 (contains!4897 l!6611 lt!882130)))

(declare-fun e!1563308 () Token!8392)

(assert (=> d!709960 (= lt!882130 e!1563308)))

(declare-fun c!393207 () Bool)

(assert (=> d!709960 (= c!393207 (= i!1803 0))))

(declare-fun e!1563307 () Bool)

(assert (=> d!709960 e!1563307))

(declare-fun res!1044202 () Bool)

(assert (=> d!709960 (=> (not res!1044202) (not e!1563307))))

(assert (=> d!709960 (= res!1044202 (<= 0 i!1803))))

(assert (=> d!709960 (= (apply!6743 l!6611 i!1803) lt!882130)))

(declare-fun b!2465258 () Bool)

(assert (=> b!2465258 (= e!1563307 (< i!1803 (size!22329 l!6611)))))

(declare-fun b!2465259 () Bool)

(declare-fun head!5627 (List!28789) Token!8392)

(assert (=> b!2465259 (= e!1563308 (head!5627 l!6611))))

(declare-fun b!2465260 () Bool)

(declare-fun tail!3900 (List!28789) List!28789)

(assert (=> b!2465260 (= e!1563308 (apply!6743 (tail!3900 l!6611) (- i!1803 1)))))

(assert (= (and d!709960 res!1044202) b!2465258))

(assert (= (and d!709960 c!393207) b!2465259))

(assert (= (and d!709960 (not c!393207)) b!2465260))

(declare-fun m!2834899 () Bool)

(assert (=> d!709960 m!2834899))

(assert (=> b!2465258 m!2834741))

(declare-fun m!2834901 () Bool)

(assert (=> b!2465259 m!2834901))

(declare-fun m!2834903 () Bool)

(assert (=> b!2465260 m!2834903))

(assert (=> b!2465260 m!2834903))

(declare-fun m!2834905 () Bool)

(assert (=> b!2465260 m!2834905))

(assert (=> b!2465126 d!709960))

(declare-fun d!709962 () Bool)

(declare-fun res!1044203 () Bool)

(declare-fun e!1563309 () Bool)

(assert (=> d!709962 (=> (not res!1044203) (not e!1563309))))

(assert (=> d!709962 (= res!1044203 (not (isEmpty!16682 (originalCharacters!5227 (h!34090 l!6611)))))))

(assert (=> d!709962 (= (inv!38775 (h!34090 l!6611)) e!1563309)))

(declare-fun b!2465261 () Bool)

(declare-fun res!1044204 () Bool)

(assert (=> b!2465261 (=> (not res!1044204) (not e!1563309))))

(assert (=> b!2465261 (= res!1044204 (= (originalCharacters!5227 (h!34090 l!6611)) (list!11119 (dynLambda!12323 (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))) (value!142544 (h!34090 l!6611))))))))

(declare-fun b!2465262 () Bool)

(assert (=> b!2465262 (= e!1563309 (= (size!22328 (h!34090 l!6611)) (size!22335 (originalCharacters!5227 (h!34090 l!6611)))))))

(assert (= (and d!709962 res!1044203) b!2465261))

(assert (= (and b!2465261 res!1044204) b!2465262))

(declare-fun b_lambda!75551 () Bool)

(assert (=> (not b_lambda!75551) (not b!2465261)))

(declare-fun t!209255 () Bool)

(declare-fun tb!139281 () Bool)

(assert (=> (and b!2465146 (= (toChars!6180 (transformation!4461 (rule!6819 t2!67))) (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611))))) t!209255) tb!139281))

(declare-fun b!2465263 () Bool)

(declare-fun e!1563310 () Bool)

(declare-fun tp!786058 () Bool)

(assert (=> b!2465263 (= e!1563310 (and (inv!38779 (c!393188 (dynLambda!12323 (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))) (value!142544 (h!34090 l!6611))))) tp!786058))))

(declare-fun result!171892 () Bool)

(assert (=> tb!139281 (= result!171892 (and (inv!38780 (dynLambda!12323 (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))) (value!142544 (h!34090 l!6611)))) e!1563310))))

(assert (= tb!139281 b!2465263))

(declare-fun m!2834907 () Bool)

(assert (=> b!2465263 m!2834907))

(declare-fun m!2834909 () Bool)

(assert (=> tb!139281 m!2834909))

(assert (=> b!2465261 t!209255))

(declare-fun b_and!186229 () Bool)

(assert (= b_and!186221 (and (=> t!209255 result!171892) b_and!186229)))

(declare-fun t!209257 () Bool)

(declare-fun tb!139283 () Bool)

(assert (=> (and b!2465132 (= (toChars!6180 (transformation!4461 (h!34089 rules!4472))) (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611))))) t!209257) tb!139283))

(declare-fun result!171894 () Bool)

(assert (= result!171894 result!171892))

(assert (=> b!2465261 t!209257))

(declare-fun b_and!186231 () Bool)

(assert (= b_and!186223 (and (=> t!209257 result!171894) b_and!186231)))

(declare-fun tb!139285 () Bool)

(declare-fun t!209259 () Bool)

(assert (=> (and b!2465134 (= (toChars!6180 (transformation!4461 (rule!6819 t1!67))) (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611))))) t!209259) tb!139285))

(declare-fun result!171896 () Bool)

(assert (= result!171896 result!171892))

(assert (=> b!2465261 t!209259))

(declare-fun b_and!186233 () Bool)

(assert (= b_and!186225 (and (=> t!209259 result!171896) b_and!186233)))

(declare-fun t!209261 () Bool)

(declare-fun tb!139287 () Bool)

(assert (=> (and b!2465142 (= (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))) (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611))))) t!209261) tb!139287))

(declare-fun result!171898 () Bool)

(assert (= result!171898 result!171892))

(assert (=> b!2465261 t!209261))

(declare-fun b_and!186235 () Bool)

(assert (= b_and!186227 (and (=> t!209261 result!171898) b_and!186235)))

(declare-fun m!2834911 () Bool)

(assert (=> d!709962 m!2834911))

(declare-fun m!2834913 () Bool)

(assert (=> b!2465261 m!2834913))

(assert (=> b!2465261 m!2834913))

(declare-fun m!2834915 () Bool)

(assert (=> b!2465261 m!2834915))

(declare-fun m!2834917 () Bool)

(assert (=> b!2465262 m!2834917))

(assert (=> b!2465136 d!709962))

(declare-fun d!709964 () Bool)

(declare-fun lt!882133 () Bool)

(assert (=> d!709964 (= lt!882133 (isEmpty!16682 (list!11119 (charsOf!2815 t2!67))))))

(declare-fun isEmpty!16683 (Conc!9169) Bool)

(assert (=> d!709964 (= lt!882133 (isEmpty!16683 (c!393188 (charsOf!2815 t2!67))))))

(assert (=> d!709964 (= (isEmpty!16678 (charsOf!2815 t2!67)) lt!882133)))

(declare-fun bs!466643 () Bool)

(assert (= bs!466643 d!709964))

(assert (=> bs!466643 m!2834745))

(declare-fun m!2834919 () Bool)

(assert (=> bs!466643 m!2834919))

(assert (=> bs!466643 m!2834919))

(declare-fun m!2834921 () Bool)

(assert (=> bs!466643 m!2834921))

(declare-fun m!2834923 () Bool)

(assert (=> bs!466643 m!2834923))

(assert (=> b!2465125 d!709964))

(declare-fun d!709966 () Bool)

(declare-fun lt!882136 () BalanceConc!17952)

(assert (=> d!709966 (= (list!11119 lt!882136) (originalCharacters!5227 t2!67))))

(assert (=> d!709966 (= lt!882136 (dynLambda!12323 (toChars!6180 (transformation!4461 (rule!6819 t2!67))) (value!142544 t2!67)))))

(assert (=> d!709966 (= (charsOf!2815 t2!67) lt!882136)))

(declare-fun b_lambda!75553 () Bool)

(assert (=> (not b_lambda!75553) (not d!709966)))

(assert (=> d!709966 t!209239))

(declare-fun b_and!186237 () Bool)

(assert (= b_and!186229 (and (=> t!209239 result!171874) b_and!186237)))

(assert (=> d!709966 t!209241))

(declare-fun b_and!186239 () Bool)

(assert (= b_and!186231 (and (=> t!209241 result!171878) b_and!186239)))

(assert (=> d!709966 t!209243))

(declare-fun b_and!186241 () Bool)

(assert (= b_and!186233 (and (=> t!209243 result!171880) b_and!186241)))

(assert (=> d!709966 t!209245))

(declare-fun b_and!186243 () Bool)

(assert (= b_and!186235 (and (=> t!209245 result!171882) b_and!186243)))

(declare-fun m!2834925 () Bool)

(assert (=> d!709966 m!2834925))

(assert (=> d!709966 m!2834881))

(assert (=> b!2465125 d!709966))

(declare-fun d!709968 () Bool)

(declare-fun res!1044207 () Bool)

(declare-fun e!1563313 () Bool)

(assert (=> d!709968 (=> (not res!1044207) (not e!1563313))))

(declare-fun rulesValid!1661 (LexerInterface!4058 List!28788) Bool)

(assert (=> d!709968 (= res!1044207 (rulesValid!1661 thiss!27932 rules!4472))))

(assert (=> d!709968 (= (rulesInvariant!3558 thiss!27932 rules!4472) e!1563313)))

(declare-fun b!2465266 () Bool)

(declare-datatypes ((List!28791 0))(
  ( (Nil!28691) (Cons!28691 (h!34092 String!31531) (t!209298 List!28791)) )
))
(declare-fun noDuplicateTag!1659 (LexerInterface!4058 List!28788 List!28791) Bool)

(assert (=> b!2465266 (= e!1563313 (noDuplicateTag!1659 thiss!27932 rules!4472 Nil!28691))))

(assert (= (and d!709968 res!1044207) b!2465266))

(declare-fun m!2834927 () Bool)

(assert (=> d!709968 m!2834927))

(declare-fun m!2834929 () Bool)

(assert (=> b!2465266 m!2834929))

(assert (=> b!2465135 d!709968))

(declare-fun d!709970 () Bool)

(declare-fun lt!882137 () Token!8392)

(assert (=> d!709970 (contains!4897 l!6611 lt!882137)))

(declare-fun e!1563315 () Token!8392)

(assert (=> d!709970 (= lt!882137 e!1563315)))

(declare-fun c!393208 () Bool)

(assert (=> d!709970 (= c!393208 (= (+ 1 i!1803) 0))))

(declare-fun e!1563314 () Bool)

(assert (=> d!709970 e!1563314))

(declare-fun res!1044208 () Bool)

(assert (=> d!709970 (=> (not res!1044208) (not e!1563314))))

(assert (=> d!709970 (= res!1044208 (<= 0 (+ 1 i!1803)))))

(assert (=> d!709970 (= (apply!6743 l!6611 (+ 1 i!1803)) lt!882137)))

(declare-fun b!2465267 () Bool)

(assert (=> b!2465267 (= e!1563314 (< (+ 1 i!1803) (size!22329 l!6611)))))

(declare-fun b!2465268 () Bool)

(assert (=> b!2465268 (= e!1563315 (head!5627 l!6611))))

(declare-fun b!2465269 () Bool)

(assert (=> b!2465269 (= e!1563315 (apply!6743 (tail!3900 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!709970 res!1044208) b!2465267))

(assert (= (and d!709970 c!393208) b!2465268))

(assert (= (and d!709970 (not c!393208)) b!2465269))

(declare-fun m!2834931 () Bool)

(assert (=> d!709970 m!2834931))

(assert (=> b!2465267 m!2834741))

(assert (=> b!2465268 m!2834901))

(assert (=> b!2465269 m!2834903))

(assert (=> b!2465269 m!2834903))

(declare-fun m!2834933 () Bool)

(assert (=> b!2465269 m!2834933))

(assert (=> b!2465145 d!709970))

(declare-fun b!2465400 () Bool)

(declare-fun e!1563410 () Bool)

(assert (=> b!2465400 (= e!1563410 true)))

(declare-fun b!2465399 () Bool)

(declare-fun e!1563409 () Bool)

(assert (=> b!2465399 (= e!1563409 e!1563410)))

(declare-fun b!2465398 () Bool)

(declare-fun e!1563408 () Bool)

(assert (=> b!2465398 (= e!1563408 e!1563409)))

(declare-fun d!709972 () Bool)

(assert (=> d!709972 e!1563408))

(assert (= b!2465399 b!2465400))

(assert (= b!2465398 b!2465399))

(assert (= (and d!709972 ((_ is Cons!28688) rules!4472)) b!2465398))

(declare-fun order!15545 () Int)

(declare-fun lambda!93229 () Int)

(declare-fun order!15543 () Int)

(declare-fun dynLambda!12324 (Int Int) Int)

(declare-fun dynLambda!12325 (Int Int) Int)

(assert (=> b!2465400 (< (dynLambda!12324 order!15543 (toValue!6321 (transformation!4461 (h!34089 rules!4472)))) (dynLambda!12325 order!15545 lambda!93229))))

(declare-fun order!15547 () Int)

(declare-fun dynLambda!12326 (Int Int) Int)

(assert (=> b!2465400 (< (dynLambda!12326 order!15547 (toChars!6180 (transformation!4461 (h!34089 rules!4472)))) (dynLambda!12325 order!15545 lambda!93229))))

(assert (=> d!709972 true))

(declare-fun lt!882170 () Bool)

(declare-fun forall!5893 (List!28789 Int) Bool)

(assert (=> d!709972 (= lt!882170 (forall!5893 l!6611 lambda!93229))))

(declare-fun e!1563401 () Bool)

(assert (=> d!709972 (= lt!882170 e!1563401)))

(declare-fun res!1044247 () Bool)

(assert (=> d!709972 (=> res!1044247 e!1563401)))

(assert (=> d!709972 (= res!1044247 (not ((_ is Cons!28689) l!6611)))))

(assert (=> d!709972 (not (isEmpty!16679 rules!4472))))

(assert (=> d!709972 (= (rulesProduceEachTokenIndividuallyList!1374 thiss!27932 rules!4472 l!6611) lt!882170)))

(declare-fun b!2465388 () Bool)

(declare-fun e!1563400 () Bool)

(assert (=> b!2465388 (= e!1563401 e!1563400)))

(declare-fun res!1044246 () Bool)

(assert (=> b!2465388 (=> (not res!1044246) (not e!1563400))))

(assert (=> b!2465388 (= res!1044246 (rulesProduceIndividualToken!1795 thiss!27932 rules!4472 (h!34090 l!6611)))))

(declare-fun b!2465389 () Bool)

(assert (=> b!2465389 (= e!1563400 (rulesProduceEachTokenIndividuallyList!1374 thiss!27932 rules!4472 (t!209218 l!6611)))))

(assert (= (and d!709972 (not res!1044247)) b!2465388))

(assert (= (and b!2465388 res!1044246) b!2465389))

(declare-fun m!2835049 () Bool)

(assert (=> d!709972 m!2835049))

(assert (=> d!709972 m!2834759))

(assert (=> b!2465388 m!2834835))

(declare-fun m!2835051 () Bool)

(assert (=> b!2465389 m!2835051))

(assert (=> b!2465144 d!709972))

(declare-fun d!710000 () Bool)

(declare-fun c!393221 () Bool)

(assert (=> d!710000 (= c!393221 ((_ is IntegerValue!13941) (value!142544 t2!67)))))

(declare-fun e!1563413 () Bool)

(assert (=> d!710000 (= (inv!21 (value!142544 t2!67)) e!1563413)))

(declare-fun b!2465403 () Bool)

(declare-fun e!1563411 () Bool)

(assert (=> b!2465403 (= e!1563411 (inv!15 (value!142544 t2!67)))))

(declare-fun b!2465404 () Bool)

(declare-fun e!1563412 () Bool)

(assert (=> b!2465404 (= e!1563413 e!1563412)))

(declare-fun c!393222 () Bool)

(assert (=> b!2465404 (= c!393222 ((_ is IntegerValue!13942) (value!142544 t2!67)))))

(declare-fun b!2465405 () Bool)

(declare-fun res!1044248 () Bool)

(assert (=> b!2465405 (=> res!1044248 e!1563411)))

(assert (=> b!2465405 (= res!1044248 (not ((_ is IntegerValue!13943) (value!142544 t2!67))))))

(assert (=> b!2465405 (= e!1563412 e!1563411)))

(declare-fun b!2465406 () Bool)

(assert (=> b!2465406 (= e!1563412 (inv!17 (value!142544 t2!67)))))

(declare-fun b!2465407 () Bool)

(assert (=> b!2465407 (= e!1563413 (inv!16 (value!142544 t2!67)))))

(assert (= (and d!710000 c!393221) b!2465407))

(assert (= (and d!710000 (not c!393221)) b!2465404))

(assert (= (and b!2465404 c!393222) b!2465406))

(assert (= (and b!2465404 (not c!393222)) b!2465405))

(assert (= (and b!2465405 (not res!1044248)) b!2465403))

(declare-fun m!2835053 () Bool)

(assert (=> b!2465403 m!2835053))

(declare-fun m!2835055 () Bool)

(assert (=> b!2465406 m!2835055))

(declare-fun m!2835057 () Bool)

(assert (=> b!2465407 m!2835057))

(assert (=> b!2465133 d!710000))

(declare-fun d!710002 () Bool)

(declare-fun lt!882171 () Bool)

(declare-fun e!1563415 () Bool)

(assert (=> d!710002 (= lt!882171 e!1563415)))

(declare-fun res!1044249 () Bool)

(assert (=> d!710002 (=> (not res!1044249) (not e!1563415))))

(assert (=> d!710002 (= res!1044249 (= (list!11118 (_1!16656 (lex!1855 thiss!27932 rules!4472 (print!1577 thiss!27932 (singletonSeq!1981 t1!67))))) (list!11118 (singletonSeq!1981 t1!67))))))

(declare-fun e!1563414 () Bool)

(assert (=> d!710002 (= lt!882171 e!1563414)))

(declare-fun res!1044250 () Bool)

(assert (=> d!710002 (=> (not res!1044250) (not e!1563414))))

(declare-fun lt!882172 () tuple2!28230)

(assert (=> d!710002 (= res!1044250 (= (size!22333 (_1!16656 lt!882172)) 1))))

(assert (=> d!710002 (= lt!882172 (lex!1855 thiss!27932 rules!4472 (print!1577 thiss!27932 (singletonSeq!1981 t1!67))))))

(assert (=> d!710002 (not (isEmpty!16679 rules!4472))))

(assert (=> d!710002 (= (rulesProduceIndividualToken!1795 thiss!27932 rules!4472 t1!67) lt!882171)))

(declare-fun b!2465408 () Bool)

(declare-fun res!1044251 () Bool)

(assert (=> b!2465408 (=> (not res!1044251) (not e!1563414))))

(assert (=> b!2465408 (= res!1044251 (= (apply!6745 (_1!16656 lt!882172) 0) t1!67))))

(declare-fun b!2465409 () Bool)

(assert (=> b!2465409 (= e!1563414 (isEmpty!16678 (_2!16656 lt!882172)))))

(declare-fun b!2465410 () Bool)

(assert (=> b!2465410 (= e!1563415 (isEmpty!16678 (_2!16656 (lex!1855 thiss!27932 rules!4472 (print!1577 thiss!27932 (singletonSeq!1981 t1!67))))))))

(assert (= (and d!710002 res!1044250) b!2465408))

(assert (= (and b!2465408 res!1044251) b!2465409))

(assert (= (and d!710002 res!1044249) b!2465410))

(declare-fun m!2835059 () Bool)

(assert (=> d!710002 m!2835059))

(declare-fun m!2835061 () Bool)

(assert (=> d!710002 m!2835061))

(assert (=> d!710002 m!2835059))

(declare-fun m!2835063 () Bool)

(assert (=> d!710002 m!2835063))

(declare-fun m!2835065 () Bool)

(assert (=> d!710002 m!2835065))

(declare-fun m!2835067 () Bool)

(assert (=> d!710002 m!2835067))

(assert (=> d!710002 m!2834759))

(assert (=> d!710002 m!2835059))

(assert (=> d!710002 m!2835065))

(declare-fun m!2835069 () Bool)

(assert (=> d!710002 m!2835069))

(declare-fun m!2835071 () Bool)

(assert (=> b!2465408 m!2835071))

(declare-fun m!2835073 () Bool)

(assert (=> b!2465409 m!2835073))

(assert (=> b!2465410 m!2835059))

(assert (=> b!2465410 m!2835059))

(assert (=> b!2465410 m!2835065))

(assert (=> b!2465410 m!2835065))

(assert (=> b!2465410 m!2835067))

(declare-fun m!2835075 () Bool)

(assert (=> b!2465410 m!2835075))

(assert (=> b!2465122 d!710002))

(declare-fun d!710004 () Bool)

(declare-fun c!393223 () Bool)

(assert (=> d!710004 (= c!393223 ((_ is IntegerValue!13941) (value!142544 t1!67)))))

(declare-fun e!1563418 () Bool)

(assert (=> d!710004 (= (inv!21 (value!142544 t1!67)) e!1563418)))

(declare-fun b!2465411 () Bool)

(declare-fun e!1563416 () Bool)

(assert (=> b!2465411 (= e!1563416 (inv!15 (value!142544 t1!67)))))

(declare-fun b!2465412 () Bool)

(declare-fun e!1563417 () Bool)

(assert (=> b!2465412 (= e!1563418 e!1563417)))

(declare-fun c!393224 () Bool)

(assert (=> b!2465412 (= c!393224 ((_ is IntegerValue!13942) (value!142544 t1!67)))))

(declare-fun b!2465413 () Bool)

(declare-fun res!1044252 () Bool)

(assert (=> b!2465413 (=> res!1044252 e!1563416)))

(assert (=> b!2465413 (= res!1044252 (not ((_ is IntegerValue!13943) (value!142544 t1!67))))))

(assert (=> b!2465413 (= e!1563417 e!1563416)))

(declare-fun b!2465414 () Bool)

(assert (=> b!2465414 (= e!1563417 (inv!17 (value!142544 t1!67)))))

(declare-fun b!2465415 () Bool)

(assert (=> b!2465415 (= e!1563418 (inv!16 (value!142544 t1!67)))))

(assert (= (and d!710004 c!393223) b!2465415))

(assert (= (and d!710004 (not c!393223)) b!2465412))

(assert (= (and b!2465412 c!393224) b!2465414))

(assert (= (and b!2465412 (not c!393224)) b!2465413))

(assert (= (and b!2465413 (not res!1044252)) b!2465411))

(declare-fun m!2835077 () Bool)

(assert (=> b!2465411 m!2835077))

(declare-fun m!2835079 () Bool)

(assert (=> b!2465414 m!2835079))

(declare-fun m!2835081 () Bool)

(assert (=> b!2465415 m!2835081))

(assert (=> b!2465143 d!710004))

(declare-fun d!710006 () Bool)

(assert (=> d!710006 (= (isEmpty!16679 rules!4472) ((_ is Nil!28688) rules!4472))))

(assert (=> b!2465131 d!710006))

(declare-fun d!710008 () Bool)

(assert (=> d!710008 (= (inv!38772 (tag!4951 (rule!6819 t1!67))) (= (mod (str.len (value!142543 (tag!4951 (rule!6819 t1!67)))) 2) 0))))

(assert (=> b!2465141 d!710008))

(declare-fun d!710010 () Bool)

(declare-fun res!1044253 () Bool)

(declare-fun e!1563419 () Bool)

(assert (=> d!710010 (=> (not res!1044253) (not e!1563419))))

(assert (=> d!710010 (= res!1044253 (semiInverseModEq!1836 (toChars!6180 (transformation!4461 (rule!6819 t1!67))) (toValue!6321 (transformation!4461 (rule!6819 t1!67)))))))

(assert (=> d!710010 (= (inv!38776 (transformation!4461 (rule!6819 t1!67))) e!1563419)))

(declare-fun b!2465416 () Bool)

(assert (=> b!2465416 (= e!1563419 (equivClasses!1747 (toChars!6180 (transformation!4461 (rule!6819 t1!67))) (toValue!6321 (transformation!4461 (rule!6819 t1!67)))))))

(assert (= (and d!710010 res!1044253) b!2465416))

(declare-fun m!2835083 () Bool)

(assert (=> d!710010 m!2835083))

(declare-fun m!2835085 () Bool)

(assert (=> b!2465416 m!2835085))

(assert (=> b!2465141 d!710010))

(declare-fun b!2465430 () Bool)

(declare-fun e!1563422 () Bool)

(declare-fun tp!786135 () Bool)

(declare-fun tp!786133 () Bool)

(assert (=> b!2465430 (= e!1563422 (and tp!786135 tp!786133))))

(assert (=> b!2465129 (= tp!786042 e!1563422)))

(declare-fun b!2465427 () Bool)

(declare-fun tp_is_empty!11935 () Bool)

(assert (=> b!2465427 (= e!1563422 tp_is_empty!11935)))

(declare-fun b!2465428 () Bool)

(declare-fun tp!786134 () Bool)

(declare-fun tp!786132 () Bool)

(assert (=> b!2465428 (= e!1563422 (and tp!786134 tp!786132))))

(declare-fun b!2465429 () Bool)

(declare-fun tp!786136 () Bool)

(assert (=> b!2465429 (= e!1563422 tp!786136)))

(assert (= (and b!2465129 ((_ is ElementMatch!7249) (regex!4461 (rule!6819 (h!34090 l!6611))))) b!2465427))

(assert (= (and b!2465129 ((_ is Concat!11897) (regex!4461 (rule!6819 (h!34090 l!6611))))) b!2465428))

(assert (= (and b!2465129 ((_ is Star!7249) (regex!4461 (rule!6819 (h!34090 l!6611))))) b!2465429))

(assert (= (and b!2465129 ((_ is Union!7249) (regex!4461 (rule!6819 (h!34090 l!6611))))) b!2465430))

(declare-fun b!2465434 () Bool)

(declare-fun e!1563423 () Bool)

(declare-fun tp!786140 () Bool)

(declare-fun tp!786138 () Bool)

(assert (=> b!2465434 (= e!1563423 (and tp!786140 tp!786138))))

(assert (=> b!2465139 (= tp!786041 e!1563423)))

(declare-fun b!2465431 () Bool)

(assert (=> b!2465431 (= e!1563423 tp_is_empty!11935)))

(declare-fun b!2465432 () Bool)

(declare-fun tp!786139 () Bool)

(declare-fun tp!786137 () Bool)

(assert (=> b!2465432 (= e!1563423 (and tp!786139 tp!786137))))

(declare-fun b!2465433 () Bool)

(declare-fun tp!786141 () Bool)

(assert (=> b!2465433 (= e!1563423 tp!786141)))

(assert (= (and b!2465139 ((_ is ElementMatch!7249) (regex!4461 (h!34089 rules!4472)))) b!2465431))

(assert (= (and b!2465139 ((_ is Concat!11897) (regex!4461 (h!34089 rules!4472)))) b!2465432))

(assert (= (and b!2465139 ((_ is Star!7249) (regex!4461 (h!34089 rules!4472)))) b!2465433))

(assert (= (and b!2465139 ((_ is Union!7249) (regex!4461 (h!34089 rules!4472)))) b!2465434))

(declare-fun b!2465438 () Bool)

(declare-fun e!1563424 () Bool)

(declare-fun tp!786145 () Bool)

(declare-fun tp!786143 () Bool)

(assert (=> b!2465438 (= e!1563424 (and tp!786145 tp!786143))))

(assert (=> b!2465128 (= tp!786039 e!1563424)))

(declare-fun b!2465435 () Bool)

(assert (=> b!2465435 (= e!1563424 tp_is_empty!11935)))

(declare-fun b!2465436 () Bool)

(declare-fun tp!786144 () Bool)

(declare-fun tp!786142 () Bool)

(assert (=> b!2465436 (= e!1563424 (and tp!786144 tp!786142))))

(declare-fun b!2465437 () Bool)

(declare-fun tp!786146 () Bool)

(assert (=> b!2465437 (= e!1563424 tp!786146)))

(assert (= (and b!2465128 ((_ is ElementMatch!7249) (regex!4461 (rule!6819 t2!67)))) b!2465435))

(assert (= (and b!2465128 ((_ is Concat!11897) (regex!4461 (rule!6819 t2!67)))) b!2465436))

(assert (= (and b!2465128 ((_ is Star!7249) (regex!4461 (rule!6819 t2!67)))) b!2465437))

(assert (= (and b!2465128 ((_ is Union!7249) (regex!4461 (rule!6819 t2!67)))) b!2465438))

(declare-fun b!2465443 () Bool)

(declare-fun e!1563427 () Bool)

(declare-fun tp!786149 () Bool)

(assert (=> b!2465443 (= e!1563427 (and tp_is_empty!11935 tp!786149))))

(assert (=> b!2465137 (= tp!786046 e!1563427)))

(assert (= (and b!2465137 ((_ is Cons!28687) (originalCharacters!5227 (h!34090 l!6611)))) b!2465443))

(declare-fun b!2465457 () Bool)

(declare-fun b_free!70845 () Bool)

(declare-fun b_next!71549 () Bool)

(assert (=> b!2465457 (= b_free!70845 (not b_next!71549))))

(declare-fun tp!786162 () Bool)

(declare-fun b_and!186269 () Bool)

(assert (=> b!2465457 (= tp!786162 b_and!186269)))

(declare-fun b_free!70847 () Bool)

(declare-fun b_next!71551 () Bool)

(assert (=> b!2465457 (= b_free!70847 (not b_next!71551))))

(declare-fun t!209286 () Bool)

(declare-fun tb!139309 () Bool)

(assert (=> (and b!2465457 (= (toChars!6180 (transformation!4461 (rule!6819 (h!34090 (t!209218 l!6611))))) (toChars!6180 (transformation!4461 (rule!6819 t2!67)))) t!209286) tb!139309))

(declare-fun result!171934 () Bool)

(assert (= result!171934 result!171874))

(assert (=> b!2465242 t!209286))

(declare-fun tb!139311 () Bool)

(declare-fun t!209288 () Bool)

(assert (=> (and b!2465457 (= (toChars!6180 (transformation!4461 (rule!6819 (h!34090 (t!209218 l!6611))))) (toChars!6180 (transformation!4461 (rule!6819 t1!67)))) t!209288) tb!139311))

(declare-fun result!171936 () Bool)

(assert (= result!171936 result!171884))

(assert (=> b!2465249 t!209288))

(declare-fun t!209290 () Bool)

(declare-fun tb!139313 () Bool)

(assert (=> (and b!2465457 (= (toChars!6180 (transformation!4461 (rule!6819 (h!34090 (t!209218 l!6611))))) (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611))))) t!209290) tb!139313))

(declare-fun result!171938 () Bool)

(assert (= result!171938 result!171892))

(assert (=> b!2465261 t!209290))

(assert (=> d!709966 t!209286))

(declare-fun tp!786161 () Bool)

(declare-fun b_and!186271 () Bool)

(assert (=> b!2465457 (= tp!786161 (and (=> t!209286 result!171934) (=> t!209288 result!171936) (=> t!209290 result!171938) b_and!186271))))

(declare-fun e!1563441 () Bool)

(declare-fun b!2465456 () Bool)

(declare-fun e!1563445 () Bool)

(declare-fun tp!786163 () Bool)

(assert (=> b!2465456 (= e!1563445 (and tp!786163 (inv!38772 (tag!4951 (rule!6819 (h!34090 (t!209218 l!6611))))) (inv!38776 (transformation!4461 (rule!6819 (h!34090 (t!209218 l!6611))))) e!1563441))))

(declare-fun e!1563442 () Bool)

(declare-fun b!2465454 () Bool)

(declare-fun e!1563443 () Bool)

(declare-fun tp!786164 () Bool)

(assert (=> b!2465454 (= e!1563442 (and (inv!38775 (h!34090 (t!209218 l!6611))) e!1563443 tp!786164))))

(declare-fun tp!786160 () Bool)

(declare-fun b!2465455 () Bool)

(assert (=> b!2465455 (= e!1563443 (and (inv!21 (value!142544 (h!34090 (t!209218 l!6611)))) e!1563445 tp!786160))))

(assert (=> b!2465457 (= e!1563441 (and tp!786162 tp!786161))))

(assert (=> b!2465136 (= tp!786037 e!1563442)))

(assert (= b!2465456 b!2465457))

(assert (= b!2465455 b!2465456))

(assert (= b!2465454 b!2465455))

(assert (= (and b!2465136 ((_ is Cons!28689) (t!209218 l!6611))) b!2465454))

(declare-fun m!2835087 () Bool)

(assert (=> b!2465456 m!2835087))

(declare-fun m!2835089 () Bool)

(assert (=> b!2465456 m!2835089))

(declare-fun m!2835091 () Bool)

(assert (=> b!2465454 m!2835091))

(declare-fun m!2835093 () Bool)

(assert (=> b!2465455 m!2835093))

(declare-fun b!2465468 () Bool)

(declare-fun b_free!70849 () Bool)

(declare-fun b_next!71553 () Bool)

(assert (=> b!2465468 (= b_free!70849 (not b_next!71553))))

(declare-fun tp!786174 () Bool)

(declare-fun b_and!186273 () Bool)

(assert (=> b!2465468 (= tp!786174 b_and!186273)))

(declare-fun b_free!70851 () Bool)

(declare-fun b_next!71555 () Bool)

(assert (=> b!2465468 (= b_free!70851 (not b_next!71555))))

(declare-fun tb!139315 () Bool)

(declare-fun t!209292 () Bool)

(assert (=> (and b!2465468 (= (toChars!6180 (transformation!4461 (h!34089 (t!209217 rules!4472)))) (toChars!6180 (transformation!4461 (rule!6819 t2!67)))) t!209292) tb!139315))

(declare-fun result!171942 () Bool)

(assert (= result!171942 result!171874))

(assert (=> b!2465242 t!209292))

(declare-fun t!209294 () Bool)

(declare-fun tb!139317 () Bool)

(assert (=> (and b!2465468 (= (toChars!6180 (transformation!4461 (h!34089 (t!209217 rules!4472)))) (toChars!6180 (transformation!4461 (rule!6819 t1!67)))) t!209294) tb!139317))

(declare-fun result!171944 () Bool)

(assert (= result!171944 result!171884))

(assert (=> b!2465249 t!209294))

(declare-fun t!209296 () Bool)

(declare-fun tb!139319 () Bool)

(assert (=> (and b!2465468 (= (toChars!6180 (transformation!4461 (h!34089 (t!209217 rules!4472)))) (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611))))) t!209296) tb!139319))

(declare-fun result!171946 () Bool)

(assert (= result!171946 result!171892))

(assert (=> b!2465261 t!209296))

(assert (=> d!709966 t!209292))

(declare-fun tp!786176 () Bool)

(declare-fun b_and!186275 () Bool)

(assert (=> b!2465468 (= tp!786176 (and (=> t!209292 result!171942) (=> t!209294 result!171944) (=> t!209296 result!171946) b_and!186275))))

(declare-fun e!1563457 () Bool)

(assert (=> b!2465468 (= e!1563457 (and tp!786174 tp!786176))))

(declare-fun tp!786173 () Bool)

(declare-fun b!2465467 () Bool)

(declare-fun e!1563454 () Bool)

(assert (=> b!2465467 (= e!1563454 (and tp!786173 (inv!38772 (tag!4951 (h!34089 (t!209217 rules!4472)))) (inv!38776 (transformation!4461 (h!34089 (t!209217 rules!4472)))) e!1563457))))

(declare-fun b!2465466 () Bool)

(declare-fun e!1563455 () Bool)

(declare-fun tp!786175 () Bool)

(assert (=> b!2465466 (= e!1563455 (and e!1563454 tp!786175))))

(assert (=> b!2465124 (= tp!786034 e!1563455)))

(assert (= b!2465467 b!2465468))

(assert (= b!2465466 b!2465467))

(assert (= (and b!2465124 ((_ is Cons!28688) (t!209217 rules!4472))) b!2465466))

(declare-fun m!2835095 () Bool)

(assert (=> b!2465467 m!2835095))

(declare-fun m!2835097 () Bool)

(assert (=> b!2465467 m!2835097))

(declare-fun b!2465469 () Bool)

(declare-fun e!1563458 () Bool)

(declare-fun tp!786177 () Bool)

(assert (=> b!2465469 (= e!1563458 (and tp_is_empty!11935 tp!786177))))

(assert (=> b!2465133 (= tp!786033 e!1563458)))

(assert (= (and b!2465133 ((_ is Cons!28687) (originalCharacters!5227 t2!67))) b!2465469))

(declare-fun b!2465470 () Bool)

(declare-fun e!1563459 () Bool)

(declare-fun tp!786178 () Bool)

(assert (=> b!2465470 (= e!1563459 (and tp_is_empty!11935 tp!786178))))

(assert (=> b!2465143 (= tp!786040 e!1563459)))

(assert (= (and b!2465143 ((_ is Cons!28687) (originalCharacters!5227 t1!67))) b!2465470))

(declare-fun b!2465474 () Bool)

(declare-fun e!1563460 () Bool)

(declare-fun tp!786182 () Bool)

(declare-fun tp!786180 () Bool)

(assert (=> b!2465474 (= e!1563460 (and tp!786182 tp!786180))))

(assert (=> b!2465141 (= tp!786038 e!1563460)))

(declare-fun b!2465471 () Bool)

(assert (=> b!2465471 (= e!1563460 tp_is_empty!11935)))

(declare-fun b!2465472 () Bool)

(declare-fun tp!786181 () Bool)

(declare-fun tp!786179 () Bool)

(assert (=> b!2465472 (= e!1563460 (and tp!786181 tp!786179))))

(declare-fun b!2465473 () Bool)

(declare-fun tp!786183 () Bool)

(assert (=> b!2465473 (= e!1563460 tp!786183)))

(assert (= (and b!2465141 ((_ is ElementMatch!7249) (regex!4461 (rule!6819 t1!67)))) b!2465471))

(assert (= (and b!2465141 ((_ is Concat!11897) (regex!4461 (rule!6819 t1!67)))) b!2465472))

(assert (= (and b!2465141 ((_ is Star!7249) (regex!4461 (rule!6819 t1!67)))) b!2465473))

(assert (= (and b!2465141 ((_ is Union!7249) (regex!4461 (rule!6819 t1!67)))) b!2465474))

(declare-fun b_lambda!75567 () Bool)

(assert (= b_lambda!75553 (or (and b!2465142 b_free!70835 (= (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))) (toChars!6180 (transformation!4461 (rule!6819 t2!67))))) (and b!2465468 b_free!70851 (= (toChars!6180 (transformation!4461 (h!34089 (t!209217 rules!4472)))) (toChars!6180 (transformation!4461 (rule!6819 t2!67))))) (and b!2465134 b_free!70831 (= (toChars!6180 (transformation!4461 (rule!6819 t1!67))) (toChars!6180 (transformation!4461 (rule!6819 t2!67))))) (and b!2465132 b_free!70827 (= (toChars!6180 (transformation!4461 (h!34089 rules!4472))) (toChars!6180 (transformation!4461 (rule!6819 t2!67))))) (and b!2465457 b_free!70847 (= (toChars!6180 (transformation!4461 (rule!6819 (h!34090 (t!209218 l!6611))))) (toChars!6180 (transformation!4461 (rule!6819 t2!67))))) (and b!2465146 b_free!70823) b_lambda!75567)))

(declare-fun b_lambda!75569 () Bool)

(assert (= b_lambda!75551 (or (and b!2465132 b_free!70827 (= (toChars!6180 (transformation!4461 (h!34089 rules!4472))) (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))))) (and b!2465146 b_free!70823 (= (toChars!6180 (transformation!4461 (rule!6819 t2!67))) (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))))) (and b!2465468 b_free!70851 (= (toChars!6180 (transformation!4461 (h!34089 (t!209217 rules!4472)))) (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))))) (and b!2465134 b_free!70831 (= (toChars!6180 (transformation!4461 (rule!6819 t1!67))) (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))))) (and b!2465142 b_free!70835) (and b!2465457 b_free!70847 (= (toChars!6180 (transformation!4461 (rule!6819 (h!34090 (t!209218 l!6611))))) (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))))) b_lambda!75569)))

(declare-fun b_lambda!75571 () Bool)

(assert (= b_lambda!75549 (or (and b!2465468 b_free!70851 (= (toChars!6180 (transformation!4461 (h!34089 (t!209217 rules!4472)))) (toChars!6180 (transformation!4461 (rule!6819 t1!67))))) (and b!2465134 b_free!70831) (and b!2465132 b_free!70827 (= (toChars!6180 (transformation!4461 (h!34089 rules!4472))) (toChars!6180 (transformation!4461 (rule!6819 t1!67))))) (and b!2465142 b_free!70835 (= (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))) (toChars!6180 (transformation!4461 (rule!6819 t1!67))))) (and b!2465457 b_free!70847 (= (toChars!6180 (transformation!4461 (rule!6819 (h!34090 (t!209218 l!6611))))) (toChars!6180 (transformation!4461 (rule!6819 t1!67))))) (and b!2465146 b_free!70823 (= (toChars!6180 (transformation!4461 (rule!6819 t2!67))) (toChars!6180 (transformation!4461 (rule!6819 t1!67))))) b_lambda!75571)))

(declare-fun b_lambda!75573 () Bool)

(assert (= b_lambda!75547 (or (and b!2465142 b_free!70835 (= (toChars!6180 (transformation!4461 (rule!6819 (h!34090 l!6611)))) (toChars!6180 (transformation!4461 (rule!6819 t2!67))))) (and b!2465468 b_free!70851 (= (toChars!6180 (transformation!4461 (h!34089 (t!209217 rules!4472)))) (toChars!6180 (transformation!4461 (rule!6819 t2!67))))) (and b!2465134 b_free!70831 (= (toChars!6180 (transformation!4461 (rule!6819 t1!67))) (toChars!6180 (transformation!4461 (rule!6819 t2!67))))) (and b!2465132 b_free!70827 (= (toChars!6180 (transformation!4461 (h!34089 rules!4472))) (toChars!6180 (transformation!4461 (rule!6819 t2!67))))) (and b!2465457 b_free!70847 (= (toChars!6180 (transformation!4461 (rule!6819 (h!34090 (t!209218 l!6611))))) (toChars!6180 (transformation!4461 (rule!6819 t2!67))))) (and b!2465146 b_free!70823) b_lambda!75573)))

(check-sat (not b!2465416) (not b_lambda!75569) (not b!2465443) (not b!2465406) (not b_next!71537) (not tb!139273) b_and!186193 (not b!2465437) (not b!2465219) (not b_lambda!75573) (not b!2465398) (not d!709962) (not d!709960) (not b!2465388) (not b!2465438) (not b!2465409) (not b!2465259) (not d!709930) (not b!2465186) (not b!2465467) (not b_next!71553) (not b_next!71549) (not b!2465454) (not b!2465242) (not b!2465470) (not tb!139281) (not b!2465180) (not b!2465251) (not b!2465220) b_and!186189 (not b!2465258) (not b!2465411) (not b!2465429) b_and!186273 b_and!186269 (not b!2465267) (not b!2465181) (not b!2465243) (not b!2465473) (not d!709966) (not b!2465268) (not b_next!71555) (not b!2465193) (not d!709952) (not b_next!71533) (not b_next!71525) (not b!2465235) (not b!2465436) (not b!2465414) (not b!2465410) (not b_next!71551) (not b!2465182) (not b!2465407) (not b!2465260) (not b_next!71529) (not d!709922) (not b!2465432) (not b!2465403) (not b!2465248) b_and!186181 (not b_next!71527) (not d!709958) (not b!2465408) (not d!709964) (not b_next!71539) (not b!2465415) (not b!2465269) (not tb!139265) (not b!2465433) (not b!2465250) b_and!186239 (not b!2465455) b_and!186271 b_and!186185 (not b!2465472) (not b!2465428) b_and!186275 (not b!2465185) (not b!2465466) (not b!2465469) (not b!2465236) (not d!709926) (not b!2465232) (not b!2465434) (not b_lambda!75571) (not b_next!71531) (not b!2465474) b_and!186241 (not b_next!71535) (not d!710002) (not b!2465262) (not d!710010) tp_is_empty!11935 (not d!709970) (not b!2465266) (not d!709972) b_and!186237 (not b!2465249) (not b!2465263) (not b!2465261) (not b!2465389) (not d!709968) b_and!186243 (not b!2465430) (not b_lambda!75567) (not d!709934) (not b!2465187) (not b!2465456))
(check-sat b_and!186189 b_and!186273 b_and!186269 (not b_next!71555) (not b_next!71551) (not b_next!71529) b_and!186181 b_and!186239 b_and!186275 (not b_next!71531) (not b_next!71537) b_and!186193 (not b_next!71553) (not b_next!71549) (not b_next!71533) (not b_next!71525) (not b_next!71527) (not b_next!71539) b_and!186271 b_and!186185 b_and!186241 (not b_next!71535) b_and!186237 b_and!186243)
