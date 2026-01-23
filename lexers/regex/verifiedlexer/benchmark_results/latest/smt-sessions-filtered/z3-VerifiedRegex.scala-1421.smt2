; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74370 () Bool)

(assert start!74370)

(declare-fun b!838115 () Bool)

(declare-fun b_free!24769 () Bool)

(declare-fun b_next!24833 () Bool)

(assert (=> b!838115 (= b_free!24769 (not b_next!24833))))

(declare-fun tp!263148 () Bool)

(declare-fun b_and!72249 () Bool)

(assert (=> b!838115 (= tp!263148 b_and!72249)))

(declare-fun b_free!24771 () Bool)

(declare-fun b_next!24835 () Bool)

(assert (=> b!838115 (= b_free!24771 (not b_next!24835))))

(declare-fun tp!263155 () Bool)

(declare-fun b_and!72251 () Bool)

(assert (=> b!838115 (= tp!263155 b_and!72251)))

(declare-fun b!838116 () Bool)

(declare-fun b_free!24773 () Bool)

(declare-fun b_next!24837 () Bool)

(assert (=> b!838116 (= b_free!24773 (not b_next!24837))))

(declare-fun tp!263150 () Bool)

(declare-fun b_and!72253 () Bool)

(assert (=> b!838116 (= tp!263150 b_and!72253)))

(declare-fun b_free!24775 () Bool)

(declare-fun b_next!24839 () Bool)

(assert (=> b!838116 (= b_free!24775 (not b_next!24839))))

(declare-fun tp!263154 () Bool)

(declare-fun b_and!72255 () Bool)

(assert (=> b!838116 (= tp!263154 b_and!72255)))

(declare-fun b!838118 () Bool)

(declare-fun b_free!24777 () Bool)

(declare-fun b_next!24841 () Bool)

(assert (=> b!838118 (= b_free!24777 (not b_next!24841))))

(declare-fun tp!263149 () Bool)

(declare-fun b_and!72257 () Bool)

(assert (=> b!838118 (= tp!263149 b_and!72257)))

(declare-fun b_free!24779 () Bool)

(declare-fun b_next!24843 () Bool)

(assert (=> b!838118 (= b_free!24779 (not b_next!24843))))

(declare-fun tp!263151 () Bool)

(declare-fun b_and!72259 () Bool)

(assert (=> b!838118 (= tp!263151 b_and!72259)))

(declare-fun b!838111 () Bool)

(declare-fun res!383107 () Bool)

(declare-fun e!550931 () Bool)

(assert (=> b!838111 (=> (not res!383107) (not e!550931))))

