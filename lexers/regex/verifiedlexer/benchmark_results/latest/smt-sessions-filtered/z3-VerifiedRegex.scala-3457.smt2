; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!199404 () Bool)

(assert start!199404)

(declare-fun b!2027153 () Bool)

(declare-fun b_free!56553 () Bool)

(declare-fun b_next!57257 () Bool)

(assert (=> b!2027153 (= b_free!56553 (not b_next!57257))))

(declare-fun tp!603012 () Bool)

(declare-fun b_and!161273 () Bool)

(assert (=> b!2027153 (= tp!603012 b_and!161273)))

(declare-fun b_free!56555 () Bool)

(declare-fun b_next!57259 () Bool)

(assert (=> b!2027153 (= b_free!56555 (not b_next!57259))))

(declare-fun tp!603003 () Bool)

(declare-fun b_and!161275 () Bool)

(assert (=> b!2027153 (= tp!603003 b_and!161275)))

(declare-fun b!2027157 () Bool)

(declare-fun b_free!56557 () Bool)

(declare-fun b_next!57261 () Bool)

(assert (=> b!2027157 (= b_free!56557 (not b_next!57261))))

(declare-fun tp!603011 () Bool)

(declare-fun b_and!161277 () Bool)

(assert (=> b!2027157 (= tp!603011 b_and!161277)))

(declare-fun b_free!56559 () Bool)

(declare-fun b_next!57263 () Bool)

(assert (=> b!2027157 (= b_free!56559 (not b_next!57263))))

(declare-fun tp!603001 () Bool)

(declare-fun b_and!161279 () Bool)

(assert (=> b!2027157 (= tp!603001 b_and!161279)))

(declare-fun b!2027154 () Bool)

(declare-fun b_free!56561 () Bool)

(declare-fun b_next!57265 () Bool)

(assert (=> b!2027154 (= b_free!56561 (not b_next!57265))))

(declare-fun tp!603008 () Bool)

(declare-fun b_and!161281 () Bool)

(assert (=> b!2027154 (= tp!603008 b_and!161281)))

(declare-fun b_free!56563 () Bool)

(declare-fun b_next!57267 () Bool)

(assert (=> b!2027154 (= b_free!56563 (not b_next!57267))))

(declare-fun tp!603005 () Bool)

(declare-fun b_and!161283 () Bool)

(assert (=> b!2027154 (= tp!603005 b_and!161283)))

(declare-fun b!2027122 () Bool)

(declare-fun res!888849 () Bool)

(declare-fun e!1280491 () Bool)

(assert (=> b!2027122 (=> (not res!888849) (not e!1280491))))

(declare-datatypes ((List!22282 0))(
  ( (Nil!22200) (Cons!22200 (h!27601 (_ BitVec 16)) (t!190005 List!22282)) )
))
(declare-datatypes ((TokenValue!4126 0))(
  ( (FloatLiteralValue!8252 (text!29327 List!22282)) (TokenValueExt!4125 (__x!13750 Int)) (Broken!20630 (value!125280 List!22282)) (Object!4207) (End!4126) (Def!4126) (Underscore!4126) (Match!4126) (Else!4126) (Error!4126) (Case!4126) (If!4126) (Extends!4126) (Abstract!4126) (Class!4126) (Val!4126) (DelimiterValue!8252 (del!4186 List!22282)) (KeywordValue!4132 (value!125281 List!22282)) (CommentValue!8252 (value!125282 List!22282)) (WhitespaceValue!8252 (value!125283 List!22282)) (IndentationValue!4126 (value!125284 List!22282)) (String!25747) (Int32!4126) (Broken!20631 (value!125285 List!22282)) (Boolean!4127) (Unit!36855) (OperatorValue!4129 (op!4186 List!22282)) (IdentifierValue!8252 (value!125286 List!22282)) (IdentifierValue!8253 (value!125287 List!22282)) (WhitespaceValue!8253 (value!125288 List!22282)) (True!8252) (False!8252) (Broken!20632 (value!125289 List!22282)) (Broken!20633 (value!125290 List!22282)) (True!8253) (RightBrace!4126) (RightBracket!4126) (Colon!4126) (Null!4126) (Comma!4126) (LeftBracket!4126) (False!8253) (LeftBrace!4126) (ImaginaryLiteralValue!4126 (text!29328 List!22282)) (StringLiteralValue!12378 (value!125291 List!22282)) (EOFValue!4126 (value!125292 List!22282)) (IdentValue!4126 (value!125293 List!22282)) (DelimiterValue!8253 (value!125294 List!22282)) (DedentValue!4126 (value!125295 List!22282)) (NewLineValue!4126 (value!125296 List!22282)) (IntegerValue!12378 (value!125297 (_ BitVec 32)) (text!29329 List!22282)) (IntegerValue!12379 (value!125298 Int) (text!29330 List!22282)) (Times!4126) (Or!4126) (Equal!4126) (Minus!4126) (Broken!20634 (value!125299 List!22282)) (And!4126) (Div!4126) (LessEqual!4126) (Mod!4126) (Concat!9541) (Not!4126) (Plus!4126) (SpaceValue!4126 (value!125300 List!22282)) (IntegerValue!12380 (value!125301 Int) (text!29331 List!22282)) (StringLiteralValue!12379 (text!29332 List!22282)) (FloatLiteralValue!8253 (text!29333 List!22282)) (BytesLiteralValue!4126 (value!125302 List!22282)) (CommentValue!8253 (value!125303 List!22282)) (StringLiteralValue!12380 (value!125304 List!22282)) (ErrorTokenValue!4126 (msg!4187 List!22282)) )
))
(declare-datatypes ((C!10976 0))(
  ( (C!10977 (val!6440 Int)) )
))
(declare-datatypes ((List!22283 0))(
  ( (Nil!22201) (Cons!22201 (h!27602 C!10976) (t!190006 List!22283)) )
))
(declare-datatypes ((IArray!14857 0))(
  ( (IArray!14858 (innerList!7486 List!22283)) )
))
(declare-datatypes ((Conc!7426 0))(
  ( (Node!7426 (left!17663 Conc!7426) (right!17993 Conc!7426) (csize!15082 Int) (cheight!7637 Int)) (Leaf!10884 (xs!10328 IArray!14857) (csize!15083 Int)) (Empty!7426) )
))
(declare-datatypes ((BalanceConc!14668 0))(
  ( (BalanceConc!14669 (c!328014 Conc!7426)) )
))
(declare-datatypes ((TokenValueInjection!7836 0))(
  ( (TokenValueInjection!7837 (toValue!5663 Int) (toChars!5522 Int)) )
))
(declare-datatypes ((String!25748 0))(
  ( (String!25749 (value!125305 String)) )
))
(declare-datatypes ((Regex!5415 0))(
  ( (ElementMatch!5415 (c!328015 C!10976)) (Concat!9542 (regOne!11342 Regex!5415) (regTwo!11342 Regex!5415)) (EmptyExpr!5415) (Star!5415 (reg!5744 Regex!5415)) (EmptyLang!5415) (Union!5415 (regOne!11343 Regex!5415) (regTwo!11343 Regex!5415)) )
))
(declare-datatypes ((Rule!7780 0))(
  ( (Rule!7781 (regex!3990 Regex!5415) (tag!4474 String!25748) (isSeparator!3990 Bool) (transformation!3990 TokenValueInjection!7836)) )
))
(declare-datatypes ((List!22284 0))(
  ( (Nil!22202) (Cons!22202 (h!27603 Rule!7780) (t!190007 List!22284)) )
))
(declare-fun rules!3198 () List!22284)

(declare-fun isEmpty!13840 (List!22284) Bool)

(assert (=> b!2027122 (= res!888849 (not (isEmpty!13840 rules!3198)))))

(declare-fun e!1280490 () Bool)

(declare-fun tp!603007 () Bool)

(declare-fun e!1280504 () Bool)

(declare-fun b!2027123 () Bool)

(declare-datatypes ((Token!7532 0))(
  ( (Token!7533 (value!125306 TokenValue!4126) (rule!6219 Rule!7780) (size!17340 Int) (originalCharacters!4797 List!22283)) )
))
(declare-datatypes ((List!22285 0))(
  ( (Nil!22203) (Cons!22203 (h!27604 Token!7532) (t!190008 List!22285)) )
))
(declare-fun tokens!598 () List!22285)

(declare-fun inv!29377 (String!25748) Bool)

(declare-fun inv!29380 (TokenValueInjection!7836) Bool)

(assert (=> b!2027123 (= e!1280504 (and tp!603007 (inv!29377 (tag!4474 (rule!6219 (h!27604 tokens!598)))) (inv!29380 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) e!1280490))))

(declare-fun b!2027124 () Bool)

(declare-fun e!1280492 () Bool)

(declare-fun lt!761339 () Rule!7780)

(assert (=> b!2027124 (= e!1280492 (= (rule!6219 (h!27604 tokens!598)) lt!761339))))

(declare-fun b!2027125 () Bool)

(declare-fun res!888854 () Bool)

(declare-fun e!1280500 () Bool)

(assert (=> b!2027125 (=> res!888854 e!1280500)))

(declare-fun lt!761325 () List!22283)

(declare-fun isEmpty!13841 (List!22283) Bool)

(assert (=> b!2027125 (= res!888854 (isEmpty!13841 lt!761325))))

(declare-fun b!2027126 () Bool)

(declare-fun res!888857 () Bool)

(declare-fun e!1280482 () Bool)

(assert (=> b!2027126 (=> res!888857 e!1280482)))

(declare-datatypes ((LexerInterface!3603 0))(
  ( (LexerInterfaceExt!3600 (__x!13751 Int)) (Lexer!3601) )
))
(declare-fun thiss!23328 () LexerInterface!3603)

(declare-fun rulesProduceIndividualToken!1775 (LexerInterface!3603 List!22284 Token!7532) Bool)

(assert (=> b!2027126 (= res!888857 (not (rulesProduceIndividualToken!1775 thiss!23328 rules!3198 (h!27604 tokens!598))))))

(declare-fun b!2027127 () Bool)

(declare-fun res!888868 () Bool)

(assert (=> b!2027127 (=> (not res!888868) (not e!1280491))))

(declare-fun rulesInvariant!3210 (LexerInterface!3603 List!22284) Bool)

(assert (=> b!2027127 (= res!888868 (rulesInvariant!3210 thiss!23328 rules!3198))))

(declare-fun b!2027128 () Bool)

(declare-fun res!888870 () Bool)

(assert (=> b!2027128 (=> res!888870 e!1280482)))

(declare-datatypes ((tuple2!20880 0))(
  ( (tuple2!20881 (_1!11909 Token!7532) (_2!11909 List!22283)) )
))
(declare-fun lt!761332 () tuple2!20880)

(assert (=> b!2027128 (= res!888870 (not (isEmpty!13841 (_2!11909 lt!761332))))))

(declare-fun b!2027129 () Bool)

(declare-fun res!888860 () Bool)

(assert (=> b!2027129 (=> (not res!888860) (not e!1280491))))

(declare-fun lambda!76453 () Int)

(declare-fun forall!4722 (List!22285 Int) Bool)

(assert (=> b!2027129 (= res!888860 (forall!4722 tokens!598 lambda!76453))))

(declare-fun b!2027130 () Bool)

(declare-fun e!1280488 () Bool)

(assert (=> b!2027130 (= e!1280488 false)))

(declare-fun b!2027131 () Bool)

(declare-fun res!888863 () Bool)

(assert (=> b!2027131 (=> res!888863 e!1280482)))

(declare-fun separatorToken!354 () Token!7532)

(declare-fun contains!4095 (List!22284 Rule!7780) Bool)

(assert (=> b!2027131 (= res!888863 (not (contains!4095 rules!3198 (rule!6219 separatorToken!354))))))

(declare-fun b!2027132 () Bool)

(declare-fun res!888858 () Bool)

(assert (=> b!2027132 (=> (not res!888858) (not e!1280491))))

(assert (=> b!2027132 (= res!888858 (isSeparator!3990 (rule!6219 separatorToken!354)))))

(declare-fun b!2027133 () Bool)

(declare-fun e!1280481 () Bool)

(assert (=> b!2027133 (= e!1280481 e!1280482)))

(declare-fun res!888861 () Bool)

(assert (=> b!2027133 (=> res!888861 e!1280482)))

(declare-fun lt!761344 () List!22283)

(declare-fun lt!761333 () List!22283)

(declare-fun lt!761329 () List!22283)

(assert (=> b!2027133 (= res!888861 (or (not (= lt!761344 lt!761333)) (not (= lt!761333 lt!761329)) (not (= lt!761344 lt!761329))))))

(declare-fun printList!1122 (LexerInterface!3603 List!22285) List!22283)

(assert (=> b!2027133 (= lt!761333 (printList!1122 thiss!23328 (Cons!22203 (h!27604 tokens!598) Nil!22203)))))

(declare-fun lt!761342 () BalanceConc!14668)

(declare-fun list!9061 (BalanceConc!14668) List!22283)

(assert (=> b!2027133 (= lt!761344 (list!9061 lt!761342))))

(declare-datatypes ((IArray!14859 0))(
  ( (IArray!14860 (innerList!7487 List!22285)) )
))
(declare-datatypes ((Conc!7427 0))(
  ( (Node!7427 (left!17664 Conc!7427) (right!17994 Conc!7427) (csize!15084 Int) (cheight!7638 Int)) (Leaf!10885 (xs!10329 IArray!14859) (csize!15085 Int)) (Empty!7427) )
))
(declare-datatypes ((BalanceConc!14670 0))(
  ( (BalanceConc!14671 (c!328016 Conc!7427)) )
))
(declare-fun lt!761328 () BalanceConc!14670)

(declare-fun printTailRec!1071 (LexerInterface!3603 BalanceConc!14670 Int BalanceConc!14668) BalanceConc!14668)

(assert (=> b!2027133 (= lt!761342 (printTailRec!1071 thiss!23328 lt!761328 0 (BalanceConc!14669 Empty!7426)))))

(declare-fun print!1565 (LexerInterface!3603 BalanceConc!14670) BalanceConc!14668)

(assert (=> b!2027133 (= lt!761342 (print!1565 thiss!23328 lt!761328))))

(declare-fun singletonSeq!1966 (Token!7532) BalanceConc!14670)

(assert (=> b!2027133 (= lt!761328 (singletonSeq!1966 (h!27604 tokens!598)))))

(declare-fun lt!761321 () List!22283)

(declare-fun lt!761335 () C!10976)

(declare-fun contains!4096 (List!22283 C!10976) Bool)

(assert (=> b!2027133 (not (contains!4096 lt!761321 lt!761335))))

(declare-fun usedCharacters!428 (Regex!5415) List!22283)

(assert (=> b!2027133 (= lt!761321 (usedCharacters!428 (regex!3990 (rule!6219 (h!27604 tokens!598)))))))

(declare-datatypes ((Unit!36856 0))(
  ( (Unit!36857) )
))
(declare-fun lt!761317 () Unit!36856)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!100 (LexerInterface!3603 List!22284 List!22284 Rule!7780 Rule!7780 C!10976) Unit!36856)

(assert (=> b!2027133 (= lt!761317 (lemmaNonSepRuleNotContainsCharContainedInASepRule!100 thiss!23328 rules!3198 rules!3198 (rule!6219 (h!27604 tokens!598)) (rule!6219 separatorToken!354) lt!761335))))

(declare-fun lt!761320 () Unit!36856)

(declare-fun e!1280503 () Unit!36856)

(assert (=> b!2027133 (= lt!761320 e!1280503)))

(declare-fun c!328013 () Bool)

(declare-fun lt!761341 () List!22283)

(assert (=> b!2027133 (= c!328013 (not (contains!4096 lt!761341 lt!761335)))))

(declare-fun lt!761334 () List!22283)

(declare-fun head!4580 (List!22283) C!10976)

(assert (=> b!2027133 (= lt!761335 (head!4580 lt!761334))))

(assert (=> b!2027133 (= lt!761341 (usedCharacters!428 (regex!3990 (rule!6219 separatorToken!354))))))

(declare-fun lt!761327 () List!22283)

(declare-fun lt!761331 () List!22283)

(declare-fun ++!6001 (List!22283 List!22283) List!22283)

(assert (=> b!2027133 (= (++!6001 lt!761327 lt!761331) (++!6001 lt!761329 lt!761325))))

(assert (=> b!2027133 (= lt!761325 (++!6001 lt!761334 lt!761331))))

(assert (=> b!2027133 (= lt!761327 (++!6001 lt!761329 lt!761334))))

(declare-fun lt!761326 () Unit!36856)

(declare-fun lemmaConcatAssociativity!1255 (List!22283 List!22283 List!22283) Unit!36856)

(assert (=> b!2027133 (= lt!761326 (lemmaConcatAssociativity!1255 lt!761329 lt!761334 lt!761331))))

(declare-fun e!1280486 () Bool)

(declare-fun e!1280480 () Bool)

(declare-fun tp!603004 () Bool)

(declare-fun b!2027134 () Bool)

(assert (=> b!2027134 (= e!1280480 (and tp!603004 (inv!29377 (tag!4474 (rule!6219 separatorToken!354))) (inv!29380 (transformation!3990 (rule!6219 separatorToken!354))) e!1280486))))

(declare-fun b!2027135 () Bool)

(declare-fun e!1280487 () Bool)

(declare-fun e!1280502 () Bool)

(declare-fun tp!603002 () Bool)

(assert (=> b!2027135 (= e!1280487 (and e!1280502 tp!603002))))

(declare-fun b!2027136 () Bool)

(declare-fun res!888865 () Bool)

(assert (=> b!2027136 (=> (not res!888865) (not e!1280491))))

(declare-fun sepAndNonSepRulesDisjointChars!1088 (List!22284 List!22284) Bool)

(assert (=> b!2027136 (= res!888865 (sepAndNonSepRulesDisjointChars!1088 rules!3198 rules!3198))))

(declare-fun b!2027137 () Bool)

(declare-fun res!888851 () Bool)

(assert (=> b!2027137 (=> res!888851 e!1280482)))

(assert (=> b!2027137 (= res!888851 (isSeparator!3990 (rule!6219 (h!27604 tokens!598))))))

(declare-fun b!2027138 () Bool)

(declare-fun e!1280489 () Bool)

(declare-fun lt!761340 () C!10976)

(assert (=> b!2027138 (= e!1280489 (contains!4096 lt!761341 lt!761340))))

(declare-fun b!2027139 () Bool)

(declare-fun e!1280497 () Bool)

(declare-fun tp!603009 () Bool)

(declare-fun inv!21 (TokenValue!4126) Bool)

(assert (=> b!2027139 (= e!1280497 (and (inv!21 (value!125306 (h!27604 tokens!598))) e!1280504 tp!603009))))

(declare-fun b!2027140 () Bool)

(declare-fun e!1280498 () Bool)

(declare-fun e!1280484 () Bool)

(assert (=> b!2027140 (= e!1280498 e!1280484)))

(declare-fun res!888856 () Bool)

(assert (=> b!2027140 (=> (not res!888856) (not e!1280484))))

(declare-fun lt!761318 () Rule!7780)

(declare-fun matchR!2681 (Regex!5415 List!22283) Bool)

(assert (=> b!2027140 (= res!888856 (matchR!2681 (regex!3990 lt!761318) lt!761334))))

(declare-datatypes ((Option!4663 0))(
  ( (None!4662) (Some!4662 (v!26979 Rule!7780)) )
))
(declare-fun lt!761314 () Option!4663)

(declare-fun get!7049 (Option!4663) Rule!7780)

(assert (=> b!2027140 (= lt!761318 (get!7049 lt!761314))))

(declare-fun b!2027141 () Bool)

(assert (=> b!2027141 (= e!1280484 (= (rule!6219 separatorToken!354) lt!761318))))

(declare-fun tp!603000 () Bool)

(declare-fun b!2027142 () Bool)

(declare-fun e!1280494 () Bool)

(assert (=> b!2027142 (= e!1280502 (and tp!603000 (inv!29377 (tag!4474 (h!27603 rules!3198))) (inv!29380 (transformation!3990 (h!27603 rules!3198))) e!1280494))))

(declare-fun b!2027143 () Bool)

(assert (=> b!2027143 (= e!1280491 (not e!1280481))))

(declare-fun res!888867 () Bool)

(assert (=> b!2027143 (=> res!888867 e!1280481)))

(declare-datatypes ((Option!4664 0))(
  ( (None!4663) (Some!4663 (v!26980 tuple2!20880)) )
))
(declare-fun lt!761319 () Option!4664)

(declare-fun lt!761338 () Bool)

(assert (=> b!2027143 (= res!888867 (or (and (not lt!761338) (= (_1!11909 (v!26980 lt!761319)) (h!27604 tokens!598))) lt!761338 (= (_1!11909 (v!26980 lt!761319)) (h!27604 tokens!598))))))

(get-info :version)

(assert (=> b!2027143 (= lt!761338 (not ((_ is Some!4663) lt!761319)))))

(declare-fun maxPrefix!2039 (LexerInterface!3603 List!22284 List!22283) Option!4664)

(assert (=> b!2027143 (= lt!761319 (maxPrefix!2039 thiss!23328 rules!3198 (++!6001 lt!761329 lt!761331)))))

(declare-fun printWithSeparatorTokenWhenNeededList!632 (LexerInterface!3603 List!22284 List!22285 Token!7532) List!22283)

(assert (=> b!2027143 (= lt!761331 (printWithSeparatorTokenWhenNeededList!632 thiss!23328 rules!3198 (t!190008 tokens!598) separatorToken!354))))

(declare-fun e!1280485 () Bool)

(assert (=> b!2027143 e!1280485))

(declare-fun res!888853 () Bool)

(assert (=> b!2027143 (=> (not res!888853) (not e!1280485))))

(declare-fun lt!761323 () Option!4663)

(declare-fun isDefined!3951 (Option!4663) Bool)

(assert (=> b!2027143 (= res!888853 (isDefined!3951 lt!761323))))

(declare-fun getRuleFromTag!805 (LexerInterface!3603 List!22284 String!25748) Option!4663)

(assert (=> b!2027143 (= lt!761323 (getRuleFromTag!805 thiss!23328 rules!3198 (tag!4474 (rule!6219 (h!27604 tokens!598)))))))

(declare-fun lt!761324 () Unit!36856)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!805 (LexerInterface!3603 List!22284 List!22283 Token!7532) Unit!36856)

(assert (=> b!2027143 (= lt!761324 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!805 thiss!23328 rules!3198 lt!761329 (h!27604 tokens!598)))))

(assert (=> b!2027143 (= (_1!11909 lt!761332) (h!27604 tokens!598))))

(declare-fun lt!761337 () Option!4664)

(declare-fun get!7050 (Option!4664) tuple2!20880)

(assert (=> b!2027143 (= lt!761332 (get!7050 lt!761337))))

(declare-fun isDefined!3952 (Option!4664) Bool)

(assert (=> b!2027143 (isDefined!3952 lt!761337)))

(assert (=> b!2027143 (= lt!761337 (maxPrefix!2039 thiss!23328 rules!3198 lt!761329))))

(declare-fun lt!761330 () BalanceConc!14668)

(assert (=> b!2027143 (= lt!761329 (list!9061 lt!761330))))

(assert (=> b!2027143 e!1280498))

(declare-fun res!888869 () Bool)

(assert (=> b!2027143 (=> (not res!888869) (not e!1280498))))

(assert (=> b!2027143 (= res!888869 (isDefined!3951 lt!761314))))

(assert (=> b!2027143 (= lt!761314 (getRuleFromTag!805 thiss!23328 rules!3198 (tag!4474 (rule!6219 separatorToken!354))))))

(declare-fun lt!761315 () Unit!36856)

(assert (=> b!2027143 (= lt!761315 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!805 thiss!23328 rules!3198 lt!761334 separatorToken!354))))

(declare-fun charsOf!2530 (Token!7532) BalanceConc!14668)

(assert (=> b!2027143 (= lt!761334 (list!9061 (charsOf!2530 separatorToken!354)))))

(declare-fun lt!761322 () Unit!36856)

(declare-fun lemmaEqSameImage!676 (TokenValueInjection!7836 BalanceConc!14668 BalanceConc!14668) Unit!36856)

(declare-fun seqFromList!2844 (List!22283) BalanceConc!14668)

(assert (=> b!2027143 (= lt!761322 (lemmaEqSameImage!676 (transformation!3990 (rule!6219 (h!27604 tokens!598))) lt!761330 (seqFromList!2844 (originalCharacters!4797 (h!27604 tokens!598)))))))

(declare-fun lt!761316 () Unit!36856)

(declare-fun lemmaSemiInverse!947 (TokenValueInjection!7836 BalanceConc!14668) Unit!36856)

(assert (=> b!2027143 (= lt!761316 (lemmaSemiInverse!947 (transformation!3990 (rule!6219 (h!27604 tokens!598))) lt!761330))))

(assert (=> b!2027143 (= lt!761330 (charsOf!2530 (h!27604 tokens!598)))))

(declare-fun b!2027144 () Bool)

(declare-fun res!888862 () Bool)

(assert (=> b!2027144 (=> (not res!888862) (not e!1280491))))

(assert (=> b!2027144 (= res!888862 ((_ is Cons!22203) tokens!598))))

(declare-fun b!2027145 () Bool)

(declare-fun Unit!36858 () Unit!36856)

(assert (=> b!2027145 (= e!1280503 Unit!36858)))

(declare-fun b!2027146 () Bool)

(assert (=> b!2027146 (= e!1280485 e!1280492)))

(declare-fun res!888871 () Bool)

(assert (=> b!2027146 (=> (not res!888871) (not e!1280492))))

(assert (=> b!2027146 (= res!888871 (matchR!2681 (regex!3990 lt!761339) lt!761329))))

(assert (=> b!2027146 (= lt!761339 (get!7049 lt!761323))))

(declare-fun res!888859 () Bool)

(assert (=> start!199404 (=> (not res!888859) (not e!1280491))))

(assert (=> start!199404 (= res!888859 ((_ is Lexer!3601) thiss!23328))))

(assert (=> start!199404 e!1280491))

(assert (=> start!199404 true))

(assert (=> start!199404 e!1280487))

(declare-fun e!1280493 () Bool)

(assert (=> start!199404 e!1280493))

(declare-fun e!1280483 () Bool)

(declare-fun inv!29381 (Token!7532) Bool)

(assert (=> start!199404 (and (inv!29381 separatorToken!354) e!1280483)))

(declare-fun b!2027147 () Bool)

(declare-fun res!888852 () Bool)

(assert (=> b!2027147 (=> res!888852 e!1280482)))

(assert (=> b!2027147 (= res!888852 (not (contains!4095 rules!3198 (rule!6219 (h!27604 tokens!598)))))))

(declare-fun b!2027148 () Bool)

(declare-fun res!888850 () Bool)

(assert (=> b!2027148 (=> (not res!888850) (not e!1280491))))

(assert (=> b!2027148 (= res!888850 (rulesProduceIndividualToken!1775 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun tp!603010 () Bool)

(declare-fun b!2027149 () Bool)

(assert (=> b!2027149 (= e!1280483 (and (inv!21 (value!125306 separatorToken!354)) e!1280480 tp!603010))))

(declare-fun b!2027150 () Bool)

(declare-fun tp!603006 () Bool)

(assert (=> b!2027150 (= e!1280493 (and (inv!29381 (h!27604 tokens!598)) e!1280497 tp!603006))))

(declare-fun b!2027151 () Bool)

(assert (=> b!2027151 (= e!1280482 e!1280500)))

(declare-fun res!888866 () Bool)

(assert (=> b!2027151 (=> res!888866 e!1280500)))

(assert (=> b!2027151 (= res!888866 (not (matchR!2681 (regex!3990 (rule!6219 (h!27604 tokens!598))) lt!761329)))))

(declare-fun ruleValid!1221 (LexerInterface!3603 Rule!7780) Bool)

(assert (=> b!2027151 (ruleValid!1221 thiss!23328 (rule!6219 (h!27604 tokens!598)))))

(declare-fun lt!761343 () Unit!36856)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!692 (LexerInterface!3603 Rule!7780 List!22284) Unit!36856)

(assert (=> b!2027151 (= lt!761343 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!692 thiss!23328 (rule!6219 (h!27604 tokens!598)) rules!3198))))

(declare-fun b!2027152 () Bool)

(assert (=> b!2027152 (= e!1280500 e!1280489)))

(declare-fun res!888873 () Bool)

(assert (=> b!2027152 (=> res!888873 e!1280489)))

(assert (=> b!2027152 (= res!888873 (contains!4096 lt!761321 lt!761340))))

(assert (=> b!2027152 (= lt!761340 (head!4580 lt!761325))))

(assert (=> b!2027153 (= e!1280486 (and tp!603012 tp!603003))))

(assert (=> b!2027154 (= e!1280494 (and tp!603008 tp!603005))))

(declare-fun b!2027155 () Bool)

(declare-fun Unit!36859 () Unit!36856)

(assert (=> b!2027155 (= e!1280503 Unit!36859)))

(declare-fun lt!761336 () Unit!36856)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!316 (Regex!5415 List!22283 C!10976) Unit!36856)

