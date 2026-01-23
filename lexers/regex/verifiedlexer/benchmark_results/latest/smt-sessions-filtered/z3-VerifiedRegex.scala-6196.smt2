; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299298 () Bool)

(assert start!299298)

(declare-fun b!3192037 () Bool)

(declare-fun b_free!84601 () Bool)

(declare-fun b_next!85305 () Bool)

(assert (=> b!3192037 (= b_free!84601 (not b_next!85305))))

(declare-fun tp!1009318 () Bool)

(declare-fun b_and!211611 () Bool)

(assert (=> b!3192037 (= tp!1009318 b_and!211611)))

(declare-fun b_free!84603 () Bool)

(declare-fun b_next!85307 () Bool)

(assert (=> b!3192037 (= b_free!84603 (not b_next!85307))))

(declare-fun tp!1009317 () Bool)

(declare-fun b_and!211613 () Bool)

(assert (=> b!3192037 (= tp!1009317 b_and!211613)))

(declare-fun b!3192058 () Bool)

(declare-fun b_free!84605 () Bool)

(declare-fun b_next!85309 () Bool)

(assert (=> b!3192058 (= b_free!84605 (not b_next!85309))))

(declare-fun tp!1009326 () Bool)

(declare-fun b_and!211615 () Bool)

(assert (=> b!3192058 (= tp!1009326 b_and!211615)))

(declare-fun b_free!84607 () Bool)

(declare-fun b_next!85311 () Bool)

(assert (=> b!3192058 (= b_free!84607 (not b_next!85311))))

(declare-fun tp!1009324 () Bool)

(declare-fun b_and!211617 () Bool)

(assert (=> b!3192058 (= tp!1009324 b_and!211617)))

(declare-fun b!3192041 () Bool)

(declare-fun b_free!84609 () Bool)

(declare-fun b_next!85313 () Bool)

(assert (=> b!3192041 (= b_free!84609 (not b_next!85313))))

(declare-fun tp!1009319 () Bool)

(declare-fun b_and!211619 () Bool)

(assert (=> b!3192041 (= tp!1009319 b_and!211619)))

(declare-fun b_free!84611 () Bool)

(declare-fun b_next!85315 () Bool)

(assert (=> b!3192041 (= b_free!84611 (not b_next!85315))))

(declare-fun tp!1009323 () Bool)

(declare-fun b_and!211621 () Bool)

(assert (=> b!3192041 (= tp!1009323 b_and!211621)))

(declare-fun e!1989699 () Bool)

(assert (=> b!3192037 (= e!1989699 (and tp!1009318 tp!1009317))))

(declare-fun b!3192038 () Bool)

(declare-fun res!1298486 () Bool)

(declare-fun e!1989701 () Bool)

(assert (=> b!3192038 (=> (not res!1298486) (not e!1989701))))

(declare-datatypes ((C!20048 0))(
  ( (C!20049 (val!12072 Int)) )
))
(declare-datatypes ((Regex!9931 0))(
  ( (ElementMatch!9931 (c!535900 C!20048)) (Concat!15333 (regOne!20374 Regex!9931) (regTwo!20374 Regex!9931)) (EmptyExpr!9931) (Star!9931 (reg!10260 Regex!9931)) (EmptyLang!9931) (Union!9931 (regOne!20375 Regex!9931) (regTwo!20375 Regex!9931)) )
))
(declare-datatypes ((List!36080 0))(
  ( (Nil!35956) (Cons!35956 (h!41376 (_ BitVec 16)) (t!236247 List!36080)) )
))
(declare-datatypes ((TokenValue!5402 0))(
  ( (FloatLiteralValue!10804 (text!38259 List!36080)) (TokenValueExt!5401 (__x!23021 Int)) (Broken!27010 (value!167836 List!36080)) (Object!5525) (End!5402) (Def!5402) (Underscore!5402) (Match!5402) (Else!5402) (Error!5402) (Case!5402) (If!5402) (Extends!5402) (Abstract!5402) (Class!5402) (Val!5402) (DelimiterValue!10804 (del!5462 List!36080)) (KeywordValue!5408 (value!167837 List!36080)) (CommentValue!10804 (value!167838 List!36080)) (WhitespaceValue!10804 (value!167839 List!36080)) (IndentationValue!5402 (value!167840 List!36080)) (String!40343) (Int32!5402) (Broken!27011 (value!167841 List!36080)) (Boolean!5403) (Unit!50365) (OperatorValue!5405 (op!5462 List!36080)) (IdentifierValue!10804 (value!167842 List!36080)) (IdentifierValue!10805 (value!167843 List!36080)) (WhitespaceValue!10805 (value!167844 List!36080)) (True!10804) (False!10804) (Broken!27012 (value!167845 List!36080)) (Broken!27013 (value!167846 List!36080)) (True!10805) (RightBrace!5402) (RightBracket!5402) (Colon!5402) (Null!5402) (Comma!5402) (LeftBracket!5402) (False!10805) (LeftBrace!5402) (ImaginaryLiteralValue!5402 (text!38260 List!36080)) (StringLiteralValue!16206 (value!167847 List!36080)) (EOFValue!5402 (value!167848 List!36080)) (IdentValue!5402 (value!167849 List!36080)) (DelimiterValue!10805 (value!167850 List!36080)) (DedentValue!5402 (value!167851 List!36080)) (NewLineValue!5402 (value!167852 List!36080)) (IntegerValue!16206 (value!167853 (_ BitVec 32)) (text!38261 List!36080)) (IntegerValue!16207 (value!167854 Int) (text!38262 List!36080)) (Times!5402) (Or!5402) (Equal!5402) (Minus!5402) (Broken!27014 (value!167855 List!36080)) (And!5402) (Div!5402) (LessEqual!5402) (Mod!5402) (Concat!15334) (Not!5402) (Plus!5402) (SpaceValue!5402 (value!167856 List!36080)) (IntegerValue!16208 (value!167857 Int) (text!38263 List!36080)) (StringLiteralValue!16207 (text!38264 List!36080)) (FloatLiteralValue!10805 (text!38265 List!36080)) (BytesLiteralValue!5402 (value!167858 List!36080)) (CommentValue!10805 (value!167859 List!36080)) (StringLiteralValue!16208 (value!167860 List!36080)) (ErrorTokenValue!5402 (msg!5463 List!36080)) )
))
(declare-datatypes ((List!36081 0))(
  ( (Nil!35957) (Cons!35957 (h!41377 C!20048) (t!236248 List!36081)) )
))
(declare-datatypes ((IArray!21443 0))(
  ( (IArray!21444 (innerList!10779 List!36081)) )
))
(declare-datatypes ((Conc!10719 0))(
  ( (Node!10719 (left!27947 Conc!10719) (right!28277 Conc!10719) (csize!21668 Int) (cheight!10930 Int)) (Leaf!16916 (xs!13837 IArray!21443) (csize!21669 Int)) (Empty!10719) )
))
(declare-datatypes ((BalanceConc!21052 0))(
  ( (BalanceConc!21053 (c!535901 Conc!10719)) )
))
(declare-datatypes ((String!40344 0))(
  ( (String!40345 (value!167861 String)) )
))
(declare-datatypes ((TokenValueInjection!10232 0))(
  ( (TokenValueInjection!10233 (toValue!7236 Int) (toChars!7095 Int)) )
))
(declare-datatypes ((Rule!10144 0))(
  ( (Rule!10145 (regex!5172 Regex!9931) (tag!5690 String!40344) (isSeparator!5172 Bool) (transformation!5172 TokenValueInjection!10232)) )
))
(declare-datatypes ((List!36082 0))(
  ( (Nil!35958) (Cons!35958 (h!41378 Rule!10144) (t!236249 List!36082)) )
))
(declare-fun rules!2135 () List!36082)

(declare-fun isEmpty!20056 (List!36082) Bool)

(assert (=> b!3192038 (= res!1298486 (not (isEmpty!20056 rules!2135)))))

(declare-fun e!1989713 () Bool)

(declare-datatypes ((Token!9710 0))(
  ( (Token!9711 (value!167862 TokenValue!5402) (rule!7604 Rule!10144) (size!27089 Int) (originalCharacters!5886 List!36081)) )
))
(declare-datatypes ((List!36083 0))(
  ( (Nil!35959) (Cons!35959 (h!41379 Token!9710) (t!236250 List!36083)) )
))
(declare-fun tokens!494 () List!36083)

(declare-fun b!3192039 () Bool)

(declare-fun tp!1009316 () Bool)

(declare-fun e!1989707 () Bool)

(declare-fun inv!48799 (Token!9710) Bool)

(assert (=> b!3192039 (= e!1989713 (and (inv!48799 (h!41379 tokens!494)) e!1989707 tp!1009316))))

(declare-fun b!3192040 () Bool)

(declare-fun res!1298493 () Bool)

(assert (=> b!3192040 (=> (not res!1298493) (not e!1989701))))

(declare-datatypes ((LexerInterface!4761 0))(
  ( (LexerInterfaceExt!4758 (__x!23022 Int)) (Lexer!4759) )
))
(declare-fun thiss!18206 () LexerInterface!4761)

(declare-fun rulesInvariant!4158 (LexerInterface!4761 List!36082) Bool)

(assert (=> b!3192040 (= res!1298493 (rulesInvariant!4158 thiss!18206 rules!2135))))

(declare-fun e!1989705 () Bool)

(assert (=> b!3192041 (= e!1989705 (and tp!1009319 tp!1009323))))

(declare-fun b!3192042 () Bool)

(declare-fun e!1989714 () Bool)

(declare-fun contains!6387 (List!36083 Token!9710) Bool)

(assert (=> b!3192042 (= e!1989714 (contains!6387 tokens!494 (h!41379 tokens!494)))))

(declare-fun b!3192043 () Bool)

(declare-fun res!1298490 () Bool)

(assert (=> b!3192043 (=> (not res!1298490) (not e!1989701))))

(declare-datatypes ((IArray!21445 0))(
  ( (IArray!21446 (innerList!10780 List!36083)) )
))
(declare-datatypes ((Conc!10720 0))(
  ( (Node!10720 (left!27948 Conc!10720) (right!28278 Conc!10720) (csize!21670 Int) (cheight!10931 Int)) (Leaf!16917 (xs!13838 IArray!21445) (csize!21671 Int)) (Empty!10720) )
))
(declare-datatypes ((BalanceConc!21054 0))(
  ( (BalanceConc!21055 (c!535902 Conc!10720)) )
))
(declare-fun rulesProduceEachTokenIndividually!1212 (LexerInterface!4761 List!36082 BalanceConc!21054) Bool)

(declare-fun seqFromList!3415 (List!36083) BalanceConc!21054)

(assert (=> b!3192043 (= res!1298490 (rulesProduceEachTokenIndividually!1212 thiss!18206 rules!2135 (seqFromList!3415 tokens!494)))))

(declare-fun b!3192044 () Bool)

(declare-fun e!1989709 () Bool)

(declare-fun e!1989710 () Bool)

(declare-fun tp!1009328 () Bool)

(assert (=> b!3192044 (= e!1989709 (and e!1989710 tp!1009328))))

(declare-fun b!3192045 () Bool)

(declare-fun e!1989708 () Bool)

(declare-fun tp!1009327 () Bool)

(declare-fun inv!21 (TokenValue!5402) Bool)

(assert (=> b!3192045 (= e!1989707 (and (inv!21 (value!167862 (h!41379 tokens!494))) e!1989708 tp!1009327))))

(declare-fun b!3192046 () Bool)

(declare-fun e!1989711 () Bool)

(assert (=> b!3192046 (= e!1989701 (not e!1989711))))

(declare-fun res!1298495 () Bool)

(assert (=> b!3192046 (=> res!1298495 e!1989711)))

(declare-fun lt!1075182 () List!36081)