(declare-datatypes ((List!8936 0))(
  ( (Nil!8920) (Cons!8920 (h!14321 (_ BitVec 16)) (t!93228 List!8936)) )
))
(declare-datatypes ((TokenValue!1734 0))(
  ( (FloatLiteralValue!3468 (text!12583 List!8936)) (TokenValueExt!1733 (__x!7199 Int)) (Broken!8670 (value!54211 List!8936)) (Object!1749) (End!1734) (Def!1734) (Underscore!1734) (Match!1734) (Else!1734) (Error!1734) (Case!1734) (If!1734) (Extends!1734) (Abstract!1734) (Class!1734) (Val!1734) (DelimiterValue!3468 (del!1794 List!8936)) (KeywordValue!1740 (value!54212 List!8936)) (CommentValue!3468 (value!54213 List!8936)) (WhitespaceValue!3468 (value!54214 List!8936)) (IndentationValue!1734 (value!54215 List!8936)) (String!10567) (Int32!1734) (Broken!8671 (value!54216 List!8936)) (Boolean!1735) (Unit!13396) (OperatorValue!1737 (op!1794 List!8936)) (IdentifierValue!3468 (value!54217 List!8936)) (IdentifierValue!3469 (value!54218 List!8936)) (WhitespaceValue!3469 (value!54219 List!8936)) (True!3468) (False!3468) (Broken!8672 (value!54220 List!8936)) (Broken!8673 (value!54221 List!8936)) (True!3469) (RightBrace!1734) (RightBracket!1734) (Colon!1734) (Null!1734) (Comma!1734) (LeftBracket!1734) (False!3469) (LeftBrace!1734) (ImaginaryLiteralValue!1734 (text!12584 List!8936)) (StringLiteralValue!5202 (value!54222 List!8936)) (EOFValue!1734 (value!54223 List!8936)) (IdentValue!1734 (value!54224 List!8936)) (DelimiterValue!3469 (value!54225 List!8936)) (DedentValue!1734 (value!54226 List!8936)) (NewLineValue!1734 (value!54227 List!8936)) (IntegerValue!5202 (value!54228 (_ BitVec 32)) (text!12585 List!8936)) (IntegerValue!5203 (value!54229 Int) (text!12586 List!8936)) (Times!1734) (Or!1734) (Equal!1734) (Minus!1734) (Broken!8674 (value!54230 List!8936)) (And!1734) (Div!1734) (LessEqual!1734) (Mod!1734) (Concat!3835) (Not!1734) (Plus!1734) (SpaceValue!1734 (value!54231 List!8936)) (IntegerValue!5204 (value!54232 Int) (text!12587 List!8936)) (StringLiteralValue!5203 (text!12588 List!8936)) (FloatLiteralValue!3469 (text!12589 List!8936)) (BytesLiteralValue!1734 (value!54233 List!8936)) (CommentValue!3469 (value!54234 List!8936)) (StringLiteralValue!5204 (value!54235 List!8936)) (ErrorTokenValue!1734 (msg!1795 List!8936)) )
))
(declare-datatypes ((C!4772 0))(
  ( (C!4773 (val!2634 Int)) )
))
(declare-datatypes ((Regex!2101 0))(
  ( (ElementMatch!2101 (c!136901 C!4772)) (Concat!3836 (regOne!4714 Regex!2101) (regTwo!4714 Regex!2101)) (EmptyExpr!2101) (Star!2101 (reg!2430 Regex!2101)) (EmptyLang!2101) (Union!2101 (regOne!4715 Regex!2101) (regTwo!4715 Regex!2101)) )
))
(declare-datatypes ((String!10568 0))(
  ( (String!10569 (value!54236 String)) )
))
(declare-datatypes ((List!8937 0))(
  ( (Nil!8921) (Cons!8921 (h!14322 C!4772) (t!93229 List!8937)) )
))
(declare-datatypes ((IArray!5927 0))(
  ( (IArray!5928 (innerList!3021 List!8937)) )
))
(declare-datatypes ((Conc!2961 0))(
  ( (Node!2961 (left!6632 Conc!2961) (right!6962 Conc!2961) (csize!6152 Int) (cheight!3172 Int)) (Leaf!4383 (xs!5650 IArray!5927) (csize!6153 Int)) (Empty!2961) )
))
(declare-datatypes ((BalanceConc!5936 0))(
  ( (BalanceConc!5937 (c!136902 Conc!2961)) )
))
(declare-datatypes ((TokenValueInjection!3168 0))(
  ( (TokenValueInjection!3169 (toValue!2685 Int) (toChars!2544 Int)) )
))
(declare-datatypes ((Rule!3136 0))(
  ( (Rule!3137 (regex!1668 Regex!2101) (tag!1930 String!10568) (isSeparator!1668 Bool) (transformation!1668 TokenValueInjection!3168)) )
))
(declare-datatypes ((Token!3002 0))(
  ( (Token!3003 (value!54237 TokenValue!1734) (rule!3091 Rule!3136) (size!7495 Int) (originalCharacters!2224 List!8937)) )
))
(declare-datatypes ((List!8938 0))(
  ( (Nil!8922) (Cons!8922 (h!14323 Token!3002) (t!93230 List!8938)) )
))
(declare-fun l!5107 () List!8938)

(declare-fun lambda!24872 () Int)

(declare-fun forall!2083 (List!8938 Int) Bool)

(assert (=> b!838111 (= res!383107 (forall!2083 l!5107 lambda!24872))))

(declare-fun b!838112 () Bool)

(declare-fun res!383110 () Bool)

(assert (=> b!838112 (=> (not res!383110) (not e!550931))))

(declare-datatypes ((LexerInterface!1470 0))(
  ( (LexerInterfaceExt!1467 (__x!7200 Int)) (Lexer!1468) )
))
(declare-fun thiss!20117 () LexerInterface!1470)

