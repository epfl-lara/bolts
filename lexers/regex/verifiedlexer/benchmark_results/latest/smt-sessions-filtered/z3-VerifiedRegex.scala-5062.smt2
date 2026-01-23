; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!256890 () Bool)

(assert start!256890)

(declare-fun b!2637092 () Bool)

(declare-fun b_free!74333 () Bool)

(declare-fun b_next!75037 () Bool)

(assert (=> b!2637092 (= b_free!74333 (not b_next!75037))))

(declare-fun tp!835290 () Bool)

(declare-fun b_and!193091 () Bool)

(assert (=> b!2637092 (= tp!835290 b_and!193091)))

(declare-fun b_free!74335 () Bool)

(declare-fun b_next!75039 () Bool)

(assert (=> b!2637092 (= b_free!74335 (not b_next!75039))))

(declare-fun tp!835285 () Bool)

(declare-fun b_and!193093 () Bool)

(assert (=> b!2637092 (= tp!835285 b_and!193093)))

(declare-fun b!2637081 () Bool)

(declare-fun b_free!74337 () Bool)

(declare-fun b_next!75041 () Bool)

(assert (=> b!2637081 (= b_free!74337 (not b_next!75041))))

(declare-fun tp!835287 () Bool)

(declare-fun b_and!193095 () Bool)

(assert (=> b!2637081 (= tp!835287 b_and!193095)))

(declare-fun b_free!74339 () Bool)

(declare-fun b_next!75043 () Bool)

(assert (=> b!2637081 (= b_free!74339 (not b_next!75043))))

(declare-fun tp!835292 () Bool)

(declare-fun b_and!193097 () Bool)

(assert (=> b!2637081 (= tp!835292 b_and!193097)))

(declare-fun b!2637077 () Bool)

(declare-fun e!1663971 () Bool)

(declare-fun e!1663963 () Bool)

(declare-fun tp!835289 () Bool)

(assert (=> b!2637077 (= e!1663971 (and e!1663963 tp!835289))))

(declare-fun e!1663970 () Bool)

(declare-fun tp!835284 () Bool)

(declare-fun e!1663968 () Bool)

(declare-fun b!2637078 () Bool)

