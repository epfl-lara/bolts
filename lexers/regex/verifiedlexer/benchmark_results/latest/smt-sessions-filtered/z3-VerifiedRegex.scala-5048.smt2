; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255630 () Bool)

(assert start!255630)

(declare-fun b!2629147 () Bool)

(declare-fun b_free!74029 () Bool)

(declare-fun b_next!74733 () Bool)

(assert (=> b!2629147 (= b_free!74029 (not b_next!74733))))

(declare-fun tp!833572 () Bool)

(declare-fun b_and!192587 () Bool)

(assert (=> b!2629147 (= tp!833572 b_and!192587)))

(declare-fun b_free!74031 () Bool)

(declare-fun b_next!74735 () Bool)

(assert (=> b!2629147 (= b_free!74031 (not b_next!74735))))

(declare-fun tp!833569 () Bool)

(declare-fun b_and!192589 () Bool)

(assert (=> b!2629147 (= tp!833569 b_and!192589)))

(declare-fun b!2629141 () Bool)

(declare-fun b_free!74033 () Bool)

(declare-fun b_next!74737 () Bool)

(assert (=> b!2629141 (= b_free!74033 (not b_next!74737))))

(declare-fun tp!833565 () Bool)

(declare-fun b_and!192591 () Bool)

(assert (=> b!2629141 (= tp!833565 b_and!192591)))

(declare-fun b_free!74035 () Bool)

(declare-fun b_next!74739 () Bool)

(assert (=> b!2629141 (= b_free!74035 (not b_next!74739))))

(declare-fun tp!833571 () Bool)

(declare-fun b_and!192593 () Bool)

(assert (=> b!2629141 (= tp!833571 b_and!192593)))

(declare-fun bs!475677 () Bool)

(declare-fun b!2629149 () Bool)

(declare-fun b!2629142 () Bool)

(assert (= bs!475677 (and b!2629149 b!2629142)))

(declare-fun lambda!98542 () Int)

(declare-fun lambda!98541 () Int)

(assert (=> bs!475677 (not (= lambda!98542 lambda!98541))))

(declare-fun b!2629162 () Bool)

(declare-fun e!1658768 () Bool)

(assert (=> b!2629162 (= e!1658768 true)))

(declare-fun b!2629161 () Bool)

(declare-fun e!1658767 () Bool)

(assert (=> b!2629161 (= e!1658767 e!1658768)))

(declare-fun b!2629160 () Bool)

(declare-fun e!1658766 () Bool)

(assert (=> b!2629160 (= e!1658766 e!1658767)))

(assert (=> b!2629149 e!1658766))

(assert (= b!2629161 b!2629162))

(assert (= b!2629160 b!2629161))