(declare-datatypes ((List!8939 0))(
  ( (Nil!8923) (Cons!8923 (h!14324 Rule!3136) (t!93231 List!8939)) )
))
(declare-fun rules!2621 () List!8939)

(declare-fun rulesInvariant!1346 (LexerInterface!1470 List!8939) Bool)

(assert (=> b!838112 (= res!383110 (rulesInvariant!1346 thiss!20117 rules!2621))))

(declare-fun b!838113 () Bool)

(declare-fun res!383111 () Bool)

(assert (=> b!838113 (=> (not res!383111) (not e!550931))))

(declare-fun separatorToken!297 () Token!3002)

(assert (=> b!838113 (= res!383111 (isSeparator!1668 (rule!3091 separatorToken!297)))))

(declare-fun tp!263156 () Bool)

(declare-fun e!550935 () Bool)

(declare-fun e!550930 () Bool)

(declare-fun b!838114 () Bool)

(declare-fun inv!11394 (String!10568) Bool)

(declare-fun inv!11397 (TokenValueInjection!3168) Bool)

(assert (=> b!838114 (= e!550930 (and tp!263156 (inv!11394 (tag!1930 (rule!3091 (h!14323 l!5107)))) (inv!11397 (transformation!1668 (rule!3091 (h!14323 l!5107)))) e!550935))))

(declare-fun e!550933 () Bool)

(assert (=> b!838115 (= e!550933 (and tp!263148 tp!263155))))

(assert (=> b!838116 (= e!550935 (and tp!263150 tp!263154))))

(declare-fun tp!263157 () Bool)

(declare-fun e!550932 () Bool)

(declare-fun b!838117 () Bool)

(declare-fun e!550937 () Bool)

(declare-fun inv!21 (TokenValue!1734) Bool)

(assert (=> b!838117 (= e!550937 (and (inv!21 (value!54237 separatorToken!297)) e!550932 tp!263157))))

(declare-fun e!550927 () Bool)

(assert (=> b!838118 (= e!550927 (and tp!263149 tp!263151))))

(declare-fun e!550929 () Bool)

(declare-fun tp!263159 () Bool)

(declare-fun b!838119 () Bool)

(assert (=> b!838119 (= e!550929 (and (inv!21 (value!54237 (h!14323 l!5107))) e!550930 tp!263159))))

(declare-fun b!838120 () Bool)

(declare-fun e!550923 () Bool)

(declare-fun e!550924 () Bool)

(declare-fun tp!263152 () Bool)

(assert (=> b!838120 (= e!550923 (and e!550924 tp!263152))))

(declare-fun tp!263160 () Bool)

(declare-fun b!838121 () Bool)

(assert (=> b!838121 (= e!550932 (and tp!263160 (inv!11394 (tag!1930 (rule!3091 separatorToken!297))) (inv!11397 (transformation!1668 (rule!3091 separatorToken!297))) e!550927))))

(declare-fun e!550936 () Bool)

(declare-fun b!838122 () Bool)

(declare-fun tp!263153 () Bool)

(declare-fun inv!11398 (Token!3002) Bool)

(assert (=> b!838122 (= e!550936 (and (inv!11398 (h!14323 l!5107)) e!550929 tp!263153))))

(declare-fun b!838123 () Bool)

(declare-fun res!383105 () Bool)

(assert (=> b!838123 (=> (not res!383105) (not e!550931))))

(declare-fun rulesProduceEachTokenIndividuallyList!358 (LexerInterface!1470 List!8939 List!8938) Bool)

(assert (=> b!838123 (= res!383105 (rulesProduceEachTokenIndividuallyList!358 thiss!20117 rules!2621 l!5107))))

(declare-fun res!383106 () Bool)

(assert (=> start!74370 (=> (not res!383106) (not e!550931))))

(get-info :version)

(assert (=> start!74370 (= res!383106 ((_ is Lexer!1468) thiss!20117))))

(assert (=> start!74370 e!550931))

(assert (=> start!74370 true))

(assert (=> start!74370 e!550923))

(assert (=> start!74370 e!550936))

(assert (=> start!74370 (and (inv!11398 separatorToken!297) e!550937)))

(declare-fun b!838124 () Bool)

(assert (=> b!838124 (= e!550931 false)))

(declare-fun lt!318013 () Bool)

(declare-fun sepAndNonSepRulesDisjointChars!468 (List!8939 List!8939) Bool)