(declare-datatypes ((List!30629 0))(
  ( (Nil!30529) (Cons!30529 (h!35949 (_ BitVec 16)) (t!216940 List!30629)) )
))
(declare-datatypes ((C!15736 0))(
  ( (C!15737 (val!9802 Int)) )
))
(declare-datatypes ((TokenValue!4867 0))(
  ( (FloatLiteralValue!9734 (text!34514 List!30629)) (TokenValueExt!4866 (__x!19567 Int)) (Broken!24335 (value!149961 List!30629)) (Object!4966) (End!4867) (Def!4867) (Underscore!4867) (Match!4867) (Else!4867) (Error!4867) (Case!4867) (If!4867) (Extends!4867) (Abstract!4867) (Class!4867) (Val!4867) (DelimiterValue!9734 (del!4927 List!30629)) (KeywordValue!4873 (value!149962 List!30629)) (CommentValue!9734 (value!149963 List!30629)) (WhitespaceValue!9734 (value!149964 List!30629)) (IndentationValue!4867 (value!149965 List!30629)) (String!34218) (Int32!4867) (Broken!24336 (value!149966 List!30629)) (Boolean!4868) (Unit!44560) (OperatorValue!4870 (op!4927 List!30629)) (IdentifierValue!9734 (value!149967 List!30629)) (IdentifierValue!9735 (value!149968 List!30629)) (WhitespaceValue!9735 (value!149969 List!30629)) (True!9734) (False!9734) (Broken!24337 (value!149970 List!30629)) (Broken!24338 (value!149971 List!30629)) (True!9735) (RightBrace!4867) (RightBracket!4867) (Colon!4867) (Null!4867) (Comma!4867) (LeftBracket!4867) (False!9735) (LeftBrace!4867) (ImaginaryLiteralValue!4867 (text!34515 List!30629)) (StringLiteralValue!14601 (value!149972 List!30629)) (EOFValue!4867 (value!149973 List!30629)) (IdentValue!4867 (value!149974 List!30629)) (DelimiterValue!9735 (value!149975 List!30629)) (DedentValue!4867 (value!149976 List!30629)) (NewLineValue!4867 (value!149977 List!30629)) (IntegerValue!14601 (value!149978 (_ BitVec 32)) (text!34516 List!30629)) (IntegerValue!14602 (value!149979 Int) (text!34517 List!30629)) (Times!4867) (Or!4867) (Equal!4867) (Minus!4867) (Broken!24339 (value!149980 List!30629)) (And!4867) (Div!4867) (LessEqual!4867) (Mod!4867) (Concat!12656) (Not!4867) (Plus!4867) (SpaceValue!4867 (value!149981 List!30629)) (IntegerValue!14603 (value!149982 Int) (text!34518 List!30629)) (StringLiteralValue!14602 (text!34519 List!30629)) (FloatLiteralValue!9735 (text!34520 List!30629)) (BytesLiteralValue!4867 (value!149983 List!30629)) (CommentValue!9735 (value!149984 List!30629)) (StringLiteralValue!14603 (value!149985 List!30629)) (ErrorTokenValue!4867 (msg!4928 List!30629)) )
))
(declare-datatypes ((Regex!7789 0))(
  ( (ElementMatch!7789 (c!424109 C!15736)) (Concat!12657 (regOne!16090 Regex!7789) (regTwo!16090 Regex!7789)) (EmptyExpr!7789) (Star!7789 (reg!8118 Regex!7789)) (EmptyLang!7789) (Union!7789 (regOne!16091 Regex!7789) (regTwo!16091 Regex!7789)) )
))
(declare-datatypes ((String!34219 0))(
  ( (String!34220 (value!149986 String)) )
))
(declare-datatypes ((List!30630 0))(
  ( (Nil!30530) (Cons!30530 (h!35950 C!15736) (t!216941 List!30630)) )
))
(declare-datatypes ((IArray!19069 0))(
  ( (IArray!19070 (innerList!9592 List!30630)) )
))
(declare-datatypes ((Conc!9532 0))(
  ( (Node!9532 (left!23586 Conc!9532) (right!23916 Conc!9532) (csize!19294 Int) (cheight!9743 Int)) (Leaf!14595 (xs!12540 IArray!19069) (csize!19295 Int)) (Empty!9532) )
))
(declare-datatypes ((BalanceConc!18678 0))(
  ( (BalanceConc!18679 (c!424110 Conc!9532)) )
))
(declare-datatypes ((TokenValueInjection!9174 0))(
  ( (TokenValueInjection!9175 (toValue!6567 Int) (toChars!6426 Int)) )
))
(declare-datatypes ((Rule!9090 0))(
  ( (Rule!9091 (regex!4645 Regex!7789) (tag!5139 String!34219) (isSeparator!4645 Bool) (transformation!4645 TokenValueInjection!9174)) )
))
(declare-datatypes ((Token!8760 0))(
  ( (Token!8761 (value!149987 TokenValue!4867) (rule!7031 Rule!9090) (size!23614 Int) (originalCharacters!5411 List!30630)) )
))
(declare-fun separatorToken!156 () Token!8760)

(declare-fun inv!41424 (String!34219) Bool)

(declare-fun inv!41429 (TokenValueInjection!9174) Bool)

(assert (=> b!2637078 (= e!1663968 (and tp!835284 (inv!41424 (tag!5139 (rule!7031 separatorToken!156))) (inv!41429 (transformation!4645 (rule!7031 separatorToken!156))) e!1663970))))

(declare-fun res!1110339 () Bool)

(declare-fun e!1663962 () Bool)

(assert (=> start!256890 (=> (not res!1110339) (not e!1663962))))

(declare-datatypes ((LexerInterface!4242 0))(
  ( (LexerInterfaceExt!4239 (__x!19568 Int)) (Lexer!4240) )
))
(declare-fun thiss!14197 () LexerInterface!4242)

(declare-fun from!862 () Int)

(get-info :version)

(assert (=> start!256890 (= res!1110339 (and ((_ is Lexer!4240) thiss!14197) (>= from!862 0)))))

(assert (=> start!256890 e!1663962))

(assert (=> start!256890 true))

(assert (=> start!256890 e!1663971))

(declare-fun e!1663966 () Bool)

(declare-fun inv!41430 (Token!8760) Bool)

(assert (=> start!256890 (and (inv!41430 separatorToken!156) e!1663966)))

