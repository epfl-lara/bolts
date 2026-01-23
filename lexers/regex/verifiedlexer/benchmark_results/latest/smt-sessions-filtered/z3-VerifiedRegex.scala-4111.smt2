; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220184 () Bool)

(assert start!220184)

(declare-fun b!2256469 () Bool)

(declare-fun b_free!66413 () Bool)

(declare-fun b_next!67117 () Bool)

(assert (=> b!2256469 (= b_free!66413 (not b_next!67117))))

(declare-fun tp!713249 () Bool)

(declare-fun b_and!177105 () Bool)

(assert (=> b!2256469 (= tp!713249 b_and!177105)))

(declare-fun b_free!66415 () Bool)

(declare-fun b_next!67119 () Bool)

(assert (=> b!2256469 (= b_free!66415 (not b_next!67119))))

(declare-fun tp!713253 () Bool)

(declare-fun b_and!177107 () Bool)

(assert (=> b!2256469 (= tp!713253 b_and!177107)))

(declare-fun b!2256471 () Bool)

(declare-fun b_free!66417 () Bool)

(declare-fun b_next!67121 () Bool)

(assert (=> b!2256471 (= b_free!66417 (not b_next!67121))))

(declare-fun tp!713259 () Bool)

(declare-fun b_and!177109 () Bool)

(assert (=> b!2256471 (= tp!713259 b_and!177109)))

(declare-fun b_free!66419 () Bool)

(declare-fun b_next!67123 () Bool)

(assert (=> b!2256471 (= b_free!66419 (not b_next!67123))))

(declare-fun tp!713265 () Bool)

(declare-fun b_and!177111 () Bool)

(assert (=> b!2256471 (= tp!713265 b_and!177111)))

(declare-fun b!2256452 () Bool)

(declare-fun b_free!66421 () Bool)

(declare-fun b_next!67125 () Bool)

(assert (=> b!2256452 (= b_free!66421 (not b_next!67125))))

(declare-fun tp!713256 () Bool)

(declare-fun b_and!177113 () Bool)

(assert (=> b!2256452 (= tp!713256 b_and!177113)))

(declare-fun b_free!66423 () Bool)

(declare-fun b_next!67127 () Bool)

(assert (=> b!2256452 (= b_free!66423 (not b_next!67127))))

(declare-fun tp!713263 () Bool)

(declare-fun b_and!177115 () Bool)

(assert (=> b!2256452 (= tp!713263 b_and!177115)))

(declare-fun b!2256463 () Bool)

(declare-fun b_free!66425 () Bool)

(declare-fun b_next!67129 () Bool)

(assert (=> b!2256463 (= b_free!66425 (not b_next!67129))))

(declare-fun tp!713252 () Bool)

(declare-fun b_and!177117 () Bool)

(assert (=> b!2256463 (= tp!713252 b_and!177117)))

(declare-fun b_free!66427 () Bool)

(declare-fun b_next!67131 () Bool)

(assert (=> b!2256463 (= b_free!66427 (not b_next!67131))))

(declare-fun tp!713254 () Bool)

(declare-fun b_and!177119 () Bool)

(assert (=> b!2256463 (= tp!713254 b_and!177119)))

(declare-fun b!2256447 () Bool)

(declare-datatypes ((Unit!39691 0))(
  ( (Unit!39692) )
))
(declare-fun e!1444469 () Unit!39691)

(declare-fun Unit!39693 () Unit!39691)

(assert (=> b!2256447 (= e!1444469 Unit!39693)))

(declare-fun lt!838775 () Unit!39691)

