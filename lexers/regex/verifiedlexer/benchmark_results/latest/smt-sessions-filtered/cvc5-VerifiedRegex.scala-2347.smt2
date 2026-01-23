; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!116056 () Bool)

(assert start!116056)

(declare-fun b!1312669 () Bool)

(declare-fun b_free!31615 () Bool)

(declare-fun b_next!32319 () Bool)

(assert (=> b!1312669 (= b_free!31615 (not b_next!32319))))

(declare-fun tp!382368 () Bool)

(declare-fun b_and!87675 () Bool)

(assert (=> b!1312669 (= tp!382368 b_and!87675)))

(declare-fun b_free!31617 () Bool)

(declare-fun b_next!32321 () Bool)

(assert (=> b!1312669 (= b_free!31617 (not b_next!32321))))

(declare-fun tp!382370 () Bool)

(declare-fun b_and!87677 () Bool)

(assert (=> b!1312669 (= tp!382370 b_and!87677)))

(declare-fun b!1312693 () Bool)

(declare-fun b_free!31619 () Bool)

(declare-fun b_next!32323 () Bool)

(assert (=> b!1312693 (= b_free!31619 (not b_next!32323))))

(declare-fun tp!382361 () Bool)

(declare-fun b_and!87679 () Bool)

(assert (=> b!1312693 (= tp!382361 b_and!87679)))

(declare-fun b_free!31621 () Bool)

(declare-fun b_next!32325 () Bool)

(assert (=> b!1312693 (= b_free!31621 (not b_next!32325))))

(declare-fun tp!382367 () Bool)

(declare-fun b_and!87681 () Bool)

(assert (=> b!1312693 (= tp!382367 b_and!87681)))

(declare-fun b!1312697 () Bool)

(declare-fun b_free!31623 () Bool)

(declare-fun b_next!32327 () Bool)

(assert (=> b!1312697 (= b_free!31623 (not b_next!32327))))

(declare-fun tp!382363 () Bool)

(declare-fun b_and!87683 () Bool)

(assert (=> b!1312697 (= tp!382363 b_and!87683)))

(declare-fun b_free!31625 () Bool)

(declare-fun b_next!32329 () Bool)

(assert (=> b!1312697 (= b_free!31625 (not b_next!32329))))

(declare-fun tp!382371 () Bool)

(declare-fun b_and!87685 () Bool)

(assert (=> b!1312697 (= tp!382371 b_and!87685)))

(declare-fun b!1312682 () Bool)

(assert (=> b!1312682 true))

(assert (=> b!1312682 true))

(declare-fun b!1312664 () Bool)

(assert (=> b!1312664 true))

(declare-fun b!1312688 () Bool)

(assert (=> b!1312688 true))

(declare-fun bs!330095 () Bool)

(declare-fun b!1312695 () Bool)

(assert (= bs!330095 (and b!1312695 b!1312688)))

(declare-fun lambda!53174 () Int)

(declare-fun lambda!53173 () Int)

(assert (=> bs!330095 (not (= lambda!53174 lambda!53173))))

(assert (=> b!1312695 true))

(declare-fun e!841641 () Bool)

(declare-fun e!841632 () Bool)

(assert (=> b!1312664 (= e!841641 e!841632)))

(declare-fun res!589404 () Bool)

(assert (=> b!1312664 (=> res!589404 e!841632)))

(declare-fun lambda!53171 () Int)

(declare-fun lambda!53172 () Int)

(declare-datatypes ((List!13367 0))(
  ( (Nil!13301) (Cons!13301 (h!18702 (_ BitVec 16)) (t!118168 List!13367)) )
))
(declare-datatypes ((TokenValue!2392 0))(
  ( (FloatLiteralValue!4784 (text!17189 List!13367)) (TokenValueExt!2391 (__x!8613 Int)) (Broken!11960 (value!75215 List!13367)) (Object!2457) (End!2392) (Def!2392) (Underscore!2392) (Match!2392) (Else!2392) (Error!2392) (Case!2392) (If!2392) (Extends!2392) (Abstract!2392) (Class!2392) (Val!2392) (DelimiterValue!4784 (del!2452 List!13367)) (KeywordValue!2398 (value!75216 List!13367)) (CommentValue!4784 (value!75217 List!13367)) (WhitespaceValue!4784 (value!75218 List!13367)) (IndentationValue!2392 (value!75219 List!13367)) (String!16197) (Int32!2392) (Broken!11961 (value!75220 List!13367)) (Boolean!2393) (Unit!19366) (OperatorValue!2395 (op!2452 List!13367)) (IdentifierValue!4784 (value!75221 List!13367)) (IdentifierValue!4785 (value!75222 List!13367)) (WhitespaceValue!4785 (value!75223 List!13367)) (True!4784) (False!4784) (Broken!11962 (value!75224 List!13367)) (Broken!11963 (value!75225 List!13367)) (True!4785) (RightBrace!2392) (RightBracket!2392) (Colon!2392) (Null!2392) (Comma!2392) (LeftBracket!2392) (False!4785) (LeftBrace!2392) (ImaginaryLiteralValue!2392 (text!17190 List!13367)) (StringLiteralValue!7176 (value!75226 List!13367)) (EOFValue!2392 (value!75227 List!13367)) (IdentValue!2392 (value!75228 List!13367)) (DelimiterValue!4785 (value!75229 List!13367)) (DedentValue!2392 (value!75230 List!13367)) (NewLineValue!2392 (value!75231 List!13367)) (IntegerValue!7176 (value!75232 (_ BitVec 32)) (text!17191 List!13367)) (IntegerValue!7177 (value!75233 Int) (text!17192 List!13367)) (Times!2392) (Or!2392) (Equal!2392) (Minus!2392) (Broken!11964 (value!75234 List!13367)) (And!2392) (Div!2392) (LessEqual!2392) (Mod!2392) (Concat!6008) (Not!2392) (Plus!2392) (SpaceValue!2392 (value!75235 List!13367)) (IntegerValue!7178 (value!75236 Int) (text!17193 List!13367)) (StringLiteralValue!7177 (text!17194 List!13367)) (FloatLiteralValue!4785 (text!17195 List!13367)) (BytesLiteralValue!2392 (value!75237 List!13367)) (CommentValue!4785 (value!75238 List!13367)) (StringLiteralValue!7178 (value!75239 List!13367)) (ErrorTokenValue!2392 (msg!2453 List!13367)) )
))
(declare-datatypes ((C!7522 0))(
  ( (C!7523 (val!4321 Int)) )
))
(declare-datatypes ((List!13368 0))(
  ( (Nil!13302) (Cons!13302 (h!18703 C!7522) (t!118169 List!13368)) )
))
(declare-datatypes ((IArray!8753 0))(
  ( (IArray!8754 (innerList!4434 List!13368)) )
))
(declare-datatypes ((String!16198 0))(
  ( (String!16199 (value!75240 String)) )
))
(declare-datatypes ((Conc!4374 0))(
  ( (Node!4374 (left!11437 Conc!4374) (right!11767 Conc!4374) (csize!8978 Int) (cheight!4585 Int)) (Leaf!6722 (xs!7089 IArray!8753) (csize!8979 Int)) (Empty!4374) )
))
(declare-datatypes ((BalanceConc!8688 0))(
  ( (BalanceConc!8689 (c!215460 Conc!4374)) )
))
(declare-datatypes ((Regex!3616 0))(
  ( (ElementMatch!3616 (c!215461 C!7522)) (Concat!6009 (regOne!7744 Regex!3616) (regTwo!7744 Regex!3616)) (EmptyExpr!3616) (Star!3616 (reg!3945 Regex!3616)) (EmptyLang!3616) (Union!3616 (regOne!7745 Regex!3616) (regTwo!7745 Regex!3616)) )
))
(declare-datatypes ((TokenValueInjection!4444 0))(
  ( (TokenValueInjection!4445 (toValue!3525 Int) (toChars!3384 Int)) )
))
(declare-datatypes ((Rule!4404 0))(
  ( (Rule!4405 (regex!2302 Regex!3616) (tag!2564 String!16198) (isSeparator!2302 Bool) (transformation!2302 TokenValueInjection!4444)) )
))
(declare-datatypes ((List!13369 0))(
  ( (Nil!13303) (Cons!13303 (h!18704 Rule!4404) (t!118170 List!13369)) )
))
(declare-fun rules!2550 () List!13369)

(declare-datatypes ((List!13370 0))(
  ( (Nil!13304) (Cons!13304 (h!18705 Regex!3616) (t!118171 List!13370)) )
))
(declare-fun exists!306 (List!13370 Int) Bool)

(declare-fun map!2920 (List!13369 Int) List!13370)

(assert (=> b!1312664 (= res!589404 (not (exists!306 (map!2920 rules!2550 lambda!53171) lambda!53172)))))

(declare-fun lt!432608 () List!13370)

(assert (=> b!1312664 (exists!306 lt!432608 lambda!53172)))

(declare-fun lt!432607 () Regex!3616)

(declare-datatypes ((Unit!19367 0))(
  ( (Unit!19368) )
))
(declare-fun lt!432616 () Unit!19367)

(declare-fun lt!432604 () List!13368)

(declare-fun matchRGenUnionSpec!53 (Regex!3616 List!13370 List!13368) Unit!19367)

(assert (=> b!1312664 (= lt!432616 (matchRGenUnionSpec!53 lt!432607 lt!432608 lt!432604))))

(assert (=> b!1312664 (= lt!432608 (map!2920 rules!2550 lambda!53171))))

(declare-fun b!1312665 () Bool)

(declare-fun res!589393 () Bool)

(declare-fun e!841630 () Bool)

(assert (=> b!1312665 (=> (not res!589393) (not e!841630))))

(declare-datatypes ((Token!4266 0))(
  ( (Token!4267 (value!75241 TokenValue!2392) (rule!4043 Rule!4404) (size!10810 Int) (originalCharacters!3164 List!13368)) )
))
(declare-fun t1!34 () Token!4266)

(declare-datatypes ((LexerInterface!1997 0))(
  ( (LexerInterfaceExt!1994 (__x!8614 Int)) (Lexer!1995) )
))
(declare-fun thiss!19762 () LexerInterface!1997)

(declare-fun t2!34 () Token!4266)

(declare-fun separableTokensPredicate!280 (LexerInterface!1997 Token!4266 Token!4266 List!13369) Bool)

