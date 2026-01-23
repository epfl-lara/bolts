; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220424 () Bool)

(assert start!220424)

(declare-fun b!2258516 () Bool)

(declare-fun b_free!66605 () Bool)

(declare-fun b_next!67309 () Bool)

(assert (=> b!2258516 (= b_free!66605 (not b_next!67309))))

(declare-fun tp!714073 () Bool)

(declare-fun b_and!177361 () Bool)

(assert (=> b!2258516 (= tp!714073 b_and!177361)))

(declare-fun b_free!66607 () Bool)

(declare-fun b_next!67311 () Bool)

(assert (=> b!2258516 (= b_free!66607 (not b_next!67311))))

(declare-fun tp!714071 () Bool)

(declare-fun b_and!177363 () Bool)

(assert (=> b!2258516 (= tp!714071 b_and!177363)))

(declare-fun b!2258527 () Bool)

(declare-fun b_free!66609 () Bool)

(declare-fun b_next!67313 () Bool)

(assert (=> b!2258527 (= b_free!66609 (not b_next!67313))))

(declare-fun tp!714069 () Bool)

(declare-fun b_and!177365 () Bool)

(assert (=> b!2258527 (= tp!714069 b_and!177365)))

(declare-fun b_free!66611 () Bool)

(declare-fun b_next!67315 () Bool)

(assert (=> b!2258527 (= b_free!66611 (not b_next!67315))))

(declare-fun tp!714064 () Bool)

(declare-fun b_and!177367 () Bool)

(assert (=> b!2258527 (= tp!714064 b_and!177367)))

(declare-fun b!2258518 () Bool)

(declare-fun b_free!66613 () Bool)

(declare-fun b_next!67317 () Bool)

(assert (=> b!2258518 (= b_free!66613 (not b_next!67317))))

(declare-fun tp!714060 () Bool)

(declare-fun b_and!177369 () Bool)

(assert (=> b!2258518 (= tp!714060 b_and!177369)))

(declare-fun b_free!66615 () Bool)

(declare-fun b_next!67319 () Bool)

(assert (=> b!2258518 (= b_free!66615 (not b_next!67319))))

(declare-fun tp!714063 () Bool)

(declare-fun b_and!177371 () Bool)

(assert (=> b!2258518 (= tp!714063 b_and!177371)))

(declare-fun b!2258532 () Bool)

(declare-fun b_free!66617 () Bool)

(declare-fun b_next!67321 () Bool)

(assert (=> b!2258532 (= b_free!66617 (not b_next!67321))))

(declare-fun tp!714061 () Bool)

(declare-fun b_and!177373 () Bool)

(assert (=> b!2258532 (= tp!714061 b_and!177373)))

(declare-fun b_free!66619 () Bool)

(declare-fun b_next!67323 () Bool)

(assert (=> b!2258532 (= b_free!66619 (not b_next!67323))))

(declare-fun tp!714070 () Bool)

(declare-fun b_and!177375 () Bool)

(assert (=> b!2258532 (= tp!714070 b_and!177375)))

(declare-fun b!2258512 () Bool)

(declare-fun res!965575 () Bool)

(declare-fun e!1446022 () Bool)

(assert (=> b!2258512 (=> (not res!965575) (not e!1446022))))

