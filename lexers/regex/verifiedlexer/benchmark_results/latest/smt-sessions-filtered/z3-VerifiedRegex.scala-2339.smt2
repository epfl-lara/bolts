; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115462 () Bool)

(assert start!115462)

(declare-fun b!1307661 () Bool)

(declare-fun b_free!31411 () Bool)

(declare-fun b_next!32115 () Bool)

(assert (=> b!1307661 (= b_free!31411 (not b_next!32115))))

(declare-fun tp!381441 () Bool)

(declare-fun b_and!87311 () Bool)

(assert (=> b!1307661 (= tp!381441 b_and!87311)))

(declare-fun b_free!31413 () Bool)

(declare-fun b_next!32117 () Bool)

(assert (=> b!1307661 (= b_free!31413 (not b_next!32117))))

(declare-fun tp!381440 () Bool)

(declare-fun b_and!87313 () Bool)

(assert (=> b!1307661 (= tp!381440 b_and!87313)))

(declare-fun b!1307643 () Bool)

(declare-fun b_free!31415 () Bool)

(declare-fun b_next!32119 () Bool)

(assert (=> b!1307643 (= b_free!31415 (not b_next!32119))))

(declare-fun tp!381437 () Bool)

(declare-fun b_and!87315 () Bool)

(assert (=> b!1307643 (= tp!381437 b_and!87315)))

(declare-fun b_free!31417 () Bool)

(declare-fun b_next!32121 () Bool)

(assert (=> b!1307643 (= b_free!31417 (not b_next!32121))))

(declare-fun tp!381436 () Bool)

(declare-fun b_and!87317 () Bool)

(assert (=> b!1307643 (= tp!381436 b_and!87317)))

(declare-fun b!1307663 () Bool)

(declare-fun b_free!31419 () Bool)

(declare-fun b_next!32123 () Bool)

(assert (=> b!1307663 (= b_free!31419 (not b_next!32123))))

(declare-fun tp!381445 () Bool)

(declare-fun b_and!87319 () Bool)

(assert (=> b!1307663 (= tp!381445 b_and!87319)))

(declare-fun b_free!31421 () Bool)

(declare-fun b_next!32125 () Bool)

(assert (=> b!1307663 (= b_free!31421 (not b_next!32125))))

(declare-fun tp!381438 () Bool)

(declare-fun b_and!87321 () Bool)

(assert (=> b!1307663 (= tp!381438 b_and!87321)))

(declare-fun b!1307654 () Bool)

(assert (=> b!1307654 true))

(assert (=> b!1307654 true))

(declare-fun b!1307649 () Bool)

(assert (=> b!1307649 true))

(declare-fun b!1307644 () Bool)

(assert (=> b!1307644 true))

(declare-fun e!838604 () Bool)

(assert (=> b!1307643 (= e!838604 (and tp!381437 tp!381436))))

(declare-fun e!838606 () Bool)

(declare-fun e!838584 () Bool)

(assert (=> b!1307644 (= e!838606 e!838584)))

(declare-fun res!586560 () Bool)

(assert (=> b!1307644 (=> res!586560 e!838584)))

