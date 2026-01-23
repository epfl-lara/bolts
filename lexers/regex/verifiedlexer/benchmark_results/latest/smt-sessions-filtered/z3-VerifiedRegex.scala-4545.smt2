; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!240598 () Bool)

(assert start!240598)

(declare-fun b!2467333 () Bool)

(declare-fun b_free!71125 () Bool)

(declare-fun b_next!71829 () Bool)

(assert (=> b!2467333 (= b_free!71125 (not b_next!71829))))

(declare-fun tp!787256 () Bool)

(declare-fun b_and!186661 () Bool)

(assert (=> b!2467333 (= tp!787256 b_and!186661)))

(declare-fun b_free!71127 () Bool)

(declare-fun b_next!71831 () Bool)

(assert (=> b!2467333 (= b_free!71127 (not b_next!71831))))

(declare-fun tp!787255 () Bool)

(declare-fun b_and!186663 () Bool)

(assert (=> b!2467333 (= tp!787255 b_and!186663)))

(declare-fun b!2467330 () Bool)

(declare-fun b_free!71129 () Bool)

(declare-fun b_next!71833 () Bool)

(assert (=> b!2467330 (= b_free!71129 (not b_next!71833))))

(declare-fun tp!787266 () Bool)

(declare-fun b_and!186665 () Bool)

(assert (=> b!2467330 (= tp!787266 b_and!186665)))

(declare-fun b_free!71131 () Bool)

(declare-fun b_next!71835 () Bool)

(assert (=> b!2467330 (= b_free!71131 (not b_next!71835))))

(declare-fun tp!787258 () Bool)

(declare-fun b_and!186667 () Bool)

(assert (=> b!2467330 (= tp!787258 b_and!186667)))

(declare-fun b!2467315 () Bool)

(declare-fun b_free!71133 () Bool)

(declare-fun b_next!71837 () Bool)

(assert (=> b!2467315 (= b_free!71133 (not b_next!71837))))

(declare-fun tp!787259 () Bool)

(declare-fun b_and!186669 () Bool)

(assert (=> b!2467315 (= tp!787259 b_and!186669)))

(declare-fun b_free!71135 () Bool)

(declare-fun b_next!71839 () Bool)

(assert (=> b!2467315 (= b_free!71135 (not b_next!71839))))

(declare-fun tp!787252 () Bool)

(declare-fun b_and!186671 () Bool)

(assert (=> b!2467315 (= tp!787252 b_and!186671)))

(declare-fun b!2467326 () Bool)

(declare-fun b_free!71137 () Bool)

(declare-fun b_next!71841 () Bool)

(assert (=> b!2467326 (= b_free!71137 (not b_next!71841))))

(declare-fun tp!787264 () Bool)

(declare-fun b_and!186673 () Bool)

(assert (=> b!2467326 (= tp!787264 b_and!186673)))

(declare-fun b_free!71139 () Bool)

(declare-fun b_next!71843 () Bool)

(assert (=> b!2467326 (= b_free!71139 (not b_next!71843))))

(declare-fun tp!787261 () Bool)

(declare-fun b_and!186675 () Bool)

(assert (=> b!2467326 (= tp!787261 b_and!186675)))

(declare-fun b!2467313 () Bool)

(declare-fun e!1564955 () Bool)

(declare-fun e!1564950 () Bool)

(assert (=> b!2467313 (= e!1564955 e!1564950)))

(declare-fun res!1045049 () Bool)

(assert (=> b!2467313 (=> (not res!1045049) (not e!1564950))))

(declare-fun lt!882470 () Int)