(declare-datatypes ((List!26911 0))(
  ( (Nil!26817) (Cons!26817 (h!32218 (_ BitVec 16)) (t!201427 List!26911)) )
))
(declare-datatypes ((TokenValue!4425 0))(
  ( (FloatLiteralValue!8850 (text!31420 List!26911)) (TokenValueExt!4424 (__x!17910 Int)) (Broken!22125 (value!135289 List!26911)) (Object!4518) (End!4425) (Def!4425) (Underscore!4425) (Match!4425) (Else!4425) (Error!4425) (Case!4425) (If!4425) (Extends!4425) (Abstract!4425) (Class!4425) (Val!4425) (DelimiterValue!8850 (del!4485 List!26911)) (KeywordValue!4431 (value!135290 List!26911)) (CommentValue!8850 (value!135291 List!26911)) (WhitespaceValue!8850 (value!135292 List!26911)) (IndentationValue!4425 (value!135293 List!26911)) (String!29228) (Int32!4425) (Broken!22126 (value!135294 List!26911)) (Boolean!4426) (Unit!39741) (OperatorValue!4428 (op!4485 List!26911)) (IdentifierValue!8850 (value!135295 List!26911)) (IdentifierValue!8851 (value!135296 List!26911)) (WhitespaceValue!8851 (value!135297 List!26911)) (True!8850) (False!8850) (Broken!22127 (value!135298 List!26911)) (Broken!22128 (value!135299 List!26911)) (True!8851) (RightBrace!4425) (RightBracket!4425) (Colon!4425) (Null!4425) (Comma!4425) (LeftBracket!4425) (False!8851) (LeftBrace!4425) (ImaginaryLiteralValue!4425 (text!31421 List!26911)) (StringLiteralValue!13275 (value!135300 List!26911)) (EOFValue!4425 (value!135301 List!26911)) (IdentValue!4425 (value!135302 List!26911)) (DelimiterValue!8851 (value!135303 List!26911)) (DedentValue!4425 (value!135304 List!26911)) (NewLineValue!4425 (value!135305 List!26911)) (IntegerValue!13275 (value!135306 (_ BitVec 32)) (text!31422 List!26911)) (IntegerValue!13276 (value!135307 Int) (text!31423 List!26911)) (Times!4425) (Or!4425) (Equal!4425) (Minus!4425) (Broken!22129 (value!135308 List!26911)) (And!4425) (Div!4425) (LessEqual!4425) (Mod!4425) (Concat!11036) (Not!4425) (Plus!4425) (SpaceValue!4425 (value!135309 List!26911)) (IntegerValue!13277 (value!135310 Int) (text!31424 List!26911)) (StringLiteralValue!13276 (text!31425 List!26911)) (FloatLiteralValue!8851 (text!31426 List!26911)) (BytesLiteralValue!4425 (value!135311 List!26911)) (CommentValue!8851 (value!135312 List!26911)) (StringLiteralValue!13277 (value!135313 List!26911)) (ErrorTokenValue!4425 (msg!4486 List!26911)) )
))
(declare-datatypes ((C!13368 0))(
  ( (C!13369 (val!7732 Int)) )
))
(declare-datatypes ((List!26912 0))(
  ( (Nil!26818) (Cons!26818 (h!32219 C!13368) (t!201428 List!26912)) )
))
(declare-datatypes ((IArray!17353 0))(
  ( (IArray!17354 (innerList!8734 List!26912)) )
))
(declare-datatypes ((Conc!8674 0))(
  ( (Node!8674 (left!20358 Conc!8674) (right!20688 Conc!8674) (csize!17578 Int) (cheight!8885 Int)) (Leaf!12791 (xs!11616 IArray!17353) (csize!17579 Int)) (Empty!8674) )
))
(declare-datatypes ((BalanceConc!17076 0))(
  ( (BalanceConc!17077 (c!358832 Conc!8674)) )
))
(declare-datatypes ((Regex!6611 0))(
  ( (ElementMatch!6611 (c!358833 C!13368)) (Concat!11037 (regOne!13734 Regex!6611) (regTwo!13734 Regex!6611)) (EmptyExpr!6611) (Star!6611 (reg!6940 Regex!6611)) (EmptyLang!6611) (Union!6611 (regOne!13735 Regex!6611) (regTwo!13735 Regex!6611)) )
))
(declare-datatypes ((String!29229 0))(
  ( (String!29230 (value!135314 String)) )
))
(declare-datatypes ((TokenValueInjection!8390 0))(
  ( (TokenValueInjection!8391 (toValue!6005 Int) (toChars!5864 Int)) )
))
(declare-datatypes ((Rule!8326 0))(
  ( (Rule!8327 (regex!4263 Regex!6611) (tag!4753 String!29229) (isSeparator!4263 Bool) (transformation!4263 TokenValueInjection!8390)) )
))
(declare-datatypes ((List!26913 0))(
  ( (Nil!26819) (Cons!26819 (h!32220 Rule!8326) (t!201429 List!26913)) )
))
(declare-fun rules!1750 () List!26913)

(declare-fun r!2363 () Rule!8326)