(declare-datatypes ((List!30631 0))(
  ( (Nil!30531) (Cons!30531 (h!35951 Token!8760) (t!216942 List!30631)) )
))
(declare-datatypes ((IArray!19071 0))(
  ( (IArray!19072 (innerList!9593 List!30631)) )
))
(declare-datatypes ((Conc!9533 0))(
  ( (Node!9533 (left!23587 Conc!9533) (right!23917 Conc!9533) (csize!19296 Int) (cheight!9744 Int)) (Leaf!14596 (xs!12541 IArray!19071) (csize!19297 Int)) (Empty!9533) )
))
(declare-datatypes ((BalanceConc!18680 0))(
  ( (BalanceConc!18681 (c!424111 Conc!9533)) )
))
(declare-fun v!6381 () BalanceConc!18680)

(declare-fun e!1663964 () Bool)

(declare-fun inv!41431 (BalanceConc!18680) Bool)

(assert (=> start!256890 (and (inv!41431 v!6381) e!1663964)))

(declare-fun tp!835286 () Bool)

(declare-fun b!2637079 () Bool)

(declare-fun inv!21 (TokenValue!4867) Bool)

(assert (=> b!2637079 (= e!1663966 (and (inv!21 (value!149987 separatorToken!156)) e!1663968 tp!835286))))

(declare-fun tp!835291 () Bool)

(declare-datatypes ((List!30632 0))(
  ( (Nil!30532) (Cons!30532 (h!35952 Rule!9090) (t!216943 List!30632)) )
))
(declare-fun rules!1726 () List!30632)

(declare-fun b!2637080 () Bool)

(declare-fun e!1663969 () Bool)

(assert (=> b!2637080 (= e!1663963 (and tp!835291 (inv!41424 (tag!5139 (h!35952 rules!1726))) (inv!41429 (transformation!4645 (h!35952 rules!1726))) e!1663969))))

(assert (=> b!2637081 (= e!1663969 (and tp!835287 tp!835292))))

(declare-fun b!2637082 () Bool)

(declare-fun tp!835288 () Bool)

(declare-fun inv!41432 (Conc!9533) Bool)

(assert (=> b!2637082 (= e!1663964 (and (inv!41432 (c!424111 v!6381)) tp!835288))))

(declare-fun b!2637083 () Bool)

(declare-fun e!1663967 () Bool)

(assert (=> b!2637083 (= e!1663962 e!1663967)))

(declare-fun res!1110338 () Bool)

(assert (=> b!2637083 (=> (not res!1110338) (not e!1663967))))

(declare-fun lt!928721 () Int)

(assert (=> b!2637083 (= res!1110338 (<= from!862 lt!928721))))

(declare-fun size!23615 (BalanceConc!18680) Int)

(assert (=> b!2637083 (= lt!928721 (size!23615 v!6381))))

(declare-fun b!2637084 () Bool)

(declare-fun res!1110342 () Bool)

(assert (=> b!2637084 (=> (not res!1110342) (not e!1663967))))

(declare-fun isEmpty!17429 (List!30632) Bool)

(assert (=> b!2637084 (= res!1110342 (not (isEmpty!17429 rules!1726)))))

(declare-fun b!2637085 () Bool)

(declare-fun res!1110344 () Bool)

(assert (=> b!2637085 (=> (not res!1110344) (not e!1663967))))

(declare-fun sepAndNonSepRulesDisjointChars!1218 (List!30632 List!30632) Bool)

(assert (=> b!2637085 (= res!1110344 (sepAndNonSepRulesDisjointChars!1218 rules!1726 rules!1726))))

(declare-fun b!2637086 () Bool)

(declare-fun res!1110340 () Bool)

(assert (=> b!2637086 (=> (not res!1110340) (not e!1663967))))

(declare-fun rulesProduceEachTokenIndividually!1062 (LexerInterface!4242 List!30632 BalanceConc!18680) Bool)