(declare-datatypes ((List!30505 0))(
  ( (Nil!30405) (Cons!30405 (h!35825 (_ BitVec 16)) (t!216210 List!30505)) )
))
(declare-datatypes ((C!15680 0))(
  ( (C!15681 (val!9774 Int)) )
))
(declare-datatypes ((Regex!7761 0))(
  ( (ElementMatch!7761 (c!422804 C!15680)) (Concat!12600 (regOne!16034 Regex!7761) (regTwo!16034 Regex!7761)) (EmptyExpr!7761) (Star!7761 (reg!8090 Regex!7761)) (EmptyLang!7761) (Union!7761 (regOne!16035 Regex!7761) (regTwo!16035 Regex!7761)) )
))
(declare-datatypes ((TokenValue!4839 0))(
  ( (FloatLiteralValue!9678 (text!34318 List!30505)) (TokenValueExt!4838 (__x!19511 Int)) (Broken!24195 (value!149163 List!30505)) (Object!4938) (End!4839) (Def!4839) (Underscore!4839) (Match!4839) (Else!4839) (Error!4839) (Case!4839) (If!4839) (Extends!4839) (Abstract!4839) (Class!4839) (Val!4839) (DelimiterValue!9678 (del!4899 List!30505)) (KeywordValue!4845 (value!149164 List!30505)) (CommentValue!9678 (value!149165 List!30505)) (WhitespaceValue!9678 (value!149166 List!30505)) (IndentationValue!4839 (value!149167 List!30505)) (String!34078) (Int32!4839) (Broken!24196 (value!149168 List!30505)) (Boolean!4840) (Unit!44436) (OperatorValue!4842 (op!4899 List!30505)) (IdentifierValue!9678 (value!149169 List!30505)) (IdentifierValue!9679 (value!149170 List!30505)) (WhitespaceValue!9679 (value!149171 List!30505)) (True!9678) (False!9678) (Broken!24197 (value!149172 List!30505)) (Broken!24198 (value!149173 List!30505)) (True!9679) (RightBrace!4839) (RightBracket!4839) (Colon!4839) (Null!4839) (Comma!4839) (LeftBracket!4839) (False!9679) (LeftBrace!4839) (ImaginaryLiteralValue!4839 (text!34319 List!30505)) (StringLiteralValue!14517 (value!149174 List!30505)) (EOFValue!4839 (value!149175 List!30505)) (IdentValue!4839 (value!149176 List!30505)) (DelimiterValue!9679 (value!149177 List!30505)) (DedentValue!4839 (value!149178 List!30505)) (NewLineValue!4839 (value!149179 List!30505)) (IntegerValue!14517 (value!149180 (_ BitVec 32)) (text!34320 List!30505)) (IntegerValue!14518 (value!149181 Int) (text!34321 List!30505)) (Times!4839) (Or!4839) (Equal!4839) (Minus!4839) (Broken!24199 (value!149182 List!30505)) (And!4839) (Div!4839) (LessEqual!4839) (Mod!4839) (Concat!12601) (Not!4839) (Plus!4839) (SpaceValue!4839 (value!149183 List!30505)) (IntegerValue!14519 (value!149184 Int) (text!34322 List!30505)) (StringLiteralValue!14518 (text!34323 List!30505)) (FloatLiteralValue!9679 (text!34324 List!30505)) (BytesLiteralValue!4839 (value!149185 List!30505)) (CommentValue!9679 (value!149186 List!30505)) (StringLiteralValue!14519 (value!149187 List!30505)) (ErrorTokenValue!4839 (msg!4900 List!30505)) )
))
(declare-datatypes ((List!30506 0))(
  ( (Nil!30406) (Cons!30406 (h!35826 C!15680) (t!216211 List!30506)) )
))
(declare-datatypes ((IArray!18957 0))(
  ( (IArray!18958 (innerList!9536 List!30506)) )
))
(declare-datatypes ((Conc!9476 0))(
  ( (Node!9476 (left!23464 Conc!9476) (right!23794 Conc!9476) (csize!19182 Int) (cheight!9687 Int)) (Leaf!14525 (xs!12476 IArray!18957) (csize!19183 Int)) (Empty!9476) )
))
(declare-datatypes ((BalanceConc!18566 0))(
  ( (BalanceConc!18567 (c!422805 Conc!9476)) )
))
(declare-datatypes ((TokenValueInjection!9118 0))(
  ( (TokenValueInjection!9119 (toValue!6531 Int) (toChars!6390 Int)) )
))
(declare-datatypes ((String!34079 0))(
  ( (String!34080 (value!149188 String)) )
))
(declare-datatypes ((Rule!9034 0))(
  ( (Rule!9035 (regex!4617 Regex!7761) (tag!5111 String!34079) (isSeparator!4617 Bool) (transformation!4617 TokenValueInjection!9118)) )
))
(declare-datatypes ((List!30507 0))(
  ( (Nil!30407) (Cons!30407 (h!35827 Rule!9034) (t!216212 List!30507)) )
))
(declare-fun rules!1726 () List!30507)

(get-info :version)

(assert (= (and b!2629149 ((_ is Cons!30407) rules!1726)) b!2629160))

(declare-fun order!16405 () Int)

(declare-fun order!16403 () Int)

(declare-fun dynLambda!12993 (Int Int) Int)

(declare-fun dynLambda!12994 (Int Int) Int)

(assert (=> b!2629162 (< (dynLambda!12993 order!16403 (toValue!6531 (transformation!4617 (h!35827 rules!1726)))) (dynLambda!12994 order!16405 lambda!98542))))

(declare-fun order!16407 () Int)

(declare-fun dynLambda!12995 (Int Int) Int)

(assert (=> b!2629162 (< (dynLambda!12995 order!16407 (toChars!6390 (transformation!4617 (h!35827 rules!1726)))) (dynLambda!12994 order!16405 lambda!98542))))

(assert (=> b!2629149 true))

(declare-fun b!2629129 () Bool)

(declare-fun e!1658755 () Bool)