(declare-fun lt!1075180 () List!36081)

(assert (=> b!3192046 (= res!1298495 (not (= lt!1075182 lt!1075180)))))

(declare-fun printList!1311 (LexerInterface!4761 List!36083) List!36081)

(assert (=> b!3192046 (= lt!1075180 (printList!1311 thiss!18206 (Cons!35959 (h!41379 tokens!494) Nil!35959)))))

(declare-fun lt!1075181 () BalanceConc!21052)

(declare-fun list!12769 (BalanceConc!21052) List!36081)

(assert (=> b!3192046 (= lt!1075182 (list!12769 lt!1075181))))

(declare-fun lt!1075184 () BalanceConc!21054)

(declare-fun printTailRec!1258 (LexerInterface!4761 BalanceConc!21054 Int BalanceConc!21052) BalanceConc!21052)

(assert (=> b!3192046 (= lt!1075181 (printTailRec!1258 thiss!18206 lt!1075184 0 (BalanceConc!21053 Empty!10719)))))

(declare-fun print!1826 (LexerInterface!4761 BalanceConc!21054) BalanceConc!21052)

(assert (=> b!3192046 (= lt!1075181 (print!1826 thiss!18206 lt!1075184))))

(declare-fun singletonSeq!2268 (Token!9710) BalanceConc!21054)

(assert (=> b!3192046 (= lt!1075184 (singletonSeq!2268 (h!41379 tokens!494)))))

(declare-fun b!3192047 () Bool)

(declare-fun e!1989704 () Bool)

(assert (=> b!3192047 (= e!1989704 e!1989714)))

(declare-fun res!1298484 () Bool)

(assert (=> b!3192047 (=> (not res!1298484) (not e!1989714))))

(declare-fun lambda!116811 () Int)

(declare-fun forall!7304 (List!36083 Int) Bool)

(assert (=> b!3192047 (= res!1298484 (forall!7304 tokens!494 lambda!116811))))

(declare-fun b!3192048 () Bool)

(declare-fun res!1298494 () Bool)

(assert (=> b!3192048 (=> (not res!1298494) (not e!1989701))))

(declare-fun separatorToken!241 () Token!9710)

(declare-fun rulesProduceIndividualToken!2253 (LexerInterface!4761 List!36082 Token!9710) Bool)

(assert (=> b!3192048 (= res!1298494 (rulesProduceIndividualToken!2253 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3192049 () Bool)

(declare-fun res!1298485 () Bool)

(assert (=> b!3192049 (=> (not res!1298485) (not e!1989701))))

(assert (=> b!3192049 (= res!1298485 (isSeparator!5172 (rule!7604 separatorToken!241)))))

(declare-fun b!3192050 () Bool)

(declare-fun res!1298487 () Bool)

(assert (=> b!3192050 (=> (not res!1298487) (not e!1989701))))

(get-info :version)

(assert (=> b!3192050 (= res!1298487 (and (not ((_ is Nil!35959) tokens!494)) (not ((_ is Nil!35959) (t!236250 tokens!494)))))))

(declare-fun b!3192051 () Bool)

(declare-fun res!1298492 () Bool)

(assert (=> b!3192051 (=> res!1298492 e!1989704)))

(declare-fun lt!1075183 () List!36081)

(declare-fun isEmpty!20057 (BalanceConc!21054) Bool)

(declare-datatypes ((tuple2!35324 0))(
  ( (tuple2!35325 (_1!20796 BalanceConc!21054) (_2!20796 BalanceConc!21052)) )
))
(declare-fun lex!2091 (LexerInterface!4761 List!36082 BalanceConc!21052) tuple2!35324)

(declare-fun seqFromList!3416 (List!36081) BalanceConc!21052)

(assert (=> b!3192051 (= res!1298492 (isEmpty!20057 (_1!20796 (lex!2091 thiss!18206 rules!2135 (seqFromList!3416 lt!1075183)))))))

(declare-fun tp!1009321 () Bool)

(declare-fun e!1989706 () Bool)

(declare-fun b!3192052 () Bool)

(declare-fun e!1989702 () Bool)

(assert (=> b!3192052 (= e!1989706 (and (inv!21 (value!167862 separatorToken!241)) e!1989702 tp!1009321))))

(declare-fun b!3192053 () Bool)

(declare-fun res!1298489 () Bool)

(assert (=> b!3192053 (=> (not res!1298489) (not e!1989701))))

(declare-fun sepAndNonSepRulesDisjointChars!1366 (List!36082 List!36082) Bool)

(assert (=> b!3192053 (= res!1298489 (sepAndNonSepRulesDisjointChars!1366 rules!2135 rules!2135))))

(declare-fun res!1298488 () Bool)

(assert (=> start!299298 (=> (not res!1298488) (not e!1989701))))

(assert (=> start!299298 (= res!1298488 ((_ is Lexer!4759) thiss!18206))))

(assert (=> start!299298 e!1989701))

(assert (=> start!299298 true))

(assert (=> start!299298 e!1989709))

(assert (=> start!299298 e!1989713))

(assert (=> start!299298 (and (inv!48799 separatorToken!241) e!1989706)))

(declare-fun tp!1009322 () Bool)

(declare-fun b!3192054 () Bool)

(declare-fun inv!48796 (String!40344) Bool)

(declare-fun inv!48800 (TokenValueInjection!10232) Bool)

(assert (=> b!3192054 (= e!1989710 (and tp!1009322 (inv!48796 (tag!5690 (h!41378 rules!2135))) (inv!48800 (transformation!5172 (h!41378 rules!2135))) e!1989705))))

(declare-fun tp!1009320 () Bool)

(declare-fun b!3192055 () Bool)

(declare-fun e!1989697 () Bool)

(assert (=> b!3192055 (= e!1989708 (and tp!1009320 (inv!48796 (tag!5690 (rule!7604 (h!41379 tokens!494)))) (inv!48800 (transformation!5172 (rule!7604 (h!41379 tokens!494)))) e!1989697))))

(declare-fun b!3192056 () Bool)

(declare-fun res!1298491 () Bool)

(assert (=> b!3192056 (=> res!1298491 e!1989704)))

(assert (=> b!3192056 (= res!1298491 (not (rulesProduceIndividualToken!2253 thiss!18206 rules!2135 (h!41379 tokens!494))))))

(declare-fun b!3192057 () Bool)

(declare-fun res!1298483 () Bool)

(assert (=> b!3192057 (=> (not res!1298483) (not e!1989701))))

(assert (=> b!3192057 (= res!1298483 (forall!7304 tokens!494 lambda!116811))))

(assert (=> b!3192058 (= e!1989697 (and tp!1009326 tp!1009324))))

(declare-fun tp!1009325 () Bool)

(declare-fun b!3192059 () Bool)

(assert (=> b!3192059 (= e!1989702 (and tp!1009325 (inv!48796 (tag!5690 (rule!7604 separatorToken!241))) (inv!48800 (transformation!5172 (rule!7604 separatorToken!241))) e!1989699))))

(declare-fun b!3192060 () Bool)

(assert (=> b!3192060 (= e!1989711 e!1989704)))

(declare-fun res!1298482 () Bool)

(assert (=> b!3192060 (=> res!1298482 e!1989704)))

(assert (=> b!3192060 (= res!1298482 (or (not (= lt!1075180 lt!1075183)) (not (= lt!1075182 lt!1075183))))))

(declare-fun charsOf!3188 (Token!9710) BalanceConc!21052)

(assert (=> b!3192060 (= lt!1075183 (list!12769 (charsOf!3188 (h!41379 tokens!494))))))

(assert (= (and start!299298 res!1298488) b!3192038))

(assert (= (and b!3192038 res!1298486) b!3192040))

(assert (= (and b!3192040 res!1298493) b!3192043))

(assert (= (and b!3192043 res!1298490) b!3192048))

(assert (= (and b!3192048 res!1298494) b!3192049))

(assert (= (and b!3192049 res!1298485) b!3192057))

(assert (= (and b!3192057 res!1298483) b!3192053))

(assert (= (and b!3192053 res!1298489) b!3192050))

(assert (= (and b!3192050 res!1298487) b!3192046))

(assert (= (and b!3192046 (not res!1298495)) b!3192060))

(assert (= (and b!3192060 (not res!1298482)) b!3192056))

(assert (= (and b!3192056 (not res!1298491)) b!3192051))

(assert (= (and b!3192051 (not res!1298492)) b!3192047))

(assert (= (and b!3192047 res!1298484) b!3192042))

(assert (= b!3192054 b!3192041))

(assert (= b!3192044 b!3192054))

(assert (= (and start!299298 ((_ is Cons!35958) rules!2135)) b!3192044))

(assert (= b!3192055 b!3192058))

(assert (= b!3192045 b!3192055))

(assert (= b!3192039 b!3192045))

(assert (= (and start!299298 ((_ is Cons!35959) tokens!494)) b!3192039))

(assert (= b!3192059 b!3192037))

(assert (= b!3192052 b!3192059))

(assert (= start!299298 b!3192052))

(declare-fun m!3451237 () Bool)

(assert (=> b!3192054 m!3451237))

(declare-fun m!3451239 () Bool)

(assert (=> b!3192054 m!3451239))

(declare-fun m!3451241 () Bool)

(assert (=> start!299298 m!3451241))

(declare-fun m!3451243 () Bool)

(assert (=> b!3192042 m!3451243))

(declare-fun m!3451245 () Bool)

(assert (=> b!3192038 m!3451245))

(declare-fun m!3451247 () Bool)

(assert (=> b!3192059 m!3451247))

(declare-fun m!3451249 () Bool)

(assert (=> b!3192059 m!3451249))

(declare-fun m!3451251 () Bool)

(assert (=> b!3192039 m!3451251))

(declare-fun m!3451253 () Bool)

(assert (=> b!3192045 m!3451253))

(declare-fun m!3451255 () Bool)

(assert (=> b!3192060 m!3451255))

(assert (=> b!3192060 m!3451255))

(declare-fun m!3451257 () Bool)

(assert (=> b!3192060 m!3451257))

(declare-fun m!3451259 () Bool)

(assert (=> b!3192047 m!3451259))

(declare-fun m!3451261 () Bool)

(assert (=> b!3192040 m!3451261))

(declare-fun m!3451263 () Bool)

(assert (=> b!3192055 m!3451263))

(declare-fun m!3451265 () Bool)

(assert (=> b!3192055 m!3451265))

(declare-fun m!3451267 () Bool)

(assert (=> b!3192056 m!3451267))

(declare-fun m!3451269 () Bool)

(assert (=> b!3192043 m!3451269))

(assert (=> b!3192043 m!3451269))

(declare-fun m!3451271 () Bool)

(assert (=> b!3192043 m!3451271))

(declare-fun m!3451273 () Bool)

(assert (=> b!3192048 m!3451273))

(declare-fun m!3451275 () Bool)

(assert (=> b!3192053 m!3451275))

(declare-fun m!3451277 () Bool)

(assert (=> b!3192052 m!3451277))

(declare-fun m!3451279 () Bool)

(assert (=> b!3192051 m!3451279))

(assert (=> b!3192051 m!3451279))

(declare-fun m!3451281 () Bool)

(assert (=> b!3192051 m!3451281))

(declare-fun m!3451283 () Bool)

(assert (=> b!3192051 m!3451283))

(declare-fun m!3451285 () Bool)

(assert (=> b!3192046 m!3451285))

(declare-fun m!3451287 () Bool)

(assert (=> b!3192046 m!3451287))

(declare-fun m!3451289 () Bool)

(assert (=> b!3192046 m!3451289))

(declare-fun m!3451291 () Bool)

(assert (=> b!3192046 m!3451291))

(declare-fun m!3451293 () Bool)

(assert (=> b!3192046 m!3451293))

(assert (=> b!3192057 m!3451259))

(check-sat (not b_next!85311) b_and!211615 b_and!211611 b_and!211617 (not b_next!85309) (not b!3192043) (not b!3192039) (not b!3192053) (not b!3192059) (not b!3192055) (not b!3192046) (not b!3192056) (not b!3192060) (not b!3192038) (not start!299298) b_and!211621 (not b!3192052) (not b!3192044) b_and!211613 (not b!3192054) (not b_next!85313) (not b!3192047) (not b!3192051) (not b_next!85305) (not b!3192042) (not b_next!85315) (not b!3192057) (not b!3192040) (not b_next!85307) b_and!211619 (not b!3192045) (not b!3192048))
(check-sat (not b_next!85311) b_and!211615 b_and!211611 b_and!211617 (not b_next!85309) b_and!211621 b_and!211613 (not b_next!85313) (not b_next!85305) (not b_next!85315) (not b_next!85307) b_and!211619)
(get-model)

(declare-fun bs!540321 () Bool)

(declare-fun d!872803 () Bool)

(assert (= bs!540321 (and d!872803 b!3192057)))

(declare-fun lambda!116816 () Int)

(assert (=> bs!540321 (not (= lambda!116816 lambda!116811))))

(declare-fun b!3192163 () Bool)

(declare-fun e!1989789 () Bool)

(assert (=> b!3192163 (= e!1989789 true)))

(declare-fun b!3192162 () Bool)

(declare-fun e!1989788 () Bool)

(assert (=> b!3192162 (= e!1989788 e!1989789)))

(declare-fun b!3192161 () Bool)

(declare-fun e!1989787 () Bool)

(assert (=> b!3192161 (= e!1989787 e!1989788)))

(assert (=> d!872803 e!1989787))

(assert (= b!3192162 b!3192163))

(assert (= b!3192161 b!3192162))

(assert (= (and d!872803 ((_ is Cons!35958) rules!2135)) b!3192161))

(declare-fun order!18271 () Int)

(declare-fun order!18273 () Int)

(declare-fun dynLambda!14474 (Int Int) Int)

(declare-fun dynLambda!14475 (Int Int) Int)

(assert (=> b!3192163 (< (dynLambda!14474 order!18271 (toValue!7236 (transformation!5172 (h!41378 rules!2135)))) (dynLambda!14475 order!18273 lambda!116816))))

(declare-fun order!18275 () Int)

(declare-fun dynLambda!14476 (Int Int) Int)

(assert (=> b!3192163 (< (dynLambda!14476 order!18275 (toChars!7095 (transformation!5172 (h!41378 rules!2135)))) (dynLambda!14475 order!18273 lambda!116816))))

(assert (=> d!872803 true))

(declare-fun e!1989780 () Bool)

(assert (=> d!872803 e!1989780))

(declare-fun res!1298562 () Bool)

(assert (=> d!872803 (=> (not res!1298562) (not e!1989780))))

(declare-fun lt!1075232 () Bool)

(declare-fun list!12770 (BalanceConc!21054) List!36083)

(assert (=> d!872803 (= res!1298562 (= lt!1075232 (forall!7304 (list!12770 (seqFromList!3415 tokens!494)) lambda!116816)))))

(declare-fun forall!7305 (BalanceConc!21054 Int) Bool)

(assert (=> d!872803 (= lt!1075232 (forall!7305 (seqFromList!3415 tokens!494) lambda!116816))))

(assert (=> d!872803 (not (isEmpty!20056 rules!2135))))

(assert (=> d!872803 (= (rulesProduceEachTokenIndividually!1212 thiss!18206 rules!2135 (seqFromList!3415 tokens!494)) lt!1075232)))

(declare-fun b!3192152 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1710 (LexerInterface!4761 List!36082 List!36083) Bool)

(assert (=> b!3192152 (= e!1989780 (= lt!1075232 (rulesProduceEachTokenIndividuallyList!1710 thiss!18206 rules!2135 (list!12770 (seqFromList!3415 tokens!494)))))))

(assert (= (and d!872803 res!1298562) b!3192152))

(assert (=> d!872803 m!3451269))

(declare-fun m!3451433 () Bool)

(assert (=> d!872803 m!3451433))

(assert (=> d!872803 m!3451433))

(declare-fun m!3451435 () Bool)

(assert (=> d!872803 m!3451435))

(assert (=> d!872803 m!3451269))

(declare-fun m!3451437 () Bool)

(assert (=> d!872803 m!3451437))

(assert (=> d!872803 m!3451245))

(assert (=> b!3192152 m!3451269))

(assert (=> b!3192152 m!3451433))

(assert (=> b!3192152 m!3451433))

(declare-fun m!3451439 () Bool)

(assert (=> b!3192152 m!3451439))

(assert (=> b!3192043 d!872803))

(declare-fun d!872837 () Bool)

(declare-fun fromListB!1515 (List!36083) BalanceConc!21054)

(assert (=> d!872837 (= (seqFromList!3415 tokens!494) (fromListB!1515 tokens!494))))

(declare-fun bs!540322 () Bool)

(assert (= bs!540322 d!872837))

(declare-fun m!3451441 () Bool)

(assert (=> bs!540322 m!3451441))

(assert (=> b!3192043 d!872837))

(declare-fun d!872839 () Bool)

(assert (=> d!872839 (= (inv!48796 (tag!5690 (h!41378 rules!2135))) (= (mod (str.len (value!167861 (tag!5690 (h!41378 rules!2135)))) 2) 0))))

(assert (=> b!3192054 d!872839))

(declare-fun d!872841 () Bool)

(declare-fun res!1298565 () Bool)

(declare-fun e!1989792 () Bool)

(assert (=> d!872841 (=> (not res!1298565) (not e!1989792))))

(declare-fun semiInverseModEq!2142 (Int Int) Bool)

(assert (=> d!872841 (= res!1298565 (semiInverseModEq!2142 (toChars!7095 (transformation!5172 (h!41378 rules!2135))) (toValue!7236 (transformation!5172 (h!41378 rules!2135)))))))

(assert (=> d!872841 (= (inv!48800 (transformation!5172 (h!41378 rules!2135))) e!1989792)))

(declare-fun b!3192168 () Bool)

(declare-fun equivClasses!2041 (Int Int) Bool)

(assert (=> b!3192168 (= e!1989792 (equivClasses!2041 (toChars!7095 (transformation!5172 (h!41378 rules!2135))) (toValue!7236 (transformation!5172 (h!41378 rules!2135)))))))

(assert (= (and d!872841 res!1298565) b!3192168))

(declare-fun m!3451443 () Bool)

(assert (=> d!872841 m!3451443))

(declare-fun m!3451445 () Bool)

(assert (=> b!3192168 m!3451445))

(assert (=> b!3192054 d!872841))

(declare-fun d!872843 () Bool)

(declare-fun res!1298570 () Bool)

(declare-fun e!1989795 () Bool)

(assert (=> d!872843 (=> (not res!1298570) (not e!1989795))))

(declare-fun isEmpty!20058 (List!36081) Bool)

(assert (=> d!872843 (= res!1298570 (not (isEmpty!20058 (originalCharacters!5886 separatorToken!241))))))

(assert (=> d!872843 (= (inv!48799 separatorToken!241) e!1989795)))

(declare-fun b!3192173 () Bool)

(declare-fun res!1298571 () Bool)

(assert (=> b!3192173 (=> (not res!1298571) (not e!1989795))))

(declare-fun dynLambda!14477 (Int TokenValue!5402) BalanceConc!21052)

(assert (=> b!3192173 (= res!1298571 (= (originalCharacters!5886 separatorToken!241) (list!12769 (dynLambda!14477 (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241))) (value!167862 separatorToken!241)))))))

(declare-fun b!3192174 () Bool)

(declare-fun size!27090 (List!36081) Int)

(assert (=> b!3192174 (= e!1989795 (= (size!27089 separatorToken!241) (size!27090 (originalCharacters!5886 separatorToken!241))))))

(assert (= (and d!872843 res!1298570) b!3192173))

(assert (= (and b!3192173 res!1298571) b!3192174))

(declare-fun b_lambda!87041 () Bool)

(assert (=> (not b_lambda!87041) (not b!3192173)))

(declare-fun t!236266 () Bool)

(declare-fun tb!155941 () Bool)

(assert (=> (and b!3192037 (= (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241))) (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241)))) t!236266) tb!155941))

