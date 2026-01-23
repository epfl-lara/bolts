; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392142 () Bool)

(assert start!392142)

(declare-fun b!4131132 () Bool)

(declare-fun b_free!117187 () Bool)

(declare-fun b_next!117891 () Bool)

(assert (=> b!4131132 (= b_free!117187 (not b_next!117891))))

(declare-fun tp!1259117 () Bool)

(declare-fun b_and!320205 () Bool)

(assert (=> b!4131132 (= tp!1259117 b_and!320205)))

(declare-fun b_free!117189 () Bool)

(declare-fun b_next!117893 () Bool)

(assert (=> b!4131132 (= b_free!117189 (not b_next!117893))))

(declare-fun tp!1259123 () Bool)

(declare-fun b_and!320207 () Bool)

(assert (=> b!4131132 (= tp!1259123 b_and!320207)))

(declare-fun b!4131141 () Bool)

(declare-fun b_free!117191 () Bool)

(declare-fun b_next!117895 () Bool)

(assert (=> b!4131141 (= b_free!117191 (not b_next!117895))))

(declare-fun tp!1259116 () Bool)

(declare-fun b_and!320209 () Bool)

(assert (=> b!4131141 (= tp!1259116 b_and!320209)))

(declare-fun b_free!117193 () Bool)

(declare-fun b_next!117897 () Bool)

(assert (=> b!4131141 (= b_free!117193 (not b_next!117897))))

(declare-fun tp!1259114 () Bool)

(declare-fun b_and!320211 () Bool)

(assert (=> b!4131141 (= tp!1259114 b_and!320211)))

(declare-fun b!4131139 () Bool)

(declare-fun b_free!117195 () Bool)

(declare-fun b_next!117899 () Bool)

(assert (=> b!4131139 (= b_free!117195 (not b_next!117899))))

(declare-fun tp!1259115 () Bool)

(declare-fun b_and!320213 () Bool)

(assert (=> b!4131139 (= tp!1259115 b_and!320213)))

(declare-fun b_free!117197 () Bool)

(declare-fun b_next!117901 () Bool)

(assert (=> b!4131139 (= b_free!117197 (not b_next!117901))))

(declare-fun tp!1259121 () Bool)

(declare-fun b_and!320215 () Bool)

(assert (=> b!4131139 (= tp!1259121 b_and!320215)))

(declare-fun b!4131129 () Bool)

(declare-fun res!1688806 () Bool)

(declare-fun e!2563228 () Bool)

(assert (=> b!4131129 (=> (not res!1688806) (not e!2563228))))

(declare-datatypes ((LexerInterface!6913 0))(
  ( (LexerInterfaceExt!6910 (__x!27325 Int)) (Lexer!6911) )
))
(declare-fun thiss!25645 () LexerInterface!6913)

(declare-datatypes ((List!44851 0))(
  ( (Nil!44727) (Cons!44727 (h!50147 (_ BitVec 16)) (t!341584 List!44851)) )
))
(declare-datatypes ((TokenValue!7554 0))(
  ( (FloatLiteralValue!15108 (text!53323 List!44851)) (TokenValueExt!7553 (__x!27326 Int)) (Broken!37770 (value!229262 List!44851)) (Object!7677) (End!7554) (Def!7554) (Underscore!7554) (Match!7554) (Else!7554) (Error!7554) (Case!7554) (If!7554) (Extends!7554) (Abstract!7554) (Class!7554) (Val!7554) (DelimiterValue!15108 (del!7614 List!44851)) (KeywordValue!7560 (value!229263 List!44851)) (CommentValue!15108 (value!229264 List!44851)) (WhitespaceValue!15108 (value!229265 List!44851)) (IndentationValue!7554 (value!229266 List!44851)) (String!51519) (Int32!7554) (Broken!37771 (value!229267 List!44851)) (Boolean!7555) (Unit!64054) (OperatorValue!7557 (op!7614 List!44851)) (IdentifierValue!15108 (value!229268 List!44851)) (IdentifierValue!15109 (value!229269 List!44851)) (WhitespaceValue!15109 (value!229270 List!44851)) (True!15108) (False!15108) (Broken!37772 (value!229271 List!44851)) (Broken!37773 (value!229272 List!44851)) (True!15109) (RightBrace!7554) (RightBracket!7554) (Colon!7554) (Null!7554) (Comma!7554) (LeftBracket!7554) (False!15109) (LeftBrace!7554) (ImaginaryLiteralValue!7554 (text!53324 List!44851)) (StringLiteralValue!22662 (value!229273 List!44851)) (EOFValue!7554 (value!229274 List!44851)) (IdentValue!7554 (value!229275 List!44851)) (DelimiterValue!15109 (value!229276 List!44851)) (DedentValue!7554 (value!229277 List!44851)) (NewLineValue!7554 (value!229278 List!44851)) (IntegerValue!22662 (value!229279 (_ BitVec 32)) (text!53325 List!44851)) (IntegerValue!22663 (value!229280 Int) (text!53326 List!44851)) (Times!7554) (Or!7554) (Equal!7554) (Minus!7554) (Broken!37774 (value!229281 List!44851)) (And!7554) (Div!7554) (LessEqual!7554) (Mod!7554) (Concat!19783) (Not!7554) (Plus!7554) (SpaceValue!7554 (value!229282 List!44851)) (IntegerValue!22664 (value!229283 Int) (text!53327 List!44851)) (StringLiteralValue!22663 (text!53328 List!44851)) (FloatLiteralValue!15109 (text!53329 List!44851)) (BytesLiteralValue!7554 (value!229284 List!44851)) (CommentValue!15109 (value!229285 List!44851)) (StringLiteralValue!22664 (value!229286 List!44851)) (ErrorTokenValue!7554 (msg!7615 List!44851)) )
))
(declare-datatypes ((C!24644 0))(
  ( (C!24645 (val!14432 Int)) )
))
(declare-datatypes ((List!44852 0))(
  ( (Nil!44728) (Cons!44728 (h!50148 C!24644) (t!341585 List!44852)) )
))
(declare-datatypes ((IArray!27075 0))(
  ( (IArray!27076 (innerList!13595 List!44852)) )
))
(declare-datatypes ((Conc!13535 0))(
  ( (Node!13535 (left!33495 Conc!13535) (right!33825 Conc!13535) (csize!27300 Int) (cheight!13746 Int)) (Leaf!20912 (xs!16841 IArray!27075) (csize!27301 Int)) (Empty!13535) )
))
(declare-datatypes ((BalanceConc!26664 0))(
  ( (BalanceConc!26665 (c!708808 Conc!13535)) )
))
(declare-datatypes ((String!51520 0))(
  ( (String!51521 (value!229287 String)) )
))
(declare-datatypes ((Regex!12229 0))(
  ( (ElementMatch!12229 (c!708809 C!24644)) (Concat!19784 (regOne!24970 Regex!12229) (regTwo!24970 Regex!12229)) (EmptyExpr!12229) (Star!12229 (reg!12558 Regex!12229)) (EmptyLang!12229) (Union!12229 (regOne!24971 Regex!12229) (regTwo!24971 Regex!12229)) )
))
(declare-datatypes ((TokenValueInjection!14536 0))(
  ( (TokenValueInjection!14537 (toValue!9988 Int) (toChars!9847 Int)) )
))
(declare-datatypes ((Rule!14448 0))(
  ( (Rule!14449 (regex!7324 Regex!12229) (tag!8184 String!51520) (isSeparator!7324 Bool) (transformation!7324 TokenValueInjection!14536)) )
))
(declare-datatypes ((List!44853 0))(
  ( (Nil!44729) (Cons!44729 (h!50149 Rule!14448) (t!341586 List!44853)) )
))
(declare-fun rules!3756 () List!44853)

(declare-fun rulesInvariant!6210 (LexerInterface!6913 List!44853) Bool)

(assert (=> b!4131129 (= res!1688806 (rulesInvariant!6210 thiss!25645 rules!3756))))

(declare-fun e!2563231 () Bool)

(declare-fun b!4131130 () Bool)

(declare-fun tp!1259122 () Bool)

(declare-fun e!2563227 () Bool)

(declare-fun inv!59327 (String!51520) Bool)

(declare-fun inv!59329 (TokenValueInjection!14536) Bool)

(assert (=> b!4131130 (= e!2563227 (and tp!1259122 (inv!59327 (tag!8184 (h!50149 rules!3756))) (inv!59329 (transformation!7324 (h!50149 rules!3756))) e!2563231))))

(declare-fun b!4131131 () Bool)

(declare-fun e!2563221 () Bool)

(declare-fun tp_is_empty!21381 () Bool)

(declare-fun tp!1259124 () Bool)

(assert (=> b!4131131 (= e!2563221 (and tp_is_empty!21381 tp!1259124))))

(declare-fun e!2563232 () Bool)

(assert (=> b!4131132 (= e!2563232 (and tp!1259117 tp!1259123))))

(declare-fun b!4131133 () Bool)

(declare-fun res!1688808 () Bool)

(assert (=> b!4131133 (=> (not res!1688808) (not e!2563228))))

(declare-fun p!2912 () List!44852)

(declare-fun isEmpty!26631 (List!44852) Bool)

(assert (=> b!4131133 (= res!1688808 (not (isEmpty!26631 p!2912)))))

(declare-fun rBis!149 () Rule!14448)

(declare-fun b!4131134 () Bool)

(declare-fun e!2563222 () Bool)

(declare-fun e!2563229 () Bool)

(declare-fun tp!1259119 () Bool)

(assert (=> b!4131134 (= e!2563222 (and tp!1259119 (inv!59327 (tag!8184 rBis!149)) (inv!59329 (transformation!7324 rBis!149)) e!2563229))))

