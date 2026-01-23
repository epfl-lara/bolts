; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118634 () Bool)

(assert start!118634)

(declare-fun b!1332671 () Bool)

(declare-fun b_free!32267 () Bool)

(declare-fun b_next!32971 () Bool)

(assert (=> b!1332671 (= b_free!32267 (not b_next!32971))))

(declare-fun tp!385481 () Bool)

(declare-fun b_and!89031 () Bool)

(assert (=> b!1332671 (= tp!385481 b_and!89031)))

(declare-fun b_free!32269 () Bool)

(declare-fun b_next!32973 () Bool)

(assert (=> b!1332671 (= b_free!32269 (not b_next!32973))))

(declare-fun tp!385474 () Bool)

(declare-fun b_and!89033 () Bool)

(assert (=> b!1332671 (= tp!385474 b_and!89033)))

(declare-fun b!1332690 () Bool)

(declare-fun b_free!32271 () Bool)

(declare-fun b_next!32975 () Bool)

(assert (=> b!1332690 (= b_free!32271 (not b_next!32975))))

(declare-fun tp!385483 () Bool)

(declare-fun b_and!89035 () Bool)

(assert (=> b!1332690 (= tp!385483 b_and!89035)))

(declare-fun b_free!32273 () Bool)

(declare-fun b_next!32977 () Bool)

(assert (=> b!1332690 (= b_free!32273 (not b_next!32977))))

(declare-fun tp!385477 () Bool)

(declare-fun b_and!89037 () Bool)

(assert (=> b!1332690 (= tp!385477 b_and!89037)))

(declare-fun b!1332657 () Bool)

(declare-fun b_free!32275 () Bool)

(declare-fun b_next!32979 () Bool)

(assert (=> b!1332657 (= b_free!32275 (not b_next!32979))))

(declare-fun tp!385476 () Bool)

(declare-fun b_and!89039 () Bool)

(assert (=> b!1332657 (= tp!385476 b_and!89039)))

(declare-fun b_free!32277 () Bool)

(declare-fun b_next!32981 () Bool)

(assert (=> b!1332657 (= b_free!32277 (not b_next!32981))))

(declare-fun tp!385482 () Bool)

(declare-fun b_and!89041 () Bool)

(assert (=> b!1332657 (= tp!385482 b_and!89041)))

(declare-fun b!1332665 () Bool)

(assert (=> b!1332665 true))

(assert (=> b!1332665 true))

(declare-fun b!1332651 () Bool)

(assert (=> b!1332651 true))

(declare-fun b!1332678 () Bool)

(assert (=> b!1332678 true))

(declare-fun bs!331800 () Bool)

(declare-fun b!1332653 () Bool)

(assert (= bs!331800 (and b!1332653 b!1332678)))

(declare-fun lambda!55595 () Int)

(declare-fun lambda!55594 () Int)

(assert (=> bs!331800 (not (= lambda!55595 lambda!55594))))

(assert (=> b!1332653 true))

(declare-fun b!1332646 () Bool)

(declare-fun res!600653 () Bool)

(declare-fun e!853705 () Bool)

(assert (=> b!1332646 (=> (not res!600653) (not e!853705))))

(declare-datatypes ((LexerInterface!2042 0))(
  ( (LexerInterfaceExt!2039 (__x!8703 Int)) (Lexer!2040) )
))
(declare-fun thiss!19762 () LexerInterface!2042)

(declare-datatypes ((List!13620 0))(
  ( (Nil!13554) (Cons!13554 (h!18955 (_ BitVec 16)) (t!119065 List!13620)) )
))
(declare-datatypes ((TokenValue!2437 0))(
  ( (FloatLiteralValue!4874 (text!17504 List!13620)) (TokenValueExt!2436 (__x!8704 Int)) (Broken!12185 (value!76496 List!13620)) (Object!2502) (End!2437) (Def!2437) (Underscore!2437) (Match!2437) (Else!2437) (Error!2437) (Case!2437) (If!2437) (Extends!2437) (Abstract!2437) (Class!2437) (Val!2437) (DelimiterValue!4874 (del!2497 List!13620)) (KeywordValue!2443 (value!76497 List!13620)) (CommentValue!4874 (value!76498 List!13620)) (WhitespaceValue!4874 (value!76499 List!13620)) (IndentationValue!2437 (value!76500 List!13620)) (String!16420) (Int32!2437) (Broken!12186 (value!76501 List!13620)) (Boolean!2438) (Unit!19680) (OperatorValue!2440 (op!2497 List!13620)) (IdentifierValue!4874 (value!76502 List!13620)) (IdentifierValue!4875 (value!76503 List!13620)) (WhitespaceValue!4875 (value!76504 List!13620)) (True!4874) (False!4874) (Broken!12187 (value!76505 List!13620)) (Broken!12188 (value!76506 List!13620)) (True!4875) (RightBrace!2437) (RightBracket!2437) (Colon!2437) (Null!2437) (Comma!2437) (LeftBracket!2437) (False!4875) (LeftBrace!2437) (ImaginaryLiteralValue!2437 (text!17505 List!13620)) (StringLiteralValue!7311 (value!76507 List!13620)) (EOFValue!2437 (value!76508 List!13620)) (IdentValue!2437 (value!76509 List!13620)) (DelimiterValue!4875 (value!76510 List!13620)) (DedentValue!2437 (value!76511 List!13620)) (NewLineValue!2437 (value!76512 List!13620)) (IntegerValue!7311 (value!76513 (_ BitVec 32)) (text!17506 List!13620)) (IntegerValue!7312 (value!76514 Int) (text!17507 List!13620)) (Times!2437) (Or!2437) (Equal!2437) (Minus!2437) (Broken!12189 (value!76515 List!13620)) (And!2437) (Div!2437) (LessEqual!2437) (Mod!2437) (Concat!6098) (Not!2437) (Plus!2437) (SpaceValue!2437 (value!76516 List!13620)) (IntegerValue!7313 (value!76517 Int) (text!17508 List!13620)) (StringLiteralValue!7312 (text!17509 List!13620)) (FloatLiteralValue!4875 (text!17510 List!13620)) (BytesLiteralValue!2437 (value!76518 List!13620)) (CommentValue!4875 (value!76519 List!13620)) (StringLiteralValue!7313 (value!76520 List!13620)) (ErrorTokenValue!2437 (msg!2498 List!13620)) )
))
(declare-datatypes ((String!16421 0))(
  ( (String!16422 (value!76521 String)) )
))
(declare-datatypes ((C!7612 0))(
  ( (C!7613 (val!4366 Int)) )
))
(declare-datatypes ((List!13621 0))(
  ( (Nil!13555) (Cons!13555 (h!18956 C!7612) (t!119066 List!13621)) )
))
(declare-datatypes ((IArray!8933 0))(
  ( (IArray!8934 (innerList!4524 List!13621)) )
))
(declare-datatypes ((Conc!4464 0))(
  ( (Node!4464 (left!11639 Conc!4464) (right!11969 Conc!4464) (csize!9158 Int) (cheight!4675 Int)) (Leaf!6834 (xs!7179 IArray!8933) (csize!9159 Int)) (Empty!4464) )
))
(declare-datatypes ((BalanceConc!8868 0))(
  ( (BalanceConc!8869 (c!218394 Conc!4464)) )
))
(declare-datatypes ((Regex!3661 0))(
  ( (ElementMatch!3661 (c!218395 C!7612)) (Concat!6099 (regOne!7834 Regex!3661) (regTwo!7834 Regex!3661)) (EmptyExpr!3661) (Star!3661 (reg!3990 Regex!3661)) (EmptyLang!3661) (Union!3661 (regOne!7835 Regex!3661) (regTwo!7835 Regex!3661)) )
))
(declare-datatypes ((TokenValueInjection!4534 0))(
  ( (TokenValueInjection!4535 (toValue!3578 Int) (toChars!3437 Int)) )
))
(declare-datatypes ((Rule!4494 0))(
  ( (Rule!4495 (regex!2347 Regex!3661) (tag!2609 String!16421) (isSeparator!2347 Bool) (transformation!2347 TokenValueInjection!4534)) )
))
(declare-datatypes ((List!13622 0))(
  ( (Nil!13556) (Cons!13556 (h!18957 Rule!4494) (t!119067 List!13622)) )
))
(declare-fun rules!2550 () List!13622)