(declare-fun b!3192179 () Bool)

(declare-fun e!1989798 () Bool)

(declare-fun tp!1009334 () Bool)

(declare-fun inv!48801 (Conc!10719) Bool)

(assert (=> b!3192179 (= e!1989798 (and (inv!48801 (c!535901 (dynLambda!14477 (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241))) (value!167862 separatorToken!241)))) tp!1009334))))

(declare-fun result!198128 () Bool)

(declare-fun inv!48802 (BalanceConc!21052) Bool)

(assert (=> tb!155941 (= result!198128 (and (inv!48802 (dynLambda!14477 (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241))) (value!167862 separatorToken!241))) e!1989798))))

(assert (= tb!155941 b!3192179))

(declare-fun m!3451447 () Bool)

(assert (=> b!3192179 m!3451447))

(declare-fun m!3451449 () Bool)

(assert (=> tb!155941 m!3451449))

(assert (=> b!3192173 t!236266))

(declare-fun b_and!211635 () Bool)

(assert (= b_and!211613 (and (=> t!236266 result!198128) b_and!211635)))

(declare-fun tb!155943 () Bool)

(declare-fun t!236268 () Bool)

(assert (=> (and b!3192058 (= (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))) (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241)))) t!236268) tb!155943))

(declare-fun result!198132 () Bool)

(assert (= result!198132 result!198128))

(assert (=> b!3192173 t!236268))

(declare-fun b_and!211637 () Bool)

(assert (= b_and!211617 (and (=> t!236268 result!198132) b_and!211637)))

(declare-fun tb!155945 () Bool)

(declare-fun t!236270 () Bool)

(assert (=> (and b!3192041 (= (toChars!7095 (transformation!5172 (h!41378 rules!2135))) (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241)))) t!236270) tb!155945))

(declare-fun result!198134 () Bool)

(assert (= result!198134 result!198128))

(assert (=> b!3192173 t!236270))

(declare-fun b_and!211639 () Bool)

(assert (= b_and!211621 (and (=> t!236270 result!198134) b_and!211639)))

(declare-fun m!3451451 () Bool)

(assert (=> d!872843 m!3451451))

(declare-fun m!3451453 () Bool)

(assert (=> b!3192173 m!3451453))

(assert (=> b!3192173 m!3451453))

(declare-fun m!3451455 () Bool)

(assert (=> b!3192173 m!3451455))

(declare-fun m!3451457 () Bool)

(assert (=> b!3192174 m!3451457))

(assert (=> start!299298 d!872843))

(declare-fun d!872845 () Bool)

(assert (=> d!872845 (= (inv!48796 (tag!5690 (rule!7604 (h!41379 tokens!494)))) (= (mod (str.len (value!167861 (tag!5690 (rule!7604 (h!41379 tokens!494))))) 2) 0))))

(assert (=> b!3192055 d!872845))

(declare-fun d!872847 () Bool)

(declare-fun res!1298572 () Bool)

(declare-fun e!1989799 () Bool)

(assert (=> d!872847 (=> (not res!1298572) (not e!1989799))))

(assert (=> d!872847 (= res!1298572 (semiInverseModEq!2142 (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))) (toValue!7236 (transformation!5172 (rule!7604 (h!41379 tokens!494))))))))

(assert (=> d!872847 (= (inv!48800 (transformation!5172 (rule!7604 (h!41379 tokens!494)))) e!1989799)))

(declare-fun b!3192180 () Bool)

