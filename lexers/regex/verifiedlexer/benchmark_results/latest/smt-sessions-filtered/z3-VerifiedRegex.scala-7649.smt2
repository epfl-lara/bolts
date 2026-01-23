; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403766 () Bool)

(assert start!403766)

(declare-fun b!4223946 () Bool)

(declare-fun b_free!124291 () Bool)

(declare-fun b_next!124995 () Bool)

(assert (=> b!4223946 (= b_free!124291 (not b_next!124995))))

(declare-fun tp!1292860 () Bool)

(declare-fun b_and!333501 () Bool)

(assert (=> b!4223946 (= tp!1292860 b_and!333501)))

(declare-fun b_free!124293 () Bool)

(declare-fun b_next!124997 () Bool)

(assert (=> b!4223946 (= b_free!124293 (not b_next!124997))))

(declare-fun tp!1292857 () Bool)

(declare-fun b_and!333503 () Bool)

(assert (=> b!4223946 (= tp!1292857 b_and!333503)))

(declare-fun b!4223948 () Bool)

(declare-fun b_free!124295 () Bool)

(declare-fun b_next!124999 () Bool)

(assert (=> b!4223948 (= b_free!124295 (not b_next!124999))))

(declare-fun tp!1292864 () Bool)

(declare-fun b_and!333505 () Bool)

(assert (=> b!4223948 (= tp!1292864 b_and!333505)))

(declare-fun b_free!124297 () Bool)

(declare-fun b_next!125001 () Bool)

(assert (=> b!4223948 (= b_free!124297 (not b_next!125001))))

(declare-fun tp!1292862 () Bool)

(declare-fun b_and!333507 () Bool)

(assert (=> b!4223948 (= tp!1292862 b_and!333507)))

(declare-fun b!4223941 () Bool)

(declare-fun e!2622517 () Bool)

(declare-fun e!2622524 () Bool)

(assert (=> b!4223941 (= e!2622517 (not e!2622524))))

(declare-fun res!1736527 () Bool)

(assert (=> b!4223941 (=> res!1736527 e!2622524)))

(declare-datatypes ((List!46639 0))(
  ( (Nil!46515) (Cons!46515 (h!51935 (_ BitVec 16)) (t!349224 List!46639)) )
))
(declare-datatypes ((TokenValue!8042 0))(
  ( (FloatLiteralValue!16084 (text!56739 List!46639)) (TokenValueExt!8041 (__x!28307 Int)) (Broken!40210 (value!243143 List!46639)) (Object!8165) (End!8042) (Def!8042) (Underscore!8042) (Match!8042) (Else!8042) (Error!8042) (Case!8042) (If!8042) (Extends!8042) (Abstract!8042) (Class!8042) (Val!8042) (DelimiterValue!16084 (del!8102 List!46639)) (KeywordValue!8048 (value!243144 List!46639)) (CommentValue!16084 (value!243145 List!46639)) (WhitespaceValue!16084 (value!243146 List!46639)) (IndentationValue!8042 (value!243147 List!46639)) (String!54079) (Int32!8042) (Broken!40211 (value!243148 List!46639)) (Boolean!8043) (Unit!65674) (OperatorValue!8045 (op!8102 List!46639)) (IdentifierValue!16084 (value!243149 List!46639)) (IdentifierValue!16085 (value!243150 List!46639)) (WhitespaceValue!16085 (value!243151 List!46639)) (True!16084) (False!16084) (Broken!40212 (value!243152 List!46639)) (Broken!40213 (value!243153 List!46639)) (True!16085) (RightBrace!8042) (RightBracket!8042) (Colon!8042) (Null!8042) (Comma!8042) (LeftBracket!8042) (False!16085) (LeftBrace!8042) (ImaginaryLiteralValue!8042 (text!56740 List!46639)) (StringLiteralValue!24126 (value!243154 List!46639)) (EOFValue!8042 (value!243155 List!46639)) (IdentValue!8042 (value!243156 List!46639)) (DelimiterValue!16085 (value!243157 List!46639)) (DedentValue!8042 (value!243158 List!46639)) (NewLineValue!8042 (value!243159 List!46639)) (IntegerValue!24126 (value!243160 (_ BitVec 32)) (text!56741 List!46639)) (IntegerValue!24127 (value!243161 Int) (text!56742 List!46639)) (Times!8042) (Or!8042) (Equal!8042) (Minus!8042) (Broken!40214 (value!243162 List!46639)) (And!8042) (Div!8042) (LessEqual!8042) (Mod!8042) (Concat!20759) (Not!8042) (Plus!8042) (SpaceValue!8042 (value!243163 List!46639)) (IntegerValue!24128 (value!243164 Int) (text!56743 List!46639)) (StringLiteralValue!24127 (text!56744 List!46639)) (FloatLiteralValue!16085 (text!56745 List!46639)) (BytesLiteralValue!8042 (value!243165 List!46639)) (CommentValue!16085 (value!243166 List!46639)) (StringLiteralValue!24128 (value!243167 List!46639)) (ErrorTokenValue!8042 (msg!8103 List!46639)) )
))
(declare-datatypes ((C!25628 0))(
  ( (C!25629 (val!14976 Int)) )
))
(declare-datatypes ((List!46640 0))(
  ( (Nil!46516) (Cons!46516 (h!51936 C!25628) (t!349225 List!46640)) )
))
(declare-datatypes ((IArray!28051 0))(
  ( (IArray!28052 (innerList!14083 List!46640)) )
))
(declare-datatypes ((Conc!14023 0))(
  ( (Node!14023 (left!34576 Conc!14023) (right!34906 Conc!14023) (csize!28276 Int) (cheight!14234 Int)) (Leaf!21673 (xs!17329 IArray!28051) (csize!28277 Int)) (Empty!14023) )
))
(declare-datatypes ((BalanceConc!27640 0))(
  ( (BalanceConc!27641 (c!718500 Conc!14023)) )
))
(declare-datatypes ((TokenValueInjection!15512 0))(
  ( (TokenValueInjection!15513 (toValue!10536 Int) (toChars!10395 Int)) )
))
(declare-datatypes ((Regex!12717 0))(
  ( (ElementMatch!12717 (c!718501 C!25628)) (Concat!20760 (regOne!25946 Regex!12717) (regTwo!25946 Regex!12717)) (EmptyExpr!12717) (Star!12717 (reg!13046 Regex!12717)) (EmptyLang!12717) (Union!12717 (regOne!25947 Regex!12717) (regTwo!25947 Regex!12717)) )
))
(declare-datatypes ((String!54080 0))(
  ( (String!54081 (value!243168 String)) )
))
(declare-datatypes ((Rule!15424 0))(
  ( (Rule!15425 (regex!7812 Regex!12717) (tag!8676 String!54080) (isSeparator!7812 Bool) (transformation!7812 TokenValueInjection!15512)) )
))
(declare-datatypes ((List!46641 0))(
  ( (Nil!46517) (Cons!46517 (h!51937 Rule!15424) (t!349226 List!46641)) )
))
(declare-fun rules!4013 () List!46641)