(assert (=> b!2027155 (= lt!761336 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!316 (regex!3990 (rule!6219 separatorToken!354)) lt!761334 lt!761335))))

(declare-fun res!888872 () Bool)

(assert (=> b!2027155 (= res!888872 (not (matchR!2681 (regex!3990 (rule!6219 separatorToken!354)) lt!761334)))))

(assert (=> b!2027155 (=> (not res!888872) (not e!1280488))))

(assert (=> b!2027155 e!1280488))

(declare-fun b!2027156 () Bool)

(declare-fun res!888864 () Bool)

(assert (=> b!2027156 (=> res!888864 e!1280482)))

(declare-fun isEmpty!13842 (BalanceConc!14670) Bool)

(declare-datatypes ((tuple2!20882 0))(
  ( (tuple2!20883 (_1!11910 BalanceConc!14670) (_2!11910 BalanceConc!14668)) )
))
(declare-fun lex!1619 (LexerInterface!3603 List!22284 BalanceConc!14668) tuple2!20882)

(assert (=> b!2027156 (= res!888864 (isEmpty!13842 (_1!11910 (lex!1619 thiss!23328 rules!3198 (seqFromList!2844 lt!761329)))))))

(assert (=> b!2027157 (= e!1280490 (and tp!603011 tp!603001))))

(declare-fun b!2027158 () Bool)

(declare-fun res!888855 () Bool)

(assert (=> b!2027158 (=> (not res!888855) (not e!1280491))))

(declare-fun rulesProduceEachTokenIndividuallyList!1334 (LexerInterface!3603 List!22284 List!22285) Bool)

(assert (=> b!2027158 (= res!888855 (rulesProduceEachTokenIndividuallyList!1334 thiss!23328 rules!3198 tokens!598))))

(assert (= (and start!199404 res!888859) b!2027122))

(assert (= (and b!2027122 res!888849) b!2027127))

(assert (= (and b!2027127 res!888868) b!2027158))

(assert (= (and b!2027158 res!888855) b!2027148))

(assert (= (and b!2027148 res!888850) b!2027132))

(assert (= (and b!2027132 res!888858) b!2027129))

(assert (= (and b!2027129 res!888860) b!2027136))

(assert (= (and b!2027136 res!888865) b!2027144))

(assert (= (and b!2027144 res!888862) b!2027143))

(assert (= (and b!2027143 res!888869) b!2027140))

(assert (= (and b!2027140 res!888856) b!2027141))

(assert (= (and b!2027143 res!888853) b!2027146))

(assert (= (and b!2027146 res!888871) b!2027124))

(assert (= (and b!2027143 (not res!888867)) b!2027133))

(assert (= (and b!2027133 c!328013) b!2027155))

(assert (= (and b!2027133 (not c!328013)) b!2027145))

(assert (= (and b!2027155 res!888872) b!2027130))

(assert (= (and b!2027133 (not res!888861)) b!2027126))

(assert (= (and b!2027126 (not res!888857)) b!2027156))

(assert (= (and b!2027156 (not res!888864)) b!2027147))

(assert (= (and b!2027147 (not res!888852)) b!2027131))

(assert (= (and b!2027131 (not res!888863)) b!2027137))

(assert (= (and b!2027137 (not res!888851)) b!2027128))

(assert (= (and b!2027128 (not res!888870)) b!2027151))

(assert (= (and b!2027151 (not res!888866)) b!2027125))

(assert (= (and b!2027125 (not res!888854)) b!2027152))

(assert (= (and b!2027152 (not res!888873)) b!2027138))

(assert (= b!2027142 b!2027154))

(assert (= b!2027135 b!2027142))

(assert (= (and start!199404 ((_ is Cons!22202) rules!3198)) b!2027135))

(assert (= b!2027123 b!2027157))

(assert (= b!2027139 b!2027123))

(assert (= b!2027150 b!2027139))

(assert (= (and start!199404 ((_ is Cons!22203) tokens!598)) b!2027150))

(assert (= b!2027134 b!2027153))

(assert (= b!2027149 b!2027134))

(assert (= start!199404 b!2027149))

(declare-fun m!2465985 () Bool)

(assert (=> b!2027139 m!2465985))

(declare-fun m!2465987 () Bool)

(assert (=> b!2027131 m!2465987))

(declare-fun m!2465989 () Bool)

(assert (=> b!2027158 m!2465989))

(declare-fun m!2465991 () Bool)

(assert (=> b!2027128 m!2465991))

(declare-fun m!2465993 () Bool)

(assert (=> b!2027143 m!2465993))

(declare-fun m!2465995 () Bool)

(assert (=> b!2027143 m!2465995))

(declare-fun m!2465997 () Bool)

(assert (=> b!2027143 m!2465997))

(declare-fun m!2465999 () Bool)

(assert (=> b!2027143 m!2465999))

(declare-fun m!2466001 () Bool)

(assert (=> b!2027143 m!2466001))

(declare-fun m!2466003 () Bool)

(assert (=> b!2027143 m!2466003))

(declare-fun m!2466005 () Bool)

(assert (=> b!2027143 m!2466005))

(declare-fun m!2466007 () Bool)

(assert (=> b!2027143 m!2466007))

(declare-fun m!2466009 () Bool)

(assert (=> b!2027143 m!2466009))

(declare-fun m!2466011 () Bool)

(assert (=> b!2027143 m!2466011))

(declare-fun m!2466013 () Bool)

(assert (=> b!2027143 m!2466013))

(declare-fun m!2466015 () Bool)

(assert (=> b!2027143 m!2466015))

(declare-fun m!2466017 () Bool)

(assert (=> b!2027143 m!2466017))

(assert (=> b!2027143 m!2466001))

(assert (=> b!2027143 m!2465993))

(declare-fun m!2466019 () Bool)

(assert (=> b!2027143 m!2466019))

(declare-fun m!2466021 () Bool)

(assert (=> b!2027143 m!2466021))

(declare-fun m!2466023 () Bool)

(assert (=> b!2027143 m!2466023))

(assert (=> b!2027143 m!2466013))

(declare-fun m!2466025 () Bool)

(assert (=> b!2027143 m!2466025))

(declare-fun m!2466027 () Bool)

(assert (=> b!2027143 m!2466027))

(declare-fun m!2466029 () Bool)

(assert (=> b!2027143 m!2466029))

(declare-fun m!2466031 () Bool)

(assert (=> b!2027152 m!2466031))

(declare-fun m!2466033 () Bool)

(assert (=> b!2027152 m!2466033))

(declare-fun m!2466035 () Bool)

(assert (=> b!2027129 m!2466035))

(declare-fun m!2466037 () Bool)

(assert (=> b!2027125 m!2466037))

(declare-fun m!2466039 () Bool)

(assert (=> b!2027122 m!2466039))

(declare-fun m!2466041 () Bool)

(assert (=> b!2027127 m!2466041))

(declare-fun m!2466043 () Bool)

(assert (=> b!2027148 m!2466043))

(declare-fun m!2466045 () Bool)

(assert (=> b!2027146 m!2466045))

(declare-fun m!2466047 () Bool)

(assert (=> b!2027146 m!2466047))

(declare-fun m!2466049 () Bool)

(assert (=> b!2027140 m!2466049))

(declare-fun m!2466051 () Bool)

(assert (=> b!2027140 m!2466051))

(declare-fun m!2466053 () Bool)

(assert (=> b!2027142 m!2466053))

(declare-fun m!2466055 () Bool)

(assert (=> b!2027142 m!2466055))

(declare-fun m!2466057 () Bool)

(assert (=> b!2027138 m!2466057))

(declare-fun m!2466059 () Bool)

(assert (=> b!2027149 m!2466059))

(declare-fun m!2466061 () Bool)

(assert (=> b!2027150 m!2466061))

(declare-fun m!2466063 () Bool)

(assert (=> b!2027151 m!2466063))

(declare-fun m!2466065 () Bool)

(assert (=> b!2027151 m!2466065))

(declare-fun m!2466067 () Bool)

(assert (=> b!2027151 m!2466067))

(declare-fun m!2466069 () Bool)

(assert (=> b!2027133 m!2466069))

(declare-fun m!2466071 () Bool)

(assert (=> b!2027133 m!2466071))

(declare-fun m!2466073 () Bool)

(assert (=> b!2027133 m!2466073))

(declare-fun m!2466075 () Bool)

(assert (=> b!2027133 m!2466075))

(declare-fun m!2466077 () Bool)

(assert (=> b!2027133 m!2466077))

(declare-fun m!2466079 () Bool)

(assert (=> b!2027133 m!2466079))

(declare-fun m!2466081 () Bool)

(assert (=> b!2027133 m!2466081))

(declare-fun m!2466083 () Bool)

(assert (=> b!2027133 m!2466083))

(declare-fun m!2466085 () Bool)

(assert (=> b!2027133 m!2466085))

(declare-fun m!2466087 () Bool)

(assert (=> b!2027133 m!2466087))

(declare-fun m!2466089 () Bool)

(assert (=> b!2027133 m!2466089))

(declare-fun m!2466091 () Bool)

(assert (=> b!2027133 m!2466091))

(declare-fun m!2466093 () Bool)

(assert (=> b!2027133 m!2466093))

(declare-fun m!2466095 () Bool)

(assert (=> b!2027133 m!2466095))

(declare-fun m!2466097 () Bool)

(assert (=> b!2027133 m!2466097))

(declare-fun m!2466099 () Bool)

(assert (=> b!2027133 m!2466099))

(declare-fun m!2466101 () Bool)

(assert (=> b!2027126 m!2466101))

(declare-fun m!2466103 () Bool)

(assert (=> b!2027155 m!2466103))

(declare-fun m!2466105 () Bool)

(assert (=> b!2027155 m!2466105))

(declare-fun m!2466107 () Bool)

(assert (=> b!2027134 m!2466107))

(declare-fun m!2466109 () Bool)

(assert (=> b!2027134 m!2466109))

(declare-fun m!2466111 () Bool)

(assert (=> b!2027156 m!2466111))

(assert (=> b!2027156 m!2466111))

(declare-fun m!2466113 () Bool)

(assert (=> b!2027156 m!2466113))

(declare-fun m!2466115 () Bool)

(assert (=> b!2027156 m!2466115))

(declare-fun m!2466117 () Bool)

(assert (=> start!199404 m!2466117))

(declare-fun m!2466119 () Bool)

(assert (=> b!2027123 m!2466119))

(declare-fun m!2466121 () Bool)

(assert (=> b!2027123 m!2466121))

(declare-fun m!2466123 () Bool)

(assert (=> b!2027147 m!2466123))

(declare-fun m!2466125 () Bool)

(assert (=> b!2027136 m!2466125))

(check-sat (not b_next!57259) (not b_next!57257) (not b!2027142) (not b!2027138) (not b!2027135) (not b!2027134) (not b!2027136) (not b!2027129) (not b_next!57267) (not b!2027122) b_and!161275 (not b!2027147) b_and!161277 (not b!2027151) (not b!2027139) b_and!161279 (not b!2027140) (not b!2027155) (not b!2027127) (not b!2027156) (not b!2027149) (not b!2027143) (not b!2027123) (not b!2027125) (not b_next!57263) (not b!2027133) (not b!2027158) (not b!2027128) b_and!161281 b_and!161283 b_and!161273 (not b!2027148) (not b!2027131) (not start!199404) (not b!2027146) (not b!2027126) (not b_next!57265) (not b!2027152) (not b_next!57261) (not b!2027150))
(check-sat (not b_next!57259) (not b_next!57257) (not b_next!57263) (not b_next!57267) (not b_next!57265) (not b_next!57261) b_and!161275 b_and!161277 b_and!161279 b_and!161281 b_and!161283 b_and!161273)
(get-model)

(declare-fun d!619924 () Bool)

(assert (=> d!619924 (= (inv!29377 (tag!4474 (h!27603 rules!3198))) (= (mod (str.len (value!125305 (tag!4474 (h!27603 rules!3198)))) 2) 0))))

(assert (=> b!2027142 d!619924))

(declare-fun d!619926 () Bool)

(declare-fun res!888886 () Bool)

(declare-fun e!1280507 () Bool)

(assert (=> d!619926 (=> (not res!888886) (not e!1280507))))

(declare-fun semiInverseModEq!1606 (Int Int) Bool)

(assert (=> d!619926 (= res!888886 (semiInverseModEq!1606 (toChars!5522 (transformation!3990 (h!27603 rules!3198))) (toValue!5663 (transformation!3990 (h!27603 rules!3198)))))))

(assert (=> d!619926 (= (inv!29380 (transformation!3990 (h!27603 rules!3198))) e!1280507)))

(declare-fun b!2027161 () Bool)

(declare-fun equivClasses!1533 (Int Int) Bool)

(assert (=> b!2027161 (= e!1280507 (equivClasses!1533 (toChars!5522 (transformation!3990 (h!27603 rules!3198))) (toValue!5663 (transformation!3990 (h!27603 rules!3198)))))))

(assert (= (and d!619926 res!888886) b!2027161))

(declare-fun m!2466127 () Bool)

(assert (=> d!619926 m!2466127))

(declare-fun m!2466129 () Bool)

(assert (=> b!2027161 m!2466129))

(assert (=> b!2027142 d!619926))

(declare-fun d!619928 () Bool)

(declare-fun e!1280528 () Bool)

(assert (=> d!619928 e!1280528))

(declare-fun c!328024 () Bool)

(assert (=> d!619928 (= c!328024 ((_ is EmptyExpr!5415) (regex!3990 lt!761318)))))

(declare-fun lt!761349 () Bool)

(declare-fun e!1280527 () Bool)

(assert (=> d!619928 (= lt!761349 e!1280527)))

(declare-fun c!328025 () Bool)

(assert (=> d!619928 (= c!328025 (isEmpty!13841 lt!761334))))

(declare-fun validRegex!2177 (Regex!5415) Bool)

(assert (=> d!619928 (validRegex!2177 (regex!3990 lt!761318))))

(assert (=> d!619928 (= (matchR!2681 (regex!3990 lt!761318) lt!761334) lt!761349)))

(declare-fun b!2027194 () Bool)

(declare-fun res!888910 () Bool)

(declare-fun e!1280531 () Bool)

(assert (=> b!2027194 (=> res!888910 e!1280531)))

(assert (=> b!2027194 (= res!888910 (not ((_ is ElementMatch!5415) (regex!3990 lt!761318))))))

(declare-fun e!1280526 () Bool)

(assert (=> b!2027194 (= e!1280526 e!1280531)))

(declare-fun b!2027195 () Bool)

(declare-fun res!888914 () Bool)

(declare-fun e!1280529 () Bool)

(assert (=> b!2027195 (=> res!888914 e!1280529)))

(declare-fun tail!3057 (List!22283) List!22283)

(assert (=> b!2027195 (= res!888914 (not (isEmpty!13841 (tail!3057 lt!761334))))))

(declare-fun b!2027196 () Bool)

(declare-fun nullable!1651 (Regex!5415) Bool)

(assert (=> b!2027196 (= e!1280527 (nullable!1651 (regex!3990 lt!761318)))))

(declare-fun b!2027197 () Bool)

(declare-fun derivativeStep!1410 (Regex!5415 C!10976) Regex!5415)

(assert (=> b!2027197 (= e!1280527 (matchR!2681 (derivativeStep!1410 (regex!3990 lt!761318) (head!4580 lt!761334)) (tail!3057 lt!761334)))))

(declare-fun bm!124332 () Bool)

(declare-fun call!124337 () Bool)

(assert (=> bm!124332 (= call!124337 (isEmpty!13841 lt!761334))))

(declare-fun b!2027198 () Bool)

(declare-fun e!1280530 () Bool)

(assert (=> b!2027198 (= e!1280530 e!1280529)))

(declare-fun res!888909 () Bool)

(assert (=> b!2027198 (=> res!888909 e!1280529)))

(assert (=> b!2027198 (= res!888909 call!124337)))

(declare-fun b!2027199 () Bool)

(assert (=> b!2027199 (= e!1280528 (= lt!761349 call!124337))))

(declare-fun b!2027200 () Bool)

(assert (=> b!2027200 (= e!1280531 e!1280530)))

(declare-fun res!888913 () Bool)

(assert (=> b!2027200 (=> (not res!888913) (not e!1280530))))

(assert (=> b!2027200 (= res!888913 (not lt!761349))))

(declare-fun b!2027201 () Bool)

(declare-fun res!888908 () Bool)

(declare-fun e!1280532 () Bool)

(assert (=> b!2027201 (=> (not res!888908) (not e!1280532))))

(assert (=> b!2027201 (= res!888908 (isEmpty!13841 (tail!3057 lt!761334)))))

(declare-fun b!2027202 () Bool)

(assert (=> b!2027202 (= e!1280529 (not (= (head!4580 lt!761334) (c!328015 (regex!3990 lt!761318)))))))

(declare-fun b!2027203 () Bool)

(assert (=> b!2027203 (= e!1280526 (not lt!761349))))

(declare-fun b!2027204 () Bool)

(declare-fun res!888907 () Bool)

(assert (=> b!2027204 (=> res!888907 e!1280531)))

(assert (=> b!2027204 (= res!888907 e!1280532)))

(declare-fun res!888912 () Bool)

(assert (=> b!2027204 (=> (not res!888912) (not e!1280532))))

(assert (=> b!2027204 (= res!888912 lt!761349)))

(declare-fun b!2027205 () Bool)

(assert (=> b!2027205 (= e!1280528 e!1280526)))

(declare-fun c!328023 () Bool)

(assert (=> b!2027205 (= c!328023 ((_ is EmptyLang!5415) (regex!3990 lt!761318)))))

(declare-fun b!2027206 () Bool)

(assert (=> b!2027206 (= e!1280532 (= (head!4580 lt!761334) (c!328015 (regex!3990 lt!761318))))))

(declare-fun b!2027207 () Bool)

(declare-fun res!888911 () Bool)

(assert (=> b!2027207 (=> (not res!888911) (not e!1280532))))

(assert (=> b!2027207 (= res!888911 (not call!124337))))

(assert (= (and d!619928 c!328025) b!2027196))

(assert (= (and d!619928 (not c!328025)) b!2027197))

(assert (= (and d!619928 c!328024) b!2027199))

(assert (= (and d!619928 (not c!328024)) b!2027205))

(assert (= (and b!2027205 c!328023) b!2027203))

(assert (= (and b!2027205 (not c!328023)) b!2027194))

(assert (= (and b!2027194 (not res!888910)) b!2027204))

(assert (= (and b!2027204 res!888912) b!2027207))

(assert (= (and b!2027207 res!888911) b!2027201))

(assert (= (and b!2027201 res!888908) b!2027206))

(assert (= (and b!2027204 (not res!888907)) b!2027200))

(assert (= (and b!2027200 res!888913) b!2027198))

(assert (= (and b!2027198 (not res!888909)) b!2027195))

(assert (= (and b!2027195 (not res!888914)) b!2027202))

(assert (= (or b!2027199 b!2027198 b!2027207) bm!124332))

(assert (=> b!2027197 m!2466093))

(assert (=> b!2027197 m!2466093))

(declare-fun m!2466131 () Bool)

(assert (=> b!2027197 m!2466131))

(declare-fun m!2466133 () Bool)

(assert (=> b!2027197 m!2466133))

(assert (=> b!2027197 m!2466131))

(assert (=> b!2027197 m!2466133))

(declare-fun m!2466135 () Bool)

(assert (=> b!2027197 m!2466135))

(declare-fun m!2466137 () Bool)

(assert (=> d!619928 m!2466137))

(declare-fun m!2466139 () Bool)

(assert (=> d!619928 m!2466139))

(assert (=> b!2027201 m!2466133))

(assert (=> b!2027201 m!2466133))

(declare-fun m!2466141 () Bool)

(assert (=> b!2027201 m!2466141))

(assert (=> b!2027195 m!2466133))

(assert (=> b!2027195 m!2466133))

(assert (=> b!2027195 m!2466141))

(assert (=> b!2027206 m!2466093))

(declare-fun m!2466143 () Bool)

(assert (=> b!2027196 m!2466143))

(assert (=> b!2027202 m!2466093))

(assert (=> bm!124332 m!2466137))

(assert (=> b!2027140 d!619928))

(declare-fun d!619930 () Bool)

(assert (=> d!619930 (= (get!7049 lt!761314) (v!26979 lt!761314))))

(assert (=> b!2027140 d!619930))

(declare-fun b!2027218 () Bool)

(declare-fun e!1280540 () Bool)

(declare-fun inv!15 (TokenValue!4126) Bool)

(assert (=> b!2027218 (= e!1280540 (inv!15 (value!125306 (h!27604 tokens!598))))))

(declare-fun b!2027219 () Bool)

(declare-fun e!1280539 () Bool)

(declare-fun inv!16 (TokenValue!4126) Bool)

(assert (=> b!2027219 (= e!1280539 (inv!16 (value!125306 (h!27604 tokens!598))))))

(declare-fun b!2027220 () Bool)

(declare-fun e!1280541 () Bool)

(assert (=> b!2027220 (= e!1280539 e!1280541)))

(declare-fun c!328030 () Bool)

(assert (=> b!2027220 (= c!328030 ((_ is IntegerValue!12379) (value!125306 (h!27604 tokens!598))))))

(declare-fun b!2027221 () Bool)

(declare-fun inv!17 (TokenValue!4126) Bool)

(assert (=> b!2027221 (= e!1280541 (inv!17 (value!125306 (h!27604 tokens!598))))))

(declare-fun d!619932 () Bool)

(declare-fun c!328031 () Bool)

(assert (=> d!619932 (= c!328031 ((_ is IntegerValue!12378) (value!125306 (h!27604 tokens!598))))))

(assert (=> d!619932 (= (inv!21 (value!125306 (h!27604 tokens!598))) e!1280539)))

(declare-fun b!2027222 () Bool)

(declare-fun res!888917 () Bool)

(assert (=> b!2027222 (=> res!888917 e!1280540)))

(assert (=> b!2027222 (= res!888917 (not ((_ is IntegerValue!12380) (value!125306 (h!27604 tokens!598)))))))

(assert (=> b!2027222 (= e!1280541 e!1280540)))

(assert (= (and d!619932 c!328031) b!2027219))

(assert (= (and d!619932 (not c!328031)) b!2027220))

(assert (= (and b!2027220 c!328030) b!2027221))

(assert (= (and b!2027220 (not c!328030)) b!2027222))

(assert (= (and b!2027222 (not res!888917)) b!2027218))

(declare-fun m!2466145 () Bool)

(assert (=> b!2027218 m!2466145))

(declare-fun m!2466147 () Bool)

(assert (=> b!2027219 m!2466147))

(declare-fun m!2466149 () Bool)

(assert (=> b!2027221 m!2466149))

(assert (=> b!2027139 d!619932))

(declare-fun d!619934 () Bool)

(declare-fun lt!761352 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3275 (List!22283) (InoxSet C!10976))

(assert (=> d!619934 (= lt!761352 (select (content!3275 lt!761341) lt!761340))))

(declare-fun e!1280546 () Bool)

(assert (=> d!619934 (= lt!761352 e!1280546)))

(declare-fun res!888923 () Bool)

(assert (=> d!619934 (=> (not res!888923) (not e!1280546))))

(assert (=> d!619934 (= res!888923 ((_ is Cons!22201) lt!761341))))

(assert (=> d!619934 (= (contains!4096 lt!761341 lt!761340) lt!761352)))

(declare-fun b!2027227 () Bool)

(declare-fun e!1280547 () Bool)

(assert (=> b!2027227 (= e!1280546 e!1280547)))

(declare-fun res!888922 () Bool)

(assert (=> b!2027227 (=> res!888922 e!1280547)))

(assert (=> b!2027227 (= res!888922 (= (h!27602 lt!761341) lt!761340))))

(declare-fun b!2027228 () Bool)

(assert (=> b!2027228 (= e!1280547 (contains!4096 (t!190006 lt!761341) lt!761340))))

(assert (= (and d!619934 res!888923) b!2027227))

(assert (= (and b!2027227 (not res!888922)) b!2027228))

(declare-fun m!2466151 () Bool)

(assert (=> d!619934 m!2466151))

(declare-fun m!2466153 () Bool)

(assert (=> d!619934 m!2466153))

(declare-fun m!2466155 () Bool)

(assert (=> b!2027228 m!2466155))

(assert (=> b!2027138 d!619934))

(declare-fun d!619936 () Bool)

(declare-fun res!888928 () Bool)

(declare-fun e!1280552 () Bool)

(assert (=> d!619936 (=> res!888928 e!1280552)))

(assert (=> d!619936 (= res!888928 (not ((_ is Cons!22202) rules!3198)))))

(assert (=> d!619936 (= (sepAndNonSepRulesDisjointChars!1088 rules!3198 rules!3198) e!1280552)))

(declare-fun b!2027233 () Bool)

(declare-fun e!1280553 () Bool)

(assert (=> b!2027233 (= e!1280552 e!1280553)))

(declare-fun res!888929 () Bool)

