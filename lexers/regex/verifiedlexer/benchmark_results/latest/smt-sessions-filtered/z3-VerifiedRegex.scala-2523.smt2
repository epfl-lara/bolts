; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134518 () Bool)

(assert start!134518)

(declare-fun e!923457 () Bool)

(declare-fun tp!408247 () Bool)

(declare-datatypes ((C!8096 0))(
  ( (C!8097 (val!4618 Int)) )
))
(declare-datatypes ((List!15099 0))(
  ( (Nil!15033) (Cons!15033 (h!20434 C!8096) (t!130390 List!15099)) )
))
(declare-datatypes ((IArray!10237 0))(
  ( (IArray!10238 (innerList!5176 List!15099)) )
))
(declare-datatypes ((Conc!5116 0))(
  ( (Node!5116 (left!12793 Conc!5116) (right!13123 Conc!5116) (csize!10462 Int) (cheight!5327 Int)) (Leaf!7640 (xs!7857 IArray!10237) (csize!10463 Int)) (Empty!5116) )
))
(declare-datatypes ((BalanceConc!10172 0))(
  ( (BalanceConc!10173 (c!238524 Conc!5116)) )
))
(declare-datatypes ((List!15100 0))(
  ( (Nil!15034) (Cons!15034 (h!20435 (_ BitVec 16)) (t!130391 List!15100)) )
))
(declare-datatypes ((TokenValue!2735 0))(
  ( (FloatLiteralValue!5470 (text!19590 List!15100)) (TokenValueExt!2734 (__x!9260 Int)) (Broken!13675 (value!85004 List!15100)) (Object!2800) (End!2735) (Def!2735) (Underscore!2735) (Match!2735) (Else!2735) (Error!2735) (Case!2735) (If!2735) (Extends!2735) (Abstract!2735) (Class!2735) (Val!2735) (DelimiterValue!5470 (del!2795 List!15100)) (KeywordValue!2741 (value!85005 List!15100)) (CommentValue!5470 (value!85006 List!15100)) (WhitespaceValue!5470 (value!85007 List!15100)) (IndentationValue!2735 (value!85008 List!15100)) (String!17930) (Int32!2735) (Broken!13676 (value!85009 List!15100)) (Boolean!2736) (Unit!23944) (OperatorValue!2738 (op!2795 List!15100)) (IdentifierValue!5470 (value!85010 List!15100)) (IdentifierValue!5471 (value!85011 List!15100)) (WhitespaceValue!5471 (value!85012 List!15100)) (True!5470) (False!5470) (Broken!13677 (value!85013 List!15100)) (Broken!13678 (value!85014 List!15100)) (True!5471) (RightBrace!2735) (RightBracket!2735) (Colon!2735) (Null!2735) (Comma!2735) (LeftBracket!2735) (False!5471) (LeftBrace!2735) (ImaginaryLiteralValue!2735 (text!19591 List!15100)) (StringLiteralValue!8205 (value!85015 List!15100)) (EOFValue!2735 (value!85016 List!15100)) (IdentValue!2735 (value!85017 List!15100)) (DelimiterValue!5471 (value!85018 List!15100)) (DedentValue!2735 (value!85019 List!15100)) (NewLineValue!2735 (value!85020 List!15100)) (IntegerValue!8205 (value!85021 (_ BitVec 32)) (text!19592 List!15100)) (IntegerValue!8206 (value!85022 Int) (text!19593 List!15100)) (Times!2735) (Or!2735) (Equal!2735) (Minus!2735) (Broken!13679 (value!85023 List!15100)) (And!2735) (Div!2735) (LessEqual!2735) (Mod!2735) (Concat!6694) (Not!2735) (Plus!2735) (SpaceValue!2735 (value!85024 List!15100)) (IntegerValue!8207 (value!85025 Int) (text!19594 List!15100)) (StringLiteralValue!8206 (text!19595 List!15100)) (FloatLiteralValue!5471 (text!19596 List!15100)) (BytesLiteralValue!2735 (value!85026 List!15100)) (CommentValue!5471 (value!85027 List!15100)) (StringLiteralValue!8207 (value!85028 List!15100)) (ErrorTokenValue!2735 (msg!2796 List!15100)) )
))
(declare-datatypes ((Regex!3959 0))(
  ( (ElementMatch!3959 (c!238525 C!8096)) (Concat!6695 (regOne!8430 Regex!3959) (regTwo!8430 Regex!3959)) (EmptyExpr!3959) (Star!3959 (reg!4288 Regex!3959)) (EmptyLang!3959) (Union!3959 (regOne!8431 Regex!3959) (regTwo!8431 Regex!3959)) )
))
(declare-datatypes ((String!17931 0))(
  ( (String!17932 (value!85029 String)) )
))
(declare-datatypes ((TokenValueInjection!5130 0))(
  ( (TokenValueInjection!5131 (toValue!3952 Int) (toChars!3811 Int)) )
))
(declare-datatypes ((Rule!5090 0))(
  ( (Rule!5091 (regex!2645 Regex!3959) (tag!2909 String!17931) (isSeparator!2645 Bool) (transformation!2645 TokenValueInjection!5130)) )
))
(declare-datatypes ((Token!4952 0))(
  ( (Token!4953 (value!85030 TokenValue!2735) (rule!4418 Rule!5090) (size!12311 Int) (originalCharacters!3507 List!15099)) )
))
(declare-datatypes ((List!15101 0))(
  ( (Nil!15035) (Cons!15035 (h!20436 Token!4952) (t!130392 List!15101)) )
))
(declare-datatypes ((IArray!10239 0))(
  ( (IArray!10240 (innerList!5177 List!15101)) )
))
(declare-datatypes ((Conc!5117 0))(
  ( (Node!5117 (left!12794 Conc!5117) (right!13124 Conc!5117) (csize!10464 Int) (cheight!5328 Int)) (Leaf!7641 (xs!7858 IArray!10239) (csize!10465 Int)) (Empty!5117) )
))
(declare-datatypes ((BalanceConc!10174 0))(
  ( (BalanceConc!10175 (c!238526 Conc!5117)) )
))
(declare-datatypes ((List!15102 0))(
  ( (Nil!15036) (Cons!15036 (h!20437 Rule!5090) (t!130393 List!15102)) )
))
(declare-datatypes ((PrintableTokens!1072 0))(
  ( (PrintableTokens!1073 (rules!11524 List!15102) (tokens!2030 BalanceConc!10174)) )
))
(declare-fun thiss!10022 () PrintableTokens!1072)

(declare-fun e!923452 () Bool)

(declare-fun b!1447520 () Bool)

(declare-fun inv!20035 (BalanceConc!10174) Bool)

(assert (=> b!1447520 (= e!923452 (and tp!408247 (inv!20035 (tokens!2030 thiss!10022)) e!923457))))

(declare-fun b!1447521 () Bool)

(declare-fun e!923458 () Bool)

(declare-fun e!923456 () Bool)

(assert (=> b!1447521 (= e!923458 e!923456)))

(declare-fun res!655343 () Bool)

(assert (=> b!1447521 (=> (not res!655343) (not e!923456))))

(declare-fun other!32 () PrintableTokens!1072)

(declare-fun isEmpty!9380 (BalanceConc!10174) Bool)

(assert (=> b!1447521 (= res!655343 (not (isEmpty!9380 (tokens!2030 other!32))))))

(declare-datatypes ((Unit!23945 0))(
  ( (Unit!23946) )
))
(declare-fun lt!499173 () Unit!23945)

(declare-fun lemmaInvariant!341 (PrintableTokens!1072) Unit!23945)

(assert (=> b!1447521 (= lt!499173 (lemmaInvariant!341 thiss!10022))))

(declare-fun lt!499172 () Unit!23945)

(assert (=> b!1447521 (= lt!499172 (lemmaInvariant!341 other!32))))

(declare-fun b!1447522 () Bool)

(declare-fun e!923453 () Bool)

(assert (=> b!1447522 (= e!923456 e!923453)))

(declare-fun res!655344 () Bool)

(assert (=> b!1447522 (=> (not res!655344) (not e!923453))))

(declare-fun isEmpty!9381 (List!15102) Bool)

(assert (=> b!1447522 (= res!655344 (not (isEmpty!9381 (rules!11524 thiss!10022))))))

(declare-fun lt!499171 () Token!4952)

(declare-fun last!193 (BalanceConc!10174) Token!4952)

(assert (=> b!1447522 (= lt!499171 (last!193 (tokens!2030 thiss!10022)))))

(declare-fun lt!499170 () List!15101)

(declare-fun list!5999 (BalanceConc!10174) List!15101)

(assert (=> b!1447522 (= lt!499170 (list!5999 (tokens!2030 thiss!10022)))))

(declare-fun b!1447523 () Bool)

(declare-fun res!655342 () Bool)

(assert (=> b!1447523 (=> (not res!655342) (not e!923456))))

(assert (=> b!1447523 (= res!655342 (not (isEmpty!9380 (tokens!2030 thiss!10022))))))

(declare-fun b!1447524 () Bool)

(declare-fun contains!2875 (List!15101 Token!4952) Bool)

(assert (=> b!1447524 (= e!923453 (not (contains!2875 lt!499170 lt!499171)))))

(declare-fun b!1447526 () Bool)

(declare-fun e!923454 () Bool)

(declare-fun tp!408249 () Bool)

(declare-fun inv!20036 (Conc!5117) Bool)

(assert (=> b!1447526 (= e!923454 (and (inv!20036 (c!238526 (tokens!2030 other!32))) tp!408249))))

(declare-fun res!655346 () Bool)

(assert (=> start!134518 (=> (not res!655346) (not e!923458))))

(assert (=> start!134518 (= res!655346 (= (rules!11524 thiss!10022) (rules!11524 other!32)))))

(assert (=> start!134518 e!923458))

(declare-fun inv!20037 (PrintableTokens!1072) Bool)

(assert (=> start!134518 (and (inv!20037 thiss!10022) e!923452)))

(declare-fun e!923455 () Bool)

(assert (=> start!134518 (and (inv!20037 other!32) e!923455)))

(declare-fun b!1447525 () Bool)

(declare-fun tp!408248 () Bool)

(assert (=> b!1447525 (= e!923457 (and (inv!20036 (c!238526 (tokens!2030 thiss!10022))) tp!408248))))

(declare-fun b!1447527 () Bool)

(declare-fun tp!408250 () Bool)

(assert (=> b!1447527 (= e!923455 (and tp!408250 (inv!20035 (tokens!2030 other!32)) e!923454))))

(declare-fun b!1447528 () Bool)

(declare-fun res!655345 () Bool)

(assert (=> b!1447528 (=> (not res!655345) (not e!923453))))

(declare-datatypes ((LexerInterface!2301 0))(
  ( (LexerInterfaceExt!2298 (__x!9261 Int)) (Lexer!2299) )
))
(declare-fun rulesInvariant!2139 (LexerInterface!2301 List!15102) Bool)

(assert (=> b!1447528 (= res!655345 (rulesInvariant!2139 Lexer!2299 (rules!11524 thiss!10022)))))

(assert (= (and start!134518 res!655346) b!1447521))

(assert (= (and b!1447521 res!655343) b!1447523))

(assert (= (and b!1447523 res!655342) b!1447522))

(assert (= (and b!1447522 res!655344) b!1447528))

(assert (= (and b!1447528 res!655345) b!1447524))

(assert (= b!1447520 b!1447525))

(assert (= start!134518 b!1447520))

(assert (= b!1447527 b!1447526))

(assert (= start!134518 b!1447527))

(declare-fun m!1670335 () Bool)

(assert (=> b!1447526 m!1670335))

(declare-fun m!1670337 () Bool)

(assert (=> b!1447524 m!1670337))

(declare-fun m!1670339 () Bool)

(assert (=> b!1447520 m!1670339))

(declare-fun m!1670341 () Bool)

(assert (=> b!1447528 m!1670341))

(declare-fun m!1670343 () Bool)

(assert (=> b!1447522 m!1670343))

(declare-fun m!1670345 () Bool)

(assert (=> b!1447522 m!1670345))

(declare-fun m!1670347 () Bool)

(assert (=> b!1447522 m!1670347))

(declare-fun m!1670349 () Bool)

(assert (=> b!1447525 m!1670349))

(declare-fun m!1670351 () Bool)

(assert (=> b!1447521 m!1670351))

(declare-fun m!1670353 () Bool)

(assert (=> b!1447521 m!1670353))

(declare-fun m!1670355 () Bool)

(assert (=> b!1447521 m!1670355))

(declare-fun m!1670357 () Bool)

(assert (=> b!1447527 m!1670357))

(declare-fun m!1670359 () Bool)

(assert (=> start!134518 m!1670359))

(declare-fun m!1670361 () Bool)

(assert (=> start!134518 m!1670361))

(declare-fun m!1670363 () Bool)

(assert (=> b!1447523 m!1670363))

(check-sat (not b!1447528) (not start!134518) (not b!1447527) (not b!1447520) (not b!1447524) (not b!1447526) (not b!1447525) (not b!1447521) (not b!1447522) (not b!1447523))
(check-sat)
(get-model)

(declare-fun d!420202 () Bool)

(declare-fun lt!499179 () Bool)

(declare-fun isEmpty!9384 (List!15101) Bool)

(assert (=> d!420202 (= lt!499179 (isEmpty!9384 (list!5999 (tokens!2030 thiss!10022))))))

(declare-fun isEmpty!9385 (Conc!5117) Bool)

(assert (=> d!420202 (= lt!499179 (isEmpty!9385 (c!238526 (tokens!2030 thiss!10022))))))

(assert (=> d!420202 (= (isEmpty!9380 (tokens!2030 thiss!10022)) lt!499179)))

(declare-fun bs!342328 () Bool)

(assert (= bs!342328 d!420202))

(assert (=> bs!342328 m!1670347))

(assert (=> bs!342328 m!1670347))

(declare-fun m!1670375 () Bool)

(assert (=> bs!342328 m!1670375))

(declare-fun m!1670377 () Bool)

(assert (=> bs!342328 m!1670377))

