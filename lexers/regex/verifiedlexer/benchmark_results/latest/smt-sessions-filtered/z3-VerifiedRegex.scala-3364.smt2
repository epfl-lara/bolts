; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!190508 () Bool)

(assert start!190508)

(declare-fun b!1900236 () Bool)

(declare-fun b_free!53369 () Bool)

(declare-fun b_next!54073 () Bool)

(assert (=> b!1900236 (= b_free!53369 (not b_next!54073))))

(declare-fun tp!542742 () Bool)

(declare-fun b_and!147051 () Bool)

(assert (=> b!1900236 (= tp!542742 b_and!147051)))

(declare-fun b_free!53371 () Bool)

(declare-fun b_next!54075 () Bool)

(assert (=> b!1900236 (= b_free!53371 (not b_next!54075))))

(declare-fun tp!542744 () Bool)

(declare-fun b_and!147053 () Bool)

(assert (=> b!1900236 (= tp!542744 b_and!147053)))

(declare-fun b!1900235 () Bool)

(declare-fun b_free!53373 () Bool)

(declare-fun b_next!54077 () Bool)

(assert (=> b!1900235 (= b_free!53373 (not b_next!54077))))

(declare-fun tp!542750 () Bool)

(declare-fun b_and!147055 () Bool)

(assert (=> b!1900235 (= tp!542750 b_and!147055)))

(declare-fun b_free!53375 () Bool)

(declare-fun b_next!54079 () Bool)

(assert (=> b!1900235 (= b_free!53375 (not b_next!54079))))

(declare-fun tp!542748 () Bool)

(declare-fun b_and!147057 () Bool)

(assert (=> b!1900235 (= tp!542748 b_and!147057)))

(declare-fun b!1900240 () Bool)

(declare-fun b_free!53377 () Bool)

(declare-fun b_next!54081 () Bool)

(assert (=> b!1900240 (= b_free!53377 (not b_next!54081))))

(declare-fun tp!542741 () Bool)

(declare-fun b_and!147059 () Bool)

(assert (=> b!1900240 (= tp!542741 b_and!147059)))

(declare-fun b_free!53379 () Bool)

(declare-fun b_next!54083 () Bool)

(assert (=> b!1900240 (= b_free!53379 (not b_next!54083))))

(declare-fun tp!542738 () Bool)

(declare-fun b_and!147061 () Bool)

(assert (=> b!1900240 (= tp!542738 b_and!147061)))

(declare-fun b!1900229 () Bool)

(declare-fun res!848401 () Bool)

(declare-fun e!1213654 () Bool)

(assert (=> b!1900229 (=> (not res!848401) (not e!1213654))))

(declare-datatypes ((List!21468 0))(
  ( (Nil!21386) (Cons!21386 (h!26787 (_ BitVec 16)) (t!176739 List!21468)) )
))
(declare-datatypes ((TokenValue!3940 0))(
  ( (FloatLiteralValue!7880 (text!28025 List!21468)) (TokenValueExt!3939 (__x!13378 Int)) (Broken!19700 (value!119979 List!21468)) (Object!4021) (End!3940) (Def!3940) (Underscore!3940) (Match!3940) (Else!3940) (Error!3940) (Case!3940) (If!3940) (Extends!3940) (Abstract!3940) (Class!3940) (Val!3940) (DelimiterValue!7880 (del!4000 List!21468)) (KeywordValue!3946 (value!119980 List!21468)) (CommentValue!7880 (value!119981 List!21468)) (WhitespaceValue!7880 (value!119982 List!21468)) (IndentationValue!3940 (value!119983 List!21468)) (String!24817) (Int32!3940) (Broken!19701 (value!119984 List!21468)) (Boolean!3941) (Unit!35711) (OperatorValue!3943 (op!4000 List!21468)) (IdentifierValue!7880 (value!119985 List!21468)) (IdentifierValue!7881 (value!119986 List!21468)) (WhitespaceValue!7881 (value!119987 List!21468)) (True!7880) (False!7880) (Broken!19702 (value!119988 List!21468)) (Broken!19703 (value!119989 List!21468)) (True!7881) (RightBrace!3940) (RightBracket!3940) (Colon!3940) (Null!3940) (Comma!3940) (LeftBracket!3940) (False!7881) (LeftBrace!3940) (ImaginaryLiteralValue!3940 (text!28026 List!21468)) (StringLiteralValue!11820 (value!119990 List!21468)) (EOFValue!3940 (value!119991 List!21468)) (IdentValue!3940 (value!119992 List!21468)) (DelimiterValue!7881 (value!119993 List!21468)) (DedentValue!3940 (value!119994 List!21468)) (NewLineValue!3940 (value!119995 List!21468)) (IntegerValue!11820 (value!119996 (_ BitVec 32)) (text!28027 List!21468)) (IntegerValue!11821 (value!119997 Int) (text!28028 List!21468)) (Times!3940) (Or!3940) (Equal!3940) (Minus!3940) (Broken!19704 (value!119998 List!21468)) (And!3940) (Div!3940) (LessEqual!3940) (Mod!3940) (Concat!9169) (Not!3940) (Plus!3940) (SpaceValue!3940 (value!119999 List!21468)) (IntegerValue!11822 (value!120000 Int) (text!28029 List!21468)) (StringLiteralValue!11821 (text!28030 List!21468)) (FloatLiteralValue!7881 (text!28031 List!21468)) (BytesLiteralValue!3940 (value!120001 List!21468)) (CommentValue!7881 (value!120002 List!21468)) (StringLiteralValue!11822 (value!120003 List!21468)) (ErrorTokenValue!3940 (msg!4001 List!21468)) )
))
(declare-datatypes ((String!24818 0))(
  ( (String!24819 (value!120004 String)) )
))
(declare-datatypes ((C!10604 0))(
  ( (C!10605 (val!6254 Int)) )
))
(declare-datatypes ((List!21469 0))(
  ( (Nil!21387) (Cons!21387 (h!26788 C!10604) (t!176740 List!21469)) )
))
(declare-datatypes ((Regex!5229 0))(
  ( (ElementMatch!5229 (c!309643 C!10604)) (Concat!9170 (regOne!10970 Regex!5229) (regTwo!10970 Regex!5229)) (EmptyExpr!5229) (Star!5229 (reg!5558 Regex!5229)) (EmptyLang!5229) (Union!5229 (regOne!10971 Regex!5229) (regTwo!10971 Regex!5229)) )
))
(declare-datatypes ((IArray!14235 0))(
  ( (IArray!14236 (innerList!7175 List!21469)) )
))
(declare-datatypes ((Conc!7115 0))(
  ( (Node!7115 (left!17119 Conc!7115) (right!17449 Conc!7115) (csize!14460 Int) (cheight!7326 Int)) (Leaf!10480 (xs!10009 IArray!14235) (csize!14461 Int)) (Empty!7115) )
))
(declare-datatypes ((BalanceConc!14046 0))(
  ( (BalanceConc!14047 (c!309644 Conc!7115)) )
))
(declare-datatypes ((TokenValueInjection!7464 0))(
  ( (TokenValueInjection!7465 (toValue!5421 Int) (toChars!5280 Int)) )
))
(declare-datatypes ((Rule!7408 0))(
  ( (Rule!7409 (regex!3804 Regex!5229) (tag!4228 String!24818) (isSeparator!3804 Bool) (transformation!3804 TokenValueInjection!7464)) )
))
(declare-datatypes ((Token!7160 0))(
  ( (Token!7161 (value!120005 TokenValue!3940) (rule!5997 Rule!7408) (size!16894 Int) (originalCharacters!4611 List!21469)) )
))
(declare-fun separatorToken!354 () Token!7160)

(declare-datatypes ((List!21470 0))(
  ( (Nil!21388) (Cons!21388 (h!26789 Rule!7408) (t!176741 List!21470)) )
))
(declare-fun rules!3198 () List!21470)

(declare-datatypes ((LexerInterface!3417 0))(
  ( (LexerInterfaceExt!3414 (__x!13379 Int)) (Lexer!3415) )
))
(declare-fun thiss!23328 () LexerInterface!3417)

(declare-fun rulesProduceIndividualToken!1589 (LexerInterface!3417 List!21470 Token!7160) Bool)