(declare-datatypes ((List!28855 0))(
  ( (Nil!28755) (Cons!28755 (h!34156 (_ BitVec 16)) (t!209518 List!28855)) )
))
(declare-datatypes ((TokenValue!4663 0))(
  ( (FloatLiteralValue!9326 (text!33086 List!28855)) (TokenValueExt!4662 (__x!18581 Int)) (Broken!23315 (value!142974 List!28855)) (Object!4762) (End!4663) (Def!4663) (Underscore!4663) (Match!4663) (Else!4663) (Error!4663) (Case!4663) (If!4663) (Extends!4663) (Abstract!4663) (Class!4663) (Val!4663) (DelimiterValue!9326 (del!4723 List!28855)) (KeywordValue!4669 (value!142975 List!28855)) (CommentValue!9326 (value!142976 List!28855)) (WhitespaceValue!9326 (value!142977 List!28855)) (IndentationValue!4663 (value!142978 List!28855)) (String!31610) (Int32!4663) (Broken!23316 (value!142979 List!28855)) (Boolean!4664) (Unit!42087) (OperatorValue!4666 (op!4723 List!28855)) (IdentifierValue!9326 (value!142980 List!28855)) (IdentifierValue!9327 (value!142981 List!28855)) (WhitespaceValue!9327 (value!142982 List!28855)) (True!9326) (False!9326) (Broken!23317 (value!142983 List!28855)) (Broken!23318 (value!142984 List!28855)) (True!9327) (RightBrace!4663) (RightBracket!4663) (Colon!4663) (Null!4663) (Comma!4663) (LeftBracket!4663) (False!9327) (LeftBrace!4663) (ImaginaryLiteralValue!4663 (text!33087 List!28855)) (StringLiteralValue!13989 (value!142985 List!28855)) (EOFValue!4663 (value!142986 List!28855)) (IdentValue!4663 (value!142987 List!28855)) (DelimiterValue!9327 (value!142988 List!28855)) (DedentValue!4663 (value!142989 List!28855)) (NewLineValue!4663 (value!142990 List!28855)) (IntegerValue!13989 (value!142991 (_ BitVec 32)) (text!33088 List!28855)) (IntegerValue!13990 (value!142992 Int) (text!33089 List!28855)) (Times!4663) (Or!4663) (Equal!4663) (Minus!4663) (Broken!23319 (value!142993 List!28855)) (And!4663) (Div!4663) (LessEqual!4663) (Mod!4663) (Concat!11928) (Not!4663) (Plus!4663) (SpaceValue!4663 (value!142994 List!28855)) (IntegerValue!13991 (value!142995 Int) (text!33090 List!28855)) (StringLiteralValue!13990 (text!33091 List!28855)) (FloatLiteralValue!9327 (text!33092 List!28855)) (BytesLiteralValue!4663 (value!142996 List!28855)) (CommentValue!9327 (value!142997 List!28855)) (StringLiteralValue!13991 (value!142998 List!28855)) (ErrorTokenValue!4663 (msg!4724 List!28855)) )
))
(declare-datatypes ((C!14688 0))(
  ( (C!14689 (val!8604 Int)) )
))
(declare-datatypes ((List!28856 0))(
  ( (Nil!28756) (Cons!28756 (h!34157 C!14688) (t!209519 List!28856)) )
))
(declare-datatypes ((IArray!18383 0))(
  ( (IArray!18384 (innerList!9249 List!28856)) )
))
(declare-datatypes ((Conc!9189 0))(
  ( (Node!9189 (left!22070 Conc!9189) (right!22400 Conc!9189) (csize!18608 Int) (cheight!9400 Int)) (Leaf!13735 (xs!12169 IArray!18383) (csize!18609 Int)) (Empty!9189) )
))
(declare-datatypes ((BalanceConc!17992 0))(
  ( (BalanceConc!17993 (c!393326 Conc!9189)) )
))
(declare-datatypes ((Regex!7265 0))(
  ( (ElementMatch!7265 (c!393327 C!14688)) (Concat!11929 (regOne!15042 Regex!7265) (regTwo!15042 Regex!7265)) (EmptyExpr!7265) (Star!7265 (reg!7594 Regex!7265)) (EmptyLang!7265) (Union!7265 (regOne!15043 Regex!7265) (regTwo!15043 Regex!7265)) )
))
(declare-datatypes ((String!31611 0))(
  ( (String!31612 (value!142999 String)) )
))
(declare-datatypes ((TokenValueInjection!8826 0))(
  ( (TokenValueInjection!8827 (toValue!6337 Int) (toChars!6196 Int)) )
))
(declare-datatypes ((Rule!8754 0))(
  ( (Rule!8755 (regex!4477 Regex!7265) (tag!4967 String!31611) (isSeparator!4477 Bool) (transformation!4477 TokenValueInjection!8826)) )
))
(declare-datatypes ((Token!8424 0))(
  ( (Token!8425 (value!143000 TokenValue!4663) (rule!6835 Rule!8754) (size!22375 Int) (originalCharacters!5243 List!28856)) )
))
(declare-datatypes ((List!28857 0))(
  ( (Nil!28757) (Cons!28757 (h!34158 Token!8424) (t!209520 List!28857)) )
))
(declare-fun lt!882467 () List!28857)