(declare-datatypes ((List!13286 0))(
  ( (Nil!13220) (Cons!13220 (h!18621 (_ BitVec 16)) (t!117909 List!13286)) )
))
(declare-datatypes ((TokenValue!2377 0))(
  ( (FloatLiteralValue!4754 (text!17084 List!13286)) (TokenValueExt!2376 (__x!8583 Int)) (Broken!11885 (value!74786 List!13286)) (Object!2442) (End!2377) (Def!2377) (Underscore!2377) (Match!2377) (Else!2377) (Error!2377) (Case!2377) (If!2377) (Extends!2377) (Abstract!2377) (Class!2377) (Val!2377) (DelimiterValue!4754 (del!2437 List!13286)) (KeywordValue!2383 (value!74787 List!13286)) (CommentValue!4754 (value!74788 List!13286)) (WhitespaceValue!4754 (value!74789 List!13286)) (IndentationValue!2377 (value!74790 List!13286)) (String!16120) (Int32!2377) (Broken!11886 (value!74791 List!13286)) (Boolean!2378) (Unit!19297) (OperatorValue!2380 (op!2437 List!13286)) (IdentifierValue!4754 (value!74792 List!13286)) (IdentifierValue!4755 (value!74793 List!13286)) (WhitespaceValue!4755 (value!74794 List!13286)) (True!4754) (False!4754) (Broken!11887 (value!74795 List!13286)) (Broken!11888 (value!74796 List!13286)) (True!4755) (RightBrace!2377) (RightBracket!2377) (Colon!2377) (Null!2377) (Comma!2377) (LeftBracket!2377) (False!4755) (LeftBrace!2377) (ImaginaryLiteralValue!2377 (text!17085 List!13286)) (StringLiteralValue!7131 (value!74797 List!13286)) (EOFValue!2377 (value!74798 List!13286)) (IdentValue!2377 (value!74799 List!13286)) (DelimiterValue!4755 (value!74800 List!13286)) (DedentValue!2377 (value!74801 List!13286)) (NewLineValue!2377 (value!74802 List!13286)) (IntegerValue!7131 (value!74803 (_ BitVec 32)) (text!17086 List!13286)) (IntegerValue!7132 (value!74804 Int) (text!17087 List!13286)) (Times!2377) (Or!2377) (Equal!2377) (Minus!2377) (Broken!11889 (value!74805 List!13286)) (And!2377) (Div!2377) (LessEqual!2377) (Mod!2377) (Concat!5978) (Not!2377) (Plus!2377) (SpaceValue!2377 (value!74806 List!13286)) (IntegerValue!7133 (value!74807 Int) (text!17088 List!13286)) (StringLiteralValue!7132 (text!17089 List!13286)) (FloatLiteralValue!4755 (text!17090 List!13286)) (BytesLiteralValue!2377 (value!74808 List!13286)) (CommentValue!4755 (value!74809 List!13286)) (StringLiteralValue!7133 (value!74810 List!13286)) (ErrorTokenValue!2377 (msg!2438 List!13286)) )
))
(declare-datatypes ((C!7492 0))(
  ( (C!7493 (val!4306 Int)) )
))
(declare-datatypes ((List!13287 0))(
  ( (Nil!13221) (Cons!13221 (h!18622 C!7492) (t!117910 List!13287)) )
))
(declare-datatypes ((IArray!8693 0))(
  ( (IArray!8694 (innerList!4404 List!13287)) )
))
(declare-datatypes ((Conc!4344 0))(
  ( (Node!4344 (left!11369 Conc!4344) (right!11699 Conc!4344) (csize!8918 Int) (cheight!4555 Int)) (Leaf!6684 (xs!7059 IArray!8693) (csize!8919 Int)) (Empty!4344) )
))
(declare-datatypes ((BalanceConc!8628 0))(
  ( (BalanceConc!8629 (c!214772 Conc!4344)) )
))
(declare-datatypes ((Regex!3601 0))(
  ( (ElementMatch!3601 (c!214773 C!7492)) (Concat!5979 (regOne!7714 Regex!3601) (regTwo!7714 Regex!3601)) (EmptyExpr!3601) (Star!3601 (reg!3930 Regex!3601)) (EmptyLang!3601) (Union!3601 (regOne!7715 Regex!3601) (regTwo!7715 Regex!3601)) )
))
(declare-datatypes ((String!16121 0))(
  ( (String!16122 (value!74811 String)) )
))
(declare-datatypes ((TokenValueInjection!4414 0))(
  ( (TokenValueInjection!4415 (toValue!3506 Int) (toChars!3365 Int)) )
))
(declare-datatypes ((Rule!4374 0))(
  ( (Rule!4375 (regex!2287 Regex!3601) (tag!2549 String!16121) (isSeparator!2287 Bool) (transformation!2287 TokenValueInjection!4414)) )
))
(declare-datatypes ((List!13288 0))(
  ( (Nil!13222) (Cons!13222 (h!18623 Rule!4374) (t!117911 List!13288)) )
))
(declare-fun rules!2550 () List!13288)

(declare-fun lambda!52511 () Int)

(declare-fun exists!276 (List!13288 Int) Bool)

(assert (=> b!1307644 (= res!586560 (not (exists!276 rules!2550 lambda!52511)))))

(assert (=> b!1307644 (exists!276 rules!2550 lambda!52511)))

(declare-fun lambda!52509 () Int)

(declare-datatypes ((Unit!19298 0))(
  ( (Unit!19299) )
))
(declare-fun lt!430421 () Unit!19298)

(declare-fun lt!430433 () Regex!3601)

(declare-fun lemmaMapContains!30 (List!13288 Int Regex!3601) Unit!19298)

(assert (=> b!1307644 (= lt!430421 (lemmaMapContains!30 rules!2550 lambda!52509 lt!430433))))

(declare-fun e!838585 () Bool)

(declare-fun e!838603 () Bool)

(declare-datatypes ((Token!4236 0))(
  ( (Token!4237 (value!74812 TokenValue!2377) (rule!4026 Rule!4374) (size!10754 Int) (originalCharacters!3149 List!13287)) )
))
(declare-fun t1!34 () Token!4236)