(assert (=> b!1900229 (= res!848401 (rulesProduceIndividualToken!1589 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1900230 () Bool)

(declare-fun e!1213640 () Bool)

(declare-fun e!1213650 () Bool)

(declare-fun tp!542746 () Bool)

(assert (=> b!1900230 (= e!1213640 (and e!1213650 tp!542746))))

(declare-fun e!1213642 () Bool)

(declare-fun e!1213652 () Bool)

(declare-fun tp!542743 () Bool)

(declare-fun b!1900231 () Bool)

(declare-fun inv!28479 (String!24818) Bool)

(declare-fun inv!28482 (TokenValueInjection!7464) Bool)

(assert (=> b!1900231 (= e!1213642 (and tp!542743 (inv!28479 (tag!4228 (rule!5997 separatorToken!354))) (inv!28482 (transformation!3804 (rule!5997 separatorToken!354))) e!1213652))))

(declare-fun b!1900232 () Bool)

(declare-fun e!1213645 () Bool)

(declare-fun e!1213639 () Bool)

(assert (=> b!1900232 (= e!1213645 e!1213639)))

(declare-fun res!848405 () Bool)

(assert (=> b!1900232 (=> (not res!848405) (not e!1213639))))

(declare-fun lt!726730 () Rule!7408)

(declare-fun lt!726732 () List!21469)

(declare-fun matchR!2515 (Regex!5229 List!21469) Bool)

(assert (=> b!1900232 (= res!848405 (matchR!2515 (regex!3804 lt!726730) lt!726732))))

(declare-datatypes ((Option!4313 0))(
  ( (None!4312) (Some!4312 (v!26341 Rule!7408)) )
))
(declare-fun lt!726735 () Option!4313)

(declare-fun get!6622 (Option!4313) Rule!7408)

(assert (=> b!1900232 (= lt!726730 (get!6622 lt!726735))))

(declare-fun b!1900233 () Bool)

(declare-fun res!848410 () Bool)

(assert (=> b!1900233 (=> (not res!848410) (not e!1213654))))

(declare-datatypes ((List!21471 0))(
  ( (Nil!21389) (Cons!21389 (h!26790 Token!7160) (t!176742 List!21471)) )
))
(declare-fun tokens!598 () List!21471)

(get-info :version)

(assert (=> b!1900233 (= res!848410 ((_ is Cons!21389) tokens!598))))

(declare-fun tp!542747 () Bool)

(declare-fun e!1213633 () Bool)

(declare-fun b!1900234 () Bool)

(declare-fun inv!21 (TokenValue!3940) Bool)

(assert (=> b!1900234 (= e!1213633 (and (inv!21 (value!120005 separatorToken!354)) e!1213642 tp!542747))))

(declare-fun e!1213649 () Bool)

(assert (=> b!1900235 (= e!1213649 (and tp!542750 tp!542748))))

(declare-fun e!1213641 () Bool)

(assert (=> b!1900236 (= e!1213641 (and tp!542742 tp!542744))))

(declare-fun b!1900237 () Bool)

(declare-fun e!1213651 () Bool)

(declare-fun rulesValidInductive!1290 (LexerInterface!3417 List!21470) Bool)

(assert (=> b!1900237 (= e!1213651 (rulesValidInductive!1290 thiss!23328 rules!3198))))

(declare-fun lt!726739 () List!21469)

(declare-fun printWithSeparatorTokenWhenNeededList!460 (LexerInterface!3417 List!21470 List!21471 Token!7160) List!21469)

(assert (=> b!1900237 (= lt!726739 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun tp!542740 () Bool)

(declare-fun b!1900238 () Bool)

(assert (=> b!1900238 (= e!1213650 (and tp!542740 (inv!28479 (tag!4228 (h!26789 rules!3198))) (inv!28482 (transformation!3804 (h!26789 rules!3198))) e!1213641))))

(declare-fun b!1900239 () Bool)

(assert (=> b!1900239 (= e!1213639 (= (rule!5997 (h!26790 tokens!598)) lt!726730))))

(assert (=> b!1900240 (= e!1213652 (and tp!542741 tp!542738))))

(declare-fun b!1900241 () Bool)

(declare-fun tp!542749 () Bool)

(declare-fun e!1213644 () Bool)

(assert (=> b!1900241 (= e!1213644 (and tp!542749 (inv!28479 (tag!4228 (rule!5997 (h!26790 tokens!598)))) (inv!28482 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) e!1213649))))

(declare-fun b!1900242 () Bool)

(declare-fun res!848412 () Bool)

(assert (=> b!1900242 (=> (not res!848412) (not e!1213654))))

(declare-fun lambda!74261 () Int)

(declare-fun forall!4484 (List!21471 Int) Bool)

(assert (=> b!1900242 (= res!848412 (forall!4484 tokens!598 lambda!74261))))

(declare-fun b!1900243 () Bool)

(declare-fun res!848399 () Bool)

(assert (=> b!1900243 (=> res!848399 e!1213651)))

(declare-fun isEmpty!13115 (List!21471) Bool)

(assert (=> b!1900243 (= res!848399 (isEmpty!13115 tokens!598))))

(declare-fun b!1900244 () Bool)

(declare-fun e!1213646 () Bool)

(declare-fun tp!542745 () Bool)

(declare-fun e!1213637 () Bool)

(declare-fun inv!28483 (Token!7160) Bool)

(assert (=> b!1900244 (= e!1213637 (and (inv!28483 (h!26790 tokens!598)) e!1213646 tp!542745))))

(declare-fun b!1900245 () Bool)

(declare-fun res!848400 () Bool)

(assert (=> b!1900245 (=> (not res!848400) (not e!1213654))))

(declare-fun isEmpty!13116 (List!21470) Bool)

(assert (=> b!1900245 (= res!848400 (not (isEmpty!13116 rules!3198)))))

(declare-fun b!1900246 () Bool)

(declare-fun res!848397 () Bool)

(assert (=> b!1900246 (=> (not res!848397) (not e!1213654))))

(declare-fun rulesProduceEachTokenIndividuallyList!1148 (LexerInterface!3417 List!21470 List!21471) Bool)

(assert (=> b!1900246 (= res!848397 (rulesProduceEachTokenIndividuallyList!1148 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1900248 () Bool)

(declare-fun tp!542739 () Bool)

(assert (=> b!1900248 (= e!1213646 (and (inv!21 (value!120005 (h!26790 tokens!598))) e!1213644 tp!542739))))

(declare-fun b!1900247 () Bool)

(assert (=> b!1900247 (= e!1213654 (not e!1213651))))

(declare-fun res!848402 () Bool)

(assert (=> b!1900247 (=> res!848402 e!1213651)))

(declare-datatypes ((tuple2!20144 0))(
  ( (tuple2!20145 (_1!11541 Token!7160) (_2!11541 List!21469)) )
))
(declare-datatypes ((Option!4314 0))(
  ( (None!4313) (Some!4313 (v!26342 tuple2!20144)) )
))
(declare-fun lt!726742 () Option!4314)

(assert (=> b!1900247 (= res!848402 (or (not ((_ is Some!4313) lt!726742)) (not (= (_1!11541 (v!26342 lt!726742)) (h!26790 tokens!598)))))))

(declare-fun maxPrefix!1863 (LexerInterface!3417 List!21470 List!21469) Option!4314)

(declare-fun ++!5747 (List!21469 List!21469) List!21469)

(assert (=> b!1900247 (= lt!726742 (maxPrefix!1863 thiss!23328 rules!3198 (++!5747 lt!726732 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354))))))

(assert (=> b!1900247 e!1213645))

(declare-fun res!848408 () Bool)

(assert (=> b!1900247 (=> (not res!848408) (not e!1213645))))

(declare-fun isDefined!3611 (Option!4313) Bool)

(assert (=> b!1900247 (= res!848408 (isDefined!3611 lt!726735))))

(declare-fun getRuleFromTag!647 (LexerInterface!3417 List!21470 String!24818) Option!4313)

(assert (=> b!1900247 (= lt!726735 (getRuleFromTag!647 thiss!23328 rules!3198 (tag!4228 (rule!5997 (h!26790 tokens!598)))))))

(declare-datatypes ((Unit!35712 0))(
  ( (Unit!35713) )
))
(declare-fun lt!726729 () Unit!35712)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!647 (LexerInterface!3417 List!21470 List!21469 Token!7160) Unit!35712)

(assert (=> b!1900247 (= lt!726729 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!647 thiss!23328 rules!3198 lt!726732 (h!26790 tokens!598)))))

(declare-fun e!1213638 () Bool)

(assert (=> b!1900247 e!1213638))

(declare-fun res!848409 () Bool)

(assert (=> b!1900247 (=> (not res!848409) (not e!1213638))))

(declare-fun lt!726737 () Option!4314)

(declare-fun isDefined!3612 (Option!4314) Bool)

(assert (=> b!1900247 (= res!848409 (isDefined!3612 lt!726737))))

(assert (=> b!1900247 (= lt!726737 (maxPrefix!1863 thiss!23328 rules!3198 lt!726732))))

(declare-fun lt!726731 () BalanceConc!14046)

(declare-fun list!8692 (BalanceConc!14046) List!21469)

(assert (=> b!1900247 (= lt!726732 (list!8692 lt!726731))))

(declare-fun e!1213635 () Bool)

(assert (=> b!1900247 e!1213635))

(declare-fun res!848404 () Bool)

(assert (=> b!1900247 (=> (not res!848404) (not e!1213635))))

(declare-fun lt!726736 () Option!4313)

(assert (=> b!1900247 (= res!848404 (isDefined!3611 lt!726736))))

(assert (=> b!1900247 (= lt!726736 (getRuleFromTag!647 thiss!23328 rules!3198 (tag!4228 (rule!5997 separatorToken!354))))))

(declare-fun lt!726734 () Unit!35712)

(declare-fun lt!726740 () List!21469)

(assert (=> b!1900247 (= lt!726734 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!647 thiss!23328 rules!3198 lt!726740 separatorToken!354))))

(declare-fun charsOf!2360 (Token!7160) BalanceConc!14046)

(assert (=> b!1900247 (= lt!726740 (list!8692 (charsOf!2360 separatorToken!354)))))

(declare-fun lt!726738 () Unit!35712)

(declare-fun lemmaEqSameImage!512 (TokenValueInjection!7464 BalanceConc!14046 BalanceConc!14046) Unit!35712)

(declare-fun seqFromList!2676 (List!21469) BalanceConc!14046)

(assert (=> b!1900247 (= lt!726738 (lemmaEqSameImage!512 (transformation!3804 (rule!5997 (h!26790 tokens!598))) lt!726731 (seqFromList!2676 (originalCharacters!4611 (h!26790 tokens!598)))))))

(declare-fun lt!726741 () Unit!35712)

(declare-fun lemmaSemiInverse!783 (TokenValueInjection!7464 BalanceConc!14046) Unit!35712)

(assert (=> b!1900247 (= lt!726741 (lemmaSemiInverse!783 (transformation!3804 (rule!5997 (h!26790 tokens!598))) lt!726731))))

(assert (=> b!1900247 (= lt!726731 (charsOf!2360 (h!26790 tokens!598)))))

(declare-fun res!848403 () Bool)

(assert (=> start!190508 (=> (not res!848403) (not e!1213654))))

(assert (=> start!190508 (= res!848403 ((_ is Lexer!3415) thiss!23328))))

(assert (=> start!190508 e!1213654))

(assert (=> start!190508 true))

(assert (=> start!190508 e!1213640))

(assert (=> start!190508 e!1213637))

(assert (=> start!190508 (and (inv!28483 separatorToken!354) e!1213633)))

(declare-fun b!1900249 () Bool)

(declare-fun e!1213647 () Bool)

(assert (=> b!1900249 (= e!1213635 e!1213647)))

(declare-fun res!848406 () Bool)

(assert (=> b!1900249 (=> (not res!848406) (not e!1213647))))

(declare-fun lt!726733 () Rule!7408)

(assert (=> b!1900249 (= res!848406 (matchR!2515 (regex!3804 lt!726733) lt!726740))))

(assert (=> b!1900249 (= lt!726733 (get!6622 lt!726736))))

(declare-fun b!1900250 () Bool)

(assert (=> b!1900250 (= e!1213647 (= (rule!5997 separatorToken!354) lt!726733))))

(declare-fun b!1900251 () Bool)

(declare-fun res!848398 () Bool)

(assert (=> b!1900251 (=> (not res!848398) (not e!1213654))))

(declare-fun rulesInvariant!3024 (LexerInterface!3417 List!21470) Bool)

(assert (=> b!1900251 (= res!848398 (rulesInvariant!3024 thiss!23328 rules!3198))))

(declare-fun b!1900252 () Bool)

(declare-fun res!848407 () Bool)

(assert (=> b!1900252 (=> (not res!848407) (not e!1213654))))

(declare-fun sepAndNonSepRulesDisjointChars!902 (List!21470 List!21470) Bool)

(assert (=> b!1900252 (= res!848407 (sepAndNonSepRulesDisjointChars!902 rules!3198 rules!3198))))

(declare-fun b!1900253 () Bool)

(declare-fun get!6623 (Option!4314) tuple2!20144)

(assert (=> b!1900253 (= e!1213638 (= (_1!11541 (get!6623 lt!726737)) (h!26790 tokens!598)))))

(declare-fun b!1900254 () Bool)

(declare-fun res!848411 () Bool)

(assert (=> b!1900254 (=> (not res!848411) (not e!1213654))))

(assert (=> b!1900254 (= res!848411 (isSeparator!3804 (rule!5997 separatorToken!354)))))

(assert (= (and start!190508 res!848403) b!1900245))

(assert (= (and b!1900245 res!848400) b!1900251))

(assert (= (and b!1900251 res!848398) b!1900246))

(assert (= (and b!1900246 res!848397) b!1900229))

(assert (= (and b!1900229 res!848401) b!1900254))

(assert (= (and b!1900254 res!848411) b!1900242))

(assert (= (and b!1900242 res!848412) b!1900252))

(assert (= (and b!1900252 res!848407) b!1900233))

(assert (= (and b!1900233 res!848410) b!1900247))

(assert (= (and b!1900247 res!848404) b!1900249))

(assert (= (and b!1900249 res!848406) b!1900250))

(assert (= (and b!1900247 res!848409) b!1900253))

(assert (= (and b!1900247 res!848408) b!1900232))

(assert (= (and b!1900232 res!848405) b!1900239))

(assert (= (and b!1900247 (not res!848402)) b!1900243))

(assert (= (and b!1900243 (not res!848399)) b!1900237))

(assert (= b!1900238 b!1900236))

(assert (= b!1900230 b!1900238))

(assert (= (and start!190508 ((_ is Cons!21388) rules!3198)) b!1900230))

(assert (= b!1900241 b!1900235))

(assert (= b!1900248 b!1900241))

(assert (= b!1900244 b!1900248))

(assert (= (and start!190508 ((_ is Cons!21389) tokens!598)) b!1900244))

(assert (= b!1900231 b!1900240))

(assert (= b!1900234 b!1900231))

(assert (= start!190508 b!1900234))

(declare-fun m!2331343 () Bool)

(assert (=> b!1900249 m!2331343))

(declare-fun m!2331345 () Bool)

(assert (=> b!1900249 m!2331345))

(declare-fun m!2331347 () Bool)

(assert (=> b!1900244 m!2331347))

(declare-fun m!2331349 () Bool)

(assert (=> b!1900242 m!2331349))

(declare-fun m!2331351 () Bool)

(assert (=> b!1900237 m!2331351))

(declare-fun m!2331353 () Bool)

(assert (=> b!1900237 m!2331353))

(declare-fun m!2331355 () Bool)

(assert (=> b!1900234 m!2331355))

(declare-fun m!2331357 () Bool)

(assert (=> b!1900243 m!2331357))

(declare-fun m!2331359 () Bool)

(assert (=> b!1900248 m!2331359))

(declare-fun m!2331361 () Bool)

(assert (=> b!1900241 m!2331361))

(declare-fun m!2331363 () Bool)

(assert (=> b!1900241 m!2331363))

(declare-fun m!2331365 () Bool)

(assert (=> b!1900251 m!2331365))

(declare-fun m!2331367 () Bool)

(assert (=> b!1900238 m!2331367))

(declare-fun m!2331369 () Bool)

(assert (=> b!1900238 m!2331369))

(declare-fun m!2331371 () Bool)

(assert (=> b!1900232 m!2331371))

(declare-fun m!2331373 () Bool)

(assert (=> b!1900232 m!2331373))

(declare-fun m!2331375 () Bool)

(assert (=> b!1900252 m!2331375))

(declare-fun m!2331377 () Bool)

(assert (=> b!1900245 m!2331377))

(declare-fun m!2331379 () Bool)

(assert (=> b!1900246 m!2331379))

(declare-fun m!2331381 () Bool)

(assert (=> start!190508 m!2331381))

(declare-fun m!2331383 () Bool)

(assert (=> b!1900231 m!2331383))

(declare-fun m!2331385 () Bool)

(assert (=> b!1900231 m!2331385))

(declare-fun m!2331387 () Bool)

(assert (=> b!1900229 m!2331387))

(declare-fun m!2331389 () Bool)

(assert (=> b!1900247 m!2331389))

(declare-fun m!2331391 () Bool)

(assert (=> b!1900247 m!2331391))

(declare-fun m!2331393 () Bool)

(assert (=> b!1900247 m!2331393))

(declare-fun m!2331395 () Bool)

(assert (=> b!1900247 m!2331395))

(declare-fun m!2331397 () Bool)

(assert (=> b!1900247 m!2331397))

(declare-fun m!2331399 () Bool)

(assert (=> b!1900247 m!2331399))

(declare-fun m!2331401 () Bool)

(assert (=> b!1900247 m!2331401))

(declare-fun m!2331403 () Bool)

(assert (=> b!1900247 m!2331403))

(declare-fun m!2331405 () Bool)

(assert (=> b!1900247 m!2331405))

(declare-fun m!2331407 () Bool)

(assert (=> b!1900247 m!2331407))

(declare-fun m!2331409 () Bool)

(assert (=> b!1900247 m!2331409))

(declare-fun m!2331411 () Bool)

(assert (=> b!1900247 m!2331411))

(declare-fun m!2331413 () Bool)

(assert (=> b!1900247 m!2331413))

(declare-fun m!2331415 () Bool)

(assert (=> b!1900247 m!2331415))

(assert (=> b!1900247 m!2331405))

(assert (=> b!1900247 m!2331413))

(assert (=> b!1900247 m!2331407))

(declare-fun m!2331417 () Bool)

(assert (=> b!1900247 m!2331417))

(declare-fun m!2331419 () Bool)

(assert (=> b!1900247 m!2331419))

(assert (=> b!1900247 m!2331389))

(declare-fun m!2331421 () Bool)

(assert (=> b!1900247 m!2331421))

(declare-fun m!2331423 () Bool)

(assert (=> b!1900247 m!2331423))

(declare-fun m!2331425 () Bool)

(assert (=> b!1900253 m!2331425))

(check-sat (not b_next!54083) (not b!1900232) (not b!1900247) (not b!1900252) (not b_next!54079) (not b_next!54075) (not b!1900237) (not b!1900238) (not b!1900244) (not b!1900243) (not b!1900241) (not b!1900242) b_and!147055 (not b_next!54077) (not b!1900231) (not b_next!54073) b_and!147059 (not b!1900230) b_and!147061 (not b!1900246) b_and!147051 (not b!1900234) (not b!1900251) (not start!190508) (not b_next!54081) (not b!1900249) b_and!147053 (not b!1900229) (not b!1900248) b_and!147057 (not b!1900253) (not b!1900245))
(check-sat (not b_next!54083) (not b_next!54073) (not b_next!54079) (not b_next!54075) b_and!147059 b_and!147061 b_and!147051 b_and!147057 b_and!147055 (not b_next!54077) (not b_next!54081) b_and!147053)
(get-model)

(declare-fun d!581351 () Bool)

(assert (=> d!581351 true))

(declare-fun lt!726766 () Bool)

(declare-fun lambda!74270 () Int)

(declare-fun forall!4485 (List!21470 Int) Bool)

(assert (=> d!581351 (= lt!726766 (forall!4485 rules!3198 lambda!74270))))

(declare-fun e!1213708 () Bool)

(assert (=> d!581351 (= lt!726766 e!1213708)))

(declare-fun res!848455 () Bool)

(assert (=> d!581351 (=> res!848455 e!1213708)))

(assert (=> d!581351 (= res!848455 (not ((_ is Cons!21388) rules!3198)))))

(assert (=> d!581351 (= (rulesValidInductive!1290 thiss!23328 rules!3198) lt!726766)))

(declare-fun b!1900327 () Bool)

(declare-fun e!1213709 () Bool)

(assert (=> b!1900327 (= e!1213708 e!1213709)))

(declare-fun res!848456 () Bool)

(assert (=> b!1900327 (=> (not res!848456) (not e!1213709))))

(declare-fun ruleValid!1150 (LexerInterface!3417 Rule!7408) Bool)

(assert (=> b!1900327 (= res!848456 (ruleValid!1150 thiss!23328 (h!26789 rules!3198)))))

(declare-fun b!1900328 () Bool)

(assert (=> b!1900328 (= e!1213709 (rulesValidInductive!1290 thiss!23328 (t!176741 rules!3198)))))

(assert (= (and d!581351 (not res!848455)) b!1900327))

(assert (= (and b!1900327 res!848456) b!1900328))

(declare-fun m!2331489 () Bool)

(assert (=> d!581351 m!2331489))

(declare-fun m!2331491 () Bool)

(assert (=> b!1900327 m!2331491))

(declare-fun m!2331493 () Bool)

(assert (=> b!1900328 m!2331493))

(assert (=> b!1900237 d!581351))

(declare-fun bs!413560 () Bool)

(declare-fun b!1900382 () Bool)

(assert (= bs!413560 (and b!1900382 b!1900242)))

(declare-fun lambda!74273 () Int)

(assert (=> bs!413560 (not (= lambda!74273 lambda!74261))))

(declare-fun b!1900398 () Bool)

(declare-fun e!1213742 () Bool)

(assert (=> b!1900398 (= e!1213742 true)))

(declare-fun b!1900397 () Bool)

(declare-fun e!1213741 () Bool)

(assert (=> b!1900397 (= e!1213741 e!1213742)))

(declare-fun b!1900396 () Bool)

(declare-fun e!1213740 () Bool)

(assert (=> b!1900396 (= e!1213740 e!1213741)))

(assert (=> b!1900382 e!1213740))

(assert (= b!1900397 b!1900398))

(assert (= b!1900396 b!1900397))

(assert (= (and b!1900382 ((_ is Cons!21388) rules!3198)) b!1900396))

(declare-fun order!13511 () Int)

(declare-fun order!13509 () Int)

(declare-fun dynLambda!10406 (Int Int) Int)

(declare-fun dynLambda!10407 (Int Int) Int)

(assert (=> b!1900398 (< (dynLambda!10406 order!13509 (toValue!5421 (transformation!3804 (h!26789 rules!3198)))) (dynLambda!10407 order!13511 lambda!74273))))

(declare-fun order!13513 () Int)

(declare-fun dynLambda!10408 (Int Int) Int)

(assert (=> b!1900398 (< (dynLambda!10408 order!13513 (toChars!5280 (transformation!3804 (h!26789 rules!3198)))) (dynLambda!10407 order!13511 lambda!74273))))

(assert (=> b!1900382 true))

(declare-fun b!1900376 () Bool)

(declare-fun e!1213729 () List!21469)

(declare-fun call!117053 () List!21469)

(assert (=> b!1900376 (= e!1213729 call!117053)))

(declare-fun b!1900377 () Bool)

(declare-fun e!1213730 () List!21469)

(assert (=> b!1900377 (= e!1213730 Nil!21387)))

(declare-fun b!1900378 () Bool)

(declare-fun e!1213731 () List!21469)

(declare-fun call!117055 () List!21469)

(declare-fun lt!726799 () List!21469)

(assert (=> b!1900378 (= e!1213731 (++!5747 call!117055 lt!726799))))

(declare-fun b!1900379 () Bool)

(declare-fun c!309665 () Bool)

(declare-fun lt!726796 () Option!4314)

(assert (=> b!1900379 (= c!309665 (and ((_ is Some!4313) lt!726796) (not (= (_1!11541 (v!26342 lt!726796)) (h!26790 tokens!598)))))))

(declare-fun e!1213728 () List!21469)

(assert (=> b!1900379 (= e!1213728 e!1213731)))

(declare-fun bm!117047 () Bool)

(declare-fun call!117056 () BalanceConc!14046)

(declare-fun call!117052 () BalanceConc!14046)

(assert (=> bm!117047 (= call!117056 call!117052)))

(declare-fun bm!117048 () Bool)

(declare-fun call!117054 () List!21469)

(assert (=> bm!117048 (= call!117054 call!117053)))

(declare-fun c!309666 () Bool)

(declare-fun bm!117049 () Bool)

(assert (=> bm!117049 (= call!117052 (charsOf!2360 (ite c!309666 (h!26790 tokens!598) (ite c!309665 separatorToken!354 (h!26790 tokens!598)))))))

(declare-fun b!1900380 () Bool)

(assert (=> b!1900380 (= e!1213731 Nil!21387)))

(declare-datatypes ((IArray!14239 0))(
  ( (IArray!14240 (innerList!7177 List!21471)) )
))
(declare-datatypes ((Conc!7117 0))(
  ( (Node!7117 (left!17125 Conc!7117) (right!17455 Conc!7117) (csize!14464 Int) (cheight!7328 Int)) (Leaf!10482 (xs!10011 IArray!14239) (csize!14465 Int)) (Empty!7117) )
))
(declare-datatypes ((BalanceConc!14050 0))(
  ( (BalanceConc!14051 (c!309750 Conc!7117)) )
))
(declare-fun print!1445 (LexerInterface!3417 BalanceConc!14050) BalanceConc!14046)

(declare-fun singletonSeq!1843 (Token!7160) BalanceConc!14050)

(declare-fun printTailRec!952 (LexerInterface!3417 BalanceConc!14050 Int BalanceConc!14046) BalanceConc!14046)

(assert (=> b!1900380 (= (print!1445 thiss!23328 (singletonSeq!1843 (h!26790 tokens!598))) (printTailRec!952 thiss!23328 (singletonSeq!1843 (h!26790 tokens!598)) 0 (BalanceConc!14047 Empty!7115)))))

(declare-fun lt!726797 () Unit!35712)

(declare-fun Unit!35716 () Unit!35712)

(assert (=> b!1900380 (= lt!726797 Unit!35716)))

(declare-fun lt!726795 () Unit!35712)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!714 (LexerInterface!3417 List!21470 List!21469 List!21469) Unit!35712)

(assert (=> b!1900380 (= lt!726795 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!714 thiss!23328 rules!3198 call!117054 lt!726799))))

(assert (=> b!1900380 false))

(declare-fun lt!726798 () Unit!35712)

(declare-fun Unit!35717 () Unit!35712)

(assert (=> b!1900380 (= lt!726798 Unit!35717)))

(declare-fun b!1900381 () Bool)

(assert (=> b!1900381 (= e!1213728 call!117055)))

(assert (=> b!1900382 (= e!1213730 e!1213728)))

(declare-fun lt!726800 () Unit!35712)

(declare-fun forallContained!684 (List!21471 Int Token!7160) Unit!35712)

(assert (=> b!1900382 (= lt!726800 (forallContained!684 tokens!598 lambda!74273 (h!26790 tokens!598)))))

(assert (=> b!1900382 (= lt!726799 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354))))

(assert (=> b!1900382 (= lt!726796 (maxPrefix!1863 thiss!23328 rules!3198 (++!5747 (list!8692 (charsOf!2360 (h!26790 tokens!598))) lt!726799)))))

(assert (=> b!1900382 (= c!309666 (and ((_ is Some!4313) lt!726796) (= (_1!11541 (v!26342 lt!726796)) (h!26790 tokens!598))))))

(declare-fun b!1900383 () Bool)

(assert (=> b!1900383 (= e!1213729 (list!8692 (charsOf!2360 (h!26790 tokens!598))))))

(declare-fun bm!117051 () Bool)

(assert (=> bm!117051 (= call!117053 (list!8692 (ite c!309666 call!117052 call!117056)))))

(declare-fun bm!117050 () Bool)

(declare-fun c!309663 () Bool)

(assert (=> bm!117050 (= c!309663 c!309666)))

(assert (=> bm!117050 (= call!117055 (++!5747 e!1213729 (ite c!309666 lt!726799 call!117054)))))

(declare-fun d!581373 () Bool)

(declare-fun c!309664 () Bool)

(assert (=> d!581373 (= c!309664 ((_ is Cons!21389) tokens!598))))

(assert (=> d!581373 (= (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 tokens!598 separatorToken!354) e!1213730)))

(assert (= (and d!581373 c!309664) b!1900382))

(assert (= (and d!581373 (not c!309664)) b!1900377))

(assert (= (and b!1900382 c!309666) b!1900381))

(assert (= (and b!1900382 (not c!309666)) b!1900379))

(assert (= (and b!1900379 c!309665) b!1900378))

(assert (= (and b!1900379 (not c!309665)) b!1900380))

(assert (= (or b!1900378 b!1900380) bm!117047))

(assert (= (or b!1900378 b!1900380) bm!117048))

(assert (= (or b!1900381 bm!117047) bm!117049))

(assert (= (or b!1900381 bm!117048) bm!117051))

(assert (= (or b!1900381 b!1900378) bm!117050))

(assert (= (and bm!117050 c!309663) b!1900376))

(assert (= (and bm!117050 (not c!309663)) b!1900383))

(declare-fun m!2331537 () Bool)

(assert (=> b!1900378 m!2331537))

(declare-fun m!2331539 () Bool)

(assert (=> bm!117051 m!2331539))

(declare-fun m!2331541 () Bool)

(assert (=> b!1900382 m!2331541))

(declare-fun m!2331543 () Bool)

(assert (=> b!1900382 m!2331543))

(assert (=> b!1900382 m!2331411))

(assert (=> b!1900382 m!2331411))

(declare-fun m!2331545 () Bool)

(assert (=> b!1900382 m!2331545))

(declare-fun m!2331547 () Bool)

(assert (=> b!1900382 m!2331547))

(assert (=> b!1900382 m!2331405))

(assert (=> b!1900382 m!2331545))

(assert (=> b!1900382 m!2331541))

(declare-fun m!2331549 () Bool)

(assert (=> bm!117049 m!2331549))

(declare-fun m!2331551 () Bool)

(assert (=> b!1900380 m!2331551))

(assert (=> b!1900380 m!2331551))

(declare-fun m!2331553 () Bool)

(assert (=> b!1900380 m!2331553))

(assert (=> b!1900380 m!2331551))

(declare-fun m!2331555 () Bool)

(assert (=> b!1900380 m!2331555))

(declare-fun m!2331557 () Bool)

(assert (=> b!1900380 m!2331557))

(declare-fun m!2331559 () Bool)

(assert (=> bm!117050 m!2331559))

(assert (=> b!1900383 m!2331411))

(assert (=> b!1900383 m!2331411))

(assert (=> b!1900383 m!2331545))

(assert (=> b!1900237 d!581373))

(declare-fun b!1900424 () Bool)

(declare-fun res!848482 () Bool)

(declare-fun e!1213757 () Bool)

(assert (=> b!1900424 (=> res!848482 e!1213757)))

(assert (=> b!1900424 (= res!848482 (not ((_ is IntegerValue!11822) (value!120005 (h!26790 tokens!598)))))))

(declare-fun e!1213755 () Bool)

(assert (=> b!1900424 (= e!1213755 e!1213757)))

(declare-fun b!1900425 () Bool)

(declare-fun e!1213756 () Bool)

(declare-fun inv!16 (TokenValue!3940) Bool)

(assert (=> b!1900425 (= e!1213756 (inv!16 (value!120005 (h!26790 tokens!598))))))

(declare-fun b!1900426 () Bool)

(declare-fun inv!17 (TokenValue!3940) Bool)

(assert (=> b!1900426 (= e!1213755 (inv!17 (value!120005 (h!26790 tokens!598))))))

(declare-fun b!1900427 () Bool)

(assert (=> b!1900427 (= e!1213756 e!1213755)))

(declare-fun c!309680 () Bool)

(assert (=> b!1900427 (= c!309680 ((_ is IntegerValue!11821) (value!120005 (h!26790 tokens!598))))))

(declare-fun b!1900423 () Bool)

(declare-fun inv!15 (TokenValue!3940) Bool)

(assert (=> b!1900423 (= e!1213757 (inv!15 (value!120005 (h!26790 tokens!598))))))

(declare-fun d!581379 () Bool)

(declare-fun c!309679 () Bool)

(assert (=> d!581379 (= c!309679 ((_ is IntegerValue!11820) (value!120005 (h!26790 tokens!598))))))

(assert (=> d!581379 (= (inv!21 (value!120005 (h!26790 tokens!598))) e!1213756)))

(assert (= (and d!581379 c!309679) b!1900425))

(assert (= (and d!581379 (not c!309679)) b!1900427))

(assert (= (and b!1900427 c!309680) b!1900426))

(assert (= (and b!1900427 (not c!309680)) b!1900424))

(assert (= (and b!1900424 (not res!848482)) b!1900423))

(declare-fun m!2331561 () Bool)

(assert (=> b!1900425 m!2331561))

(declare-fun m!2331563 () Bool)

(assert (=> b!1900426 m!2331563))

(declare-fun m!2331565 () Bool)

(assert (=> b!1900423 m!2331565))

(assert (=> b!1900248 d!581379))

(declare-fun d!581381 () Bool)

(declare-fun e!1213770 () Bool)

(assert (=> d!581381 e!1213770))

(declare-fun res!848494 () Bool)

(assert (=> d!581381 (=> (not res!848494) (not e!1213770))))

(assert (=> d!581381 (= res!848494 (isDefined!3611 (getRuleFromTag!647 thiss!23328 rules!3198 (tag!4228 (rule!5997 (h!26790 tokens!598))))))))

(declare-fun lt!726826 () Unit!35712)

(declare-fun choose!11846 (LexerInterface!3417 List!21470 List!21469 Token!7160) Unit!35712)

(assert (=> d!581381 (= lt!726826 (choose!11846 thiss!23328 rules!3198 lt!726732 (h!26790 tokens!598)))))

(assert (=> d!581381 (rulesInvariant!3024 thiss!23328 rules!3198)))

(assert (=> d!581381 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!647 thiss!23328 rules!3198 lt!726732 (h!26790 tokens!598)) lt!726826)))