(declare-fun b!4131135 () Bool)

(declare-fun res!1688812 () Bool)

(declare-fun e!2563220 () Bool)

(assert (=> b!4131135 (=> (not res!1688812) (not e!2563220))))

(declare-fun r!4008 () Rule!14448)

(declare-fun ruleValid!3130 (LexerInterface!6913 Rule!14448) Bool)

(assert (=> b!4131135 (= res!1688812 (ruleValid!3130 thiss!25645 r!4008))))

(declare-fun b!4131136 () Bool)

(declare-fun e!2563223 () Bool)

(declare-fun tp!1259113 () Bool)

(assert (=> b!4131136 (= e!2563223 (and tp!1259113 (inv!59327 (tag!8184 r!4008)) (inv!59329 (transformation!7324 r!4008)) e!2563232))))

(declare-fun b!4131137 () Bool)

(declare-fun res!1688804 () Bool)

(assert (=> b!4131137 (=> (not res!1688804) (not e!2563228))))

(declare-fun isEmpty!26632 (List!44853) Bool)

(assert (=> b!4131137 (= res!1688804 (not (isEmpty!26632 rules!3756)))))

(declare-fun b!4131138 () Bool)

(declare-fun res!1688810 () Bool)

(assert (=> b!4131138 (=> (not res!1688810) (not e!2563228))))

(declare-fun contains!9002 (List!44853 Rule!14448) Bool)

(assert (=> b!4131138 (= res!1688810 (contains!9002 rules!3756 rBis!149))))

(assert (=> b!4131139 (= e!2563229 (and tp!1259115 tp!1259121))))

(declare-fun b!4131140 () Bool)

(declare-fun res!1688805 () Bool)

(assert (=> b!4131140 (=> (not res!1688805) (not e!2563220))))

(declare-fun getIndex!670 (List!44853 Rule!14448) Int)

(assert (=> b!4131140 (= res!1688805 (< (getIndex!670 rules!3756 rBis!149) (getIndex!670 rules!3756 r!4008)))))

(declare-fun b!4131142 () Bool)

(declare-fun res!1688813 () Bool)

(assert (=> b!4131142 (=> (not res!1688813) (not e!2563228))))

(declare-fun input!3238 () List!44852)

(declare-fun isPrefix!4259 (List!44852 List!44852) Bool)

(assert (=> b!4131142 (= res!1688813 (isPrefix!4259 p!2912 input!3238))))

(declare-fun b!4131143 () Bool)

(declare-fun res!1688814 () Bool)

(assert (=> b!4131143 (=> (not res!1688814) (not e!2563220))))

(declare-fun matchR!6058 (Regex!12229 List!44852) Bool)

(assert (=> b!4131143 (= res!1688814 (matchR!6058 (regex!7324 r!4008) p!2912))))

(declare-fun b!4131144 () Bool)

(declare-fun e!2563224 () Bool)

(declare-fun tp!1259118 () Bool)

(assert (=> b!4131144 (= e!2563224 (and tp_is_empty!21381 tp!1259118))))

(declare-fun b!4131145 () Bool)

(declare-fun ListPrimitiveSize!285 (List!44853) Int)

(assert (=> b!4131145 (= e!2563220 (< (ListPrimitiveSize!285 rules!3756) 0))))

(declare-fun b!4131146 () Bool)

(declare-fun res!1688807 () Bool)

(assert (=> b!4131146 (=> (not res!1688807) (not e!2563228))))

(assert (=> b!4131146 (= res!1688807 (contains!9002 rules!3756 r!4008))))

(declare-fun b!4131147 () Bool)

(declare-fun e!2563230 () Bool)

(declare-fun tp!1259120 () Bool)

(assert (=> b!4131147 (= e!2563230 (and e!2563227 tp!1259120))))

(declare-fun b!4131148 () Bool)

(assert (=> b!4131148 (= e!2563228 e!2563220)))

(declare-fun res!1688811 () Bool)

(assert (=> b!4131148 (=> (not res!1688811) (not e!2563220))))

(declare-fun lt!1473289 () BalanceConc!26664)

(declare-datatypes ((Token!13578 0))(
  ( (Token!13579 (value!229288 TokenValue!7554) (rule!10416 Rule!14448) (size!33113 Int) (originalCharacters!7820 List!44852)) )
))
(declare-datatypes ((tuple2!43154 0))(
  ( (tuple2!43155 (_1!24711 Token!13578) (_2!24711 List!44852)) )
))
(declare-datatypes ((Option!9630 0))(
  ( (None!9629) (Some!9629 (v!40239 tuple2!43154)) )
))
(declare-fun maxPrefix!4103 (LexerInterface!6913 List!44853 List!44852) Option!9630)

(declare-fun apply!10397 (TokenValueInjection!14536 BalanceConc!26664) TokenValue!7554)

(declare-fun size!33114 (List!44852) Int)

(declare-fun getSuffix!2586 (List!44852 List!44852) List!44852)

(assert (=> b!4131148 (= res!1688811 (= (maxPrefix!4103 thiss!25645 rules!3756 input!3238) (Some!9629 (tuple2!43155 (Token!13579 (apply!10397 (transformation!7324 r!4008) lt!1473289) r!4008 (size!33114 p!2912) p!2912) (getSuffix!2586 input!3238 p!2912)))))))

(declare-datatypes ((Unit!64055 0))(
  ( (Unit!64056) )
))
(declare-fun lt!1473290 () Unit!64055)

(declare-fun lemmaSemiInverse!2182 (TokenValueInjection!14536 BalanceConc!26664) Unit!64055)

(assert (=> b!4131148 (= lt!1473290 (lemmaSemiInverse!2182 (transformation!7324 r!4008) lt!1473289))))

(declare-fun seqFromList!5441 (List!44852) BalanceConc!26664)

(assert (=> b!4131148 (= lt!1473289 (seqFromList!5441 p!2912))))

(assert (=> b!4131141 (= e!2563231 (and tp!1259116 tp!1259114))))

(declare-fun res!1688809 () Bool)

(assert (=> start!392142 (=> (not res!1688809) (not e!2563228))))

(get-info :version)

(assert (=> start!392142 (= res!1688809 ((_ is Lexer!6911) thiss!25645))))

(assert (=> start!392142 e!2563228))

(assert (=> start!392142 e!2563230))

(assert (=> start!392142 e!2563221))

(assert (=> start!392142 true))

(assert (=> start!392142 e!2563223))

(assert (=> start!392142 e!2563224))

(assert (=> start!392142 e!2563222))

(assert (= (and start!392142 res!1688809) b!4131142))

(assert (= (and b!4131142 res!1688813) b!4131137))

(assert (= (and b!4131137 res!1688804) b!4131129))

(assert (= (and b!4131129 res!1688806) b!4131146))

(assert (= (and b!4131146 res!1688807) b!4131138))

(assert (= (and b!4131138 res!1688810) b!4131133))

(assert (= (and b!4131133 res!1688808) b!4131148))

(assert (= (and b!4131148 res!1688811) b!4131143))

(assert (= (and b!4131143 res!1688814) b!4131140))

(assert (= (and b!4131140 res!1688805) b!4131135))

(assert (= (and b!4131135 res!1688812) b!4131145))

(assert (= b!4131130 b!4131141))

(assert (= b!4131147 b!4131130))

(assert (= (and start!392142 ((_ is Cons!44729) rules!3756)) b!4131147))

(assert (= (and start!392142 ((_ is Cons!44728) p!2912)) b!4131131))

(assert (= b!4131136 b!4131132))

(assert (= start!392142 b!4131136))

(assert (= (and start!392142 ((_ is Cons!44728) input!3238)) b!4131144))

(assert (= b!4131134 b!4131139))

(assert (= start!392142 b!4131134))

(declare-fun m!4728763 () Bool)

(assert (=> b!4131138 m!4728763))

(declare-fun m!4728765 () Bool)

(assert (=> b!4131145 m!4728765))

(declare-fun m!4728767 () Bool)

(assert (=> b!4131143 m!4728767))

(declare-fun m!4728769 () Bool)

(assert (=> b!4131136 m!4728769))

(declare-fun m!4728771 () Bool)

(assert (=> b!4131136 m!4728771))

(declare-fun m!4728773 () Bool)

(assert (=> b!4131133 m!4728773))

(declare-fun m!4728775 () Bool)

(assert (=> b!4131146 m!4728775))

(declare-fun m!4728777 () Bool)

(assert (=> b!4131137 m!4728777))

(declare-fun m!4728779 () Bool)

(assert (=> b!4131129 m!4728779))

(declare-fun m!4728781 () Bool)

(assert (=> b!4131140 m!4728781))

(declare-fun m!4728783 () Bool)

(assert (=> b!4131140 m!4728783))

(declare-fun m!4728785 () Bool)

(assert (=> b!4131130 m!4728785))

(declare-fun m!4728787 () Bool)

(assert (=> b!4131130 m!4728787))

(declare-fun m!4728789 () Bool)

(assert (=> b!4131142 m!4728789))

(declare-fun m!4728791 () Bool)

(assert (=> b!4131134 m!4728791))

(declare-fun m!4728793 () Bool)

(assert (=> b!4131134 m!4728793))

(declare-fun m!4728795 () Bool)

(assert (=> b!4131135 m!4728795))

(declare-fun m!4728797 () Bool)

(assert (=> b!4131148 m!4728797))

(declare-fun m!4728799 () Bool)

(assert (=> b!4131148 m!4728799))

(declare-fun m!4728801 () Bool)

(assert (=> b!4131148 m!4728801))

(declare-fun m!4728803 () Bool)

(assert (=> b!4131148 m!4728803))