(declare-fun e!1658749 () Bool)

(assert (=> b!2629129 (= e!1658755 e!1658749)))

(declare-fun res!1106796 () Bool)

(assert (=> b!2629129 (=> (not res!1106796) (not e!1658749))))

(declare-fun from!862 () Int)

(declare-fun lt!924940 () Int)

(assert (=> b!2629129 (= res!1106796 (< from!862 lt!924940))))

(declare-datatypes ((Token!8704 0))(
  ( (Token!8705 (value!149189 TokenValue!4839) (rule!6999 Rule!9034) (size!23516 Int) (originalCharacters!5383 List!30506)) )
))
(declare-datatypes ((List!30508 0))(
  ( (Nil!30408) (Cons!30408 (h!35828 Token!8704) (t!216213 List!30508)) )
))
(declare-fun lt!924941 () List!30508)

(declare-datatypes ((Unit!44437 0))(
  ( (Unit!44438) )
))
(declare-fun lt!924955 () Unit!44437)

(declare-datatypes ((IArray!18959 0))(
  ( (IArray!18960 (innerList!9537 List!30508)) )
))
(declare-datatypes ((Conc!9477 0))(
  ( (Node!9477 (left!23465 Conc!9477) (right!23795 Conc!9477) (csize!19184 Int) (cheight!9688 Int)) (Leaf!14526 (xs!12477 IArray!18959) (csize!19185 Int)) (Empty!9477) )
))
(declare-datatypes ((BalanceConc!18568 0))(
  ( (BalanceConc!18569 (c!422806 Conc!9477)) )
))
(declare-fun v!6381 () BalanceConc!18568)

(declare-fun lemmaContentSubsetPreservesForall!286 (List!30508 List!30508 Int) Unit!44437)

(declare-fun dropList!920 (BalanceConc!18568 Int) List!30508)

(assert (=> b!2629129 (= lt!924955 (lemmaContentSubsetPreservesForall!286 lt!924941 (dropList!920 v!6381 from!862) lambda!98541))))

(declare-fun list!11426 (BalanceConc!18568) List!30508)

(assert (=> b!2629129 (= lt!924941 (list!11426 v!6381))))

(declare-fun b!2629130 () Bool)

(declare-fun res!1106794 () Bool)

(assert (=> b!2629130 (=> (not res!1106794) (not e!1658755))))

(declare-fun separatorToken!156 () Token!8704)

(assert (=> b!2629130 (= res!1106794 (isSeparator!4617 (rule!6999 separatorToken!156)))))

(declare-fun b!2629131 () Bool)

(declare-fun e!1658745 () Bool)

(assert (=> b!2629131 (= e!1658749 (not e!1658745))))

(declare-fun res!1106797 () Bool)

(assert (=> b!2629131 (=> res!1106797 e!1658745)))

(declare-fun lt!924939 () Token!8704)

(declare-fun contains!5736 (BalanceConc!18568 Token!8704) Bool)

(assert (=> b!2629131 (= res!1106797 (not (contains!5736 v!6381 lt!924939)))))

(declare-fun apply!7216 (BalanceConc!18568 Int) Token!8704)

(assert (=> b!2629131 (= lt!924939 (apply!7216 v!6381 from!862))))

(declare-fun lt!924945 () List!30508)

(declare-fun tail!4254 (List!30508) List!30508)

(declare-fun drop!1613 (List!30508 Int) List!30508)

(assert (=> b!2629131 (= (tail!4254 lt!924945) (drop!1613 lt!924941 (+ 1 from!862)))))

(declare-fun lt!924952 () Unit!44437)

(declare-fun lemmaDropTail!802 (List!30508 Int) Unit!44437)

(assert (=> b!2629131 (= lt!924952 (lemmaDropTail!802 lt!924941 from!862))))

(declare-fun head!6016 (List!30508) Token!8704)

(declare-fun apply!7217 (List!30508 Int) Token!8704)

(assert (=> b!2629131 (= (head!6016 lt!924945) (apply!7217 lt!924941 from!862))))

(assert (=> b!2629131 (= lt!924945 (drop!1613 lt!924941 from!862))))

(declare-fun lt!924948 () Unit!44437)

(declare-fun lemmaDropApply!828 (List!30508 Int) Unit!44437)

(assert (=> b!2629131 (= lt!924948 (lemmaDropApply!828 lt!924941 from!862))))