(declare-fun b!1900452 () Bool)

(declare-fun res!848495 () Bool)

(assert (=> b!1900452 (=> (not res!848495) (not e!1213770))))

(assert (=> b!1900452 (= res!848495 (matchR!2515 (regex!3804 (get!6622 (getRuleFromTag!647 thiss!23328 rules!3198 (tag!4228 (rule!5997 (h!26790 tokens!598)))))) (list!8692 (charsOf!2360 (h!26790 tokens!598)))))))

(declare-fun b!1900453 () Bool)

(assert (=> b!1900453 (= e!1213770 (= (rule!5997 (h!26790 tokens!598)) (get!6622 (getRuleFromTag!647 thiss!23328 rules!3198 (tag!4228 (rule!5997 (h!26790 tokens!598)))))))))

(assert (= (and d!581381 res!848494) b!1900452))

(assert (= (and b!1900452 res!848495) b!1900453))

(assert (=> d!581381 m!2331419))

(assert (=> d!581381 m!2331419))

(declare-fun m!2331611 () Bool)

(assert (=> d!581381 m!2331611))

(declare-fun m!2331615 () Bool)

(assert (=> d!581381 m!2331615))

(assert (=> d!581381 m!2331365))

(assert (=> b!1900452 m!2331411))

(assert (=> b!1900452 m!2331545))

(declare-fun m!2331617 () Bool)

(assert (=> b!1900452 m!2331617))

(assert (=> b!1900452 m!2331411))

(assert (=> b!1900452 m!2331545))

(assert (=> b!1900452 m!2331419))

(declare-fun m!2331621 () Bool)

(assert (=> b!1900452 m!2331621))

(assert (=> b!1900452 m!2331419))

(assert (=> b!1900453 m!2331419))

(assert (=> b!1900453 m!2331419))

(assert (=> b!1900453 m!2331621))

(assert (=> b!1900247 d!581381))

(declare-fun d!581385 () Bool)

(declare-fun isEmpty!13120 (Option!4313) Bool)

(assert (=> d!581385 (= (isDefined!3611 lt!726736) (not (isEmpty!13120 lt!726736)))))

(declare-fun bs!413563 () Bool)

(assert (= bs!413563 d!581385))

(declare-fun m!2331635 () Bool)

(assert (=> bs!413563 m!2331635))

(assert (=> b!1900247 d!581385))

(declare-fun d!581389 () Bool)

(assert (=> d!581389 (= (isDefined!3611 lt!726735) (not (isEmpty!13120 lt!726735)))))

(declare-fun bs!413564 () Bool)

(assert (= bs!413564 d!581389))

(declare-fun m!2331637 () Bool)

(assert (=> bs!413564 m!2331637))

(assert (=> b!1900247 d!581389))

(declare-fun d!581391 () Bool)

(declare-fun isEmpty!13121 (Option!4314) Bool)

(assert (=> d!581391 (= (isDefined!3612 lt!726737) (not (isEmpty!13121 lt!726737)))))

(declare-fun bs!413566 () Bool)

(assert (= bs!413566 d!581391))

(declare-fun m!2331641 () Bool)

(assert (=> bs!413566 m!2331641))

(assert (=> b!1900247 d!581391))

(declare-fun b!1900529 () Bool)

(declare-fun res!848545 () Bool)

(declare-fun e!1213811 () Bool)

(assert (=> b!1900529 (=> (not res!848545) (not e!1213811))))

(declare-fun lt!726850 () Option!4314)

(declare-fun size!16896 (List!21469) Int)

(assert (=> b!1900529 (= res!848545 (< (size!16896 (_2!11541 (get!6623 lt!726850))) (size!16896 lt!726732)))))

(declare-fun b!1900530 () Bool)

(declare-fun res!848540 () Bool)

(assert (=> b!1900530 (=> (not res!848540) (not e!1213811))))

(assert (=> b!1900530 (= res!848540 (matchR!2515 (regex!3804 (rule!5997 (_1!11541 (get!6623 lt!726850)))) (list!8692 (charsOf!2360 (_1!11541 (get!6623 lt!726850))))))))

(declare-fun b!1900531 () Bool)

(declare-fun res!848543 () Bool)

(assert (=> b!1900531 (=> (not res!848543) (not e!1213811))))

(declare-fun apply!5614 (TokenValueInjection!7464 BalanceConc!14046) TokenValue!3940)

(assert (=> b!1900531 (= res!848543 (= (value!120005 (_1!11541 (get!6623 lt!726850))) (apply!5614 (transformation!3804 (rule!5997 (_1!11541 (get!6623 lt!726850)))) (seqFromList!2676 (originalCharacters!4611 (_1!11541 (get!6623 lt!726850)))))))))

(declare-fun b!1900532 () Bool)

(declare-fun e!1213813 () Bool)

(assert (=> b!1900532 (= e!1213813 e!1213811)))

(declare-fun res!848544 () Bool)

(assert (=> b!1900532 (=> (not res!848544) (not e!1213811))))

(assert (=> b!1900532 (= res!848544 (isDefined!3612 lt!726850))))

(declare-fun b!1900533 () Bool)

(declare-fun e!1213812 () Option!4314)

(declare-fun lt!726852 () Option!4314)

(declare-fun lt!726849 () Option!4314)

(assert (=> b!1900533 (= e!1213812 (ite (and ((_ is None!4313) lt!726852) ((_ is None!4313) lt!726849)) None!4313 (ite ((_ is None!4313) lt!726849) lt!726852 (ite ((_ is None!4313) lt!726852) lt!726849 (ite (>= (size!16894 (_1!11541 (v!26342 lt!726852))) (size!16894 (_1!11541 (v!26342 lt!726849)))) lt!726852 lt!726849)))))))

(declare-fun call!117077 () Option!4314)

(assert (=> b!1900533 (= lt!726852 call!117077)))

(assert (=> b!1900533 (= lt!726849 (maxPrefix!1863 thiss!23328 (t!176741 rules!3198) lt!726732))))

(declare-fun b!1900534 () Bool)

(declare-fun contains!3843 (List!21470 Rule!7408) Bool)

(assert (=> b!1900534 (= e!1213811 (contains!3843 rules!3198 (rule!5997 (_1!11541 (get!6623 lt!726850)))))))

(declare-fun b!1900535 () Bool)

(assert (=> b!1900535 (= e!1213812 call!117077)))

(declare-fun d!581395 () Bool)

(assert (=> d!581395 e!1213813))

(declare-fun res!848542 () Bool)

(assert (=> d!581395 (=> res!848542 e!1213813)))

(assert (=> d!581395 (= res!848542 (isEmpty!13121 lt!726850))))

(assert (=> d!581395 (= lt!726850 e!1213812)))

(declare-fun c!309699 () Bool)

(assert (=> d!581395 (= c!309699 (and ((_ is Cons!21388) rules!3198) ((_ is Nil!21388) (t!176741 rules!3198))))))

(declare-fun lt!726853 () Unit!35712)

(declare-fun lt!726851 () Unit!35712)

(assert (=> d!581395 (= lt!726853 lt!726851)))

(declare-fun isPrefix!1915 (List!21469 List!21469) Bool)

(assert (=> d!581395 (isPrefix!1915 lt!726732 lt!726732)))

(declare-fun lemmaIsPrefixRefl!1233 (List!21469 List!21469) Unit!35712)

(assert (=> d!581395 (= lt!726851 (lemmaIsPrefixRefl!1233 lt!726732 lt!726732))))

(assert (=> d!581395 (rulesValidInductive!1290 thiss!23328 rules!3198)))

(assert (=> d!581395 (= (maxPrefix!1863 thiss!23328 rules!3198 lt!726732) lt!726850)))

(declare-fun b!1900536 () Bool)

(declare-fun res!848541 () Bool)

(assert (=> b!1900536 (=> (not res!848541) (not e!1213811))))

(assert (=> b!1900536 (= res!848541 (= (++!5747 (list!8692 (charsOf!2360 (_1!11541 (get!6623 lt!726850)))) (_2!11541 (get!6623 lt!726850))) lt!726732))))

(declare-fun bm!117072 () Bool)

(declare-fun maxPrefixOneRule!1197 (LexerInterface!3417 Rule!7408 List!21469) Option!4314)

(assert (=> bm!117072 (= call!117077 (maxPrefixOneRule!1197 thiss!23328 (h!26789 rules!3198) lt!726732))))

(declare-fun b!1900537 () Bool)

(declare-fun res!848539 () Bool)

(assert (=> b!1900537 (=> (not res!848539) (not e!1213811))))

(assert (=> b!1900537 (= res!848539 (= (list!8692 (charsOf!2360 (_1!11541 (get!6623 lt!726850)))) (originalCharacters!4611 (_1!11541 (get!6623 lt!726850)))))))

(assert (= (and d!581395 c!309699) b!1900535))

(assert (= (and d!581395 (not c!309699)) b!1900533))

(assert (= (or b!1900535 b!1900533) bm!117072))

(assert (= (and d!581395 (not res!848542)) b!1900532))

(assert (= (and b!1900532 res!848544) b!1900537))

(assert (= (and b!1900537 res!848539) b!1900529))

(assert (= (and b!1900529 res!848545) b!1900536))

(assert (= (and b!1900536 res!848541) b!1900531))

(assert (= (and b!1900531 res!848543) b!1900530))

(assert (= (and b!1900530 res!848540) b!1900534))

(declare-fun m!2331689 () Bool)

(assert (=> d!581395 m!2331689))

(declare-fun m!2331691 () Bool)

(assert (=> d!581395 m!2331691))

(declare-fun m!2331693 () Bool)

(assert (=> d!581395 m!2331693))

(assert (=> d!581395 m!2331351))

(declare-fun m!2331695 () Bool)

(assert (=> b!1900537 m!2331695))

(declare-fun m!2331697 () Bool)

(assert (=> b!1900537 m!2331697))

(assert (=> b!1900537 m!2331697))

(declare-fun m!2331699 () Bool)

(assert (=> b!1900537 m!2331699))

(assert (=> b!1900534 m!2331695))

(declare-fun m!2331701 () Bool)

(assert (=> b!1900534 m!2331701))

(assert (=> b!1900536 m!2331695))

(assert (=> b!1900536 m!2331697))

(assert (=> b!1900536 m!2331697))

(assert (=> b!1900536 m!2331699))

(assert (=> b!1900536 m!2331699))

(declare-fun m!2331703 () Bool)

(assert (=> b!1900536 m!2331703))

(assert (=> b!1900531 m!2331695))

(declare-fun m!2331705 () Bool)

(assert (=> b!1900531 m!2331705))

(assert (=> b!1900531 m!2331705))

(declare-fun m!2331707 () Bool)

(assert (=> b!1900531 m!2331707))

(assert (=> b!1900529 m!2331695))

(declare-fun m!2331709 () Bool)

(assert (=> b!1900529 m!2331709))

(declare-fun m!2331711 () Bool)

(assert (=> b!1900529 m!2331711))

(declare-fun m!2331713 () Bool)

(assert (=> b!1900533 m!2331713))

(assert (=> b!1900530 m!2331695))

(assert (=> b!1900530 m!2331697))

(assert (=> b!1900530 m!2331697))

(assert (=> b!1900530 m!2331699))

(assert (=> b!1900530 m!2331699))

(declare-fun m!2331725 () Bool)

(assert (=> b!1900530 m!2331725))

(declare-fun m!2331729 () Bool)

(assert (=> b!1900532 m!2331729))

(declare-fun m!2331733 () Bool)

(assert (=> bm!117072 m!2331733))

(assert (=> b!1900247 d!581395))

(declare-fun b!1900552 () Bool)

(declare-fun res!848560 () Bool)

(declare-fun e!1213821 () Bool)

(assert (=> b!1900552 (=> (not res!848560) (not e!1213821))))

(declare-fun lt!726856 () Option!4314)

(assert (=> b!1900552 (= res!848560 (< (size!16896 (_2!11541 (get!6623 lt!726856))) (size!16896 (++!5747 lt!726732 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354)))))))

(declare-fun b!1900553 () Bool)

(declare-fun res!848555 () Bool)

(assert (=> b!1900553 (=> (not res!848555) (not e!1213821))))

(assert (=> b!1900553 (= res!848555 (matchR!2515 (regex!3804 (rule!5997 (_1!11541 (get!6623 lt!726856)))) (list!8692 (charsOf!2360 (_1!11541 (get!6623 lt!726856))))))))

(declare-fun b!1900554 () Bool)

(declare-fun res!848558 () Bool)

(assert (=> b!1900554 (=> (not res!848558) (not e!1213821))))

(assert (=> b!1900554 (= res!848558 (= (value!120005 (_1!11541 (get!6623 lt!726856))) (apply!5614 (transformation!3804 (rule!5997 (_1!11541 (get!6623 lt!726856)))) (seqFromList!2676 (originalCharacters!4611 (_1!11541 (get!6623 lt!726856)))))))))

(declare-fun b!1900555 () Bool)

(declare-fun e!1213823 () Bool)

(assert (=> b!1900555 (= e!1213823 e!1213821)))

(declare-fun res!848559 () Bool)

(assert (=> b!1900555 (=> (not res!848559) (not e!1213821))))

(assert (=> b!1900555 (= res!848559 (isDefined!3612 lt!726856))))

(declare-fun b!1900556 () Bool)

(declare-fun e!1213822 () Option!4314)

(declare-fun lt!726858 () Option!4314)

(declare-fun lt!726855 () Option!4314)

(assert (=> b!1900556 (= e!1213822 (ite (and ((_ is None!4313) lt!726858) ((_ is None!4313) lt!726855)) None!4313 (ite ((_ is None!4313) lt!726855) lt!726858 (ite ((_ is None!4313) lt!726858) lt!726855 (ite (>= (size!16894 (_1!11541 (v!26342 lt!726858))) (size!16894 (_1!11541 (v!26342 lt!726855)))) lt!726858 lt!726855)))))))

(declare-fun call!117079 () Option!4314)

(assert (=> b!1900556 (= lt!726858 call!117079)))

(assert (=> b!1900556 (= lt!726855 (maxPrefix!1863 thiss!23328 (t!176741 rules!3198) (++!5747 lt!726732 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354))))))

(declare-fun b!1900557 () Bool)

(assert (=> b!1900557 (= e!1213821 (contains!3843 rules!3198 (rule!5997 (_1!11541 (get!6623 lt!726856)))))))

(declare-fun b!1900558 () Bool)

(assert (=> b!1900558 (= e!1213822 call!117079)))

(declare-fun d!581413 () Bool)

(assert (=> d!581413 e!1213823))

(declare-fun res!848557 () Bool)

(assert (=> d!581413 (=> res!848557 e!1213823)))

(assert (=> d!581413 (= res!848557 (isEmpty!13121 lt!726856))))

(assert (=> d!581413 (= lt!726856 e!1213822)))

(declare-fun c!309703 () Bool)

(assert (=> d!581413 (= c!309703 (and ((_ is Cons!21388) rules!3198) ((_ is Nil!21388) (t!176741 rules!3198))))))

(declare-fun lt!726859 () Unit!35712)

(declare-fun lt!726857 () Unit!35712)

(assert (=> d!581413 (= lt!726859 lt!726857)))

(assert (=> d!581413 (isPrefix!1915 (++!5747 lt!726732 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354)) (++!5747 lt!726732 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354)))))

(assert (=> d!581413 (= lt!726857 (lemmaIsPrefixRefl!1233 (++!5747 lt!726732 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354)) (++!5747 lt!726732 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354))))))

(assert (=> d!581413 (rulesValidInductive!1290 thiss!23328 rules!3198)))

(assert (=> d!581413 (= (maxPrefix!1863 thiss!23328 rules!3198 (++!5747 lt!726732 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354))) lt!726856)))

(declare-fun b!1900559 () Bool)

(declare-fun res!848556 () Bool)

(assert (=> b!1900559 (=> (not res!848556) (not e!1213821))))

(assert (=> b!1900559 (= res!848556 (= (++!5747 (list!8692 (charsOf!2360 (_1!11541 (get!6623 lt!726856)))) (_2!11541 (get!6623 lt!726856))) (++!5747 lt!726732 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354))))))

(declare-fun bm!117074 () Bool)

(assert (=> bm!117074 (= call!117079 (maxPrefixOneRule!1197 thiss!23328 (h!26789 rules!3198) (++!5747 lt!726732 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354))))))

(declare-fun b!1900560 () Bool)

(declare-fun res!848554 () Bool)

(assert (=> b!1900560 (=> (not res!848554) (not e!1213821))))

(assert (=> b!1900560 (= res!848554 (= (list!8692 (charsOf!2360 (_1!11541 (get!6623 lt!726856)))) (originalCharacters!4611 (_1!11541 (get!6623 lt!726856)))))))

(assert (= (and d!581413 c!309703) b!1900558))

(assert (= (and d!581413 (not c!309703)) b!1900556))

(assert (= (or b!1900558 b!1900556) bm!117074))

(assert (= (and d!581413 (not res!848557)) b!1900555))

(assert (= (and b!1900555 res!848559) b!1900560))

(assert (= (and b!1900560 res!848554) b!1900552))

(assert (= (and b!1900552 res!848560) b!1900559))

(assert (= (and b!1900559 res!848556) b!1900554))

(assert (= (and b!1900554 res!848558) b!1900553))

(assert (= (and b!1900553 res!848555) b!1900557))

(declare-fun m!2331737 () Bool)

(assert (=> d!581413 m!2331737))

(assert (=> d!581413 m!2331413))

(assert (=> d!581413 m!2331413))

(declare-fun m!2331739 () Bool)

(assert (=> d!581413 m!2331739))

(assert (=> d!581413 m!2331413))

(assert (=> d!581413 m!2331413))

(declare-fun m!2331741 () Bool)

(assert (=> d!581413 m!2331741))

(assert (=> d!581413 m!2331351))

(declare-fun m!2331743 () Bool)

(assert (=> b!1900560 m!2331743))

(declare-fun m!2331745 () Bool)

(assert (=> b!1900560 m!2331745))

(assert (=> b!1900560 m!2331745))

(declare-fun m!2331747 () Bool)

(assert (=> b!1900560 m!2331747))