(assert (=> b!1447523 d!420202))

(declare-fun d!420208 () Bool)

(declare-fun lt!499186 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2225 (List!15101) (InoxSet Token!4952))

(assert (=> d!420208 (= lt!499186 (select (content!2225 lt!499170) lt!499171))))

(declare-fun e!923475 () Bool)

(assert (=> d!420208 (= lt!499186 e!923475)))

(declare-fun res!655365 () Bool)

(assert (=> d!420208 (=> (not res!655365) (not e!923475))))

(get-info :version)

(assert (=> d!420208 (= res!655365 ((_ is Cons!15035) lt!499170))))

(assert (=> d!420208 (= (contains!2875 lt!499170 lt!499171) lt!499186)))

(declare-fun b!1447548 () Bool)

(declare-fun e!923476 () Bool)

(assert (=> b!1447548 (= e!923475 e!923476)))

(declare-fun res!655364 () Bool)

(assert (=> b!1447548 (=> res!655364 e!923476)))

(assert (=> b!1447548 (= res!655364 (= (h!20436 lt!499170) lt!499171))))

(declare-fun b!1447549 () Bool)

(assert (=> b!1447549 (= e!923476 (contains!2875 (t!130392 lt!499170) lt!499171))))

(assert (= (and d!420208 res!655365) b!1447548))

(assert (= (and b!1447548 (not res!655364)) b!1447549))

(declare-fun m!1670391 () Bool)

(assert (=> d!420208 m!1670391))

(declare-fun m!1670393 () Bool)

(assert (=> d!420208 m!1670393))

(declare-fun m!1670395 () Bool)

(assert (=> b!1447549 m!1670395))

(assert (=> b!1447524 d!420208))

(declare-fun d!420216 () Bool)

(declare-fun c!238532 () Bool)

(assert (=> d!420216 (= c!238532 ((_ is Node!5117) (c!238526 (tokens!2030 thiss!10022))))))

(declare-fun e!923481 () Bool)

(assert (=> d!420216 (= (inv!20036 (c!238526 (tokens!2030 thiss!10022))) e!923481)))

(declare-fun b!1447556 () Bool)

(declare-fun inv!20042 (Conc!5117) Bool)

(assert (=> b!1447556 (= e!923481 (inv!20042 (c!238526 (tokens!2030 thiss!10022))))))

(declare-fun b!1447557 () Bool)

(declare-fun e!923482 () Bool)

(assert (=> b!1447557 (= e!923481 e!923482)))

(declare-fun res!655368 () Bool)

(assert (=> b!1447557 (= res!655368 (not ((_ is Leaf!7641) (c!238526 (tokens!2030 thiss!10022)))))))

(assert (=> b!1447557 (=> res!655368 e!923482)))

(declare-fun b!1447558 () Bool)

(declare-fun inv!20043 (Conc!5117) Bool)

(assert (=> b!1447558 (= e!923482 (inv!20043 (c!238526 (tokens!2030 thiss!10022))))))

(assert (= (and d!420216 c!238532) b!1447556))

(assert (= (and d!420216 (not c!238532)) b!1447557))

(assert (= (and b!1447557 (not res!655368)) b!1447558))

(declare-fun m!1670397 () Bool)

(assert (=> b!1447556 m!1670397))

(declare-fun m!1670399 () Bool)

(assert (=> b!1447558 m!1670399))

(assert (=> b!1447525 d!420216))

(declare-fun d!420218 () Bool)

(declare-fun isBalanced!1526 (Conc!5117) Bool)

(assert (=> d!420218 (= (inv!20035 (tokens!2030 thiss!10022)) (isBalanced!1526 (c!238526 (tokens!2030 thiss!10022))))))

(declare-fun bs!342332 () Bool)

(assert (= bs!342332 d!420218))

(declare-fun m!1670401 () Bool)

(assert (=> bs!342332 m!1670401))

(assert (=> b!1447520 d!420218))

(declare-fun d!420220 () Bool)

(declare-fun c!238533 () Bool)

(assert (=> d!420220 (= c!238533 ((_ is Node!5117) (c!238526 (tokens!2030 other!32))))))

(declare-fun e!923483 () Bool)

(assert (=> d!420220 (= (inv!20036 (c!238526 (tokens!2030 other!32))) e!923483)))

(declare-fun b!1447559 () Bool)

(assert (=> b!1447559 (= e!923483 (inv!20042 (c!238526 (tokens!2030 other!32))))))

(declare-fun b!1447560 () Bool)

(declare-fun e!923484 () Bool)

(assert (=> b!1447560 (= e!923483 e!923484)))

(declare-fun res!655369 () Bool)

(assert (=> b!1447560 (= res!655369 (not ((_ is Leaf!7641) (c!238526 (tokens!2030 other!32)))))))

(assert (=> b!1447560 (=> res!655369 e!923484)))

(declare-fun b!1447561 () Bool)

(assert (=> b!1447561 (= e!923484 (inv!20043 (c!238526 (tokens!2030 other!32))))))

(assert (= (and d!420220 c!238533) b!1447559))

(assert (= (and d!420220 (not c!238533)) b!1447560))

(assert (= (and b!1447560 (not res!655369)) b!1447561))

(declare-fun m!1670403 () Bool)

(assert (=> b!1447559 m!1670403))

(declare-fun m!1670405 () Bool)

(assert (=> b!1447561 m!1670405))

(assert (=> b!1447526 d!420220))

(declare-fun d!420222 () Bool)

(declare-fun res!655387 () Bool)

(declare-fun e!923494 () Bool)

(assert (=> d!420222 (=> (not res!655387) (not e!923494))))

(assert (=> d!420222 (= res!655387 (not (isEmpty!9381 (rules!11524 thiss!10022))))))

(assert (=> d!420222 (= (inv!20037 thiss!10022) e!923494)))

(declare-fun b!1447579 () Bool)

(declare-fun res!655388 () Bool)

(assert (=> b!1447579 (=> (not res!655388) (not e!923494))))

(assert (=> b!1447579 (= res!655388 (rulesInvariant!2139 Lexer!2299 (rules!11524 thiss!10022)))))

(declare-fun b!1447580 () Bool)

(declare-fun res!655389 () Bool)

(assert (=> b!1447580 (=> (not res!655389) (not e!923494))))

(declare-fun rulesProduceEachTokenIndividually!856 (LexerInterface!2301 List!15102 BalanceConc!10174) Bool)

(assert (=> b!1447580 (= res!655389 (rulesProduceEachTokenIndividually!856 Lexer!2299 (rules!11524 thiss!10022) (tokens!2030 thiss!10022)))))

(declare-fun b!1447581 () Bool)

(declare-fun separableTokens!240 (LexerInterface!2301 BalanceConc!10174 List!15102) Bool)

(assert (=> b!1447581 (= e!923494 (separableTokens!240 Lexer!2299 (tokens!2030 thiss!10022) (rules!11524 thiss!10022)))))

(assert (= (and d!420222 res!655387) b!1447579))

(assert (= (and b!1447579 res!655388) b!1447580))

(assert (= (and b!1447580 res!655389) b!1447581))

(assert (=> d!420222 m!1670343))

(assert (=> b!1447579 m!1670341))

(declare-fun m!1670421 () Bool)

(assert (=> b!1447580 m!1670421))

(declare-fun m!1670423 () Bool)

(assert (=> b!1447581 m!1670423))

(assert (=> start!134518 d!420222))

(declare-fun d!420230 () Bool)

(declare-fun res!655390 () Bool)

(declare-fun e!923495 () Bool)

(assert (=> d!420230 (=> (not res!655390) (not e!923495))))

(assert (=> d!420230 (= res!655390 (not (isEmpty!9381 (rules!11524 other!32))))))

(assert (=> d!420230 (= (inv!20037 other!32) e!923495)))

(declare-fun b!1447582 () Bool)

(declare-fun res!655391 () Bool)

(assert (=> b!1447582 (=> (not res!655391) (not e!923495))))

(assert (=> b!1447582 (= res!655391 (rulesInvariant!2139 Lexer!2299 (rules!11524 other!32)))))

(declare-fun b!1447583 () Bool)

(declare-fun res!655392 () Bool)

(assert (=> b!1447583 (=> (not res!655392) (not e!923495))))

(assert (=> b!1447583 (= res!655392 (rulesProduceEachTokenIndividually!856 Lexer!2299 (rules!11524 other!32) (tokens!2030 other!32)))))

(declare-fun b!1447584 () Bool)

(assert (=> b!1447584 (= e!923495 (separableTokens!240 Lexer!2299 (tokens!2030 other!32) (rules!11524 other!32)))))

(assert (= (and d!420230 res!655390) b!1447582))

(assert (= (and b!1447582 res!655391) b!1447583))

(assert (= (and b!1447583 res!655392) b!1447584))

(declare-fun m!1670425 () Bool)

(assert (=> d!420230 m!1670425))

(declare-fun m!1670427 () Bool)

(assert (=> b!1447582 m!1670427))

(declare-fun m!1670429 () Bool)

(assert (=> b!1447583 m!1670429))

(declare-fun m!1670431 () Bool)

(assert (=> b!1447584 m!1670431))

(assert (=> start!134518 d!420230))

(declare-fun d!420232 () Bool)

(declare-fun lt!499187 () Bool)

(assert (=> d!420232 (= lt!499187 (isEmpty!9384 (list!5999 (tokens!2030 other!32))))))

(assert (=> d!420232 (= lt!499187 (isEmpty!9385 (c!238526 (tokens!2030 other!32))))))

(assert (=> d!420232 (= (isEmpty!9380 (tokens!2030 other!32)) lt!499187)))

(declare-fun bs!342333 () Bool)

(assert (= bs!342333 d!420232))

(declare-fun m!1670433 () Bool)

(assert (=> bs!342333 m!1670433))

(assert (=> bs!342333 m!1670433))

(declare-fun m!1670435 () Bool)

(assert (=> bs!342333 m!1670435))

(declare-fun m!1670437 () Bool)

(assert (=> bs!342333 m!1670437))

(assert (=> b!1447521 d!420232))

(declare-fun d!420234 () Bool)

(declare-fun e!923528 () Bool)

(assert (=> d!420234 e!923528))

(declare-fun res!655410 () Bool)

(assert (=> d!420234 (=> (not res!655410) (not e!923528))))

(assert (=> d!420234 (= res!655410 (rulesInvariant!2139 Lexer!2299 (rules!11524 thiss!10022)))))

(declare-fun Unit!23949 () Unit!23945)

(assert (=> d!420234 (= (lemmaInvariant!341 thiss!10022) Unit!23949)))

(declare-fun b!1447632 () Bool)

(declare-fun res!655411 () Bool)

(assert (=> b!1447632 (=> (not res!655411) (not e!923528))))

(assert (=> b!1447632 (= res!655411 (rulesProduceEachTokenIndividually!856 Lexer!2299 (rules!11524 thiss!10022) (tokens!2030 thiss!10022)))))

(declare-fun b!1447633 () Bool)

(assert (=> b!1447633 (= e!923528 (separableTokens!240 Lexer!2299 (tokens!2030 thiss!10022) (rules!11524 thiss!10022)))))

(assert (= (and d!420234 res!655410) b!1447632))

(assert (= (and b!1447632 res!655411) b!1447633))

(assert (=> d!420234 m!1670341))

(assert (=> b!1447632 m!1670421))

(assert (=> b!1447633 m!1670423))

(assert (=> b!1447521 d!420234))

(declare-fun d!420248 () Bool)

(declare-fun e!923529 () Bool)

(assert (=> d!420248 e!923529))

(declare-fun res!655412 () Bool)

(assert (=> d!420248 (=> (not res!655412) (not e!923529))))

(assert (=> d!420248 (= res!655412 (rulesInvariant!2139 Lexer!2299 (rules!11524 other!32)))))

(declare-fun Unit!23950 () Unit!23945)

(assert (=> d!420248 (= (lemmaInvariant!341 other!32) Unit!23950)))

(declare-fun b!1447634 () Bool)

(declare-fun res!655413 () Bool)

(assert (=> b!1447634 (=> (not res!655413) (not e!923529))))

(assert (=> b!1447634 (= res!655413 (rulesProduceEachTokenIndividually!856 Lexer!2299 (rules!11524 other!32) (tokens!2030 other!32)))))

(declare-fun b!1447635 () Bool)

(assert (=> b!1447635 (= e!923529 (separableTokens!240 Lexer!2299 (tokens!2030 other!32) (rules!11524 other!32)))))

(assert (= (and d!420248 res!655412) b!1447634))

(assert (= (and b!1447634 res!655413) b!1447635))

(assert (=> d!420248 m!1670427))

(assert (=> b!1447634 m!1670429))

(assert (=> b!1447635 m!1670431))

(assert (=> b!1447521 d!420248))

(declare-fun d!420250 () Bool)

(assert (=> d!420250 (= (inv!20035 (tokens!2030 other!32)) (isBalanced!1526 (c!238526 (tokens!2030 other!32))))))

(declare-fun bs!342337 () Bool)

(assert (= bs!342337 d!420250))

(declare-fun m!1670473 () Bool)

(assert (=> bs!342337 m!1670473))

(assert (=> b!1447527 d!420250))

(declare-fun d!420252 () Bool)

(assert (=> d!420252 (= (isEmpty!9381 (rules!11524 thiss!10022)) ((_ is Nil!15036) (rules!11524 thiss!10022)))))

(assert (=> b!1447522 d!420252))

(declare-fun d!420254 () Bool)

(declare-fun lt!499193 () Token!4952)

(declare-fun last!196 (List!15101) Token!4952)

(assert (=> d!420254 (= lt!499193 (last!196 (list!5999 (tokens!2030 thiss!10022))))))

(declare-fun last!197 (Conc!5117) Token!4952)

(assert (=> d!420254 (= lt!499193 (last!197 (c!238526 (tokens!2030 thiss!10022))))))

(assert (=> d!420254 (not (isEmpty!9380 (tokens!2030 thiss!10022)))))

(assert (=> d!420254 (= (last!193 (tokens!2030 thiss!10022)) lt!499193)))