(declare-fun r!4313 () Rule!15424)

(get-info :version)

(assert (=> b!4223941 (= res!1736527 (or (not ((_ is Cons!46517) rules!4013)) (not (= r!4313 (h!51937 rules!4013)))))))

(declare-datatypes ((LexerInterface!7407 0))(
  ( (LexerInterfaceExt!7404 (__x!28308 Int)) (Lexer!7405) )
))
(declare-fun thiss!26728 () LexerInterface!7407)

(declare-fun ruleValid!3520 (LexerInterface!7407 Rule!15424) Bool)

(assert (=> b!4223941 (ruleValid!3520 thiss!26728 r!4313)))

(declare-datatypes ((Unit!65675 0))(
  ( (Unit!65676) )
))
(declare-fun lt!1502590 () Unit!65675)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2432 (LexerInterface!7407 Rule!15424 List!46641) Unit!65675)

(assert (=> b!4223941 (= lt!1502590 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2432 thiss!26728 r!4313 rules!4013))))

(declare-fun b!4223942 () Bool)

(declare-fun res!1736525 () Bool)

(assert (=> b!4223942 (=> (not res!1736525) (not e!2622517))))

(declare-fun contains!9635 (List!46641 Rule!15424) Bool)

(assert (=> b!4223942 (= res!1736525 (contains!9635 rules!4013 r!4313))))

(declare-fun b!4223943 () Bool)

(declare-fun res!1736524 () Bool)

(assert (=> b!4223943 (=> (not res!1736524) (not e!2622517))))

(declare-fun rulesValidInductive!2916 (LexerInterface!7407 List!46641) Bool)

(assert (=> b!4223943 (= res!1736524 (rulesValidInductive!2916 thiss!26728 rules!4013))))

(declare-fun b!4223944 () Bool)

(declare-fun input!3561 () List!46640)

(declare-datatypes ((Token!14322 0))(
  ( (Token!14323 (value!243169 TokenValue!8042) (rule!10952 Rule!15424) (size!34139 Int) (originalCharacters!8192 List!46640)) )
))
(declare-datatypes ((tuple2!44218 0))(
  ( (tuple2!44219 (_1!25243 Token!14322) (_2!25243 List!46640)) )
))
(declare-datatypes ((Option!9998 0))(
  ( (None!9997) (Some!9997 (v!40897 tuple2!44218)) )
))
(declare-fun isEmpty!27560 (Option!9998) Bool)

(declare-fun maxPrefixOneRule!3394 (LexerInterface!7407 Rule!15424 List!46640) Option!9998)

(assert (=> b!4223944 (= e!2622524 (isEmpty!27560 (maxPrefixOneRule!3394 thiss!26728 r!4313 input!3561)))))

(declare-fun e!2622525 () Bool)

(assert (=> b!4223946 (= e!2622525 (and tp!1292860 tp!1292857))))

(declare-fun b!4223947 () Bool)

(declare-fun e!2622518 () Bool)

(declare-fun e!2622519 () Bool)

(declare-fun tp!1292863 () Bool)

(assert (=> b!4223947 (= e!2622518 (and e!2622519 tp!1292863))))

(declare-fun e!2622521 () Bool)

(assert (=> b!4223948 (= e!2622521 (and tp!1292864 tp!1292862))))

(declare-fun b!4223949 () Bool)

(declare-fun res!1736526 () Bool)

(assert (=> b!4223949 (=> (not res!1736526) (not e!2622517))))

(declare-fun maxPrefix!4445 (LexerInterface!7407 List!46641 List!46640) Option!9998)

(assert (=> b!4223949 (= res!1736526 (isEmpty!27560 (maxPrefix!4445 thiss!26728 rules!4013 input!3561)))))

(declare-fun b!4223950 () Bool)

(declare-fun e!2622522 () Bool)

(declare-fun tp!1292861 () Bool)

(declare-fun inv!61182 (String!54080) Bool)

(declare-fun inv!61184 (TokenValueInjection!15512) Bool)

(assert (=> b!4223950 (= e!2622522 (and tp!1292861 (inv!61182 (tag!8676 r!4313)) (inv!61184 (transformation!7812 r!4313)) e!2622521))))

(declare-fun tp!1292858 () Bool)

(declare-fun b!4223951 () Bool)

(assert (=> b!4223951 (= e!2622519 (and tp!1292858 (inv!61182 (tag!8676 (h!51937 rules!4013))) (inv!61184 (transformation!7812 (h!51937 rules!4013))) e!2622525))))

(declare-fun b!4223952 () Bool)

(declare-fun e!2622526 () Bool)

(declare-fun tp_is_empty!22397 () Bool)

(declare-fun tp!1292859 () Bool)

(assert (=> b!4223952 (= e!2622526 (and tp_is_empty!22397 tp!1292859))))

(declare-fun b!4223945 () Bool)

(declare-fun res!1736528 () Bool)

(assert (=> b!4223945 (=> (not res!1736528) (not e!2622517))))

(declare-fun isEmpty!27561 (List!46641) Bool)

(assert (=> b!4223945 (= res!1736528 (not (isEmpty!27561 rules!4013)))))

(declare-fun res!1736523 () Bool)

(assert (=> start!403766 (=> (not res!1736523) (not e!2622517))))

(assert (=> start!403766 (= res!1736523 ((_ is Lexer!7405) thiss!26728))))

(assert (=> start!403766 e!2622517))

(assert (=> start!403766 true))

(assert (=> start!403766 e!2622518))

(assert (=> start!403766 e!2622522))