(declare-fun m!4728805 () Bool)

(assert (=> b!4131148 m!4728805))

(declare-fun m!4728807 () Bool)

(assert (=> b!4131148 m!4728807))

(check-sat (not b_next!117901) b_and!320215 (not b!4131145) b_and!320207 (not b_next!117893) (not b!4131146) (not b_next!117891) b_and!320209 b_and!320205 (not b!4131130) (not b!4131138) (not b!4131140) (not b!4131129) (not b!4131134) (not b!4131135) (not b_next!117897) (not b!4131148) (not b!4131143) (not b!4131136) b_and!320213 (not b!4131142) (not b!4131131) (not b!4131133) (not b_next!117895) (not b!4131144) (not b_next!117899) (not b!4131147) b_and!320211 (not b!4131137) tp_is_empty!21381)
(check-sat (not b_next!117901) b_and!320215 (not b_next!117897) b_and!320207 b_and!320213 (not b_next!117895) (not b_next!117893) (not b_next!117891) b_and!320209 b_and!320205 (not b_next!117899) b_and!320211)
(get-model)

(declare-fun d!1223965 () Bool)

(declare-fun res!1688823 () Bool)

(declare-fun e!2563235 () Bool)

(assert (=> d!1223965 (=> (not res!1688823) (not e!2563235))))

(declare-fun validRegex!5503 (Regex!12229) Bool)

(assert (=> d!1223965 (= res!1688823 (validRegex!5503 (regex!7324 r!4008)))))

(assert (=> d!1223965 (= (ruleValid!3130 thiss!25645 r!4008) e!2563235)))

(declare-fun b!4131153 () Bool)

(declare-fun res!1688824 () Bool)

(assert (=> b!4131153 (=> (not res!1688824) (not e!2563235))))

(declare-fun nullable!4295 (Regex!12229) Bool)

(assert (=> b!4131153 (= res!1688824 (not (nullable!4295 (regex!7324 r!4008))))))

(declare-fun b!4131154 () Bool)

(assert (=> b!4131154 (= e!2563235 (not (= (tag!8184 r!4008) (String!51521 ""))))))

(assert (= (and d!1223965 res!1688823) b!4131153))

(assert (= (and b!4131153 res!1688824) b!4131154))

(declare-fun m!4728809 () Bool)

(assert (=> d!1223965 m!4728809))

(declare-fun m!4728811 () Bool)

(assert (=> b!4131153 m!4728811))

(assert (=> b!4131135 d!1223965))

(declare-fun d!1223967 () Bool)

(assert (=> d!1223967 (= (inv!59327 (tag!8184 rBis!149)) (= (mod (str.len (value!229287 (tag!8184 rBis!149))) 2) 0))))

(assert (=> b!4131134 d!1223967))

(declare-fun d!1223969 () Bool)

(declare-fun res!1688831 () Bool)

(declare-fun e!2563238 () Bool)

(assert (=> d!1223969 (=> (not res!1688831) (not e!2563238))))

(declare-fun semiInverseModEq!3159 (Int Int) Bool)

(assert (=> d!1223969 (= res!1688831 (semiInverseModEq!3159 (toChars!9847 (transformation!7324 rBis!149)) (toValue!9988 (transformation!7324 rBis!149))))))

(assert (=> d!1223969 (= (inv!59329 (transformation!7324 rBis!149)) e!2563238)))

(declare-fun b!4131157 () Bool)

(declare-fun equivClasses!3058 (Int Int) Bool)

(assert (=> b!4131157 (= e!2563238 (equivClasses!3058 (toChars!9847 (transformation!7324 rBis!149)) (toValue!9988 (transformation!7324 rBis!149))))))

(assert (= (and d!1223969 res!1688831) b!4131157))

(declare-fun m!4728813 () Bool)

(assert (=> d!1223969 m!4728813))

(declare-fun m!4728815 () Bool)

(assert (=> b!4131157 m!4728815))

(assert (=> b!4131134 d!1223969))

(declare-fun d!1223971 () Bool)

(declare-fun lt!1473293 () Int)

(assert (=> d!1223971 (>= lt!1473293 0)))

(declare-fun e!2563241 () Int)

(assert (=> d!1223971 (= lt!1473293 e!2563241)))

(declare-fun c!708812 () Bool)

(assert (=> d!1223971 (= c!708812 ((_ is Nil!44729) rules!3756))))

(assert (=> d!1223971 (= (ListPrimitiveSize!285 rules!3756) lt!1473293)))

(declare-fun b!4131162 () Bool)

(assert (=> b!4131162 (= e!2563241 0)))

(declare-fun b!4131163 () Bool)

(assert (=> b!4131163 (= e!2563241 (+ 1 (ListPrimitiveSize!285 (t!341586 rules!3756))))))

(assert (= (and d!1223971 c!708812) b!4131162))

(assert (= (and d!1223971 (not c!708812)) b!4131163))

(declare-fun m!4728817 () Bool)

(assert (=> b!4131163 m!4728817))

(assert (=> b!4131145 d!1223971))

(declare-fun d!1223975 () Bool)

(assert (=> d!1223975 (= (inv!59327 (tag!8184 r!4008)) (= (mod (str.len (value!229287 (tag!8184 r!4008))) 2) 0))))

(assert (=> b!4131136 d!1223975))

(declare-fun d!1223977 () Bool)

(declare-fun res!1688832 () Bool)

(declare-fun e!2563242 () Bool)

(assert (=> d!1223977 (=> (not res!1688832) (not e!2563242))))

(assert (=> d!1223977 (= res!1688832 (semiInverseModEq!3159 (toChars!9847 (transformation!7324 r!4008)) (toValue!9988 (transformation!7324 r!4008))))))

(assert (=> d!1223977 (= (inv!59329 (transformation!7324 r!4008)) e!2563242)))

(declare-fun b!4131164 () Bool)

(assert (=> b!4131164 (= e!2563242 (equivClasses!3058 (toChars!9847 (transformation!7324 r!4008)) (toValue!9988 (transformation!7324 r!4008))))))

(assert (= (and d!1223977 res!1688832) b!4131164))

(declare-fun m!4728819 () Bool)

(assert (=> d!1223977 m!4728819))

(declare-fun m!4728821 () Bool)

(assert (=> b!4131164 m!4728821))

(assert (=> b!4131136 d!1223977))

(declare-fun d!1223979 () Bool)

(declare-fun lt!1473299 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6900 (List!44853) (InoxSet Rule!14448))

(assert (=> d!1223979 (= lt!1473299 (select (content!6900 rules!3756) r!4008))))

(declare-fun e!2563253 () Bool)

(assert (=> d!1223979 (= lt!1473299 e!2563253)))

(declare-fun res!1688844 () Bool)

(assert (=> d!1223979 (=> (not res!1688844) (not e!2563253))))

(assert (=> d!1223979 (= res!1688844 ((_ is Cons!44729) rules!3756))))

(assert (=> d!1223979 (= (contains!9002 rules!3756 r!4008) lt!1473299)))

(declare-fun b!4131175 () Bool)

(declare-fun e!2563254 () Bool)

(assert (=> b!4131175 (= e!2563253 e!2563254)))

(declare-fun res!1688843 () Bool)

(assert (=> b!4131175 (=> res!1688843 e!2563254)))

(assert (=> b!4131175 (= res!1688843 (= (h!50149 rules!3756) r!4008))))

(declare-fun b!4131176 () Bool)

(assert (=> b!4131176 (= e!2563254 (contains!9002 (t!341586 rules!3756) r!4008))))

(assert (= (and d!1223979 res!1688844) b!4131175))

(assert (= (and b!4131175 (not res!1688843)) b!4131176))

(declare-fun m!4728825 () Bool)

(assert (=> d!1223979 m!4728825))

(declare-fun m!4728829 () Bool)

(assert (=> d!1223979 m!4728829))

(declare-fun m!4728831 () Bool)

(assert (=> b!4131176 m!4728831))

(assert (=> b!4131146 d!1223979))

(declare-fun b!4131223 () Bool)

(declare-fun e!2563283 () Bool)

(declare-fun lt!1473307 () Bool)

(assert (=> b!4131223 (= e!2563283 (not lt!1473307))))

(declare-fun b!4131224 () Bool)

(declare-fun res!1688875 () Bool)

(declare-fun e!2563288 () Bool)

(assert (=> b!4131224 (=> (not res!1688875) (not e!2563288))))

(declare-fun call!290335 () Bool)

(assert (=> b!4131224 (= res!1688875 (not call!290335))))

(declare-fun b!4131225 () Bool)

(declare-fun e!2563287 () Bool)

(declare-fun head!8706 (List!44852) C!24644)

(assert (=> b!4131225 (= e!2563287 (not (= (head!8706 p!2912) (c!708809 (regex!7324 r!4008)))))))

(declare-fun b!4131226 () Bool)

(declare-fun res!1688873 () Bool)

(declare-fun e!2563286 () Bool)

(assert (=> b!4131226 (=> res!1688873 e!2563286)))

(assert (=> b!4131226 (= res!1688873 (not ((_ is ElementMatch!12229) (regex!7324 r!4008))))))

(assert (=> b!4131226 (= e!2563283 e!2563286)))

(declare-fun b!4131227 () Bool)

(declare-fun e!2563284 () Bool)

(assert (=> b!4131227 (= e!2563284 (= lt!1473307 call!290335))))

(declare-fun b!4131228 () Bool)

(declare-fun res!1688874 () Bool)

(assert (=> b!4131228 (=> res!1688874 e!2563287)))

(declare-fun tail!6479 (List!44852) List!44852)

(assert (=> b!4131228 (= res!1688874 (not (isEmpty!26631 (tail!6479 p!2912))))))