(assert (=> b!3192180 (= e!1989799 (equivClasses!2041 (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))) (toValue!7236 (transformation!5172 (rule!7604 (h!41379 tokens!494))))))))

(assert (= (and d!872847 res!1298572) b!3192180))

(declare-fun m!3451459 () Bool)

(assert (=> d!872847 m!3451459))

(declare-fun m!3451461 () Bool)

(assert (=> b!3192180 m!3451461))

(assert (=> b!3192055 d!872847))

(declare-fun b!3192191 () Bool)

(declare-fun e!1989807 () Bool)

(declare-fun inv!15 (TokenValue!5402) Bool)

(assert (=> b!3192191 (= e!1989807 (inv!15 (value!167862 (h!41379 tokens!494))))))

(declare-fun d!872849 () Bool)

(declare-fun c!535923 () Bool)

(assert (=> d!872849 (= c!535923 ((_ is IntegerValue!16206) (value!167862 (h!41379 tokens!494))))))

(declare-fun e!1989806 () Bool)

(assert (=> d!872849 (= (inv!21 (value!167862 (h!41379 tokens!494))) e!1989806)))

(declare-fun b!3192192 () Bool)

(declare-fun e!1989808 () Bool)

(assert (=> b!3192192 (= e!1989806 e!1989808)))

(declare-fun c!535922 () Bool)

(assert (=> b!3192192 (= c!535922 ((_ is IntegerValue!16207) (value!167862 (h!41379 tokens!494))))))

(declare-fun b!3192193 () Bool)

(declare-fun res!1298575 () Bool)

(assert (=> b!3192193 (=> res!1298575 e!1989807)))

(assert (=> b!3192193 (= res!1298575 (not ((_ is IntegerValue!16208) (value!167862 (h!41379 tokens!494)))))))

(assert (=> b!3192193 (= e!1989808 e!1989807)))

(declare-fun b!3192194 () Bool)

(declare-fun inv!17 (TokenValue!5402) Bool)

(assert (=> b!3192194 (= e!1989808 (inv!17 (value!167862 (h!41379 tokens!494))))))

(declare-fun b!3192195 () Bool)

(declare-fun inv!16 (TokenValue!5402) Bool)

(assert (=> b!3192195 (= e!1989806 (inv!16 (value!167862 (h!41379 tokens!494))))))

(assert (= (and d!872849 c!535923) b!3192195))

(assert (= (and d!872849 (not c!535923)) b!3192192))

(assert (= (and b!3192192 c!535922) b!3192194))

(assert (= (and b!3192192 (not c!535922)) b!3192193))

(assert (= (and b!3192193 (not res!1298575)) b!3192191))

(declare-fun m!3451463 () Bool)

(assert (=> b!3192191 m!3451463))

(declare-fun m!3451465 () Bool)

(assert (=> b!3192194 m!3451465))

(declare-fun m!3451467 () Bool)

(assert (=> b!3192195 m!3451467))

(assert (=> b!3192045 d!872849))

(declare-fun d!872851 () Bool)

(declare-fun lt!1075240 () Bool)

(declare-fun e!1989813 () Bool)

(assert (=> d!872851 (= lt!1075240 e!1989813)))

(declare-fun res!1298582 () Bool)

(assert (=> d!872851 (=> (not res!1298582) (not e!1989813))))

(assert (=> d!872851 (= res!1298582 (= (list!12770 (_1!20796 (lex!2091 thiss!18206 rules!2135 (print!1826 thiss!18206 (singletonSeq!2268 (h!41379 tokens!494)))))) (list!12770 (singletonSeq!2268 (h!41379 tokens!494)))))))

(declare-fun e!1989814 () Bool)

(assert (=> d!872851 (= lt!1075240 e!1989814)))

(declare-fun res!1298583 () Bool)

(assert (=> d!872851 (=> (not res!1298583) (not e!1989814))))

(declare-fun lt!1075239 () tuple2!35324)

(declare-fun size!27092 (BalanceConc!21054) Int)

(assert (=> d!872851 (= res!1298583 (= (size!27092 (_1!20796 lt!1075239)) 1))))

(assert (=> d!872851 (= lt!1075239 (lex!2091 thiss!18206 rules!2135 (print!1826 thiss!18206 (singletonSeq!2268 (h!41379 tokens!494)))))))

(assert (=> d!872851 (not (isEmpty!20056 rules!2135))))

(assert (=> d!872851 (= (rulesProduceIndividualToken!2253 thiss!18206 rules!2135 (h!41379 tokens!494)) lt!1075240)))

(declare-fun b!3192202 () Bool)

(declare-fun res!1298584 () Bool)

(assert (=> b!3192202 (=> (not res!1298584) (not e!1989814))))

(declare-fun apply!8099 (BalanceConc!21054 Int) Token!9710)

(assert (=> b!3192202 (= res!1298584 (= (apply!8099 (_1!20796 lt!1075239) 0) (h!41379 tokens!494)))))

(declare-fun b!3192203 () Bool)

(declare-fun isEmpty!20060 (BalanceConc!21052) Bool)

(assert (=> b!3192203 (= e!1989814 (isEmpty!20060 (_2!20796 lt!1075239)))))

(declare-fun b!3192204 () Bool)

(assert (=> b!3192204 (= e!1989813 (isEmpty!20060 (_2!20796 (lex!2091 thiss!18206 rules!2135 (print!1826 thiss!18206 (singletonSeq!2268 (h!41379 tokens!494)))))))))

(assert (= (and d!872851 res!1298583) b!3192202))

(assert (= (and b!3192202 res!1298584) b!3192203))

(assert (= (and d!872851 res!1298582) b!3192204))

(assert (=> d!872851 m!3451287))

(declare-fun m!3451469 () Bool)

(assert (=> d!872851 m!3451469))

(assert (=> d!872851 m!3451287))

(declare-fun m!3451471 () Bool)

(assert (=> d!872851 m!3451471))

(assert (=> d!872851 m!3451245))

(declare-fun m!3451473 () Bool)

(assert (=> d!872851 m!3451473))

(declare-fun m!3451475 () Bool)

(assert (=> d!872851 m!3451475))

(declare-fun m!3451477 () Bool)

(assert (=> d!872851 m!3451477))

(assert (=> d!872851 m!3451287))

(assert (=> d!872851 m!3451475))

(declare-fun m!3451479 () Bool)

(assert (=> b!3192202 m!3451479))

(declare-fun m!3451481 () Bool)

(assert (=> b!3192203 m!3451481))

(assert (=> b!3192204 m!3451287))

(assert (=> b!3192204 m!3451287))

(assert (=> b!3192204 m!3451475))

(assert (=> b!3192204 m!3451475))

(assert (=> b!3192204 m!3451477))

(declare-fun m!3451483 () Bool)

(assert (=> b!3192204 m!3451483))

(assert (=> b!3192056 d!872851))

(declare-fun d!872853 () Bool)

(declare-fun list!12773 (Conc!10719) List!36081)

(assert (=> d!872853 (= (list!12769 lt!1075181) (list!12773 (c!535901 lt!1075181)))))

(declare-fun bs!540323 () Bool)

(assert (= bs!540323 d!872853))

(declare-fun m!3451485 () Bool)

(assert (=> bs!540323 m!3451485))

(assert (=> b!3192046 d!872853))

(declare-fun d!872855 () Bool)

(declare-fun lt!1075258 () BalanceConc!21052)

(declare-fun printListTailRec!548 (LexerInterface!4761 List!36083 List!36081) List!36081)

(declare-fun dropList!1065 (BalanceConc!21054 Int) List!36083)

(assert (=> d!872855 (= (list!12769 lt!1075258) (printListTailRec!548 thiss!18206 (dropList!1065 lt!1075184 0) (list!12769 (BalanceConc!21053 Empty!10719))))))

(declare-fun e!1989820 () BalanceConc!21052)

(assert (=> d!872855 (= lt!1075258 e!1989820)))

(declare-fun c!535926 () Bool)

(assert (=> d!872855 (= c!535926 (>= 0 (size!27092 lt!1075184)))))

(declare-fun e!1989819 () Bool)

(assert (=> d!872855 e!1989819))

(declare-fun res!1298587 () Bool)

(assert (=> d!872855 (=> (not res!1298587) (not e!1989819))))

(assert (=> d!872855 (= res!1298587 (>= 0 0))))

(assert (=> d!872855 (= (printTailRec!1258 thiss!18206 lt!1075184 0 (BalanceConc!21053 Empty!10719)) lt!1075258)))

(declare-fun b!3192211 () Bool)

(assert (=> b!3192211 (= e!1989819 (<= 0 (size!27092 lt!1075184)))))

(declare-fun b!3192212 () Bool)

(assert (=> b!3192212 (= e!1989820 (BalanceConc!21053 Empty!10719))))

(declare-fun b!3192213 () Bool)

(declare-fun ++!8599 (BalanceConc!21052 BalanceConc!21052) BalanceConc!21052)

(assert (=> b!3192213 (= e!1989820 (printTailRec!1258 thiss!18206 lt!1075184 (+ 0 1) (++!8599 (BalanceConc!21053 Empty!10719) (charsOf!3188 (apply!8099 lt!1075184 0)))))))

(declare-fun lt!1075261 () List!36083)

(assert (=> b!3192213 (= lt!1075261 (list!12770 lt!1075184))))

(declare-datatypes ((Unit!50366 0))(
  ( (Unit!50367) )
))
(declare-fun lt!1075255 () Unit!50366)

(declare-fun lemmaDropApply!1024 (List!36083 Int) Unit!50366)

(assert (=> b!3192213 (= lt!1075255 (lemmaDropApply!1024 lt!1075261 0))))

(declare-fun head!6996 (List!36083) Token!9710)

(declare-fun drop!1848 (List!36083 Int) List!36083)

(declare-fun apply!8100 (List!36083 Int) Token!9710)

(assert (=> b!3192213 (= (head!6996 (drop!1848 lt!1075261 0)) (apply!8100 lt!1075261 0))))

(declare-fun lt!1075260 () Unit!50366)

(assert (=> b!3192213 (= lt!1075260 lt!1075255)))

(declare-fun lt!1075256 () List!36083)

(assert (=> b!3192213 (= lt!1075256 (list!12770 lt!1075184))))

(declare-fun lt!1075257 () Unit!50366)

(declare-fun lemmaDropTail!908 (List!36083 Int) Unit!50366)

(assert (=> b!3192213 (= lt!1075257 (lemmaDropTail!908 lt!1075256 0))))

(declare-fun tail!5190 (List!36083) List!36083)

(assert (=> b!3192213 (= (tail!5190 (drop!1848 lt!1075256 0)) (drop!1848 lt!1075256 (+ 0 1)))))

(declare-fun lt!1075259 () Unit!50366)

(assert (=> b!3192213 (= lt!1075259 lt!1075257)))

(assert (= (and d!872855 res!1298587) b!3192211))

(assert (= (and d!872855 c!535926) b!3192212))

(assert (= (and d!872855 (not c!535926)) b!3192213))

(declare-fun m!3451487 () Bool)

(assert (=> d!872855 m!3451487))

(declare-fun m!3451489 () Bool)

(assert (=> d!872855 m!3451489))

(declare-fun m!3451491 () Bool)

(assert (=> d!872855 m!3451491))

(assert (=> d!872855 m!3451489))

(assert (=> d!872855 m!3451487))

(declare-fun m!3451493 () Bool)

(assert (=> d!872855 m!3451493))

(declare-fun m!3451495 () Bool)

(assert (=> d!872855 m!3451495))

(assert (=> b!3192211 m!3451493))

(declare-fun m!3451497 () Bool)

(assert (=> b!3192213 m!3451497))

(declare-fun m!3451499 () Bool)

(assert (=> b!3192213 m!3451499))

(declare-fun m!3451501 () Bool)

