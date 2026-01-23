; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117738 () Bool)

(assert start!117738)

(declare-fun b!1324472 () Bool)

(declare-fun b_free!31939 () Bool)

(declare-fun b_next!32643 () Bool)

(assert (=> b!1324472 (= b_free!31939 (not b_next!32643))))

(declare-fun tp!384169 () Bool)

(declare-fun b_and!88463 () Bool)

(assert (=> b!1324472 (= tp!384169 b_and!88463)))

(declare-fun b_free!31941 () Bool)

(declare-fun b_next!32645 () Bool)

(assert (=> b!1324472 (= b_free!31941 (not b_next!32645))))

(declare-fun tp!384161 () Bool)

(declare-fun b_and!88465 () Bool)

(assert (=> b!1324472 (= tp!384161 b_and!88465)))

(declare-fun b!1324492 () Bool)

(declare-fun b_free!31943 () Bool)

(declare-fun b_next!32647 () Bool)

(assert (=> b!1324492 (= b_free!31943 (not b_next!32647))))

(declare-fun tp!384160 () Bool)

(declare-fun b_and!88467 () Bool)

(assert (=> b!1324492 (= tp!384160 b_and!88467)))

(declare-fun b_free!31945 () Bool)

(declare-fun b_next!32649 () Bool)

(assert (=> b!1324492 (= b_free!31945 (not b_next!32649))))

(declare-fun tp!384168 () Bool)

(declare-fun b_and!88469 () Bool)

(assert (=> b!1324492 (= tp!384168 b_and!88469)))

(declare-fun b!1324474 () Bool)

(declare-fun b_free!31947 () Bool)

(declare-fun b_next!32651 () Bool)

(assert (=> b!1324474 (= b_free!31947 (not b_next!32651))))

(declare-fun tp!384167 () Bool)

(declare-fun b_and!88471 () Bool)

(assert (=> b!1324474 (= tp!384167 b_and!88471)))

(declare-fun b_free!31949 () Bool)

(declare-fun b_next!32653 () Bool)

(assert (=> b!1324474 (= b_free!31949 (not b_next!32653))))

(declare-fun tp!384170 () Bool)

(declare-fun b_and!88473 () Bool)

(assert (=> b!1324474 (= tp!384170 b_and!88473)))

(declare-fun b!1324470 () Bool)

(assert (=> b!1324470 true))

(assert (=> b!1324470 true))

(declare-fun b!1324466 () Bool)

(assert (=> b!1324466 true))

(declare-fun b!1324461 () Bool)

(assert (=> b!1324461 true))

(declare-fun bs!331292 () Bool)

(declare-fun b!1324489 () Bool)

(assert (= bs!331292 (and b!1324489 b!1324461)))

(declare-fun lambda!54439 () Int)

(declare-fun lambda!54438 () Int)

(assert (=> bs!331292 (not (= lambda!54439 lambda!54438))))

(assert (=> b!1324489 true))

(declare-fun b!1324448 () Bool)

(declare-fun e!848652 () Bool)

(declare-fun e!848663 () Bool)

(assert (=> b!1324448 (= e!848652 e!848663)))

(declare-fun res!595774 () Bool)

(assert (=> b!1324448 (=> res!595774 e!848663)))

(declare-datatypes ((List!13490 0))(
  ( (Nil!13424) (Cons!13424 (h!18825 (_ BitVec 16)) (t!118755 List!13490)) )
))
(declare-datatypes ((TokenValue!2413 0))(
  ( (FloatLiteralValue!4826 (text!17336 List!13490)) (TokenValueExt!2412 (__x!8655 Int)) (Broken!12065 (value!75812 List!13490)) (Object!2478) (End!2413) (Def!2413) (Underscore!2413) (Match!2413) (Else!2413) (Error!2413) (Case!2413) (If!2413) (Extends!2413) (Abstract!2413) (Class!2413) (Val!2413) (DelimiterValue!4826 (del!2473 List!13490)) (KeywordValue!2419 (value!75813 List!13490)) (CommentValue!4826 (value!75814 List!13490)) (WhitespaceValue!4826 (value!75815 List!13490)) (IndentationValue!2413 (value!75816 List!13490)) (String!16300) (Int32!2413) (Broken!12066 (value!75817 List!13490)) (Boolean!2414) (Unit!19499) (OperatorValue!2416 (op!2473 List!13490)) (IdentifierValue!4826 (value!75818 List!13490)) (IdentifierValue!4827 (value!75819 List!13490)) (WhitespaceValue!4827 (value!75820 List!13490)) (True!4826) (False!4826) (Broken!12067 (value!75821 List!13490)) (Broken!12068 (value!75822 List!13490)) (True!4827) (RightBrace!2413) (RightBracket!2413) (Colon!2413) (Null!2413) (Comma!2413) (LeftBracket!2413) (False!4827) (LeftBrace!2413) (ImaginaryLiteralValue!2413 (text!17337 List!13490)) (StringLiteralValue!7239 (value!75823 List!13490)) (EOFValue!2413 (value!75824 List!13490)) (IdentValue!2413 (value!75825 List!13490)) (DelimiterValue!4827 (value!75826 List!13490)) (DedentValue!2413 (value!75827 List!13490)) (NewLineValue!2413 (value!75828 List!13490)) (IntegerValue!7239 (value!75829 (_ BitVec 32)) (text!17338 List!13490)) (IntegerValue!7240 (value!75830 Int) (text!17339 List!13490)) (Times!2413) (Or!2413) (Equal!2413) (Minus!2413) (Broken!12069 (value!75831 List!13490)) (And!2413) (Div!2413) (LessEqual!2413) (Mod!2413) (Concat!6050) (Not!2413) (Plus!2413) (SpaceValue!2413 (value!75832 List!13490)) (IntegerValue!7241 (value!75833 Int) (text!17340 List!13490)) (StringLiteralValue!7240 (text!17341 List!13490)) (FloatLiteralValue!4827 (text!17342 List!13490)) (BytesLiteralValue!2413 (value!75834 List!13490)) (CommentValue!4827 (value!75835 List!13490)) (StringLiteralValue!7241 (value!75836 List!13490)) (ErrorTokenValue!2413 (msg!2474 List!13490)) )
))
(declare-datatypes ((C!7564 0))(
  ( (C!7565 (val!4342 Int)) )
))
(declare-datatypes ((List!13491 0))(
  ( (Nil!13425) (Cons!13425 (h!18826 C!7564) (t!118756 List!13491)) )
))
(declare-datatypes ((IArray!8837 0))(
  ( (IArray!8838 (innerList!4476 List!13491)) )
))
(declare-datatypes ((Conc!4416 0))(
  ( (Node!4416 (left!11531 Conc!4416) (right!11861 Conc!4416) (csize!9062 Int) (cheight!4627 Int)) (Leaf!6774 (xs!7131 IArray!8837) (csize!9063 Int)) (Empty!4416) )
))
(declare-datatypes ((BalanceConc!8772 0))(
  ( (BalanceConc!8773 (c!217330 Conc!4416)) )
))
(declare-datatypes ((Regex!3637 0))(
  ( (ElementMatch!3637 (c!217331 C!7564)) (Concat!6051 (regOne!7786 Regex!3637) (regTwo!7786 Regex!3637)) (EmptyExpr!3637) (Star!3637 (reg!3966 Regex!3637)) (EmptyLang!3637) (Union!3637 (regOne!7787 Regex!3637) (regTwo!7787 Regex!3637)) )
))
(declare-datatypes ((String!16301 0))(
  ( (String!16302 (value!75837 String)) )
))
(declare-datatypes ((TokenValueInjection!4486 0))(
  ( (TokenValueInjection!4487 (toValue!3554 Int) (toChars!3413 Int)) )
))
(declare-datatypes ((Rule!4446 0))(
  ( (Rule!4447 (regex!2323 Regex!3637) (tag!2585 String!16301) (isSeparator!2323 Bool) (transformation!2323 TokenValueInjection!4486)) )
))
(declare-datatypes ((Token!4308 0))(
  ( (Token!4309 (value!75838 TokenValue!2413) (rule!4068 Rule!4446) (size!10940 Int) (originalCharacters!3185 List!13491)) )
))
(declare-datatypes ((List!13492 0))(
  ( (Nil!13426) (Cons!13426 (h!18827 Token!4308) (t!118757 List!13492)) )
))
(declare-datatypes ((IArray!8839 0))(
  ( (IArray!8840 (innerList!4477 List!13492)) )
))
(declare-datatypes ((Conc!4417 0))(
  ( (Node!4417 (left!11532 Conc!4417) (right!11862 Conc!4417) (csize!9064 Int) (cheight!4628 Int)) (Leaf!6775 (xs!7132 IArray!8839) (csize!9065 Int)) (Empty!4417) )
))
(declare-datatypes ((BalanceConc!8774 0))(
  ( (BalanceConc!8775 (c!217332 Conc!4417)) )
))
(declare-datatypes ((tuple2!13058 0))(
  ( (tuple2!13059 (_1!7415 BalanceConc!8774) (_2!7415 BalanceConc!8772)) )
))
(declare-fun lt!437490 () tuple2!13058)

(declare-fun lt!437484 () List!13492)

(declare-fun list!5078 (BalanceConc!8774) List!13492)

(assert (=> b!1324448 (= res!595774 (not (= (list!5078 (_1!7415 lt!437490)) lt!437484)))))

(declare-fun t2!34 () Token!4308)

(assert (=> b!1324448 (= lt!437484 (Cons!13426 t2!34 Nil!13426))))

(declare-datatypes ((LexerInterface!2018 0))(
  ( (LexerInterfaceExt!2015 (__x!8656 Int)) (Lexer!2016) )
))
(declare-fun thiss!19762 () LexerInterface!2018)

(declare-fun lt!437478 () BalanceConc!8772)

(declare-datatypes ((List!13493 0))(
  ( (Nil!13427) (Cons!13427 (h!18828 Rule!4446) (t!118758 List!13493)) )
))
(declare-fun rules!2550 () List!13493)

(declare-fun lex!853 (LexerInterface!2018 List!13493 BalanceConc!8772) tuple2!13058)

(assert (=> b!1324448 (= lt!437490 (lex!853 thiss!19762 rules!2550 lt!437478))))

(declare-fun print!792 (LexerInterface!2018 BalanceConc!8774) BalanceConc!8772)

(declare-fun singletonSeq!912 (Token!4308) BalanceConc!8774)

(assert (=> b!1324448 (= lt!437478 (print!792 thiss!19762 (singletonSeq!912 t2!34)))))

(declare-fun b!1324449 () Bool)

(declare-fun res!595795 () Bool)

(declare-fun e!848648 () Bool)

(assert (=> b!1324449 (=> (not res!595795) (not e!848648))))

(declare-fun sepAndNonSepRulesDisjointChars!696 (List!13493 List!13493) Bool)

(assert (=> b!1324449 (= res!595795 (sepAndNonSepRulesDisjointChars!696 rules!2550 rules!2550))))

(declare-fun b!1324450 () Bool)

(declare-fun res!595800 () Bool)

(assert (=> b!1324450 (=> (not res!595800) (not e!848648))))

(declare-fun t1!34 () Token!4308)

(declare-fun separableTokensPredicate!301 (LexerInterface!2018 Token!4308 Token!4308 List!13493) Bool)

