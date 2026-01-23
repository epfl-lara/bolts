; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!508236 () Bool)

(assert start!508236)

(declare-fun b!4862487 () Bool)

(declare-fun b_free!130563 () Bool)

(declare-fun b_next!131353 () Bool)

(assert (=> b!4862487 (= b_free!130563 (not b_next!131353))))

(declare-fun tp!1368262 () Bool)

(declare-fun b_and!342415 () Bool)

(assert (=> b!4862487 (= tp!1368262 b_and!342415)))

(declare-fun b_free!130565 () Bool)

(declare-fun b_next!131355 () Bool)

(assert (=> b!4862487 (= b_free!130565 (not b_next!131355))))

(declare-fun tp!1368264 () Bool)

(declare-fun b_and!342417 () Bool)

(assert (=> b!4862487 (= tp!1368264 b_and!342417)))

(declare-fun b!4862478 () Bool)

(declare-fun e!3040213 () Bool)

(declare-datatypes ((C!26396 0))(
  ( (C!26397 (val!22520 Int)) )
))
(declare-datatypes ((List!56028 0))(
  ( (Nil!55904) (Cons!55904 (h!62352 C!26396) (t!363652 List!56028)) )
))
(declare-datatypes ((IArray!29179 0))(
  ( (IArray!29180 (innerList!14647 List!56028)) )
))
(declare-datatypes ((Conc!14559 0))(
  ( (Node!14559 (left!40603 Conc!14559) (right!40933 Conc!14559) (csize!29348 Int) (cheight!14770 Int)) (Leaf!24282 (xs!17865 IArray!29179) (csize!29349 Int)) (Empty!14559) )
))
(declare-datatypes ((BalanceConc!28560 0))(
  ( (BalanceConc!28561 (c!826968 Conc!14559)) )
))
(declare-fun input!661 () BalanceConc!28560)

(declare-fun tp!1368267 () Bool)

(declare-fun inv!71798 (Conc!14559) Bool)

(assert (=> b!4862478 (= e!3040213 (and (inv!71798 (c!826968 input!661)) tp!1368267))))

(declare-fun b!4862479 () Bool)

(declare-fun e!3040214 () Bool)

(assert (=> b!4862479 (= e!3040214 false)))