(assert (=> start!403766 e!2622526))

(assert (= (and start!403766 res!1736523) b!4223945))

(assert (= (and b!4223945 res!1736528) b!4223943))

(assert (= (and b!4223943 res!1736524) b!4223942))

(assert (= (and b!4223942 res!1736525) b!4223949))

(assert (= (and b!4223949 res!1736526) b!4223941))

(assert (= (and b!4223941 (not res!1736527)) b!4223944))

(assert (= b!4223951 b!4223946))

(assert (= b!4223947 b!4223951))

(assert (= (and start!403766 ((_ is Cons!46517) rules!4013)) b!4223947))

(assert (= b!4223950 b!4223948))

(assert (= start!403766 b!4223950))

(assert (= (and start!403766 ((_ is Cons!46516) input!3561)) b!4223952))

(declare-fun m!4812333 () Bool)

(assert (=> b!4223945 m!4812333))

(declare-fun m!4812335 () Bool)

(assert (=> b!4223942 m!4812335))

(declare-fun m!4812337 () Bool)

(assert (=> b!4223950 m!4812337))

(declare-fun m!4812339 () Bool)

(assert (=> b!4223950 m!4812339))

(declare-fun m!4812341 () Bool)

(assert (=> b!4223949 m!4812341))

(assert (=> b!4223949 m!4812341))

(declare-fun m!4812343 () Bool)

(assert (=> b!4223949 m!4812343))

(declare-fun m!4812345 () Bool)

(assert (=> b!4223941 m!4812345))

(declare-fun m!4812347 () Bool)

(assert (=> b!4223941 m!4812347))

(declare-fun m!4812349 () Bool)

(assert (=> b!4223951 m!4812349))

(declare-fun m!4812351 () Bool)

(assert (=> b!4223951 m!4812351))

(declare-fun m!4812353 () Bool)

(assert (=> b!4223944 m!4812353))

(assert (=> b!4223944 m!4812353))

(declare-fun m!4812355 () Bool)

(assert (=> b!4223944 m!4812355))

(declare-fun m!4812357 () Bool)

(assert (=> b!4223943 m!4812357))

(check-sat b_and!333505 (not b_next!124999) (not b!4223941) (not b!4223943) b_and!333507 (not b!4223945) b_and!333501 (not b_next!124997) (not b_next!124995) (not b!4223951) (not b_next!125001) (not b!4223944) b_and!333503 (not b!4223950) (not b!4223947) (not b!4223952) (not b!4223949) tp_is_empty!22397 (not b!4223942))
(check-sat b_and!333505 (not b_next!124999) b_and!333507 b_and!333501 (not b_next!124997) b_and!333503 (not b_next!124995) (not b_next!125001))
(get-model)

(declare-fun d!1243818 () Bool)

(assert (=> d!1243818 (= (isEmpty!27560 (maxPrefix!4445 thiss!26728 rules!4013 input!3561)) (not ((_ is Some!9997) (maxPrefix!4445 thiss!26728 rules!4013 input!3561))))))

(assert (=> b!4223949 d!1243818))

(declare-fun b!4223984 () Bool)

(declare-fun res!1736563 () Bool)

(declare-fun e!2622548 () Bool)

(assert (=> b!4223984 (=> (not res!1736563) (not e!2622548))))

(declare-fun lt!1502606 () Option!9998)

(declare-fun ++!11876 (List!46640 List!46640) List!46640)

(declare-fun list!16824 (BalanceConc!27640) List!46640)

(declare-fun charsOf!5225 (Token!14322) BalanceConc!27640)

(declare-fun get!15136 (Option!9998) tuple2!44218)

(assert (=> b!4223984 (= res!1736563 (= (++!11876 (list!16824 (charsOf!5225 (_1!25243 (get!15136 lt!1502606)))) (_2!25243 (get!15136 lt!1502606))) input!3561))))

(declare-fun b!4223985 () Bool)

(declare-fun e!2622546 () Option!9998)

(declare-fun call!293181 () Option!9998)

(assert (=> b!4223985 (= e!2622546 call!293181)))

(declare-fun b!4223986 () Bool)

(declare-fun e!2622547 () Bool)

(assert (=> b!4223986 (= e!2622547 e!2622548)))

(declare-fun res!1736561 () Bool)

(assert (=> b!4223986 (=> (not res!1736561) (not e!2622548))))

(declare-fun isDefined!7416 (Option!9998) Bool)

(assert (=> b!4223986 (= res!1736561 (isDefined!7416 lt!1502606))))

(declare-fun b!4223987 () Bool)

(assert (=> b!4223987 (= e!2622548 (contains!9635 rules!4013 (rule!10952 (_1!25243 (get!15136 lt!1502606)))))))

(declare-fun b!4223989 () Bool)

(declare-fun res!1736565 () Bool)

(assert (=> b!4223989 (=> (not res!1736565) (not e!2622548))))

(declare-fun apply!10715 (TokenValueInjection!15512 BalanceConc!27640) TokenValue!8042)

(declare-fun seqFromList!5775 (List!46640) BalanceConc!27640)

(assert (=> b!4223989 (= res!1736565 (= (value!243169 (_1!25243 (get!15136 lt!1502606))) (apply!10715 (transformation!7812 (rule!10952 (_1!25243 (get!15136 lt!1502606)))) (seqFromList!5775 (originalCharacters!8192 (_1!25243 (get!15136 lt!1502606)))))))))

(declare-fun b!4223990 () Bool)

(declare-fun res!1736562 () Bool)

(assert (=> b!4223990 (=> (not res!1736562) (not e!2622548))))

(declare-fun matchR!6394 (Regex!12717 List!46640) Bool)

(assert (=> b!4223990 (= res!1736562 (matchR!6394 (regex!7812 (rule!10952 (_1!25243 (get!15136 lt!1502606)))) (list!16824 (charsOf!5225 (_1!25243 (get!15136 lt!1502606))))))))

(declare-fun b!4223991 () Bool)

(declare-fun res!1736560 () Bool)

(assert (=> b!4223991 (=> (not res!1736560) (not e!2622548))))

(declare-fun size!34142 (List!46640) Int)

(assert (=> b!4223991 (= res!1736560 (< (size!34142 (_2!25243 (get!15136 lt!1502606))) (size!34142 input!3561)))))