(declare-fun b!1307645 () Bool)

(declare-fun tp!381435 () Bool)

(declare-fun inv!21 (TokenValue!2377) Bool)

(assert (=> b!1307645 (= e!838585 (and (inv!21 (value!74812 t1!34)) e!838603 tp!381435))))

(declare-fun e!838594 () Bool)

(declare-fun b!1307646 () Bool)

(declare-fun e!838600 () Bool)

(declare-fun tp!381439 () Bool)

(declare-fun t2!34 () Token!4236)

(declare-fun inv!17612 (String!16121) Bool)

(declare-fun inv!17615 (TokenValueInjection!4414) Bool)

(assert (=> b!1307646 (= e!838594 (and tp!381439 (inv!17612 (tag!2549 (rule!4026 t2!34))) (inv!17615 (transformation!2287 (rule!4026 t2!34))) e!838600))))

(declare-fun b!1307647 () Bool)

(declare-fun res!586551 () Bool)

(declare-fun e!838587 () Bool)

(assert (=> b!1307647 (=> res!586551 e!838587)))

(declare-fun contains!2271 (List!13288 Rule!4374) Bool)

(assert (=> b!1307647 (= res!586551 (not (contains!2271 rules!2550 (rule!4026 t1!34))))))

(declare-fun b!1307648 () Bool)

(declare-fun e!838602 () Bool)

(assert (=> b!1307648 (= e!838602 true)))

(declare-fun lt!430422 () Bool)

(declare-datatypes ((List!13289 0))(
  ( (Nil!13223) (Cons!13223 (h!18624 Token!4236) (t!117912 List!13289)) )
))
(declare-datatypes ((IArray!8695 0))(
  ( (IArray!8696 (innerList!4405 List!13289)) )
))
(declare-datatypes ((Conc!4345 0))(
  ( (Node!4345 (left!11370 Conc!4345) (right!11700 Conc!4345) (csize!8920 Int) (cheight!4556 Int)) (Leaf!6685 (xs!7060 IArray!8695) (csize!8921 Int)) (Empty!4345) )
))
(declare-datatypes ((BalanceConc!8630 0))(
  ( (BalanceConc!8631 (c!214774 Conc!4345)) )
))
(declare-datatypes ((tuple2!12818 0))(
  ( (tuple2!12819 (_1!7295 BalanceConc!8630) (_2!7295 BalanceConc!8628)) )
))
(declare-fun lt!430428 () tuple2!12818)

(declare-fun isEmpty!7818 (BalanceConc!8628) Bool)

(assert (=> b!1307648 (= lt!430422 (isEmpty!7818 (_2!7295 lt!430428)))))

(declare-fun res!586550 () Bool)

(declare-fun e!838599 () Bool)

(assert (=> start!115462 (=> (not res!586550) (not e!838599))))

(declare-datatypes ((LexerInterface!1982 0))(
  ( (LexerInterfaceExt!1979 (__x!8584 Int)) (Lexer!1980) )
))
(declare-fun thiss!19762 () LexerInterface!1982)

(get-info :version)

(assert (=> start!115462 (= res!586550 ((_ is Lexer!1980) thiss!19762))))

(assert (=> start!115462 e!838599))

(assert (=> start!115462 true))

(declare-fun e!838593 () Bool)

(assert (=> start!115462 e!838593))

(declare-fun inv!17616 (Token!4236) Bool)

(assert (=> start!115462 (and (inv!17616 t1!34) e!838585)))

(declare-fun e!838595 () Bool)

(assert (=> start!115462 (and (inv!17616 t2!34) e!838595)))

(declare-fun e!838591 () Bool)

(declare-fun e!838583 () Bool)

(assert (=> b!1307649 (= e!838591 e!838583)))

(declare-fun res!586544 () Bool)

(assert (=> b!1307649 (=> res!586544 e!838583)))

(declare-fun lambda!52510 () Int)

(declare-datatypes ((List!13290 0))(
  ( (Nil!13224) (Cons!13224 (h!18625 Regex!3601) (t!117913 List!13290)) )
))
(declare-fun exists!277 (List!13290 Int) Bool)

(declare-fun map!2897 (List!13288 Int) List!13290)

(assert (=> b!1307649 (= res!586544 (not (exists!277 (map!2897 rules!2550 lambda!52509) lambda!52510)))))

(declare-fun lt!430435 () List!13290)

(assert (=> b!1307649 (exists!277 lt!430435 lambda!52510)))

(declare-fun lt!430425 () Regex!3601)

(declare-fun lt!430429 () Unit!19298)