(declare-fun rulesInvariant!1912 (LexerInterface!2042 List!13622) Bool)

(assert (=> b!1332646 (= res!600653 (rulesInvariant!1912 thiss!19762 rules!2550))))

(declare-fun e!853679 () Bool)

(declare-datatypes ((Token!4356 0))(
  ( (Token!4357 (value!76522 TokenValue!2437) (rule!4092 Rule!4494) (size!11048 Int) (originalCharacters!3209 List!13621)) )
))
(declare-fun t1!34 () Token!4356)

(declare-fun e!853704 () Bool)

(declare-fun b!1332647 () Bool)

(declare-fun tp!385480 () Bool)

(declare-fun inv!17896 (String!16421) Bool)

(declare-fun inv!17899 (TokenValueInjection!4534) Bool)

(assert (=> b!1332647 (= e!853679 (and tp!385480 (inv!17896 (tag!2609 (rule!4092 t1!34))) (inv!17899 (transformation!2347 (rule!4092 t1!34))) e!853704))))

(declare-fun b!1332648 () Bool)

(declare-fun e!853678 () Bool)

(assert (=> b!1332648 (= e!853678 true)))

(declare-fun lt!441051 () Bool)

(declare-fun lt!441047 () Regex!3661)

(declare-fun lt!441064 () C!7612)

(declare-fun contains!2457 (List!13621 C!7612) Bool)

(declare-fun usedCharacters!212 (Regex!3661) List!13621)

(assert (=> b!1332648 (= lt!441051 (contains!2457 (usedCharacters!212 lt!441047) lt!441064))))

(declare-fun b!1332649 () Bool)

(declare-fun res!600680 () Bool)

(declare-fun e!853694 () Bool)

(assert (=> b!1332649 (=> res!600680 e!853694)))

(declare-fun lt!441057 () List!13621)

(declare-fun lt!441070 () C!7612)

(assert (=> b!1332649 (= res!600680 (not (contains!2457 lt!441057 lt!441070)))))

(declare-fun b!1332650 () Bool)

(declare-fun e!853698 () Bool)

(declare-fun e!853685 () Bool)

(assert (=> b!1332650 (= e!853698 e!853685)))

(declare-fun res!600668 () Bool)

(assert (=> b!1332650 (=> res!600668 e!853685)))

(declare-fun lt!441069 () List!13621)

(declare-fun t2!34 () Token!4356)

(declare-datatypes ((tuple2!13202 0))(
  ( (tuple2!13203 (_1!7487 Token!4356) (_2!7487 List!13621)) )
))
(declare-datatypes ((Option!2618 0))(
  ( (None!2617) (Some!2617 (v!21254 tuple2!13202)) )
))
(declare-fun maxPrefix!1052 (LexerInterface!2042 List!13622 List!13621) Option!2618)

(assert (=> b!1332650 (= res!600668 (not (= (maxPrefix!1052 thiss!19762 rules!2550 lt!441069) (Some!2617 (tuple2!13203 t2!34 Nil!13555)))))))

(declare-fun lt!441049 () BalanceConc!8868)

(declare-fun list!5146 (BalanceConc!8868) List!13621)

(assert (=> b!1332650 (= lt!441069 (list!5146 lt!441049))))

(declare-fun e!853692 () Bool)

(assert (=> b!1332651 (= e!853694 e!853692)))

(declare-fun res!600666 () Bool)

(assert (=> b!1332651 (=> res!600666 e!853692)))

(declare-fun lambda!55593 () Int)

(declare-fun lambda!55592 () Int)

(declare-datatypes ((List!13623 0))(
  ( (Nil!13557) (Cons!13557 (h!18958 Regex!3661) (t!119068 List!13623)) )
))
(declare-fun exists!396 (List!13623 Int) Bool)

(declare-fun map!2987 (List!13622 Int) List!13623)