(declare-fun b!4223992 () Bool)

(declare-fun res!1736566 () Bool)

(assert (=> b!4223992 (=> (not res!1736566) (not e!2622548))))

(assert (=> b!4223992 (= res!1736566 (= (list!16824 (charsOf!5225 (_1!25243 (get!15136 lt!1502606)))) (originalCharacters!8192 (_1!25243 (get!15136 lt!1502606)))))))

(declare-fun bm!293176 () Bool)

(assert (=> bm!293176 (= call!293181 (maxPrefixOneRule!3394 thiss!26728 (h!51937 rules!4013) input!3561))))

(declare-fun b!4223988 () Bool)

(declare-fun lt!1502610 () Option!9998)

(declare-fun lt!1502608 () Option!9998)

(assert (=> b!4223988 (= e!2622546 (ite (and ((_ is None!9997) lt!1502610) ((_ is None!9997) lt!1502608)) None!9997 (ite ((_ is None!9997) lt!1502608) lt!1502610 (ite ((_ is None!9997) lt!1502610) lt!1502608 (ite (>= (size!34139 (_1!25243 (v!40897 lt!1502610))) (size!34139 (_1!25243 (v!40897 lt!1502608)))) lt!1502610 lt!1502608)))))))

(assert (=> b!4223988 (= lt!1502610 call!293181)))

(assert (=> b!4223988 (= lt!1502608 (maxPrefix!4445 thiss!26728 (t!349226 rules!4013) input!3561))))

(declare-fun d!1243822 () Bool)

(assert (=> d!1243822 e!2622547))

(declare-fun res!1736564 () Bool)

(assert (=> d!1243822 (=> res!1736564 e!2622547)))

(assert (=> d!1243822 (= res!1736564 (isEmpty!27560 lt!1502606))))

(assert (=> d!1243822 (= lt!1502606 e!2622546)))

(declare-fun c!718504 () Bool)

(assert (=> d!1243822 (= c!718504 (and ((_ is Cons!46517) rules!4013) ((_ is Nil!46517) (t!349226 rules!4013))))))

(declare-fun lt!1502609 () Unit!65675)

(declare-fun lt!1502607 () Unit!65675)

(assert (=> d!1243822 (= lt!1502609 lt!1502607)))

(declare-fun isPrefix!4661 (List!46640 List!46640) Bool)

(assert (=> d!1243822 (isPrefix!4661 input!3561 input!3561)))

(declare-fun lemmaIsPrefixRefl!3078 (List!46640 List!46640) Unit!65675)

(assert (=> d!1243822 (= lt!1502607 (lemmaIsPrefixRefl!3078 input!3561 input!3561))))

(assert (=> d!1243822 (rulesValidInductive!2916 thiss!26728 rules!4013)))

(assert (=> d!1243822 (= (maxPrefix!4445 thiss!26728 rules!4013 input!3561) lt!1502606)))

(assert (= (and d!1243822 c!718504) b!4223985))

(assert (= (and d!1243822 (not c!718504)) b!4223988))

(assert (= (or b!4223985 b!4223988) bm!293176))

(assert (= (and d!1243822 (not res!1736564)) b!4223986))

(assert (= (and b!4223986 res!1736561) b!4223992))

(assert (= (and b!4223992 res!1736566) b!4223991))

(assert (= (and b!4223991 res!1736560) b!4223984))

(assert (= (and b!4223984 res!1736563) b!4223989))

(assert (= (and b!4223989 res!1736565) b!4223990))

(assert (= (and b!4223990 res!1736562) b!4223987))

(declare-fun m!4812369 () Bool)

(assert (=> b!4223984 m!4812369))

(declare-fun m!4812371 () Bool)

(assert (=> b!4223984 m!4812371))

(assert (=> b!4223984 m!4812371))

(declare-fun m!4812373 () Bool)

(assert (=> b!4223984 m!4812373))

(assert (=> b!4223984 m!4812373))

(declare-fun m!4812375 () Bool)

(assert (=> b!4223984 m!4812375))

(assert (=> b!4223991 m!4812369))

(declare-fun m!4812377 () Bool)

(assert (=> b!4223991 m!4812377))

(declare-fun m!4812379 () Bool)

(assert (=> b!4223991 m!4812379))

(declare-fun m!4812381 () Bool)

(assert (=> d!1243822 m!4812381))

(declare-fun m!4812383 () Bool)

(assert (=> d!1243822 m!4812383))

(declare-fun m!4812385 () Bool)

(assert (=> d!1243822 m!4812385))

(assert (=> d!1243822 m!4812357))

(declare-fun m!4812387 () Bool)

(assert (=> b!4223988 m!4812387))

(assert (=> b!4223992 m!4812369))

(assert (=> b!4223992 m!4812371))

(assert (=> b!4223992 m!4812371))

(assert (=> b!4223992 m!4812373))

(assert (=> b!4223989 m!4812369))

(declare-fun m!4812389 () Bool)

(assert (=> b!4223989 m!4812389))

(assert (=> b!4223989 m!4812389))

(declare-fun m!4812391 () Bool)

(assert (=> b!4223989 m!4812391))

(declare-fun m!4812393 () Bool)

(assert (=> b!4223986 m!4812393))

(assert (=> b!4223990 m!4812369))

(assert (=> b!4223990 m!4812371))

(assert (=> b!4223990 m!4812371))

(assert (=> b!4223990 m!4812373))

(assert (=> b!4223990 m!4812373))

(declare-fun m!4812395 () Bool)

(assert (=> b!4223990 m!4812395))

(declare-fun m!4812397 () Bool)

(assert (=> bm!293176 m!4812397))

(assert (=> b!4223987 m!4812369))

(declare-fun m!4812399 () Bool)

(assert (=> b!4223987 m!4812399))

(assert (=> b!4223949 d!1243822))

(declare-fun d!1243832 () Bool)

(assert (=> d!1243832 (= (isEmpty!27560 (maxPrefixOneRule!3394 thiss!26728 r!4313 input!3561)) (not ((_ is Some!9997) (maxPrefixOneRule!3394 thiss!26728 r!4313 input!3561))))))

(assert (=> b!4223944 d!1243832))

(declare-fun b!4224011 () Bool)

(declare-fun e!2622560 () Bool)

(declare-fun e!2622558 () Bool)