(declare-fun size!22376 (List!28857) Int)

(assert (=> b!2467313 (= res!1045049 (< lt!882470 (size!22376 lt!882467)))))

(declare-fun i!1803 () Int)

(assert (=> b!2467313 (= lt!882470 (+ 1 (- i!1803 1)))))

(declare-fun b!2467314 () Bool)

(declare-fun res!1045063 () Bool)

(declare-fun e!1564944 () Bool)

(assert (=> b!2467314 (=> (not res!1045063) (not e!1564944))))

(declare-datatypes ((LexerInterface!4074 0))(
  ( (LexerInterfaceExt!4071 (__x!18582 Int)) (Lexer!4072) )
))
(declare-fun thiss!27932 () LexerInterface!4074)

(declare-datatypes ((List!28858 0))(
  ( (Nil!28758) (Cons!28758 (h!34159 Rule!8754) (t!209521 List!28858)) )
))
(declare-fun rules!4472 () List!28858)

(declare-fun rulesInvariant!3574 (LexerInterface!4074 List!28858) Bool)

(assert (=> b!2467314 (= res!1045063 (rulesInvariant!3574 thiss!27932 rules!4472))))

(declare-fun e!1564958 () Bool)

(assert (=> b!2467315 (= e!1564958 (and tp!787259 tp!787252))))

(declare-fun b!2467316 () Bool)

(declare-fun e!1564943 () Bool)

(declare-fun e!1564959 () Bool)

(declare-fun tp!787260 () Bool)

(assert (=> b!2467316 (= e!1564943 (and e!1564959 tp!787260))))

(declare-fun b!2467317 () Bool)

(declare-fun res!1045050 () Bool)

(assert (=> b!2467317 (=> (not res!1045050) (not e!1564944))))

(declare-fun l!6611 () List!28857)

(declare-fun t1!67 () Token!8424)

(declare-fun apply!6765 (List!28857 Int) Token!8424)

(assert (=> b!2467317 (= res!1045050 (= (apply!6765 l!6611 i!1803) t1!67))))

(declare-fun e!1564947 () Bool)

(declare-fun b!2467318 () Bool)

(declare-fun e!1564960 () Bool)

(declare-fun tp!787262 () Bool)

(declare-fun inv!38843 (Token!8424) Bool)

(assert (=> b!2467318 (= e!1564960 (and (inv!38843 (h!34158 l!6611)) e!1564947 tp!787262))))

(declare-fun b!2467319 () Bool)

(declare-fun res!1045055 () Bool)

(assert (=> b!2467319 (=> (not res!1045055) (not e!1564955))))

(assert (=> b!2467319 (= res!1045055 (>= (- i!1803 1) 0))))

(declare-fun b!2467320 () Bool)

(declare-fun res!1045061 () Bool)