(assert (=> b!1324450 (= res!595800 (not (separableTokensPredicate!301 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1324451 () Bool)

(declare-fun res!595788 () Bool)

(declare-fun e!848675 () Bool)

(assert (=> b!1324451 (=> res!595788 e!848675)))

(declare-fun lt!437486 () List!13491)

(declare-fun lt!437468 () C!7564)

(declare-fun contains!2385 (List!13491 C!7564) Bool)

(assert (=> b!1324451 (= res!595788 (not (contains!2385 lt!437486 lt!437468)))))

(declare-fun b!1324452 () Bool)

(declare-fun e!848662 () Bool)

(assert (=> b!1324452 (= e!848662 e!848652)))

(declare-fun res!595804 () Bool)

(assert (=> b!1324452 (=> res!595804 e!848652)))

(declare-fun lt!437464 () tuple2!13058)

(declare-fun lt!437489 () List!13492)

(assert (=> b!1324452 (= res!595804 (not (= (list!5078 (_1!7415 lt!437464)) lt!437489)))))

(assert (=> b!1324452 (= lt!437489 (Cons!13426 t1!34 Nil!13426))))

(declare-fun lt!437472 () BalanceConc!8772)

(assert (=> b!1324452 (= lt!437464 (lex!853 thiss!19762 rules!2550 lt!437472))))

(assert (=> b!1324452 (= lt!437472 (print!792 thiss!19762 (singletonSeq!912 t1!34)))))

(declare-fun lt!437471 () Rule!4446)

(declare-fun getWitness!240 (List!13493 Int) Rule!4446)

(assert (=> b!1324452 (= lt!437471 (getWitness!240 rules!2550 lambda!54438))))

(declare-fun b!1324453 () Bool)

(declare-fun res!595782 () Bool)

(assert (=> b!1324453 (=> res!595782 e!848675)))

(declare-fun lt!437465 () Regex!3637)

(declare-fun matchR!1639 (Regex!3637 List!13491) Bool)

(assert (=> b!1324453 (= res!595782 (not (matchR!1639 lt!437465 lt!437486)))))

(declare-fun b!1324454 () Bool)

(declare-fun e!848655 () Bool)

(assert (=> b!1324454 (= e!848655 e!848648)))

(declare-fun res!595799 () Bool)

(assert (=> b!1324454 (=> (not res!595799) (not e!848648))))

(declare-fun lt!437487 () BalanceConc!8772)

(declare-fun size!10941 (BalanceConc!8772) Int)

(assert (=> b!1324454 (= res!595799 (> (size!10941 lt!437487) 0))))

(declare-fun charsOf!1295 (Token!4308) BalanceConc!8772)

(assert (=> b!1324454 (= lt!437487 (charsOf!1295 t2!34))))

(declare-fun b!1324455 () Bool)

(declare-fun e!848674 () Bool)

(assert (=> b!1324455 (= e!848648 e!848674)))

(declare-fun res!595796 () Bool)

(assert (=> b!1324455 (=> (not res!595796) (not e!848674))))

(declare-fun lt!437470 () List!13491)

(declare-fun prefixMatch!150 (Regex!3637 List!13491) Bool)

(assert (=> b!1324455 (= res!595796 (prefixMatch!150 lt!437465 lt!437470))))

(declare-fun rulesRegex!208 (LexerInterface!2018 List!13493) Regex!3637)

(assert (=> b!1324455 (= lt!437465 (rulesRegex!208 thiss!19762 rules!2550))))

(declare-fun lt!437477 () List!13491)

(declare-fun lt!437474 () C!7564)

(declare-fun ++!3430 (List!13491 List!13491) List!13491)

(assert (=> b!1324455 (= lt!437470 (++!3430 lt!437477 (Cons!13425 lt!437474 Nil!13425)))))

(declare-fun apply!3093 (BalanceConc!8772 Int) C!7564)

(assert (=> b!1324455 (= lt!437474 (apply!3093 lt!437487 0))))

(declare-fun lt!437479 () BalanceConc!8772)

(declare-fun list!5079 (BalanceConc!8772) List!13491)

(assert (=> b!1324455 (= lt!437477 (list!5079 lt!437479))))

(assert (=> b!1324455 (= lt!437479 (charsOf!1295 t1!34))))

(declare-fun b!1324456 () Bool)

(declare-fun tp!384165 () Bool)

(declare-fun e!848671 () Bool)

(declare-fun e!848660 () Bool)

(declare-fun inv!17792 (String!16301) Bool)

(declare-fun inv!17795 (TokenValueInjection!4486) Bool)

(assert (=> b!1324456 (= e!848660 (and tp!384165 (inv!17792 (tag!2585 (h!18828 rules!2550))) (inv!17795 (transformation!2323 (h!18828 rules!2550))) e!848671))))

(declare-fun b!1324457 () Bool)

(declare-fun res!595783 () Bool)

(declare-fun e!848676 () Bool)

(assert (=> b!1324457 (=> res!595783 e!848676)))

(declare-fun usedCharacters!188 (Regex!3637) List!13491)

(assert (=> b!1324457 (= res!595783 (contains!2385 (usedCharacters!188 (regex!2323 (rule!4068 t2!34))) lt!437474))))

(declare-fun b!1324458 () Bool)

(declare-fun res!595773 () Bool)

(assert (=> b!1324458 (=> (not res!595773) (not e!848655))))

(declare-fun isEmpty!7992 (List!13493) Bool)

(assert (=> b!1324458 (= res!595773 (not (isEmpty!7992 rules!2550)))))

(declare-fun b!1324459 () Bool)

(declare-fun res!595798 () Bool)

(assert (=> b!1324459 (=> res!595798 e!848652)))

(declare-datatypes ((tuple2!13060 0))(
  ( (tuple2!13061 (_1!7416 Token!4308) (_2!7416 List!13491)) )
))
(declare-datatypes ((Option!2594 0))(
  ( (None!2593) (Some!2593 (v!21190 tuple2!13060)) )
))
(declare-fun maxPrefix!1028 (LexerInterface!2018 List!13493 List!13491) Option!2594)

(assert (=> b!1324459 (= res!595798 (not (= (maxPrefix!1028 thiss!19762 rules!2550 lt!437477) (Some!2593 (tuple2!13061 t1!34 Nil!13425)))))))

(declare-fun tp!384163 () Bool)

(declare-fun e!848669 () Bool)

(declare-fun b!1324460 () Bool)

(declare-fun e!848650 () Bool)

(declare-fun inv!21 (TokenValue!2413) Bool)

(assert (=> b!1324460 (= e!848669 (and (inv!21 (value!75838 t1!34)) e!848650 tp!384163))))

(declare-fun e!848654 () Bool)

(assert (=> b!1324461 (= e!848654 e!848662)))

(declare-fun res!595794 () Bool)

(assert (=> b!1324461 (=> res!595794 e!848662)))

(declare-fun exists!348 (List!13493 Int) Bool)

(assert (=> b!1324461 (= res!595794 (not (exists!348 rules!2550 lambda!54438)))))

(assert (=> b!1324461 (exists!348 rules!2550 lambda!54438)))

(declare-fun lt!437475 () Regex!3637)

(declare-datatypes ((Unit!19500 0))(
  ( (Unit!19501) )
))
(declare-fun lt!437476 () Unit!19500)

(declare-fun lambda!54436 () Int)

(declare-fun lemmaMapContains!66 (List!13493 Int Regex!3637) Unit!19500)

(assert (=> b!1324461 (= lt!437476 (lemmaMapContains!66 rules!2550 lambda!54436 lt!437475))))

(declare-fun b!1324462 () Bool)

(declare-fun e!848670 () Bool)

(declare-fun tp!384164 () Bool)

(assert (=> b!1324462 (= e!848670 (and e!848660 tp!384164))))

(declare-fun b!1324463 () Bool)

(declare-fun res!595785 () Bool)

(assert (=> b!1324463 (=> res!595785 e!848663)))

(declare-datatypes ((tuple2!13062 0))(
  ( (tuple2!13063 (_1!7417 List!13492) (_2!7417 List!13491)) )
))
(declare-fun lexList!556 (LexerInterface!2018 List!13493 List!13491) tuple2!13062)

(assert (=> b!1324463 (= res!595785 (not (= (lexList!556 thiss!19762 rules!2550 (list!5079 lt!437478)) (tuple2!13063 lt!437484 Nil!13425))))))

(declare-fun tp!384162 () Bool)

(declare-fun e!848664 () Bool)

(declare-fun b!1324464 () Bool)

(assert (=> b!1324464 (= e!848650 (and tp!384162 (inv!17792 (tag!2585 (rule!4068 t1!34))) (inv!17795 (transformation!2323 (rule!4068 t1!34))) e!848664))))

(declare-fun b!1324465 () Bool)

(declare-fun res!595777 () Bool)

(assert (=> b!1324465 (=> res!595777 e!848663)))

(declare-fun isEmpty!7993 (BalanceConc!8772) Bool)

(assert (=> b!1324465 (= res!595777 (not (isEmpty!7993 (_2!7415 lt!437490))))))

(declare-fun e!848661 () Bool)

(assert (=> b!1324466 (= e!848675 e!848661)))

(declare-fun res!595775 () Bool)

(assert (=> b!1324466 (=> res!595775 e!848661)))

(declare-fun lambda!54437 () Int)

(declare-datatypes ((List!13494 0))(
  ( (Nil!13428) (Cons!13428 (h!18829 Regex!3637) (t!118759 List!13494)) )
))
(declare-fun exists!349 (List!13494 Int) Bool)

(declare-fun map!2951 (List!13493 Int) List!13494)

(assert (=> b!1324466 (= res!595775 (not (exists!349 (map!2951 rules!2550 lambda!54436) lambda!54437)))))

(declare-fun lt!437466 () List!13494)

(assert (=> b!1324466 (exists!349 lt!437466 lambda!54437)))

(declare-fun lt!437467 () Unit!19500)

(declare-fun matchRGenUnionSpec!74 (Regex!3637 List!13494 List!13491) Unit!19500)

(assert (=> b!1324466 (= lt!437467 (matchRGenUnionSpec!74 lt!437465 lt!437466 lt!437486))))

(assert (=> b!1324466 (= lt!437466 (map!2951 rules!2550 lambda!54436))))

(declare-fun b!1324467 () Bool)

(declare-fun res!595776 () Bool)

(assert (=> b!1324467 (=> res!595776 e!848675)))

(assert (=> b!1324467 (= res!595776 (not (contains!2385 lt!437470 lt!437474)))))

(declare-fun b!1324468 () Bool)

(declare-fun res!595784 () Bool)

(assert (=> b!1324468 (=> (not res!595784) (not e!848655))))

(assert (=> b!1324468 (= res!595784 (not (= (isSeparator!2323 (rule!4068 t1!34)) (isSeparator!2323 (rule!4068 t2!34)))))))

(declare-fun b!1324469 () Bool)

(declare-fun e!848651 () Bool)

(assert (=> b!1324469 (= e!848663 e!848651)))

(declare-fun res!595790 () Bool)

(assert (=> b!1324469 (=> res!595790 e!848651)))

(declare-fun lt!437480 () List!13491)

(assert (=> b!1324469 (= res!595790 (not (= (maxPrefix!1028 thiss!19762 rules!2550 lt!437480) (Some!2593 (tuple2!13061 t2!34 Nil!13425)))))))

(assert (=> b!1324469 (= lt!437480 (list!5079 lt!437487))))

(declare-fun e!848657 () Bool)

(assert (=> b!1324470 (= e!848674 (not e!848657))))

(declare-fun res!595805 () Bool)

(assert (=> b!1324470 (=> res!595805 e!848657)))

(declare-fun lambda!54435 () Int)

(declare-fun Exists!795 (Int) Bool)

(assert (=> b!1324470 (= res!595805 (not (Exists!795 lambda!54435)))))

(assert (=> b!1324470 (Exists!795 lambda!54435)))

(declare-fun lt!437469 () Unit!19500)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!113 (Regex!3637 List!13491) Unit!19500)

(assert (=> b!1324470 (= lt!437469 (lemmaPrefixMatchThenExistsStringThatMatches!113 lt!437465 lt!437470))))

(declare-fun b!1324471 () Bool)

(assert (=> b!1324471 (= e!848676 (not (= lt!437480 Nil!13425)))))

(declare-fun e!848673 () Bool)

(assert (=> b!1324472 (= e!848673 (and tp!384169 tp!384161))))

(declare-fun b!1324473 () Bool)

(declare-fun e!848668 () Unit!19500)

(declare-fun Unit!19502 () Unit!19500)

(assert (=> b!1324473 (= e!848668 Unit!19502)))

(declare-fun lt!437473 () Unit!19500)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!134 (Regex!3637 List!13491 C!7564) Unit!19500)

(declare-fun head!2310 (List!13491) C!7564)

(assert (=> b!1324473 (= lt!437473 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!134 (regex!2323 (rule!4068 t1!34)) lt!437477 (head!2310 lt!437477)))))

(assert (=> b!1324473 false))

(assert (=> b!1324474 (= e!848664 (and tp!384167 tp!384170))))

(declare-fun b!1324475 () Bool)

(declare-fun res!595807 () Bool)

(assert (=> b!1324475 (=> (not res!595807) (not e!848655))))

(declare-fun rulesProduceIndividualToken!987 (LexerInterface!2018 List!13493 Token!4308) Bool)

(assert (=> b!1324475 (= res!595807 (rulesProduceIndividualToken!987 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1324476 () Bool)

(declare-fun Unit!19503 () Unit!19500)

(assert (=> b!1324476 (= e!848668 Unit!19503)))

(declare-fun b!1324477 () Bool)

(declare-fun e!848666 () Bool)

(assert (=> b!1324477 (= e!848657 e!848666)))

(declare-fun res!595806 () Bool)

(assert (=> b!1324477 (=> res!595806 e!848666)))

(declare-fun getSuffix!493 (List!13491 List!13491) List!13491)

(assert (=> b!1324477 (= res!595806 (not (= lt!437486 (++!3430 lt!437470 (getSuffix!493 lt!437486 lt!437470)))))))

(declare-fun pickWitness!100 (Int) List!13491)

(assert (=> b!1324477 (= lt!437486 (pickWitness!100 lambda!54435))))

(declare-fun b!1324478 () Bool)

(declare-fun res!595779 () Bool)

(assert (=> b!1324478 (=> res!595779 e!848651)))

(declare-fun contains!2386 (List!13493 Rule!4446) Bool)

(assert (=> b!1324478 (= res!595779 (not (contains!2386 rules!2550 lt!437471)))))

(declare-fun b!1324479 () Bool)

(declare-fun res!595803 () Bool)

(assert (=> b!1324479 (=> res!595803 e!848652)))

(assert (=> b!1324479 (= res!595803 (not (= (lexList!556 thiss!19762 rules!2550 (list!5079 lt!437472)) (tuple2!13063 lt!437489 Nil!13425))))))

(declare-fun b!1324480 () Bool)

(declare-fun tp!384159 () Bool)

(declare-fun e!848672 () Bool)

(assert (=> b!1324480 (= e!848672 (and tp!384159 (inv!17792 (tag!2585 (rule!4068 t2!34))) (inv!17795 (transformation!2323 (rule!4068 t2!34))) e!848673))))

(declare-fun b!1324481 () Bool)

(declare-fun tp!384166 () Bool)

(declare-fun e!848653 () Bool)

(assert (=> b!1324481 (= e!848653 (and (inv!21 (value!75838 t2!34)) e!848672 tp!384166))))

(declare-fun b!1324482 () Bool)

(declare-fun res!595789 () Bool)

(assert (=> b!1324482 (=> res!595789 e!848652)))

(assert (=> b!1324482 (= res!595789 (not (isEmpty!7993 (_2!7415 lt!437464))))))

(declare-fun b!1324483 () Bool)

(declare-fun res!595793 () Bool)

(assert (=> b!1324483 (=> res!595793 e!848652)))

(assert (=> b!1324483 (= res!595793 (not (contains!2386 rules!2550 (rule!4068 t1!34))))))

(declare-fun b!1324484 () Bool)

(assert (=> b!1324484 (= e!848661 e!848654)))

(declare-fun res!595797 () Bool)

(assert (=> b!1324484 (=> res!595797 e!848654)))

(declare-fun contains!2387 (List!13494 Regex!3637) Bool)

(assert (=> b!1324484 (= res!595797 (not (contains!2387 (map!2951 rules!2550 lambda!54436) lt!437475)))))

(declare-fun getWitness!241 (List!13494 Int) Regex!3637)

(assert (=> b!1324484 (= lt!437475 (getWitness!241 (map!2951 rules!2550 lambda!54436) lambda!54437))))

(declare-fun b!1324486 () Bool)

(declare-fun e!848667 () Bool)

(assert (=> b!1324486 (= e!848667 e!848676)))

(declare-fun res!595802 () Bool)

(assert (=> b!1324486 (=> res!595802 e!848676)))

(declare-fun lt!437483 () Bool)

(assert (=> b!1324486 (= res!595802 lt!437483)))

(declare-fun lt!437488 () Unit!19500)

(assert (=> b!1324486 (= lt!437488 e!848668)))

(declare-fun c!217329 () Bool)

(assert (=> b!1324486 (= c!217329 lt!437483)))

(assert (=> b!1324486 (= lt!437483 (not (contains!2385 (usedCharacters!188 (regex!2323 (rule!4068 t1!34))) lt!437468)))))

(declare-fun res!595778 () Bool)

(assert (=> start!117738 (=> (not res!595778) (not e!848655))))

(get-info :version)

(assert (=> start!117738 (= res!595778 ((_ is Lexer!2016) thiss!19762))))

(assert (=> start!117738 e!848655))

(assert (=> start!117738 true))

(assert (=> start!117738 e!848670))

(declare-fun inv!17796 (Token!4308) Bool)

(assert (=> start!117738 (and (inv!17796 t1!34) e!848669)))

(assert (=> start!117738 (and (inv!17796 t2!34) e!848653)))

(declare-fun b!1324485 () Bool)

(declare-fun res!595781 () Bool)

(assert (=> b!1324485 (=> (not res!595781) (not e!848655))))

(assert (=> b!1324485 (= res!595781 (rulesProduceIndividualToken!987 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1324487 () Bool)

(assert (=> b!1324487 (= e!848666 e!848675)))

(declare-fun res!595792 () Bool)

(assert (=> b!1324487 (=> res!595792 e!848675)))

(assert (=> b!1324487 (= res!595792 (not (contains!2385 lt!437470 lt!437468)))))

(assert (=> b!1324487 (= lt!437468 (apply!3093 lt!437479 0))))

(declare-fun b!1324488 () Bool)

(declare-fun res!595786 () Bool)

(assert (=> b!1324488 (=> res!595786 e!848667)))

(assert (=> b!1324488 (= res!595786 (not (matchR!1639 (regex!2323 (rule!4068 t2!34)) lt!437480)))))

(assert (=> b!1324489 (= e!848651 e!848667)))

(declare-fun res!595787 () Bool)

(assert (=> b!1324489 (=> res!595787 e!848667)))

(assert (=> b!1324489 (= res!595787 (not (matchR!1639 (regex!2323 (rule!4068 t1!34)) lt!437477)))))

(declare-fun lt!437481 () Unit!19500)

(declare-fun forallContained!574 (List!13493 Int Rule!4446) Unit!19500)

(assert (=> b!1324489 (= lt!437481 (forallContained!574 rules!2550 lambda!54439 (rule!4068 t2!34)))))

(declare-fun lt!437482 () Unit!19500)

(assert (=> b!1324489 (= lt!437482 (forallContained!574 rules!2550 lambda!54439 (rule!4068 t1!34)))))

(declare-fun lt!437485 () Unit!19500)

(assert (=> b!1324489 (= lt!437485 (forallContained!574 rules!2550 lambda!54439 lt!437471))))

(declare-fun b!1324490 () Bool)

(declare-fun res!595791 () Bool)

(assert (=> b!1324490 (=> res!595791 e!848675)))

(assert (=> b!1324490 (= res!595791 (not (contains!2385 lt!437486 lt!437474)))))

(declare-fun b!1324491 () Bool)

(declare-fun res!595780 () Bool)

(assert (=> b!1324491 (=> (not res!595780) (not e!848655))))

(declare-fun rulesInvariant!1888 (LexerInterface!2018 List!13493) Bool)

(assert (=> b!1324491 (= res!595780 (rulesInvariant!1888 thiss!19762 rules!2550))))

(assert (=> b!1324492 (= e!848671 (and tp!384160 tp!384168))))

(declare-fun b!1324493 () Bool)

(declare-fun res!595801 () Bool)

(assert (=> b!1324493 (=> res!595801 e!848651)))

(assert (=> b!1324493 (= res!595801 (not (contains!2386 rules!2550 (rule!4068 t2!34))))))

(assert (= (and start!117738 res!595778) b!1324458))

(assert (= (and b!1324458 res!595773) b!1324491))

(assert (= (and b!1324491 res!595780) b!1324485))

(assert (= (and b!1324485 res!595781) b!1324475))

(assert (= (and b!1324475 res!595807) b!1324468))

(assert (= (and b!1324468 res!595784) b!1324454))

(assert (= (and b!1324454 res!595799) b!1324449))

(assert (= (and b!1324449 res!595795) b!1324450))

(assert (= (and b!1324450 res!595800) b!1324455))

(assert (= (and b!1324455 res!595796) b!1324470))

(assert (= (and b!1324470 (not res!595805)) b!1324477))

(assert (= (and b!1324477 (not res!595806)) b!1324487))

(assert (= (and b!1324487 (not res!595792)) b!1324451))

(assert (= (and b!1324451 (not res!595788)) b!1324467))

(assert (= (and b!1324467 (not res!595776)) b!1324490))

(assert (= (and b!1324490 (not res!595791)) b!1324453))

(assert (= (and b!1324453 (not res!595782)) b!1324466))

(assert (= (and b!1324466 (not res!595775)) b!1324484))

(assert (= (and b!1324484 (not res!595797)) b!1324461))

(assert (= (and b!1324461 (not res!595794)) b!1324452))

(assert (= (and b!1324452 (not res!595804)) b!1324482))

(assert (= (and b!1324482 (not res!595789)) b!1324479))

(assert (= (and b!1324479 (not res!595803)) b!1324459))

(assert (= (and b!1324459 (not res!595798)) b!1324483))

(assert (= (and b!1324483 (not res!595793)) b!1324448))

(assert (= (and b!1324448 (not res!595774)) b!1324465))

(assert (= (and b!1324465 (not res!595777)) b!1324463))

(assert (= (and b!1324463 (not res!595785)) b!1324469))

(assert (= (and b!1324469 (not res!595790)) b!1324493))

(assert (= (and b!1324493 (not res!595801)) b!1324478))

(assert (= (and b!1324478 (not res!595779)) b!1324489))

(assert (= (and b!1324489 (not res!595787)) b!1324488))

(assert (= (and b!1324488 (not res!595786)) b!1324486))

(assert (= (and b!1324486 c!217329) b!1324473))

(assert (= (and b!1324486 (not c!217329)) b!1324476))

(assert (= (and b!1324486 (not res!595802)) b!1324457))

(assert (= (and b!1324457 (not res!595783)) b!1324471))

(assert (= b!1324456 b!1324492))

(assert (= b!1324462 b!1324456))

(assert (= (and start!117738 ((_ is Cons!13427) rules!2550)) b!1324462))

(assert (= b!1324464 b!1324474))

(assert (= b!1324460 b!1324464))

(assert (= start!117738 b!1324460))

(assert (= b!1324480 b!1324472))

(assert (= b!1324481 b!1324480))

(assert (= start!117738 b!1324481))

(declare-fun m!1480881 () Bool)

(assert (=> b!1324473 m!1480881))

(assert (=> b!1324473 m!1480881))

(declare-fun m!1480883 () Bool)

(assert (=> b!1324473 m!1480883))

(declare-fun m!1480885 () Bool)

(assert (=> b!1324450 m!1480885))

(declare-fun m!1480887 () Bool)

(assert (=> b!1324488 m!1480887))

(declare-fun m!1480889 () Bool)

(assert (=> b!1324464 m!1480889))

(declare-fun m!1480891 () Bool)

(assert (=> b!1324464 m!1480891))

(declare-fun m!1480893 () Bool)

(assert (=> b!1324466 m!1480893))

(assert (=> b!1324466 m!1480893))

(assert (=> b!1324466 m!1480893))

(declare-fun m!1480895 () Bool)

(assert (=> b!1324466 m!1480895))

(declare-fun m!1480897 () Bool)

(assert (=> b!1324466 m!1480897))

(declare-fun m!1480899 () Bool)

(assert (=> b!1324466 m!1480899))

(declare-fun m!1480901 () Bool)

(assert (=> b!1324487 m!1480901))

(declare-fun m!1480903 () Bool)

(assert (=> b!1324487 m!1480903))

(declare-fun m!1480905 () Bool)

(assert (=> b!1324478 m!1480905))

(declare-fun m!1480907 () Bool)

(assert (=> b!1324481 m!1480907))

(declare-fun m!1480909 () Bool)

(assert (=> b!1324448 m!1480909))

(declare-fun m!1480911 () Bool)

(assert (=> b!1324448 m!1480911))

(declare-fun m!1480913 () Bool)

(assert (=> b!1324448 m!1480913))

(assert (=> b!1324448 m!1480913))

(declare-fun m!1480915 () Bool)

(assert (=> b!1324448 m!1480915))

(declare-fun m!1480917 () Bool)

(assert (=> b!1324477 m!1480917))

(assert (=> b!1324477 m!1480917))

(declare-fun m!1480919 () Bool)

(assert (=> b!1324477 m!1480919))

(declare-fun m!1480921 () Bool)

(assert (=> b!1324477 m!1480921))

(declare-fun m!1480923 () Bool)

(assert (=> b!1324485 m!1480923))

(declare-fun m!1480925 () Bool)

(assert (=> b!1324456 m!1480925))

(declare-fun m!1480927 () Bool)

(assert (=> b!1324456 m!1480927))

(declare-fun m!1480929 () Bool)

(assert (=> b!1324457 m!1480929))

(assert (=> b!1324457 m!1480929))

(declare-fun m!1480931 () Bool)

(assert (=> b!1324457 m!1480931))

(declare-fun m!1480933 () Bool)

(assert (=> b!1324486 m!1480933))

(assert (=> b!1324486 m!1480933))

(declare-fun m!1480935 () Bool)

(assert (=> b!1324486 m!1480935))

(declare-fun m!1480937 () Bool)

(assert (=> b!1324463 m!1480937))

(assert (=> b!1324463 m!1480937))

(declare-fun m!1480939 () Bool)

(assert (=> b!1324463 m!1480939))

(declare-fun m!1480941 () Bool)

(assert (=> b!1324480 m!1480941))

(declare-fun m!1480943 () Bool)

(assert (=> b!1324480 m!1480943))

(assert (=> b!1324484 m!1480893))

(assert (=> b!1324484 m!1480893))

(declare-fun m!1480945 () Bool)

(assert (=> b!1324484 m!1480945))

(assert (=> b!1324484 m!1480893))

(assert (=> b!1324484 m!1480893))

(declare-fun m!1480947 () Bool)

(assert (=> b!1324484 m!1480947))

(declare-fun m!1480949 () Bool)

(assert (=> b!1324475 m!1480949))

(declare-fun m!1480951 () Bool)

(assert (=> b!1324493 m!1480951))

(declare-fun m!1480953 () Bool)

(assert (=> b!1324482 m!1480953))

(declare-fun m!1480955 () Bool)

(assert (=> b!1324449 m!1480955))

(declare-fun m!1480957 () Bool)

(assert (=> b!1324467 m!1480957))

(declare-fun m!1480959 () Bool)

(assert (=> b!1324454 m!1480959))

(declare-fun m!1480961 () Bool)

(assert (=> b!1324454 m!1480961))

(declare-fun m!1480963 () Bool)

(assert (=> b!1324469 m!1480963))

(declare-fun m!1480965 () Bool)

(assert (=> b!1324469 m!1480965))

(declare-fun m!1480967 () Bool)

(assert (=> b!1324452 m!1480967))

(declare-fun m!1480969 () Bool)

(assert (=> b!1324452 m!1480969))

(declare-fun m!1480971 () Bool)

(assert (=> b!1324452 m!1480971))

(assert (=> b!1324452 m!1480969))

(declare-fun m!1480973 () Bool)

(assert (=> b!1324452 m!1480973))

(declare-fun m!1480975 () Bool)

(assert (=> b!1324452 m!1480975))

(declare-fun m!1480977 () Bool)

(assert (=> b!1324455 m!1480977))

(declare-fun m!1480979 () Bool)

(assert (=> b!1324455 m!1480979))

(declare-fun m!1480981 () Bool)

(assert (=> b!1324455 m!1480981))

(declare-fun m!1480983 () Bool)

(assert (=> b!1324455 m!1480983))

(declare-fun m!1480985 () Bool)

(assert (=> b!1324455 m!1480985))

(declare-fun m!1480987 () Bool)

(assert (=> b!1324455 m!1480987))

(declare-fun m!1480989 () Bool)

(assert (=> b!1324490 m!1480989))

(declare-fun m!1480991 () Bool)

(assert (=> b!1324451 m!1480991))

(declare-fun m!1480993 () Bool)

(assert (=> b!1324465 m!1480993))

(declare-fun m!1480995 () Bool)

(assert (=> b!1324489 m!1480995))

(declare-fun m!1480997 () Bool)

(assert (=> b!1324489 m!1480997))

(declare-fun m!1480999 () Bool)

(assert (=> b!1324489 m!1480999))

(declare-fun m!1481001 () Bool)

(assert (=> b!1324489 m!1481001))

(declare-fun m!1481003 () Bool)

(assert (=> b!1324453 m!1481003))

(declare-fun m!1481005 () Bool)

(assert (=> b!1324460 m!1481005))

(declare-fun m!1481007 () Bool)

(assert (=> b!1324461 m!1481007))

(assert (=> b!1324461 m!1481007))

(declare-fun m!1481009 () Bool)

(assert (=> b!1324461 m!1481009))

(declare-fun m!1481011 () Bool)

(assert (=> b!1324491 m!1481011))

(declare-fun m!1481013 () Bool)

(assert (=> b!1324479 m!1481013))

(assert (=> b!1324479 m!1481013))

(declare-fun m!1481015 () Bool)

(assert (=> b!1324479 m!1481015))

(declare-fun m!1481017 () Bool)

(assert (=> b!1324483 m!1481017))

(declare-fun m!1481019 () Bool)

(assert (=> b!1324458 m!1481019))

(declare-fun m!1481021 () Bool)

(assert (=> b!1324470 m!1481021))

(assert (=> b!1324470 m!1481021))

(declare-fun m!1481023 () Bool)

(assert (=> b!1324470 m!1481023))

(declare-fun m!1481025 () Bool)

(assert (=> start!117738 m!1481025))

(declare-fun m!1481027 () Bool)

(assert (=> start!117738 m!1481027))

(declare-fun m!1481029 () Bool)

(assert (=> b!1324459 m!1481029))

(check-sat (not b!1324454) (not b!1324488) (not b_next!32647) (not b!1324449) (not b!1324473) (not b!1324483) b_and!88471 (not b_next!32645) (not b_next!32653) (not b!1324485) (not b!1324462) (not b!1324486) (not start!117738) b_and!88473 (not b!1324464) (not b!1324478) b_and!88469 (not b!1324459) (not b_next!32643) (not b!1324470) b_and!88467 (not b!1324469) (not b!1324491) (not b!1324452) (not b!1324458) (not b!1324451) (not b!1324461) (not b!1324456) (not b!1324480) (not b!1324479) (not b!1324475) b_and!88463 (not b!1324489) (not b!1324465) (not b!1324460) (not b!1324484) (not b_next!32651) (not b!1324490) b_and!88465 (not b!1324481) (not b!1324457) (not b!1324455) (not b!1324487) (not b!1324448) (not b!1324463) (not b!1324466) (not b!1324477) (not b!1324493) (not b!1324467) (not b_next!32649) (not b!1324453) (not b!1324482) (not b!1324450))
(check-sat b_and!88473 b_and!88469 (not b_next!32643) b_and!88467 (not b_next!32647) b_and!88463 b_and!88471 (not b_next!32645) (not b_next!32651) (not b_next!32653) b_and!88465 (not b_next!32649))
(get-model)

(declare-fun d!374042 () Bool)

(declare-fun lt!437535 () C!7564)

(declare-fun apply!3096 (List!13491 Int) C!7564)

(assert (=> d!374042 (= lt!437535 (apply!3096 (list!5079 lt!437487) 0))))

(declare-fun apply!3097 (Conc!4416 Int) C!7564)

(assert (=> d!374042 (= lt!437535 (apply!3097 (c!217330 lt!437487) 0))))

(declare-fun e!848770 () Bool)

(assert (=> d!374042 e!848770))

(declare-fun res!595884 () Bool)

(assert (=> d!374042 (=> (not res!595884) (not e!848770))))

(assert (=> d!374042 (= res!595884 (<= 0 0))))

(assert (=> d!374042 (= (apply!3093 lt!437487 0) lt!437535)))

(declare-fun b!1324651 () Bool)

(assert (=> b!1324651 (= e!848770 (< 0 (size!10941 lt!437487)))))

(assert (= (and d!374042 res!595884) b!1324651))

(assert (=> d!374042 m!1480965))

(assert (=> d!374042 m!1480965))

(declare-fun m!1481169 () Bool)

(assert (=> d!374042 m!1481169))

(declare-fun m!1481171 () Bool)

(assert (=> d!374042 m!1481171))

(assert (=> b!1324651 m!1480959))

(assert (=> b!1324455 d!374042))

(declare-fun d!374052 () Bool)

(declare-fun list!5082 (Conc!4416) List!13491)

(assert (=> d!374052 (= (list!5079 lt!437479) (list!5082 (c!217330 lt!437479)))))

(declare-fun bs!331302 () Bool)

(assert (= bs!331302 d!374052))

(declare-fun m!1481173 () Bool)

(assert (=> bs!331302 m!1481173))

(assert (=> b!1324455 d!374052))

(declare-fun b!1324663 () Bool)

(declare-fun e!848775 () Bool)

(declare-fun lt!437538 () List!13491)

(assert (=> b!1324663 (= e!848775 (or (not (= (Cons!13425 lt!437474 Nil!13425) Nil!13425)) (= lt!437538 lt!437477)))))

(declare-fun d!374054 () Bool)

(assert (=> d!374054 e!848775))

(declare-fun res!595889 () Bool)

(assert (=> d!374054 (=> (not res!595889) (not e!848775))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1904 (List!13491) (InoxSet C!7564))

(assert (=> d!374054 (= res!595889 (= (content!1904 lt!437538) ((_ map or) (content!1904 lt!437477) (content!1904 (Cons!13425 lt!437474 Nil!13425)))))))

(declare-fun e!848776 () List!13491)

(assert (=> d!374054 (= lt!437538 e!848776)))

(declare-fun c!217373 () Bool)

(assert (=> d!374054 (= c!217373 ((_ is Nil!13425) lt!437477))))

(assert (=> d!374054 (= (++!3430 lt!437477 (Cons!13425 lt!437474 Nil!13425)) lt!437538)))

(declare-fun b!1324661 () Bool)

(assert (=> b!1324661 (= e!848776 (Cons!13425 (h!18826 lt!437477) (++!3430 (t!118756 lt!437477) (Cons!13425 lt!437474 Nil!13425))))))

(declare-fun b!1324660 () Bool)

(assert (=> b!1324660 (= e!848776 (Cons!13425 lt!437474 Nil!13425))))

(declare-fun b!1324662 () Bool)

(declare-fun res!595890 () Bool)

(assert (=> b!1324662 (=> (not res!595890) (not e!848775))))

(declare-fun size!10945 (List!13491) Int)

(assert (=> b!1324662 (= res!595890 (= (size!10945 lt!437538) (+ (size!10945 lt!437477) (size!10945 (Cons!13425 lt!437474 Nil!13425)))))))

(assert (= (and d!374054 c!217373) b!1324660))

(assert (= (and d!374054 (not c!217373)) b!1324661))

(assert (= (and d!374054 res!595889) b!1324662))

(assert (= (and b!1324662 res!595890) b!1324663))

(declare-fun m!1481175 () Bool)

(assert (=> d!374054 m!1481175))

(declare-fun m!1481177 () Bool)

(assert (=> d!374054 m!1481177))

(declare-fun m!1481179 () Bool)

(assert (=> d!374054 m!1481179))

(declare-fun m!1481181 () Bool)

(assert (=> b!1324661 m!1481181))

(declare-fun m!1481183 () Bool)

(assert (=> b!1324662 m!1481183))

(declare-fun m!1481185 () Bool)

(assert (=> b!1324662 m!1481185))

(declare-fun m!1481187 () Bool)

(assert (=> b!1324662 m!1481187))

(assert (=> b!1324455 d!374054))

(declare-fun bs!331303 () Bool)

(declare-fun d!374056 () Bool)

(assert (= bs!331303 (and d!374056 b!1324466)))

(declare-fun lambda!54448 () Int)

(assert (=> bs!331303 (= lambda!54448 lambda!54436)))

(declare-fun lt!437541 () Unit!19500)

(declare-fun lemma!79 (List!13493 LexerInterface!2018 List!13493) Unit!19500)

(assert (=> d!374056 (= lt!437541 (lemma!79 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!87 (List!13494) Regex!3637)

(assert (=> d!374056 (= (rulesRegex!208 thiss!19762 rules!2550) (generalisedUnion!87 (map!2951 rules!2550 lambda!54448)))))

(declare-fun bs!331304 () Bool)

(assert (= bs!331304 d!374056))

(declare-fun m!1481189 () Bool)

(assert (=> bs!331304 m!1481189))

(declare-fun m!1481191 () Bool)

(assert (=> bs!331304 m!1481191))

(assert (=> bs!331304 m!1481191))

(declare-fun m!1481193 () Bool)

(assert (=> bs!331304 m!1481193))

(assert (=> b!1324455 d!374056))

(declare-fun d!374058 () Bool)

(declare-fun lt!437544 () BalanceConc!8772)

(assert (=> d!374058 (= (list!5079 lt!437544) (originalCharacters!3185 t1!34))))

(declare-fun dynLambda!5913 (Int TokenValue!2413) BalanceConc!8772)

(assert (=> d!374058 (= lt!437544 (dynLambda!5913 (toChars!3413 (transformation!2323 (rule!4068 t1!34))) (value!75838 t1!34)))))

(assert (=> d!374058 (= (charsOf!1295 t1!34) lt!437544)))

(declare-fun b_lambda!38815 () Bool)

(assert (=> (not b_lambda!38815) (not d!374058)))

(declare-fun tb!70215 () Bool)

(declare-fun t!118767 () Bool)

(assert (=> (and b!1324472 (= (toChars!3413 (transformation!2323 (rule!4068 t2!34))) (toChars!3413 (transformation!2323 (rule!4068 t1!34)))) t!118767) tb!70215))

(declare-fun b!1324668 () Bool)

(declare-fun e!848779 () Bool)

(declare-fun tp!384176 () Bool)

(declare-fun inv!17799 (Conc!4416) Bool)

(assert (=> b!1324668 (= e!848779 (and (inv!17799 (c!217330 (dynLambda!5913 (toChars!3413 (transformation!2323 (rule!4068 t1!34))) (value!75838 t1!34)))) tp!384176))))

(declare-fun result!85230 () Bool)

(declare-fun inv!17800 (BalanceConc!8772) Bool)

(assert (=> tb!70215 (= result!85230 (and (inv!17800 (dynLambda!5913 (toChars!3413 (transformation!2323 (rule!4068 t1!34))) (value!75838 t1!34))) e!848779))))

(assert (= tb!70215 b!1324668))

(declare-fun m!1481195 () Bool)

(assert (=> b!1324668 m!1481195))

(declare-fun m!1481197 () Bool)

(assert (=> tb!70215 m!1481197))

(assert (=> d!374058 t!118767))

(declare-fun b_and!88481 () Bool)

(assert (= b_and!88465 (and (=> t!118767 result!85230) b_and!88481)))

(declare-fun tb!70217 () Bool)

(declare-fun t!118769 () Bool)

(assert (=> (and b!1324492 (= (toChars!3413 (transformation!2323 (h!18828 rules!2550))) (toChars!3413 (transformation!2323 (rule!4068 t1!34)))) t!118769) tb!70217))

(declare-fun result!85234 () Bool)

(assert (= result!85234 result!85230))

(assert (=> d!374058 t!118769))

(declare-fun b_and!88483 () Bool)

(assert (= b_and!88469 (and (=> t!118769 result!85234) b_and!88483)))

(declare-fun t!118771 () Bool)

(declare-fun tb!70219 () Bool)

(assert (=> (and b!1324474 (= (toChars!3413 (transformation!2323 (rule!4068 t1!34))) (toChars!3413 (transformation!2323 (rule!4068 t1!34)))) t!118771) tb!70219))

(declare-fun result!85236 () Bool)

(assert (= result!85236 result!85230))

(assert (=> d!374058 t!118771))

(declare-fun b_and!88485 () Bool)

(assert (= b_and!88473 (and (=> t!118771 result!85236) b_and!88485)))

(declare-fun m!1481199 () Bool)

(assert (=> d!374058 m!1481199))

(declare-fun m!1481201 () Bool)

(assert (=> d!374058 m!1481201))

(assert (=> b!1324455 d!374058))

(declare-fun d!374060 () Bool)

(declare-fun c!217376 () Bool)

(declare-fun isEmpty!7998 (List!13491) Bool)

(assert (=> d!374060 (= c!217376 (isEmpty!7998 lt!437470))))

(declare-fun e!848782 () Bool)

(assert (=> d!374060 (= (prefixMatch!150 lt!437465 lt!437470) e!848782)))

(declare-fun b!1324673 () Bool)

(declare-fun lostCause!285 (Regex!3637) Bool)

(assert (=> b!1324673 (= e!848782 (not (lostCause!285 lt!437465)))))

(declare-fun b!1324674 () Bool)

(declare-fun derivativeStep!909 (Regex!3637 C!7564) Regex!3637)

(declare-fun tail!1902 (List!13491) List!13491)

(assert (=> b!1324674 (= e!848782 (prefixMatch!150 (derivativeStep!909 lt!437465 (head!2310 lt!437470)) (tail!1902 lt!437470)))))

(assert (= (and d!374060 c!217376) b!1324673))

(assert (= (and d!374060 (not c!217376)) b!1324674))

(declare-fun m!1481203 () Bool)

(assert (=> d!374060 m!1481203))

(declare-fun m!1481205 () Bool)

(assert (=> b!1324673 m!1481205))

(declare-fun m!1481207 () Bool)

(assert (=> b!1324674 m!1481207))

(assert (=> b!1324674 m!1481207))

(declare-fun m!1481209 () Bool)

(assert (=> b!1324674 m!1481209))

(declare-fun m!1481211 () Bool)

(assert (=> b!1324674 m!1481211))

(assert (=> b!1324674 m!1481209))

(assert (=> b!1324674 m!1481211))

(declare-fun m!1481213 () Bool)

(assert (=> b!1324674 m!1481213))

(assert (=> b!1324455 d!374060))

(declare-fun b!1324678 () Bool)

(declare-fun lt!437545 () List!13491)

(declare-fun e!848783 () Bool)

(assert (=> b!1324678 (= e!848783 (or (not (= (getSuffix!493 lt!437486 lt!437470) Nil!13425)) (= lt!437545 lt!437470)))))

(declare-fun d!374062 () Bool)

(assert (=> d!374062 e!848783))

(declare-fun res!595891 () Bool)

(assert (=> d!374062 (=> (not res!595891) (not e!848783))))

(assert (=> d!374062 (= res!595891 (= (content!1904 lt!437545) ((_ map or) (content!1904 lt!437470) (content!1904 (getSuffix!493 lt!437486 lt!437470)))))))

(declare-fun e!848784 () List!13491)

(assert (=> d!374062 (= lt!437545 e!848784)))

(declare-fun c!217377 () Bool)

(assert (=> d!374062 (= c!217377 ((_ is Nil!13425) lt!437470))))

(assert (=> d!374062 (= (++!3430 lt!437470 (getSuffix!493 lt!437486 lt!437470)) lt!437545)))

(declare-fun b!1324676 () Bool)

(assert (=> b!1324676 (= e!848784 (Cons!13425 (h!18826 lt!437470) (++!3430 (t!118756 lt!437470) (getSuffix!493 lt!437486 lt!437470))))))

(declare-fun b!1324675 () Bool)

(assert (=> b!1324675 (= e!848784 (getSuffix!493 lt!437486 lt!437470))))

(declare-fun b!1324677 () Bool)

(declare-fun res!595892 () Bool)

(assert (=> b!1324677 (=> (not res!595892) (not e!848783))))

(assert (=> b!1324677 (= res!595892 (= (size!10945 lt!437545) (+ (size!10945 lt!437470) (size!10945 (getSuffix!493 lt!437486 lt!437470)))))))

(assert (= (and d!374062 c!217377) b!1324675))

(assert (= (and d!374062 (not c!217377)) b!1324676))

(assert (= (and d!374062 res!595891) b!1324677))

(assert (= (and b!1324677 res!595892) b!1324678))

(declare-fun m!1481215 () Bool)

(assert (=> d!374062 m!1481215))

(declare-fun m!1481217 () Bool)

(assert (=> d!374062 m!1481217))

(assert (=> d!374062 m!1480917))

(declare-fun m!1481219 () Bool)

(assert (=> d!374062 m!1481219))

(assert (=> b!1324676 m!1480917))

(declare-fun m!1481221 () Bool)

(assert (=> b!1324676 m!1481221))

(declare-fun m!1481223 () Bool)

(assert (=> b!1324677 m!1481223))

(declare-fun m!1481225 () Bool)

(assert (=> b!1324677 m!1481225))

(assert (=> b!1324677 m!1480917))

(declare-fun m!1481227 () Bool)

(assert (=> b!1324677 m!1481227))

(assert (=> b!1324477 d!374062))

(declare-fun d!374064 () Bool)

(declare-fun lt!437548 () List!13491)

(assert (=> d!374064 (= (++!3430 lt!437470 lt!437548) lt!437486)))

(declare-fun e!848787 () List!13491)

(assert (=> d!374064 (= lt!437548 e!848787)))

(declare-fun c!217380 () Bool)

(assert (=> d!374064 (= c!217380 ((_ is Cons!13425) lt!437470))))

(assert (=> d!374064 (>= (size!10945 lt!437486) (size!10945 lt!437470))))

(assert (=> d!374064 (= (getSuffix!493 lt!437486 lt!437470) lt!437548)))

(declare-fun b!1324683 () Bool)

(assert (=> b!1324683 (= e!848787 (getSuffix!493 (tail!1902 lt!437486) (t!118756 lt!437470)))))

(declare-fun b!1324684 () Bool)

(assert (=> b!1324684 (= e!848787 lt!437486)))

(assert (= (and d!374064 c!217380) b!1324683))

(assert (= (and d!374064 (not c!217380)) b!1324684))

(declare-fun m!1481229 () Bool)

(assert (=> d!374064 m!1481229))

(declare-fun m!1481231 () Bool)

(assert (=> d!374064 m!1481231))

(assert (=> d!374064 m!1481225))

(declare-fun m!1481233 () Bool)

(assert (=> b!1324683 m!1481233))

(assert (=> b!1324683 m!1481233))

(declare-fun m!1481235 () Bool)

(assert (=> b!1324683 m!1481235))

(assert (=> b!1324477 d!374064))

(declare-fun d!374066 () Bool)

(declare-fun lt!437551 () List!13491)

(declare-fun dynLambda!5914 (Int List!13491) Bool)

(assert (=> d!374066 (dynLambda!5914 lambda!54435 lt!437551)))

(declare-fun choose!8115 (Int) List!13491)

(assert (=> d!374066 (= lt!437551 (choose!8115 lambda!54435))))

(assert (=> d!374066 (Exists!795 lambda!54435)))

(assert (=> d!374066 (= (pickWitness!100 lambda!54435) lt!437551)))

(declare-fun b_lambda!38817 () Bool)

(assert (=> (not b_lambda!38817) (not d!374066)))

(declare-fun bs!331305 () Bool)

(assert (= bs!331305 d!374066))

(declare-fun m!1481237 () Bool)

(assert (=> bs!331305 m!1481237))

(declare-fun m!1481239 () Bool)

(assert (=> bs!331305 m!1481239))

(assert (=> bs!331305 m!1481021))

(assert (=> b!1324477 d!374066))

(declare-fun d!374068 () Bool)

(assert (=> d!374068 (= (inv!17792 (tag!2585 (h!18828 rules!2550))) (= (mod (str.len (value!75837 (tag!2585 (h!18828 rules!2550)))) 2) 0))))

(assert (=> b!1324456 d!374068))

(declare-fun d!374070 () Bool)

(declare-fun res!595904 () Bool)

(declare-fun e!848799 () Bool)

(assert (=> d!374070 (=> (not res!595904) (not e!848799))))

(declare-fun semiInverseModEq!878 (Int Int) Bool)

(assert (=> d!374070 (= res!595904 (semiInverseModEq!878 (toChars!3413 (transformation!2323 (h!18828 rules!2550))) (toValue!3554 (transformation!2323 (h!18828 rules!2550)))))))

(assert (=> d!374070 (= (inv!17795 (transformation!2323 (h!18828 rules!2550))) e!848799)))

(declare-fun b!1324702 () Bool)

(declare-fun equivClasses!837 (Int Int) Bool)

(assert (=> b!1324702 (= e!848799 (equivClasses!837 (toChars!3413 (transformation!2323 (h!18828 rules!2550))) (toValue!3554 (transformation!2323 (h!18828 rules!2550)))))))

(assert (= (and d!374070 res!595904) b!1324702))

(declare-fun m!1481241 () Bool)

(assert (=> d!374070 m!1481241))

(declare-fun m!1481243 () Bool)

(assert (=> b!1324702 m!1481243))

(assert (=> b!1324456 d!374070))

(declare-fun d!374072 () Bool)

(declare-fun lt!437557 () Bool)

(assert (=> d!374072 (= lt!437557 (select (content!1904 (usedCharacters!188 (regex!2323 (rule!4068 t2!34)))) lt!437474))))

(declare-fun e!848804 () Bool)

(assert (=> d!374072 (= lt!437557 e!848804)))

(declare-fun res!595910 () Bool)

(assert (=> d!374072 (=> (not res!595910) (not e!848804))))

(assert (=> d!374072 (= res!595910 ((_ is Cons!13425) (usedCharacters!188 (regex!2323 (rule!4068 t2!34)))))))

(assert (=> d!374072 (= (contains!2385 (usedCharacters!188 (regex!2323 (rule!4068 t2!34))) lt!437474) lt!437557)))

(declare-fun b!1324707 () Bool)

(declare-fun e!848805 () Bool)

(assert (=> b!1324707 (= e!848804 e!848805)))

(declare-fun res!595909 () Bool)

(assert (=> b!1324707 (=> res!595909 e!848805)))

(assert (=> b!1324707 (= res!595909 (= (h!18826 (usedCharacters!188 (regex!2323 (rule!4068 t2!34)))) lt!437474))))

(declare-fun b!1324708 () Bool)

(assert (=> b!1324708 (= e!848805 (contains!2385 (t!118756 (usedCharacters!188 (regex!2323 (rule!4068 t2!34)))) lt!437474))))

(assert (= (and d!374072 res!595910) b!1324707))

(assert (= (and b!1324707 (not res!595909)) b!1324708))

(assert (=> d!374072 m!1480929))

(declare-fun m!1481259 () Bool)

(assert (=> d!374072 m!1481259))

(declare-fun m!1481261 () Bool)

(assert (=> d!374072 m!1481261))

(declare-fun m!1481263 () Bool)

(assert (=> b!1324708 m!1481263))

(assert (=> b!1324457 d!374072))

(declare-fun b!1324728 () Bool)

(declare-fun c!217395 () Bool)

(assert (=> b!1324728 (= c!217395 ((_ is Star!3637) (regex!2323 (rule!4068 t2!34))))))

(declare-fun e!848820 () List!13491)

(declare-fun e!848818 () List!13491)

(assert (=> b!1324728 (= e!848820 e!848818)))

(declare-fun b!1324730 () Bool)

(declare-fun e!848819 () List!13491)

(assert (=> b!1324730 (= e!848818 e!848819)))

(declare-fun c!217392 () Bool)

(assert (=> b!1324730 (= c!217392 ((_ is Union!3637) (regex!2323 (rule!4068 t2!34))))))

(declare-fun b!1324731 () Bool)

(declare-fun e!848817 () List!13491)

(assert (=> b!1324731 (= e!848817 e!848820)))

(declare-fun c!217393 () Bool)

(assert (=> b!1324731 (= c!217393 ((_ is ElementMatch!3637) (regex!2323 (rule!4068 t2!34))))))

(declare-fun bm!89806 () Bool)

(declare-fun call!89813 () List!13491)

(assert (=> bm!89806 (= call!89813 (usedCharacters!188 (ite c!217395 (reg!3966 (regex!2323 (rule!4068 t2!34))) (ite c!217392 (regTwo!7787 (regex!2323 (rule!4068 t2!34))) (regOne!7786 (regex!2323 (rule!4068 t2!34)))))))))

(declare-fun bm!89807 () Bool)

(declare-fun call!89811 () List!13491)

(assert (=> bm!89807 (= call!89811 call!89813)))

(declare-fun b!1324732 () Bool)

(declare-fun call!89814 () List!13491)

(assert (=> b!1324732 (= e!848819 call!89814)))

(declare-fun bm!89808 () Bool)

(declare-fun call!89812 () List!13491)

(assert (=> bm!89808 (= call!89814 (++!3430 (ite c!217392 call!89812 call!89811) (ite c!217392 call!89811 call!89812)))))

(declare-fun b!1324733 () Bool)

(assert (=> b!1324733 (= e!848817 Nil!13425)))

(declare-fun b!1324734 () Bool)

(assert (=> b!1324734 (= e!848819 call!89814)))

(declare-fun d!374076 () Bool)

(declare-fun c!217394 () Bool)

(assert (=> d!374076 (= c!217394 (or ((_ is EmptyExpr!3637) (regex!2323 (rule!4068 t2!34))) ((_ is EmptyLang!3637) (regex!2323 (rule!4068 t2!34)))))))

(assert (=> d!374076 (= (usedCharacters!188 (regex!2323 (rule!4068 t2!34))) e!848817)))

(declare-fun b!1324729 () Bool)

(assert (=> b!1324729 (= e!848818 call!89813)))

(declare-fun b!1324735 () Bool)

(assert (=> b!1324735 (= e!848820 (Cons!13425 (c!217331 (regex!2323 (rule!4068 t2!34))) Nil!13425))))

(declare-fun bm!89809 () Bool)

(assert (=> bm!89809 (= call!89812 (usedCharacters!188 (ite c!217392 (regOne!7787 (regex!2323 (rule!4068 t2!34))) (regTwo!7786 (regex!2323 (rule!4068 t2!34))))))))

(assert (= (and d!374076 c!217394) b!1324733))

(assert (= (and d!374076 (not c!217394)) b!1324731))

(assert (= (and b!1324731 c!217393) b!1324735))

(assert (= (and b!1324731 (not c!217393)) b!1324728))

(assert (= (and b!1324728 c!217395) b!1324729))

(assert (= (and b!1324728 (not c!217395)) b!1324730))

(assert (= (and b!1324730 c!217392) b!1324734))

(assert (= (and b!1324730 (not c!217392)) b!1324732))

(assert (= (or b!1324734 b!1324732) bm!89809))

(assert (= (or b!1324734 b!1324732) bm!89807))

(assert (= (or b!1324734 b!1324732) bm!89808))

(assert (= (or b!1324729 bm!89807) bm!89806))

(declare-fun m!1481279 () Bool)

(assert (=> bm!89806 m!1481279))

(declare-fun m!1481281 () Bool)

(assert (=> bm!89808 m!1481281))

(declare-fun m!1481283 () Bool)

(assert (=> bm!89809 m!1481283))

(assert (=> b!1324457 d!374076))

(declare-fun d!374082 () Bool)

(declare-fun lt!437566 () Bool)

(declare-fun content!1905 (List!13493) (InoxSet Rule!4446))

(assert (=> d!374082 (= lt!437566 (select (content!1905 rules!2550) lt!437471))))

(declare-fun e!848826 () Bool)

(assert (=> d!374082 (= lt!437566 e!848826)))

(declare-fun res!595918 () Bool)

(assert (=> d!374082 (=> (not res!595918) (not e!848826))))

(assert (=> d!374082 (= res!595918 ((_ is Cons!13427) rules!2550))))

(assert (=> d!374082 (= (contains!2386 rules!2550 lt!437471) lt!437566)))

(declare-fun b!1324740 () Bool)

(declare-fun e!848825 () Bool)

(assert (=> b!1324740 (= e!848826 e!848825)))

(declare-fun res!595919 () Bool)

(assert (=> b!1324740 (=> res!595919 e!848825)))

(assert (=> b!1324740 (= res!595919 (= (h!18828 rules!2550) lt!437471))))

(declare-fun b!1324741 () Bool)

(assert (=> b!1324741 (= e!848825 (contains!2386 (t!118758 rules!2550) lt!437471))))

(assert (= (and d!374082 res!595918) b!1324740))

(assert (= (and b!1324740 (not res!595919)) b!1324741))

(declare-fun m!1481285 () Bool)

(assert (=> d!374082 m!1481285))

(declare-fun m!1481287 () Bool)

(assert (=> d!374082 m!1481287))

(declare-fun m!1481289 () Bool)

(assert (=> b!1324741 m!1481289))

(assert (=> b!1324478 d!374082))

(declare-fun d!374084 () Bool)

(declare-fun lt!437577 () BalanceConc!8772)

(declare-fun printList!570 (LexerInterface!2018 List!13492) List!13491)

(assert (=> d!374084 (= (list!5079 lt!437577) (printList!570 thiss!19762 (list!5078 (singletonSeq!912 t1!34))))))

(declare-fun printTailRec!552 (LexerInterface!2018 BalanceConc!8774 Int BalanceConc!8772) BalanceConc!8772)

(assert (=> d!374084 (= lt!437577 (printTailRec!552 thiss!19762 (singletonSeq!912 t1!34) 0 (BalanceConc!8773 Empty!4416)))))

(assert (=> d!374084 (= (print!792 thiss!19762 (singletonSeq!912 t1!34)) lt!437577)))

(declare-fun bs!331309 () Bool)

(assert (= bs!331309 d!374084))

(declare-fun m!1481343 () Bool)

(assert (=> bs!331309 m!1481343))

(assert (=> bs!331309 m!1480969))

(declare-fun m!1481345 () Bool)

(assert (=> bs!331309 m!1481345))

(assert (=> bs!331309 m!1481345))

(declare-fun m!1481347 () Bool)

(assert (=> bs!331309 m!1481347))

(assert (=> bs!331309 m!1480969))

(declare-fun m!1481349 () Bool)

(assert (=> bs!331309 m!1481349))

(assert (=> b!1324452 d!374084))

(declare-fun b!1324814 () Bool)

(declare-fun e!848872 () Bool)

(declare-fun e!848874 () Bool)

(assert (=> b!1324814 (= e!848872 e!848874)))

(declare-fun res!595965 () Bool)

(declare-fun lt!437587 () tuple2!13058)

(assert (=> b!1324814 (= res!595965 (< (size!10941 (_2!7415 lt!437587)) (size!10941 lt!437472)))))

(assert (=> b!1324814 (=> (not res!595965) (not e!848874))))

(declare-fun b!1324815 () Bool)

(declare-fun e!848873 () Bool)

(assert (=> b!1324815 (= e!848873 (= (list!5079 (_2!7415 lt!437587)) (_2!7417 (lexList!556 thiss!19762 rules!2550 (list!5079 lt!437472)))))))

(declare-fun b!1324816 () Bool)

(assert (=> b!1324816 (= e!848872 (= (_2!7415 lt!437587) lt!437472))))

(declare-fun b!1324817 () Bool)

(declare-fun res!595964 () Bool)

(assert (=> b!1324817 (=> (not res!595964) (not e!848873))))

(assert (=> b!1324817 (= res!595964 (= (list!5078 (_1!7415 lt!437587)) (_1!7417 (lexList!556 thiss!19762 rules!2550 (list!5079 lt!437472)))))))

(declare-fun d!374104 () Bool)

(assert (=> d!374104 e!848873))

(declare-fun res!595966 () Bool)

(assert (=> d!374104 (=> (not res!595966) (not e!848873))))

(assert (=> d!374104 (= res!595966 e!848872)))

(declare-fun c!217410 () Bool)

(declare-fun size!10947 (BalanceConc!8774) Int)

(assert (=> d!374104 (= c!217410 (> (size!10947 (_1!7415 lt!437587)) 0))))

(declare-fun lexTailRecV2!375 (LexerInterface!2018 List!13493 BalanceConc!8772 BalanceConc!8772 BalanceConc!8772 BalanceConc!8774) tuple2!13058)

(assert (=> d!374104 (= lt!437587 (lexTailRecV2!375 thiss!19762 rules!2550 lt!437472 (BalanceConc!8773 Empty!4416) lt!437472 (BalanceConc!8775 Empty!4417)))))

(assert (=> d!374104 (= (lex!853 thiss!19762 rules!2550 lt!437472) lt!437587)))

(declare-fun b!1324818 () Bool)

(declare-fun isEmpty!7999 (BalanceConc!8774) Bool)

(assert (=> b!1324818 (= e!848874 (not (isEmpty!7999 (_1!7415 lt!437587))))))

(assert (= (and d!374104 c!217410) b!1324814))

(assert (= (and d!374104 (not c!217410)) b!1324816))

(assert (= (and b!1324814 res!595965) b!1324818))

(assert (= (and d!374104 res!595966) b!1324817))

(assert (= (and b!1324817 res!595964) b!1324815))

(declare-fun m!1481399 () Bool)

(assert (=> b!1324815 m!1481399))

(assert (=> b!1324815 m!1481013))

(assert (=> b!1324815 m!1481013))

(assert (=> b!1324815 m!1481015))

(declare-fun m!1481405 () Bool)

(assert (=> b!1324814 m!1481405))

(declare-fun m!1481407 () Bool)

(assert (=> b!1324814 m!1481407))

(declare-fun m!1481409 () Bool)

(assert (=> d!374104 m!1481409))

(declare-fun m!1481413 () Bool)

(assert (=> d!374104 m!1481413))

(declare-fun m!1481415 () Bool)

(assert (=> b!1324817 m!1481415))

(assert (=> b!1324817 m!1481013))

(assert (=> b!1324817 m!1481013))

(assert (=> b!1324817 m!1481015))

(declare-fun m!1481417 () Bool)

(assert (=> b!1324818 m!1481417))

(assert (=> b!1324452 d!374104))

(declare-fun d!374120 () Bool)

(declare-fun e!848881 () Bool)

(assert (=> d!374120 e!848881))

(declare-fun res!595970 () Bool)

(assert (=> d!374120 (=> (not res!595970) (not e!848881))))

(declare-fun lt!437597 () BalanceConc!8774)

(assert (=> d!374120 (= res!595970 (= (list!5078 lt!437597) (Cons!13426 t1!34 Nil!13426)))))

(declare-fun singleton!396 (Token!4308) BalanceConc!8774)

(assert (=> d!374120 (= lt!437597 (singleton!396 t1!34))))

(assert (=> d!374120 (= (singletonSeq!912 t1!34) lt!437597)))

(declare-fun b!1324827 () Bool)

(declare-fun isBalanced!1290 (Conc!4417) Bool)

(assert (=> b!1324827 (= e!848881 (isBalanced!1290 (c!217332 lt!437597)))))

(assert (= (and d!374120 res!595970) b!1324827))

(declare-fun m!1481431 () Bool)

(assert (=> d!374120 m!1481431))

(declare-fun m!1481433 () Bool)

(assert (=> d!374120 m!1481433))

(declare-fun m!1481435 () Bool)

(assert (=> b!1324827 m!1481435))

(assert (=> b!1324452 d!374120))

(declare-fun d!374126 () Bool)

(declare-fun list!5083 (Conc!4417) List!13492)

(assert (=> d!374126 (= (list!5078 (_1!7415 lt!437464)) (list!5083 (c!217332 (_1!7415 lt!437464))))))

(declare-fun bs!331312 () Bool)

(assert (= bs!331312 d!374126))

(declare-fun m!1481437 () Bool)

(assert (=> bs!331312 m!1481437))

(assert (=> b!1324452 d!374126))

(declare-fun b!1324848 () Bool)

(declare-fun e!848893 () Rule!4446)

(assert (=> b!1324848 (= e!848893 (getWitness!240 (t!118758 rules!2550) lambda!54438))))

(declare-fun b!1324849 () Bool)

(declare-fun e!848894 () Bool)

(declare-fun dynLambda!5917 (Int Rule!4446) Bool)

(assert (=> b!1324849 (= e!848894 (dynLambda!5917 lambda!54438 (h!18828 rules!2550)))))

(declare-fun b!1324850 () Bool)

(declare-fun lt!437606 () Unit!19500)

(declare-fun Unit!19504 () Unit!19500)

(assert (=> b!1324850 (= lt!437606 Unit!19504)))

(assert (=> b!1324850 false))

(declare-fun head!2311 (List!13493) Rule!4446)

(assert (=> b!1324850 (= e!848893 (head!2311 rules!2550))))

(declare-fun b!1324851 () Bool)

(declare-fun e!848896 () Rule!4446)

(assert (=> b!1324851 (= e!848896 (h!18828 rules!2550))))

(declare-fun b!1324852 () Bool)

(declare-fun e!848895 () Bool)

(declare-fun lt!437605 () Rule!4446)

(assert (=> b!1324852 (= e!848895 (contains!2386 rules!2550 lt!437605))))

(declare-fun b!1324853 () Bool)

(assert (=> b!1324853 (= e!848896 e!848893)))

(declare-fun c!217420 () Bool)

(assert (=> b!1324853 (= c!217420 ((_ is Cons!13427) rules!2550))))

(declare-fun d!374128 () Bool)

(assert (=> d!374128 e!848895))

(declare-fun res!595975 () Bool)

(assert (=> d!374128 (=> (not res!595975) (not e!848895))))

(assert (=> d!374128 (= res!595975 (dynLambda!5917 lambda!54438 lt!437605))))

(assert (=> d!374128 (= lt!437605 e!848896)))

(declare-fun c!217421 () Bool)

(assert (=> d!374128 (= c!217421 e!848894)))

(declare-fun res!595976 () Bool)

(assert (=> d!374128 (=> (not res!595976) (not e!848894))))

(assert (=> d!374128 (= res!595976 ((_ is Cons!13427) rules!2550))))

(assert (=> d!374128 (exists!348 rules!2550 lambda!54438)))

(assert (=> d!374128 (= (getWitness!240 rules!2550 lambda!54438) lt!437605)))

(assert (= (and d!374128 res!595976) b!1324849))

(assert (= (and d!374128 c!217421) b!1324851))

(assert (= (and d!374128 (not c!217421)) b!1324853))

(assert (= (and b!1324853 c!217420) b!1324848))

(assert (= (and b!1324853 (not c!217420)) b!1324850))

(assert (= (and d!374128 res!595975) b!1324852))

(declare-fun b_lambda!38823 () Bool)

(assert (=> (not b_lambda!38823) (not b!1324849)))

(declare-fun b_lambda!38825 () Bool)

(assert (=> (not b_lambda!38825) (not d!374128)))

(declare-fun m!1481451 () Bool)

(assert (=> b!1324852 m!1481451))

(declare-fun m!1481453 () Bool)

(assert (=> b!1324848 m!1481453))

(declare-fun m!1481455 () Bool)

(assert (=> d!374128 m!1481455))

(assert (=> d!374128 m!1481007))

(declare-fun m!1481457 () Bool)

(assert (=> b!1324849 m!1481457))

(declare-fun m!1481459 () Bool)

(assert (=> b!1324850 m!1481459))

(assert (=> b!1324452 d!374128))

(declare-fun b!1324890 () Bool)

(declare-fun e!848923 () Bool)

(declare-fun e!848921 () Bool)

(assert (=> b!1324890 (= e!848923 e!848921)))

(declare-fun res!596008 () Bool)

(assert (=> b!1324890 (=> res!596008 e!848921)))

(declare-fun call!89819 () Bool)

(assert (=> b!1324890 (= res!596008 call!89819)))

(declare-fun d!374134 () Bool)

(declare-fun e!848925 () Bool)

(assert (=> d!374134 e!848925))

(declare-fun c!217429 () Bool)

(assert (=> d!374134 (= c!217429 ((_ is EmptyExpr!3637) lt!437465))))

(declare-fun lt!437616 () Bool)

(declare-fun e!848922 () Bool)

(assert (=> d!374134 (= lt!437616 e!848922)))

(declare-fun c!217428 () Bool)

(assert (=> d!374134 (= c!217428 (isEmpty!7998 lt!437486))))

(declare-fun validRegex!1561 (Regex!3637) Bool)

(assert (=> d!374134 (validRegex!1561 lt!437465)))

(assert (=> d!374134 (= (matchR!1639 lt!437465 lt!437486) lt!437616)))

(declare-fun b!1324891 () Bool)

(assert (=> b!1324891 (= e!848925 (= lt!437616 call!89819))))

(declare-fun b!1324892 () Bool)

(assert (=> b!1324892 (= e!848921 (not (= (head!2310 lt!437486) (c!217331 lt!437465))))))

(declare-fun b!1324893 () Bool)

(declare-fun res!596004 () Bool)

(declare-fun e!848919 () Bool)

(assert (=> b!1324893 (=> res!596004 e!848919)))

(assert (=> b!1324893 (= res!596004 (not ((_ is ElementMatch!3637) lt!437465)))))

(declare-fun e!848924 () Bool)

(assert (=> b!1324893 (= e!848924 e!848919)))

(declare-fun b!1324894 () Bool)

(declare-fun nullable!1157 (Regex!3637) Bool)

(assert (=> b!1324894 (= e!848922 (nullable!1157 lt!437465))))

(declare-fun b!1324895 () Bool)

(declare-fun e!848920 () Bool)

(assert (=> b!1324895 (= e!848920 (= (head!2310 lt!437486) (c!217331 lt!437465)))))

(declare-fun b!1324896 () Bool)

(declare-fun res!596005 () Bool)

(assert (=> b!1324896 (=> res!596005 e!848921)))

(assert (=> b!1324896 (= res!596005 (not (isEmpty!7998 (tail!1902 lt!437486))))))

(declare-fun b!1324897 () Bool)

(assert (=> b!1324897 (= e!848924 (not lt!437616))))

(declare-fun b!1324898 () Bool)

(assert (=> b!1324898 (= e!848919 e!848923)))

(declare-fun res!596007 () Bool)

(assert (=> b!1324898 (=> (not res!596007) (not e!848923))))

(assert (=> b!1324898 (= res!596007 (not lt!437616))))

(declare-fun b!1324899 () Bool)

(declare-fun res!596002 () Bool)

(assert (=> b!1324899 (=> (not res!596002) (not e!848920))))

(assert (=> b!1324899 (= res!596002 (isEmpty!7998 (tail!1902 lt!437486)))))

(declare-fun b!1324900 () Bool)

(assert (=> b!1324900 (= e!848925 e!848924)))

(declare-fun c!217430 () Bool)

(assert (=> b!1324900 (= c!217430 ((_ is EmptyLang!3637) lt!437465))))

(declare-fun b!1324901 () Bool)

(assert (=> b!1324901 (= e!848922 (matchR!1639 (derivativeStep!909 lt!437465 (head!2310 lt!437486)) (tail!1902 lt!437486)))))

(declare-fun b!1324902 () Bool)

(declare-fun res!596003 () Bool)

(assert (=> b!1324902 (=> res!596003 e!848919)))

(assert (=> b!1324902 (= res!596003 e!848920)))

(declare-fun res!596006 () Bool)

(assert (=> b!1324902 (=> (not res!596006) (not e!848920))))

(assert (=> b!1324902 (= res!596006 lt!437616)))

(declare-fun bm!89814 () Bool)

(assert (=> bm!89814 (= call!89819 (isEmpty!7998 lt!437486))))

(declare-fun b!1324903 () Bool)

(declare-fun res!596001 () Bool)

(assert (=> b!1324903 (=> (not res!596001) (not e!848920))))

(assert (=> b!1324903 (= res!596001 (not call!89819))))

(assert (= (and d!374134 c!217428) b!1324894))

(assert (= (and d!374134 (not c!217428)) b!1324901))

(assert (= (and d!374134 c!217429) b!1324891))

(assert (= (and d!374134 (not c!217429)) b!1324900))

(assert (= (and b!1324900 c!217430) b!1324897))

(assert (= (and b!1324900 (not c!217430)) b!1324893))

(assert (= (and b!1324893 (not res!596004)) b!1324902))

(assert (= (and b!1324902 res!596006) b!1324903))

(assert (= (and b!1324903 res!596001) b!1324899))

(assert (= (and b!1324899 res!596002) b!1324895))

(assert (= (and b!1324902 (not res!596003)) b!1324898))

(assert (= (and b!1324898 res!596007) b!1324890))

(assert (= (and b!1324890 (not res!596008)) b!1324896))

(assert (= (and b!1324896 (not res!596005)) b!1324892))

(assert (= (or b!1324891 b!1324890 b!1324903) bm!89814))

(declare-fun m!1481481 () Bool)

(assert (=> b!1324895 m!1481481))

(declare-fun m!1481483 () Bool)

(assert (=> d!374134 m!1481483))

(declare-fun m!1481485 () Bool)

(assert (=> d!374134 m!1481485))

(assert (=> bm!89814 m!1481483))

(assert (=> b!1324892 m!1481481))

(assert (=> b!1324901 m!1481481))

(assert (=> b!1324901 m!1481481))

(declare-fun m!1481487 () Bool)

(assert (=> b!1324901 m!1481487))

(assert (=> b!1324901 m!1481233))

(assert (=> b!1324901 m!1481487))

(assert (=> b!1324901 m!1481233))

(declare-fun m!1481489 () Bool)

(assert (=> b!1324901 m!1481489))

(assert (=> b!1324899 m!1481233))

(assert (=> b!1324899 m!1481233))

(declare-fun m!1481491 () Bool)

(assert (=> b!1324899 m!1481491))

(assert (=> b!1324896 m!1481233))

(assert (=> b!1324896 m!1481233))

(assert (=> b!1324896 m!1481491))

(declare-fun m!1481493 () Bool)

(assert (=> b!1324894 m!1481493))

(assert (=> b!1324453 d!374134))

(declare-fun d!374144 () Bool)

(declare-fun lt!437672 () Bool)

(declare-fun e!849010 () Bool)

(assert (=> d!374144 (= lt!437672 e!849010)))

(declare-fun res!596082 () Bool)

(assert (=> d!374144 (=> (not res!596082) (not e!849010))))

(assert (=> d!374144 (= res!596082 (= (list!5078 (_1!7415 (lex!853 thiss!19762 rules!2550 (print!792 thiss!19762 (singletonSeq!912 t2!34))))) (list!5078 (singletonSeq!912 t2!34))))))

(declare-fun e!849009 () Bool)

(assert (=> d!374144 (= lt!437672 e!849009)))

(declare-fun res!596081 () Bool)

(assert (=> d!374144 (=> (not res!596081) (not e!849009))))

(declare-fun lt!437671 () tuple2!13058)

(assert (=> d!374144 (= res!596081 (= (size!10947 (_1!7415 lt!437671)) 1))))

(assert (=> d!374144 (= lt!437671 (lex!853 thiss!19762 rules!2550 (print!792 thiss!19762 (singletonSeq!912 t2!34))))))

(assert (=> d!374144 (not (isEmpty!7992 rules!2550))))

(assert (=> d!374144 (= (rulesProduceIndividualToken!987 thiss!19762 rules!2550 t2!34) lt!437672)))

(declare-fun b!1325064 () Bool)

(declare-fun res!596083 () Bool)

(assert (=> b!1325064 (=> (not res!596083) (not e!849009))))

(declare-fun apply!3099 (BalanceConc!8774 Int) Token!4308)

(assert (=> b!1325064 (= res!596083 (= (apply!3099 (_1!7415 lt!437671) 0) t2!34))))

(declare-fun b!1325065 () Bool)

(assert (=> b!1325065 (= e!849009 (isEmpty!7993 (_2!7415 lt!437671)))))

(declare-fun b!1325066 () Bool)

(assert (=> b!1325066 (= e!849010 (isEmpty!7993 (_2!7415 (lex!853 thiss!19762 rules!2550 (print!792 thiss!19762 (singletonSeq!912 t2!34))))))))

(assert (= (and d!374144 res!596081) b!1325064))

(assert (= (and b!1325064 res!596083) b!1325065))

(assert (= (and d!374144 res!596082) b!1325066))

(declare-fun m!1481685 () Bool)

(assert (=> d!374144 m!1481685))

(assert (=> d!374144 m!1480913))

(assert (=> d!374144 m!1481019))

(assert (=> d!374144 m!1480913))

(assert (=> d!374144 m!1480915))

(assert (=> d!374144 m!1480915))

(declare-fun m!1481687 () Bool)

(assert (=> d!374144 m!1481687))

(assert (=> d!374144 m!1480913))

(declare-fun m!1481689 () Bool)

(assert (=> d!374144 m!1481689))

(declare-fun m!1481691 () Bool)

(assert (=> d!374144 m!1481691))

(declare-fun m!1481693 () Bool)

(assert (=> b!1325064 m!1481693))

(declare-fun m!1481695 () Bool)

(assert (=> b!1325065 m!1481695))

(assert (=> b!1325066 m!1480913))

(assert (=> b!1325066 m!1480913))

(assert (=> b!1325066 m!1480915))

(assert (=> b!1325066 m!1480915))

(assert (=> b!1325066 m!1481687))

(declare-fun m!1481697 () Bool)

(assert (=> b!1325066 m!1481697))

(assert (=> b!1324475 d!374144))

(declare-fun d!374190 () Bool)

(declare-fun lt!437675 () Int)

(assert (=> d!374190 (= lt!437675 (size!10945 (list!5079 lt!437487)))))

(declare-fun size!10950 (Conc!4416) Int)

(assert (=> d!374190 (= lt!437675 (size!10950 (c!217330 lt!437487)))))

(assert (=> d!374190 (= (size!10941 lt!437487) lt!437675)))

(declare-fun bs!331343 () Bool)

(assert (= bs!331343 d!374190))

(assert (=> bs!331343 m!1480965))

(assert (=> bs!331343 m!1480965))

(declare-fun m!1481721 () Bool)

(assert (=> bs!331343 m!1481721))

(declare-fun m!1481723 () Bool)

(assert (=> bs!331343 m!1481723))

(assert (=> b!1324454 d!374190))

(declare-fun d!374210 () Bool)

(declare-fun lt!437676 () BalanceConc!8772)

(assert (=> d!374210 (= (list!5079 lt!437676) (originalCharacters!3185 t2!34))))

(assert (=> d!374210 (= lt!437676 (dynLambda!5913 (toChars!3413 (transformation!2323 (rule!4068 t2!34))) (value!75838 t2!34)))))

(assert (=> d!374210 (= (charsOf!1295 t2!34) lt!437676)))

(declare-fun b_lambda!38867 () Bool)

(assert (=> (not b_lambda!38867) (not d!374210)))

(declare-fun t!118787 () Bool)

(declare-fun tb!70231 () Bool)

(assert (=> (and b!1324472 (= (toChars!3413 (transformation!2323 (rule!4068 t2!34))) (toChars!3413 (transformation!2323 (rule!4068 t2!34)))) t!118787) tb!70231))

(declare-fun b!1325073 () Bool)

(declare-fun e!849018 () Bool)

(declare-fun tp!384219 () Bool)

(assert (=> b!1325073 (= e!849018 (and (inv!17799 (c!217330 (dynLambda!5913 (toChars!3413 (transformation!2323 (rule!4068 t2!34))) (value!75838 t2!34)))) tp!384219))))

(declare-fun result!85254 () Bool)

(assert (=> tb!70231 (= result!85254 (and (inv!17800 (dynLambda!5913 (toChars!3413 (transformation!2323 (rule!4068 t2!34))) (value!75838 t2!34))) e!849018))))

(assert (= tb!70231 b!1325073))

(declare-fun m!1481725 () Bool)

(assert (=> b!1325073 m!1481725))

(declare-fun m!1481727 () Bool)

(assert (=> tb!70231 m!1481727))

(assert (=> d!374210 t!118787))

(declare-fun b_and!88509 () Bool)

(assert (= b_and!88481 (and (=> t!118787 result!85254) b_and!88509)))

(declare-fun t!118789 () Bool)

(declare-fun tb!70233 () Bool)

(assert (=> (and b!1324492 (= (toChars!3413 (transformation!2323 (h!18828 rules!2550))) (toChars!3413 (transformation!2323 (rule!4068 t2!34)))) t!118789) tb!70233))

(declare-fun result!85256 () Bool)

(assert (= result!85256 result!85254))

(assert (=> d!374210 t!118789))

(declare-fun b_and!88511 () Bool)

(assert (= b_and!88483 (and (=> t!118789 result!85256) b_and!88511)))

(declare-fun t!118791 () Bool)

(declare-fun tb!70235 () Bool)

(assert (=> (and b!1324474 (= (toChars!3413 (transformation!2323 (rule!4068 t1!34))) (toChars!3413 (transformation!2323 (rule!4068 t2!34)))) t!118791) tb!70235))

(declare-fun result!85258 () Bool)

(assert (= result!85258 result!85254))

(assert (=> d!374210 t!118791))

(declare-fun b_and!88513 () Bool)

(assert (= b_and!88485 (and (=> t!118791 result!85258) b_and!88513)))

(declare-fun m!1481729 () Bool)

(assert (=> d!374210 m!1481729))

(declare-fun m!1481731 () Bool)

(assert (=> d!374210 m!1481731))

(assert (=> b!1324454 d!374210))

(declare-fun b!1325084 () Bool)

(declare-fun e!849027 () Bool)

(declare-fun inv!17 (TokenValue!2413) Bool)

(assert (=> b!1325084 (= e!849027 (inv!17 (value!75838 t1!34)))))

(declare-fun b!1325085 () Bool)

(declare-fun e!849025 () Bool)

(declare-fun inv!15 (TokenValue!2413) Bool)

(assert (=> b!1325085 (= e!849025 (inv!15 (value!75838 t1!34)))))

(declare-fun b!1325086 () Bool)

(declare-fun e!849026 () Bool)

(declare-fun inv!16 (TokenValue!2413) Bool)

(assert (=> b!1325086 (= e!849026 (inv!16 (value!75838 t1!34)))))

(declare-fun b!1325087 () Bool)

(declare-fun res!596089 () Bool)

(assert (=> b!1325087 (=> res!596089 e!849025)))

(assert (=> b!1325087 (= res!596089 (not ((_ is IntegerValue!7241) (value!75838 t1!34))))))

(assert (=> b!1325087 (= e!849027 e!849025)))

(declare-fun b!1325088 () Bool)

(assert (=> b!1325088 (= e!849026 e!849027)))

(declare-fun c!217459 () Bool)

(assert (=> b!1325088 (= c!217459 ((_ is IntegerValue!7240) (value!75838 t1!34)))))

(declare-fun d!374212 () Bool)

(declare-fun c!217458 () Bool)

(assert (=> d!374212 (= c!217458 ((_ is IntegerValue!7239) (value!75838 t1!34)))))

(assert (=> d!374212 (= (inv!21 (value!75838 t1!34)) e!849026)))

(assert (= (and d!374212 c!217458) b!1325086))

(assert (= (and d!374212 (not c!217458)) b!1325088))

(assert (= (and b!1325088 c!217459) b!1325084))

(assert (= (and b!1325088 (not c!217459)) b!1325087))

(assert (= (and b!1325087 (not res!596089)) b!1325085))

(declare-fun m!1481733 () Bool)

(assert (=> b!1325084 m!1481733))

(declare-fun m!1481735 () Bool)

(assert (=> b!1325085 m!1481735))

(declare-fun m!1481737 () Bool)

(assert (=> b!1325086 m!1481737))

(assert (=> b!1324460 d!374212))

(declare-fun bs!331344 () Bool)

(declare-fun d!374214 () Bool)

(assert (= bs!331344 (and d!374214 b!1324461)))

(declare-fun lambda!54467 () Int)

(assert (=> bs!331344 (not (= lambda!54467 lambda!54438))))

(declare-fun bs!331345 () Bool)

(assert (= bs!331345 (and d!374214 b!1324489)))

(assert (=> bs!331345 (not (= lambda!54467 lambda!54439))))

(assert (=> d!374214 true))

(declare-fun order!8117 () Int)

(declare-fun dynLambda!5919 (Int Int) Int)

(assert (=> d!374214 (< (dynLambda!5919 order!8117 lambda!54438) (dynLambda!5919 order!8117 lambda!54467))))

(declare-fun forall!3313 (List!13493 Int) Bool)

(assert (=> d!374214 (= (exists!348 rules!2550 lambda!54438) (not (forall!3313 rules!2550 lambda!54467)))))

(declare-fun bs!331346 () Bool)

(assert (= bs!331346 d!374214))

(declare-fun m!1481739 () Bool)

(assert (=> bs!331346 m!1481739))

(assert (=> b!1324461 d!374214))

(declare-fun bs!331347 () Bool)

(declare-fun d!374216 () Bool)

(assert (= bs!331347 (and d!374216 b!1324461)))

(declare-fun lambda!54470 () Int)

(assert (=> bs!331347 (not (= lambda!54470 lambda!54438))))

(declare-fun bs!331348 () Bool)

(assert (= bs!331348 (and d!374216 b!1324489)))

(assert (=> bs!331348 (not (= lambda!54470 lambda!54439))))

(declare-fun bs!331349 () Bool)

(assert (= bs!331349 (and d!374216 d!374214)))

(assert (=> bs!331349 (not (= lambda!54470 lambda!54467))))

(assert (=> d!374216 true))

(assert (=> d!374216 true))

(declare-fun order!8119 () Int)

(declare-fun dynLambda!5920 (Int Int) Int)

(assert (=> d!374216 (< (dynLambda!5920 order!8119 lambda!54436) (dynLambda!5919 order!8117 lambda!54470))))

(assert (=> d!374216 (exists!348 rules!2550 lambda!54470)))

(declare-fun lt!437679 () Unit!19500)

(declare-fun choose!8117 (List!13493 Int Regex!3637) Unit!19500)

(assert (=> d!374216 (= lt!437679 (choose!8117 rules!2550 lambda!54436 lt!437475))))

(assert (=> d!374216 (contains!2387 (map!2951 rules!2550 lambda!54436) lt!437475)))

(assert (=> d!374216 (= (lemmaMapContains!66 rules!2550 lambda!54436 lt!437475) lt!437679)))

(declare-fun bs!331350 () Bool)

(assert (= bs!331350 d!374216))

(declare-fun m!1481741 () Bool)

(assert (=> bs!331350 m!1481741))

(declare-fun m!1481743 () Bool)

(assert (=> bs!331350 m!1481743))

(assert (=> bs!331350 m!1480893))

(assert (=> bs!331350 m!1480893))

(assert (=> bs!331350 m!1480945))

(assert (=> b!1324461 d!374216))

(declare-fun d!374218 () Bool)

(declare-fun lt!437682 () Bool)

(assert (=> d!374218 (= lt!437682 (isEmpty!7998 (list!5079 (_2!7415 lt!437464))))))

(declare-fun isEmpty!8000 (Conc!4416) Bool)

(assert (=> d!374218 (= lt!437682 (isEmpty!8000 (c!217330 (_2!7415 lt!437464))))))

(assert (=> d!374218 (= (isEmpty!7993 (_2!7415 lt!437464)) lt!437682)))

(declare-fun bs!331351 () Bool)

(assert (= bs!331351 d!374218))

(declare-fun m!1481745 () Bool)

(assert (=> bs!331351 m!1481745))

(assert (=> bs!331351 m!1481745))

(declare-fun m!1481747 () Bool)

(assert (=> bs!331351 m!1481747))

(declare-fun m!1481749 () Bool)

(assert (=> bs!331351 m!1481749))

(assert (=> b!1324482 d!374218))

(declare-fun d!374220 () Bool)

(declare-fun lt!437683 () Bool)

(assert (=> d!374220 (= lt!437683 (select (content!1905 rules!2550) (rule!4068 t1!34)))))

(declare-fun e!849029 () Bool)

(assert (=> d!374220 (= lt!437683 e!849029)))

(declare-fun res!596090 () Bool)

(assert (=> d!374220 (=> (not res!596090) (not e!849029))))

(assert (=> d!374220 (= res!596090 ((_ is Cons!13427) rules!2550))))

(assert (=> d!374220 (= (contains!2386 rules!2550 (rule!4068 t1!34)) lt!437683)))

(declare-fun b!1325095 () Bool)

(declare-fun e!849028 () Bool)

(assert (=> b!1325095 (= e!849029 e!849028)))

(declare-fun res!596091 () Bool)

(assert (=> b!1325095 (=> res!596091 e!849028)))

(assert (=> b!1325095 (= res!596091 (= (h!18828 rules!2550) (rule!4068 t1!34)))))

(declare-fun b!1325096 () Bool)

(assert (=> b!1325096 (= e!849028 (contains!2386 (t!118758 rules!2550) (rule!4068 t1!34)))))

(assert (= (and d!374220 res!596090) b!1325095))

(assert (= (and b!1325095 (not res!596091)) b!1325096))

(assert (=> d!374220 m!1481285))

(declare-fun m!1481751 () Bool)

(assert (=> d!374220 m!1481751))

(declare-fun m!1481753 () Bool)

(assert (=> b!1325096 m!1481753))

(assert (=> b!1324483 d!374220))

(declare-fun d!374222 () Bool)

(declare-fun res!596096 () Bool)

(declare-fun e!849032 () Bool)

(assert (=> d!374222 (=> (not res!596096) (not e!849032))))

(assert (=> d!374222 (= res!596096 (not (isEmpty!7998 (originalCharacters!3185 t1!34))))))

(assert (=> d!374222 (= (inv!17796 t1!34) e!849032)))

(declare-fun b!1325101 () Bool)

(declare-fun res!596097 () Bool)

(assert (=> b!1325101 (=> (not res!596097) (not e!849032))))

(assert (=> b!1325101 (= res!596097 (= (originalCharacters!3185 t1!34) (list!5079 (dynLambda!5913 (toChars!3413 (transformation!2323 (rule!4068 t1!34))) (value!75838 t1!34)))))))

(declare-fun b!1325102 () Bool)

(assert (=> b!1325102 (= e!849032 (= (size!10940 t1!34) (size!10945 (originalCharacters!3185 t1!34))))))

(assert (= (and d!374222 res!596096) b!1325101))

(assert (= (and b!1325101 res!596097) b!1325102))

(declare-fun b_lambda!38869 () Bool)

(assert (=> (not b_lambda!38869) (not b!1325101)))

(assert (=> b!1325101 t!118767))

(declare-fun b_and!88515 () Bool)

(assert (= b_and!88509 (and (=> t!118767 result!85230) b_and!88515)))

(assert (=> b!1325101 t!118769))

(declare-fun b_and!88517 () Bool)

(assert (= b_and!88511 (and (=> t!118769 result!85234) b_and!88517)))

(assert (=> b!1325101 t!118771))

(declare-fun b_and!88519 () Bool)

(assert (= b_and!88513 (and (=> t!118771 result!85236) b_and!88519)))

(declare-fun m!1481755 () Bool)

(assert (=> d!374222 m!1481755))

(assert (=> b!1325101 m!1481201))

(assert (=> b!1325101 m!1481201))

(declare-fun m!1481757 () Bool)

(assert (=> b!1325101 m!1481757))

(declare-fun m!1481759 () Bool)

(assert (=> b!1325102 m!1481759))

(assert (=> start!117738 d!374222))

(declare-fun d!374224 () Bool)

(declare-fun res!596098 () Bool)

(declare-fun e!849033 () Bool)

(assert (=> d!374224 (=> (not res!596098) (not e!849033))))

(assert (=> d!374224 (= res!596098 (not (isEmpty!7998 (originalCharacters!3185 t2!34))))))

(assert (=> d!374224 (= (inv!17796 t2!34) e!849033)))

(declare-fun b!1325103 () Bool)

(declare-fun res!596099 () Bool)

(assert (=> b!1325103 (=> (not res!596099) (not e!849033))))

(assert (=> b!1325103 (= res!596099 (= (originalCharacters!3185 t2!34) (list!5079 (dynLambda!5913 (toChars!3413 (transformation!2323 (rule!4068 t2!34))) (value!75838 t2!34)))))))

(declare-fun b!1325104 () Bool)

(assert (=> b!1325104 (= e!849033 (= (size!10940 t2!34) (size!10945 (originalCharacters!3185 t2!34))))))

(assert (= (and d!374224 res!596098) b!1325103))

(assert (= (and b!1325103 res!596099) b!1325104))

(declare-fun b_lambda!38871 () Bool)

(assert (=> (not b_lambda!38871) (not b!1325103)))

(assert (=> b!1325103 t!118787))

(declare-fun b_and!88521 () Bool)

(assert (= b_and!88515 (and (=> t!118787 result!85254) b_and!88521)))

(assert (=> b!1325103 t!118789))

(declare-fun b_and!88523 () Bool)

(assert (= b_and!88517 (and (=> t!118789 result!85256) b_and!88523)))

(assert (=> b!1325103 t!118791))

(declare-fun b_and!88525 () Bool)

(assert (= b_and!88519 (and (=> t!118791 result!85258) b_and!88525)))

(declare-fun m!1481761 () Bool)

(assert (=> d!374224 m!1481761))

(assert (=> b!1325103 m!1481731))

(assert (=> b!1325103 m!1481731))

(declare-fun m!1481763 () Bool)

(assert (=> b!1325103 m!1481763))

(declare-fun m!1481765 () Bool)

(assert (=> b!1325104 m!1481765))

(assert (=> start!117738 d!374224))

(declare-fun b!1325115 () Bool)

(declare-fun e!849041 () tuple2!13062)

(assert (=> b!1325115 (= e!849041 (tuple2!13063 Nil!13426 (list!5079 lt!437472)))))

(declare-fun b!1325116 () Bool)

(declare-fun lt!437690 () Option!2594)

(declare-fun lt!437692 () tuple2!13062)

(assert (=> b!1325116 (= e!849041 (tuple2!13063 (Cons!13426 (_1!7416 (v!21190 lt!437690)) (_1!7417 lt!437692)) (_2!7417 lt!437692)))))

(assert (=> b!1325116 (= lt!437692 (lexList!556 thiss!19762 rules!2550 (_2!7416 (v!21190 lt!437690))))))

(declare-fun b!1325117 () Bool)

(declare-fun e!849040 () Bool)

(declare-fun lt!437691 () tuple2!13062)

(assert (=> b!1325117 (= e!849040 (= (_2!7417 lt!437691) (list!5079 lt!437472)))))

(declare-fun d!374226 () Bool)

(assert (=> d!374226 e!849040))

(declare-fun c!217465 () Bool)

(declare-fun size!10951 (List!13492) Int)

(assert (=> d!374226 (= c!217465 (> (size!10951 (_1!7417 lt!437691)) 0))))

(assert (=> d!374226 (= lt!437691 e!849041)))

(declare-fun c!217464 () Bool)

(assert (=> d!374226 (= c!217464 ((_ is Some!2593) lt!437690))))

(assert (=> d!374226 (= lt!437690 (maxPrefix!1028 thiss!19762 rules!2550 (list!5079 lt!437472)))))

(assert (=> d!374226 (= (lexList!556 thiss!19762 rules!2550 (list!5079 lt!437472)) lt!437691)))

(declare-fun b!1325118 () Bool)

(declare-fun e!849042 () Bool)

(assert (=> b!1325118 (= e!849040 e!849042)))

(declare-fun res!596102 () Bool)

(assert (=> b!1325118 (= res!596102 (< (size!10945 (_2!7417 lt!437691)) (size!10945 (list!5079 lt!437472))))))

(assert (=> b!1325118 (=> (not res!596102) (not e!849042))))

(declare-fun b!1325119 () Bool)

(declare-fun isEmpty!8002 (List!13492) Bool)

(assert (=> b!1325119 (= e!849042 (not (isEmpty!8002 (_1!7417 lt!437691))))))

(assert (= (and d!374226 c!217464) b!1325116))

(assert (= (and d!374226 (not c!217464)) b!1325115))

(assert (= (and d!374226 c!217465) b!1325118))

(assert (= (and d!374226 (not c!217465)) b!1325117))

(assert (= (and b!1325118 res!596102) b!1325119))

(declare-fun m!1481767 () Bool)

(assert (=> b!1325116 m!1481767))

(declare-fun m!1481769 () Bool)

(assert (=> d!374226 m!1481769))

(assert (=> d!374226 m!1481013))

(declare-fun m!1481771 () Bool)

(assert (=> d!374226 m!1481771))

(declare-fun m!1481773 () Bool)

(assert (=> b!1325118 m!1481773))

(assert (=> b!1325118 m!1481013))

(declare-fun m!1481775 () Bool)

(assert (=> b!1325118 m!1481775))

(declare-fun m!1481777 () Bool)

(assert (=> b!1325119 m!1481777))

(assert (=> b!1324479 d!374226))

(declare-fun d!374228 () Bool)

(assert (=> d!374228 (= (list!5079 lt!437472) (list!5082 (c!217330 lt!437472)))))

(declare-fun bs!331352 () Bool)

(assert (= bs!331352 d!374228))

(declare-fun m!1481779 () Bool)

(assert (=> bs!331352 m!1481779))

(assert (=> b!1324479 d!374228))

(declare-fun d!374230 () Bool)

(assert (=> d!374230 (= (isEmpty!7992 rules!2550) ((_ is Nil!13427) rules!2550))))

(assert (=> b!1324458 d!374230))

(declare-fun d!374232 () Bool)

(declare-fun e!849050 () Bool)

(assert (=> d!374232 e!849050))

(declare-fun res!596120 () Bool)

(assert (=> d!374232 (=> res!596120 e!849050)))

(declare-fun lt!437703 () Option!2594)

(declare-fun isEmpty!8003 (Option!2594) Bool)

(assert (=> d!374232 (= res!596120 (isEmpty!8003 lt!437703))))

(declare-fun e!849049 () Option!2594)

(assert (=> d!374232 (= lt!437703 e!849049)))

(declare-fun c!217468 () Bool)

(assert (=> d!374232 (= c!217468 (and ((_ is Cons!13427) rules!2550) ((_ is Nil!13427) (t!118758 rules!2550))))))

(declare-fun lt!437705 () Unit!19500)

(declare-fun lt!437707 () Unit!19500)

(assert (=> d!374232 (= lt!437705 lt!437707)))

(declare-fun isPrefix!1084 (List!13491 List!13491) Bool)

(assert (=> d!374232 (isPrefix!1084 lt!437477 lt!437477)))

(declare-fun lemmaIsPrefixRefl!763 (List!13491 List!13491) Unit!19500)

(assert (=> d!374232 (= lt!437707 (lemmaIsPrefixRefl!763 lt!437477 lt!437477))))

(declare-fun rulesValidInductive!736 (LexerInterface!2018 List!13493) Bool)

(assert (=> d!374232 (rulesValidInductive!736 thiss!19762 rules!2550)))

(assert (=> d!374232 (= (maxPrefix!1028 thiss!19762 rules!2550 lt!437477) lt!437703)))

(declare-fun call!89826 () Option!2594)

(declare-fun bm!89821 () Bool)

(declare-fun maxPrefixOneRule!589 (LexerInterface!2018 Rule!4446 List!13491) Option!2594)

(assert (=> bm!89821 (= call!89826 (maxPrefixOneRule!589 thiss!19762 (h!18828 rules!2550) lt!437477))))

(declare-fun b!1325138 () Bool)

(declare-fun res!596118 () Bool)

(declare-fun e!849051 () Bool)

(assert (=> b!1325138 (=> (not res!596118) (not e!849051))))

(declare-fun get!4274 (Option!2594) tuple2!13060)

(declare-fun apply!3101 (TokenValueInjection!4486 BalanceConc!8772) TokenValue!2413)

(declare-fun seqFromList!1607 (List!13491) BalanceConc!8772)

(assert (=> b!1325138 (= res!596118 (= (value!75838 (_1!7416 (get!4274 lt!437703))) (apply!3101 (transformation!2323 (rule!4068 (_1!7416 (get!4274 lt!437703)))) (seqFromList!1607 (originalCharacters!3185 (_1!7416 (get!4274 lt!437703)))))))))

(declare-fun b!1325139 () Bool)

(assert (=> b!1325139 (= e!849049 call!89826)))

(declare-fun b!1325140 () Bool)

(declare-fun res!596123 () Bool)

(assert (=> b!1325140 (=> (not res!596123) (not e!849051))))

(assert (=> b!1325140 (= res!596123 (matchR!1639 (regex!2323 (rule!4068 (_1!7416 (get!4274 lt!437703)))) (list!5079 (charsOf!1295 (_1!7416 (get!4274 lt!437703))))))))

(declare-fun b!1325141 () Bool)

(assert (=> b!1325141 (= e!849050 e!849051)))

(declare-fun res!596119 () Bool)

(assert (=> b!1325141 (=> (not res!596119) (not e!849051))))

(declare-fun isDefined!2187 (Option!2594) Bool)

(assert (=> b!1325141 (= res!596119 (isDefined!2187 lt!437703))))

(declare-fun b!1325142 () Bool)

(declare-fun res!596121 () Bool)

(assert (=> b!1325142 (=> (not res!596121) (not e!849051))))

(assert (=> b!1325142 (= res!596121 (= (++!3430 (list!5079 (charsOf!1295 (_1!7416 (get!4274 lt!437703)))) (_2!7416 (get!4274 lt!437703))) lt!437477))))

(declare-fun b!1325143 () Bool)

(declare-fun res!596117 () Bool)

(assert (=> b!1325143 (=> (not res!596117) (not e!849051))))

(assert (=> b!1325143 (= res!596117 (= (list!5079 (charsOf!1295 (_1!7416 (get!4274 lt!437703)))) (originalCharacters!3185 (_1!7416 (get!4274 lt!437703)))))))

(declare-fun b!1325144 () Bool)

(assert (=> b!1325144 (= e!849051 (contains!2386 rules!2550 (rule!4068 (_1!7416 (get!4274 lt!437703)))))))

(declare-fun b!1325145 () Bool)

(declare-fun lt!437704 () Option!2594)

(declare-fun lt!437706 () Option!2594)

(assert (=> b!1325145 (= e!849049 (ite (and ((_ is None!2593) lt!437704) ((_ is None!2593) lt!437706)) None!2593 (ite ((_ is None!2593) lt!437706) lt!437704 (ite ((_ is None!2593) lt!437704) lt!437706 (ite (>= (size!10940 (_1!7416 (v!21190 lt!437704))) (size!10940 (_1!7416 (v!21190 lt!437706)))) lt!437704 lt!437706)))))))

(assert (=> b!1325145 (= lt!437704 call!89826)))

(assert (=> b!1325145 (= lt!437706 (maxPrefix!1028 thiss!19762 (t!118758 rules!2550) lt!437477))))

(declare-fun b!1325146 () Bool)

(declare-fun res!596122 () Bool)

(assert (=> b!1325146 (=> (not res!596122) (not e!849051))))

(assert (=> b!1325146 (= res!596122 (< (size!10945 (_2!7416 (get!4274 lt!437703))) (size!10945 lt!437477)))))

(assert (= (and d!374232 c!217468) b!1325139))

(assert (= (and d!374232 (not c!217468)) b!1325145))

(assert (= (or b!1325139 b!1325145) bm!89821))

(assert (= (and d!374232 (not res!596120)) b!1325141))

(assert (= (and b!1325141 res!596119) b!1325143))

(assert (= (and b!1325143 res!596117) b!1325146))

(assert (= (and b!1325146 res!596122) b!1325142))

(assert (= (and b!1325142 res!596121) b!1325138))

(assert (= (and b!1325138 res!596118) b!1325140))

(assert (= (and b!1325140 res!596123) b!1325144))

(declare-fun m!1481781 () Bool)

(assert (=> b!1325146 m!1481781))

(declare-fun m!1481783 () Bool)

(assert (=> b!1325146 m!1481783))

(assert (=> b!1325146 m!1481185))

(declare-fun m!1481785 () Bool)

(assert (=> d!374232 m!1481785))

(declare-fun m!1481787 () Bool)

(assert (=> d!374232 m!1481787))

(declare-fun m!1481789 () Bool)

(assert (=> d!374232 m!1481789))

(declare-fun m!1481791 () Bool)

(assert (=> d!374232 m!1481791))

(declare-fun m!1481793 () Bool)

(assert (=> b!1325145 m!1481793))

(assert (=> b!1325138 m!1481781))

(declare-fun m!1481795 () Bool)

(assert (=> b!1325138 m!1481795))

(assert (=> b!1325138 m!1481795))

(declare-fun m!1481797 () Bool)

(assert (=> b!1325138 m!1481797))

(declare-fun m!1481799 () Bool)

(assert (=> b!1325141 m!1481799))

(assert (=> b!1325140 m!1481781))

(declare-fun m!1481801 () Bool)

(assert (=> b!1325140 m!1481801))

(assert (=> b!1325140 m!1481801))

(declare-fun m!1481803 () Bool)

(assert (=> b!1325140 m!1481803))

(assert (=> b!1325140 m!1481803))

(declare-fun m!1481805 () Bool)

(assert (=> b!1325140 m!1481805))

(assert (=> b!1325144 m!1481781))

(declare-fun m!1481807 () Bool)

(assert (=> b!1325144 m!1481807))

(declare-fun m!1481809 () Bool)

(assert (=> bm!89821 m!1481809))

(assert (=> b!1325143 m!1481781))

(assert (=> b!1325143 m!1481801))

(assert (=> b!1325143 m!1481801))

(assert (=> b!1325143 m!1481803))

(assert (=> b!1325142 m!1481781))

(assert (=> b!1325142 m!1481801))

(assert (=> b!1325142 m!1481801))

(assert (=> b!1325142 m!1481803))

(assert (=> b!1325142 m!1481803))

(declare-fun m!1481811 () Bool)

(assert (=> b!1325142 m!1481811))

(assert (=> b!1324459 d!374232))

(declare-fun d!374234 () Bool)

(assert (=> d!374234 (= (inv!17792 (tag!2585 (rule!4068 t2!34))) (= (mod (str.len (value!75837 (tag!2585 (rule!4068 t2!34)))) 2) 0))))

(assert (=> b!1324480 d!374234))

(declare-fun d!374236 () Bool)

(declare-fun res!596124 () Bool)

(declare-fun e!849052 () Bool)

(assert (=> d!374236 (=> (not res!596124) (not e!849052))))

(assert (=> d!374236 (= res!596124 (semiInverseModEq!878 (toChars!3413 (transformation!2323 (rule!4068 t2!34))) (toValue!3554 (transformation!2323 (rule!4068 t2!34)))))))

(assert (=> d!374236 (= (inv!17795 (transformation!2323 (rule!4068 t2!34))) e!849052)))

(declare-fun b!1325147 () Bool)

(assert (=> b!1325147 (= e!849052 (equivClasses!837 (toChars!3413 (transformation!2323 (rule!4068 t2!34))) (toValue!3554 (transformation!2323 (rule!4068 t2!34)))))))

(assert (= (and d!374236 res!596124) b!1325147))

(declare-fun m!1481813 () Bool)

(assert (=> d!374236 m!1481813))

(declare-fun m!1481815 () Bool)

(assert (=> b!1325147 m!1481815))

(assert (=> b!1324480 d!374236))

(declare-fun b!1325148 () Bool)

(declare-fun e!849055 () Bool)

(assert (=> b!1325148 (= e!849055 (inv!17 (value!75838 t2!34)))))

(declare-fun b!1325149 () Bool)

(declare-fun e!849053 () Bool)

(assert (=> b!1325149 (= e!849053 (inv!15 (value!75838 t2!34)))))

(declare-fun b!1325150 () Bool)

(declare-fun e!849054 () Bool)

(assert (=> b!1325150 (= e!849054 (inv!16 (value!75838 t2!34)))))

(declare-fun b!1325151 () Bool)

(declare-fun res!596125 () Bool)

(assert (=> b!1325151 (=> res!596125 e!849053)))

(assert (=> b!1325151 (= res!596125 (not ((_ is IntegerValue!7241) (value!75838 t2!34))))))

(assert (=> b!1325151 (= e!849055 e!849053)))

(declare-fun b!1325152 () Bool)

(assert (=> b!1325152 (= e!849054 e!849055)))

(declare-fun c!217470 () Bool)

(assert (=> b!1325152 (= c!217470 ((_ is IntegerValue!7240) (value!75838 t2!34)))))

(declare-fun d!374238 () Bool)

(declare-fun c!217469 () Bool)

(assert (=> d!374238 (= c!217469 ((_ is IntegerValue!7239) (value!75838 t2!34)))))

(assert (=> d!374238 (= (inv!21 (value!75838 t2!34)) e!849054)))

(assert (= (and d!374238 c!217469) b!1325150))

(assert (= (and d!374238 (not c!217469)) b!1325152))

(assert (= (and b!1325152 c!217470) b!1325148))

(assert (= (and b!1325152 (not c!217470)) b!1325151))

(assert (= (and b!1325151 (not res!596125)) b!1325149))

(declare-fun m!1481817 () Bool)

(assert (=> b!1325148 m!1481817))

(declare-fun m!1481819 () Bool)

(assert (=> b!1325149 m!1481819))

(declare-fun m!1481821 () Bool)

(assert (=> b!1325150 m!1481821))

(assert (=> b!1324481 d!374238))

(declare-fun d!374240 () Bool)

(declare-fun lt!437708 () Bool)

(assert (=> d!374240 (= lt!437708 (select (content!1904 lt!437470) lt!437468))))

(declare-fun e!849056 () Bool)

(assert (=> d!374240 (= lt!437708 e!849056)))

(declare-fun res!596127 () Bool)

(assert (=> d!374240 (=> (not res!596127) (not e!849056))))

(assert (=> d!374240 (= res!596127 ((_ is Cons!13425) lt!437470))))

(assert (=> d!374240 (= (contains!2385 lt!437470 lt!437468) lt!437708)))

(declare-fun b!1325153 () Bool)

(declare-fun e!849057 () Bool)

(assert (=> b!1325153 (= e!849056 e!849057)))

(declare-fun res!596126 () Bool)

(assert (=> b!1325153 (=> res!596126 e!849057)))

(assert (=> b!1325153 (= res!596126 (= (h!18826 lt!437470) lt!437468))))

(declare-fun b!1325154 () Bool)

(assert (=> b!1325154 (= e!849057 (contains!2385 (t!118756 lt!437470) lt!437468))))

(assert (= (and d!374240 res!596127) b!1325153))

(assert (= (and b!1325153 (not res!596126)) b!1325154))

(assert (=> d!374240 m!1481217))

(declare-fun m!1481823 () Bool)

(assert (=> d!374240 m!1481823))

(declare-fun m!1481825 () Bool)

(assert (=> b!1325154 m!1481825))

(assert (=> b!1324487 d!374240))

(declare-fun d!374242 () Bool)

(declare-fun lt!437709 () C!7564)

(assert (=> d!374242 (= lt!437709 (apply!3096 (list!5079 lt!437479) 0))))

(assert (=> d!374242 (= lt!437709 (apply!3097 (c!217330 lt!437479) 0))))

(declare-fun e!849058 () Bool)

(assert (=> d!374242 e!849058))

(declare-fun res!596128 () Bool)

(assert (=> d!374242 (=> (not res!596128) (not e!849058))))

(assert (=> d!374242 (= res!596128 (<= 0 0))))

(assert (=> d!374242 (= (apply!3093 lt!437479 0) lt!437709)))

(declare-fun b!1325155 () Bool)

(assert (=> b!1325155 (= e!849058 (< 0 (size!10941 lt!437479)))))

(assert (= (and d!374242 res!596128) b!1325155))

(assert (=> d!374242 m!1480983))

(assert (=> d!374242 m!1480983))

(declare-fun m!1481827 () Bool)

(assert (=> d!374242 m!1481827))

(declare-fun m!1481829 () Bool)

(assert (=> d!374242 m!1481829))

(declare-fun m!1481831 () Bool)

(assert (=> b!1325155 m!1481831))

(assert (=> b!1324487 d!374242))

(declare-fun bs!331353 () Bool)

(declare-fun d!374244 () Bool)

(assert (= bs!331353 (and d!374244 b!1324466)))

(declare-fun lambda!54473 () Int)

(assert (=> bs!331353 (not (= lambda!54473 lambda!54437))))

(assert (=> d!374244 true))

(declare-fun order!8121 () Int)

(declare-fun dynLambda!5923 (Int Int) Int)

(assert (=> d!374244 (< (dynLambda!5923 order!8121 lambda!54437) (dynLambda!5923 order!8121 lambda!54473))))

(declare-fun forall!3314 (List!13494 Int) Bool)

(assert (=> d!374244 (= (exists!349 lt!437466 lambda!54437) (not (forall!3314 lt!437466 lambda!54473)))))

(declare-fun bs!331354 () Bool)

(assert (= bs!331354 d!374244))

(declare-fun m!1481833 () Bool)

(assert (=> bs!331354 m!1481833))

(assert (=> b!1324466 d!374244))

(declare-fun d!374246 () Bool)

(declare-fun lt!437712 () List!13494)

(declare-fun size!10952 (List!13494) Int)

(declare-fun size!10953 (List!13493) Int)

(assert (=> d!374246 (= (size!10952 lt!437712) (size!10953 rules!2550))))

(declare-fun e!849061 () List!13494)

(assert (=> d!374246 (= lt!437712 e!849061)))

(declare-fun c!217473 () Bool)

(assert (=> d!374246 (= c!217473 ((_ is Nil!13427) rules!2550))))

(assert (=> d!374246 (= (map!2951 rules!2550 lambda!54436) lt!437712)))

(declare-fun b!1325162 () Bool)

(assert (=> b!1325162 (= e!849061 Nil!13428)))

(declare-fun b!1325163 () Bool)

(declare-fun $colon$colon!161 (List!13494 Regex!3637) List!13494)

(declare-fun dynLambda!5924 (Int Rule!4446) Regex!3637)

(assert (=> b!1325163 (= e!849061 ($colon$colon!161 (map!2951 (t!118758 rules!2550) lambda!54436) (dynLambda!5924 lambda!54436 (h!18828 rules!2550))))))

(assert (= (and d!374246 c!217473) b!1325162))

(assert (= (and d!374246 (not c!217473)) b!1325163))

(declare-fun b_lambda!38873 () Bool)

(assert (=> (not b_lambda!38873) (not b!1325163)))

(declare-fun m!1481835 () Bool)

(assert (=> d!374246 m!1481835))

(declare-fun m!1481837 () Bool)

(assert (=> d!374246 m!1481837))

(declare-fun m!1481839 () Bool)

(assert (=> b!1325163 m!1481839))

(declare-fun m!1481841 () Bool)

(assert (=> b!1325163 m!1481841))

(assert (=> b!1325163 m!1481839))

(assert (=> b!1325163 m!1481841))

(declare-fun m!1481843 () Bool)

(assert (=> b!1325163 m!1481843))

(assert (=> b!1324466 d!374246))

(declare-fun bs!331355 () Bool)

(declare-fun d!374248 () Bool)

(assert (= bs!331355 (and d!374248 b!1324466)))

(declare-fun lambda!54478 () Int)

(assert (=> bs!331355 (not (= lambda!54478 lambda!54437))))

(declare-fun bs!331356 () Bool)

(assert (= bs!331356 (and d!374248 d!374244)))

(assert (=> bs!331356 (not (= lambda!54478 lambda!54473))))

(declare-fun lambda!54479 () Int)

(assert (=> bs!331355 (= lambda!54479 lambda!54437)))

(assert (=> bs!331356 (not (= lambda!54479 lambda!54473))))

(declare-fun bs!331357 () Bool)

(assert (= bs!331357 d!374248))

(assert (=> bs!331357 (not (= lambda!54479 lambda!54478))))

(assert (=> d!374248 true))

(assert (=> d!374248 (= (matchR!1639 lt!437465 lt!437486) (exists!349 lt!437466 lambda!54479))))

(declare-fun lt!437715 () Unit!19500)

(declare-fun choose!8119 (Regex!3637 List!13494 List!13491) Unit!19500)

(assert (=> d!374248 (= lt!437715 (choose!8119 lt!437465 lt!437466 lt!437486))))

(assert (=> d!374248 (forall!3314 lt!437466 lambda!54478)))

(assert (=> d!374248 (= (matchRGenUnionSpec!74 lt!437465 lt!437466 lt!437486) lt!437715)))

(assert (=> bs!331357 m!1481003))

(declare-fun m!1481845 () Bool)

(assert (=> bs!331357 m!1481845))

(declare-fun m!1481847 () Bool)

(assert (=> bs!331357 m!1481847))

(declare-fun m!1481849 () Bool)

(assert (=> bs!331357 m!1481849))

(assert (=> b!1324466 d!374248))

(declare-fun bs!331358 () Bool)

(declare-fun d!374250 () Bool)

(assert (= bs!331358 (and d!374250 b!1324466)))

(declare-fun lambda!54480 () Int)

(assert (=> bs!331358 (not (= lambda!54480 lambda!54437))))

(declare-fun bs!331359 () Bool)

(assert (= bs!331359 (and d!374250 d!374244)))

(assert (=> bs!331359 (= lambda!54480 lambda!54473)))

(declare-fun bs!331360 () Bool)

(assert (= bs!331360 (and d!374250 d!374248)))

(assert (=> bs!331360 (not (= lambda!54480 lambda!54478))))

(assert (=> bs!331360 (not (= lambda!54480 lambda!54479))))

(assert (=> d!374250 true))

(assert (=> d!374250 (< (dynLambda!5923 order!8121 lambda!54437) (dynLambda!5923 order!8121 lambda!54480))))

(assert (=> d!374250 (= (exists!349 (map!2951 rules!2550 lambda!54436) lambda!54437) (not (forall!3314 (map!2951 rules!2550 lambda!54436) lambda!54480)))))

(declare-fun bs!331361 () Bool)

(assert (= bs!331361 d!374250))

(assert (=> bs!331361 m!1480893))

(declare-fun m!1481851 () Bool)

(assert (=> bs!331361 m!1481851))

(assert (=> b!1324466 d!374250))

(declare-fun d!374252 () Bool)

(declare-fun lt!437716 () Bool)

(assert (=> d!374252 (= lt!437716 (select (content!1904 lt!437470) lt!437474))))

(declare-fun e!849064 () Bool)

(assert (=> d!374252 (= lt!437716 e!849064)))

(declare-fun res!596132 () Bool)

(assert (=> d!374252 (=> (not res!596132) (not e!849064))))

(assert (=> d!374252 (= res!596132 ((_ is Cons!13425) lt!437470))))

(assert (=> d!374252 (= (contains!2385 lt!437470 lt!437474) lt!437716)))

(declare-fun b!1325166 () Bool)

(declare-fun e!849065 () Bool)

(assert (=> b!1325166 (= e!849064 e!849065)))

(declare-fun res!596131 () Bool)

(assert (=> b!1325166 (=> res!596131 e!849065)))

(assert (=> b!1325166 (= res!596131 (= (h!18826 lt!437470) lt!437474))))

(declare-fun b!1325167 () Bool)

(assert (=> b!1325167 (= e!849065 (contains!2385 (t!118756 lt!437470) lt!437474))))

(assert (= (and d!374252 res!596132) b!1325166))

(assert (= (and b!1325166 (not res!596131)) b!1325167))

(assert (=> d!374252 m!1481217))

(declare-fun m!1481853 () Bool)

(assert (=> d!374252 m!1481853))

(declare-fun m!1481855 () Bool)

(assert (=> b!1325167 m!1481855))

(assert (=> b!1324467 d!374252))

(declare-fun b!1325168 () Bool)

(declare-fun e!849070 () Bool)

(declare-fun e!849068 () Bool)

(assert (=> b!1325168 (= e!849070 e!849068)))

(declare-fun res!596140 () Bool)

(assert (=> b!1325168 (=> res!596140 e!849068)))

(declare-fun call!89827 () Bool)

(assert (=> b!1325168 (= res!596140 call!89827)))

(declare-fun d!374254 () Bool)

(declare-fun e!849072 () Bool)

(assert (=> d!374254 e!849072))

(declare-fun c!217475 () Bool)

(assert (=> d!374254 (= c!217475 ((_ is EmptyExpr!3637) (regex!2323 (rule!4068 t2!34))))))

(declare-fun lt!437717 () Bool)

(declare-fun e!849069 () Bool)

(assert (=> d!374254 (= lt!437717 e!849069)))

(declare-fun c!217474 () Bool)

(assert (=> d!374254 (= c!217474 (isEmpty!7998 lt!437480))))

(assert (=> d!374254 (validRegex!1561 (regex!2323 (rule!4068 t2!34)))))

(assert (=> d!374254 (= (matchR!1639 (regex!2323 (rule!4068 t2!34)) lt!437480) lt!437717)))

(declare-fun b!1325169 () Bool)

(assert (=> b!1325169 (= e!849072 (= lt!437717 call!89827))))

(declare-fun b!1325170 () Bool)

(assert (=> b!1325170 (= e!849068 (not (= (head!2310 lt!437480) (c!217331 (regex!2323 (rule!4068 t2!34))))))))

(declare-fun b!1325171 () Bool)

(declare-fun res!596136 () Bool)

(declare-fun e!849066 () Bool)

(assert (=> b!1325171 (=> res!596136 e!849066)))

(assert (=> b!1325171 (= res!596136 (not ((_ is ElementMatch!3637) (regex!2323 (rule!4068 t2!34)))))))

(declare-fun e!849071 () Bool)

(assert (=> b!1325171 (= e!849071 e!849066)))

(declare-fun b!1325172 () Bool)

(assert (=> b!1325172 (= e!849069 (nullable!1157 (regex!2323 (rule!4068 t2!34))))))

(declare-fun b!1325173 () Bool)

(declare-fun e!849067 () Bool)

(assert (=> b!1325173 (= e!849067 (= (head!2310 lt!437480) (c!217331 (regex!2323 (rule!4068 t2!34)))))))

(declare-fun b!1325174 () Bool)

(declare-fun res!596137 () Bool)

(assert (=> b!1325174 (=> res!596137 e!849068)))

(assert (=> b!1325174 (= res!596137 (not (isEmpty!7998 (tail!1902 lt!437480))))))

(declare-fun b!1325175 () Bool)

(assert (=> b!1325175 (= e!849071 (not lt!437717))))

(declare-fun b!1325176 () Bool)

(assert (=> b!1325176 (= e!849066 e!849070)))

(declare-fun res!596139 () Bool)

(assert (=> b!1325176 (=> (not res!596139) (not e!849070))))

(assert (=> b!1325176 (= res!596139 (not lt!437717))))

(declare-fun b!1325177 () Bool)

(declare-fun res!596134 () Bool)

(assert (=> b!1325177 (=> (not res!596134) (not e!849067))))

(assert (=> b!1325177 (= res!596134 (isEmpty!7998 (tail!1902 lt!437480)))))

(declare-fun b!1325178 () Bool)

(assert (=> b!1325178 (= e!849072 e!849071)))

(declare-fun c!217476 () Bool)

(assert (=> b!1325178 (= c!217476 ((_ is EmptyLang!3637) (regex!2323 (rule!4068 t2!34))))))

(declare-fun b!1325179 () Bool)

(assert (=> b!1325179 (= e!849069 (matchR!1639 (derivativeStep!909 (regex!2323 (rule!4068 t2!34)) (head!2310 lt!437480)) (tail!1902 lt!437480)))))

(declare-fun b!1325180 () Bool)

(declare-fun res!596135 () Bool)

(assert (=> b!1325180 (=> res!596135 e!849066)))

(assert (=> b!1325180 (= res!596135 e!849067)))

(declare-fun res!596138 () Bool)

(assert (=> b!1325180 (=> (not res!596138) (not e!849067))))

(assert (=> b!1325180 (= res!596138 lt!437717)))

(declare-fun bm!89822 () Bool)

(assert (=> bm!89822 (= call!89827 (isEmpty!7998 lt!437480))))

(declare-fun b!1325181 () Bool)

(declare-fun res!596133 () Bool)

(assert (=> b!1325181 (=> (not res!596133) (not e!849067))))

(assert (=> b!1325181 (= res!596133 (not call!89827))))

(assert (= (and d!374254 c!217474) b!1325172))

(assert (= (and d!374254 (not c!217474)) b!1325179))

(assert (= (and d!374254 c!217475) b!1325169))

(assert (= (and d!374254 (not c!217475)) b!1325178))

(assert (= (and b!1325178 c!217476) b!1325175))

(assert (= (and b!1325178 (not c!217476)) b!1325171))

(assert (= (and b!1325171 (not res!596136)) b!1325180))

(assert (= (and b!1325180 res!596138) b!1325181))

(assert (= (and b!1325181 res!596133) b!1325177))

(assert (= (and b!1325177 res!596134) b!1325173))

(assert (= (and b!1325180 (not res!596135)) b!1325176))

(assert (= (and b!1325176 res!596139) b!1325168))

(assert (= (and b!1325168 (not res!596140)) b!1325174))

(assert (= (and b!1325174 (not res!596137)) b!1325170))

(assert (= (or b!1325169 b!1325168 b!1325181) bm!89822))

(declare-fun m!1481857 () Bool)

(assert (=> b!1325173 m!1481857))

(declare-fun m!1481859 () Bool)

(assert (=> d!374254 m!1481859))

(declare-fun m!1481861 () Bool)

(assert (=> d!374254 m!1481861))

(assert (=> bm!89822 m!1481859))

(assert (=> b!1325170 m!1481857))

(assert (=> b!1325179 m!1481857))

(assert (=> b!1325179 m!1481857))

(declare-fun m!1481863 () Bool)

(assert (=> b!1325179 m!1481863))

(declare-fun m!1481865 () Bool)

(assert (=> b!1325179 m!1481865))

(assert (=> b!1325179 m!1481863))

(assert (=> b!1325179 m!1481865))

(declare-fun m!1481867 () Bool)

(assert (=> b!1325179 m!1481867))

(assert (=> b!1325177 m!1481865))

(assert (=> b!1325177 m!1481865))

(declare-fun m!1481869 () Bool)

(assert (=> b!1325177 m!1481869))

(assert (=> b!1325174 m!1481865))

(assert (=> b!1325174 m!1481865))

(assert (=> b!1325174 m!1481869))

(declare-fun m!1481871 () Bool)

(assert (=> b!1325172 m!1481871))

(assert (=> b!1324488 d!374254))

(declare-fun b!1325182 () Bool)

(declare-fun e!849077 () Bool)

(declare-fun e!849075 () Bool)

(assert (=> b!1325182 (= e!849077 e!849075)))

(declare-fun res!596148 () Bool)

(assert (=> b!1325182 (=> res!596148 e!849075)))

(declare-fun call!89828 () Bool)

(assert (=> b!1325182 (= res!596148 call!89828)))

(declare-fun d!374256 () Bool)

(declare-fun e!849079 () Bool)

(assert (=> d!374256 e!849079))

(declare-fun c!217478 () Bool)

(assert (=> d!374256 (= c!217478 ((_ is EmptyExpr!3637) (regex!2323 (rule!4068 t1!34))))))

(declare-fun lt!437718 () Bool)

(declare-fun e!849076 () Bool)

(assert (=> d!374256 (= lt!437718 e!849076)))

(declare-fun c!217477 () Bool)

(assert (=> d!374256 (= c!217477 (isEmpty!7998 lt!437477))))

(assert (=> d!374256 (validRegex!1561 (regex!2323 (rule!4068 t1!34)))))

(assert (=> d!374256 (= (matchR!1639 (regex!2323 (rule!4068 t1!34)) lt!437477) lt!437718)))

(declare-fun b!1325183 () Bool)

(assert (=> b!1325183 (= e!849079 (= lt!437718 call!89828))))

(declare-fun b!1325184 () Bool)

(assert (=> b!1325184 (= e!849075 (not (= (head!2310 lt!437477) (c!217331 (regex!2323 (rule!4068 t1!34))))))))

(declare-fun b!1325185 () Bool)

(declare-fun res!596144 () Bool)

(declare-fun e!849073 () Bool)

(assert (=> b!1325185 (=> res!596144 e!849073)))

(assert (=> b!1325185 (= res!596144 (not ((_ is ElementMatch!3637) (regex!2323 (rule!4068 t1!34)))))))

(declare-fun e!849078 () Bool)

(assert (=> b!1325185 (= e!849078 e!849073)))

(declare-fun b!1325186 () Bool)

(assert (=> b!1325186 (= e!849076 (nullable!1157 (regex!2323 (rule!4068 t1!34))))))

(declare-fun b!1325187 () Bool)

(declare-fun e!849074 () Bool)

(assert (=> b!1325187 (= e!849074 (= (head!2310 lt!437477) (c!217331 (regex!2323 (rule!4068 t1!34)))))))

(declare-fun b!1325188 () Bool)

(declare-fun res!596145 () Bool)

(assert (=> b!1325188 (=> res!596145 e!849075)))

(assert (=> b!1325188 (= res!596145 (not (isEmpty!7998 (tail!1902 lt!437477))))))

(declare-fun b!1325189 () Bool)

(assert (=> b!1325189 (= e!849078 (not lt!437718))))

(declare-fun b!1325190 () Bool)

(assert (=> b!1325190 (= e!849073 e!849077)))

(declare-fun res!596147 () Bool)

(assert (=> b!1325190 (=> (not res!596147) (not e!849077))))

(assert (=> b!1325190 (= res!596147 (not lt!437718))))

(declare-fun b!1325191 () Bool)

(declare-fun res!596142 () Bool)

(assert (=> b!1325191 (=> (not res!596142) (not e!849074))))

(assert (=> b!1325191 (= res!596142 (isEmpty!7998 (tail!1902 lt!437477)))))

(declare-fun b!1325192 () Bool)

(assert (=> b!1325192 (= e!849079 e!849078)))

(declare-fun c!217479 () Bool)

(assert (=> b!1325192 (= c!217479 ((_ is EmptyLang!3637) (regex!2323 (rule!4068 t1!34))))))

(declare-fun b!1325193 () Bool)

(assert (=> b!1325193 (= e!849076 (matchR!1639 (derivativeStep!909 (regex!2323 (rule!4068 t1!34)) (head!2310 lt!437477)) (tail!1902 lt!437477)))))

(declare-fun b!1325194 () Bool)

(declare-fun res!596143 () Bool)

(assert (=> b!1325194 (=> res!596143 e!849073)))

(assert (=> b!1325194 (= res!596143 e!849074)))

(declare-fun res!596146 () Bool)

(assert (=> b!1325194 (=> (not res!596146) (not e!849074))))

(assert (=> b!1325194 (= res!596146 lt!437718)))

(declare-fun bm!89823 () Bool)

(assert (=> bm!89823 (= call!89828 (isEmpty!7998 lt!437477))))

(declare-fun b!1325195 () Bool)

(declare-fun res!596141 () Bool)

(assert (=> b!1325195 (=> (not res!596141) (not e!849074))))

(assert (=> b!1325195 (= res!596141 (not call!89828))))

(assert (= (and d!374256 c!217477) b!1325186))

(assert (= (and d!374256 (not c!217477)) b!1325193))

(assert (= (and d!374256 c!217478) b!1325183))

(assert (= (and d!374256 (not c!217478)) b!1325192))

(assert (= (and b!1325192 c!217479) b!1325189))

(assert (= (and b!1325192 (not c!217479)) b!1325185))

(assert (= (and b!1325185 (not res!596144)) b!1325194))

(assert (= (and b!1325194 res!596146) b!1325195))

(assert (= (and b!1325195 res!596141) b!1325191))

(assert (= (and b!1325191 res!596142) b!1325187))

(assert (= (and b!1325194 (not res!596143)) b!1325190))

(assert (= (and b!1325190 res!596147) b!1325182))

(assert (= (and b!1325182 (not res!596148)) b!1325188))

(assert (= (and b!1325188 (not res!596145)) b!1325184))

(assert (= (or b!1325183 b!1325182 b!1325195) bm!89823))

(assert (=> b!1325187 m!1480881))

(declare-fun m!1481873 () Bool)

(assert (=> d!374256 m!1481873))

(declare-fun m!1481875 () Bool)

(assert (=> d!374256 m!1481875))

(assert (=> bm!89823 m!1481873))

(assert (=> b!1325184 m!1480881))

(assert (=> b!1325193 m!1480881))

(assert (=> b!1325193 m!1480881))

(declare-fun m!1481877 () Bool)

(assert (=> b!1325193 m!1481877))

(declare-fun m!1481879 () Bool)

(assert (=> b!1325193 m!1481879))

(assert (=> b!1325193 m!1481877))

(assert (=> b!1325193 m!1481879))

(declare-fun m!1481881 () Bool)

(assert (=> b!1325193 m!1481881))

(assert (=> b!1325191 m!1481879))

(assert (=> b!1325191 m!1481879))

(declare-fun m!1481883 () Bool)

(assert (=> b!1325191 m!1481883))

(assert (=> b!1325188 m!1481879))

(assert (=> b!1325188 m!1481879))

(assert (=> b!1325188 m!1481883))

(declare-fun m!1481885 () Bool)

(assert (=> b!1325186 m!1481885))

(assert (=> b!1324489 d!374256))

(declare-fun d!374258 () Bool)

(assert (=> d!374258 (dynLambda!5917 lambda!54439 (rule!4068 t2!34))))

(declare-fun lt!437721 () Unit!19500)

(declare-fun choose!8121 (List!13493 Int Rule!4446) Unit!19500)

(assert (=> d!374258 (= lt!437721 (choose!8121 rules!2550 lambda!54439 (rule!4068 t2!34)))))

(declare-fun e!849082 () Bool)

(assert (=> d!374258 e!849082))

(declare-fun res!596151 () Bool)

(assert (=> d!374258 (=> (not res!596151) (not e!849082))))

(assert (=> d!374258 (= res!596151 (forall!3313 rules!2550 lambda!54439))))

(assert (=> d!374258 (= (forallContained!574 rules!2550 lambda!54439 (rule!4068 t2!34)) lt!437721)))

(declare-fun b!1325198 () Bool)

(assert (=> b!1325198 (= e!849082 (contains!2386 rules!2550 (rule!4068 t2!34)))))

(assert (= (and d!374258 res!596151) b!1325198))

(declare-fun b_lambda!38875 () Bool)

(assert (=> (not b_lambda!38875) (not d!374258)))

(declare-fun m!1481887 () Bool)

(assert (=> d!374258 m!1481887))

(declare-fun m!1481889 () Bool)

(assert (=> d!374258 m!1481889))

(declare-fun m!1481891 () Bool)

(assert (=> d!374258 m!1481891))

(assert (=> b!1325198 m!1480951))

(assert (=> b!1324489 d!374258))

(declare-fun d!374260 () Bool)

(assert (=> d!374260 (dynLambda!5917 lambda!54439 (rule!4068 t1!34))))

(declare-fun lt!437722 () Unit!19500)

(assert (=> d!374260 (= lt!437722 (choose!8121 rules!2550 lambda!54439 (rule!4068 t1!34)))))

(declare-fun e!849083 () Bool)

(assert (=> d!374260 e!849083))

(declare-fun res!596152 () Bool)

(assert (=> d!374260 (=> (not res!596152) (not e!849083))))

(assert (=> d!374260 (= res!596152 (forall!3313 rules!2550 lambda!54439))))

(assert (=> d!374260 (= (forallContained!574 rules!2550 lambda!54439 (rule!4068 t1!34)) lt!437722)))

(declare-fun b!1325199 () Bool)

(assert (=> b!1325199 (= e!849083 (contains!2386 rules!2550 (rule!4068 t1!34)))))

(assert (= (and d!374260 res!596152) b!1325199))

(declare-fun b_lambda!38877 () Bool)

(assert (=> (not b_lambda!38877) (not d!374260)))

(declare-fun m!1481893 () Bool)

(assert (=> d!374260 m!1481893))

(declare-fun m!1481895 () Bool)

(assert (=> d!374260 m!1481895))

(assert (=> d!374260 m!1481891))

(assert (=> b!1325199 m!1481017))

(assert (=> b!1324489 d!374260))

(declare-fun d!374262 () Bool)

(assert (=> d!374262 (dynLambda!5917 lambda!54439 lt!437471)))

(declare-fun lt!437723 () Unit!19500)

(assert (=> d!374262 (= lt!437723 (choose!8121 rules!2550 lambda!54439 lt!437471))))

(declare-fun e!849084 () Bool)

(assert (=> d!374262 e!849084))

(declare-fun res!596153 () Bool)

(assert (=> d!374262 (=> (not res!596153) (not e!849084))))

(assert (=> d!374262 (= res!596153 (forall!3313 rules!2550 lambda!54439))))

(assert (=> d!374262 (= (forallContained!574 rules!2550 lambda!54439 lt!437471) lt!437723)))

(declare-fun b!1325200 () Bool)

(assert (=> b!1325200 (= e!849084 (contains!2386 rules!2550 lt!437471))))

(assert (= (and d!374262 res!596153) b!1325200))

(declare-fun b_lambda!38879 () Bool)

(assert (=> (not b_lambda!38879) (not d!374262)))

(declare-fun m!1481897 () Bool)

(assert (=> d!374262 m!1481897))

(declare-fun m!1481899 () Bool)

(assert (=> d!374262 m!1481899))

(assert (=> d!374262 m!1481891))

(assert (=> b!1325200 m!1480905))

(assert (=> b!1324489 d!374262))

(declare-fun b!1325201 () Bool)

(declare-fun e!849086 () tuple2!13062)

(assert (=> b!1325201 (= e!849086 (tuple2!13063 Nil!13426 (list!5079 lt!437478)))))

(declare-fun b!1325202 () Bool)

(declare-fun lt!437724 () Option!2594)

(declare-fun lt!437726 () tuple2!13062)

(assert (=> b!1325202 (= e!849086 (tuple2!13063 (Cons!13426 (_1!7416 (v!21190 lt!437724)) (_1!7417 lt!437726)) (_2!7417 lt!437726)))))

(assert (=> b!1325202 (= lt!437726 (lexList!556 thiss!19762 rules!2550 (_2!7416 (v!21190 lt!437724))))))

(declare-fun b!1325203 () Bool)

(declare-fun e!849085 () Bool)

(declare-fun lt!437725 () tuple2!13062)

(assert (=> b!1325203 (= e!849085 (= (_2!7417 lt!437725) (list!5079 lt!437478)))))

(declare-fun d!374264 () Bool)

(assert (=> d!374264 e!849085))

(declare-fun c!217481 () Bool)

(assert (=> d!374264 (= c!217481 (> (size!10951 (_1!7417 lt!437725)) 0))))

(assert (=> d!374264 (= lt!437725 e!849086)))

(declare-fun c!217480 () Bool)

(assert (=> d!374264 (= c!217480 ((_ is Some!2593) lt!437724))))

(assert (=> d!374264 (= lt!437724 (maxPrefix!1028 thiss!19762 rules!2550 (list!5079 lt!437478)))))

(assert (=> d!374264 (= (lexList!556 thiss!19762 rules!2550 (list!5079 lt!437478)) lt!437725)))

(declare-fun b!1325204 () Bool)

(declare-fun e!849087 () Bool)

(assert (=> b!1325204 (= e!849085 e!849087)))

(declare-fun res!596154 () Bool)

(assert (=> b!1325204 (= res!596154 (< (size!10945 (_2!7417 lt!437725)) (size!10945 (list!5079 lt!437478))))))

(assert (=> b!1325204 (=> (not res!596154) (not e!849087))))

(declare-fun b!1325205 () Bool)

(assert (=> b!1325205 (= e!849087 (not (isEmpty!8002 (_1!7417 lt!437725))))))

(assert (= (and d!374264 c!217480) b!1325202))

(assert (= (and d!374264 (not c!217480)) b!1325201))

(assert (= (and d!374264 c!217481) b!1325204))

(assert (= (and d!374264 (not c!217481)) b!1325203))

(assert (= (and b!1325204 res!596154) b!1325205))

(declare-fun m!1481901 () Bool)

(assert (=> b!1325202 m!1481901))

(declare-fun m!1481903 () Bool)

(assert (=> d!374264 m!1481903))

(assert (=> d!374264 m!1480937))

(declare-fun m!1481905 () Bool)

(assert (=> d!374264 m!1481905))

(declare-fun m!1481907 () Bool)

(assert (=> b!1325204 m!1481907))

(assert (=> b!1325204 m!1480937))

(declare-fun m!1481909 () Bool)

(assert (=> b!1325204 m!1481909))

(declare-fun m!1481911 () Bool)

(assert (=> b!1325205 m!1481911))

(assert (=> b!1324463 d!374264))

(declare-fun d!374266 () Bool)

(assert (=> d!374266 (= (list!5079 lt!437478) (list!5082 (c!217330 lt!437478)))))

(declare-fun bs!331362 () Bool)

(assert (= bs!331362 d!374266))

(declare-fun m!1481913 () Bool)

(assert (=> bs!331362 m!1481913))

(assert (=> b!1324463 d!374266))

(declare-fun lt!437729 () Bool)

(declare-fun d!374268 () Bool)

(declare-fun content!1907 (List!13494) (InoxSet Regex!3637))

(assert (=> d!374268 (= lt!437729 (select (content!1907 (map!2951 rules!2550 lambda!54436)) lt!437475))))

(declare-fun e!849093 () Bool)

(assert (=> d!374268 (= lt!437729 e!849093)))

(declare-fun res!596159 () Bool)

(assert (=> d!374268 (=> (not res!596159) (not e!849093))))

(assert (=> d!374268 (= res!596159 ((_ is Cons!13428) (map!2951 rules!2550 lambda!54436)))))

(assert (=> d!374268 (= (contains!2387 (map!2951 rules!2550 lambda!54436) lt!437475) lt!437729)))

(declare-fun b!1325210 () Bool)

(declare-fun e!849092 () Bool)

(assert (=> b!1325210 (= e!849093 e!849092)))

(declare-fun res!596160 () Bool)

(assert (=> b!1325210 (=> res!596160 e!849092)))

(assert (=> b!1325210 (= res!596160 (= (h!18829 (map!2951 rules!2550 lambda!54436)) lt!437475))))

(declare-fun b!1325211 () Bool)

(assert (=> b!1325211 (= e!849092 (contains!2387 (t!118759 (map!2951 rules!2550 lambda!54436)) lt!437475))))

(assert (= (and d!374268 res!596159) b!1325210))

(assert (= (and b!1325210 (not res!596160)) b!1325211))

(assert (=> d!374268 m!1480893))

(declare-fun m!1481915 () Bool)

(assert (=> d!374268 m!1481915))

(declare-fun m!1481917 () Bool)

(assert (=> d!374268 m!1481917))

(declare-fun m!1481919 () Bool)

(assert (=> b!1325211 m!1481919))

(assert (=> b!1324484 d!374268))

(assert (=> b!1324484 d!374246))

(declare-fun d!374270 () Bool)

(declare-fun e!849103 () Bool)

(assert (=> d!374270 e!849103))

(declare-fun res!596165 () Bool)

(assert (=> d!374270 (=> (not res!596165) (not e!849103))))

(declare-fun lt!437734 () Regex!3637)

(declare-fun dynLambda!5926 (Int Regex!3637) Bool)

(assert (=> d!374270 (= res!596165 (dynLambda!5926 lambda!54437 lt!437734))))

(declare-fun e!849104 () Regex!3637)

(assert (=> d!374270 (= lt!437734 e!849104)))

(declare-fun c!217486 () Bool)

(declare-fun e!849102 () Bool)

(assert (=> d!374270 (= c!217486 e!849102)))

(declare-fun res!596166 () Bool)

(assert (=> d!374270 (=> (not res!596166) (not e!849102))))

(assert (=> d!374270 (= res!596166 ((_ is Cons!13428) (map!2951 rules!2550 lambda!54436)))))

(assert (=> d!374270 (exists!349 (map!2951 rules!2550 lambda!54436) lambda!54437)))

(assert (=> d!374270 (= (getWitness!241 (map!2951 rules!2550 lambda!54436) lambda!54437) lt!437734)))

(declare-fun b!1325224 () Bool)

(assert (=> b!1325224 (= e!849102 (dynLambda!5926 lambda!54437 (h!18829 (map!2951 rules!2550 lambda!54436))))))

(declare-fun e!849105 () Regex!3637)

(declare-fun b!1325225 () Bool)

(assert (=> b!1325225 (= e!849105 (getWitness!241 (t!118759 (map!2951 rules!2550 lambda!54436)) lambda!54437))))

(declare-fun b!1325226 () Bool)

(assert (=> b!1325226 (= e!849104 (h!18829 (map!2951 rules!2550 lambda!54436)))))

(declare-fun b!1325227 () Bool)

(assert (=> b!1325227 (= e!849104 e!849105)))

(declare-fun c!217487 () Bool)

(assert (=> b!1325227 (= c!217487 ((_ is Cons!13428) (map!2951 rules!2550 lambda!54436)))))

(declare-fun b!1325228 () Bool)

(declare-fun lt!437735 () Unit!19500)

(declare-fun Unit!19507 () Unit!19500)

(assert (=> b!1325228 (= lt!437735 Unit!19507)))

(assert (=> b!1325228 false))

(declare-fun head!2314 (List!13494) Regex!3637)

(assert (=> b!1325228 (= e!849105 (head!2314 (map!2951 rules!2550 lambda!54436)))))

(declare-fun b!1325229 () Bool)

(assert (=> b!1325229 (= e!849103 (contains!2387 (map!2951 rules!2550 lambda!54436) lt!437734))))

(assert (= (and d!374270 res!596166) b!1325224))

(assert (= (and d!374270 c!217486) b!1325226))

(assert (= (and d!374270 (not c!217486)) b!1325227))

(assert (= (and b!1325227 c!217487) b!1325225))

(assert (= (and b!1325227 (not c!217487)) b!1325228))

(assert (= (and d!374270 res!596165) b!1325229))

(declare-fun b_lambda!38881 () Bool)

(assert (=> (not b_lambda!38881) (not d!374270)))

(declare-fun b_lambda!38883 () Bool)

(assert (=> (not b_lambda!38883) (not b!1325224)))

(declare-fun m!1481921 () Bool)

(assert (=> b!1325225 m!1481921))

(declare-fun m!1481923 () Bool)

(assert (=> d!374270 m!1481923))

(assert (=> d!374270 m!1480893))

(assert (=> d!374270 m!1480895))

(assert (=> b!1325228 m!1480893))

(declare-fun m!1481925 () Bool)

(assert (=> b!1325228 m!1481925))

(declare-fun m!1481927 () Bool)

(assert (=> b!1325224 m!1481927))

(assert (=> b!1325229 m!1480893))

(declare-fun m!1481929 () Bool)

(assert (=> b!1325229 m!1481929))

(assert (=> b!1324484 d!374270))

(declare-fun d!374272 () Bool)

(declare-fun lt!437737 () Bool)

(declare-fun e!849107 () Bool)

(assert (=> d!374272 (= lt!437737 e!849107)))

(declare-fun res!596168 () Bool)

(assert (=> d!374272 (=> (not res!596168) (not e!849107))))

(assert (=> d!374272 (= res!596168 (= (list!5078 (_1!7415 (lex!853 thiss!19762 rules!2550 (print!792 thiss!19762 (singletonSeq!912 t1!34))))) (list!5078 (singletonSeq!912 t1!34))))))

(declare-fun e!849106 () Bool)

(assert (=> d!374272 (= lt!437737 e!849106)))

(declare-fun res!596167 () Bool)

(assert (=> d!374272 (=> (not res!596167) (not e!849106))))

(declare-fun lt!437736 () tuple2!13058)

(assert (=> d!374272 (= res!596167 (= (size!10947 (_1!7415 lt!437736)) 1))))

(assert (=> d!374272 (= lt!437736 (lex!853 thiss!19762 rules!2550 (print!792 thiss!19762 (singletonSeq!912 t1!34))))))

(assert (=> d!374272 (not (isEmpty!7992 rules!2550))))

(assert (=> d!374272 (= (rulesProduceIndividualToken!987 thiss!19762 rules!2550 t1!34) lt!437737)))

(declare-fun b!1325230 () Bool)

(declare-fun res!596169 () Bool)

(assert (=> b!1325230 (=> (not res!596169) (not e!849106))))

(assert (=> b!1325230 (= res!596169 (= (apply!3099 (_1!7415 lt!437736) 0) t1!34))))

(declare-fun b!1325231 () Bool)

(assert (=> b!1325231 (= e!849106 (isEmpty!7993 (_2!7415 lt!437736)))))

(declare-fun b!1325232 () Bool)

(assert (=> b!1325232 (= e!849107 (isEmpty!7993 (_2!7415 (lex!853 thiss!19762 rules!2550 (print!792 thiss!19762 (singletonSeq!912 t1!34))))))))

(assert (= (and d!374272 res!596167) b!1325230))

(assert (= (and b!1325230 res!596169) b!1325231))

(assert (= (and d!374272 res!596168) b!1325232))

(declare-fun m!1481931 () Bool)

(assert (=> d!374272 m!1481931))

(assert (=> d!374272 m!1480969))

(assert (=> d!374272 m!1481019))

(assert (=> d!374272 m!1480969))

(assert (=> d!374272 m!1480971))

(assert (=> d!374272 m!1480971))

(declare-fun m!1481933 () Bool)

(assert (=> d!374272 m!1481933))

(assert (=> d!374272 m!1480969))

(assert (=> d!374272 m!1481345))

(declare-fun m!1481935 () Bool)

(assert (=> d!374272 m!1481935))

(declare-fun m!1481937 () Bool)

(assert (=> b!1325230 m!1481937))

(declare-fun m!1481939 () Bool)

(assert (=> b!1325231 m!1481939))

(assert (=> b!1325232 m!1480969))

(assert (=> b!1325232 m!1480969))

(assert (=> b!1325232 m!1480971))

(assert (=> b!1325232 m!1480971))

(assert (=> b!1325232 m!1481933))

(declare-fun m!1481941 () Bool)

(assert (=> b!1325232 m!1481941))

(assert (=> b!1324485 d!374272))

(declare-fun d!374274 () Bool)

(assert (=> d!374274 (= (inv!17792 (tag!2585 (rule!4068 t1!34))) (= (mod (str.len (value!75837 (tag!2585 (rule!4068 t1!34)))) 2) 0))))

(assert (=> b!1324464 d!374274))

(declare-fun d!374276 () Bool)

(declare-fun res!596170 () Bool)

(declare-fun e!849108 () Bool)

(assert (=> d!374276 (=> (not res!596170) (not e!849108))))

(assert (=> d!374276 (= res!596170 (semiInverseModEq!878 (toChars!3413 (transformation!2323 (rule!4068 t1!34))) (toValue!3554 (transformation!2323 (rule!4068 t1!34)))))))

(assert (=> d!374276 (= (inv!17795 (transformation!2323 (rule!4068 t1!34))) e!849108)))

(declare-fun b!1325233 () Bool)

(assert (=> b!1325233 (= e!849108 (equivClasses!837 (toChars!3413 (transformation!2323 (rule!4068 t1!34))) (toValue!3554 (transformation!2323 (rule!4068 t1!34)))))))

(assert (= (and d!374276 res!596170) b!1325233))

(declare-fun m!1481943 () Bool)

(assert (=> d!374276 m!1481943))

(declare-fun m!1481945 () Bool)

(assert (=> b!1325233 m!1481945))

(assert (=> b!1324464 d!374276))

(declare-fun d!374278 () Bool)

(declare-fun lt!437738 () Bool)

(assert (=> d!374278 (= lt!437738 (isEmpty!7998 (list!5079 (_2!7415 lt!437490))))))

(assert (=> d!374278 (= lt!437738 (isEmpty!8000 (c!217330 (_2!7415 lt!437490))))))

(assert (=> d!374278 (= (isEmpty!7993 (_2!7415 lt!437490)) lt!437738)))

(declare-fun bs!331363 () Bool)

(assert (= bs!331363 d!374278))

(declare-fun m!1481947 () Bool)

(assert (=> bs!331363 m!1481947))

(assert (=> bs!331363 m!1481947))

(declare-fun m!1481949 () Bool)

(assert (=> bs!331363 m!1481949))

(declare-fun m!1481951 () Bool)

(assert (=> bs!331363 m!1481951))

(assert (=> b!1324465 d!374278))

(declare-fun d!374280 () Bool)

(declare-fun lt!437739 () Bool)

(assert (=> d!374280 (= lt!437739 (select (content!1904 (usedCharacters!188 (regex!2323 (rule!4068 t1!34)))) lt!437468))))

(declare-fun e!849109 () Bool)

(assert (=> d!374280 (= lt!437739 e!849109)))

(declare-fun res!596172 () Bool)

(assert (=> d!374280 (=> (not res!596172) (not e!849109))))

(assert (=> d!374280 (= res!596172 ((_ is Cons!13425) (usedCharacters!188 (regex!2323 (rule!4068 t1!34)))))))

(assert (=> d!374280 (= (contains!2385 (usedCharacters!188 (regex!2323 (rule!4068 t1!34))) lt!437468) lt!437739)))

(declare-fun b!1325234 () Bool)

(declare-fun e!849110 () Bool)

(assert (=> b!1325234 (= e!849109 e!849110)))

(declare-fun res!596171 () Bool)

(assert (=> b!1325234 (=> res!596171 e!849110)))

(assert (=> b!1325234 (= res!596171 (= (h!18826 (usedCharacters!188 (regex!2323 (rule!4068 t1!34)))) lt!437468))))

(declare-fun b!1325235 () Bool)

(assert (=> b!1325235 (= e!849110 (contains!2385 (t!118756 (usedCharacters!188 (regex!2323 (rule!4068 t1!34)))) lt!437468))))

(assert (= (and d!374280 res!596172) b!1325234))

(assert (= (and b!1325234 (not res!596171)) b!1325235))

(assert (=> d!374280 m!1480933))

(declare-fun m!1481953 () Bool)

(assert (=> d!374280 m!1481953))

(declare-fun m!1481955 () Bool)

(assert (=> d!374280 m!1481955))

(declare-fun m!1481957 () Bool)

(assert (=> b!1325235 m!1481957))

(assert (=> b!1324486 d!374280))

(declare-fun b!1325236 () Bool)

(declare-fun c!217491 () Bool)

(assert (=> b!1325236 (= c!217491 ((_ is Star!3637) (regex!2323 (rule!4068 t1!34))))))

(declare-fun e!849114 () List!13491)

(declare-fun e!849112 () List!13491)

(assert (=> b!1325236 (= e!849114 e!849112)))

(declare-fun b!1325238 () Bool)

(declare-fun e!849113 () List!13491)

(assert (=> b!1325238 (= e!849112 e!849113)))

(declare-fun c!217488 () Bool)

(assert (=> b!1325238 (= c!217488 ((_ is Union!3637) (regex!2323 (rule!4068 t1!34))))))

(declare-fun b!1325239 () Bool)

(declare-fun e!849111 () List!13491)

(assert (=> b!1325239 (= e!849111 e!849114)))

(declare-fun c!217489 () Bool)

(assert (=> b!1325239 (= c!217489 ((_ is ElementMatch!3637) (regex!2323 (rule!4068 t1!34))))))

(declare-fun bm!89824 () Bool)

(declare-fun call!89831 () List!13491)

(assert (=> bm!89824 (= call!89831 (usedCharacters!188 (ite c!217491 (reg!3966 (regex!2323 (rule!4068 t1!34))) (ite c!217488 (regTwo!7787 (regex!2323 (rule!4068 t1!34))) (regOne!7786 (regex!2323 (rule!4068 t1!34)))))))))

(declare-fun bm!89825 () Bool)

(declare-fun call!89829 () List!13491)

(assert (=> bm!89825 (= call!89829 call!89831)))

(declare-fun b!1325240 () Bool)

(declare-fun call!89832 () List!13491)

(assert (=> b!1325240 (= e!849113 call!89832)))

(declare-fun call!89830 () List!13491)

(declare-fun bm!89826 () Bool)

(assert (=> bm!89826 (= call!89832 (++!3430 (ite c!217488 call!89830 call!89829) (ite c!217488 call!89829 call!89830)))))

(declare-fun b!1325241 () Bool)

(assert (=> b!1325241 (= e!849111 Nil!13425)))

(declare-fun b!1325242 () Bool)

(assert (=> b!1325242 (= e!849113 call!89832)))

(declare-fun d!374282 () Bool)

(declare-fun c!217490 () Bool)

(assert (=> d!374282 (= c!217490 (or ((_ is EmptyExpr!3637) (regex!2323 (rule!4068 t1!34))) ((_ is EmptyLang!3637) (regex!2323 (rule!4068 t1!34)))))))

(assert (=> d!374282 (= (usedCharacters!188 (regex!2323 (rule!4068 t1!34))) e!849111)))

(declare-fun b!1325237 () Bool)

(assert (=> b!1325237 (= e!849112 call!89831)))

(declare-fun b!1325243 () Bool)

(assert (=> b!1325243 (= e!849114 (Cons!13425 (c!217331 (regex!2323 (rule!4068 t1!34))) Nil!13425))))

(declare-fun bm!89827 () Bool)

(assert (=> bm!89827 (= call!89830 (usedCharacters!188 (ite c!217488 (regOne!7787 (regex!2323 (rule!4068 t1!34))) (regTwo!7786 (regex!2323 (rule!4068 t1!34))))))))

(assert (= (and d!374282 c!217490) b!1325241))

(assert (= (and d!374282 (not c!217490)) b!1325239))

(assert (= (and b!1325239 c!217489) b!1325243))

(assert (= (and b!1325239 (not c!217489)) b!1325236))

(assert (= (and b!1325236 c!217491) b!1325237))

(assert (= (and b!1325236 (not c!217491)) b!1325238))

(assert (= (and b!1325238 c!217488) b!1325242))

(assert (= (and b!1325238 (not c!217488)) b!1325240))

(assert (= (or b!1325242 b!1325240) bm!89827))

(assert (= (or b!1325242 b!1325240) bm!89825))

(assert (= (or b!1325242 b!1325240) bm!89826))

(assert (= (or b!1325237 bm!89825) bm!89824))

(declare-fun m!1481959 () Bool)

(assert (=> bm!89824 m!1481959))

(declare-fun m!1481961 () Bool)

(assert (=> bm!89826 m!1481961))

(declare-fun m!1481963 () Bool)

(assert (=> bm!89827 m!1481963))

(assert (=> b!1324486 d!374282))

(declare-fun d!374284 () Bool)

(declare-fun lt!437740 () Bool)

(assert (=> d!374284 (= lt!437740 (select (content!1905 rules!2550) (rule!4068 t2!34)))))

(declare-fun e!849116 () Bool)

(assert (=> d!374284 (= lt!437740 e!849116)))

(declare-fun res!596173 () Bool)

(assert (=> d!374284 (=> (not res!596173) (not e!849116))))

(assert (=> d!374284 (= res!596173 ((_ is Cons!13427) rules!2550))))

(assert (=> d!374284 (= (contains!2386 rules!2550 (rule!4068 t2!34)) lt!437740)))

(declare-fun b!1325244 () Bool)

(declare-fun e!849115 () Bool)

(assert (=> b!1325244 (= e!849116 e!849115)))

(declare-fun res!596174 () Bool)

(assert (=> b!1325244 (=> res!596174 e!849115)))

(assert (=> b!1325244 (= res!596174 (= (h!18828 rules!2550) (rule!4068 t2!34)))))

(declare-fun b!1325245 () Bool)

(assert (=> b!1325245 (= e!849115 (contains!2386 (t!118758 rules!2550) (rule!4068 t2!34)))))

(assert (= (and d!374284 res!596173) b!1325244))

(assert (= (and b!1325244 (not res!596174)) b!1325245))

(assert (=> d!374284 m!1481285))

(declare-fun m!1481965 () Bool)

(assert (=> d!374284 m!1481965))

(declare-fun m!1481967 () Bool)

(assert (=> b!1325245 m!1481967))

(assert (=> b!1324493 d!374284))

(declare-fun d!374286 () Bool)

(declare-fun prefixMatchZipperSequence!190 (Regex!3637 BalanceConc!8772) Bool)

(declare-fun ++!3432 (BalanceConc!8772 BalanceConc!8772) BalanceConc!8772)

(declare-fun singletonSeq!914 (C!7564) BalanceConc!8772)

(assert (=> d!374286 (= (separableTokensPredicate!301 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!190 (rulesRegex!208 thiss!19762 rules!2550) (++!3432 (charsOf!1295 t1!34) (singletonSeq!914 (apply!3093 (charsOf!1295 t2!34) 0))))))))

(declare-fun bs!331364 () Bool)

(assert (= bs!331364 d!374286))

(assert (=> bs!331364 m!1480987))

(assert (=> bs!331364 m!1480987))

(declare-fun m!1481969 () Bool)

(assert (=> bs!331364 m!1481969))

(declare-fun m!1481971 () Bool)

(assert (=> bs!331364 m!1481971))

(assert (=> bs!331364 m!1480961))

(declare-fun m!1481973 () Bool)

(assert (=> bs!331364 m!1481973))

(assert (=> bs!331364 m!1480979))

(declare-fun m!1481975 () Bool)

(assert (=> bs!331364 m!1481975))

(assert (=> bs!331364 m!1481969))

(assert (=> bs!331364 m!1480979))

(assert (=> bs!331364 m!1480961))

(assert (=> bs!331364 m!1481973))

(assert (=> bs!331364 m!1481975))

(assert (=> b!1324450 d!374286))

(declare-fun d!374288 () Bool)

(declare-fun lt!437741 () Bool)

(assert (=> d!374288 (= lt!437741 (select (content!1904 lt!437486) lt!437468))))

(declare-fun e!849117 () Bool)

(assert (=> d!374288 (= lt!437741 e!849117)))

(declare-fun res!596176 () Bool)

(assert (=> d!374288 (=> (not res!596176) (not e!849117))))

(assert (=> d!374288 (= res!596176 ((_ is Cons!13425) lt!437486))))

(assert (=> d!374288 (= (contains!2385 lt!437486 lt!437468) lt!437741)))

(declare-fun b!1325246 () Bool)

(declare-fun e!849118 () Bool)

(assert (=> b!1325246 (= e!849117 e!849118)))

(declare-fun res!596175 () Bool)

(assert (=> b!1325246 (=> res!596175 e!849118)))

(assert (=> b!1325246 (= res!596175 (= (h!18826 lt!437486) lt!437468))))

(declare-fun b!1325247 () Bool)

(assert (=> b!1325247 (= e!849118 (contains!2385 (t!118756 lt!437486) lt!437468))))

(assert (= (and d!374288 res!596176) b!1325246))

(assert (= (and b!1325246 (not res!596175)) b!1325247))

(declare-fun m!1481977 () Bool)

(assert (=> d!374288 m!1481977))

(declare-fun m!1481979 () Bool)

(assert (=> d!374288 m!1481979))

(declare-fun m!1481981 () Bool)

(assert (=> b!1325247 m!1481981))

(assert (=> b!1324451 d!374288))

(declare-fun d!374290 () Bool)

(assert (=> d!374290 (not (matchR!1639 (regex!2323 (rule!4068 t1!34)) lt!437477))))

(declare-fun lt!437744 () Unit!19500)

(declare-fun choose!8122 (Regex!3637 List!13491 C!7564) Unit!19500)

(assert (=> d!374290 (= lt!437744 (choose!8122 (regex!2323 (rule!4068 t1!34)) lt!437477 (head!2310 lt!437477)))))

(assert (=> d!374290 (validRegex!1561 (regex!2323 (rule!4068 t1!34)))))

(assert (=> d!374290 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!134 (regex!2323 (rule!4068 t1!34)) lt!437477 (head!2310 lt!437477)) lt!437744)))

(declare-fun bs!331365 () Bool)

(assert (= bs!331365 d!374290))

(assert (=> bs!331365 m!1480995))

(assert (=> bs!331365 m!1480881))

(declare-fun m!1481983 () Bool)

(assert (=> bs!331365 m!1481983))

(assert (=> bs!331365 m!1481875))

(assert (=> b!1324473 d!374290))

(declare-fun d!374292 () Bool)

(assert (=> d!374292 (= (head!2310 lt!437477) (h!18826 lt!437477))))

(assert (=> b!1324473 d!374292))

(declare-fun d!374294 () Bool)

(declare-fun e!849120 () Bool)

(assert (=> d!374294 e!849120))

(declare-fun res!596180 () Bool)

(assert (=> d!374294 (=> res!596180 e!849120)))

(declare-fun lt!437745 () Option!2594)

(assert (=> d!374294 (= res!596180 (isEmpty!8003 lt!437745))))

(declare-fun e!849119 () Option!2594)

(assert (=> d!374294 (= lt!437745 e!849119)))

(declare-fun c!217493 () Bool)

(assert (=> d!374294 (= c!217493 (and ((_ is Cons!13427) rules!2550) ((_ is Nil!13427) (t!118758 rules!2550))))))

(declare-fun lt!437747 () Unit!19500)

(declare-fun lt!437749 () Unit!19500)

(assert (=> d!374294 (= lt!437747 lt!437749)))

(assert (=> d!374294 (isPrefix!1084 lt!437480 lt!437480)))

(assert (=> d!374294 (= lt!437749 (lemmaIsPrefixRefl!763 lt!437480 lt!437480))))

(assert (=> d!374294 (rulesValidInductive!736 thiss!19762 rules!2550)))

(assert (=> d!374294 (= (maxPrefix!1028 thiss!19762 rules!2550 lt!437480) lt!437745)))

(declare-fun call!89833 () Option!2594)

(declare-fun bm!89828 () Bool)

(assert (=> bm!89828 (= call!89833 (maxPrefixOneRule!589 thiss!19762 (h!18828 rules!2550) lt!437480))))

(declare-fun b!1325248 () Bool)

(declare-fun res!596178 () Bool)

(declare-fun e!849121 () Bool)

(assert (=> b!1325248 (=> (not res!596178) (not e!849121))))

(assert (=> b!1325248 (= res!596178 (= (value!75838 (_1!7416 (get!4274 lt!437745))) (apply!3101 (transformation!2323 (rule!4068 (_1!7416 (get!4274 lt!437745)))) (seqFromList!1607 (originalCharacters!3185 (_1!7416 (get!4274 lt!437745)))))))))

(declare-fun b!1325249 () Bool)

(assert (=> b!1325249 (= e!849119 call!89833)))

(declare-fun b!1325250 () Bool)

(declare-fun res!596183 () Bool)

(assert (=> b!1325250 (=> (not res!596183) (not e!849121))))

(assert (=> b!1325250 (= res!596183 (matchR!1639 (regex!2323 (rule!4068 (_1!7416 (get!4274 lt!437745)))) (list!5079 (charsOf!1295 (_1!7416 (get!4274 lt!437745))))))))

(declare-fun b!1325251 () Bool)

(assert (=> b!1325251 (= e!849120 e!849121)))

(declare-fun res!596179 () Bool)

(assert (=> b!1325251 (=> (not res!596179) (not e!849121))))

(assert (=> b!1325251 (= res!596179 (isDefined!2187 lt!437745))))

(declare-fun b!1325252 () Bool)

(declare-fun res!596181 () Bool)

(assert (=> b!1325252 (=> (not res!596181) (not e!849121))))

(assert (=> b!1325252 (= res!596181 (= (++!3430 (list!5079 (charsOf!1295 (_1!7416 (get!4274 lt!437745)))) (_2!7416 (get!4274 lt!437745))) lt!437480))))

(declare-fun b!1325253 () Bool)

(declare-fun res!596177 () Bool)

(assert (=> b!1325253 (=> (not res!596177) (not e!849121))))

(assert (=> b!1325253 (= res!596177 (= (list!5079 (charsOf!1295 (_1!7416 (get!4274 lt!437745)))) (originalCharacters!3185 (_1!7416 (get!4274 lt!437745)))))))

(declare-fun b!1325254 () Bool)

(assert (=> b!1325254 (= e!849121 (contains!2386 rules!2550 (rule!4068 (_1!7416 (get!4274 lt!437745)))))))

(declare-fun b!1325255 () Bool)

(declare-fun lt!437746 () Option!2594)

(declare-fun lt!437748 () Option!2594)

(assert (=> b!1325255 (= e!849119 (ite (and ((_ is None!2593) lt!437746) ((_ is None!2593) lt!437748)) None!2593 (ite ((_ is None!2593) lt!437748) lt!437746 (ite ((_ is None!2593) lt!437746) lt!437748 (ite (>= (size!10940 (_1!7416 (v!21190 lt!437746))) (size!10940 (_1!7416 (v!21190 lt!437748)))) lt!437746 lt!437748)))))))

(assert (=> b!1325255 (= lt!437746 call!89833)))

(assert (=> b!1325255 (= lt!437748 (maxPrefix!1028 thiss!19762 (t!118758 rules!2550) lt!437480))))

(declare-fun b!1325256 () Bool)

(declare-fun res!596182 () Bool)

(assert (=> b!1325256 (=> (not res!596182) (not e!849121))))

(assert (=> b!1325256 (= res!596182 (< (size!10945 (_2!7416 (get!4274 lt!437745))) (size!10945 lt!437480)))))

(assert (= (and d!374294 c!217493) b!1325249))

(assert (= (and d!374294 (not c!217493)) b!1325255))

(assert (= (or b!1325249 b!1325255) bm!89828))

(assert (= (and d!374294 (not res!596180)) b!1325251))

(assert (= (and b!1325251 res!596179) b!1325253))

(assert (= (and b!1325253 res!596177) b!1325256))

(assert (= (and b!1325256 res!596182) b!1325252))

(assert (= (and b!1325252 res!596181) b!1325248))

(assert (= (and b!1325248 res!596178) b!1325250))

(assert (= (and b!1325250 res!596183) b!1325254))

(declare-fun m!1481985 () Bool)

(assert (=> b!1325256 m!1481985))

(declare-fun m!1481987 () Bool)

(assert (=> b!1325256 m!1481987))

(declare-fun m!1481989 () Bool)

(assert (=> b!1325256 m!1481989))

(declare-fun m!1481991 () Bool)

(assert (=> d!374294 m!1481991))

(declare-fun m!1481993 () Bool)

(assert (=> d!374294 m!1481993))

(declare-fun m!1481995 () Bool)

(assert (=> d!374294 m!1481995))

(assert (=> d!374294 m!1481791))

(declare-fun m!1481997 () Bool)

(assert (=> b!1325255 m!1481997))

(assert (=> b!1325248 m!1481985))

(declare-fun m!1481999 () Bool)

(assert (=> b!1325248 m!1481999))

(assert (=> b!1325248 m!1481999))

(declare-fun m!1482001 () Bool)

(assert (=> b!1325248 m!1482001))

(declare-fun m!1482003 () Bool)

(assert (=> b!1325251 m!1482003))

(assert (=> b!1325250 m!1481985))

(declare-fun m!1482005 () Bool)

(assert (=> b!1325250 m!1482005))

(assert (=> b!1325250 m!1482005))

(declare-fun m!1482007 () Bool)

(assert (=> b!1325250 m!1482007))

(assert (=> b!1325250 m!1482007))

(declare-fun m!1482009 () Bool)

(assert (=> b!1325250 m!1482009))

(assert (=> b!1325254 m!1481985))

(declare-fun m!1482011 () Bool)

(assert (=> b!1325254 m!1482011))

(declare-fun m!1482013 () Bool)

(assert (=> bm!89828 m!1482013))

(assert (=> b!1325253 m!1481985))

(assert (=> b!1325253 m!1482005))

(assert (=> b!1325253 m!1482005))

(assert (=> b!1325253 m!1482007))

(assert (=> b!1325252 m!1481985))

(assert (=> b!1325252 m!1482005))

(assert (=> b!1325252 m!1482005))

(assert (=> b!1325252 m!1482007))

(assert (=> b!1325252 m!1482007))

(declare-fun m!1482015 () Bool)

(assert (=> b!1325252 m!1482015))

(assert (=> b!1324469 d!374294))

(declare-fun d!374296 () Bool)

(assert (=> d!374296 (= (list!5079 lt!437487) (list!5082 (c!217330 lt!437487)))))

(declare-fun bs!331366 () Bool)

(assert (= bs!331366 d!374296))

(declare-fun m!1482017 () Bool)

(assert (=> bs!331366 m!1482017))

(assert (=> b!1324469 d!374296))

(declare-fun d!374298 () Bool)

(declare-fun lt!437750 () Bool)

(assert (=> d!374298 (= lt!437750 (select (content!1904 lt!437486) lt!437474))))

(declare-fun e!849122 () Bool)

(assert (=> d!374298 (= lt!437750 e!849122)))

(declare-fun res!596185 () Bool)

(assert (=> d!374298 (=> (not res!596185) (not e!849122))))

(assert (=> d!374298 (= res!596185 ((_ is Cons!13425) lt!437486))))

(assert (=> d!374298 (= (contains!2385 lt!437486 lt!437474) lt!437750)))

(declare-fun b!1325257 () Bool)

(declare-fun e!849123 () Bool)

(assert (=> b!1325257 (= e!849122 e!849123)))

(declare-fun res!596184 () Bool)

(assert (=> b!1325257 (=> res!596184 e!849123)))

(assert (=> b!1325257 (= res!596184 (= (h!18826 lt!437486) lt!437474))))

(declare-fun b!1325258 () Bool)

(assert (=> b!1325258 (= e!849123 (contains!2385 (t!118756 lt!437486) lt!437474))))

(assert (= (and d!374298 res!596185) b!1325257))

(assert (= (and b!1325257 (not res!596184)) b!1325258))

(assert (=> d!374298 m!1481977))

(declare-fun m!1482019 () Bool)

(assert (=> d!374298 m!1482019))

(declare-fun m!1482021 () Bool)

(assert (=> b!1325258 m!1482021))

(assert (=> b!1324490 d!374298))

(declare-fun d!374300 () Bool)

(declare-fun res!596188 () Bool)

(declare-fun e!849126 () Bool)

(assert (=> d!374300 (=> (not res!596188) (not e!849126))))

(declare-fun rulesValid!847 (LexerInterface!2018 List!13493) Bool)

(assert (=> d!374300 (= res!596188 (rulesValid!847 thiss!19762 rules!2550))))

(assert (=> d!374300 (= (rulesInvariant!1888 thiss!19762 rules!2550) e!849126)))

(declare-fun b!1325261 () Bool)

(declare-datatypes ((List!13496 0))(
  ( (Nil!13430) (Cons!13430 (h!18831 String!16301) (t!118797 List!13496)) )
))
(declare-fun noDuplicateTag!847 (LexerInterface!2018 List!13493 List!13496) Bool)

(assert (=> b!1325261 (= e!849126 (noDuplicateTag!847 thiss!19762 rules!2550 Nil!13430))))

(assert (= (and d!374300 res!596188) b!1325261))

(declare-fun m!1482023 () Bool)

(assert (=> d!374300 m!1482023))

(declare-fun m!1482025 () Bool)

(assert (=> b!1325261 m!1482025))

(assert (=> b!1324491 d!374300))

(declare-fun d!374302 () Bool)

(assert (=> d!374302 (= (list!5078 (_1!7415 lt!437490)) (list!5083 (c!217332 (_1!7415 lt!437490))))))

(declare-fun bs!331367 () Bool)

(assert (= bs!331367 d!374302))

(declare-fun m!1482027 () Bool)

(assert (=> bs!331367 m!1482027))

(assert (=> b!1324448 d!374302))

(declare-fun b!1325262 () Bool)

(declare-fun e!849127 () Bool)

(declare-fun e!849129 () Bool)

(assert (=> b!1325262 (= e!849127 e!849129)))

(declare-fun res!596190 () Bool)

(declare-fun lt!437751 () tuple2!13058)

(assert (=> b!1325262 (= res!596190 (< (size!10941 (_2!7415 lt!437751)) (size!10941 lt!437478)))))

(assert (=> b!1325262 (=> (not res!596190) (not e!849129))))

(declare-fun b!1325263 () Bool)

(declare-fun e!849128 () Bool)

(assert (=> b!1325263 (= e!849128 (= (list!5079 (_2!7415 lt!437751)) (_2!7417 (lexList!556 thiss!19762 rules!2550 (list!5079 lt!437478)))))))

(declare-fun b!1325264 () Bool)

(assert (=> b!1325264 (= e!849127 (= (_2!7415 lt!437751) lt!437478))))

(declare-fun b!1325265 () Bool)

(declare-fun res!596189 () Bool)

(assert (=> b!1325265 (=> (not res!596189) (not e!849128))))

(assert (=> b!1325265 (= res!596189 (= (list!5078 (_1!7415 lt!437751)) (_1!7417 (lexList!556 thiss!19762 rules!2550 (list!5079 lt!437478)))))))

(declare-fun d!374304 () Bool)

(assert (=> d!374304 e!849128))

(declare-fun res!596191 () Bool)

(assert (=> d!374304 (=> (not res!596191) (not e!849128))))

(assert (=> d!374304 (= res!596191 e!849127)))

(declare-fun c!217494 () Bool)

(assert (=> d!374304 (= c!217494 (> (size!10947 (_1!7415 lt!437751)) 0))))

(assert (=> d!374304 (= lt!437751 (lexTailRecV2!375 thiss!19762 rules!2550 lt!437478 (BalanceConc!8773 Empty!4416) lt!437478 (BalanceConc!8775 Empty!4417)))))

(assert (=> d!374304 (= (lex!853 thiss!19762 rules!2550 lt!437478) lt!437751)))

(declare-fun b!1325266 () Bool)

(assert (=> b!1325266 (= e!849129 (not (isEmpty!7999 (_1!7415 lt!437751))))))

(assert (= (and d!374304 c!217494) b!1325262))

(assert (= (and d!374304 (not c!217494)) b!1325264))

(assert (= (and b!1325262 res!596190) b!1325266))

(assert (= (and d!374304 res!596191) b!1325265))

(assert (= (and b!1325265 res!596189) b!1325263))

(declare-fun m!1482029 () Bool)

(assert (=> b!1325263 m!1482029))

(assert (=> b!1325263 m!1480937))

(assert (=> b!1325263 m!1480937))

(assert (=> b!1325263 m!1480939))

(declare-fun m!1482031 () Bool)

(assert (=> b!1325262 m!1482031))

(declare-fun m!1482033 () Bool)

(assert (=> b!1325262 m!1482033))

(declare-fun m!1482035 () Bool)

(assert (=> d!374304 m!1482035))

(declare-fun m!1482037 () Bool)

(assert (=> d!374304 m!1482037))

(declare-fun m!1482039 () Bool)

(assert (=> b!1325265 m!1482039))

(assert (=> b!1325265 m!1480937))

(assert (=> b!1325265 m!1480937))

(assert (=> b!1325265 m!1480939))

(declare-fun m!1482041 () Bool)

(assert (=> b!1325266 m!1482041))

(assert (=> b!1324448 d!374304))

(declare-fun d!374306 () Bool)

(declare-fun lt!437752 () BalanceConc!8772)

(assert (=> d!374306 (= (list!5079 lt!437752) (printList!570 thiss!19762 (list!5078 (singletonSeq!912 t2!34))))))

(assert (=> d!374306 (= lt!437752 (printTailRec!552 thiss!19762 (singletonSeq!912 t2!34) 0 (BalanceConc!8773 Empty!4416)))))

(assert (=> d!374306 (= (print!792 thiss!19762 (singletonSeq!912 t2!34)) lt!437752)))

(declare-fun bs!331368 () Bool)

(assert (= bs!331368 d!374306))

(declare-fun m!1482043 () Bool)

(assert (=> bs!331368 m!1482043))

(assert (=> bs!331368 m!1480913))

(assert (=> bs!331368 m!1481689))

(assert (=> bs!331368 m!1481689))

(declare-fun m!1482045 () Bool)

(assert (=> bs!331368 m!1482045))

(assert (=> bs!331368 m!1480913))

(declare-fun m!1482047 () Bool)

(assert (=> bs!331368 m!1482047))

(assert (=> b!1324448 d!374306))

(declare-fun d!374308 () Bool)

(declare-fun e!849130 () Bool)

(assert (=> d!374308 e!849130))

(declare-fun res!596192 () Bool)

(assert (=> d!374308 (=> (not res!596192) (not e!849130))))

(declare-fun lt!437753 () BalanceConc!8774)

(assert (=> d!374308 (= res!596192 (= (list!5078 lt!437753) (Cons!13426 t2!34 Nil!13426)))))

(assert (=> d!374308 (= lt!437753 (singleton!396 t2!34))))

(assert (=> d!374308 (= (singletonSeq!912 t2!34) lt!437753)))

(declare-fun b!1325267 () Bool)

(assert (=> b!1325267 (= e!849130 (isBalanced!1290 (c!217332 lt!437753)))))

(assert (= (and d!374308 res!596192) b!1325267))

(declare-fun m!1482049 () Bool)

(assert (=> d!374308 m!1482049))

(declare-fun m!1482051 () Bool)

(assert (=> d!374308 m!1482051))

(declare-fun m!1482053 () Bool)

(assert (=> b!1325267 m!1482053))

(assert (=> b!1324448 d!374308))

(declare-fun d!374310 () Bool)

(declare-fun res!596197 () Bool)

(declare-fun e!849135 () Bool)

(assert (=> d!374310 (=> res!596197 e!849135)))

(assert (=> d!374310 (= res!596197 (not ((_ is Cons!13427) rules!2550)))))

(assert (=> d!374310 (= (sepAndNonSepRulesDisjointChars!696 rules!2550 rules!2550) e!849135)))

(declare-fun b!1325272 () Bool)

(declare-fun e!849136 () Bool)

(assert (=> b!1325272 (= e!849135 e!849136)))

(declare-fun res!596198 () Bool)

(assert (=> b!1325272 (=> (not res!596198) (not e!849136))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!322 (Rule!4446 List!13493) Bool)

(assert (=> b!1325272 (= res!596198 (ruleDisjointCharsFromAllFromOtherType!322 (h!18828 rules!2550) rules!2550))))

(declare-fun b!1325273 () Bool)

(assert (=> b!1325273 (= e!849136 (sepAndNonSepRulesDisjointChars!696 rules!2550 (t!118758 rules!2550)))))

(assert (= (and d!374310 (not res!596197)) b!1325272))

(assert (= (and b!1325272 res!596198) b!1325273))

(declare-fun m!1482055 () Bool)

(assert (=> b!1325272 m!1482055))

(declare-fun m!1482057 () Bool)

(assert (=> b!1325273 m!1482057))

(assert (=> b!1324449 d!374310))

(declare-fun d!374312 () Bool)

(declare-fun choose!8123 (Int) Bool)

(assert (=> d!374312 (= (Exists!795 lambda!54435) (choose!8123 lambda!54435))))

(declare-fun bs!331369 () Bool)

(assert (= bs!331369 d!374312))

(declare-fun m!1482059 () Bool)

(assert (=> bs!331369 m!1482059))

(assert (=> b!1324470 d!374312))

(declare-fun bs!331370 () Bool)

(declare-fun d!374314 () Bool)

(assert (= bs!331370 (and d!374314 b!1324470)))

(declare-fun lambda!54483 () Int)

(assert (=> bs!331370 (= lambda!54483 lambda!54435)))

(assert (=> d!374314 true))

(assert (=> d!374314 true))

(assert (=> d!374314 (Exists!795 lambda!54483)))

(declare-fun lt!437756 () Unit!19500)

(declare-fun choose!8124 (Regex!3637 List!13491) Unit!19500)

(assert (=> d!374314 (= lt!437756 (choose!8124 lt!437465 lt!437470))))

(assert (=> d!374314 (validRegex!1561 lt!437465)))

(assert (=> d!374314 (= (lemmaPrefixMatchThenExistsStringThatMatches!113 lt!437465 lt!437470) lt!437756)))

(declare-fun bs!331371 () Bool)

(assert (= bs!331371 d!374314))

(declare-fun m!1482061 () Bool)

(assert (=> bs!331371 m!1482061))

(declare-fun m!1482063 () Bool)

(assert (=> bs!331371 m!1482063))

(assert (=> bs!331371 m!1481485))

(assert (=> b!1324470 d!374314))

(declare-fun b!1325280 () Bool)

(declare-fun e!849141 () Bool)

(declare-fun tp_is_empty!6647 () Bool)

(declare-fun tp!384222 () Bool)

(assert (=> b!1325280 (= e!849141 (and tp_is_empty!6647 tp!384222))))

(assert (=> b!1324460 (= tp!384163 e!849141)))

(assert (= (and b!1324460 ((_ is Cons!13425) (originalCharacters!3185 t1!34))) b!1325280))

(declare-fun b!1325293 () Bool)

(declare-fun e!849144 () Bool)

(declare-fun tp!384234 () Bool)

(assert (=> b!1325293 (= e!849144 tp!384234)))

(declare-fun b!1325291 () Bool)

(assert (=> b!1325291 (= e!849144 tp_is_empty!6647)))

(assert (=> b!1324456 (= tp!384165 e!849144)))

(declare-fun b!1325292 () Bool)

(declare-fun tp!384233 () Bool)

(declare-fun tp!384235 () Bool)

(assert (=> b!1325292 (= e!849144 (and tp!384233 tp!384235))))

(declare-fun b!1325294 () Bool)

(declare-fun tp!384237 () Bool)

(declare-fun tp!384236 () Bool)

(assert (=> b!1325294 (= e!849144 (and tp!384237 tp!384236))))

(assert (= (and b!1324456 ((_ is ElementMatch!3637) (regex!2323 (h!18828 rules!2550)))) b!1325291))

(assert (= (and b!1324456 ((_ is Concat!6051) (regex!2323 (h!18828 rules!2550)))) b!1325292))

(assert (= (and b!1324456 ((_ is Star!3637) (regex!2323 (h!18828 rules!2550)))) b!1325293))

(assert (= (and b!1324456 ((_ is Union!3637) (regex!2323 (h!18828 rules!2550)))) b!1325294))

(declare-fun b!1325305 () Bool)

(declare-fun b_free!31955 () Bool)

(declare-fun b_next!32659 () Bool)

(assert (=> b!1325305 (= b_free!31955 (not b_next!32659))))

(declare-fun tp!384249 () Bool)

(declare-fun b_and!88527 () Bool)

(assert (=> b!1325305 (= tp!384249 b_and!88527)))

(declare-fun b_free!31957 () Bool)

(declare-fun b_next!32661 () Bool)

(assert (=> b!1325305 (= b_free!31957 (not b_next!32661))))

(declare-fun tb!70237 () Bool)

(declare-fun t!118793 () Bool)

(assert (=> (and b!1325305 (= (toChars!3413 (transformation!2323 (h!18828 (t!118758 rules!2550)))) (toChars!3413 (transformation!2323 (rule!4068 t1!34)))) t!118793) tb!70237))

(declare-fun result!85266 () Bool)

(assert (= result!85266 result!85230))

(assert (=> d!374058 t!118793))

(declare-fun t!118795 () Bool)

(declare-fun tb!70239 () Bool)

(assert (=> (and b!1325305 (= (toChars!3413 (transformation!2323 (h!18828 (t!118758 rules!2550)))) (toChars!3413 (transformation!2323 (rule!4068 t2!34)))) t!118795) tb!70239))

(declare-fun result!85268 () Bool)

(assert (= result!85268 result!85254))

(assert (=> d!374210 t!118795))

(assert (=> b!1325101 t!118793))

(assert (=> b!1325103 t!118795))

(declare-fun b_and!88529 () Bool)

(declare-fun tp!384248 () Bool)

(assert (=> b!1325305 (= tp!384248 (and (=> t!118793 result!85266) (=> t!118795 result!85268) b_and!88529))))

(declare-fun e!849156 () Bool)

(assert (=> b!1325305 (= e!849156 (and tp!384249 tp!384248))))

(declare-fun tp!384246 () Bool)

(declare-fun b!1325304 () Bool)

(declare-fun e!849153 () Bool)

(assert (=> b!1325304 (= e!849153 (and tp!384246 (inv!17792 (tag!2585 (h!18828 (t!118758 rules!2550)))) (inv!17795 (transformation!2323 (h!18828 (t!118758 rules!2550)))) e!849156))))

(declare-fun b!1325303 () Bool)

(declare-fun e!849155 () Bool)

(declare-fun tp!384247 () Bool)

(assert (=> b!1325303 (= e!849155 (and e!849153 tp!384247))))

(assert (=> b!1324462 (= tp!384164 e!849155)))

(assert (= b!1325304 b!1325305))

(assert (= b!1325303 b!1325304))

(assert (= (and b!1324462 ((_ is Cons!13427) (t!118758 rules!2550))) b!1325303))

(declare-fun m!1482065 () Bool)

(assert (=> b!1325304 m!1482065))

(declare-fun m!1482067 () Bool)

(assert (=> b!1325304 m!1482067))

(declare-fun b!1325308 () Bool)

(declare-fun e!849157 () Bool)

(declare-fun tp!384251 () Bool)

(assert (=> b!1325308 (= e!849157 tp!384251)))

(declare-fun b!1325306 () Bool)

(assert (=> b!1325306 (= e!849157 tp_is_empty!6647)))

(assert (=> b!1324464 (= tp!384162 e!849157)))

(declare-fun b!1325307 () Bool)

(declare-fun tp!384250 () Bool)

(declare-fun tp!384252 () Bool)

(assert (=> b!1325307 (= e!849157 (and tp!384250 tp!384252))))

(declare-fun b!1325309 () Bool)

(declare-fun tp!384254 () Bool)

(declare-fun tp!384253 () Bool)

(assert (=> b!1325309 (= e!849157 (and tp!384254 tp!384253))))

(assert (= (and b!1324464 ((_ is ElementMatch!3637) (regex!2323 (rule!4068 t1!34)))) b!1325306))

(assert (= (and b!1324464 ((_ is Concat!6051) (regex!2323 (rule!4068 t1!34)))) b!1325307))

(assert (= (and b!1324464 ((_ is Star!3637) (regex!2323 (rule!4068 t1!34)))) b!1325308))

(assert (= (and b!1324464 ((_ is Union!3637) (regex!2323 (rule!4068 t1!34)))) b!1325309))

(declare-fun b!1325312 () Bool)

(declare-fun e!849158 () Bool)

(declare-fun tp!384256 () Bool)

(assert (=> b!1325312 (= e!849158 tp!384256)))

(declare-fun b!1325310 () Bool)

(assert (=> b!1325310 (= e!849158 tp_is_empty!6647)))

(assert (=> b!1324480 (= tp!384159 e!849158)))

(declare-fun b!1325311 () Bool)

(declare-fun tp!384255 () Bool)

(declare-fun tp!384257 () Bool)

(assert (=> b!1325311 (= e!849158 (and tp!384255 tp!384257))))

(declare-fun b!1325313 () Bool)

(declare-fun tp!384259 () Bool)

(declare-fun tp!384258 () Bool)

(assert (=> b!1325313 (= e!849158 (and tp!384259 tp!384258))))

(assert (= (and b!1324480 ((_ is ElementMatch!3637) (regex!2323 (rule!4068 t2!34)))) b!1325310))

(assert (= (and b!1324480 ((_ is Concat!6051) (regex!2323 (rule!4068 t2!34)))) b!1325311))

(assert (= (and b!1324480 ((_ is Star!3637) (regex!2323 (rule!4068 t2!34)))) b!1325312))

(assert (= (and b!1324480 ((_ is Union!3637) (regex!2323 (rule!4068 t2!34)))) b!1325313))

(declare-fun b!1325314 () Bool)

(declare-fun e!849159 () Bool)

(declare-fun tp!384260 () Bool)

(assert (=> b!1325314 (= e!849159 (and tp_is_empty!6647 tp!384260))))

(assert (=> b!1324481 (= tp!384166 e!849159)))

(assert (= (and b!1324481 ((_ is Cons!13425) (originalCharacters!3185 t2!34))) b!1325314))

(declare-fun b_lambda!38885 () Bool)

(assert (= b_lambda!38823 (or b!1324461 b_lambda!38885)))

(declare-fun bs!331372 () Bool)

(declare-fun d!374316 () Bool)

(assert (= bs!331372 (and d!374316 b!1324461)))

(assert (=> bs!331372 (= (dynLambda!5917 lambda!54438 (h!18828 rules!2550)) (= (regex!2323 (h!18828 rules!2550)) lt!437475))))

(assert (=> b!1324849 d!374316))

(declare-fun b_lambda!38887 () Bool)

(assert (= b_lambda!38871 (or (and b!1324472 b_free!31941) (and b!1324492 b_free!31945 (= (toChars!3413 (transformation!2323 (h!18828 rules!2550))) (toChars!3413 (transformation!2323 (rule!4068 t2!34))))) (and b!1324474 b_free!31949 (= (toChars!3413 (transformation!2323 (rule!4068 t1!34))) (toChars!3413 (transformation!2323 (rule!4068 t2!34))))) (and b!1325305 b_free!31957 (= (toChars!3413 (transformation!2323 (h!18828 (t!118758 rules!2550)))) (toChars!3413 (transformation!2323 (rule!4068 t2!34))))) b_lambda!38887)))

(declare-fun b_lambda!38889 () Bool)

(assert (= b_lambda!38825 (or b!1324461 b_lambda!38889)))

(declare-fun bs!331373 () Bool)

(declare-fun d!374318 () Bool)

(assert (= bs!331373 (and d!374318 b!1324461)))

(assert (=> bs!331373 (= (dynLambda!5917 lambda!54438 lt!437605) (= (regex!2323 lt!437605) lt!437475))))

(assert (=> d!374128 d!374318))

(declare-fun b_lambda!38891 () Bool)

(assert (= b_lambda!38873 (or b!1324466 b_lambda!38891)))

(declare-fun bs!331374 () Bool)

(declare-fun d!374320 () Bool)

(assert (= bs!331374 (and d!374320 b!1324466)))

(assert (=> bs!331374 (= (dynLambda!5924 lambda!54436 (h!18828 rules!2550)) (regex!2323 (h!18828 rules!2550)))))

(assert (=> b!1325163 d!374320))

(declare-fun b_lambda!38893 () Bool)

(assert (= b_lambda!38883 (or b!1324466 b_lambda!38893)))

(declare-fun bs!331375 () Bool)

(declare-fun d!374322 () Bool)

(assert (= bs!331375 (and d!374322 b!1324466)))

(declare-fun res!596201 () Bool)

(declare-fun e!849160 () Bool)

(assert (=> bs!331375 (=> (not res!596201) (not e!849160))))

(assert (=> bs!331375 (= res!596201 (validRegex!1561 (h!18829 (map!2951 rules!2550 lambda!54436))))))

(assert (=> bs!331375 (= (dynLambda!5926 lambda!54437 (h!18829 (map!2951 rules!2550 lambda!54436))) e!849160)))

(declare-fun b!1325315 () Bool)

(assert (=> b!1325315 (= e!849160 (matchR!1639 (h!18829 (map!2951 rules!2550 lambda!54436)) lt!437486))))

(assert (= (and bs!331375 res!596201) b!1325315))

(declare-fun m!1482069 () Bool)

(assert (=> bs!331375 m!1482069))

(declare-fun m!1482071 () Bool)

(assert (=> b!1325315 m!1482071))

(assert (=> b!1325224 d!374322))

(declare-fun b_lambda!38895 () Bool)

(assert (= b_lambda!38881 (or b!1324466 b_lambda!38895)))

(declare-fun bs!331376 () Bool)

(declare-fun d!374324 () Bool)

(assert (= bs!331376 (and d!374324 b!1324466)))

(declare-fun res!596202 () Bool)

(declare-fun e!849161 () Bool)

(assert (=> bs!331376 (=> (not res!596202) (not e!849161))))

(assert (=> bs!331376 (= res!596202 (validRegex!1561 lt!437734))))

(assert (=> bs!331376 (= (dynLambda!5926 lambda!54437 lt!437734) e!849161)))

(declare-fun b!1325316 () Bool)

(assert (=> b!1325316 (= e!849161 (matchR!1639 lt!437734 lt!437486))))

(assert (= (and bs!331376 res!596202) b!1325316))

(declare-fun m!1482073 () Bool)

(assert (=> bs!331376 m!1482073))

(declare-fun m!1482075 () Bool)

(assert (=> b!1325316 m!1482075))

(assert (=> d!374270 d!374324))

(declare-fun b_lambda!38897 () Bool)

(assert (= b_lambda!38867 (or (and b!1324472 b_free!31941) (and b!1324492 b_free!31945 (= (toChars!3413 (transformation!2323 (h!18828 rules!2550))) (toChars!3413 (transformation!2323 (rule!4068 t2!34))))) (and b!1324474 b_free!31949 (= (toChars!3413 (transformation!2323 (rule!4068 t1!34))) (toChars!3413 (transformation!2323 (rule!4068 t2!34))))) (and b!1325305 b_free!31957 (= (toChars!3413 (transformation!2323 (h!18828 (t!118758 rules!2550)))) (toChars!3413 (transformation!2323 (rule!4068 t2!34))))) b_lambda!38897)))

(declare-fun b_lambda!38899 () Bool)

(assert (= b_lambda!38877 (or b!1324489 b_lambda!38899)))

(declare-fun bs!331377 () Bool)

(declare-fun d!374326 () Bool)

(assert (= bs!331377 (and d!374326 b!1324489)))

(declare-fun ruleValid!572 (LexerInterface!2018 Rule!4446) Bool)

(assert (=> bs!331377 (= (dynLambda!5917 lambda!54439 (rule!4068 t1!34)) (ruleValid!572 thiss!19762 (rule!4068 t1!34)))))

(declare-fun m!1482077 () Bool)

(assert (=> bs!331377 m!1482077))

(assert (=> d!374260 d!374326))

(declare-fun b_lambda!38901 () Bool)

(assert (= b_lambda!38815 (or (and b!1324472 b_free!31941 (= (toChars!3413 (transformation!2323 (rule!4068 t2!34))) (toChars!3413 (transformation!2323 (rule!4068 t1!34))))) (and b!1324492 b_free!31945 (= (toChars!3413 (transformation!2323 (h!18828 rules!2550))) (toChars!3413 (transformation!2323 (rule!4068 t1!34))))) (and b!1324474 b_free!31949) (and b!1325305 b_free!31957 (= (toChars!3413 (transformation!2323 (h!18828 (t!118758 rules!2550)))) (toChars!3413 (transformation!2323 (rule!4068 t1!34))))) b_lambda!38901)))

(declare-fun b_lambda!38903 () Bool)

(assert (= b_lambda!38879 (or b!1324489 b_lambda!38903)))

(declare-fun bs!331378 () Bool)

(declare-fun d!374328 () Bool)

(assert (= bs!331378 (and d!374328 b!1324489)))

(assert (=> bs!331378 (= (dynLambda!5917 lambda!54439 lt!437471) (ruleValid!572 thiss!19762 lt!437471))))

(declare-fun m!1482079 () Bool)

(assert (=> bs!331378 m!1482079))

(assert (=> d!374262 d!374328))

(declare-fun b_lambda!38905 () Bool)

(assert (= b_lambda!38875 (or b!1324489 b_lambda!38905)))

(declare-fun bs!331379 () Bool)

(declare-fun d!374330 () Bool)

(assert (= bs!331379 (and d!374330 b!1324489)))

(assert (=> bs!331379 (= (dynLambda!5917 lambda!54439 (rule!4068 t2!34)) (ruleValid!572 thiss!19762 (rule!4068 t2!34)))))

(declare-fun m!1482081 () Bool)

(assert (=> bs!331379 m!1482081))

(assert (=> d!374258 d!374330))

(declare-fun b_lambda!38907 () Bool)

(assert (= b_lambda!38817 (or b!1324470 b_lambda!38907)))

(declare-fun bs!331380 () Bool)

(declare-fun d!374332 () Bool)

(assert (= bs!331380 (and d!374332 b!1324470)))

(declare-fun res!596203 () Bool)

(declare-fun e!849162 () Bool)

(assert (=> bs!331380 (=> (not res!596203) (not e!849162))))

(assert (=> bs!331380 (= res!596203 (matchR!1639 lt!437465 lt!437551))))

(assert (=> bs!331380 (= (dynLambda!5914 lambda!54435 lt!437551) e!849162)))

(declare-fun b!1325317 () Bool)

(assert (=> b!1325317 (= e!849162 (isPrefix!1084 lt!437470 lt!437551))))

(assert (= (and bs!331380 res!596203) b!1325317))

(declare-fun m!1482083 () Bool)

(assert (=> bs!331380 m!1482083))

(declare-fun m!1482085 () Bool)

(assert (=> b!1325317 m!1482085))

(assert (=> d!374066 d!374332))

(declare-fun b_lambda!38909 () Bool)

(assert (= b_lambda!38869 (or (and b!1324472 b_free!31941 (= (toChars!3413 (transformation!2323 (rule!4068 t2!34))) (toChars!3413 (transformation!2323 (rule!4068 t1!34))))) (and b!1324492 b_free!31945 (= (toChars!3413 (transformation!2323 (h!18828 rules!2550))) (toChars!3413 (transformation!2323 (rule!4068 t1!34))))) (and b!1324474 b_free!31949) (and b!1325305 b_free!31957 (= (toChars!3413 (transformation!2323 (h!18828 (t!118758 rules!2550)))) (toChars!3413 (transformation!2323 (rule!4068 t1!34))))) b_lambda!38909)))

(check-sat (not b!1325066) (not b!1325211) (not b!1324894) (not b!1325230) (not d!374236) (not b_lambda!38909) (not b!1325252) (not b!1325247) (not bs!331375) (not b!1325191) (not d!374290) (not b!1325179) (not b!1325144) (not b!1325140) (not b!1324651) (not tb!70231) (not b!1325142) b_and!88527 (not b!1324815) (not b!1325119) (not bm!89827) (not d!374256) (not bm!89821) (not b_lambda!38907) (not b!1325292) (not b!1325146) (not d!374262) (not d!374082) (not b!1325064) (not b_lambda!38889) (not b!1324662) (not bm!89809) (not b!1325253) (not b!1325138) (not b_lambda!38897) (not b!1325235) (not b!1325255) (not d!374144) (not b_lambda!38903) (not d!374250) (not b_next!32643) (not tb!70215) (not d!374252) (not d!374260) (not d!374216) (not b!1325193) (not bm!89806) (not b!1324899) (not b!1325104) (not b_lambda!38893) b_and!88467 (not d!374042) (not b!1324848) (not b!1325248) (not b!1325273) (not d!374278) (not b!1325103) (not b!1325232) (not b!1325101) (not b!1325184) (not d!374302) (not bm!89826) (not b!1325308) (not d!374120) (not b!1325315) (not b_next!32647) (not b!1325167) (not b!1325313) (not d!374296) (not d!374286) (not b_lambda!38905) (not d!374214) (not b!1324683) (not d!374070) (not bs!331379) (not b!1324892) (not b!1324674) (not b!1324817) (not bm!89822) (not b!1324901) (not b!1325086) (not d!374072) (not d!374224) (not d!374128) (not bs!331380) (not b!1325256) (not b!1325143) (not b!1325163) (not d!374242) (not b!1324673) (not b!1325065) (not b!1325261) (not bs!331377) (not b!1325265) (not b!1324676) b_and!88525 (not b!1324677) (not bm!89828) (not b!1325309) (not b!1324896) (not b!1325170) b_and!88529 (not d!374052) (not b!1325204) (not d!374060) (not d!374284) (not b!1325186) (not d!374248) b_and!88463 (not b!1325149) (not b!1325198) (not b!1325250) (not b!1324708) (not b!1325225) (not b_lambda!38895) (not d!374218) (not d!374210) (not b!1325231) (not d!374066) (not d!374058) (not b!1325294) (not d!374246) (not b!1324827) (not d!374104) (not b!1325311) b_and!88523 b_and!88471 (not b!1325147) (not d!374264) (not b_next!32661) (not b!1325173) (not b!1325154) (not b!1325205) (not b!1325073) (not b!1325102) (not d!374294) (not b!1324741) (not d!374268) (not b_next!32645) (not b!1325116) (not b!1325155) tp_is_empty!6647 (not b!1325085) (not d!374056) (not b!1325174) (not b!1324668) (not d!374064) (not b!1325263) (not bm!89808) b_and!88521 (not d!374226) (not bs!331376) (not b!1325150) (not b_next!32651) (not b!1325272) (not b!1324895) (not b!1325200) (not b!1325172) (not d!374308) (not b!1324702) (not b!1325229) (not b!1325266) (not b!1325177) (not b!1324661) (not d!374314) (not bm!89823) (not b_lambda!38887) (not d!374276) (not d!374232) (not b_next!32653) (not d!374300) (not b!1325316) (not b!1325228) (not d!374304) (not d!374254) (not b!1325258) (not b!1325251) (not b!1325187) (not d!374288) (not b!1325317) (not d!374280) (not b_lambda!38885) (not d!374272) (not b!1324850) (not b!1325199) (not b!1325280) (not d!374220) (not b!1325202) (not d!374228) (not b!1325188) (not b!1325084) (not b!1325267) (not b!1325314) (not b_lambda!38901) (not b!1325262) (not b!1325312) (not d!374266) (not b!1325245) (not bm!89814) (not b!1324814) (not b_lambda!38891) (not d!374244) (not b!1325118) (not bs!331378) (not d!374306) (not b!1324818) (not b!1325307) (not b!1325293) (not b!1325141) (not b!1325254) (not b!1325304) (not bm!89824) (not d!374190) (not b!1325145) (not b!1324852) (not d!374312) (not d!374222) (not d!374054) (not d!374134) (not d!374298) (not d!374240) (not b!1325096) (not d!374062) (not b!1325233) (not d!374270) (not d!374258) (not b_next!32649) (not b_lambda!38899) (not d!374126) (not b!1325303) (not b_next!32659) (not b!1325148) (not d!374084))
(check-sat b_and!88527 (not b_next!32643) b_and!88467 (not b_next!32647) b_and!88525 (not b_next!32645) b_and!88521 (not b_next!32651) (not b_next!32653) b_and!88529 b_and!88463 (not b_next!32661) b_and!88523 b_and!88471 (not b_next!32649) (not b_next!32659))