(assert (=> b!4224011 (= e!2622560 e!2622558)))

(declare-fun res!1736582 () Bool)

(assert (=> b!4224011 (=> (not res!1736582) (not e!2622558))))

(declare-fun lt!1502621 () Option!9998)

(assert (=> b!4224011 (= res!1736582 (matchR!6394 (regex!7812 r!4313) (list!16824 (charsOf!5225 (_1!25243 (get!15136 lt!1502621))))))))

(declare-fun b!4224012 () Bool)

(assert (=> b!4224012 (= e!2622558 (= (size!34139 (_1!25243 (get!15136 lt!1502621))) (size!34142 (originalCharacters!8192 (_1!25243 (get!15136 lt!1502621))))))))

(declare-fun b!4224013 () Bool)

(declare-fun e!2622557 () Option!9998)

(declare-datatypes ((tuple2!44222 0))(
  ( (tuple2!44223 (_1!25245 List!46640) (_2!25245 List!46640)) )
))
(declare-fun lt!1502623 () tuple2!44222)

(declare-fun size!34143 (BalanceConc!27640) Int)

(assert (=> b!4224013 (= e!2622557 (Some!9997 (tuple2!44219 (Token!14323 (apply!10715 (transformation!7812 r!4313) (seqFromList!5775 (_1!25245 lt!1502623))) r!4313 (size!34143 (seqFromList!5775 (_1!25245 lt!1502623))) (_1!25245 lt!1502623)) (_2!25245 lt!1502623))))))

(declare-fun lt!1502622 () Unit!65675)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1646 (Regex!12717 List!46640) Unit!65675)

(assert (=> b!4224013 (= lt!1502622 (longestMatchIsAcceptedByMatchOrIsEmpty!1646 (regex!7812 r!4313) input!3561))))

(declare-fun res!1736586 () Bool)

(declare-fun isEmpty!27563 (List!46640) Bool)

(declare-fun findLongestMatchInner!1673 (Regex!12717 List!46640 Int List!46640 List!46640 Int) tuple2!44222)

(assert (=> b!4224013 (= res!1736586 (isEmpty!27563 (_1!25245 (findLongestMatchInner!1673 (regex!7812 r!4313) Nil!46516 (size!34142 Nil!46516) input!3561 input!3561 (size!34142 input!3561)))))))

(declare-fun e!2622559 () Bool)

(assert (=> b!4224013 (=> res!1736586 e!2622559)))

(assert (=> b!4224013 e!2622559))

(declare-fun lt!1502625 () Unit!65675)

(assert (=> b!4224013 (= lt!1502625 lt!1502622)))

(declare-fun lt!1502624 () Unit!65675)

(declare-fun lemmaSemiInverse!2514 (TokenValueInjection!15512 BalanceConc!27640) Unit!65675)

(assert (=> b!4224013 (= lt!1502624 (lemmaSemiInverse!2514 (transformation!7812 r!4313) (seqFromList!5775 (_1!25245 lt!1502623))))))

(declare-fun b!4224014 () Bool)

(declare-fun res!1736587 () Bool)

(assert (=> b!4224014 (=> (not res!1736587) (not e!2622558))))

(assert (=> b!4224014 (= res!1736587 (= (rule!10952 (_1!25243 (get!15136 lt!1502621))) r!4313))))

(declare-fun b!4224015 () Bool)

(assert (=> b!4224015 (= e!2622559 (matchR!6394 (regex!7812 r!4313) (_1!25245 (findLongestMatchInner!1673 (regex!7812 r!4313) Nil!46516 (size!34142 Nil!46516) input!3561 input!3561 (size!34142 input!3561)))))))

(declare-fun b!4224016 () Bool)

(declare-fun res!1736581 () Bool)

(assert (=> b!4224016 (=> (not res!1736581) (not e!2622558))))

(assert (=> b!4224016 (= res!1736581 (= (value!243169 (_1!25243 (get!15136 lt!1502621))) (apply!10715 (transformation!7812 (rule!10952 (_1!25243 (get!15136 lt!1502621)))) (seqFromList!5775 (originalCharacters!8192 (_1!25243 (get!15136 lt!1502621)))))))))

(declare-fun d!1243834 () Bool)

(assert (=> d!1243834 e!2622560))

(declare-fun res!1736584 () Bool)

(assert (=> d!1243834 (=> res!1736584 e!2622560)))

(assert (=> d!1243834 (= res!1736584 (isEmpty!27560 lt!1502621))))

(assert (=> d!1243834 (= lt!1502621 e!2622557)))

(declare-fun c!718507 () Bool)

(assert (=> d!1243834 (= c!718507 (isEmpty!27563 (_1!25245 lt!1502623)))))

(declare-fun findLongestMatch!1586 (Regex!12717 List!46640) tuple2!44222)

(assert (=> d!1243834 (= lt!1502623 (findLongestMatch!1586 (regex!7812 r!4313) input!3561))))

(assert (=> d!1243834 (ruleValid!3520 thiss!26728 r!4313)))

(assert (=> d!1243834 (= (maxPrefixOneRule!3394 thiss!26728 r!4313 input!3561) lt!1502621)))

(declare-fun b!4224017 () Bool)

(declare-fun res!1736585 () Bool)

(assert (=> b!4224017 (=> (not res!1736585) (not e!2622558))))

(assert (=> b!4224017 (= res!1736585 (< (size!34142 (_2!25243 (get!15136 lt!1502621))) (size!34142 input!3561)))))

(declare-fun b!4224018 () Bool)

(assert (=> b!4224018 (= e!2622557 None!9997)))

(declare-fun b!4224019 () Bool)

(declare-fun res!1736583 () Bool)

(assert (=> b!4224019 (=> (not res!1736583) (not e!2622558))))

(assert (=> b!4224019 (= res!1736583 (= (++!11876 (list!16824 (charsOf!5225 (_1!25243 (get!15136 lt!1502621)))) (_2!25243 (get!15136 lt!1502621))) input!3561))))

(assert (= (and d!1243834 c!718507) b!4224018))

(assert (= (and d!1243834 (not c!718507)) b!4224013))

(assert (= (and b!4224013 (not res!1736586)) b!4224015))

(assert (= (and d!1243834 (not res!1736584)) b!4224011))

(assert (= (and b!4224011 res!1736582) b!4224019))