(assert (=> b!2027233 (=> (not res!888929) (not e!1280553))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!490 (Rule!7780 List!22284) Bool)

(assert (=> b!2027233 (= res!888929 (ruleDisjointCharsFromAllFromOtherType!490 (h!27603 rules!3198) rules!3198))))

(declare-fun b!2027234 () Bool)

(assert (=> b!2027234 (= e!1280553 (sepAndNonSepRulesDisjointChars!1088 rules!3198 (t!190007 rules!3198)))))

(assert (= (and d!619936 (not res!888928)) b!2027233))

(assert (= (and b!2027233 res!888929) b!2027234))

(declare-fun m!2466157 () Bool)

(assert (=> b!2027233 m!2466157))

(declare-fun m!2466159 () Bool)

(assert (=> b!2027234 m!2466159))

(assert (=> b!2027136 d!619936))

(declare-fun bs!420741 () Bool)

(declare-fun d!619938 () Bool)

(assert (= bs!420741 (and d!619938 b!2027129)))

(declare-fun lambda!76459 () Int)

(assert (=> bs!420741 (not (= lambda!76459 lambda!76453))))

(declare-fun b!2027459 () Bool)

(declare-fun e!1280688 () Bool)

(assert (=> b!2027459 (= e!1280688 true)))

(declare-fun b!2027458 () Bool)

(declare-fun e!1280687 () Bool)

(assert (=> b!2027458 (= e!1280687 e!1280688)))

(declare-fun b!2027457 () Bool)

(declare-fun e!1280686 () Bool)

(assert (=> b!2027457 (= e!1280686 e!1280687)))

(assert (=> d!619938 e!1280686))

(assert (= b!2027458 b!2027459))

(assert (= b!2027457 b!2027458))

(assert (= (and d!619938 ((_ is Cons!22202) rules!3198)) b!2027457))

(declare-fun order!14203 () Int)

(declare-fun order!14205 () Int)

(declare-fun dynLambda!11026 (Int Int) Int)

(declare-fun dynLambda!11027 (Int Int) Int)

(assert (=> b!2027459 (< (dynLambda!11026 order!14203 (toValue!5663 (transformation!3990 (h!27603 rules!3198)))) (dynLambda!11027 order!14205 lambda!76459))))

(declare-fun order!14207 () Int)

(declare-fun dynLambda!11028 (Int Int) Int)

(assert (=> b!2027459 (< (dynLambda!11028 order!14207 (toChars!5522 (transformation!3990 (h!27603 rules!3198)))) (dynLambda!11027 order!14205 lambda!76459))))

(assert (=> d!619938 true))

(declare-fun lt!761413 () Bool)

(assert (=> d!619938 (= lt!761413 (forall!4722 tokens!598 lambda!76459))))

(declare-fun e!1280679 () Bool)

(assert (=> d!619938 (= lt!761413 e!1280679)))

(declare-fun res!889025 () Bool)

(assert (=> d!619938 (=> res!889025 e!1280679)))

(assert (=> d!619938 (= res!889025 (not ((_ is Cons!22203) tokens!598)))))

(assert (=> d!619938 (not (isEmpty!13840 rules!3198))))

(assert (=> d!619938 (= (rulesProduceEachTokenIndividuallyList!1334 thiss!23328 rules!3198 tokens!598) lt!761413)))

(declare-fun b!2027447 () Bool)

(declare-fun e!1280678 () Bool)

(assert (=> b!2027447 (= e!1280679 e!1280678)))

(declare-fun res!889026 () Bool)

(assert (=> b!2027447 (=> (not res!889026) (not e!1280678))))

(assert (=> b!2027447 (= res!889026 (rulesProduceIndividualToken!1775 thiss!23328 rules!3198 (h!27604 tokens!598)))))

(declare-fun b!2027448 () Bool)

(assert (=> b!2027448 (= e!1280678 (rulesProduceEachTokenIndividuallyList!1334 thiss!23328 rules!3198 (t!190008 tokens!598)))))

(assert (= (and d!619938 (not res!889025)) b!2027447))

(assert (= (and b!2027447 res!889026) b!2027448))

(declare-fun m!2466381 () Bool)

(assert (=> d!619938 m!2466381))

(assert (=> d!619938 m!2466039))

(assert (=> b!2027447 m!2466101))

(declare-fun m!2466383 () Bool)

(assert (=> b!2027448 m!2466383))

(assert (=> b!2027158 d!619938))

(declare-fun lt!761416 () Bool)

(declare-fun d!620000 () Bool)

(declare-fun isEmpty!13843 (List!22285) Bool)

(declare-fun list!9064 (BalanceConc!14670) List!22285)

(assert (=> d!620000 (= lt!761416 (isEmpty!13843 (list!9064 (_1!11910 (lex!1619 thiss!23328 rules!3198 (seqFromList!2844 lt!761329))))))))

(declare-fun isEmpty!13844 (Conc!7427) Bool)

(assert (=> d!620000 (= lt!761416 (isEmpty!13844 (c!328016 (_1!11910 (lex!1619 thiss!23328 rules!3198 (seqFromList!2844 lt!761329))))))))

(assert (=> d!620000 (= (isEmpty!13842 (_1!11910 (lex!1619 thiss!23328 rules!3198 (seqFromList!2844 lt!761329)))) lt!761416)))

(declare-fun bs!420742 () Bool)

(assert (= bs!420742 d!620000))

(declare-fun m!2466385 () Bool)

(assert (=> bs!420742 m!2466385))

(assert (=> bs!420742 m!2466385))

(declare-fun m!2466387 () Bool)

(assert (=> bs!420742 m!2466387))

(declare-fun m!2466389 () Bool)

(assert (=> bs!420742 m!2466389))

(assert (=> b!2027156 d!620000))

(declare-fun b!2027519 () Bool)

(declare-fun res!889064 () Bool)

(declare-fun e!1280717 () Bool)

(assert (=> b!2027519 (=> (not res!889064) (not e!1280717))))

(declare-fun lt!761437 () tuple2!20882)

(declare-datatypes ((tuple2!20884 0))(
  ( (tuple2!20885 (_1!11911 List!22285) (_2!11911 List!22283)) )
))
(declare-fun lexList!980 (LexerInterface!3603 List!22284 List!22283) tuple2!20884)

(assert (=> b!2027519 (= res!889064 (= (list!9064 (_1!11910 lt!761437)) (_1!11911 (lexList!980 thiss!23328 rules!3198 (list!9061 (seqFromList!2844 lt!761329))))))))

(declare-fun b!2027520 () Bool)

(declare-fun e!1280718 () Bool)

(declare-fun e!1280716 () Bool)

(assert (=> b!2027520 (= e!1280718 e!1280716)))

(declare-fun res!889065 () Bool)

(declare-fun size!17343 (BalanceConc!14668) Int)

(assert (=> b!2027520 (= res!889065 (< (size!17343 (_2!11910 lt!761437)) (size!17343 (seqFromList!2844 lt!761329))))))

(assert (=> b!2027520 (=> (not res!889065) (not e!1280716))))

(declare-fun b!2027521 () Bool)

(assert (=> b!2027521 (= e!1280716 (not (isEmpty!13842 (_1!11910 lt!761437))))))

(declare-fun d!620002 () Bool)

(assert (=> d!620002 e!1280717))

(declare-fun res!889066 () Bool)

(assert (=> d!620002 (=> (not res!889066) (not e!1280717))))

(assert (=> d!620002 (= res!889066 e!1280718)))

(declare-fun c!328093 () Bool)

(declare-fun size!17344 (BalanceConc!14670) Int)

(assert (=> d!620002 (= c!328093 (> (size!17344 (_1!11910 lt!761437)) 0))))

(declare-fun lexTailRecV2!703 (LexerInterface!3603 List!22284 BalanceConc!14668 BalanceConc!14668 BalanceConc!14668 BalanceConc!14670) tuple2!20882)

(assert (=> d!620002 (= lt!761437 (lexTailRecV2!703 thiss!23328 rules!3198 (seqFromList!2844 lt!761329) (BalanceConc!14669 Empty!7426) (seqFromList!2844 lt!761329) (BalanceConc!14671 Empty!7427)))))

(assert (=> d!620002 (= (lex!1619 thiss!23328 rules!3198 (seqFromList!2844 lt!761329)) lt!761437)))

(declare-fun b!2027522 () Bool)

(assert (=> b!2027522 (= e!1280717 (= (list!9061 (_2!11910 lt!761437)) (_2!11911 (lexList!980 thiss!23328 rules!3198 (list!9061 (seqFromList!2844 lt!761329))))))))

(declare-fun b!2027523 () Bool)

(assert (=> b!2027523 (= e!1280718 (= (_2!11910 lt!761437) (seqFromList!2844 lt!761329)))))

(assert (= (and d!620002 c!328093) b!2027520))

(assert (= (and d!620002 (not c!328093)) b!2027523))

(assert (= (and b!2027520 res!889065) b!2027521))

(assert (= (and d!620002 res!889066) b!2027519))

(assert (= (and b!2027519 res!889064) b!2027522))

(declare-fun m!2466429 () Bool)

(assert (=> b!2027520 m!2466429))

(assert (=> b!2027520 m!2466111))

(declare-fun m!2466437 () Bool)

(assert (=> b!2027520 m!2466437))

(declare-fun m!2466441 () Bool)

(assert (=> b!2027521 m!2466441))

(declare-fun m!2466445 () Bool)

(assert (=> b!2027522 m!2466445))

(assert (=> b!2027522 m!2466111))

(declare-fun m!2466449 () Bool)

(assert (=> b!2027522 m!2466449))

(assert (=> b!2027522 m!2466449))

(declare-fun m!2466451 () Bool)

(assert (=> b!2027522 m!2466451))

(declare-fun m!2466453 () Bool)

(assert (=> b!2027519 m!2466453))

(assert (=> b!2027519 m!2466111))

(assert (=> b!2027519 m!2466449))

(assert (=> b!2027519 m!2466449))

(assert (=> b!2027519 m!2466451))

(declare-fun m!2466457 () Bool)

(assert (=> d!620002 m!2466457))

(assert (=> d!620002 m!2466111))

(assert (=> d!620002 m!2466111))

(declare-fun m!2466461 () Bool)

(assert (=> d!620002 m!2466461))

(assert (=> b!2027156 d!620002))

(declare-fun d!620012 () Bool)

(declare-fun fromListB!1279 (List!22283) BalanceConc!14668)

(assert (=> d!620012 (= (seqFromList!2844 lt!761329) (fromListB!1279 lt!761329))))

(declare-fun bs!420744 () Bool)

(assert (= bs!420744 d!620012))

(declare-fun m!2466467 () Bool)

(assert (=> bs!420744 m!2466467))

(assert (=> b!2027156 d!620012))

(declare-fun d!620016 () Bool)

(declare-fun lt!761448 () BalanceConc!14668)

(assert (=> d!620016 (= (list!9061 lt!761448) (printList!1122 thiss!23328 (list!9064 lt!761328)))))

(assert (=> d!620016 (= lt!761448 (printTailRec!1071 thiss!23328 lt!761328 0 (BalanceConc!14669 Empty!7426)))))

(assert (=> d!620016 (= (print!1565 thiss!23328 lt!761328) lt!761448)))

(declare-fun bs!420745 () Bool)

(assert (= bs!420745 d!620016))

(declare-fun m!2466483 () Bool)

(assert (=> bs!420745 m!2466483))

(declare-fun m!2466487 () Bool)

(assert (=> bs!420745 m!2466487))

(assert (=> bs!420745 m!2466487))

(declare-fun m!2466489 () Bool)

(assert (=> bs!420745 m!2466489))

(assert (=> bs!420745 m!2466083))

(assert (=> b!2027133 d!620016))

(declare-fun d!620020 () Bool)

(declare-fun c!328097 () Bool)

(assert (=> d!620020 (= c!328097 ((_ is Cons!22203) (Cons!22203 (h!27604 tokens!598) Nil!22203)))))

(declare-fun e!1280728 () List!22283)

(assert (=> d!620020 (= (printList!1122 thiss!23328 (Cons!22203 (h!27604 tokens!598) Nil!22203)) e!1280728)))

(declare-fun b!2027545 () Bool)

(assert (=> b!2027545 (= e!1280728 (++!6001 (list!9061 (charsOf!2530 (h!27604 (Cons!22203 (h!27604 tokens!598) Nil!22203)))) (printList!1122 thiss!23328 (t!190008 (Cons!22203 (h!27604 tokens!598) Nil!22203)))))))

(declare-fun b!2027546 () Bool)

(assert (=> b!2027546 (= e!1280728 Nil!22201)))

(assert (= (and d!620020 c!328097) b!2027545))

(assert (= (and d!620020 (not c!328097)) b!2027546))

(declare-fun m!2466529 () Bool)

(assert (=> b!2027545 m!2466529))

(assert (=> b!2027545 m!2466529))

(declare-fun m!2466531 () Bool)

(assert (=> b!2027545 m!2466531))

(declare-fun m!2466533 () Bool)

(assert (=> b!2027545 m!2466533))

(assert (=> b!2027545 m!2466531))

(assert (=> b!2027545 m!2466533))

(declare-fun m!2466535 () Bool)

(assert (=> b!2027545 m!2466535))

(assert (=> b!2027133 d!620020))

(declare-fun d!620030 () Bool)

(declare-fun lt!761450 () Bool)

(assert (=> d!620030 (= lt!761450 (select (content!3275 lt!761341) lt!761335))))

(declare-fun e!1280729 () Bool)

(assert (=> d!620030 (= lt!761450 e!1280729)))

(declare-fun res!889083 () Bool)

(assert (=> d!620030 (=> (not res!889083) (not e!1280729))))

(assert (=> d!620030 (= res!889083 ((_ is Cons!22201) lt!761341))))

(assert (=> d!620030 (= (contains!4096 lt!761341 lt!761335) lt!761450)))

(declare-fun b!2027547 () Bool)

(declare-fun e!1280730 () Bool)

(assert (=> b!2027547 (= e!1280729 e!1280730)))

(declare-fun res!889082 () Bool)

(assert (=> b!2027547 (=> res!889082 e!1280730)))

(assert (=> b!2027547 (= res!889082 (= (h!27602 lt!761341) lt!761335))))

(declare-fun b!2027548 () Bool)

(assert (=> b!2027548 (= e!1280730 (contains!4096 (t!190006 lt!761341) lt!761335))))

(assert (= (and d!620030 res!889083) b!2027547))

(assert (= (and b!2027547 (not res!889082)) b!2027548))

(assert (=> d!620030 m!2466151))

(declare-fun m!2466537 () Bool)

(assert (=> d!620030 m!2466537))

(declare-fun m!2466539 () Bool)

(assert (=> b!2027548 m!2466539))

(assert (=> b!2027133 d!620030))

(declare-fun d!620034 () Bool)

(declare-fun e!1280736 () Bool)

(assert (=> d!620034 e!1280736))

(declare-fun res!889089 () Bool)

(assert (=> d!620034 (=> (not res!889089) (not e!1280736))))

(declare-fun lt!761456 () List!22283)

(assert (=> d!620034 (= res!889089 (= (content!3275 lt!761456) ((_ map or) (content!3275 lt!761329) (content!3275 lt!761325))))))

(declare-fun e!1280735 () List!22283)

(assert (=> d!620034 (= lt!761456 e!1280735)))

(declare-fun c!328100 () Bool)

(assert (=> d!620034 (= c!328100 ((_ is Nil!22201) lt!761329))))

(assert (=> d!620034 (= (++!6001 lt!761329 lt!761325) lt!761456)))

(declare-fun b!2027559 () Bool)

(declare-fun res!889088 () Bool)

(assert (=> b!2027559 (=> (not res!889088) (not e!1280736))))

(declare-fun size!17345 (List!22283) Int)

(assert (=> b!2027559 (= res!889088 (= (size!17345 lt!761456) (+ (size!17345 lt!761329) (size!17345 lt!761325))))))

(declare-fun b!2027557 () Bool)

(assert (=> b!2027557 (= e!1280735 lt!761325)))

(declare-fun b!2027560 () Bool)

(assert (=> b!2027560 (= e!1280736 (or (not (= lt!761325 Nil!22201)) (= lt!761456 lt!761329)))))

(declare-fun b!2027558 () Bool)

(assert (=> b!2027558 (= e!1280735 (Cons!22201 (h!27602 lt!761329) (++!6001 (t!190006 lt!761329) lt!761325)))))

(assert (= (and d!620034 c!328100) b!2027557))

(assert (= (and d!620034 (not c!328100)) b!2027558))

(assert (= (and d!620034 res!889089) b!2027559))

(assert (= (and b!2027559 res!889088) b!2027560))

(declare-fun m!2466543 () Bool)

(assert (=> d!620034 m!2466543))

(declare-fun m!2466545 () Bool)

(assert (=> d!620034 m!2466545))

(declare-fun m!2466547 () Bool)

(assert (=> d!620034 m!2466547))

(declare-fun m!2466549 () Bool)

(assert (=> b!2027559 m!2466549))

(declare-fun m!2466551 () Bool)

(assert (=> b!2027559 m!2466551))

(declare-fun m!2466553 () Bool)

(assert (=> b!2027559 m!2466553))

(declare-fun m!2466555 () Bool)

(assert (=> b!2027558 m!2466555))

(assert (=> b!2027133 d!620034))

(declare-fun b!2027586 () Bool)

(declare-fun e!1280753 () List!22283)

(declare-fun call!124371 () List!22283)

(assert (=> b!2027586 (= e!1280753 call!124371)))

(declare-fun d!620038 () Bool)

(declare-fun c!328112 () Bool)

(assert (=> d!620038 (= c!328112 (or ((_ is EmptyExpr!5415) (regex!3990 (rule!6219 separatorToken!354))) ((_ is EmptyLang!5415) (regex!3990 (rule!6219 separatorToken!354)))))))

(declare-fun e!1280756 () List!22283)

(assert (=> d!620038 (= (usedCharacters!428 (regex!3990 (rule!6219 separatorToken!354))) e!1280756)))

(declare-fun b!2027587 () Bool)

(declare-fun e!1280754 () List!22283)

(assert (=> b!2027587 (= e!1280756 e!1280754)))

(declare-fun c!328111 () Bool)

(assert (=> b!2027587 (= c!328111 ((_ is ElementMatch!5415) (regex!3990 (rule!6219 separatorToken!354))))))

(declare-fun b!2027588 () Bool)

(assert (=> b!2027588 (= e!1280753 call!124371)))

(declare-fun b!2027589 () Bool)

(declare-fun c!328110 () Bool)

(assert (=> b!2027589 (= c!328110 ((_ is Star!5415) (regex!3990 (rule!6219 separatorToken!354))))))

(declare-fun e!1280755 () List!22283)

(assert (=> b!2027589 (= e!1280754 e!1280755)))

(declare-fun bm!124366 () Bool)

(declare-fun call!124374 () List!22283)

(declare-fun c!328109 () Bool)

(assert (=> bm!124366 (= call!124374 (usedCharacters!428 (ite c!328109 (regOne!11343 (regex!3990 (rule!6219 separatorToken!354))) (regTwo!11342 (regex!3990 (rule!6219 separatorToken!354))))))))

(declare-fun b!2027590 () Bool)

(assert (=> b!2027590 (= e!1280755 e!1280753)))

(assert (=> b!2027590 (= c!328109 ((_ is Union!5415) (regex!3990 (rule!6219 separatorToken!354))))))

(declare-fun b!2027591 () Bool)

(assert (=> b!2027591 (= e!1280756 Nil!22201)))

(declare-fun b!2027592 () Bool)

(assert (=> b!2027592 (= e!1280754 (Cons!22201 (c!328015 (regex!3990 (rule!6219 separatorToken!354))) Nil!22201))))

(declare-fun bm!124367 () Bool)

(declare-fun call!124372 () List!22283)

(declare-fun call!124373 () List!22283)

(assert (=> bm!124367 (= call!124372 call!124373)))

(declare-fun b!2027593 () Bool)

(assert (=> b!2027593 (= e!1280755 call!124373)))

(declare-fun bm!124368 () Bool)

(assert (=> bm!124368 (= call!124373 (usedCharacters!428 (ite c!328110 (reg!5744 (regex!3990 (rule!6219 separatorToken!354))) (ite c!328109 (regTwo!11343 (regex!3990 (rule!6219 separatorToken!354))) (regOne!11342 (regex!3990 (rule!6219 separatorToken!354)))))))))

(declare-fun bm!124369 () Bool)

(assert (=> bm!124369 (= call!124371 (++!6001 (ite c!328109 call!124374 call!124372) (ite c!328109 call!124372 call!124374)))))

(assert (= (and d!620038 c!328112) b!2027591))

(assert (= (and d!620038 (not c!328112)) b!2027587))

(assert (= (and b!2027587 c!328111) b!2027592))

(assert (= (and b!2027587 (not c!328111)) b!2027589))

(assert (= (and b!2027589 c!328110) b!2027593))

(assert (= (and b!2027589 (not c!328110)) b!2027590))

(assert (= (and b!2027590 c!328109) b!2027588))

(assert (= (and b!2027590 (not c!328109)) b!2027586))

(assert (= (or b!2027588 b!2027586) bm!124366))

(assert (= (or b!2027588 b!2027586) bm!124367))

(assert (= (or b!2027588 b!2027586) bm!124369))

(assert (= (or b!2027593 bm!124367) bm!124368))

(declare-fun m!2466563 () Bool)

(assert (=> bm!124366 m!2466563))

(declare-fun m!2466569 () Bool)

(assert (=> bm!124368 m!2466569))

(declare-fun m!2466573 () Bool)

(assert (=> bm!124369 m!2466573))

(assert (=> b!2027133 d!620038))

(declare-fun d!620042 () Bool)

(declare-fun e!1280759 () Bool)

(assert (=> d!620042 e!1280759))

(declare-fun res!889093 () Bool)

(assert (=> d!620042 (=> (not res!889093) (not e!1280759))))

(declare-fun lt!761460 () List!22283)

(assert (=> d!620042 (= res!889093 (= (content!3275 lt!761460) ((_ map or) (content!3275 lt!761334) (content!3275 lt!761331))))))

(declare-fun e!1280758 () List!22283)

(assert (=> d!620042 (= lt!761460 e!1280758)))

(declare-fun c!328113 () Bool)

(assert (=> d!620042 (= c!328113 ((_ is Nil!22201) lt!761334))))

(assert (=> d!620042 (= (++!6001 lt!761334 lt!761331) lt!761460)))

(declare-fun b!2027596 () Bool)

(declare-fun res!889092 () Bool)

(assert (=> b!2027596 (=> (not res!889092) (not e!1280759))))

(assert (=> b!2027596 (= res!889092 (= (size!17345 lt!761460) (+ (size!17345 lt!761334) (size!17345 lt!761331))))))

(declare-fun b!2027594 () Bool)

(assert (=> b!2027594 (= e!1280758 lt!761331)))

(declare-fun b!2027597 () Bool)

(assert (=> b!2027597 (= e!1280759 (or (not (= lt!761331 Nil!22201)) (= lt!761460 lt!761334)))))

(declare-fun b!2027595 () Bool)

(assert (=> b!2027595 (= e!1280758 (Cons!22201 (h!27602 lt!761334) (++!6001 (t!190006 lt!761334) lt!761331)))))

(assert (= (and d!620042 c!328113) b!2027594))

(assert (= (and d!620042 (not c!328113)) b!2027595))

(assert (= (and d!620042 res!889093) b!2027596))

(assert (= (and b!2027596 res!889092) b!2027597))

(declare-fun m!2466577 () Bool)

(assert (=> d!620042 m!2466577))

(declare-fun m!2466579 () Bool)

(assert (=> d!620042 m!2466579))

(declare-fun m!2466581 () Bool)

(assert (=> d!620042 m!2466581))

(declare-fun m!2466583 () Bool)

(assert (=> b!2027596 m!2466583))

(declare-fun m!2466585 () Bool)

(assert (=> b!2027596 m!2466585))

(declare-fun m!2466587 () Bool)

(assert (=> b!2027596 m!2466587))

(declare-fun m!2466589 () Bool)

(assert (=> b!2027595 m!2466589))

(assert (=> b!2027133 d!620042))

(declare-fun d!620046 () Bool)

(declare-fun list!9065 (Conc!7426) List!22283)

(assert (=> d!620046 (= (list!9061 lt!761342) (list!9065 (c!328014 lt!761342)))))

(declare-fun bs!420749 () Bool)

(assert (= bs!420749 d!620046))

(declare-fun m!2466591 () Bool)

(assert (=> bs!420749 m!2466591))

(assert (=> b!2027133 d!620046))

(declare-fun b!2027598 () Bool)

(declare-fun e!1280760 () List!22283)

(declare-fun call!124375 () List!22283)

(assert (=> b!2027598 (= e!1280760 call!124375)))

(declare-fun d!620048 () Bool)

(declare-fun c!328117 () Bool)

(assert (=> d!620048 (= c!328117 (or ((_ is EmptyExpr!5415) (regex!3990 (rule!6219 (h!27604 tokens!598)))) ((_ is EmptyLang!5415) (regex!3990 (rule!6219 (h!27604 tokens!598))))))))

(declare-fun e!1280763 () List!22283)

(assert (=> d!620048 (= (usedCharacters!428 (regex!3990 (rule!6219 (h!27604 tokens!598)))) e!1280763)))

(declare-fun b!2027599 () Bool)

(declare-fun e!1280761 () List!22283)

(assert (=> b!2027599 (= e!1280763 e!1280761)))

(declare-fun c!328116 () Bool)

(assert (=> b!2027599 (= c!328116 ((_ is ElementMatch!5415) (regex!3990 (rule!6219 (h!27604 tokens!598)))))))

(declare-fun b!2027600 () Bool)

(assert (=> b!2027600 (= e!1280760 call!124375)))

(declare-fun b!2027601 () Bool)

(declare-fun c!328115 () Bool)

(assert (=> b!2027601 (= c!328115 ((_ is Star!5415) (regex!3990 (rule!6219 (h!27604 tokens!598)))))))

(declare-fun e!1280762 () List!22283)

(assert (=> b!2027601 (= e!1280761 e!1280762)))

(declare-fun bm!124370 () Bool)

(declare-fun call!124378 () List!22283)

(declare-fun c!328114 () Bool)

(assert (=> bm!124370 (= call!124378 (usedCharacters!428 (ite c!328114 (regOne!11343 (regex!3990 (rule!6219 (h!27604 tokens!598)))) (regTwo!11342 (regex!3990 (rule!6219 (h!27604 tokens!598)))))))))

(declare-fun b!2027602 () Bool)

(assert (=> b!2027602 (= e!1280762 e!1280760)))

(assert (=> b!2027602 (= c!328114 ((_ is Union!5415) (regex!3990 (rule!6219 (h!27604 tokens!598)))))))

(declare-fun b!2027603 () Bool)

(assert (=> b!2027603 (= e!1280763 Nil!22201)))

(declare-fun b!2027604 () Bool)

(assert (=> b!2027604 (= e!1280761 (Cons!22201 (c!328015 (regex!3990 (rule!6219 (h!27604 tokens!598)))) Nil!22201))))

(declare-fun bm!124371 () Bool)

(declare-fun call!124376 () List!22283)

(declare-fun call!124377 () List!22283)

(assert (=> bm!124371 (= call!124376 call!124377)))

(declare-fun b!2027605 () Bool)

(assert (=> b!2027605 (= e!1280762 call!124377)))

(declare-fun bm!124372 () Bool)

(assert (=> bm!124372 (= call!124377 (usedCharacters!428 (ite c!328115 (reg!5744 (regex!3990 (rule!6219 (h!27604 tokens!598)))) (ite c!328114 (regTwo!11343 (regex!3990 (rule!6219 (h!27604 tokens!598)))) (regOne!11342 (regex!3990 (rule!6219 (h!27604 tokens!598))))))))))

(declare-fun bm!124373 () Bool)

(assert (=> bm!124373 (= call!124375 (++!6001 (ite c!328114 call!124378 call!124376) (ite c!328114 call!124376 call!124378)))))

(assert (= (and d!620048 c!328117) b!2027603))

(assert (= (and d!620048 (not c!328117)) b!2027599))

(assert (= (and b!2027599 c!328116) b!2027604))

(assert (= (and b!2027599 (not c!328116)) b!2027601))

(assert (= (and b!2027601 c!328115) b!2027605))

(assert (= (and b!2027601 (not c!328115)) b!2027602))

(assert (= (and b!2027602 c!328114) b!2027600))

(assert (= (and b!2027602 (not c!328114)) b!2027598))

(assert (= (or b!2027600 b!2027598) bm!124370))

(assert (= (or b!2027600 b!2027598) bm!124371))

(assert (= (or b!2027600 b!2027598) bm!124373))

(assert (= (or b!2027605 bm!124371) bm!124372))

(declare-fun m!2466593 () Bool)

(assert (=> bm!124370 m!2466593))

(declare-fun m!2466595 () Bool)

(assert (=> bm!124372 m!2466595))

(declare-fun m!2466597 () Bool)

(assert (=> bm!124373 m!2466597))

(assert (=> b!2027133 d!620048))

(declare-fun d!620050 () Bool)

(declare-fun e!1280766 () Bool)

(assert (=> d!620050 e!1280766))

(declare-fun res!889096 () Bool)

(assert (=> d!620050 (=> (not res!889096) (not e!1280766))))

(declare-fun lt!761463 () BalanceConc!14670)

(assert (=> d!620050 (= res!889096 (= (list!9064 lt!761463) (Cons!22203 (h!27604 tokens!598) Nil!22203)))))

(declare-fun singleton!882 (Token!7532) BalanceConc!14670)

(assert (=> d!620050 (= lt!761463 (singleton!882 (h!27604 tokens!598)))))

(assert (=> d!620050 (= (singletonSeq!1966 (h!27604 tokens!598)) lt!761463)))

(declare-fun b!2027608 () Bool)

(declare-fun isBalanced!2313 (Conc!7427) Bool)

(assert (=> b!2027608 (= e!1280766 (isBalanced!2313 (c!328016 lt!761463)))))

(assert (= (and d!620050 res!889096) b!2027608))

(declare-fun m!2466599 () Bool)

(assert (=> d!620050 m!2466599))

(declare-fun m!2466601 () Bool)

(assert (=> d!620050 m!2466601))

(declare-fun m!2466603 () Bool)

(assert (=> b!2027608 m!2466603))

(assert (=> b!2027133 d!620050))

(declare-fun d!620052 () Bool)

(declare-fun e!1280768 () Bool)

(assert (=> d!620052 e!1280768))

(declare-fun res!889098 () Bool)

(assert (=> d!620052 (=> (not res!889098) (not e!1280768))))

(declare-fun lt!761464 () List!22283)

(assert (=> d!620052 (= res!889098 (= (content!3275 lt!761464) ((_ map or) (content!3275 lt!761327) (content!3275 lt!761331))))))

(declare-fun e!1280767 () List!22283)

(assert (=> d!620052 (= lt!761464 e!1280767)))

(declare-fun c!328118 () Bool)

(assert (=> d!620052 (= c!328118 ((_ is Nil!22201) lt!761327))))

(assert (=> d!620052 (= (++!6001 lt!761327 lt!761331) lt!761464)))

(declare-fun b!2027611 () Bool)

(declare-fun res!889097 () Bool)

(assert (=> b!2027611 (=> (not res!889097) (not e!1280768))))

(assert (=> b!2027611 (= res!889097 (= (size!17345 lt!761464) (+ (size!17345 lt!761327) (size!17345 lt!761331))))))

(declare-fun b!2027609 () Bool)

(assert (=> b!2027609 (= e!1280767 lt!761331)))

(declare-fun b!2027612 () Bool)

(assert (=> b!2027612 (= e!1280768 (or (not (= lt!761331 Nil!22201)) (= lt!761464 lt!761327)))))

(declare-fun b!2027610 () Bool)

(assert (=> b!2027610 (= e!1280767 (Cons!22201 (h!27602 lt!761327) (++!6001 (t!190006 lt!761327) lt!761331)))))

(assert (= (and d!620052 c!328118) b!2027609))

(assert (= (and d!620052 (not c!328118)) b!2027610))

(assert (= (and d!620052 res!889098) b!2027611))

(assert (= (and b!2027611 res!889097) b!2027612))

(declare-fun m!2466605 () Bool)

(assert (=> d!620052 m!2466605))

(declare-fun m!2466607 () Bool)

(assert (=> d!620052 m!2466607))

(assert (=> d!620052 m!2466581))

(declare-fun m!2466609 () Bool)

(assert (=> b!2027611 m!2466609))

(declare-fun m!2466611 () Bool)

(assert (=> b!2027611 m!2466611))

(assert (=> b!2027611 m!2466587))

(declare-fun m!2466613 () Bool)

(assert (=> b!2027610 m!2466613))

(assert (=> b!2027133 d!620052))

(declare-fun d!620054 () Bool)

(assert (=> d!620054 (not (contains!4096 (usedCharacters!428 (regex!3990 (rule!6219 (h!27604 tokens!598)))) lt!761335))))

(declare-fun lt!761476 () Unit!36856)

(declare-fun choose!12357 (LexerInterface!3603 List!22284 List!22284 Rule!7780 Rule!7780 C!10976) Unit!36856)

(assert (=> d!620054 (= lt!761476 (choose!12357 thiss!23328 rules!3198 rules!3198 (rule!6219 (h!27604 tokens!598)) (rule!6219 separatorToken!354) lt!761335))))

(assert (=> d!620054 (rulesInvariant!3210 thiss!23328 rules!3198)))

(assert (=> d!620054 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!100 thiss!23328 rules!3198 rules!3198 (rule!6219 (h!27604 tokens!598)) (rule!6219 separatorToken!354) lt!761335) lt!761476)))