(declare-fun e!1658746 () Bool)

(declare-fun b!2629132 () Bool)

(declare-fun tp!833570 () Bool)

(declare-fun e!1658756 () Bool)

(declare-fun inv!41203 (String!34079) Bool)

(declare-fun inv!41208 (TokenValueInjection!9118) Bool)

(assert (=> b!2629132 (= e!1658746 (and tp!833570 (inv!41203 (tag!5111 (h!35827 rules!1726))) (inv!41208 (transformation!4617 (h!35827 rules!1726))) e!1658756))))

(declare-fun b!2629133 () Bool)

(declare-fun e!1658748 () Bool)

(assert (=> b!2629133 (= e!1658748 true)))

(declare-fun lt!924950 () BalanceConc!18566)

(declare-fun lt!924951 () List!30506)

(declare-fun seqFromList!3173 (List!30506) BalanceConc!18566)

(assert (=> b!2629133 (= lt!924950 (seqFromList!3173 lt!924951))))

(declare-fun b!2629134 () Bool)

(declare-fun res!1106798 () Bool)

(assert (=> b!2629134 (=> res!1106798 e!1658748)))

(declare-datatypes ((LexerInterface!4214 0))(
  ( (LexerInterfaceExt!4211 (__x!19512 Int)) (Lexer!4212) )
))
(declare-fun thiss!14197 () LexerInterface!4214)

(declare-fun rulesProduceIndividualToken!1926 (LexerInterface!4214 List!30507 Token!8704) Bool)

(assert (=> b!2629134 (= res!1106798 (not (rulesProduceIndividualToken!1926 thiss!14197 rules!1726 lt!924939)))))

(declare-fun b!2629135 () Bool)

(declare-fun res!1106801 () Bool)

(assert (=> b!2629135 (=> (not res!1106801) (not e!1658755))))

(declare-fun sepAndNonSepRulesDisjointChars!1190 (List!30507 List!30507) Bool)

(assert (=> b!2629135 (= res!1106801 (sepAndNonSepRulesDisjointChars!1190 rules!1726 rules!1726))))

(declare-fun b!2629136 () Bool)

(declare-fun res!1106802 () Bool)

(assert (=> b!2629136 (=> (not res!1106802) (not e!1658755))))

(declare-fun rulesInvariant!3714 (LexerInterface!4214 List!30507) Bool)

(assert (=> b!2629136 (= res!1106802 (rulesInvariant!3714 thiss!14197 rules!1726))))

(declare-fun b!2629137 () Bool)

(declare-fun e!1658753 () Bool)

(declare-fun e!1658757 () Bool)

(assert (=> b!2629137 (= e!1658753 e!1658757)))

(declare-fun res!1106806 () Bool)

(assert (=> b!2629137 (=> res!1106806 e!1658757)))

(declare-fun lt!924954 () List!30506)

(declare-fun lt!924943 () List!30506)

(assert (=> b!2629137 (= res!1106806 (not (= lt!924954 lt!924943)))))

(declare-fun printList!1154 (LexerInterface!4214 List!30508) List!30506)

(assert (=> b!2629137 (= lt!924943 (printList!1154 thiss!14197 (Cons!30408 lt!924939 Nil!30408)))))

(declare-fun lt!924938 () BalanceConc!18566)

(declare-fun list!11427 (BalanceConc!18566) List!30506)

(assert (=> b!2629137 (= lt!924954 (list!11427 lt!924938))))

(declare-fun lt!924947 () BalanceConc!18568)

(declare-fun printTailRec!1113 (LexerInterface!4214 BalanceConc!18568 Int BalanceConc!18566) BalanceConc!18566)

(assert (=> b!2629137 (= lt!924938 (printTailRec!1113 thiss!14197 lt!924947 0 (BalanceConc!18567 Empty!9476)))))

(declare-fun print!1624 (LexerInterface!4214 BalanceConc!18568) BalanceConc!18566)

(assert (=> b!2629137 (= lt!924938 (print!1624 thiss!14197 lt!924947))))

(declare-fun singletonSeq!2043 (Token!8704) BalanceConc!18568)

(assert (=> b!2629137 (= lt!924947 (singletonSeq!2043 lt!924939))))

(declare-fun b!2629138 () Bool)

(assert (=> b!2629138 (= e!1658757 e!1658748)))

(declare-fun res!1106807 () Bool)