(assert (= (and b!4224019 res!1736583) b!4224017))

(assert (= (and b!4224017 res!1736585) b!4224014))

(assert (= (and b!4224014 res!1736587) b!4224016))

(assert (= (and b!4224016 res!1736581) b!4224012))

(declare-fun m!4812401 () Bool)

(assert (=> b!4224015 m!4812401))

(assert (=> b!4224015 m!4812379))

(assert (=> b!4224015 m!4812401))

(assert (=> b!4224015 m!4812379))

(declare-fun m!4812403 () Bool)

(assert (=> b!4224015 m!4812403))

(declare-fun m!4812405 () Bool)

(assert (=> b!4224015 m!4812405))

(declare-fun m!4812407 () Bool)

(assert (=> b!4224011 m!4812407))

(declare-fun m!4812409 () Bool)

(assert (=> b!4224011 m!4812409))

(assert (=> b!4224011 m!4812409))

(declare-fun m!4812411 () Bool)

(assert (=> b!4224011 m!4812411))

(assert (=> b!4224011 m!4812411))

(declare-fun m!4812413 () Bool)

(assert (=> b!4224011 m!4812413))

(declare-fun m!4812415 () Bool)

(assert (=> d!1243834 m!4812415))

(declare-fun m!4812417 () Bool)

(assert (=> d!1243834 m!4812417))

(declare-fun m!4812419 () Bool)

(assert (=> d!1243834 m!4812419))

(assert (=> d!1243834 m!4812345))

(assert (=> b!4224016 m!4812407))

(declare-fun m!4812421 () Bool)

(assert (=> b!4224016 m!4812421))

(assert (=> b!4224016 m!4812421))

(declare-fun m!4812423 () Bool)

(assert (=> b!4224016 m!4812423))

(declare-fun m!4812425 () Bool)

(assert (=> b!4224013 m!4812425))

(assert (=> b!4224013 m!4812425))

(declare-fun m!4812427 () Bool)

(assert (=> b!4224013 m!4812427))

(declare-fun m!4812429 () Bool)

(assert (=> b!4224013 m!4812429))

(assert (=> b!4224013 m!4812425))

(declare-fun m!4812431 () Bool)

(assert (=> b!4224013 m!4812431))

(declare-fun m!4812433 () Bool)

(assert (=> b!4224013 m!4812433))

(assert (=> b!4224013 m!4812379))

(assert (=> b!4224013 m!4812401))

(assert (=> b!4224013 m!4812379))

(assert (=> b!4224013 m!4812403))

(assert (=> b!4224013 m!4812425))

(declare-fun m!4812435 () Bool)

(assert (=> b!4224013 m!4812435))

(assert (=> b!4224013 m!4812401))

(assert (=> b!4224014 m!4812407))

(assert (=> b!4224019 m!4812407))

(assert (=> b!4224019 m!4812409))

(assert (=> b!4224019 m!4812409))

(assert (=> b!4224019 m!4812411))

(assert (=> b!4224019 m!4812411))

(declare-fun m!4812437 () Bool)

(assert (=> b!4224019 m!4812437))

(assert (=> b!4224017 m!4812407))

(declare-fun m!4812439 () Bool)

(assert (=> b!4224017 m!4812439))

(assert (=> b!4224017 m!4812379))

(assert (=> b!4224012 m!4812407))

(declare-fun m!4812441 () Bool)

(assert (=> b!4224012 m!4812441))

(assert (=> b!4223944 d!1243834))

(declare-fun d!1243836 () Bool)

(declare-fun lt!1502628 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7305 (List!46641) (InoxSet Rule!15424))

(assert (=> d!1243836 (= lt!1502628 (select (content!7305 rules!4013) r!4313))))

(declare-fun e!2622566 () Bool)

(assert (=> d!1243836 (= lt!1502628 e!2622566)))

(declare-fun res!1736593 () Bool)

(assert (=> d!1243836 (=> (not res!1736593) (not e!2622566))))

(assert (=> d!1243836 (= res!1736593 ((_ is Cons!46517) rules!4013))))

(assert (=> d!1243836 (= (contains!9635 rules!4013 r!4313) lt!1502628)))

(declare-fun b!4224024 () Bool)

(declare-fun e!2622565 () Bool)

(assert (=> b!4224024 (= e!2622566 e!2622565)))

(declare-fun res!1736592 () Bool)

(assert (=> b!4224024 (=> res!1736592 e!2622565)))

(assert (=> b!4224024 (= res!1736592 (= (h!51937 rules!4013) r!4313))))

(declare-fun b!4224025 () Bool)

(assert (=> b!4224025 (= e!2622565 (contains!9635 (t!349226 rules!4013) r!4313))))

(assert (= (and d!1243836 res!1736593) b!4224024))

(assert (= (and b!4224024 (not res!1736592)) b!4224025))

(declare-fun m!4812443 () Bool)

(assert (=> d!1243836 m!4812443))

(declare-fun m!4812445 () Bool)

(assert (=> d!1243836 m!4812445))

(declare-fun m!4812447 () Bool)

(assert (=> b!4224025 m!4812447))

(assert (=> b!4223942 d!1243836))

(declare-fun d!1243838 () Bool)

(assert (=> d!1243838 true))

(declare-fun lt!1502665 () Bool)

(declare-fun lambda!129853 () Int)

(declare-fun forall!8502 (List!46641 Int) Bool)

(assert (=> d!1243838 (= lt!1502665 (forall!8502 rules!4013 lambda!129853))))

(declare-fun e!2622617 () Bool)

(assert (=> d!1243838 (= lt!1502665 e!2622617)))

(declare-fun res!1736649 () Bool)

(assert (=> d!1243838 (=> res!1736649 e!2622617)))

(assert (=> d!1243838 (= res!1736649 (not ((_ is Cons!46517) rules!4013)))))

(assert (=> d!1243838 (= (rulesValidInductive!2916 thiss!26728 rules!4013) lt!1502665)))

(declare-fun b!4224129 () Bool)

(declare-fun e!2622618 () Bool)

(assert (=> b!4224129 (= e!2622617 e!2622618)))

(declare-fun res!1736650 () Bool)

(assert (=> b!4224129 (=> (not res!1736650) (not e!2622618))))

(assert (=> b!4224129 (= res!1736650 (ruleValid!3520 thiss!26728 (h!51937 rules!4013)))))