(assert (=> b!2637086 (= res!1110340 (rulesProduceEachTokenIndividually!1062 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2637087 () Bool)

(declare-fun res!1110337 () Bool)

(assert (=> b!2637087 (=> (not res!1110337) (not e!1663967))))

(assert (=> b!2637087 (= res!1110337 (isSeparator!4645 (rule!7031 separatorToken!156)))))

(declare-fun b!2637088 () Bool)

(assert (=> b!2637088 (= e!1663967 (< (- lt!928721 from!862) 0))))

(declare-fun b!2637089 () Bool)

(declare-fun res!1110343 () Bool)

(assert (=> b!2637089 (=> (not res!1110343) (not e!1663967))))

(declare-fun rulesProduceIndividualToken!1954 (LexerInterface!4242 List!30632 Token!8760) Bool)

(assert (=> b!2637089 (= res!1110343 (rulesProduceIndividualToken!1954 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2637090 () Bool)

(declare-fun res!1110336 () Bool)

(assert (=> b!2637090 (=> (not res!1110336) (not e!1663967))))

(declare-fun rulesInvariant!3742 (LexerInterface!4242 List!30632) Bool)

(assert (=> b!2637090 (= res!1110336 (rulesInvariant!3742 thiss!14197 rules!1726))))

(declare-fun b!2637091 () Bool)

(declare-fun res!1110341 () Bool)

(assert (=> b!2637091 (=> (not res!1110341) (not e!1663967))))

(declare-fun lambda!98964 () Int)

(declare-fun forall!6410 (BalanceConc!18680 Int) Bool)

(assert (=> b!2637091 (= res!1110341 (forall!6410 v!6381 lambda!98964))))

(assert (=> b!2637092 (= e!1663970 (and tp!835290 tp!835285))))

(assert (= (and start!256890 res!1110339) b!2637083))

(assert (= (and b!2637083 res!1110338) b!2637084))

(assert (= (and b!2637084 res!1110342) b!2637090))

(assert (= (and b!2637090 res!1110336) b!2637086))

(assert (= (and b!2637086 res!1110340) b!2637089))

(assert (= (and b!2637089 res!1110343) b!2637087))

(assert (= (and b!2637087 res!1110337) b!2637091))

(assert (= (and b!2637091 res!1110341) b!2637085))

(assert (= (and b!2637085 res!1110344) b!2637088))

(assert (= b!2637080 b!2637081))

(assert (= b!2637077 b!2637080))

(assert (= (and start!256890 ((_ is Cons!30532) rules!1726)) b!2637077))

(assert (= b!2637078 b!2637092))

(assert (= b!2637079 b!2637078))

(assert (= start!256890 b!2637079))

(assert (= start!256890 b!2637082))

(declare-fun m!2982247 () Bool)

(assert (=> b!2637083 m!2982247))

(declare-fun m!2982249 () Bool)

(assert (=> b!2637089 m!2982249))

(declare-fun m!2982251 () Bool)

(assert (=> b!2637080 m!2982251))

(declare-fun m!2982253 () Bool)

(assert (=> b!2637080 m!2982253))

(declare-fun m!2982255 () Bool)

(assert (=> b!2637085 m!2982255))

(declare-fun m!2982257 () Bool)

(assert (=> b!2637091 m!2982257))

(declare-fun m!2982259 () Bool)

(assert (=> b!2637086 m!2982259))

(declare-fun m!2982261 () Bool)

(assert (=> b!2637084 m!2982261))

(declare-fun m!2982263 () Bool)

(assert (=> b!2637079 m!2982263))

(declare-fun m!2982265 () Bool)

(assert (=> b!2637078 m!2982265))

(declare-fun m!2982267 () Bool)

(assert (=> b!2637078 m!2982267))

(declare-fun m!2982269 () Bool)

(assert (=> start!256890 m!2982269))

(declare-fun m!2982271 () Bool)

(assert (=> start!256890 m!2982271))

(declare-fun m!2982273 () Bool)

(assert (=> b!2637082 m!2982273))

(declare-fun m!2982275 () Bool)

(assert (=> b!2637090 m!2982275))

(check-sat (not b!2637082) (not b!2637089) b_and!193093 (not b!2637085) (not b!2637086) (not b_next!75043) (not b!2637090) (not b_next!75037) (not b!2637084) (not b_next!75041) (not b!2637078) b_and!193095 (not b!2637079) b_and!193097 (not b!2637077) b_and!193091 (not b!2637080) (not b!2637091) (not b!2637083) (not b_next!75039) (not start!256890))
(check-sat (not b_next!75037) (not b_next!75041) b_and!193093 b_and!193095 b_and!193097 (not b_next!75043) b_and!193091 (not b_next!75039))