(declare-fun bs!342338 () Bool)

(assert (= bs!342338 d!420254))

(assert (=> bs!342338 m!1670347))

(assert (=> bs!342338 m!1670347))

(declare-fun m!1670475 () Bool)

(assert (=> bs!342338 m!1670475))

(declare-fun m!1670477 () Bool)

(assert (=> bs!342338 m!1670477))

(assert (=> bs!342338 m!1670363))

(assert (=> b!1447522 d!420254))

(declare-fun d!420256 () Bool)

(declare-fun list!6001 (Conc!5117) List!15101)

(assert (=> d!420256 (= (list!5999 (tokens!2030 thiss!10022)) (list!6001 (c!238526 (tokens!2030 thiss!10022))))))

(declare-fun bs!342339 () Bool)

(assert (= bs!342339 d!420256))

(declare-fun m!1670479 () Bool)

(assert (=> bs!342339 m!1670479))

(assert (=> b!1447522 d!420256))

(declare-fun d!420258 () Bool)

(declare-fun res!655416 () Bool)

(declare-fun e!923532 () Bool)

(assert (=> d!420258 (=> (not res!655416) (not e!923532))))

(declare-fun rulesValid!971 (LexerInterface!2301 List!15102) Bool)

(assert (=> d!420258 (= res!655416 (rulesValid!971 Lexer!2299 (rules!11524 thiss!10022)))))

(assert (=> d!420258 (= (rulesInvariant!2139 Lexer!2299 (rules!11524 thiss!10022)) e!923532)))

(declare-fun b!1447638 () Bool)

(declare-datatypes ((List!15104 0))(
  ( (Nil!15038) (Cons!15038 (h!20439 String!17931) (t!130396 List!15104)) )
))
(declare-fun noDuplicateTag!971 (LexerInterface!2301 List!15102 List!15104) Bool)

(assert (=> b!1447638 (= e!923532 (noDuplicateTag!971 Lexer!2299 (rules!11524 thiss!10022) Nil!15038))))

(assert (= (and d!420258 res!655416) b!1447638))

(declare-fun m!1670481 () Bool)

(assert (=> d!420258 m!1670481))

(declare-fun m!1670483 () Bool)

(assert (=> b!1447638 m!1670483))

(assert (=> b!1447528 d!420258))

(declare-fun e!923538 () Bool)

(declare-fun b!1447647 () Bool)

(declare-fun tp!408285 () Bool)

(declare-fun tp!408286 () Bool)

(assert (=> b!1447647 (= e!923538 (and (inv!20036 (left!12794 (c!238526 (tokens!2030 thiss!10022)))) tp!408285 (inv!20036 (right!13124 (c!238526 (tokens!2030 thiss!10022)))) tp!408286))))

(declare-fun b!1447649 () Bool)

(declare-fun e!923537 () Bool)

(declare-fun tp!408287 () Bool)

(assert (=> b!1447649 (= e!923537 tp!408287)))

(declare-fun b!1447648 () Bool)

(declare-fun inv!20044 (IArray!10239) Bool)

(assert (=> b!1447648 (= e!923538 (and (inv!20044 (xs!7858 (c!238526 (tokens!2030 thiss!10022)))) e!923537))))

(assert (=> b!1447525 (= tp!408248 (and (inv!20036 (c!238526 (tokens!2030 thiss!10022))) e!923538))))

(assert (= (and b!1447525 ((_ is Node!5117) (c!238526 (tokens!2030 thiss!10022)))) b!1447647))

(assert (= b!1447648 b!1447649))

(assert (= (and b!1447525 ((_ is Leaf!7641) (c!238526 (tokens!2030 thiss!10022)))) b!1447648))

(declare-fun m!1670485 () Bool)

(assert (=> b!1447647 m!1670485))

(declare-fun m!1670487 () Bool)

(assert (=> b!1447647 m!1670487))

(declare-fun m!1670489 () Bool)

(assert (=> b!1447648 m!1670489))

(assert (=> b!1447525 m!1670349))

(declare-fun b!1447660 () Bool)

(declare-fun b_free!35887 () Bool)

(declare-fun b_next!36591 () Bool)

(assert (=> b!1447660 (= b_free!35887 (not b_next!36591))))

(declare-fun tp!408298 () Bool)

(declare-fun b_and!97951 () Bool)

(assert (=> b!1447660 (= tp!408298 b_and!97951)))

(declare-fun b_free!35889 () Bool)

(declare-fun b_next!36593 () Bool)

(assert (=> b!1447660 (= b_free!35889 (not b_next!36593))))

(declare-fun tp!408296 () Bool)

(declare-fun b_and!97953 () Bool)

(assert (=> b!1447660 (= tp!408296 b_and!97953)))

(declare-fun e!923550 () Bool)

(assert (=> b!1447660 (= e!923550 (and tp!408298 tp!408296))))

(declare-fun e!923548 () Bool)

(declare-fun tp!408297 () Bool)

(declare-fun b!1447659 () Bool)

(declare-fun inv!20031 (String!17931) Bool)

(declare-fun inv!20045 (TokenValueInjection!5130) Bool)

(assert (=> b!1447659 (= e!923548 (and tp!408297 (inv!20031 (tag!2909 (h!20437 (rules!11524 thiss!10022)))) (inv!20045 (transformation!2645 (h!20437 (rules!11524 thiss!10022)))) e!923550))))

(declare-fun b!1447658 () Bool)

(declare-fun e!923549 () Bool)

(declare-fun tp!408299 () Bool)

(assert (=> b!1447658 (= e!923549 (and e!923548 tp!408299))))

(assert (=> b!1447520 (= tp!408247 e!923549)))

(assert (= b!1447659 b!1447660))

(assert (= b!1447658 b!1447659))

(assert (= (and b!1447520 ((_ is Cons!15036) (rules!11524 thiss!10022))) b!1447658))

(declare-fun m!1670491 () Bool)

(assert (=> b!1447659 m!1670491))

(declare-fun m!1670493 () Bool)

(assert (=> b!1447659 m!1670493))

(declare-fun tp!408300 () Bool)

(declare-fun b!1447661 () Bool)

(declare-fun e!923552 () Bool)

(declare-fun tp!408301 () Bool)

(assert (=> b!1447661 (= e!923552 (and (inv!20036 (left!12794 (c!238526 (tokens!2030 other!32)))) tp!408300 (inv!20036 (right!13124 (c!238526 (tokens!2030 other!32)))) tp!408301))))

(declare-fun b!1447663 () Bool)

(declare-fun e!923551 () Bool)

(declare-fun tp!408302 () Bool)

(assert (=> b!1447663 (= e!923551 tp!408302)))

(declare-fun b!1447662 () Bool)

(assert (=> b!1447662 (= e!923552 (and (inv!20044 (xs!7858 (c!238526 (tokens!2030 other!32)))) e!923551))))

(assert (=> b!1447526 (= tp!408249 (and (inv!20036 (c!238526 (tokens!2030 other!32))) e!923552))))

(assert (= (and b!1447526 ((_ is Node!5117) (c!238526 (tokens!2030 other!32)))) b!1447661))

(assert (= b!1447662 b!1447663))

(assert (= (and b!1447526 ((_ is Leaf!7641) (c!238526 (tokens!2030 other!32)))) b!1447662))

(declare-fun m!1670495 () Bool)

(assert (=> b!1447661 m!1670495))

(declare-fun m!1670497 () Bool)

(assert (=> b!1447661 m!1670497))

(declare-fun m!1670499 () Bool)

(assert (=> b!1447662 m!1670499))

(assert (=> b!1447526 m!1670335))

(declare-fun b!1447666 () Bool)

(declare-fun b_free!35891 () Bool)

(declare-fun b_next!36595 () Bool)

(assert (=> b!1447666 (= b_free!35891 (not b_next!36595))))

(declare-fun tp!408305 () Bool)

(declare-fun b_and!97955 () Bool)

(assert (=> b!1447666 (= tp!408305 b_and!97955)))

(declare-fun b_free!35893 () Bool)

(declare-fun b_next!36597 () Bool)

(assert (=> b!1447666 (= b_free!35893 (not b_next!36597))))

(declare-fun tp!408303 () Bool)

(declare-fun b_and!97957 () Bool)

(assert (=> b!1447666 (= tp!408303 b_and!97957)))

(declare-fun e!923556 () Bool)

(assert (=> b!1447666 (= e!923556 (and tp!408305 tp!408303))))

(declare-fun e!923554 () Bool)

(declare-fun b!1447665 () Bool)

(declare-fun tp!408304 () Bool)

(assert (=> b!1447665 (= e!923554 (and tp!408304 (inv!20031 (tag!2909 (h!20437 (rules!11524 other!32)))) (inv!20045 (transformation!2645 (h!20437 (rules!11524 other!32)))) e!923556))))

(declare-fun b!1447664 () Bool)

(declare-fun e!923555 () Bool)

(declare-fun tp!408306 () Bool)

(assert (=> b!1447664 (= e!923555 (and e!923554 tp!408306))))

(assert (=> b!1447527 (= tp!408250 e!923555)))

(assert (= b!1447665 b!1447666))

(assert (= b!1447664 b!1447665))

(assert (= (and b!1447527 ((_ is Cons!15036) (rules!11524 other!32))) b!1447664))

(declare-fun m!1670501 () Bool)

(assert (=> b!1447665 m!1670501))

(declare-fun m!1670503 () Bool)

(assert (=> b!1447665 m!1670503))

(check-sat (not b!1447664) (not d!420234) (not b!1447580) (not b!1447549) (not b!1447648) (not b!1447635) (not d!420222) b_and!97955 (not b!1447662) (not d!420256) (not b!1447582) (not b!1447665) (not b!1447659) (not b_next!36595) (not b!1447525) (not b!1447632) (not b!1447581) (not d!420232) (not b!1447658) (not d!420202) (not b!1447663) (not d!420258) (not d!420250) (not b!1447584) (not b_next!36591) (not b!1447633) b_and!97951 (not d!420254) (not d!420230) (not b!1447558) (not b!1447661) (not b!1447583) (not d!420208) (not b!1447649) (not b_next!36593) (not b_next!36597) (not b!1447638) (not b!1447634) (not b!1447647) (not b!1447559) b_and!97957 b_and!97953 (not b!1447556) (not d!420248) (not d!420218) (not b!1447579) (not b!1447561) (not b!1447526))
(check-sat (not b_next!36595) b_and!97955 (not b_next!36593) (not b_next!36597) (not b_next!36591) b_and!97951 b_and!97957 b_and!97953)
(get-model)

(declare-fun d!420278 () Bool)

(declare-fun lt!499217 () Token!4952)

(assert (=> d!420278 (contains!2875 (list!5999 (tokens!2030 thiss!10022)) lt!499217)))

(declare-fun e!923587 () Token!4952)

(assert (=> d!420278 (= lt!499217 e!923587)))

(declare-fun c!238543 () Bool)

(assert (=> d!420278 (= c!238543 (and ((_ is Cons!15035) (list!5999 (tokens!2030 thiss!10022))) ((_ is Nil!15035) (t!130392 (list!5999 (tokens!2030 thiss!10022))))))))

(assert (=> d!420278 (not (isEmpty!9384 (list!5999 (tokens!2030 thiss!10022))))))

(assert (=> d!420278 (= (last!196 (list!5999 (tokens!2030 thiss!10022))) lt!499217)))

(declare-fun b!1447726 () Bool)

(assert (=> b!1447726 (= e!923587 (h!20436 (list!5999 (tokens!2030 thiss!10022))))))

(declare-fun b!1447727 () Bool)

(assert (=> b!1447727 (= e!923587 (last!196 (t!130392 (list!5999 (tokens!2030 thiss!10022)))))))

(assert (= (and d!420278 c!238543) b!1447726))

(assert (= (and d!420278 (not c!238543)) b!1447727))

(assert (=> d!420278 m!1670347))

(declare-fun m!1670561 () Bool)

(assert (=> d!420278 m!1670561))

(assert (=> d!420278 m!1670347))

(assert (=> d!420278 m!1670375))

(declare-fun m!1670563 () Bool)

(assert (=> b!1447727 m!1670563))

(assert (=> d!420254 d!420278))

(assert (=> d!420254 d!420256))

(declare-fun b!1447738 () Bool)

(declare-fun e!923596 () Token!4952)

(declare-fun last!199 (IArray!10239) Token!4952)

(assert (=> b!1447738 (= e!923596 (last!199 (xs!7858 (c!238526 (tokens!2030 thiss!10022)))))))

(declare-fun b!1447739 () Bool)

(declare-fun e!923597 () Bool)

(declare-fun lt!499232 () List!15101)

(declare-fun lt!499229 () List!15101)

(declare-fun ++!4046 (List!15101 List!15101) List!15101)

(assert (=> b!1447739 (= e!923597 (= (last!196 (++!4046 lt!499232 lt!499229)) (last!196 lt!499232)))))

(declare-fun b!1447740 () Bool)

(declare-fun e!923598 () Bool)

(assert (=> b!1447740 (= e!923598 (= (last!196 (++!4046 lt!499232 lt!499229)) (last!196 lt!499229)))))

(declare-fun d!420280 () Bool)

(declare-fun lt!499231 () Token!4952)

(assert (=> d!420280 (= lt!499231 (last!196 (list!6001 (c!238526 (tokens!2030 thiss!10022)))))))

(assert (=> d!420280 (= lt!499231 e!923596)))

(declare-fun c!238546 () Bool)

(assert (=> d!420280 (= c!238546 ((_ is Leaf!7641) (c!238526 (tokens!2030 thiss!10022))))))

(assert (=> d!420280 (isBalanced!1526 (c!238526 (tokens!2030 thiss!10022)))))

(assert (=> d!420280 (= (last!197 (c!238526 (tokens!2030 thiss!10022))) lt!499231)))

(declare-fun b!1447741 () Bool)

(assert (=> b!1447741 (= e!923596 (last!197 (right!13124 (c!238526 (tokens!2030 thiss!10022)))))))

(assert (=> b!1447741 (= lt!499232 (list!6001 (left!12794 (c!238526 (tokens!2030 thiss!10022)))))))