(declare-datatypes ((List!26867 0))(
  ( (Nil!26773) (Cons!26773 (h!32174 (_ BitVec 16)) (t!201287 List!26867)) )
))
(declare-datatypes ((TokenValue!4415 0))(
  ( (FloatLiteralValue!8830 (text!31350 List!26867)) (TokenValueExt!4414 (__x!17890 Int)) (Broken!22075 (value!135004 List!26867)) (Object!4508) (End!4415) (Def!4415) (Underscore!4415) (Match!4415) (Else!4415) (Error!4415) (Case!4415) (If!4415) (Extends!4415) (Abstract!4415) (Class!4415) (Val!4415) (DelimiterValue!8830 (del!4475 List!26867)) (KeywordValue!4421 (value!135005 List!26867)) (CommentValue!8830 (value!135006 List!26867)) (WhitespaceValue!8830 (value!135007 List!26867)) (IndentationValue!4415 (value!135008 List!26867)) (String!29178) (Int32!4415) (Broken!22076 (value!135009 List!26867)) (Boolean!4416) (Unit!39694) (OperatorValue!4418 (op!4475 List!26867)) (IdentifierValue!8830 (value!135010 List!26867)) (IdentifierValue!8831 (value!135011 List!26867)) (WhitespaceValue!8831 (value!135012 List!26867)) (True!8830) (False!8830) (Broken!22077 (value!135013 List!26867)) (Broken!22078 (value!135014 List!26867)) (True!8831) (RightBrace!4415) (RightBracket!4415) (Colon!4415) (Null!4415) (Comma!4415) (LeftBracket!4415) (False!8831) (LeftBrace!4415) (ImaginaryLiteralValue!4415 (text!31351 List!26867)) (StringLiteralValue!13245 (value!135015 List!26867)) (EOFValue!4415 (value!135016 List!26867)) (IdentValue!4415 (value!135017 List!26867)) (DelimiterValue!8831 (value!135018 List!26867)) (DedentValue!4415 (value!135019 List!26867)) (NewLineValue!4415 (value!135020 List!26867)) (IntegerValue!13245 (value!135021 (_ BitVec 32)) (text!31352 List!26867)) (IntegerValue!13246 (value!135022 Int) (text!31353 List!26867)) (Times!4415) (Or!4415) (Equal!4415) (Minus!4415) (Broken!22079 (value!135023 List!26867)) (And!4415) (Div!4415) (LessEqual!4415) (Mod!4415) (Concat!11016) (Not!4415) (Plus!4415) (SpaceValue!4415 (value!135024 List!26867)) (IntegerValue!13247 (value!135025 Int) (text!31354 List!26867)) (StringLiteralValue!13246 (text!31355 List!26867)) (FloatLiteralValue!8831 (text!31356 List!26867)) (BytesLiteralValue!4415 (value!135026 List!26867)) (CommentValue!8831 (value!135027 List!26867)) (StringLiteralValue!13247 (value!135028 List!26867)) (ErrorTokenValue!4415 (msg!4476 List!26867)) )
))
(declare-datatypes ((C!13348 0))(
  ( (C!13349 (val!7722 Int)) )
))
(declare-datatypes ((List!26868 0))(
  ( (Nil!26774) (Cons!26774 (h!32175 C!13348) (t!201288 List!26868)) )
))
(declare-datatypes ((IArray!17313 0))(
  ( (IArray!17314 (innerList!8714 List!26868)) )
))
(declare-datatypes ((Conc!8654 0))(
  ( (Node!8654 (left!20333 Conc!8654) (right!20663 Conc!8654) (csize!17538 Int) (cheight!8865 Int)) (Leaf!12766 (xs!11596 IArray!17313) (csize!17539 Int)) (Empty!8654) )
))
(declare-datatypes ((BalanceConc!17036 0))(
  ( (BalanceConc!17037 (c!358598 Conc!8654)) )
))
(declare-datatypes ((Regex!6601 0))(
  ( (ElementMatch!6601 (c!358599 C!13348)) (Concat!11017 (regOne!13714 Regex!6601) (regTwo!13714 Regex!6601)) (EmptyExpr!6601) (Star!6601 (reg!6930 Regex!6601)) (EmptyLang!6601) (Union!6601 (regOne!13715 Regex!6601) (regTwo!13715 Regex!6601)) )
))
(declare-datatypes ((String!29179 0))(
  ( (String!29180 (value!135029 String)) )
))
(declare-datatypes ((TokenValueInjection!8370 0))(
  ( (TokenValueInjection!8371 (toValue!5995 Int) (toChars!5854 Int)) )
))
(declare-datatypes ((Rule!8306 0))(
  ( (Rule!8307 (regex!4253 Regex!6601) (tag!4743 String!29179) (isSeparator!4253 Bool) (transformation!4253 TokenValueInjection!8370)) )
))
(declare-fun otherR!12 () Rule!8306)