(declare-fun lt!430420 () List!13287)

(declare-fun matchRGenUnionSpec!38 (Regex!3601 List!13290 List!13287) Unit!19298)

(assert (=> b!1307649 (= lt!430429 (matchRGenUnionSpec!38 lt!430425 lt!430435 lt!430420))))

(assert (=> b!1307649 (= lt!430435 (map!2897 rules!2550 lambda!52509))))

(declare-fun b!1307650 () Bool)

(declare-fun res!586547 () Bool)

(assert (=> b!1307650 (=> res!586547 e!838587)))

(declare-fun lt!430427 () List!13287)

(declare-datatypes ((tuple2!12820 0))(
  ( (tuple2!12821 (_1!7296 Token!4236) (_2!7296 List!13287)) )
))
(declare-datatypes ((Option!2552 0))(
  ( (None!2551) (Some!2551 (v!21057 tuple2!12820)) )
))
(declare-fun maxPrefix!992 (LexerInterface!1982 List!13288 List!13287) Option!2552)

(assert (=> b!1307650 (= res!586547 (not (= (maxPrefix!992 thiss!19762 rules!2550 lt!430427) (Some!2551 (tuple2!12821 t1!34 Nil!13221)))))))

(declare-fun b!1307651 () Bool)

(declare-fun e!838597 () Bool)

(declare-fun tp!381442 () Bool)

(assert (=> b!1307651 (= e!838593 (and e!838597 tp!381442))))

(declare-fun b!1307652 () Bool)

(declare-fun res!586549 () Bool)

(assert (=> b!1307652 (=> (not res!586549) (not e!838599))))

(declare-fun rulesProduceIndividualToken!951 (LexerInterface!1982 List!13288 Token!4236) Bool)