(declare-datatypes ((List!56029 0))(
  ( (Nil!55905) (Cons!55905 (h!62353 (_ BitVec 16)) (t!363653 List!56029)) )
))
(declare-datatypes ((TokenValue!8334 0))(
  ( (FloatLiteralValue!16668 (text!58783 List!56029)) (TokenValueExt!8333 (__x!33961 Int)) (Broken!41670 (value!257802 List!56029)) (Object!8457) (End!8334) (Def!8334) (Underscore!8334) (Match!8334) (Else!8334) (Error!8334) (Case!8334) (If!8334) (Extends!8334) (Abstract!8334) (Class!8334) (Val!8334) (DelimiterValue!16668 (del!8394 List!56029)) (KeywordValue!8340 (value!257803 List!56029)) (CommentValue!16668 (value!257804 List!56029)) (WhitespaceValue!16668 (value!257805 List!56029)) (IndentationValue!8334 (value!257806 List!56029)) (String!63087) (Int32!8334) (Broken!41671 (value!257807 List!56029)) (Boolean!8335) (Unit!145917) (OperatorValue!8337 (op!8394 List!56029)) (IdentifierValue!16668 (value!257808 List!56029)) (IdentifierValue!16669 (value!257809 List!56029)) (WhitespaceValue!16669 (value!257810 List!56029)) (True!16668) (False!16668) (Broken!41672 (value!257811 List!56029)) (Broken!41673 (value!257812 List!56029)) (True!16669) (RightBrace!8334) (RightBracket!8334) (Colon!8334) (Null!8334) (Comma!8334) (LeftBracket!8334) (False!16669) (LeftBrace!8334) (ImaginaryLiteralValue!8334 (text!58784 List!56029)) (StringLiteralValue!25002 (value!257813 List!56029)) (EOFValue!8334 (value!257814 List!56029)) (IdentValue!8334 (value!257815 List!56029)) (DelimiterValue!16669 (value!257816 List!56029)) (DedentValue!8334 (value!257817 List!56029)) (NewLineValue!8334 (value!257818 List!56029)) (IntegerValue!25002 (value!257819 (_ BitVec 32)) (text!58785 List!56029)) (IntegerValue!25003 (value!257820 Int) (text!58786 List!56029)) (Times!8334) (Or!8334) (Equal!8334) (Minus!8334) (Broken!41674 (value!257821 List!56029)) (And!8334) (Div!8334) (LessEqual!8334) (Mod!8334) (Concat!21433) (Not!8334) (Plus!8334) (SpaceValue!8334 (value!257822 List!56029)) (IntegerValue!25004 (value!257823 Int) (text!58787 List!56029)) (StringLiteralValue!25003 (text!58788 List!56029)) (FloatLiteralValue!16669 (text!58789 List!56029)) (BytesLiteralValue!8334 (value!257824 List!56029)) (CommentValue!16669 (value!257825 List!56029)) (StringLiteralValue!25004 (value!257826 List!56029)) (ErrorTokenValue!8334 (msg!8395 List!56029)) )
))
(declare-datatypes ((Regex!13099 0))(
  ( (ElementMatch!13099 (c!826969 C!26396)) (Concat!21434 (regOne!26710 Regex!13099) (regTwo!26710 Regex!13099)) (EmptyExpr!13099) (Star!13099 (reg!13428 Regex!13099)) (EmptyLang!13099) (Union!13099 (regOne!26711 Regex!13099) (regTwo!26711 Regex!13099)) )
))
(declare-datatypes ((String!63088 0))(
  ( (String!63089 (value!257827 String)) )
))
(declare-datatypes ((TokenValueInjection!15976 0))(
  ( (TokenValueInjection!15977 (toValue!10879 Int) (toChars!10738 Int)) )
))
(declare-datatypes ((Rule!15848 0))(
  ( (Rule!15849 (regex!8024 Regex!13099) (tag!8888 String!63088) (isSeparator!8024 Bool) (transformation!8024 TokenValueInjection!15976)) )
))
(declare-datatypes ((Token!14636 0))(
  ( (Token!14637 (value!257828 TokenValue!8334) (rule!11142 Rule!15848) (size!36828 Int) (originalCharacters!8349 List!56028)) )
))
(declare-datatypes ((List!56030 0))(
  ( (Nil!55906) (Cons!55906 (h!62354 Token!14636) (t!363654 List!56030)) )
))
(declare-fun lt!1992677 () List!56030)

(declare-datatypes ((IArray!29181 0))(
  ( (IArray!29182 (innerList!14648 List!56030)) )
))
(declare-datatypes ((Conc!14560 0))(
  ( (Node!14560 (left!40604 Conc!14560) (right!40934 Conc!14560) (csize!29350 Int) (cheight!14771 Int)) (Leaf!24283 (xs!17866 IArray!29181) (csize!29351 Int)) (Empty!14560) )
))
(declare-datatypes ((BalanceConc!28562 0))(
  ( (BalanceConc!28563 (c!826970 Conc!14560)) )
))
(declare-fun list!17457 (BalanceConc!28562) List!56030)

(assert (=> b!4862479 (= lt!1992677 (list!17457 (BalanceConc!28563 Empty!14560)))))

(declare-datatypes ((List!56031 0))(
  ( (Nil!55907) (Cons!55907 (h!62355 Rule!15848) (t!363655 List!56031)) )
))
(declare-fun rules!1248 () List!56031)

(declare-datatypes ((tuple2!59730 0))(
  ( (tuple2!59731 (_1!33168 List!56030) (_2!33168 List!56028)) )
))
(declare-fun lt!1992679 () tuple2!59730)

(declare-datatypes ((LexerInterface!7616 0))(
  ( (LexerInterfaceExt!7613 (__x!33962 Int)) (Lexer!7614) )
))
(declare-fun thiss!11777 () LexerInterface!7616)