(declare-datatypes ((List!26869 0))(
  ( (Nil!26775) (Cons!26775 (h!32176 Rule!8306) (t!201289 List!26869)) )
))
(declare-fun rules!1750 () List!26869)

(declare-fun r!2363 () Rule!8306)

(declare-fun lemmaSameIndexThenSameElement!120 (List!26869 Rule!8306 Rule!8306) Unit!39691)

(assert (=> b!2256447 (= lt!838775 (lemmaSameIndexThenSameElement!120 rules!1750 r!2363 otherR!12))))

(assert (=> b!2256447 false))

(declare-fun b!2256449 () Bool)

(declare-fun e!1444466 () Bool)

(declare-fun tp_is_empty!10423 () Bool)

(declare-fun tp!713248 () Bool)

(assert (=> b!2256449 (= e!1444466 (and tp_is_empty!10423 tp!713248))))

(declare-fun b!2256450 () Bool)

(declare-fun e!1444448 () Bool)

(declare-fun e!1444474 () Bool)

(assert (=> b!2256450 (= e!1444448 (not e!1444474))))

(declare-fun res!964572 () Bool)

(assert (=> b!2256450 (=> res!964572 e!1444474)))

(declare-fun e!1444451 () Bool)

(assert (=> b!2256450 (= res!964572 e!1444451)))

(declare-fun res!964571 () Bool)

(assert (=> b!2256450 (=> (not res!964571) (not e!1444451))))

(declare-fun lt!838774 () Bool)

(assert (=> b!2256450 (= res!964571 (not lt!838774))))

(declare-datatypes ((LexerInterface!3850 0))(
  ( (LexerInterfaceExt!3847 (__x!17891 Int)) (Lexer!3848) )
))
(declare-fun thiss!16613 () LexerInterface!3850)

(declare-fun ruleValid!1345 (LexerInterface!3850 Rule!8306) Bool)

(assert (=> b!2256450 (ruleValid!1345 thiss!16613 r!2363)))

(declare-fun lt!838780 () Unit!39691)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!752 (LexerInterface!3850 Rule!8306 List!26869) Unit!39691)