(declare-fun b!4131229 () Bool)

(declare-fun e!2563282 () Bool)

(assert (=> b!4131229 (= e!2563286 e!2563282)))

(declare-fun res!1688880 () Bool)

(assert (=> b!4131229 (=> (not res!1688880) (not e!2563282))))

(assert (=> b!4131229 (= res!1688880 (not lt!1473307))))

(declare-fun b!4131230 () Bool)

(assert (=> b!4131230 (= e!2563284 e!2563283)))

(declare-fun c!708824 () Bool)

(assert (=> b!4131230 (= c!708824 ((_ is EmptyLang!12229) (regex!7324 r!4008)))))

(declare-fun b!4131231 () Bool)

(declare-fun e!2563285 () Bool)

(declare-fun derivativeStep!3690 (Regex!12229 C!24644) Regex!12229)

(assert (=> b!4131231 (= e!2563285 (matchR!6058 (derivativeStep!3690 (regex!7324 r!4008) (head!8706 p!2912)) (tail!6479 p!2912)))))

(declare-fun b!4131232 () Bool)

(assert (=> b!4131232 (= e!2563288 (= (head!8706 p!2912) (c!708809 (regex!7324 r!4008))))))

(declare-fun b!4131234 () Bool)

(declare-fun res!1688876 () Bool)

(assert (=> b!4131234 (=> res!1688876 e!2563286)))

(assert (=> b!4131234 (= res!1688876 e!2563288)))

(declare-fun res!1688879 () Bool)

(assert (=> b!4131234 (=> (not res!1688879) (not e!2563288))))

(assert (=> b!4131234 (= res!1688879 lt!1473307)))

(declare-fun b!4131235 () Bool)

(assert (=> b!4131235 (= e!2563285 (nullable!4295 (regex!7324 r!4008)))))

(declare-fun bm!290330 () Bool)

(assert (=> bm!290330 (= call!290335 (isEmpty!26631 p!2912))))

(declare-fun b!4131236 () Bool)

(declare-fun res!1688877 () Bool)

(assert (=> b!4131236 (=> (not res!1688877) (not e!2563288))))

(assert (=> b!4131236 (= res!1688877 (isEmpty!26631 (tail!6479 p!2912)))))

(declare-fun d!1223981 () Bool)

(assert (=> d!1223981 e!2563284))

(declare-fun c!708822 () Bool)

(assert (=> d!1223981 (= c!708822 ((_ is EmptyExpr!12229) (regex!7324 r!4008)))))

(assert (=> d!1223981 (= lt!1473307 e!2563285)))

(declare-fun c!708823 () Bool)

(assert (=> d!1223981 (= c!708823 (isEmpty!26631 p!2912))))

(assert (=> d!1223981 (validRegex!5503 (regex!7324 r!4008))))

(assert (=> d!1223981 (= (matchR!6058 (regex!7324 r!4008) p!2912) lt!1473307)))

(declare-fun b!4131233 () Bool)

(assert (=> b!4131233 (= e!2563282 e!2563287)))

(declare-fun res!1688878 () Bool)

(assert (=> b!4131233 (=> res!1688878 e!2563287)))

(assert (=> b!4131233 (= res!1688878 call!290335)))

(assert (= (and d!1223981 c!708823) b!4131235))

(assert (= (and d!1223981 (not c!708823)) b!4131231))

(assert (= (and d!1223981 c!708822) b!4131227))

(assert (= (and d!1223981 (not c!708822)) b!4131230))

(assert (= (and b!4131230 c!708824) b!4131223))

(assert (= (and b!4131230 (not c!708824)) b!4131226))

(assert (= (and b!4131226 (not res!1688873)) b!4131234))

(assert (= (and b!4131234 res!1688879) b!4131224))

(assert (= (and b!4131224 res!1688875) b!4131236))

(assert (= (and b!4131236 res!1688877) b!4131232))

(assert (= (and b!4131234 (not res!1688876)) b!4131229))

(assert (= (and b!4131229 res!1688880) b!4131233))

(assert (= (and b!4131233 (not res!1688878)) b!4131228))

(assert (= (and b!4131228 (not res!1688874)) b!4131225))

(assert (= (or b!4131227 b!4131224 b!4131233) bm!290330))

(assert (=> bm!290330 m!4728773))

(declare-fun m!4728845 () Bool)

(assert (=> b!4131225 m!4728845))

(assert (=> b!4131231 m!4728845))

(assert (=> b!4131231 m!4728845))

(declare-fun m!4728847 () Bool)

(assert (=> b!4131231 m!4728847))

(declare-fun m!4728849 () Bool)

(assert (=> b!4131231 m!4728849))

(assert (=> b!4131231 m!4728847))

(assert (=> b!4131231 m!4728849))

(declare-fun m!4728851 () Bool)

(assert (=> b!4131231 m!4728851))

(assert (=> b!4131232 m!4728845))

(assert (=> b!4131236 m!4728849))

(assert (=> b!4131236 m!4728849))

(declare-fun m!4728853 () Bool)

(assert (=> b!4131236 m!4728853))

(assert (=> d!1223981 m!4728773))

(assert (=> d!1223981 m!4728809))

(assert (=> b!4131235 m!4728811))

(assert (=> b!4131228 m!4728849))

(assert (=> b!4131228 m!4728849))

(assert (=> b!4131228 m!4728853))

(assert (=> b!4131143 d!1223981))

(declare-fun b!4131253 () Bool)

(declare-fun e!2563301 () Bool)

(assert (=> b!4131253 (= e!2563301 (isPrefix!4259 (tail!6479 p!2912) (tail!6479 input!3238)))))

(declare-fun d!1223995 () Bool)

(declare-fun e!2563302 () Bool)

(assert (=> d!1223995 e!2563302))

(declare-fun res!1688897 () Bool)

(assert (=> d!1223995 (=> res!1688897 e!2563302)))

(declare-fun lt!1473314 () Bool)

(assert (=> d!1223995 (= res!1688897 (not lt!1473314))))

(declare-fun e!2563300 () Bool)

(assert (=> d!1223995 (= lt!1473314 e!2563300)))

(declare-fun res!1688895 () Bool)

(assert (=> d!1223995 (=> res!1688895 e!2563300)))

(assert (=> d!1223995 (= res!1688895 ((_ is Nil!44728) p!2912))))

(assert (=> d!1223995 (= (isPrefix!4259 p!2912 input!3238) lt!1473314)))

(declare-fun b!4131252 () Bool)

(declare-fun res!1688896 () Bool)

(assert (=> b!4131252 (=> (not res!1688896) (not e!2563301))))

(assert (=> b!4131252 (= res!1688896 (= (head!8706 p!2912) (head!8706 input!3238)))))

(declare-fun b!4131251 () Bool)

(assert (=> b!4131251 (= e!2563300 e!2563301)))

(declare-fun res!1688898 () Bool)

(assert (=> b!4131251 (=> (not res!1688898) (not e!2563301))))

(assert (=> b!4131251 (= res!1688898 (not ((_ is Nil!44728) input!3238)))))

(declare-fun b!4131254 () Bool)

(assert (=> b!4131254 (= e!2563302 (>= (size!33114 input!3238) (size!33114 p!2912)))))

(assert (= (and d!1223995 (not res!1688895)) b!4131251))

(assert (= (and b!4131251 res!1688898) b!4131252))

(assert (= (and b!4131252 res!1688896) b!4131253))

(assert (= (and d!1223995 (not res!1688897)) b!4131254))

(assert (=> b!4131253 m!4728849))

(declare-fun m!4728871 () Bool)

(assert (=> b!4131253 m!4728871))

(assert (=> b!4131253 m!4728849))

(assert (=> b!4131253 m!4728871))

(declare-fun m!4728873 () Bool)

(assert (=> b!4131253 m!4728873))

(assert (=> b!4131252 m!4728845))

(declare-fun m!4728875 () Bool)

(assert (=> b!4131252 m!4728875))

(declare-fun m!4728877 () Bool)

(assert (=> b!4131254 m!4728877))

(assert (=> b!4131254 m!4728797))

(assert (=> b!4131142 d!1223995))

(declare-fun d!1224001 () Bool)

(assert (=> d!1224001 (= (isEmpty!26631 p!2912) ((_ is Nil!44728) p!2912))))

(assert (=> b!4131133 d!1224001))

(declare-fun b!4131264 () Bool)

(declare-fun e!2563309 () Int)

(declare-fun e!2563308 () Int)

(assert (=> b!4131264 (= e!2563309 e!2563308)))

(declare-fun c!708831 () Bool)

(assert (=> b!4131264 (= c!708831 (and ((_ is Cons!44729) rules!3756) (not (= (h!50149 rules!3756) rBis!149))))))

(declare-fun d!1224003 () Bool)

(declare-fun lt!1473317 () Int)

(assert (=> d!1224003 (>= lt!1473317 0)))

(assert (=> d!1224003 (= lt!1473317 e!2563309)))

(declare-fun c!708830 () Bool)

(assert (=> d!1224003 (= c!708830 (and ((_ is Cons!44729) rules!3756) (= (h!50149 rules!3756) rBis!149)))))

(assert (=> d!1224003 (contains!9002 rules!3756 rBis!149)))

(assert (=> d!1224003 (= (getIndex!670 rules!3756 rBis!149) lt!1473317)))

(declare-fun b!4131263 () Bool)

(assert (=> b!4131263 (= e!2563309 0)))

(declare-fun b!4131266 () Bool)

(assert (=> b!4131266 (= e!2563308 (- 1))))

(declare-fun b!4131265 () Bool)