(assert (=> b!3192213 m!3451501))

(declare-fun m!3451503 () Bool)

(assert (=> b!3192213 m!3451503))

(declare-fun m!3451505 () Bool)

(assert (=> b!3192213 m!3451505))

(declare-fun m!3451507 () Bool)

(assert (=> b!3192213 m!3451507))

(declare-fun m!3451509 () Bool)

(assert (=> b!3192213 m!3451509))

(declare-fun m!3451511 () Bool)

(assert (=> b!3192213 m!3451511))

(assert (=> b!3192213 m!3451507))

(assert (=> b!3192213 m!3451499))

(declare-fun m!3451513 () Bool)

(assert (=> b!3192213 m!3451513))

(declare-fun m!3451515 () Bool)

(assert (=> b!3192213 m!3451515))

(assert (=> b!3192213 m!3451515))

(assert (=> b!3192213 m!3451511))

(declare-fun m!3451517 () Bool)

(assert (=> b!3192213 m!3451517))

(assert (=> b!3192213 m!3451497))

(declare-fun m!3451519 () Bool)

(assert (=> b!3192213 m!3451519))

(declare-fun m!3451521 () Bool)

(assert (=> b!3192213 m!3451521))

(assert (=> b!3192046 d!872855))

(declare-fun d!872857 () Bool)

(declare-fun lt!1075264 () BalanceConc!21052)

(assert (=> d!872857 (= (list!12769 lt!1075264) (printList!1311 thiss!18206 (list!12770 lt!1075184)))))

(assert (=> d!872857 (= lt!1075264 (printTailRec!1258 thiss!18206 lt!1075184 0 (BalanceConc!21053 Empty!10719)))))

(assert (=> d!872857 (= (print!1826 thiss!18206 lt!1075184) lt!1075264)))

(declare-fun bs!540324 () Bool)

(assert (= bs!540324 d!872857))

(declare-fun m!3451523 () Bool)

(assert (=> bs!540324 m!3451523))

(assert (=> bs!540324 m!3451505))

(assert (=> bs!540324 m!3451505))

(declare-fun m!3451525 () Bool)

(assert (=> bs!540324 m!3451525))

(assert (=> bs!540324 m!3451291))

(assert (=> b!3192046 d!872857))

(declare-fun d!872859 () Bool)

(declare-fun e!1989823 () Bool)

(assert (=> d!872859 e!1989823))

(declare-fun res!1298590 () Bool)

(assert (=> d!872859 (=> (not res!1298590) (not e!1989823))))

(declare-fun lt!1075267 () BalanceConc!21054)

(assert (=> d!872859 (= res!1298590 (= (list!12770 lt!1075267) (Cons!35959 (h!41379 tokens!494) Nil!35959)))))

(declare-fun singleton!981 (Token!9710) BalanceConc!21054)

(assert (=> d!872859 (= lt!1075267 (singleton!981 (h!41379 tokens!494)))))

(assert (=> d!872859 (= (singletonSeq!2268 (h!41379 tokens!494)) lt!1075267)))

(declare-fun b!3192216 () Bool)

(declare-fun isBalanced!3194 (Conc!10720) Bool)

(assert (=> b!3192216 (= e!1989823 (isBalanced!3194 (c!535902 lt!1075267)))))

(assert (= (and d!872859 res!1298590) b!3192216))

(declare-fun m!3451527 () Bool)

(assert (=> d!872859 m!3451527))

(declare-fun m!3451529 () Bool)

(assert (=> d!872859 m!3451529))

(declare-fun m!3451531 () Bool)

(assert (=> b!3192216 m!3451531))

(assert (=> b!3192046 d!872859))

(declare-fun d!872861 () Bool)

(declare-fun c!535929 () Bool)

(assert (=> d!872861 (= c!535929 ((_ is Cons!35959) (Cons!35959 (h!41379 tokens!494) Nil!35959)))))

(declare-fun e!1989826 () List!36081)

(assert (=> d!872861 (= (printList!1311 thiss!18206 (Cons!35959 (h!41379 tokens!494) Nil!35959)) e!1989826)))

(declare-fun b!3192221 () Bool)

(declare-fun ++!8600 (List!36081 List!36081) List!36081)

(assert (=> b!3192221 (= e!1989826 (++!8600 (list!12769 (charsOf!3188 (h!41379 (Cons!35959 (h!41379 tokens!494) Nil!35959)))) (printList!1311 thiss!18206 (t!236250 (Cons!35959 (h!41379 tokens!494) Nil!35959)))))))

(declare-fun b!3192222 () Bool)

(assert (=> b!3192222 (= e!1989826 Nil!35957)))

(assert (= (and d!872861 c!535929) b!3192221))

(assert (= (and d!872861 (not c!535929)) b!3192222))

(declare-fun m!3451533 () Bool)

(assert (=> b!3192221 m!3451533))

(assert (=> b!3192221 m!3451533))

(declare-fun m!3451535 () Bool)

(assert (=> b!3192221 m!3451535))

(declare-fun m!3451537 () Bool)

(assert (=> b!3192221 m!3451537))

(assert (=> b!3192221 m!3451535))

(assert (=> b!3192221 m!3451537))

(declare-fun m!3451539 () Bool)

(assert (=> b!3192221 m!3451539))

(assert (=> b!3192046 d!872861))

(declare-fun d!872863 () Bool)

(declare-fun res!1298595 () Bool)

(declare-fun e!1989831 () Bool)

(assert (=> d!872863 (=> res!1298595 e!1989831)))

(assert (=> d!872863 (= res!1298595 ((_ is Nil!35959) tokens!494))))

(assert (=> d!872863 (= (forall!7304 tokens!494 lambda!116811) e!1989831)))

(declare-fun b!3192227 () Bool)

(declare-fun e!1989832 () Bool)

(assert (=> b!3192227 (= e!1989831 e!1989832)))

(declare-fun res!1298596 () Bool)

(assert (=> b!3192227 (=> (not res!1298596) (not e!1989832))))

(declare-fun dynLambda!14479 (Int Token!9710) Bool)

(assert (=> b!3192227 (= res!1298596 (dynLambda!14479 lambda!116811 (h!41379 tokens!494)))))

(declare-fun b!3192228 () Bool)

(assert (=> b!3192228 (= e!1989832 (forall!7304 (t!236250 tokens!494) lambda!116811))))

(assert (= (and d!872863 (not res!1298595)) b!3192227))

(assert (= (and b!3192227 res!1298596) b!3192228))

(declare-fun b_lambda!87043 () Bool)

(assert (=> (not b_lambda!87043) (not b!3192227)))

(declare-fun m!3451541 () Bool)

(assert (=> b!3192227 m!3451541))

(declare-fun m!3451543 () Bool)

(assert (=> b!3192228 m!3451543))

(assert (=> b!3192057 d!872863))

(assert (=> b!3192047 d!872863))

(declare-fun d!872865 () Bool)

(declare-fun lt!1075269 () Bool)

(declare-fun e!1989833 () Bool)

(assert (=> d!872865 (= lt!1075269 e!1989833)))

(declare-fun res!1298597 () Bool)

(assert (=> d!872865 (=> (not res!1298597) (not e!1989833))))

(assert (=> d!872865 (= res!1298597 (= (list!12770 (_1!20796 (lex!2091 thiss!18206 rules!2135 (print!1826 thiss!18206 (singletonSeq!2268 separatorToken!241))))) (list!12770 (singletonSeq!2268 separatorToken!241))))))

(declare-fun e!1989834 () Bool)

(assert (=> d!872865 (= lt!1075269 e!1989834)))

(declare-fun res!1298598 () Bool)

(assert (=> d!872865 (=> (not res!1298598) (not e!1989834))))

(declare-fun lt!1075268 () tuple2!35324)

(assert (=> d!872865 (= res!1298598 (= (size!27092 (_1!20796 lt!1075268)) 1))))

(assert (=> d!872865 (= lt!1075268 (lex!2091 thiss!18206 rules!2135 (print!1826 thiss!18206 (singletonSeq!2268 separatorToken!241))))))

(assert (=> d!872865 (not (isEmpty!20056 rules!2135))))

(assert (=> d!872865 (= (rulesProduceIndividualToken!2253 thiss!18206 rules!2135 separatorToken!241) lt!1075269)))

(declare-fun b!3192229 () Bool)

(declare-fun res!1298599 () Bool)

(assert (=> b!3192229 (=> (not res!1298599) (not e!1989834))))

(assert (=> b!3192229 (= res!1298599 (= (apply!8099 (_1!20796 lt!1075268) 0) separatorToken!241))))

(declare-fun b!3192230 () Bool)

(assert (=> b!3192230 (= e!1989834 (isEmpty!20060 (_2!20796 lt!1075268)))))

(declare-fun b!3192231 () Bool)

(assert (=> b!3192231 (= e!1989833 (isEmpty!20060 (_2!20796 (lex!2091 thiss!18206 rules!2135 (print!1826 thiss!18206 (singletonSeq!2268 separatorToken!241))))))))

(assert (= (and d!872865 res!1298598) b!3192229))

(assert (= (and b!3192229 res!1298599) b!3192230))

(assert (= (and d!872865 res!1298597) b!3192231))

(declare-fun m!3451545 () Bool)

(assert (=> d!872865 m!3451545))

(declare-fun m!3451547 () Bool)

(assert (=> d!872865 m!3451547))

(assert (=> d!872865 m!3451545))

(declare-fun m!3451549 () Bool)

(assert (=> d!872865 m!3451549))

(assert (=> d!872865 m!3451245))

(declare-fun m!3451551 () Bool)

(assert (=> d!872865 m!3451551))

(declare-fun m!3451553 () Bool)

(assert (=> d!872865 m!3451553))

(declare-fun m!3451555 () Bool)

(assert (=> d!872865 m!3451555))

(assert (=> d!872865 m!3451545))

(assert (=> d!872865 m!3451553))

(declare-fun m!3451557 () Bool)

(assert (=> b!3192229 m!3451557))

(declare-fun m!3451559 () Bool)

(assert (=> b!3192230 m!3451559))

(assert (=> b!3192231 m!3451545))

(assert (=> b!3192231 m!3451545))

(assert (=> b!3192231 m!3451553))

(assert (=> b!3192231 m!3451553))

(assert (=> b!3192231 m!3451555))

(declare-fun m!3451561 () Bool)

(assert (=> b!3192231 m!3451561))

(assert (=> b!3192048 d!872865))

(declare-fun d!872867 () Bool)

(assert (=> d!872867 (= (inv!48796 (tag!5690 (rule!7604 separatorToken!241))) (= (mod (str.len (value!167861 (tag!5690 (rule!7604 separatorToken!241)))) 2) 0))))

(assert (=> b!3192059 d!872867))

(declare-fun d!872869 () Bool)

(declare-fun res!1298600 () Bool)

(declare-fun e!1989835 () Bool)

(assert (=> d!872869 (=> (not res!1298600) (not e!1989835))))

(assert (=> d!872869 (= res!1298600 (semiInverseModEq!2142 (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241))) (toValue!7236 (transformation!5172 (rule!7604 separatorToken!241)))))))

(assert (=> d!872869 (= (inv!48800 (transformation!5172 (rule!7604 separatorToken!241))) e!1989835)))

(declare-fun b!3192232 () Bool)

(assert (=> b!3192232 (= e!1989835 (equivClasses!2041 (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241))) (toValue!7236 (transformation!5172 (rule!7604 separatorToken!241)))))))

(assert (= (and d!872869 res!1298600) b!3192232))

(declare-fun m!3451563 () Bool)

(assert (=> d!872869 m!3451563))

(declare-fun m!3451565 () Bool)

(assert (=> b!3192232 m!3451565))

(assert (=> b!3192059 d!872869))

(declare-fun d!872871 () Bool)