(assert (=> b!1447741 (= lt!499229 (list!6001 (right!13124 (c!238526 (tokens!2030 thiss!10022)))))))

(declare-fun lt!499230 () Unit!23945)

(declare-fun lemmaLastOfConcatIsLastOfRhs!8 (List!15101 List!15101) Unit!23945)

(assert (=> b!1447741 (= lt!499230 (lemmaLastOfConcatIsLastOfRhs!8 lt!499232 lt!499229))))

(declare-fun res!655473 () Bool)

(assert (=> b!1447741 (= res!655473 (isEmpty!9384 lt!499229))))

(assert (=> b!1447741 (=> (not res!655473) (not e!923597))))

(declare-fun res!655474 () Bool)

(assert (=> b!1447741 (= res!655474 e!923597)))

(declare-fun e!923599 () Bool)

(assert (=> b!1447741 (=> res!655474 e!923599)))

(assert (=> b!1447741 e!923599))

(declare-fun lt!499228 () Unit!23945)

(assert (=> b!1447741 (= lt!499228 lt!499230)))

(declare-fun b!1447742 () Bool)

(declare-fun res!655472 () Bool)

(assert (=> b!1447742 (= res!655472 (not (isEmpty!9384 lt!499229)))))

(assert (=> b!1447742 (=> (not res!655472) (not e!923598))))

(assert (=> b!1447742 (= e!923599 e!923598)))

(assert (= (and d!420280 c!238546) b!1447738))

(assert (= (and d!420280 (not c!238546)) b!1447741))

(assert (= (and b!1447741 res!655473) b!1447739))

(assert (= (and b!1447741 (not res!655474)) b!1447742))

(assert (= (and b!1447742 res!655472) b!1447740))

(declare-fun m!1670565 () Bool)

(assert (=> b!1447742 m!1670565))

(assert (=> b!1447741 m!1670565))

(declare-fun m!1670567 () Bool)

(assert (=> b!1447741 m!1670567))

(declare-fun m!1670569 () Bool)

(assert (=> b!1447741 m!1670569))

(declare-fun m!1670571 () Bool)

(assert (=> b!1447741 m!1670571))

(declare-fun m!1670573 () Bool)

(assert (=> b!1447741 m!1670573))

(declare-fun m!1670575 () Bool)

(assert (=> b!1447738 m!1670575))

(declare-fun m!1670577 () Bool)

(assert (=> b!1447740 m!1670577))

(assert (=> b!1447740 m!1670577))

(declare-fun m!1670579 () Bool)

(assert (=> b!1447740 m!1670579))

(declare-fun m!1670581 () Bool)

(assert (=> b!1447740 m!1670581))

(assert (=> d!420280 m!1670479))

(assert (=> d!420280 m!1670479))

(declare-fun m!1670583 () Bool)

(assert (=> d!420280 m!1670583))

(assert (=> d!420280 m!1670401))

(assert (=> b!1447739 m!1670577))

(assert (=> b!1447739 m!1670577))

(assert (=> b!1447739 m!1670579))

(declare-fun m!1670585 () Bool)

(assert (=> b!1447739 m!1670585))

(assert (=> d!420254 d!420280))

(assert (=> d!420254 d!420202))

(declare-fun d!420282 () Bool)

(assert (=> d!420282 true))

(declare-fun lt!499237 () Bool)

(declare-fun rulesValidInductive!820 (LexerInterface!2301 List!15102) Bool)

(assert (=> d!420282 (= lt!499237 (rulesValidInductive!820 Lexer!2299 (rules!11524 thiss!10022)))))

(declare-fun lambda!62966 () Int)

(declare-fun forall!3694 (List!15102 Int) Bool)

(assert (=> d!420282 (= lt!499237 (forall!3694 (rules!11524 thiss!10022) lambda!62966))))

(assert (=> d!420282 (= (rulesValid!971 Lexer!2299 (rules!11524 thiss!10022)) lt!499237)))

(declare-fun bs!342341 () Bool)

(assert (= bs!342341 d!420282))

(declare-fun m!1670587 () Bool)

(assert (=> bs!342341 m!1670587))

(declare-fun m!1670589 () Bool)

(assert (=> bs!342341 m!1670589))

(assert (=> d!420258 d!420282))

(declare-fun d!420284 () Bool)

(declare-fun size!12314 (List!15101) Int)

(assert (=> d!420284 (= (inv!20044 (xs!7858 (c!238526 (tokens!2030 thiss!10022)))) (<= (size!12314 (innerList!5177 (xs!7858 (c!238526 (tokens!2030 thiss!10022))))) 2147483647))))

(declare-fun bs!342342 () Bool)

(assert (= bs!342342 d!420284))

(declare-fun m!1670591 () Bool)

(assert (=> bs!342342 m!1670591))

(assert (=> b!1447648 d!420284))

(declare-fun d!420286 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!124 (LexerInterface!2301 BalanceConc!10174 Int List!15102) Bool)

(assert (=> d!420286 (= (separableTokens!240 Lexer!2299 (tokens!2030 thiss!10022) (rules!11524 thiss!10022)) (tokensListTwoByTwoPredicateSeparable!124 Lexer!2299 (tokens!2030 thiss!10022) 0 (rules!11524 thiss!10022)))))

(declare-fun bs!342343 () Bool)

(assert (= bs!342343 d!420286))

(declare-fun m!1670603 () Bool)

(assert (=> bs!342343 m!1670603))

(assert (=> b!1447633 d!420286))

(declare-fun d!420294 () Bool)

(declare-fun c!238547 () Bool)

(assert (=> d!420294 (= c!238547 ((_ is Node!5117) (left!12794 (c!238526 (tokens!2030 thiss!10022)))))))

(declare-fun e!923615 () Bool)

(assert (=> d!420294 (= (inv!20036 (left!12794 (c!238526 (tokens!2030 thiss!10022)))) e!923615)))

(declare-fun b!1447764 () Bool)

(assert (=> b!1447764 (= e!923615 (inv!20042 (left!12794 (c!238526 (tokens!2030 thiss!10022)))))))

(declare-fun b!1447765 () Bool)

(declare-fun e!923616 () Bool)

(assert (=> b!1447765 (= e!923615 e!923616)))

(declare-fun res!655481 () Bool)

(assert (=> b!1447765 (= res!655481 (not ((_ is Leaf!7641) (left!12794 (c!238526 (tokens!2030 thiss!10022))))))))

(assert (=> b!1447765 (=> res!655481 e!923616)))

(declare-fun b!1447766 () Bool)

(assert (=> b!1447766 (= e!923616 (inv!20043 (left!12794 (c!238526 (tokens!2030 thiss!10022)))))))

(assert (= (and d!420294 c!238547) b!1447764))

(assert (= (and d!420294 (not c!238547)) b!1447765))

(assert (= (and b!1447765 (not res!655481)) b!1447766))

(declare-fun m!1670605 () Bool)

(assert (=> b!1447764 m!1670605))

(declare-fun m!1670607 () Bool)

(assert (=> b!1447766 m!1670607))

(assert (=> b!1447647 d!420294))

(declare-fun d!420296 () Bool)

(declare-fun c!238548 () Bool)

(assert (=> d!420296 (= c!238548 ((_ is Node!5117) (right!13124 (c!238526 (tokens!2030 thiss!10022)))))))

(declare-fun e!923617 () Bool)

(assert (=> d!420296 (= (inv!20036 (right!13124 (c!238526 (tokens!2030 thiss!10022)))) e!923617)))

(declare-fun b!1447767 () Bool)

(assert (=> b!1447767 (= e!923617 (inv!20042 (right!13124 (c!238526 (tokens!2030 thiss!10022)))))))

(declare-fun b!1447768 () Bool)

(declare-fun e!923618 () Bool)

(assert (=> b!1447768 (= e!923617 e!923618)))

(declare-fun res!655482 () Bool)

(assert (=> b!1447768 (= res!655482 (not ((_ is Leaf!7641) (right!13124 (c!238526 (tokens!2030 thiss!10022))))))))

(assert (=> b!1447768 (=> res!655482 e!923618)))

(declare-fun b!1447769 () Bool)

(assert (=> b!1447769 (= e!923618 (inv!20043 (right!13124 (c!238526 (tokens!2030 thiss!10022)))))))

(assert (= (and d!420296 c!238548) b!1447767))

(assert (= (and d!420296 (not c!238548)) b!1447768))

(assert (= (and b!1447768 (not res!655482)) b!1447769))

(declare-fun m!1670609 () Bool)

(assert (=> b!1447767 m!1670609))

(declare-fun m!1670611 () Bool)

(assert (=> b!1447769 m!1670611))

(assert (=> b!1447647 d!420296))

(assert (=> d!420222 d!420252))

(declare-fun b!1447782 () Bool)

(declare-fun e!923624 () Bool)

(declare-fun e!923623 () Bool)

(assert (=> b!1447782 (= e!923624 e!923623)))

(declare-fun res!655500 () Bool)

(assert (=> b!1447782 (=> (not res!655500) (not e!923623))))

(declare-fun height!758 (Conc!5117) Int)

(assert (=> b!1447782 (= res!655500 (<= (- 1) (- (height!758 (left!12794 (c!238526 (tokens!2030 thiss!10022)))) (height!758 (right!13124 (c!238526 (tokens!2030 thiss!10022)))))))))

(declare-fun b!1447783 () Bool)

(declare-fun res!655498 () Bool)

(assert (=> b!1447783 (=> (not res!655498) (not e!923623))))

(assert (=> b!1447783 (= res!655498 (not (isEmpty!9385 (left!12794 (c!238526 (tokens!2030 thiss!10022))))))))

(declare-fun b!1447784 () Bool)

(declare-fun res!655495 () Bool)

(assert (=> b!1447784 (=> (not res!655495) (not e!923623))))

(assert (=> b!1447784 (= res!655495 (<= (- (height!758 (left!12794 (c!238526 (tokens!2030 thiss!10022)))) (height!758 (right!13124 (c!238526 (tokens!2030 thiss!10022))))) 1))))

(declare-fun d!420298 () Bool)

(declare-fun res!655499 () Bool)

(assert (=> d!420298 (=> res!655499 e!923624)))

(assert (=> d!420298 (= res!655499 (not ((_ is Node!5117) (c!238526 (tokens!2030 thiss!10022)))))))

(assert (=> d!420298 (= (isBalanced!1526 (c!238526 (tokens!2030 thiss!10022))) e!923624)))

(declare-fun b!1447785 () Bool)

(assert (=> b!1447785 (= e!923623 (not (isEmpty!9385 (right!13124 (c!238526 (tokens!2030 thiss!10022))))))))

(declare-fun b!1447786 () Bool)

(declare-fun res!655497 () Bool)

(assert (=> b!1447786 (=> (not res!655497) (not e!923623))))

(assert (=> b!1447786 (= res!655497 (isBalanced!1526 (right!13124 (c!238526 (tokens!2030 thiss!10022)))))))

(declare-fun b!1447787 () Bool)

(declare-fun res!655496 () Bool)

(assert (=> b!1447787 (=> (not res!655496) (not e!923623))))

(assert (=> b!1447787 (= res!655496 (isBalanced!1526 (left!12794 (c!238526 (tokens!2030 thiss!10022)))))))

(assert (= (and d!420298 (not res!655499)) b!1447782))

(assert (= (and b!1447782 res!655500) b!1447784))

(assert (= (and b!1447784 res!655495) b!1447787))

(assert (= (and b!1447787 res!655496) b!1447786))

(assert (= (and b!1447786 res!655497) b!1447783))

(assert (= (and b!1447783 res!655498) b!1447785))

(declare-fun m!1670613 () Bool)

(assert (=> b!1447785 m!1670613))

(declare-fun m!1670615 () Bool)

(assert (=> b!1447783 m!1670615))

(declare-fun m!1670617 () Bool)

(assert (=> b!1447784 m!1670617))

(declare-fun m!1670619 () Bool)

(assert (=> b!1447784 m!1670619))

(declare-fun m!1670621 () Bool)

(assert (=> b!1447786 m!1670621))

(declare-fun m!1670623 () Bool)

(assert (=> b!1447787 m!1670623))

(assert (=> b!1447782 m!1670617))

(assert (=> b!1447782 m!1670619))

(assert (=> d!420218 d!420298))

(declare-fun b!1447911 () Bool)

(declare-fun e!923714 () Bool)

(assert (=> b!1447911 (= e!923714 true)))

(declare-fun b!1447910 () Bool)

(declare-fun e!923713 () Bool)

(assert (=> b!1447910 (= e!923713 e!923714)))

(declare-fun b!1447909 () Bool)

(declare-fun e!923712 () Bool)

(assert (=> b!1447909 (= e!923712 e!923713)))

(declare-fun d!420300 () Bool)

(assert (=> d!420300 e!923712))

(assert (= b!1447910 b!1447911))

(assert (= b!1447909 b!1447910))

(assert (= (and d!420300 ((_ is Cons!15036) (rules!11524 thiss!10022))) b!1447909))

(declare-fun order!9043 () Int)

(declare-fun order!9041 () Int)

(declare-fun lambda!62980 () Int)

(declare-fun dynLambda!6853 (Int Int) Int)

(declare-fun dynLambda!6854 (Int Int) Int)

(assert (=> b!1447911 (< (dynLambda!6853 order!9041 (toValue!3952 (transformation!2645 (h!20437 (rules!11524 thiss!10022))))) (dynLambda!6854 order!9043 lambda!62980))))

(declare-fun order!9045 () Int)

(declare-fun dynLambda!6855 (Int Int) Int)

(assert (=> b!1447911 (< (dynLambda!6855 order!9045 (toChars!3811 (transformation!2645 (h!20437 (rules!11524 thiss!10022))))) (dynLambda!6854 order!9043 lambda!62980))))

(assert (=> d!420300 true))

(declare-fun e!923705 () Bool)

(assert (=> d!420300 e!923705))

(declare-fun res!655528 () Bool)

(assert (=> d!420300 (=> (not res!655528) (not e!923705))))