(declare-fun lt!1992678 () List!56028)

(declare-fun lexList!2097 (LexerInterface!7616 List!56031 List!56028) tuple2!59730)

(assert (=> b!4862479 (= lt!1992679 (lexList!2097 thiss!11777 rules!1248 lt!1992678))))

(declare-fun b!4862480 () Bool)

(declare-fun res!2075805 () Bool)

(declare-fun e!3040219 () Bool)

(assert (=> b!4862480 (=> (not res!2075805) (not e!3040219))))

(declare-fun isEmpty!29889 (List!56031) Bool)

(assert (=> b!4862480 (= res!2075805 (not (isEmpty!29889 rules!1248)))))

(declare-fun e!3040217 () Bool)

(declare-fun b!4862481 () Bool)

(declare-fun tp!1368263 () Bool)

(declare-fun e!3040216 () Bool)

(declare-fun inv!71794 (String!63088) Bool)

(declare-fun inv!71799 (TokenValueInjection!15976) Bool)

(assert (=> b!4862481 (= e!3040216 (and tp!1368263 (inv!71794 (tag!8888 (h!62355 rules!1248))) (inv!71799 (transformation!8024 (h!62355 rules!1248))) e!3040217))))

(declare-fun b!4862482 () Bool)

(declare-fun res!2075806 () Bool)

(assert (=> b!4862482 (=> (not res!2075806) (not e!3040214))))

(declare-fun e!3040218 () Bool)

(assert (=> b!4862482 (= res!2075806 e!3040218)))

(declare-fun res!2075803 () Bool)

(assert (=> b!4862482 (=> res!2075803 e!3040218)))

(declare-fun size!36829 (BalanceConc!28562) Int)

(assert (=> b!4862482 (= res!2075803 (<= (size!36829 (BalanceConc!28563 Empty!14560)) 0))))

(declare-fun b!4862483 () Bool)

(declare-fun res!2075807 () Bool)

(assert (=> b!4862483 (=> (not res!2075807) (not e!3040219))))

(declare-fun rulesInvariant!6714 (LexerInterface!7616 List!56031) Bool)

(assert (=> b!4862483 (= res!2075807 (rulesInvariant!6714 thiss!11777 rules!1248))))

(declare-fun b!4862484 () Bool)

(declare-fun e!3040221 () Bool)

(declare-fun tp!1368266 () Bool)

(assert (=> b!4862484 (= e!3040221 (and e!3040216 tp!1368266))))

(declare-fun b!4862486 () Bool)

(assert (=> b!4862486 (= e!3040218 false)))

(declare-fun lt!1992680 () Int)

(declare-fun size!36830 (BalanceConc!28560) Int)

(assert (=> b!4862486 (= lt!1992680 (size!36830 input!661))))

(assert (=> b!4862487 (= e!3040217 (and tp!1368262 tp!1368264))))

(declare-fun b!4862488 () Bool)

(declare-fun res!2075804 () Bool)

(assert (=> b!4862488 (=> (not res!2075804) (not e!3040214))))

(declare-fun totalInput!332 () BalanceConc!28560)

(get-info :version)

(declare-datatypes ((tuple2!59732 0))(
  ( (tuple2!59733 (_1!33169 Token!14636) (_2!33169 BalanceConc!28560)) )
))
(declare-datatypes ((Option!13769 0))(
  ( (None!13768) (Some!13768 (v!49670 tuple2!59732)) )
))
(declare-fun maxPrefixZipperSequenceV2!623 (LexerInterface!7616 List!56031 BalanceConc!28560 BalanceConc!28560) Option!13769)

(assert (=> b!4862488 (= res!2075804 (not ((_ is Some!13768) (maxPrefixZipperSequenceV2!623 thiss!11777 rules!1248 input!661 totalInput!332))))))

(declare-fun b!4862489 () Bool)

(declare-fun e!3040220 () Bool)

(declare-fun tp!1368265 () Bool)