(assert (=> d!872871 (= (isEmpty!20056 rules!2135) ((_ is Nil!35958) rules!2135))))

(assert (=> b!3192038 d!872871))

(declare-fun d!872873 () Bool)

(assert (=> d!872873 (= (list!12769 (charsOf!3188 (h!41379 tokens!494))) (list!12773 (c!535901 (charsOf!3188 (h!41379 tokens!494)))))))

(declare-fun bs!540325 () Bool)

(assert (= bs!540325 d!872873))

(declare-fun m!3451567 () Bool)

(assert (=> bs!540325 m!3451567))

(assert (=> b!3192060 d!872873))

(declare-fun d!872875 () Bool)

(declare-fun lt!1075272 () BalanceConc!21052)

(assert (=> d!872875 (= (list!12769 lt!1075272) (originalCharacters!5886 (h!41379 tokens!494)))))

(assert (=> d!872875 (= lt!1075272 (dynLambda!14477 (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))) (value!167862 (h!41379 tokens!494))))))

(assert (=> d!872875 (= (charsOf!3188 (h!41379 tokens!494)) lt!1075272)))

(declare-fun b_lambda!87045 () Bool)

(assert (=> (not b_lambda!87045) (not d!872875)))

(declare-fun tb!155947 () Bool)

(declare-fun t!236274 () Bool)

(assert (=> (and b!3192037 (= (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241))) (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494))))) t!236274) tb!155947))

(declare-fun b!3192233 () Bool)

(declare-fun e!1989836 () Bool)

(declare-fun tp!1009335 () Bool)

(assert (=> b!3192233 (= e!1989836 (and (inv!48801 (c!535901 (dynLambda!14477 (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))) (value!167862 (h!41379 tokens!494))))) tp!1009335))))

(declare-fun result!198136 () Bool)

(assert (=> tb!155947 (= result!198136 (and (inv!48802 (dynLambda!14477 (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))) (value!167862 (h!41379 tokens!494)))) e!1989836))))

(assert (= tb!155947 b!3192233))

(declare-fun m!3451569 () Bool)

(assert (=> b!3192233 m!3451569))

(declare-fun m!3451571 () Bool)

(assert (=> tb!155947 m!3451571))

(assert (=> d!872875 t!236274))

(declare-fun b_and!211641 () Bool)

(assert (= b_and!211635 (and (=> t!236274 result!198136) b_and!211641)))

(declare-fun t!236276 () Bool)

(declare-fun tb!155949 () Bool)

(assert (=> (and b!3192058 (= (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))) (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494))))) t!236276) tb!155949))

(declare-fun result!198138 () Bool)

(assert (= result!198138 result!198136))

(assert (=> d!872875 t!236276))

(declare-fun b_and!211643 () Bool)

(assert (= b_and!211637 (and (=> t!236276 result!198138) b_and!211643)))

(declare-fun tb!155951 () Bool)

(declare-fun t!236278 () Bool)

(assert (=> (and b!3192041 (= (toChars!7095 (transformation!5172 (h!41378 rules!2135))) (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494))))) t!236278) tb!155951))

(declare-fun result!198140 () Bool)

(assert (= result!198140 result!198136))

(assert (=> d!872875 t!236278))

(declare-fun b_and!211645 () Bool)

(assert (= b_and!211639 (and (=> t!236278 result!198140) b_and!211645)))

(declare-fun m!3451573 () Bool)

(assert (=> d!872875 m!3451573))

(declare-fun m!3451575 () Bool)

(assert (=> d!872875 m!3451575))

(assert (=> b!3192060 d!872875))

(declare-fun d!872877 () Bool)

(declare-fun res!1298601 () Bool)

(declare-fun e!1989837 () Bool)

(assert (=> d!872877 (=> (not res!1298601) (not e!1989837))))

(assert (=> d!872877 (= res!1298601 (not (isEmpty!20058 (originalCharacters!5886 (h!41379 tokens!494)))))))

(assert (=> d!872877 (= (inv!48799 (h!41379 tokens!494)) e!1989837)))

(declare-fun b!3192234 () Bool)

(declare-fun res!1298602 () Bool)

(assert (=> b!3192234 (=> (not res!1298602) (not e!1989837))))

(assert (=> b!3192234 (= res!1298602 (= (originalCharacters!5886 (h!41379 tokens!494)) (list!12769 (dynLambda!14477 (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))) (value!167862 (h!41379 tokens!494))))))))

(declare-fun b!3192235 () Bool)

(assert (=> b!3192235 (= e!1989837 (= (size!27089 (h!41379 tokens!494)) (size!27090 (originalCharacters!5886 (h!41379 tokens!494)))))))

(assert (= (and d!872877 res!1298601) b!3192234))

(assert (= (and b!3192234 res!1298602) b!3192235))

(declare-fun b_lambda!87047 () Bool)

(assert (=> (not b_lambda!87047) (not b!3192234)))

(assert (=> b!3192234 t!236274))

(declare-fun b_and!211647 () Bool)

(assert (= b_and!211641 (and (=> t!236274 result!198136) b_and!211647)))

(assert (=> b!3192234 t!236276))

(declare-fun b_and!211649 () Bool)

(assert (= b_and!211643 (and (=> t!236276 result!198138) b_and!211649)))

(assert (=> b!3192234 t!236278))

(declare-fun b_and!211651 () Bool)

(assert (= b_and!211645 (and (=> t!236278 result!198140) b_and!211651)))

(declare-fun m!3451577 () Bool)

(assert (=> d!872877 m!3451577))

(assert (=> b!3192234 m!3451575))

(assert (=> b!3192234 m!3451575))

(declare-fun m!3451579 () Bool)

(assert (=> b!3192234 m!3451579))

(declare-fun m!3451581 () Bool)

(assert (=> b!3192235 m!3451581))

(assert (=> b!3192039 d!872877))

(declare-fun d!872879 () Bool)

(declare-fun res!1298605 () Bool)

(declare-fun e!1989840 () Bool)

(assert (=> d!872879 (=> (not res!1298605) (not e!1989840))))

(declare-fun rulesValid!1902 (LexerInterface!4761 List!36082) Bool)

(assert (=> d!872879 (= res!1298605 (rulesValid!1902 thiss!18206 rules!2135))))

(assert (=> d!872879 (= (rulesInvariant!4158 thiss!18206 rules!2135) e!1989840)))

(declare-fun b!3192238 () Bool)

(declare-datatypes ((List!36084 0))(
  ( (Nil!35960) (Cons!35960 (h!41380 String!40344) (t!236303 List!36084)) )
))
(declare-fun noDuplicateTag!1898 (LexerInterface!4761 List!36082 List!36084) Bool)

(assert (=> b!3192238 (= e!1989840 (noDuplicateTag!1898 thiss!18206 rules!2135 Nil!35960))))

(assert (= (and d!872879 res!1298605) b!3192238))

(declare-fun m!3451583 () Bool)

(assert (=> d!872879 m!3451583))

(declare-fun m!3451585 () Bool)

(assert (=> b!3192238 m!3451585))

(assert (=> b!3192040 d!872879))

(declare-fun d!872881 () Bool)

(declare-fun lt!1075275 () Bool)

(declare-fun isEmpty!20064 (List!36083) Bool)

(assert (=> d!872881 (= lt!1075275 (isEmpty!20064 (list!12770 (_1!20796 (lex!2091 thiss!18206 rules!2135 (seqFromList!3416 lt!1075183))))))))

(declare-fun isEmpty!20065 (Conc!10720) Bool)

(assert (=> d!872881 (= lt!1075275 (isEmpty!20065 (c!535902 (_1!20796 (lex!2091 thiss!18206 rules!2135 (seqFromList!3416 lt!1075183))))))))

(assert (=> d!872881 (= (isEmpty!20057 (_1!20796 (lex!2091 thiss!18206 rules!2135 (seqFromList!3416 lt!1075183)))) lt!1075275)))

(declare-fun bs!540326 () Bool)

(assert (= bs!540326 d!872881))

(declare-fun m!3451587 () Bool)

(assert (=> bs!540326 m!3451587))

(assert (=> bs!540326 m!3451587))

(declare-fun m!3451589 () Bool)

(assert (=> bs!540326 m!3451589))

(declare-fun m!3451591 () Bool)

(assert (=> bs!540326 m!3451591))

(assert (=> b!3192051 d!872881))

(declare-fun b!3192249 () Bool)

(declare-fun e!1989848 () Bool)

(declare-fun lt!1075278 () tuple2!35324)

(assert (=> b!3192249 (= e!1989848 (= (_2!20796 lt!1075278) (seqFromList!3416 lt!1075183)))))

(declare-fun b!3192250 () Bool)

(declare-fun e!1989849 () Bool)

(assert (=> b!3192250 (= e!1989848 e!1989849)))

(declare-fun res!1298613 () Bool)

(declare-fun size!27095 (BalanceConc!21052) Int)

(assert (=> b!3192250 (= res!1298613 (< (size!27095 (_2!20796 lt!1075278)) (size!27095 (seqFromList!3416 lt!1075183))))))

(assert (=> b!3192250 (=> (not res!1298613) (not e!1989849))))

(declare-fun b!3192251 () Bool)

(declare-fun e!1989847 () Bool)

(declare-datatypes ((tuple2!35328 0))(
  ( (tuple2!35329 (_1!20798 List!36083) (_2!20798 List!36081)) )
))
(declare-fun lexList!1301 (LexerInterface!4761 List!36082 List!36081) tuple2!35328)

(assert (=> b!3192251 (= e!1989847 (= (list!12769 (_2!20796 lt!1075278)) (_2!20798 (lexList!1301 thiss!18206 rules!2135 (list!12769 (seqFromList!3416 lt!1075183))))))))

(declare-fun b!3192252 () Bool)

(declare-fun res!1298614 () Bool)

(assert (=> b!3192252 (=> (not res!1298614) (not e!1989847))))

(assert (=> b!3192252 (= res!1298614 (= (list!12770 (_1!20796 lt!1075278)) (_1!20798 (lexList!1301 thiss!18206 rules!2135 (list!12769 (seqFromList!3416 lt!1075183))))))))

(declare-fun d!872883 () Bool)

(assert (=> d!872883 e!1989847))

(declare-fun res!1298612 () Bool)

(assert (=> d!872883 (=> (not res!1298612) (not e!1989847))))

(assert (=> d!872883 (= res!1298612 e!1989848)))

(declare-fun c!535932 () Bool)

(assert (=> d!872883 (= c!535932 (> (size!27092 (_1!20796 lt!1075278)) 0))))

(declare-fun lexTailRecV2!921 (LexerInterface!4761 List!36082 BalanceConc!21052 BalanceConc!21052 BalanceConc!21052 BalanceConc!21054) tuple2!35324)

(assert (=> d!872883 (= lt!1075278 (lexTailRecV2!921 thiss!18206 rules!2135 (seqFromList!3416 lt!1075183) (BalanceConc!21053 Empty!10719) (seqFromList!3416 lt!1075183) (BalanceConc!21055 Empty!10720)))))

(assert (=> d!872883 (= (lex!2091 thiss!18206 rules!2135 (seqFromList!3416 lt!1075183)) lt!1075278)))

(declare-fun b!3192253 () Bool)

(assert (=> b!3192253 (= e!1989849 (not (isEmpty!20057 (_1!20796 lt!1075278))))))

(assert (= (and d!872883 c!535932) b!3192250))

(assert (= (and d!872883 (not c!535932)) b!3192249))

(assert (= (and b!3192250 res!1298613) b!3192253))

(assert (= (and d!872883 res!1298612) b!3192252))

(assert (= (and b!3192252 res!1298614) b!3192251))

(declare-fun m!3451593 () Bool)

(assert (=> b!3192251 m!3451593))