(assert (=> b!1312665 (= res!589393 (not (separableTokensPredicate!280 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1312666 () Bool)

(declare-fun res!589401 () Bool)

(declare-fun e!841631 () Bool)

(assert (=> b!1312666 (=> res!589401 e!841631)))

(declare-datatypes ((List!13371 0))(
  ( (Nil!13305) (Cons!13305 (h!18706 Token!4266) (t!118172 List!13371)) )
))
(declare-datatypes ((IArray!8755 0))(
  ( (IArray!8756 (innerList!4435 List!13371)) )
))
(declare-datatypes ((Conc!4375 0))(
  ( (Node!4375 (left!11438 Conc!4375) (right!11768 Conc!4375) (csize!8980 Int) (cheight!4586 Int)) (Leaf!6723 (xs!7090 IArray!8755) (csize!8981 Int)) (Empty!4375) )
))
(declare-datatypes ((BalanceConc!8690 0))(
  ( (BalanceConc!8691 (c!215462 Conc!4375)) )
))
(declare-datatypes ((tuple2!12916 0))(
  ( (tuple2!12917 (_1!7344 BalanceConc!8690) (_2!7344 BalanceConc!8688)) )
))
(declare-fun lt!432617 () tuple2!12916)

(declare-fun isEmpty!7872 (BalanceConc!8688) Bool)

(assert (=> b!1312666 (= res!589401 (not (isEmpty!7872 (_2!7344 lt!432617))))))

(declare-fun b!1312668 () Bool)

(declare-fun res!589405 () Bool)

(declare-fun e!841633 () Bool)

(assert (=> b!1312668 (=> (not res!589405) (not e!841633))))

(declare-fun isEmpty!7873 (List!13369) Bool)

(assert (=> b!1312668 (= res!589405 (not (isEmpty!7873 rules!2550)))))

(declare-fun e!841623 () Bool)

(assert (=> b!1312669 (= e!841623 (and tp!382368 tp!382370))))

(declare-fun b!1312670 () Bool)

(declare-fun res!589410 () Bool)

(assert (=> b!1312670 (=> res!589410 e!841641)))

(declare-fun matchR!1618 (Regex!3616 List!13368) Bool)

(assert (=> b!1312670 (= res!589410 (not (matchR!1618 lt!432607 lt!432604)))))

(declare-fun b!1312671 () Bool)

(declare-fun res!589389 () Bool)

(assert (=> b!1312671 (=> (not res!589389) (not e!841633))))

(declare-fun rulesProduceIndividualToken!966 (LexerInterface!1997 List!13369 Token!4266) Bool)

(assert (=> b!1312671 (= res!589389 (rulesProduceIndividualToken!966 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1312672 () Bool)

(declare-fun res!589396 () Bool)

(assert (=> b!1312672 (=> res!589396 e!841641)))

(declare-fun lt!432601 () C!7522)

(declare-fun contains!2318 (List!13368 C!7522) Bool)

(assert (=> b!1312672 (= res!589396 (not (contains!2318 lt!432604 lt!432601)))))

(declare-fun b!1312673 () Bool)

(declare-fun res!589395 () Bool)

(declare-fun e!841634 () Bool)

(assert (=> b!1312673 (=> res!589395 e!841634)))

(declare-fun lt!432612 () tuple2!12916)

(assert (=> b!1312673 (= res!589395 (not (isEmpty!7872 (_2!7344 lt!432612))))))

(declare-fun e!841625 () Bool)

(declare-fun tp!382365 () Bool)

(declare-fun b!1312674 () Bool)

(declare-fun e!841627 () Bool)

(declare-fun inv!17680 (String!16198) Bool)

(declare-fun inv!17683 (TokenValueInjection!4444) Bool)

(assert (=> b!1312674 (= e!841627 (and tp!382365 (inv!17680 (tag!2564 (h!18704 rules!2550))) (inv!17683 (transformation!2302 (h!18704 rules!2550))) e!841625))))

(declare-fun b!1312675 () Bool)

(declare-fun res!589384 () Bool)

(assert (=> b!1312675 (=> res!589384 e!841641)))

(declare-fun lt!432605 () C!7522)

(assert (=> b!1312675 (= res!589384 (not (contains!2318 lt!432604 lt!432605)))))

(declare-fun b!1312676 () Bool)

(declare-fun e!841629 () Bool)

(declare-fun tp!382372 () Bool)

(declare-fun e!841624 () Bool)

(declare-fun inv!21 (TokenValue!2392) Bool)

(assert (=> b!1312676 (= e!841629 (and (inv!21 (value!75241 t2!34)) e!841624 tp!382372))))

(declare-fun b!1312677 () Bool)

(declare-fun res!589403 () Bool)

(assert (=> b!1312677 (=> (not res!589403) (not e!841633))))

(assert (=> b!1312677 (= res!589403 (rulesProduceIndividualToken!966 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1312678 () Bool)

(declare-fun res!589390 () Bool)

(assert (=> b!1312678 (=> res!589390 e!841631)))

(declare-fun contains!2319 (List!13369 Rule!4404) Bool)

(assert (=> b!1312678 (= res!589390 (not (contains!2319 rules!2550 (rule!4043 t1!34))))))

(declare-fun e!841639 () Bool)

(declare-fun b!1312679 () Bool)

(declare-fun tp!382369 () Bool)

(assert (=> b!1312679 (= e!841624 (and tp!382369 (inv!17680 (tag!2564 (rule!4043 t2!34))) (inv!17683 (transformation!2302 (rule!4043 t2!34))) e!841639))))

(declare-fun b!1312667 () Bool)

(declare-fun e!841642 () Bool)

(assert (=> b!1312667 (= e!841642 e!841631)))

(declare-fun res!589394 () Bool)

(assert (=> b!1312667 (=> res!589394 e!841631)))

(declare-fun lt!432613 () List!13371)

(declare-fun list!5000 (BalanceConc!8690) List!13371)

(assert (=> b!1312667 (= res!589394 (not (= (list!5000 (_1!7344 lt!432617)) lt!432613)))))

(assert (=> b!1312667 (= lt!432613 (Cons!13305 t1!34 Nil!13305))))

(declare-fun lt!432597 () BalanceConc!8688)

(declare-fun lex!832 (LexerInterface!1997 List!13369 BalanceConc!8688) tuple2!12916)

(assert (=> b!1312667 (= lt!432617 (lex!832 thiss!19762 rules!2550 lt!432597))))

(declare-fun print!771 (LexerInterface!1997 BalanceConc!8690) BalanceConc!8688)

(declare-fun singletonSeq!877 (Token!4266) BalanceConc!8690)

(assert (=> b!1312667 (= lt!432597 (print!771 thiss!19762 (singletonSeq!877 t1!34)))))

(declare-fun lt!432603 () Rule!4404)

(declare-fun getWitness!198 (List!13369 Int) Rule!4404)

(assert (=> b!1312667 (= lt!432603 (getWitness!198 rules!2550 lambda!53173))))

(declare-fun res!589391 () Bool)

(assert (=> start!116056 (=> (not res!589391) (not e!841633))))

(assert (=> start!116056 (= res!589391 (is-Lexer!1995 thiss!19762))))

(assert (=> start!116056 e!841633))

(assert (=> start!116056 true))

(declare-fun e!841626 () Bool)

(assert (=> start!116056 e!841626))

(declare-fun e!841628 () Bool)

(declare-fun inv!17684 (Token!4266) Bool)

(assert (=> start!116056 (and (inv!17684 t1!34) e!841628)))

(assert (=> start!116056 (and (inv!17684 t2!34) e!841629)))

(declare-fun b!1312680 () Bool)

(declare-fun res!589409 () Bool)

(assert (=> b!1312680 (=> res!589409 e!841634)))

(assert (=> b!1312680 (= res!589409 (not (contains!2319 rules!2550 (rule!4043 t2!34))))))

(declare-fun b!1312681 () Bool)

(declare-fun res!589382 () Bool)

(assert (=> b!1312681 (=> (not res!589382) (not e!841630))))

(declare-fun sepAndNonSepRulesDisjointChars!675 (List!13369 List!13369) Bool)

(assert (=> b!1312681 (= res!589382 (sepAndNonSepRulesDisjointChars!675 rules!2550 rules!2550))))

(declare-fun e!841643 () Bool)

(declare-fun e!841644 () Bool)

(assert (=> b!1312682 (= e!841643 (not e!841644))))

(declare-fun res!589383 () Bool)

(assert (=> b!1312682 (=> res!589383 e!841644)))

(declare-fun lambda!53170 () Int)

(declare-fun Exists!774 (Int) Bool)

(assert (=> b!1312682 (= res!589383 (not (Exists!774 lambda!53170)))))

(assert (=> b!1312682 (Exists!774 lambda!53170)))

(declare-fun lt!432610 () Unit!19367)

(declare-fun lt!432602 () List!13368)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!92 (Regex!3616 List!13368) Unit!19367)

(assert (=> b!1312682 (= lt!432610 (lemmaPrefixMatchThenExistsStringThatMatches!92 lt!432607 lt!432602))))

(declare-fun b!1312683 () Bool)

(declare-fun res!589407 () Bool)

(assert (=> b!1312683 (=> res!589407 e!841634)))

(declare-fun lt!432600 () BalanceConc!8688)

(declare-fun lt!432609 () List!13371)

(declare-datatypes ((tuple2!12918 0))(
  ( (tuple2!12919 (_1!7345 List!13371) (_2!7345 List!13368)) )
))
(declare-fun lexList!535 (LexerInterface!1997 List!13369 List!13368) tuple2!12918)

(declare-fun list!5001 (BalanceConc!8688) List!13368)

(assert (=> b!1312683 (= res!589407 (not (= (lexList!535 thiss!19762 rules!2550 (list!5001 lt!432600)) (tuple2!12919 lt!432609 Nil!13302))))))

(declare-fun b!1312684 () Bool)

(assert (=> b!1312684 (= e!841631 e!841634)))

(declare-fun res!589402 () Bool)

(assert (=> b!1312684 (=> res!589402 e!841634)))

(assert (=> b!1312684 (= res!589402 (not (= (list!5000 (_1!7344 lt!432612)) lt!432609)))))

(assert (=> b!1312684 (= lt!432609 (Cons!13305 t2!34 Nil!13305))))

(assert (=> b!1312684 (= lt!432612 (lex!832 thiss!19762 rules!2550 lt!432600))))

(assert (=> b!1312684 (= lt!432600 (print!771 thiss!19762 (singletonSeq!877 t2!34)))))

(declare-fun b!1312685 () Bool)

(declare-fun e!841635 () Bool)

(assert (=> b!1312685 (= e!841635 e!841641)))

(declare-fun res!589397 () Bool)

(assert (=> b!1312685 (=> res!589397 e!841641)))

(assert (=> b!1312685 (= res!589397 (not (contains!2318 lt!432602 lt!432605)))))

(declare-fun lt!432599 () BalanceConc!8688)

(declare-fun apply!3004 (BalanceConc!8688 Int) C!7522)

(assert (=> b!1312685 (= lt!432605 (apply!3004 lt!432599 0))))

(declare-fun b!1312686 () Bool)

(declare-fun res!589400 () Bool)

(assert (=> b!1312686 (=> (not res!589400) (not e!841633))))

(declare-fun rulesInvariant!1867 (LexerInterface!1997 List!13369) Bool)

(assert (=> b!1312686 (= res!589400 (rulesInvariant!1867 thiss!19762 rules!2550))))

(declare-fun b!1312687 () Bool)

(assert (=> b!1312687 (= e!841630 e!841643)))

(declare-fun res!589387 () Bool)

(assert (=> b!1312687 (=> (not res!589387) (not e!841643))))

(declare-fun prefixMatch!129 (Regex!3616 List!13368) Bool)

(assert (=> b!1312687 (= res!589387 (prefixMatch!129 lt!432607 lt!432602))))

(declare-fun rulesRegex!187 (LexerInterface!1997 List!13369) Regex!3616)

(assert (=> b!1312687 (= lt!432607 (rulesRegex!187 thiss!19762 rules!2550))))

(declare-fun lt!432614 () List!13368)

(declare-fun ++!3387 (List!13368 List!13368) List!13368)

(assert (=> b!1312687 (= lt!432602 (++!3387 lt!432614 (Cons!13302 lt!432601 Nil!13302)))))

(declare-fun lt!432611 () BalanceConc!8688)

(assert (=> b!1312687 (= lt!432601 (apply!3004 lt!432611 0))))

(assert (=> b!1312687 (= lt!432614 (list!5001 lt!432599))))

(declare-fun charsOf!1274 (Token!4266) BalanceConc!8688)

(assert (=> b!1312687 (= lt!432599 (charsOf!1274 t1!34))))

(declare-fun e!841621 () Bool)

(assert (=> b!1312688 (= e!841621 e!841642)))

(declare-fun res!589399 () Bool)

(assert (=> b!1312688 (=> res!589399 e!841642)))

(declare-fun exists!307 (List!13369 Int) Bool)

(assert (=> b!1312688 (= res!589399 (not (exists!307 rules!2550 lambda!53173)))))

(assert (=> b!1312688 (exists!307 rules!2550 lambda!53173)))

(declare-fun lt!432606 () Unit!19367)

(declare-fun lt!432615 () Regex!3616)

(declare-fun lemmaMapContains!45 (List!13369 Int Regex!3616) Unit!19367)

(assert (=> b!1312688 (= lt!432606 (lemmaMapContains!45 rules!2550 lambda!53171 lt!432615))))

(declare-fun b!1312689 () Bool)

(assert (=> b!1312689 (= e!841632 e!841621)))

(declare-fun res!589398 () Bool)

(assert (=> b!1312689 (=> res!589398 e!841621)))

(declare-fun contains!2320 (List!13370 Regex!3616) Bool)

(assert (=> b!1312689 (= res!589398 (not (contains!2320 (map!2920 rules!2550 lambda!53171) lt!432615)))))

(declare-fun getWitness!199 (List!13370 Int) Regex!3616)

(assert (=> b!1312689 (= lt!432615 (getWitness!199 (map!2920 rules!2550 lambda!53171) lambda!53172))))

(declare-fun b!1312690 () Bool)

(declare-fun res!589385 () Bool)

(assert (=> b!1312690 (=> (not res!589385) (not e!841633))))

(assert (=> b!1312690 (= res!589385 (not (= (isSeparator!2302 (rule!4043 t1!34)) (isSeparator!2302 (rule!4043 t2!34)))))))

(declare-fun b!1312691 () Bool)

(declare-fun tp!382364 () Bool)

(declare-fun e!841636 () Bool)

(assert (=> b!1312691 (= e!841628 (and (inv!21 (value!75241 t1!34)) e!841636 tp!382364))))

(declare-fun b!1312692 () Bool)

(assert (=> b!1312692 (= e!841633 e!841630)))

(declare-fun res!589406 () Bool)

(assert (=> b!1312692 (=> (not res!589406) (not e!841630))))

(declare-fun size!10811 (BalanceConc!8688) Int)

(assert (=> b!1312692 (= res!589406 (> (size!10811 lt!432611) 0))))

(assert (=> b!1312692 (= lt!432611 (charsOf!1274 t2!34))))

(assert (=> b!1312693 (= e!841639 (and tp!382361 tp!382367))))

(declare-fun b!1312694 () Bool)

(declare-fun res!589392 () Bool)

(assert (=> b!1312694 (=> res!589392 e!841634)))

(assert (=> b!1312694 (= res!589392 (not (contains!2319 rules!2550 lt!432603)))))

(declare-fun forall!3283 (List!13369 Int) Bool)

(assert (=> b!1312695 (= e!841634 (forall!3283 rules!2550 lambda!53174))))

(declare-fun lt!432598 () Unit!19367)

(declare-fun forallContained!553 (List!13369 Int Rule!4404) Unit!19367)

(assert (=> b!1312695 (= lt!432598 (forallContained!553 rules!2550 lambda!53174 lt!432603))))

(declare-fun b!1312696 () Bool)

(declare-fun res!589386 () Bool)

(assert (=> b!1312696 (=> res!589386 e!841641)))

(assert (=> b!1312696 (= res!589386 (not (contains!2318 lt!432602 lt!432601)))))

(assert (=> b!1312697 (= e!841625 (and tp!382363 tp!382371))))

(declare-fun b!1312698 () Bool)

(declare-fun tp!382362 () Bool)

(assert (=> b!1312698 (= e!841626 (and e!841627 tp!382362))))

(declare-fun b!1312699 () Bool)

(declare-fun res!589408 () Bool)

(assert (=> b!1312699 (=> res!589408 e!841631)))

(declare-datatypes ((tuple2!12920 0))(
  ( (tuple2!12921 (_1!7346 Token!4266) (_2!7346 List!13368)) )
))
(declare-datatypes ((Option!2569 0))(
  ( (None!2568) (Some!2568 (v!21095 tuple2!12920)) )
))
(declare-fun maxPrefix!1007 (LexerInterface!1997 List!13369 List!13368) Option!2569)

(assert (=> b!1312699 (= res!589408 (not (= (maxPrefix!1007 thiss!19762 rules!2550 lt!432614) (Some!2568 (tuple2!12921 t1!34 Nil!13302)))))))

(declare-fun b!1312700 () Bool)

(declare-fun tp!382366 () Bool)

(assert (=> b!1312700 (= e!841636 (and tp!382366 (inv!17680 (tag!2564 (rule!4043 t1!34))) (inv!17683 (transformation!2302 (rule!4043 t1!34))) e!841623))))

(declare-fun b!1312701 () Bool)

(assert (=> b!1312701 (= e!841644 e!841635)))

(declare-fun res!589381 () Bool)

(assert (=> b!1312701 (=> res!589381 e!841635)))

(declare-fun getSuffix!472 (List!13368 List!13368) List!13368)

(assert (=> b!1312701 (= res!589381 (not (= lt!432604 (++!3387 lt!432602 (getSuffix!472 lt!432604 lt!432602)))))))

(declare-fun pickWitness!79 (Int) List!13368)

(assert (=> b!1312701 (= lt!432604 (pickWitness!79 lambda!53170))))

(declare-fun b!1312702 () Bool)

(declare-fun res!589388 () Bool)

(assert (=> b!1312702 (=> res!589388 e!841634)))

(assert (=> b!1312702 (= res!589388 (not (= (maxPrefix!1007 thiss!19762 rules!2550 (list!5001 lt!432611)) (Some!2568 (tuple2!12921 t2!34 Nil!13302)))))))

(declare-fun b!1312703 () Bool)

(declare-fun res!589380 () Bool)

(assert (=> b!1312703 (=> res!589380 e!841631)))

(assert (=> b!1312703 (= res!589380 (not (= (lexList!535 thiss!19762 rules!2550 (list!5001 lt!432597)) (tuple2!12919 lt!432613 Nil!13302))))))

(assert (= (and start!116056 res!589391) b!1312668))

(assert (= (and b!1312668 res!589405) b!1312686))

(assert (= (and b!1312686 res!589400) b!1312677))

(assert (= (and b!1312677 res!589403) b!1312671))

(assert (= (and b!1312671 res!589389) b!1312690))

(assert (= (and b!1312690 res!589385) b!1312692))

(assert (= (and b!1312692 res!589406) b!1312681))

(assert (= (and b!1312681 res!589382) b!1312665))

(assert (= (and b!1312665 res!589393) b!1312687))

(assert (= (and b!1312687 res!589387) b!1312682))

(assert (= (and b!1312682 (not res!589383)) b!1312701))

(assert (= (and b!1312701 (not res!589381)) b!1312685))

(assert (= (and b!1312685 (not res!589397)) b!1312675))

(assert (= (and b!1312675 (not res!589384)) b!1312696))

(assert (= (and b!1312696 (not res!589386)) b!1312672))

(assert (= (and b!1312672 (not res!589396)) b!1312670))

(assert (= (and b!1312670 (not res!589410)) b!1312664))

(assert (= (and b!1312664 (not res!589404)) b!1312689))

(assert (= (and b!1312689 (not res!589398)) b!1312688))

(assert (= (and b!1312688 (not res!589399)) b!1312667))

(assert (= (and b!1312667 (not res!589394)) b!1312666))

(assert (= (and b!1312666 (not res!589401)) b!1312703))

(assert (= (and b!1312703 (not res!589380)) b!1312699))

(assert (= (and b!1312699 (not res!589408)) b!1312678))

(assert (= (and b!1312678 (not res!589390)) b!1312684))

(assert (= (and b!1312684 (not res!589402)) b!1312673))

(assert (= (and b!1312673 (not res!589395)) b!1312683))

(assert (= (and b!1312683 (not res!589407)) b!1312702))

(assert (= (and b!1312702 (not res!589388)) b!1312680))

(assert (= (and b!1312680 (not res!589409)) b!1312694))

(assert (= (and b!1312694 (not res!589392)) b!1312695))

(assert (= b!1312674 b!1312697))

(assert (= b!1312698 b!1312674))

(assert (= (and start!116056 (is-Cons!13303 rules!2550)) b!1312698))

(assert (= b!1312700 b!1312669))

(assert (= b!1312691 b!1312700))

(assert (= start!116056 b!1312691))

(assert (= b!1312679 b!1312693))

(assert (= b!1312676 b!1312679))

(assert (= start!116056 b!1312676))

(declare-fun m!1465507 () Bool)

(assert (=> b!1312700 m!1465507))

(declare-fun m!1465509 () Bool)

(assert (=> b!1312700 m!1465509))

(declare-fun m!1465511 () Bool)

(assert (=> b!1312667 m!1465511))

(declare-fun m!1465513 () Bool)

(assert (=> b!1312667 m!1465513))

(declare-fun m!1465515 () Bool)

(assert (=> b!1312667 m!1465515))

(declare-fun m!1465517 () Bool)

(assert (=> b!1312667 m!1465517))

(assert (=> b!1312667 m!1465515))

(declare-fun m!1465519 () Bool)

(assert (=> b!1312667 m!1465519))

(declare-fun m!1465521 () Bool)

(assert (=> b!1312682 m!1465521))

(assert (=> b!1312682 m!1465521))

(declare-fun m!1465523 () Bool)

(assert (=> b!1312682 m!1465523))

(declare-fun m!1465525 () Bool)

(assert (=> b!1312684 m!1465525))

(declare-fun m!1465527 () Bool)

(assert (=> b!1312684 m!1465527))

(declare-fun m!1465529 () Bool)

(assert (=> b!1312684 m!1465529))

(assert (=> b!1312684 m!1465529))

(declare-fun m!1465531 () Bool)

(assert (=> b!1312684 m!1465531))

(declare-fun m!1465533 () Bool)

(assert (=> b!1312679 m!1465533))

(declare-fun m!1465535 () Bool)

(assert (=> b!1312679 m!1465535))

(declare-fun m!1465537 () Bool)

(assert (=> b!1312665 m!1465537))

(declare-fun m!1465539 () Bool)

(assert (=> b!1312680 m!1465539))

(declare-fun m!1465541 () Bool)

(assert (=> b!1312677 m!1465541))

(declare-fun m!1465543 () Bool)

(assert (=> b!1312681 m!1465543))

(declare-fun m!1465545 () Bool)

(assert (=> b!1312675 m!1465545))

(declare-fun m!1465547 () Bool)

(assert (=> b!1312676 m!1465547))

(declare-fun m!1465549 () Bool)

(assert (=> b!1312691 m!1465549))

(declare-fun m!1465551 () Bool)

(assert (=> b!1312694 m!1465551))

(declare-fun m!1465553 () Bool)

(assert (=> b!1312696 m!1465553))

(declare-fun m!1465555 () Bool)

(assert (=> start!116056 m!1465555))

(declare-fun m!1465557 () Bool)

(assert (=> start!116056 m!1465557))

(declare-fun m!1465559 () Bool)

(assert (=> b!1312692 m!1465559))

(declare-fun m!1465561 () Bool)

(assert (=> b!1312692 m!1465561))

(declare-fun m!1465563 () Bool)

(assert (=> b!1312671 m!1465563))

(declare-fun m!1465565 () Bool)

(assert (=> b!1312670 m!1465565))

(declare-fun m!1465567 () Bool)

(assert (=> b!1312674 m!1465567))

(declare-fun m!1465569 () Bool)

(assert (=> b!1312674 m!1465569))

(declare-fun m!1465571 () Bool)

(assert (=> b!1312701 m!1465571))

(assert (=> b!1312701 m!1465571))

(declare-fun m!1465573 () Bool)

(assert (=> b!1312701 m!1465573))

(declare-fun m!1465575 () Bool)

(assert (=> b!1312701 m!1465575))

(declare-fun m!1465577 () Bool)

(assert (=> b!1312689 m!1465577))

(assert (=> b!1312689 m!1465577))

(declare-fun m!1465579 () Bool)

(assert (=> b!1312689 m!1465579))

(assert (=> b!1312689 m!1465577))

(assert (=> b!1312689 m!1465577))

(declare-fun m!1465581 () Bool)

(assert (=> b!1312689 m!1465581))

(declare-fun m!1465583 () Bool)

(assert (=> b!1312683 m!1465583))

(assert (=> b!1312683 m!1465583))

(declare-fun m!1465585 () Bool)

(assert (=> b!1312683 m!1465585))

(declare-fun m!1465587 () Bool)

(assert (=> b!1312686 m!1465587))

(declare-fun m!1465589 () Bool)

(assert (=> b!1312678 m!1465589))

(declare-fun m!1465591 () Bool)

(assert (=> b!1312702 m!1465591))

(assert (=> b!1312702 m!1465591))

(declare-fun m!1465593 () Bool)

(assert (=> b!1312702 m!1465593))

(declare-fun m!1465595 () Bool)

(assert (=> b!1312668 m!1465595))

(declare-fun m!1465597 () Bool)

(assert (=> b!1312672 m!1465597))

(declare-fun m!1465599 () Bool)

(assert (=> b!1312699 m!1465599))

(declare-fun m!1465601 () Bool)

(assert (=> b!1312685 m!1465601))

(declare-fun m!1465603 () Bool)

(assert (=> b!1312685 m!1465603))

(declare-fun m!1465605 () Bool)

(assert (=> b!1312695 m!1465605))

(declare-fun m!1465607 () Bool)

(assert (=> b!1312695 m!1465607))

(declare-fun m!1465609 () Bool)

(assert (=> b!1312688 m!1465609))

(assert (=> b!1312688 m!1465609))

(declare-fun m!1465611 () Bool)

(assert (=> b!1312688 m!1465611))

(declare-fun m!1465613 () Bool)

(assert (=> b!1312664 m!1465613))

(assert (=> b!1312664 m!1465577))

(declare-fun m!1465615 () Bool)

(assert (=> b!1312664 m!1465615))

(assert (=> b!1312664 m!1465577))

(assert (=> b!1312664 m!1465577))

(declare-fun m!1465617 () Bool)

(assert (=> b!1312664 m!1465617))

(declare-fun m!1465619 () Bool)

(assert (=> b!1312703 m!1465619))

(assert (=> b!1312703 m!1465619))

(declare-fun m!1465621 () Bool)

(assert (=> b!1312703 m!1465621))

(declare-fun m!1465623 () Bool)

(assert (=> b!1312687 m!1465623))

(declare-fun m!1465625 () Bool)

(assert (=> b!1312687 m!1465625))

(declare-fun m!1465627 () Bool)

(assert (=> b!1312687 m!1465627))

(declare-fun m!1465629 () Bool)

(assert (=> b!1312687 m!1465629))

(declare-fun m!1465631 () Bool)

(assert (=> b!1312687 m!1465631))

(declare-fun m!1465633 () Bool)

(assert (=> b!1312687 m!1465633))

(declare-fun m!1465635 () Bool)

(assert (=> b!1312673 m!1465635))

(declare-fun m!1465637 () Bool)

(assert (=> b!1312666 m!1465637))

(push 1)

(assert b_and!87677)

(assert (not b_next!32325))

(assert (not b!1312671))

(assert (not b!1312701))

(assert (not b!1312666))

(assert (not b!1312703))

(assert (not b!1312681))

(assert (not b!1312664))

(assert (not b!1312698))

(assert (not b!1312696))

(assert (not b!1312682))

(assert (not b!1312668))

(assert (not b!1312680))

(assert (not b!1312675))

(assert (not b!1312694))

(assert (not b_next!32319))

(assert (not b!1312686))

(assert (not b!1312702))

(assert b_and!87675)

(assert (not b!1312672))

(assert b_and!87679)

(assert (not b!1312665))

(assert (not b!1312677))

(assert (not b!1312670))

(assert (not b!1312678))

(assert (not b_next!32323))

(assert (not b!1312667))

(assert (not b!1312683))

(assert (not b!1312684))

(assert (not b_next!32327))

(assert (not b!1312687))

(assert (not b!1312676))

(assert b_and!87681)

(assert (not b_next!32321))

(assert b_and!87685)

(assert (not b_next!32329))

(assert (not b!1312673))

(assert (not b!1312700))

(assert b_and!87683)

(assert (not b!1312685))

(assert (not b!1312695))

(assert (not b!1312689))

(assert (not b!1312679))

(assert (not b!1312691))

(assert (not b!1312674))

(assert (not start!116056))

(assert (not b!1312692))

(assert (not b!1312688))

(assert (not b!1312699))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!32319))

(assert b_and!87677)

(assert (not b_next!32325))

(assert b_and!87675)

(assert b_and!87679)

(assert (not b_next!32323))

(assert (not b_next!32327))

(assert (not b_next!32329))

(assert b_and!87683)

(assert b_and!87681)

(assert (not b_next!32321))

(assert b_and!87685)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!369916 () Bool)

(assert (=> d!369916 (= (isEmpty!7873 rules!2550) (is-Nil!13303 rules!2550))))

(assert (=> b!1312668 d!369916))

(declare-fun b!1312868 () Bool)

(declare-fun e!841741 () Bool)

(declare-fun e!841739 () Bool)

(assert (=> b!1312868 (= e!841741 e!841739)))

(declare-fun c!215472 () Bool)

(assert (=> b!1312868 (= c!215472 (is-IntegerValue!7177 (value!75241 t1!34)))))

(declare-fun b!1312869 () Bool)

(declare-fun inv!16 (TokenValue!2392) Bool)

(assert (=> b!1312869 (= e!841741 (inv!16 (value!75241 t1!34)))))

(declare-fun d!369918 () Bool)

(declare-fun c!215471 () Bool)

(assert (=> d!369918 (= c!215471 (is-IntegerValue!7176 (value!75241 t1!34)))))

(assert (=> d!369918 (= (inv!21 (value!75241 t1!34)) e!841741)))

(declare-fun b!1312870 () Bool)

(declare-fun res!589522 () Bool)

(declare-fun e!841740 () Bool)

(assert (=> b!1312870 (=> res!589522 e!841740)))

(assert (=> b!1312870 (= res!589522 (not (is-IntegerValue!7178 (value!75241 t1!34))))))

(assert (=> b!1312870 (= e!841739 e!841740)))

(declare-fun b!1312871 () Bool)

(declare-fun inv!17 (TokenValue!2392) Bool)

(assert (=> b!1312871 (= e!841739 (inv!17 (value!75241 t1!34)))))

(declare-fun b!1312872 () Bool)

(declare-fun inv!15 (TokenValue!2392) Bool)

(assert (=> b!1312872 (= e!841740 (inv!15 (value!75241 t1!34)))))

(assert (= (and d!369918 c!215471) b!1312869))

(assert (= (and d!369918 (not c!215471)) b!1312868))

(assert (= (and b!1312868 c!215472) b!1312871))

(assert (= (and b!1312868 (not c!215472)) b!1312870))

(assert (= (and b!1312870 (not res!589522)) b!1312872))

(declare-fun m!1465771 () Bool)

(assert (=> b!1312869 m!1465771))

(declare-fun m!1465773 () Bool)

(assert (=> b!1312871 m!1465773))

(declare-fun m!1465775 () Bool)

(assert (=> b!1312872 m!1465775))

(assert (=> b!1312691 d!369918))

(declare-fun b!1312901 () Bool)

(declare-fun e!841760 () Bool)

(declare-fun e!841762 () Bool)

(assert (=> b!1312901 (= e!841760 e!841762)))

(declare-fun res!589546 () Bool)

(assert (=> b!1312901 (=> res!589546 e!841762)))

(declare-fun call!89358 () Bool)

(assert (=> b!1312901 (= res!589546 call!89358)))

(declare-fun b!1312902 () Bool)

(declare-fun res!589543 () Bool)

(declare-fun e!841759 () Bool)

(assert (=> b!1312902 (=> (not res!589543) (not e!841759))))

(assert (=> b!1312902 (= res!589543 (not call!89358))))

(declare-fun b!1312903 () Bool)

(declare-fun head!2259 (List!13368) C!7522)

(assert (=> b!1312903 (= e!841759 (= (head!2259 lt!432604) (c!215461 lt!432607)))))

(declare-fun b!1312905 () Bool)

(assert (=> b!1312905 (= e!841762 (not (= (head!2259 lt!432604) (c!215461 lt!432607))))))

(declare-fun b!1312906 () Bool)

(declare-fun res!589545 () Bool)

(assert (=> b!1312906 (=> (not res!589545) (not e!841759))))

(declare-fun isEmpty!7876 (List!13368) Bool)

(declare-fun tail!1879 (List!13368) List!13368)

(assert (=> b!1312906 (= res!589545 (isEmpty!7876 (tail!1879 lt!432604)))))

(declare-fun bm!89353 () Bool)

(assert (=> bm!89353 (= call!89358 (isEmpty!7876 lt!432604))))

(declare-fun b!1312907 () Bool)

(declare-fun e!841761 () Bool)

(assert (=> b!1312907 (= e!841761 e!841760)))

(declare-fun res!589547 () Bool)

(assert (=> b!1312907 (=> (not res!589547) (not e!841760))))

(declare-fun lt!432683 () Bool)

(assert (=> b!1312907 (= res!589547 (not lt!432683))))

(declare-fun b!1312908 () Bool)

(declare-fun e!841758 () Bool)

(assert (=> b!1312908 (= e!841758 (= lt!432683 call!89358))))

(declare-fun b!1312909 () Bool)

(declare-fun res!589540 () Bool)

(assert (=> b!1312909 (=> res!589540 e!841761)))

(assert (=> b!1312909 (= res!589540 (not (is-ElementMatch!3616 lt!432607)))))

(declare-fun e!841756 () Bool)

(assert (=> b!1312909 (= e!841756 e!841761)))

(declare-fun d!369920 () Bool)

(assert (=> d!369920 e!841758))

(declare-fun c!215479 () Bool)

(assert (=> d!369920 (= c!215479 (is-EmptyExpr!3616 lt!432607))))

(declare-fun e!841757 () Bool)

(assert (=> d!369920 (= lt!432683 e!841757)))

(declare-fun c!215481 () Bool)

(assert (=> d!369920 (= c!215481 (isEmpty!7876 lt!432604))))

(declare-fun validRegex!1544 (Regex!3616) Bool)

(assert (=> d!369920 (validRegex!1544 lt!432607)))

(assert (=> d!369920 (= (matchR!1618 lt!432607 lt!432604) lt!432683)))

(declare-fun b!1312904 () Bool)

(declare-fun nullable!1142 (Regex!3616) Bool)

(assert (=> b!1312904 (= e!841757 (nullable!1142 lt!432607))))

(declare-fun b!1312910 () Bool)

(declare-fun derivativeStep!894 (Regex!3616 C!7522) Regex!3616)

(assert (=> b!1312910 (= e!841757 (matchR!1618 (derivativeStep!894 lt!432607 (head!2259 lt!432604)) (tail!1879 lt!432604)))))

(declare-fun b!1312911 () Bool)

(assert (=> b!1312911 (= e!841758 e!841756)))

(declare-fun c!215480 () Bool)

(assert (=> b!1312911 (= c!215480 (is-EmptyLang!3616 lt!432607))))

(declare-fun b!1312912 () Bool)

(declare-fun res!589541 () Bool)

(assert (=> b!1312912 (=> res!589541 e!841761)))

(assert (=> b!1312912 (= res!589541 e!841759)))

(declare-fun res!589544 () Bool)

(assert (=> b!1312912 (=> (not res!589544) (not e!841759))))

(assert (=> b!1312912 (= res!589544 lt!432683)))

(declare-fun b!1312913 () Bool)

(assert (=> b!1312913 (= e!841756 (not lt!432683))))

(declare-fun b!1312914 () Bool)

(declare-fun res!589542 () Bool)

(assert (=> b!1312914 (=> res!589542 e!841762)))

(assert (=> b!1312914 (= res!589542 (not (isEmpty!7876 (tail!1879 lt!432604))))))

(assert (= (and d!369920 c!215481) b!1312904))

(assert (= (and d!369920 (not c!215481)) b!1312910))

(assert (= (and d!369920 c!215479) b!1312908))

(assert (= (and d!369920 (not c!215479)) b!1312911))

(assert (= (and b!1312911 c!215480) b!1312913))

(assert (= (and b!1312911 (not c!215480)) b!1312909))

(assert (= (and b!1312909 (not res!589540)) b!1312912))

(assert (= (and b!1312912 res!589544) b!1312902))

(assert (= (and b!1312902 res!589543) b!1312906))

(assert (= (and b!1312906 res!589545) b!1312903))

(assert (= (and b!1312912 (not res!589541)) b!1312907))

(assert (= (and b!1312907 res!589547) b!1312901))

(assert (= (and b!1312901 (not res!589546)) b!1312914))

(assert (= (and b!1312914 (not res!589542)) b!1312905))

(assert (= (or b!1312908 b!1312901 b!1312902) bm!89353))

(declare-fun m!1465777 () Bool)

(assert (=> bm!89353 m!1465777))

(declare-fun m!1465779 () Bool)

(assert (=> b!1312914 m!1465779))

(assert (=> b!1312914 m!1465779))

(declare-fun m!1465781 () Bool)

(assert (=> b!1312914 m!1465781))

(declare-fun m!1465783 () Bool)

(assert (=> b!1312910 m!1465783))

(assert (=> b!1312910 m!1465783))

(declare-fun m!1465785 () Bool)

(assert (=> b!1312910 m!1465785))

(assert (=> b!1312910 m!1465779))

(assert (=> b!1312910 m!1465785))

(assert (=> b!1312910 m!1465779))

(declare-fun m!1465787 () Bool)

(assert (=> b!1312910 m!1465787))

(assert (=> b!1312905 m!1465783))

(assert (=> b!1312906 m!1465779))

(assert (=> b!1312906 m!1465779))

(assert (=> b!1312906 m!1465781))

(assert (=> d!369920 m!1465777))

(declare-fun m!1465789 () Bool)

(assert (=> d!369920 m!1465789))

(assert (=> b!1312903 m!1465783))

(declare-fun m!1465791 () Bool)

(assert (=> b!1312904 m!1465791))

(assert (=> b!1312670 d!369920))

(declare-fun d!369922 () Bool)

(declare-fun lt!432688 () Bool)

(declare-fun e!841768 () Bool)

(assert (=> d!369922 (= lt!432688 e!841768)))

(declare-fun res!589557 () Bool)

(assert (=> d!369922 (=> (not res!589557) (not e!841768))))

(assert (=> d!369922 (= res!589557 (= (list!5000 (_1!7344 (lex!832 thiss!19762 rules!2550 (print!771 thiss!19762 (singletonSeq!877 t2!34))))) (list!5000 (singletonSeq!877 t2!34))))))

(declare-fun e!841767 () Bool)

(assert (=> d!369922 (= lt!432688 e!841767)))

(declare-fun res!589558 () Bool)

(assert (=> d!369922 (=> (not res!589558) (not e!841767))))

(declare-fun lt!432689 () tuple2!12916)

(declare-fun size!10814 (BalanceConc!8690) Int)

(assert (=> d!369922 (= res!589558 (= (size!10814 (_1!7344 lt!432689)) 1))))

(assert (=> d!369922 (= lt!432689 (lex!832 thiss!19762 rules!2550 (print!771 thiss!19762 (singletonSeq!877 t2!34))))))

(assert (=> d!369922 (not (isEmpty!7873 rules!2550))))

(assert (=> d!369922 (= (rulesProduceIndividualToken!966 thiss!19762 rules!2550 t2!34) lt!432688)))

(declare-fun b!1312921 () Bool)

(declare-fun res!589559 () Bool)

(assert (=> b!1312921 (=> (not res!589559) (not e!841767))))

(declare-fun apply!3006 (BalanceConc!8690 Int) Token!4266)

(assert (=> b!1312921 (= res!589559 (= (apply!3006 (_1!7344 lt!432689) 0) t2!34))))

(declare-fun b!1312922 () Bool)

(assert (=> b!1312922 (= e!841767 (isEmpty!7872 (_2!7344 lt!432689)))))

(declare-fun b!1312923 () Bool)

(assert (=> b!1312923 (= e!841768 (isEmpty!7872 (_2!7344 (lex!832 thiss!19762 rules!2550 (print!771 thiss!19762 (singletonSeq!877 t2!34))))))))

(assert (= (and d!369922 res!589558) b!1312921))

(assert (= (and b!1312921 res!589559) b!1312922))

(assert (= (and d!369922 res!589557) b!1312923))

(declare-fun m!1465793 () Bool)

(assert (=> d!369922 m!1465793))

(assert (=> d!369922 m!1465531))

(declare-fun m!1465795 () Bool)

(assert (=> d!369922 m!1465795))

(assert (=> d!369922 m!1465529))

(declare-fun m!1465797 () Bool)

(assert (=> d!369922 m!1465797))

(assert (=> d!369922 m!1465529))

(assert (=> d!369922 m!1465531))

(declare-fun m!1465799 () Bool)

(assert (=> d!369922 m!1465799))

(assert (=> d!369922 m!1465595))

(assert (=> d!369922 m!1465529))

(declare-fun m!1465801 () Bool)

(assert (=> b!1312921 m!1465801))

(declare-fun m!1465803 () Bool)

(assert (=> b!1312922 m!1465803))

(assert (=> b!1312923 m!1465529))

(assert (=> b!1312923 m!1465529))

(assert (=> b!1312923 m!1465531))

(assert (=> b!1312923 m!1465531))

(assert (=> b!1312923 m!1465795))

(declare-fun m!1465805 () Bool)

(assert (=> b!1312923 m!1465805))

(assert (=> b!1312671 d!369922))

(declare-fun d!369926 () Bool)

(declare-fun lt!432694 () Int)

(declare-fun size!10815 (List!13368) Int)

(assert (=> d!369926 (= lt!432694 (size!10815 (list!5001 lt!432611)))))

(declare-fun size!10816 (Conc!4374) Int)

(assert (=> d!369926 (= lt!432694 (size!10816 (c!215460 lt!432611)))))

(assert (=> d!369926 (= (size!10811 lt!432611) lt!432694)))

(declare-fun bs!330097 () Bool)

(assert (= bs!330097 d!369926))

(assert (=> bs!330097 m!1465591))

(assert (=> bs!330097 m!1465591))

(declare-fun m!1465807 () Bool)

(assert (=> bs!330097 m!1465807))

(declare-fun m!1465809 () Bool)

(assert (=> bs!330097 m!1465809))

(assert (=> b!1312692 d!369926))

(declare-fun d!369928 () Bool)

(declare-fun lt!432697 () BalanceConc!8688)

(assert (=> d!369928 (= (list!5001 lt!432697) (originalCharacters!3164 t2!34))))

(declare-fun dynLambda!5779 (Int TokenValue!2392) BalanceConc!8688)

(assert (=> d!369928 (= lt!432697 (dynLambda!5779 (toChars!3384 (transformation!2302 (rule!4043 t2!34))) (value!75241 t2!34)))))

(assert (=> d!369928 (= (charsOf!1274 t2!34) lt!432697)))

(declare-fun b_lambda!37791 () Bool)

(assert (=> (not b_lambda!37791) (not d!369928)))

(declare-fun tb!69809 () Bool)

(declare-fun t!118180 () Bool)

(assert (=> (and b!1312669 (= (toChars!3384 (transformation!2302 (rule!4043 t1!34))) (toChars!3384 (transformation!2302 (rule!4043 t2!34)))) t!118180) tb!69809))

(declare-fun b!1312934 () Bool)

(declare-fun e!841777 () Bool)

(declare-fun tp!382411 () Bool)

(declare-fun inv!17687 (Conc!4374) Bool)

(assert (=> b!1312934 (= e!841777 (and (inv!17687 (c!215460 (dynLambda!5779 (toChars!3384 (transformation!2302 (rule!4043 t2!34))) (value!75241 t2!34)))) tp!382411))))

(declare-fun result!84694 () Bool)

(declare-fun inv!17688 (BalanceConc!8688) Bool)

(assert (=> tb!69809 (= result!84694 (and (inv!17688 (dynLambda!5779 (toChars!3384 (transformation!2302 (rule!4043 t2!34))) (value!75241 t2!34))) e!841777))))

(assert (= tb!69809 b!1312934))

(declare-fun m!1465811 () Bool)

(assert (=> b!1312934 m!1465811))

(declare-fun m!1465813 () Bool)

(assert (=> tb!69809 m!1465813))

(assert (=> d!369928 t!118180))

(declare-fun b_and!87699 () Bool)

(assert (= b_and!87677 (and (=> t!118180 result!84694) b_and!87699)))

(declare-fun t!118182 () Bool)

(declare-fun tb!69811 () Bool)

(assert (=> (and b!1312693 (= (toChars!3384 (transformation!2302 (rule!4043 t2!34))) (toChars!3384 (transformation!2302 (rule!4043 t2!34)))) t!118182) tb!69811))

(declare-fun result!84698 () Bool)

(assert (= result!84698 result!84694))

(assert (=> d!369928 t!118182))

(declare-fun b_and!87701 () Bool)

(assert (= b_and!87681 (and (=> t!118182 result!84698) b_and!87701)))

(declare-fun t!118184 () Bool)

(declare-fun tb!69813 () Bool)

(assert (=> (and b!1312697 (= (toChars!3384 (transformation!2302 (h!18704 rules!2550))) (toChars!3384 (transformation!2302 (rule!4043 t2!34)))) t!118184) tb!69813))

(declare-fun result!84700 () Bool)

(assert (= result!84700 result!84694))

(assert (=> d!369928 t!118184))

(declare-fun b_and!87703 () Bool)

(assert (= b_and!87685 (and (=> t!118184 result!84700) b_and!87703)))

(declare-fun m!1465815 () Bool)

(assert (=> d!369928 m!1465815))

(declare-fun m!1465817 () Bool)

(assert (=> d!369928 m!1465817))

(assert (=> b!1312692 d!369928))

(declare-fun d!369930 () Bool)

(declare-fun lt!432701 () Bool)

(declare-fun content!1860 (List!13368) (Set C!7522))

(assert (=> d!369930 (= lt!432701 (set.member lt!432601 (content!1860 lt!432604)))))

(declare-fun e!841782 () Bool)

(assert (=> d!369930 (= lt!432701 e!841782)))

(declare-fun res!589570 () Bool)

(assert (=> d!369930 (=> (not res!589570) (not e!841782))))

(assert (=> d!369930 (= res!589570 (is-Cons!13302 lt!432604))))

(assert (=> d!369930 (= (contains!2318 lt!432604 lt!432601) lt!432701)))

(declare-fun b!1312939 () Bool)

(declare-fun e!841783 () Bool)

(assert (=> b!1312939 (= e!841782 e!841783)))

(declare-fun res!589571 () Bool)

(assert (=> b!1312939 (=> res!589571 e!841783)))

(assert (=> b!1312939 (= res!589571 (= (h!18703 lt!432604) lt!432601))))

(declare-fun b!1312940 () Bool)

(assert (=> b!1312940 (= e!841783 (contains!2318 (t!118169 lt!432604) lt!432601))))

(assert (= (and d!369930 res!589570) b!1312939))

(assert (= (and b!1312939 (not res!589571)) b!1312940))

(declare-fun m!1465825 () Bool)

(assert (=> d!369930 m!1465825))

(declare-fun m!1465827 () Bool)

(assert (=> d!369930 m!1465827))

(declare-fun m!1465829 () Bool)

(assert (=> b!1312940 m!1465829))

(assert (=> b!1312672 d!369930))

(declare-fun d!369934 () Bool)

(declare-fun lt!432704 () Bool)

(assert (=> d!369934 (= lt!432704 (isEmpty!7876 (list!5001 (_2!7344 lt!432612))))))

(declare-fun isEmpty!7877 (Conc!4374) Bool)

(assert (=> d!369934 (= lt!432704 (isEmpty!7877 (c!215460 (_2!7344 lt!432612))))))

(assert (=> d!369934 (= (isEmpty!7872 (_2!7344 lt!432612)) lt!432704)))

(declare-fun bs!330098 () Bool)

(assert (= bs!330098 d!369934))

(declare-fun m!1465831 () Bool)

(assert (=> bs!330098 m!1465831))

(assert (=> bs!330098 m!1465831))

(declare-fun m!1465833 () Bool)

(assert (=> bs!330098 m!1465833))

(declare-fun m!1465835 () Bool)

(assert (=> bs!330098 m!1465835))

(assert (=> b!1312673 d!369934))

(declare-fun d!369936 () Bool)

(declare-fun lt!432709 () Bool)

(declare-fun content!1861 (List!13369) (Set Rule!4404))

(assert (=> d!369936 (= lt!432709 (set.member lt!432603 (content!1861 rules!2550)))))

(declare-fun e!841790 () Bool)

(assert (=> d!369936 (= lt!432709 e!841790)))

(declare-fun res!589577 () Bool)

(assert (=> d!369936 (=> (not res!589577) (not e!841790))))

(assert (=> d!369936 (= res!589577 (is-Cons!13303 rules!2550))))

(assert (=> d!369936 (= (contains!2319 rules!2550 lt!432603) lt!432709)))

(declare-fun b!1312949 () Bool)

(declare-fun e!841791 () Bool)

(assert (=> b!1312949 (= e!841790 e!841791)))

(declare-fun res!589576 () Bool)

(assert (=> b!1312949 (=> res!589576 e!841791)))

(assert (=> b!1312949 (= res!589576 (= (h!18704 rules!2550) lt!432603))))

(declare-fun b!1312950 () Bool)

(assert (=> b!1312950 (= e!841791 (contains!2319 (t!118170 rules!2550) lt!432603))))

(assert (= (and d!369936 res!589577) b!1312949))

(assert (= (and b!1312949 (not res!589576)) b!1312950))

(declare-fun m!1465837 () Bool)

(assert (=> d!369936 m!1465837))

(declare-fun m!1465839 () Bool)

(assert (=> d!369936 m!1465839))

(declare-fun m!1465841 () Bool)

(assert (=> b!1312950 m!1465841))

(assert (=> b!1312694 d!369936))

(declare-fun d!369938 () Bool)

(declare-fun list!5004 (Conc!4375) List!13371)

(assert (=> d!369938 (= (list!5000 (_1!7344 lt!432612)) (list!5004 (c!215462 (_1!7344 lt!432612))))))

(declare-fun bs!330099 () Bool)

(assert (= bs!330099 d!369938))

(declare-fun m!1465843 () Bool)

(assert (=> bs!330099 m!1465843))

(assert (=> b!1312684 d!369938))

(declare-fun b!1312999 () Bool)

(declare-fun res!589608 () Bool)

(declare-fun e!841830 () Bool)

(assert (=> b!1312999 (=> (not res!589608) (not e!841830))))

(declare-fun lt!432725 () tuple2!12916)

(assert (=> b!1312999 (= res!589608 (= (list!5000 (_1!7344 lt!432725)) (_1!7345 (lexList!535 thiss!19762 rules!2550 (list!5001 lt!432600)))))))

(declare-fun d!369940 () Bool)

(assert (=> d!369940 e!841830))

(declare-fun res!589609 () Bool)

(assert (=> d!369940 (=> (not res!589609) (not e!841830))))

(declare-fun e!841831 () Bool)

(assert (=> d!369940 (= res!589609 e!841831)))

(declare-fun c!215493 () Bool)

(assert (=> d!369940 (= c!215493 (> (size!10814 (_1!7344 lt!432725)) 0))))

(declare-fun lexTailRecV2!360 (LexerInterface!1997 List!13369 BalanceConc!8688 BalanceConc!8688 BalanceConc!8688 BalanceConc!8690) tuple2!12916)

(assert (=> d!369940 (= lt!432725 (lexTailRecV2!360 thiss!19762 rules!2550 lt!432600 (BalanceConc!8689 Empty!4374) lt!432600 (BalanceConc!8691 Empty!4375)))))

(assert (=> d!369940 (= (lex!832 thiss!19762 rules!2550 lt!432600) lt!432725)))

(declare-fun b!1313000 () Bool)

(assert (=> b!1313000 (= e!841831 (= (_2!7344 lt!432725) lt!432600))))

(declare-fun b!1313001 () Bool)

(declare-fun e!841829 () Bool)

(declare-fun isEmpty!7878 (BalanceConc!8690) Bool)

(assert (=> b!1313001 (= e!841829 (not (isEmpty!7878 (_1!7344 lt!432725))))))

(declare-fun b!1313002 () Bool)

(assert (=> b!1313002 (= e!841830 (= (list!5001 (_2!7344 lt!432725)) (_2!7345 (lexList!535 thiss!19762 rules!2550 (list!5001 lt!432600)))))))

(declare-fun b!1313003 () Bool)

(assert (=> b!1313003 (= e!841831 e!841829)))

(declare-fun res!589610 () Bool)

(assert (=> b!1313003 (= res!589610 (< (size!10811 (_2!7344 lt!432725)) (size!10811 lt!432600)))))

(assert (=> b!1313003 (=> (not res!589610) (not e!841829))))

(assert (= (and d!369940 c!215493) b!1313003))

(assert (= (and d!369940 (not c!215493)) b!1313000))

(assert (= (and b!1313003 res!589610) b!1313001))

(assert (= (and d!369940 res!589609) b!1312999))

(assert (= (and b!1312999 res!589608) b!1313002))

(declare-fun m!1465883 () Bool)

(assert (=> b!1313001 m!1465883))

(declare-fun m!1465885 () Bool)

(assert (=> b!1313003 m!1465885))

(declare-fun m!1465887 () Bool)

(assert (=> b!1313003 m!1465887))

(declare-fun m!1465889 () Bool)

(assert (=> b!1312999 m!1465889))

(assert (=> b!1312999 m!1465583))

(assert (=> b!1312999 m!1465583))

(assert (=> b!1312999 m!1465585))

(declare-fun m!1465891 () Bool)

(assert (=> b!1313002 m!1465891))

(assert (=> b!1313002 m!1465583))

(assert (=> b!1313002 m!1465583))

(assert (=> b!1313002 m!1465585))

(declare-fun m!1465893 () Bool)

(assert (=> d!369940 m!1465893))

(declare-fun m!1465895 () Bool)

(assert (=> d!369940 m!1465895))

(assert (=> b!1312684 d!369940))

(declare-fun d!369956 () Bool)

(declare-fun lt!432728 () BalanceConc!8688)

(declare-fun printList!555 (LexerInterface!1997 List!13371) List!13368)

(assert (=> d!369956 (= (list!5001 lt!432728) (printList!555 thiss!19762 (list!5000 (singletonSeq!877 t2!34))))))

(declare-fun printTailRec!537 (LexerInterface!1997 BalanceConc!8690 Int BalanceConc!8688) BalanceConc!8688)

(assert (=> d!369956 (= lt!432728 (printTailRec!537 thiss!19762 (singletonSeq!877 t2!34) 0 (BalanceConc!8689 Empty!4374)))))

(assert (=> d!369956 (= (print!771 thiss!19762 (singletonSeq!877 t2!34)) lt!432728)))

(declare-fun bs!330100 () Bool)

(assert (= bs!330100 d!369956))

(declare-fun m!1465897 () Bool)

(assert (=> bs!330100 m!1465897))

(assert (=> bs!330100 m!1465529))

(assert (=> bs!330100 m!1465797))

(assert (=> bs!330100 m!1465797))

(declare-fun m!1465899 () Bool)

(assert (=> bs!330100 m!1465899))

(assert (=> bs!330100 m!1465529))

(declare-fun m!1465901 () Bool)

(assert (=> bs!330100 m!1465901))

(assert (=> b!1312684 d!369956))

(declare-fun d!369958 () Bool)

(declare-fun e!841834 () Bool)

(assert (=> d!369958 e!841834))

(declare-fun res!589613 () Bool)

(assert (=> d!369958 (=> (not res!589613) (not e!841834))))

(declare-fun lt!432731 () BalanceConc!8690)

(assert (=> d!369958 (= res!589613 (= (list!5000 lt!432731) (Cons!13305 t2!34 Nil!13305)))))

(declare-fun singleton!377 (Token!4266) BalanceConc!8690)

(assert (=> d!369958 (= lt!432731 (singleton!377 t2!34))))

(assert (=> d!369958 (= (singletonSeq!877 t2!34) lt!432731)))

(declare-fun b!1313006 () Bool)

(declare-fun isBalanced!1271 (Conc!4375) Bool)

(assert (=> b!1313006 (= e!841834 (isBalanced!1271 (c!215462 lt!432731)))))

(assert (= (and d!369958 res!589613) b!1313006))

(declare-fun m!1465903 () Bool)

(assert (=> d!369958 m!1465903))

(declare-fun m!1465905 () Bool)

(assert (=> d!369958 m!1465905))

(declare-fun m!1465907 () Bool)

(assert (=> b!1313006 m!1465907))

(assert (=> b!1312684 d!369958))

(declare-fun d!369960 () Bool)

(declare-fun lt!432732 () Bool)

(assert (=> d!369960 (= lt!432732 (set.member lt!432605 (content!1860 lt!432602)))))

(declare-fun e!841835 () Bool)

(assert (=> d!369960 (= lt!432732 e!841835)))

(declare-fun res!589614 () Bool)

(assert (=> d!369960 (=> (not res!589614) (not e!841835))))

(assert (=> d!369960 (= res!589614 (is-Cons!13302 lt!432602))))

(assert (=> d!369960 (= (contains!2318 lt!432602 lt!432605) lt!432732)))

(declare-fun b!1313007 () Bool)

(declare-fun e!841836 () Bool)

(assert (=> b!1313007 (= e!841835 e!841836)))

(declare-fun res!589615 () Bool)

(assert (=> b!1313007 (=> res!589615 e!841836)))

(assert (=> b!1313007 (= res!589615 (= (h!18703 lt!432602) lt!432605))))

(declare-fun b!1313008 () Bool)

(assert (=> b!1313008 (= e!841836 (contains!2318 (t!118169 lt!432602) lt!432605))))

(assert (= (and d!369960 res!589614) b!1313007))

(assert (= (and b!1313007 (not res!589615)) b!1313008))

(declare-fun m!1465909 () Bool)

(assert (=> d!369960 m!1465909))

(declare-fun m!1465911 () Bool)

(assert (=> d!369960 m!1465911))

(declare-fun m!1465913 () Bool)

(assert (=> b!1313008 m!1465913))

(assert (=> b!1312685 d!369960))

(declare-fun d!369962 () Bool)

(declare-fun lt!432735 () C!7522)

(declare-fun apply!3007 (List!13368 Int) C!7522)

(assert (=> d!369962 (= lt!432735 (apply!3007 (list!5001 lt!432599) 0))))

(declare-fun apply!3008 (Conc!4374 Int) C!7522)

(assert (=> d!369962 (= lt!432735 (apply!3008 (c!215460 lt!432599) 0))))

(declare-fun e!841839 () Bool)

(assert (=> d!369962 e!841839))

(declare-fun res!589618 () Bool)

(assert (=> d!369962 (=> (not res!589618) (not e!841839))))

(assert (=> d!369962 (= res!589618 (<= 0 0))))

(assert (=> d!369962 (= (apply!3004 lt!432599 0) lt!432735)))

(declare-fun b!1313011 () Bool)

(assert (=> b!1313011 (= e!841839 (< 0 (size!10811 lt!432599)))))

(assert (= (and d!369962 res!589618) b!1313011))

(assert (=> d!369962 m!1465633))

(assert (=> d!369962 m!1465633))

(declare-fun m!1465915 () Bool)

(assert (=> d!369962 m!1465915))

(declare-fun m!1465917 () Bool)

(assert (=> d!369962 m!1465917))

(declare-fun m!1465919 () Bool)

(assert (=> b!1313011 m!1465919))

(assert (=> b!1312685 d!369962))

(declare-fun bs!330101 () Bool)

(declare-fun d!369964 () Bool)

(assert (= bs!330101 (and d!369964 b!1312664)))

(declare-fun lambda!53214 () Int)

(assert (=> bs!330101 (not (= lambda!53214 lambda!53172))))

(assert (=> d!369964 true))

(declare-fun order!7995 () Int)

(declare-fun dynLambda!5780 (Int Int) Int)

(assert (=> d!369964 (< (dynLambda!5780 order!7995 lambda!53172) (dynLambda!5780 order!7995 lambda!53214))))

(declare-fun forall!3285 (List!13370 Int) Bool)

(assert (=> d!369964 (= (exists!306 (map!2920 rules!2550 lambda!53171) lambda!53172) (not (forall!3285 (map!2920 rules!2550 lambda!53171) lambda!53214)))))

(declare-fun bs!330102 () Bool)

(assert (= bs!330102 d!369964))

(assert (=> bs!330102 m!1465577))

(declare-fun m!1465921 () Bool)

(assert (=> bs!330102 m!1465921))

(assert (=> b!1312664 d!369964))

(declare-fun d!369966 () Bool)

(declare-fun lt!432738 () List!13370)

(declare-fun size!10817 (List!13370) Int)

(declare-fun size!10818 (List!13369) Int)

(assert (=> d!369966 (= (size!10817 lt!432738) (size!10818 rules!2550))))

(declare-fun e!841842 () List!13370)

(assert (=> d!369966 (= lt!432738 e!841842)))

(declare-fun c!215496 () Bool)

(assert (=> d!369966 (= c!215496 (is-Nil!13303 rules!2550))))

(assert (=> d!369966 (= (map!2920 rules!2550 lambda!53171) lt!432738)))

(declare-fun b!1313018 () Bool)

(assert (=> b!1313018 (= e!841842 Nil!13304)))

(declare-fun b!1313019 () Bool)

(declare-fun $colon$colon!146 (List!13370 Regex!3616) List!13370)

(declare-fun dynLambda!5781 (Int Rule!4404) Regex!3616)

(assert (=> b!1313019 (= e!841842 ($colon$colon!146 (map!2920 (t!118170 rules!2550) lambda!53171) (dynLambda!5781 lambda!53171 (h!18704 rules!2550))))))

(assert (= (and d!369966 c!215496) b!1313018))

(assert (= (and d!369966 (not c!215496)) b!1313019))

(declare-fun b_lambda!37803 () Bool)

(assert (=> (not b_lambda!37803) (not b!1313019)))

(declare-fun m!1465923 () Bool)

(assert (=> d!369966 m!1465923))

(declare-fun m!1465925 () Bool)

(assert (=> d!369966 m!1465925))

(declare-fun m!1465927 () Bool)

(assert (=> b!1313019 m!1465927))

(declare-fun m!1465929 () Bool)

(assert (=> b!1313019 m!1465929))

(assert (=> b!1313019 m!1465927))

(assert (=> b!1313019 m!1465929))

(declare-fun m!1465931 () Bool)

(assert (=> b!1313019 m!1465931))

(assert (=> b!1312664 d!369966))

(declare-fun bs!330103 () Bool)

(declare-fun d!369968 () Bool)

(assert (= bs!330103 (and d!369968 b!1312664)))

(declare-fun lambda!53219 () Int)

(assert (=> bs!330103 (not (= lambda!53219 lambda!53172))))

(declare-fun bs!330104 () Bool)

(assert (= bs!330104 (and d!369968 d!369964)))

(assert (=> bs!330104 (not (= lambda!53219 lambda!53214))))

(declare-fun lambda!53220 () Int)

(assert (=> bs!330103 (= lambda!53220 lambda!53172)))

(assert (=> bs!330104 (not (= lambda!53220 lambda!53214))))

(declare-fun bs!330105 () Bool)

(assert (= bs!330105 d!369968))

(assert (=> bs!330105 (not (= lambda!53220 lambda!53219))))

(assert (=> d!369968 true))

(assert (=> d!369968 (= (matchR!1618 lt!432607 lt!432604) (exists!306 lt!432608 lambda!53220))))

(declare-fun lt!432741 () Unit!19367)

(declare-fun choose!8019 (Regex!3616 List!13370 List!13368) Unit!19367)

(assert (=> d!369968 (= lt!432741 (choose!8019 lt!432607 lt!432608 lt!432604))))

(assert (=> d!369968 (forall!3285 lt!432608 lambda!53219)))

(assert (=> d!369968 (= (matchRGenUnionSpec!53 lt!432607 lt!432608 lt!432604) lt!432741)))

(assert (=> bs!330105 m!1465565))

(declare-fun m!1465933 () Bool)

(assert (=> bs!330105 m!1465933))

(declare-fun m!1465935 () Bool)

(assert (=> bs!330105 m!1465935))

(declare-fun m!1465937 () Bool)

(assert (=> bs!330105 m!1465937))

(assert (=> b!1312664 d!369968))

(declare-fun bs!330106 () Bool)

(declare-fun d!369970 () Bool)

(assert (= bs!330106 (and d!369970 b!1312664)))

(declare-fun lambda!53221 () Int)

(assert (=> bs!330106 (not (= lambda!53221 lambda!53172))))

(declare-fun bs!330107 () Bool)

(assert (= bs!330107 (and d!369970 d!369964)))

(assert (=> bs!330107 (= lambda!53221 lambda!53214)))

(declare-fun bs!330108 () Bool)

(assert (= bs!330108 (and d!369970 d!369968)))

(assert (=> bs!330108 (not (= lambda!53221 lambda!53219))))

(assert (=> bs!330108 (not (= lambda!53221 lambda!53220))))

(assert (=> d!369970 true))

(assert (=> d!369970 (< (dynLambda!5780 order!7995 lambda!53172) (dynLambda!5780 order!7995 lambda!53221))))

(assert (=> d!369970 (= (exists!306 lt!432608 lambda!53172) (not (forall!3285 lt!432608 lambda!53221)))))

(declare-fun bs!330109 () Bool)

(assert (= bs!330109 d!369970))

(declare-fun m!1465939 () Bool)

(assert (=> bs!330109 m!1465939))

(assert (=> b!1312664 d!369970))

(declare-fun d!369972 () Bool)

(declare-fun prefixMatchZipperSequence!171 (Regex!3616 BalanceConc!8688) Bool)

(declare-fun ++!3389 (BalanceConc!8688 BalanceConc!8688) BalanceConc!8688)

(declare-fun singletonSeq!879 (C!7522) BalanceConc!8688)

(assert (=> d!369972 (= (separableTokensPredicate!280 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!171 (rulesRegex!187 thiss!19762 rules!2550) (++!3389 (charsOf!1274 t1!34) (singletonSeq!879 (apply!3004 (charsOf!1274 t2!34) 0))))))))

(declare-fun bs!330110 () Bool)

(assert (= bs!330110 d!369972))

(assert (=> bs!330110 m!1465629))

(declare-fun m!1465941 () Bool)

(assert (=> bs!330110 m!1465941))

(declare-fun m!1465943 () Bool)

(assert (=> bs!330110 m!1465943))

(assert (=> bs!330110 m!1465629))

(assert (=> bs!330110 m!1465561))

(declare-fun m!1465945 () Bool)

(assert (=> bs!330110 m!1465945))

(assert (=> bs!330110 m!1465945))

(declare-fun m!1465947 () Bool)

(assert (=> bs!330110 m!1465947))

(assert (=> bs!330110 m!1465561))

(assert (=> bs!330110 m!1465625))

(assert (=> bs!330110 m!1465947))

(assert (=> bs!330110 m!1465941))

(assert (=> bs!330110 m!1465625))

(assert (=> b!1312665 d!369972))

(declare-fun d!369974 () Bool)

(declare-fun res!589623 () Bool)

(declare-fun e!841847 () Bool)

(assert (=> d!369974 (=> (not res!589623) (not e!841847))))

(declare-fun rulesValid!832 (LexerInterface!1997 List!13369) Bool)

(assert (=> d!369974 (= res!589623 (rulesValid!832 thiss!19762 rules!2550))))

(assert (=> d!369974 (= (rulesInvariant!1867 thiss!19762 rules!2550) e!841847)))

(declare-fun b!1313024 () Bool)

(declare-datatypes ((List!13377 0))(
  ( (Nil!13311) (Cons!13311 (h!18712 String!16198) (t!118204 List!13377)) )
))
(declare-fun noDuplicateTag!832 (LexerInterface!1997 List!13369 List!13377) Bool)

(assert (=> b!1313024 (= e!841847 (noDuplicateTag!832 thiss!19762 rules!2550 Nil!13311))))

(assert (= (and d!369974 res!589623) b!1313024))

(declare-fun m!1465949 () Bool)

(assert (=> d!369974 m!1465949))

(declare-fun m!1465951 () Bool)

(assert (=> b!1313024 m!1465951))

(assert (=> b!1312686 d!369974))

(declare-fun d!369976 () Bool)

(declare-fun e!841852 () Bool)

(assert (=> d!369976 e!841852))

(declare-fun res!589629 () Bool)

(assert (=> d!369976 (=> (not res!589629) (not e!841852))))

(declare-fun lt!432744 () List!13368)

(assert (=> d!369976 (= res!589629 (= (content!1860 lt!432744) (set.union (content!1860 lt!432614) (content!1860 (Cons!13302 lt!432601 Nil!13302)))))))

(declare-fun e!841853 () List!13368)

(assert (=> d!369976 (= lt!432744 e!841853)))

(declare-fun c!215499 () Bool)

(assert (=> d!369976 (= c!215499 (is-Nil!13302 lt!432614))))

(assert (=> d!369976 (= (++!3387 lt!432614 (Cons!13302 lt!432601 Nil!13302)) lt!432744)))

(declare-fun b!1313034 () Bool)

(assert (=> b!1313034 (= e!841853 (Cons!13302 (h!18703 lt!432614) (++!3387 (t!118169 lt!432614) (Cons!13302 lt!432601 Nil!13302))))))

(declare-fun b!1313036 () Bool)

(assert (=> b!1313036 (= e!841852 (or (not (= (Cons!13302 lt!432601 Nil!13302) Nil!13302)) (= lt!432744 lt!432614)))))

(declare-fun b!1313035 () Bool)

(declare-fun res!589628 () Bool)

(assert (=> b!1313035 (=> (not res!589628) (not e!841852))))

(assert (=> b!1313035 (= res!589628 (= (size!10815 lt!432744) (+ (size!10815 lt!432614) (size!10815 (Cons!13302 lt!432601 Nil!13302)))))))

(declare-fun b!1313033 () Bool)

(assert (=> b!1313033 (= e!841853 (Cons!13302 lt!432601 Nil!13302))))

(assert (= (and d!369976 c!215499) b!1313033))

(assert (= (and d!369976 (not c!215499)) b!1313034))

(assert (= (and d!369976 res!589629) b!1313035))

(assert (= (and b!1313035 res!589628) b!1313036))

(declare-fun m!1465953 () Bool)

(assert (=> d!369976 m!1465953))

(declare-fun m!1465955 () Bool)

(assert (=> d!369976 m!1465955))

(declare-fun m!1465957 () Bool)

(assert (=> d!369976 m!1465957))

(declare-fun m!1465959 () Bool)

(assert (=> b!1313034 m!1465959))

(declare-fun m!1465961 () Bool)

(assert (=> b!1313035 m!1465961))

(declare-fun m!1465963 () Bool)

(assert (=> b!1313035 m!1465963))

(declare-fun m!1465965 () Bool)

(assert (=> b!1313035 m!1465965))

(assert (=> b!1312687 d!369976))

(declare-fun d!369978 () Bool)

(declare-fun c!215502 () Bool)

(assert (=> d!369978 (= c!215502 (isEmpty!7876 lt!432602))))

(declare-fun e!841856 () Bool)

(assert (=> d!369978 (= (prefixMatch!129 lt!432607 lt!432602) e!841856)))

(declare-fun b!1313041 () Bool)

(declare-fun lostCause!271 (Regex!3616) Bool)

(assert (=> b!1313041 (= e!841856 (not (lostCause!271 lt!432607)))))

(declare-fun b!1313042 () Bool)

(assert (=> b!1313042 (= e!841856 (prefixMatch!129 (derivativeStep!894 lt!432607 (head!2259 lt!432602)) (tail!1879 lt!432602)))))

(assert (= (and d!369978 c!215502) b!1313041))

(assert (= (and d!369978 (not c!215502)) b!1313042))

(declare-fun m!1465967 () Bool)

(assert (=> d!369978 m!1465967))

(declare-fun m!1465969 () Bool)

(assert (=> b!1313041 m!1465969))

(declare-fun m!1465971 () Bool)

(assert (=> b!1313042 m!1465971))

(assert (=> b!1313042 m!1465971))

(declare-fun m!1465973 () Bool)

(assert (=> b!1313042 m!1465973))

(declare-fun m!1465975 () Bool)

(assert (=> b!1313042 m!1465975))

(assert (=> b!1313042 m!1465973))

(assert (=> b!1313042 m!1465975))

(declare-fun m!1465977 () Bool)

(assert (=> b!1313042 m!1465977))

(assert (=> b!1312687 d!369978))

(declare-fun d!369980 () Bool)

(declare-fun list!5005 (Conc!4374) List!13368)

(assert (=> d!369980 (= (list!5001 lt!432599) (list!5005 (c!215460 lt!432599)))))

(declare-fun bs!330111 () Bool)

(assert (= bs!330111 d!369980))

(declare-fun m!1465979 () Bool)

(assert (=> bs!330111 m!1465979))

(assert (=> b!1312687 d!369980))

(declare-fun d!369982 () Bool)

(declare-fun lt!432745 () BalanceConc!8688)

(assert (=> d!369982 (= (list!5001 lt!432745) (originalCharacters!3164 t1!34))))

(assert (=> d!369982 (= lt!432745 (dynLambda!5779 (toChars!3384 (transformation!2302 (rule!4043 t1!34))) (value!75241 t1!34)))))

(assert (=> d!369982 (= (charsOf!1274 t1!34) lt!432745)))

(declare-fun b_lambda!37805 () Bool)

(assert (=> (not b_lambda!37805) (not d!369982)))

(declare-fun t!118187 () Bool)

(declare-fun tb!69815 () Bool)

(assert (=> (and b!1312669 (= (toChars!3384 (transformation!2302 (rule!4043 t1!34))) (toChars!3384 (transformation!2302 (rule!4043 t1!34)))) t!118187) tb!69815))

(declare-fun b!1313043 () Bool)

(declare-fun e!841857 () Bool)

(declare-fun tp!382412 () Bool)

(assert (=> b!1313043 (= e!841857 (and (inv!17687 (c!215460 (dynLambda!5779 (toChars!3384 (transformation!2302 (rule!4043 t1!34))) (value!75241 t1!34)))) tp!382412))))

(declare-fun result!84702 () Bool)

(assert (=> tb!69815 (= result!84702 (and (inv!17688 (dynLambda!5779 (toChars!3384 (transformation!2302 (rule!4043 t1!34))) (value!75241 t1!34))) e!841857))))

(assert (= tb!69815 b!1313043))

(declare-fun m!1465981 () Bool)

(assert (=> b!1313043 m!1465981))

(declare-fun m!1465983 () Bool)

(assert (=> tb!69815 m!1465983))

(assert (=> d!369982 t!118187))

(declare-fun b_and!87705 () Bool)

(assert (= b_and!87699 (and (=> t!118187 result!84702) b_and!87705)))

(declare-fun tb!69817 () Bool)

(declare-fun t!118189 () Bool)

(assert (=> (and b!1312693 (= (toChars!3384 (transformation!2302 (rule!4043 t2!34))) (toChars!3384 (transformation!2302 (rule!4043 t1!34)))) t!118189) tb!69817))

(declare-fun result!84704 () Bool)

(assert (= result!84704 result!84702))

(assert (=> d!369982 t!118189))

(declare-fun b_and!87707 () Bool)

(assert (= b_and!87701 (and (=> t!118189 result!84704) b_and!87707)))

(declare-fun tb!69819 () Bool)

(declare-fun t!118191 () Bool)

(assert (=> (and b!1312697 (= (toChars!3384 (transformation!2302 (h!18704 rules!2550))) (toChars!3384 (transformation!2302 (rule!4043 t1!34)))) t!118191) tb!69819))

(declare-fun result!84706 () Bool)

(assert (= result!84706 result!84702))

(assert (=> d!369982 t!118191))

(declare-fun b_and!87709 () Bool)

(assert (= b_and!87703 (and (=> t!118191 result!84706) b_and!87709)))

(declare-fun m!1465985 () Bool)

(assert (=> d!369982 m!1465985))

(declare-fun m!1465987 () Bool)

(assert (=> d!369982 m!1465987))

(assert (=> b!1312687 d!369982))

(declare-fun d!369984 () Bool)

(declare-fun lt!432746 () C!7522)

(assert (=> d!369984 (= lt!432746 (apply!3007 (list!5001 lt!432611) 0))))

(assert (=> d!369984 (= lt!432746 (apply!3008 (c!215460 lt!432611) 0))))

(declare-fun e!841858 () Bool)

(assert (=> d!369984 e!841858))

(declare-fun res!589630 () Bool)

(assert (=> d!369984 (=> (not res!589630) (not e!841858))))

(assert (=> d!369984 (= res!589630 (<= 0 0))))

(assert (=> d!369984 (= (apply!3004 lt!432611 0) lt!432746)))

(declare-fun b!1313044 () Bool)

(assert (=> b!1313044 (= e!841858 (< 0 (size!10811 lt!432611)))))

(assert (= (and d!369984 res!589630) b!1313044))

(assert (=> d!369984 m!1465591))

(assert (=> d!369984 m!1465591))

(declare-fun m!1465989 () Bool)

(assert (=> d!369984 m!1465989))

(declare-fun m!1465991 () Bool)

(assert (=> d!369984 m!1465991))

(assert (=> b!1313044 m!1465559))

(assert (=> b!1312687 d!369984))

(declare-fun bs!330112 () Bool)

(declare-fun d!369986 () Bool)

(assert (= bs!330112 (and d!369986 b!1312664)))

(declare-fun lambda!53224 () Int)

(assert (=> bs!330112 (= lambda!53224 lambda!53171)))

(declare-fun lt!432749 () Unit!19367)

(declare-fun lemma!65 (List!13369 LexerInterface!1997 List!13369) Unit!19367)

(assert (=> d!369986 (= lt!432749 (lemma!65 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!73 (List!13370) Regex!3616)

(assert (=> d!369986 (= (rulesRegex!187 thiss!19762 rules!2550) (generalisedUnion!73 (map!2920 rules!2550 lambda!53224)))))

(declare-fun bs!330113 () Bool)

(assert (= bs!330113 d!369986))

(declare-fun m!1465993 () Bool)

(assert (=> bs!330113 m!1465993))

(declare-fun m!1465995 () Bool)

(assert (=> bs!330113 m!1465995))

(assert (=> bs!330113 m!1465995))

(declare-fun m!1465997 () Bool)

(assert (=> bs!330113 m!1465997))

(assert (=> b!1312687 d!369986))

(declare-fun d!369988 () Bool)

(declare-fun lt!432750 () Bool)

(assert (=> d!369988 (= lt!432750 (isEmpty!7876 (list!5001 (_2!7344 lt!432617))))))

(assert (=> d!369988 (= lt!432750 (isEmpty!7877 (c!215460 (_2!7344 lt!432617))))))

(assert (=> d!369988 (= (isEmpty!7872 (_2!7344 lt!432617)) lt!432750)))

(declare-fun bs!330114 () Bool)

(assert (= bs!330114 d!369988))

(declare-fun m!1465999 () Bool)

(assert (=> bs!330114 m!1465999))

(assert (=> bs!330114 m!1465999))

(declare-fun m!1466001 () Bool)

(assert (=> bs!330114 m!1466001))

(declare-fun m!1466003 () Bool)

(assert (=> bs!330114 m!1466003))

(assert (=> b!1312666 d!369988))

(declare-fun d!369990 () Bool)

(declare-fun lt!432751 () BalanceConc!8688)

(assert (=> d!369990 (= (list!5001 lt!432751) (printList!555 thiss!19762 (list!5000 (singletonSeq!877 t1!34))))))

(assert (=> d!369990 (= lt!432751 (printTailRec!537 thiss!19762 (singletonSeq!877 t1!34) 0 (BalanceConc!8689 Empty!4374)))))

(assert (=> d!369990 (= (print!771 thiss!19762 (singletonSeq!877 t1!34)) lt!432751)))

(declare-fun bs!330115 () Bool)

(assert (= bs!330115 d!369990))

(declare-fun m!1466005 () Bool)

(assert (=> bs!330115 m!1466005))

(assert (=> bs!330115 m!1465515))

(declare-fun m!1466007 () Bool)

(assert (=> bs!330115 m!1466007))

(assert (=> bs!330115 m!1466007))

(declare-fun m!1466009 () Bool)

(assert (=> bs!330115 m!1466009))

(assert (=> bs!330115 m!1465515))

(declare-fun m!1466011 () Bool)

(assert (=> bs!330115 m!1466011))

(assert (=> b!1312667 d!369990))

(declare-fun b!1313057 () Bool)

(declare-fun e!841867 () Bool)

(declare-fun lt!432757 () Rule!4404)

(assert (=> b!1313057 (= e!841867 (contains!2319 rules!2550 lt!432757))))

(declare-fun b!1313058 () Bool)

(declare-fun e!841869 () Rule!4404)

(assert (=> b!1313058 (= e!841869 (getWitness!198 (t!118170 rules!2550) lambda!53173))))

(declare-fun b!1313059 () Bool)

(declare-fun e!841870 () Rule!4404)

(assert (=> b!1313059 (= e!841870 e!841869)))

(declare-fun c!215508 () Bool)

(assert (=> b!1313059 (= c!215508 (is-Cons!13303 rules!2550))))

(declare-fun b!1313061 () Bool)

(assert (=> b!1313061 (= e!841870 (h!18704 rules!2550))))

(declare-fun b!1313062 () Bool)

(declare-fun e!841868 () Bool)

(declare-fun dynLambda!5782 (Int Rule!4404) Bool)

(assert (=> b!1313062 (= e!841868 (dynLambda!5782 lambda!53173 (h!18704 rules!2550)))))

(declare-fun d!369992 () Bool)

(assert (=> d!369992 e!841867))

(declare-fun res!589635 () Bool)

(assert (=> d!369992 (=> (not res!589635) (not e!841867))))

(assert (=> d!369992 (= res!589635 (dynLambda!5782 lambda!53173 lt!432757))))

(assert (=> d!369992 (= lt!432757 e!841870)))

(declare-fun c!215507 () Bool)

(assert (=> d!369992 (= c!215507 e!841868)))

(declare-fun res!589636 () Bool)

(assert (=> d!369992 (=> (not res!589636) (not e!841868))))

(assert (=> d!369992 (= res!589636 (is-Cons!13303 rules!2550))))

(assert (=> d!369992 (exists!307 rules!2550 lambda!53173)))

(assert (=> d!369992 (= (getWitness!198 rules!2550 lambda!53173) lt!432757)))

(declare-fun b!1313060 () Bool)

(declare-fun lt!432756 () Unit!19367)

(declare-fun Unit!19372 () Unit!19367)

(assert (=> b!1313060 (= lt!432756 Unit!19372)))

(assert (=> b!1313060 false))

(declare-fun head!2260 (List!13369) Rule!4404)

(assert (=> b!1313060 (= e!841869 (head!2260 rules!2550))))

(assert (= (and d!369992 res!589636) b!1313062))

(assert (= (and d!369992 c!215507) b!1313061))

(assert (= (and d!369992 (not c!215507)) b!1313059))

(assert (= (and b!1313059 c!215508) b!1313058))

(assert (= (and b!1313059 (not c!215508)) b!1313060))

(assert (= (and d!369992 res!589635) b!1313057))

(declare-fun b_lambda!37807 () Bool)

(assert (=> (not b_lambda!37807) (not b!1313062)))

(declare-fun b_lambda!37809 () Bool)

(assert (=> (not b_lambda!37809) (not d!369992)))

(declare-fun m!1466013 () Bool)

(assert (=> b!1313060 m!1466013))

(declare-fun m!1466015 () Bool)

(assert (=> b!1313057 m!1466015))

(declare-fun m!1466017 () Bool)

(assert (=> d!369992 m!1466017))

(assert (=> d!369992 m!1465609))

(declare-fun m!1466019 () Bool)

(assert (=> b!1313062 m!1466019))

(declare-fun m!1466021 () Bool)

(assert (=> b!1313058 m!1466021))

(assert (=> b!1312667 d!369992))

(declare-fun b!1313063 () Bool)

(declare-fun res!589637 () Bool)

(declare-fun e!841872 () Bool)

(assert (=> b!1313063 (=> (not res!589637) (not e!841872))))

(declare-fun lt!432758 () tuple2!12916)

(assert (=> b!1313063 (= res!589637 (= (list!5000 (_1!7344 lt!432758)) (_1!7345 (lexList!535 thiss!19762 rules!2550 (list!5001 lt!432597)))))))

(declare-fun d!369994 () Bool)

(assert (=> d!369994 e!841872))

(declare-fun res!589638 () Bool)

(assert (=> d!369994 (=> (not res!589638) (not e!841872))))

(declare-fun e!841873 () Bool)

(assert (=> d!369994 (= res!589638 e!841873)))

(declare-fun c!215509 () Bool)

(assert (=> d!369994 (= c!215509 (> (size!10814 (_1!7344 lt!432758)) 0))))

(assert (=> d!369994 (= lt!432758 (lexTailRecV2!360 thiss!19762 rules!2550 lt!432597 (BalanceConc!8689 Empty!4374) lt!432597 (BalanceConc!8691 Empty!4375)))))

(assert (=> d!369994 (= (lex!832 thiss!19762 rules!2550 lt!432597) lt!432758)))

(declare-fun b!1313064 () Bool)

(assert (=> b!1313064 (= e!841873 (= (_2!7344 lt!432758) lt!432597))))

(declare-fun b!1313065 () Bool)

(declare-fun e!841871 () Bool)

(assert (=> b!1313065 (= e!841871 (not (isEmpty!7878 (_1!7344 lt!432758))))))

(declare-fun b!1313066 () Bool)

(assert (=> b!1313066 (= e!841872 (= (list!5001 (_2!7344 lt!432758)) (_2!7345 (lexList!535 thiss!19762 rules!2550 (list!5001 lt!432597)))))))

(declare-fun b!1313067 () Bool)

(assert (=> b!1313067 (= e!841873 e!841871)))

(declare-fun res!589639 () Bool)

(assert (=> b!1313067 (= res!589639 (< (size!10811 (_2!7344 lt!432758)) (size!10811 lt!432597)))))

(assert (=> b!1313067 (=> (not res!589639) (not e!841871))))

(assert (= (and d!369994 c!215509) b!1313067))

(assert (= (and d!369994 (not c!215509)) b!1313064))

(assert (= (and b!1313067 res!589639) b!1313065))

(assert (= (and d!369994 res!589638) b!1313063))

(assert (= (and b!1313063 res!589637) b!1313066))

(declare-fun m!1466023 () Bool)

(assert (=> b!1313065 m!1466023))

(declare-fun m!1466025 () Bool)

(assert (=> b!1313067 m!1466025))

(declare-fun m!1466027 () Bool)

(assert (=> b!1313067 m!1466027))

(declare-fun m!1466029 () Bool)

(assert (=> b!1313063 m!1466029))

(assert (=> b!1313063 m!1465619))

(assert (=> b!1313063 m!1465619))

(assert (=> b!1313063 m!1465621))

(declare-fun m!1466031 () Bool)

(assert (=> b!1313066 m!1466031))

(assert (=> b!1313066 m!1465619))

(assert (=> b!1313066 m!1465619))

(assert (=> b!1313066 m!1465621))

(declare-fun m!1466033 () Bool)

(assert (=> d!369994 m!1466033))

(declare-fun m!1466035 () Bool)

(assert (=> d!369994 m!1466035))

(assert (=> b!1312667 d!369994))

(declare-fun d!369996 () Bool)

(assert (=> d!369996 (= (list!5000 (_1!7344 lt!432617)) (list!5004 (c!215462 (_1!7344 lt!432617))))))

(declare-fun bs!330116 () Bool)

(assert (= bs!330116 d!369996))

(declare-fun m!1466037 () Bool)

(assert (=> bs!330116 m!1466037))

(assert (=> b!1312667 d!369996))

(declare-fun d!369998 () Bool)

(declare-fun e!841874 () Bool)

(assert (=> d!369998 e!841874))

(declare-fun res!589640 () Bool)

(assert (=> d!369998 (=> (not res!589640) (not e!841874))))

(declare-fun lt!432759 () BalanceConc!8690)

(assert (=> d!369998 (= res!589640 (= (list!5000 lt!432759) (Cons!13305 t1!34 Nil!13305)))))

(assert (=> d!369998 (= lt!432759 (singleton!377 t1!34))))

(assert (=> d!369998 (= (singletonSeq!877 t1!34) lt!432759)))

(declare-fun b!1313068 () Bool)

(assert (=> b!1313068 (= e!841874 (isBalanced!1271 (c!215462 lt!432759)))))

(assert (= (and d!369998 res!589640) b!1313068))

(declare-fun m!1466039 () Bool)

(assert (=> d!369998 m!1466039))

(declare-fun m!1466041 () Bool)

(assert (=> d!369998 m!1466041))

(declare-fun m!1466043 () Bool)

(assert (=> b!1313068 m!1466043))

(assert (=> b!1312667 d!369998))

(declare-fun bs!330117 () Bool)

(declare-fun d!370000 () Bool)

(assert (= bs!330117 (and d!370000 b!1312688)))

(declare-fun lambda!53227 () Int)

(assert (=> bs!330117 (not (= lambda!53227 lambda!53173))))

(declare-fun bs!330118 () Bool)

(assert (= bs!330118 (and d!370000 b!1312695)))

(assert (=> bs!330118 (not (= lambda!53227 lambda!53174))))

(assert (=> d!370000 true))

(declare-fun order!7997 () Int)

(declare-fun dynLambda!5783 (Int Int) Int)

(assert (=> d!370000 (< (dynLambda!5783 order!7997 lambda!53173) (dynLambda!5783 order!7997 lambda!53227))))

(assert (=> d!370000 (= (exists!307 rules!2550 lambda!53173) (not (forall!3283 rules!2550 lambda!53227)))))

(declare-fun bs!330119 () Bool)

(assert (= bs!330119 d!370000))

(declare-fun m!1466045 () Bool)

(assert (=> bs!330119 m!1466045))

(assert (=> b!1312688 d!370000))

(declare-fun bs!330120 () Bool)

(declare-fun d!370002 () Bool)

(assert (= bs!330120 (and d!370002 b!1312688)))

(declare-fun lambda!53230 () Int)

(assert (=> bs!330120 (not (= lambda!53230 lambda!53173))))

(declare-fun bs!330121 () Bool)

(assert (= bs!330121 (and d!370002 b!1312695)))

(assert (=> bs!330121 (not (= lambda!53230 lambda!53174))))

(declare-fun bs!330122 () Bool)

(assert (= bs!330122 (and d!370002 d!370000)))

(assert (=> bs!330122 (not (= lambda!53230 lambda!53227))))

(assert (=> d!370002 true))

(assert (=> d!370002 true))

(declare-fun order!7999 () Int)

(declare-fun dynLambda!5784 (Int Int) Int)

(assert (=> d!370002 (< (dynLambda!5784 order!7999 lambda!53171) (dynLambda!5783 order!7997 lambda!53230))))

(assert (=> d!370002 (exists!307 rules!2550 lambda!53230)))

(declare-fun lt!432762 () Unit!19367)

(declare-fun choose!8020 (List!13369 Int Regex!3616) Unit!19367)

(assert (=> d!370002 (= lt!432762 (choose!8020 rules!2550 lambda!53171 lt!432615))))

(assert (=> d!370002 (contains!2320 (map!2920 rules!2550 lambda!53171) lt!432615)))

(assert (=> d!370002 (= (lemmaMapContains!45 rules!2550 lambda!53171 lt!432615) lt!432762)))

(declare-fun bs!330123 () Bool)

(assert (= bs!330123 d!370002))

(declare-fun m!1466047 () Bool)

(assert (=> bs!330123 m!1466047))

(declare-fun m!1466049 () Bool)

(assert (=> bs!330123 m!1466049))

(assert (=> bs!330123 m!1465577))

(assert (=> bs!330123 m!1465577))

(assert (=> bs!330123 m!1465579))

(assert (=> b!1312688 d!370002))

(declare-fun d!370004 () Bool)

(declare-fun lt!432765 () Bool)

(declare-fun content!1862 (List!13370) (Set Regex!3616))

(assert (=> d!370004 (= lt!432765 (set.member lt!432615 (content!1862 (map!2920 rules!2550 lambda!53171))))))

(declare-fun e!841879 () Bool)

(assert (=> d!370004 (= lt!432765 e!841879)))

(declare-fun res!589645 () Bool)

(assert (=> d!370004 (=> (not res!589645) (not e!841879))))

(assert (=> d!370004 (= res!589645 (is-Cons!13304 (map!2920 rules!2550 lambda!53171)))))

(assert (=> d!370004 (= (contains!2320 (map!2920 rules!2550 lambda!53171) lt!432615) lt!432765)))

(declare-fun b!1313079 () Bool)

(declare-fun e!841880 () Bool)

(assert (=> b!1313079 (= e!841879 e!841880)))

(declare-fun res!589646 () Bool)

(assert (=> b!1313079 (=> res!589646 e!841880)))

(assert (=> b!1313079 (= res!589646 (= (h!18705 (map!2920 rules!2550 lambda!53171)) lt!432615))))

(declare-fun b!1313080 () Bool)

(assert (=> b!1313080 (= e!841880 (contains!2320 (t!118171 (map!2920 rules!2550 lambda!53171)) lt!432615))))

(assert (= (and d!370004 res!589645) b!1313079))

(assert (= (and b!1313079 (not res!589646)) b!1313080))

(assert (=> d!370004 m!1465577))

(declare-fun m!1466051 () Bool)

(assert (=> d!370004 m!1466051))

(declare-fun m!1466053 () Bool)

(assert (=> d!370004 m!1466053))

(declare-fun m!1466055 () Bool)

(assert (=> b!1313080 m!1466055))

(assert (=> b!1312689 d!370004))

(assert (=> b!1312689 d!369966))

(declare-fun e!841897 () Bool)

(declare-fun lt!432776 () Regex!3616)

(declare-fun b!1313102 () Bool)

(assert (=> b!1313102 (= e!841897 (contains!2320 (map!2920 rules!2550 lambda!53171) lt!432776))))

(declare-fun b!1313103 () Bool)

(declare-fun lt!432777 () Unit!19367)

(declare-fun Unit!19373 () Unit!19367)

(assert (=> b!1313103 (= lt!432777 Unit!19373)))

(assert (=> b!1313103 false))

(declare-fun e!841895 () Regex!3616)

(declare-fun head!2261 (List!13370) Regex!3616)

(assert (=> b!1313103 (= e!841895 (head!2261 (map!2920 rules!2550 lambda!53171)))))

(declare-fun d!370006 () Bool)

(assert (=> d!370006 e!841897))

(declare-fun res!589660 () Bool)

(assert (=> d!370006 (=> (not res!589660) (not e!841897))))

(declare-fun dynLambda!5785 (Int Regex!3616) Bool)

(assert (=> d!370006 (= res!589660 (dynLambda!5785 lambda!53172 lt!432776))))

(declare-fun e!841898 () Regex!3616)

(assert (=> d!370006 (= lt!432776 e!841898)))

(declare-fun c!215514 () Bool)

(declare-fun e!841896 () Bool)

(assert (=> d!370006 (= c!215514 e!841896)))

(declare-fun res!589661 () Bool)

(assert (=> d!370006 (=> (not res!589661) (not e!841896))))

(assert (=> d!370006 (= res!589661 (is-Cons!13304 (map!2920 rules!2550 lambda!53171)))))

(assert (=> d!370006 (exists!306 (map!2920 rules!2550 lambda!53171) lambda!53172)))

(assert (=> d!370006 (= (getWitness!199 (map!2920 rules!2550 lambda!53171) lambda!53172) lt!432776)))

(declare-fun b!1313104 () Bool)

(assert (=> b!1313104 (= e!841898 e!841895)))

(declare-fun c!215515 () Bool)

(assert (=> b!1313104 (= c!215515 (is-Cons!13304 (map!2920 rules!2550 lambda!53171)))))

(declare-fun b!1313105 () Bool)

(assert (=> b!1313105 (= e!841896 (dynLambda!5785 lambda!53172 (h!18705 (map!2920 rules!2550 lambda!53171))))))

(declare-fun b!1313106 () Bool)

(assert (=> b!1313106 (= e!841898 (h!18705 (map!2920 rules!2550 lambda!53171)))))

(declare-fun b!1313107 () Bool)

(assert (=> b!1313107 (= e!841895 (getWitness!199 (t!118171 (map!2920 rules!2550 lambda!53171)) lambda!53172))))

(assert (= (and d!370006 res!589661) b!1313105))

(assert (= (and d!370006 c!215514) b!1313106))

(assert (= (and d!370006 (not c!215514)) b!1313104))

(assert (= (and b!1313104 c!215515) b!1313107))

(assert (= (and b!1313104 (not c!215515)) b!1313103))

(assert (= (and d!370006 res!589660) b!1313102))

(declare-fun b_lambda!37811 () Bool)

(assert (=> (not b_lambda!37811) (not d!370006)))

(declare-fun b_lambda!37813 () Bool)

(assert (=> (not b_lambda!37813) (not b!1313105)))

(assert (=> b!1313103 m!1465577))

(declare-fun m!1466071 () Bool)

(assert (=> b!1313103 m!1466071))

(declare-fun m!1466073 () Bool)

(assert (=> d!370006 m!1466073))

(assert (=> d!370006 m!1465577))

(assert (=> d!370006 m!1465615))

(declare-fun m!1466075 () Bool)

(assert (=> b!1313107 m!1466075))

(declare-fun m!1466077 () Bool)

(assert (=> b!1313105 m!1466077))

(assert (=> b!1313102 m!1465577))

(declare-fun m!1466079 () Bool)

(assert (=> b!1313102 m!1466079))

(assert (=> b!1312689 d!370006))

(declare-fun d!370010 () Bool)

(assert (=> d!370010 (= (inv!17680 (tag!2564 (rule!4043 t2!34))) (= (mod (str.len (value!75240 (tag!2564 (rule!4043 t2!34)))) 2) 0))))

(assert (=> b!1312679 d!370010))

(declare-fun d!370012 () Bool)

(declare-fun res!589667 () Bool)

(declare-fun e!841910 () Bool)

(assert (=> d!370012 (=> (not res!589667) (not e!841910))))

(declare-fun semiInverseModEq!863 (Int Int) Bool)

(assert (=> d!370012 (= res!589667 (semiInverseModEq!863 (toChars!3384 (transformation!2302 (rule!4043 t2!34))) (toValue!3525 (transformation!2302 (rule!4043 t2!34)))))))

(assert (=> d!370012 (= (inv!17683 (transformation!2302 (rule!4043 t2!34))) e!841910)))

(declare-fun b!1313125 () Bool)

(declare-fun equivClasses!822 (Int Int) Bool)

(assert (=> b!1313125 (= e!841910 (equivClasses!822 (toChars!3384 (transformation!2302 (rule!4043 t2!34))) (toValue!3525 (transformation!2302 (rule!4043 t2!34)))))))

(assert (= (and d!370012 res!589667) b!1313125))

(declare-fun m!1466087 () Bool)

(assert (=> d!370012 m!1466087))

(declare-fun m!1466089 () Bool)

(assert (=> b!1313125 m!1466089))

(assert (=> b!1312679 d!370012))

(declare-fun d!370018 () Bool)

(assert (=> d!370018 (= (inv!17680 (tag!2564 (rule!4043 t1!34))) (= (mod (str.len (value!75240 (tag!2564 (rule!4043 t1!34)))) 2) 0))))

(assert (=> b!1312700 d!370018))

(declare-fun d!370022 () Bool)

(declare-fun res!589669 () Bool)

(declare-fun e!841912 () Bool)

(assert (=> d!370022 (=> (not res!589669) (not e!841912))))

(assert (=> d!370022 (= res!589669 (semiInverseModEq!863 (toChars!3384 (transformation!2302 (rule!4043 t1!34))) (toValue!3525 (transformation!2302 (rule!4043 t1!34)))))))

(assert (=> d!370022 (= (inv!17683 (transformation!2302 (rule!4043 t1!34))) e!841912)))

(declare-fun b!1313127 () Bool)

(assert (=> b!1313127 (= e!841912 (equivClasses!822 (toChars!3384 (transformation!2302 (rule!4043 t1!34))) (toValue!3525 (transformation!2302 (rule!4043 t1!34)))))))

(assert (= (and d!370022 res!589669) b!1313127))

(declare-fun m!1466095 () Bool)

(assert (=> d!370022 m!1466095))

(declare-fun m!1466097 () Bool)

(assert (=> b!1313127 m!1466097))

(assert (=> b!1312700 d!370022))

(declare-fun d!370024 () Bool)

(declare-fun e!841913 () Bool)

(assert (=> d!370024 e!841913))

(declare-fun res!589671 () Bool)

(assert (=> d!370024 (=> (not res!589671) (not e!841913))))

(declare-fun lt!432778 () List!13368)

(assert (=> d!370024 (= res!589671 (= (content!1860 lt!432778) (set.union (content!1860 lt!432602) (content!1860 (getSuffix!472 lt!432604 lt!432602)))))))

(declare-fun e!841914 () List!13368)

(assert (=> d!370024 (= lt!432778 e!841914)))

(declare-fun c!215522 () Bool)

(assert (=> d!370024 (= c!215522 (is-Nil!13302 lt!432602))))

(assert (=> d!370024 (= (++!3387 lt!432602 (getSuffix!472 lt!432604 lt!432602)) lt!432778)))

(declare-fun b!1313129 () Bool)

(assert (=> b!1313129 (= e!841914 (Cons!13302 (h!18703 lt!432602) (++!3387 (t!118169 lt!432602) (getSuffix!472 lt!432604 lt!432602))))))

(declare-fun b!1313131 () Bool)

(assert (=> b!1313131 (= e!841913 (or (not (= (getSuffix!472 lt!432604 lt!432602) Nil!13302)) (= lt!432778 lt!432602)))))

(declare-fun b!1313130 () Bool)

(declare-fun res!589670 () Bool)

(assert (=> b!1313130 (=> (not res!589670) (not e!841913))))

(assert (=> b!1313130 (= res!589670 (= (size!10815 lt!432778) (+ (size!10815 lt!432602) (size!10815 (getSuffix!472 lt!432604 lt!432602)))))))

(declare-fun b!1313128 () Bool)

(assert (=> b!1313128 (= e!841914 (getSuffix!472 lt!432604 lt!432602))))

(assert (= (and d!370024 c!215522) b!1313128))

(assert (= (and d!370024 (not c!215522)) b!1313129))

(assert (= (and d!370024 res!589671) b!1313130))

(assert (= (and b!1313130 res!589670) b!1313131))

(declare-fun m!1466099 () Bool)

(assert (=> d!370024 m!1466099))

(assert (=> d!370024 m!1465909))

(assert (=> d!370024 m!1465571))

(declare-fun m!1466101 () Bool)

(assert (=> d!370024 m!1466101))

(assert (=> b!1313129 m!1465571))

(declare-fun m!1466103 () Bool)

(assert (=> b!1313129 m!1466103))

(declare-fun m!1466105 () Bool)

(assert (=> b!1313130 m!1466105))

(declare-fun m!1466107 () Bool)

(assert (=> b!1313130 m!1466107))

(assert (=> b!1313130 m!1465571))

(declare-fun m!1466109 () Bool)

(assert (=> b!1313130 m!1466109))

(assert (=> b!1312701 d!370024))

(declare-fun d!370028 () Bool)

(declare-fun lt!432781 () List!13368)

(assert (=> d!370028 (= (++!3387 lt!432602 lt!432781) lt!432604)))

(declare-fun e!841917 () List!13368)

(assert (=> d!370028 (= lt!432781 e!841917)))

(declare-fun c!215525 () Bool)

(assert (=> d!370028 (= c!215525 (is-Cons!13302 lt!432602))))

(assert (=> d!370028 (>= (size!10815 lt!432604) (size!10815 lt!432602))))

(assert (=> d!370028 (= (getSuffix!472 lt!432604 lt!432602) lt!432781)))

(declare-fun b!1313136 () Bool)

(assert (=> b!1313136 (= e!841917 (getSuffix!472 (tail!1879 lt!432604) (t!118169 lt!432602)))))

(declare-fun b!1313137 () Bool)

(assert (=> b!1313137 (= e!841917 lt!432604)))

(assert (= (and d!370028 c!215525) b!1313136))

(assert (= (and d!370028 (not c!215525)) b!1313137))

(declare-fun m!1466111 () Bool)

(assert (=> d!370028 m!1466111))

(declare-fun m!1466113 () Bool)

(assert (=> d!370028 m!1466113))

(assert (=> d!370028 m!1466107))

(assert (=> b!1313136 m!1465779))

(assert (=> b!1313136 m!1465779))

(declare-fun m!1466115 () Bool)

(assert (=> b!1313136 m!1466115))

(assert (=> b!1312701 d!370028))

(declare-fun d!370030 () Bool)

(declare-fun lt!432784 () List!13368)

(declare-fun dynLambda!5786 (Int List!13368) Bool)

(assert (=> d!370030 (dynLambda!5786 lambda!53170 lt!432784)))

(declare-fun choose!8021 (Int) List!13368)

(assert (=> d!370030 (= lt!432784 (choose!8021 lambda!53170))))

(assert (=> d!370030 (Exists!774 lambda!53170)))

(assert (=> d!370030 (= (pickWitness!79 lambda!53170) lt!432784)))

(declare-fun b_lambda!37815 () Bool)

(assert (=> (not b_lambda!37815) (not d!370030)))

(declare-fun bs!330124 () Bool)

(assert (= bs!330124 d!370030))

(declare-fun m!1466117 () Bool)

(assert (=> bs!330124 m!1466117))

(declare-fun m!1466119 () Bool)

(assert (=> bs!330124 m!1466119))

(assert (=> bs!330124 m!1465521))

(assert (=> b!1312701 d!370030))

(declare-fun d!370032 () Bool)

(declare-fun lt!432785 () Bool)

(assert (=> d!370032 (= lt!432785 (set.member (rule!4043 t2!34) (content!1861 rules!2550)))))

(declare-fun e!841918 () Bool)

(assert (=> d!370032 (= lt!432785 e!841918)))

(declare-fun res!589673 () Bool)

(assert (=> d!370032 (=> (not res!589673) (not e!841918))))

(assert (=> d!370032 (= res!589673 (is-Cons!13303 rules!2550))))

(assert (=> d!370032 (= (contains!2319 rules!2550 (rule!4043 t2!34)) lt!432785)))

(declare-fun b!1313138 () Bool)

(declare-fun e!841919 () Bool)

(assert (=> b!1313138 (= e!841918 e!841919)))

(declare-fun res!589672 () Bool)

(assert (=> b!1313138 (=> res!589672 e!841919)))

(assert (=> b!1313138 (= res!589672 (= (h!18704 rules!2550) (rule!4043 t2!34)))))

(declare-fun b!1313139 () Bool)

(assert (=> b!1313139 (= e!841919 (contains!2319 (t!118170 rules!2550) (rule!4043 t2!34)))))

(assert (= (and d!370032 res!589673) b!1313138))

(assert (= (and b!1313138 (not res!589672)) b!1313139))

(assert (=> d!370032 m!1465837))

(declare-fun m!1466121 () Bool)

(assert (=> d!370032 m!1466121))

(declare-fun m!1466123 () Bool)

(assert (=> b!1313139 m!1466123))

(assert (=> b!1312680 d!370032))

(declare-fun d!370034 () Bool)

(declare-fun res!589678 () Bool)

(declare-fun e!841924 () Bool)

(assert (=> d!370034 (=> res!589678 e!841924)))

(assert (=> d!370034 (= res!589678 (not (is-Cons!13303 rules!2550)))))

(assert (=> d!370034 (= (sepAndNonSepRulesDisjointChars!675 rules!2550 rules!2550) e!841924)))

(declare-fun b!1313144 () Bool)

(declare-fun e!841925 () Bool)

(assert (=> b!1313144 (= e!841924 e!841925)))

(declare-fun res!589679 () Bool)

(assert (=> b!1313144 (=> (not res!589679) (not e!841925))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!307 (Rule!4404 List!13369) Bool)

(assert (=> b!1313144 (= res!589679 (ruleDisjointCharsFromAllFromOtherType!307 (h!18704 rules!2550) rules!2550))))

(declare-fun b!1313145 () Bool)

(assert (=> b!1313145 (= e!841925 (sepAndNonSepRulesDisjointChars!675 rules!2550 (t!118170 rules!2550)))))

(assert (= (and d!370034 (not res!589678)) b!1313144))

(assert (= (and b!1313144 res!589679) b!1313145))

(declare-fun m!1466125 () Bool)

(assert (=> b!1313144 m!1466125))

(declare-fun m!1466127 () Bool)

(assert (=> b!1313145 m!1466127))

(assert (=> b!1312681 d!370034))

(declare-fun b!1313197 () Bool)

(declare-fun e!841949 () Option!2569)

(declare-fun call!89364 () Option!2569)

(assert (=> b!1313197 (= e!841949 call!89364)))

(declare-fun b!1313198 () Bool)

(declare-fun res!589727 () Bool)

(declare-fun e!841947 () Bool)

(assert (=> b!1313198 (=> (not res!589727) (not e!841947))))

(declare-fun lt!432814 () Option!2569)

(declare-fun get!4249 (Option!2569) tuple2!12920)

(assert (=> b!1313198 (= res!589727 (= (++!3387 (list!5001 (charsOf!1274 (_1!7346 (get!4249 lt!432814)))) (_2!7346 (get!4249 lt!432814))) (list!5001 lt!432611)))))

(declare-fun b!1313199 () Bool)

(declare-fun e!841948 () Bool)

(assert (=> b!1313199 (= e!841948 e!841947)))

(declare-fun res!589726 () Bool)

(assert (=> b!1313199 (=> (not res!589726) (not e!841947))))

(declare-fun isDefined!2172 (Option!2569) Bool)

(assert (=> b!1313199 (= res!589726 (isDefined!2172 lt!432814))))

(declare-fun d!370036 () Bool)

(assert (=> d!370036 e!841948))

(declare-fun res!589724 () Bool)

(assert (=> d!370036 (=> res!589724 e!841948)))

(declare-fun isEmpty!7879 (Option!2569) Bool)

(assert (=> d!370036 (= res!589724 (isEmpty!7879 lt!432814))))

(assert (=> d!370036 (= lt!432814 e!841949)))

(declare-fun c!215531 () Bool)

(assert (=> d!370036 (= c!215531 (and (is-Cons!13303 rules!2550) (is-Nil!13303 (t!118170 rules!2550))))))

(declare-fun lt!432815 () Unit!19367)

(declare-fun lt!432818 () Unit!19367)

(assert (=> d!370036 (= lt!432815 lt!432818)))

(declare-fun isPrefix!1069 (List!13368 List!13368) Bool)

(assert (=> d!370036 (isPrefix!1069 (list!5001 lt!432611) (list!5001 lt!432611))))

(declare-fun lemmaIsPrefixRefl!748 (List!13368 List!13368) Unit!19367)

(assert (=> d!370036 (= lt!432818 (lemmaIsPrefixRefl!748 (list!5001 lt!432611) (list!5001 lt!432611)))))

(declare-fun rulesValidInductive!721 (LexerInterface!1997 List!13369) Bool)

(assert (=> d!370036 (rulesValidInductive!721 thiss!19762 rules!2550)))

(assert (=> d!370036 (= (maxPrefix!1007 thiss!19762 rules!2550 (list!5001 lt!432611)) lt!432814)))

(declare-fun bm!89359 () Bool)

(declare-fun maxPrefixOneRule!574 (LexerInterface!1997 Rule!4404 List!13368) Option!2569)

(assert (=> bm!89359 (= call!89364 (maxPrefixOneRule!574 thiss!19762 (h!18704 rules!2550) (list!5001 lt!432611)))))

(declare-fun b!1313200 () Bool)

(declare-fun res!589722 () Bool)

(assert (=> b!1313200 (=> (not res!589722) (not e!841947))))

(declare-fun apply!3009 (TokenValueInjection!4444 BalanceConc!8688) TokenValue!2392)

(declare-fun seqFromList!1592 (List!13368) BalanceConc!8688)

(assert (=> b!1313200 (= res!589722 (= (value!75241 (_1!7346 (get!4249 lt!432814))) (apply!3009 (transformation!2302 (rule!4043 (_1!7346 (get!4249 lt!432814)))) (seqFromList!1592 (originalCharacters!3164 (_1!7346 (get!4249 lt!432814)))))))))

(declare-fun b!1313201 () Bool)

(declare-fun res!589723 () Bool)

(assert (=> b!1313201 (=> (not res!589723) (not e!841947))))

(assert (=> b!1313201 (= res!589723 (< (size!10815 (_2!7346 (get!4249 lt!432814))) (size!10815 (list!5001 lt!432611))))))

(declare-fun b!1313202 () Bool)

(declare-fun res!589725 () Bool)

(assert (=> b!1313202 (=> (not res!589725) (not e!841947))))

(assert (=> b!1313202 (= res!589725 (= (list!5001 (charsOf!1274 (_1!7346 (get!4249 lt!432814)))) (originalCharacters!3164 (_1!7346 (get!4249 lt!432814)))))))

(declare-fun b!1313203 () Bool)

(declare-fun lt!432817 () Option!2569)

(declare-fun lt!432816 () Option!2569)

(assert (=> b!1313203 (= e!841949 (ite (and (is-None!2568 lt!432817) (is-None!2568 lt!432816)) None!2568 (ite (is-None!2568 lt!432816) lt!432817 (ite (is-None!2568 lt!432817) lt!432816 (ite (>= (size!10810 (_1!7346 (v!21095 lt!432817))) (size!10810 (_1!7346 (v!21095 lt!432816)))) lt!432817 lt!432816)))))))

(assert (=> b!1313203 (= lt!432817 call!89364)))

(assert (=> b!1313203 (= lt!432816 (maxPrefix!1007 thiss!19762 (t!118170 rules!2550) (list!5001 lt!432611)))))

(declare-fun b!1313204 () Bool)

(declare-fun res!589721 () Bool)

(assert (=> b!1313204 (=> (not res!589721) (not e!841947))))

(assert (=> b!1313204 (= res!589721 (matchR!1618 (regex!2302 (rule!4043 (_1!7346 (get!4249 lt!432814)))) (list!5001 (charsOf!1274 (_1!7346 (get!4249 lt!432814))))))))

(declare-fun b!1313205 () Bool)

(assert (=> b!1313205 (= e!841947 (contains!2319 rules!2550 (rule!4043 (_1!7346 (get!4249 lt!432814)))))))

(assert (= (and d!370036 c!215531) b!1313197))

(assert (= (and d!370036 (not c!215531)) b!1313203))

(assert (= (or b!1313197 b!1313203) bm!89359))

(assert (= (and d!370036 (not res!589724)) b!1313199))

(assert (= (and b!1313199 res!589726) b!1313202))

(assert (= (and b!1313202 res!589725) b!1313201))

(assert (= (and b!1313201 res!589723) b!1313198))

(assert (= (and b!1313198 res!589727) b!1313200))

(assert (= (and b!1313200 res!589722) b!1313204))

(assert (= (and b!1313204 res!589721) b!1313205))

(declare-fun m!1466171 () Bool)

(assert (=> b!1313198 m!1466171))

(declare-fun m!1466173 () Bool)

(assert (=> b!1313198 m!1466173))

(assert (=> b!1313198 m!1466173))

(declare-fun m!1466175 () Bool)

(assert (=> b!1313198 m!1466175))

(assert (=> b!1313198 m!1466175))

(declare-fun m!1466177 () Bool)

(assert (=> b!1313198 m!1466177))

(declare-fun m!1466179 () Bool)

(assert (=> d!370036 m!1466179))

(assert (=> d!370036 m!1465591))

(assert (=> d!370036 m!1465591))

(declare-fun m!1466181 () Bool)

(assert (=> d!370036 m!1466181))

(assert (=> d!370036 m!1465591))

(assert (=> d!370036 m!1465591))

(declare-fun m!1466183 () Bool)

(assert (=> d!370036 m!1466183))

(declare-fun m!1466185 () Bool)

(assert (=> d!370036 m!1466185))

(assert (=> b!1313205 m!1466171))

(declare-fun m!1466187 () Bool)

(assert (=> b!1313205 m!1466187))

(assert (=> b!1313201 m!1466171))

(declare-fun m!1466189 () Bool)

(assert (=> b!1313201 m!1466189))

(assert (=> b!1313201 m!1465591))

(assert (=> b!1313201 m!1465807))

(declare-fun m!1466191 () Bool)

(assert (=> b!1313199 m!1466191))

(assert (=> b!1313204 m!1466171))

(assert (=> b!1313204 m!1466173))

(assert (=> b!1313204 m!1466173))

(assert (=> b!1313204 m!1466175))

(assert (=> b!1313204 m!1466175))

(declare-fun m!1466193 () Bool)

(assert (=> b!1313204 m!1466193))

(assert (=> b!1313203 m!1465591))

(declare-fun m!1466195 () Bool)

(assert (=> b!1313203 m!1466195))

(assert (=> b!1313200 m!1466171))

(declare-fun m!1466197 () Bool)

(assert (=> b!1313200 m!1466197))

(assert (=> b!1313200 m!1466197))

(declare-fun m!1466199 () Bool)

(assert (=> b!1313200 m!1466199))

(assert (=> b!1313202 m!1466171))

(assert (=> b!1313202 m!1466173))

(assert (=> b!1313202 m!1466173))

(assert (=> b!1313202 m!1466175))

(assert (=> bm!89359 m!1465591))

(declare-fun m!1466201 () Bool)

(assert (=> bm!89359 m!1466201))

(assert (=> b!1312702 d!370036))

(declare-fun d!370044 () Bool)

(assert (=> d!370044 (= (list!5001 lt!432611) (list!5005 (c!215460 lt!432611)))))

(declare-fun bs!330126 () Bool)

(assert (= bs!330126 d!370044))

(declare-fun m!1466203 () Bool)

(assert (=> bs!330126 m!1466203))

(assert (=> b!1312702 d!370044))

(declare-fun b!1313231 () Bool)

(declare-fun e!841963 () Bool)

(declare-fun lt!432840 () tuple2!12918)

(assert (=> b!1313231 (= e!841963 (= (_2!7345 lt!432840) (list!5001 lt!432597)))))

(declare-fun b!1313232 () Bool)

(declare-fun e!841964 () tuple2!12918)

(assert (=> b!1313232 (= e!841964 (tuple2!12919 Nil!13305 (list!5001 lt!432597)))))

(declare-fun d!370046 () Bool)

(assert (=> d!370046 e!841963))

(declare-fun c!215536 () Bool)

(declare-fun size!10821 (List!13371) Int)

(assert (=> d!370046 (= c!215536 (> (size!10821 (_1!7345 lt!432840)) 0))))

(assert (=> d!370046 (= lt!432840 e!841964)))

(declare-fun c!215537 () Bool)

(declare-fun lt!432839 () Option!2569)

(assert (=> d!370046 (= c!215537 (is-Some!2568 lt!432839))))

(assert (=> d!370046 (= lt!432839 (maxPrefix!1007 thiss!19762 rules!2550 (list!5001 lt!432597)))))

(assert (=> d!370046 (= (lexList!535 thiss!19762 rules!2550 (list!5001 lt!432597)) lt!432840)))

(declare-fun b!1313233 () Bool)

(declare-fun lt!432838 () tuple2!12918)

(assert (=> b!1313233 (= e!841964 (tuple2!12919 (Cons!13305 (_1!7346 (v!21095 lt!432839)) (_1!7345 lt!432838)) (_2!7345 lt!432838)))))

(assert (=> b!1313233 (= lt!432838 (lexList!535 thiss!19762 rules!2550 (_2!7346 (v!21095 lt!432839))))))

(declare-fun b!1313234 () Bool)

(declare-fun e!841965 () Bool)

(assert (=> b!1313234 (= e!841963 e!841965)))

(declare-fun res!589737 () Bool)

(assert (=> b!1313234 (= res!589737 (< (size!10815 (_2!7345 lt!432840)) (size!10815 (list!5001 lt!432597))))))

(assert (=> b!1313234 (=> (not res!589737) (not e!841965))))

(declare-fun b!1313235 () Bool)

(declare-fun isEmpty!7880 (List!13371) Bool)

(assert (=> b!1313235 (= e!841965 (not (isEmpty!7880 (_1!7345 lt!432840))))))

(assert (= (and d!370046 c!215537) b!1313233))

(assert (= (and d!370046 (not c!215537)) b!1313232))

(assert (= (and d!370046 c!215536) b!1313234))

(assert (= (and d!370046 (not c!215536)) b!1313231))

(assert (= (and b!1313234 res!589737) b!1313235))

(declare-fun m!1466235 () Bool)

(assert (=> d!370046 m!1466235))

(assert (=> d!370046 m!1465619))

(declare-fun m!1466237 () Bool)

(assert (=> d!370046 m!1466237))

(declare-fun m!1466241 () Bool)

(assert (=> b!1313233 m!1466241))

(declare-fun m!1466243 () Bool)

(assert (=> b!1313234 m!1466243))

(assert (=> b!1313234 m!1465619))

(declare-fun m!1466247 () Bool)

(assert (=> b!1313234 m!1466247))

(declare-fun m!1466249 () Bool)

(assert (=> b!1313235 m!1466249))

(assert (=> b!1312703 d!370046))

(declare-fun d!370062 () Bool)

(assert (=> d!370062 (= (list!5001 lt!432597) (list!5005 (c!215460 lt!432597)))))

(declare-fun bs!330144 () Bool)

(assert (= bs!330144 d!370062))

(declare-fun m!1466251 () Bool)

(assert (=> bs!330144 m!1466251))

(assert (=> b!1312703 d!370062))

(declare-fun d!370066 () Bool)

(declare-fun choose!8022 (Int) Bool)

(assert (=> d!370066 (= (Exists!774 lambda!53170) (choose!8022 lambda!53170))))

(declare-fun bs!330145 () Bool)

(assert (= bs!330145 d!370066))

(declare-fun m!1466257 () Bool)

(assert (=> bs!330145 m!1466257))

(assert (=> b!1312682 d!370066))

(declare-fun bs!330146 () Bool)

(declare-fun d!370070 () Bool)

(assert (= bs!330146 (and d!370070 b!1312682)))

(declare-fun lambda!53249 () Int)

(assert (=> bs!330146 (= lambda!53249 lambda!53170)))

(assert (=> d!370070 true))

(assert (=> d!370070 true))

(assert (=> d!370070 (Exists!774 lambda!53249)))

(declare-fun lt!432844 () Unit!19367)

(declare-fun choose!8023 (Regex!3616 List!13368) Unit!19367)

(assert (=> d!370070 (= lt!432844 (choose!8023 lt!432607 lt!432602))))

(assert (=> d!370070 (validRegex!1544 lt!432607)))

(assert (=> d!370070 (= (lemmaPrefixMatchThenExistsStringThatMatches!92 lt!432607 lt!432602) lt!432844)))

(declare-fun bs!330147 () Bool)

(assert (= bs!330147 d!370070))

(declare-fun m!1466259 () Bool)

(assert (=> bs!330147 m!1466259))

(declare-fun m!1466261 () Bool)

(assert (=> bs!330147 m!1466261))

(assert (=> bs!330147 m!1465789))

(assert (=> b!1312682 d!370070))

(declare-fun b!1313244 () Bool)

(declare-fun e!841972 () Bool)

(declare-fun lt!432849 () tuple2!12918)

(assert (=> b!1313244 (= e!841972 (= (_2!7345 lt!432849) (list!5001 lt!432600)))))

(declare-fun b!1313245 () Bool)

(declare-fun e!841973 () tuple2!12918)

(assert (=> b!1313245 (= e!841973 (tuple2!12919 Nil!13305 (list!5001 lt!432600)))))

(declare-fun d!370072 () Bool)

(assert (=> d!370072 e!841972))

(declare-fun c!215540 () Bool)

(assert (=> d!370072 (= c!215540 (> (size!10821 (_1!7345 lt!432849)) 0))))

(assert (=> d!370072 (= lt!432849 e!841973)))

(declare-fun c!215541 () Bool)

(declare-fun lt!432848 () Option!2569)

(assert (=> d!370072 (= c!215541 (is-Some!2568 lt!432848))))

(assert (=> d!370072 (= lt!432848 (maxPrefix!1007 thiss!19762 rules!2550 (list!5001 lt!432600)))))

(assert (=> d!370072 (= (lexList!535 thiss!19762 rules!2550 (list!5001 lt!432600)) lt!432849)))

(declare-fun b!1313246 () Bool)

(declare-fun lt!432847 () tuple2!12918)

(assert (=> b!1313246 (= e!841973 (tuple2!12919 (Cons!13305 (_1!7346 (v!21095 lt!432848)) (_1!7345 lt!432847)) (_2!7345 lt!432847)))))

(assert (=> b!1313246 (= lt!432847 (lexList!535 thiss!19762 rules!2550 (_2!7346 (v!21095 lt!432848))))))

(declare-fun b!1313247 () Bool)

(declare-fun e!841974 () Bool)

(assert (=> b!1313247 (= e!841972 e!841974)))

(declare-fun res!589742 () Bool)

(assert (=> b!1313247 (= res!589742 (< (size!10815 (_2!7345 lt!432849)) (size!10815 (list!5001 lt!432600))))))

(assert (=> b!1313247 (=> (not res!589742) (not e!841974))))

(declare-fun b!1313248 () Bool)

(assert (=> b!1313248 (= e!841974 (not (isEmpty!7880 (_1!7345 lt!432849))))))

(assert (= (and d!370072 c!215541) b!1313246))

(assert (= (and d!370072 (not c!215541)) b!1313245))

(assert (= (and d!370072 c!215540) b!1313247))

(assert (= (and d!370072 (not c!215540)) b!1313244))

(assert (= (and b!1313247 res!589742) b!1313248))

(declare-fun m!1466263 () Bool)

(assert (=> d!370072 m!1466263))

(assert (=> d!370072 m!1465583))

(declare-fun m!1466265 () Bool)

(assert (=> d!370072 m!1466265))

(declare-fun m!1466267 () Bool)

(assert (=> b!1313246 m!1466267))

(declare-fun m!1466269 () Bool)

(assert (=> b!1313247 m!1466269))

(assert (=> b!1313247 m!1465583))

(declare-fun m!1466271 () Bool)

(assert (=> b!1313247 m!1466271))

(declare-fun m!1466273 () Bool)

(assert (=> b!1313248 m!1466273))

(assert (=> b!1312683 d!370072))

(declare-fun d!370074 () Bool)

(assert (=> d!370074 (= (list!5001 lt!432600) (list!5005 (c!215460 lt!432600)))))

(declare-fun bs!330148 () Bool)

(assert (= bs!330148 d!370074))

(declare-fun m!1466275 () Bool)

(assert (=> bs!330148 m!1466275))

(assert (=> b!1312683 d!370074))

(declare-fun d!370076 () Bool)

(declare-fun res!589763 () Bool)

(declare-fun e!841991 () Bool)

(assert (=> d!370076 (=> res!589763 e!841991)))

(assert (=> d!370076 (= res!589763 (is-Nil!13303 rules!2550))))

(assert (=> d!370076 (= (forall!3283 rules!2550 lambda!53174) e!841991)))

(declare-fun b!1313277 () Bool)

(declare-fun e!841992 () Bool)

(assert (=> b!1313277 (= e!841991 e!841992)))

(declare-fun res!589764 () Bool)

(assert (=> b!1313277 (=> (not res!589764) (not e!841992))))

(assert (=> b!1313277 (= res!589764 (dynLambda!5782 lambda!53174 (h!18704 rules!2550)))))

(declare-fun b!1313278 () Bool)

(assert (=> b!1313278 (= e!841992 (forall!3283 (t!118170 rules!2550) lambda!53174))))

(assert (= (and d!370076 (not res!589763)) b!1313277))

(assert (= (and b!1313277 res!589764) b!1313278))

(declare-fun b_lambda!37817 () Bool)

(assert (=> (not b_lambda!37817) (not b!1313277)))

(declare-fun m!1466277 () Bool)

(assert (=> b!1313277 m!1466277))

(declare-fun m!1466279 () Bool)

(assert (=> b!1313278 m!1466279))

(assert (=> b!1312695 d!370076))

(declare-fun d!370078 () Bool)

(assert (=> d!370078 (dynLambda!5782 lambda!53174 lt!432603)))

(declare-fun lt!432853 () Unit!19367)

(declare-fun choose!8024 (List!13369 Int Rule!4404) Unit!19367)

(assert (=> d!370078 (= lt!432853 (choose!8024 rules!2550 lambda!53174 lt!432603))))

(declare-fun e!842002 () Bool)

(assert (=> d!370078 e!842002))

(declare-fun res!589775 () Bool)

(assert (=> d!370078 (=> (not res!589775) (not e!842002))))

(assert (=> d!370078 (= res!589775 (forall!3283 rules!2550 lambda!53174))))

(assert (=> d!370078 (= (forallContained!553 rules!2550 lambda!53174 lt!432603) lt!432853)))

(declare-fun b!1313295 () Bool)

(assert (=> b!1313295 (= e!842002 (contains!2319 rules!2550 lt!432603))))

(assert (= (and d!370078 res!589775) b!1313295))

(declare-fun b_lambda!37819 () Bool)

(assert (=> (not b_lambda!37819) (not d!370078)))

(declare-fun m!1466281 () Bool)

(assert (=> d!370078 m!1466281))

(declare-fun m!1466283 () Bool)

(assert (=> d!370078 m!1466283))

(assert (=> d!370078 m!1465605))

(assert (=> b!1313295 m!1465551))

(assert (=> b!1312695 d!370078))

(declare-fun d!370080 () Bool)

(assert (=> d!370080 (= (inv!17680 (tag!2564 (h!18704 rules!2550))) (= (mod (str.len (value!75240 (tag!2564 (h!18704 rules!2550)))) 2) 0))))

(assert (=> b!1312674 d!370080))

(declare-fun d!370082 () Bool)

(declare-fun res!589776 () Bool)

(declare-fun e!842003 () Bool)

(assert (=> d!370082 (=> (not res!589776) (not e!842003))))

(assert (=> d!370082 (= res!589776 (semiInverseModEq!863 (toChars!3384 (transformation!2302 (h!18704 rules!2550))) (toValue!3525 (transformation!2302 (h!18704 rules!2550)))))))

(assert (=> d!370082 (= (inv!17683 (transformation!2302 (h!18704 rules!2550))) e!842003)))

(declare-fun b!1313296 () Bool)

(assert (=> b!1313296 (= e!842003 (equivClasses!822 (toChars!3384 (transformation!2302 (h!18704 rules!2550))) (toValue!3525 (transformation!2302 (h!18704 rules!2550)))))))

(assert (= (and d!370082 res!589776) b!1313296))

(declare-fun m!1466287 () Bool)

(assert (=> d!370082 m!1466287))

(declare-fun m!1466291 () Bool)

(assert (=> b!1313296 m!1466291))

(assert (=> b!1312674 d!370082))

(declare-fun d!370084 () Bool)

(declare-fun lt!432854 () Bool)

(assert (=> d!370084 (= lt!432854 (set.member lt!432605 (content!1860 lt!432604)))))

(declare-fun e!842004 () Bool)

(assert (=> d!370084 (= lt!432854 e!842004)))

(declare-fun res!589777 () Bool)

(assert (=> d!370084 (=> (not res!589777) (not e!842004))))

(assert (=> d!370084 (= res!589777 (is-Cons!13302 lt!432604))))

(assert (=> d!370084 (= (contains!2318 lt!432604 lt!432605) lt!432854)))

(declare-fun b!1313297 () Bool)

(declare-fun e!842005 () Bool)

(assert (=> b!1313297 (= e!842004 e!842005)))

(declare-fun res!589778 () Bool)

(assert (=> b!1313297 (=> res!589778 e!842005)))

(assert (=> b!1313297 (= res!589778 (= (h!18703 lt!432604) lt!432605))))

(declare-fun b!1313298 () Bool)

(assert (=> b!1313298 (= e!842005 (contains!2318 (t!118169 lt!432604) lt!432605))))

(assert (= (and d!370084 res!589777) b!1313297))

(assert (= (and b!1313297 (not res!589778)) b!1313298))

(assert (=> d!370084 m!1465825))

(declare-fun m!1466305 () Bool)

(assert (=> d!370084 m!1466305))

(declare-fun m!1466307 () Bool)

(assert (=> b!1313298 m!1466307))

(assert (=> b!1312675 d!370084))

(declare-fun d!370088 () Bool)

(declare-fun lt!432856 () Bool)

(assert (=> d!370088 (= lt!432856 (set.member lt!432601 (content!1860 lt!432602)))))

(declare-fun e!842008 () Bool)

(assert (=> d!370088 (= lt!432856 e!842008)))

(declare-fun res!589781 () Bool)

(assert (=> d!370088 (=> (not res!589781) (not e!842008))))

(assert (=> d!370088 (= res!589781 (is-Cons!13302 lt!432602))))

(assert (=> d!370088 (= (contains!2318 lt!432602 lt!432601) lt!432856)))

(declare-fun b!1313301 () Bool)

(declare-fun e!842009 () Bool)

(assert (=> b!1313301 (= e!842008 e!842009)))

(declare-fun res!589782 () Bool)

(assert (=> b!1313301 (=> res!589782 e!842009)))

(assert (=> b!1313301 (= res!589782 (= (h!18703 lt!432602) lt!432601))))

(declare-fun b!1313302 () Bool)

(assert (=> b!1313302 (= e!842009 (contains!2318 (t!118169 lt!432602) lt!432601))))

(assert (= (and d!370088 res!589781) b!1313301))

(assert (= (and b!1313301 (not res!589782)) b!1313302))

(assert (=> d!370088 m!1465909))

(declare-fun m!1466311 () Bool)

(assert (=> d!370088 m!1466311))

(declare-fun m!1466315 () Bool)

(assert (=> b!1313302 m!1466315))

(assert (=> b!1312696 d!370088))

(declare-fun d!370091 () Bool)

(declare-fun res!589787 () Bool)

(declare-fun e!842012 () Bool)

(assert (=> d!370091 (=> (not res!589787) (not e!842012))))

(assert (=> d!370091 (= res!589787 (not (isEmpty!7876 (originalCharacters!3164 t1!34))))))

(assert (=> d!370091 (= (inv!17684 t1!34) e!842012)))

(declare-fun b!1313307 () Bool)

(declare-fun res!589788 () Bool)

(assert (=> b!1313307 (=> (not res!589788) (not e!842012))))

(assert (=> b!1313307 (= res!589788 (= (originalCharacters!3164 t1!34) (list!5001 (dynLambda!5779 (toChars!3384 (transformation!2302 (rule!4043 t1!34))) (value!75241 t1!34)))))))

(declare-fun b!1313308 () Bool)

(assert (=> b!1313308 (= e!842012 (= (size!10810 t1!34) (size!10815 (originalCharacters!3164 t1!34))))))

(assert (= (and d!370091 res!589787) b!1313307))

(assert (= (and b!1313307 res!589788) b!1313308))

(declare-fun b_lambda!37821 () Bool)

(assert (=> (not b_lambda!37821) (not b!1313307)))

(assert (=> b!1313307 t!118187))

(declare-fun b_and!87711 () Bool)

(assert (= b_and!87705 (and (=> t!118187 result!84702) b_and!87711)))

(assert (=> b!1313307 t!118189))

(declare-fun b_and!87713 () Bool)

(assert (= b_and!87707 (and (=> t!118189 result!84704) b_and!87713)))

(assert (=> b!1313307 t!118191))

(declare-fun b_and!87715 () Bool)

(assert (= b_and!87709 (and (=> t!118191 result!84706) b_and!87715)))

(declare-fun m!1466319 () Bool)

(assert (=> d!370091 m!1466319))

(assert (=> b!1313307 m!1465987))

(assert (=> b!1313307 m!1465987))

(declare-fun m!1466321 () Bool)

(assert (=> b!1313307 m!1466321))

(declare-fun m!1466323 () Bool)

(assert (=> b!1313308 m!1466323))

(assert (=> start!116056 d!370091))

(declare-fun d!370096 () Bool)

(declare-fun res!589789 () Bool)

(declare-fun e!842013 () Bool)

(assert (=> d!370096 (=> (not res!589789) (not e!842013))))

(assert (=> d!370096 (= res!589789 (not (isEmpty!7876 (originalCharacters!3164 t2!34))))))

(assert (=> d!370096 (= (inv!17684 t2!34) e!842013)))

(declare-fun b!1313309 () Bool)

(declare-fun res!589790 () Bool)

(assert (=> b!1313309 (=> (not res!589790) (not e!842013))))

(assert (=> b!1313309 (= res!589790 (= (originalCharacters!3164 t2!34) (list!5001 (dynLambda!5779 (toChars!3384 (transformation!2302 (rule!4043 t2!34))) (value!75241 t2!34)))))))

(declare-fun b!1313310 () Bool)

(assert (=> b!1313310 (= e!842013 (= (size!10810 t2!34) (size!10815 (originalCharacters!3164 t2!34))))))

(assert (= (and d!370096 res!589789) b!1313309))

(assert (= (and b!1313309 res!589790) b!1313310))

(declare-fun b_lambda!37823 () Bool)

(assert (=> (not b_lambda!37823) (not b!1313309)))

(assert (=> b!1313309 t!118180))

(declare-fun b_and!87717 () Bool)

(assert (= b_and!87711 (and (=> t!118180 result!84694) b_and!87717)))

(assert (=> b!1313309 t!118182))

(declare-fun b_and!87719 () Bool)

(assert (= b_and!87713 (and (=> t!118182 result!84698) b_and!87719)))

(assert (=> b!1313309 t!118184))

(declare-fun b_and!87721 () Bool)

(assert (= b_and!87715 (and (=> t!118184 result!84700) b_and!87721)))

(declare-fun m!1466325 () Bool)

(assert (=> d!370096 m!1466325))

(assert (=> b!1313309 m!1465817))

(assert (=> b!1313309 m!1465817))

(declare-fun m!1466327 () Bool)

(assert (=> b!1313309 m!1466327))

(declare-fun m!1466329 () Bool)

(assert (=> b!1313310 m!1466329))

(assert (=> start!116056 d!370096))

(declare-fun b!1313311 () Bool)

(declare-fun e!842016 () Bool)

(declare-fun e!842014 () Bool)

(assert (=> b!1313311 (= e!842016 e!842014)))

(declare-fun c!215550 () Bool)

(assert (=> b!1313311 (= c!215550 (is-IntegerValue!7177 (value!75241 t2!34)))))

(declare-fun b!1313312 () Bool)

(assert (=> b!1313312 (= e!842016 (inv!16 (value!75241 t2!34)))))

(declare-fun d!370098 () Bool)

(declare-fun c!215549 () Bool)

(assert (=> d!370098 (= c!215549 (is-IntegerValue!7176 (value!75241 t2!34)))))

(assert (=> d!370098 (= (inv!21 (value!75241 t2!34)) e!842016)))

(declare-fun b!1313313 () Bool)

(declare-fun res!589791 () Bool)

(declare-fun e!842015 () Bool)

(assert (=> b!1313313 (=> res!589791 e!842015)))

(assert (=> b!1313313 (= res!589791 (not (is-IntegerValue!7178 (value!75241 t2!34))))))

(assert (=> b!1313313 (= e!842014 e!842015)))

(declare-fun b!1313314 () Bool)

(assert (=> b!1313314 (= e!842014 (inv!17 (value!75241 t2!34)))))

(declare-fun b!1313315 () Bool)

(assert (=> b!1313315 (= e!842015 (inv!15 (value!75241 t2!34)))))

(assert (= (and d!370098 c!215549) b!1313312))

(assert (= (and d!370098 (not c!215549)) b!1313311))

(assert (= (and b!1313311 c!215550) b!1313314))

(assert (= (and b!1313311 (not c!215550)) b!1313313))

(assert (= (and b!1313313 (not res!589791)) b!1313315))

(declare-fun m!1466331 () Bool)

(assert (=> b!1313312 m!1466331))

(declare-fun m!1466333 () Bool)

(assert (=> b!1313314 m!1466333))

(declare-fun m!1466335 () Bool)

(assert (=> b!1313315 m!1466335))

(assert (=> b!1312676 d!370098))

(declare-fun d!370100 () Bool)

(declare-fun lt!432863 () Bool)

(declare-fun e!842020 () Bool)

(assert (=> d!370100 (= lt!432863 e!842020)))

(declare-fun res!589792 () Bool)

(assert (=> d!370100 (=> (not res!589792) (not e!842020))))

(assert (=> d!370100 (= res!589792 (= (list!5000 (_1!7344 (lex!832 thiss!19762 rules!2550 (print!771 thiss!19762 (singletonSeq!877 t1!34))))) (list!5000 (singletonSeq!877 t1!34))))))

(declare-fun e!842019 () Bool)

(assert (=> d!370100 (= lt!432863 e!842019)))

(declare-fun res!589793 () Bool)

(assert (=> d!370100 (=> (not res!589793) (not e!842019))))

(declare-fun lt!432864 () tuple2!12916)

(assert (=> d!370100 (= res!589793 (= (size!10814 (_1!7344 lt!432864)) 1))))

(assert (=> d!370100 (= lt!432864 (lex!832 thiss!19762 rules!2550 (print!771 thiss!19762 (singletonSeq!877 t1!34))))))

(assert (=> d!370100 (not (isEmpty!7873 rules!2550))))

(assert (=> d!370100 (= (rulesProduceIndividualToken!966 thiss!19762 rules!2550 t1!34) lt!432863)))

(declare-fun b!1313320 () Bool)

(declare-fun res!589794 () Bool)

(assert (=> b!1313320 (=> (not res!589794) (not e!842019))))

(assert (=> b!1313320 (= res!589794 (= (apply!3006 (_1!7344 lt!432864) 0) t1!34))))

(declare-fun b!1313321 () Bool)

(assert (=> b!1313321 (= e!842019 (isEmpty!7872 (_2!7344 lt!432864)))))

(declare-fun b!1313322 () Bool)

(assert (=> b!1313322 (= e!842020 (isEmpty!7872 (_2!7344 (lex!832 thiss!19762 rules!2550 (print!771 thiss!19762 (singletonSeq!877 t1!34))))))))

(assert (= (and d!370100 res!589793) b!1313320))

(assert (= (and b!1313320 res!589794) b!1313321))

(assert (= (and d!370100 res!589792) b!1313322))

(declare-fun m!1466337 () Bool)

(assert (=> d!370100 m!1466337))

(assert (=> d!370100 m!1465517))

(declare-fun m!1466339 () Bool)

(assert (=> d!370100 m!1466339))

(assert (=> d!370100 m!1465515))

(assert (=> d!370100 m!1466007))

(assert (=> d!370100 m!1465515))

(assert (=> d!370100 m!1465517))

(declare-fun m!1466345 () Bool)

(assert (=> d!370100 m!1466345))

(assert (=> d!370100 m!1465595))

(assert (=> d!370100 m!1465515))

(declare-fun m!1466347 () Bool)

(assert (=> b!1313320 m!1466347))

(declare-fun m!1466349 () Bool)

(assert (=> b!1313321 m!1466349))

(assert (=> b!1313322 m!1465515))

(assert (=> b!1313322 m!1465515))

(assert (=> b!1313322 m!1465517))

(assert (=> b!1313322 m!1465517))

(assert (=> b!1313322 m!1466339))

(declare-fun m!1466355 () Bool)

(assert (=> b!1313322 m!1466355))

(assert (=> b!1312677 d!370100))

(declare-fun b!1313326 () Bool)

(declare-fun e!842026 () Option!2569)

(declare-fun call!89368 () Option!2569)

(assert (=> b!1313326 (= e!842026 call!89368)))

(declare-fun b!1313327 () Bool)

(declare-fun res!589803 () Bool)

(declare-fun e!842024 () Bool)

(assert (=> b!1313327 (=> (not res!589803) (not e!842024))))

(declare-fun lt!432866 () Option!2569)

(assert (=> b!1313327 (= res!589803 (= (++!3387 (list!5001 (charsOf!1274 (_1!7346 (get!4249 lt!432866)))) (_2!7346 (get!4249 lt!432866))) lt!432614))))

(declare-fun b!1313328 () Bool)

(declare-fun e!842025 () Bool)

(assert (=> b!1313328 (= e!842025 e!842024)))

(declare-fun res!589802 () Bool)

(assert (=> b!1313328 (=> (not res!589802) (not e!842024))))

(assert (=> b!1313328 (= res!589802 (isDefined!2172 lt!432866))))

(declare-fun d!370104 () Bool)

(assert (=> d!370104 e!842025))

(declare-fun res!589800 () Bool)

(assert (=> d!370104 (=> res!589800 e!842025)))

(assert (=> d!370104 (= res!589800 (isEmpty!7879 lt!432866))))

(assert (=> d!370104 (= lt!432866 e!842026)))

(declare-fun c!215551 () Bool)

(assert (=> d!370104 (= c!215551 (and (is-Cons!13303 rules!2550) (is-Nil!13303 (t!118170 rules!2550))))))

(declare-fun lt!432867 () Unit!19367)

(declare-fun lt!432870 () Unit!19367)

(assert (=> d!370104 (= lt!432867 lt!432870)))

(assert (=> d!370104 (isPrefix!1069 lt!432614 lt!432614)))

(assert (=> d!370104 (= lt!432870 (lemmaIsPrefixRefl!748 lt!432614 lt!432614))))

(assert (=> d!370104 (rulesValidInductive!721 thiss!19762 rules!2550)))

(assert (=> d!370104 (= (maxPrefix!1007 thiss!19762 rules!2550 lt!432614) lt!432866)))

(declare-fun bm!89363 () Bool)

(assert (=> bm!89363 (= call!89368 (maxPrefixOneRule!574 thiss!19762 (h!18704 rules!2550) lt!432614))))

(declare-fun b!1313329 () Bool)

(declare-fun res!589798 () Bool)

(assert (=> b!1313329 (=> (not res!589798) (not e!842024))))

(assert (=> b!1313329 (= res!589798 (= (value!75241 (_1!7346 (get!4249 lt!432866))) (apply!3009 (transformation!2302 (rule!4043 (_1!7346 (get!4249 lt!432866)))) (seqFromList!1592 (originalCharacters!3164 (_1!7346 (get!4249 lt!432866)))))))))

(declare-fun b!1313330 () Bool)

(declare-fun res!589799 () Bool)

(assert (=> b!1313330 (=> (not res!589799) (not e!842024))))

(assert (=> b!1313330 (= res!589799 (< (size!10815 (_2!7346 (get!4249 lt!432866))) (size!10815 lt!432614)))))

(declare-fun b!1313331 () Bool)

(declare-fun res!589801 () Bool)

(assert (=> b!1313331 (=> (not res!589801) (not e!842024))))

(assert (=> b!1313331 (= res!589801 (= (list!5001 (charsOf!1274 (_1!7346 (get!4249 lt!432866)))) (originalCharacters!3164 (_1!7346 (get!4249 lt!432866)))))))

(declare-fun b!1313332 () Bool)

(declare-fun lt!432869 () Option!2569)

(declare-fun lt!432868 () Option!2569)

(assert (=> b!1313332 (= e!842026 (ite (and (is-None!2568 lt!432869) (is-None!2568 lt!432868)) None!2568 (ite (is-None!2568 lt!432868) lt!432869 (ite (is-None!2568 lt!432869) lt!432868 (ite (>= (size!10810 (_1!7346 (v!21095 lt!432869))) (size!10810 (_1!7346 (v!21095 lt!432868)))) lt!432869 lt!432868)))))))

(assert (=> b!1313332 (= lt!432869 call!89368)))

(assert (=> b!1313332 (= lt!432868 (maxPrefix!1007 thiss!19762 (t!118170 rules!2550) lt!432614))))

(declare-fun b!1313333 () Bool)

(declare-fun res!589797 () Bool)

(assert (=> b!1313333 (=> (not res!589797) (not e!842024))))

(assert (=> b!1313333 (= res!589797 (matchR!1618 (regex!2302 (rule!4043 (_1!7346 (get!4249 lt!432866)))) (list!5001 (charsOf!1274 (_1!7346 (get!4249 lt!432866))))))))

(declare-fun b!1313334 () Bool)

(assert (=> b!1313334 (= e!842024 (contains!2319 rules!2550 (rule!4043 (_1!7346 (get!4249 lt!432866)))))))

(assert (= (and d!370104 c!215551) b!1313326))

(assert (= (and d!370104 (not c!215551)) b!1313332))

(assert (= (or b!1313326 b!1313332) bm!89363))

(assert (= (and d!370104 (not res!589800)) b!1313328))

(assert (= (and b!1313328 res!589802) b!1313331))

(assert (= (and b!1313331 res!589801) b!1313330))

(assert (= (and b!1313330 res!589799) b!1313327))

(assert (= (and b!1313327 res!589803) b!1313329))

(assert (= (and b!1313329 res!589798) b!1313333))

(assert (= (and b!1313333 res!589797) b!1313334))

(declare-fun m!1466367 () Bool)

(assert (=> b!1313327 m!1466367))

(declare-fun m!1466369 () Bool)

(assert (=> b!1313327 m!1466369))

(assert (=> b!1313327 m!1466369))

(declare-fun m!1466371 () Bool)

(assert (=> b!1313327 m!1466371))

(assert (=> b!1313327 m!1466371))

(declare-fun m!1466373 () Bool)

(assert (=> b!1313327 m!1466373))

(declare-fun m!1466375 () Bool)

(assert (=> d!370104 m!1466375))

(declare-fun m!1466377 () Bool)

(assert (=> d!370104 m!1466377))

(declare-fun m!1466379 () Bool)

(assert (=> d!370104 m!1466379))

(assert (=> d!370104 m!1466185))

(assert (=> b!1313334 m!1466367))

(declare-fun m!1466381 () Bool)

(assert (=> b!1313334 m!1466381))

(assert (=> b!1313330 m!1466367))

(declare-fun m!1466383 () Bool)

(assert (=> b!1313330 m!1466383))

(assert (=> b!1313330 m!1465963))

(declare-fun m!1466385 () Bool)

(assert (=> b!1313328 m!1466385))

(assert (=> b!1313333 m!1466367))

(assert (=> b!1313333 m!1466369))

(assert (=> b!1313333 m!1466369))

(assert (=> b!1313333 m!1466371))

(assert (=> b!1313333 m!1466371))

(declare-fun m!1466387 () Bool)

(assert (=> b!1313333 m!1466387))

(declare-fun m!1466391 () Bool)

(assert (=> b!1313332 m!1466391))

(assert (=> b!1313329 m!1466367))

(declare-fun m!1466397 () Bool)

(assert (=> b!1313329 m!1466397))

(assert (=> b!1313329 m!1466397))

(declare-fun m!1466401 () Bool)

(assert (=> b!1313329 m!1466401))

(assert (=> b!1313331 m!1466367))

(assert (=> b!1313331 m!1466369))

(assert (=> b!1313331 m!1466369))

(assert (=> b!1313331 m!1466371))

(declare-fun m!1466403 () Bool)

(assert (=> bm!89363 m!1466403))

(assert (=> b!1312699 d!370104))

(declare-fun d!370110 () Bool)

(declare-fun lt!432876 () Bool)

(assert (=> d!370110 (= lt!432876 (set.member (rule!4043 t1!34) (content!1861 rules!2550)))))

(declare-fun e!842033 () Bool)

(assert (=> d!370110 (= lt!432876 e!842033)))

(declare-fun res!589813 () Bool)

(assert (=> d!370110 (=> (not res!589813) (not e!842033))))

(assert (=> d!370110 (= res!589813 (is-Cons!13303 rules!2550))))

(assert (=> d!370110 (= (contains!2319 rules!2550 (rule!4043 t1!34)) lt!432876)))

(declare-fun b!1313349 () Bool)

(declare-fun e!842034 () Bool)

(assert (=> b!1313349 (= e!842033 e!842034)))

(declare-fun res!589812 () Bool)

(assert (=> b!1313349 (=> res!589812 e!842034)))

(assert (=> b!1313349 (= res!589812 (= (h!18704 rules!2550) (rule!4043 t1!34)))))

(declare-fun b!1313350 () Bool)

(assert (=> b!1313350 (= e!842034 (contains!2319 (t!118170 rules!2550) (rule!4043 t1!34)))))

(assert (= (and d!370110 res!589813) b!1313349))

(assert (= (and b!1313349 (not res!589812)) b!1313350))

(assert (=> d!370110 m!1465837))

(declare-fun m!1466423 () Bool)

(assert (=> d!370110 m!1466423))

(declare-fun m!1466425 () Bool)

(assert (=> b!1313350 m!1466425))

(assert (=> b!1312678 d!370110))

(declare-fun b!1313365 () Bool)

(declare-fun e!842039 () Bool)

(declare-fun tp!382428 () Bool)

(assert (=> b!1313365 (= e!842039 tp!382428)))

(declare-fun b!1313364 () Bool)

(declare-fun tp!382429 () Bool)

(declare-fun tp!382430 () Bool)

(assert (=> b!1313364 (= e!842039 (and tp!382429 tp!382430))))

(declare-fun b!1313363 () Bool)

(declare-fun tp_is_empty!6617 () Bool)

(assert (=> b!1313363 (= e!842039 tp_is_empty!6617)))

(declare-fun b!1313366 () Bool)

(declare-fun tp!382427 () Bool)

(declare-fun tp!382426 () Bool)

(assert (=> b!1313366 (= e!842039 (and tp!382427 tp!382426))))

(assert (=> b!1312679 (= tp!382369 e!842039)))

(assert (= (and b!1312679 (is-ElementMatch!3616 (regex!2302 (rule!4043 t2!34)))) b!1313363))

(assert (= (and b!1312679 (is-Concat!6009 (regex!2302 (rule!4043 t2!34)))) b!1313364))

(assert (= (and b!1312679 (is-Star!3616 (regex!2302 (rule!4043 t2!34)))) b!1313365))

(assert (= (and b!1312679 (is-Union!3616 (regex!2302 (rule!4043 t2!34)))) b!1313366))

(declare-fun b!1313369 () Bool)

(declare-fun e!842040 () Bool)

(declare-fun tp!382433 () Bool)

(assert (=> b!1313369 (= e!842040 tp!382433)))

(declare-fun b!1313368 () Bool)

(declare-fun tp!382434 () Bool)

(declare-fun tp!382435 () Bool)

(assert (=> b!1313368 (= e!842040 (and tp!382434 tp!382435))))

(declare-fun b!1313367 () Bool)

(assert (=> b!1313367 (= e!842040 tp_is_empty!6617)))

(declare-fun b!1313370 () Bool)

(declare-fun tp!382432 () Bool)

(declare-fun tp!382431 () Bool)

(assert (=> b!1313370 (= e!842040 (and tp!382432 tp!382431))))

(assert (=> b!1312700 (= tp!382366 e!842040)))

(assert (= (and b!1312700 (is-ElementMatch!3616 (regex!2302 (rule!4043 t1!34)))) b!1313367))

(assert (= (and b!1312700 (is-Concat!6009 (regex!2302 (rule!4043 t1!34)))) b!1313368))

(assert (= (and b!1312700 (is-Star!3616 (regex!2302 (rule!4043 t1!34)))) b!1313369))

(assert (= (and b!1312700 (is-Union!3616 (regex!2302 (rule!4043 t1!34)))) b!1313370))

(declare-fun b!1313373 () Bool)

(declare-fun e!842041 () Bool)

(declare-fun tp!382438 () Bool)

(assert (=> b!1313373 (= e!842041 tp!382438)))

(declare-fun b!1313372 () Bool)

(declare-fun tp!382439 () Bool)

(declare-fun tp!382440 () Bool)

(assert (=> b!1313372 (= e!842041 (and tp!382439 tp!382440))))

(declare-fun b!1313371 () Bool)

(assert (=> b!1313371 (= e!842041 tp_is_empty!6617)))

(declare-fun b!1313374 () Bool)

(declare-fun tp!382437 () Bool)

(declare-fun tp!382436 () Bool)

(assert (=> b!1313374 (= e!842041 (and tp!382437 tp!382436))))

(assert (=> b!1312674 (= tp!382365 e!842041)))

(assert (= (and b!1312674 (is-ElementMatch!3616 (regex!2302 (h!18704 rules!2550)))) b!1313371))

(assert (= (and b!1312674 (is-Concat!6009 (regex!2302 (h!18704 rules!2550)))) b!1313372))

(assert (= (and b!1312674 (is-Star!3616 (regex!2302 (h!18704 rules!2550)))) b!1313373))

(assert (= (and b!1312674 (is-Union!3616 (regex!2302 (h!18704 rules!2550)))) b!1313374))

(declare-fun b!1313379 () Bool)

(declare-fun e!842044 () Bool)

(declare-fun tp!382443 () Bool)

(assert (=> b!1313379 (= e!842044 (and tp_is_empty!6617 tp!382443))))

(assert (=> b!1312691 (= tp!382364 e!842044)))

(assert (= (and b!1312691 (is-Cons!13302 (originalCharacters!3164 t1!34))) b!1313379))

(declare-fun b!1313380 () Bool)

(declare-fun e!842045 () Bool)

(declare-fun tp!382444 () Bool)

(assert (=> b!1313380 (= e!842045 (and tp_is_empty!6617 tp!382444))))

(assert (=> b!1312676 (= tp!382372 e!842045)))

(assert (= (and b!1312676 (is-Cons!13302 (originalCharacters!3164 t2!34))) b!1313380))

(declare-fun b!1313397 () Bool)

(declare-fun b_free!31639 () Bool)

(declare-fun b_next!32343 () Bool)

(assert (=> b!1313397 (= b_free!31639 (not b_next!32343))))

(declare-fun tp!382454 () Bool)

(declare-fun b_and!87729 () Bool)

(assert (=> b!1313397 (= tp!382454 b_and!87729)))

(declare-fun b_free!31641 () Bool)

(declare-fun b_next!32345 () Bool)

(assert (=> b!1313397 (= b_free!31641 (not b_next!32345))))

(declare-fun t!118200 () Bool)

(declare-fun tb!69827 () Bool)

(assert (=> (and b!1313397 (= (toChars!3384 (transformation!2302 (h!18704 (t!118170 rules!2550)))) (toChars!3384 (transformation!2302 (rule!4043 t2!34)))) t!118200) tb!69827))

(declare-fun result!84722 () Bool)

(assert (= result!84722 result!84694))

(assert (=> d!369928 t!118200))

(declare-fun t!118202 () Bool)

(declare-fun tb!69829 () Bool)

(assert (=> (and b!1313397 (= (toChars!3384 (transformation!2302 (h!18704 (t!118170 rules!2550)))) (toChars!3384 (transformation!2302 (rule!4043 t1!34)))) t!118202) tb!69829))

(declare-fun result!84724 () Bool)

(assert (= result!84724 result!84702))

(assert (=> d!369982 t!118202))

(assert (=> b!1313307 t!118202))

(assert (=> b!1313309 t!118200))

(declare-fun tp!382453 () Bool)

(declare-fun b_and!87731 () Bool)

(assert (=> b!1313397 (= tp!382453 (and (=> t!118200 result!84722) (=> t!118202 result!84724) b_and!87731))))

(declare-fun e!842060 () Bool)

(assert (=> b!1313397 (= e!842060 (and tp!382454 tp!382453))))

(declare-fun e!842061 () Bool)

(declare-fun b!1313396 () Bool)

(declare-fun tp!382456 () Bool)

(assert (=> b!1313396 (= e!842061 (and tp!382456 (inv!17680 (tag!2564 (h!18704 (t!118170 rules!2550)))) (inv!17683 (transformation!2302 (h!18704 (t!118170 rules!2550)))) e!842060))))

(declare-fun b!1313395 () Bool)

(declare-fun e!842057 () Bool)

(declare-fun tp!382455 () Bool)

(assert (=> b!1313395 (= e!842057 (and e!842061 tp!382455))))

(assert (=> b!1312698 (= tp!382362 e!842057)))

(assert (= b!1313396 b!1313397))

(assert (= b!1313395 b!1313396))

(assert (= (and b!1312698 (is-Cons!13303 (t!118170 rules!2550))) b!1313395))

(declare-fun m!1466437 () Bool)

(assert (=> b!1313396 m!1466437))

(declare-fun m!1466439 () Bool)

(assert (=> b!1313396 m!1466439))

(declare-fun b_lambda!37827 () Bool)

(assert (= b_lambda!37807 (or b!1312688 b_lambda!37827)))

(declare-fun bs!330150 () Bool)

(declare-fun d!370116 () Bool)

(assert (= bs!330150 (and d!370116 b!1312688)))

(assert (=> bs!330150 (= (dynLambda!5782 lambda!53173 (h!18704 rules!2550)) (= (regex!2302 (h!18704 rules!2550)) lt!432615))))

(assert (=> b!1313062 d!370116))

(declare-fun b_lambda!37829 () Bool)

(assert (= b_lambda!37819 (or b!1312695 b_lambda!37829)))

(declare-fun bs!330151 () Bool)

(declare-fun d!370118 () Bool)

(assert (= bs!330151 (and d!370118 b!1312695)))

(declare-fun ruleValid!558 (LexerInterface!1997 Rule!4404) Bool)

(assert (=> bs!330151 (= (dynLambda!5782 lambda!53174 lt!432603) (ruleValid!558 thiss!19762 lt!432603))))

(declare-fun m!1466441 () Bool)

(assert (=> bs!330151 m!1466441))

(assert (=> d!370078 d!370118))

(declare-fun b_lambda!37831 () Bool)

(assert (= b_lambda!37821 (or (and b!1312669 b_free!31617) (and b!1312693 b_free!31621 (= (toChars!3384 (transformation!2302 (rule!4043 t2!34))) (toChars!3384 (transformation!2302 (rule!4043 t1!34))))) (and b!1312697 b_free!31625 (= (toChars!3384 (transformation!2302 (h!18704 rules!2550))) (toChars!3384 (transformation!2302 (rule!4043 t1!34))))) (and b!1313397 b_free!31641 (= (toChars!3384 (transformation!2302 (h!18704 (t!118170 rules!2550)))) (toChars!3384 (transformation!2302 (rule!4043 t1!34))))) b_lambda!37831)))

(declare-fun b_lambda!37833 () Bool)

(assert (= b_lambda!37813 (or b!1312664 b_lambda!37833)))

(declare-fun bs!330152 () Bool)

(declare-fun d!370120 () Bool)

(assert (= bs!330152 (and d!370120 b!1312664)))

(declare-fun res!589820 () Bool)

(declare-fun e!842066 () Bool)

(assert (=> bs!330152 (=> (not res!589820) (not e!842066))))

(assert (=> bs!330152 (= res!589820 (validRegex!1544 (h!18705 (map!2920 rules!2550 lambda!53171))))))

(assert (=> bs!330152 (= (dynLambda!5785 lambda!53172 (h!18705 (map!2920 rules!2550 lambda!53171))) e!842066)))

(declare-fun b!1313404 () Bool)

(assert (=> b!1313404 (= e!842066 (matchR!1618 (h!18705 (map!2920 rules!2550 lambda!53171)) lt!432604))))

(assert (= (and bs!330152 res!589820) b!1313404))

(declare-fun m!1466443 () Bool)

(assert (=> bs!330152 m!1466443))

(declare-fun m!1466445 () Bool)

(assert (=> b!1313404 m!1466445))

(assert (=> b!1313105 d!370120))

(declare-fun b_lambda!37835 () Bool)

(assert (= b_lambda!37805 (or (and b!1312669 b_free!31617) (and b!1312693 b_free!31621 (= (toChars!3384 (transformation!2302 (rule!4043 t2!34))) (toChars!3384 (transformation!2302 (rule!4043 t1!34))))) (and b!1312697 b_free!31625 (= (toChars!3384 (transformation!2302 (h!18704 rules!2550))) (toChars!3384 (transformation!2302 (rule!4043 t1!34))))) (and b!1313397 b_free!31641 (= (toChars!3384 (transformation!2302 (h!18704 (t!118170 rules!2550)))) (toChars!3384 (transformation!2302 (rule!4043 t1!34))))) b_lambda!37835)))

(declare-fun b_lambda!37837 () Bool)

(assert (= b_lambda!37823 (or (and b!1312669 b_free!31617 (= (toChars!3384 (transformation!2302 (rule!4043 t1!34))) (toChars!3384 (transformation!2302 (rule!4043 t2!34))))) (and b!1312693 b_free!31621) (and b!1312697 b_free!31625 (= (toChars!3384 (transformation!2302 (h!18704 rules!2550))) (toChars!3384 (transformation!2302 (rule!4043 t2!34))))) (and b!1313397 b_free!31641 (= (toChars!3384 (transformation!2302 (h!18704 (t!118170 rules!2550)))) (toChars!3384 (transformation!2302 (rule!4043 t2!34))))) b_lambda!37837)))

(declare-fun b_lambda!37839 () Bool)

(assert (= b_lambda!37791 (or (and b!1312669 b_free!31617 (= (toChars!3384 (transformation!2302 (rule!4043 t1!34))) (toChars!3384 (transformation!2302 (rule!4043 t2!34))))) (and b!1312693 b_free!31621) (and b!1312697 b_free!31625 (= (toChars!3384 (transformation!2302 (h!18704 rules!2550))) (toChars!3384 (transformation!2302 (rule!4043 t2!34))))) (and b!1313397 b_free!31641 (= (toChars!3384 (transformation!2302 (h!18704 (t!118170 rules!2550)))) (toChars!3384 (transformation!2302 (rule!4043 t2!34))))) b_lambda!37839)))

(declare-fun b_lambda!37841 () Bool)

(assert (= b_lambda!37817 (or b!1312695 b_lambda!37841)))

(declare-fun bs!330153 () Bool)

(declare-fun d!370122 () Bool)

(assert (= bs!330153 (and d!370122 b!1312695)))

(assert (=> bs!330153 (= (dynLambda!5782 lambda!53174 (h!18704 rules!2550)) (ruleValid!558 thiss!19762 (h!18704 rules!2550)))))

(declare-fun m!1466447 () Bool)

(assert (=> bs!330153 m!1466447))

(assert (=> b!1313277 d!370122))

(declare-fun b_lambda!37843 () Bool)

(assert (= b_lambda!37815 (or b!1312682 b_lambda!37843)))

(declare-fun bs!330154 () Bool)

(declare-fun d!370124 () Bool)

(assert (= bs!330154 (and d!370124 b!1312682)))

(declare-fun res!589821 () Bool)

(declare-fun e!842067 () Bool)

(assert (=> bs!330154 (=> (not res!589821) (not e!842067))))

(assert (=> bs!330154 (= res!589821 (matchR!1618 lt!432607 lt!432784))))

(assert (=> bs!330154 (= (dynLambda!5786 lambda!53170 lt!432784) e!842067)))

(declare-fun b!1313405 () Bool)

(assert (=> b!1313405 (= e!842067 (isPrefix!1069 lt!432602 lt!432784))))

(assert (= (and bs!330154 res!589821) b!1313405))

(declare-fun m!1466449 () Bool)

(assert (=> bs!330154 m!1466449))

(declare-fun m!1466451 () Bool)

(assert (=> b!1313405 m!1466451))

(assert (=> d!370030 d!370124))

(declare-fun b_lambda!37845 () Bool)

(assert (= b_lambda!37811 (or b!1312664 b_lambda!37845)))

(declare-fun bs!330155 () Bool)

(declare-fun d!370126 () Bool)

(assert (= bs!330155 (and d!370126 b!1312664)))

(declare-fun res!589822 () Bool)

(declare-fun e!842068 () Bool)

(assert (=> bs!330155 (=> (not res!589822) (not e!842068))))

(assert (=> bs!330155 (= res!589822 (validRegex!1544 lt!432776))))

(assert (=> bs!330155 (= (dynLambda!5785 lambda!53172 lt!432776) e!842068)))

(declare-fun b!1313406 () Bool)

(assert (=> b!1313406 (= e!842068 (matchR!1618 lt!432776 lt!432604))))

(assert (= (and bs!330155 res!589822) b!1313406))

(declare-fun m!1466453 () Bool)

(assert (=> bs!330155 m!1466453))

(declare-fun m!1466455 () Bool)

(assert (=> b!1313406 m!1466455))

(assert (=> d!370006 d!370126))

(declare-fun b_lambda!37847 () Bool)

(assert (= b_lambda!37803 (or b!1312664 b_lambda!37847)))

(declare-fun bs!330156 () Bool)

(declare-fun d!370128 () Bool)

(assert (= bs!330156 (and d!370128 b!1312664)))

(assert (=> bs!330156 (= (dynLambda!5781 lambda!53171 (h!18704 rules!2550)) (regex!2302 (h!18704 rules!2550)))))

(assert (=> b!1313019 d!370128))

(declare-fun b_lambda!37849 () Bool)

(assert (= b_lambda!37809 (or b!1312688 b_lambda!37849)))

(declare-fun bs!330157 () Bool)

(declare-fun d!370130 () Bool)

(assert (= bs!330157 (and d!370130 b!1312688)))

(assert (=> bs!330157 (= (dynLambda!5782 lambda!53173 lt!432757) (= (regex!2302 lt!432757) lt!432615))))

(assert (=> d!369992 d!370130))

(push 1)

(assert (not d!370036))

(assert (not d!369970))

(assert (not bs!330152))

(assert (not b!1313314))

(assert (not b!1312906))

(assert (not b!1313312))

(assert (not b!1313370))

(assert (not b!1312904))

(assert (not b_next!32319))

(assert (not b!1313102))

(assert (not b_lambda!37833))

(assert (not b!1313333))

(assert (not b!1313139))

(assert (not d!370100))

(assert (not b_lambda!37843))

(assert (not b!1313247))

(assert (not bs!330154))

(assert (not b_lambda!37845))

(assert (not b!1313067))

(assert (not b!1312914))

(assert (not d!369976))

(assert (not b!1313199))

(assert (not d!369988))

(assert (not b!1313130))

(assert (not d!369986))

(assert (not d!369994))

(assert (not d!369940))

(assert (not d!370024))

(assert (not b!1313365))

(assert (not b_next!32343))

(assert (not bm!89359))

(assert (not d!369980))

(assert (not d!370096))

(assert (not b!1313044))

(assert (not b!1313234))

(assert (not b!1313315))

(assert (not b_next!32325))

(assert (not b!1313366))

(assert (not b!1313308))

(assert (not b!1313129))

(assert (not b!1313203))

(assert (not b!1313334))

(assert (not b!1313080))

(assert (not b!1312934))

(assert (not d!369958))

(assert (not d!370070))

(assert (not d!369922))

(assert (not b!1313127))

(assert (not b!1312872))

(assert (not d!369928))

(assert b_and!87675)

(assert (not d!370082))

(assert (not bs!330151))

(assert (not b!1313405))

(assert (not b!1313066))

(assert b_and!87679)

(assert (not d!369992))

(assert (not b_lambda!37847))

(assert (not d!369926))

(assert (not b!1313041))

(assert (not b!1312950))

(assert (not b!1313125))

(assert (not b!1313002))

(assert (not b!1313205))

(assert (not b!1312905))

(assert (not b!1313396))

(assert (not tb!69809))

(assert (not b!1313063))

(assert (not b!1312999))

(assert (not d!369968))

(assert (not d!370062))

(assert (not b!1312869))

(assert (not d!369960))

(assert (not b!1313198))

(assert (not b!1313144))

(assert (not b!1313057))

(assert (not b!1313034))

(assert (not d!370032))

(assert (not d!370091))

(assert (not b!1313380))

(assert (not d!369966))

(assert (not b_next!32323))

(assert (not b!1313296))

(assert (not b!1313322))

(assert (not d!369984))

(assert (not b!1313309))

(assert (not b!1313001))

(assert (not d!369936))

(assert (not d!370072))

(assert (not d!369996))

(assert (not b!1313006))

(assert (not d!369938))

(assert (not d!369934))

(assert (not b!1313235))

(assert (not b!1313043))

(assert (not d!370066))

(assert (not b_lambda!37849))

(assert b_and!87721)

(assert (not b_lambda!37835))

(assert (not b!1312871))

(assert (not b!1313202))

(assert (not b!1313204))

(assert (not b!1313024))

(assert (not b!1312903))

(assert (not b!1313406))

(assert b_and!87717)

(assert (not b!1313368))

(assert (not b!1312940))

(assert (not b!1313307))

(assert (not d!369982))

(assert (not b!1312923))

(assert (not b!1313372))

(assert (not b_next!32327))

(assert (not b!1313035))

(assert (not bs!330155))

(assert (not b!1313404))

(assert tp_is_empty!6617)

(assert (not b!1313310))

(assert (not b_lambda!37827))

(assert (not d!369930))

(assert (not d!369920))

(assert (not b!1313373))

(assert (not b!1313136))

(assert (not d!370104))

(assert (not b!1313298))

(assert (not d!369978))

(assert (not d!370000))

(assert (not b!1312921))

(assert (not b_lambda!37841))

(assert (not d!370028))

(assert (not b!1313350))

(assert (not b!1313011))

(assert (not b!1313327))

(assert (not b!1313330))

(assert (not b!1313060))

(assert (not tb!69815))

(assert (not b!1313068))

(assert b_and!87731)

(assert (not b!1312910))

(assert (not b!1313332))

(assert (not b_next!32321))

(assert (not d!369964))

(assert (not b_next!32345))

(assert (not d!369998))

(assert (not b!1313145))

(assert (not b!1313374))

(assert b_and!87719)

(assert (not b!1313320))

(assert (not b!1313295))

(assert (not b!1313328))

(assert (not b!1313379))

(assert (not b_next!32329))

(assert (not d!369972))

(assert (not b!1313103))

(assert (not d!370044))

(assert (not b!1313008))

(assert (not b!1313395))

(assert (not d!370078))

(assert (not d!369956))

(assert b_and!87729)

(assert (not b_lambda!37831))

(assert (not b!1313003))

(assert b_and!87683)

(assert (not b!1313019))

(assert (not d!370004))

(assert (not b!1313058))

(assert (not b!1313233))

(assert (not d!370006))

(assert (not b!1313302))

(assert (not b_lambda!37839))

(assert (not d!370022))

(assert (not b!1313278))

(assert (not b!1313065))

(assert (not d!370012))

(assert (not bm!89363))

(assert (not b!1313369))

(assert (not d!369990))

(assert (not d!370002))

(assert (not d!370084))

(assert (not b!1313107))

(assert (not bs!330153))

(assert (not b!1313042))

(assert (not d!370046))

(assert (not b!1313248))

(assert (not d!369974))

(assert (not b!1313246))

(assert (not d!370030))

(assert (not b!1313201))

(assert (not b_lambda!37837))

(assert (not d!370110))

(assert (not b!1312922))

(assert (not bm!89353))

(assert (not b!1313200))

(assert (not d!370074))

(assert (not b!1313331))

(assert (not b_lambda!37829))

(assert (not d!369962))

(assert (not b!1313364))

(assert (not b!1313329))

(assert (not d!370088))

(assert (not b!1313321))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!32319))

(assert (not b_next!32343))

(assert (not b_next!32325))

(assert b_and!87675)

(assert b_and!87679)

(assert (not b_next!32323))

(assert b_and!87721)

(assert b_and!87717)

(assert (not b_next!32327))

(assert b_and!87731)

(assert b_and!87719)

(assert (not b_next!32329))

(assert b_and!87729)

(assert b_and!87683)

(assert (not b_next!32321))

(assert (not b_next!32345))

(check-sat)

(pop 1)