(assert (=> b!1900557 m!2331743))

(declare-fun m!2331749 () Bool)

(assert (=> b!1900557 m!2331749))

(assert (=> b!1900559 m!2331743))

(assert (=> b!1900559 m!2331745))

(assert (=> b!1900559 m!2331745))

(assert (=> b!1900559 m!2331747))

(assert (=> b!1900559 m!2331747))

(declare-fun m!2331751 () Bool)

(assert (=> b!1900559 m!2331751))

(assert (=> b!1900554 m!2331743))

(declare-fun m!2331753 () Bool)

(assert (=> b!1900554 m!2331753))

(assert (=> b!1900554 m!2331753))

(declare-fun m!2331755 () Bool)

(assert (=> b!1900554 m!2331755))

(assert (=> b!1900552 m!2331743))

(declare-fun m!2331757 () Bool)

(assert (=> b!1900552 m!2331757))

(assert (=> b!1900552 m!2331413))

(declare-fun m!2331759 () Bool)

(assert (=> b!1900552 m!2331759))

(assert (=> b!1900556 m!2331413))

(declare-fun m!2331761 () Bool)

(assert (=> b!1900556 m!2331761))

(assert (=> b!1900553 m!2331743))

(assert (=> b!1900553 m!2331745))

(assert (=> b!1900553 m!2331745))

(assert (=> b!1900553 m!2331747))

(assert (=> b!1900553 m!2331747))

(declare-fun m!2331763 () Bool)

(assert (=> b!1900553 m!2331763))

(declare-fun m!2331765 () Bool)

(assert (=> b!1900555 m!2331765))

(assert (=> bm!117074 m!2331413))

(declare-fun m!2331767 () Bool)

(assert (=> bm!117074 m!2331767))

(assert (=> b!1900247 d!581413))

(declare-fun bs!413570 () Bool)

(declare-fun b!1900571 () Bool)

(assert (= bs!413570 (and b!1900571 b!1900242)))

(declare-fun lambda!74282 () Int)

(assert (=> bs!413570 (not (= lambda!74282 lambda!74261))))

(declare-fun bs!413571 () Bool)

(assert (= bs!413571 (and b!1900571 b!1900382)))

(assert (=> bs!413571 (= lambda!74282 lambda!74273)))

(declare-fun b!1900575 () Bool)

(declare-fun e!1213834 () Bool)

(assert (=> b!1900575 (= e!1213834 true)))

(declare-fun b!1900574 () Bool)

(declare-fun e!1213833 () Bool)

(assert (=> b!1900574 (= e!1213833 e!1213834)))

(declare-fun b!1900573 () Bool)

(declare-fun e!1213832 () Bool)

(assert (=> b!1900573 (= e!1213832 e!1213833)))

(assert (=> b!1900571 e!1213832))

(assert (= b!1900574 b!1900575))

(assert (= b!1900573 b!1900574))

(assert (= (and b!1900571 ((_ is Cons!21388) rules!3198)) b!1900573))

(assert (=> b!1900575 (< (dynLambda!10406 order!13509 (toValue!5421 (transformation!3804 (h!26789 rules!3198)))) (dynLambda!10407 order!13511 lambda!74282))))

(assert (=> b!1900575 (< (dynLambda!10408 order!13513 (toChars!5280 (transformation!3804 (h!26789 rules!3198)))) (dynLambda!10407 order!13511 lambda!74282))))

(assert (=> b!1900571 true))

(declare-fun b!1900565 () Bool)

(declare-fun e!1213829 () List!21469)

(declare-fun call!117081 () List!21469)

(assert (=> b!1900565 (= e!1213829 call!117081)))

(declare-fun b!1900566 () Bool)

(declare-fun e!1213830 () List!21469)

(assert (=> b!1900566 (= e!1213830 Nil!21387)))

(declare-fun b!1900567 () Bool)

(declare-fun e!1213831 () List!21469)

(declare-fun call!117083 () List!21469)

(declare-fun lt!726866 () List!21469)

(assert (=> b!1900567 (= e!1213831 (++!5747 call!117083 lt!726866))))

(declare-fun b!1900568 () Bool)

(declare-fun c!309706 () Bool)

(declare-fun lt!726863 () Option!4314)

(assert (=> b!1900568 (= c!309706 (and ((_ is Some!4313) lt!726863) (not (= (_1!11541 (v!26342 lt!726863)) (h!26790 (t!176742 tokens!598))))))))

(declare-fun e!1213828 () List!21469)

(assert (=> b!1900568 (= e!1213828 e!1213831)))

(declare-fun bm!117075 () Bool)

(declare-fun call!117084 () BalanceConc!14046)

(declare-fun call!117080 () BalanceConc!14046)

(assert (=> bm!117075 (= call!117084 call!117080)))

(declare-fun bm!117076 () Bool)

(declare-fun call!117082 () List!21469)

(assert (=> bm!117076 (= call!117082 call!117081)))

(declare-fun bm!117077 () Bool)

(declare-fun c!309707 () Bool)

(assert (=> bm!117077 (= call!117080 (charsOf!2360 (ite c!309707 (h!26790 (t!176742 tokens!598)) (ite c!309706 separatorToken!354 (h!26790 (t!176742 tokens!598))))))))

(declare-fun b!1900569 () Bool)

(assert (=> b!1900569 (= e!1213831 Nil!21387)))

(assert (=> b!1900569 (= (print!1445 thiss!23328 (singletonSeq!1843 (h!26790 (t!176742 tokens!598)))) (printTailRec!952 thiss!23328 (singletonSeq!1843 (h!26790 (t!176742 tokens!598))) 0 (BalanceConc!14047 Empty!7115)))))

(declare-fun lt!726864 () Unit!35712)

(declare-fun Unit!35720 () Unit!35712)

(assert (=> b!1900569 (= lt!726864 Unit!35720)))

(declare-fun lt!726862 () Unit!35712)

(assert (=> b!1900569 (= lt!726862 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!714 thiss!23328 rules!3198 call!117082 lt!726866))))

(assert (=> b!1900569 false))

(declare-fun lt!726865 () Unit!35712)

(declare-fun Unit!35721 () Unit!35712)

(assert (=> b!1900569 (= lt!726865 Unit!35721)))

(declare-fun b!1900570 () Bool)

(assert (=> b!1900570 (= e!1213828 call!117083)))

(assert (=> b!1900571 (= e!1213830 e!1213828)))

(declare-fun lt!726867 () Unit!35712)

(assert (=> b!1900571 (= lt!726867 (forallContained!684 (t!176742 tokens!598) lambda!74282 (h!26790 (t!176742 tokens!598))))))

(assert (=> b!1900571 (= lt!726866 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 (t!176742 tokens!598)) separatorToken!354))))

(assert (=> b!1900571 (= lt!726863 (maxPrefix!1863 thiss!23328 rules!3198 (++!5747 (list!8692 (charsOf!2360 (h!26790 (t!176742 tokens!598)))) lt!726866)))))

(assert (=> b!1900571 (= c!309707 (and ((_ is Some!4313) lt!726863) (= (_1!11541 (v!26342 lt!726863)) (h!26790 (t!176742 tokens!598)))))))

(declare-fun b!1900572 () Bool)

(assert (=> b!1900572 (= e!1213829 (list!8692 (charsOf!2360 (h!26790 (t!176742 tokens!598)))))))

(declare-fun bm!117079 () Bool)

(assert (=> bm!117079 (= call!117081 (list!8692 (ite c!309707 call!117080 call!117084)))))

(declare-fun bm!117078 () Bool)

(declare-fun c!309704 () Bool)

(assert (=> bm!117078 (= c!309704 c!309707)))

(assert (=> bm!117078 (= call!117083 (++!5747 e!1213829 (ite c!309707 lt!726866 call!117082)))))

(declare-fun d!581419 () Bool)

(declare-fun c!309705 () Bool)

(assert (=> d!581419 (= c!309705 ((_ is Cons!21389) (t!176742 tokens!598)))))

(assert (=> d!581419 (= (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354) e!1213830)))

(assert (= (and d!581419 c!309705) b!1900571))

(assert (= (and d!581419 (not c!309705)) b!1900566))

(assert (= (and b!1900571 c!309707) b!1900570))

(assert (= (and b!1900571 (not c!309707)) b!1900568))

(assert (= (and b!1900568 c!309706) b!1900567))

(assert (= (and b!1900568 (not c!309706)) b!1900569))

(assert (= (or b!1900567 b!1900569) bm!117075))

(assert (= (or b!1900567 b!1900569) bm!117076))

(assert (= (or b!1900570 bm!117075) bm!117077))

(assert (= (or b!1900570 bm!117076) bm!117079))

(assert (= (or b!1900570 b!1900567) bm!117078))

(assert (= (and bm!117078 c!309704) b!1900565))

(assert (= (and bm!117078 (not c!309704)) b!1900572))

(declare-fun m!2331775 () Bool)

(assert (=> b!1900567 m!2331775))

(declare-fun m!2331777 () Bool)

(assert (=> bm!117079 m!2331777))

(declare-fun m!2331779 () Bool)

(assert (=> b!1900571 m!2331779))

(declare-fun m!2331781 () Bool)

(assert (=> b!1900571 m!2331781))

(declare-fun m!2331783 () Bool)

(assert (=> b!1900571 m!2331783))

(assert (=> b!1900571 m!2331783))

(declare-fun m!2331785 () Bool)

(assert (=> b!1900571 m!2331785))

(declare-fun m!2331787 () Bool)

(assert (=> b!1900571 m!2331787))

(declare-fun m!2331789 () Bool)

(assert (=> b!1900571 m!2331789))

(assert (=> b!1900571 m!2331785))

(assert (=> b!1900571 m!2331779))

(declare-fun m!2331791 () Bool)

(assert (=> bm!117077 m!2331791))

(declare-fun m!2331793 () Bool)

(assert (=> b!1900569 m!2331793))

(assert (=> b!1900569 m!2331793))

(declare-fun m!2331795 () Bool)

(assert (=> b!1900569 m!2331795))

(assert (=> b!1900569 m!2331793))

(declare-fun m!2331797 () Bool)

(assert (=> b!1900569 m!2331797))

(declare-fun m!2331799 () Bool)

(assert (=> b!1900569 m!2331799))

(declare-fun m!2331801 () Bool)

(assert (=> bm!117078 m!2331801))

(assert (=> b!1900572 m!2331783))

(assert (=> b!1900572 m!2331783))

(assert (=> b!1900572 m!2331785))

(assert (=> b!1900247 d!581419))

(declare-fun d!581423 () Bool)

(declare-fun list!8694 (Conc!7115) List!21469)

(assert (=> d!581423 (= (list!8692 (charsOf!2360 separatorToken!354)) (list!8694 (c!309644 (charsOf!2360 separatorToken!354))))))

(declare-fun bs!413575 () Bool)

(assert (= bs!413575 d!581423))

(declare-fun m!2331803 () Bool)

(assert (=> bs!413575 m!2331803))

(assert (=> b!1900247 d!581423))

(declare-fun d!581425 () Bool)

(assert (=> d!581425 (= (list!8692 lt!726731) (list!8694 (c!309644 lt!726731)))))

(declare-fun bs!413576 () Bool)

(assert (= bs!413576 d!581425))

(declare-fun m!2331809 () Bool)

(assert (=> bs!413576 m!2331809))

(assert (=> b!1900247 d!581425))

(declare-fun b!1900616 () Bool)

(declare-fun e!1213861 () Bool)

(assert (=> b!1900616 (= e!1213861 true)))

(declare-fun d!581427 () Bool)

(assert (=> d!581427 e!1213861))

(assert (= d!581427 b!1900616))

(declare-fun lambda!74287 () Int)

(declare-fun order!13517 () Int)

(declare-fun dynLambda!10409 (Int Int) Int)

(assert (=> b!1900616 (< (dynLambda!10406 order!13509 (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) (dynLambda!10409 order!13517 lambda!74287))))

(assert (=> b!1900616 (< (dynLambda!10408 order!13513 (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) (dynLambda!10409 order!13517 lambda!74287))))

(declare-fun dynLambda!10410 (Int BalanceConc!14046) TokenValue!3940)

(assert (=> d!581427 (= (dynLambda!10410 (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) lt!726731) (dynLambda!10410 (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (seqFromList!2676 (originalCharacters!4611 (h!26790 tokens!598)))))))

(declare-fun lt!726877 () Unit!35712)

(declare-fun Forall2of!179 (Int BalanceConc!14046 BalanceConc!14046) Unit!35712)

(assert (=> d!581427 (= lt!726877 (Forall2of!179 lambda!74287 lt!726731 (seqFromList!2676 (originalCharacters!4611 (h!26790 tokens!598)))))))

(assert (=> d!581427 (= (list!8692 lt!726731) (list!8692 (seqFromList!2676 (originalCharacters!4611 (h!26790 tokens!598)))))))

(assert (=> d!581427 (= (lemmaEqSameImage!512 (transformation!3804 (rule!5997 (h!26790 tokens!598))) lt!726731 (seqFromList!2676 (originalCharacters!4611 (h!26790 tokens!598)))) lt!726877)))

(declare-fun b_lambda!62589 () Bool)

(assert (=> (not b_lambda!62589) (not d!581427)))

(declare-fun t!176780 () Bool)

(declare-fun tb!115879 () Bool)

(assert (=> (and b!1900236 (= (toValue!5421 (transformation!3804 (h!26789 rules!3198))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176780) tb!115879))

(declare-fun result!140110 () Bool)

(assert (=> tb!115879 (= result!140110 (inv!21 (dynLambda!10410 (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) lt!726731)))))

(declare-fun m!2331845 () Bool)

(assert (=> tb!115879 m!2331845))

(assert (=> d!581427 t!176780))

(declare-fun b_and!147105 () Bool)

(assert (= b_and!147051 (and (=> t!176780 result!140110) b_and!147105)))

(declare-fun t!176782 () Bool)

(declare-fun tb!115881 () Bool)

(assert (=> (and b!1900235 (= (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176782) tb!115881))

(declare-fun result!140114 () Bool)

(assert (= result!140114 result!140110))

(assert (=> d!581427 t!176782))

(declare-fun b_and!147107 () Bool)

(assert (= b_and!147055 (and (=> t!176782 result!140114) b_and!147107)))

(declare-fun t!176784 () Bool)

(declare-fun tb!115883 () Bool)

(assert (=> (and b!1900240 (= (toValue!5421 (transformation!3804 (rule!5997 separatorToken!354))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176784) tb!115883))

(declare-fun result!140116 () Bool)

(assert (= result!140116 result!140110))

(assert (=> d!581427 t!176784))

(declare-fun b_and!147109 () Bool)

(assert (= b_and!147059 (and (=> t!176784 result!140116) b_and!147109)))

(declare-fun b_lambda!62591 () Bool)

(assert (=> (not b_lambda!62591) (not d!581427)))

(declare-fun t!176786 () Bool)

(declare-fun tb!115885 () Bool)

(assert (=> (and b!1900236 (= (toValue!5421 (transformation!3804 (h!26789 rules!3198))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176786) tb!115885))

(declare-fun result!140118 () Bool)

(assert (=> tb!115885 (= result!140118 (inv!21 (dynLambda!10410 (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (seqFromList!2676 (originalCharacters!4611 (h!26790 tokens!598))))))))

(declare-fun m!2331847 () Bool)

(assert (=> tb!115885 m!2331847))

(assert (=> d!581427 t!176786))

(declare-fun b_and!147111 () Bool)

(assert (= b_and!147105 (and (=> t!176786 result!140118) b_and!147111)))

(declare-fun t!176788 () Bool)

(declare-fun tb!115887 () Bool)

(assert (=> (and b!1900235 (= (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176788) tb!115887))

(declare-fun result!140120 () Bool)

(assert (= result!140120 result!140118))

(assert (=> d!581427 t!176788))

(declare-fun b_and!147113 () Bool)

(assert (= b_and!147107 (and (=> t!176788 result!140120) b_and!147113)))

(declare-fun tb!115889 () Bool)

(declare-fun t!176790 () Bool)

(assert (=> (and b!1900240 (= (toValue!5421 (transformation!3804 (rule!5997 separatorToken!354))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176790) tb!115889))

(declare-fun result!140122 () Bool)

(assert (= result!140122 result!140118))

(assert (=> d!581427 t!176790))

(declare-fun b_and!147115 () Bool)

(assert (= b_and!147109 (and (=> t!176790 result!140122) b_and!147115)))

(assert (=> d!581427 m!2331397))

(assert (=> d!581427 m!2331389))

(declare-fun m!2331849 () Bool)

(assert (=> d!581427 m!2331849))

(assert (=> d!581427 m!2331389))

(declare-fun m!2331851 () Bool)

(assert (=> d!581427 m!2331851))

(assert (=> d!581427 m!2331389))

(declare-fun m!2331853 () Bool)

(assert (=> d!581427 m!2331853))

(declare-fun m!2331855 () Bool)

(assert (=> d!581427 m!2331855))

(assert (=> b!1900247 d!581427))

(declare-fun b!1900642 () Bool)

(declare-fun res!848589 () Bool)

(declare-fun e!1213881 () Bool)

(assert (=> b!1900642 (=> (not res!848589) (not e!1213881))))

(declare-fun lt!726880 () List!21469)

(assert (=> b!1900642 (= res!848589 (= (size!16896 lt!726880) (+ (size!16896 lt!726732) (size!16896 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354)))))))

(declare-fun b!1900640 () Bool)

(declare-fun e!1213880 () List!21469)

(assert (=> b!1900640 (= e!1213880 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354))))

(declare-fun b!1900643 () Bool)

(assert (=> b!1900643 (= e!1213881 (or (not (= (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354) Nil!21387)) (= lt!726880 lt!726732)))))

(declare-fun d!581441 () Bool)

(assert (=> d!581441 e!1213881))

(declare-fun res!848590 () Bool)

(assert (=> d!581441 (=> (not res!848590) (not e!1213881))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3135 (List!21469) (InoxSet C!10604))

(assert (=> d!581441 (= res!848590 (= (content!3135 lt!726880) ((_ map or) (content!3135 lt!726732) (content!3135 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354)))))))

(assert (=> d!581441 (= lt!726880 e!1213880)))

(declare-fun c!309722 () Bool)

(assert (=> d!581441 (= c!309722 ((_ is Nil!21387) lt!726732))))

(assert (=> d!581441 (= (++!5747 lt!726732 (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354)) lt!726880)))

(declare-fun b!1900641 () Bool)

(assert (=> b!1900641 (= e!1213880 (Cons!21387 (h!26788 lt!726732) (++!5747 (t!176740 lt!726732) (printWithSeparatorTokenWhenNeededList!460 thiss!23328 rules!3198 (t!176742 tokens!598) separatorToken!354))))))

(assert (= (and d!581441 c!309722) b!1900640))

(assert (= (and d!581441 (not c!309722)) b!1900641))

(assert (= (and d!581441 res!848590) b!1900642))

(assert (= (and b!1900642 res!848589) b!1900643))

(declare-fun m!2331871 () Bool)

(assert (=> b!1900642 m!2331871))

(assert (=> b!1900642 m!2331711))

(assert (=> b!1900642 m!2331405))

(declare-fun m!2331873 () Bool)

(assert (=> b!1900642 m!2331873))

(declare-fun m!2331875 () Bool)

(assert (=> d!581441 m!2331875))

(declare-fun m!2331877 () Bool)

(assert (=> d!581441 m!2331877))

(assert (=> d!581441 m!2331405))

(declare-fun m!2331879 () Bool)

(assert (=> d!581441 m!2331879))

(assert (=> b!1900641 m!2331405))

(declare-fun m!2331881 () Bool)

(assert (=> b!1900641 m!2331881))

(assert (=> b!1900247 d!581441))

(declare-fun d!581451 () Bool)

(declare-fun lt!726883 () BalanceConc!14046)

(assert (=> d!581451 (= (list!8692 lt!726883) (originalCharacters!4611 separatorToken!354))))

(declare-fun dynLambda!10411 (Int TokenValue!3940) BalanceConc!14046)

(assert (=> d!581451 (= lt!726883 (dynLambda!10411 (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))) (value!120005 separatorToken!354)))))

(assert (=> d!581451 (= (charsOf!2360 separatorToken!354) lt!726883)))

(declare-fun b_lambda!62595 () Bool)

(assert (=> (not b_lambda!62595) (not d!581451)))

(declare-fun tb!115891 () Bool)

(declare-fun t!176792 () Bool)

(assert (=> (and b!1900236 (= (toChars!5280 (transformation!3804 (h!26789 rules!3198))) (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354)))) t!176792) tb!115891))

(declare-fun b!1900648 () Bool)

(declare-fun e!1213884 () Bool)

(declare-fun tp!542758 () Bool)

(declare-fun inv!28486 (Conc!7115) Bool)

(assert (=> b!1900648 (= e!1213884 (and (inv!28486 (c!309644 (dynLambda!10411 (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))) (value!120005 separatorToken!354)))) tp!542758))))

(declare-fun result!140124 () Bool)

(declare-fun inv!28487 (BalanceConc!14046) Bool)

(assert (=> tb!115891 (= result!140124 (and (inv!28487 (dynLambda!10411 (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))) (value!120005 separatorToken!354))) e!1213884))))

(assert (= tb!115891 b!1900648))

(declare-fun m!2331883 () Bool)

(assert (=> b!1900648 m!2331883))

(declare-fun m!2331885 () Bool)

(assert (=> tb!115891 m!2331885))

(assert (=> d!581451 t!176792))

(declare-fun b_and!147123 () Bool)

(assert (= b_and!147053 (and (=> t!176792 result!140124) b_and!147123)))

(declare-fun tb!115893 () Bool)

(declare-fun t!176794 () Bool)

(assert (=> (and b!1900235 (= (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354)))) t!176794) tb!115893))

(declare-fun result!140128 () Bool)

(assert (= result!140128 result!140124))

(assert (=> d!581451 t!176794))

(declare-fun b_and!147125 () Bool)

(assert (= b_and!147057 (and (=> t!176794 result!140128) b_and!147125)))

(declare-fun t!176796 () Bool)

(declare-fun tb!115895 () Bool)

(assert (=> (and b!1900240 (= (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))) (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354)))) t!176796) tb!115895))