(declare-fun contains!4615 (List!26913 Rule!8326) Bool)

(assert (=> b!2258512 (= res!965575 (contains!4615 rules!1750 r!2363))))

(declare-fun b!2258513 () Bool)

(declare-fun e!1446023 () Bool)

(declare-fun e!1446016 () Bool)

(assert (=> b!2258513 (= e!1446023 (not e!1446016))))

(declare-fun res!965571 () Bool)

(assert (=> b!2258513 (=> res!965571 e!1446016)))

(declare-fun e!1446034 () Bool)

(assert (=> b!2258513 (= res!965571 e!1446034)))

(declare-fun res!965577 () Bool)

(assert (=> b!2258513 (=> (not res!965577) (not e!1446034))))

(declare-fun lt!839322 () Bool)

(assert (=> b!2258513 (= res!965577 (not lt!839322))))

(declare-datatypes ((LexerInterface!3860 0))(
  ( (LexerInterfaceExt!3857 (__x!17911 Int)) (Lexer!3858) )
))
(declare-fun thiss!16613 () LexerInterface!3860)

(declare-fun ruleValid!1355 (LexerInterface!3860 Rule!8326) Bool)

(assert (=> b!2258513 (ruleValid!1355 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39742 0))(
  ( (Unit!39743) )
))
(declare-fun lt!839323 () Unit!39742)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!762 (LexerInterface!3860 Rule!8326 List!26913) Unit!39742)