(assert (=> b!1307652 (= res!586549 (rulesProduceIndividualToken!951 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1307653 () Bool)

(declare-fun res!586539 () Bool)

(declare-fun e!838596 () Bool)

(assert (=> b!1307653 (=> (not res!586539) (not e!838596))))

(declare-fun sepAndNonSepRulesDisjointChars!660 (List!13288 List!13288) Bool)

(assert (=> b!1307653 (= res!586539 (sepAndNonSepRulesDisjointChars!660 rules!2550 rules!2550))))

(declare-fun e!838601 () Bool)

(declare-fun e!838588 () Bool)

(assert (=> b!1307654 (= e!838601 (not e!838588))))

(declare-fun res!586554 () Bool)

(assert (=> b!1307654 (=> res!586554 e!838588)))

(declare-fun lambda!52508 () Int)

(declare-fun Exists!759 (Int) Bool)

(assert (=> b!1307654 (= res!586554 (not (Exists!759 lambda!52508)))))

(assert (=> b!1307654 (Exists!759 lambda!52508)))

(declare-fun lt!430418 () Unit!19298)

(declare-fun lt!430436 () List!13287)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!77 (Regex!3601 List!13287) Unit!19298)

(assert (=> b!1307654 (= lt!430418 (lemmaPrefixMatchThenExistsStringThatMatches!77 lt!430425 lt!430436))))

(declare-fun b!1307655 () Bool)

(declare-fun res!586545 () Bool)

(assert (=> b!1307655 (=> (not res!586545) (not e!838596))))

(declare-fun separableTokensPredicate!265 (LexerInterface!1982 Token!4236 Token!4236 List!13288) Bool)

(assert (=> b!1307655 (= res!586545 (not (separableTokensPredicate!265 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1307656 () Bool)

(declare-fun res!586543 () Bool)

(assert (=> b!1307656 (=> res!586543 e!838591)))

(declare-fun lt!430423 () C!7492)

(declare-fun contains!2272 (List!13287 C!7492) Bool)

(assert (=> b!1307656 (= res!586543 (not (contains!2272 lt!430436 lt!430423)))))

(declare-fun b!1307657 () Bool)

(declare-fun res!586552 () Bool)

(assert (=> b!1307657 (=> (not res!586552) (not e!838599))))

(declare-fun isEmpty!7819 (List!13288) Bool)

(assert (=> b!1307657 (= res!586552 (not (isEmpty!7819 rules!2550)))))

(declare-fun b!1307658 () Bool)

(declare-fun res!586558 () Bool)

(assert (=> b!1307658 (=> (not res!586558) (not e!838599))))

(assert (=> b!1307658 (= res!586558 (rulesProduceIndividualToken!951 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1307659 () Bool)

(assert (=> b!1307659 (= e!838596 e!838601)))

(declare-fun res!586541 () Bool)

(assert (=> b!1307659 (=> (not res!586541) (not e!838601))))

(declare-fun prefixMatch!114 (Regex!3601 List!13287) Bool)

(assert (=> b!1307659 (= res!586541 (prefixMatch!114 lt!430425 lt!430436))))

(declare-fun rulesRegex!172 (LexerInterface!1982 List!13288) Regex!3601)

(assert (=> b!1307659 (= lt!430425 (rulesRegex!172 thiss!19762 rules!2550))))

(declare-fun ++!3364 (List!13287 List!13287) List!13287)

(assert (=> b!1307659 (= lt!430436 (++!3364 lt!430427 (Cons!13221 lt!430423 Nil!13221)))))

(declare-fun lt!430432 () BalanceConc!8628)

(declare-fun apply!2967 (BalanceConc!8628 Int) C!7492)

(assert (=> b!1307659 (= lt!430423 (apply!2967 lt!430432 0))))

(declare-fun lt!430419 () BalanceConc!8628)

(declare-fun list!4958 (BalanceConc!8628) List!13287)

(assert (=> b!1307659 (= lt!430427 (list!4958 lt!430419))))

(declare-fun charsOf!1259 (Token!4236) BalanceConc!8628)

(assert (=> b!1307659 (= lt!430419 (charsOf!1259 t1!34))))

(declare-fun b!1307660 () Bool)

(declare-fun res!586553 () Bool)

(assert (=> b!1307660 (=> (not res!586553) (not e!838599))))

(assert (=> b!1307660 (= res!586553 (not (= (isSeparator!2287 (rule!4026 t1!34)) (isSeparator!2287 (rule!4026 t2!34)))))))

(declare-fun e!838592 () Bool)

(assert (=> b!1307661 (= e!838592 (and tp!381441 tp!381440))))

(declare-fun b!1307662 () Bool)

(assert (=> b!1307662 (= e!838587 e!838602)))

(declare-fun res!586548 () Bool)

(assert (=> b!1307662 (=> res!586548 e!838602)))

(declare-fun list!4959 (BalanceConc!8630) List!13289)

(assert (=> b!1307662 (= res!586548 (not (= (list!4959 (_1!7295 lt!430428)) (Cons!13223 t2!34 Nil!13223))))))

(declare-fun lex!817 (LexerInterface!1982 List!13288 BalanceConc!8628) tuple2!12818)

(declare-fun print!756 (LexerInterface!1982 BalanceConc!8630) BalanceConc!8628)

(declare-fun singletonSeq!858 (Token!4236) BalanceConc!8630)

(assert (=> b!1307662 (= lt!430428 (lex!817 thiss!19762 rules!2550 (print!756 thiss!19762 (singletonSeq!858 t2!34))))))

(assert (=> b!1307663 (= e!838600 (and tp!381445 tp!381438))))

(declare-fun b!1307664 () Bool)

(declare-fun tp!381444 () Bool)

(assert (=> b!1307664 (= e!838597 (and tp!381444 (inv!17612 (tag!2549 (h!18623 rules!2550))) (inv!17615 (transformation!2287 (h!18623 rules!2550))) e!838592))))

(declare-fun b!1307665 () Bool)

(declare-fun res!586562 () Bool)

(assert (=> b!1307665 (=> res!586562 e!838591)))

(declare-fun matchR!1603 (Regex!3601 List!13287) Bool)

(assert (=> b!1307665 (= res!586562 (not (matchR!1603 lt!430425 lt!430420)))))

(declare-fun b!1307666 () Bool)

(declare-fun res!586557 () Bool)

(assert (=> b!1307666 (=> res!586557 e!838587)))

(declare-fun lt!430434 () tuple2!12818)

(assert (=> b!1307666 (= res!586557 (not (isEmpty!7818 (_2!7295 lt!430434))))))

(declare-fun tp!381443 () Bool)

(declare-fun b!1307667 () Bool)

(assert (=> b!1307667 (= e!838603 (and tp!381443 (inv!17612 (tag!2549 (rule!4026 t1!34))) (inv!17615 (transformation!2287 (rule!4026 t1!34))) e!838604))))

(declare-fun b!1307668 () Bool)

(assert (=> b!1307668 (= e!838583 e!838606)))

(declare-fun res!586555 () Bool)

(assert (=> b!1307668 (=> res!586555 e!838606)))

(declare-fun contains!2273 (List!13290 Regex!3601) Bool)

(assert (=> b!1307668 (= res!586555 (not (contains!2273 (map!2897 rules!2550 lambda!52509) lt!430433)))))

(declare-fun getWitness!168 (List!13290 Int) Regex!3601)

(assert (=> b!1307668 (= lt!430433 (getWitness!168 (map!2897 rules!2550 lambda!52509) lambda!52510))))

(declare-fun b!1307669 () Bool)

(declare-fun res!586542 () Bool)

(assert (=> b!1307669 (=> res!586542 e!838591)))

(assert (=> b!1307669 (= res!586542 (not (contains!2272 lt!430420 lt!430423)))))

(declare-fun b!1307670 () Bool)

(assert (=> b!1307670 (= e!838584 e!838587)))

(declare-fun res!586561 () Bool)

(assert (=> b!1307670 (=> res!586561 e!838587)))

(declare-fun lt!430431 () List!13289)

(assert (=> b!1307670 (= res!586561 (not (= (list!4959 (_1!7295 lt!430434)) lt!430431)))))

(assert (=> b!1307670 (= lt!430431 (Cons!13223 t1!34 Nil!13223))))

(declare-fun lt!430426 () BalanceConc!8628)

(assert (=> b!1307670 (= lt!430434 (lex!817 thiss!19762 rules!2550 lt!430426))))

(assert (=> b!1307670 (= lt!430426 (print!756 thiss!19762 (singletonSeq!858 t1!34)))))

(declare-fun lt!430430 () Rule!4374)

(declare-fun getWitness!169 (List!13288 Int) Rule!4374)

(assert (=> b!1307670 (= lt!430430 (getWitness!169 rules!2550 lambda!52511))))

(declare-fun b!1307671 () Bool)

(declare-fun e!838582 () Bool)

(assert (=> b!1307671 (= e!838582 e!838591)))

(declare-fun res!586538 () Bool)

(assert (=> b!1307671 (=> res!586538 e!838591)))

(declare-fun lt!430424 () C!7492)

(assert (=> b!1307671 (= res!586538 (not (contains!2272 lt!430436 lt!430424)))))

(assert (=> b!1307671 (= lt!430424 (apply!2967 lt!430419 0))))

(declare-fun b!1307672 () Bool)

(assert (=> b!1307672 (= e!838599 e!838596)))

(declare-fun res!586537 () Bool)

(assert (=> b!1307672 (=> (not res!586537) (not e!838596))))

(declare-fun size!10755 (BalanceConc!8628) Int)

(assert (=> b!1307672 (= res!586537 (> (size!10755 lt!430432) 0))))

(assert (=> b!1307672 (= lt!430432 (charsOf!1259 t2!34))))

(declare-fun b!1307673 () Bool)

(declare-fun res!586556 () Bool)

(assert (=> b!1307673 (=> res!586556 e!838591)))

(assert (=> b!1307673 (= res!586556 (not (contains!2272 lt!430420 lt!430424)))))

(declare-fun b!1307674 () Bool)

(assert (=> b!1307674 (= e!838588 e!838582)))

(declare-fun res!586540 () Bool)

(assert (=> b!1307674 (=> res!586540 e!838582)))

(declare-fun getSuffix!457 (List!13287 List!13287) List!13287)

(assert (=> b!1307674 (= res!586540 (not (= lt!430420 (++!3364 lt!430436 (getSuffix!457 lt!430420 lt!430436)))))))

(declare-fun pickWitness!64 (Int) List!13287)

(assert (=> b!1307674 (= lt!430420 (pickWitness!64 lambda!52508))))

(declare-fun b!1307675 () Bool)

(declare-fun res!586559 () Bool)

(assert (=> b!1307675 (=> res!586559 e!838587)))

(declare-datatypes ((tuple2!12822 0))(
  ( (tuple2!12823 (_1!7297 List!13289) (_2!7297 List!13287)) )
))
(declare-fun lexList!520 (LexerInterface!1982 List!13288 List!13287) tuple2!12822)

(assert (=> b!1307675 (= res!586559 (not (= (lexList!520 thiss!19762 rules!2550 (list!4958 lt!430426)) (tuple2!12823 lt!430431 Nil!13221))))))

(declare-fun b!1307676 () Bool)

(declare-fun res!586546 () Bool)

(assert (=> b!1307676 (=> (not res!586546) (not e!838599))))

(declare-fun rulesInvariant!1852 (LexerInterface!1982 List!13288) Bool)

(assert (=> b!1307676 (= res!586546 (rulesInvariant!1852 thiss!19762 rules!2550))))

(declare-fun b!1307677 () Bool)

(declare-fun tp!381446 () Bool)

(assert (=> b!1307677 (= e!838595 (and (inv!21 (value!74812 t2!34)) e!838594 tp!381446))))

(assert (= (and start!115462 res!586550) b!1307657))

(assert (= (and b!1307657 res!586552) b!1307676))

(assert (= (and b!1307676 res!586546) b!1307652))

(assert (= (and b!1307652 res!586549) b!1307658))

(assert (= (and b!1307658 res!586558) b!1307660))

(assert (= (and b!1307660 res!586553) b!1307672))

(assert (= (and b!1307672 res!586537) b!1307653))

(assert (= (and b!1307653 res!586539) b!1307655))

(assert (= (and b!1307655 res!586545) b!1307659))

(assert (= (and b!1307659 res!586541) b!1307654))

(assert (= (and b!1307654 (not res!586554)) b!1307674))

(assert (= (and b!1307674 (not res!586540)) b!1307671))

(assert (= (and b!1307671 (not res!586538)) b!1307673))

(assert (= (and b!1307673 (not res!586556)) b!1307656))

(assert (= (and b!1307656 (not res!586543)) b!1307669))

(assert (= (and b!1307669 (not res!586542)) b!1307665))

(assert (= (and b!1307665 (not res!586562)) b!1307649))

(assert (= (and b!1307649 (not res!586544)) b!1307668))

(assert (= (and b!1307668 (not res!586555)) b!1307644))

(assert (= (and b!1307644 (not res!586560)) b!1307670))

(assert (= (and b!1307670 (not res!586561)) b!1307666))

(assert (= (and b!1307666 (not res!586557)) b!1307675))

(assert (= (and b!1307675 (not res!586559)) b!1307650))

(assert (= (and b!1307650 (not res!586547)) b!1307647))

(assert (= (and b!1307647 (not res!586551)) b!1307662))

(assert (= (and b!1307662 (not res!586548)) b!1307648))

(assert (= b!1307664 b!1307661))

(assert (= b!1307651 b!1307664))

(assert (= (and start!115462 ((_ is Cons!13222) rules!2550)) b!1307651))

(assert (= b!1307667 b!1307643))

(assert (= b!1307645 b!1307667))

(assert (= start!115462 b!1307645))

(assert (= b!1307646 b!1307663))

(assert (= b!1307677 b!1307646))

(assert (= start!115462 b!1307677))

(declare-fun m!1459191 () Bool)

(assert (=> b!1307648 m!1459191))

(declare-fun m!1459193 () Bool)

(assert (=> b!1307667 m!1459193))

(declare-fun m!1459195 () Bool)

(assert (=> b!1307667 m!1459195))

(declare-fun m!1459197 () Bool)

(assert (=> b!1307657 m!1459197))

(declare-fun m!1459199 () Bool)

(assert (=> b!1307666 m!1459199))

(declare-fun m!1459201 () Bool)

(assert (=> b!1307646 m!1459201))

(declare-fun m!1459203 () Bool)

(assert (=> b!1307646 m!1459203))

(declare-fun m!1459205 () Bool)

(assert (=> b!1307664 m!1459205))

(declare-fun m!1459207 () Bool)

(assert (=> b!1307664 m!1459207))

(declare-fun m!1459209 () Bool)

(assert (=> b!1307677 m!1459209))

(declare-fun m!1459211 () Bool)

(assert (=> b!1307644 m!1459211))

(assert (=> b!1307644 m!1459211))

(declare-fun m!1459213 () Bool)

(assert (=> b!1307644 m!1459213))

(declare-fun m!1459215 () Bool)

(assert (=> b!1307655 m!1459215))

(declare-fun m!1459217 () Bool)

(assert (=> b!1307656 m!1459217))

(declare-fun m!1459219 () Bool)

(assert (=> b!1307659 m!1459219))

(declare-fun m!1459221 () Bool)

(assert (=> b!1307659 m!1459221))

(declare-fun m!1459223 () Bool)

(assert (=> b!1307659 m!1459223))

(declare-fun m!1459225 () Bool)

(assert (=> b!1307659 m!1459225))

(declare-fun m!1459227 () Bool)

(assert (=> b!1307659 m!1459227))

(declare-fun m!1459229 () Bool)

(assert (=> b!1307659 m!1459229))

(declare-fun m!1459231 () Bool)

(assert (=> b!1307645 m!1459231))

(declare-fun m!1459233 () Bool)

(assert (=> b!1307653 m!1459233))

(declare-fun m!1459235 () Bool)

(assert (=> b!1307662 m!1459235))

(declare-fun m!1459237 () Bool)

(assert (=> b!1307662 m!1459237))

(assert (=> b!1307662 m!1459237))

(declare-fun m!1459239 () Bool)

(assert (=> b!1307662 m!1459239))

(assert (=> b!1307662 m!1459239))

(declare-fun m!1459241 () Bool)

(assert (=> b!1307662 m!1459241))

(declare-fun m!1459243 () Bool)

(assert (=> b!1307676 m!1459243))

(declare-fun m!1459245 () Bool)

(assert (=> b!1307658 m!1459245))

(declare-fun m!1459247 () Bool)

(assert (=> b!1307671 m!1459247))

(declare-fun m!1459249 () Bool)

(assert (=> b!1307671 m!1459249))

(declare-fun m!1459251 () Bool)

(assert (=> b!1307670 m!1459251))

(declare-fun m!1459253 () Bool)

(assert (=> b!1307670 m!1459253))

(declare-fun m!1459255 () Bool)

(assert (=> b!1307670 m!1459255))

(declare-fun m!1459257 () Bool)

(assert (=> b!1307670 m!1459257))

(declare-fun m!1459259 () Bool)

(assert (=> b!1307670 m!1459259))

(assert (=> b!1307670 m!1459251))

(declare-fun m!1459261 () Bool)

(assert (=> b!1307668 m!1459261))

(assert (=> b!1307668 m!1459261))

(declare-fun m!1459263 () Bool)

(assert (=> b!1307668 m!1459263))

(assert (=> b!1307668 m!1459261))

(assert (=> b!1307668 m!1459261))

(declare-fun m!1459265 () Bool)

(assert (=> b!1307668 m!1459265))

(declare-fun m!1459267 () Bool)

(assert (=> b!1307673 m!1459267))

(declare-fun m!1459269 () Bool)

(assert (=> b!1307647 m!1459269))

(declare-fun m!1459271 () Bool)

(assert (=> b!1307652 m!1459271))

(declare-fun m!1459273 () Bool)

(assert (=> start!115462 m!1459273))

(declare-fun m!1459275 () Bool)

(assert (=> start!115462 m!1459275))

(declare-fun m!1459277 () Bool)

(assert (=> b!1307672 m!1459277))

(declare-fun m!1459279 () Bool)

(assert (=> b!1307672 m!1459279))

(declare-fun m!1459281 () Bool)

(assert (=> b!1307669 m!1459281))

(declare-fun m!1459283 () Bool)

(assert (=> b!1307650 m!1459283))

(assert (=> b!1307649 m!1459261))

(declare-fun m!1459285 () Bool)

(assert (=> b!1307649 m!1459285))

(declare-fun m!1459287 () Bool)

(assert (=> b!1307649 m!1459287))

(declare-fun m!1459289 () Bool)

(assert (=> b!1307649 m!1459289))

(assert (=> b!1307649 m!1459261))

(assert (=> b!1307649 m!1459261))

(declare-fun m!1459291 () Bool)

(assert (=> b!1307675 m!1459291))

(assert (=> b!1307675 m!1459291))

(declare-fun m!1459293 () Bool)

(assert (=> b!1307675 m!1459293))

(declare-fun m!1459295 () Bool)

(assert (=> b!1307665 m!1459295))

(declare-fun m!1459297 () Bool)

(assert (=> b!1307674 m!1459297))

(assert (=> b!1307674 m!1459297))

(declare-fun m!1459299 () Bool)

(assert (=> b!1307674 m!1459299))

(declare-fun m!1459301 () Bool)

(assert (=> b!1307674 m!1459301))

(declare-fun m!1459303 () Bool)

(assert (=> b!1307654 m!1459303))

(assert (=> b!1307654 m!1459303))

(declare-fun m!1459305 () Bool)

(assert (=> b!1307654 m!1459305))

(check-sat (not b!1307673) (not b!1307650) (not b!1307658) (not b_next!32121) (not b!1307676) (not b!1307657) (not b_next!32115) (not b!1307670) (not b!1307674) (not b!1307665) (not b!1307648) (not b!1307671) b_and!87321 (not b!1307656) (not b!1307667) (not b!1307646) b_and!87317 (not b!1307644) b_and!87315 (not b!1307669) (not b!1307666) (not b!1307652) (not b!1307677) (not b!1307664) (not b!1307645) (not b!1307672) (not b_next!32117) (not b!1307675) b_and!87313 (not b!1307647) (not b_next!32125) (not b_next!32123) (not b!1307655) (not b_next!32119) b_and!87311 (not b!1307659) (not b!1307651) (not start!115462) (not b!1307668) (not b!1307649) (not b!1307653) (not b!1307654) (not b!1307662) b_and!87319)
(check-sat b_and!87321 b_and!87317 (not b_next!32121) b_and!87315 (not b_next!32115) (not b_next!32117) b_and!87313 b_and!87319 (not b_next!32125) (not b_next!32123) (not b_next!32119) b_and!87311)