(declare-fun lt!499247 () Bool)

(declare-fun forall!3695 (List!15101 Int) Bool)

(assert (=> d!420300 (= res!655528 (= lt!499247 (forall!3695 (list!5999 (tokens!2030 thiss!10022)) lambda!62980)))))

(declare-fun forall!3696 (BalanceConc!10174 Int) Bool)

(assert (=> d!420300 (= lt!499247 (forall!3696 (tokens!2030 thiss!10022) lambda!62980))))

(assert (=> d!420300 (not (isEmpty!9381 (rules!11524 thiss!10022)))))

(assert (=> d!420300 (= (rulesProduceEachTokenIndividually!856 Lexer!2299 (rules!11524 thiss!10022) (tokens!2030 thiss!10022)) lt!499247)))

(declare-fun b!1447900 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!732 (LexerInterface!2301 List!15102 List!15101) Bool)

(assert (=> b!1447900 (= e!923705 (= lt!499247 (rulesProduceEachTokenIndividuallyList!732 Lexer!2299 (rules!11524 thiss!10022) (list!5999 (tokens!2030 thiss!10022)))))))

(assert (= (and d!420300 res!655528) b!1447900))

(assert (=> d!420300 m!1670347))

(assert (=> d!420300 m!1670347))

(declare-fun m!1670753 () Bool)

(assert (=> d!420300 m!1670753))

(declare-fun m!1670755 () Bool)

(assert (=> d!420300 m!1670755))

(assert (=> d!420300 m!1670343))

(assert (=> b!1447900 m!1670347))

(assert (=> b!1447900 m!1670347))

(declare-fun m!1670757 () Bool)

(assert (=> b!1447900 m!1670757))

(assert (=> b!1447632 d!420300))

(declare-fun d!420346 () Bool)

(assert (=> d!420346 (= (isEmpty!9381 (rules!11524 other!32)) ((_ is Nil!15036) (rules!11524 other!32)))))

(assert (=> d!420230 d!420346))

(declare-fun d!420348 () Bool)

(assert (=> d!420348 (= (isEmpty!9384 (list!5999 (tokens!2030 thiss!10022))) ((_ is Nil!15035) (list!5999 (tokens!2030 thiss!10022))))))

(assert (=> d!420202 d!420348))

(assert (=> d!420202 d!420256))

(declare-fun d!420350 () Bool)

(declare-fun lt!499250 () Bool)

(assert (=> d!420350 (= lt!499250 (isEmpty!9384 (list!6001 (c!238526 (tokens!2030 thiss!10022)))))))

(declare-fun size!12315 (Conc!5117) Int)

(assert (=> d!420350 (= lt!499250 (= (size!12315 (c!238526 (tokens!2030 thiss!10022))) 0))))

(assert (=> d!420350 (= (isEmpty!9385 (c!238526 (tokens!2030 thiss!10022))) lt!499250)))

(declare-fun bs!342352 () Bool)

(assert (= bs!342352 d!420350))

(assert (=> bs!342352 m!1670479))

(assert (=> bs!342352 m!1670479))

(declare-fun m!1670759 () Bool)

(assert (=> bs!342352 m!1670759))

(declare-fun m!1670761 () Bool)

(assert (=> bs!342352 m!1670761))

(assert (=> d!420202 d!420350))

(declare-fun d!420352 () Bool)

(assert (=> d!420352 (= (isEmpty!9384 (list!5999 (tokens!2030 other!32))) ((_ is Nil!15035) (list!5999 (tokens!2030 other!32))))))

(assert (=> d!420232 d!420352))

(declare-fun d!420354 () Bool)

(assert (=> d!420354 (= (list!5999 (tokens!2030 other!32)) (list!6001 (c!238526 (tokens!2030 other!32))))))

(declare-fun bs!342353 () Bool)

(assert (= bs!342353 d!420354))

(declare-fun m!1670763 () Bool)

(assert (=> bs!342353 m!1670763))

(assert (=> d!420232 d!420354))

(declare-fun d!420356 () Bool)

(declare-fun lt!499251 () Bool)

(assert (=> d!420356 (= lt!499251 (isEmpty!9384 (list!6001 (c!238526 (tokens!2030 other!32)))))))

(assert (=> d!420356 (= lt!499251 (= (size!12315 (c!238526 (tokens!2030 other!32))) 0))))

(assert (=> d!420356 (= (isEmpty!9385 (c!238526 (tokens!2030 other!32))) lt!499251)))

(declare-fun bs!342354 () Bool)

(assert (= bs!342354 d!420356))

(assert (=> bs!342354 m!1670763))

(assert (=> bs!342354 m!1670763))

(declare-fun m!1670765 () Bool)

(assert (=> bs!342354 m!1670765))

(declare-fun m!1670767 () Bool)

(assert (=> bs!342354 m!1670767))

(assert (=> d!420232 d!420356))

(assert (=> b!1447526 d!420220))

(declare-fun d!420358 () Bool)

(declare-fun c!238564 () Bool)

(assert (=> d!420358 (= c!238564 ((_ is Nil!15035) lt!499170))))

(declare-fun e!923717 () (InoxSet Token!4952))

(assert (=> d!420358 (= (content!2225 lt!499170) e!923717)))

(declare-fun b!1447918 () Bool)

(assert (=> b!1447918 (= e!923717 ((as const (Array Token!4952 Bool)) false))))

(declare-fun b!1447919 () Bool)

(assert (=> b!1447919 (= e!923717 ((_ map or) (store ((as const (Array Token!4952 Bool)) false) (h!20436 lt!499170) true) (content!2225 (t!130392 lt!499170))))))

(assert (= (and d!420358 c!238564) b!1447918))

(assert (= (and d!420358 (not c!238564)) b!1447919))

(declare-fun m!1670769 () Bool)

(assert (=> b!1447919 m!1670769))

(declare-fun m!1670771 () Bool)

(assert (=> b!1447919 m!1670771))

(assert (=> d!420208 d!420358))

(assert (=> b!1447580 d!420300))

(declare-fun d!420360 () Bool)

(declare-fun res!655533 () Bool)

(declare-fun e!923720 () Bool)

(assert (=> d!420360 (=> (not res!655533) (not e!923720))))

(declare-fun list!6003 (IArray!10239) List!15101)

(assert (=> d!420360 (= res!655533 (<= (size!12314 (list!6003 (xs!7858 (c!238526 (tokens!2030 other!32))))) 512))))

(assert (=> d!420360 (= (inv!20043 (c!238526 (tokens!2030 other!32))) e!923720)))

(declare-fun b!1447924 () Bool)

(declare-fun res!655534 () Bool)

(assert (=> b!1447924 (=> (not res!655534) (not e!923720))))

(assert (=> b!1447924 (= res!655534 (= (csize!10465 (c!238526 (tokens!2030 other!32))) (size!12314 (list!6003 (xs!7858 (c!238526 (tokens!2030 other!32)))))))))

(declare-fun b!1447925 () Bool)

(assert (=> b!1447925 (= e!923720 (and (> (csize!10465 (c!238526 (tokens!2030 other!32))) 0) (<= (csize!10465 (c!238526 (tokens!2030 other!32))) 512)))))

(assert (= (and d!420360 res!655533) b!1447924))

(assert (= (and b!1447924 res!655534) b!1447925))

(declare-fun m!1670773 () Bool)

(assert (=> d!420360 m!1670773))

(assert (=> d!420360 m!1670773))

(declare-fun m!1670775 () Bool)

(assert (=> d!420360 m!1670775))

(assert (=> b!1447924 m!1670773))

(assert (=> b!1447924 m!1670773))

(assert (=> b!1447924 m!1670775))

(assert (=> b!1447561 d!420360))

(declare-fun d!420362 () Bool)

(declare-fun res!655535 () Bool)

(declare-fun e!923721 () Bool)

(assert (=> d!420362 (=> (not res!655535) (not e!923721))))

(assert (=> d!420362 (= res!655535 (<= (size!12314 (list!6003 (xs!7858 (c!238526 (tokens!2030 thiss!10022))))) 512))))

(assert (=> d!420362 (= (inv!20043 (c!238526 (tokens!2030 thiss!10022))) e!923721)))

(declare-fun b!1447926 () Bool)

(declare-fun res!655536 () Bool)

(assert (=> b!1447926 (=> (not res!655536) (not e!923721))))

(assert (=> b!1447926 (= res!655536 (= (csize!10465 (c!238526 (tokens!2030 thiss!10022))) (size!12314 (list!6003 (xs!7858 (c!238526 (tokens!2030 thiss!10022)))))))))

(declare-fun b!1447927 () Bool)

(assert (=> b!1447927 (= e!923721 (and (> (csize!10465 (c!238526 (tokens!2030 thiss!10022))) 0) (<= (csize!10465 (c!238526 (tokens!2030 thiss!10022))) 512)))))

(assert (= (and d!420362 res!655535) b!1447926))

(assert (= (and b!1447926 res!655536) b!1447927))

(declare-fun m!1670777 () Bool)

(assert (=> d!420362 m!1670777))

(assert (=> d!420362 m!1670777))

(declare-fun m!1670779 () Bool)

(assert (=> d!420362 m!1670779))

(assert (=> b!1447926 m!1670777))

(assert (=> b!1447926 m!1670777))

(assert (=> b!1447926 m!1670779))

(assert (=> b!1447558 d!420362))

(assert (=> b!1447581 d!420286))

(declare-fun b!1447928 () Bool)

(declare-fun e!923723 () Bool)

(declare-fun e!923722 () Bool)

(assert (=> b!1447928 (= e!923723 e!923722)))

(declare-fun res!655542 () Bool)

(assert (=> b!1447928 (=> (not res!655542) (not e!923722))))

(assert (=> b!1447928 (= res!655542 (<= (- 1) (- (height!758 (left!12794 (c!238526 (tokens!2030 other!32)))) (height!758 (right!13124 (c!238526 (tokens!2030 other!32)))))))))

(declare-fun b!1447929 () Bool)

(declare-fun res!655540 () Bool)

(assert (=> b!1447929 (=> (not res!655540) (not e!923722))))

(assert (=> b!1447929 (= res!655540 (not (isEmpty!9385 (left!12794 (c!238526 (tokens!2030 other!32))))))))

(declare-fun b!1447930 () Bool)

(declare-fun res!655537 () Bool)

(assert (=> b!1447930 (=> (not res!655537) (not e!923722))))

(assert (=> b!1447930 (= res!655537 (<= (- (height!758 (left!12794 (c!238526 (tokens!2030 other!32)))) (height!758 (right!13124 (c!238526 (tokens!2030 other!32))))) 1))))

(declare-fun d!420364 () Bool)

(declare-fun res!655541 () Bool)

(assert (=> d!420364 (=> res!655541 e!923723)))

(assert (=> d!420364 (= res!655541 (not ((_ is Node!5117) (c!238526 (tokens!2030 other!32)))))))

(assert (=> d!420364 (= (isBalanced!1526 (c!238526 (tokens!2030 other!32))) e!923723)))

(declare-fun b!1447931 () Bool)

(assert (=> b!1447931 (= e!923722 (not (isEmpty!9385 (right!13124 (c!238526 (tokens!2030 other!32))))))))

(declare-fun b!1447932 () Bool)

(declare-fun res!655539 () Bool)

(assert (=> b!1447932 (=> (not res!655539) (not e!923722))))

(assert (=> b!1447932 (= res!655539 (isBalanced!1526 (right!13124 (c!238526 (tokens!2030 other!32)))))))

(declare-fun b!1447933 () Bool)

(declare-fun res!655538 () Bool)

(assert (=> b!1447933 (=> (not res!655538) (not e!923722))))

(assert (=> b!1447933 (= res!655538 (isBalanced!1526 (left!12794 (c!238526 (tokens!2030 other!32)))))))

(assert (= (and d!420364 (not res!655541)) b!1447928))

(assert (= (and b!1447928 res!655542) b!1447930))

(assert (= (and b!1447930 res!655537) b!1447933))

(assert (= (and b!1447933 res!655538) b!1447932))

(assert (= (and b!1447932 res!655539) b!1447929))

(assert (= (and b!1447929 res!655540) b!1447931))

(declare-fun m!1670781 () Bool)

(assert (=> b!1447931 m!1670781))

(declare-fun m!1670783 () Bool)

(assert (=> b!1447929 m!1670783))

(declare-fun m!1670785 () Bool)

(assert (=> b!1447930 m!1670785))

(declare-fun m!1670787 () Bool)

(assert (=> b!1447930 m!1670787))

(declare-fun m!1670789 () Bool)

(assert (=> b!1447932 m!1670789))

(declare-fun m!1670791 () Bool)

(assert (=> b!1447933 m!1670791))

(assert (=> b!1447928 m!1670785))

(assert (=> b!1447928 m!1670787))

(assert (=> d!420250 d!420364))

(declare-fun d!420366 () Bool)

(declare-fun res!655549 () Bool)

(declare-fun e!923726 () Bool)

(assert (=> d!420366 (=> (not res!655549) (not e!923726))))

(assert (=> d!420366 (= res!655549 (= (csize!10464 (c!238526 (tokens!2030 other!32))) (+ (size!12315 (left!12794 (c!238526 (tokens!2030 other!32)))) (size!12315 (right!13124 (c!238526 (tokens!2030 other!32)))))))))

(assert (=> d!420366 (= (inv!20042 (c!238526 (tokens!2030 other!32))) e!923726)))

(declare-fun b!1447940 () Bool)

(declare-fun res!655550 () Bool)

(assert (=> b!1447940 (=> (not res!655550) (not e!923726))))

(assert (=> b!1447940 (= res!655550 (and (not (= (left!12794 (c!238526 (tokens!2030 other!32))) Empty!5117)) (not (= (right!13124 (c!238526 (tokens!2030 other!32))) Empty!5117))))))

(declare-fun b!1447941 () Bool)

(declare-fun res!655551 () Bool)