(assert (=> b!2629138 (=> res!1106807 e!1658748)))

(assert (=> b!2629138 (= res!1106807 (not (= lt!924943 lt!924951)))))

(declare-fun lt!924942 () BalanceConc!18566)

(assert (=> b!2629138 (= lt!924951 (list!11427 lt!924942))))

(declare-fun b!2629139 () Bool)

(declare-fun res!1106792 () Bool)

(assert (=> b!2629139 (=> (not res!1106792) (not e!1658755))))

(declare-fun isEmpty!17350 (List!30507) Bool)

(assert (=> b!2629139 (= res!1106792 (not (isEmpty!17350 rules!1726)))))

(declare-fun b!2629140 () Bool)

(declare-fun res!1106803 () Bool)

(assert (=> b!2629140 (=> (not res!1106803) (not e!1658755))))

(assert (=> b!2629140 (= res!1106803 (rulesProduceIndividualToken!1926 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun e!1658750 () Bool)

(assert (=> b!2629141 (= e!1658750 (and tp!833565 tp!833571))))

(declare-fun res!1106795 () Bool)

(declare-fun e!1658759 () Bool)

(assert (=> start!255630 (=> (not res!1106795) (not e!1658759))))

(assert (=> start!255630 (= res!1106795 (and ((_ is Lexer!4212) thiss!14197) (>= from!862 0)))))

(assert (=> start!255630 e!1658759))

(assert (=> start!255630 true))

(declare-fun e!1658747 () Bool)

(assert (=> start!255630 e!1658747))

(declare-fun e!1658754 () Bool)

(declare-fun inv!41209 (Token!8704) Bool)

(assert (=> start!255630 (and (inv!41209 separatorToken!156) e!1658754)))

(declare-fun e!1658752 () Bool)

(declare-fun inv!41210 (BalanceConc!18568) Bool)

(assert (=> start!255630 (and (inv!41210 v!6381) e!1658752)))

(declare-fun res!1106800 () Bool)

(assert (=> b!2629142 (=> (not res!1106800) (not e!1658755))))

(declare-fun forall!6349 (BalanceConc!18568 Int) Bool)

(assert (=> b!2629142 (= res!1106800 (forall!6349 v!6381 lambda!98541))))

(declare-fun b!2629143 () Bool)

(declare-fun tp!833567 () Bool)

(assert (=> b!2629143 (= e!1658747 (and e!1658746 tp!833567))))

(declare-fun b!2629144 () Bool)

(declare-fun res!1106804 () Bool)

(assert (=> b!2629144 (=> (not res!1106804) (not e!1658755))))

(declare-fun rulesProduceEachTokenIndividually!1034 (LexerInterface!4214 List!30507 BalanceConc!18568) Bool)

(assert (=> b!2629144 (= res!1106804 (rulesProduceEachTokenIndividually!1034 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2629145 () Bool)

(assert (=> b!2629145 (= e!1658759 e!1658755)))

(declare-fun res!1106799 () Bool)

(assert (=> b!2629145 (=> (not res!1106799) (not e!1658755))))

(assert (=> b!2629145 (= res!1106799 (<= from!862 lt!924940))))

(declare-fun size!23517 (BalanceConc!18568) Int)

(assert (=> b!2629145 (= lt!924940 (size!23517 v!6381))))

(declare-fun e!1658744 () Bool)

(declare-fun tp!833566 () Bool)

(declare-fun b!2629146 () Bool)

(assert (=> b!2629146 (= e!1658744 (and tp!833566 (inv!41203 (tag!5111 (rule!6999 separatorToken!156))) (inv!41208 (transformation!4617 (rule!6999 separatorToken!156))) e!1658750))))

(assert (=> b!2629147 (= e!1658756 (and tp!833572 tp!833569))))

(declare-fun b!2629148 () Bool)

(declare-fun res!1106805 () Bool)

(assert (=> b!2629148 (=> res!1106805 e!1658745)))

(declare-fun contains!5737 (List!30508 Token!8704) Bool)

(assert (=> b!2629148 (= res!1106805 (not (contains!5737 lt!924941 lt!924939)))))

(assert (=> b!2629149 (= e!1658745 e!1658753)))

(declare-fun res!1106793 () Bool)

(assert (=> b!2629149 (=> res!1106793 e!1658753)))

(declare-fun lt!924949 () Bool)

(declare-datatypes ((tuple2!29928 0))(
  ( (tuple2!29929 (_1!17506 Token!8704) (_2!17506 BalanceConc!18566)) )
))
(declare-datatypes ((Option!6008 0))(
  ( (None!6007) (Some!6007 (v!32394 tuple2!29928)) )
))
(declare-fun lt!924953 () Option!6008)

(assert (=> b!2629149 (= res!1106793 (or (and (not lt!924949) (= (_1!17506 (v!32394 lt!924953)) lt!924939)) (and (not lt!924949) (not (= (_1!17506 (v!32394 lt!924953)) lt!924939))) (not ((_ is None!6007) lt!924953))))))

(assert (=> b!2629149 (= lt!924949 (not ((_ is Some!6007) lt!924953)))))

(declare-fun lt!924944 () BalanceConc!18566)

(declare-fun maxPrefixZipperSequence!944 (LexerInterface!4214 List!30507 BalanceConc!18566) Option!6008)

(declare-fun ++!7403 (BalanceConc!18566 BalanceConc!18566) BalanceConc!18566)

(assert (=> b!2629149 (= lt!924953 (maxPrefixZipperSequence!944 thiss!14197 rules!1726 (++!7403 lt!924942 lt!924944)))))

(declare-fun charsOf!2908 (Token!8704) BalanceConc!18566)

(assert (=> b!2629149 (= lt!924942 (charsOf!2908 lt!924939))))

(declare-fun printWithSeparatorTokenWhenNeededRec!492 (LexerInterface!4214 List!30507 BalanceConc!18568 Token!8704 Int) BalanceConc!18566)

(assert (=> b!2629149 (= lt!924944 (printWithSeparatorTokenWhenNeededRec!492 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))

(declare-fun lt!924946 () Unit!44437)

(declare-fun forallContained!973 (List!30508 Int Token!8704) Unit!44437)

(assert (=> b!2629149 (= lt!924946 (forallContained!973 lt!924941 lambda!98542 lt!924939))))

(declare-fun b!2629150 () Bool)

(declare-fun tp!833568 () Bool)

(declare-fun inv!41211 (Conc!9477) Bool)

(assert (=> b!2629150 (= e!1658752 (and (inv!41211 (c!422806 v!6381)) tp!833568))))

(declare-fun b!2629151 () Bool)

(declare-fun tp!833564 () Bool)

(declare-fun inv!21 (TokenValue!4839) Bool)

(assert (=> b!2629151 (= e!1658754 (and (inv!21 (value!149189 separatorToken!156)) e!1658744 tp!833564))))

(assert (= (and start!255630 res!1106795) b!2629145))

(assert (= (and b!2629145 res!1106799) b!2629139))

(assert (= (and b!2629139 res!1106792) b!2629136))

(assert (= (and b!2629136 res!1106802) b!2629144))

(assert (= (and b!2629144 res!1106804) b!2629140))

(assert (= (and b!2629140 res!1106803) b!2629130))

(assert (= (and b!2629130 res!1106794) b!2629142))

(assert (= (and b!2629142 res!1106800) b!2629135))

(assert (= (and b!2629135 res!1106801) b!2629129))

(assert (= (and b!2629129 res!1106796) b!2629131))

(assert (= (and b!2629131 (not res!1106797)) b!2629148))

(assert (= (and b!2629148 (not res!1106805)) b!2629149))

(assert (= (and b!2629149 (not res!1106793)) b!2629137))

(assert (= (and b!2629137 (not res!1106806)) b!2629138))

(assert (= (and b!2629138 (not res!1106807)) b!2629134))

(assert (= (and b!2629134 (not res!1106798)) b!2629133))

(assert (= b!2629132 b!2629147))

(assert (= b!2629143 b!2629132))

(assert (= (and start!255630 ((_ is Cons!30407) rules!1726)) b!2629143))

(assert (= b!2629146 b!2629141))

(assert (= b!2629151 b!2629146))

(assert (= start!255630 b!2629151))

(assert (= start!255630 b!2629150))

(declare-fun m!2972207 () Bool)

(assert (=> b!2629136 m!2972207))

(declare-fun m!2972209 () Bool)

(assert (=> b!2629145 m!2972209))

(declare-fun m!2972211 () Bool)

(assert (=> b!2629135 m!2972211))

(declare-fun m!2972213 () Bool)

(assert (=> b!2629140 m!2972213))

(declare-fun m!2972215 () Bool)

(assert (=> b!2629138 m!2972215))

(declare-fun m!2972217 () Bool)

(assert (=> b!2629129 m!2972217))

(assert (=> b!2629129 m!2972217))

(declare-fun m!2972219 () Bool)

(assert (=> b!2629129 m!2972219))

(declare-fun m!2972221 () Bool)

(assert (=> b!2629129 m!2972221))

(declare-fun m!2972223 () Bool)

(assert (=> b!2629132 m!2972223))

(declare-fun m!2972225 () Bool)

(assert (=> b!2629132 m!2972225))

(declare-fun m!2972227 () Bool)

(assert (=> b!2629151 m!2972227))

(declare-fun m!2972229 () Bool)

(assert (=> start!255630 m!2972229))

(declare-fun m!2972231 () Bool)

(assert (=> start!255630 m!2972231))

(declare-fun m!2972233 () Bool)

(assert (=> b!2629142 m!2972233))

(declare-fun m!2972235 () Bool)

(assert (=> b!2629149 m!2972235))

(declare-fun m!2972237 () Bool)

(assert (=> b!2629149 m!2972237))

(declare-fun m!2972239 () Bool)

(assert (=> b!2629149 m!2972239))

(declare-fun m!2972241 () Bool)

(assert (=> b!2629149 m!2972241))

(declare-fun m!2972243 () Bool)

(assert (=> b!2629149 m!2972243))

(assert (=> b!2629149 m!2972241))

(declare-fun m!2972245 () Bool)

(assert (=> b!2629139 m!2972245))

(declare-fun m!2972247 () Bool)

(assert (=> b!2629137 m!2972247))

(declare-fun m!2972249 () Bool)

(assert (=> b!2629137 m!2972249))

(declare-fun m!2972251 () Bool)

(assert (=> b!2629137 m!2972251))

(declare-fun m!2972253 () Bool)

(assert (=> b!2629137 m!2972253))

(declare-fun m!2972255 () Bool)

(assert (=> b!2629137 m!2972255))

(declare-fun m!2972257 () Bool)

(assert (=> b!2629134 m!2972257))

(declare-fun m!2972259 () Bool)

(assert (=> b!2629148 m!2972259))

(declare-fun m!2972261 () Bool)

(assert (=> b!2629131 m!2972261))

(declare-fun m!2972263 () Bool)

(assert (=> b!2629131 m!2972263))

(declare-fun m!2972265 () Bool)

(assert (=> b!2629131 m!2972265))

(declare-fun m!2972267 () Bool)

(assert (=> b!2629131 m!2972267))

(declare-fun m!2972269 () Bool)

(assert (=> b!2629131 m!2972269))

(declare-fun m!2972271 () Bool)

(assert (=> b!2629131 m!2972271))

(declare-fun m!2972273 () Bool)

(assert (=> b!2629131 m!2972273))

(declare-fun m!2972275 () Bool)

(assert (=> b!2629131 m!2972275))

(declare-fun m!2972277 () Bool)

(assert (=> b!2629131 m!2972277))

(declare-fun m!2972279 () Bool)

(assert (=> b!2629144 m!2972279))

(declare-fun m!2972281 () Bool)

(assert (=> b!2629133 m!2972281))

(declare-fun m!2972283 () Bool)

(assert (=> b!2629146 m!2972283))

(declare-fun m!2972285 () Bool)

(assert (=> b!2629146 m!2972285))

(declare-fun m!2972287 () Bool)

(assert (=> b!2629150 m!2972287))

(check-sat (not b!2629139) (not b!2629134) (not b!2629150) (not b!2629129) (not b_next!74733) (not b_next!74739) (not b_next!74737) (not b!2629142) (not b!2629144) (not b!2629131) (not b!2629135) (not b!2629138) (not b!2629143) b_and!192589 (not b!2629133) b_and!192591 (not b!2629148) (not b!2629151) (not b!2629149) (not b_next!74735) (not b!2629140) b_and!192593 (not b!2629146) (not b!2629136) (not b!2629137) b_and!192587 (not b!2629132) (not b!2629145) (not b!2629160) (not start!255630))
(check-sat b_and!192593 (not b_next!74733) (not b_next!74739) (not b_next!74737) b_and!192587 b_and!192589 b_and!192591 (not b_next!74735))