(assert (=> b!838124 (= lt!318013 (sepAndNonSepRulesDisjointChars!468 rules!2621 rules!2621))))

(declare-fun b!838125 () Bool)

(declare-fun res!383108 () Bool)

(assert (=> b!838125 (=> (not res!383108) (not e!550931))))

(declare-fun rulesProduceIndividualToken!534 (LexerInterface!1470 List!8939 Token!3002) Bool)

(assert (=> b!838125 (= res!383108 (rulesProduceIndividualToken!534 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!838126 () Bool)

(declare-fun res!383109 () Bool)

(assert (=> b!838126 (=> (not res!383109) (not e!550931))))

(declare-fun isEmpty!5273 (List!8939) Bool)

(assert (=> b!838126 (= res!383109 (not (isEmpty!5273 rules!2621)))))

(declare-fun tp!263158 () Bool)

(declare-fun b!838127 () Bool)

(assert (=> b!838127 (= e!550924 (and tp!263158 (inv!11394 (tag!1930 (h!14324 rules!2621))) (inv!11397 (transformation!1668 (h!14324 rules!2621))) e!550933))))

(assert (= (and start!74370 res!383106) b!838126))

(assert (= (and b!838126 res!383109) b!838112))

(assert (= (and b!838112 res!383110) b!838123))

(assert (= (and b!838123 res!383105) b!838125))

(assert (= (and b!838125 res!383108) b!838113))

(assert (= (and b!838113 res!383111) b!838111))

(assert (= (and b!838111 res!383107) b!838124))

(assert (= b!838127 b!838115))

(assert (= b!838120 b!838127))

(assert (= (and start!74370 ((_ is Cons!8923) rules!2621)) b!838120))

(assert (= b!838114 b!838116))

(assert (= b!838119 b!838114))

(assert (= b!838122 b!838119))

(assert (= (and start!74370 ((_ is Cons!8922) l!5107)) b!838122))

(assert (= b!838121 b!838118))

(assert (= b!838117 b!838121))

(assert (= start!74370 b!838117))

(declare-fun m!1071209 () Bool)

(assert (=> b!838126 m!1071209))

(declare-fun m!1071211 () Bool)

(assert (=> b!838114 m!1071211))

(declare-fun m!1071213 () Bool)

(assert (=> b!838114 m!1071213))

(declare-fun m!1071215 () Bool)

(assert (=> b!838124 m!1071215))

(declare-fun m!1071217 () Bool)

(assert (=> b!838122 m!1071217))

(declare-fun m!1071219 () Bool)

(assert (=> b!838121 m!1071219))

(declare-fun m!1071221 () Bool)

(assert (=> b!838121 m!1071221))

(declare-fun m!1071223 () Bool)

(assert (=> start!74370 m!1071223))

(declare-fun m!1071225 () Bool)

(assert (=> b!838112 m!1071225))

(declare-fun m!1071227 () Bool)

(assert (=> b!838125 m!1071227))

(declare-fun m!1071229 () Bool)

(assert (=> b!838123 m!1071229))

(declare-fun m!1071231 () Bool)

(assert (=> b!838119 m!1071231))

(declare-fun m!1071233 () Bool)

(assert (=> b!838111 m!1071233))

(declare-fun m!1071235 () Bool)

(assert (=> b!838117 m!1071235))

(declare-fun m!1071237 () Bool)

(assert (=> b!838127 m!1071237))

(declare-fun m!1071239 () Bool)

(assert (=> b!838127 m!1071239))

(check-sat (not b_next!24833) (not b!838125) b_and!72255 (not b!838119) (not b!838120) (not start!74370) (not b_next!24843) (not b_next!24835) b_and!72259 (not b!838111) (not b!838122) (not b!838121) (not b!838114) (not b!838123) (not b!838112) (not b!838117) (not b_next!24841) b_and!72257 b_and!72249 (not b_next!24837) b_and!72251 (not b!838127) b_and!72253 (not b_next!24839) (not b!838124) (not b!838126))
(check-sat (not b_next!24833) b_and!72255 (not b_next!24841) (not b_next!24843) (not b_next!24835) b_and!72259 b_and!72257 b_and!72249 (not b_next!24837) b_and!72251 b_and!72253 (not b_next!24839))