(assert (=> b!3192251 m!3451279))

(declare-fun m!3451595 () Bool)

(assert (=> b!3192251 m!3451595))

(assert (=> b!3192251 m!3451595))

(declare-fun m!3451597 () Bool)

(assert (=> b!3192251 m!3451597))

(declare-fun m!3451599 () Bool)

(assert (=> d!872883 m!3451599))

(assert (=> d!872883 m!3451279))

(assert (=> d!872883 m!3451279))

(declare-fun m!3451601 () Bool)

(assert (=> d!872883 m!3451601))

(declare-fun m!3451603 () Bool)

(assert (=> b!3192250 m!3451603))

(assert (=> b!3192250 m!3451279))

(declare-fun m!3451605 () Bool)

(assert (=> b!3192250 m!3451605))

(declare-fun m!3451607 () Bool)

(assert (=> b!3192252 m!3451607))

(assert (=> b!3192252 m!3451279))

(assert (=> b!3192252 m!3451595))

(assert (=> b!3192252 m!3451595))

(assert (=> b!3192252 m!3451597))

(declare-fun m!3451609 () Bool)

(assert (=> b!3192253 m!3451609))

(assert (=> b!3192051 d!872883))

(declare-fun d!872885 () Bool)

(declare-fun fromListB!1517 (List!36081) BalanceConc!21052)

(assert (=> d!872885 (= (seqFromList!3416 lt!1075183) (fromListB!1517 lt!1075183))))

(declare-fun bs!540327 () Bool)

(assert (= bs!540327 d!872885))

(declare-fun m!3451611 () Bool)

(assert (=> bs!540327 m!3451611))

(assert (=> b!3192051 d!872885))

(declare-fun b!3192254 () Bool)

(declare-fun e!1989851 () Bool)

(assert (=> b!3192254 (= e!1989851 (inv!15 (value!167862 separatorToken!241)))))

(declare-fun d!872887 () Bool)

(declare-fun c!535934 () Bool)

(assert (=> d!872887 (= c!535934 ((_ is IntegerValue!16206) (value!167862 separatorToken!241)))))

(declare-fun e!1989850 () Bool)

(assert (=> d!872887 (= (inv!21 (value!167862 separatorToken!241)) e!1989850)))

(declare-fun b!3192255 () Bool)

(declare-fun e!1989852 () Bool)

(assert (=> b!3192255 (= e!1989850 e!1989852)))

(declare-fun c!535933 () Bool)

(assert (=> b!3192255 (= c!535933 ((_ is IntegerValue!16207) (value!167862 separatorToken!241)))))

(declare-fun b!3192256 () Bool)

(declare-fun res!1298615 () Bool)

(assert (=> b!3192256 (=> res!1298615 e!1989851)))

(assert (=> b!3192256 (= res!1298615 (not ((_ is IntegerValue!16208) (value!167862 separatorToken!241))))))

(assert (=> b!3192256 (= e!1989852 e!1989851)))

(declare-fun b!3192257 () Bool)

(assert (=> b!3192257 (= e!1989852 (inv!17 (value!167862 separatorToken!241)))))

(declare-fun b!3192258 () Bool)

(assert (=> b!3192258 (= e!1989850 (inv!16 (value!167862 separatorToken!241)))))

(assert (= (and d!872887 c!535934) b!3192258))

(assert (= (and d!872887 (not c!535934)) b!3192255))

(assert (= (and b!3192255 c!535933) b!3192257))

(assert (= (and b!3192255 (not c!535933)) b!3192256))

(assert (= (and b!3192256 (not res!1298615)) b!3192254))

(declare-fun m!3451613 () Bool)

(assert (=> b!3192254 m!3451613))

(declare-fun m!3451615 () Bool)

(assert (=> b!3192257 m!3451615))

(declare-fun m!3451617 () Bool)

(assert (=> b!3192258 m!3451617))

(assert (=> b!3192052 d!872887))

(declare-fun d!872889 () Bool)

(declare-fun lt!1075281 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4858 (List!36083) (InoxSet Token!9710))

(assert (=> d!872889 (= lt!1075281 (select (content!4858 tokens!494) (h!41379 tokens!494)))))

(declare-fun e!1989857 () Bool)

(assert (=> d!872889 (= lt!1075281 e!1989857)))

(declare-fun res!1298621 () Bool)

(assert (=> d!872889 (=> (not res!1298621) (not e!1989857))))

(assert (=> d!872889 (= res!1298621 ((_ is Cons!35959) tokens!494))))

(assert (=> d!872889 (= (contains!6387 tokens!494 (h!41379 tokens!494)) lt!1075281)))

(declare-fun b!3192263 () Bool)

(declare-fun e!1989858 () Bool)

(assert (=> b!3192263 (= e!1989857 e!1989858)))

(declare-fun res!1298620 () Bool)

(assert (=> b!3192263 (=> res!1298620 e!1989858)))

(assert (=> b!3192263 (= res!1298620 (= (h!41379 tokens!494) (h!41379 tokens!494)))))

(declare-fun b!3192264 () Bool)

(assert (=> b!3192264 (= e!1989858 (contains!6387 (t!236250 tokens!494) (h!41379 tokens!494)))))

(assert (= (and d!872889 res!1298621) b!3192263))

(assert (= (and b!3192263 (not res!1298620)) b!3192264))

(declare-fun m!3451619 () Bool)

(assert (=> d!872889 m!3451619))

(declare-fun m!3451621 () Bool)

(assert (=> d!872889 m!3451621))

(declare-fun m!3451623 () Bool)

(assert (=> b!3192264 m!3451623))

(assert (=> b!3192042 d!872889))

(declare-fun d!872891 () Bool)

(declare-fun res!1298628 () Bool)

(declare-fun e!1989865 () Bool)

(assert (=> d!872891 (=> res!1298628 e!1989865)))

(assert (=> d!872891 (= res!1298628 (not ((_ is Cons!35958) rules!2135)))))

(assert (=> d!872891 (= (sepAndNonSepRulesDisjointChars!1366 rules!2135 rules!2135) e!1989865)))

(declare-fun b!3192269 () Bool)

(declare-fun e!1989866 () Bool)

(assert (=> b!3192269 (= e!1989865 e!1989866)))

(declare-fun res!1298629 () Bool)

(assert (=> b!3192269 (=> (not res!1298629) (not e!1989866))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!579 (Rule!10144 List!36082) Bool)

(assert (=> b!3192269 (= res!1298629 (ruleDisjointCharsFromAllFromOtherType!579 (h!41378 rules!2135) rules!2135))))

(declare-fun b!3192270 () Bool)

(assert (=> b!3192270 (= e!1989866 (sepAndNonSepRulesDisjointChars!1366 rules!2135 (t!236249 rules!2135)))))

(assert (= (and d!872891 (not res!1298628)) b!3192269))

(assert (= (and b!3192269 res!1298629) b!3192270))

(declare-fun m!3451625 () Bool)

(assert (=> b!3192269 m!3451625))

(declare-fun m!3451627 () Bool)

(assert (=> b!3192270 m!3451627))

(assert (=> b!3192053 d!872891))

(declare-fun b!3192284 () Bool)

(declare-fun e!1989869 () Bool)

(declare-fun tp!1009348 () Bool)

(declare-fun tp!1009347 () Bool)

(assert (=> b!3192284 (= e!1989869 (and tp!1009348 tp!1009347))))

(declare-fun b!3192286 () Bool)

(declare-fun tp!1009346 () Bool)

(declare-fun tp!1009349 () Bool)

(assert (=> b!3192286 (= e!1989869 (and tp!1009346 tp!1009349))))

(assert (=> b!3192059 (= tp!1009325 e!1989869)))

(declare-fun b!3192285 () Bool)

(declare-fun tp!1009350 () Bool)

(assert (=> b!3192285 (= e!1989869 tp!1009350)))

(declare-fun b!3192283 () Bool)

(declare-fun tp_is_empty!17271 () Bool)

(assert (=> b!3192283 (= e!1989869 tp_is_empty!17271)))

(assert (= (and b!3192059 ((_ is ElementMatch!9931) (regex!5172 (rule!7604 separatorToken!241)))) b!3192283))

(assert (= (and b!3192059 ((_ is Concat!15333) (regex!5172 (rule!7604 separatorToken!241)))) b!3192284))

(assert (= (and b!3192059 ((_ is Star!9931) (regex!5172 (rule!7604 separatorToken!241)))) b!3192285))

(assert (= (and b!3192059 ((_ is Union!9931) (regex!5172 (rule!7604 separatorToken!241)))) b!3192286))

(declare-fun b!3192288 () Bool)

(declare-fun e!1989870 () Bool)

(declare-fun tp!1009353 () Bool)

(declare-fun tp!1009352 () Bool)

(assert (=> b!3192288 (= e!1989870 (and tp!1009353 tp!1009352))))

(declare-fun b!3192290 () Bool)

(declare-fun tp!1009351 () Bool)

(declare-fun tp!1009354 () Bool)

(assert (=> b!3192290 (= e!1989870 (and tp!1009351 tp!1009354))))

(assert (=> b!3192054 (= tp!1009322 e!1989870)))

(declare-fun b!3192289 () Bool)

(declare-fun tp!1009355 () Bool)

(assert (=> b!3192289 (= e!1989870 tp!1009355)))

(declare-fun b!3192287 () Bool)

(assert (=> b!3192287 (= e!1989870 tp_is_empty!17271)))

(assert (= (and b!3192054 ((_ is ElementMatch!9931) (regex!5172 (h!41378 rules!2135)))) b!3192287))

(assert (= (and b!3192054 ((_ is Concat!15333) (regex!5172 (h!41378 rules!2135)))) b!3192288))

(assert (= (and b!3192054 ((_ is Star!9931) (regex!5172 (h!41378 rules!2135)))) b!3192289))

(assert (= (and b!3192054 ((_ is Union!9931) (regex!5172 (h!41378 rules!2135)))) b!3192290))

(declare-fun b!3192310 () Bool)

(declare-fun b_free!84613 () Bool)

(declare-fun b_next!85317 () Bool)

(assert (=> b!3192310 (= b_free!84613 (not b_next!85317))))

(declare-fun tp!1009365 () Bool)

(declare-fun b_and!211653 () Bool)

(assert (=> b!3192310 (= tp!1009365 b_and!211653)))

(declare-fun b_free!84615 () Bool)

(declare-fun b_next!85319 () Bool)

(assert (=> b!3192310 (= b_free!84615 (not b_next!85319))))

(declare-fun tb!155953 () Bool)

(declare-fun t!236282 () Bool)

(assert (=> (and b!3192310 (= (toChars!7095 (transformation!5172 (h!41378 (t!236249 rules!2135)))) (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241)))) t!236282) tb!155953))

(declare-fun result!198146 () Bool)

(assert (= result!198146 result!198128))

(assert (=> b!3192173 t!236282))

(declare-fun tb!155955 () Bool)

(declare-fun t!236284 () Bool)

(assert (=> (and b!3192310 (= (toChars!7095 (transformation!5172 (h!41378 (t!236249 rules!2135)))) (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494))))) t!236284) tb!155955))

(declare-fun result!198148 () Bool)

(assert (= result!198148 result!198136))

(assert (=> d!872875 t!236284))

(assert (=> b!3192234 t!236284))

(declare-fun b_and!211655 () Bool)

(declare-fun tp!1009366 () Bool)

(assert (=> b!3192310 (= tp!1009366 (and (=> t!236282 result!198146) (=> t!236284 result!198148) b_and!211655))))

(declare-fun e!1989886 () Bool)

(assert (=> b!3192310 (= e!1989886 (and tp!1009365 tp!1009366))))

(declare-fun e!1989887 () Bool)

(declare-fun tp!1009367 () Bool)

(declare-fun b!3192309 () Bool)