(assert (=> b!2256450 (= lt!838780 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!752 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2256451 () Bool)

(declare-fun e!1444449 () Bool)

(declare-datatypes ((Token!7984 0))(
  ( (Token!7985 (value!135030 TokenValue!4415) (rule!6559 Rule!8306) (size!20964 Int) (originalCharacters!5023 List!26868)) )
))
(declare-datatypes ((List!26870 0))(
  ( (Nil!26776) (Cons!26776 (h!32177 Token!7984) (t!201290 List!26870)) )
))
(declare-fun tokens!456 () List!26870)

(declare-fun otherP!12 () List!26868)

(declare-fun size!20965 (BalanceConc!17036) Int)

(declare-fun charsOf!2641 (Token!7984) BalanceConc!17036)

(declare-fun head!4826 (List!26870) Token!7984)

(declare-fun size!20966 (List!26868) Int)

(assert (=> b!2256451 (= e!1444449 (<= (size!20965 (charsOf!2641 (head!4826 tokens!456))) (size!20966 otherP!12)))))

(declare-fun e!1444470 () Bool)

(assert (=> b!2256452 (= e!1444470 (and tp!713256 tp!713263))))

(declare-fun e!1444458 () Bool)

(declare-fun b!2256453 () Bool)

(declare-fun e!1444463 () Bool)

(declare-fun tp!713264 () Bool)

(declare-fun inv!36303 (String!29179) Bool)

(declare-fun inv!36306 (TokenValueInjection!8370) Bool)

(assert (=> b!2256453 (= e!1444458 (and tp!713264 (inv!36303 (tag!4743 r!2363)) (inv!36306 (transformation!4253 r!2363)) e!1444463))))

(declare-fun b!2256454 () Bool)

(declare-fun res!964560 () Bool)

(declare-fun e!1444457 () Bool)

(assert (=> b!2256454 (=> (not res!964560) (not e!1444457))))

(declare-fun rulesInvariant!3352 (LexerInterface!3850 List!26869) Bool)

(assert (=> b!2256454 (= res!964560 (rulesInvariant!3352 thiss!16613 rules!1750))))

(declare-fun b!2256455 () Bool)

(declare-fun e!1444453 () Bool)

(assert (=> b!2256455 (= e!1444453 (= (rule!6559 (head!4826 tokens!456)) r!2363))))

(declare-fun b!2256456 () Bool)

(declare-fun e!1444464 () Bool)

(assert (=> b!2256456 (= e!1444457 e!1444464)))

(declare-fun res!964568 () Bool)

(assert (=> b!2256456 (=> (not res!964568) (not e!1444464))))

(declare-datatypes ((IArray!17315 0))(
  ( (IArray!17316 (innerList!8715 List!26870)) )
))
(declare-datatypes ((Conc!8655 0))(
  ( (Node!8655 (left!20334 Conc!8655) (right!20664 Conc!8655) (csize!17540 Int) (cheight!8866 Int)) (Leaf!12767 (xs!11597 IArray!17315) (csize!17541 Int)) (Empty!8655) )
))
(declare-datatypes ((BalanceConc!17038 0))(
  ( (BalanceConc!17039 (c!358600 Conc!8655)) )
))
(declare-datatypes ((tuple2!26330 0))(
  ( (tuple2!26331 (_1!15675 BalanceConc!17038) (_2!15675 BalanceConc!17036)) )
))
(declare-fun lt!838777 () tuple2!26330)

(declare-fun suffix!886 () List!26868)

(declare-datatypes ((tuple2!26332 0))(
  ( (tuple2!26333 (_1!15676 List!26870) (_2!15676 List!26868)) )
))
(declare-fun list!10301 (BalanceConc!17038) List!26870)

(declare-fun list!10302 (BalanceConc!17036) List!26868)

(assert (=> b!2256456 (= res!964568 (= (tuple2!26333 (list!10301 (_1!15675 lt!838777)) (list!10302 (_2!15675 lt!838777))) (tuple2!26333 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26868)

(declare-fun lex!1689 (LexerInterface!3850 List!26869 BalanceConc!17036) tuple2!26330)

(declare-fun seqFromList!2957 (List!26868) BalanceConc!17036)

(assert (=> b!2256456 (= lt!838777 (lex!1689 thiss!16613 rules!1750 (seqFromList!2957 input!1722)))))

(declare-fun tp!713260 () Bool)

(declare-fun e!1444456 () Bool)

(declare-fun e!1444468 () Bool)

(declare-fun b!2256457 () Bool)

(assert (=> b!2256457 (= e!1444468 (and tp!713260 (inv!36303 (tag!4743 otherR!12)) (inv!36306 (transformation!4253 otherR!12)) e!1444456))))

(declare-fun tp!713251 () Bool)

(declare-fun e!1444461 () Bool)

(declare-fun b!2256458 () Bool)

(declare-fun e!1444459 () Bool)

(assert (=> b!2256458 (= e!1444459 (and tp!713251 (inv!36303 (tag!4743 (h!32176 rules!1750))) (inv!36306 (transformation!4253 (h!32176 rules!1750))) e!1444461))))

(declare-fun b!2256459 () Bool)

(declare-fun res!964565 () Bool)

(assert (=> b!2256459 (=> (not res!964565) (not e!1444448))))

(assert (=> b!2256459 (= res!964565 e!1444453)))

(declare-fun res!964561 () Bool)

(assert (=> b!2256459 (=> res!964561 e!1444453)))

(assert (=> b!2256459 (= res!964561 lt!838774)))

(declare-fun tp!713257 () Bool)

(declare-fun e!1444471 () Bool)

(declare-fun b!2256448 () Bool)

(declare-fun e!1444467 () Bool)

(declare-fun inv!21 (TokenValue!4415) Bool)

(assert (=> b!2256448 (= e!1444467 (and (inv!21 (value!135030 (h!32177 tokens!456))) e!1444471 tp!713257))))

(declare-fun res!964569 () Bool)

(assert (=> start!220184 (=> (not res!964569) (not e!1444457))))

(get-info :version)

(assert (=> start!220184 (= res!964569 ((_ is Lexer!3848) thiss!16613))))

(assert (=> start!220184 e!1444457))

(assert (=> start!220184 true))

(declare-fun e!1444454 () Bool)

(assert (=> start!220184 e!1444454))

(assert (=> start!220184 e!1444468))

(assert (=> start!220184 e!1444466))

(declare-fun e!1444475 () Bool)

(assert (=> start!220184 e!1444475))

(declare-fun e!1444472 () Bool)

(assert (=> start!220184 e!1444472))

(assert (=> start!220184 e!1444458))

(declare-fun e!1444450 () Bool)

(assert (=> start!220184 e!1444450))

(declare-fun b!2256460 () Bool)

(declare-fun res!964567 () Bool)

(assert (=> b!2256460 (=> (not res!964567) (not e!1444448))))

(assert (=> b!2256460 (= res!964567 (not (= r!2363 otherR!12)))))

(declare-fun tp!713250 () Bool)

(declare-fun b!2256461 () Bool)

(assert (=> b!2256461 (= e!1444471 (and tp!713250 (inv!36303 (tag!4743 (rule!6559 (h!32177 tokens!456)))) (inv!36306 (transformation!4253 (rule!6559 (h!32177 tokens!456)))) e!1444470))))

(declare-fun b!2256462 () Bool)

(declare-fun e!1444460 () Bool)

(assert (=> b!2256462 (= e!1444474 e!1444460)))

(declare-fun res!964559 () Bool)

(assert (=> b!2256462 (=> res!964559 e!1444460)))

(declare-fun lt!838779 () Int)

(declare-fun lt!838773 () Int)

(assert (=> b!2256462 (= res!964559 (> lt!838779 lt!838773))))

(declare-fun getIndex!274 (List!26869 Rule!8306) Int)

(assert (=> b!2256462 (= lt!838773 (getIndex!274 rules!1750 otherR!12))))

(assert (=> b!2256462 (= lt!838779 (getIndex!274 rules!1750 r!2363))))

(assert (=> b!2256462 (ruleValid!1345 thiss!16613 otherR!12)))

(declare-fun lt!838772 () Unit!39691)

(assert (=> b!2256462 (= lt!838772 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!752 thiss!16613 otherR!12 rules!1750))))

(assert (=> b!2256463 (= e!1444461 (and tp!713252 tp!713254))))

(declare-fun b!2256464 () Bool)

(declare-fun tp!713258 () Bool)

(assert (=> b!2256464 (= e!1444472 (and e!1444459 tp!713258))))

(declare-fun b!2256465 () Bool)

(declare-fun e!1444452 () Bool)

(assert (=> b!2256465 (= e!1444460 e!1444452)))

(declare-fun res!964570 () Bool)

(assert (=> b!2256465 (=> res!964570 e!1444452)))

(assert (=> b!2256465 (= res!964570 (not ((_ is Nil!26776) tokens!456)))))

(declare-fun lt!838776 () Unit!39691)

(assert (=> b!2256465 (= lt!838776 e!1444469)))

(declare-fun c!358597 () Bool)

(assert (=> b!2256465 (= c!358597 (= lt!838779 lt!838773))))

(declare-fun b!2256466 () Bool)

(declare-fun res!964562 () Bool)

(assert (=> b!2256466 (=> (not res!964562) (not e!1444457))))

(declare-fun contains!4605 (List!26869 Rule!8306) Bool)

(assert (=> b!2256466 (= res!964562 (contains!4605 rules!1750 otherR!12))))

(declare-fun b!2256467 () Bool)

(assert (=> b!2256467 (= e!1444452 true)))

(declare-datatypes ((tuple2!26334 0))(
  ( (tuple2!26335 (_1!15677 Token!7984) (_2!15677 List!26868)) )
))
(declare-datatypes ((Option!5229 0))(
  ( (None!5228) (Some!5228 (v!30254 tuple2!26334)) )
))
(declare-fun isEmpty!15114 (Option!5229) Bool)

(declare-fun maxPrefixOneRule!1328 (LexerInterface!3850 Rule!8306 List!26868) Option!5229)

(assert (=> b!2256467 (isEmpty!15114 (maxPrefixOneRule!1328 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!838778 () Unit!39691)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!401 (LexerInterface!3850 Rule!8306 List!26869 List!26868) Unit!39691)

(assert (=> b!2256467 (= lt!838778 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!401 thiss!16613 otherR!12 rules!1750 input!1722))))

(declare-fun b!2256468 () Bool)

(declare-fun tp!713262 () Bool)

(assert (=> b!2256468 (= e!1444475 (and tp_is_empty!10423 tp!713262))))

(assert (=> b!2256469 (= e!1444463 (and tp!713249 tp!713253))))

(declare-fun b!2256470 () Bool)

(assert (=> b!2256470 (= e!1444464 e!1444448)))

(declare-fun res!964564 () Bool)

(assert (=> b!2256470 (=> (not res!964564) (not e!1444448))))

(assert (=> b!2256470 (= res!964564 e!1444449)))

(declare-fun res!964558 () Bool)

(assert (=> b!2256470 (=> res!964558 e!1444449)))

(assert (=> b!2256470 (= res!964558 lt!838774)))

(declare-fun isEmpty!15115 (List!26870) Bool)

(assert (=> b!2256470 (= lt!838774 (isEmpty!15115 tokens!456))))

(assert (=> b!2256471 (= e!1444456 (and tp!713259 tp!713265))))

(declare-fun b!2256472 () Bool)

(declare-fun tp!713255 () Bool)

(assert (=> b!2256472 (= e!1444454 (and tp_is_empty!10423 tp!713255))))

(declare-fun b!2256473 () Bool)

(declare-fun Unit!39695 () Unit!39691)

(assert (=> b!2256473 (= e!1444469 Unit!39695)))

(declare-fun b!2256474 () Bool)

(declare-fun tp!713261 () Bool)

(declare-fun inv!36307 (Token!7984) Bool)

(assert (=> b!2256474 (= e!1444450 (and (inv!36307 (h!32177 tokens!456)) e!1444467 tp!713261))))

(declare-fun b!2256475 () Bool)

(declare-fun res!964557 () Bool)

(assert (=> b!2256475 (=> (not res!964557) (not e!1444457))))

(assert (=> b!2256475 (= res!964557 (contains!4605 rules!1750 r!2363))))

(declare-fun b!2256476 () Bool)

(declare-fun res!964566 () Bool)

(assert (=> b!2256476 (=> (not res!964566) (not e!1444457))))

(declare-fun isEmpty!15116 (List!26869) Bool)

(assert (=> b!2256476 (= res!964566 (not (isEmpty!15116 rules!1750)))))

(declare-fun b!2256477 () Bool)

(declare-fun matchR!2862 (Regex!6601 List!26868) Bool)

(assert (=> b!2256477 (= e!1444451 (not (matchR!2862 (regex!4253 r!2363) (list!10302 (charsOf!2641 (head!4826 tokens!456))))))))

(declare-fun b!2256478 () Bool)

(declare-fun res!964563 () Bool)

(assert (=> b!2256478 (=> (not res!964563) (not e!1444448))))

(declare-fun isPrefix!2243 (List!26868 List!26868) Bool)

(assert (=> b!2256478 (= res!964563 (isPrefix!2243 otherP!12 input!1722))))

(assert (= (and start!220184 res!964569) b!2256476))

(assert (= (and b!2256476 res!964566) b!2256454))

(assert (= (and b!2256454 res!964560) b!2256475))

(assert (= (and b!2256475 res!964557) b!2256466))

(assert (= (and b!2256466 res!964562) b!2256456))

(assert (= (and b!2256456 res!964568) b!2256470))

(assert (= (and b!2256470 (not res!964558)) b!2256451))

(assert (= (and b!2256470 res!964564) b!2256459))

(assert (= (and b!2256459 (not res!964561)) b!2256455))

(assert (= (and b!2256459 res!964565) b!2256478))

(assert (= (and b!2256478 res!964563) b!2256460))

(assert (= (and b!2256460 res!964567) b!2256450))

(assert (= (and b!2256450 res!964571) b!2256477))

(assert (= (and b!2256450 (not res!964572)) b!2256462))

(assert (= (and b!2256462 (not res!964559)) b!2256465))

(assert (= (and b!2256465 c!358597) b!2256447))

(assert (= (and b!2256465 (not c!358597)) b!2256473))

(assert (= (and b!2256465 (not res!964570)) b!2256467))

(assert (= (and start!220184 ((_ is Cons!26774) input!1722)) b!2256472))

(assert (= b!2256457 b!2256471))

(assert (= start!220184 b!2256457))

(assert (= (and start!220184 ((_ is Cons!26774) suffix!886)) b!2256449))

(assert (= (and start!220184 ((_ is Cons!26774) otherP!12)) b!2256468))

(assert (= b!2256458 b!2256463))

(assert (= b!2256464 b!2256458))

(assert (= (and start!220184 ((_ is Cons!26775) rules!1750)) b!2256464))

(assert (= b!2256453 b!2256469))

(assert (= start!220184 b!2256453))

(assert (= b!2256461 b!2256452))

(assert (= b!2256448 b!2256461))

(assert (= b!2256474 b!2256448))

(assert (= (and start!220184 ((_ is Cons!26776) tokens!456)) b!2256474))

(declare-fun m!2686835 () Bool)

(assert (=> b!2256474 m!2686835))

(declare-fun m!2686837 () Bool)

(assert (=> b!2256453 m!2686837))

(declare-fun m!2686839 () Bool)

(assert (=> b!2256453 m!2686839))

(declare-fun m!2686841 () Bool)

(assert (=> b!2256461 m!2686841))

(declare-fun m!2686843 () Bool)

(assert (=> b!2256461 m!2686843))

(declare-fun m!2686845 () Bool)

(assert (=> b!2256476 m!2686845))

(declare-fun m!2686847 () Bool)

(assert (=> b!2256477 m!2686847))

(assert (=> b!2256477 m!2686847))

(declare-fun m!2686849 () Bool)

(assert (=> b!2256477 m!2686849))

(assert (=> b!2256477 m!2686849))

(declare-fun m!2686851 () Bool)

(assert (=> b!2256477 m!2686851))

(assert (=> b!2256477 m!2686851))

(declare-fun m!2686853 () Bool)

(assert (=> b!2256477 m!2686853))

(declare-fun m!2686855 () Bool)

(assert (=> b!2256456 m!2686855))

(declare-fun m!2686857 () Bool)

(assert (=> b!2256456 m!2686857))

(declare-fun m!2686859 () Bool)

(assert (=> b!2256456 m!2686859))

(assert (=> b!2256456 m!2686859))

(declare-fun m!2686861 () Bool)

(assert (=> b!2256456 m!2686861))

(declare-fun m!2686863 () Bool)

(assert (=> b!2256478 m!2686863))

(assert (=> b!2256455 m!2686847))

(declare-fun m!2686865 () Bool)

(assert (=> b!2256466 m!2686865))

(declare-fun m!2686867 () Bool)

(assert (=> b!2256447 m!2686867))

(declare-fun m!2686869 () Bool)

(assert (=> b!2256462 m!2686869))

(declare-fun m!2686871 () Bool)

(assert (=> b!2256462 m!2686871))

(declare-fun m!2686873 () Bool)

(assert (=> b!2256462 m!2686873))

(declare-fun m!2686875 () Bool)

(assert (=> b!2256462 m!2686875))

(declare-fun m!2686877 () Bool)

(assert (=> b!2256475 m!2686877))

(declare-fun m!2686879 () Bool)

(assert (=> b!2256457 m!2686879))

(declare-fun m!2686881 () Bool)

(assert (=> b!2256457 m!2686881))

(declare-fun m!2686883 () Bool)

(assert (=> b!2256467 m!2686883))

(assert (=> b!2256467 m!2686883))

(declare-fun m!2686885 () Bool)

(assert (=> b!2256467 m!2686885))

(declare-fun m!2686887 () Bool)

(assert (=> b!2256467 m!2686887))

(declare-fun m!2686889 () Bool)

(assert (=> b!2256458 m!2686889))

(declare-fun m!2686891 () Bool)

(assert (=> b!2256458 m!2686891))

(declare-fun m!2686893 () Bool)

(assert (=> b!2256450 m!2686893))

(declare-fun m!2686895 () Bool)

(assert (=> b!2256450 m!2686895))

(declare-fun m!2686897 () Bool)

(assert (=> b!2256448 m!2686897))

(assert (=> b!2256451 m!2686847))

(assert (=> b!2256451 m!2686847))

(assert (=> b!2256451 m!2686849))

(assert (=> b!2256451 m!2686849))

(declare-fun m!2686899 () Bool)

(assert (=> b!2256451 m!2686899))

(declare-fun m!2686901 () Bool)

(assert (=> b!2256451 m!2686901))

(declare-fun m!2686903 () Bool)

(assert (=> b!2256454 m!2686903))

(declare-fun m!2686905 () Bool)

(assert (=> b!2256470 m!2686905))

(check-sat b_and!177117 (not b!2256457) (not b_next!67129) (not b!2256448) (not b_next!67119) (not b!2256474) (not b!2256447) (not b!2256449) (not b!2256477) (not b_next!67121) (not b!2256475) (not b!2256450) (not b!2256464) (not b!2256461) (not b!2256468) (not b!2256478) (not b!2256476) (not b!2256456) b_and!177105 (not b!2256455) (not b!2256454) b_and!177115 (not b!2256451) b_and!177111 (not b_next!67127) (not b!2256462) b_and!177113 (not b_next!67131) (not b!2256466) (not b!2256467) (not b_next!67125) (not b_next!67117) b_and!177107 (not b!2256458) b_and!177119 (not b_next!67123) (not b!2256470) (not b!2256472) b_and!177109 tp_is_empty!10423 (not b!2256453))
(check-sat b_and!177117 b_and!177105 (not b_next!67129) (not b_next!67119) (not b_next!67127) (not b_next!67121) (not b_next!67123) b_and!177109 b_and!177115 b_and!177111 b_and!177113 (not b_next!67131) (not b_next!67125) (not b_next!67117) b_and!177107 b_and!177119)