(declare-fun result!140130 () Bool)

(assert (= result!140130 result!140124))

(assert (=> d!581451 t!176796))

(declare-fun b_and!147127 () Bool)

(assert (= b_and!147061 (and (=> t!176796 result!140130) b_and!147127)))

(declare-fun m!2331887 () Bool)

(assert (=> d!581451 m!2331887))

(declare-fun m!2331889 () Bool)

(assert (=> d!581451 m!2331889))

(assert (=> b!1900247 d!581451))

(declare-fun d!581453 () Bool)

(declare-fun e!1213885 () Bool)

(assert (=> d!581453 e!1213885))

(declare-fun res!848591 () Bool)

(assert (=> d!581453 (=> (not res!848591) (not e!1213885))))

(assert (=> d!581453 (= res!848591 (isDefined!3611 (getRuleFromTag!647 thiss!23328 rules!3198 (tag!4228 (rule!5997 separatorToken!354)))))))

(declare-fun lt!726884 () Unit!35712)

(assert (=> d!581453 (= lt!726884 (choose!11846 thiss!23328 rules!3198 lt!726740 separatorToken!354))))

(assert (=> d!581453 (rulesInvariant!3024 thiss!23328 rules!3198)))

(assert (=> d!581453 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!647 thiss!23328 rules!3198 lt!726740 separatorToken!354) lt!726884)))

(declare-fun b!1900649 () Bool)

(declare-fun res!848592 () Bool)

(assert (=> b!1900649 (=> (not res!848592) (not e!1213885))))

(assert (=> b!1900649 (= res!848592 (matchR!2515 (regex!3804 (get!6622 (getRuleFromTag!647 thiss!23328 rules!3198 (tag!4228 (rule!5997 separatorToken!354))))) (list!8692 (charsOf!2360 separatorToken!354))))))

(declare-fun b!1900650 () Bool)

(assert (=> b!1900650 (= e!1213885 (= (rule!5997 separatorToken!354) (get!6622 (getRuleFromTag!647 thiss!23328 rules!3198 (tag!4228 (rule!5997 separatorToken!354))))))))

(assert (= (and d!581453 res!848591) b!1900649))

(assert (= (and b!1900649 res!848592) b!1900650))

(assert (=> d!581453 m!2331403))

(assert (=> d!581453 m!2331403))

(declare-fun m!2331891 () Bool)

(assert (=> d!581453 m!2331891))

(declare-fun m!2331893 () Bool)

(assert (=> d!581453 m!2331893))

(assert (=> d!581453 m!2331365))

(assert (=> b!1900649 m!2331407))

(assert (=> b!1900649 m!2331417))

(declare-fun m!2331895 () Bool)

(assert (=> b!1900649 m!2331895))

(assert (=> b!1900649 m!2331407))

(assert (=> b!1900649 m!2331417))

(assert (=> b!1900649 m!2331403))

(declare-fun m!2331897 () Bool)

(assert (=> b!1900649 m!2331897))

(assert (=> b!1900649 m!2331403))

(assert (=> b!1900650 m!2331403))

(assert (=> b!1900650 m!2331403))

(assert (=> b!1900650 m!2331897))

(assert (=> b!1900247 d!581453))

(declare-fun b!1900663 () Bool)

(declare-fun e!1213894 () Bool)

(declare-fun lt!726891 () Option!4313)

(assert (=> b!1900663 (= e!1213894 (= (tag!4228 (get!6622 lt!726891)) (tag!4228 (rule!5997 separatorToken!354))))))

(declare-fun b!1900664 () Bool)

(declare-fun e!1213896 () Option!4313)

(assert (=> b!1900664 (= e!1213896 None!4312)))

(declare-fun b!1900665 () Bool)

(declare-fun e!1213895 () Bool)

(assert (=> b!1900665 (= e!1213895 e!1213894)))

(declare-fun res!848597 () Bool)

(assert (=> b!1900665 (=> (not res!848597) (not e!1213894))))

(assert (=> b!1900665 (= res!848597 (contains!3843 rules!3198 (get!6622 lt!726891)))))

(declare-fun b!1900666 () Bool)

(declare-fun lt!726892 () Unit!35712)

(declare-fun lt!726893 () Unit!35712)

(assert (=> b!1900666 (= lt!726892 lt!726893)))