(assert (=> b!4862489 (= e!3040220 (and (inv!71798 (c!826968 totalInput!332)) tp!1368265))))

(declare-fun res!2075802 () Bool)

(assert (=> start!508236 (=> (not res!2075802) (not e!3040219))))

(assert (=> start!508236 (= res!2075802 ((_ is Lexer!7614) thiss!11777))))

(assert (=> start!508236 e!3040219))

(assert (=> start!508236 true))

(assert (=> start!508236 e!3040221))

(declare-fun inv!71800 (BalanceConc!28560) Bool)

(assert (=> start!508236 (and (inv!71800 totalInput!332) e!3040220)))

(assert (=> start!508236 (and (inv!71800 input!661) e!3040213)))

(declare-fun b!4862485 () Bool)

(assert (=> b!4862485 (= e!3040219 e!3040214)))

(declare-fun res!2075801 () Bool)

(assert (=> b!4862485 (=> (not res!2075801) (not e!3040214))))

(declare-fun isSuffix!1053 (List!56028 List!56028) Bool)

(declare-fun list!17458 (BalanceConc!28560) List!56028)

(assert (=> b!4862485 (= res!2075801 (isSuffix!1053 lt!1992678 (list!17458 totalInput!332)))))

(assert (=> b!4862485 (= lt!1992678 (list!17458 input!661))))

(assert (= (and start!508236 res!2075802) b!4862480))

(assert (= (and b!4862480 res!2075805) b!4862483))

(assert (= (and b!4862483 res!2075807) b!4862485))

(assert (= (and b!4862485 res!2075801) b!4862488))

(assert (= (and b!4862488 res!2075804) b!4862482))

(assert (= (and b!4862482 (not res!2075803)) b!4862486))

(assert (= (and b!4862482 res!2075806) b!4862479))

(assert (= b!4862481 b!4862487))

(assert (= b!4862484 b!4862481))

(assert (= (and start!508236 ((_ is Cons!55907) rules!1248)) b!4862484))

(assert (= start!508236 b!4862489))

(assert (= start!508236 b!4862478))

(declare-fun m!5860032 () Bool)

(assert (=> start!508236 m!5860032))

(declare-fun m!5860034 () Bool)

(assert (=> start!508236 m!5860034))

(declare-fun m!5860036 () Bool)

(assert (=> b!4862478 m!5860036))

(declare-fun m!5860038 () Bool)

(assert (=> b!4862482 m!5860038))

(declare-fun m!5860040 () Bool)

(assert (=> b!4862480 m!5860040))

(declare-fun m!5860042 () Bool)

(assert (=> b!4862489 m!5860042))

(declare-fun m!5860044 () Bool)

(assert (=> b!4862479 m!5860044))

(declare-fun m!5860046 () Bool)

(assert (=> b!4862479 m!5860046))

(declare-fun m!5860048 () Bool)

(assert (=> b!4862485 m!5860048))

(assert (=> b!4862485 m!5860048))

(declare-fun m!5860050 () Bool)

(assert (=> b!4862485 m!5860050))

(declare-fun m!5860052 () Bool)

(assert (=> b!4862485 m!5860052))

(declare-fun m!5860054 () Bool)

(assert (=> b!4862488 m!5860054))

(declare-fun m!5860056 () Bool)

(assert (=> b!4862483 m!5860056))

(declare-fun m!5860058 () Bool)

(assert (=> b!4862486 m!5860058))

(declare-fun m!5860060 () Bool)

(assert (=> b!4862481 m!5860060))

(declare-fun m!5860062 () Bool)

(assert (=> b!4862481 m!5860062))

(check-sat (not b_next!131355) (not b!4862488) b_and!342415 (not b_next!131353) (not b!4862482) (not start!508236) (not b!4862483) (not b!4862485) (not b!4862486) (not b!4862484) (not b!4862481) (not b!4862480) (not b!4862489) b_and!342417 (not b!4862479) (not b!4862478))
(check-sat b_and!342417 b_and!342415 (not b_next!131353) (not b_next!131355))