(assert (=> b!1447941 (=> (not res!655551) (not e!923726))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1447941 (= res!655551 (= (cheight!5328 (c!238526 (tokens!2030 other!32))) (+ (max!0 (height!758 (left!12794 (c!238526 (tokens!2030 other!32)))) (height!758 (right!13124 (c!238526 (tokens!2030 other!32))))) 1)))))

(declare-fun b!1447942 () Bool)

(assert (=> b!1447942 (= e!923726 (<= 0 (cheight!5328 (c!238526 (tokens!2030 other!32)))))))

(assert (= (and d!420366 res!655549) b!1447940))

(assert (= (and b!1447940 res!655550) b!1447941))

(assert (= (and b!1447941 res!655551) b!1447942))

(declare-fun m!1670793 () Bool)

(assert (=> d!420366 m!1670793))

(declare-fun m!1670795 () Bool)

(assert (=> d!420366 m!1670795))

(assert (=> b!1447941 m!1670785))

(assert (=> b!1447941 m!1670787))

(assert (=> b!1447941 m!1670785))

(assert (=> b!1447941 m!1670787))

(declare-fun m!1670797 () Bool)

(assert (=> b!1447941 m!1670797))

(assert (=> b!1447559 d!420366))

(assert (=> b!1447525 d!420216))

(declare-fun d!420368 () Bool)

(declare-fun res!655552 () Bool)

(declare-fun e!923727 () Bool)

(assert (=> d!420368 (=> (not res!655552) (not e!923727))))

(assert (=> d!420368 (= res!655552 (= (csize!10464 (c!238526 (tokens!2030 thiss!10022))) (+ (size!12315 (left!12794 (c!238526 (tokens!2030 thiss!10022)))) (size!12315 (right!13124 (c!238526 (tokens!2030 thiss!10022)))))))))

(assert (=> d!420368 (= (inv!20042 (c!238526 (tokens!2030 thiss!10022))) e!923727)))

(declare-fun b!1447943 () Bool)

(declare-fun res!655553 () Bool)

(assert (=> b!1447943 (=> (not res!655553) (not e!923727))))

(assert (=> b!1447943 (= res!655553 (and (not (= (left!12794 (c!238526 (tokens!2030 thiss!10022))) Empty!5117)) (not (= (right!13124 (c!238526 (tokens!2030 thiss!10022))) Empty!5117))))))

(declare-fun b!1447944 () Bool)

(declare-fun res!655554 () Bool)

(assert (=> b!1447944 (=> (not res!655554) (not e!923727))))

(assert (=> b!1447944 (= res!655554 (= (cheight!5328 (c!238526 (tokens!2030 thiss!10022))) (+ (max!0 (height!758 (left!12794 (c!238526 (tokens!2030 thiss!10022)))) (height!758 (right!13124 (c!238526 (tokens!2030 thiss!10022))))) 1)))))

(declare-fun b!1447945 () Bool)

(assert (=> b!1447945 (= e!923727 (<= 0 (cheight!5328 (c!238526 (tokens!2030 thiss!10022)))))))

(assert (= (and d!420368 res!655552) b!1447943))

(assert (= (and b!1447943 res!655553) b!1447944))

(assert (= (and b!1447944 res!655554) b!1447945))

(declare-fun m!1670799 () Bool)

(assert (=> d!420368 m!1670799))

(declare-fun m!1670801 () Bool)

(assert (=> d!420368 m!1670801))

(assert (=> b!1447944 m!1670617))

(assert (=> b!1447944 m!1670619))

(assert (=> b!1447944 m!1670617))

(assert (=> b!1447944 m!1670619))

(declare-fun m!1670803 () Bool)

(assert (=> b!1447944 m!1670803))

(assert (=> b!1447556 d!420368))

(declare-fun d!420370 () Bool)

(assert (=> d!420370 (= (separableTokens!240 Lexer!2299 (tokens!2030 other!32) (rules!11524 other!32)) (tokensListTwoByTwoPredicateSeparable!124 Lexer!2299 (tokens!2030 other!32) 0 (rules!11524 other!32)))))

(declare-fun bs!342355 () Bool)

(assert (= bs!342355 d!420370))

(declare-fun m!1670805 () Bool)

(assert (=> bs!342355 m!1670805))

(assert (=> b!1447635 d!420370))

(assert (=> b!1447579 d!420258))

(declare-fun b!1447957 () Bool)

(declare-fun e!923733 () List!15101)

(assert (=> b!1447957 (= e!923733 (++!4046 (list!6001 (left!12794 (c!238526 (tokens!2030 thiss!10022)))) (list!6001 (right!13124 (c!238526 (tokens!2030 thiss!10022))))))))

(declare-fun b!1447954 () Bool)

(declare-fun e!923732 () List!15101)

(assert (=> b!1447954 (= e!923732 Nil!15035)))

(declare-fun b!1447955 () Bool)

(assert (=> b!1447955 (= e!923732 e!923733)))

(declare-fun c!238570 () Bool)

(assert (=> b!1447955 (= c!238570 ((_ is Leaf!7641) (c!238526 (tokens!2030 thiss!10022))))))

(declare-fun b!1447956 () Bool)

(assert (=> b!1447956 (= e!923733 (list!6003 (xs!7858 (c!238526 (tokens!2030 thiss!10022)))))))

(declare-fun d!420372 () Bool)

(declare-fun c!238569 () Bool)

(assert (=> d!420372 (= c!238569 ((_ is Empty!5117) (c!238526 (tokens!2030 thiss!10022))))))

(assert (=> d!420372 (= (list!6001 (c!238526 (tokens!2030 thiss!10022))) e!923732)))

(assert (= (and d!420372 c!238569) b!1447954))

(assert (= (and d!420372 (not c!238569)) b!1447955))

(assert (= (and b!1447955 c!238570) b!1447956))

(assert (= (and b!1447955 (not c!238570)) b!1447957))

(assert (=> b!1447957 m!1670573))

(assert (=> b!1447957 m!1670569))

(assert (=> b!1447957 m!1670573))

(assert (=> b!1447957 m!1670569))

(declare-fun m!1670807 () Bool)

(assert (=> b!1447957 m!1670807))

(assert (=> b!1447956 m!1670777))

(assert (=> d!420256 d!420372))

(declare-fun d!420374 () Bool)

(declare-fun res!655559 () Bool)

(declare-fun e!923738 () Bool)

(assert (=> d!420374 (=> res!655559 e!923738)))

(assert (=> d!420374 (= res!655559 ((_ is Nil!15036) (rules!11524 thiss!10022)))))

(assert (=> d!420374 (= (noDuplicateTag!971 Lexer!2299 (rules!11524 thiss!10022) Nil!15038) e!923738)))

(declare-fun b!1447962 () Bool)

(declare-fun e!923739 () Bool)

(assert (=> b!1447962 (= e!923738 e!923739)))

(declare-fun res!655560 () Bool)

(assert (=> b!1447962 (=> (not res!655560) (not e!923739))))

(declare-fun contains!2877 (List!15104 String!17931) Bool)

(assert (=> b!1447962 (= res!655560 (not (contains!2877 Nil!15038 (tag!2909 (h!20437 (rules!11524 thiss!10022))))))))

(declare-fun b!1447963 () Bool)

(assert (=> b!1447963 (= e!923739 (noDuplicateTag!971 Lexer!2299 (t!130393 (rules!11524 thiss!10022)) (Cons!15038 (tag!2909 (h!20437 (rules!11524 thiss!10022))) Nil!15038)))))

(assert (= (and d!420374 (not res!655559)) b!1447962))

(assert (= (and b!1447962 res!655560) b!1447963))

(declare-fun m!1670809 () Bool)

(assert (=> b!1447962 m!1670809))

(declare-fun m!1670811 () Bool)

(assert (=> b!1447963 m!1670811))

(assert (=> b!1447638 d!420374))

(assert (=> d!420234 d!420258))

(declare-fun bs!342356 () Bool)

(declare-fun d!420376 () Bool)

(assert (= bs!342356 (and d!420376 d!420300)))

(declare-fun lambda!62981 () Int)

(assert (=> bs!342356 (= (= (rules!11524 other!32) (rules!11524 thiss!10022)) (= lambda!62981 lambda!62980))))

(declare-fun b!1447967 () Bool)

(declare-fun e!923743 () Bool)

(assert (=> b!1447967 (= e!923743 true)))

(declare-fun b!1447966 () Bool)

(declare-fun e!923742 () Bool)

(assert (=> b!1447966 (= e!923742 e!923743)))

(declare-fun b!1447965 () Bool)

(declare-fun e!923741 () Bool)

(assert (=> b!1447965 (= e!923741 e!923742)))

(assert (=> d!420376 e!923741))

(assert (= b!1447966 b!1447967))

(assert (= b!1447965 b!1447966))

(assert (= (and d!420376 ((_ is Cons!15036) (rules!11524 other!32))) b!1447965))

(assert (=> b!1447967 (< (dynLambda!6853 order!9041 (toValue!3952 (transformation!2645 (h!20437 (rules!11524 other!32))))) (dynLambda!6854 order!9043 lambda!62981))))

(assert (=> b!1447967 (< (dynLambda!6855 order!9045 (toChars!3811 (transformation!2645 (h!20437 (rules!11524 other!32))))) (dynLambda!6854 order!9043 lambda!62981))))

(assert (=> d!420376 true))

(declare-fun e!923740 () Bool)

(assert (=> d!420376 e!923740))

(declare-fun res!655561 () Bool)

(assert (=> d!420376 (=> (not res!655561) (not e!923740))))

(declare-fun lt!499252 () Bool)

(assert (=> d!420376 (= res!655561 (= lt!499252 (forall!3695 (list!5999 (tokens!2030 other!32)) lambda!62981)))))

(assert (=> d!420376 (= lt!499252 (forall!3696 (tokens!2030 other!32) lambda!62981))))

(assert (=> d!420376 (not (isEmpty!9381 (rules!11524 other!32)))))

(assert (=> d!420376 (= (rulesProduceEachTokenIndividually!856 Lexer!2299 (rules!11524 other!32) (tokens!2030 other!32)) lt!499252)))

(declare-fun b!1447964 () Bool)

(assert (=> b!1447964 (= e!923740 (= lt!499252 (rulesProduceEachTokenIndividuallyList!732 Lexer!2299 (rules!11524 other!32) (list!5999 (tokens!2030 other!32)))))))

(assert (= (and d!420376 res!655561) b!1447964))

(assert (=> d!420376 m!1670433))

(assert (=> d!420376 m!1670433))

(declare-fun m!1670813 () Bool)

(assert (=> d!420376 m!1670813))

(declare-fun m!1670815 () Bool)

(assert (=> d!420376 m!1670815))

(assert (=> d!420376 m!1670425))

(assert (=> b!1447964 m!1670433))

(assert (=> b!1447964 m!1670433))

(declare-fun m!1670817 () Bool)

(assert (=> b!1447964 m!1670817))

(assert (=> b!1447583 d!420376))

(declare-fun d!420378 () Bool)

(assert (=> d!420378 (= (inv!20031 (tag!2909 (h!20437 (rules!11524 thiss!10022)))) (= (mod (str.len (value!85029 (tag!2909 (h!20437 (rules!11524 thiss!10022))))) 2) 0))))

(assert (=> b!1447659 d!420378))

(declare-fun d!420380 () Bool)

(declare-fun res!655564 () Bool)

(declare-fun e!923746 () Bool)

(assert (=> d!420380 (=> (not res!655564) (not e!923746))))

(declare-fun semiInverseModEq!996 (Int Int) Bool)

(assert (=> d!420380 (= res!655564 (semiInverseModEq!996 (toChars!3811 (transformation!2645 (h!20437 (rules!11524 thiss!10022)))) (toValue!3952 (transformation!2645 (h!20437 (rules!11524 thiss!10022))))))))

(assert (=> d!420380 (= (inv!20045 (transformation!2645 (h!20437 (rules!11524 thiss!10022)))) e!923746)))

(declare-fun b!1447970 () Bool)

(declare-fun equivClasses!955 (Int Int) Bool)

(assert (=> b!1447970 (= e!923746 (equivClasses!955 (toChars!3811 (transformation!2645 (h!20437 (rules!11524 thiss!10022)))) (toValue!3952 (transformation!2645 (h!20437 (rules!11524 thiss!10022))))))))

(assert (= (and d!420380 res!655564) b!1447970))

(declare-fun m!1670819 () Bool)

(assert (=> d!420380 m!1670819))

(declare-fun m!1670821 () Bool)

(assert (=> b!1447970 m!1670821))

(assert (=> b!1447659 d!420380))

(assert (=> b!1447584 d!420370))

(declare-fun d!420382 () Bool)

(declare-fun res!655565 () Bool)

(declare-fun e!923747 () Bool)

(assert (=> d!420382 (=> (not res!655565) (not e!923747))))

(assert (=> d!420382 (= res!655565 (rulesValid!971 Lexer!2299 (rules!11524 other!32)))))

(assert (=> d!420382 (= (rulesInvariant!2139 Lexer!2299 (rules!11524 other!32)) e!923747)))

(declare-fun b!1447971 () Bool)

(assert (=> b!1447971 (= e!923747 (noDuplicateTag!971 Lexer!2299 (rules!11524 other!32) Nil!15038))))

(assert (= (and d!420382 res!655565) b!1447971))

(declare-fun m!1670823 () Bool)

(assert (=> d!420382 m!1670823))

(declare-fun m!1670825 () Bool)

(assert (=> b!1447971 m!1670825))

(assert (=> d!420248 d!420382))

(declare-fun d!420384 () Bool)

(assert (=> d!420384 (= (inv!20031 (tag!2909 (h!20437 (rules!11524 other!32)))) (= (mod (str.len (value!85029 (tag!2909 (h!20437 (rules!11524 other!32))))) 2) 0))))

(assert (=> b!1447665 d!420384))

(declare-fun d!420386 () Bool)

(declare-fun res!655566 () Bool)

(declare-fun e!923748 () Bool)

(assert (=> d!420386 (=> (not res!655566) (not e!923748))))

(assert (=> d!420386 (= res!655566 (semiInverseModEq!996 (toChars!3811 (transformation!2645 (h!20437 (rules!11524 other!32)))) (toValue!3952 (transformation!2645 (h!20437 (rules!11524 other!32))))))))