(assert (=> b!2258513 (= lt!839323 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!762 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2258514 () Bool)

(declare-fun res!965580 () Bool)

(assert (=> b!2258514 (=> (not res!965580) (not e!1446022))))

(declare-fun rulesInvariant!3362 (LexerInterface!3860 List!26913) Bool)

(assert (=> b!2258514 (= res!965580 (rulesInvariant!3362 thiss!16613 rules!1750))))

(declare-fun b!2258515 () Bool)

(declare-fun e!1446015 () Unit!39742)

(declare-fun Unit!39744 () Unit!39742)

(assert (=> b!2258515 (= e!1446015 Unit!39744)))

(declare-fun e!1446033 () Bool)

(assert (=> b!2258516 (= e!1446033 (and tp!714073 tp!714071))))

(declare-fun b!2258517 () Bool)

(declare-fun e!1446036 () Bool)

(assert (=> b!2258517 (= e!1446036 e!1446023)))

(declare-fun res!965578 () Bool)

(assert (=> b!2258517 (=> (not res!965578) (not e!1446023))))

(declare-fun e!1446031 () Bool)

(assert (=> b!2258517 (= res!965578 e!1446031)))

(declare-fun res!965579 () Bool)

(assert (=> b!2258517 (=> res!965579 e!1446031)))

(assert (=> b!2258517 (= res!965579 lt!839322)))

(declare-datatypes ((Token!8004 0))(
  ( (Token!8005 (value!135315 TokenValue!4425) (rule!6573 Rule!8326) (size!21006 Int) (originalCharacters!5033 List!26912)) )
))
(declare-datatypes ((List!26914 0))(
  ( (Nil!26820) (Cons!26820 (h!32221 Token!8004) (t!201430 List!26914)) )
))
(declare-fun tokens!456 () List!26914)

(declare-fun isEmpty!15151 (List!26914) Bool)

(assert (=> b!2258517 (= lt!839322 (isEmpty!15151 tokens!456))))

(declare-fun e!1446017 () Bool)

(assert (=> b!2258518 (= e!1446017 (and tp!714060 tp!714063))))

(declare-fun b!2258519 () Bool)

(assert (=> b!2258519 (= e!1446022 e!1446036)))

(declare-fun res!965574 () Bool)

(assert (=> b!2258519 (=> (not res!965574) (not e!1446036))))

(declare-fun suffix!886 () List!26912)

(declare-datatypes ((IArray!17355 0))(
  ( (IArray!17356 (innerList!8735 List!26914)) )
))
(declare-datatypes ((Conc!8675 0))(
  ( (Node!8675 (left!20359 Conc!8675) (right!20689 Conc!8675) (csize!17580 Int) (cheight!8886 Int)) (Leaf!12792 (xs!11617 IArray!17355) (csize!17581 Int)) (Empty!8675) )
))
(declare-datatypes ((BalanceConc!17078 0))(
  ( (BalanceConc!17079 (c!358834 Conc!8675)) )
))
(declare-datatypes ((tuple2!26396 0))(
  ( (tuple2!26397 (_1!15708 BalanceConc!17078) (_2!15708 BalanceConc!17076)) )
))
(declare-fun lt!839320 () tuple2!26396)

(declare-datatypes ((tuple2!26398 0))(
  ( (tuple2!26399 (_1!15709 List!26914) (_2!15709 List!26912)) )
))
(declare-fun list!10329 (BalanceConc!17078) List!26914)

(declare-fun list!10330 (BalanceConc!17076) List!26912)

(assert (=> b!2258519 (= res!965574 (= (tuple2!26399 (list!10329 (_1!15708 lt!839320)) (list!10330 (_2!15708 lt!839320))) (tuple2!26399 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26912)

(declare-fun lex!1699 (LexerInterface!3860 List!26913 BalanceConc!17076) tuple2!26396)

(declare-fun seqFromList!2967 (List!26912) BalanceConc!17076)

(assert (=> b!2258519 (= lt!839320 (lex!1699 thiss!16613 rules!1750 (seqFromList!2967 input!1722)))))

(declare-fun b!2258520 () Bool)

(declare-fun res!965573 () Bool)

(assert (=> b!2258520 (=> (not res!965573) (not e!1446022))))

(declare-fun otherR!12 () Rule!8326)

(assert (=> b!2258520 (= res!965573 (contains!4615 rules!1750 otherR!12))))

(declare-fun b!2258521 () Bool)

(declare-fun matchR!2872 (Regex!6611 List!26912) Bool)

(declare-fun charsOf!2651 (Token!8004) BalanceConc!17076)

(declare-fun head!4840 (List!26914) Token!8004)

(assert (=> b!2258521 (= e!1446034 (not (matchR!2872 (regex!4263 r!2363) (list!10330 (charsOf!2651 (head!4840 tokens!456))))))))

(declare-fun tp!714059 () Bool)

(declare-fun b!2258522 () Bool)

(declare-fun e!1446029 () Bool)

(declare-fun inv!36346 (String!29229) Bool)

(declare-fun inv!36349 (TokenValueInjection!8390) Bool)

(assert (=> b!2258522 (= e!1446029 (and tp!714059 (inv!36346 (tag!4753 (h!32220 rules!1750))) (inv!36349 (transformation!4263 (h!32220 rules!1750))) e!1446033))))

(declare-fun b!2258523 () Bool)

(declare-fun e!1446012 () Bool)

(declare-fun tp!714072 () Bool)

(assert (=> b!2258523 (= e!1446012 (and e!1446029 tp!714072))))

(declare-fun b!2258524 () Bool)

(declare-fun e!1446011 () Bool)

(declare-fun tp!714062 () Bool)

(declare-fun e!1446013 () Bool)

(assert (=> b!2258524 (= e!1446013 (and tp!714062 (inv!36346 (tag!4753 otherR!12)) (inv!36349 (transformation!4263 otherR!12)) e!1446011))))

(declare-fun b!2258525 () Bool)

(declare-fun res!965584 () Bool)

(assert (=> b!2258525 (=> (not res!965584) (not e!1446022))))

(declare-fun isEmpty!15152 (List!26913) Bool)

(assert (=> b!2258525 (= res!965584 (not (isEmpty!15152 rules!1750)))))

(declare-fun b!2258526 () Bool)

(declare-fun e!1446026 () Bool)

(declare-fun tp!714058 () Bool)

(assert (=> b!2258526 (= e!1446026 (and tp!714058 (inv!36346 (tag!4753 (rule!6573 (h!32221 tokens!456)))) (inv!36349 (transformation!4263 (rule!6573 (h!32221 tokens!456)))) e!1446017))))

(declare-fun e!1446018 () Bool)

(assert (=> b!2258527 (= e!1446018 (and tp!714069 tp!714064))))

(declare-fun b!2258528 () Bool)

(declare-fun Unit!39745 () Unit!39742)

(assert (=> b!2258528 (= e!1446015 Unit!39745)))

(declare-fun lt!839318 () Unit!39742)

(declare-fun lemmaSameIndexThenSameElement!130 (List!26913 Rule!8326 Rule!8326) Unit!39742)

(assert (=> b!2258528 (= lt!839318 (lemmaSameIndexThenSameElement!130 rules!1750 r!2363 otherR!12))))

(assert (=> b!2258528 false))

(declare-fun b!2258529 () Bool)

(declare-fun e!1446027 () Bool)

(assert (=> b!2258529 (= e!1446027 true)))

(declare-fun lt!839324 () Unit!39742)

(assert (=> b!2258529 (= lt!839324 e!1446015)))

(declare-fun c!358831 () Bool)

(declare-fun lt!839319 () Int)

(declare-fun lt!839317 () Int)

(assert (=> b!2258529 (= c!358831 (= lt!839319 lt!839317))))

(declare-fun b!2258530 () Bool)

(declare-fun res!965582 () Bool)

(assert (=> b!2258530 (=> (not res!965582) (not e!1446023))))

(declare-fun e!1446028 () Bool)

(assert (=> b!2258530 (= res!965582 e!1446028)))

(declare-fun res!965570 () Bool)

(assert (=> b!2258530 (=> res!965570 e!1446028)))

(assert (=> b!2258530 (= res!965570 lt!839322)))

(declare-fun b!2258531 () Bool)

(declare-fun e!1446019 () Bool)

(declare-fun tp_is_empty!10443 () Bool)

(declare-fun tp!714056 () Bool)

(assert (=> b!2258531 (= e!1446019 (and tp_is_empty!10443 tp!714056))))

(assert (=> b!2258532 (= e!1446011 (and tp!714061 tp!714070))))

(declare-fun b!2258533 () Bool)

(assert (=> b!2258533 (= e!1446028 (= (rule!6573 (head!4840 tokens!456)) r!2363))))

(declare-fun b!2258534 () Bool)

(assert (=> b!2258534 (= e!1446016 e!1446027)))

(declare-fun res!965581 () Bool)

(assert (=> b!2258534 (=> res!965581 e!1446027)))

(assert (=> b!2258534 (= res!965581 (> lt!839319 lt!839317))))

(declare-fun getIndex!284 (List!26913 Rule!8326) Int)

(assert (=> b!2258534 (= lt!839317 (getIndex!284 rules!1750 otherR!12))))

(assert (=> b!2258534 (= lt!839319 (getIndex!284 rules!1750 r!2363))))

(assert (=> b!2258534 (ruleValid!1355 thiss!16613 otherR!12)))

(declare-fun lt!839321 () Unit!39742)

(assert (=> b!2258534 (= lt!839321 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!762 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2258535 () Bool)

(declare-fun e!1446014 () Bool)

(declare-fun tp!714065 () Bool)

(assert (=> b!2258535 (= e!1446014 (and tp_is_empty!10443 tp!714065))))

(declare-fun tp!714068 () Bool)

(declare-fun e!1446020 () Bool)

(declare-fun b!2258536 () Bool)

(declare-fun inv!21 (TokenValue!4425) Bool)

(assert (=> b!2258536 (= e!1446020 (and (inv!21 (value!135315 (h!32221 tokens!456))) e!1446026 tp!714068))))

(declare-fun e!1446035 () Bool)

(declare-fun tp!714066 () Bool)

(declare-fun b!2258537 () Bool)

(declare-fun inv!36350 (Token!8004) Bool)

(assert (=> b!2258537 (= e!1446035 (and (inv!36350 (h!32221 tokens!456)) e!1446020 tp!714066))))

(declare-fun b!2258538 () Bool)

(declare-fun e!1446037 () Bool)

(declare-fun tp!714057 () Bool)

(assert (=> b!2258538 (= e!1446037 (and tp_is_empty!10443 tp!714057))))

(declare-fun res!965576 () Bool)

(assert (=> start!220424 (=> (not res!965576) (not e!1446022))))

(get-info :version)

(assert (=> start!220424 (= res!965576 ((_ is Lexer!3858) thiss!16613))))

(assert (=> start!220424 e!1446022))

(assert (=> start!220424 true))

(assert (=> start!220424 e!1446014))

(assert (=> start!220424 e!1446013))

(assert (=> start!220424 e!1446037))

(assert (=> start!220424 e!1446019))

(assert (=> start!220424 e!1446012))

(declare-fun e!1446021 () Bool)

(assert (=> start!220424 e!1446021))

(assert (=> start!220424 e!1446035))

(declare-fun b!2258539 () Bool)

(declare-fun res!965583 () Bool)

(assert (=> b!2258539 (=> (not res!965583) (not e!1446023))))

(assert (=> b!2258539 (= res!965583 (not (= r!2363 otherR!12)))))

(declare-fun b!2258540 () Bool)

(declare-fun res!965572 () Bool)

(assert (=> b!2258540 (=> (not res!965572) (not e!1446023))))

(declare-fun otherP!12 () List!26912)

(declare-fun isPrefix!2253 (List!26912 List!26912) Bool)

(assert (=> b!2258540 (= res!965572 (isPrefix!2253 otherP!12 input!1722))))

(declare-fun b!2258541 () Bool)

(declare-fun size!21007 (BalanceConc!17076) Int)

(declare-fun size!21008 (List!26912) Int)

(assert (=> b!2258541 (= e!1446031 (<= (size!21007 (charsOf!2651 (head!4840 tokens!456))) (size!21008 otherP!12)))))

(declare-fun tp!714067 () Bool)

(declare-fun b!2258542 () Bool)

(assert (=> b!2258542 (= e!1446021 (and tp!714067 (inv!36346 (tag!4753 r!2363)) (inv!36349 (transformation!4263 r!2363)) e!1446018))))

(assert (= (and start!220424 res!965576) b!2258525))

(assert (= (and b!2258525 res!965584) b!2258514))

(assert (= (and b!2258514 res!965580) b!2258512))

(assert (= (and b!2258512 res!965575) b!2258520))

(assert (= (and b!2258520 res!965573) b!2258519))

(assert (= (and b!2258519 res!965574) b!2258517))

(assert (= (and b!2258517 (not res!965579)) b!2258541))

(assert (= (and b!2258517 res!965578) b!2258530))

(assert (= (and b!2258530 (not res!965570)) b!2258533))

(assert (= (and b!2258530 res!965582) b!2258540))

(assert (= (and b!2258540 res!965572) b!2258539))

(assert (= (and b!2258539 res!965583) b!2258513))

(assert (= (and b!2258513 res!965577) b!2258521))

(assert (= (and b!2258513 (not res!965571)) b!2258534))

(assert (= (and b!2258534 (not res!965581)) b!2258529))

(assert (= (and b!2258529 c!358831) b!2258528))

(assert (= (and b!2258529 (not c!358831)) b!2258515))

(assert (= (and start!220424 ((_ is Cons!26818) input!1722)) b!2258535))

(assert (= b!2258524 b!2258532))

(assert (= start!220424 b!2258524))

(assert (= (and start!220424 ((_ is Cons!26818) suffix!886)) b!2258538))

(assert (= (and start!220424 ((_ is Cons!26818) otherP!12)) b!2258531))

(assert (= b!2258522 b!2258516))

(assert (= b!2258523 b!2258522))

(assert (= (and start!220424 ((_ is Cons!26819) rules!1750)) b!2258523))

(assert (= b!2258542 b!2258527))

(assert (= start!220424 b!2258542))

(assert (= b!2258526 b!2258518))

(assert (= b!2258536 b!2258526))

(assert (= b!2258537 b!2258536))

(assert (= (and start!220424 ((_ is Cons!26820) tokens!456)) b!2258537))

(declare-fun m!2688405 () Bool)

(assert (=> b!2258520 m!2688405))

(declare-fun m!2688407 () Bool)

(assert (=> b!2258519 m!2688407))

(declare-fun m!2688409 () Bool)

(assert (=> b!2258519 m!2688409))

(declare-fun m!2688411 () Bool)

(assert (=> b!2258519 m!2688411))

(assert (=> b!2258519 m!2688411))

(declare-fun m!2688413 () Bool)

(assert (=> b!2258519 m!2688413))

(declare-fun m!2688415 () Bool)

(assert (=> b!2258526 m!2688415))

(declare-fun m!2688417 () Bool)

(assert (=> b!2258526 m!2688417))

(declare-fun m!2688419 () Bool)

(assert (=> b!2258542 m!2688419))

(declare-fun m!2688421 () Bool)

(assert (=> b!2258542 m!2688421))

(declare-fun m!2688423 () Bool)

(assert (=> b!2258541 m!2688423))

(assert (=> b!2258541 m!2688423))

(declare-fun m!2688425 () Bool)

(assert (=> b!2258541 m!2688425))

(assert (=> b!2258541 m!2688425))

(declare-fun m!2688427 () Bool)

(assert (=> b!2258541 m!2688427))

(declare-fun m!2688429 () Bool)

(assert (=> b!2258541 m!2688429))

(declare-fun m!2688431 () Bool)

(assert (=> b!2258512 m!2688431))

(declare-fun m!2688433 () Bool)

(assert (=> b!2258525 m!2688433))

(assert (=> b!2258521 m!2688423))

(assert (=> b!2258521 m!2688423))

(assert (=> b!2258521 m!2688425))

(assert (=> b!2258521 m!2688425))

(declare-fun m!2688435 () Bool)

(assert (=> b!2258521 m!2688435))

(assert (=> b!2258521 m!2688435))

(declare-fun m!2688437 () Bool)

(assert (=> b!2258521 m!2688437))

(declare-fun m!2688439 () Bool)

(assert (=> b!2258522 m!2688439))

(declare-fun m!2688441 () Bool)

(assert (=> b!2258522 m!2688441))

(declare-fun m!2688443 () Bool)

(assert (=> b!2258536 m!2688443))

(declare-fun m!2688445 () Bool)

(assert (=> b!2258524 m!2688445))

(declare-fun m!2688447 () Bool)

(assert (=> b!2258524 m!2688447))

(declare-fun m!2688449 () Bool)

(assert (=> b!2258528 m!2688449))

(declare-fun m!2688451 () Bool)

(assert (=> b!2258540 m!2688451))

(assert (=> b!2258533 m!2688423))

(declare-fun m!2688453 () Bool)

(assert (=> b!2258517 m!2688453))

(declare-fun m!2688455 () Bool)

(assert (=> b!2258537 m!2688455))

(declare-fun m!2688457 () Bool)

(assert (=> b!2258513 m!2688457))

(declare-fun m!2688459 () Bool)

(assert (=> b!2258513 m!2688459))

(declare-fun m!2688461 () Bool)

(assert (=> b!2258534 m!2688461))

(declare-fun m!2688463 () Bool)

(assert (=> b!2258534 m!2688463))

(declare-fun m!2688465 () Bool)

(assert (=> b!2258534 m!2688465))

(declare-fun m!2688467 () Bool)

(assert (=> b!2258534 m!2688467))

(declare-fun m!2688469 () Bool)

(assert (=> b!2258514 m!2688469))

(check-sat (not b!2258517) b_and!177365 (not b!2258521) (not b!2258524) b_and!177369 (not b!2258542) b_and!177361 b_and!177375 (not b!2258519) (not b!2258513) (not b!2258528) (not b!2258525) (not b!2258536) b_and!177363 (not b_next!67311) (not b_next!67319) (not b!2258514) (not b!2258535) (not b_next!67317) (not b_next!67313) (not b!2258537) (not b!2258520) (not b!2258541) b_and!177367 (not b!2258533) b_and!177373 (not b_next!67315) (not b!2258540) (not b!2258534) (not b_next!67309) (not b!2258512) (not b_next!67323) (not b!2258538) b_and!177371 (not b!2258531) tp_is_empty!10443 (not b!2258523) (not b!2258522) (not b_next!67321) (not b!2258526))
(check-sat b_and!177365 b_and!177369 b_and!177361 b_and!177367 b_and!177373 b_and!177375 (not b_next!67315) b_and!177371 (not b_next!67321) b_and!177363 (not b_next!67311) (not b_next!67319) (not b_next!67317) (not b_next!67313) (not b_next!67309) (not b_next!67323))