(declare-fun bs!420750 () Bool)

(assert (= bs!420750 d!620054))

(assert (=> bs!420750 m!2466087))

(assert (=> bs!420750 m!2466087))

(declare-fun m!2466615 () Bool)

(assert (=> bs!420750 m!2466615))

(declare-fun m!2466619 () Bool)

(assert (=> bs!420750 m!2466619))

(assert (=> bs!420750 m!2466041))

(assert (=> b!2027133 d!620054))

(declare-fun d!620056 () Bool)

(declare-fun e!1280782 () Bool)

(assert (=> d!620056 e!1280782))

(declare-fun res!889106 () Bool)

(assert (=> d!620056 (=> (not res!889106) (not e!1280782))))

(declare-fun lt!761477 () List!22283)

(assert (=> d!620056 (= res!889106 (= (content!3275 lt!761477) ((_ map or) (content!3275 lt!761329) (content!3275 lt!761334))))))

(declare-fun e!1280781 () List!22283)

(assert (=> d!620056 (= lt!761477 e!1280781)))

(declare-fun c!328126 () Bool)

(assert (=> d!620056 (= c!328126 ((_ is Nil!22201) lt!761329))))

(assert (=> d!620056 (= (++!6001 lt!761329 lt!761334) lt!761477)))

(declare-fun b!2027633 () Bool)

(declare-fun res!889105 () Bool)

(assert (=> b!2027633 (=> (not res!889105) (not e!1280782))))

(assert (=> b!2027633 (= res!889105 (= (size!17345 lt!761477) (+ (size!17345 lt!761329) (size!17345 lt!761334))))))

(declare-fun b!2027631 () Bool)

(assert (=> b!2027631 (= e!1280781 lt!761334)))

(declare-fun b!2027634 () Bool)

(assert (=> b!2027634 (= e!1280782 (or (not (= lt!761334 Nil!22201)) (= lt!761477 lt!761329)))))

(declare-fun b!2027632 () Bool)

(assert (=> b!2027632 (= e!1280781 (Cons!22201 (h!27602 lt!761329) (++!6001 (t!190006 lt!761329) lt!761334)))))

(assert (= (and d!620056 c!328126) b!2027631))

(assert (= (and d!620056 (not c!328126)) b!2027632))

(assert (= (and d!620056 res!889106) b!2027633))

(assert (= (and b!2027633 res!889105) b!2027634))

(declare-fun m!2466631 () Bool)

(assert (=> d!620056 m!2466631))

(assert (=> d!620056 m!2466545))

(assert (=> d!620056 m!2466579))

(declare-fun m!2466633 () Bool)

(assert (=> b!2027633 m!2466633))

(assert (=> b!2027633 m!2466551))

(assert (=> b!2027633 m!2466585))

(declare-fun m!2466635 () Bool)

(assert (=> b!2027632 m!2466635))

(assert (=> b!2027133 d!620056))

(declare-fun d!620060 () Bool)

(declare-fun lt!761481 () Bool)

(assert (=> d!620060 (= lt!761481 (select (content!3275 lt!761321) lt!761335))))

(declare-fun e!1280787 () Bool)

(assert (=> d!620060 (= lt!761481 e!1280787)))

(declare-fun res!889110 () Bool)

(assert (=> d!620060 (=> (not res!889110) (not e!1280787))))

(assert (=> d!620060 (= res!889110 ((_ is Cons!22201) lt!761321))))

(assert (=> d!620060 (= (contains!4096 lt!761321 lt!761335) lt!761481)))

(declare-fun b!2027641 () Bool)

(declare-fun e!1280788 () Bool)

(assert (=> b!2027641 (= e!1280787 e!1280788)))

(declare-fun res!889109 () Bool)

(assert (=> b!2027641 (=> res!889109 e!1280788)))

(assert (=> b!2027641 (= res!889109 (= (h!27602 lt!761321) lt!761335))))

(declare-fun b!2027642 () Bool)

(assert (=> b!2027642 (= e!1280788 (contains!4096 (t!190006 lt!761321) lt!761335))))

(assert (= (and d!620060 res!889110) b!2027641))

(assert (= (and b!2027641 (not res!889109)) b!2027642))

(declare-fun m!2466637 () Bool)

(assert (=> d!620060 m!2466637))

(declare-fun m!2466639 () Bool)

(assert (=> d!620060 m!2466639))

(declare-fun m!2466641 () Bool)

(assert (=> b!2027642 m!2466641))

(assert (=> b!2027133 d!620060))

(declare-fun d!620062 () Bool)

(assert (=> d!620062 (= (++!6001 (++!6001 lt!761329 lt!761334) lt!761331) (++!6001 lt!761329 (++!6001 lt!761334 lt!761331)))))

(declare-fun lt!761484 () Unit!36856)

(declare-fun choose!12358 (List!22283 List!22283 List!22283) Unit!36856)

(assert (=> d!620062 (= lt!761484 (choose!12358 lt!761329 lt!761334 lt!761331))))

(assert (=> d!620062 (= (lemmaConcatAssociativity!1255 lt!761329 lt!761334 lt!761331) lt!761484)))

(declare-fun bs!420751 () Bool)

(assert (= bs!420751 d!620062))

(assert (=> bs!420751 m!2466071))

(declare-fun m!2466651 () Bool)

(assert (=> bs!420751 m!2466651))

(assert (=> bs!420751 m!2466095))

(assert (=> bs!420751 m!2466095))

(declare-fun m!2466653 () Bool)

(assert (=> bs!420751 m!2466653))

(assert (=> bs!420751 m!2466071))

(declare-fun m!2466655 () Bool)

(assert (=> bs!420751 m!2466655))

(assert (=> b!2027133 d!620062))

(declare-fun d!620066 () Bool)

(declare-fun lt!761505 () BalanceConc!14668)

(declare-fun printListTailRec!487 (LexerInterface!3603 List!22285 List!22283) List!22283)

(declare-fun dropList!818 (BalanceConc!14670 Int) List!22285)

(assert (=> d!620066 (= (list!9061 lt!761505) (printListTailRec!487 thiss!23328 (dropList!818 lt!761328 0) (list!9061 (BalanceConc!14669 Empty!7426))))))

(declare-fun e!1280799 () BalanceConc!14668)

(assert (=> d!620066 (= lt!761505 e!1280799)))

(declare-fun c!328133 () Bool)

(assert (=> d!620066 (= c!328133 (>= 0 (size!17344 lt!761328)))))

(declare-fun e!1280800 () Bool)

(assert (=> d!620066 e!1280800))

(declare-fun res!889115 () Bool)

(assert (=> d!620066 (=> (not res!889115) (not e!1280800))))

(assert (=> d!620066 (= res!889115 (>= 0 0))))

(assert (=> d!620066 (= (printTailRec!1071 thiss!23328 lt!761328 0 (BalanceConc!14669 Empty!7426)) lt!761505)))

(declare-fun b!2027659 () Bool)

(assert (=> b!2027659 (= e!1280800 (<= 0 (size!17344 lt!761328)))))

(declare-fun b!2027660 () Bool)

(assert (=> b!2027660 (= e!1280799 (BalanceConc!14669 Empty!7426))))

(declare-fun b!2027661 () Bool)

(declare-fun ++!6003 (BalanceConc!14668 BalanceConc!14668) BalanceConc!14668)

(declare-fun apply!5843 (BalanceConc!14670 Int) Token!7532)

(assert (=> b!2027661 (= e!1280799 (printTailRec!1071 thiss!23328 lt!761328 (+ 0 1) (++!6003 (BalanceConc!14669 Empty!7426) (charsOf!2530 (apply!5843 lt!761328 0)))))))

(declare-fun lt!761506 () List!22285)

(assert (=> b!2027661 (= lt!761506 (list!9064 lt!761328))))

(declare-fun lt!761503 () Unit!36856)

(declare-fun lemmaDropApply!742 (List!22285 Int) Unit!36856)

(assert (=> b!2027661 (= lt!761503 (lemmaDropApply!742 lt!761506 0))))

(declare-fun head!4582 (List!22285) Token!7532)

(declare-fun drop!1119 (List!22285 Int) List!22285)

(declare-fun apply!5844 (List!22285 Int) Token!7532)

(assert (=> b!2027661 (= (head!4582 (drop!1119 lt!761506 0)) (apply!5844 lt!761506 0))))

(declare-fun lt!761508 () Unit!36856)

(assert (=> b!2027661 (= lt!761508 lt!761503)))

(declare-fun lt!761509 () List!22285)

(assert (=> b!2027661 (= lt!761509 (list!9064 lt!761328))))

(declare-fun lt!761507 () Unit!36856)

(declare-fun lemmaDropTail!718 (List!22285 Int) Unit!36856)

(assert (=> b!2027661 (= lt!761507 (lemmaDropTail!718 lt!761509 0))))

(declare-fun tail!3058 (List!22285) List!22285)

(assert (=> b!2027661 (= (tail!3058 (drop!1119 lt!761509 0)) (drop!1119 lt!761509 (+ 0 1)))))

(declare-fun lt!761504 () Unit!36856)

(assert (=> b!2027661 (= lt!761504 lt!761507)))

(assert (= (and d!620066 res!889115) b!2027659))

(assert (= (and d!620066 c!328133) b!2027660))

(assert (= (and d!620066 (not c!328133)) b!2027661))

(declare-fun m!2466675 () Bool)

(assert (=> d!620066 m!2466675))

(declare-fun m!2466677 () Bool)

(assert (=> d!620066 m!2466677))

(declare-fun m!2466679 () Bool)

(assert (=> d!620066 m!2466679))

(declare-fun m!2466681 () Bool)

(assert (=> d!620066 m!2466681))

(assert (=> d!620066 m!2466675))

(assert (=> d!620066 m!2466681))

(declare-fun m!2466683 () Bool)

(assert (=> d!620066 m!2466683))

(assert (=> b!2027659 m!2466677))

(assert (=> b!2027661 m!2466487))

(declare-fun m!2466685 () Bool)

(assert (=> b!2027661 m!2466685))

(declare-fun m!2466687 () Bool)

(assert (=> b!2027661 m!2466687))

(declare-fun m!2466689 () Bool)

(assert (=> b!2027661 m!2466689))

(declare-fun m!2466691 () Bool)

(assert (=> b!2027661 m!2466691))

(declare-fun m!2466693 () Bool)

(assert (=> b!2027661 m!2466693))

(declare-fun m!2466695 () Bool)

(assert (=> b!2027661 m!2466695))

(assert (=> b!2027661 m!2466693))

(declare-fun m!2466697 () Bool)

(assert (=> b!2027661 m!2466697))

(declare-fun m!2466699 () Bool)

(assert (=> b!2027661 m!2466699))

(declare-fun m!2466701 () Bool)

(assert (=> b!2027661 m!2466701))

(assert (=> b!2027661 m!2466685))

(declare-fun m!2466703 () Bool)

(assert (=> b!2027661 m!2466703))

(declare-fun m!2466705 () Bool)

(assert (=> b!2027661 m!2466705))

(assert (=> b!2027661 m!2466695))

(assert (=> b!2027661 m!2466699))

(declare-fun m!2466707 () Bool)

(assert (=> b!2027661 m!2466707))

(assert (=> b!2027661 m!2466689))

(assert (=> b!2027133 d!620066))

(declare-fun d!620074 () Bool)

(assert (=> d!620074 (= (head!4580 lt!761334) (h!27602 lt!761334))))

(assert (=> b!2027133 d!620074))

(declare-fun d!620076 () Bool)

(assert (=> d!620076 (= (inv!29377 (tag!4474 (rule!6219 separatorToken!354))) (= (mod (str.len (value!125305 (tag!4474 (rule!6219 separatorToken!354)))) 2) 0))))

(assert (=> b!2027134 d!620076))

(declare-fun d!620078 () Bool)

(declare-fun res!889116 () Bool)

(declare-fun e!1280801 () Bool)

(assert (=> d!620078 (=> (not res!889116) (not e!1280801))))

(assert (=> d!620078 (= res!889116 (semiInverseModEq!1606 (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))) (toValue!5663 (transformation!3990 (rule!6219 separatorToken!354)))))))

(assert (=> d!620078 (= (inv!29380 (transformation!3990 (rule!6219 separatorToken!354))) e!1280801)))

(declare-fun b!2027662 () Bool)

(assert (=> b!2027662 (= e!1280801 (equivClasses!1533 (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))) (toValue!5663 (transformation!3990 (rule!6219 separatorToken!354)))))))

(assert (= (and d!620078 res!889116) b!2027662))

(declare-fun m!2466709 () Bool)

(assert (=> d!620078 m!2466709))

(declare-fun m!2466711 () Bool)

(assert (=> b!2027662 m!2466711))

(assert (=> b!2027134 d!620078))

(declare-fun d!620080 () Bool)

(assert (=> d!620080 (not (matchR!2681 (regex!3990 (rule!6219 separatorToken!354)) lt!761334))))

(declare-fun lt!761512 () Unit!36856)

(declare-fun choose!12360 (Regex!5415 List!22283 C!10976) Unit!36856)

(assert (=> d!620080 (= lt!761512 (choose!12360 (regex!3990 (rule!6219 separatorToken!354)) lt!761334 lt!761335))))

(assert (=> d!620080 (validRegex!2177 (regex!3990 (rule!6219 separatorToken!354)))))

(assert (=> d!620080 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!316 (regex!3990 (rule!6219 separatorToken!354)) lt!761334 lt!761335) lt!761512)))

(declare-fun bs!420753 () Bool)

(assert (= bs!420753 d!620080))

(assert (=> bs!420753 m!2466105))

(declare-fun m!2466713 () Bool)

(assert (=> bs!420753 m!2466713))

(declare-fun m!2466715 () Bool)

(assert (=> bs!420753 m!2466715))

(assert (=> b!2027155 d!620080))

(declare-fun d!620082 () Bool)

(declare-fun e!1280804 () Bool)

(assert (=> d!620082 e!1280804))

(declare-fun c!328136 () Bool)

(assert (=> d!620082 (= c!328136 ((_ is EmptyExpr!5415) (regex!3990 (rule!6219 separatorToken!354))))))

(declare-fun lt!761513 () Bool)

(declare-fun e!1280803 () Bool)

(assert (=> d!620082 (= lt!761513 e!1280803)))

(declare-fun c!328137 () Bool)

(assert (=> d!620082 (= c!328137 (isEmpty!13841 lt!761334))))

(assert (=> d!620082 (validRegex!2177 (regex!3990 (rule!6219 separatorToken!354)))))

(assert (=> d!620082 (= (matchR!2681 (regex!3990 (rule!6219 separatorToken!354)) lt!761334) lt!761513)))

(declare-fun b!2027663 () Bool)

(declare-fun res!889120 () Bool)

(declare-fun e!1280807 () Bool)

(assert (=> b!2027663 (=> res!889120 e!1280807)))

(assert (=> b!2027663 (= res!889120 (not ((_ is ElementMatch!5415) (regex!3990 (rule!6219 separatorToken!354)))))))

(declare-fun e!1280802 () Bool)

(assert (=> b!2027663 (= e!1280802 e!1280807)))

(declare-fun b!2027664 () Bool)

(declare-fun res!889124 () Bool)

(declare-fun e!1280805 () Bool)

(assert (=> b!2027664 (=> res!889124 e!1280805)))

(assert (=> b!2027664 (= res!889124 (not (isEmpty!13841 (tail!3057 lt!761334))))))

(declare-fun b!2027665 () Bool)

(assert (=> b!2027665 (= e!1280803 (nullable!1651 (regex!3990 (rule!6219 separatorToken!354))))))

(declare-fun b!2027666 () Bool)

(assert (=> b!2027666 (= e!1280803 (matchR!2681 (derivativeStep!1410 (regex!3990 (rule!6219 separatorToken!354)) (head!4580 lt!761334)) (tail!3057 lt!761334)))))

(declare-fun bm!124374 () Bool)

(declare-fun call!124379 () Bool)

(assert (=> bm!124374 (= call!124379 (isEmpty!13841 lt!761334))))

(declare-fun b!2027667 () Bool)

(declare-fun e!1280806 () Bool)

(assert (=> b!2027667 (= e!1280806 e!1280805)))

(declare-fun res!889119 () Bool)

(assert (=> b!2027667 (=> res!889119 e!1280805)))

(assert (=> b!2027667 (= res!889119 call!124379)))

(declare-fun b!2027668 () Bool)

(assert (=> b!2027668 (= e!1280804 (= lt!761513 call!124379))))

(declare-fun b!2027669 () Bool)

(assert (=> b!2027669 (= e!1280807 e!1280806)))

(declare-fun res!889123 () Bool)

(assert (=> b!2027669 (=> (not res!889123) (not e!1280806))))

(assert (=> b!2027669 (= res!889123 (not lt!761513))))

(declare-fun b!2027670 () Bool)

(declare-fun res!889118 () Bool)

(declare-fun e!1280808 () Bool)

(assert (=> b!2027670 (=> (not res!889118) (not e!1280808))))

(assert (=> b!2027670 (= res!889118 (isEmpty!13841 (tail!3057 lt!761334)))))

(declare-fun b!2027671 () Bool)

(assert (=> b!2027671 (= e!1280805 (not (= (head!4580 lt!761334) (c!328015 (regex!3990 (rule!6219 separatorToken!354))))))))

(declare-fun b!2027672 () Bool)

(assert (=> b!2027672 (= e!1280802 (not lt!761513))))

(declare-fun b!2027673 () Bool)

(declare-fun res!889117 () Bool)

(assert (=> b!2027673 (=> res!889117 e!1280807)))

(assert (=> b!2027673 (= res!889117 e!1280808)))

(declare-fun res!889122 () Bool)

(assert (=> b!2027673 (=> (not res!889122) (not e!1280808))))

(assert (=> b!2027673 (= res!889122 lt!761513)))

(declare-fun b!2027674 () Bool)

(assert (=> b!2027674 (= e!1280804 e!1280802)))

(declare-fun c!328135 () Bool)

(assert (=> b!2027674 (= c!328135 ((_ is EmptyLang!5415) (regex!3990 (rule!6219 separatorToken!354))))))

(declare-fun b!2027675 () Bool)

(assert (=> b!2027675 (= e!1280808 (= (head!4580 lt!761334) (c!328015 (regex!3990 (rule!6219 separatorToken!354)))))))

(declare-fun b!2027676 () Bool)

(declare-fun res!889121 () Bool)

(assert (=> b!2027676 (=> (not res!889121) (not e!1280808))))

(assert (=> b!2027676 (= res!889121 (not call!124379))))

(assert (= (and d!620082 c!328137) b!2027665))

(assert (= (and d!620082 (not c!328137)) b!2027666))

(assert (= (and d!620082 c!328136) b!2027668))

(assert (= (and d!620082 (not c!328136)) b!2027674))

(assert (= (and b!2027674 c!328135) b!2027672))

(assert (= (and b!2027674 (not c!328135)) b!2027663))

(assert (= (and b!2027663 (not res!889120)) b!2027673))

(assert (= (and b!2027673 res!889122) b!2027676))

(assert (= (and b!2027676 res!889121) b!2027670))

(assert (= (and b!2027670 res!889118) b!2027675))

(assert (= (and b!2027673 (not res!889117)) b!2027669))

(assert (= (and b!2027669 res!889123) b!2027667))

(assert (= (and b!2027667 (not res!889119)) b!2027664))

(assert (= (and b!2027664 (not res!889124)) b!2027671))

(assert (= (or b!2027668 b!2027667 b!2027676) bm!124374))

(assert (=> b!2027666 m!2466093))

(assert (=> b!2027666 m!2466093))

(declare-fun m!2466717 () Bool)

(assert (=> b!2027666 m!2466717))

(assert (=> b!2027666 m!2466133))

(assert (=> b!2027666 m!2466717))

(assert (=> b!2027666 m!2466133))

(declare-fun m!2466719 () Bool)

(assert (=> b!2027666 m!2466719))

(assert (=> d!620082 m!2466137))

(assert (=> d!620082 m!2466715))

(assert (=> b!2027670 m!2466133))

(assert (=> b!2027670 m!2466133))

(assert (=> b!2027670 m!2466141))

(assert (=> b!2027664 m!2466133))

(assert (=> b!2027664 m!2466133))

(assert (=> b!2027664 m!2466141))

(assert (=> b!2027675 m!2466093))

(declare-fun m!2466721 () Bool)

(assert (=> b!2027665 m!2466721))

(assert (=> b!2027671 m!2466093))

(assert (=> bm!124374 m!2466137))

(assert (=> b!2027155 d!620082))

(declare-fun d!620084 () Bool)

(declare-fun res!889129 () Bool)

(declare-fun e!1280811 () Bool)

(assert (=> d!620084 (=> (not res!889129) (not e!1280811))))

(assert (=> d!620084 (= res!889129 (not (isEmpty!13841 (originalCharacters!4797 separatorToken!354))))))

(assert (=> d!620084 (= (inv!29381 separatorToken!354) e!1280811)))

(declare-fun b!2027681 () Bool)

(declare-fun res!889130 () Bool)

(assert (=> b!2027681 (=> (not res!889130) (not e!1280811))))

(declare-fun dynLambda!11029 (Int TokenValue!4126) BalanceConc!14668)

(assert (=> b!2027681 (= res!889130 (= (originalCharacters!4797 separatorToken!354) (list!9061 (dynLambda!11029 (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))) (value!125306 separatorToken!354)))))))

(declare-fun b!2027682 () Bool)

(assert (=> b!2027682 (= e!1280811 (= (size!17340 separatorToken!354) (size!17345 (originalCharacters!4797 separatorToken!354))))))

(assert (= (and d!620084 res!889129) b!2027681))

(assert (= (and b!2027681 res!889130) b!2027682))

(declare-fun b_lambda!68189 () Bool)

(assert (=> (not b_lambda!68189) (not b!2027681)))

(declare-fun t!190046 () Bool)

(declare-fun tb!127771 () Bool)

(assert (=> (and b!2027153 (= (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))) (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354)))) t!190046) tb!127771))

(declare-fun b!2027687 () Bool)

(declare-fun e!1280814 () Bool)

(declare-fun tp!603020 () Bool)

(declare-fun inv!29384 (Conc!7426) Bool)

(assert (=> b!2027687 (= e!1280814 (and (inv!29384 (c!328014 (dynLambda!11029 (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))) (value!125306 separatorToken!354)))) tp!603020))))

(declare-fun result!152890 () Bool)

(declare-fun inv!29385 (BalanceConc!14668) Bool)

(assert (=> tb!127771 (= result!152890 (and (inv!29385 (dynLambda!11029 (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))) (value!125306 separatorToken!354))) e!1280814))))

(assert (= tb!127771 b!2027687))

(declare-fun m!2466723 () Bool)

(assert (=> b!2027687 m!2466723))

(declare-fun m!2466725 () Bool)

(assert (=> tb!127771 m!2466725))

(assert (=> b!2027681 t!190046))

(declare-fun b_and!161327 () Bool)

(assert (= b_and!161275 (and (=> t!190046 result!152890) b_and!161327)))

(declare-fun t!190048 () Bool)

(declare-fun tb!127773 () Bool)

(assert (=> (and b!2027157 (= (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354)))) t!190048) tb!127773))

(declare-fun result!152894 () Bool)

(assert (= result!152894 result!152890))

(assert (=> b!2027681 t!190048))

(declare-fun b_and!161329 () Bool)

(assert (= b_and!161279 (and (=> t!190048 result!152894) b_and!161329)))

(declare-fun t!190050 () Bool)

(declare-fun tb!127775 () Bool)

(assert (=> (and b!2027154 (= (toChars!5522 (transformation!3990 (h!27603 rules!3198))) (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354)))) t!190050) tb!127775))

(declare-fun result!152896 () Bool)

(assert (= result!152896 result!152890))

(assert (=> b!2027681 t!190050))

(declare-fun b_and!161331 () Bool)

(assert (= b_and!161283 (and (=> t!190050 result!152896) b_and!161331)))

(declare-fun m!2466727 () Bool)

(assert (=> d!620084 m!2466727))

(declare-fun m!2466729 () Bool)

(assert (=> b!2027681 m!2466729))

(assert (=> b!2027681 m!2466729))

(declare-fun m!2466731 () Bool)

(assert (=> b!2027681 m!2466731))

(declare-fun m!2466733 () Bool)

(assert (=> b!2027682 m!2466733))

(assert (=> start!199404 d!620084))

(declare-fun d!620086 () Bool)

(declare-fun lt!761514 () Bool)

(assert (=> d!620086 (= lt!761514 (select (content!3275 lt!761321) lt!761340))))

(declare-fun e!1280815 () Bool)

(assert (=> d!620086 (= lt!761514 e!1280815)))

(declare-fun res!889132 () Bool)

(assert (=> d!620086 (=> (not res!889132) (not e!1280815))))

(assert (=> d!620086 (= res!889132 ((_ is Cons!22201) lt!761321))))

(assert (=> d!620086 (= (contains!4096 lt!761321 lt!761340) lt!761514)))

(declare-fun b!2027688 () Bool)

(declare-fun e!1280816 () Bool)

(assert (=> b!2027688 (= e!1280815 e!1280816)))

(declare-fun res!889131 () Bool)

(assert (=> b!2027688 (=> res!889131 e!1280816)))

(assert (=> b!2027688 (= res!889131 (= (h!27602 lt!761321) lt!761340))))

(declare-fun b!2027689 () Bool)

(assert (=> b!2027689 (= e!1280816 (contains!4096 (t!190006 lt!761321) lt!761340))))

(assert (= (and d!620086 res!889132) b!2027688))

(assert (= (and b!2027688 (not res!889131)) b!2027689))

(assert (=> d!620086 m!2466637))

(declare-fun m!2466735 () Bool)

(assert (=> d!620086 m!2466735))

(declare-fun m!2466737 () Bool)

(assert (=> b!2027689 m!2466737))

(assert (=> b!2027152 d!620086))

(declare-fun d!620088 () Bool)

(assert (=> d!620088 (= (head!4580 lt!761325) (h!27602 lt!761325))))

(assert (=> b!2027152 d!620088))

(declare-fun d!620090 () Bool)

(declare-fun lt!761517 () Bool)

(declare-fun content!3276 (List!22284) (InoxSet Rule!7780))

(assert (=> d!620090 (= lt!761517 (select (content!3276 rules!3198) (rule!6219 separatorToken!354)))))

(declare-fun e!1280821 () Bool)

(assert (=> d!620090 (= lt!761517 e!1280821)))

(declare-fun res!889137 () Bool)

(assert (=> d!620090 (=> (not res!889137) (not e!1280821))))

(assert (=> d!620090 (= res!889137 ((_ is Cons!22202) rules!3198))))

(assert (=> d!620090 (= (contains!4095 rules!3198 (rule!6219 separatorToken!354)) lt!761517)))

(declare-fun b!2027694 () Bool)

(declare-fun e!1280822 () Bool)

(assert (=> b!2027694 (= e!1280821 e!1280822)))

(declare-fun res!889138 () Bool)

(assert (=> b!2027694 (=> res!889138 e!1280822)))

(assert (=> b!2027694 (= res!889138 (= (h!27603 rules!3198) (rule!6219 separatorToken!354)))))

(declare-fun b!2027695 () Bool)

(assert (=> b!2027695 (= e!1280822 (contains!4095 (t!190007 rules!3198) (rule!6219 separatorToken!354)))))

(assert (= (and d!620090 res!889137) b!2027694))

(assert (= (and b!2027694 (not res!889138)) b!2027695))

(declare-fun m!2466739 () Bool)

(assert (=> d!620090 m!2466739))

(declare-fun m!2466741 () Bool)

(assert (=> d!620090 m!2466741))

(declare-fun m!2466743 () Bool)

(assert (=> b!2027695 m!2466743))

(assert (=> b!2027131 d!620090))

(declare-fun d!620092 () Bool)

(declare-fun res!889143 () Bool)

(declare-fun e!1280827 () Bool)

(assert (=> d!620092 (=> res!889143 e!1280827)))

(assert (=> d!620092 (= res!889143 ((_ is Nil!22203) tokens!598))))

(assert (=> d!620092 (= (forall!4722 tokens!598 lambda!76453) e!1280827)))

(declare-fun b!2027700 () Bool)