(assert (=> d!420386 (= (inv!20045 (transformation!2645 (h!20437 (rules!11524 other!32)))) e!923748)))

(declare-fun b!1447972 () Bool)

(assert (=> b!1447972 (= e!923748 (equivClasses!955 (toChars!3811 (transformation!2645 (h!20437 (rules!11524 other!32)))) (toValue!3952 (transformation!2645 (h!20437 (rules!11524 other!32))))))))

(assert (= (and d!420386 res!655566) b!1447972))

(declare-fun m!1670827 () Bool)

(assert (=> d!420386 m!1670827))

(declare-fun m!1670829 () Bool)

(assert (=> b!1447972 m!1670829))

(assert (=> b!1447665 d!420386))

(assert (=> b!1447634 d!420376))

(declare-fun d!420388 () Bool)

(assert (=> d!420388 (= (inv!20044 (xs!7858 (c!238526 (tokens!2030 other!32)))) (<= (size!12314 (innerList!5177 (xs!7858 (c!238526 (tokens!2030 other!32))))) 2147483647))))

(declare-fun bs!342357 () Bool)

(assert (= bs!342357 d!420388))

(declare-fun m!1670831 () Bool)

(assert (=> bs!342357 m!1670831))

(assert (=> b!1447662 d!420388))

(declare-fun d!420390 () Bool)

(declare-fun lt!499253 () Bool)

(assert (=> d!420390 (= lt!499253 (select (content!2225 (t!130392 lt!499170)) lt!499171))))

(declare-fun e!923749 () Bool)

(assert (=> d!420390 (= lt!499253 e!923749)))

(declare-fun res!655568 () Bool)

(assert (=> d!420390 (=> (not res!655568) (not e!923749))))

(assert (=> d!420390 (= res!655568 ((_ is Cons!15035) (t!130392 lt!499170)))))

(assert (=> d!420390 (= (contains!2875 (t!130392 lt!499170) lt!499171) lt!499253)))

(declare-fun b!1447973 () Bool)

(declare-fun e!923750 () Bool)

(assert (=> b!1447973 (= e!923749 e!923750)))

(declare-fun res!655567 () Bool)

(assert (=> b!1447973 (=> res!655567 e!923750)))

(assert (=> b!1447973 (= res!655567 (= (h!20436 (t!130392 lt!499170)) lt!499171))))

(declare-fun b!1447974 () Bool)

(assert (=> b!1447974 (= e!923750 (contains!2875 (t!130392 (t!130392 lt!499170)) lt!499171))))

(assert (= (and d!420390 res!655568) b!1447973))

(assert (= (and b!1447973 (not res!655567)) b!1447974))

(assert (=> d!420390 m!1670771))

(declare-fun m!1670833 () Bool)

(assert (=> d!420390 m!1670833))

(declare-fun m!1670835 () Bool)

(assert (=> b!1447974 m!1670835))

(assert (=> b!1447549 d!420390))

(declare-fun d!420392 () Bool)

(declare-fun c!238571 () Bool)

(assert (=> d!420392 (= c!238571 ((_ is Node!5117) (left!12794 (c!238526 (tokens!2030 other!32)))))))

(declare-fun e!923751 () Bool)

(assert (=> d!420392 (= (inv!20036 (left!12794 (c!238526 (tokens!2030 other!32)))) e!923751)))

(declare-fun b!1447975 () Bool)

(assert (=> b!1447975 (= e!923751 (inv!20042 (left!12794 (c!238526 (tokens!2030 other!32)))))))

(declare-fun b!1447976 () Bool)

(declare-fun e!923752 () Bool)

(assert (=> b!1447976 (= e!923751 e!923752)))

(declare-fun res!655569 () Bool)

(assert (=> b!1447976 (= res!655569 (not ((_ is Leaf!7641) (left!12794 (c!238526 (tokens!2030 other!32))))))))

(assert (=> b!1447976 (=> res!655569 e!923752)))

(declare-fun b!1447977 () Bool)

(assert (=> b!1447977 (= e!923752 (inv!20043 (left!12794 (c!238526 (tokens!2030 other!32)))))))

(assert (= (and d!420392 c!238571) b!1447975))

(assert (= (and d!420392 (not c!238571)) b!1447976))

(assert (= (and b!1447976 (not res!655569)) b!1447977))

(declare-fun m!1670837 () Bool)

(assert (=> b!1447975 m!1670837))

(declare-fun m!1670839 () Bool)

(assert (=> b!1447977 m!1670839))

(assert (=> b!1447661 d!420392))

(declare-fun d!420394 () Bool)

(declare-fun c!238572 () Bool)

(assert (=> d!420394 (= c!238572 ((_ is Node!5117) (right!13124 (c!238526 (tokens!2030 other!32)))))))

(declare-fun e!923753 () Bool)

(assert (=> d!420394 (= (inv!20036 (right!13124 (c!238526 (tokens!2030 other!32)))) e!923753)))

(declare-fun b!1447978 () Bool)

(assert (=> b!1447978 (= e!923753 (inv!20042 (right!13124 (c!238526 (tokens!2030 other!32)))))))

(declare-fun b!1447979 () Bool)

(declare-fun e!923754 () Bool)

(assert (=> b!1447979 (= e!923753 e!923754)))

(declare-fun res!655570 () Bool)

(assert (=> b!1447979 (= res!655570 (not ((_ is Leaf!7641) (right!13124 (c!238526 (tokens!2030 other!32))))))))

(assert (=> b!1447979 (=> res!655570 e!923754)))

(declare-fun b!1447980 () Bool)

(assert (=> b!1447980 (= e!923754 (inv!20043 (right!13124 (c!238526 (tokens!2030 other!32)))))))

(assert (= (and d!420394 c!238572) b!1447978))

(assert (= (and d!420394 (not c!238572)) b!1447979))

(assert (= (and b!1447979 (not res!655570)) b!1447980))

(declare-fun m!1670841 () Bool)

(assert (=> b!1447978 m!1670841))

(declare-fun m!1670843 () Bool)

(assert (=> b!1447980 m!1670843))

(assert (=> b!1447661 d!420394))

(assert (=> b!1447582 d!420382))

(declare-fun b!1447992 () Bool)

(declare-fun e!923757 () Bool)

(declare-fun tp!408377 () Bool)

(declare-fun tp!408378 () Bool)

(assert (=> b!1447992 (= e!923757 (and tp!408377 tp!408378))))

(declare-fun b!1447993 () Bool)

(declare-fun tp!408380 () Bool)

(assert (=> b!1447993 (= e!923757 tp!408380)))

(assert (=> b!1447659 (= tp!408297 e!923757)))

(declare-fun b!1447991 () Bool)

(declare-fun tp_is_empty!6859 () Bool)

(assert (=> b!1447991 (= e!923757 tp_is_empty!6859)))

(declare-fun b!1447994 () Bool)

(declare-fun tp!408381 () Bool)

(declare-fun tp!408379 () Bool)

(assert (=> b!1447994 (= e!923757 (and tp!408381 tp!408379))))

(assert (= (and b!1447659 ((_ is ElementMatch!3959) (regex!2645 (h!20437 (rules!11524 thiss!10022))))) b!1447991))

(assert (= (and b!1447659 ((_ is Concat!6695) (regex!2645 (h!20437 (rules!11524 thiss!10022))))) b!1447992))

(assert (= (and b!1447659 ((_ is Star!3959) (regex!2645 (h!20437 (rules!11524 thiss!10022))))) b!1447993))

(assert (= (and b!1447659 ((_ is Union!3959) (regex!2645 (h!20437 (rules!11524 thiss!10022))))) b!1447994))

(declare-fun b!1447997 () Bool)

(declare-fun b_free!35911 () Bool)

(declare-fun b_next!36615 () Bool)

(assert (=> b!1447997 (= b_free!35911 (not b_next!36615))))

(declare-fun tp!408384 () Bool)

(declare-fun b_and!97975 () Bool)

(assert (=> b!1447997 (= tp!408384 b_and!97975)))

(declare-fun b_free!35913 () Bool)

(declare-fun b_next!36617 () Bool)

(assert (=> b!1447997 (= b_free!35913 (not b_next!36617))))

(declare-fun tp!408382 () Bool)

(declare-fun b_and!97977 () Bool)

(assert (=> b!1447997 (= tp!408382 b_and!97977)))

(declare-fun e!923761 () Bool)

(assert (=> b!1447997 (= e!923761 (and tp!408384 tp!408382))))

(declare-fun e!923759 () Bool)

(declare-fun tp!408383 () Bool)

(declare-fun b!1447996 () Bool)

(assert (=> b!1447996 (= e!923759 (and tp!408383 (inv!20031 (tag!2909 (h!20437 (t!130393 (rules!11524 thiss!10022))))) (inv!20045 (transformation!2645 (h!20437 (t!130393 (rules!11524 thiss!10022))))) e!923761))))

(declare-fun b!1447995 () Bool)

(declare-fun e!923760 () Bool)

(declare-fun tp!408385 () Bool)

(assert (=> b!1447995 (= e!923760 (and e!923759 tp!408385))))

(assert (=> b!1447658 (= tp!408299 e!923760)))

(assert (= b!1447996 b!1447997))

(assert (= b!1447995 b!1447996))

(assert (= (and b!1447658 ((_ is Cons!15036) (t!130393 (rules!11524 thiss!10022)))) b!1447995))

(declare-fun m!1670845 () Bool)

(assert (=> b!1447996 m!1670845))

(declare-fun m!1670847 () Bool)

(assert (=> b!1447996 m!1670847))

(declare-fun b!1448011 () Bool)

(declare-fun b_free!35915 () Bool)

(declare-fun b_next!36619 () Bool)

(assert (=> b!1448011 (= b_free!35915 (not b_next!36619))))

(declare-fun tp!408400 () Bool)

(declare-fun b_and!97979 () Bool)

(assert (=> b!1448011 (= tp!408400 b_and!97979)))

(declare-fun b_free!35917 () Bool)

(declare-fun b_next!36621 () Bool)

(assert (=> b!1448011 (= b_free!35917 (not b_next!36621))))

(declare-fun tp!408398 () Bool)

(declare-fun b_and!97981 () Bool)

(assert (=> b!1448011 (= tp!408398 b_and!97981)))

(declare-fun tp!408397 () Bool)

(declare-fun b!1448010 () Bool)

(declare-fun e!923777 () Bool)

(declare-fun e!923776 () Bool)

(assert (=> b!1448010 (= e!923776 (and tp!408397 (inv!20031 (tag!2909 (rule!4418 (h!20436 (innerList!5177 (xs!7858 (c!238526 (tokens!2030 thiss!10022)))))))) (inv!20045 (transformation!2645 (rule!4418 (h!20436 (innerList!5177 (xs!7858 (c!238526 (tokens!2030 thiss!10022)))))))) e!923777))))

(declare-fun b!1448009 () Bool)

(declare-fun e!923774 () Bool)

(declare-fun tp!408399 () Bool)

(declare-fun inv!21 (TokenValue!2735) Bool)

(assert (=> b!1448009 (= e!923774 (and (inv!21 (value!85030 (h!20436 (innerList!5177 (xs!7858 (c!238526 (tokens!2030 thiss!10022))))))) e!923776 tp!408399))))

(declare-fun e!923778 () Bool)

(assert (=> b!1447649 (= tp!408287 e!923778)))

(declare-fun b!1448008 () Bool)

(declare-fun tp!408396 () Bool)

(declare-fun inv!20047 (Token!4952) Bool)

(assert (=> b!1448008 (= e!923778 (and (inv!20047 (h!20436 (innerList!5177 (xs!7858 (c!238526 (tokens!2030 thiss!10022)))))) e!923774 tp!408396))))

(assert (=> b!1448011 (= e!923777 (and tp!408400 tp!408398))))

(assert (= b!1448010 b!1448011))

(assert (= b!1448009 b!1448010))

(assert (= b!1448008 b!1448009))

(assert (= (and b!1447649 ((_ is Cons!15035) (innerList!5177 (xs!7858 (c!238526 (tokens!2030 thiss!10022)))))) b!1448008))

(declare-fun m!1670849 () Bool)

(assert (=> b!1448010 m!1670849))

(declare-fun m!1670851 () Bool)

(assert (=> b!1448010 m!1670851))

(declare-fun m!1670853 () Bool)

(assert (=> b!1448009 m!1670853))

(declare-fun m!1670855 () Bool)

(assert (=> b!1448008 m!1670855))

(declare-fun b!1448013 () Bool)

(declare-fun e!923780 () Bool)

(declare-fun tp!408401 () Bool)

(declare-fun tp!408402 () Bool)

(assert (=> b!1448013 (= e!923780 (and tp!408401 tp!408402))))

(declare-fun b!1448014 () Bool)

(declare-fun tp!408404 () Bool)

(assert (=> b!1448014 (= e!923780 tp!408404)))

(assert (=> b!1447665 (= tp!408304 e!923780)))

(declare-fun b!1448012 () Bool)

(assert (=> b!1448012 (= e!923780 tp_is_empty!6859)))

(declare-fun b!1448015 () Bool)

(declare-fun tp!408405 () Bool)

(declare-fun tp!408403 () Bool)

(assert (=> b!1448015 (= e!923780 (and tp!408405 tp!408403))))

(assert (= (and b!1447665 ((_ is ElementMatch!3959) (regex!2645 (h!20437 (rules!11524 other!32))))) b!1448012))

(assert (= (and b!1447665 ((_ is Concat!6695) (regex!2645 (h!20437 (rules!11524 other!32))))) b!1448013))

(assert (= (and b!1447665 ((_ is Star!3959) (regex!2645 (h!20437 (rules!11524 other!32))))) b!1448014))

(assert (= (and b!1447665 ((_ is Union!3959) (regex!2645 (h!20437 (rules!11524 other!32))))) b!1448015))

(declare-fun b!1448019 () Bool)

(declare-fun b_free!35919 () Bool)

(declare-fun b_next!36623 () Bool)