(assert (=> b!4131265 (= e!2563308 (+ 1 (getIndex!670 (t!341586 rules!3756) rBis!149)))))

(assert (= (and d!1224003 c!708830) b!4131263))

(assert (= (and d!1224003 (not c!708830)) b!4131264))

(assert (= (and b!4131264 c!708831) b!4131265))

(assert (= (and b!4131264 (not c!708831)) b!4131266))

(assert (=> d!1224003 m!4728763))

(declare-fun m!4728879 () Bool)

(assert (=> b!4131265 m!4728879))

(assert (=> b!4131140 d!1224003))

(declare-fun b!4131268 () Bool)

(declare-fun e!2563311 () Int)

(declare-fun e!2563310 () Int)

(assert (=> b!4131268 (= e!2563311 e!2563310)))

(declare-fun c!708833 () Bool)

(assert (=> b!4131268 (= c!708833 (and ((_ is Cons!44729) rules!3756) (not (= (h!50149 rules!3756) r!4008))))))

(declare-fun d!1224005 () Bool)

(declare-fun lt!1473318 () Int)

(assert (=> d!1224005 (>= lt!1473318 0)))

(assert (=> d!1224005 (= lt!1473318 e!2563311)))

(declare-fun c!708832 () Bool)

(assert (=> d!1224005 (= c!708832 (and ((_ is Cons!44729) rules!3756) (= (h!50149 rules!3756) r!4008)))))

(assert (=> d!1224005 (contains!9002 rules!3756 r!4008)))

(assert (=> d!1224005 (= (getIndex!670 rules!3756 r!4008) lt!1473318)))

(declare-fun b!4131267 () Bool)

(assert (=> b!4131267 (= e!2563311 0)))

(declare-fun b!4131270 () Bool)

(assert (=> b!4131270 (= e!2563310 (- 1))))

(declare-fun b!4131269 () Bool)

(assert (=> b!4131269 (= e!2563310 (+ 1 (getIndex!670 (t!341586 rules!3756) r!4008)))))

(assert (= (and d!1224005 c!708832) b!4131267))

(assert (= (and d!1224005 (not c!708832)) b!4131268))

(assert (= (and b!4131268 c!708833) b!4131269))

(assert (= (and b!4131268 (not c!708833)) b!4131270))

(assert (=> d!1224005 m!4728775))

(declare-fun m!4728881 () Bool)

(assert (=> b!4131269 m!4728881))

(assert (=> b!4131140 d!1224005))

(declare-fun d!1224007 () Bool)

(declare-fun res!1688901 () Bool)

(declare-fun e!2563314 () Bool)

(assert (=> d!1224007 (=> (not res!1688901) (not e!2563314))))

(declare-fun rulesValid!2873 (LexerInterface!6913 List!44853) Bool)

(assert (=> d!1224007 (= res!1688901 (rulesValid!2873 thiss!25645 rules!3756))))

(assert (=> d!1224007 (= (rulesInvariant!6210 thiss!25645 rules!3756) e!2563314)))

(declare-fun b!4131273 () Bool)

(declare-datatypes ((List!44854 0))(
  ( (Nil!44730) (Cons!44730 (h!50150 String!51520) (t!341619 List!44854)) )
))
(declare-fun noDuplicateTag!2956 (LexerInterface!6913 List!44853 List!44854) Bool)

(assert (=> b!4131273 (= e!2563314 (noDuplicateTag!2956 thiss!25645 rules!3756 Nil!44730))))

(assert (= (and d!1224007 res!1688901) b!4131273))

(declare-fun m!4728883 () Bool)

(assert (=> d!1224007 m!4728883))

(declare-fun m!4728885 () Bool)

(assert (=> b!4131273 m!4728885))

(assert (=> b!4131129 d!1224007))

(declare-fun d!1224009 () Bool)

(assert (=> d!1224009 (= (inv!59327 (tag!8184 (h!50149 rules!3756))) (= (mod (str.len (value!229287 (tag!8184 (h!50149 rules!3756)))) 2) 0))))

(assert (=> b!4131130 d!1224009))

(declare-fun d!1224011 () Bool)

(declare-fun res!1688902 () Bool)

(declare-fun e!2563315 () Bool)

(assert (=> d!1224011 (=> (not res!1688902) (not e!2563315))))

(assert (=> d!1224011 (= res!1688902 (semiInverseModEq!3159 (toChars!9847 (transformation!7324 (h!50149 rules!3756))) (toValue!9988 (transformation!7324 (h!50149 rules!3756)))))))

(assert (=> d!1224011 (= (inv!59329 (transformation!7324 (h!50149 rules!3756))) e!2563315)))

(declare-fun b!4131274 () Bool)

(assert (=> b!4131274 (= e!2563315 (equivClasses!3058 (toChars!9847 (transformation!7324 (h!50149 rules!3756))) (toValue!9988 (transformation!7324 (h!50149 rules!3756)))))))

(assert (= (and d!1224011 res!1688902) b!4131274))

(declare-fun m!4728887 () Bool)

(assert (=> d!1224011 m!4728887))

(declare-fun m!4728889 () Bool)

(assert (=> b!4131274 m!4728889))

(assert (=> b!4131130 d!1224011))

(declare-fun d!1224013 () Bool)

(declare-fun dynLambda!19173 (Int BalanceConc!26664) TokenValue!7554)

(assert (=> d!1224013 (= (apply!10397 (transformation!7324 r!4008) lt!1473289) (dynLambda!19173 (toValue!9988 (transformation!7324 r!4008)) lt!1473289))))

(declare-fun b_lambda!121339 () Bool)

(assert (=> (not b_lambda!121339) (not d!1224013)))

(declare-fun t!341588 () Bool)

(declare-fun tb!247955 () Bool)

(assert (=> (and b!4131132 (= (toValue!9988 (transformation!7324 r!4008)) (toValue!9988 (transformation!7324 r!4008))) t!341588) tb!247955))

(declare-fun result!301352 () Bool)

(declare-fun inv!21 (TokenValue!7554) Bool)

(assert (=> tb!247955 (= result!301352 (inv!21 (dynLambda!19173 (toValue!9988 (transformation!7324 r!4008)) lt!1473289)))))

(declare-fun m!4728891 () Bool)

(assert (=> tb!247955 m!4728891))

(assert (=> d!1224013 t!341588))

(declare-fun b_and!320217 () Bool)

(assert (= b_and!320205 (and (=> t!341588 result!301352) b_and!320217)))

(declare-fun tb!247957 () Bool)

(declare-fun t!341590 () Bool)

(assert (=> (and b!4131141 (= (toValue!9988 (transformation!7324 (h!50149 rules!3756))) (toValue!9988 (transformation!7324 r!4008))) t!341590) tb!247957))

(declare-fun result!301356 () Bool)

(assert (= result!301356 result!301352))

(assert (=> d!1224013 t!341590))

(declare-fun b_and!320219 () Bool)

(assert (= b_and!320209 (and (=> t!341590 result!301356) b_and!320219)))

(declare-fun tb!247959 () Bool)

(declare-fun t!341592 () Bool)

(assert (=> (and b!4131139 (= (toValue!9988 (transformation!7324 rBis!149)) (toValue!9988 (transformation!7324 r!4008))) t!341592) tb!247959))

(declare-fun result!301358 () Bool)

(assert (= result!301358 result!301352))

(assert (=> d!1224013 t!341592))

(declare-fun b_and!320221 () Bool)

(assert (= b_and!320213 (and (=> t!341592 result!301358) b_and!320221)))

(declare-fun m!4728893 () Bool)

(assert (=> d!1224013 m!4728893))

(assert (=> b!4131148 d!1224013))

(declare-fun d!1224015 () Bool)

(declare-fun lt!1473321 () List!44852)

(declare-fun ++!11578 (List!44852 List!44852) List!44852)

(assert (=> d!1224015 (= (++!11578 p!2912 lt!1473321) input!3238)))

(declare-fun e!2563321 () List!44852)

(assert (=> d!1224015 (= lt!1473321 e!2563321)))

(declare-fun c!708836 () Bool)

(assert (=> d!1224015 (= c!708836 ((_ is Cons!44728) p!2912))))

(assert (=> d!1224015 (>= (size!33114 input!3238) (size!33114 p!2912))))

(assert (=> d!1224015 (= (getSuffix!2586 input!3238 p!2912) lt!1473321)))

(declare-fun b!4131281 () Bool)

(assert (=> b!4131281 (= e!2563321 (getSuffix!2586 (tail!6479 input!3238) (t!341585 p!2912)))))

(declare-fun b!4131282 () Bool)

(assert (=> b!4131282 (= e!2563321 input!3238)))

(assert (= (and d!1224015 c!708836) b!4131281))

(assert (= (and d!1224015 (not c!708836)) b!4131282))

(declare-fun m!4728895 () Bool)

(assert (=> d!1224015 m!4728895))

(assert (=> d!1224015 m!4728877))

(assert (=> d!1224015 m!4728797))

(assert (=> b!4131281 m!4728871))

(assert (=> b!4131281 m!4728871))

(declare-fun m!4728897 () Bool)

(assert (=> b!4131281 m!4728897))

(assert (=> b!4131148 d!1224015))

(declare-fun b!4131301 () Bool)

(declare-fun e!2563330 () Option!9630)

(declare-fun lt!1473334 () Option!9630)

(declare-fun lt!1473336 () Option!9630)

(assert (=> b!4131301 (= e!2563330 (ite (and ((_ is None!9629) lt!1473334) ((_ is None!9629) lt!1473336)) None!9629 (ite ((_ is None!9629) lt!1473336) lt!1473334 (ite ((_ is None!9629) lt!1473334) lt!1473336 (ite (>= (size!33113 (_1!24711 (v!40239 lt!1473334))) (size!33113 (_1!24711 (v!40239 lt!1473336)))) lt!1473334 lt!1473336)))))))