(assert (=> b!2467320 (=> (not res!1045061) (not e!1564955))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!613 (LexerInterface!4074 List!28857 List!28858) Bool)

(assert (=> b!2467320 (= res!1045061 (tokensListTwoByTwoPredicateSeparableList!613 thiss!27932 lt!882467 rules!4472))))

(declare-fun b!2467321 () Bool)

(declare-fun t2!67 () Token!8424)

(declare-fun tp!787265 () Bool)

(declare-fun e!1564951 () Bool)

(declare-fun e!1564937 () Bool)

(declare-fun inv!21 (TokenValue!4663) Bool)

(assert (=> b!2467321 (= e!1564951 (and (inv!21 (value!143000 t2!67)) e!1564937 tp!787265))))

(declare-fun b!2467322 () Bool)

(declare-fun res!1045059 () Bool)

(assert (=> b!2467322 (=> (not res!1045059) (not e!1564944))))

(declare-fun isEmpty!16707 (List!28858) Bool)

(assert (=> b!2467322 (= res!1045059 (not (isEmpty!16707 rules!4472)))))

(declare-fun b!2467323 () Bool)

(declare-fun res!1045056 () Bool)

(assert (=> b!2467323 (=> (not res!1045056) (not e!1564944))))

(assert (=> b!2467323 (= res!1045056 (not (= i!1803 0)))))

(declare-fun b!2467324 () Bool)

(declare-fun res!1045065 () Bool)

(assert (=> b!2467324 (=> (not res!1045065) (not e!1564944))))

(assert (=> b!2467324 (= res!1045065 (= (apply!6765 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun e!1564952 () Bool)

(assert (=> b!2467326 (= e!1564952 (and tp!787264 tp!787261))))

(declare-fun b!2467327 () Bool)

(assert (=> b!2467327 (= e!1564944 e!1564955)))

(declare-fun res!1045057 () Bool)

(assert (=> b!2467327 (=> (not res!1045057) (not e!1564955))))

(declare-fun rulesProduceEachTokenIndividuallyList!1390 (LexerInterface!4074 List!28858 List!28857) Bool)

(assert (=> b!2467327 (= res!1045057 (rulesProduceEachTokenIndividuallyList!1390 thiss!27932 rules!4472 lt!882467))))

(declare-fun tail!3910 (List!28857) List!28857)

(assert (=> b!2467327 (= lt!882467 (tail!3910 l!6611))))

(declare-fun tp!787251 () Bool)

(declare-fun b!2467328 () Bool)

(declare-fun inv!38840 (String!31611) Bool)

(declare-fun inv!38844 (TokenValueInjection!8826) Bool)

(assert (=> b!2467328 (= e!1564959 (and tp!787251 (inv!38840 (tag!4967 (h!34159 rules!4472))) (inv!38844 (transformation!4477 (h!34159 rules!4472))) e!1564952))))

(declare-fun b!2467329 () Bool)

(declare-fun res!1045060 () Bool)

(assert (=> b!2467329 (=> (not res!1045060) (not e!1564944))))

(assert (=> b!2467329 (= res!1045060 (tokensListTwoByTwoPredicateSeparableList!613 thiss!27932 l!6611 rules!4472))))

(declare-fun e!1564942 () Bool)

(assert (=> b!2467330 (= e!1564942 (and tp!787266 tp!787258))))

(declare-fun b!2467331 () Bool)

(declare-fun res!1045054 () Bool)

(assert (=> b!2467331 (=> (not res!1045054) (not e!1564944))))

(assert (=> b!2467331 (= res!1045054 (rulesProduceEachTokenIndividuallyList!1390 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2467332 () Bool)

(declare-fun tp!787254 () Bool)

(declare-fun e!1564948 () Bool)

(assert (=> b!2467332 (= e!1564947 (and (inv!21 (value!143000 (h!34158 l!6611))) e!1564948 tp!787254))))

(declare-fun e!1564949 () Bool)

(assert (=> b!2467333 (= e!1564949 (and tp!787256 tp!787255))))

(declare-fun b!2467334 () Bool)

(declare-fun tp!787257 () Bool)

(assert (=> b!2467334 (= e!1564937 (and tp!787257 (inv!38840 (tag!4967 (rule!6835 t2!67))) (inv!38844 (transformation!4477 (rule!6835 t2!67))) e!1564958))))

(declare-fun b!2467335 () Bool)

(declare-fun res!1045051 () Bool)

(assert (=> b!2467335 (=> (not res!1045051) (not e!1564950))))

(assert (=> b!2467335 (= res!1045051 (= (apply!6765 lt!882467 lt!882470) t2!67))))

(declare-fun tp!787253 () Bool)

(declare-fun b!2467336 () Bool)

(assert (=> b!2467336 (= e!1564948 (and tp!787253 (inv!38840 (tag!4967 (rule!6835 (h!34158 l!6611)))) (inv!38844 (transformation!4477 (rule!6835 (h!34158 l!6611)))) e!1564949))))

(declare-fun tp!787267 () Bool)

(declare-fun e!1564956 () Bool)

(declare-fun b!2467337 () Bool)

(assert (=> b!2467337 (= e!1564956 (and tp!787267 (inv!38840 (tag!4967 (rule!6835 t1!67))) (inv!38844 (transformation!4477 (rule!6835 t1!67))) e!1564942))))

(declare-fun b!2467338 () Bool)

(declare-fun res!1045053 () Bool)

(assert (=> b!2467338 (=> (not res!1045053) (not e!1564944))))

(assert (=> b!2467338 (= res!1045053 (< (+ 1 i!1803) (size!22376 l!6611)))))

(declare-fun b!2467339 () Bool)

(assert (=> b!2467339 (= e!1564950 (not true))))

(declare-fun lt!882464 () Bool)

(declare-fun contains!4909 (List!28857 Token!8424) Bool)

(assert (=> b!2467339 (= lt!882464 (contains!4909 l!6611 t2!67))))

(declare-datatypes ((Unit!42088 0))(
  ( (Unit!42089) )
))
(declare-fun lt!882469 () Unit!42088)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!667 (LexerInterface!4074 List!28858 List!28857 Token!8424) Unit!42088)

(assert (=> b!2467339 (= lt!882469 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!667 thiss!27932 rules!4472 l!6611 t1!67))))

(declare-fun e!1564946 () Bool)

(assert (=> b!2467339 e!1564946))

(declare-fun res!1045058 () Bool)

(assert (=> b!2467339 (=> (not res!1045058) (not e!1564946))))

(declare-fun rulesProduceIndividualToken!1806 (LexerInterface!4074 List!28858 Token!8424) Bool)

(assert (=> b!2467339 (= res!1045058 (rulesProduceIndividualToken!1806 thiss!27932 rules!4472 t2!67))))

(declare-fun lt!882468 () Unit!42088)

(assert (=> b!2467339 (= lt!882468 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!667 thiss!27932 rules!4472 lt!882467 t2!67))))

(assert (=> b!2467339 (rulesProduceIndividualToken!1806 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!882466 () Unit!42088)

(assert (=> b!2467339 (= lt!882466 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!667 thiss!27932 rules!4472 lt!882467 t1!67))))

(declare-fun lt!882465 () Unit!42088)

(declare-fun tokensListTwoByTwoPredicateInstantiateSeparableTokens!4 (LexerInterface!4074 List!28857 List!28858 Token!8424 Token!8424 Int) Unit!42088)

(assert (=> b!2467339 (= lt!882465 (tokensListTwoByTwoPredicateInstantiateSeparableTokens!4 thiss!27932 lt!882467 rules!4472 t1!67 t2!67 (- i!1803 1)))))

(declare-fun b!2467325 () Bool)

(declare-fun separableTokensPredicate!851 (LexerInterface!4074 Token!8424 Token!8424 List!28858) Bool)

(assert (=> b!2467325 (= e!1564946 (separableTokensPredicate!851 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun res!1045062 () Bool)

(assert (=> start!240598 (=> (not res!1045062) (not e!1564944))))

(get-info :version)

(assert (=> start!240598 (= res!1045062 ((_ is Lexer!4072) thiss!27932))))

(assert (=> start!240598 e!1564944))

(assert (=> start!240598 true))

(assert (=> start!240598 e!1564943))

(assert (=> start!240598 (and (inv!38843 t2!67) e!1564951)))

(assert (=> start!240598 e!1564960))

(declare-fun e!1564941 () Bool)

(assert (=> start!240598 (and (inv!38843 t1!67) e!1564941)))

(declare-fun b!2467340 () Bool)

(declare-fun tp!787263 () Bool)

(assert (=> b!2467340 (= e!1564941 (and (inv!21 (value!143000 t1!67)) e!1564956 tp!787263))))

(declare-fun b!2467341 () Bool)

(declare-fun res!1045064 () Bool)

(assert (=> b!2467341 (=> (not res!1045064) (not e!1564944))))

(assert (=> b!2467341 (= res!1045064 (>= i!1803 0))))

(declare-fun b!2467342 () Bool)

(declare-fun res!1045052 () Bool)

(assert (=> b!2467342 (=> (not res!1045052) (not e!1564950))))

(assert (=> b!2467342 (= res!1045052 (= (apply!6765 lt!882467 (- i!1803 1)) t1!67))))

(assert (= (and start!240598 res!1045062) b!2467322))

(assert (= (and b!2467322 res!1045059) b!2467314))

(assert (= (and b!2467314 res!1045063) b!2467331))

(assert (= (and b!2467331 res!1045054) b!2467329))

(assert (= (and b!2467329 res!1045060) b!2467341))

(assert (= (and b!2467341 res!1045064) b!2467338))

(assert (= (and b!2467338 res!1045053) b!2467317))

(assert (= (and b!2467317 res!1045050) b!2467324))

(assert (= (and b!2467324 res!1045065) b!2467323))

(assert (= (and b!2467323 res!1045056) b!2467327))

(assert (= (and b!2467327 res!1045057) b!2467320))

(assert (= (and b!2467320 res!1045061) b!2467319))

(assert (= (and b!2467319 res!1045055) b!2467313))

(assert (= (and b!2467313 res!1045049) b!2467342))

(assert (= (and b!2467342 res!1045052) b!2467335))

(assert (= (and b!2467335 res!1045051) b!2467339))

(assert (= (and b!2467339 res!1045058) b!2467325))

(assert (= b!2467328 b!2467326))

(assert (= b!2467316 b!2467328))

(assert (= (and start!240598 ((_ is Cons!28758) rules!4472)) b!2467316))

(assert (= b!2467334 b!2467315))

(assert (= b!2467321 b!2467334))

(assert (= start!240598 b!2467321))

(assert (= b!2467336 b!2467333))

(assert (= b!2467332 b!2467336))

(assert (= b!2467318 b!2467332))

(assert (= (and start!240598 ((_ is Cons!28757) l!6611)) b!2467318))

(assert (= b!2467337 b!2467330))

(assert (= b!2467340 b!2467337))

(assert (= start!240598 b!2467340))

(declare-fun m!2836505 () Bool)

(assert (=> b!2467324 m!2836505))

(declare-fun m!2836507 () Bool)

(assert (=> b!2467338 m!2836507))

(declare-fun m!2836509 () Bool)

(assert (=> b!2467342 m!2836509))

(declare-fun m!2836511 () Bool)

(assert (=> b!2467328 m!2836511))

(declare-fun m!2836513 () Bool)

(assert (=> b!2467328 m!2836513))

(declare-fun m!2836515 () Bool)

(assert (=> b!2467327 m!2836515))

(declare-fun m!2836517 () Bool)

(assert (=> b!2467327 m!2836517))

(declare-fun m!2836519 () Bool)

(assert (=> b!2467339 m!2836519))

(declare-fun m!2836521 () Bool)

(assert (=> b!2467339 m!2836521))

(declare-fun m!2836523 () Bool)

(assert (=> b!2467339 m!2836523))

(declare-fun m!2836525 () Bool)

(assert (=> b!2467339 m!2836525))

(declare-fun m!2836527 () Bool)

(assert (=> b!2467339 m!2836527))

(declare-fun m!2836529 () Bool)

(assert (=> b!2467339 m!2836529))

(declare-fun m!2836531 () Bool)

(assert (=> b!2467339 m!2836531))

(declare-fun m!2836533 () Bool)

(assert (=> b!2467325 m!2836533))

(declare-fun m!2836535 () Bool)

(assert (=> b!2467322 m!2836535))

(declare-fun m!2836537 () Bool)

(assert (=> b!2467321 m!2836537))

(declare-fun m!2836539 () Bool)

(assert (=> b!2467340 m!2836539))

(declare-fun m!2836541 () Bool)

(assert (=> b!2467313 m!2836541))

(declare-fun m!2836543 () Bool)

(assert (=> start!240598 m!2836543))

(declare-fun m!2836545 () Bool)

(assert (=> start!240598 m!2836545))

(declare-fun m!2836547 () Bool)

(assert (=> b!2467335 m!2836547))

(declare-fun m!2836549 () Bool)

(assert (=> b!2467337 m!2836549))

(declare-fun m!2836551 () Bool)

(assert (=> b!2467337 m!2836551))

(declare-fun m!2836553 () Bool)

(assert (=> b!2467320 m!2836553))

(declare-fun m!2836555 () Bool)

(assert (=> b!2467336 m!2836555))

(declare-fun m!2836557 () Bool)

(assert (=> b!2467336 m!2836557))

(declare-fun m!2836559 () Bool)

(assert (=> b!2467334 m!2836559))

(declare-fun m!2836561 () Bool)

(assert (=> b!2467334 m!2836561))

(declare-fun m!2836563 () Bool)

(assert (=> b!2467329 m!2836563))

(declare-fun m!2836565 () Bool)

(assert (=> b!2467332 m!2836565))

(declare-fun m!2836567 () Bool)

(assert (=> b!2467331 m!2836567))

(declare-fun m!2836569 () Bool)

(assert (=> b!2467317 m!2836569))

(declare-fun m!2836571 () Bool)

(assert (=> b!2467314 m!2836571))

(declare-fun m!2836573 () Bool)

(assert (=> b!2467318 m!2836573))

(check-sat b_and!186667 (not b!2467324) (not b!2467316) b_and!186661 (not b!2467317) (not b!2467322) (not b!2467336) (not b!2467342) (not b!2467334) (not b_next!71839) (not b_next!71829) b_and!186673 (not b!2467339) b_and!186671 (not b!2467337) (not b!2467321) (not b!2467313) (not b!2467314) (not b_next!71843) (not b!2467328) b_and!186665 (not b!2467340) (not b!2467318) (not b!2467338) (not b!2467327) (not b_next!71831) (not b!2467335) (not b!2467329) (not b!2467325) (not b_next!71841) (not b!2467332) (not b!2467320) (not b!2467331) b_and!186669 (not start!240598) (not b_next!71835) b_and!186675 (not b_next!71837) (not b_next!71833) b_and!186663)
(check-sat b_and!186667 b_and!186671 b_and!186661 (not b_next!71843) b_and!186665 (not b_next!71831) (not b_next!71841) b_and!186669 (not b_next!71839) (not b_next!71829) b_and!186673 (not b_next!71835) b_and!186675 (not b_next!71837) (not b_next!71833) b_and!186663)