(assert (=> b!1448019 (= b_free!35919 (not b_next!36623))))

(declare-fun tp!408410 () Bool)

(declare-fun b_and!97983 () Bool)

(assert (=> b!1448019 (= tp!408410 b_and!97983)))

(declare-fun b_free!35921 () Bool)

(declare-fun b_next!36625 () Bool)

(assert (=> b!1448019 (= b_free!35921 (not b_next!36625))))

(declare-fun tp!408408 () Bool)

(declare-fun b_and!97985 () Bool)

(assert (=> b!1448019 (= tp!408408 b_and!97985)))

(declare-fun tp!408407 () Bool)

(declare-fun e!923784 () Bool)

(declare-fun b!1448018 () Bool)

(declare-fun e!923783 () Bool)

(assert (=> b!1448018 (= e!923783 (and tp!408407 (inv!20031 (tag!2909 (rule!4418 (h!20436 (innerList!5177 (xs!7858 (c!238526 (tokens!2030 other!32)))))))) (inv!20045 (transformation!2645 (rule!4418 (h!20436 (innerList!5177 (xs!7858 (c!238526 (tokens!2030 other!32)))))))) e!923784))))

(declare-fun e!923781 () Bool)

(declare-fun tp!408409 () Bool)

(declare-fun b!1448017 () Bool)

(assert (=> b!1448017 (= e!923781 (and (inv!21 (value!85030 (h!20436 (innerList!5177 (xs!7858 (c!238526 (tokens!2030 other!32))))))) e!923783 tp!408409))))

(declare-fun e!923785 () Bool)

(assert (=> b!1447663 (= tp!408302 e!923785)))

(declare-fun b!1448016 () Bool)

(declare-fun tp!408406 () Bool)

(assert (=> b!1448016 (= e!923785 (and (inv!20047 (h!20436 (innerList!5177 (xs!7858 (c!238526 (tokens!2030 other!32)))))) e!923781 tp!408406))))

(assert (=> b!1448019 (= e!923784 (and tp!408410 tp!408408))))

(assert (= b!1448018 b!1448019))

(assert (= b!1448017 b!1448018))

(assert (= b!1448016 b!1448017))

(assert (= (and b!1447663 ((_ is Cons!15035) (innerList!5177 (xs!7858 (c!238526 (tokens!2030 other!32)))))) b!1448016))

(declare-fun m!1670857 () Bool)

(assert (=> b!1448018 m!1670857))

(declare-fun m!1670859 () Bool)

(assert (=> b!1448018 m!1670859))

(declare-fun m!1670861 () Bool)

(assert (=> b!1448017 m!1670861))

(declare-fun m!1670863 () Bool)

(assert (=> b!1448016 m!1670863))

(declare-fun b!1448022 () Bool)

(declare-fun b_free!35923 () Bool)

(declare-fun b_next!36627 () Bool)

(assert (=> b!1448022 (= b_free!35923 (not b_next!36627))))

(declare-fun tp!408413 () Bool)

(declare-fun b_and!97987 () Bool)

(assert (=> b!1448022 (= tp!408413 b_and!97987)))

(declare-fun b_free!35925 () Bool)

(declare-fun b_next!36629 () Bool)

(assert (=> b!1448022 (= b_free!35925 (not b_next!36629))))

(declare-fun tp!408411 () Bool)

(declare-fun b_and!97989 () Bool)

(assert (=> b!1448022 (= tp!408411 b_and!97989)))

(declare-fun e!923790 () Bool)

(assert (=> b!1448022 (= e!923790 (and tp!408413 tp!408411))))

(declare-fun e!923788 () Bool)

(declare-fun b!1448021 () Bool)

(declare-fun tp!408412 () Bool)

(assert (=> b!1448021 (= e!923788 (and tp!408412 (inv!20031 (tag!2909 (h!20437 (t!130393 (rules!11524 other!32))))) (inv!20045 (transformation!2645 (h!20437 (t!130393 (rules!11524 other!32))))) e!923790))))

(declare-fun b!1448020 () Bool)

(declare-fun e!923789 () Bool)

(declare-fun tp!408414 () Bool)

(assert (=> b!1448020 (= e!923789 (and e!923788 tp!408414))))

(assert (=> b!1447664 (= tp!408306 e!923789)))

(assert (= b!1448021 b!1448022))

(assert (= b!1448020 b!1448021))

(assert (= (and b!1447664 ((_ is Cons!15036) (t!130393 (rules!11524 other!32)))) b!1448020))

(declare-fun m!1670865 () Bool)

(assert (=> b!1448021 m!1670865))

(declare-fun m!1670867 () Bool)

(assert (=> b!1448021 m!1670867))

(declare-fun tp!408415 () Bool)

(declare-fun e!923792 () Bool)

(declare-fun tp!408416 () Bool)

(declare-fun b!1448023 () Bool)

(assert (=> b!1448023 (= e!923792 (and (inv!20036 (left!12794 (left!12794 (c!238526 (tokens!2030 thiss!10022))))) tp!408415 (inv!20036 (right!13124 (left!12794 (c!238526 (tokens!2030 thiss!10022))))) tp!408416))))

(declare-fun b!1448025 () Bool)

(declare-fun e!923791 () Bool)

(declare-fun tp!408417 () Bool)

(assert (=> b!1448025 (= e!923791 tp!408417)))

(declare-fun b!1448024 () Bool)

(assert (=> b!1448024 (= e!923792 (and (inv!20044 (xs!7858 (left!12794 (c!238526 (tokens!2030 thiss!10022))))) e!923791))))

(assert (=> b!1447647 (= tp!408285 (and (inv!20036 (left!12794 (c!238526 (tokens!2030 thiss!10022)))) e!923792))))

(assert (= (and b!1447647 ((_ is Node!5117) (left!12794 (c!238526 (tokens!2030 thiss!10022))))) b!1448023))

(assert (= b!1448024 b!1448025))

(assert (= (and b!1447647 ((_ is Leaf!7641) (left!12794 (c!238526 (tokens!2030 thiss!10022))))) b!1448024))

(declare-fun m!1670869 () Bool)

(assert (=> b!1448023 m!1670869))

(declare-fun m!1670871 () Bool)

(assert (=> b!1448023 m!1670871))

(declare-fun m!1670873 () Bool)

(assert (=> b!1448024 m!1670873))

(assert (=> b!1447647 m!1670485))

(declare-fun e!923794 () Bool)

(declare-fun b!1448026 () Bool)

(declare-fun tp!408419 () Bool)

(declare-fun tp!408418 () Bool)

(assert (=> b!1448026 (= e!923794 (and (inv!20036 (left!12794 (right!13124 (c!238526 (tokens!2030 thiss!10022))))) tp!408418 (inv!20036 (right!13124 (right!13124 (c!238526 (tokens!2030 thiss!10022))))) tp!408419))))

(declare-fun b!1448028 () Bool)

(declare-fun e!923793 () Bool)

(declare-fun tp!408420 () Bool)

(assert (=> b!1448028 (= e!923793 tp!408420)))

(declare-fun b!1448027 () Bool)

(assert (=> b!1448027 (= e!923794 (and (inv!20044 (xs!7858 (right!13124 (c!238526 (tokens!2030 thiss!10022))))) e!923793))))

(assert (=> b!1447647 (= tp!408286 (and (inv!20036 (right!13124 (c!238526 (tokens!2030 thiss!10022)))) e!923794))))

(assert (= (and b!1447647 ((_ is Node!5117) (right!13124 (c!238526 (tokens!2030 thiss!10022))))) b!1448026))

(assert (= b!1448027 b!1448028))

(assert (= (and b!1447647 ((_ is Leaf!7641) (right!13124 (c!238526 (tokens!2030 thiss!10022))))) b!1448027))

(declare-fun m!1670875 () Bool)

(assert (=> b!1448026 m!1670875))

(declare-fun m!1670877 () Bool)

(assert (=> b!1448026 m!1670877))

(declare-fun m!1670879 () Bool)

(assert (=> b!1448027 m!1670879))

(assert (=> b!1447647 m!1670487))

(declare-fun tp!408422 () Bool)

(declare-fun b!1448029 () Bool)

(declare-fun tp!408421 () Bool)

(declare-fun e!923796 () Bool)

(assert (=> b!1448029 (= e!923796 (and (inv!20036 (left!12794 (left!12794 (c!238526 (tokens!2030 other!32))))) tp!408421 (inv!20036 (right!13124 (left!12794 (c!238526 (tokens!2030 other!32))))) tp!408422))))

(declare-fun b!1448031 () Bool)

(declare-fun e!923795 () Bool)

(declare-fun tp!408423 () Bool)

(assert (=> b!1448031 (= e!923795 tp!408423)))

(declare-fun b!1448030 () Bool)

(assert (=> b!1448030 (= e!923796 (and (inv!20044 (xs!7858 (left!12794 (c!238526 (tokens!2030 other!32))))) e!923795))))

(assert (=> b!1447661 (= tp!408300 (and (inv!20036 (left!12794 (c!238526 (tokens!2030 other!32)))) e!923796))))

(assert (= (and b!1447661 ((_ is Node!5117) (left!12794 (c!238526 (tokens!2030 other!32))))) b!1448029))

(assert (= b!1448030 b!1448031))

(assert (= (and b!1447661 ((_ is Leaf!7641) (left!12794 (c!238526 (tokens!2030 other!32))))) b!1448030))

(declare-fun m!1670881 () Bool)

(assert (=> b!1448029 m!1670881))

(declare-fun m!1670883 () Bool)

(assert (=> b!1448029 m!1670883))

(declare-fun m!1670885 () Bool)

(assert (=> b!1448030 m!1670885))

(assert (=> b!1447661 m!1670495))

(declare-fun e!923798 () Bool)

(declare-fun tp!408424 () Bool)

(declare-fun tp!408425 () Bool)

(declare-fun b!1448032 () Bool)

(assert (=> b!1448032 (= e!923798 (and (inv!20036 (left!12794 (right!13124 (c!238526 (tokens!2030 other!32))))) tp!408424 (inv!20036 (right!13124 (right!13124 (c!238526 (tokens!2030 other!32))))) tp!408425))))

(declare-fun b!1448034 () Bool)

(declare-fun e!923797 () Bool)

(declare-fun tp!408426 () Bool)

(assert (=> b!1448034 (= e!923797 tp!408426)))

(declare-fun b!1448033 () Bool)

(assert (=> b!1448033 (= e!923798 (and (inv!20044 (xs!7858 (right!13124 (c!238526 (tokens!2030 other!32))))) e!923797))))

(assert (=> b!1447661 (= tp!408301 (and (inv!20036 (right!13124 (c!238526 (tokens!2030 other!32)))) e!923798))))

(assert (= (and b!1447661 ((_ is Node!5117) (right!13124 (c!238526 (tokens!2030 other!32))))) b!1448032))

(assert (= b!1448033 b!1448034))

(assert (= (and b!1447661 ((_ is Leaf!7641) (right!13124 (c!238526 (tokens!2030 other!32))))) b!1448033))

(declare-fun m!1670887 () Bool)

(assert (=> b!1448032 m!1670887))

(declare-fun m!1670889 () Bool)

(assert (=> b!1448032 m!1670889))

(declare-fun m!1670891 () Bool)

(assert (=> b!1448033 m!1670891))

(assert (=> b!1447661 m!1670497))

(check-sat (not b!1447977) (not d!420284) (not b!1448023) (not b!1448021) (not b!1447769) (not b!1447996) (not b!1448032) (not b!1447738) (not b_next!36627) (not b!1448031) (not b!1447978) (not b_next!36595) (not b_next!36623) (not d!420370) (not b_next!36617) (not b!1447787) (not b!1448008) (not b!1447786) (not b!1448028) (not b!1447995) (not b!1448024) b_and!97977 (not b!1448034) (not b!1447963) (not b_next!36615) (not b!1447782) (not d!420362) (not b!1447767) (not b!1447944) (not b!1447742) (not b!1447932) b_and!97985 (not d!420280) (not b!1447740) (not b!1448015) b_and!97951 (not b!1448013) (not b_next!36629) (not b_next!36591) (not b!1447975) (not b_next!36619) (not b!1447928) (not d!420368) (not b_next!36621) b_and!97979 (not b!1447962) (not b!1447783) tp_is_empty!6859 (not d!420360) (not b!1447727) (not b!1448009) (not b!1447974) (not b!1447764) (not b!1447972) (not b!1448017) (not b!1448010) (not b!1447930) b_and!97955 (not d!420386) b_and!97983 (not b!1448033) (not b!1447926) (not b!1447661) (not b!1447941) (not d!420382) (not b!1447970) (not b!1448020) (not b!1447931) (not b!1447929) (not d!420282) (not d!420366) (not b!1448014) (not d!420356) (not d!420388) (not b!1447957) (not b!1448025) (not b_next!36593) (not d!420286) (not b!1447971) (not d!420300) (not b_next!36597) (not b!1447766) b_and!97987 (not b!1447739) (not b!1447647) (not b!1447992) b_and!97975 (not b!1447741) (not b!1447980) (not d!420380) (not b!1447956) (not b!1447924) (not b!1447900) (not b!1447784) (not b!1448018) (not d!420354) (not b!1447785) (not b!1447994) (not b!1447919) (not b_next!36625) (not d!420278) (not b!1447933) b_and!97957 b_and!97953 (not b!1448016) (not b!1447964) (not b!1448026) (not b!1447909) (not b!1448029) (not d!420376) (not d!420350) (not b!1447965) (not b!1448027) (not b!1447993) (not d!420390) b_and!97981 (not b!1448030) b_and!97989)
(check-sat (not b_next!36617) b_and!97977 (not b_next!36615) b_and!97985 (not b_next!36619) b_and!97955 b_and!97983 (not b_next!36593) (not b_next!36597) b_and!97987 b_and!97975 (not b_next!36625) b_and!97981 b_and!97989 (not b_next!36627) (not b_next!36595) (not b_next!36623) b_and!97951 (not b_next!36629) (not b_next!36591) (not b_next!36621) b_and!97979 b_and!97957 b_and!97953)