(assert (=> b!1900666 (rulesInvariant!3024 thiss!23328 (t!176741 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!248 (LexerInterface!3417 Rule!7408 List!21470) Unit!35712)

(assert (=> b!1900666 (= lt!726893 (lemmaInvariantOnRulesThenOnTail!248 thiss!23328 (h!26789 rules!3198) (t!176741 rules!3198)))))

(assert (=> b!1900666 (= e!1213896 (getRuleFromTag!647 thiss!23328 (t!176741 rules!3198) (tag!4228 (rule!5997 separatorToken!354))))))

(declare-fun b!1900667 () Bool)

(declare-fun e!1213897 () Option!4313)

(assert (=> b!1900667 (= e!1213897 (Some!4312 (h!26789 rules!3198)))))

(declare-fun b!1900668 () Bool)

(assert (=> b!1900668 (= e!1213897 e!1213896)))

(declare-fun c!309727 () Bool)

(assert (=> b!1900668 (= c!309727 (and ((_ is Cons!21388) rules!3198) (not (= (tag!4228 (h!26789 rules!3198)) (tag!4228 (rule!5997 separatorToken!354))))))))

(declare-fun d!581455 () Bool)

(assert (=> d!581455 e!1213895))

(declare-fun res!848598 () Bool)

(assert (=> d!581455 (=> res!848598 e!1213895)))

(assert (=> d!581455 (= res!848598 (isEmpty!13120 lt!726891))))

(assert (=> d!581455 (= lt!726891 e!1213897)))

(declare-fun c!309728 () Bool)

(assert (=> d!581455 (= c!309728 (and ((_ is Cons!21388) rules!3198) (= (tag!4228 (h!26789 rules!3198)) (tag!4228 (rule!5997 separatorToken!354)))))))

(assert (=> d!581455 (rulesInvariant!3024 thiss!23328 rules!3198)))

(assert (=> d!581455 (= (getRuleFromTag!647 thiss!23328 rules!3198 (tag!4228 (rule!5997 separatorToken!354))) lt!726891)))

(assert (= (and d!581455 c!309728) b!1900667))

(assert (= (and d!581455 (not c!309728)) b!1900668))

(assert (= (and b!1900668 c!309727) b!1900666))

(assert (= (and b!1900668 (not c!309727)) b!1900664))

(assert (= (and d!581455 (not res!848598)) b!1900665))

(assert (= (and b!1900665 res!848597) b!1900663))

(declare-fun m!2331899 () Bool)

(assert (=> b!1900663 m!2331899))

(assert (=> b!1900665 m!2331899))

(assert (=> b!1900665 m!2331899))

(declare-fun m!2331901 () Bool)

(assert (=> b!1900665 m!2331901))

(declare-fun m!2331903 () Bool)

(assert (=> b!1900666 m!2331903))

(declare-fun m!2331905 () Bool)

(assert (=> b!1900666 m!2331905))

(declare-fun m!2331907 () Bool)

(assert (=> b!1900666 m!2331907))

(declare-fun m!2331909 () Bool)

(assert (=> d!581455 m!2331909))

(assert (=> d!581455 m!2331365))

(assert (=> b!1900247 d!581455))

(declare-fun b!1900669 () Bool)

(declare-fun e!1213898 () Bool)

(declare-fun lt!726894 () Option!4313)

(assert (=> b!1900669 (= e!1213898 (= (tag!4228 (get!6622 lt!726894)) (tag!4228 (rule!5997 (h!26790 tokens!598)))))))

(declare-fun b!1900670 () Bool)

(declare-fun e!1213900 () Option!4313)

(assert (=> b!1900670 (= e!1213900 None!4312)))

(declare-fun b!1900671 () Bool)

(declare-fun e!1213899 () Bool)

(assert (=> b!1900671 (= e!1213899 e!1213898)))

(declare-fun res!848599 () Bool)

(assert (=> b!1900671 (=> (not res!848599) (not e!1213898))))

(assert (=> b!1900671 (= res!848599 (contains!3843 rules!3198 (get!6622 lt!726894)))))

(declare-fun b!1900672 () Bool)

(declare-fun lt!726895 () Unit!35712)

(declare-fun lt!726896 () Unit!35712)

(assert (=> b!1900672 (= lt!726895 lt!726896)))

(assert (=> b!1900672 (rulesInvariant!3024 thiss!23328 (t!176741 rules!3198))))

(assert (=> b!1900672 (= lt!726896 (lemmaInvariantOnRulesThenOnTail!248 thiss!23328 (h!26789 rules!3198) (t!176741 rules!3198)))))

(assert (=> b!1900672 (= e!1213900 (getRuleFromTag!647 thiss!23328 (t!176741 rules!3198) (tag!4228 (rule!5997 (h!26790 tokens!598)))))))

(declare-fun b!1900673 () Bool)

(declare-fun e!1213901 () Option!4313)

(assert (=> b!1900673 (= e!1213901 (Some!4312 (h!26789 rules!3198)))))

(declare-fun b!1900674 () Bool)

(assert (=> b!1900674 (= e!1213901 e!1213900)))

(declare-fun c!309729 () Bool)

(assert (=> b!1900674 (= c!309729 (and ((_ is Cons!21388) rules!3198) (not (= (tag!4228 (h!26789 rules!3198)) (tag!4228 (rule!5997 (h!26790 tokens!598)))))))))

(declare-fun d!581457 () Bool)

(assert (=> d!581457 e!1213899))

(declare-fun res!848600 () Bool)

(assert (=> d!581457 (=> res!848600 e!1213899)))

(assert (=> d!581457 (= res!848600 (isEmpty!13120 lt!726894))))

(assert (=> d!581457 (= lt!726894 e!1213901)))

(declare-fun c!309730 () Bool)

(assert (=> d!581457 (= c!309730 (and ((_ is Cons!21388) rules!3198) (= (tag!4228 (h!26789 rules!3198)) (tag!4228 (rule!5997 (h!26790 tokens!598))))))))

(assert (=> d!581457 (rulesInvariant!3024 thiss!23328 rules!3198)))

(assert (=> d!581457 (= (getRuleFromTag!647 thiss!23328 rules!3198 (tag!4228 (rule!5997 (h!26790 tokens!598)))) lt!726894)))

(assert (= (and d!581457 c!309730) b!1900673))

(assert (= (and d!581457 (not c!309730)) b!1900674))

(assert (= (and b!1900674 c!309729) b!1900672))

(assert (= (and b!1900674 (not c!309729)) b!1900670))

(assert (= (and d!581457 (not res!848600)) b!1900671))

(assert (= (and b!1900671 res!848599) b!1900669))

(declare-fun m!2331911 () Bool)

(assert (=> b!1900669 m!2331911))

(assert (=> b!1900671 m!2331911))

(assert (=> b!1900671 m!2331911))

(declare-fun m!2331913 () Bool)

(assert (=> b!1900671 m!2331913))

(assert (=> b!1900672 m!2331903))

(assert (=> b!1900672 m!2331905))

(declare-fun m!2331915 () Bool)

(assert (=> b!1900672 m!2331915))

(declare-fun m!2331917 () Bool)

(assert (=> d!581457 m!2331917))

(assert (=> d!581457 m!2331365))

(assert (=> b!1900247 d!581457))

(declare-fun b!1900679 () Bool)

(declare-fun e!1213904 () Bool)

(assert (=> b!1900679 (= e!1213904 true)))

(declare-fun d!581459 () Bool)

(assert (=> d!581459 e!1213904))

(assert (= d!581459 b!1900679))

(declare-fun lambda!74290 () Int)

(declare-fun order!13519 () Int)

(declare-fun dynLambda!10412 (Int Int) Int)

(assert (=> b!1900679 (< (dynLambda!10406 order!13509 (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) (dynLambda!10412 order!13519 lambda!74290))))

(assert (=> b!1900679 (< (dynLambda!10408 order!13513 (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) (dynLambda!10412 order!13519 lambda!74290))))

(assert (=> d!581459 (= (list!8692 (dynLambda!10411 (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (dynLambda!10410 (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) lt!726731))) (list!8692 lt!726731))))

(declare-fun lt!726899 () Unit!35712)

(declare-fun ForallOf!383 (Int BalanceConc!14046) Unit!35712)

(assert (=> d!581459 (= lt!726899 (ForallOf!383 lambda!74290 lt!726731))))

(assert (=> d!581459 (= (lemmaSemiInverse!783 (transformation!3804 (rule!5997 (h!26790 tokens!598))) lt!726731) lt!726899)))

(declare-fun b_lambda!62597 () Bool)

(assert (=> (not b_lambda!62597) (not d!581459)))

(declare-fun tb!115897 () Bool)

(declare-fun t!176798 () Bool)

(assert (=> (and b!1900236 (= (toChars!5280 (transformation!3804 (h!26789 rules!3198))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176798) tb!115897))

(declare-fun tp!542759 () Bool)

(declare-fun e!1213905 () Bool)

(declare-fun b!1900680 () Bool)

(assert (=> b!1900680 (= e!1213905 (and (inv!28486 (c!309644 (dynLambda!10411 (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (dynLambda!10410 (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) lt!726731)))) tp!542759))))

(declare-fun result!140132 () Bool)

(assert (=> tb!115897 (= result!140132 (and (inv!28487 (dynLambda!10411 (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (dynLambda!10410 (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) lt!726731))) e!1213905))))

(assert (= tb!115897 b!1900680))

(declare-fun m!2331919 () Bool)

(assert (=> b!1900680 m!2331919))

(declare-fun m!2331921 () Bool)

(assert (=> tb!115897 m!2331921))

(assert (=> d!581459 t!176798))

(declare-fun b_and!147129 () Bool)

(assert (= b_and!147123 (and (=> t!176798 result!140132) b_and!147129)))

(declare-fun t!176800 () Bool)

(declare-fun tb!115899 () Bool)

(assert (=> (and b!1900235 (= (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176800) tb!115899))

(declare-fun result!140134 () Bool)

(assert (= result!140134 result!140132))

(assert (=> d!581459 t!176800))

(declare-fun b_and!147131 () Bool)

(assert (= b_and!147125 (and (=> t!176800 result!140134) b_and!147131)))

(declare-fun t!176802 () Bool)

(declare-fun tb!115901 () Bool)

(assert (=> (and b!1900240 (= (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176802) tb!115901))

(declare-fun result!140136 () Bool)

(assert (= result!140136 result!140132))

(assert (=> d!581459 t!176802))

(declare-fun b_and!147133 () Bool)

(assert (= b_and!147127 (and (=> t!176802 result!140136) b_and!147133)))

(declare-fun b_lambda!62599 () Bool)

(assert (=> (not b_lambda!62599) (not d!581459)))

(assert (=> d!581459 t!176780))

(declare-fun b_and!147135 () Bool)

(assert (= b_and!147111 (and (=> t!176780 result!140110) b_and!147135)))

(assert (=> d!581459 t!176782))

(declare-fun b_and!147137 () Bool)

(assert (= b_and!147113 (and (=> t!176782 result!140114) b_and!147137)))

(assert (=> d!581459 t!176784))

(declare-fun b_and!147139 () Bool)

(assert (= b_and!147115 (and (=> t!176784 result!140116) b_and!147139)))

(declare-fun m!2331923 () Bool)

(assert (=> d!581459 m!2331923))

(declare-fun m!2331925 () Bool)

(assert (=> d!581459 m!2331925))

(assert (=> d!581459 m!2331855))

(assert (=> d!581459 m!2331397))

(assert (=> d!581459 m!2331855))

(assert (=> d!581459 m!2331923))

(declare-fun m!2331927 () Bool)

(assert (=> d!581459 m!2331927))

(assert (=> b!1900247 d!581459))

(declare-fun d!581461 () Bool)

(declare-fun lt!726900 () BalanceConc!14046)

(assert (=> d!581461 (= (list!8692 lt!726900) (originalCharacters!4611 (h!26790 tokens!598)))))

(assert (=> d!581461 (= lt!726900 (dynLambda!10411 (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (value!120005 (h!26790 tokens!598))))))

(assert (=> d!581461 (= (charsOf!2360 (h!26790 tokens!598)) lt!726900)))

(declare-fun b_lambda!62601 () Bool)

(assert (=> (not b_lambda!62601) (not d!581461)))

(declare-fun tb!115903 () Bool)

(declare-fun t!176804 () Bool)

(assert (=> (and b!1900236 (= (toChars!5280 (transformation!3804 (h!26789 rules!3198))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176804) tb!115903))

(declare-fun b!1900681 () Bool)

(declare-fun e!1213906 () Bool)

(declare-fun tp!542760 () Bool)

(assert (=> b!1900681 (= e!1213906 (and (inv!28486 (c!309644 (dynLambda!10411 (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (value!120005 (h!26790 tokens!598))))) tp!542760))))

(declare-fun result!140138 () Bool)

(assert (=> tb!115903 (= result!140138 (and (inv!28487 (dynLambda!10411 (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (value!120005 (h!26790 tokens!598)))) e!1213906))))

(assert (= tb!115903 b!1900681))

(declare-fun m!2331929 () Bool)

(assert (=> b!1900681 m!2331929))

(declare-fun m!2331931 () Bool)

(assert (=> tb!115903 m!2331931))

(assert (=> d!581461 t!176804))

(declare-fun b_and!147141 () Bool)

(assert (= b_and!147129 (and (=> t!176804 result!140138) b_and!147141)))

(declare-fun t!176806 () Bool)

(declare-fun tb!115905 () Bool)

(assert (=> (and b!1900235 (= (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176806) tb!115905))

(declare-fun result!140140 () Bool)

(assert (= result!140140 result!140138))

(assert (=> d!581461 t!176806))

(declare-fun b_and!147143 () Bool)

(assert (= b_and!147131 (and (=> t!176806 result!140140) b_and!147143)))

(declare-fun tb!115907 () Bool)

(declare-fun t!176808 () Bool)

(assert (=> (and b!1900240 (= (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176808) tb!115907))

(declare-fun result!140142 () Bool)

(assert (= result!140142 result!140138))

(assert (=> d!581461 t!176808))

(declare-fun b_and!147145 () Bool)

(assert (= b_and!147133 (and (=> t!176808 result!140142) b_and!147145)))

(declare-fun m!2331933 () Bool)

(assert (=> d!581461 m!2331933))

(declare-fun m!2331935 () Bool)

(assert (=> d!581461 m!2331935))

(assert (=> b!1900247 d!581461))

(declare-fun d!581463 () Bool)

(declare-fun fromListB!1216 (List!21469) BalanceConc!14046)

(assert (=> d!581463 (= (seqFromList!2676 (originalCharacters!4611 (h!26790 tokens!598))) (fromListB!1216 (originalCharacters!4611 (h!26790 tokens!598))))))

(declare-fun bs!413577 () Bool)

(assert (= bs!413577 d!581463))

(declare-fun m!2331937 () Bool)

(assert (=> bs!413577 m!2331937))

(assert (=> b!1900247 d!581463))

(declare-fun bs!413579 () Bool)

(declare-fun d!581465 () Bool)

(assert (= bs!413579 (and d!581465 b!1900242)))

(declare-fun lambda!74293 () Int)

(assert (=> bs!413579 (not (= lambda!74293 lambda!74261))))

(declare-fun bs!413580 () Bool)

(assert (= bs!413580 (and d!581465 b!1900382)))

(assert (=> bs!413580 (= lambda!74293 lambda!74273)))

(declare-fun bs!413581 () Bool)

(assert (= bs!413581 (and d!581465 b!1900571)))

(assert (=> bs!413581 (= lambda!74293 lambda!74282)))

(declare-fun b!1900767 () Bool)

(declare-fun e!1213968 () Bool)

(assert (=> b!1900767 (= e!1213968 true)))

(declare-fun b!1900766 () Bool)

(declare-fun e!1213967 () Bool)

(assert (=> b!1900766 (= e!1213967 e!1213968)))

(declare-fun b!1900765 () Bool)

(declare-fun e!1213966 () Bool)

(assert (=> b!1900765 (= e!1213966 e!1213967)))

(assert (=> d!581465 e!1213966))

(assert (= b!1900766 b!1900767))

(assert (= b!1900765 b!1900766))

(assert (= (and d!581465 ((_ is Cons!21388) rules!3198)) b!1900765))

(assert (=> b!1900767 (< (dynLambda!10406 order!13509 (toValue!5421 (transformation!3804 (h!26789 rules!3198)))) (dynLambda!10407 order!13511 lambda!74293))))

(assert (=> b!1900767 (< (dynLambda!10408 order!13513 (toChars!5280 (transformation!3804 (h!26789 rules!3198)))) (dynLambda!10407 order!13511 lambda!74293))))

(assert (=> d!581465 true))

(declare-fun lt!726910 () Bool)

(assert (=> d!581465 (= lt!726910 (forall!4484 tokens!598 lambda!74293))))

(declare-fun e!1213965 () Bool)

(assert (=> d!581465 (= lt!726910 e!1213965)))

(declare-fun res!848623 () Bool)

(assert (=> d!581465 (=> res!848623 e!1213965)))

(assert (=> d!581465 (= res!848623 (not ((_ is Cons!21389) tokens!598)))))

(assert (=> d!581465 (not (isEmpty!13116 rules!3198))))

(assert (=> d!581465 (= (rulesProduceEachTokenIndividuallyList!1148 thiss!23328 rules!3198 tokens!598) lt!726910)))

(declare-fun b!1900763 () Bool)

(declare-fun e!1213964 () Bool)

(assert (=> b!1900763 (= e!1213965 e!1213964)))

(declare-fun res!848624 () Bool)

(assert (=> b!1900763 (=> (not res!848624) (not e!1213964))))

(assert (=> b!1900763 (= res!848624 (rulesProduceIndividualToken!1589 thiss!23328 rules!3198 (h!26790 tokens!598)))))

(declare-fun b!1900764 () Bool)

(assert (=> b!1900764 (= e!1213964 (rulesProduceEachTokenIndividuallyList!1148 thiss!23328 rules!3198 (t!176742 tokens!598)))))

(assert (= (and d!581465 (not res!848623)) b!1900763))

(assert (= (and b!1900763 res!848624) b!1900764))

(declare-fun m!2331989 () Bool)

(assert (=> d!581465 m!2331989))

(assert (=> d!581465 m!2331377))

(declare-fun m!2331991 () Bool)

(assert (=> b!1900763 m!2331991))

(declare-fun m!2331993 () Bool)

(assert (=> b!1900764 m!2331993))

(assert (=> b!1900246 d!581465))

(declare-fun d!581479 () Bool)

(declare-fun lt!726916 () Bool)

(declare-fun e!1213973 () Bool)

(assert (=> d!581479 (= lt!726916 e!1213973)))

(declare-fun res!848633 () Bool)

(assert (=> d!581479 (=> (not res!848633) (not e!1213973))))

(declare-fun list!8696 (BalanceConc!14050) List!21471)

(declare-datatypes ((tuple2!20148 0))(
  ( (tuple2!20149 (_1!11543 BalanceConc!14050) (_2!11543 BalanceConc!14046)) )
))
(declare-fun lex!1516 (LexerInterface!3417 List!21470 BalanceConc!14046) tuple2!20148)

(assert (=> d!581479 (= res!848633 (= (list!8696 (_1!11543 (lex!1516 thiss!23328 rules!3198 (print!1445 thiss!23328 (singletonSeq!1843 separatorToken!354))))) (list!8696 (singletonSeq!1843 separatorToken!354))))))

(declare-fun e!1213974 () Bool)

(assert (=> d!581479 (= lt!726916 e!1213974)))

(declare-fun res!848632 () Bool)

(assert (=> d!581479 (=> (not res!848632) (not e!1213974))))

(declare-fun lt!726915 () tuple2!20148)

(declare-fun size!16898 (BalanceConc!14050) Int)

(assert (=> d!581479 (= res!848632 (= (size!16898 (_1!11543 lt!726915)) 1))))

(assert (=> d!581479 (= lt!726915 (lex!1516 thiss!23328 rules!3198 (print!1445 thiss!23328 (singletonSeq!1843 separatorToken!354))))))

(assert (=> d!581479 (not (isEmpty!13116 rules!3198))))

(assert (=> d!581479 (= (rulesProduceIndividualToken!1589 thiss!23328 rules!3198 separatorToken!354) lt!726916)))

(declare-fun b!1900774 () Bool)

(declare-fun res!848631 () Bool)

(assert (=> b!1900774 (=> (not res!848631) (not e!1213974))))

(declare-fun apply!5616 (BalanceConc!14050 Int) Token!7160)

(assert (=> b!1900774 (= res!848631 (= (apply!5616 (_1!11543 lt!726915) 0) separatorToken!354))))

(declare-fun b!1900775 () Bool)

(declare-fun isEmpty!13123 (BalanceConc!14046) Bool)

(assert (=> b!1900775 (= e!1213974 (isEmpty!13123 (_2!11543 lt!726915)))))

(declare-fun b!1900776 () Bool)

(assert (=> b!1900776 (= e!1213973 (isEmpty!13123 (_2!11543 (lex!1516 thiss!23328 rules!3198 (print!1445 thiss!23328 (singletonSeq!1843 separatorToken!354))))))))

(assert (= (and d!581479 res!848632) b!1900774))

(assert (= (and b!1900774 res!848631) b!1900775))

(assert (= (and d!581479 res!848633) b!1900776))

(declare-fun m!2331995 () Bool)

(assert (=> d!581479 m!2331995))

(declare-fun m!2331997 () Bool)

(assert (=> d!581479 m!2331997))

(declare-fun m!2331999 () Bool)

(assert (=> d!581479 m!2331999))

(assert (=> d!581479 m!2331997))

(declare-fun m!2332001 () Bool)

(assert (=> d!581479 m!2332001))

(assert (=> d!581479 m!2331997))

(declare-fun m!2332003 () Bool)

(assert (=> d!581479 m!2332003))

(assert (=> d!581479 m!2332001))

(declare-fun m!2332005 () Bool)

(assert (=> d!581479 m!2332005))

(assert (=> d!581479 m!2331377))

(declare-fun m!2332007 () Bool)

(assert (=> b!1900774 m!2332007))

(declare-fun m!2332009 () Bool)

(assert (=> b!1900775 m!2332009))

(assert (=> b!1900776 m!2331997))

(assert (=> b!1900776 m!2331997))

(assert (=> b!1900776 m!2332001))

(assert (=> b!1900776 m!2332001))

(assert (=> b!1900776 m!2332005))

(declare-fun m!2332011 () Bool)

(assert (=> b!1900776 m!2332011))

(assert (=> b!1900229 d!581479))

(declare-fun d!581481 () Bool)

(declare-fun res!848638 () Bool)

(declare-fun e!1213977 () Bool)

(assert (=> d!581481 (=> (not res!848638) (not e!1213977))))

(declare-fun isEmpty!13124 (List!21469) Bool)

(assert (=> d!581481 (= res!848638 (not (isEmpty!13124 (originalCharacters!4611 separatorToken!354))))))

(assert (=> d!581481 (= (inv!28483 separatorToken!354) e!1213977)))

(declare-fun b!1900781 () Bool)

(declare-fun res!848639 () Bool)

(assert (=> b!1900781 (=> (not res!848639) (not e!1213977))))

(assert (=> b!1900781 (= res!848639 (= (originalCharacters!4611 separatorToken!354) (list!8692 (dynLambda!10411 (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))) (value!120005 separatorToken!354)))))))

(declare-fun b!1900782 () Bool)

(assert (=> b!1900782 (= e!1213977 (= (size!16894 separatorToken!354) (size!16896 (originalCharacters!4611 separatorToken!354))))))

(assert (= (and d!581481 res!848638) b!1900781))

(assert (= (and b!1900781 res!848639) b!1900782))

(declare-fun b_lambda!62621 () Bool)

(assert (=> (not b_lambda!62621) (not b!1900781)))

(assert (=> b!1900781 t!176792))

(declare-fun b_and!147155 () Bool)

(assert (= b_and!147141 (and (=> t!176792 result!140124) b_and!147155)))

(assert (=> b!1900781 t!176794))

(declare-fun b_and!147157 () Bool)

(assert (= b_and!147143 (and (=> t!176794 result!140128) b_and!147157)))

(assert (=> b!1900781 t!176796))

(declare-fun b_and!147159 () Bool)

(assert (= b_and!147145 (and (=> t!176796 result!140130) b_and!147159)))

(declare-fun m!2332013 () Bool)

(assert (=> d!581481 m!2332013))

(assert (=> b!1900781 m!2331889))

(assert (=> b!1900781 m!2331889))

(declare-fun m!2332015 () Bool)

(assert (=> b!1900781 m!2332015))

(declare-fun m!2332017 () Bool)

(assert (=> b!1900782 m!2332017))

(assert (=> start!190508 d!581481))

(declare-fun b!1900811 () Bool)

(declare-fun res!848662 () Bool)

(declare-fun e!1213997 () Bool)

(assert (=> b!1900811 (=> (not res!848662) (not e!1213997))))

(declare-fun call!117093 () Bool)

(assert (=> b!1900811 (= res!848662 (not call!117093))))

(declare-fun bm!117088 () Bool)

(assert (=> bm!117088 (= call!117093 (isEmpty!13124 lt!726740))))

(declare-fun b!1900812 () Bool)

(declare-fun res!848657 () Bool)

(declare-fun e!1213998 () Bool)

(assert (=> b!1900812 (=> res!848657 e!1213998)))

(assert (=> b!1900812 (= res!848657 e!1213997)))

(declare-fun res!848659 () Bool)

(assert (=> b!1900812 (=> (not res!848659) (not e!1213997))))

(declare-fun lt!726919 () Bool)

(assert (=> b!1900812 (= res!848659 lt!726919)))

(declare-fun b!1900813 () Bool)

(declare-fun e!1213992 () Bool)

(declare-fun derivativeStep!1346 (Regex!5229 C!10604) Regex!5229)

(declare-fun head!4414 (List!21469) C!10604)

(declare-fun tail!2940 (List!21469) List!21469)

(assert (=> b!1900813 (= e!1213992 (matchR!2515 (derivativeStep!1346 (regex!3804 lt!726733) (head!4414 lt!726740)) (tail!2940 lt!726740)))))

(declare-fun b!1900814 () Bool)

(declare-fun res!848656 () Bool)

(assert (=> b!1900814 (=> res!848656 e!1213998)))

(assert (=> b!1900814 (= res!848656 (not ((_ is ElementMatch!5229) (regex!3804 lt!726733))))))

(declare-fun e!1213993 () Bool)

(assert (=> b!1900814 (= e!1213993 e!1213998)))

(declare-fun b!1900816 () Bool)

(declare-fun e!1213995 () Bool)

(assert (=> b!1900816 (= e!1213995 e!1213993)))

(declare-fun c!309744 () Bool)

(assert (=> b!1900816 (= c!309744 ((_ is EmptyLang!5229) (regex!3804 lt!726733)))))

(declare-fun b!1900817 () Bool)

(declare-fun nullable!1587 (Regex!5229) Bool)

(assert (=> b!1900817 (= e!1213992 (nullable!1587 (regex!3804 lt!726733)))))

(declare-fun b!1900818 () Bool)

(assert (=> b!1900818 (= e!1213997 (= (head!4414 lt!726740) (c!309643 (regex!3804 lt!726733))))))

(declare-fun b!1900819 () Bool)

(declare-fun e!1213994 () Bool)

(assert (=> b!1900819 (= e!1213994 (not (= (head!4414 lt!726740) (c!309643 (regex!3804 lt!726733)))))))

(declare-fun b!1900820 () Bool)

(assert (=> b!1900820 (= e!1213993 (not lt!726919))))

(declare-fun d!581483 () Bool)

(assert (=> d!581483 e!1213995))

(declare-fun c!309742 () Bool)

(assert (=> d!581483 (= c!309742 ((_ is EmptyExpr!5229) (regex!3804 lt!726733)))))

(assert (=> d!581483 (= lt!726919 e!1213992)))

(declare-fun c!309743 () Bool)

(assert (=> d!581483 (= c!309743 (isEmpty!13124 lt!726740))))

(declare-fun validRegex!2111 (Regex!5229) Bool)

(assert (=> d!581483 (validRegex!2111 (regex!3804 lt!726733))))

(assert (=> d!581483 (= (matchR!2515 (regex!3804 lt!726733) lt!726740) lt!726919)))

(declare-fun b!1900815 () Bool)

(declare-fun res!848658 () Bool)

(assert (=> b!1900815 (=> (not res!848658) (not e!1213997))))

(assert (=> b!1900815 (= res!848658 (isEmpty!13124 (tail!2940 lt!726740)))))

(declare-fun b!1900821 () Bool)

(declare-fun e!1213996 () Bool)

(assert (=> b!1900821 (= e!1213996 e!1213994)))

(declare-fun res!848663 () Bool)

(assert (=> b!1900821 (=> res!848663 e!1213994)))

(assert (=> b!1900821 (= res!848663 call!117093)))

(declare-fun b!1900822 () Bool)

(assert (=> b!1900822 (= e!1213995 (= lt!726919 call!117093))))

(declare-fun b!1900823 () Bool)

(declare-fun res!848661 () Bool)

(assert (=> b!1900823 (=> res!848661 e!1213994)))

(assert (=> b!1900823 (= res!848661 (not (isEmpty!13124 (tail!2940 lt!726740))))))

(declare-fun b!1900824 () Bool)

(assert (=> b!1900824 (= e!1213998 e!1213996)))

(declare-fun res!848660 () Bool)

(assert (=> b!1900824 (=> (not res!848660) (not e!1213996))))

(assert (=> b!1900824 (= res!848660 (not lt!726919))))

(assert (= (and d!581483 c!309743) b!1900817))

(assert (= (and d!581483 (not c!309743)) b!1900813))

(assert (= (and d!581483 c!309742) b!1900822))

(assert (= (and d!581483 (not c!309742)) b!1900816))

(assert (= (and b!1900816 c!309744) b!1900820))

(assert (= (and b!1900816 (not c!309744)) b!1900814))

(assert (= (and b!1900814 (not res!848656)) b!1900812))

(assert (= (and b!1900812 res!848659) b!1900811))

(assert (= (and b!1900811 res!848662) b!1900815))

(assert (= (and b!1900815 res!848658) b!1900818))

(assert (= (and b!1900812 (not res!848657)) b!1900824))

(assert (= (and b!1900824 res!848660) b!1900821))

(assert (= (and b!1900821 (not res!848663)) b!1900823))

(assert (= (and b!1900823 (not res!848661)) b!1900819))

(assert (= (or b!1900822 b!1900811 b!1900821) bm!117088))

(declare-fun m!2332019 () Bool)

(assert (=> b!1900818 m!2332019))

(assert (=> b!1900813 m!2332019))

(assert (=> b!1900813 m!2332019))

(declare-fun m!2332021 () Bool)

(assert (=> b!1900813 m!2332021))

(declare-fun m!2332023 () Bool)

(assert (=> b!1900813 m!2332023))

(assert (=> b!1900813 m!2332021))

(assert (=> b!1900813 m!2332023))

(declare-fun m!2332025 () Bool)

(assert (=> b!1900813 m!2332025))

(declare-fun m!2332027 () Bool)

(assert (=> d!581483 m!2332027))

(declare-fun m!2332029 () Bool)

(assert (=> d!581483 m!2332029))

(assert (=> b!1900823 m!2332023))

(assert (=> b!1900823 m!2332023))

(declare-fun m!2332031 () Bool)

(assert (=> b!1900823 m!2332031))

(assert (=> b!1900819 m!2332019))

(assert (=> bm!117088 m!2332027))

(assert (=> b!1900815 m!2332023))

(assert (=> b!1900815 m!2332023))

(assert (=> b!1900815 m!2332031))

(declare-fun m!2332033 () Bool)

(assert (=> b!1900817 m!2332033))

(assert (=> b!1900249 d!581483))

(declare-fun d!581485 () Bool)

(assert (=> d!581485 (= (get!6622 lt!726736) (v!26341 lt!726736))))

(assert (=> b!1900249 d!581485))

(declare-fun d!581487 () Bool)

(assert (=> d!581487 (= (inv!28479 (tag!4228 (h!26789 rules!3198))) (= (mod (str.len (value!120004 (tag!4228 (h!26789 rules!3198)))) 2) 0))))

(assert (=> b!1900238 d!581487))

(declare-fun d!581489 () Bool)

(declare-fun res!848666 () Bool)

(declare-fun e!1214001 () Bool)

(assert (=> d!581489 (=> (not res!848666) (not e!1214001))))

(declare-fun semiInverseModEq!1537 (Int Int) Bool)

(assert (=> d!581489 (= res!848666 (semiInverseModEq!1537 (toChars!5280 (transformation!3804 (h!26789 rules!3198))) (toValue!5421 (transformation!3804 (h!26789 rules!3198)))))))

(assert (=> d!581489 (= (inv!28482 (transformation!3804 (h!26789 rules!3198))) e!1214001)))

(declare-fun b!1900827 () Bool)

(declare-fun equivClasses!1464 (Int Int) Bool)

(assert (=> b!1900827 (= e!1214001 (equivClasses!1464 (toChars!5280 (transformation!3804 (h!26789 rules!3198))) (toValue!5421 (transformation!3804 (h!26789 rules!3198)))))))

(assert (= (and d!581489 res!848666) b!1900827))

(declare-fun m!2332035 () Bool)

(assert (=> d!581489 m!2332035))

(declare-fun m!2332037 () Bool)

(assert (=> b!1900827 m!2332037))

(assert (=> b!1900238 d!581489))

(declare-fun d!581491 () Bool)

(assert (=> d!581491 (= (get!6623 lt!726737) (v!26342 lt!726737))))

(assert (=> b!1900253 d!581491))

(declare-fun b!1900828 () Bool)

(declare-fun res!848673 () Bool)

(declare-fun e!1214007 () Bool)

(assert (=> b!1900828 (=> (not res!848673) (not e!1214007))))

(declare-fun call!117094 () Bool)

(assert (=> b!1900828 (= res!848673 (not call!117094))))

(declare-fun bm!117089 () Bool)

(assert (=> bm!117089 (= call!117094 (isEmpty!13124 lt!726732))))

(declare-fun b!1900829 () Bool)

(declare-fun res!848668 () Bool)

(declare-fun e!1214008 () Bool)

(assert (=> b!1900829 (=> res!848668 e!1214008)))

(assert (=> b!1900829 (= res!848668 e!1214007)))

(declare-fun res!848670 () Bool)

(assert (=> b!1900829 (=> (not res!848670) (not e!1214007))))

(declare-fun lt!726920 () Bool)

(assert (=> b!1900829 (= res!848670 lt!726920)))

(declare-fun b!1900830 () Bool)

(declare-fun e!1214002 () Bool)

(assert (=> b!1900830 (= e!1214002 (matchR!2515 (derivativeStep!1346 (regex!3804 lt!726730) (head!4414 lt!726732)) (tail!2940 lt!726732)))))

(declare-fun b!1900831 () Bool)

(declare-fun res!848667 () Bool)

(assert (=> b!1900831 (=> res!848667 e!1214008)))

(assert (=> b!1900831 (= res!848667 (not ((_ is ElementMatch!5229) (regex!3804 lt!726730))))))

(declare-fun e!1214003 () Bool)

(assert (=> b!1900831 (= e!1214003 e!1214008)))

(declare-fun b!1900833 () Bool)

(declare-fun e!1214005 () Bool)

(assert (=> b!1900833 (= e!1214005 e!1214003)))

(declare-fun c!309747 () Bool)

(assert (=> b!1900833 (= c!309747 ((_ is EmptyLang!5229) (regex!3804 lt!726730)))))

(declare-fun b!1900834 () Bool)

(assert (=> b!1900834 (= e!1214002 (nullable!1587 (regex!3804 lt!726730)))))

(declare-fun b!1900835 () Bool)

(assert (=> b!1900835 (= e!1214007 (= (head!4414 lt!726732) (c!309643 (regex!3804 lt!726730))))))

(declare-fun b!1900836 () Bool)

(declare-fun e!1214004 () Bool)

(assert (=> b!1900836 (= e!1214004 (not (= (head!4414 lt!726732) (c!309643 (regex!3804 lt!726730)))))))

(declare-fun b!1900837 () Bool)

(assert (=> b!1900837 (= e!1214003 (not lt!726920))))

(declare-fun d!581493 () Bool)

(assert (=> d!581493 e!1214005))

(declare-fun c!309745 () Bool)

(assert (=> d!581493 (= c!309745 ((_ is EmptyExpr!5229) (regex!3804 lt!726730)))))

(assert (=> d!581493 (= lt!726920 e!1214002)))

(declare-fun c!309746 () Bool)

(assert (=> d!581493 (= c!309746 (isEmpty!13124 lt!726732))))

(assert (=> d!581493 (validRegex!2111 (regex!3804 lt!726730))))

(assert (=> d!581493 (= (matchR!2515 (regex!3804 lt!726730) lt!726732) lt!726920)))

(declare-fun b!1900832 () Bool)

(declare-fun res!848669 () Bool)

(assert (=> b!1900832 (=> (not res!848669) (not e!1214007))))

(assert (=> b!1900832 (= res!848669 (isEmpty!13124 (tail!2940 lt!726732)))))

(declare-fun b!1900838 () Bool)

(declare-fun e!1214006 () Bool)

(assert (=> b!1900838 (= e!1214006 e!1214004)))

(declare-fun res!848674 () Bool)

(assert (=> b!1900838 (=> res!848674 e!1214004)))

(assert (=> b!1900838 (= res!848674 call!117094)))

(declare-fun b!1900839 () Bool)

(assert (=> b!1900839 (= e!1214005 (= lt!726920 call!117094))))

(declare-fun b!1900840 () Bool)

(declare-fun res!848672 () Bool)

(assert (=> b!1900840 (=> res!848672 e!1214004)))

(assert (=> b!1900840 (= res!848672 (not (isEmpty!13124 (tail!2940 lt!726732))))))

(declare-fun b!1900841 () Bool)

(assert (=> b!1900841 (= e!1214008 e!1214006)))

(declare-fun res!848671 () Bool)

(assert (=> b!1900841 (=> (not res!848671) (not e!1214006))))

(assert (=> b!1900841 (= res!848671 (not lt!726920))))

(assert (= (and d!581493 c!309746) b!1900834))

(assert (= (and d!581493 (not c!309746)) b!1900830))

(assert (= (and d!581493 c!309745) b!1900839))

(assert (= (and d!581493 (not c!309745)) b!1900833))

(assert (= (and b!1900833 c!309747) b!1900837))

(assert (= (and b!1900833 (not c!309747)) b!1900831))

(assert (= (and b!1900831 (not res!848667)) b!1900829))

(assert (= (and b!1900829 res!848670) b!1900828))

(assert (= (and b!1900828 res!848673) b!1900832))

(assert (= (and b!1900832 res!848669) b!1900835))

(assert (= (and b!1900829 (not res!848668)) b!1900841))

(assert (= (and b!1900841 res!848671) b!1900838))

(assert (= (and b!1900838 (not res!848674)) b!1900840))

(assert (= (and b!1900840 (not res!848672)) b!1900836))

(assert (= (or b!1900839 b!1900828 b!1900838) bm!117089))

(declare-fun m!2332039 () Bool)

(assert (=> b!1900835 m!2332039))

(assert (=> b!1900830 m!2332039))

(assert (=> b!1900830 m!2332039))

(declare-fun m!2332041 () Bool)

(assert (=> b!1900830 m!2332041))

(declare-fun m!2332043 () Bool)

(assert (=> b!1900830 m!2332043))

(assert (=> b!1900830 m!2332041))

(assert (=> b!1900830 m!2332043))

(declare-fun m!2332045 () Bool)

(assert (=> b!1900830 m!2332045))

(declare-fun m!2332047 () Bool)

(assert (=> d!581493 m!2332047))

(declare-fun m!2332049 () Bool)

(assert (=> d!581493 m!2332049))

(assert (=> b!1900840 m!2332043))

(assert (=> b!1900840 m!2332043))

(declare-fun m!2332051 () Bool)

(assert (=> b!1900840 m!2332051))

(assert (=> b!1900836 m!2332039))

(assert (=> bm!117089 m!2332047))

(assert (=> b!1900832 m!2332043))

(assert (=> b!1900832 m!2332043))

(assert (=> b!1900832 m!2332051))

(declare-fun m!2332053 () Bool)

(assert (=> b!1900834 m!2332053))

(assert (=> b!1900232 d!581493))

(declare-fun d!581495 () Bool)

(assert (=> d!581495 (= (get!6622 lt!726735) (v!26341 lt!726735))))

(assert (=> b!1900232 d!581495))

(declare-fun d!581497 () Bool)

(assert (=> d!581497 (= (inv!28479 (tag!4228 (rule!5997 separatorToken!354))) (= (mod (str.len (value!120004 (tag!4228 (rule!5997 separatorToken!354)))) 2) 0))))

(assert (=> b!1900231 d!581497))

(declare-fun d!581499 () Bool)

(declare-fun res!848675 () Bool)

(declare-fun e!1214009 () Bool)

(assert (=> d!581499 (=> (not res!848675) (not e!1214009))))

(assert (=> d!581499 (= res!848675 (semiInverseModEq!1537 (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))) (toValue!5421 (transformation!3804 (rule!5997 separatorToken!354)))))))

(assert (=> d!581499 (= (inv!28482 (transformation!3804 (rule!5997 separatorToken!354))) e!1214009)))

(declare-fun b!1900842 () Bool)

(assert (=> b!1900842 (= e!1214009 (equivClasses!1464 (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))) (toValue!5421 (transformation!3804 (rule!5997 separatorToken!354)))))))

(assert (= (and d!581499 res!848675) b!1900842))

(declare-fun m!2332055 () Bool)

(assert (=> d!581499 m!2332055))

(declare-fun m!2332057 () Bool)

(assert (=> b!1900842 m!2332057))

(assert (=> b!1900231 d!581499))

(declare-fun d!581501 () Bool)

(declare-fun res!848680 () Bool)

(declare-fun e!1214014 () Bool)

(assert (=> d!581501 (=> res!848680 e!1214014)))

(assert (=> d!581501 (= res!848680 ((_ is Nil!21389) tokens!598))))

(assert (=> d!581501 (= (forall!4484 tokens!598 lambda!74261) e!1214014)))

(declare-fun b!1900847 () Bool)

(declare-fun e!1214015 () Bool)

(assert (=> b!1900847 (= e!1214014 e!1214015)))

(declare-fun res!848681 () Bool)

(assert (=> b!1900847 (=> (not res!848681) (not e!1214015))))

(declare-fun dynLambda!10413 (Int Token!7160) Bool)

(assert (=> b!1900847 (= res!848681 (dynLambda!10413 lambda!74261 (h!26790 tokens!598)))))

(declare-fun b!1900848 () Bool)

(assert (=> b!1900848 (= e!1214015 (forall!4484 (t!176742 tokens!598) lambda!74261))))

(assert (= (and d!581501 (not res!848680)) b!1900847))

(assert (= (and b!1900847 res!848681) b!1900848))

(declare-fun b_lambda!62623 () Bool)

(assert (=> (not b_lambda!62623) (not b!1900847)))

(declare-fun m!2332059 () Bool)

(assert (=> b!1900847 m!2332059))

(declare-fun m!2332061 () Bool)

(assert (=> b!1900848 m!2332061))

(assert (=> b!1900242 d!581501))

(declare-fun d!581503 () Bool)

(assert (=> d!581503 (= (inv!28479 (tag!4228 (rule!5997 (h!26790 tokens!598)))) (= (mod (str.len (value!120004 (tag!4228 (rule!5997 (h!26790 tokens!598))))) 2) 0))))

(assert (=> b!1900241 d!581503))

(declare-fun d!581505 () Bool)

(declare-fun res!848682 () Bool)

(declare-fun e!1214016 () Bool)

(assert (=> d!581505 (=> (not res!848682) (not e!1214016))))

(assert (=> d!581505 (= res!848682 (semiInverseModEq!1537 (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598))))))))

(assert (=> d!581505 (= (inv!28482 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) e!1214016)))

(declare-fun b!1900849 () Bool)

(assert (=> b!1900849 (= e!1214016 (equivClasses!1464 (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598))))))))

(assert (= (and d!581505 res!848682) b!1900849))

(declare-fun m!2332063 () Bool)

(assert (=> d!581505 m!2332063))

(declare-fun m!2332065 () Bool)

(assert (=> b!1900849 m!2332065))

(assert (=> b!1900241 d!581505))

(declare-fun d!581507 () Bool)

(declare-fun res!848687 () Bool)

(declare-fun e!1214021 () Bool)

(assert (=> d!581507 (=> res!848687 e!1214021)))

(assert (=> d!581507 (= res!848687 (not ((_ is Cons!21388) rules!3198)))))

(assert (=> d!581507 (= (sepAndNonSepRulesDisjointChars!902 rules!3198 rules!3198) e!1214021)))

(declare-fun b!1900854 () Bool)

(declare-fun e!1214022 () Bool)

(assert (=> b!1900854 (= e!1214021 e!1214022)))

(declare-fun res!848688 () Bool)

(assert (=> b!1900854 (=> (not res!848688) (not e!1214022))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!422 (Rule!7408 List!21470) Bool)

(assert (=> b!1900854 (= res!848688 (ruleDisjointCharsFromAllFromOtherType!422 (h!26789 rules!3198) rules!3198))))

(declare-fun b!1900855 () Bool)

(assert (=> b!1900855 (= e!1214022 (sepAndNonSepRulesDisjointChars!902 rules!3198 (t!176741 rules!3198)))))

(assert (= (and d!581507 (not res!848687)) b!1900854))

(assert (= (and b!1900854 res!848688) b!1900855))

(declare-fun m!2332067 () Bool)

(assert (=> b!1900854 m!2332067))

(declare-fun m!2332069 () Bool)

(assert (=> b!1900855 m!2332069))

(assert (=> b!1900252 d!581507))

(declare-fun d!581509 () Bool)

(declare-fun res!848691 () Bool)

(declare-fun e!1214025 () Bool)

(assert (=> d!581509 (=> (not res!848691) (not e!1214025))))

(declare-fun rulesValid!1424 (LexerInterface!3417 List!21470) Bool)

(assert (=> d!581509 (= res!848691 (rulesValid!1424 thiss!23328 rules!3198))))

(assert (=> d!581509 (= (rulesInvariant!3024 thiss!23328 rules!3198) e!1214025)))

(declare-fun b!1900858 () Bool)

(declare-datatypes ((List!21473 0))(
  ( (Nil!21391) (Cons!21391 (h!26792 String!24818) (t!176854 List!21473)) )
))
(declare-fun noDuplicateTag!1422 (LexerInterface!3417 List!21470 List!21473) Bool)

(assert (=> b!1900858 (= e!1214025 (noDuplicateTag!1422 thiss!23328 rules!3198 Nil!21391))))

(assert (= (and d!581509 res!848691) b!1900858))

(declare-fun m!2332071 () Bool)

(assert (=> d!581509 m!2332071))

(declare-fun m!2332073 () Bool)

(assert (=> b!1900858 m!2332073))

(assert (=> b!1900251 d!581509))

(declare-fun d!581511 () Bool)

(assert (=> d!581511 (= (isEmpty!13116 rules!3198) ((_ is Nil!21388) rules!3198))))

(assert (=> b!1900245 d!581511))

(declare-fun b!1900860 () Bool)

(declare-fun res!848692 () Bool)

(declare-fun e!1214028 () Bool)

(assert (=> b!1900860 (=> res!848692 e!1214028)))

(assert (=> b!1900860 (= res!848692 (not ((_ is IntegerValue!11822) (value!120005 separatorToken!354))))))

(declare-fun e!1214026 () Bool)

(assert (=> b!1900860 (= e!1214026 e!1214028)))

(declare-fun b!1900861 () Bool)

(declare-fun e!1214027 () Bool)

(assert (=> b!1900861 (= e!1214027 (inv!16 (value!120005 separatorToken!354)))))

(declare-fun b!1900862 () Bool)

(assert (=> b!1900862 (= e!1214026 (inv!17 (value!120005 separatorToken!354)))))

(declare-fun b!1900863 () Bool)

(assert (=> b!1900863 (= e!1214027 e!1214026)))

(declare-fun c!309749 () Bool)

(assert (=> b!1900863 (= c!309749 ((_ is IntegerValue!11821) (value!120005 separatorToken!354)))))

(declare-fun b!1900859 () Bool)

(assert (=> b!1900859 (= e!1214028 (inv!15 (value!120005 separatorToken!354)))))

(declare-fun d!581513 () Bool)

(declare-fun c!309748 () Bool)

(assert (=> d!581513 (= c!309748 ((_ is IntegerValue!11820) (value!120005 separatorToken!354)))))

(assert (=> d!581513 (= (inv!21 (value!120005 separatorToken!354)) e!1214027)))

(assert (= (and d!581513 c!309748) b!1900861))

(assert (= (and d!581513 (not c!309748)) b!1900863))

(assert (= (and b!1900863 c!309749) b!1900862))

(assert (= (and b!1900863 (not c!309749)) b!1900860))

(assert (= (and b!1900860 (not res!848692)) b!1900859))

(declare-fun m!2332075 () Bool)

(assert (=> b!1900861 m!2332075))

(declare-fun m!2332077 () Bool)

(assert (=> b!1900862 m!2332077))

(declare-fun m!2332079 () Bool)

(assert (=> b!1900859 m!2332079))

(assert (=> b!1900234 d!581513))

(declare-fun d!581515 () Bool)

(declare-fun res!848693 () Bool)

(declare-fun e!1214029 () Bool)

(assert (=> d!581515 (=> (not res!848693) (not e!1214029))))

(assert (=> d!581515 (= res!848693 (not (isEmpty!13124 (originalCharacters!4611 (h!26790 tokens!598)))))))

(assert (=> d!581515 (= (inv!28483 (h!26790 tokens!598)) e!1214029)))

(declare-fun b!1900864 () Bool)

(declare-fun res!848694 () Bool)

(assert (=> b!1900864 (=> (not res!848694) (not e!1214029))))

(assert (=> b!1900864 (= res!848694 (= (originalCharacters!4611 (h!26790 tokens!598)) (list!8692 (dynLambda!10411 (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (value!120005 (h!26790 tokens!598))))))))

(declare-fun b!1900865 () Bool)

(assert (=> b!1900865 (= e!1214029 (= (size!16894 (h!26790 tokens!598)) (size!16896 (originalCharacters!4611 (h!26790 tokens!598)))))))

(assert (= (and d!581515 res!848693) b!1900864))

(assert (= (and b!1900864 res!848694) b!1900865))

(declare-fun b_lambda!62625 () Bool)

(assert (=> (not b_lambda!62625) (not b!1900864)))

(assert (=> b!1900864 t!176804))

(declare-fun b_and!147161 () Bool)

(assert (= b_and!147155 (and (=> t!176804 result!140138) b_and!147161)))

(assert (=> b!1900864 t!176806))

(declare-fun b_and!147163 () Bool)

(assert (= b_and!147157 (and (=> t!176806 result!140140) b_and!147163)))

(assert (=> b!1900864 t!176808))

(declare-fun b_and!147165 () Bool)

(assert (= b_and!147159 (and (=> t!176808 result!140142) b_and!147165)))

(declare-fun m!2332081 () Bool)

(assert (=> d!581515 m!2332081))

(assert (=> b!1900864 m!2331935))

(assert (=> b!1900864 m!2331935))

(declare-fun m!2332083 () Bool)

(assert (=> b!1900864 m!2332083))

(declare-fun m!2332085 () Bool)

(assert (=> b!1900865 m!2332085))

(assert (=> b!1900244 d!581515))

(declare-fun d!581517 () Bool)

(assert (=> d!581517 (= (isEmpty!13115 tokens!598) ((_ is Nil!21389) tokens!598))))

(assert (=> b!1900243 d!581517))

(declare-fun b!1900870 () Bool)

(declare-fun e!1214032 () Bool)

(declare-fun tp_is_empty!9081 () Bool)

(declare-fun tp!542819 () Bool)

(assert (=> b!1900870 (= e!1214032 (and tp_is_empty!9081 tp!542819))))

(assert (=> b!1900248 (= tp!542739 e!1214032)))

(assert (= (and b!1900248 ((_ is Cons!21387) (originalCharacters!4611 (h!26790 tokens!598)))) b!1900870))

(declare-fun b!1900882 () Bool)

(declare-fun e!1214035 () Bool)

(declare-fun tp!542831 () Bool)

(declare-fun tp!542833 () Bool)

(assert (=> b!1900882 (= e!1214035 (and tp!542831 tp!542833))))

(declare-fun b!1900883 () Bool)

(declare-fun tp!542830 () Bool)

(assert (=> b!1900883 (= e!1214035 tp!542830)))

(declare-fun b!1900881 () Bool)

(assert (=> b!1900881 (= e!1214035 tp_is_empty!9081)))

(assert (=> b!1900238 (= tp!542740 e!1214035)))

(declare-fun b!1900884 () Bool)

(declare-fun tp!542834 () Bool)

(declare-fun tp!542832 () Bool)

(assert (=> b!1900884 (= e!1214035 (and tp!542834 tp!542832))))

(assert (= (and b!1900238 ((_ is ElementMatch!5229) (regex!3804 (h!26789 rules!3198)))) b!1900881))

(assert (= (and b!1900238 ((_ is Concat!9170) (regex!3804 (h!26789 rules!3198)))) b!1900882))

(assert (= (and b!1900238 ((_ is Star!5229) (regex!3804 (h!26789 rules!3198)))) b!1900883))

(assert (= (and b!1900238 ((_ is Union!5229) (regex!3804 (h!26789 rules!3198)))) b!1900884))

(declare-fun b!1900886 () Bool)

(declare-fun e!1214036 () Bool)

(declare-fun tp!542836 () Bool)

(declare-fun tp!542838 () Bool)

(assert (=> b!1900886 (= e!1214036 (and tp!542836 tp!542838))))

(declare-fun b!1900887 () Bool)

(declare-fun tp!542835 () Bool)

(assert (=> b!1900887 (= e!1214036 tp!542835)))

(declare-fun b!1900885 () Bool)

(assert (=> b!1900885 (= e!1214036 tp_is_empty!9081)))

(assert (=> b!1900231 (= tp!542743 e!1214036)))

(declare-fun b!1900888 () Bool)

(declare-fun tp!542839 () Bool)

(declare-fun tp!542837 () Bool)

(assert (=> b!1900888 (= e!1214036 (and tp!542839 tp!542837))))

(assert (= (and b!1900231 ((_ is ElementMatch!5229) (regex!3804 (rule!5997 separatorToken!354)))) b!1900885))

(assert (= (and b!1900231 ((_ is Concat!9170) (regex!3804 (rule!5997 separatorToken!354)))) b!1900886))

(assert (= (and b!1900231 ((_ is Star!5229) (regex!3804 (rule!5997 separatorToken!354)))) b!1900887))

(assert (= (and b!1900231 ((_ is Union!5229) (regex!3804 (rule!5997 separatorToken!354)))) b!1900888))

(declare-fun b!1900890 () Bool)

(declare-fun e!1214037 () Bool)

(declare-fun tp!542841 () Bool)

(declare-fun tp!542843 () Bool)

(assert (=> b!1900890 (= e!1214037 (and tp!542841 tp!542843))))

(declare-fun b!1900891 () Bool)

(declare-fun tp!542840 () Bool)

(assert (=> b!1900891 (= e!1214037 tp!542840)))

(declare-fun b!1900889 () Bool)

(assert (=> b!1900889 (= e!1214037 tp_is_empty!9081)))

(assert (=> b!1900241 (= tp!542749 e!1214037)))

(declare-fun b!1900892 () Bool)

(declare-fun tp!542844 () Bool)

(declare-fun tp!542842 () Bool)

(assert (=> b!1900892 (= e!1214037 (and tp!542844 tp!542842))))

(assert (= (and b!1900241 ((_ is ElementMatch!5229) (regex!3804 (rule!5997 (h!26790 tokens!598))))) b!1900889))

(assert (= (and b!1900241 ((_ is Concat!9170) (regex!3804 (rule!5997 (h!26790 tokens!598))))) b!1900890))

(assert (= (and b!1900241 ((_ is Star!5229) (regex!3804 (rule!5997 (h!26790 tokens!598))))) b!1900891))

(assert (= (and b!1900241 ((_ is Union!5229) (regex!3804 (rule!5997 (h!26790 tokens!598))))) b!1900892))

(declare-fun b!1900903 () Bool)

(declare-fun b_free!53389 () Bool)

(declare-fun b_next!54093 () Bool)

(assert (=> b!1900903 (= b_free!53389 (not b_next!54093))))

(declare-fun tb!115929 () Bool)

(declare-fun t!176834 () Bool)

(assert (=> (and b!1900903 (= (toValue!5421 (transformation!3804 (h!26789 (t!176741 rules!3198)))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176834) tb!115929))

(declare-fun result!140178 () Bool)

(assert (= result!140178 result!140110))

(assert (=> d!581427 t!176834))

(declare-fun tb!115931 () Bool)

(declare-fun t!176836 () Bool)

(assert (=> (and b!1900903 (= (toValue!5421 (transformation!3804 (h!26789 (t!176741 rules!3198)))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176836) tb!115931))

(declare-fun result!140180 () Bool)

(assert (= result!140180 result!140118))

(assert (=> d!581427 t!176836))

(assert (=> d!581459 t!176834))

(declare-fun tp!542856 () Bool)

(declare-fun b_and!147167 () Bool)

(assert (=> b!1900903 (= tp!542856 (and (=> t!176834 result!140178) (=> t!176836 result!140180) b_and!147167))))

(declare-fun b_free!53391 () Bool)

(declare-fun b_next!54095 () Bool)

(assert (=> b!1900903 (= b_free!53391 (not b_next!54095))))

(declare-fun tb!115933 () Bool)

(declare-fun t!176838 () Bool)

(assert (=> (and b!1900903 (= (toChars!5280 (transformation!3804 (h!26789 (t!176741 rules!3198)))) (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354)))) t!176838) tb!115933))

(declare-fun result!140182 () Bool)

(assert (= result!140182 result!140124))

(assert (=> d!581451 t!176838))

(declare-fun tb!115935 () Bool)

(declare-fun t!176840 () Bool)

(assert (=> (and b!1900903 (= (toChars!5280 (transformation!3804 (h!26789 (t!176741 rules!3198)))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176840) tb!115935))

(declare-fun result!140184 () Bool)

(assert (= result!140184 result!140132))

(assert (=> d!581459 t!176840))

(declare-fun t!176842 () Bool)

(declare-fun tb!115937 () Bool)

(assert (=> (and b!1900903 (= (toChars!5280 (transformation!3804 (h!26789 (t!176741 rules!3198)))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176842) tb!115937))

(declare-fun result!140186 () Bool)

(assert (= result!140186 result!140138))

(assert (=> d!581461 t!176842))

(assert (=> b!1900864 t!176842))

(assert (=> b!1900781 t!176838))

(declare-fun b_and!147169 () Bool)

(declare-fun tp!542854 () Bool)

(assert (=> b!1900903 (= tp!542854 (and (=> t!176842 result!140186) (=> t!176838 result!140182) (=> t!176840 result!140184) b_and!147169))))

(declare-fun e!1214048 () Bool)

(assert (=> b!1900903 (= e!1214048 (and tp!542856 tp!542854))))

(declare-fun tp!542855 () Bool)

(declare-fun e!1214046 () Bool)

(declare-fun b!1900902 () Bool)

(assert (=> b!1900902 (= e!1214046 (and tp!542855 (inv!28479 (tag!4228 (h!26789 (t!176741 rules!3198)))) (inv!28482 (transformation!3804 (h!26789 (t!176741 rules!3198)))) e!1214048))))

(declare-fun b!1900901 () Bool)

(declare-fun e!1214047 () Bool)

(declare-fun tp!542853 () Bool)

(assert (=> b!1900901 (= e!1214047 (and e!1214046 tp!542853))))

(assert (=> b!1900230 (= tp!542746 e!1214047)))

(assert (= b!1900902 b!1900903))

(assert (= b!1900901 b!1900902))

(assert (= (and b!1900230 ((_ is Cons!21388) (t!176741 rules!3198))) b!1900901))

(declare-fun m!2332087 () Bool)

(assert (=> b!1900902 m!2332087))

(declare-fun m!2332089 () Bool)

(assert (=> b!1900902 m!2332089))

(declare-fun b!1900904 () Bool)

(declare-fun e!1214050 () Bool)

(declare-fun tp!542857 () Bool)

(assert (=> b!1900904 (= e!1214050 (and tp_is_empty!9081 tp!542857))))

(assert (=> b!1900234 (= tp!542747 e!1214050)))

(assert (= (and b!1900234 ((_ is Cons!21387) (originalCharacters!4611 separatorToken!354))) b!1900904))

(declare-fun b!1900918 () Bool)

(declare-fun b_free!53393 () Bool)

(declare-fun b_next!54097 () Bool)

(assert (=> b!1900918 (= b_free!53393 (not b_next!54097))))

(declare-fun t!176844 () Bool)

(declare-fun tb!115939 () Bool)

(assert (=> (and b!1900918 (= (toValue!5421 (transformation!3804 (rule!5997 (h!26790 (t!176742 tokens!598))))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176844) tb!115939))

(declare-fun result!140190 () Bool)

(assert (= result!140190 result!140110))

(assert (=> d!581427 t!176844))

(declare-fun t!176846 () Bool)

(declare-fun tb!115941 () Bool)

(assert (=> (and b!1900918 (= (toValue!5421 (transformation!3804 (rule!5997 (h!26790 (t!176742 tokens!598))))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176846) tb!115941))

(declare-fun result!140192 () Bool)

(assert (= result!140192 result!140118))

(assert (=> d!581427 t!176846))

(assert (=> d!581459 t!176844))

(declare-fun b_and!147171 () Bool)

(declare-fun tp!542869 () Bool)

(assert (=> b!1900918 (= tp!542869 (and (=> t!176844 result!140190) (=> t!176846 result!140192) b_and!147171))))

(declare-fun b_free!53395 () Bool)

(declare-fun b_next!54099 () Bool)

(assert (=> b!1900918 (= b_free!53395 (not b_next!54099))))

(declare-fun t!176848 () Bool)

(declare-fun tb!115943 () Bool)

(assert (=> (and b!1900918 (= (toChars!5280 (transformation!3804 (rule!5997 (h!26790 (t!176742 tokens!598))))) (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354)))) t!176848) tb!115943))

(declare-fun result!140194 () Bool)

(assert (= result!140194 result!140124))

(assert (=> d!581451 t!176848))

(declare-fun t!176850 () Bool)

(declare-fun tb!115945 () Bool)

(assert (=> (and b!1900918 (= (toChars!5280 (transformation!3804 (rule!5997 (h!26790 (t!176742 tokens!598))))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176850) tb!115945))

(declare-fun result!140196 () Bool)

(assert (= result!140196 result!140132))

(assert (=> d!581459 t!176850))

(declare-fun t!176852 () Bool)

(declare-fun tb!115947 () Bool)

(assert (=> (and b!1900918 (= (toChars!5280 (transformation!3804 (rule!5997 (h!26790 (t!176742 tokens!598))))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598))))) t!176852) tb!115947))

(declare-fun result!140198 () Bool)

(assert (= result!140198 result!140138))

(assert (=> d!581461 t!176852))

(assert (=> b!1900864 t!176852))

(assert (=> b!1900781 t!176848))

(declare-fun b_and!147173 () Bool)

(declare-fun tp!542871 () Bool)

(assert (=> b!1900918 (= tp!542871 (and (=> t!176848 result!140194) (=> t!176850 result!140196) (=> t!176852 result!140198) b_and!147173))))

(declare-fun e!1214065 () Bool)

(assert (=> b!1900918 (= e!1214065 (and tp!542869 tp!542871))))

(declare-fun b!1900916 () Bool)

(declare-fun e!1214066 () Bool)

(declare-fun tp!542872 () Bool)

(declare-fun e!1214064 () Bool)

(assert (=> b!1900916 (= e!1214064 (and (inv!21 (value!120005 (h!26790 (t!176742 tokens!598)))) e!1214066 tp!542872))))

(declare-fun b!1900917 () Bool)

(declare-fun tp!542870 () Bool)

(assert (=> b!1900917 (= e!1214066 (and tp!542870 (inv!28479 (tag!4228 (rule!5997 (h!26790 (t!176742 tokens!598))))) (inv!28482 (transformation!3804 (rule!5997 (h!26790 (t!176742 tokens!598))))) e!1214065))))

(declare-fun e!1214068 () Bool)

(assert (=> b!1900244 (= tp!542745 e!1214068)))

(declare-fun b!1900915 () Bool)

(declare-fun tp!542868 () Bool)

(assert (=> b!1900915 (= e!1214068 (and (inv!28483 (h!26790 (t!176742 tokens!598))) e!1214064 tp!542868))))

(assert (= b!1900917 b!1900918))

(assert (= b!1900916 b!1900917))

(assert (= b!1900915 b!1900916))

(assert (= (and b!1900244 ((_ is Cons!21389) (t!176742 tokens!598))) b!1900915))

(declare-fun m!2332091 () Bool)

(assert (=> b!1900916 m!2332091))

(declare-fun m!2332093 () Bool)

(assert (=> b!1900917 m!2332093))

(declare-fun m!2332095 () Bool)

(assert (=> b!1900917 m!2332095))

(declare-fun m!2332097 () Bool)

(assert (=> b!1900915 m!2332097))

(declare-fun b_lambda!62627 () Bool)

(assert (= b_lambda!62595 (or (and b!1900236 b_free!53371 (= (toChars!5280 (transformation!3804 (h!26789 rules!3198))) (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))))) (and b!1900240 b_free!53379) (and b!1900235 b_free!53375 (= (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))))) (and b!1900918 b_free!53395 (= (toChars!5280 (transformation!3804 (rule!5997 (h!26790 (t!176742 tokens!598))))) (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))))) (and b!1900903 b_free!53391 (= (toChars!5280 (transformation!3804 (h!26789 (t!176741 rules!3198)))) (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))))) b_lambda!62627)))

(declare-fun b_lambda!62629 () Bool)

(assert (= b_lambda!62623 (or b!1900242 b_lambda!62629)))

(declare-fun bs!413582 () Bool)

(declare-fun d!581519 () Bool)

(assert (= bs!413582 (and d!581519 b!1900242)))

(assert (=> bs!413582 (= (dynLambda!10413 lambda!74261 (h!26790 tokens!598)) (not (isSeparator!3804 (rule!5997 (h!26790 tokens!598)))))))

(assert (=> b!1900847 d!581519))

(declare-fun b_lambda!62631 () Bool)

(assert (= b_lambda!62625 (or (and b!1900918 b_free!53395 (= (toChars!5280 (transformation!3804 (rule!5997 (h!26790 (t!176742 tokens!598))))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900240 b_free!53379 (= (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900236 b_free!53371 (= (toChars!5280 (transformation!3804 (h!26789 rules!3198))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900903 b_free!53391 (= (toChars!5280 (transformation!3804 (h!26789 (t!176741 rules!3198)))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900235 b_free!53375) b_lambda!62631)))

(declare-fun b_lambda!62633 () Bool)

(assert (= b_lambda!62599 (or (and b!1900240 b_free!53377 (= (toValue!5421 (transformation!3804 (rule!5997 separatorToken!354))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900236 b_free!53369 (= (toValue!5421 (transformation!3804 (h!26789 rules!3198))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900235 b_free!53373) (and b!1900918 b_free!53393 (= (toValue!5421 (transformation!3804 (rule!5997 (h!26790 (t!176742 tokens!598))))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900903 b_free!53389 (= (toValue!5421 (transformation!3804 (h!26789 (t!176741 rules!3198)))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) b_lambda!62633)))

(declare-fun b_lambda!62635 () Bool)

(assert (= b_lambda!62591 (or (and b!1900240 b_free!53377 (= (toValue!5421 (transformation!3804 (rule!5997 separatorToken!354))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900236 b_free!53369 (= (toValue!5421 (transformation!3804 (h!26789 rules!3198))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900235 b_free!53373) (and b!1900918 b_free!53393 (= (toValue!5421 (transformation!3804 (rule!5997 (h!26790 (t!176742 tokens!598))))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900903 b_free!53389 (= (toValue!5421 (transformation!3804 (h!26789 (t!176741 rules!3198)))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) b_lambda!62635)))

(declare-fun b_lambda!62637 () Bool)

(assert (= b_lambda!62589 (or (and b!1900240 b_free!53377 (= (toValue!5421 (transformation!3804 (rule!5997 separatorToken!354))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900236 b_free!53369 (= (toValue!5421 (transformation!3804 (h!26789 rules!3198))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900235 b_free!53373) (and b!1900918 b_free!53393 (= (toValue!5421 (transformation!3804 (rule!5997 (h!26790 (t!176742 tokens!598))))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900903 b_free!53389 (= (toValue!5421 (transformation!3804 (h!26789 (t!176741 rules!3198)))) (toValue!5421 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) b_lambda!62637)))

(declare-fun b_lambda!62639 () Bool)

(assert (= b_lambda!62621 (or (and b!1900236 b_free!53371 (= (toChars!5280 (transformation!3804 (h!26789 rules!3198))) (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))))) (and b!1900240 b_free!53379) (and b!1900235 b_free!53375 (= (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))) (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))))) (and b!1900918 b_free!53395 (= (toChars!5280 (transformation!3804 (rule!5997 (h!26790 (t!176742 tokens!598))))) (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))))) (and b!1900903 b_free!53391 (= (toChars!5280 (transformation!3804 (h!26789 (t!176741 rules!3198)))) (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))))) b_lambda!62639)))

(declare-fun b_lambda!62641 () Bool)

(assert (= b_lambda!62597 (or (and b!1900918 b_free!53395 (= (toChars!5280 (transformation!3804 (rule!5997 (h!26790 (t!176742 tokens!598))))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900240 b_free!53379 (= (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900236 b_free!53371 (= (toChars!5280 (transformation!3804 (h!26789 rules!3198))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900903 b_free!53391 (= (toChars!5280 (transformation!3804 (h!26789 (t!176741 rules!3198)))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900235 b_free!53375) b_lambda!62641)))

(declare-fun b_lambda!62643 () Bool)

(assert (= b_lambda!62601 (or (and b!1900918 b_free!53395 (= (toChars!5280 (transformation!3804 (rule!5997 (h!26790 (t!176742 tokens!598))))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900240 b_free!53379 (= (toChars!5280 (transformation!3804 (rule!5997 separatorToken!354))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900236 b_free!53371 (= (toChars!5280 (transformation!3804 (h!26789 rules!3198))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900903 b_free!53391 (= (toChars!5280 (transformation!3804 (h!26789 (t!176741 rules!3198)))) (toChars!5280 (transformation!3804 (rule!5997 (h!26790 tokens!598)))))) (and b!1900235 b_free!53375) b_lambda!62643)))

(check-sat (not b!1900327) (not b!1900559) (not d!581483) b_and!147163 (not b_next!54083) (not d!581455) (not b!1900823) (not b!1900378) (not b!1900775) (not b!1900672) (not b!1900890) (not b_next!54095) (not b!1900855) b_and!147171 (not d!581441) (not b!1900827) (not b!1900902) (not bm!117049) (not b_next!54099) (not b!1900888) (not d!581515) (not d!581489) (not b!1900641) (not b!1900813) (not b!1900328) (not b!1900663) (not bm!117088) (not b!1900383) (not tb!115897) (not bm!117074) (not b!1900650) (not b!1900886) (not d!581493) (not b_next!54073) (not b!1900382) (not b!1900552) (not b!1900849) (not b!1900573) (not d!581413) (not b!1900569) (not d!581423) (not tb!115903) (not b!1900859) (not b!1900571) (not b!1900815) (not d!581457) (not b_lambda!62637) (not b!1900567) (not b!1900834) (not b!1900423) (not b_next!54079) (not b!1900862) (not b_next!54075) (not b!1900901) b_and!147137 (not bm!117051) (not d!581459) (not b_lambda!62641) (not b!1900764) (not b!1900882) (not b!1900560) (not d!581479) (not b_lambda!62639) (not b_lambda!62635) (not b!1900776) (not d!581463) (not d!581465) (not b!1900836) (not d!581395) (not b!1900530) (not d!581427) (not b!1900917) b_and!147165 (not b!1900425) (not b!1900671) (not b!1900830) (not d!581453) (not b!1900556) (not b!1900832) (not b!1900666) (not b!1900763) (not b!1900887) (not b!1900533) b_and!147167 (not bm!117089) (not b!1900553) (not tb!115891) (not bm!117050) (not tb!115879) b_and!147169 (not tb!115885) (not b!1900848) (not b!1900819) (not d!581509) (not bm!117077) (not d!581505) (not b!1900557) (not b!1900854) (not b_next!54097) (not b!1900453) (not b!1900818) tp_is_empty!9081 (not b!1900536) (not b!1900865) (not b!1900452) (not b_next!54093) (not b!1900765) (not b!1900840) (not b!1900915) (not bm!117072) (not b!1900891) (not b!1900781) (not b!1900380) (not b_lambda!62629) (not b!1900904) (not b!1900774) (not b!1900864) (not b!1900648) b_and!147173 (not b!1900884) (not b_lambda!62633) (not b!1900782) (not b!1900817) (not b!1900572) (not b!1900858) (not d!581381) (not b!1900842) (not b!1900534) (not b!1900870) (not b!1900532) (not b!1900680) (not b!1900916) (not d!581391) (not b!1900642) (not b!1900835) (not bm!117079) b_and!147135 (not b!1900861) (not b!1900531) (not b_lambda!62631) (not b_next!54081) (not d!581389) (not d!581451) (not b!1900555) (not b!1900883) (not b_lambda!62627) (not d!581461) (not b!1900892) (not d!581481) (not bm!117078) (not d!581499) (not b!1900669) b_and!147139 (not b!1900396) (not d!581425) (not b!1900681) b_and!147161 (not b!1900426) (not d!581351) (not b!1900537) (not b_lambda!62643) (not b!1900554) (not d!581385) (not b!1900665) (not b!1900649) (not b_next!54077) (not b!1900529))
(check-sat (not b_next!54073) (not b_next!54079) b_and!147165 b_and!147167 b_and!147169 (not b_next!54097) (not b_next!54093) b_and!147173 b_and!147139 b_and!147161 (not b_next!54077) (not b_next!54083) b_and!147163 (not b_next!54095) b_and!147171 (not b_next!54099) (not b_next!54075) b_and!147137 (not b_next!54081) b_and!147135)