(assert (=> b!1332651 (= res!600666 (not (exists!396 (map!2987 rules!2550 lambda!55592) lambda!55593)))))

(declare-fun lt!441067 () List!13623)

(assert (=> b!1332651 (exists!396 lt!441067 lambda!55593)))

(declare-datatypes ((Unit!19681 0))(
  ( (Unit!19682) )
))
(declare-fun lt!441076 () Unit!19681)

(declare-fun lt!441071 () Regex!3661)

(declare-fun lt!441048 () List!13621)

(declare-fun matchRGenUnionSpec!98 (Regex!3661 List!13623 List!13621) Unit!19681)

(assert (=> b!1332651 (= lt!441076 (matchRGenUnionSpec!98 lt!441071 lt!441067 lt!441048))))

(assert (=> b!1332651 (= lt!441067 (map!2987 rules!2550 lambda!55592))))

(declare-fun b!1332652 () Bool)

(declare-fun e!853699 () Bool)

(assert (=> b!1332652 (= e!853699 e!853698)))

(declare-fun res!600670 () Bool)

(assert (=> b!1332652 (=> res!600670 e!853698)))

(declare-datatypes ((List!13624 0))(
  ( (Nil!13558) (Cons!13558 (h!18959 Token!4356) (t!119069 List!13624)) )
))
(declare-datatypes ((IArray!8935 0))(
  ( (IArray!8936 (innerList!4525 List!13624)) )
))
(declare-datatypes ((Conc!4465 0))(
  ( (Node!4465 (left!11640 Conc!4465) (right!11970 Conc!4465) (csize!9160 Int) (cheight!4676 Int)) (Leaf!6835 (xs!7180 IArray!8935) (csize!9161 Int)) (Empty!4465) )
))
(declare-datatypes ((BalanceConc!8870 0))(
  ( (BalanceConc!8871 (c!218396 Conc!4465)) )
))
(declare-datatypes ((tuple2!13204 0))(
  ( (tuple2!13205 (_1!7488 BalanceConc!8870) (_2!7488 BalanceConc!8868)) )
))
(declare-fun lt!441050 () tuple2!13204)

(declare-fun lt!441075 () List!13624)

(declare-fun list!5147 (BalanceConc!8870) List!13624)

(assert (=> b!1332652 (= res!600670 (not (= (list!5147 (_1!7488 lt!441050)) lt!441075)))))

(assert (=> b!1332652 (= lt!441075 (Cons!13558 t2!34 Nil!13558))))

(declare-fun lt!441066 () BalanceConc!8868)

(declare-fun lex!877 (LexerInterface!2042 List!13622 BalanceConc!8868) tuple2!13204)

(assert (=> b!1332652 (= lt!441050 (lex!877 thiss!19762 rules!2550 lt!441066))))

(declare-fun print!816 (LexerInterface!2042 BalanceConc!8870) BalanceConc!8868)

(declare-fun singletonSeq!946 (Token!4356) BalanceConc!8870)

(assert (=> b!1332652 (= lt!441066 (print!816 thiss!19762 (singletonSeq!946 t2!34)))))

(declare-fun e!853710 () Bool)

(assert (=> b!1332653 (= e!853685 e!853710)))

(declare-fun res!600663 () Bool)

(assert (=> b!1332653 (=> res!600663 e!853710)))

(declare-fun lt!441053 () List!13621)

(declare-fun matchR!1663 (Regex!3661 List!13621) Bool)

(assert (=> b!1332653 (= res!600663 (not (matchR!1663 (regex!2347 (rule!4092 t1!34)) lt!441053)))))

(declare-fun lt!441074 () Unit!19681)

(declare-fun forallContained!598 (List!13622 Int Rule!4494) Unit!19681)

(assert (=> b!1332653 (= lt!441074 (forallContained!598 rules!2550 lambda!55595 (rule!4092 t2!34)))))

(declare-fun lt!441068 () Unit!19681)

(assert (=> b!1332653 (= lt!441068 (forallContained!598 rules!2550 lambda!55595 (rule!4092 t1!34)))))

(declare-fun lt!441061 () Rule!4494)

(declare-fun lt!441055 () Unit!19681)

(assert (=> b!1332653 (= lt!441055 (forallContained!598 rules!2550 lambda!55595 lt!441061))))

(declare-fun e!853681 () Bool)

(declare-fun e!853697 () Bool)

(declare-fun b!1332654 () Bool)

(declare-fun tp!385473 () Bool)

(assert (=> b!1332654 (= e!853681 (and tp!385473 (inv!17896 (tag!2609 (rule!4092 t2!34))) (inv!17899 (transformation!2347 (rule!4092 t2!34))) e!853697))))

(declare-fun b!1332655 () Bool)

(declare-fun e!853680 () Bool)

(declare-fun e!853701 () Bool)

(assert (=> b!1332655 (= e!853680 e!853701)))

(declare-fun res!600651 () Bool)

(assert (=> b!1332655 (=> res!600651 e!853701)))

(declare-fun ++!3464 (List!13621 List!13621) List!13621)

(declare-fun getSuffix!517 (List!13621 List!13621) List!13621)

(assert (=> b!1332655 (= res!600651 (not (= lt!441048 (++!3464 lt!441057 (getSuffix!517 lt!441048 lt!441057)))))))

(declare-fun lambda!55591 () Int)

(declare-fun pickWitness!124 (Int) List!13621)

(assert (=> b!1332655 (= lt!441048 (pickWitness!124 lambda!55591))))

(declare-fun b!1332656 () Bool)

(declare-fun e!853696 () Unit!19681)

(declare-fun Unit!19683 () Unit!19681)

(assert (=> b!1332656 (= e!853696 Unit!19683)))

(declare-fun b!1332658 () Bool)

(declare-fun res!600661 () Bool)

(assert (=> b!1332658 (=> res!600661 e!853699)))

(declare-fun contains!2458 (List!13622 Rule!4494) Bool)

(assert (=> b!1332658 (= res!600661 (not (contains!2458 rules!2550 (rule!4092 t1!34))))))

(declare-fun b!1332659 () Bool)