(declare-fun e!1280828 () Bool)

(assert (=> b!2027700 (= e!1280827 e!1280828)))

(declare-fun res!889144 () Bool)

(assert (=> b!2027700 (=> (not res!889144) (not e!1280828))))

(declare-fun dynLambda!11032 (Int Token!7532) Bool)

(assert (=> b!2027700 (= res!889144 (dynLambda!11032 lambda!76453 (h!27604 tokens!598)))))

(declare-fun b!2027701 () Bool)

(assert (=> b!2027701 (= e!1280828 (forall!4722 (t!190008 tokens!598) lambda!76453))))

(assert (= (and d!620092 (not res!889143)) b!2027700))

(assert (= (and b!2027700 res!889144) b!2027701))

(declare-fun b_lambda!68191 () Bool)

(assert (=> (not b_lambda!68191) (not b!2027700)))

(declare-fun m!2466745 () Bool)

(assert (=> b!2027700 m!2466745))

(declare-fun m!2466747 () Bool)

(assert (=> b!2027701 m!2466747))

(assert (=> b!2027129 d!620092))

(declare-fun d!620094 () Bool)

(declare-fun e!1280831 () Bool)

(assert (=> d!620094 e!1280831))

(declare-fun c!328139 () Bool)

(assert (=> d!620094 (= c!328139 ((_ is EmptyExpr!5415) (regex!3990 (rule!6219 (h!27604 tokens!598)))))))

(declare-fun lt!761518 () Bool)

(declare-fun e!1280830 () Bool)

(assert (=> d!620094 (= lt!761518 e!1280830)))

(declare-fun c!328140 () Bool)

(assert (=> d!620094 (= c!328140 (isEmpty!13841 lt!761329))))

(assert (=> d!620094 (validRegex!2177 (regex!3990 (rule!6219 (h!27604 tokens!598))))))

(assert (=> d!620094 (= (matchR!2681 (regex!3990 (rule!6219 (h!27604 tokens!598))) lt!761329) lt!761518)))

(declare-fun b!2027702 () Bool)

(declare-fun res!889148 () Bool)

(declare-fun e!1280834 () Bool)

(assert (=> b!2027702 (=> res!889148 e!1280834)))

(assert (=> b!2027702 (= res!889148 (not ((_ is ElementMatch!5415) (regex!3990 (rule!6219 (h!27604 tokens!598))))))))

(declare-fun e!1280829 () Bool)

(assert (=> b!2027702 (= e!1280829 e!1280834)))

(declare-fun b!2027703 () Bool)

(declare-fun res!889152 () Bool)

(declare-fun e!1280832 () Bool)

(assert (=> b!2027703 (=> res!889152 e!1280832)))

(assert (=> b!2027703 (= res!889152 (not (isEmpty!13841 (tail!3057 lt!761329))))))

(declare-fun b!2027704 () Bool)

(assert (=> b!2027704 (= e!1280830 (nullable!1651 (regex!3990 (rule!6219 (h!27604 tokens!598)))))))

(declare-fun b!2027705 () Bool)

(assert (=> b!2027705 (= e!1280830 (matchR!2681 (derivativeStep!1410 (regex!3990 (rule!6219 (h!27604 tokens!598))) (head!4580 lt!761329)) (tail!3057 lt!761329)))))

(declare-fun bm!124375 () Bool)

(declare-fun call!124380 () Bool)

(assert (=> bm!124375 (= call!124380 (isEmpty!13841 lt!761329))))

(declare-fun b!2027706 () Bool)

(declare-fun e!1280833 () Bool)

(assert (=> b!2027706 (= e!1280833 e!1280832)))

(declare-fun res!889147 () Bool)

(assert (=> b!2027706 (=> res!889147 e!1280832)))

(assert (=> b!2027706 (= res!889147 call!124380)))

(declare-fun b!2027707 () Bool)

(assert (=> b!2027707 (= e!1280831 (= lt!761518 call!124380))))

(declare-fun b!2027708 () Bool)

(assert (=> b!2027708 (= e!1280834 e!1280833)))

(declare-fun res!889151 () Bool)

(assert (=> b!2027708 (=> (not res!889151) (not e!1280833))))

(assert (=> b!2027708 (= res!889151 (not lt!761518))))

(declare-fun b!2027709 () Bool)

(declare-fun res!889146 () Bool)

(declare-fun e!1280835 () Bool)

(assert (=> b!2027709 (=> (not res!889146) (not e!1280835))))

(assert (=> b!2027709 (= res!889146 (isEmpty!13841 (tail!3057 lt!761329)))))

(declare-fun b!2027710 () Bool)

(assert (=> b!2027710 (= e!1280832 (not (= (head!4580 lt!761329) (c!328015 (regex!3990 (rule!6219 (h!27604 tokens!598)))))))))

(declare-fun b!2027711 () Bool)

(assert (=> b!2027711 (= e!1280829 (not lt!761518))))

(declare-fun b!2027712 () Bool)

(declare-fun res!889145 () Bool)

(assert (=> b!2027712 (=> res!889145 e!1280834)))

(assert (=> b!2027712 (= res!889145 e!1280835)))

(declare-fun res!889150 () Bool)

(assert (=> b!2027712 (=> (not res!889150) (not e!1280835))))

(assert (=> b!2027712 (= res!889150 lt!761518)))

(declare-fun b!2027713 () Bool)

(assert (=> b!2027713 (= e!1280831 e!1280829)))

(declare-fun c!328138 () Bool)

(assert (=> b!2027713 (= c!328138 ((_ is EmptyLang!5415) (regex!3990 (rule!6219 (h!27604 tokens!598)))))))

(declare-fun b!2027714 () Bool)

(assert (=> b!2027714 (= e!1280835 (= (head!4580 lt!761329) (c!328015 (regex!3990 (rule!6219 (h!27604 tokens!598))))))))

(declare-fun b!2027715 () Bool)

(declare-fun res!889149 () Bool)

(assert (=> b!2027715 (=> (not res!889149) (not e!1280835))))

(assert (=> b!2027715 (= res!889149 (not call!124380))))

(assert (= (and d!620094 c!328140) b!2027704))

(assert (= (and d!620094 (not c!328140)) b!2027705))

(assert (= (and d!620094 c!328139) b!2027707))

(assert (= (and d!620094 (not c!328139)) b!2027713))

(assert (= (and b!2027713 c!328138) b!2027711))

(assert (= (and b!2027713 (not c!328138)) b!2027702))

(assert (= (and b!2027702 (not res!889148)) b!2027712))

(assert (= (and b!2027712 res!889150) b!2027715))

(assert (= (and b!2027715 res!889149) b!2027709))

(assert (= (and b!2027709 res!889146) b!2027714))

(assert (= (and b!2027712 (not res!889145)) b!2027708))

(assert (= (and b!2027708 res!889151) b!2027706))

(assert (= (and b!2027706 (not res!889147)) b!2027703))

(assert (= (and b!2027703 (not res!889152)) b!2027710))

(assert (= (or b!2027707 b!2027706 b!2027715) bm!124375))

(declare-fun m!2466749 () Bool)

(assert (=> b!2027705 m!2466749))

(assert (=> b!2027705 m!2466749))

(declare-fun m!2466751 () Bool)

(assert (=> b!2027705 m!2466751))

(declare-fun m!2466753 () Bool)

(assert (=> b!2027705 m!2466753))

(assert (=> b!2027705 m!2466751))

(assert (=> b!2027705 m!2466753))

(declare-fun m!2466755 () Bool)

(assert (=> b!2027705 m!2466755))

(declare-fun m!2466757 () Bool)

(assert (=> d!620094 m!2466757))

(declare-fun m!2466759 () Bool)

(assert (=> d!620094 m!2466759))

(assert (=> b!2027709 m!2466753))

(assert (=> b!2027709 m!2466753))

(declare-fun m!2466761 () Bool)

(assert (=> b!2027709 m!2466761))

(assert (=> b!2027703 m!2466753))

(assert (=> b!2027703 m!2466753))

(assert (=> b!2027703 m!2466761))

(assert (=> b!2027714 m!2466749))

(declare-fun m!2466763 () Bool)

(assert (=> b!2027704 m!2466763))

(assert (=> b!2027710 m!2466749))

(assert (=> bm!124375 m!2466757))

(assert (=> b!2027151 d!620094))

(declare-fun d!620096 () Bool)

(declare-fun res!889157 () Bool)

(declare-fun e!1280838 () Bool)

(assert (=> d!620096 (=> (not res!889157) (not e!1280838))))

(assert (=> d!620096 (= res!889157 (validRegex!2177 (regex!3990 (rule!6219 (h!27604 tokens!598)))))))

(assert (=> d!620096 (= (ruleValid!1221 thiss!23328 (rule!6219 (h!27604 tokens!598))) e!1280838)))

(declare-fun b!2027720 () Bool)

(declare-fun res!889158 () Bool)

(assert (=> b!2027720 (=> (not res!889158) (not e!1280838))))

(assert (=> b!2027720 (= res!889158 (not (nullable!1651 (regex!3990 (rule!6219 (h!27604 tokens!598))))))))

(declare-fun b!2027721 () Bool)

(assert (=> b!2027721 (= e!1280838 (not (= (tag!4474 (rule!6219 (h!27604 tokens!598))) (String!25749 ""))))))

(assert (= (and d!620096 res!889157) b!2027720))

(assert (= (and b!2027720 res!889158) b!2027721))

(assert (=> d!620096 m!2466759))

(assert (=> b!2027720 m!2466763))

(assert (=> b!2027151 d!620096))

(declare-fun d!620098 () Bool)

(assert (=> d!620098 (ruleValid!1221 thiss!23328 (rule!6219 (h!27604 tokens!598)))))

(declare-fun lt!761521 () Unit!36856)

(declare-fun choose!12361 (LexerInterface!3603 Rule!7780 List!22284) Unit!36856)

(assert (=> d!620098 (= lt!761521 (choose!12361 thiss!23328 (rule!6219 (h!27604 tokens!598)) rules!3198))))

(assert (=> d!620098 (contains!4095 rules!3198 (rule!6219 (h!27604 tokens!598)))))

(assert (=> d!620098 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!692 thiss!23328 (rule!6219 (h!27604 tokens!598)) rules!3198) lt!761521)))

(declare-fun bs!420754 () Bool)

(assert (= bs!420754 d!620098))

(assert (=> bs!420754 m!2466065))

(declare-fun m!2466765 () Bool)

(assert (=> bs!420754 m!2466765))

(assert (=> bs!420754 m!2466123))

(assert (=> b!2027151 d!620098))

(declare-fun d!620100 () Bool)

(assert (=> d!620100 (= (isEmpty!13841 (_2!11909 lt!761332)) ((_ is Nil!22201) (_2!11909 lt!761332)))))

(assert (=> b!2027128 d!620100))

(declare-fun b!2027722 () Bool)

(declare-fun e!1280840 () Bool)

(assert (=> b!2027722 (= e!1280840 (inv!15 (value!125306 separatorToken!354)))))

(declare-fun b!2027723 () Bool)

(declare-fun e!1280839 () Bool)

(assert (=> b!2027723 (= e!1280839 (inv!16 (value!125306 separatorToken!354)))))

(declare-fun b!2027724 () Bool)

(declare-fun e!1280841 () Bool)

(assert (=> b!2027724 (= e!1280839 e!1280841)))

(declare-fun c!328141 () Bool)

(assert (=> b!2027724 (= c!328141 ((_ is IntegerValue!12379) (value!125306 separatorToken!354)))))

(declare-fun b!2027725 () Bool)

(assert (=> b!2027725 (= e!1280841 (inv!17 (value!125306 separatorToken!354)))))

(declare-fun d!620102 () Bool)

(declare-fun c!328142 () Bool)

(assert (=> d!620102 (= c!328142 ((_ is IntegerValue!12378) (value!125306 separatorToken!354)))))

(assert (=> d!620102 (= (inv!21 (value!125306 separatorToken!354)) e!1280839)))

(declare-fun b!2027726 () Bool)

(declare-fun res!889159 () Bool)

(assert (=> b!2027726 (=> res!889159 e!1280840)))

(assert (=> b!2027726 (= res!889159 (not ((_ is IntegerValue!12380) (value!125306 separatorToken!354))))))

(assert (=> b!2027726 (= e!1280841 e!1280840)))

(assert (= (and d!620102 c!328142) b!2027723))

(assert (= (and d!620102 (not c!328142)) b!2027724))

(assert (= (and b!2027724 c!328141) b!2027725))

(assert (= (and b!2027724 (not c!328141)) b!2027726))

(assert (= (and b!2027726 (not res!889159)) b!2027722))

(declare-fun m!2466767 () Bool)

(assert (=> b!2027722 m!2466767))

(declare-fun m!2466769 () Bool)

(assert (=> b!2027723 m!2466769))

(declare-fun m!2466771 () Bool)

(assert (=> b!2027725 m!2466771))

(assert (=> b!2027149 d!620102))

(declare-fun d!620104 () Bool)

(declare-fun res!889160 () Bool)

(declare-fun e!1280842 () Bool)

(assert (=> d!620104 (=> (not res!889160) (not e!1280842))))

(assert (=> d!620104 (= res!889160 (not (isEmpty!13841 (originalCharacters!4797 (h!27604 tokens!598)))))))

(assert (=> d!620104 (= (inv!29381 (h!27604 tokens!598)) e!1280842)))

(declare-fun b!2027727 () Bool)

(declare-fun res!889161 () Bool)

(assert (=> b!2027727 (=> (not res!889161) (not e!1280842))))