(declare-fun b!4224130 () Bool)

(assert (=> b!4224130 (= e!2622618 (rulesValidInductive!2916 thiss!26728 (t!349226 rules!4013)))))

(assert (= (and d!1243838 (not res!1736649)) b!4224129))

(assert (= (and b!4224129 res!1736650) b!4224130))

(declare-fun m!4812543 () Bool)

(assert (=> d!1243838 m!4812543))

(declare-fun m!4812545 () Bool)

(assert (=> b!4224129 m!4812545))

(declare-fun m!4812547 () Bool)

(assert (=> b!4224130 m!4812547))

(assert (=> b!4223943 d!1243838))

(declare-fun d!1243856 () Bool)

(declare-fun res!1736655 () Bool)

(declare-fun e!2622621 () Bool)

(assert (=> d!1243856 (=> (not res!1736655) (not e!2622621))))

(declare-fun validRegex!5769 (Regex!12717) Bool)

(assert (=> d!1243856 (= res!1736655 (validRegex!5769 (regex!7812 r!4313)))))

(assert (=> d!1243856 (= (ruleValid!3520 thiss!26728 r!4313) e!2622621)))

(declare-fun b!4224137 () Bool)

(declare-fun res!1736656 () Bool)

(assert (=> b!4224137 (=> (not res!1736656) (not e!2622621))))

(declare-fun nullable!4482 (Regex!12717) Bool)

(assert (=> b!4224137 (= res!1736656 (not (nullable!4482 (regex!7812 r!4313))))))

(declare-fun b!4224138 () Bool)

(assert (=> b!4224138 (= e!2622621 (not (= (tag!8676 r!4313) (String!54081 ""))))))

(assert (= (and d!1243856 res!1736655) b!4224137))

(assert (= (and b!4224137 res!1736656) b!4224138))

(declare-fun m!4812549 () Bool)

(assert (=> d!1243856 m!4812549))

(declare-fun m!4812551 () Bool)

(assert (=> b!4224137 m!4812551))

(assert (=> b!4223941 d!1243856))

(declare-fun d!1243858 () Bool)

(assert (=> d!1243858 (ruleValid!3520 thiss!26728 r!4313)))

(declare-fun lt!1502668 () Unit!65675)

(declare-fun choose!25876 (LexerInterface!7407 Rule!15424 List!46641) Unit!65675)

(assert (=> d!1243858 (= lt!1502668 (choose!25876 thiss!26728 r!4313 rules!4013))))

(assert (=> d!1243858 (contains!9635 rules!4013 r!4313)))

(assert (=> d!1243858 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2432 thiss!26728 r!4313 rules!4013) lt!1502668)))

(declare-fun bs!597779 () Bool)

(assert (= bs!597779 d!1243858))

(assert (=> bs!597779 m!4812345))

(declare-fun m!4812553 () Bool)

(assert (=> bs!597779 m!4812553))

(assert (=> bs!597779 m!4812335))

(assert (=> b!4223941 d!1243858))

(declare-fun d!1243860 () Bool)

(assert (=> d!1243860 (= (isEmpty!27561 rules!4013) ((_ is Nil!46517) rules!4013))))

(assert (=> b!4223945 d!1243860))

(declare-fun d!1243862 () Bool)

(assert (=> d!1243862 (= (inv!61182 (tag!8676 r!4313)) (= (mod (str.len (value!243168 (tag!8676 r!4313))) 2) 0))))

(assert (=> b!4223950 d!1243862))

(declare-fun d!1243864 () Bool)

(declare-fun res!1736659 () Bool)

(declare-fun e!2622624 () Bool)

(assert (=> d!1243864 (=> (not res!1736659) (not e!2622624))))

(declare-fun semiInverseModEq!3395 (Int Int) Bool)

(assert (=> d!1243864 (= res!1736659 (semiInverseModEq!3395 (toChars!10395 (transformation!7812 r!4313)) (toValue!10536 (transformation!7812 r!4313))))))

(assert (=> d!1243864 (= (inv!61184 (transformation!7812 r!4313)) e!2622624)))

(declare-fun b!4224141 () Bool)

(declare-fun equivClasses!3294 (Int Int) Bool)

(assert (=> b!4224141 (= e!2622624 (equivClasses!3294 (toChars!10395 (transformation!7812 r!4313)) (toValue!10536 (transformation!7812 r!4313))))))

(assert (= (and d!1243864 res!1736659) b!4224141))

(declare-fun m!4812555 () Bool)

(assert (=> d!1243864 m!4812555))

(declare-fun m!4812557 () Bool)

(assert (=> b!4224141 m!4812557))

(assert (=> b!4223950 d!1243864))

(declare-fun d!1243866 () Bool)

(assert (=> d!1243866 (= (inv!61182 (tag!8676 (h!51937 rules!4013))) (= (mod (str.len (value!243168 (tag!8676 (h!51937 rules!4013)))) 2) 0))))

(assert (=> b!4223951 d!1243866))

(declare-fun d!1243868 () Bool)

(declare-fun res!1736660 () Bool)

(declare-fun e!2622625 () Bool)

(assert (=> d!1243868 (=> (not res!1736660) (not e!2622625))))

(assert (=> d!1243868 (= res!1736660 (semiInverseModEq!3395 (toChars!10395 (transformation!7812 (h!51937 rules!4013))) (toValue!10536 (transformation!7812 (h!51937 rules!4013)))))))

(assert (=> d!1243868 (= (inv!61184 (transformation!7812 (h!51937 rules!4013))) e!2622625)))

(declare-fun b!4224142 () Bool)

(assert (=> b!4224142 (= e!2622625 (equivClasses!3294 (toChars!10395 (transformation!7812 (h!51937 rules!4013))) (toValue!10536 (transformation!7812 (h!51937 rules!4013)))))))

(assert (= (and d!1243868 res!1736660) b!4224142))

(declare-fun m!4812559 () Bool)

(assert (=> d!1243868 m!4812559))

(declare-fun m!4812561 () Bool)

(assert (=> b!4224142 m!4812561))

(assert (=> b!4223951 d!1243868))

(declare-fun b!4224153 () Bool)

(declare-fun b_free!124303 () Bool)

(declare-fun b_next!125007 () Bool)