(declare-fun Unit!19684 () Unit!19681)

(assert (=> b!1332659 (= e!853696 Unit!19684)))

(declare-fun lt!441065 () Unit!19681)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!158 (Regex!3661 List!13621 C!7612) Unit!19681)

(declare-fun head!2353 (List!13621) C!7612)

(assert (=> b!1332659 (= lt!441065 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!158 (regex!2347 (rule!4092 t2!34)) lt!441069 (head!2353 lt!441069)))))

(assert (=> b!1332659 false))

(declare-fun b!1332660 () Bool)

(declare-fun res!600671 () Bool)

(assert (=> b!1332660 (=> res!600671 e!853694)))

(assert (=> b!1332660 (= res!600671 (not (matchR!1663 lt!441071 lt!441048)))))

(declare-fun b!1332661 () Bool)

(declare-fun res!600676 () Bool)

(assert (=> b!1332661 (=> res!600676 e!853694)))

(assert (=> b!1332661 (= res!600676 (not (contains!2457 lt!441048 lt!441064)))))

(declare-fun b!1332662 () Bool)

(declare-fun res!600657 () Bool)

(assert (=> b!1332662 (=> res!600657 e!853710)))

(assert (=> b!1332662 (= res!600657 (not (matchR!1663 (regex!2347 (rule!4092 t2!34)) lt!441069)))))

(declare-fun b!1332663 () Bool)

(declare-fun e!853683 () Bool)

(assert (=> b!1332663 (= e!853683 e!853699)))

(declare-fun res!600656 () Bool)

(assert (=> b!1332663 (=> res!600656 e!853699)))

(declare-fun lt!441072 () tuple2!13204)

(declare-fun lt!441063 () List!13624)

(assert (=> b!1332663 (= res!600656 (not (= (list!5147 (_1!7488 lt!441072)) lt!441063)))))

(assert (=> b!1332663 (= lt!441063 (Cons!13558 t1!34 Nil!13558))))

(declare-fun lt!441062 () BalanceConc!8868)

(assert (=> b!1332663 (= lt!441072 (lex!877 thiss!19762 rules!2550 lt!441062))))

(assert (=> b!1332663 (= lt!441062 (print!816 thiss!19762 (singletonSeq!946 t1!34)))))

(declare-fun getWitness!288 (List!13622 Int) Rule!4494)

(assert (=> b!1332663 (= lt!441061 (getWitness!288 rules!2550 lambda!55594))))

(declare-fun b!1332664 () Bool)

(declare-fun e!853682 () Unit!19681)

(declare-fun Unit!19685 () Unit!19681)

(assert (=> b!1332664 (= e!853682 Unit!19685)))

(declare-fun lt!441077 () Unit!19681)

(assert (=> b!1332664 (= lt!441077 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!158 (regex!2347 (rule!4092 t1!34)) lt!441053 (head!2353 lt!441053)))))

(assert (=> b!1332664 false))

(declare-fun e!853691 () Bool)

(assert (=> b!1332665 (= e!853691 (not e!853680))))

(declare-fun res!600675 () Bool)

(assert (=> b!1332665 (=> res!600675 e!853680)))

(declare-fun Exists!819 (Int) Bool)

(assert (=> b!1332665 (= res!600675 (not (Exists!819 lambda!55591)))))

(assert (=> b!1332665 (Exists!819 lambda!55591)))

(declare-fun lt!441078 () Unit!19681)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!137 (Regex!3661 List!13621) Unit!19681)

(assert (=> b!1332665 (= lt!441078 (lemmaPrefixMatchThenExistsStringThatMatches!137 lt!441071 lt!441057))))

(declare-fun b!1332666 () Bool)

(declare-fun e!853693 () Bool)

(assert (=> b!1332666 (= e!853705 e!853693)))

(declare-fun res!600654 () Bool)

(assert (=> b!1332666 (=> (not res!600654) (not e!853693))))

(declare-fun size!11049 (BalanceConc!8868) Int)

(assert (=> b!1332666 (= res!600654 (> (size!11049 lt!441049) 0))))

(declare-fun charsOf!1319 (Token!4356) BalanceConc!8868)

(assert (=> b!1332666 (= lt!441049 (charsOf!1319 t2!34))))

(declare-fun e!853695 () Bool)

(declare-fun tp!385484 () Bool)

(declare-fun b!1332667 () Bool)

(declare-fun inv!21 (TokenValue!2437) Bool)

(assert (=> b!1332667 (= e!853695 (and (inv!21 (value!76522 t2!34)) e!853681 tp!385484))))

(declare-fun b!1332668 () Bool)

(declare-fun res!600683 () Bool)

(assert (=> b!1332668 (=> (not res!600683) (not e!853693))))

(declare-fun separableTokensPredicate!325 (LexerInterface!2042 Token!4356 Token!4356 List!13622) Bool)