(assert (=> b!3192309 (= e!1989887 (and tp!1009367 (inv!48796 (tag!5690 (h!41378 (t!236249 rules!2135)))) (inv!48800 (transformation!5172 (h!41378 (t!236249 rules!2135)))) e!1989886))))

(declare-fun b!3192308 () Bool)

(declare-fun e!1989889 () Bool)

(declare-fun tp!1009364 () Bool)

(assert (=> b!3192308 (= e!1989889 (and e!1989887 tp!1009364))))

(assert (=> b!3192044 (= tp!1009328 e!1989889)))

(assert (= b!3192309 b!3192310))

(assert (= b!3192308 b!3192309))

(assert (= (and b!3192044 ((_ is Cons!35958) (t!236249 rules!2135))) b!3192308))

(declare-fun m!3451629 () Bool)

(assert (=> b!3192309 m!3451629))

(declare-fun m!3451631 () Bool)

(assert (=> b!3192309 m!3451631))

(declare-fun b!3192317 () Bool)

(declare-fun e!1989893 () Bool)

(declare-fun tp!1009370 () Bool)

(declare-fun tp!1009369 () Bool)

(assert (=> b!3192317 (= e!1989893 (and tp!1009370 tp!1009369))))

(declare-fun b!3192319 () Bool)

(declare-fun tp!1009368 () Bool)

(declare-fun tp!1009371 () Bool)

(assert (=> b!3192319 (= e!1989893 (and tp!1009368 tp!1009371))))

(assert (=> b!3192055 (= tp!1009320 e!1989893)))

(declare-fun b!3192318 () Bool)

(declare-fun tp!1009372 () Bool)

(assert (=> b!3192318 (= e!1989893 tp!1009372)))

(declare-fun b!3192316 () Bool)

(assert (=> b!3192316 (= e!1989893 tp_is_empty!17271)))

(assert (= (and b!3192055 ((_ is ElementMatch!9931) (regex!5172 (rule!7604 (h!41379 tokens!494))))) b!3192316))

(assert (= (and b!3192055 ((_ is Concat!15333) (regex!5172 (rule!7604 (h!41379 tokens!494))))) b!3192317))

(assert (= (and b!3192055 ((_ is Star!9931) (regex!5172 (rule!7604 (h!41379 tokens!494))))) b!3192318))

(assert (= (and b!3192055 ((_ is Union!9931) (regex!5172 (rule!7604 (h!41379 tokens!494))))) b!3192319))

(declare-fun b!3192333 () Bool)

(declare-fun b_free!84617 () Bool)

(declare-fun b_next!85321 () Bool)

(assert (=> b!3192333 (= b_free!84617 (not b_next!85321))))

(declare-fun tp!1009386 () Bool)

(declare-fun b_and!211657 () Bool)

(assert (=> b!3192333 (= tp!1009386 b_and!211657)))

(declare-fun b_free!84619 () Bool)

(declare-fun b_next!85323 () Bool)

(assert (=> b!3192333 (= b_free!84619 (not b_next!85323))))

(declare-fun tb!155957 () Bool)

(declare-fun t!236286 () Bool)

(assert (=> (and b!3192333 (= (toChars!7095 (transformation!5172 (rule!7604 (h!41379 (t!236250 tokens!494))))) (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241)))) t!236286) tb!155957))

(declare-fun result!198152 () Bool)

(assert (= result!198152 result!198128))

(assert (=> b!3192173 t!236286))

(declare-fun t!236288 () Bool)

(declare-fun tb!155959 () Bool)

(assert (=> (and b!3192333 (= (toChars!7095 (transformation!5172 (rule!7604 (h!41379 (t!236250 tokens!494))))) (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494))))) t!236288) tb!155959))

(declare-fun result!198154 () Bool)

(assert (= result!198154 result!198136))

(assert (=> d!872875 t!236288))

(assert (=> b!3192234 t!236288))

(declare-fun b_and!211659 () Bool)

(declare-fun tp!1009387 () Bool)

(assert (=> b!3192333 (= tp!1009387 (and (=> t!236286 result!198152) (=> t!236288 result!198154) b_and!211659))))

(declare-fun e!1989906 () Bool)

(assert (=> b!3192333 (= e!1989906 (and tp!1009386 tp!1009387))))

(declare-fun e!1989910 () Bool)

(assert (=> b!3192039 (= tp!1009316 e!1989910)))

(declare-fun e!1989907 () Bool)

(declare-fun b!3192330 () Bool)

(declare-fun tp!1009385 () Bool)

(assert (=> b!3192330 (= e!1989910 (and (inv!48799 (h!41379 (t!236250 tokens!494))) e!1989907 tp!1009385))))

(declare-fun b!3192332 () Bool)

(declare-fun e!1989909 () Bool)

(declare-fun tp!1009383 () Bool)

(assert (=> b!3192332 (= e!1989909 (and tp!1009383 (inv!48796 (tag!5690 (rule!7604 (h!41379 (t!236250 tokens!494))))) (inv!48800 (transformation!5172 (rule!7604 (h!41379 (t!236250 tokens!494))))) e!1989906))))

(declare-fun b!3192331 () Bool)

(declare-fun tp!1009384 () Bool)

(assert (=> b!3192331 (= e!1989907 (and (inv!21 (value!167862 (h!41379 (t!236250 tokens!494)))) e!1989909 tp!1009384))))

(assert (= b!3192332 b!3192333))

(assert (= b!3192331 b!3192332))

(assert (= b!3192330 b!3192331))

(assert (= (and b!3192039 ((_ is Cons!35959) (t!236250 tokens!494))) b!3192330))

(declare-fun m!3451643 () Bool)

(assert (=> b!3192330 m!3451643))

(declare-fun m!3451645 () Bool)

(assert (=> b!3192332 m!3451645))

(declare-fun m!3451647 () Bool)

(assert (=> b!3192332 m!3451647))

(declare-fun m!3451649 () Bool)

(assert (=> b!3192331 m!3451649))

(declare-fun b!3192341 () Bool)

(declare-fun e!1989916 () Bool)

(declare-fun tp!1009391 () Bool)

(assert (=> b!3192341 (= e!1989916 (and tp_is_empty!17271 tp!1009391))))

(assert (=> b!3192045 (= tp!1009327 e!1989916)))

(assert (= (and b!3192045 ((_ is Cons!35957) (originalCharacters!5886 (h!41379 tokens!494)))) b!3192341))

(declare-fun b!3192342 () Bool)

(declare-fun e!1989917 () Bool)

(declare-fun tp!1009392 () Bool)

(assert (=> b!3192342 (= e!1989917 (and tp_is_empty!17271 tp!1009392))))

(assert (=> b!3192052 (= tp!1009321 e!1989917)))

(assert (= (and b!3192052 ((_ is Cons!35957) (originalCharacters!5886 separatorToken!241))) b!3192342))

(declare-fun b_lambda!87051 () Bool)

(assert (= b_lambda!87041 (or (and b!3192333 b_free!84619 (= (toChars!7095 (transformation!5172 (rule!7604 (h!41379 (t!236250 tokens!494))))) (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241))))) (and b!3192058 b_free!84607 (= (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))) (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241))))) (and b!3192037 b_free!84603) (and b!3192041 b_free!84611 (= (toChars!7095 (transformation!5172 (h!41378 rules!2135))) (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241))))) (and b!3192310 b_free!84615 (= (toChars!7095 (transformation!5172 (h!41378 (t!236249 rules!2135)))) (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241))))) b_lambda!87051)))

(declare-fun b_lambda!87053 () Bool)

(assert (= b_lambda!87045 (or (and b!3192058 b_free!84607) (and b!3192333 b_free!84619 (= (toChars!7095 (transformation!5172 (rule!7604 (h!41379 (t!236250 tokens!494))))) (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))))) (and b!3192037 b_free!84603 (= (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241))) (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))))) (and b!3192310 b_free!84615 (= (toChars!7095 (transformation!5172 (h!41378 (t!236249 rules!2135)))) (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))))) (and b!3192041 b_free!84611 (= (toChars!7095 (transformation!5172 (h!41378 rules!2135))) (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))))) b_lambda!87053)))

(declare-fun b_lambda!87055 () Bool)

(assert (= b_lambda!87043 (or b!3192057 b_lambda!87055)))

(declare-fun bs!540330 () Bool)

(declare-fun d!872899 () Bool)

(assert (= bs!540330 (and d!872899 b!3192057)))

(assert (=> bs!540330 (= (dynLambda!14479 lambda!116811 (h!41379 tokens!494)) (not (isSeparator!5172 (rule!7604 (h!41379 tokens!494)))))))

(assert (=> b!3192227 d!872899))

(declare-fun b_lambda!87057 () Bool)

(assert (= b_lambda!87047 (or (and b!3192058 b_free!84607) (and b!3192333 b_free!84619 (= (toChars!7095 (transformation!5172 (rule!7604 (h!41379 (t!236250 tokens!494))))) (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))))) (and b!3192037 b_free!84603 (= (toChars!7095 (transformation!5172 (rule!7604 separatorToken!241))) (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))))) (and b!3192310 b_free!84615 (= (toChars!7095 (transformation!5172 (h!41378 (t!236249 rules!2135)))) (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))))) (and b!3192041 b_free!84611 (= (toChars!7095 (transformation!5172 (h!41378 rules!2135))) (toChars!7095 (transformation!5172 (rule!7604 (h!41379 tokens!494)))))) b_lambda!87057)))

(check-sat (not b!3192204) (not b_next!85311) (not d!872855) (not b!3192318) (not b!3192152) (not d!872837) (not b!3192228) (not b!3192238) b_and!211615 (not d!872881) (not b!3192258) (not b!3192288) (not b!3192180) (not d!872877) b_and!211611 (not b!3192269) (not b!3192270) (not b!3192213) (not d!872803) (not b!3192230) (not b_next!85309) (not d!872847) (not d!872843) (not b!3192203) b_and!211649 (not b_lambda!87057) (not d!872857) (not b!3192251) (not d!872869) (not b!3192168) (not d!872885) b_and!211655 (not b!3192252) (not b_next!85319) (not b!3192332) (not b!3192191) (not b!3192289) (not b!3192308) (not b!3192342) (not b!3192254) (not b!3192231) (not b_next!85317) (not b!3192284) (not b!3192341) (not b!3192317) b_and!211651 (not b_next!85323) (not b!3192229) b_and!211659 (not b!3192194) (not d!872873) (not d!872875) (not b!3192319) (not b_next!85313) (not b!3192233) (not d!872879) (not d!872883) (not b!3192161) (not b!3192211) (not b!3192174) (not b!3192235) (not tb!155941) (not d!872889) (not b!3192285) (not b!3192330) b_and!211657 (not b!3192253) (not b!3192264) (not d!872841) (not b!3192286) (not b!3192221) (not b_next!85305) (not b!3192173) (not b!3192250) (not b_next!85315) (not tb!155947) (not b_lambda!87055) (not b_lambda!87053) b_and!211647 (not b!3192216) (not d!872865) (not b!3192202) tp_is_empty!17271 (not d!872851) (not b_lambda!87051) (not b!3192195) (not b!3192234) (not b_next!85307) (not b!3192331) (not b!3192179) (not b!3192290) b_and!211619 (not b!3192309) (not b!3192257) (not b_next!85321) (not d!872853) b_and!211653 (not b!3192232) (not d!872859))
(check-sat (not b_next!85311) b_and!211615 b_and!211611 (not b_next!85309) b_and!211649 (not b_next!85317) (not b_next!85313) b_and!211657 (not b_next!85305) (not b_next!85315) b_and!211647 (not b_next!85307) b_and!211619 b_and!211655 (not b_next!85319) b_and!211651 b_and!211659 (not b_next!85323) (not b_next!85321) b_and!211653)