(assert (=> b!4224153 (= b_free!124303 (not b_next!125007))))

(declare-fun tp!1292908 () Bool)

(declare-fun b_and!333513 () Bool)

(assert (=> b!4224153 (= tp!1292908 b_and!333513)))

(declare-fun b_free!124305 () Bool)

(declare-fun b_next!125009 () Bool)

(assert (=> b!4224153 (= b_free!124305 (not b_next!125009))))

(declare-fun tp!1292909 () Bool)

(declare-fun b_and!333515 () Bool)

(assert (=> b!4224153 (= tp!1292909 b_and!333515)))

(declare-fun e!2622637 () Bool)

(assert (=> b!4224153 (= e!2622637 (and tp!1292908 tp!1292909))))

(declare-fun e!2622636 () Bool)

(declare-fun tp!1292911 () Bool)

(declare-fun b!4224152 () Bool)

(assert (=> b!4224152 (= e!2622636 (and tp!1292911 (inv!61182 (tag!8676 (h!51937 (t!349226 rules!4013)))) (inv!61184 (transformation!7812 (h!51937 (t!349226 rules!4013)))) e!2622637))))

(declare-fun b!4224151 () Bool)

(declare-fun e!2622634 () Bool)

(declare-fun tp!1292910 () Bool)

(assert (=> b!4224151 (= e!2622634 (and e!2622636 tp!1292910))))

(assert (=> b!4223947 (= tp!1292863 e!2622634)))

(assert (= b!4224152 b!4224153))

(assert (= b!4224151 b!4224152))

(assert (= (and b!4223947 ((_ is Cons!46517) (t!349226 rules!4013))) b!4224151))

(declare-fun m!4812563 () Bool)

(assert (=> b!4224152 m!4812563))

(declare-fun m!4812565 () Bool)

(assert (=> b!4224152 m!4812565))

(declare-fun b!4224158 () Bool)

(declare-fun e!2622640 () Bool)

(declare-fun tp!1292914 () Bool)

(assert (=> b!4224158 (= e!2622640 (and tp_is_empty!22397 tp!1292914))))

(assert (=> b!4223952 (= tp!1292859 e!2622640)))

(assert (= (and b!4223952 ((_ is Cons!46516) (t!349225 input!3561))) b!4224158))

(declare-fun b!4224171 () Bool)

(declare-fun e!2622643 () Bool)

(declare-fun tp!1292928 () Bool)

(assert (=> b!4224171 (= e!2622643 tp!1292928)))

(assert (=> b!4223950 (= tp!1292861 e!2622643)))

(declare-fun b!4224170 () Bool)

(declare-fun tp!1292927 () Bool)

(declare-fun tp!1292926 () Bool)

(assert (=> b!4224170 (= e!2622643 (and tp!1292927 tp!1292926))))

(declare-fun b!4224169 () Bool)

(assert (=> b!4224169 (= e!2622643 tp_is_empty!22397)))

(declare-fun b!4224172 () Bool)

(declare-fun tp!1292925 () Bool)

(declare-fun tp!1292929 () Bool)

(assert (=> b!4224172 (= e!2622643 (and tp!1292925 tp!1292929))))

(assert (= (and b!4223950 ((_ is ElementMatch!12717) (regex!7812 r!4313))) b!4224169))

(assert (= (and b!4223950 ((_ is Concat!20760) (regex!7812 r!4313))) b!4224170))

(assert (= (and b!4223950 ((_ is Star!12717) (regex!7812 r!4313))) b!4224171))

(assert (= (and b!4223950 ((_ is Union!12717) (regex!7812 r!4313))) b!4224172))

(declare-fun b!4224175 () Bool)

(declare-fun e!2622644 () Bool)

(declare-fun tp!1292933 () Bool)

(assert (=> b!4224175 (= e!2622644 tp!1292933)))

(assert (=> b!4223951 (= tp!1292858 e!2622644)))

(declare-fun b!4224174 () Bool)

(declare-fun tp!1292932 () Bool)

(declare-fun tp!1292931 () Bool)

(assert (=> b!4224174 (= e!2622644 (and tp!1292932 tp!1292931))))

(declare-fun b!4224173 () Bool)

(assert (=> b!4224173 (= e!2622644 tp_is_empty!22397)))

(declare-fun b!4224176 () Bool)

(declare-fun tp!1292930 () Bool)

(declare-fun tp!1292934 () Bool)

(assert (=> b!4224176 (= e!2622644 (and tp!1292930 tp!1292934))))

(assert (= (and b!4223951 ((_ is ElementMatch!12717) (regex!7812 (h!51937 rules!4013)))) b!4224173))

(assert (= (and b!4223951 ((_ is Concat!20760) (regex!7812 (h!51937 rules!4013)))) b!4224174))

(assert (= (and b!4223951 ((_ is Star!12717) (regex!7812 (h!51937 rules!4013)))) b!4224175))

(assert (= (and b!4223951 ((_ is Union!12717) (regex!7812 (h!51937 rules!4013)))) b!4224176))

(check-sat (not b_next!124999) (not b!4223992) b_and!333507 (not d!1243868) (not b!4224141) b_and!333513 (not b_next!124997) b_and!333503 (not b!4224176) tp_is_empty!22397 (not b!4224137) (not b!4223991) (not b!4223990) (not d!1243858) (not b!4224129) (not b!4224130) (not b!4224012) b_and!333505 (not d!1243864) (not bm!293176) (not d!1243836) (not b!4224171) (not b_next!125009) (not b!4223984) (not b!4224175) (not b!4224025) (not b!4223987) (not d!1243822) (not b!4224172) (not b!4224158) (not d!1243834) (not d!1243856) (not b!4224015) (not b!4224151) (not b!4224170) (not b!4224152) b_and!333501 (not d!1243838) (not b!4224019) (not b!4223989) b_and!333515 (not b!4224174) (not b!4224014) (not b!4224142) (not b!4224013) (not b_next!125007) (not b!4223988) (not b!4224011) (not b!4223986) (not b_next!124995) (not b!4224016) (not b!4224017) (not b_next!125001))
(check-sat b_and!333505 (not b_next!124999) (not b_next!125009) b_and!333507 b_and!333513 b_and!333501 (not b_next!124997) b_and!333503 b_and!333515 (not b_next!125007) (not b_next!124995) (not b_next!125001))