(declare-fun call!290338 () Option!9630)

(assert (=> b!4131301 (= lt!1473334 call!290338)))

(assert (=> b!4131301 (= lt!1473336 (maxPrefix!4103 thiss!25645 (t!341586 rules!3756) input!3238))))

(declare-fun b!4131302 () Bool)

(declare-fun e!2563329 () Bool)

(declare-fun e!2563328 () Bool)

(assert (=> b!4131302 (= e!2563329 e!2563328)))

(declare-fun res!1688917 () Bool)

(assert (=> b!4131302 (=> (not res!1688917) (not e!2563328))))

(declare-fun lt!1473332 () Option!9630)

(declare-fun isDefined!7251 (Option!9630) Bool)

(assert (=> b!4131302 (= res!1688917 (isDefined!7251 lt!1473332))))

(declare-fun bm!290333 () Bool)

(declare-fun maxPrefixOneRule!3049 (LexerInterface!6913 Rule!14448 List!44852) Option!9630)

(assert (=> bm!290333 (= call!290338 (maxPrefixOneRule!3049 thiss!25645 (h!50149 rules!3756) input!3238))))

(declare-fun b!4131303 () Bool)

(declare-fun res!1688923 () Bool)

(assert (=> b!4131303 (=> (not res!1688923) (not e!2563328))))

(declare-fun get!14590 (Option!9630) tuple2!43154)

(assert (=> b!4131303 (= res!1688923 (= (value!229288 (_1!24711 (get!14590 lt!1473332))) (apply!10397 (transformation!7324 (rule!10416 (_1!24711 (get!14590 lt!1473332)))) (seqFromList!5441 (originalCharacters!7820 (_1!24711 (get!14590 lt!1473332)))))))))

(declare-fun b!4131305 () Bool)

(declare-fun res!1688920 () Bool)

(assert (=> b!4131305 (=> (not res!1688920) (not e!2563328))))

(assert (=> b!4131305 (= res!1688920 (< (size!33114 (_2!24711 (get!14590 lt!1473332))) (size!33114 input!3238)))))

(declare-fun b!4131306 () Bool)

(declare-fun res!1688918 () Bool)

(assert (=> b!4131306 (=> (not res!1688918) (not e!2563328))))

(declare-fun list!16391 (BalanceConc!26664) List!44852)

(declare-fun charsOf!4932 (Token!13578) BalanceConc!26664)

(assert (=> b!4131306 (= res!1688918 (= (list!16391 (charsOf!4932 (_1!24711 (get!14590 lt!1473332)))) (originalCharacters!7820 (_1!24711 (get!14590 lt!1473332)))))))

(declare-fun b!4131307 () Bool)

(declare-fun res!1688921 () Bool)

(assert (=> b!4131307 (=> (not res!1688921) (not e!2563328))))

(assert (=> b!4131307 (= res!1688921 (matchR!6058 (regex!7324 (rule!10416 (_1!24711 (get!14590 lt!1473332)))) (list!16391 (charsOf!4932 (_1!24711 (get!14590 lt!1473332))))))))

(declare-fun b!4131308 () Bool)

(declare-fun res!1688919 () Bool)

(assert (=> b!4131308 (=> (not res!1688919) (not e!2563328))))

(assert (=> b!4131308 (= res!1688919 (= (++!11578 (list!16391 (charsOf!4932 (_1!24711 (get!14590 lt!1473332)))) (_2!24711 (get!14590 lt!1473332))) input!3238))))

(declare-fun b!4131309 () Bool)

(assert (=> b!4131309 (= e!2563330 call!290338)))

(declare-fun b!4131304 () Bool)

(assert (=> b!4131304 (= e!2563328 (contains!9002 rules!3756 (rule!10416 (_1!24711 (get!14590 lt!1473332)))))))

(declare-fun d!1224017 () Bool)

(assert (=> d!1224017 e!2563329))

(declare-fun res!1688922 () Bool)

(assert (=> d!1224017 (=> res!1688922 e!2563329)))

(declare-fun isEmpty!26634 (Option!9630) Bool)

(assert (=> d!1224017 (= res!1688922 (isEmpty!26634 lt!1473332))))

(assert (=> d!1224017 (= lt!1473332 e!2563330)))

(declare-fun c!708839 () Bool)

(assert (=> d!1224017 (= c!708839 (and ((_ is Cons!44729) rules!3756) ((_ is Nil!44729) (t!341586 rules!3756))))))

(declare-fun lt!1473333 () Unit!64055)

(declare-fun lt!1473335 () Unit!64055)

(assert (=> d!1224017 (= lt!1473333 lt!1473335)))