(assert (=> b!1332668 (= res!600683 (not (separableTokensPredicate!325 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1332669 () Bool)

(declare-fun res!600679 () Bool)

(assert (=> b!1332669 (=> (not res!600679) (not e!853705))))

(declare-fun rulesProduceIndividualToken!1011 (LexerInterface!2042 List!13622 Token!4356) Bool)

(assert (=> b!1332669 (= res!600679 (rulesProduceIndividualToken!1011 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1332670 () Bool)

(declare-fun e!853684 () Bool)

(assert (=> b!1332670 (= e!853684 e!853678)))

(declare-fun res!600684 () Bool)

(assert (=> b!1332670 (=> res!600684 e!853678)))

(declare-fun validRegex!1577 (Regex!3661) Bool)

(assert (=> b!1332670 (= res!600684 (not (validRegex!1577 lt!441047)))))

(assert (=> b!1332670 (not (contains!2457 (usedCharacters!212 (regex!2347 lt!441061)) lt!441064))))

(declare-fun lt!441073 () Unit!19681)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!4 (LexerInterface!2042 List!13622 List!13622 Rule!4494 Rule!4494 C!7612) Unit!19681)

(assert (=> b!1332670 (= lt!441073 (lemmaNonSepRuleNotContainsCharContainedInASepRule!4 thiss!19762 rules!2550 rules!2550 lt!441061 (rule!4092 t1!34) lt!441064))))

(assert (=> b!1332671 (= e!853704 (and tp!385481 tp!385474))))

(declare-fun b!1332672 () Bool)

(declare-fun res!600685 () Bool)

(assert (=> b!1332672 (=> res!600685 e!853685)))

(assert (=> b!1332672 (= res!600685 (not (contains!2458 rules!2550 lt!441061)))))

(declare-fun b!1332673 () Bool)

(assert (=> b!1332673 (= e!853693 e!853691)))

(declare-fun res!600669 () Bool)

(assert (=> b!1332673 (=> (not res!600669) (not e!853691))))

(declare-fun prefixMatch!174 (Regex!3661 List!13621) Bool)

(assert (=> b!1332673 (= res!600669 (prefixMatch!174 lt!441071 lt!441057))))

(declare-fun rulesRegex!232 (LexerInterface!2042 List!13622) Regex!3661)

(assert (=> b!1332673 (= lt!441071 (rulesRegex!232 thiss!19762 rules!2550))))

(assert (=> b!1332673 (= lt!441057 (++!3464 lt!441053 (Cons!13555 lt!441070 Nil!13555)))))

(declare-fun apply!3157 (BalanceConc!8868 Int) C!7612)

(assert (=> b!1332673 (= lt!441070 (apply!3157 lt!441049 0))))

(declare-fun lt!441060 () BalanceConc!8868)

(assert (=> b!1332673 (= lt!441053 (list!5146 lt!441060))))

(assert (=> b!1332673 (= lt!441060 (charsOf!1319 t1!34))))

(declare-fun b!1332674 () Bool)

(declare-fun res!600681 () Bool)

(assert (=> b!1332674 (=> res!600681 e!853699)))

(assert (=> b!1332674 (= res!600681 (not (= (maxPrefix!1052 thiss!19762 rules!2550 lt!441053) (Some!2617 (tuple2!13203 t1!34 Nil!13555)))))))

(declare-fun b!1332675 () Bool)

(declare-fun e!853702 () Bool)

(declare-fun e!853687 () Bool)

(declare-fun tp!385479 () Bool)

(assert (=> b!1332675 (= e!853702 (and e!853687 tp!385479))))

(declare-fun b!1332676 () Bool)

(declare-fun e!853707 () Bool)

(assert (=> b!1332676 (= e!853707 e!853684)))

(declare-fun res!600677 () Bool)

(assert (=> b!1332676 (=> res!600677 e!853684)))

(assert (=> b!1332676 (= res!600677 (or (isSeparator!2347 lt!441061) (not (isSeparator!2347 (rule!4092 t1!34))) (isSeparator!2347 (rule!4092 t2!34))))))

(assert (=> b!1332676 (= (regex!2347 lt!441061) lt!441047)))

(declare-fun b!1332677 () Bool)

(declare-fun e!853689 () Bool)

(assert (=> b!1332677 (= e!853692 e!853689)))

(declare-fun res!600673 () Bool)

(assert (=> b!1332677 (=> res!600673 e!853689)))

(declare-fun contains!2459 (List!13623 Regex!3661) Bool)

(assert (=> b!1332677 (= res!600673 (not (contains!2459 (map!2987 rules!2550 lambda!55592) lt!441047)))))

(declare-fun getWitness!289 (List!13623 Int) Regex!3661)

(assert (=> b!1332677 (= lt!441047 (getWitness!289 (map!2987 rules!2550 lambda!55592) lambda!55593))))

(assert (=> b!1332678 (= e!853689 e!853683)))

(declare-fun res!600662 () Bool)

(assert (=> b!1332678 (=> res!600662 e!853683)))

(declare-fun exists!397 (List!13622 Int) Bool)

(assert (=> b!1332678 (= res!600662 (not (exists!397 rules!2550 lambda!55594)))))

(assert (=> b!1332678 (exists!397 rules!2550 lambda!55594)))

(declare-fun lt!441052 () Unit!19681)

(declare-fun lemmaMapContains!90 (List!13622 Int Regex!3661) Unit!19681)

(assert (=> b!1332678 (= lt!441052 (lemmaMapContains!90 rules!2550 lambda!55592 lt!441047))))

(declare-fun b!1332679 () Bool)

(declare-fun res!600678 () Bool)

(assert (=> b!1332679 (=> (not res!600678) (not e!853705))))

(assert (=> b!1332679 (= res!600678 (not (= (isSeparator!2347 (rule!4092 t1!34)) (isSeparator!2347 (rule!4092 t2!34)))))))

(declare-fun b!1332680 () Bool)

(declare-fun res!600687 () Bool)

(assert (=> b!1332680 (=> (not res!600687) (not e!853705))))

(declare-fun isEmpty!8090 (List!13622) Bool)

(assert (=> b!1332680 (= res!600687 (not (isEmpty!8090 rules!2550)))))

(declare-fun b!1332681 () Bool)

(declare-fun res!600658 () Bool)

(assert (=> b!1332681 (=> res!600658 e!853698)))

(declare-fun isEmpty!8091 (BalanceConc!8868) Bool)

(assert (=> b!1332681 (= res!600658 (not (isEmpty!8091 (_2!7488 lt!441050))))))

(declare-fun b!1332682 () Bool)

(declare-fun res!600655 () Bool)

(assert (=> b!1332682 (=> res!600655 e!853694)))

(assert (=> b!1332682 (= res!600655 (not (contains!2457 lt!441048 lt!441070)))))

(declare-fun b!1332683 () Bool)

(declare-fun e!853686 () Bool)

(assert (=> b!1332683 (= e!853686 e!853707)))

(declare-fun res!600664 () Bool)

(assert (=> b!1332683 (=> res!600664 e!853707)))

(declare-fun lt!441059 () Bool)

(assert (=> b!1332683 (= res!600664 lt!441059)))

(declare-fun lt!441056 () Unit!19681)

(assert (=> b!1332683 (= lt!441056 e!853696)))

(declare-fun c!218392 () Bool)

(assert (=> b!1332683 (= c!218392 lt!441059)))

(assert (=> b!1332683 (= lt!441059 (not (contains!2457 (usedCharacters!212 (regex!2347 (rule!4092 t2!34))) lt!441070)))))

(declare-fun b!1332684 () Bool)

(declare-fun tp!385475 () Bool)

(declare-fun e!853700 () Bool)

(assert (=> b!1332684 (= e!853700 (and (inv!21 (value!76522 t1!34)) e!853679 tp!385475))))

(declare-fun b!1332685 () Bool)

(declare-fun res!600686 () Bool)

(assert (=> b!1332685 (=> (not res!600686) (not e!853693))))

(declare-fun sepAndNonSepRulesDisjointChars!720 (List!13622 List!13622) Bool)

(assert (=> b!1332685 (= res!600686 (sepAndNonSepRulesDisjointChars!720 rules!2550 rules!2550))))

(declare-fun b!1332686 () Bool)

(declare-fun res!600672 () Bool)

(assert (=> b!1332686 (=> res!600672 e!853699)))

(assert (=> b!1332686 (= res!600672 (not (isEmpty!8091 (_2!7488 lt!441072))))))

(declare-fun b!1332687 () Bool)

(declare-fun res!600674 () Bool)

(assert (=> b!1332687 (=> res!600674 e!853698)))

(declare-datatypes ((tuple2!13206 0))(
  ( (tuple2!13207 (_1!7489 List!13624) (_2!7489 List!13621)) )
))
(declare-fun lexList!580 (LexerInterface!2042 List!13622 List!13621) tuple2!13206)

(assert (=> b!1332687 (= res!600674 (not (= (lexList!580 thiss!19762 rules!2550 (list!5146 lt!441066)) (tuple2!13207 lt!441075 Nil!13555))))))

(declare-fun b!1332688 () Bool)

(declare-fun res!600659 () Bool)

(assert (=> b!1332688 (=> (not res!600659) (not e!853705))))

(assert (=> b!1332688 (= res!600659 (rulesProduceIndividualToken!1011 thiss!19762 rules!2550 t2!34))))

(assert (=> b!1332657 (= e!853697 (and tp!385476 tp!385482))))

(declare-fun res!600682 () Bool)

(assert (=> start!118634 (=> (not res!600682) (not e!853705))))

(get-info :version)

(assert (=> start!118634 (= res!600682 ((_ is Lexer!2040) thiss!19762))))

(assert (=> start!118634 e!853705))

(assert (=> start!118634 true))

(assert (=> start!118634 e!853702))

(declare-fun inv!17900 (Token!4356) Bool)

(assert (=> start!118634 (and (inv!17900 t1!34) e!853700)))

(assert (=> start!118634 (and (inv!17900 t2!34) e!853695)))

(declare-fun b!1332689 () Bool)

(declare-fun res!600667 () Bool)

(assert (=> b!1332689 (=> res!600667 e!853685)))

(assert (=> b!1332689 (= res!600667 (not (contains!2458 rules!2550 (rule!4092 t2!34))))))

(declare-fun e!853706 () Bool)

(assert (=> b!1332690 (= e!853706 (and tp!385483 tp!385477))))

(declare-fun b!1332691 () Bool)

(assert (=> b!1332691 (= e!853701 e!853694)))

(declare-fun res!600652 () Bool)

(assert (=> b!1332691 (=> res!600652 e!853694)))

(assert (=> b!1332691 (= res!600652 (not (contains!2457 lt!441057 lt!441064)))))

(assert (=> b!1332691 (= lt!441064 (apply!3157 lt!441060 0))))

(declare-fun b!1332692 () Bool)

(declare-fun Unit!19686 () Unit!19681)

(assert (=> b!1332692 (= e!853682 Unit!19686)))

(declare-fun b!1332693 () Bool)

(assert (=> b!1332693 (= e!853710 e!853686)))

(declare-fun res!600660 () Bool)

(assert (=> b!1332693 (=> res!600660 e!853686)))

(declare-fun lt!441058 () Bool)

(assert (=> b!1332693 (= res!600660 lt!441058)))

(declare-fun lt!441054 () Unit!19681)

(assert (=> b!1332693 (= lt!441054 e!853682)))

(declare-fun c!218393 () Bool)

(assert (=> b!1332693 (= c!218393 lt!441058)))

(assert (=> b!1332693 (= lt!441058 (not (contains!2457 (usedCharacters!212 (regex!2347 (rule!4092 t1!34))) lt!441064)))))

(declare-fun b!1332694 () Bool)

(declare-fun tp!385478 () Bool)

(assert (=> b!1332694 (= e!853687 (and tp!385478 (inv!17896 (tag!2609 (h!18957 rules!2550))) (inv!17899 (transformation!2347 (h!18957 rules!2550))) e!853706))))

(declare-fun b!1332695 () Bool)

(declare-fun res!600665 () Bool)

(assert (=> b!1332695 (=> res!600665 e!853699)))

(assert (=> b!1332695 (= res!600665 (not (= (lexList!580 thiss!19762 rules!2550 (list!5146 lt!441062)) (tuple2!13207 lt!441063 Nil!13555))))))

(assert (= (and start!118634 res!600682) b!1332680))

(assert (= (and b!1332680 res!600687) b!1332646))

(assert (= (and b!1332646 res!600653) b!1332669))

(assert (= (and b!1332669 res!600679) b!1332688))

(assert (= (and b!1332688 res!600659) b!1332679))

(assert (= (and b!1332679 res!600678) b!1332666))

(assert (= (and b!1332666 res!600654) b!1332685))

(assert (= (and b!1332685 res!600686) b!1332668))

(assert (= (and b!1332668 res!600683) b!1332673))

(assert (= (and b!1332673 res!600669) b!1332665))

(assert (= (and b!1332665 (not res!600675)) b!1332655))

(assert (= (and b!1332655 (not res!600651)) b!1332691))

(assert (= (and b!1332691 (not res!600652)) b!1332661))

(assert (= (and b!1332661 (not res!600676)) b!1332649))

(assert (= (and b!1332649 (not res!600680)) b!1332682))

(assert (= (and b!1332682 (not res!600655)) b!1332660))

(assert (= (and b!1332660 (not res!600671)) b!1332651))

(assert (= (and b!1332651 (not res!600666)) b!1332677))

(assert (= (and b!1332677 (not res!600673)) b!1332678))

(assert (= (and b!1332678 (not res!600662)) b!1332663))

(assert (= (and b!1332663 (not res!600656)) b!1332686))

(assert (= (and b!1332686 (not res!600672)) b!1332695))

(assert (= (and b!1332695 (not res!600665)) b!1332674))

(assert (= (and b!1332674 (not res!600681)) b!1332658))

(assert (= (and b!1332658 (not res!600661)) b!1332652))

(assert (= (and b!1332652 (not res!600670)) b!1332681))

(assert (= (and b!1332681 (not res!600658)) b!1332687))

(assert (= (and b!1332687 (not res!600674)) b!1332650))

(assert (= (and b!1332650 (not res!600668)) b!1332689))

(assert (= (and b!1332689 (not res!600667)) b!1332672))

(assert (= (and b!1332672 (not res!600685)) b!1332653))

(assert (= (and b!1332653 (not res!600663)) b!1332662))

(assert (= (and b!1332662 (not res!600657)) b!1332693))

(assert (= (and b!1332693 c!218393) b!1332664))

(assert (= (and b!1332693 (not c!218393)) b!1332692))

(assert (= (and b!1332693 (not res!600660)) b!1332683))

(assert (= (and b!1332683 c!218392) b!1332659))

(assert (= (and b!1332683 (not c!218392)) b!1332656))

(assert (= (and b!1332683 (not res!600664)) b!1332676))

(assert (= (and b!1332676 (not res!600677)) b!1332670))

(assert (= (and b!1332670 (not res!600684)) b!1332648))

(assert (= b!1332694 b!1332690))

(assert (= b!1332675 b!1332694))

(assert (= (and start!118634 ((_ is Cons!13556) rules!2550)) b!1332675))

(assert (= b!1332647 b!1332671))

(assert (= b!1332684 b!1332647))

(assert (= start!118634 b!1332684))

(assert (= b!1332654 b!1332657))

(assert (= b!1332667 b!1332654))

(assert (= start!118634 b!1332667))

(declare-fun m!1490045 () Bool)

(assert (=> b!1332688 m!1490045))

(declare-fun m!1490047 () Bool)

(assert (=> b!1332661 m!1490047))

(declare-fun m!1490049 () Bool)

(assert (=> b!1332649 m!1490049))

(declare-fun m!1490051 () Bool)

(assert (=> b!1332647 m!1490051))

(declare-fun m!1490053 () Bool)

(assert (=> b!1332647 m!1490053))

(declare-fun m!1490055 () Bool)

(assert (=> b!1332680 m!1490055))

(declare-fun m!1490057 () Bool)

(assert (=> b!1332663 m!1490057))

(declare-fun m!1490059 () Bool)

(assert (=> b!1332663 m!1490059))

(declare-fun m!1490061 () Bool)

(assert (=> b!1332663 m!1490061))

(declare-fun m!1490063 () Bool)

(assert (=> b!1332663 m!1490063))

(declare-fun m!1490065 () Bool)

(assert (=> b!1332663 m!1490065))

(assert (=> b!1332663 m!1490063))

(declare-fun m!1490067 () Bool)

(assert (=> b!1332673 m!1490067))

(declare-fun m!1490069 () Bool)

(assert (=> b!1332673 m!1490069))

(declare-fun m!1490071 () Bool)

(assert (=> b!1332673 m!1490071))

(declare-fun m!1490073 () Bool)

(assert (=> b!1332673 m!1490073))

(declare-fun m!1490075 () Bool)

(assert (=> b!1332673 m!1490075))

(declare-fun m!1490077 () Bool)

(assert (=> b!1332673 m!1490077))

(declare-fun m!1490079 () Bool)

(assert (=> b!1332650 m!1490079))

(declare-fun m!1490081 () Bool)

(assert (=> b!1332650 m!1490081))

(declare-fun m!1490083 () Bool)

(assert (=> b!1332666 m!1490083))

(declare-fun m!1490085 () Bool)

(assert (=> b!1332666 m!1490085))

(declare-fun m!1490087 () Bool)

(assert (=> b!1332660 m!1490087))

(declare-fun m!1490089 () Bool)

(assert (=> b!1332689 m!1490089))

(declare-fun m!1490091 () Bool)

(assert (=> b!1332685 m!1490091))

(declare-fun m!1490093 () Bool)

(assert (=> b!1332652 m!1490093))

(declare-fun m!1490095 () Bool)

(assert (=> b!1332652 m!1490095))

(declare-fun m!1490097 () Bool)

(assert (=> b!1332652 m!1490097))

(assert (=> b!1332652 m!1490097))

(declare-fun m!1490099 () Bool)

(assert (=> b!1332652 m!1490099))

(declare-fun m!1490101 () Bool)

(assert (=> b!1332681 m!1490101))

(declare-fun m!1490103 () Bool)

(assert (=> b!1332667 m!1490103))

(declare-fun m!1490105 () Bool)

(assert (=> b!1332694 m!1490105))

(declare-fun m!1490107 () Bool)

(assert (=> b!1332694 m!1490107))

(declare-fun m!1490109 () Bool)

(assert (=> b!1332664 m!1490109))

(assert (=> b!1332664 m!1490109))

(declare-fun m!1490111 () Bool)

(assert (=> b!1332664 m!1490111))

(declare-fun m!1490113 () Bool)

(assert (=> b!1332674 m!1490113))

(declare-fun m!1490115 () Bool)

(assert (=> b!1332678 m!1490115))

(assert (=> b!1332678 m!1490115))

(declare-fun m!1490117 () Bool)

(assert (=> b!1332678 m!1490117))

(declare-fun m!1490119 () Bool)

(assert (=> b!1332686 m!1490119))

(declare-fun m!1490121 () Bool)

(assert (=> b!1332677 m!1490121))

(assert (=> b!1332677 m!1490121))

(declare-fun m!1490123 () Bool)

(assert (=> b!1332677 m!1490123))

(assert (=> b!1332677 m!1490121))

(assert (=> b!1332677 m!1490121))

(declare-fun m!1490125 () Bool)

(assert (=> b!1332677 m!1490125))

(declare-fun m!1490127 () Bool)

(assert (=> b!1332646 m!1490127))

(declare-fun m!1490129 () Bool)

(assert (=> b!1332691 m!1490129))

(declare-fun m!1490131 () Bool)

(assert (=> b!1332691 m!1490131))

(assert (=> b!1332651 m!1490121))

(assert (=> b!1332651 m!1490121))

(declare-fun m!1490133 () Bool)

(assert (=> b!1332651 m!1490133))

(declare-fun m!1490135 () Bool)

(assert (=> b!1332651 m!1490135))

(declare-fun m!1490137 () Bool)

(assert (=> b!1332651 m!1490137))

(assert (=> b!1332651 m!1490121))

(declare-fun m!1490139 () Bool)

(assert (=> b!1332658 m!1490139))

(declare-fun m!1490141 () Bool)

(assert (=> b!1332687 m!1490141))

(assert (=> b!1332687 m!1490141))

(declare-fun m!1490143 () Bool)

(assert (=> b!1332687 m!1490143))

(declare-fun m!1490145 () Bool)

(assert (=> start!118634 m!1490145))

(declare-fun m!1490147 () Bool)

(assert (=> start!118634 m!1490147))

(declare-fun m!1490149 () Bool)

(assert (=> b!1332672 m!1490149))

(declare-fun m!1490151 () Bool)

(assert (=> b!1332659 m!1490151))

(assert (=> b!1332659 m!1490151))

(declare-fun m!1490153 () Bool)

(assert (=> b!1332659 m!1490153))

(declare-fun m!1490155 () Bool)

(assert (=> b!1332684 m!1490155))

(declare-fun m!1490157 () Bool)

(assert (=> b!1332670 m!1490157))

(declare-fun m!1490159 () Bool)

(assert (=> b!1332670 m!1490159))

(assert (=> b!1332670 m!1490159))

(declare-fun m!1490161 () Bool)

(assert (=> b!1332670 m!1490161))

(declare-fun m!1490163 () Bool)

(assert (=> b!1332670 m!1490163))

(declare-fun m!1490165 () Bool)

(assert (=> b!1332669 m!1490165))

(declare-fun m!1490167 () Bool)

(assert (=> b!1332655 m!1490167))

(assert (=> b!1332655 m!1490167))

(declare-fun m!1490169 () Bool)

(assert (=> b!1332655 m!1490169))

(declare-fun m!1490171 () Bool)

(assert (=> b!1332655 m!1490171))

(declare-fun m!1490173 () Bool)

(assert (=> b!1332653 m!1490173))

(declare-fun m!1490175 () Bool)

(assert (=> b!1332653 m!1490175))

(declare-fun m!1490177 () Bool)

(assert (=> b!1332653 m!1490177))

(declare-fun m!1490179 () Bool)

(assert (=> b!1332653 m!1490179))

(declare-fun m!1490181 () Bool)

(assert (=> b!1332683 m!1490181))

(assert (=> b!1332683 m!1490181))

(declare-fun m!1490183 () Bool)

(assert (=> b!1332683 m!1490183))

(declare-fun m!1490185 () Bool)

(assert (=> b!1332665 m!1490185))

(assert (=> b!1332665 m!1490185))

(declare-fun m!1490187 () Bool)

(assert (=> b!1332665 m!1490187))

(declare-fun m!1490189 () Bool)

(assert (=> b!1332648 m!1490189))

(assert (=> b!1332648 m!1490189))

(declare-fun m!1490191 () Bool)

(assert (=> b!1332648 m!1490191))

(declare-fun m!1490193 () Bool)

(assert (=> b!1332654 m!1490193))

(declare-fun m!1490195 () Bool)

(assert (=> b!1332654 m!1490195))

(declare-fun m!1490197 () Bool)

(assert (=> b!1332693 m!1490197))

(assert (=> b!1332693 m!1490197))

(declare-fun m!1490199 () Bool)

(assert (=> b!1332693 m!1490199))

(declare-fun m!1490201 () Bool)

(assert (=> b!1332662 m!1490201))

(declare-fun m!1490203 () Bool)

(assert (=> b!1332682 m!1490203))

(declare-fun m!1490205 () Bool)

(assert (=> b!1332695 m!1490205))

(assert (=> b!1332695 m!1490205))

(declare-fun m!1490207 () Bool)

(assert (=> b!1332695 m!1490207))

(declare-fun m!1490209 () Bool)

(assert (=> b!1332668 m!1490209))

(check-sat (not b_next!32973) (not b!1332672) (not b!1332664) (not b_next!32979) (not b!1332647) b_and!89033 (not b!1332674) (not b!1332677) (not b!1332670) (not b!1332654) (not b!1332666) (not b!1332689) (not b_next!32977) (not b!1332659) (not b!1332660) (not b!1332667) (not b!1332684) (not b!1332650) (not b!1332649) (not b!1332681) (not b!1332695) (not b_next!32975) b_and!89039 (not b!1332665) (not b!1332668) (not b!1332658) (not b!1332651) (not b!1332653) b_and!89041 (not b!1332683) (not b!1332673) (not b!1332661) (not b_next!32971) b_and!89037 (not b!1332685) (not b!1332691) (not b!1332663) (not b_next!32981) (not b!1332648) (not b!1332688) (not b!1332669) (not b!1332687) b_and!89035 (not start!118634) (not b!1332686) (not b!1332655) (not b!1332675) (not b!1332678) b_and!89031 (not b!1332694) (not b!1332680) (not b!1332682) (not b!1332662) (not b!1332652) (not b!1332646) (not b!1332693))
(check-sat (not b_next!32973) (not b_next!32977) (not b_next!32975) b_and!89039 (not b_next!32979) b_and!89041 (not b_next!32971) b_and!89033 b_and!89037 (not b_next!32981) b_and!89035 b_and!89031)