(assert (=> b!2027727 (= res!889161 (= (originalCharacters!4797 (h!27604 tokens!598)) (list!9061 (dynLambda!11029 (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (value!125306 (h!27604 tokens!598))))))))

(declare-fun b!2027728 () Bool)

(assert (=> b!2027728 (= e!1280842 (= (size!17340 (h!27604 tokens!598)) (size!17345 (originalCharacters!4797 (h!27604 tokens!598)))))))

(assert (= (and d!620104 res!889160) b!2027727))

(assert (= (and b!2027727 res!889161) b!2027728))

(declare-fun b_lambda!68193 () Bool)

(assert (=> (not b_lambda!68193) (not b!2027727)))

(declare-fun tb!127777 () Bool)

(declare-fun t!190052 () Bool)

(assert (=> (and b!2027153 (= (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190052) tb!127777))

(declare-fun b!2027729 () Bool)

(declare-fun e!1280843 () Bool)

(declare-fun tp!603021 () Bool)

(assert (=> b!2027729 (= e!1280843 (and (inv!29384 (c!328014 (dynLambda!11029 (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (value!125306 (h!27604 tokens!598))))) tp!603021))))

(declare-fun result!152898 () Bool)

(assert (=> tb!127777 (= result!152898 (and (inv!29385 (dynLambda!11029 (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (value!125306 (h!27604 tokens!598)))) e!1280843))))

(assert (= tb!127777 b!2027729))

(declare-fun m!2466773 () Bool)

(assert (=> b!2027729 m!2466773))

(declare-fun m!2466775 () Bool)

(assert (=> tb!127777 m!2466775))

(assert (=> b!2027727 t!190052))

(declare-fun b_and!161333 () Bool)

(assert (= b_and!161327 (and (=> t!190052 result!152898) b_and!161333)))

(declare-fun t!190054 () Bool)

(declare-fun tb!127779 () Bool)

(assert (=> (and b!2027157 (= (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190054) tb!127779))

(declare-fun result!152900 () Bool)

(assert (= result!152900 result!152898))

(assert (=> b!2027727 t!190054))

(declare-fun b_and!161335 () Bool)

(assert (= b_and!161329 (and (=> t!190054 result!152900) b_and!161335)))

(declare-fun tb!127781 () Bool)

(declare-fun t!190056 () Bool)

(assert (=> (and b!2027154 (= (toChars!5522 (transformation!3990 (h!27603 rules!3198))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190056) tb!127781))

(declare-fun result!152902 () Bool)

(assert (= result!152902 result!152898))

(assert (=> b!2027727 t!190056))

(declare-fun b_and!161337 () Bool)

(assert (= b_and!161331 (and (=> t!190056 result!152902) b_and!161337)))

(declare-fun m!2466777 () Bool)

(assert (=> d!620104 m!2466777))

(declare-fun m!2466779 () Bool)

(assert (=> b!2027727 m!2466779))

(assert (=> b!2027727 m!2466779))

(declare-fun m!2466781 () Bool)

(assert (=> b!2027727 m!2466781))

(declare-fun m!2466783 () Bool)

(assert (=> b!2027728 m!2466783))

(assert (=> b!2027150 d!620104))

(declare-fun d!620106 () Bool)

(declare-fun lt!761545 () Bool)

(declare-fun e!1280864 () Bool)

(assert (=> d!620106 (= lt!761545 e!1280864)))

(declare-fun res!889170 () Bool)

(assert (=> d!620106 (=> (not res!889170) (not e!1280864))))

(assert (=> d!620106 (= res!889170 (= (list!9064 (_1!11910 (lex!1619 thiss!23328 rules!3198 (print!1565 thiss!23328 (singletonSeq!1966 separatorToken!354))))) (list!9064 (singletonSeq!1966 separatorToken!354))))))

(declare-fun e!1280863 () Bool)

(assert (=> d!620106 (= lt!761545 e!1280863)))

(declare-fun res!889169 () Bool)

(assert (=> d!620106 (=> (not res!889169) (not e!1280863))))

(declare-fun lt!761544 () tuple2!20882)

(assert (=> d!620106 (= res!889169 (= (size!17344 (_1!11910 lt!761544)) 1))))

(assert (=> d!620106 (= lt!761544 (lex!1619 thiss!23328 rules!3198 (print!1565 thiss!23328 (singletonSeq!1966 separatorToken!354))))))

(assert (=> d!620106 (not (isEmpty!13840 rules!3198))))

(assert (=> d!620106 (= (rulesProduceIndividualToken!1775 thiss!23328 rules!3198 separatorToken!354) lt!761545)))

(declare-fun b!2027763 () Bool)

(declare-fun res!889168 () Bool)

(assert (=> b!2027763 (=> (not res!889168) (not e!1280863))))

(assert (=> b!2027763 (= res!889168 (= (apply!5843 (_1!11910 lt!761544) 0) separatorToken!354))))

(declare-fun b!2027764 () Bool)

(declare-fun isEmpty!13849 (BalanceConc!14668) Bool)

(assert (=> b!2027764 (= e!1280863 (isEmpty!13849 (_2!11910 lt!761544)))))

(declare-fun b!2027765 () Bool)

(assert (=> b!2027765 (= e!1280864 (isEmpty!13849 (_2!11910 (lex!1619 thiss!23328 rules!3198 (print!1565 thiss!23328 (singletonSeq!1966 separatorToken!354))))))))

(assert (= (and d!620106 res!889169) b!2027763))

(assert (= (and b!2027763 res!889168) b!2027764))

(assert (= (and d!620106 res!889170) b!2027765))

(declare-fun m!2466785 () Bool)

(assert (=> d!620106 m!2466785))

(declare-fun m!2466787 () Bool)

(assert (=> d!620106 m!2466787))

(assert (=> d!620106 m!2466785))

(declare-fun m!2466789 () Bool)

(assert (=> d!620106 m!2466789))

(declare-fun m!2466791 () Bool)

(assert (=> d!620106 m!2466791))

(assert (=> d!620106 m!2466039))

(assert (=> d!620106 m!2466787))

(declare-fun m!2466793 () Bool)

(assert (=> d!620106 m!2466793))

(declare-fun m!2466795 () Bool)

(assert (=> d!620106 m!2466795))

(assert (=> d!620106 m!2466785))

(declare-fun m!2466797 () Bool)

(assert (=> b!2027763 m!2466797))

(declare-fun m!2466799 () Bool)

(assert (=> b!2027764 m!2466799))

(assert (=> b!2027765 m!2466785))

(assert (=> b!2027765 m!2466785))

(assert (=> b!2027765 m!2466787))

(assert (=> b!2027765 m!2466787))

(assert (=> b!2027765 m!2466793))

(declare-fun m!2466801 () Bool)

(assert (=> b!2027765 m!2466801))

(assert (=> b!2027148 d!620106))

(declare-fun d!620108 () Bool)

(declare-fun res!889173 () Bool)

(declare-fun e!1280867 () Bool)

(assert (=> d!620108 (=> (not res!889173) (not e!1280867))))

(declare-fun rulesValid!1493 (LexerInterface!3603 List!22284) Bool)

(assert (=> d!620108 (= res!889173 (rulesValid!1493 thiss!23328 rules!3198))))

(assert (=> d!620108 (= (rulesInvariant!3210 thiss!23328 rules!3198) e!1280867)))

(declare-fun b!2027768 () Bool)

(declare-datatypes ((List!22286 0))(
  ( (Nil!22204) (Cons!22204 (h!27605 String!25748) (t!190121 List!22286)) )
))
(declare-fun noDuplicateTag!1491 (LexerInterface!3603 List!22284 List!22286) Bool)

(assert (=> b!2027768 (= e!1280867 (noDuplicateTag!1491 thiss!23328 rules!3198 Nil!22204))))

(assert (= (and d!620108 res!889173) b!2027768))

(declare-fun m!2466835 () Bool)

(assert (=> d!620108 m!2466835))

(declare-fun m!2466839 () Bool)

(assert (=> b!2027768 m!2466839))

(assert (=> b!2027127 d!620108))

(declare-fun d!620118 () Bool)

(assert (=> d!620118 (= (isEmpty!13841 lt!761325) ((_ is Nil!22201) lt!761325))))

(assert (=> b!2027125 d!620118))

(declare-fun d!620120 () Bool)

(declare-fun lt!761548 () Bool)

(declare-fun e!1280869 () Bool)

(assert (=> d!620120 (= lt!761548 e!1280869)))

(declare-fun res!889176 () Bool)

(assert (=> d!620120 (=> (not res!889176) (not e!1280869))))

(assert (=> d!620120 (= res!889176 (= (list!9064 (_1!11910 (lex!1619 thiss!23328 rules!3198 (print!1565 thiss!23328 (singletonSeq!1966 (h!27604 tokens!598)))))) (list!9064 (singletonSeq!1966 (h!27604 tokens!598)))))))

(declare-fun e!1280868 () Bool)

(assert (=> d!620120 (= lt!761548 e!1280868)))

(declare-fun res!889175 () Bool)

(assert (=> d!620120 (=> (not res!889175) (not e!1280868))))

(declare-fun lt!761547 () tuple2!20882)

(assert (=> d!620120 (= res!889175 (= (size!17344 (_1!11910 lt!761547)) 1))))

(assert (=> d!620120 (= lt!761547 (lex!1619 thiss!23328 rules!3198 (print!1565 thiss!23328 (singletonSeq!1966 (h!27604 tokens!598)))))))

(assert (=> d!620120 (not (isEmpty!13840 rules!3198))))

(assert (=> d!620120 (= (rulesProduceIndividualToken!1775 thiss!23328 rules!3198 (h!27604 tokens!598)) lt!761548)))

(declare-fun b!2027769 () Bool)

(declare-fun res!889174 () Bool)

(assert (=> b!2027769 (=> (not res!889174) (not e!1280868))))

(assert (=> b!2027769 (= res!889174 (= (apply!5843 (_1!11910 lt!761547) 0) (h!27604 tokens!598)))))

(declare-fun b!2027770 () Bool)

(assert (=> b!2027770 (= e!1280868 (isEmpty!13849 (_2!11910 lt!761547)))))

(declare-fun b!2027771 () Bool)

(assert (=> b!2027771 (= e!1280869 (isEmpty!13849 (_2!11910 (lex!1619 thiss!23328 rules!3198 (print!1565 thiss!23328 (singletonSeq!1966 (h!27604 tokens!598)))))))))

(assert (= (and d!620120 res!889175) b!2027769))

(assert (= (and b!2027769 res!889174) b!2027770))

(assert (= (and d!620120 res!889176) b!2027771))

(assert (=> d!620120 m!2466099))

(declare-fun m!2466841 () Bool)

(assert (=> d!620120 m!2466841))

(assert (=> d!620120 m!2466099))

(declare-fun m!2466843 () Bool)

(assert (=> d!620120 m!2466843))

(declare-fun m!2466845 () Bool)

(assert (=> d!620120 m!2466845))

(assert (=> d!620120 m!2466039))

(assert (=> d!620120 m!2466841))

(declare-fun m!2466847 () Bool)

(assert (=> d!620120 m!2466847))

(declare-fun m!2466849 () Bool)

(assert (=> d!620120 m!2466849))

(assert (=> d!620120 m!2466099))

(declare-fun m!2466851 () Bool)

(assert (=> b!2027769 m!2466851))

(declare-fun m!2466853 () Bool)

(assert (=> b!2027770 m!2466853))

(assert (=> b!2027771 m!2466099))

(assert (=> b!2027771 m!2466099))

(assert (=> b!2027771 m!2466841))

(assert (=> b!2027771 m!2466841))

(assert (=> b!2027771 m!2466847))

(declare-fun m!2466855 () Bool)

(assert (=> b!2027771 m!2466855))

(assert (=> b!2027126 d!620120))

(declare-fun d!620122 () Bool)

(declare-fun lt!761549 () Bool)

(assert (=> d!620122 (= lt!761549 (select (content!3276 rules!3198) (rule!6219 (h!27604 tokens!598))))))

(declare-fun e!1280870 () Bool)

(assert (=> d!620122 (= lt!761549 e!1280870)))

(declare-fun res!889177 () Bool)

(assert (=> d!620122 (=> (not res!889177) (not e!1280870))))

(assert (=> d!620122 (= res!889177 ((_ is Cons!22202) rules!3198))))

(assert (=> d!620122 (= (contains!4095 rules!3198 (rule!6219 (h!27604 tokens!598))) lt!761549)))

(declare-fun b!2027772 () Bool)

(declare-fun e!1280871 () Bool)

(assert (=> b!2027772 (= e!1280870 e!1280871)))

(declare-fun res!889178 () Bool)

(assert (=> b!2027772 (=> res!889178 e!1280871)))

(assert (=> b!2027772 (= res!889178 (= (h!27603 rules!3198) (rule!6219 (h!27604 tokens!598))))))

(declare-fun b!2027773 () Bool)

(assert (=> b!2027773 (= e!1280871 (contains!4095 (t!190007 rules!3198) (rule!6219 (h!27604 tokens!598))))))

(assert (= (and d!620122 res!889177) b!2027772))

(assert (= (and b!2027772 (not res!889178)) b!2027773))

(assert (=> d!620122 m!2466739))

(declare-fun m!2466857 () Bool)

(assert (=> d!620122 m!2466857))

(declare-fun m!2466859 () Bool)

(assert (=> b!2027773 m!2466859))

(assert (=> b!2027147 d!620122))

(declare-fun d!620124 () Bool)

(declare-fun e!1280874 () Bool)

(assert (=> d!620124 e!1280874))

(declare-fun c!328156 () Bool)

(assert (=> d!620124 (= c!328156 ((_ is EmptyExpr!5415) (regex!3990 lt!761339)))))

(declare-fun lt!761550 () Bool)

(declare-fun e!1280873 () Bool)

(assert (=> d!620124 (= lt!761550 e!1280873)))

(declare-fun c!328157 () Bool)

(assert (=> d!620124 (= c!328157 (isEmpty!13841 lt!761329))))

(assert (=> d!620124 (validRegex!2177 (regex!3990 lt!761339))))

(assert (=> d!620124 (= (matchR!2681 (regex!3990 lt!761339) lt!761329) lt!761550)))

(declare-fun b!2027774 () Bool)

(declare-fun res!889182 () Bool)

(declare-fun e!1280877 () Bool)

(assert (=> b!2027774 (=> res!889182 e!1280877)))

(assert (=> b!2027774 (= res!889182 (not ((_ is ElementMatch!5415) (regex!3990 lt!761339))))))

(declare-fun e!1280872 () Bool)

(assert (=> b!2027774 (= e!1280872 e!1280877)))

(declare-fun b!2027775 () Bool)

(declare-fun res!889186 () Bool)

(declare-fun e!1280875 () Bool)

(assert (=> b!2027775 (=> res!889186 e!1280875)))

(assert (=> b!2027775 (= res!889186 (not (isEmpty!13841 (tail!3057 lt!761329))))))

(declare-fun b!2027776 () Bool)

(assert (=> b!2027776 (= e!1280873 (nullable!1651 (regex!3990 lt!761339)))))

(declare-fun b!2027777 () Bool)

(assert (=> b!2027777 (= e!1280873 (matchR!2681 (derivativeStep!1410 (regex!3990 lt!761339) (head!4580 lt!761329)) (tail!3057 lt!761329)))))

(declare-fun bm!124391 () Bool)

(declare-fun call!124396 () Bool)

(assert (=> bm!124391 (= call!124396 (isEmpty!13841 lt!761329))))

(declare-fun b!2027778 () Bool)

(declare-fun e!1280876 () Bool)

(assert (=> b!2027778 (= e!1280876 e!1280875)))

(declare-fun res!889181 () Bool)

(assert (=> b!2027778 (=> res!889181 e!1280875)))

(assert (=> b!2027778 (= res!889181 call!124396)))

(declare-fun b!2027779 () Bool)

(assert (=> b!2027779 (= e!1280874 (= lt!761550 call!124396))))

(declare-fun b!2027780 () Bool)

(assert (=> b!2027780 (= e!1280877 e!1280876)))

(declare-fun res!889185 () Bool)

(assert (=> b!2027780 (=> (not res!889185) (not e!1280876))))

(assert (=> b!2027780 (= res!889185 (not lt!761550))))

(declare-fun b!2027781 () Bool)

(declare-fun res!889180 () Bool)

(declare-fun e!1280878 () Bool)

(assert (=> b!2027781 (=> (not res!889180) (not e!1280878))))

(assert (=> b!2027781 (= res!889180 (isEmpty!13841 (tail!3057 lt!761329)))))

(declare-fun b!2027782 () Bool)

(assert (=> b!2027782 (= e!1280875 (not (= (head!4580 lt!761329) (c!328015 (regex!3990 lt!761339)))))))

(declare-fun b!2027783 () Bool)

(assert (=> b!2027783 (= e!1280872 (not lt!761550))))

(declare-fun b!2027784 () Bool)

(declare-fun res!889179 () Bool)

(assert (=> b!2027784 (=> res!889179 e!1280877)))

(assert (=> b!2027784 (= res!889179 e!1280878)))

(declare-fun res!889184 () Bool)

(assert (=> b!2027784 (=> (not res!889184) (not e!1280878))))

(assert (=> b!2027784 (= res!889184 lt!761550)))

(declare-fun b!2027785 () Bool)

(assert (=> b!2027785 (= e!1280874 e!1280872)))

(declare-fun c!328155 () Bool)

(assert (=> b!2027785 (= c!328155 ((_ is EmptyLang!5415) (regex!3990 lt!761339)))))

(declare-fun b!2027786 () Bool)

(assert (=> b!2027786 (= e!1280878 (= (head!4580 lt!761329) (c!328015 (regex!3990 lt!761339))))))

(declare-fun b!2027787 () Bool)

(declare-fun res!889183 () Bool)

(assert (=> b!2027787 (=> (not res!889183) (not e!1280878))))

(assert (=> b!2027787 (= res!889183 (not call!124396))))

(assert (= (and d!620124 c!328157) b!2027776))

(assert (= (and d!620124 (not c!328157)) b!2027777))

(assert (= (and d!620124 c!328156) b!2027779))

(assert (= (and d!620124 (not c!328156)) b!2027785))

(assert (= (and b!2027785 c!328155) b!2027783))

(assert (= (and b!2027785 (not c!328155)) b!2027774))

(assert (= (and b!2027774 (not res!889182)) b!2027784))

(assert (= (and b!2027784 res!889184) b!2027787))

(assert (= (and b!2027787 res!889183) b!2027781))

(assert (= (and b!2027781 res!889180) b!2027786))

(assert (= (and b!2027784 (not res!889179)) b!2027780))

(assert (= (and b!2027780 res!889185) b!2027778))

(assert (= (and b!2027778 (not res!889181)) b!2027775))

(assert (= (and b!2027775 (not res!889186)) b!2027782))

(assert (= (or b!2027779 b!2027778 b!2027787) bm!124391))

(assert (=> b!2027777 m!2466749))

(assert (=> b!2027777 m!2466749))

(declare-fun m!2466861 () Bool)

(assert (=> b!2027777 m!2466861))

(assert (=> b!2027777 m!2466753))

(assert (=> b!2027777 m!2466861))

(assert (=> b!2027777 m!2466753))

(declare-fun m!2466863 () Bool)

(assert (=> b!2027777 m!2466863))

(assert (=> d!620124 m!2466757))

(declare-fun m!2466865 () Bool)

(assert (=> d!620124 m!2466865))

(assert (=> b!2027781 m!2466753))

(assert (=> b!2027781 m!2466753))

(assert (=> b!2027781 m!2466761))

(assert (=> b!2027775 m!2466753))

(assert (=> b!2027775 m!2466753))

(assert (=> b!2027775 m!2466761))

(assert (=> b!2027786 m!2466749))

(declare-fun m!2466867 () Bool)

(assert (=> b!2027776 m!2466867))

(assert (=> b!2027782 m!2466749))

(assert (=> bm!124391 m!2466757))

(assert (=> b!2027146 d!620124))

(declare-fun d!620126 () Bool)

(assert (=> d!620126 (= (get!7049 lt!761323) (v!26979 lt!761323))))

(assert (=> b!2027146 d!620126))

(declare-fun d!620128 () Bool)

(assert (=> d!620128 (= (inv!29377 (tag!4474 (rule!6219 (h!27604 tokens!598)))) (= (mod (str.len (value!125305 (tag!4474 (rule!6219 (h!27604 tokens!598))))) 2) 0))))

(assert (=> b!2027123 d!620128))

(declare-fun d!620130 () Bool)

(declare-fun res!889187 () Bool)

(declare-fun e!1280879 () Bool)

(assert (=> d!620130 (=> (not res!889187) (not e!1280879))))

(assert (=> d!620130 (= res!889187 (semiInverseModEq!1606 (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598))))))))

(assert (=> d!620130 (= (inv!29380 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) e!1280879)))

(declare-fun b!2027788 () Bool)

(assert (=> b!2027788 (= e!1280879 (equivClasses!1533 (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598))))))))

(assert (= (and d!620130 res!889187) b!2027788))

(declare-fun m!2466869 () Bool)

(assert (=> d!620130 m!2466869))

(declare-fun m!2466871 () Bool)

(assert (=> b!2027788 m!2466871))

(assert (=> b!2027123 d!620130))

(declare-fun d!620132 () Bool)

(assert (=> d!620132 (= (isEmpty!13840 rules!3198) ((_ is Nil!22202) rules!3198))))

(assert (=> b!2027122 d!620132))

(declare-fun d!620134 () Bool)

(assert (=> d!620134 (= (get!7050 lt!761337) (v!26980 lt!761337))))

(assert (=> b!2027143 d!620134))

(declare-fun d!620136 () Bool)

(declare-fun e!1280882 () Bool)

(assert (=> d!620136 e!1280882))

(declare-fun res!889192 () Bool)

(assert (=> d!620136 (=> (not res!889192) (not e!1280882))))

(assert (=> d!620136 (= res!889192 (isDefined!3951 (getRuleFromTag!805 thiss!23328 rules!3198 (tag!4474 (rule!6219 separatorToken!354)))))))

(declare-fun lt!761553 () Unit!36856)

(declare-fun choose!12362 (LexerInterface!3603 List!22284 List!22283 Token!7532) Unit!36856)

(assert (=> d!620136 (= lt!761553 (choose!12362 thiss!23328 rules!3198 lt!761334 separatorToken!354))))

(assert (=> d!620136 (rulesInvariant!3210 thiss!23328 rules!3198)))

(assert (=> d!620136 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!805 thiss!23328 rules!3198 lt!761334 separatorToken!354) lt!761553)))

(declare-fun b!2027793 () Bool)

(declare-fun res!889193 () Bool)

(assert (=> b!2027793 (=> (not res!889193) (not e!1280882))))

(assert (=> b!2027793 (= res!889193 (matchR!2681 (regex!3990 (get!7049 (getRuleFromTag!805 thiss!23328 rules!3198 (tag!4474 (rule!6219 separatorToken!354))))) (list!9061 (charsOf!2530 separatorToken!354))))))

(declare-fun b!2027794 () Bool)

(assert (=> b!2027794 (= e!1280882 (= (rule!6219 separatorToken!354) (get!7049 (getRuleFromTag!805 thiss!23328 rules!3198 (tag!4474 (rule!6219 separatorToken!354))))))))

(assert (= (and d!620136 res!889192) b!2027793))

(assert (= (and b!2027793 res!889193) b!2027794))

(assert (=> d!620136 m!2466009))

(assert (=> d!620136 m!2466009))

(declare-fun m!2466873 () Bool)

(assert (=> d!620136 m!2466873))

(declare-fun m!2466875 () Bool)

(assert (=> d!620136 m!2466875))

(assert (=> d!620136 m!2466041))

(assert (=> b!2027793 m!2466013))

(assert (=> b!2027793 m!2466025))

(assert (=> b!2027793 m!2466009))

(assert (=> b!2027793 m!2466025))

(declare-fun m!2466877 () Bool)

(assert (=> b!2027793 m!2466877))

(assert (=> b!2027793 m!2466013))

(assert (=> b!2027793 m!2466009))

(declare-fun m!2466879 () Bool)

(assert (=> b!2027793 m!2466879))

(assert (=> b!2027794 m!2466009))

(assert (=> b!2027794 m!2466009))

(assert (=> b!2027794 m!2466879))

(assert (=> b!2027143 d!620136))

(declare-fun b!2027801 () Bool)

(declare-fun e!1280887 () Bool)

(assert (=> b!2027801 (= e!1280887 true)))

(declare-fun d!620138 () Bool)

(assert (=> d!620138 e!1280887))

(assert (= d!620138 b!2027801))

(declare-fun lambda!76471 () Int)

(declare-fun order!14213 () Int)

(declare-fun dynLambda!11034 (Int Int) Int)

(assert (=> b!2027801 (< (dynLambda!11026 order!14203 (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) (dynLambda!11034 order!14213 lambda!76471))))

(assert (=> b!2027801 (< (dynLambda!11028 order!14207 (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) (dynLambda!11034 order!14213 lambda!76471))))

(declare-fun dynLambda!11035 (Int BalanceConc!14668) TokenValue!4126)

(assert (=> d!620138 (= (dynLambda!11035 (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) lt!761330) (dynLambda!11035 (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (seqFromList!2844 (originalCharacters!4797 (h!27604 tokens!598)))))))

(declare-fun lt!761556 () Unit!36856)

(declare-fun Forall2of!243 (Int BalanceConc!14668 BalanceConc!14668) Unit!36856)

(assert (=> d!620138 (= lt!761556 (Forall2of!243 lambda!76471 lt!761330 (seqFromList!2844 (originalCharacters!4797 (h!27604 tokens!598)))))))

(assert (=> d!620138 (= (list!9061 lt!761330) (list!9061 (seqFromList!2844 (originalCharacters!4797 (h!27604 tokens!598)))))))

(assert (=> d!620138 (= (lemmaEqSameImage!676 (transformation!3990 (rule!6219 (h!27604 tokens!598))) lt!761330 (seqFromList!2844 (originalCharacters!4797 (h!27604 tokens!598)))) lt!761556)))

(declare-fun b_lambda!68197 () Bool)

(assert (=> (not b_lambda!68197) (not d!620138)))

(declare-fun t!190061 () Bool)

(declare-fun tb!127783 () Bool)

(assert (=> (and b!2027153 (= (toValue!5663 (transformation!3990 (rule!6219 separatorToken!354))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190061) tb!127783))

(declare-fun result!152904 () Bool)

(assert (=> tb!127783 (= result!152904 (inv!21 (dynLambda!11035 (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) lt!761330)))))

(declare-fun m!2466881 () Bool)

(assert (=> tb!127783 m!2466881))

(assert (=> d!620138 t!190061))

(declare-fun b_and!161345 () Bool)

(assert (= b_and!161273 (and (=> t!190061 result!152904) b_and!161345)))

(declare-fun t!190063 () Bool)

(declare-fun tb!127785 () Bool)

(assert (=> (and b!2027157 (= (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190063) tb!127785))

(declare-fun result!152908 () Bool)

(assert (= result!152908 result!152904))

(assert (=> d!620138 t!190063))

(declare-fun b_and!161347 () Bool)

(assert (= b_and!161277 (and (=> t!190063 result!152908) b_and!161347)))

(declare-fun t!190065 () Bool)

(declare-fun tb!127787 () Bool)

(assert (=> (and b!2027154 (= (toValue!5663 (transformation!3990 (h!27603 rules!3198))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190065) tb!127787))

(declare-fun result!152910 () Bool)

(assert (= result!152910 result!152904))

(assert (=> d!620138 t!190065))

(declare-fun b_and!161349 () Bool)

(assert (= b_and!161281 (and (=> t!190065 result!152910) b_and!161349)))

(declare-fun b_lambda!68199 () Bool)

(assert (=> (not b_lambda!68199) (not d!620138)))

(declare-fun t!190067 () Bool)

(declare-fun tb!127789 () Bool)

(assert (=> (and b!2027153 (= (toValue!5663 (transformation!3990 (rule!6219 separatorToken!354))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190067) tb!127789))

(declare-fun result!152912 () Bool)

(assert (=> tb!127789 (= result!152912 (inv!21 (dynLambda!11035 (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (seqFromList!2844 (originalCharacters!4797 (h!27604 tokens!598))))))))

(declare-fun m!2466883 () Bool)

(assert (=> tb!127789 m!2466883))

(assert (=> d!620138 t!190067))

(declare-fun b_and!161351 () Bool)

(assert (= b_and!161345 (and (=> t!190067 result!152912) b_and!161351)))

(declare-fun t!190069 () Bool)

(declare-fun tb!127791 () Bool)

(assert (=> (and b!2027157 (= (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190069) tb!127791))

(declare-fun result!152914 () Bool)

(assert (= result!152914 result!152912))

(assert (=> d!620138 t!190069))

(declare-fun b_and!161353 () Bool)

(assert (= b_and!161347 (and (=> t!190069 result!152914) b_and!161353)))

(declare-fun t!190071 () Bool)

(declare-fun tb!127793 () Bool)

(assert (=> (and b!2027154 (= (toValue!5663 (transformation!3990 (h!27603 rules!3198))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190071) tb!127793))

(declare-fun result!152916 () Bool)

(assert (= result!152916 result!152912))

(assert (=> d!620138 t!190071))

(declare-fun b_and!161355 () Bool)

(assert (= b_and!161349 (and (=> t!190071 result!152916) b_and!161355)))

(assert (=> d!620138 m!2465993))

(declare-fun m!2466885 () Bool)

(assert (=> d!620138 m!2466885))

(assert (=> d!620138 m!2465993))

(declare-fun m!2466887 () Bool)

(assert (=> d!620138 m!2466887))

(declare-fun m!2466889 () Bool)

(assert (=> d!620138 m!2466889))

(assert (=> d!620138 m!2466021))

(assert (=> d!620138 m!2465993))

(declare-fun m!2466891 () Bool)

(assert (=> d!620138 m!2466891))

(assert (=> b!2027143 d!620138))

(declare-fun d!620140 () Bool)

(declare-fun isEmpty!13851 (Option!4663) Bool)

(assert (=> d!620140 (= (isDefined!3951 lt!761323) (not (isEmpty!13851 lt!761323)))))

(declare-fun bs!420759 () Bool)

(assert (= bs!420759 d!620140))

(declare-fun m!2466893 () Bool)

(assert (=> bs!420759 m!2466893))

(assert (=> b!2027143 d!620140))

(declare-fun bs!420761 () Bool)

(declare-fun b!2027929 () Bool)

(assert (= bs!420761 (and b!2027929 b!2027129)))

(declare-fun lambda!76474 () Int)

(assert (=> bs!420761 (not (= lambda!76474 lambda!76453))))

(declare-fun bs!420762 () Bool)

(assert (= bs!420762 (and b!2027929 d!619938)))

(assert (=> bs!420762 (= lambda!76474 lambda!76459)))

(declare-fun b!2027935 () Bool)

(declare-fun e!1280986 () Bool)

(assert (=> b!2027935 (= e!1280986 true)))

(declare-fun b!2027934 () Bool)

(declare-fun e!1280985 () Bool)

(assert (=> b!2027934 (= e!1280985 e!1280986)))

(declare-fun b!2027933 () Bool)

(declare-fun e!1280984 () Bool)

(assert (=> b!2027933 (= e!1280984 e!1280985)))

(assert (=> b!2027929 e!1280984))

(assert (= b!2027934 b!2027935))

(assert (= b!2027933 b!2027934))

(assert (= (and b!2027929 ((_ is Cons!22202) rules!3198)) b!2027933))

(assert (=> b!2027935 (< (dynLambda!11026 order!14203 (toValue!5663 (transformation!3990 (h!27603 rules!3198)))) (dynLambda!11027 order!14205 lambda!76474))))

(assert (=> b!2027935 (< (dynLambda!11028 order!14207 (toChars!5522 (transformation!3990 (h!27603 rules!3198)))) (dynLambda!11027 order!14205 lambda!76474))))

(assert (=> b!2027929 true))

(declare-fun b!2027925 () Bool)

(declare-fun e!1280981 () List!22283)

(declare-fun call!124408 () List!22283)

(assert (=> b!2027925 (= e!1280981 call!124408)))

(declare-fun call!124411 () BalanceConc!14668)

(declare-fun call!124410 () BalanceConc!14668)

(declare-fun call!124409 () List!22283)

(declare-fun c!328172 () Bool)

(declare-fun bm!124403 () Bool)

(assert (=> bm!124403 (= call!124409 (list!9061 (ite c!328172 call!124410 call!124411)))))

(declare-fun d!620142 () Bool)

(declare-fun c!328171 () Bool)

(assert (=> d!620142 (= c!328171 ((_ is Cons!22203) (t!190008 tokens!598)))))

(declare-fun e!1280982 () List!22283)

(assert (=> d!620142 (= (printWithSeparatorTokenWhenNeededList!632 thiss!23328 rules!3198 (t!190008 tokens!598) separatorToken!354) e!1280982)))

(declare-fun b!2027926 () Bool)

(declare-fun c!328169 () Bool)

(declare-fun lt!761587 () Option!4664)

(assert (=> b!2027926 (= c!328169 (and ((_ is Some!4663) lt!761587) (not (= (_1!11909 (v!26980 lt!761587)) (h!27604 (t!190008 tokens!598))))))))

(declare-fun e!1280980 () List!22283)

(assert (=> b!2027926 (= e!1280981 e!1280980)))

(declare-fun b!2027927 () Bool)

(declare-fun e!1280983 () List!22283)

(assert (=> b!2027927 (= e!1280983 call!124409)))

(declare-fun b!2027928 () Bool)

(assert (=> b!2027928 (= e!1280980 Nil!22201)))

(assert (=> b!2027928 (= (print!1565 thiss!23328 (singletonSeq!1966 (h!27604 (t!190008 tokens!598)))) (printTailRec!1071 thiss!23328 (singletonSeq!1966 (h!27604 (t!190008 tokens!598))) 0 (BalanceConc!14669 Empty!7426)))))

(declare-fun lt!761584 () Unit!36856)

(declare-fun Unit!36862 () Unit!36856)

(assert (=> b!2027928 (= lt!761584 Unit!36862)))

(declare-fun lt!761588 () List!22283)

(declare-fun lt!761589 () Unit!36856)

(declare-fun call!124412 () List!22283)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!777 (LexerInterface!3603 List!22284 List!22283 List!22283) Unit!36856)

(assert (=> b!2027928 (= lt!761589 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!777 thiss!23328 rules!3198 call!124412 lt!761588))))

(assert (=> b!2027928 false))

(declare-fun lt!761585 () Unit!36856)

(declare-fun Unit!36863 () Unit!36856)

(assert (=> b!2027928 (= lt!761585 Unit!36863)))

(assert (=> b!2027929 (= e!1280982 e!1280981)))

(declare-fun lt!761586 () Unit!36856)

(declare-fun forallContained!746 (List!22285 Int Token!7532) Unit!36856)

(assert (=> b!2027929 (= lt!761586 (forallContained!746 (t!190008 tokens!598) lambda!76474 (h!27604 (t!190008 tokens!598))))))

(assert (=> b!2027929 (= lt!761588 (printWithSeparatorTokenWhenNeededList!632 thiss!23328 rules!3198 (t!190008 (t!190008 tokens!598)) separatorToken!354))))

(assert (=> b!2027929 (= lt!761587 (maxPrefix!2039 thiss!23328 rules!3198 (++!6001 (list!9061 (charsOf!2530 (h!27604 (t!190008 tokens!598)))) lt!761588)))))

(assert (=> b!2027929 (= c!328172 (and ((_ is Some!4663) lt!761587) (= (_1!11909 (v!26980 lt!761587)) (h!27604 (t!190008 tokens!598)))))))

(declare-fun bm!124404 () Bool)

(declare-fun c!328170 () Bool)

(assert (=> bm!124404 (= c!328170 c!328172)))

(assert (=> bm!124404 (= call!124408 (++!6001 e!1280983 (ite c!328172 lt!761588 call!124412)))))

(declare-fun b!2027930 () Bool)

(assert (=> b!2027930 (= e!1280980 (++!6001 call!124408 lt!761588))))

(declare-fun bm!124405 () Bool)

(assert (=> bm!124405 (= call!124410 (charsOf!2530 (ite c!328172 (h!27604 (t!190008 tokens!598)) (ite c!328169 separatorToken!354 (h!27604 (t!190008 tokens!598))))))))

(declare-fun b!2027931 () Bool)

(assert (=> b!2027931 (= e!1280982 Nil!22201)))

(declare-fun b!2027932 () Bool)

(assert (=> b!2027932 (= e!1280983 (list!9061 (charsOf!2530 (h!27604 (t!190008 tokens!598)))))))

(declare-fun bm!124406 () Bool)

(assert (=> bm!124406 (= call!124412 call!124409)))

(declare-fun bm!124407 () Bool)

(assert (=> bm!124407 (= call!124411 call!124410)))

(assert (= (and d!620142 c!328171) b!2027929))

(assert (= (and d!620142 (not c!328171)) b!2027931))

(assert (= (and b!2027929 c!328172) b!2027925))

(assert (= (and b!2027929 (not c!328172)) b!2027926))

(assert (= (and b!2027926 c!328169) b!2027930))

(assert (= (and b!2027926 (not c!328169)) b!2027928))

(assert (= (or b!2027930 b!2027928) bm!124407))

(assert (= (or b!2027930 b!2027928) bm!124406))

(assert (= (or b!2027925 bm!124407) bm!124405))

(assert (= (or b!2027925 bm!124406) bm!124403))

(assert (= (or b!2027925 b!2027930) bm!124404))

(assert (= (and bm!124404 c!328170) b!2027927))

(assert (= (and bm!124404 (not c!328170)) b!2027932))

(declare-fun m!2466987 () Bool)

(assert (=> b!2027929 m!2466987))

(declare-fun m!2466989 () Bool)

(assert (=> b!2027929 m!2466989))

(assert (=> b!2027929 m!2466987))

(declare-fun m!2466991 () Bool)

(assert (=> b!2027929 m!2466991))

(declare-fun m!2466993 () Bool)

(assert (=> b!2027929 m!2466993))

(declare-fun m!2466995 () Bool)

(assert (=> b!2027929 m!2466995))

(declare-fun m!2466997 () Bool)

(assert (=> b!2027929 m!2466997))

(assert (=> b!2027929 m!2466989))

(assert (=> b!2027929 m!2466993))

(declare-fun m!2466999 () Bool)

(assert (=> bm!124404 m!2466999))

(assert (=> b!2027932 m!2466987))

(assert (=> b!2027932 m!2466987))

(assert (=> b!2027932 m!2466989))

(declare-fun m!2467001 () Bool)

(assert (=> b!2027928 m!2467001))

(assert (=> b!2027928 m!2467001))

(declare-fun m!2467003 () Bool)

(assert (=> b!2027928 m!2467003))

(assert (=> b!2027928 m!2467001))

(declare-fun m!2467005 () Bool)

(assert (=> b!2027928 m!2467005))

(declare-fun m!2467007 () Bool)

(assert (=> b!2027928 m!2467007))

(declare-fun m!2467009 () Bool)

(assert (=> b!2027930 m!2467009))

(declare-fun m!2467011 () Bool)

(assert (=> bm!124403 m!2467011))

(declare-fun m!2467013 () Bool)

(assert (=> bm!124405 m!2467013))

(assert (=> b!2027143 d!620142))

(declare-fun d!620180 () Bool)

(assert (=> d!620180 (= (list!9061 (charsOf!2530 separatorToken!354)) (list!9065 (c!328014 (charsOf!2530 separatorToken!354))))))

(declare-fun bs!420763 () Bool)

(assert (= bs!420763 d!620180))

(declare-fun m!2467015 () Bool)

(assert (=> bs!420763 m!2467015))

(assert (=> b!2027143 d!620180))

(declare-fun call!124415 () Option!4664)

(declare-fun bm!124410 () Bool)

(declare-fun maxPrefixOneRule!1265 (LexerInterface!3603 Rule!7780 List!22283) Option!4664)

(assert (=> bm!124410 (= call!124415 (maxPrefixOneRule!1265 thiss!23328 (h!27603 rules!3198) lt!761329))))

(declare-fun b!2027955 () Bool)

(declare-fun e!1280995 () Bool)

(declare-fun e!1280994 () Bool)

(assert (=> b!2027955 (= e!1280995 e!1280994)))

(declare-fun res!889262 () Bool)

(assert (=> b!2027955 (=> (not res!889262) (not e!1280994))))

(declare-fun lt!761601 () Option!4664)

(assert (=> b!2027955 (= res!889262 (isDefined!3952 lt!761601))))

(declare-fun b!2027956 () Bool)

(declare-fun e!1280993 () Option!4664)

(declare-fun lt!761603 () Option!4664)

(declare-fun lt!761604 () Option!4664)

(assert (=> b!2027956 (= e!1280993 (ite (and ((_ is None!4663) lt!761603) ((_ is None!4663) lt!761604)) None!4663 (ite ((_ is None!4663) lt!761604) lt!761603 (ite ((_ is None!4663) lt!761603) lt!761604 (ite (>= (size!17340 (_1!11909 (v!26980 lt!761603))) (size!17340 (_1!11909 (v!26980 lt!761604)))) lt!761603 lt!761604)))))))

(assert (=> b!2027956 (= lt!761603 call!124415)))

(assert (=> b!2027956 (= lt!761604 (maxPrefix!2039 thiss!23328 (t!190007 rules!3198) lt!761329))))

(declare-fun b!2027957 () Bool)

(declare-fun res!889259 () Bool)

(assert (=> b!2027957 (=> (not res!889259) (not e!1280994))))

(assert (=> b!2027957 (= res!889259 (matchR!2681 (regex!3990 (rule!6219 (_1!11909 (get!7050 lt!761601)))) (list!9061 (charsOf!2530 (_1!11909 (get!7050 lt!761601))))))))

(declare-fun b!2027958 () Bool)

(assert (=> b!2027958 (= e!1280994 (contains!4095 rules!3198 (rule!6219 (_1!11909 (get!7050 lt!761601)))))))

(declare-fun b!2027959 () Bool)

(declare-fun res!889260 () Bool)

(assert (=> b!2027959 (=> (not res!889260) (not e!1280994))))

(assert (=> b!2027959 (= res!889260 (< (size!17345 (_2!11909 (get!7050 lt!761601))) (size!17345 lt!761329)))))

(declare-fun b!2027960 () Bool)

(declare-fun res!889257 () Bool)

(assert (=> b!2027960 (=> (not res!889257) (not e!1280994))))

(assert (=> b!2027960 (= res!889257 (= (++!6001 (list!9061 (charsOf!2530 (_1!11909 (get!7050 lt!761601)))) (_2!11909 (get!7050 lt!761601))) lt!761329))))

(declare-fun b!2027954 () Bool)

(declare-fun res!889256 () Bool)

(assert (=> b!2027954 (=> (not res!889256) (not e!1280994))))

(assert (=> b!2027954 (= res!889256 (= (list!9061 (charsOf!2530 (_1!11909 (get!7050 lt!761601)))) (originalCharacters!4797 (_1!11909 (get!7050 lt!761601)))))))

(declare-fun d!620182 () Bool)

(assert (=> d!620182 e!1280995))

(declare-fun res!889258 () Bool)

(assert (=> d!620182 (=> res!889258 e!1280995)))

(declare-fun isEmpty!13852 (Option!4664) Bool)

(assert (=> d!620182 (= res!889258 (isEmpty!13852 lt!761601))))

(assert (=> d!620182 (= lt!761601 e!1280993)))

(declare-fun c!328175 () Bool)

(assert (=> d!620182 (= c!328175 (and ((_ is Cons!22202) rules!3198) ((_ is Nil!22202) (t!190007 rules!3198))))))

(declare-fun lt!761600 () Unit!36856)

(declare-fun lt!761602 () Unit!36856)

(assert (=> d!620182 (= lt!761600 lt!761602)))

(declare-fun isPrefix!1983 (List!22283 List!22283) Bool)

(assert (=> d!620182 (isPrefix!1983 lt!761329 lt!761329)))

(declare-fun lemmaIsPrefixRefl!1301 (List!22283 List!22283) Unit!36856)

(assert (=> d!620182 (= lt!761602 (lemmaIsPrefixRefl!1301 lt!761329 lt!761329))))

(declare-fun rulesValidInductive!1382 (LexerInterface!3603 List!22284) Bool)

(assert (=> d!620182 (rulesValidInductive!1382 thiss!23328 rules!3198)))

(assert (=> d!620182 (= (maxPrefix!2039 thiss!23328 rules!3198 lt!761329) lt!761601)))

(declare-fun b!2027961 () Bool)

(declare-fun res!889261 () Bool)

(assert (=> b!2027961 (=> (not res!889261) (not e!1280994))))

(declare-fun apply!5845 (TokenValueInjection!7836 BalanceConc!14668) TokenValue!4126)

(assert (=> b!2027961 (= res!889261 (= (value!125306 (_1!11909 (get!7050 lt!761601))) (apply!5845 (transformation!3990 (rule!6219 (_1!11909 (get!7050 lt!761601)))) (seqFromList!2844 (originalCharacters!4797 (_1!11909 (get!7050 lt!761601)))))))))

(declare-fun b!2027962 () Bool)

(assert (=> b!2027962 (= e!1280993 call!124415)))

(assert (= (and d!620182 c!328175) b!2027962))

(assert (= (and d!620182 (not c!328175)) b!2027956))

(assert (= (or b!2027962 b!2027956) bm!124410))

(assert (= (and d!620182 (not res!889258)) b!2027955))

(assert (= (and b!2027955 res!889262) b!2027954))

(assert (= (and b!2027954 res!889256) b!2027959))

(assert (= (and b!2027959 res!889260) b!2027960))

(assert (= (and b!2027960 res!889257) b!2027961))

(assert (= (and b!2027961 res!889261) b!2027957))

(assert (= (and b!2027957 res!889259) b!2027958))

(declare-fun m!2467017 () Bool)

(assert (=> b!2027958 m!2467017))

(declare-fun m!2467019 () Bool)

(assert (=> b!2027958 m!2467019))

(assert (=> b!2027957 m!2467017))

(declare-fun m!2467021 () Bool)

(assert (=> b!2027957 m!2467021))

(assert (=> b!2027957 m!2467021))

(declare-fun m!2467023 () Bool)

(assert (=> b!2027957 m!2467023))

(assert (=> b!2027957 m!2467023))

(declare-fun m!2467025 () Bool)

(assert (=> b!2027957 m!2467025))

(assert (=> b!2027960 m!2467017))

(assert (=> b!2027960 m!2467021))

(assert (=> b!2027960 m!2467021))

(assert (=> b!2027960 m!2467023))

(assert (=> b!2027960 m!2467023))

(declare-fun m!2467027 () Bool)

(assert (=> b!2027960 m!2467027))

(assert (=> b!2027959 m!2467017))

(declare-fun m!2467029 () Bool)

(assert (=> b!2027959 m!2467029))

(assert (=> b!2027959 m!2466551))

(declare-fun m!2467031 () Bool)

(assert (=> d!620182 m!2467031))

(declare-fun m!2467033 () Bool)

(assert (=> d!620182 m!2467033))

(declare-fun m!2467035 () Bool)

(assert (=> d!620182 m!2467035))

(declare-fun m!2467037 () Bool)

(assert (=> d!620182 m!2467037))

(assert (=> b!2027961 m!2467017))

(declare-fun m!2467039 () Bool)

(assert (=> b!2027961 m!2467039))

(assert (=> b!2027961 m!2467039))

(declare-fun m!2467041 () Bool)

(assert (=> b!2027961 m!2467041))

(declare-fun m!2467043 () Bool)

(assert (=> b!2027956 m!2467043))

(assert (=> b!2027954 m!2467017))

(assert (=> b!2027954 m!2467021))

(assert (=> b!2027954 m!2467021))

(assert (=> b!2027954 m!2467023))

(declare-fun m!2467045 () Bool)

(assert (=> b!2027955 m!2467045))

(declare-fun m!2467047 () Bool)

(assert (=> bm!124410 m!2467047))

(assert (=> b!2027143 d!620182))

(declare-fun call!124416 () Option!4664)

(declare-fun bm!124411 () Bool)

(assert (=> bm!124411 (= call!124416 (maxPrefixOneRule!1265 thiss!23328 (h!27603 rules!3198) (++!6001 lt!761329 lt!761331)))))

(declare-fun b!2027964 () Bool)

(declare-fun e!1280998 () Bool)

(declare-fun e!1280997 () Bool)

(assert (=> b!2027964 (= e!1280998 e!1280997)))

(declare-fun res!889269 () Bool)

(assert (=> b!2027964 (=> (not res!889269) (not e!1280997))))

(declare-fun lt!761606 () Option!4664)

(assert (=> b!2027964 (= res!889269 (isDefined!3952 lt!761606))))

(declare-fun b!2027965 () Bool)

(declare-fun e!1280996 () Option!4664)

(declare-fun lt!761608 () Option!4664)

(declare-fun lt!761609 () Option!4664)

(assert (=> b!2027965 (= e!1280996 (ite (and ((_ is None!4663) lt!761608) ((_ is None!4663) lt!761609)) None!4663 (ite ((_ is None!4663) lt!761609) lt!761608 (ite ((_ is None!4663) lt!761608) lt!761609 (ite (>= (size!17340 (_1!11909 (v!26980 lt!761608))) (size!17340 (_1!11909 (v!26980 lt!761609)))) lt!761608 lt!761609)))))))

(assert (=> b!2027965 (= lt!761608 call!124416)))

(assert (=> b!2027965 (= lt!761609 (maxPrefix!2039 thiss!23328 (t!190007 rules!3198) (++!6001 lt!761329 lt!761331)))))

(declare-fun b!2027966 () Bool)

(declare-fun res!889266 () Bool)

(assert (=> b!2027966 (=> (not res!889266) (not e!1280997))))

(assert (=> b!2027966 (= res!889266 (matchR!2681 (regex!3990 (rule!6219 (_1!11909 (get!7050 lt!761606)))) (list!9061 (charsOf!2530 (_1!11909 (get!7050 lt!761606))))))))

(declare-fun b!2027967 () Bool)

(assert (=> b!2027967 (= e!1280997 (contains!4095 rules!3198 (rule!6219 (_1!11909 (get!7050 lt!761606)))))))

(declare-fun b!2027968 () Bool)

(declare-fun res!889267 () Bool)

(assert (=> b!2027968 (=> (not res!889267) (not e!1280997))))

(assert (=> b!2027968 (= res!889267 (< (size!17345 (_2!11909 (get!7050 lt!761606))) (size!17345 (++!6001 lt!761329 lt!761331))))))

(declare-fun b!2027969 () Bool)

(declare-fun res!889264 () Bool)

(assert (=> b!2027969 (=> (not res!889264) (not e!1280997))))

(assert (=> b!2027969 (= res!889264 (= (++!6001 (list!9061 (charsOf!2530 (_1!11909 (get!7050 lt!761606)))) (_2!11909 (get!7050 lt!761606))) (++!6001 lt!761329 lt!761331)))))

(declare-fun b!2027963 () Bool)

(declare-fun res!889263 () Bool)

(assert (=> b!2027963 (=> (not res!889263) (not e!1280997))))

(assert (=> b!2027963 (= res!889263 (= (list!9061 (charsOf!2530 (_1!11909 (get!7050 lt!761606)))) (originalCharacters!4797 (_1!11909 (get!7050 lt!761606)))))))

(declare-fun d!620184 () Bool)

(assert (=> d!620184 e!1280998))

(declare-fun res!889265 () Bool)

(assert (=> d!620184 (=> res!889265 e!1280998)))

(assert (=> d!620184 (= res!889265 (isEmpty!13852 lt!761606))))

(assert (=> d!620184 (= lt!761606 e!1280996)))

(declare-fun c!328176 () Bool)

(assert (=> d!620184 (= c!328176 (and ((_ is Cons!22202) rules!3198) ((_ is Nil!22202) (t!190007 rules!3198))))))

(declare-fun lt!761605 () Unit!36856)

(declare-fun lt!761607 () Unit!36856)

(assert (=> d!620184 (= lt!761605 lt!761607)))

(assert (=> d!620184 (isPrefix!1983 (++!6001 lt!761329 lt!761331) (++!6001 lt!761329 lt!761331))))

(assert (=> d!620184 (= lt!761607 (lemmaIsPrefixRefl!1301 (++!6001 lt!761329 lt!761331) (++!6001 lt!761329 lt!761331)))))

(assert (=> d!620184 (rulesValidInductive!1382 thiss!23328 rules!3198)))

(assert (=> d!620184 (= (maxPrefix!2039 thiss!23328 rules!3198 (++!6001 lt!761329 lt!761331)) lt!761606)))

(declare-fun b!2027970 () Bool)

(declare-fun res!889268 () Bool)

(assert (=> b!2027970 (=> (not res!889268) (not e!1280997))))

(assert (=> b!2027970 (= res!889268 (= (value!125306 (_1!11909 (get!7050 lt!761606))) (apply!5845 (transformation!3990 (rule!6219 (_1!11909 (get!7050 lt!761606)))) (seqFromList!2844 (originalCharacters!4797 (_1!11909 (get!7050 lt!761606)))))))))

(declare-fun b!2027971 () Bool)

(assert (=> b!2027971 (= e!1280996 call!124416)))

(assert (= (and d!620184 c!328176) b!2027971))

(assert (= (and d!620184 (not c!328176)) b!2027965))

(assert (= (or b!2027971 b!2027965) bm!124411))

(assert (= (and d!620184 (not res!889265)) b!2027964))

(assert (= (and b!2027964 res!889269) b!2027963))

(assert (= (and b!2027963 res!889263) b!2027968))

(assert (= (and b!2027968 res!889267) b!2027969))

(assert (= (and b!2027969 res!889264) b!2027970))

(assert (= (and b!2027970 res!889268) b!2027966))

(assert (= (and b!2027966 res!889266) b!2027967))

(declare-fun m!2467049 () Bool)

(assert (=> b!2027967 m!2467049))

(declare-fun m!2467051 () Bool)

(assert (=> b!2027967 m!2467051))

(assert (=> b!2027966 m!2467049))

(declare-fun m!2467053 () Bool)

(assert (=> b!2027966 m!2467053))

(assert (=> b!2027966 m!2467053))

(declare-fun m!2467055 () Bool)

(assert (=> b!2027966 m!2467055))

(assert (=> b!2027966 m!2467055))

(declare-fun m!2467057 () Bool)

(assert (=> b!2027966 m!2467057))

(assert (=> b!2027969 m!2467049))

(assert (=> b!2027969 m!2467053))

(assert (=> b!2027969 m!2467053))

(assert (=> b!2027969 m!2467055))

(assert (=> b!2027969 m!2467055))

(declare-fun m!2467059 () Bool)

(assert (=> b!2027969 m!2467059))

(assert (=> b!2027968 m!2467049))

(declare-fun m!2467061 () Bool)

(assert (=> b!2027968 m!2467061))

(assert (=> b!2027968 m!2466001))

(declare-fun m!2467063 () Bool)

(assert (=> b!2027968 m!2467063))

(declare-fun m!2467065 () Bool)

(assert (=> d!620184 m!2467065))

(assert (=> d!620184 m!2466001))

(assert (=> d!620184 m!2466001))

(declare-fun m!2467067 () Bool)

(assert (=> d!620184 m!2467067))

(assert (=> d!620184 m!2466001))

(assert (=> d!620184 m!2466001))

(declare-fun m!2467069 () Bool)

(assert (=> d!620184 m!2467069))

(assert (=> d!620184 m!2467037))

(assert (=> b!2027970 m!2467049))

(declare-fun m!2467071 () Bool)

(assert (=> b!2027970 m!2467071))

(assert (=> b!2027970 m!2467071))

(declare-fun m!2467073 () Bool)

(assert (=> b!2027970 m!2467073))

(assert (=> b!2027965 m!2466001))

(declare-fun m!2467075 () Bool)

(assert (=> b!2027965 m!2467075))

(assert (=> b!2027963 m!2467049))

(assert (=> b!2027963 m!2467053))

(assert (=> b!2027963 m!2467053))

(assert (=> b!2027963 m!2467055))

(declare-fun m!2467077 () Bool)

(assert (=> b!2027964 m!2467077))

(assert (=> bm!124411 m!2466001))

(declare-fun m!2467079 () Bool)

(assert (=> bm!124411 m!2467079))

(assert (=> b!2027143 d!620184))

(declare-fun d!620186 () Bool)

(declare-fun e!1281000 () Bool)

(assert (=> d!620186 e!1281000))

(declare-fun res!889271 () Bool)

(assert (=> d!620186 (=> (not res!889271) (not e!1281000))))

(declare-fun lt!761610 () List!22283)

(assert (=> d!620186 (= res!889271 (= (content!3275 lt!761610) ((_ map or) (content!3275 lt!761329) (content!3275 lt!761331))))))

(declare-fun e!1280999 () List!22283)

(assert (=> d!620186 (= lt!761610 e!1280999)))

(declare-fun c!328177 () Bool)

(assert (=> d!620186 (= c!328177 ((_ is Nil!22201) lt!761329))))

(assert (=> d!620186 (= (++!6001 lt!761329 lt!761331) lt!761610)))

(declare-fun b!2027974 () Bool)

(declare-fun res!889270 () Bool)

(assert (=> b!2027974 (=> (not res!889270) (not e!1281000))))

(assert (=> b!2027974 (= res!889270 (= (size!17345 lt!761610) (+ (size!17345 lt!761329) (size!17345 lt!761331))))))

(declare-fun b!2027972 () Bool)

(assert (=> b!2027972 (= e!1280999 lt!761331)))

(declare-fun b!2027975 () Bool)

(assert (=> b!2027975 (= e!1281000 (or (not (= lt!761331 Nil!22201)) (= lt!761610 lt!761329)))))

(declare-fun b!2027973 () Bool)

(assert (=> b!2027973 (= e!1280999 (Cons!22201 (h!27602 lt!761329) (++!6001 (t!190006 lt!761329) lt!761331)))))

(assert (= (and d!620186 c!328177) b!2027972))

(assert (= (and d!620186 (not c!328177)) b!2027973))

(assert (= (and d!620186 res!889271) b!2027974))

(assert (= (and b!2027974 res!889270) b!2027975))

(declare-fun m!2467081 () Bool)

(assert (=> d!620186 m!2467081))

(assert (=> d!620186 m!2466545))

(assert (=> d!620186 m!2466581))

(declare-fun m!2467083 () Bool)

(assert (=> b!2027974 m!2467083))

(assert (=> b!2027974 m!2466551))

(assert (=> b!2027974 m!2466587))

(declare-fun m!2467085 () Bool)

(assert (=> b!2027973 m!2467085))

(assert (=> b!2027143 d!620186))

(declare-fun d!620188 () Bool)

(assert (=> d!620188 (= (isDefined!3951 lt!761314) (not (isEmpty!13851 lt!761314)))))

(declare-fun bs!420764 () Bool)

(assert (= bs!420764 d!620188))

(declare-fun m!2467087 () Bool)

(assert (=> bs!420764 m!2467087))

(assert (=> b!2027143 d!620188))

(declare-fun b!2027988 () Bool)

(declare-fun e!1281009 () Bool)

(declare-fun lt!761617 () Option!4663)

(assert (=> b!2027988 (= e!1281009 (= (tag!4474 (get!7049 lt!761617)) (tag!4474 (rule!6219 separatorToken!354))))))

(declare-fun b!2027989 () Bool)

(declare-fun e!1281011 () Bool)

(assert (=> b!2027989 (= e!1281011 e!1281009)))

(declare-fun res!889277 () Bool)

(assert (=> b!2027989 (=> (not res!889277) (not e!1281009))))

(assert (=> b!2027989 (= res!889277 (contains!4095 rules!3198 (get!7049 lt!761617)))))

(declare-fun b!2027990 () Bool)

(declare-fun e!1281012 () Option!4663)

(declare-fun e!1281010 () Option!4663)

(assert (=> b!2027990 (= e!1281012 e!1281010)))

(declare-fun c!328182 () Bool)

(assert (=> b!2027990 (= c!328182 (and ((_ is Cons!22202) rules!3198) (not (= (tag!4474 (h!27603 rules!3198)) (tag!4474 (rule!6219 separatorToken!354))))))))

(declare-fun b!2027991 () Bool)

(declare-fun lt!761618 () Unit!36856)

(declare-fun lt!761619 () Unit!36856)

(assert (=> b!2027991 (= lt!761618 lt!761619)))

(assert (=> b!2027991 (rulesInvariant!3210 thiss!23328 (t!190007 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!308 (LexerInterface!3603 Rule!7780 List!22284) Unit!36856)

(assert (=> b!2027991 (= lt!761619 (lemmaInvariantOnRulesThenOnTail!308 thiss!23328 (h!27603 rules!3198) (t!190007 rules!3198)))))

(assert (=> b!2027991 (= e!1281010 (getRuleFromTag!805 thiss!23328 (t!190007 rules!3198) (tag!4474 (rule!6219 separatorToken!354))))))

(declare-fun b!2027993 () Bool)

(assert (=> b!2027993 (= e!1281010 None!4662)))

(declare-fun d!620190 () Bool)

(assert (=> d!620190 e!1281011))

(declare-fun res!889276 () Bool)

(assert (=> d!620190 (=> res!889276 e!1281011)))

(assert (=> d!620190 (= res!889276 (isEmpty!13851 lt!761617))))

(assert (=> d!620190 (= lt!761617 e!1281012)))

(declare-fun c!328183 () Bool)

(assert (=> d!620190 (= c!328183 (and ((_ is Cons!22202) rules!3198) (= (tag!4474 (h!27603 rules!3198)) (tag!4474 (rule!6219 separatorToken!354)))))))

(assert (=> d!620190 (rulesInvariant!3210 thiss!23328 rules!3198)))

(assert (=> d!620190 (= (getRuleFromTag!805 thiss!23328 rules!3198 (tag!4474 (rule!6219 separatorToken!354))) lt!761617)))

(declare-fun b!2027992 () Bool)

(assert (=> b!2027992 (= e!1281012 (Some!4662 (h!27603 rules!3198)))))

(assert (= (and d!620190 c!328183) b!2027992))

(assert (= (and d!620190 (not c!328183)) b!2027990))

(assert (= (and b!2027990 c!328182) b!2027991))

(assert (= (and b!2027990 (not c!328182)) b!2027993))

(assert (= (and d!620190 (not res!889276)) b!2027989))

(assert (= (and b!2027989 res!889277) b!2027988))

(declare-fun m!2467089 () Bool)

(assert (=> b!2027988 m!2467089))

(assert (=> b!2027989 m!2467089))

(assert (=> b!2027989 m!2467089))

(declare-fun m!2467091 () Bool)

(assert (=> b!2027989 m!2467091))

(declare-fun m!2467093 () Bool)

(assert (=> b!2027991 m!2467093))

(declare-fun m!2467095 () Bool)

(assert (=> b!2027991 m!2467095))

(declare-fun m!2467097 () Bool)

(assert (=> b!2027991 m!2467097))

(declare-fun m!2467099 () Bool)

(assert (=> d!620190 m!2467099))

(assert (=> d!620190 m!2466041))

(assert (=> b!2027143 d!620190))

(declare-fun d!620192 () Bool)

(declare-fun lt!761622 () BalanceConc!14668)

(assert (=> d!620192 (= (list!9061 lt!761622) (originalCharacters!4797 (h!27604 tokens!598)))))

(assert (=> d!620192 (= lt!761622 (dynLambda!11029 (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (value!125306 (h!27604 tokens!598))))))

(assert (=> d!620192 (= (charsOf!2530 (h!27604 tokens!598)) lt!761622)))

(declare-fun b_lambda!68219 () Bool)

(assert (=> (not b_lambda!68219) (not d!620192)))

(assert (=> d!620192 t!190052))

(declare-fun b_and!161365 () Bool)

(assert (= b_and!161333 (and (=> t!190052 result!152898) b_and!161365)))

(assert (=> d!620192 t!190054))

(declare-fun b_and!161367 () Bool)

(assert (= b_and!161335 (and (=> t!190054 result!152900) b_and!161367)))

(assert (=> d!620192 t!190056))

(declare-fun b_and!161369 () Bool)

(assert (= b_and!161337 (and (=> t!190056 result!152902) b_and!161369)))

(declare-fun m!2467101 () Bool)

(assert (=> d!620192 m!2467101))

(assert (=> d!620192 m!2466779))

(assert (=> b!2027143 d!620192))

(declare-fun d!620194 () Bool)

(assert (=> d!620194 (= (seqFromList!2844 (originalCharacters!4797 (h!27604 tokens!598))) (fromListB!1279 (originalCharacters!4797 (h!27604 tokens!598))))))

(declare-fun bs!420765 () Bool)

(assert (= bs!420765 d!620194))

(declare-fun m!2467103 () Bool)

(assert (=> bs!420765 m!2467103))

(assert (=> b!2027143 d!620194))

(declare-fun d!620196 () Bool)

(assert (=> d!620196 (= (list!9061 lt!761330) (list!9065 (c!328014 lt!761330)))))

(declare-fun bs!420766 () Bool)

(assert (= bs!420766 d!620196))

(declare-fun m!2467105 () Bool)

(assert (=> bs!420766 m!2467105))

(assert (=> b!2027143 d!620196))

(declare-fun d!620198 () Bool)

(declare-fun lt!761623 () BalanceConc!14668)

(assert (=> d!620198 (= (list!9061 lt!761623) (originalCharacters!4797 separatorToken!354))))

(assert (=> d!620198 (= lt!761623 (dynLambda!11029 (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))) (value!125306 separatorToken!354)))))

(assert (=> d!620198 (= (charsOf!2530 separatorToken!354) lt!761623)))

(declare-fun b_lambda!68221 () Bool)

(assert (=> (not b_lambda!68221) (not d!620198)))

(assert (=> d!620198 t!190046))

(declare-fun b_and!161371 () Bool)

(assert (= b_and!161365 (and (=> t!190046 result!152890) b_and!161371)))

(assert (=> d!620198 t!190048))

(declare-fun b_and!161373 () Bool)

(assert (= b_and!161367 (and (=> t!190048 result!152894) b_and!161373)))

(assert (=> d!620198 t!190050))

(declare-fun b_and!161375 () Bool)

(assert (= b_and!161369 (and (=> t!190050 result!152896) b_and!161375)))

(declare-fun m!2467107 () Bool)

(assert (=> d!620198 m!2467107))

(assert (=> d!620198 m!2466729))

(assert (=> b!2027143 d!620198))

(declare-fun d!620200 () Bool)

(declare-fun e!1281013 () Bool)

(assert (=> d!620200 e!1281013))

(declare-fun res!889278 () Bool)

(assert (=> d!620200 (=> (not res!889278) (not e!1281013))))

(assert (=> d!620200 (= res!889278 (isDefined!3951 (getRuleFromTag!805 thiss!23328 rules!3198 (tag!4474 (rule!6219 (h!27604 tokens!598))))))))

(declare-fun lt!761624 () Unit!36856)

(assert (=> d!620200 (= lt!761624 (choose!12362 thiss!23328 rules!3198 lt!761329 (h!27604 tokens!598)))))

(assert (=> d!620200 (rulesInvariant!3210 thiss!23328 rules!3198)))

(assert (=> d!620200 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!805 thiss!23328 rules!3198 lt!761329 (h!27604 tokens!598)) lt!761624)))

(declare-fun b!2027994 () Bool)

(declare-fun res!889279 () Bool)

(assert (=> b!2027994 (=> (not res!889279) (not e!1281013))))

(assert (=> b!2027994 (= res!889279 (matchR!2681 (regex!3990 (get!7049 (getRuleFromTag!805 thiss!23328 rules!3198 (tag!4474 (rule!6219 (h!27604 tokens!598)))))) (list!9061 (charsOf!2530 (h!27604 tokens!598)))))))

(declare-fun b!2027995 () Bool)

(assert (=> b!2027995 (= e!1281013 (= (rule!6219 (h!27604 tokens!598)) (get!7049 (getRuleFromTag!805 thiss!23328 rules!3198 (tag!4474 (rule!6219 (h!27604 tokens!598)))))))))

(assert (= (and d!620200 res!889278) b!2027994))

(assert (= (and b!2027994 res!889279) b!2027995))

(assert (=> d!620200 m!2466027))

(assert (=> d!620200 m!2466027))

(declare-fun m!2467109 () Bool)

(assert (=> d!620200 m!2467109))

(declare-fun m!2467111 () Bool)

(assert (=> d!620200 m!2467111))

(assert (=> d!620200 m!2466041))

(assert (=> b!2027994 m!2466015))

(declare-fun m!2467113 () Bool)

(assert (=> b!2027994 m!2467113))

(assert (=> b!2027994 m!2466027))

(assert (=> b!2027994 m!2467113))

(declare-fun m!2467115 () Bool)

(assert (=> b!2027994 m!2467115))

(assert (=> b!2027994 m!2466015))

(assert (=> b!2027994 m!2466027))

(declare-fun m!2467117 () Bool)

(assert (=> b!2027994 m!2467117))

(assert (=> b!2027995 m!2466027))

(assert (=> b!2027995 m!2466027))

(assert (=> b!2027995 m!2467117))

(assert (=> b!2027143 d!620200))

(declare-fun b!2028000 () Bool)

(declare-fun e!1281016 () Bool)

(assert (=> b!2028000 (= e!1281016 true)))

(declare-fun d!620202 () Bool)

(assert (=> d!620202 e!1281016))

(assert (= d!620202 b!2028000))

(declare-fun order!14215 () Int)

(declare-fun lambda!76477 () Int)

(declare-fun dynLambda!11036 (Int Int) Int)

(assert (=> b!2028000 (< (dynLambda!11026 order!14203 (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) (dynLambda!11036 order!14215 lambda!76477))))

(assert (=> b!2028000 (< (dynLambda!11028 order!14207 (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) (dynLambda!11036 order!14215 lambda!76477))))

(assert (=> d!620202 (= (list!9061 (dynLambda!11029 (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (dynLambda!11035 (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) lt!761330))) (list!9061 lt!761330))))

(declare-fun lt!761627 () Unit!36856)

(declare-fun ForallOf!447 (Int BalanceConc!14668) Unit!36856)

(assert (=> d!620202 (= lt!761627 (ForallOf!447 lambda!76477 lt!761330))))

(assert (=> d!620202 (= (lemmaSemiInverse!947 (transformation!3990 (rule!6219 (h!27604 tokens!598))) lt!761330) lt!761627)))

(declare-fun b_lambda!68223 () Bool)

(assert (=> (not b_lambda!68223) (not d!620202)))

(declare-fun tb!127815 () Bool)

(declare-fun t!190096 () Bool)

(assert (=> (and b!2027153 (= (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190096) tb!127815))

(declare-fun tp!603078 () Bool)

(declare-fun b!2028001 () Bool)

(declare-fun e!1281017 () Bool)

(assert (=> b!2028001 (= e!1281017 (and (inv!29384 (c!328014 (dynLambda!11029 (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (dynLambda!11035 (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) lt!761330)))) tp!603078))))

(declare-fun result!152946 () Bool)

(assert (=> tb!127815 (= result!152946 (and (inv!29385 (dynLambda!11029 (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (dynLambda!11035 (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) lt!761330))) e!1281017))))

(assert (= tb!127815 b!2028001))

(declare-fun m!2467119 () Bool)

(assert (=> b!2028001 m!2467119))

(declare-fun m!2467121 () Bool)

(assert (=> tb!127815 m!2467121))

(assert (=> d!620202 t!190096))

(declare-fun b_and!161377 () Bool)

(assert (= b_and!161371 (and (=> t!190096 result!152946) b_and!161377)))

(declare-fun t!190098 () Bool)

(declare-fun tb!127817 () Bool)

(assert (=> (and b!2027157 (= (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190098) tb!127817))

(declare-fun result!152948 () Bool)

(assert (= result!152948 result!152946))

(assert (=> d!620202 t!190098))

(declare-fun b_and!161379 () Bool)

(assert (= b_and!161373 (and (=> t!190098 result!152948) b_and!161379)))

(declare-fun t!190100 () Bool)

(declare-fun tb!127819 () Bool)

(assert (=> (and b!2027154 (= (toChars!5522 (transformation!3990 (h!27603 rules!3198))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190100) tb!127819))

(declare-fun result!152950 () Bool)

(assert (= result!152950 result!152946))

(assert (=> d!620202 t!190100))

(declare-fun b_and!161381 () Bool)

(assert (= b_and!161375 (and (=> t!190100 result!152950) b_and!161381)))

(declare-fun b_lambda!68225 () Bool)

(assert (=> (not b_lambda!68225) (not d!620202)))

(assert (=> d!620202 t!190061))

(declare-fun b_and!161383 () Bool)

(assert (= b_and!161351 (and (=> t!190061 result!152904) b_and!161383)))

(assert (=> d!620202 t!190063))

(declare-fun b_and!161385 () Bool)

(assert (= b_and!161353 (and (=> t!190063 result!152908) b_and!161385)))

(assert (=> d!620202 t!190065))

(declare-fun b_and!161387 () Bool)

(assert (= b_and!161355 (and (=> t!190065 result!152910) b_and!161387)))

(declare-fun m!2467123 () Bool)

(assert (=> d!620202 m!2467123))

(assert (=> d!620202 m!2466021))

(assert (=> d!620202 m!2466889))

(declare-fun m!2467125 () Bool)

(assert (=> d!620202 m!2467125))

(declare-fun m!2467127 () Bool)

(assert (=> d!620202 m!2467127))

(assert (=> d!620202 m!2466889))

(assert (=> d!620202 m!2467125))

(assert (=> b!2027143 d!620202))

(declare-fun b!2028002 () Bool)

(declare-fun e!1281018 () Bool)

(declare-fun lt!761628 () Option!4663)

(assert (=> b!2028002 (= e!1281018 (= (tag!4474 (get!7049 lt!761628)) (tag!4474 (rule!6219 (h!27604 tokens!598)))))))

(declare-fun b!2028003 () Bool)

(declare-fun e!1281020 () Bool)

(assert (=> b!2028003 (= e!1281020 e!1281018)))

(declare-fun res!889281 () Bool)

(assert (=> b!2028003 (=> (not res!889281) (not e!1281018))))

(assert (=> b!2028003 (= res!889281 (contains!4095 rules!3198 (get!7049 lt!761628)))))

(declare-fun b!2028004 () Bool)

(declare-fun e!1281021 () Option!4663)

(declare-fun e!1281019 () Option!4663)

(assert (=> b!2028004 (= e!1281021 e!1281019)))

(declare-fun c!328185 () Bool)

(assert (=> b!2028004 (= c!328185 (and ((_ is Cons!22202) rules!3198) (not (= (tag!4474 (h!27603 rules!3198)) (tag!4474 (rule!6219 (h!27604 tokens!598)))))))))

(declare-fun b!2028005 () Bool)

(declare-fun lt!761629 () Unit!36856)

(declare-fun lt!761630 () Unit!36856)

(assert (=> b!2028005 (= lt!761629 lt!761630)))

(assert (=> b!2028005 (rulesInvariant!3210 thiss!23328 (t!190007 rules!3198))))

(assert (=> b!2028005 (= lt!761630 (lemmaInvariantOnRulesThenOnTail!308 thiss!23328 (h!27603 rules!3198) (t!190007 rules!3198)))))

(assert (=> b!2028005 (= e!1281019 (getRuleFromTag!805 thiss!23328 (t!190007 rules!3198) (tag!4474 (rule!6219 (h!27604 tokens!598)))))))

(declare-fun b!2028007 () Bool)

(assert (=> b!2028007 (= e!1281019 None!4662)))

(declare-fun d!620204 () Bool)

(assert (=> d!620204 e!1281020))

(declare-fun res!889280 () Bool)

(assert (=> d!620204 (=> res!889280 e!1281020)))

(assert (=> d!620204 (= res!889280 (isEmpty!13851 lt!761628))))

(assert (=> d!620204 (= lt!761628 e!1281021)))

(declare-fun c!328186 () Bool)

(assert (=> d!620204 (= c!328186 (and ((_ is Cons!22202) rules!3198) (= (tag!4474 (h!27603 rules!3198)) (tag!4474 (rule!6219 (h!27604 tokens!598))))))))

(assert (=> d!620204 (rulesInvariant!3210 thiss!23328 rules!3198)))

(assert (=> d!620204 (= (getRuleFromTag!805 thiss!23328 rules!3198 (tag!4474 (rule!6219 (h!27604 tokens!598)))) lt!761628)))

(declare-fun b!2028006 () Bool)

(assert (=> b!2028006 (= e!1281021 (Some!4662 (h!27603 rules!3198)))))

(assert (= (and d!620204 c!328186) b!2028006))

(assert (= (and d!620204 (not c!328186)) b!2028004))

(assert (= (and b!2028004 c!328185) b!2028005))

(assert (= (and b!2028004 (not c!328185)) b!2028007))

(assert (= (and d!620204 (not res!889280)) b!2028003))

(assert (= (and b!2028003 res!889281) b!2028002))

(declare-fun m!2467129 () Bool)

(assert (=> b!2028002 m!2467129))

(assert (=> b!2028003 m!2467129))

(assert (=> b!2028003 m!2467129))

(declare-fun m!2467131 () Bool)

(assert (=> b!2028003 m!2467131))

(assert (=> b!2028005 m!2467093))

(assert (=> b!2028005 m!2467095))

(declare-fun m!2467133 () Bool)

(assert (=> b!2028005 m!2467133))

(declare-fun m!2467135 () Bool)

(assert (=> d!620204 m!2467135))

(assert (=> d!620204 m!2466041))

(assert (=> b!2027143 d!620204))

(declare-fun d!620206 () Bool)

(assert (=> d!620206 (= (isDefined!3952 lt!761337) (not (isEmpty!13852 lt!761337)))))

(declare-fun bs!420767 () Bool)

(assert (= bs!420767 d!620206))

(declare-fun m!2467137 () Bool)

(assert (=> bs!420767 m!2467137))

(assert (=> b!2027143 d!620206))

(declare-fun b!2028020 () Bool)

(declare-fun e!1281024 () Bool)

(declare-fun tp!603089 () Bool)

(assert (=> b!2028020 (= e!1281024 tp!603089)))

(declare-fun b!2028018 () Bool)

(declare-fun tp_is_empty!9221 () Bool)

(assert (=> b!2028018 (= e!1281024 tp_is_empty!9221)))

(assert (=> b!2027142 (= tp!603000 e!1281024)))

(declare-fun b!2028021 () Bool)

(declare-fun tp!603093 () Bool)

(declare-fun tp!603092 () Bool)

(assert (=> b!2028021 (= e!1281024 (and tp!603093 tp!603092))))

(declare-fun b!2028019 () Bool)

(declare-fun tp!603091 () Bool)

(declare-fun tp!603090 () Bool)

(assert (=> b!2028019 (= e!1281024 (and tp!603091 tp!603090))))

(assert (= (and b!2027142 ((_ is ElementMatch!5415) (regex!3990 (h!27603 rules!3198)))) b!2028018))

(assert (= (and b!2027142 ((_ is Concat!9542) (regex!3990 (h!27603 rules!3198)))) b!2028019))

(assert (= (and b!2027142 ((_ is Star!5415) (regex!3990 (h!27603 rules!3198)))) b!2028020))

(assert (= (and b!2027142 ((_ is Union!5415) (regex!3990 (h!27603 rules!3198)))) b!2028021))

(declare-fun b!2028026 () Bool)

(declare-fun e!1281027 () Bool)

(declare-fun tp!603096 () Bool)

(assert (=> b!2028026 (= e!1281027 (and tp_is_empty!9221 tp!603096))))

(assert (=> b!2027149 (= tp!603010 e!1281027)))

(assert (= (and b!2027149 ((_ is Cons!22201) (originalCharacters!4797 separatorToken!354))) b!2028026))

(declare-fun b!2028040 () Bool)

(declare-fun b_free!56573 () Bool)

(declare-fun b_next!57277 () Bool)

(assert (=> b!2028040 (= b_free!56573 (not b_next!57277))))

(declare-fun t!190102 () Bool)

(declare-fun tb!127821 () Bool)

(assert (=> (and b!2028040 (= (toValue!5663 (transformation!3990 (rule!6219 (h!27604 (t!190008 tokens!598))))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190102) tb!127821))

(declare-fun result!152958 () Bool)

(assert (= result!152958 result!152904))

(assert (=> d!620138 t!190102))

(declare-fun t!190104 () Bool)

(declare-fun tb!127823 () Bool)

(assert (=> (and b!2028040 (= (toValue!5663 (transformation!3990 (rule!6219 (h!27604 (t!190008 tokens!598))))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190104) tb!127823))

(declare-fun result!152960 () Bool)

(assert (= result!152960 result!152912))

(assert (=> d!620138 t!190104))

(assert (=> d!620202 t!190102))

(declare-fun tp!603111 () Bool)

(declare-fun b_and!161389 () Bool)

(assert (=> b!2028040 (= tp!603111 (and (=> t!190102 result!152958) (=> t!190104 result!152960) b_and!161389))))

(declare-fun b_free!56575 () Bool)

(declare-fun b_next!57279 () Bool)

(assert (=> b!2028040 (= b_free!56575 (not b_next!57279))))

(declare-fun t!190106 () Bool)

(declare-fun tb!127825 () Bool)

(assert (=> (and b!2028040 (= (toChars!5522 (transformation!3990 (rule!6219 (h!27604 (t!190008 tokens!598))))) (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354)))) t!190106) tb!127825))

(declare-fun result!152962 () Bool)

(assert (= result!152962 result!152890))

(assert (=> d!620198 t!190106))

(declare-fun t!190108 () Bool)

(declare-fun tb!127827 () Bool)

(assert (=> (and b!2028040 (= (toChars!5522 (transformation!3990 (rule!6219 (h!27604 (t!190008 tokens!598))))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190108) tb!127827))

(declare-fun result!152964 () Bool)

(assert (= result!152964 result!152898))

(assert (=> b!2027727 t!190108))

(declare-fun t!190110 () Bool)

(declare-fun tb!127829 () Bool)

(assert (=> (and b!2028040 (= (toChars!5522 (transformation!3990 (rule!6219 (h!27604 (t!190008 tokens!598))))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190110) tb!127829))

(declare-fun result!152966 () Bool)

(assert (= result!152966 result!152946))

(assert (=> d!620202 t!190110))

(assert (=> d!620192 t!190108))

(assert (=> b!2027681 t!190106))

(declare-fun b_and!161391 () Bool)

(declare-fun tp!603110 () Bool)

(assert (=> b!2028040 (= tp!603110 (and (=> t!190108 result!152964) (=> t!190106 result!152962) (=> t!190110 result!152966) b_and!161391))))

(declare-fun tp!603108 () Bool)

(declare-fun e!1281041 () Bool)

(declare-fun b!2028037 () Bool)

(declare-fun e!1281040 () Bool)

(assert (=> b!2028037 (= e!1281041 (and (inv!29381 (h!27604 (t!190008 tokens!598))) e!1281040 tp!603108))))

(declare-fun e!1281043 () Bool)

(assert (=> b!2028040 (= e!1281043 (and tp!603111 tp!603110))))

(declare-fun tp!603109 () Bool)

(declare-fun e!1281044 () Bool)

(declare-fun b!2028038 () Bool)

(assert (=> b!2028038 (= e!1281040 (and (inv!21 (value!125306 (h!27604 (t!190008 tokens!598)))) e!1281044 tp!603109))))

(declare-fun b!2028039 () Bool)

(declare-fun tp!603107 () Bool)

(assert (=> b!2028039 (= e!1281044 (and tp!603107 (inv!29377 (tag!4474 (rule!6219 (h!27604 (t!190008 tokens!598))))) (inv!29380 (transformation!3990 (rule!6219 (h!27604 (t!190008 tokens!598))))) e!1281043))))

(assert (=> b!2027150 (= tp!603006 e!1281041)))

(assert (= b!2028039 b!2028040))

(assert (= b!2028038 b!2028039))

(assert (= b!2028037 b!2028038))

(assert (= (and b!2027150 ((_ is Cons!22203) (t!190008 tokens!598))) b!2028037))

(declare-fun m!2467139 () Bool)

(assert (=> b!2028037 m!2467139))

(declare-fun m!2467141 () Bool)

(assert (=> b!2028038 m!2467141))

(declare-fun m!2467143 () Bool)

(assert (=> b!2028039 m!2467143))

(declare-fun m!2467145 () Bool)

(assert (=> b!2028039 m!2467145))

(declare-fun b!2028041 () Bool)

(declare-fun e!1281046 () Bool)

(declare-fun tp!603112 () Bool)

(assert (=> b!2028041 (= e!1281046 (and tp_is_empty!9221 tp!603112))))

(assert (=> b!2027139 (= tp!603009 e!1281046)))

(assert (= (and b!2027139 ((_ is Cons!22201) (originalCharacters!4797 (h!27604 tokens!598)))) b!2028041))

(declare-fun b!2028052 () Bool)

(declare-fun b_free!56577 () Bool)

(declare-fun b_next!57281 () Bool)

(assert (=> b!2028052 (= b_free!56577 (not b_next!57281))))

(declare-fun t!190112 () Bool)

(declare-fun tb!127831 () Bool)

(assert (=> (and b!2028052 (= (toValue!5663 (transformation!3990 (h!27603 (t!190007 rules!3198)))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190112) tb!127831))

(declare-fun result!152970 () Bool)

(assert (= result!152970 result!152904))

(assert (=> d!620138 t!190112))

(declare-fun t!190114 () Bool)

(declare-fun tb!127833 () Bool)

(assert (=> (and b!2028052 (= (toValue!5663 (transformation!3990 (h!27603 (t!190007 rules!3198)))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190114) tb!127833))

(declare-fun result!152972 () Bool)

(assert (= result!152972 result!152912))

(assert (=> d!620138 t!190114))

(assert (=> d!620202 t!190112))

(declare-fun b_and!161393 () Bool)

(declare-fun tp!603124 () Bool)

(assert (=> b!2028052 (= tp!603124 (and (=> t!190112 result!152970) (=> t!190114 result!152972) b_and!161393))))

(declare-fun b_free!56579 () Bool)

(declare-fun b_next!57283 () Bool)

(assert (=> b!2028052 (= b_free!56579 (not b_next!57283))))

(declare-fun t!190116 () Bool)

(declare-fun tb!127835 () Bool)

(assert (=> (and b!2028052 (= (toChars!5522 (transformation!3990 (h!27603 (t!190007 rules!3198)))) (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354)))) t!190116) tb!127835))

(declare-fun result!152974 () Bool)

(assert (= result!152974 result!152890))

(assert (=> d!620198 t!190116))

(declare-fun t!190118 () Bool)

(declare-fun tb!127837 () Bool)

(assert (=> (and b!2028052 (= (toChars!5522 (transformation!3990 (h!27603 (t!190007 rules!3198)))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190118) tb!127837))

(declare-fun result!152976 () Bool)

(assert (= result!152976 result!152898))

(assert (=> b!2027727 t!190118))

(declare-fun tb!127839 () Bool)

(declare-fun t!190120 () Bool)

(assert (=> (and b!2028052 (= (toChars!5522 (transformation!3990 (h!27603 (t!190007 rules!3198)))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598))))) t!190120) tb!127839))

(declare-fun result!152978 () Bool)

(assert (= result!152978 result!152946))

(assert (=> d!620202 t!190120))

(assert (=> d!620192 t!190118))

(assert (=> b!2027681 t!190116))

(declare-fun tp!603122 () Bool)

(declare-fun b_and!161395 () Bool)

(assert (=> b!2028052 (= tp!603122 (and (=> t!190116 result!152974) (=> t!190120 result!152978) (=> t!190118 result!152976) b_and!161395))))

(declare-fun e!1281056 () Bool)

(assert (=> b!2028052 (= e!1281056 (and tp!603124 tp!603122))))

(declare-fun e!1281055 () Bool)

(declare-fun b!2028051 () Bool)

(declare-fun tp!603121 () Bool)

(assert (=> b!2028051 (= e!1281055 (and tp!603121 (inv!29377 (tag!4474 (h!27603 (t!190007 rules!3198)))) (inv!29380 (transformation!3990 (h!27603 (t!190007 rules!3198)))) e!1281056))))

(declare-fun b!2028050 () Bool)

(declare-fun e!1281058 () Bool)

(declare-fun tp!603123 () Bool)

(assert (=> b!2028050 (= e!1281058 (and e!1281055 tp!603123))))

(assert (=> b!2027135 (= tp!603002 e!1281058)))

(assert (= b!2028051 b!2028052))

(assert (= b!2028050 b!2028051))

(assert (= (and b!2027135 ((_ is Cons!22202) (t!190007 rules!3198))) b!2028050))

(declare-fun m!2467147 () Bool)

(assert (=> b!2028051 m!2467147))

(declare-fun m!2467149 () Bool)

(assert (=> b!2028051 m!2467149))

(declare-fun b!2028055 () Bool)

(declare-fun e!1281059 () Bool)

(declare-fun tp!603125 () Bool)

(assert (=> b!2028055 (= e!1281059 tp!603125)))

(declare-fun b!2028053 () Bool)

(assert (=> b!2028053 (= e!1281059 tp_is_empty!9221)))

(assert (=> b!2027134 (= tp!603004 e!1281059)))

(declare-fun b!2028056 () Bool)

(declare-fun tp!603129 () Bool)

(declare-fun tp!603128 () Bool)

(assert (=> b!2028056 (= e!1281059 (and tp!603129 tp!603128))))

(declare-fun b!2028054 () Bool)

(declare-fun tp!603127 () Bool)

(declare-fun tp!603126 () Bool)

(assert (=> b!2028054 (= e!1281059 (and tp!603127 tp!603126))))

(assert (= (and b!2027134 ((_ is ElementMatch!5415) (regex!3990 (rule!6219 separatorToken!354)))) b!2028053))

(assert (= (and b!2027134 ((_ is Concat!9542) (regex!3990 (rule!6219 separatorToken!354)))) b!2028054))

(assert (= (and b!2027134 ((_ is Star!5415) (regex!3990 (rule!6219 separatorToken!354)))) b!2028055))

(assert (= (and b!2027134 ((_ is Union!5415) (regex!3990 (rule!6219 separatorToken!354)))) b!2028056))

(declare-fun b!2028059 () Bool)

(declare-fun e!1281060 () Bool)

(declare-fun tp!603130 () Bool)

(assert (=> b!2028059 (= e!1281060 tp!603130)))

(declare-fun b!2028057 () Bool)

(assert (=> b!2028057 (= e!1281060 tp_is_empty!9221)))

(assert (=> b!2027123 (= tp!603007 e!1281060)))

(declare-fun b!2028060 () Bool)

(declare-fun tp!603134 () Bool)

(declare-fun tp!603133 () Bool)

(assert (=> b!2028060 (= e!1281060 (and tp!603134 tp!603133))))

(declare-fun b!2028058 () Bool)

(declare-fun tp!603132 () Bool)

(declare-fun tp!603131 () Bool)

(assert (=> b!2028058 (= e!1281060 (and tp!603132 tp!603131))))

(assert (= (and b!2027123 ((_ is ElementMatch!5415) (regex!3990 (rule!6219 (h!27604 tokens!598))))) b!2028057))

(assert (= (and b!2027123 ((_ is Concat!9542) (regex!3990 (rule!6219 (h!27604 tokens!598))))) b!2028058))

(assert (= (and b!2027123 ((_ is Star!5415) (regex!3990 (rule!6219 (h!27604 tokens!598))))) b!2028059))

(assert (= (and b!2027123 ((_ is Union!5415) (regex!3990 (rule!6219 (h!27604 tokens!598))))) b!2028060))

(declare-fun b_lambda!68227 () Bool)

(assert (= b_lambda!68191 (or b!2027129 b_lambda!68227)))

(declare-fun bs!420768 () Bool)

(declare-fun d!620208 () Bool)

(assert (= bs!420768 (and d!620208 b!2027129)))

(assert (=> bs!420768 (= (dynLambda!11032 lambda!76453 (h!27604 tokens!598)) (not (isSeparator!3990 (rule!6219 (h!27604 tokens!598)))))))

(assert (=> b!2027700 d!620208))

(declare-fun b_lambda!68229 () Bool)

(assert (= b_lambda!68223 (or (and b!2028040 b_free!56575 (= (toChars!5522 (transformation!3990 (rule!6219 (h!27604 (t!190008 tokens!598))))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2027154 b_free!56563 (= (toChars!5522 (transformation!3990 (h!27603 rules!3198))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2028052 b_free!56579 (= (toChars!5522 (transformation!3990 (h!27603 (t!190007 rules!3198)))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2027157 b_free!56559) (and b!2027153 b_free!56555 (= (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) b_lambda!68229)))

(declare-fun b_lambda!68231 () Bool)

(assert (= b_lambda!68197 (or (and b!2027154 b_free!56561 (= (toValue!5663 (transformation!3990 (h!27603 rules!3198))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2027153 b_free!56553 (= (toValue!5663 (transformation!3990 (rule!6219 separatorToken!354))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2028040 b_free!56573 (= (toValue!5663 (transformation!3990 (rule!6219 (h!27604 (t!190008 tokens!598))))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2027157 b_free!56557) (and b!2028052 b_free!56577 (= (toValue!5663 (transformation!3990 (h!27603 (t!190007 rules!3198)))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) b_lambda!68231)))

(declare-fun b_lambda!68233 () Bool)

(assert (= b_lambda!68189 (or (and b!2027157 b_free!56559 (= (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))))) (and b!2027154 b_free!56563 (= (toChars!5522 (transformation!3990 (h!27603 rules!3198))) (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))))) (and b!2028040 b_free!56575 (= (toChars!5522 (transformation!3990 (rule!6219 (h!27604 (t!190008 tokens!598))))) (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))))) (and b!2027153 b_free!56555) (and b!2028052 b_free!56579 (= (toChars!5522 (transformation!3990 (h!27603 (t!190007 rules!3198)))) (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))))) b_lambda!68233)))

(declare-fun b_lambda!68235 () Bool)

(assert (= b_lambda!68193 (or (and b!2028040 b_free!56575 (= (toChars!5522 (transformation!3990 (rule!6219 (h!27604 (t!190008 tokens!598))))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2027154 b_free!56563 (= (toChars!5522 (transformation!3990 (h!27603 rules!3198))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2028052 b_free!56579 (= (toChars!5522 (transformation!3990 (h!27603 (t!190007 rules!3198)))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2027157 b_free!56559) (and b!2027153 b_free!56555 (= (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) b_lambda!68235)))

(declare-fun b_lambda!68237 () Bool)

(assert (= b_lambda!68219 (or (and b!2028040 b_free!56575 (= (toChars!5522 (transformation!3990 (rule!6219 (h!27604 (t!190008 tokens!598))))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2027154 b_free!56563 (= (toChars!5522 (transformation!3990 (h!27603 rules!3198))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2028052 b_free!56579 (= (toChars!5522 (transformation!3990 (h!27603 (t!190007 rules!3198)))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2027157 b_free!56559) (and b!2027153 b_free!56555 (= (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))) (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) b_lambda!68237)))

(declare-fun b_lambda!68239 () Bool)

(assert (= b_lambda!68225 (or (and b!2027154 b_free!56561 (= (toValue!5663 (transformation!3990 (h!27603 rules!3198))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2027153 b_free!56553 (= (toValue!5663 (transformation!3990 (rule!6219 separatorToken!354))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2028040 b_free!56573 (= (toValue!5663 (transformation!3990 (rule!6219 (h!27604 (t!190008 tokens!598))))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2027157 b_free!56557) (and b!2028052 b_free!56577 (= (toValue!5663 (transformation!3990 (h!27603 (t!190007 rules!3198)))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) b_lambda!68239)))

(declare-fun b_lambda!68241 () Bool)

(assert (= b_lambda!68221 (or (and b!2027157 b_free!56559 (= (toChars!5522 (transformation!3990 (rule!6219 (h!27604 tokens!598)))) (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))))) (and b!2027154 b_free!56563 (= (toChars!5522 (transformation!3990 (h!27603 rules!3198))) (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))))) (and b!2028040 b_free!56575 (= (toChars!5522 (transformation!3990 (rule!6219 (h!27604 (t!190008 tokens!598))))) (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))))) (and b!2027153 b_free!56555) (and b!2028052 b_free!56579 (= (toChars!5522 (transformation!3990 (h!27603 (t!190007 rules!3198)))) (toChars!5522 (transformation!3990 (rule!6219 separatorToken!354))))) b_lambda!68241)))

(declare-fun b_lambda!68243 () Bool)

(assert (= b_lambda!68199 (or (and b!2027154 b_free!56561 (= (toValue!5663 (transformation!3990 (h!27603 rules!3198))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2027153 b_free!56553 (= (toValue!5663 (transformation!3990 (rule!6219 separatorToken!354))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2028040 b_free!56573 (= (toValue!5663 (transformation!3990 (rule!6219 (h!27604 (t!190008 tokens!598))))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) (and b!2027157 b_free!56557) (and b!2028052 b_free!56577 (= (toValue!5663 (transformation!3990 (h!27603 (t!190007 rules!3198)))) (toValue!5663 (transformation!3990 (rule!6219 (h!27604 tokens!598)))))) b_lambda!68243)))

(check-sat (not b!2027771) (not d!620192) (not b!2027963) (not b!2027786) b_and!161383 (not bm!124403) (not b!2028003) (not b!2027794) (not b_next!57259) (not d!620120) (not b!2027219) (not b!2028050) (not d!620000) (not d!620104) (not b!2027234) (not b!2028002) (not b_next!57279) (not b!2027633) (not b!2027666) (not b!2027928) (not b!2027714) (not b!2027964) (not b_lambda!68243) (not b!2027782) (not b!2027519) (not d!620056) (not b!2027969) (not d!620086) (not tb!127771) (not b!2027710) b_and!161391 (not b!2027662) (not d!620030) (not b_lambda!68227) (not bm!124375) (not b!2027218) (not d!619926) (not b!2027659) (not b!2027642) (not d!620002) (not b!2028060) (not d!620012) (not d!620186) (not b!2027995) (not b!2027682) (not b!2027206) (not b!2027781) (not d!620122) (not d!620202) (not d!620090) (not d!620106) (not d!620194) (not d!620094) (not b!2027701) (not d!620140) (not b!2028020) (not b!2027729) (not b!2027974) (not b!2027765) (not b_next!57277) (not b_next!57257) (not d!619938) (not b!2027991) (not b!2027705) (not d!620136) (not b!2027776) (not d!620082) (not b!2027161) (not b!2027775) (not b!2027930) (not b!2027932) (not bm!124405) (not b!2027709) (not b!2027548) (not b!2027768) (not b_next!57281) (not b!2027994) (not b!2027788) (not b!2027959) (not b!2027957) (not b!2027965) (not b_next!57263) (not b!2027559) (not b!2028021) (not bm!124404) (not b!2027545) (not tb!127789) (not b!2028026) (not b!2027671) (not b_lambda!68241) (not b!2028039) (not d!620108) (not d!620188) (not b!2027520) (not tb!127777) (not b!2027968) (not b!2027956) (not b!2027988) (not d!620042) (not b!2027195) (not d!620016) (not d!620046) (not d!620060) tp_is_empty!9221 (not b!2028041) (not d!620062) (not bm!124372) (not b!2027727) (not bm!124410) (not b!2027720) (not b!2028005) (not b!2027664) (not b!2027728) (not b!2027777) (not b!2027958) (not b!2027448) (not bm!124373) (not tb!127815) (not b!2027611) (not b!2027725) (not b!2028051) (not d!620204) (not b!2028059) (not b!2028058) (not b!2027989) (not b_lambda!68239) (not b!2027929) (not b!2027681) (not b!2027723) (not d!620054) (not b!2027961) (not d!620182) (not b!2027457) (not b!2027228) (not d!619934) (not b!2027703) (not d!620184) (not b!2027770) (not b!2027769) (not b!2027973) (not b!2028038) (not b_lambda!68235) (not b!2027793) (not bm!124332) (not d!620052) (not b!2027933) (not b!2028054) (not b!2027970) (not b!2027967) b_and!161381 (not b!2027596) (not b_lambda!68233) (not bm!124368) (not d!620190) (not b!2027610) (not bm!124366) (not b!2027722) (not b!2027608) b_and!161379 (not b!2027197) (not b!2027665) (not b!2028056) (not b!2027661) (not b!2027687) (not b!2028019) b_and!161387 (not b!2027595) b_and!161385 (not b!2027447) (not b!2027670) (not d!620124) (not tb!127783) (not bm!124369) (not b!2027960) (not d!620138) (not d!620098) (not b!2027773) (not d!620130) (not b_next!57267) (not b!2027522) (not d!620196) (not d!620198) (not d!620034) (not b!2027675) (not d!620206) (not b!2028037) (not b!2027233) (not d!620078) (not b!2027704) (not b!2027764) b_and!161395 b_and!161389 (not bm!124391) (not b!2027632) (not b!2027966) (not b_next!57265) b_and!161377 (not d!620096) (not d!620080) (not b_lambda!68231) (not b_next!57283) (not d!620084) (not b_lambda!68237) (not b!2027201) (not d!619928) (not d!620066) (not b!2027521) (not bm!124411) (not bm!124370) (not b!2027763) (not b!2027202) (not b_lambda!68229) (not b!2028055) (not b!2027196) (not bm!124374) (not b_next!57261) b_and!161393 (not d!620180) (not b!2027955) (not d!620200) (not b!2027695) (not b!2027558) (not b!2027221) (not b!2027689) (not d!620050) (not b!2027954) (not b!2028001))
(check-sat b_and!161383 b_and!161391 (not b_next!57281) (not b_next!57263) b_and!161381 b_and!161379 (not b_next!57267) (not b_next!57259) (not b_next!57279) (not b_next!57277) (not b_next!57257) b_and!161387 b_and!161385 b_and!161395 b_and!161389 (not b_next!57265) b_and!161377 (not b_next!57283) (not b_next!57261) b_and!161393)