(assert (=> d!1224017 (isPrefix!4259 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2757 (List!44852 List!44852) Unit!64055)

(assert (=> d!1224017 (= lt!1473335 (lemmaIsPrefixRefl!2757 input!3238 input!3238))))

(declare-fun rulesValidInductive!2710 (LexerInterface!6913 List!44853) Bool)

(assert (=> d!1224017 (rulesValidInductive!2710 thiss!25645 rules!3756)))

(assert (=> d!1224017 (= (maxPrefix!4103 thiss!25645 rules!3756 input!3238) lt!1473332)))

(assert (= (and d!1224017 c!708839) b!4131309))

(assert (= (and d!1224017 (not c!708839)) b!4131301))

(assert (= (or b!4131309 b!4131301) bm!290333))

(assert (= (and d!1224017 (not res!1688922)) b!4131302))

(assert (= (and b!4131302 res!1688917) b!4131306))

(assert (= (and b!4131306 res!1688918) b!4131305))

(assert (= (and b!4131305 res!1688920) b!4131308))

(assert (= (and b!4131308 res!1688919) b!4131303))

(assert (= (and b!4131303 res!1688923) b!4131307))

(assert (= (and b!4131307 res!1688921) b!4131304))

(declare-fun m!4728899 () Bool)

(assert (=> b!4131305 m!4728899))

(declare-fun m!4728901 () Bool)

(assert (=> b!4131305 m!4728901))

(assert (=> b!4131305 m!4728877))

(assert (=> b!4131308 m!4728899))

(declare-fun m!4728903 () Bool)

(assert (=> b!4131308 m!4728903))

(assert (=> b!4131308 m!4728903))

(declare-fun m!4728905 () Bool)

(assert (=> b!4131308 m!4728905))

(assert (=> b!4131308 m!4728905))

(declare-fun m!4728907 () Bool)

(assert (=> b!4131308 m!4728907))

(declare-fun m!4728909 () Bool)

(assert (=> bm!290333 m!4728909))

(assert (=> b!4131304 m!4728899))

(declare-fun m!4728911 () Bool)

(assert (=> b!4131304 m!4728911))

(assert (=> b!4131307 m!4728899))

(assert (=> b!4131307 m!4728903))

(assert (=> b!4131307 m!4728903))

(assert (=> b!4131307 m!4728905))

(assert (=> b!4131307 m!4728905))

(declare-fun m!4728913 () Bool)

(assert (=> b!4131307 m!4728913))

(assert (=> b!4131306 m!4728899))

(assert (=> b!4131306 m!4728903))

(assert (=> b!4131306 m!4728903))

(assert (=> b!4131306 m!4728905))

(declare-fun m!4728915 () Bool)

(assert (=> b!4131301 m!4728915))

(declare-fun m!4728917 () Bool)

(assert (=> d!1224017 m!4728917))

(declare-fun m!4728919 () Bool)

(assert (=> d!1224017 m!4728919))

(declare-fun m!4728921 () Bool)

(assert (=> d!1224017 m!4728921))

(declare-fun m!4728923 () Bool)

(assert (=> d!1224017 m!4728923))

(declare-fun m!4728925 () Bool)

(assert (=> b!4131302 m!4728925))

(assert (=> b!4131303 m!4728899))

(declare-fun m!4728927 () Bool)

(assert (=> b!4131303 m!4728927))

(assert (=> b!4131303 m!4728927))

(declare-fun m!4728929 () Bool)

(assert (=> b!4131303 m!4728929))

(assert (=> b!4131148 d!1224017))

(declare-fun d!1224019 () Bool)

(declare-fun fromListB!2492 (List!44852) BalanceConc!26664)

(assert (=> d!1224019 (= (seqFromList!5441 p!2912) (fromListB!2492 p!2912))))

(declare-fun bs!595048 () Bool)

(assert (= bs!595048 d!1224019))

(declare-fun m!4728931 () Bool)

(assert (=> bs!595048 m!4728931))

(assert (=> b!4131148 d!1224019))

(declare-fun d!1224021 () Bool)

(declare-fun lt!1473339 () Int)

(assert (=> d!1224021 (>= lt!1473339 0)))

(declare-fun e!2563333 () Int)

(assert (=> d!1224021 (= lt!1473339 e!2563333)))

(declare-fun c!708842 () Bool)

(assert (=> d!1224021 (= c!708842 ((_ is Nil!44728) p!2912))))

(assert (=> d!1224021 (= (size!33114 p!2912) lt!1473339)))

(declare-fun b!4131314 () Bool)

(assert (=> b!4131314 (= e!2563333 0)))

(declare-fun b!4131315 () Bool)

(assert (=> b!4131315 (= e!2563333 (+ 1 (size!33114 (t!341585 p!2912))))))

(assert (= (and d!1224021 c!708842) b!4131314))

(assert (= (and d!1224021 (not c!708842)) b!4131315))

(declare-fun m!4728933 () Bool)

(assert (=> b!4131315 m!4728933))

(assert (=> b!4131148 d!1224021))

(declare-fun b!4131478 () Bool)

(declare-fun e!2563418 () Bool)

(assert (=> b!4131478 (= e!2563418 true)))

(declare-fun d!1224023 () Bool)

(assert (=> d!1224023 e!2563418))

(assert (= d!1224023 b!4131478))

(declare-fun lambda!128853 () Int)

(declare-fun order!23597 () Int)

(declare-fun order!23599 () Int)

(declare-fun dynLambda!19174 (Int Int) Int)

(declare-fun dynLambda!19175 (Int Int) Int)

(assert (=> b!4131478 (< (dynLambda!19174 order!23597 (toValue!9988 (transformation!7324 r!4008))) (dynLambda!19175 order!23599 lambda!128853))))

(declare-fun order!23601 () Int)

(declare-fun dynLambda!19176 (Int Int) Int)

(assert (=> b!4131478 (< (dynLambda!19176 order!23601 (toChars!9847 (transformation!7324 r!4008))) (dynLambda!19175 order!23599 lambda!128853))))

(declare-fun dynLambda!19177 (Int TokenValue!7554) BalanceConc!26664)

(assert (=> d!1224023 (= (list!16391 (dynLambda!19177 (toChars!9847 (transformation!7324 r!4008)) (dynLambda!19173 (toValue!9988 (transformation!7324 r!4008)) lt!1473289))) (list!16391 lt!1473289))))

(declare-fun lt!1473371 () Unit!64055)

(declare-fun ForallOf!942 (Int BalanceConc!26664) Unit!64055)

(assert (=> d!1224023 (= lt!1473371 (ForallOf!942 lambda!128853 lt!1473289))))

(assert (=> d!1224023 (= (lemmaSemiInverse!2182 (transformation!7324 r!4008) lt!1473289) lt!1473371)))

(declare-fun b_lambda!121353 () Bool)

(assert (=> (not b_lambda!121353) (not d!1224023)))

(declare-fun t!341610 () Bool)

(declare-fun tb!247977 () Bool)

(assert (=> (and b!4131132 (= (toChars!9847 (transformation!7324 r!4008)) (toChars!9847 (transformation!7324 r!4008))) t!341610) tb!247977))

(declare-fun b!4131483 () Bool)

(declare-fun tp!1259171 () Bool)

(declare-fun e!2563421 () Bool)

(declare-fun inv!59332 (Conc!13535) Bool)

(assert (=> b!4131483 (= e!2563421 (and (inv!59332 (c!708808 (dynLambda!19177 (toChars!9847 (transformation!7324 r!4008)) (dynLambda!19173 (toValue!9988 (transformation!7324 r!4008)) lt!1473289)))) tp!1259171))))

(declare-fun result!301386 () Bool)

(declare-fun inv!59333 (BalanceConc!26664) Bool)

(assert (=> tb!247977 (= result!301386 (and (inv!59333 (dynLambda!19177 (toChars!9847 (transformation!7324 r!4008)) (dynLambda!19173 (toValue!9988 (transformation!7324 r!4008)) lt!1473289))) e!2563421))))

(assert (= tb!247977 b!4131483))

(declare-fun m!4729017 () Bool)

(assert (=> b!4131483 m!4729017))

(declare-fun m!4729019 () Bool)

(assert (=> tb!247977 m!4729019))

(assert (=> d!1224023 t!341610))

(declare-fun b_and!320245 () Bool)

(assert (= b_and!320207 (and (=> t!341610 result!301386) b_and!320245)))

(declare-fun t!341612 () Bool)

(declare-fun tb!247979 () Bool)

(assert (=> (and b!4131141 (= (toChars!9847 (transformation!7324 (h!50149 rules!3756))) (toChars!9847 (transformation!7324 r!4008))) t!341612) tb!247979))

(declare-fun result!301390 () Bool)

(assert (= result!301390 result!301386))

(assert (=> d!1224023 t!341612))

(declare-fun b_and!320247 () Bool)

(assert (= b_and!320211 (and (=> t!341612 result!301390) b_and!320247)))

(declare-fun tb!247981 () Bool)

(declare-fun t!341614 () Bool)

(assert (=> (and b!4131139 (= (toChars!9847 (transformation!7324 rBis!149)) (toChars!9847 (transformation!7324 r!4008))) t!341614) tb!247981))

(declare-fun result!301392 () Bool)

(assert (= result!301392 result!301386))

(assert (=> d!1224023 t!341614))

(declare-fun b_and!320249 () Bool)

(assert (= b_and!320215 (and (=> t!341614 result!301392) b_and!320249)))

(declare-fun b_lambda!121355 () Bool)

(assert (=> (not b_lambda!121355) (not d!1224023)))

(assert (=> d!1224023 t!341588))

(declare-fun b_and!320251 () Bool)

(assert (= b_and!320217 (and (=> t!341588 result!301352) b_and!320251)))

(assert (=> d!1224023 t!341590))

(declare-fun b_and!320253 () Bool)

(assert (= b_and!320219 (and (=> t!341590 result!301356) b_and!320253)))

(assert (=> d!1224023 t!341592))

(declare-fun b_and!320255 () Bool)

(assert (= b_and!320221 (and (=> t!341592 result!301358) b_and!320255)))

(assert (=> d!1224023 m!4728893))

(declare-fun m!4729021 () Bool)

(assert (=> d!1224023 m!4729021))

(declare-fun m!4729023 () Bool)

(assert (=> d!1224023 m!4729023))

(declare-fun m!4729025 () Bool)

(assert (=> d!1224023 m!4729025))

(declare-fun m!4729027 () Bool)

(assert (=> d!1224023 m!4729027))

(assert (=> d!1224023 m!4728893))

(assert (=> d!1224023 m!4729025))

(assert (=> b!4131148 d!1224023))

(declare-fun d!1224053 () Bool)

(assert (=> d!1224053 (= (isEmpty!26632 rules!3756) ((_ is Nil!44729) rules!3756))))

(assert (=> b!4131137 d!1224053))

(declare-fun d!1224055 () Bool)

(declare-fun lt!1473372 () Bool)

(assert (=> d!1224055 (= lt!1473372 (select (content!6900 rules!3756) rBis!149))))

(declare-fun e!2563422 () Bool)

(assert (=> d!1224055 (= lt!1473372 e!2563422)))

(declare-fun res!1688980 () Bool)

(assert (=> d!1224055 (=> (not res!1688980) (not e!2563422))))

(assert (=> d!1224055 (= res!1688980 ((_ is Cons!44729) rules!3756))))

(assert (=> d!1224055 (= (contains!9002 rules!3756 rBis!149) lt!1473372)))

(declare-fun b!4131484 () Bool)

(declare-fun e!2563423 () Bool)

(assert (=> b!4131484 (= e!2563422 e!2563423)))

(declare-fun res!1688979 () Bool)

(assert (=> b!4131484 (=> res!1688979 e!2563423)))

(assert (=> b!4131484 (= res!1688979 (= (h!50149 rules!3756) rBis!149))))

(declare-fun b!4131485 () Bool)

(assert (=> b!4131485 (= e!2563423 (contains!9002 (t!341586 rules!3756) rBis!149))))

(assert (= (and d!1224055 res!1688980) b!4131484))

(assert (= (and b!4131484 (not res!1688979)) b!4131485))

(assert (=> d!1224055 m!4728825))

(declare-fun m!4729029 () Bool)

(assert (=> d!1224055 m!4729029))

(declare-fun m!4729031 () Bool)

(assert (=> b!4131485 m!4729031))

(assert (=> b!4131138 d!1224055))

(declare-fun b!4131497 () Bool)

(declare-fun e!2563426 () Bool)

(declare-fun tp!1259186 () Bool)

(declare-fun tp!1259185 () Bool)

(assert (=> b!4131497 (= e!2563426 (and tp!1259186 tp!1259185))))

(declare-fun b!4131496 () Bool)

(assert (=> b!4131496 (= e!2563426 tp_is_empty!21381)))

(declare-fun b!4131498 () Bool)

(declare-fun tp!1259183 () Bool)

(assert (=> b!4131498 (= e!2563426 tp!1259183)))

(declare-fun b!4131499 () Bool)

(declare-fun tp!1259182 () Bool)

(declare-fun tp!1259184 () Bool)

(assert (=> b!4131499 (= e!2563426 (and tp!1259182 tp!1259184))))

(assert (=> b!4131134 (= tp!1259119 e!2563426)))

(assert (= (and b!4131134 ((_ is ElementMatch!12229) (regex!7324 rBis!149))) b!4131496))

(assert (= (and b!4131134 ((_ is Concat!19784) (regex!7324 rBis!149))) b!4131497))

(assert (= (and b!4131134 ((_ is Star!12229) (regex!7324 rBis!149))) b!4131498))

(assert (= (and b!4131134 ((_ is Union!12229) (regex!7324 rBis!149))) b!4131499))

(declare-fun b!4131501 () Bool)

(declare-fun e!2563427 () Bool)

(declare-fun tp!1259191 () Bool)

(declare-fun tp!1259190 () Bool)

(assert (=> b!4131501 (= e!2563427 (and tp!1259191 tp!1259190))))

(declare-fun b!4131500 () Bool)

(assert (=> b!4131500 (= e!2563427 tp_is_empty!21381)))

(declare-fun b!4131502 () Bool)

(declare-fun tp!1259188 () Bool)

(assert (=> b!4131502 (= e!2563427 tp!1259188)))

(declare-fun b!4131503 () Bool)

(declare-fun tp!1259187 () Bool)

(declare-fun tp!1259189 () Bool)

(assert (=> b!4131503 (= e!2563427 (and tp!1259187 tp!1259189))))

(assert (=> b!4131136 (= tp!1259113 e!2563427)))

(assert (= (and b!4131136 ((_ is ElementMatch!12229) (regex!7324 r!4008))) b!4131500))

(assert (= (and b!4131136 ((_ is Concat!19784) (regex!7324 r!4008))) b!4131501))

(assert (= (and b!4131136 ((_ is Star!12229) (regex!7324 r!4008))) b!4131502))

(assert (= (and b!4131136 ((_ is Union!12229) (regex!7324 r!4008))) b!4131503))

(declare-fun b!4131508 () Bool)

(declare-fun e!2563430 () Bool)

(declare-fun tp!1259194 () Bool)

(assert (=> b!4131508 (= e!2563430 (and tp_is_empty!21381 tp!1259194))))

(assert (=> b!4131131 (= tp!1259124 e!2563430)))

(assert (= (and b!4131131 ((_ is Cons!44728) (t!341585 p!2912))) b!4131508))

(declare-fun b!4131519 () Bool)

(declare-fun b_free!117203 () Bool)

(declare-fun b_next!117907 () Bool)

(assert (=> b!4131519 (= b_free!117203 (not b_next!117907))))

(declare-fun t!341616 () Bool)

(declare-fun tb!247983 () Bool)

(assert (=> (and b!4131519 (= (toValue!9988 (transformation!7324 (h!50149 (t!341586 rules!3756)))) (toValue!9988 (transformation!7324 r!4008))) t!341616) tb!247983))

(declare-fun result!301400 () Bool)

(assert (= result!301400 result!301352))

(assert (=> d!1224013 t!341616))

(assert (=> d!1224023 t!341616))

(declare-fun tp!1259206 () Bool)

(declare-fun b_and!320257 () Bool)

(assert (=> b!4131519 (= tp!1259206 (and (=> t!341616 result!301400) b_and!320257))))

(declare-fun b_free!117205 () Bool)

(declare-fun b_next!117909 () Bool)

(assert (=> b!4131519 (= b_free!117205 (not b_next!117909))))

(declare-fun tb!247985 () Bool)

(declare-fun t!341618 () Bool)

(assert (=> (and b!4131519 (= (toChars!9847 (transformation!7324 (h!50149 (t!341586 rules!3756)))) (toChars!9847 (transformation!7324 r!4008))) t!341618) tb!247985))

(declare-fun result!301402 () Bool)

(assert (= result!301402 result!301386))

(assert (=> d!1224023 t!341618))

(declare-fun tp!1259205 () Bool)

(declare-fun b_and!320259 () Bool)

(assert (=> b!4131519 (= tp!1259205 (and (=> t!341618 result!301402) b_and!320259))))

(declare-fun e!2563441 () Bool)

(assert (=> b!4131519 (= e!2563441 (and tp!1259206 tp!1259205))))

(declare-fun b!4131518 () Bool)

(declare-fun e!2563439 () Bool)

(declare-fun tp!1259203 () Bool)

(assert (=> b!4131518 (= e!2563439 (and tp!1259203 (inv!59327 (tag!8184 (h!50149 (t!341586 rules!3756)))) (inv!59329 (transformation!7324 (h!50149 (t!341586 rules!3756)))) e!2563441))))

(declare-fun b!4131517 () Bool)

(declare-fun e!2563440 () Bool)

(declare-fun tp!1259204 () Bool)

(assert (=> b!4131517 (= e!2563440 (and e!2563439 tp!1259204))))

(assert (=> b!4131147 (= tp!1259120 e!2563440)))

(assert (= b!4131518 b!4131519))

(assert (= b!4131517 b!4131518))

(assert (= (and b!4131147 ((_ is Cons!44729) (t!341586 rules!3756))) b!4131517))

(declare-fun m!4729033 () Bool)

(assert (=> b!4131518 m!4729033))

(declare-fun m!4729035 () Bool)

(assert (=> b!4131518 m!4729035))

(declare-fun b!4131521 () Bool)

(declare-fun e!2563443 () Bool)

(declare-fun tp!1259211 () Bool)

(declare-fun tp!1259210 () Bool)

(assert (=> b!4131521 (= e!2563443 (and tp!1259211 tp!1259210))))

(declare-fun b!4131520 () Bool)

(assert (=> b!4131520 (= e!2563443 tp_is_empty!21381)))

(declare-fun b!4131522 () Bool)

(declare-fun tp!1259208 () Bool)

(assert (=> b!4131522 (= e!2563443 tp!1259208)))

(declare-fun b!4131523 () Bool)

(declare-fun tp!1259207 () Bool)

(declare-fun tp!1259209 () Bool)

(assert (=> b!4131523 (= e!2563443 (and tp!1259207 tp!1259209))))

(assert (=> b!4131130 (= tp!1259122 e!2563443)))

(assert (= (and b!4131130 ((_ is ElementMatch!12229) (regex!7324 (h!50149 rules!3756)))) b!4131520))

(assert (= (and b!4131130 ((_ is Concat!19784) (regex!7324 (h!50149 rules!3756)))) b!4131521))

(assert (= (and b!4131130 ((_ is Star!12229) (regex!7324 (h!50149 rules!3756)))) b!4131522))

(assert (= (and b!4131130 ((_ is Union!12229) (regex!7324 (h!50149 rules!3756)))) b!4131523))

(declare-fun b!4131524 () Bool)

(declare-fun e!2563444 () Bool)

(declare-fun tp!1259212 () Bool)

(assert (=> b!4131524 (= e!2563444 (and tp_is_empty!21381 tp!1259212))))

(assert (=> b!4131144 (= tp!1259118 e!2563444)))

(assert (= (and b!4131144 ((_ is Cons!44728) (t!341585 input!3238))) b!4131524))

(declare-fun b_lambda!121357 () Bool)

(assert (= b_lambda!121355 (or (and b!4131132 b_free!117187) (and b!4131141 b_free!117191 (= (toValue!9988 (transformation!7324 (h!50149 rules!3756))) (toValue!9988 (transformation!7324 r!4008)))) (and b!4131139 b_free!117195 (= (toValue!9988 (transformation!7324 rBis!149)) (toValue!9988 (transformation!7324 r!4008)))) (and b!4131519 b_free!117203 (= (toValue!9988 (transformation!7324 (h!50149 (t!341586 rules!3756)))) (toValue!9988 (transformation!7324 r!4008)))) b_lambda!121357)))

(declare-fun b_lambda!121359 () Bool)

(assert (= b_lambda!121353 (or (and b!4131132 b_free!117189) (and b!4131141 b_free!117193 (= (toChars!9847 (transformation!7324 (h!50149 rules!3756))) (toChars!9847 (transformation!7324 r!4008)))) (and b!4131139 b_free!117197 (= (toChars!9847 (transformation!7324 rBis!149)) (toChars!9847 (transformation!7324 r!4008)))) (and b!4131519 b_free!117205 (= (toChars!9847 (transformation!7324 (h!50149 (t!341586 rules!3756)))) (toChars!9847 (transformation!7324 r!4008)))) b_lambda!121359)))

(declare-fun b_lambda!121361 () Bool)

(assert (= b_lambda!121339 (or (and b!4131132 b_free!117187) (and b!4131141 b_free!117191 (= (toValue!9988 (transformation!7324 (h!50149 rules!3756))) (toValue!9988 (transformation!7324 r!4008)))) (and b!4131139 b_free!117195 (= (toValue!9988 (transformation!7324 rBis!149)) (toValue!9988 (transformation!7324 r!4008)))) (and b!4131519 b_free!117203 (= (toValue!9988 (transformation!7324 (h!50149 (t!341586 rules!3756)))) (toValue!9988 (transformation!7324 r!4008)))) b_lambda!121361)))

(check-sat (not b!4131254) (not d!1224017) (not b_next!117895) (not b!4131304) (not b!4131499) (not d!1224023) (not b!4131228) (not b!4131502) (not b!4131303) (not b_lambda!121361) (not b!4131524) (not b_next!117909) (not d!1224005) (not b!4131225) b_and!320245 (not d!1224007) (not d!1223965) (not b_next!117901) (not b!4131236) (not d!1224055) b_and!320257 (not b!4131518) (not b!4131521) (not b!4131305) (not b_next!117897) b_and!320253 (not b!4131483) (not b!4131523) (not b!4131306) (not d!1224011) (not b_next!117907) b_and!320247 b_and!320251 (not d!1224015) (not b!4131269) (not b_lambda!121359) (not b!4131307) (not b!4131501) (not d!1223977) (not d!1223979) (not b!4131273) (not b!4131315) b_and!320255 (not b!4131176) (not b!4131153) (not b!4131308) (not b_lambda!121357) (not d!1224019) (not b_next!117893) (not b!4131302) (not b!4131301) (not d!1223981) (not b_next!117891) (not b!4131498) (not b!4131164) (not b!4131497) (not bm!290330) (not tb!247955) (not tb!247977) (not b!4131517) (not b!4131157) (not b!4131253) (not b!4131522) (not d!1223969) (not b_next!117899) (not b!4131503) (not b!4131163) (not b!4131231) b_and!320259 (not b!4131252) (not b!4131235) b_and!320249 (not b!4131508) (not b!4131281) (not b!4131265) (not d!1224003) tp_is_empty!21381 (not b!4131485) (not bm!290333) (not b!4131274) (not b!4131232))
(check-sat b_and!320257 b_and!320251 b_and!320255 (not b_next!117895) (not b_next!117893) (not b_next!117891) (not b_next!117899) b_and!320259 b_and!320249 (not b_next!117909) (not b_next!117901) b_and!320245 (not b_next!117897) b_and!320253 (not b_next!117907) b_and!320247)
