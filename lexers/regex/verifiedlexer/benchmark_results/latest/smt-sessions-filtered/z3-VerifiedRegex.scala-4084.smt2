; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218880 () Bool)

(assert start!218880)

(declare-fun b!2244779 () Bool)

(declare-fun b_free!65373 () Bool)

(declare-fun b_next!66077 () Bool)

(assert (=> b!2244779 (= b_free!65373 (not b_next!66077))))

(declare-fun tp!708446 () Bool)

(declare-fun b_and!175481 () Bool)

(assert (=> b!2244779 (= tp!708446 b_and!175481)))

(declare-fun b_free!65375 () Bool)

(declare-fun b_next!66079 () Bool)

(assert (=> b!2244779 (= b_free!65375 (not b_next!66079))))

(declare-fun tp!708431 () Bool)

(declare-fun b_and!175483 () Bool)

(assert (=> b!2244779 (= tp!708431 b_and!175483)))

(declare-fun b!2244759 () Bool)

(declare-fun b_free!65377 () Bool)

(declare-fun b_next!66081 () Bool)

(assert (=> b!2244759 (= b_free!65377 (not b_next!66081))))

(declare-fun tp!708447 () Bool)

(declare-fun b_and!175485 () Bool)

(assert (=> b!2244759 (= tp!708447 b_and!175485)))

(declare-fun b_free!65379 () Bool)

(declare-fun b_next!66083 () Bool)

(assert (=> b!2244759 (= b_free!65379 (not b_next!66083))))

(declare-fun tp!708444 () Bool)

(declare-fun b_and!175487 () Bool)

(assert (=> b!2244759 (= tp!708444 b_and!175487)))

(declare-fun b!2244761 () Bool)

(declare-fun b_free!65381 () Bool)

(declare-fun b_next!66085 () Bool)

(assert (=> b!2244761 (= b_free!65381 (not b_next!66085))))

(declare-fun tp!708435 () Bool)

(declare-fun b_and!175489 () Bool)

(assert (=> b!2244761 (= tp!708435 b_and!175489)))

(declare-fun b_free!65383 () Bool)

(declare-fun b_next!66087 () Bool)

(assert (=> b!2244761 (= b_free!65383 (not b_next!66087))))

(declare-fun tp!708430 () Bool)

(declare-fun b_and!175491 () Bool)

(assert (=> b!2244761 (= tp!708430 b_and!175491)))

(declare-fun b!2244766 () Bool)

(declare-fun b_free!65385 () Bool)

(declare-fun b_next!66089 () Bool)

(assert (=> b!2244766 (= b_free!65385 (not b_next!66089))))

(declare-fun tp!708432 () Bool)

(declare-fun b_and!175493 () Bool)

(assert (=> b!2244766 (= tp!708432 b_and!175493)))

(declare-fun b_free!65387 () Bool)

(declare-fun b_next!66091 () Bool)

(assert (=> b!2244766 (= b_free!65387 (not b_next!66091))))

(declare-fun tp!708440 () Bool)

(declare-fun b_and!175495 () Bool)

(assert (=> b!2244766 (= tp!708440 b_and!175495)))

(declare-fun b!2244754 () Bool)

(declare-fun e!1435933 () Bool)

(declare-fun e!1435935 () Bool)

(declare-fun tp!708445 () Bool)

(declare-datatypes ((List!26635 0))(
  ( (Nil!26541) (Cons!26541 (h!31942 (_ BitVec 16)) (t!200285 List!26635)) )
))
(declare-datatypes ((TokenValue!4361 0))(
  ( (FloatLiteralValue!8722 (text!30972 List!26635)) (TokenValueExt!4360 (__x!17782 Int)) (Broken!21805 (value!133465 List!26635)) (Object!4454) (End!4361) (Def!4361) (Underscore!4361) (Match!4361) (Else!4361) (Error!4361) (Case!4361) (If!4361) (Extends!4361) (Abstract!4361) (Class!4361) (Val!4361) (DelimiterValue!8722 (del!4421 List!26635)) (KeywordValue!4367 (value!133466 List!26635)) (CommentValue!8722 (value!133467 List!26635)) (WhitespaceValue!8722 (value!133468 List!26635)) (IndentationValue!4361 (value!133469 List!26635)) (String!28908) (Int32!4361) (Broken!21806 (value!133470 List!26635)) (Boolean!4362) (Unit!39513) (OperatorValue!4364 (op!4421 List!26635)) (IdentifierValue!8722 (value!133471 List!26635)) (IdentifierValue!8723 (value!133472 List!26635)) (WhitespaceValue!8723 (value!133473 List!26635)) (True!8722) (False!8722) (Broken!21807 (value!133474 List!26635)) (Broken!21808 (value!133475 List!26635)) (True!8723) (RightBrace!4361) (RightBracket!4361) (Colon!4361) (Null!4361) (Comma!4361) (LeftBracket!4361) (False!8723) (LeftBrace!4361) (ImaginaryLiteralValue!4361 (text!30973 List!26635)) (StringLiteralValue!13083 (value!133476 List!26635)) (EOFValue!4361 (value!133477 List!26635)) (IdentValue!4361 (value!133478 List!26635)) (DelimiterValue!8723 (value!133479 List!26635)) (DedentValue!4361 (value!133480 List!26635)) (NewLineValue!4361 (value!133481 List!26635)) (IntegerValue!13083 (value!133482 (_ BitVec 32)) (text!30974 List!26635)) (IntegerValue!13084 (value!133483 Int) (text!30975 List!26635)) (Times!4361) (Or!4361) (Equal!4361) (Minus!4361) (Broken!21809 (value!133484 List!26635)) (And!4361) (Div!4361) (LessEqual!4361) (Mod!4361) (Concat!10908) (Not!4361) (Plus!4361) (SpaceValue!4361 (value!133485 List!26635)) (IntegerValue!13085 (value!133486 Int) (text!30976 List!26635)) (StringLiteralValue!13084 (text!30977 List!26635)) (FloatLiteralValue!8723 (text!30978 List!26635)) (BytesLiteralValue!4361 (value!133487 List!26635)) (CommentValue!8723 (value!133488 List!26635)) (StringLiteralValue!13085 (value!133489 List!26635)) (ErrorTokenValue!4361 (msg!4422 List!26635)) )
))
(declare-datatypes ((C!13240 0))(
  ( (C!13241 (val!7668 Int)) )
))
(declare-datatypes ((List!26636 0))(
  ( (Nil!26542) (Cons!26542 (h!31943 C!13240) (t!200286 List!26636)) )
))
(declare-datatypes ((IArray!17097 0))(
  ( (IArray!17098 (innerList!8606 List!26636)) )
))
(declare-datatypes ((Conc!8546 0))(
  ( (Node!8546 (left!20178 Conc!8546) (right!20508 Conc!8546) (csize!17322 Int) (cheight!8757 Int)) (Leaf!12631 (xs!11488 IArray!17097) (csize!17323 Int)) (Empty!8546) )
))
(declare-datatypes ((BalanceConc!16820 0))(
  ( (BalanceConc!16821 (c!357266 Conc!8546)) )
))
(declare-datatypes ((String!28909 0))(
  ( (String!28910 (value!133490 String)) )
))
(declare-datatypes ((Regex!6547 0))(
  ( (ElementMatch!6547 (c!357267 C!13240)) (Concat!10909 (regOne!13606 Regex!6547) (regTwo!13606 Regex!6547)) (EmptyExpr!6547) (Star!6547 (reg!6876 Regex!6547)) (EmptyLang!6547) (Union!6547 (regOne!13607 Regex!6547) (regTwo!13607 Regex!6547)) )
))
(declare-datatypes ((TokenValueInjection!8262 0))(
  ( (TokenValueInjection!8263 (toValue!5929 Int) (toChars!5788 Int)) )
))
(declare-datatypes ((Rule!8198 0))(
  ( (Rule!8199 (regex!4199 Regex!6547) (tag!4689 String!28909) (isSeparator!4199 Bool) (transformation!4199 TokenValueInjection!8262)) )
))
(declare-datatypes ((List!26637 0))(
  ( (Nil!26543) (Cons!26543 (h!31944 Rule!8198) (t!200287 List!26637)) )
))
(declare-fun rules!1750 () List!26637)

(declare-fun inv!36068 (String!28909) Bool)

(declare-fun inv!36071 (TokenValueInjection!8262) Bool)

(assert (=> b!2244754 (= e!1435933 (and tp!708445 (inv!36068 (tag!4689 (h!31944 rules!1750))) (inv!36071 (transformation!4199 (h!31944 rules!1750))) e!1435935))))

(declare-fun b!2244755 () Bool)

(declare-fun e!1435950 () Bool)

(declare-fun tp!708437 () Bool)

(assert (=> b!2244755 (= e!1435950 (and e!1435933 tp!708437))))

(declare-fun b!2244756 () Bool)

(declare-fun e!1435936 () Bool)

(declare-fun tp_is_empty!10315 () Bool)

(declare-fun tp!708441 () Bool)

(assert (=> b!2244756 (= e!1435936 (and tp_is_empty!10315 tp!708441))))

(declare-fun b!2244757 () Bool)

(declare-fun res!959069 () Bool)

(declare-fun e!1435948 () Bool)

(assert (=> b!2244757 (=> (not res!959069) (not e!1435948))))

(declare-fun otherR!12 () Rule!8198)

(declare-fun contains!4546 (List!26637 Rule!8198) Bool)

(assert (=> b!2244757 (= res!959069 (contains!4546 rules!1750 otherR!12))))

(declare-fun b!2244758 () Bool)

(declare-fun res!959065 () Bool)

(assert (=> b!2244758 (=> (not res!959065) (not e!1435948))))

(declare-fun r!2363 () Rule!8198)

(assert (=> b!2244758 (= res!959065 (contains!4546 rules!1750 r!2363))))

(declare-fun e!1435942 () Bool)

(assert (=> b!2244759 (= e!1435942 (and tp!708447 tp!708444))))

(declare-fun b!2244760 () Bool)

(declare-fun e!1435937 () Bool)

(declare-fun e!1435941 () Bool)

(assert (=> b!2244760 (= e!1435937 e!1435941)))

(declare-fun res!959068 () Bool)

(assert (=> b!2244760 (=> (not res!959068) (not e!1435941))))

(declare-fun e!1435943 () Bool)

(assert (=> b!2244760 (= res!959068 e!1435943)))

(declare-fun res!959066 () Bool)

(assert (=> b!2244760 (=> res!959066 e!1435943)))

(declare-fun lt!835182 () Bool)

(assert (=> b!2244760 (= res!959066 lt!835182)))

(declare-datatypes ((Token!7876 0))(
  ( (Token!7877 (value!133491 TokenValue!4361) (rule!6497 Rule!8198) (size!20751 Int) (originalCharacters!4969 List!26636)) )
))
(declare-datatypes ((List!26638 0))(
  ( (Nil!26544) (Cons!26544 (h!31945 Token!7876) (t!200288 List!26638)) )
))
(declare-fun tokens!456 () List!26638)

(declare-fun isEmpty!14943 (List!26638) Bool)

(assert (=> b!2244760 (= lt!835182 (isEmpty!14943 tokens!456))))

(declare-fun e!1435949 () Bool)

(assert (=> b!2244761 (= e!1435949 (and tp!708435 tp!708430))))

(declare-fun res!959062 () Bool)

(assert (=> start!218880 (=> (not res!959062) (not e!1435948))))

(declare-datatypes ((LexerInterface!3796 0))(
  ( (LexerInterfaceExt!3793 (__x!17783 Int)) (Lexer!3794) )
))
(declare-fun thiss!16613 () LexerInterface!3796)

(get-info :version)

(assert (=> start!218880 (= res!959062 ((_ is Lexer!3794) thiss!16613))))

(assert (=> start!218880 e!1435948))

(assert (=> start!218880 true))

(declare-fun e!1435944 () Bool)

(assert (=> start!218880 e!1435944))

(declare-fun e!1435945 () Bool)

(assert (=> start!218880 e!1435945))

(declare-fun e!1435934 () Bool)

(assert (=> start!218880 e!1435934))

(assert (=> start!218880 e!1435936))

(assert (=> start!218880 e!1435950))

(declare-fun e!1435952 () Bool)

(assert (=> start!218880 e!1435952))

(declare-fun e!1435946 () Bool)

(assert (=> start!218880 e!1435946))

(declare-fun b!2244762 () Bool)

(declare-fun tp!708436 () Bool)

(assert (=> b!2244762 (= e!1435944 (and tp_is_empty!10315 tp!708436))))

(declare-fun b!2244763 () Bool)

(assert (=> b!2244763 (= e!1435948 e!1435937)))

(declare-fun res!959073 () Bool)

(assert (=> b!2244763 (=> (not res!959073) (not e!1435937))))

(declare-datatypes ((IArray!17099 0))(
  ( (IArray!17100 (innerList!8607 List!26638)) )
))
(declare-datatypes ((Conc!8547 0))(
  ( (Node!8547 (left!20179 Conc!8547) (right!20509 Conc!8547) (csize!17324 Int) (cheight!8758 Int)) (Leaf!12632 (xs!11489 IArray!17099) (csize!17325 Int)) (Empty!8547) )
))
(declare-datatypes ((BalanceConc!16822 0))(
  ( (BalanceConc!16823 (c!357268 Conc!8547)) )
))
(declare-datatypes ((tuple2!26000 0))(
  ( (tuple2!26001 (_1!15510 BalanceConc!16822) (_2!15510 BalanceConc!16820)) )
))
(declare-fun lt!835180 () tuple2!26000)

(declare-fun suffix!886 () List!26636)

(declare-datatypes ((tuple2!26002 0))(
  ( (tuple2!26003 (_1!15511 List!26638) (_2!15511 List!26636)) )
))
(declare-fun list!10150 (BalanceConc!16822) List!26638)

(declare-fun list!10151 (BalanceConc!16820) List!26636)

(assert (=> b!2244763 (= res!959073 (= (tuple2!26003 (list!10150 (_1!15510 lt!835180)) (list!10151 (_2!15510 lt!835180))) (tuple2!26003 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26636)

(declare-fun lex!1635 (LexerInterface!3796 List!26637 BalanceConc!16820) tuple2!26000)

(declare-fun seqFromList!2903 (List!26636) BalanceConc!16820)

(assert (=> b!2244763 (= lt!835180 (lex!1635 thiss!16613 rules!1750 (seqFromList!2903 input!1722)))))

(declare-fun b!2244764 () Bool)

(declare-fun e!1435932 () Bool)

(declare-fun e!1435951 () Bool)

(declare-fun tp!708443 () Bool)

(declare-fun inv!21 (TokenValue!4361) Bool)

(assert (=> b!2244764 (= e!1435932 (and (inv!21 (value!133491 (h!31945 tokens!456))) e!1435951 tp!708443))))

(declare-fun tp!708439 () Bool)

(declare-fun b!2244765 () Bool)

(declare-fun inv!36072 (Token!7876) Bool)

(assert (=> b!2244765 (= e!1435946 (and (inv!36072 (h!31945 tokens!456)) e!1435932 tp!708439))))

(assert (=> b!2244766 (= e!1435935 (and tp!708432 tp!708440))))

(declare-fun b!2244767 () Bool)

(declare-fun tp!708442 () Bool)

(declare-fun e!1435940 () Bool)

(assert (=> b!2244767 (= e!1435945 (and tp!708442 (inv!36068 (tag!4689 otherR!12)) (inv!36071 (transformation!4199 otherR!12)) e!1435940))))

(declare-fun tp!708438 () Bool)

(declare-fun b!2244768 () Bool)

(assert (=> b!2244768 (= e!1435951 (and tp!708438 (inv!36068 (tag!4689 (rule!6497 (h!31945 tokens!456)))) (inv!36071 (transformation!4199 (rule!6497 (h!31945 tokens!456)))) e!1435942))))

(declare-fun b!2244769 () Bool)

(declare-fun e!1435954 () Bool)

(assert (=> b!2244769 (= e!1435941 (not e!1435954))))

(declare-fun res!959063 () Bool)

(assert (=> b!2244769 (=> res!959063 e!1435954)))

(assert (=> b!2244769 (= res!959063 lt!835182)))

(declare-fun ruleValid!1291 (LexerInterface!3796 Rule!8198) Bool)

(assert (=> b!2244769 (ruleValid!1291 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39514 0))(
  ( (Unit!39515) )
))
(declare-fun lt!835179 () Unit!39514)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!698 (LexerInterface!3796 Rule!8198 List!26637) Unit!39514)

(assert (=> b!2244769 (= lt!835179 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!698 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2244770 () Bool)

(declare-fun tp!708433 () Bool)

(assert (=> b!2244770 (= e!1435934 (and tp_is_empty!10315 tp!708433))))

(declare-fun b!2244771 () Bool)

(declare-fun tp!708434 () Bool)

(assert (=> b!2244771 (= e!1435952 (and tp!708434 (inv!36068 (tag!4689 r!2363)) (inv!36071 (transformation!4199 r!2363)) e!1435949))))

(declare-fun b!2244772 () Bool)

(declare-fun res!959067 () Bool)

(assert (=> b!2244772 (=> (not res!959067) (not e!1435948))))

(declare-fun rulesInvariant!3298 (LexerInterface!3796 List!26637) Bool)

(assert (=> b!2244772 (= res!959067 (rulesInvariant!3298 thiss!16613 rules!1750))))

(declare-fun b!2244773 () Bool)

(declare-fun e!1435947 () Bool)

(declare-fun head!4756 (List!26638) Token!7876)

(assert (=> b!2244773 (= e!1435947 (= (rule!6497 (head!4756 tokens!456)) r!2363))))

(declare-fun b!2244774 () Bool)

(declare-fun res!959071 () Bool)

(assert (=> b!2244774 (=> (not res!959071) (not e!1435941))))

(assert (=> b!2244774 (= res!959071 (not (= r!2363 otherR!12)))))

(declare-fun b!2244775 () Bool)

(declare-fun otherP!12 () List!26636)

(declare-fun size!20752 (BalanceConc!16820) Int)

(declare-fun charsOf!2587 (Token!7876) BalanceConc!16820)

(declare-fun size!20753 (List!26636) Int)

(assert (=> b!2244775 (= e!1435943 (<= (size!20752 (charsOf!2587 (head!4756 tokens!456))) (size!20753 otherP!12)))))

(declare-fun b!2244776 () Bool)

(declare-fun validRegex!2448 (Regex!6547) Bool)

(assert (=> b!2244776 (= e!1435954 (validRegex!2448 (regex!4199 r!2363)))))

(declare-fun lt!835181 () List!26636)

(assert (=> b!2244776 (= lt!835181 (list!10151 (charsOf!2587 (head!4756 tokens!456))))))

(declare-fun b!2244777 () Bool)

(declare-fun res!959070 () Bool)

(assert (=> b!2244777 (=> (not res!959070) (not e!1435948))))

(declare-fun isEmpty!14944 (List!26637) Bool)

(assert (=> b!2244777 (= res!959070 (not (isEmpty!14944 rules!1750)))))

(declare-fun b!2244778 () Bool)

(declare-fun res!959064 () Bool)

(assert (=> b!2244778 (=> (not res!959064) (not e!1435941))))

(assert (=> b!2244778 (= res!959064 e!1435947)))

(declare-fun res!959072 () Bool)

(assert (=> b!2244778 (=> res!959072 e!1435947)))

(assert (=> b!2244778 (= res!959072 lt!835182)))

(assert (=> b!2244779 (= e!1435940 (and tp!708446 tp!708431))))

(declare-fun b!2244780 () Bool)

(declare-fun res!959061 () Bool)

(assert (=> b!2244780 (=> (not res!959061) (not e!1435941))))

(declare-fun isPrefix!2189 (List!26636 List!26636) Bool)

(assert (=> b!2244780 (= res!959061 (isPrefix!2189 otherP!12 input!1722))))

(assert (= (and start!218880 res!959062) b!2244777))

(assert (= (and b!2244777 res!959070) b!2244772))

(assert (= (and b!2244772 res!959067) b!2244758))

(assert (= (and b!2244758 res!959065) b!2244757))

(assert (= (and b!2244757 res!959069) b!2244763))

(assert (= (and b!2244763 res!959073) b!2244760))

(assert (= (and b!2244760 (not res!959066)) b!2244775))

(assert (= (and b!2244760 res!959068) b!2244778))

(assert (= (and b!2244778 (not res!959072)) b!2244773))

(assert (= (and b!2244778 res!959064) b!2244780))

(assert (= (and b!2244780 res!959061) b!2244774))

(assert (= (and b!2244774 res!959071) b!2244769))

(assert (= (and b!2244769 (not res!959063)) b!2244776))

(assert (= (and start!218880 ((_ is Cons!26542) input!1722)) b!2244762))

(assert (= b!2244767 b!2244779))

(assert (= start!218880 b!2244767))

(assert (= (and start!218880 ((_ is Cons!26542) suffix!886)) b!2244770))

(assert (= (and start!218880 ((_ is Cons!26542) otherP!12)) b!2244756))

(assert (= b!2244754 b!2244766))

(assert (= b!2244755 b!2244754))

(assert (= (and start!218880 ((_ is Cons!26543) rules!1750)) b!2244755))

(assert (= b!2244771 b!2244761))

(assert (= start!218880 b!2244771))

(assert (= b!2244768 b!2244759))

(assert (= b!2244764 b!2244768))

(assert (= b!2244765 b!2244764))

(assert (= (and start!218880 ((_ is Cons!26544) tokens!456)) b!2244765))

(declare-fun m!2676599 () Bool)

(assert (=> b!2244776 m!2676599))

(declare-fun m!2676601 () Bool)

(assert (=> b!2244776 m!2676601))

(assert (=> b!2244776 m!2676601))

(declare-fun m!2676603 () Bool)

(assert (=> b!2244776 m!2676603))

(assert (=> b!2244776 m!2676603))

(declare-fun m!2676605 () Bool)

(assert (=> b!2244776 m!2676605))

(declare-fun m!2676607 () Bool)

(assert (=> b!2244780 m!2676607))

(declare-fun m!2676609 () Bool)

(assert (=> b!2244767 m!2676609))

(declare-fun m!2676611 () Bool)

(assert (=> b!2244767 m!2676611))

(declare-fun m!2676613 () Bool)

(assert (=> b!2244760 m!2676613))

(assert (=> b!2244775 m!2676601))

(assert (=> b!2244775 m!2676601))

(assert (=> b!2244775 m!2676603))

(assert (=> b!2244775 m!2676603))

(declare-fun m!2676615 () Bool)

(assert (=> b!2244775 m!2676615))

(declare-fun m!2676617 () Bool)

(assert (=> b!2244775 m!2676617))

(declare-fun m!2676619 () Bool)

(assert (=> b!2244771 m!2676619))

(declare-fun m!2676621 () Bool)

(assert (=> b!2244771 m!2676621))

(declare-fun m!2676623 () Bool)

(assert (=> b!2244754 m!2676623))

(declare-fun m!2676625 () Bool)

(assert (=> b!2244754 m!2676625))

(declare-fun m!2676627 () Bool)

(assert (=> b!2244777 m!2676627))

(declare-fun m!2676629 () Bool)

(assert (=> b!2244764 m!2676629))

(declare-fun m!2676631 () Bool)

(assert (=> b!2244769 m!2676631))

(declare-fun m!2676633 () Bool)

(assert (=> b!2244769 m!2676633))

(declare-fun m!2676635 () Bool)

(assert (=> b!2244757 m!2676635))

(declare-fun m!2676637 () Bool)

(assert (=> b!2244758 m!2676637))

(declare-fun m!2676639 () Bool)

(assert (=> b!2244765 m!2676639))

(declare-fun m!2676641 () Bool)

(assert (=> b!2244763 m!2676641))

(declare-fun m!2676643 () Bool)

(assert (=> b!2244763 m!2676643))

(declare-fun m!2676645 () Bool)

(assert (=> b!2244763 m!2676645))

(assert (=> b!2244763 m!2676645))

(declare-fun m!2676647 () Bool)

(assert (=> b!2244763 m!2676647))

(declare-fun m!2676649 () Bool)

(assert (=> b!2244768 m!2676649))

(declare-fun m!2676651 () Bool)

(assert (=> b!2244768 m!2676651))

(assert (=> b!2244773 m!2676601))

(declare-fun m!2676653 () Bool)

(assert (=> b!2244772 m!2676653))

(check-sat (not b!2244757) (not b!2244764) (not b_next!66083) b_and!175495 (not b_next!66077) (not b!2244780) (not b_next!66089) tp_is_empty!10315 b_and!175483 b_and!175485 (not b_next!66087) (not b!2244770) (not b!2244760) b_and!175491 (not b!2244763) (not b!2244775) (not b!2244769) b_and!175489 (not b!2244755) (not b!2244756) (not b!2244768) (not b!2244767) (not b!2244771) (not b!2244772) (not b_next!66079) (not b_next!66091) (not b!2244754) b_and!175487 (not b!2244765) (not b_next!66081) (not b!2244776) b_and!175481 (not b!2244758) (not b!2244762) (not b!2244777) b_and!175493 (not b!2244773) (not b_next!66085))
(check-sat (not b_next!66087) b_and!175491 b_and!175489 (not b_next!66083) b_and!175495 (not b_next!66077) b_and!175487 (not b_next!66089) (not b_next!66081) b_and!175481 b_and!175483 b_and!175485 (not b_next!66079) (not b_next!66091) b_and!175493 (not b_next!66085))
(get-model)

(declare-fun b!2244789 () Bool)

(declare-fun e!1435963 () Bool)

(declare-fun e!1435964 () Bool)

(assert (=> b!2244789 (= e!1435963 e!1435964)))

(declare-fun res!959090 () Bool)

(assert (=> b!2244789 (=> (not res!959090) (not e!1435964))))

(assert (=> b!2244789 (= res!959090 (not ((_ is Nil!26542) input!1722)))))

(declare-fun b!2244791 () Bool)

(declare-fun tail!3239 (List!26636) List!26636)

(assert (=> b!2244791 (= e!1435964 (isPrefix!2189 (tail!3239 otherP!12) (tail!3239 input!1722)))))

(declare-fun b!2244792 () Bool)

(declare-fun e!1435962 () Bool)

(assert (=> b!2244792 (= e!1435962 (>= (size!20753 input!1722) (size!20753 otherP!12)))))

(declare-fun d!666493 () Bool)

(assert (=> d!666493 e!1435962))

(declare-fun res!959091 () Bool)

(assert (=> d!666493 (=> res!959091 e!1435962)))

(declare-fun lt!835185 () Bool)

(assert (=> d!666493 (= res!959091 (not lt!835185))))

(assert (=> d!666493 (= lt!835185 e!1435963)))

(declare-fun res!959092 () Bool)

(assert (=> d!666493 (=> res!959092 e!1435963)))

(assert (=> d!666493 (= res!959092 ((_ is Nil!26542) otherP!12))))

(assert (=> d!666493 (= (isPrefix!2189 otherP!12 input!1722) lt!835185)))

(declare-fun b!2244790 () Bool)

(declare-fun res!959093 () Bool)

(assert (=> b!2244790 (=> (not res!959093) (not e!1435964))))

(declare-fun head!4758 (List!26636) C!13240)

(assert (=> b!2244790 (= res!959093 (= (head!4758 otherP!12) (head!4758 input!1722)))))

(assert (= (and d!666493 (not res!959092)) b!2244789))

(assert (= (and b!2244789 res!959090) b!2244790))

(assert (= (and b!2244790 res!959093) b!2244791))

(assert (= (and d!666493 (not res!959091)) b!2244792))

(declare-fun m!2676655 () Bool)

(assert (=> b!2244791 m!2676655))

(declare-fun m!2676657 () Bool)

(assert (=> b!2244791 m!2676657))

(assert (=> b!2244791 m!2676655))

(assert (=> b!2244791 m!2676657))

(declare-fun m!2676659 () Bool)

(assert (=> b!2244791 m!2676659))

(declare-fun m!2676661 () Bool)

(assert (=> b!2244792 m!2676661))

(assert (=> b!2244792 m!2676617))

(declare-fun m!2676663 () Bool)

(assert (=> b!2244790 m!2676663))

(declare-fun m!2676665 () Bool)

(assert (=> b!2244790 m!2676665))

(assert (=> b!2244780 d!666493))

(declare-fun d!666495 () Bool)

(declare-fun res!959098 () Bool)

(declare-fun e!1435967 () Bool)

(assert (=> d!666495 (=> (not res!959098) (not e!1435967))))

(assert (=> d!666495 (= res!959098 (validRegex!2448 (regex!4199 r!2363)))))

(assert (=> d!666495 (= (ruleValid!1291 thiss!16613 r!2363) e!1435967)))

(declare-fun b!2244797 () Bool)

(declare-fun res!959099 () Bool)

(assert (=> b!2244797 (=> (not res!959099) (not e!1435967))))

(declare-fun nullable!1795 (Regex!6547) Bool)

(assert (=> b!2244797 (= res!959099 (not (nullable!1795 (regex!4199 r!2363))))))

(declare-fun b!2244798 () Bool)

(assert (=> b!2244798 (= e!1435967 (not (= (tag!4689 r!2363) (String!28910 ""))))))

(assert (= (and d!666495 res!959098) b!2244797))

(assert (= (and b!2244797 res!959099) b!2244798))

(assert (=> d!666495 m!2676599))

(declare-fun m!2676667 () Bool)

(assert (=> b!2244797 m!2676667))

(assert (=> b!2244769 d!666495))

(declare-fun d!666499 () Bool)

(assert (=> d!666499 (ruleValid!1291 thiss!16613 r!2363)))

(declare-fun lt!835188 () Unit!39514)

(declare-fun choose!13154 (LexerInterface!3796 Rule!8198 List!26637) Unit!39514)

(assert (=> d!666499 (= lt!835188 (choose!13154 thiss!16613 r!2363 rules!1750))))

(assert (=> d!666499 (contains!4546 rules!1750 r!2363)))

(assert (=> d!666499 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!698 thiss!16613 r!2363 rules!1750) lt!835188)))

(declare-fun bs!454782 () Bool)

(assert (= bs!454782 d!666499))

(assert (=> bs!454782 m!2676631))

(declare-fun m!2676669 () Bool)

(assert (=> bs!454782 m!2676669))

(assert (=> bs!454782 m!2676637))

(assert (=> b!2244769 d!666499))

(declare-fun d!666503 () Bool)

(assert (=> d!666503 (= (isEmpty!14943 tokens!456) ((_ is Nil!26544) tokens!456))))

(assert (=> b!2244760 d!666503))

(declare-fun d!666505 () Bool)

(assert (=> d!666505 (= (inv!36068 (tag!4689 r!2363)) (= (mod (str.len (value!133490 (tag!4689 r!2363))) 2) 0))))

(assert (=> b!2244771 d!666505))

(declare-fun d!666507 () Bool)

(declare-fun res!959108 () Bool)

(declare-fun e!1435976 () Bool)

(assert (=> d!666507 (=> (not res!959108) (not e!1435976))))

(declare-fun semiInverseModEq!1698 (Int Int) Bool)

(assert (=> d!666507 (= res!959108 (semiInverseModEq!1698 (toChars!5788 (transformation!4199 r!2363)) (toValue!5929 (transformation!4199 r!2363))))))

(assert (=> d!666507 (= (inv!36071 (transformation!4199 r!2363)) e!1435976)))

(declare-fun b!2244812 () Bool)

(declare-fun equivClasses!1617 (Int Int) Bool)

(assert (=> b!2244812 (= e!1435976 (equivClasses!1617 (toChars!5788 (transformation!4199 r!2363)) (toValue!5929 (transformation!4199 r!2363))))))

(assert (= (and d!666507 res!959108) b!2244812))

(declare-fun m!2676687 () Bool)

(assert (=> d!666507 m!2676687))

(declare-fun m!2676689 () Bool)

(assert (=> b!2244812 m!2676689))

(assert (=> b!2244771 d!666507))

(declare-fun d!666515 () Bool)

(declare-fun res!959111 () Bool)

(declare-fun e!1435979 () Bool)

(assert (=> d!666515 (=> (not res!959111) (not e!1435979))))

(declare-fun rulesValid!1542 (LexerInterface!3796 List!26637) Bool)

(assert (=> d!666515 (= res!959111 (rulesValid!1542 thiss!16613 rules!1750))))

(assert (=> d!666515 (= (rulesInvariant!3298 thiss!16613 rules!1750) e!1435979)))

(declare-fun b!2244815 () Bool)

(declare-datatypes ((List!26640 0))(
  ( (Nil!26546) (Cons!26546 (h!31947 String!28909) (t!200338 List!26640)) )
))
(declare-fun noDuplicateTag!1540 (LexerInterface!3796 List!26637 List!26640) Bool)

(assert (=> b!2244815 (= e!1435979 (noDuplicateTag!1540 thiss!16613 rules!1750 Nil!26546))))

(assert (= (and d!666515 res!959111) b!2244815))

(declare-fun m!2676691 () Bool)

(assert (=> d!666515 m!2676691))

(declare-fun m!2676693 () Bool)

(assert (=> b!2244815 m!2676693))

(assert (=> b!2244772 d!666515))

(declare-fun d!666517 () Bool)

(assert (=> d!666517 (= (head!4756 tokens!456) (h!31945 tokens!456))))

(assert (=> b!2244773 d!666517))

(declare-fun d!666519 () Bool)

(declare-fun list!10154 (Conc!8547) List!26638)

(assert (=> d!666519 (= (list!10150 (_1!15510 lt!835180)) (list!10154 (c!357268 (_1!15510 lt!835180))))))

(declare-fun bs!454785 () Bool)

(assert (= bs!454785 d!666519))

(declare-fun m!2676695 () Bool)

(assert (=> bs!454785 m!2676695))

(assert (=> b!2244763 d!666519))

(declare-fun d!666521 () Bool)

(declare-fun list!10155 (Conc!8546) List!26636)

(assert (=> d!666521 (= (list!10151 (_2!15510 lt!835180)) (list!10155 (c!357266 (_2!15510 lt!835180))))))

(declare-fun bs!454786 () Bool)

(assert (= bs!454786 d!666521))

(declare-fun m!2676697 () Bool)

(assert (=> bs!454786 m!2676697))

(assert (=> b!2244763 d!666521))

(declare-fun b!2244984 () Bool)

(declare-fun e!1436101 () Bool)

(declare-fun lt!835213 () tuple2!26000)

(declare-fun isEmpty!14947 (BalanceConc!16822) Bool)

(assert (=> b!2244984 (= e!1436101 (not (isEmpty!14947 (_1!15510 lt!835213))))))

(declare-fun b!2244985 () Bool)

(declare-fun res!959181 () Bool)

(declare-fun e!1436100 () Bool)

(assert (=> b!2244985 (=> (not res!959181) (not e!1436100))))

(declare-fun lexList!1042 (LexerInterface!3796 List!26637 List!26636) tuple2!26002)

(assert (=> b!2244985 (= res!959181 (= (list!10150 (_1!15510 lt!835213)) (_1!15511 (lexList!1042 thiss!16613 rules!1750 (list!10151 (seqFromList!2903 input!1722))))))))

(declare-fun b!2244986 () Bool)

(declare-fun e!1436102 () Bool)

(assert (=> b!2244986 (= e!1436102 e!1436101)))

(declare-fun res!959180 () Bool)

(assert (=> b!2244986 (= res!959180 (< (size!20752 (_2!15510 lt!835213)) (size!20752 (seqFromList!2903 input!1722))))))

(assert (=> b!2244986 (=> (not res!959180) (not e!1436101))))

(declare-fun b!2244987 () Bool)

(assert (=> b!2244987 (= e!1436102 (= (_2!15510 lt!835213) (seqFromList!2903 input!1722)))))

(declare-fun b!2244988 () Bool)

(assert (=> b!2244988 (= e!1436100 (= (list!10151 (_2!15510 lt!835213)) (_2!15511 (lexList!1042 thiss!16613 rules!1750 (list!10151 (seqFromList!2903 input!1722))))))))

(declare-fun d!666523 () Bool)

(assert (=> d!666523 e!1436100))

(declare-fun res!959182 () Bool)

(assert (=> d!666523 (=> (not res!959182) (not e!1436100))))

(assert (=> d!666523 (= res!959182 e!1436102)))

(declare-fun c!357289 () Bool)

(declare-fun size!20756 (BalanceConc!16822) Int)

(assert (=> d!666523 (= c!357289 (> (size!20756 (_1!15510 lt!835213)) 0))))

(declare-fun lexTailRecV2!717 (LexerInterface!3796 List!26637 BalanceConc!16820 BalanceConc!16820 BalanceConc!16820 BalanceConc!16822) tuple2!26000)

(assert (=> d!666523 (= lt!835213 (lexTailRecV2!717 thiss!16613 rules!1750 (seqFromList!2903 input!1722) (BalanceConc!16821 Empty!8546) (seqFromList!2903 input!1722) (BalanceConc!16823 Empty!8547)))))

(assert (=> d!666523 (= (lex!1635 thiss!16613 rules!1750 (seqFromList!2903 input!1722)) lt!835213)))

(assert (= (and d!666523 c!357289) b!2244986))

(assert (= (and d!666523 (not c!357289)) b!2244987))

(assert (= (and b!2244986 res!959180) b!2244984))

(assert (= (and d!666523 res!959182) b!2244985))

(assert (= (and b!2244985 res!959181) b!2244988))

(declare-fun m!2676805 () Bool)

(assert (=> b!2244985 m!2676805))

(assert (=> b!2244985 m!2676645))

(declare-fun m!2676807 () Bool)

(assert (=> b!2244985 m!2676807))

(assert (=> b!2244985 m!2676807))

(declare-fun m!2676809 () Bool)

(assert (=> b!2244985 m!2676809))

(declare-fun m!2676811 () Bool)

(assert (=> b!2244988 m!2676811))

(assert (=> b!2244988 m!2676645))

(assert (=> b!2244988 m!2676807))

(assert (=> b!2244988 m!2676807))

(assert (=> b!2244988 m!2676809))

(declare-fun m!2676813 () Bool)

(assert (=> d!666523 m!2676813))

(assert (=> d!666523 m!2676645))

(assert (=> d!666523 m!2676645))

(declare-fun m!2676815 () Bool)

(assert (=> d!666523 m!2676815))

(declare-fun m!2676817 () Bool)

(assert (=> b!2244984 m!2676817))

(declare-fun m!2676819 () Bool)

(assert (=> b!2244986 m!2676819))

(assert (=> b!2244986 m!2676645))

(declare-fun m!2676821 () Bool)

(assert (=> b!2244986 m!2676821))

(assert (=> b!2244763 d!666523))

(declare-fun d!666571 () Bool)

(declare-fun fromListB!1308 (List!26636) BalanceConc!16820)

(assert (=> d!666571 (= (seqFromList!2903 input!1722) (fromListB!1308 input!1722))))

(declare-fun bs!454791 () Bool)

(assert (= bs!454791 d!666571))

(declare-fun m!2676823 () Bool)

(assert (=> bs!454791 m!2676823))

(assert (=> b!2244763 d!666571))

(declare-fun d!666573 () Bool)

(declare-fun c!357295 () Bool)

(assert (=> d!666573 (= c!357295 ((_ is IntegerValue!13083) (value!133491 (h!31945 tokens!456))))))

(declare-fun e!1436111 () Bool)

(assert (=> d!666573 (= (inv!21 (value!133491 (h!31945 tokens!456))) e!1436111)))

(declare-fun b!2244999 () Bool)

(declare-fun e!1436110 () Bool)

(declare-fun inv!17 (TokenValue!4361) Bool)

(assert (=> b!2244999 (= e!1436110 (inv!17 (value!133491 (h!31945 tokens!456))))))

(declare-fun b!2245000 () Bool)

(declare-fun inv!16 (TokenValue!4361) Bool)

(assert (=> b!2245000 (= e!1436111 (inv!16 (value!133491 (h!31945 tokens!456))))))

(declare-fun b!2245001 () Bool)

(declare-fun res!959185 () Bool)

(declare-fun e!1436109 () Bool)

(assert (=> b!2245001 (=> res!959185 e!1436109)))

(assert (=> b!2245001 (= res!959185 (not ((_ is IntegerValue!13085) (value!133491 (h!31945 tokens!456)))))))

(assert (=> b!2245001 (= e!1436110 e!1436109)))

(declare-fun b!2245002 () Bool)

(assert (=> b!2245002 (= e!1436111 e!1436110)))

(declare-fun c!357294 () Bool)

(assert (=> b!2245002 (= c!357294 ((_ is IntegerValue!13084) (value!133491 (h!31945 tokens!456))))))

(declare-fun b!2245003 () Bool)

(declare-fun inv!15 (TokenValue!4361) Bool)

(assert (=> b!2245003 (= e!1436109 (inv!15 (value!133491 (h!31945 tokens!456))))))

(assert (= (and d!666573 c!357295) b!2245000))

(assert (= (and d!666573 (not c!357295)) b!2245002))

(assert (= (and b!2245002 c!357294) b!2244999))

(assert (= (and b!2245002 (not c!357294)) b!2245001))

(assert (= (and b!2245001 (not res!959185)) b!2245003))

(declare-fun m!2676825 () Bool)

(assert (=> b!2244999 m!2676825))

(declare-fun m!2676827 () Bool)

(assert (=> b!2245000 m!2676827))

(declare-fun m!2676829 () Bool)

(assert (=> b!2245003 m!2676829))

(assert (=> b!2244764 d!666573))

(declare-fun d!666575 () Bool)

(assert (=> d!666575 (= (inv!36068 (tag!4689 (h!31944 rules!1750))) (= (mod (str.len (value!133490 (tag!4689 (h!31944 rules!1750)))) 2) 0))))

(assert (=> b!2244754 d!666575))

(declare-fun d!666577 () Bool)

(declare-fun res!959186 () Bool)

(declare-fun e!1436112 () Bool)

(assert (=> d!666577 (=> (not res!959186) (not e!1436112))))

(assert (=> d!666577 (= res!959186 (semiInverseModEq!1698 (toChars!5788 (transformation!4199 (h!31944 rules!1750))) (toValue!5929 (transformation!4199 (h!31944 rules!1750)))))))

(assert (=> d!666577 (= (inv!36071 (transformation!4199 (h!31944 rules!1750))) e!1436112)))

(declare-fun b!2245004 () Bool)

(assert (=> b!2245004 (= e!1436112 (equivClasses!1617 (toChars!5788 (transformation!4199 (h!31944 rules!1750))) (toValue!5929 (transformation!4199 (h!31944 rules!1750)))))))

(assert (= (and d!666577 res!959186) b!2245004))

(declare-fun m!2676831 () Bool)

(assert (=> d!666577 m!2676831))

(declare-fun m!2676833 () Bool)

(assert (=> b!2245004 m!2676833))

(assert (=> b!2244754 d!666577))

(declare-fun d!666579 () Bool)

(declare-fun lt!835216 () Int)

(assert (=> d!666579 (= lt!835216 (size!20753 (list!10151 (charsOf!2587 (head!4756 tokens!456)))))))

(declare-fun size!20757 (Conc!8546) Int)

(assert (=> d!666579 (= lt!835216 (size!20757 (c!357266 (charsOf!2587 (head!4756 tokens!456)))))))

(assert (=> d!666579 (= (size!20752 (charsOf!2587 (head!4756 tokens!456))) lt!835216)))

(declare-fun bs!454792 () Bool)

(assert (= bs!454792 d!666579))

(assert (=> bs!454792 m!2676603))

(assert (=> bs!454792 m!2676605))

(assert (=> bs!454792 m!2676605))

(declare-fun m!2676835 () Bool)

(assert (=> bs!454792 m!2676835))

(declare-fun m!2676837 () Bool)

(assert (=> bs!454792 m!2676837))

(assert (=> b!2244775 d!666579))

(declare-fun d!666581 () Bool)

(declare-fun lt!835219 () BalanceConc!16820)

(assert (=> d!666581 (= (list!10151 lt!835219) (originalCharacters!4969 (head!4756 tokens!456)))))

(declare-fun dynLambda!11564 (Int TokenValue!4361) BalanceConc!16820)

(assert (=> d!666581 (= lt!835219 (dynLambda!11564 (toChars!5788 (transformation!4199 (rule!6497 (head!4756 tokens!456)))) (value!133491 (head!4756 tokens!456))))))

(assert (=> d!666581 (= (charsOf!2587 (head!4756 tokens!456)) lt!835219)))

(declare-fun b_lambda!71839 () Bool)

(assert (=> (not b_lambda!71839) (not d!666581)))

(declare-fun t!200314 () Bool)

(declare-fun tb!133015 () Bool)

(assert (=> (and b!2244779 (= (toChars!5788 (transformation!4199 otherR!12)) (toChars!5788 (transformation!4199 (rule!6497 (head!4756 tokens!456))))) t!200314) tb!133015))

(declare-fun b!2245009 () Bool)

(declare-fun e!1436115 () Bool)

(declare-fun tp!708517 () Bool)

(declare-fun inv!36075 (Conc!8546) Bool)

(assert (=> b!2245009 (= e!1436115 (and (inv!36075 (c!357266 (dynLambda!11564 (toChars!5788 (transformation!4199 (rule!6497 (head!4756 tokens!456)))) (value!133491 (head!4756 tokens!456))))) tp!708517))))

(declare-fun result!162132 () Bool)

(declare-fun inv!36076 (BalanceConc!16820) Bool)

(assert (=> tb!133015 (= result!162132 (and (inv!36076 (dynLambda!11564 (toChars!5788 (transformation!4199 (rule!6497 (head!4756 tokens!456)))) (value!133491 (head!4756 tokens!456)))) e!1436115))))

(assert (= tb!133015 b!2245009))

(declare-fun m!2676839 () Bool)

(assert (=> b!2245009 m!2676839))

(declare-fun m!2676841 () Bool)

(assert (=> tb!133015 m!2676841))

(assert (=> d!666581 t!200314))

(declare-fun b_and!175521 () Bool)

(assert (= b_and!175483 (and (=> t!200314 result!162132) b_and!175521)))

(declare-fun t!200316 () Bool)

(declare-fun tb!133017 () Bool)

(assert (=> (and b!2244759 (= (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456)))) (toChars!5788 (transformation!4199 (rule!6497 (head!4756 tokens!456))))) t!200316) tb!133017))

(declare-fun result!162136 () Bool)

(assert (= result!162136 result!162132))

(assert (=> d!666581 t!200316))

(declare-fun b_and!175523 () Bool)

(assert (= b_and!175487 (and (=> t!200316 result!162136) b_and!175523)))

(declare-fun tb!133019 () Bool)

(declare-fun t!200318 () Bool)

(assert (=> (and b!2244761 (= (toChars!5788 (transformation!4199 r!2363)) (toChars!5788 (transformation!4199 (rule!6497 (head!4756 tokens!456))))) t!200318) tb!133019))

(declare-fun result!162138 () Bool)

(assert (= result!162138 result!162132))

(assert (=> d!666581 t!200318))

(declare-fun b_and!175525 () Bool)

(assert (= b_and!175491 (and (=> t!200318 result!162138) b_and!175525)))

(declare-fun tb!133021 () Bool)

(declare-fun t!200320 () Bool)

(assert (=> (and b!2244766 (= (toChars!5788 (transformation!4199 (h!31944 rules!1750))) (toChars!5788 (transformation!4199 (rule!6497 (head!4756 tokens!456))))) t!200320) tb!133021))

(declare-fun result!162140 () Bool)

(assert (= result!162140 result!162132))

(assert (=> d!666581 t!200320))

(declare-fun b_and!175527 () Bool)

(assert (= b_and!175495 (and (=> t!200320 result!162140) b_and!175527)))

(declare-fun m!2676843 () Bool)

(assert (=> d!666581 m!2676843))

(declare-fun m!2676845 () Bool)

(assert (=> d!666581 m!2676845))

(assert (=> b!2244775 d!666581))

(assert (=> b!2244775 d!666517))

(declare-fun d!666583 () Bool)

(declare-fun lt!835222 () Int)

(assert (=> d!666583 (>= lt!835222 0)))

(declare-fun e!1436118 () Int)

(assert (=> d!666583 (= lt!835222 e!1436118)))

(declare-fun c!357298 () Bool)

(assert (=> d!666583 (= c!357298 ((_ is Nil!26542) otherP!12))))

(assert (=> d!666583 (= (size!20753 otherP!12) lt!835222)))

(declare-fun b!2245014 () Bool)

(assert (=> b!2245014 (= e!1436118 0)))

(declare-fun b!2245015 () Bool)

(assert (=> b!2245015 (= e!1436118 (+ 1 (size!20753 (t!200286 otherP!12))))))

(assert (= (and d!666583 c!357298) b!2245014))

(assert (= (and d!666583 (not c!357298)) b!2245015))

(declare-fun m!2676847 () Bool)

(assert (=> b!2245015 m!2676847))

(assert (=> b!2244775 d!666583))

(declare-fun bm!135413 () Bool)

(declare-fun c!357303 () Bool)

(declare-fun call!135420 () Bool)

(declare-fun c!357304 () Bool)

(assert (=> bm!135413 (= call!135420 (validRegex!2448 (ite c!357304 (reg!6876 (regex!4199 r!2363)) (ite c!357303 (regTwo!13607 (regex!4199 r!2363)) (regOne!13606 (regex!4199 r!2363))))))))

(declare-fun b!2245034 () Bool)

(declare-fun e!1436137 () Bool)

(declare-fun e!1436134 () Bool)

(assert (=> b!2245034 (= e!1436137 e!1436134)))

(assert (=> b!2245034 (= c!357303 ((_ is Union!6547) (regex!4199 r!2363)))))

(declare-fun b!2245035 () Bool)

(declare-fun e!1436135 () Bool)

(assert (=> b!2245035 (= e!1436135 call!135420)))

(declare-fun d!666585 () Bool)

(declare-fun res!959199 () Bool)

(declare-fun e!1436139 () Bool)

(assert (=> d!666585 (=> res!959199 e!1436139)))

(assert (=> d!666585 (= res!959199 ((_ is ElementMatch!6547) (regex!4199 r!2363)))))

(assert (=> d!666585 (= (validRegex!2448 (regex!4199 r!2363)) e!1436139)))

(declare-fun b!2245036 () Bool)

(assert (=> b!2245036 (= e!1436137 e!1436135)))

(declare-fun res!959201 () Bool)

(assert (=> b!2245036 (= res!959201 (not (nullable!1795 (reg!6876 (regex!4199 r!2363)))))))

(assert (=> b!2245036 (=> (not res!959201) (not e!1436135))))

(declare-fun b!2245037 () Bool)

(declare-fun res!959200 () Bool)

(declare-fun e!1436138 () Bool)

(assert (=> b!2245037 (=> (not res!959200) (not e!1436138))))

(declare-fun call!135418 () Bool)

(assert (=> b!2245037 (= res!959200 call!135418)))

(assert (=> b!2245037 (= e!1436134 e!1436138)))

(declare-fun bm!135414 () Bool)

(assert (=> bm!135414 (= call!135418 (validRegex!2448 (ite c!357303 (regOne!13607 (regex!4199 r!2363)) (regTwo!13606 (regex!4199 r!2363)))))))

(declare-fun b!2245038 () Bool)

(declare-fun call!135419 () Bool)

(assert (=> b!2245038 (= e!1436138 call!135419)))

(declare-fun b!2245039 () Bool)

(assert (=> b!2245039 (= e!1436139 e!1436137)))

(assert (=> b!2245039 (= c!357304 ((_ is Star!6547) (regex!4199 r!2363)))))

(declare-fun bm!135415 () Bool)

(assert (=> bm!135415 (= call!135419 call!135420)))

(declare-fun b!2245040 () Bool)

(declare-fun e!1436133 () Bool)

(assert (=> b!2245040 (= e!1436133 call!135418)))

(declare-fun b!2245041 () Bool)

(declare-fun e!1436136 () Bool)

(assert (=> b!2245041 (= e!1436136 e!1436133)))

(declare-fun res!959198 () Bool)

(assert (=> b!2245041 (=> (not res!959198) (not e!1436133))))

(assert (=> b!2245041 (= res!959198 call!135419)))

(declare-fun b!2245042 () Bool)

(declare-fun res!959197 () Bool)

(assert (=> b!2245042 (=> res!959197 e!1436136)))

(assert (=> b!2245042 (= res!959197 (not ((_ is Concat!10909) (regex!4199 r!2363))))))

(assert (=> b!2245042 (= e!1436134 e!1436136)))

(assert (= (and d!666585 (not res!959199)) b!2245039))

(assert (= (and b!2245039 c!357304) b!2245036))

(assert (= (and b!2245039 (not c!357304)) b!2245034))

(assert (= (and b!2245036 res!959201) b!2245035))

(assert (= (and b!2245034 c!357303) b!2245037))

(assert (= (and b!2245034 (not c!357303)) b!2245042))

(assert (= (and b!2245037 res!959200) b!2245038))

(assert (= (and b!2245042 (not res!959197)) b!2245041))

(assert (= (and b!2245041 res!959198) b!2245040))

(assert (= (or b!2245037 b!2245040) bm!135414))

(assert (= (or b!2245038 b!2245041) bm!135415))

(assert (= (or b!2245035 bm!135415) bm!135413))

(declare-fun m!2676849 () Bool)

(assert (=> bm!135413 m!2676849))

(declare-fun m!2676851 () Bool)

(assert (=> b!2245036 m!2676851))

(declare-fun m!2676853 () Bool)

(assert (=> bm!135414 m!2676853))

(assert (=> b!2244776 d!666585))

(declare-fun d!666587 () Bool)

(assert (=> d!666587 (= (list!10151 (charsOf!2587 (head!4756 tokens!456))) (list!10155 (c!357266 (charsOf!2587 (head!4756 tokens!456)))))))

(declare-fun bs!454793 () Bool)

(assert (= bs!454793 d!666587))

(declare-fun m!2676855 () Bool)

(assert (=> bs!454793 m!2676855))

(assert (=> b!2244776 d!666587))

(assert (=> b!2244776 d!666581))

(assert (=> b!2244776 d!666517))

(declare-fun d!666589 () Bool)

(declare-fun res!959206 () Bool)

(declare-fun e!1436142 () Bool)

(assert (=> d!666589 (=> (not res!959206) (not e!1436142))))

(declare-fun isEmpty!14948 (List!26636) Bool)

(assert (=> d!666589 (= res!959206 (not (isEmpty!14948 (originalCharacters!4969 (h!31945 tokens!456)))))))

(assert (=> d!666589 (= (inv!36072 (h!31945 tokens!456)) e!1436142)))

(declare-fun b!2245047 () Bool)

(declare-fun res!959207 () Bool)

(assert (=> b!2245047 (=> (not res!959207) (not e!1436142))))

(assert (=> b!2245047 (= res!959207 (= (originalCharacters!4969 (h!31945 tokens!456)) (list!10151 (dynLambda!11564 (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456)))) (value!133491 (h!31945 tokens!456))))))))

(declare-fun b!2245048 () Bool)

(assert (=> b!2245048 (= e!1436142 (= (size!20751 (h!31945 tokens!456)) (size!20753 (originalCharacters!4969 (h!31945 tokens!456)))))))

(assert (= (and d!666589 res!959206) b!2245047))

(assert (= (and b!2245047 res!959207) b!2245048))

(declare-fun b_lambda!71841 () Bool)

(assert (=> (not b_lambda!71841) (not b!2245047)))

(declare-fun tb!133023 () Bool)

(declare-fun t!200322 () Bool)

(assert (=> (and b!2244779 (= (toChars!5788 (transformation!4199 otherR!12)) (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456))))) t!200322) tb!133023))

(declare-fun b!2245049 () Bool)

(declare-fun e!1436143 () Bool)

(declare-fun tp!708518 () Bool)

(assert (=> b!2245049 (= e!1436143 (and (inv!36075 (c!357266 (dynLambda!11564 (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456)))) (value!133491 (h!31945 tokens!456))))) tp!708518))))

(declare-fun result!162142 () Bool)

(assert (=> tb!133023 (= result!162142 (and (inv!36076 (dynLambda!11564 (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456)))) (value!133491 (h!31945 tokens!456)))) e!1436143))))

(assert (= tb!133023 b!2245049))

(declare-fun m!2676857 () Bool)

(assert (=> b!2245049 m!2676857))

(declare-fun m!2676859 () Bool)

(assert (=> tb!133023 m!2676859))

(assert (=> b!2245047 t!200322))

(declare-fun b_and!175529 () Bool)

(assert (= b_and!175521 (and (=> t!200322 result!162142) b_and!175529)))

(declare-fun t!200324 () Bool)

(declare-fun tb!133025 () Bool)

(assert (=> (and b!2244759 (= (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456)))) (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456))))) t!200324) tb!133025))

(declare-fun result!162144 () Bool)

(assert (= result!162144 result!162142))

(assert (=> b!2245047 t!200324))

(declare-fun b_and!175531 () Bool)

(assert (= b_and!175523 (and (=> t!200324 result!162144) b_and!175531)))

(declare-fun tb!133027 () Bool)

(declare-fun t!200326 () Bool)

(assert (=> (and b!2244761 (= (toChars!5788 (transformation!4199 r!2363)) (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456))))) t!200326) tb!133027))

(declare-fun result!162146 () Bool)

(assert (= result!162146 result!162142))

(assert (=> b!2245047 t!200326))

(declare-fun b_and!175533 () Bool)

(assert (= b_and!175525 (and (=> t!200326 result!162146) b_and!175533)))

(declare-fun t!200328 () Bool)

(declare-fun tb!133029 () Bool)

(assert (=> (and b!2244766 (= (toChars!5788 (transformation!4199 (h!31944 rules!1750))) (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456))))) t!200328) tb!133029))

(declare-fun result!162148 () Bool)

(assert (= result!162148 result!162142))

(assert (=> b!2245047 t!200328))

(declare-fun b_and!175535 () Bool)

(assert (= b_and!175527 (and (=> t!200328 result!162148) b_and!175535)))

(declare-fun m!2676861 () Bool)

(assert (=> d!666589 m!2676861))

(declare-fun m!2676863 () Bool)

(assert (=> b!2245047 m!2676863))

(assert (=> b!2245047 m!2676863))

(declare-fun m!2676865 () Bool)

(assert (=> b!2245047 m!2676865))

(declare-fun m!2676867 () Bool)

(assert (=> b!2245048 m!2676867))

(assert (=> b!2244765 d!666589))

(declare-fun d!666591 () Bool)

(assert (=> d!666591 (= (isEmpty!14944 rules!1750) ((_ is Nil!26543) rules!1750))))

(assert (=> b!2244777 d!666591))

(declare-fun d!666593 () Bool)

(assert (=> d!666593 (= (inv!36068 (tag!4689 otherR!12)) (= (mod (str.len (value!133490 (tag!4689 otherR!12))) 2) 0))))

(assert (=> b!2244767 d!666593))

(declare-fun d!666595 () Bool)

(declare-fun res!959208 () Bool)

(declare-fun e!1436144 () Bool)

(assert (=> d!666595 (=> (not res!959208) (not e!1436144))))

(assert (=> d!666595 (= res!959208 (semiInverseModEq!1698 (toChars!5788 (transformation!4199 otherR!12)) (toValue!5929 (transformation!4199 otherR!12))))))

(assert (=> d!666595 (= (inv!36071 (transformation!4199 otherR!12)) e!1436144)))

(declare-fun b!2245050 () Bool)

(assert (=> b!2245050 (= e!1436144 (equivClasses!1617 (toChars!5788 (transformation!4199 otherR!12)) (toValue!5929 (transformation!4199 otherR!12))))))

(assert (= (and d!666595 res!959208) b!2245050))

(declare-fun m!2676869 () Bool)

(assert (=> d!666595 m!2676869))

(declare-fun m!2676871 () Bool)

(assert (=> b!2245050 m!2676871))

(assert (=> b!2244767 d!666595))

(declare-fun d!666597 () Bool)

(assert (=> d!666597 (= (inv!36068 (tag!4689 (rule!6497 (h!31945 tokens!456)))) (= (mod (str.len (value!133490 (tag!4689 (rule!6497 (h!31945 tokens!456))))) 2) 0))))

(assert (=> b!2244768 d!666597))

(declare-fun d!666599 () Bool)

(declare-fun res!959209 () Bool)

(declare-fun e!1436145 () Bool)

(assert (=> d!666599 (=> (not res!959209) (not e!1436145))))

(assert (=> d!666599 (= res!959209 (semiInverseModEq!1698 (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456)))) (toValue!5929 (transformation!4199 (rule!6497 (h!31945 tokens!456))))))))

(assert (=> d!666599 (= (inv!36071 (transformation!4199 (rule!6497 (h!31945 tokens!456)))) e!1436145)))

(declare-fun b!2245051 () Bool)

(assert (=> b!2245051 (= e!1436145 (equivClasses!1617 (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456)))) (toValue!5929 (transformation!4199 (rule!6497 (h!31945 tokens!456))))))))

(assert (= (and d!666599 res!959209) b!2245051))

(declare-fun m!2676873 () Bool)

(assert (=> d!666599 m!2676873))

(declare-fun m!2676875 () Bool)

(assert (=> b!2245051 m!2676875))

(assert (=> b!2244768 d!666599))

(declare-fun d!666601 () Bool)

(declare-fun lt!835225 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3542 (List!26637) (InoxSet Rule!8198))

(assert (=> d!666601 (= lt!835225 (select (content!3542 rules!1750) otherR!12))))

(declare-fun e!1436150 () Bool)

(assert (=> d!666601 (= lt!835225 e!1436150)))

(declare-fun res!959215 () Bool)

(assert (=> d!666601 (=> (not res!959215) (not e!1436150))))

(assert (=> d!666601 (= res!959215 ((_ is Cons!26543) rules!1750))))

(assert (=> d!666601 (= (contains!4546 rules!1750 otherR!12) lt!835225)))

(declare-fun b!2245056 () Bool)

(declare-fun e!1436151 () Bool)

(assert (=> b!2245056 (= e!1436150 e!1436151)))

(declare-fun res!959214 () Bool)

(assert (=> b!2245056 (=> res!959214 e!1436151)))

(assert (=> b!2245056 (= res!959214 (= (h!31944 rules!1750) otherR!12))))

(declare-fun b!2245057 () Bool)

(assert (=> b!2245057 (= e!1436151 (contains!4546 (t!200287 rules!1750) otherR!12))))

(assert (= (and d!666601 res!959215) b!2245056))

(assert (= (and b!2245056 (not res!959214)) b!2245057))

(declare-fun m!2676877 () Bool)

(assert (=> d!666601 m!2676877))

(declare-fun m!2676879 () Bool)

(assert (=> d!666601 m!2676879))

(declare-fun m!2676881 () Bool)

(assert (=> b!2245057 m!2676881))

(assert (=> b!2244757 d!666601))

(declare-fun d!666603 () Bool)

(declare-fun lt!835226 () Bool)

(assert (=> d!666603 (= lt!835226 (select (content!3542 rules!1750) r!2363))))

(declare-fun e!1436152 () Bool)

(assert (=> d!666603 (= lt!835226 e!1436152)))

(declare-fun res!959217 () Bool)

(assert (=> d!666603 (=> (not res!959217) (not e!1436152))))

(assert (=> d!666603 (= res!959217 ((_ is Cons!26543) rules!1750))))

(assert (=> d!666603 (= (contains!4546 rules!1750 r!2363) lt!835226)))

(declare-fun b!2245058 () Bool)

(declare-fun e!1436153 () Bool)

(assert (=> b!2245058 (= e!1436152 e!1436153)))

(declare-fun res!959216 () Bool)

(assert (=> b!2245058 (=> res!959216 e!1436153)))

(assert (=> b!2245058 (= res!959216 (= (h!31944 rules!1750) r!2363))))

(declare-fun b!2245059 () Bool)

(assert (=> b!2245059 (= e!1436153 (contains!4546 (t!200287 rules!1750) r!2363))))

(assert (= (and d!666603 res!959217) b!2245058))

(assert (= (and b!2245058 (not res!959216)) b!2245059))

(assert (=> d!666603 m!2676877))

(declare-fun m!2676883 () Bool)

(assert (=> d!666603 m!2676883))

(declare-fun m!2676885 () Bool)

(assert (=> b!2245059 m!2676885))

(assert (=> b!2244758 d!666603))

(declare-fun b!2245064 () Bool)

(declare-fun e!1436156 () Bool)

(declare-fun tp!708521 () Bool)

(assert (=> b!2245064 (= e!1436156 (and tp_is_empty!10315 tp!708521))))

(assert (=> b!2244770 (= tp!708433 e!1436156)))

(assert (= (and b!2244770 ((_ is Cons!26542) (t!200286 suffix!886))) b!2245064))

(declare-fun b!2245078 () Bool)

(declare-fun e!1436159 () Bool)

(declare-fun tp!708532 () Bool)

(declare-fun tp!708534 () Bool)

(assert (=> b!2245078 (= e!1436159 (and tp!708532 tp!708534))))

(declare-fun b!2245075 () Bool)

(assert (=> b!2245075 (= e!1436159 tp_is_empty!10315)))

(declare-fun b!2245076 () Bool)

(declare-fun tp!708533 () Bool)

(declare-fun tp!708536 () Bool)

(assert (=> b!2245076 (= e!1436159 (and tp!708533 tp!708536))))

(assert (=> b!2244771 (= tp!708434 e!1436159)))

(declare-fun b!2245077 () Bool)

(declare-fun tp!708535 () Bool)

(assert (=> b!2245077 (= e!1436159 tp!708535)))

(assert (= (and b!2244771 ((_ is ElementMatch!6547) (regex!4199 r!2363))) b!2245075))

(assert (= (and b!2244771 ((_ is Concat!10909) (regex!4199 r!2363))) b!2245076))

(assert (= (and b!2244771 ((_ is Star!6547) (regex!4199 r!2363))) b!2245077))

(assert (= (and b!2244771 ((_ is Union!6547) (regex!4199 r!2363))) b!2245078))

(declare-fun b!2245079 () Bool)

(declare-fun e!1436160 () Bool)

(declare-fun tp!708537 () Bool)

(assert (=> b!2245079 (= e!1436160 (and tp_is_empty!10315 tp!708537))))

(assert (=> b!2244762 (= tp!708436 e!1436160)))

(assert (= (and b!2244762 ((_ is Cons!26542) (t!200286 input!1722))) b!2245079))

(declare-fun b!2245080 () Bool)

(declare-fun e!1436161 () Bool)

(declare-fun tp!708538 () Bool)

(assert (=> b!2245080 (= e!1436161 (and tp_is_empty!10315 tp!708538))))

(assert (=> b!2244764 (= tp!708443 e!1436161)))

(assert (= (and b!2244764 ((_ is Cons!26542) (originalCharacters!4969 (h!31945 tokens!456)))) b!2245080))

(declare-fun b!2245084 () Bool)

(declare-fun e!1436162 () Bool)

(declare-fun tp!708539 () Bool)

(declare-fun tp!708541 () Bool)

(assert (=> b!2245084 (= e!1436162 (and tp!708539 tp!708541))))

(declare-fun b!2245081 () Bool)

(assert (=> b!2245081 (= e!1436162 tp_is_empty!10315)))

(declare-fun b!2245082 () Bool)

(declare-fun tp!708540 () Bool)

(declare-fun tp!708543 () Bool)

(assert (=> b!2245082 (= e!1436162 (and tp!708540 tp!708543))))

(assert (=> b!2244754 (= tp!708445 e!1436162)))

(declare-fun b!2245083 () Bool)

(declare-fun tp!708542 () Bool)

(assert (=> b!2245083 (= e!1436162 tp!708542)))

(assert (= (and b!2244754 ((_ is ElementMatch!6547) (regex!4199 (h!31944 rules!1750)))) b!2245081))

(assert (= (and b!2244754 ((_ is Concat!10909) (regex!4199 (h!31944 rules!1750)))) b!2245082))

(assert (= (and b!2244754 ((_ is Star!6547) (regex!4199 (h!31944 rules!1750)))) b!2245083))

(assert (= (and b!2244754 ((_ is Union!6547) (regex!4199 (h!31944 rules!1750)))) b!2245084))

(declare-fun b!2245098 () Bool)

(declare-fun b_free!65397 () Bool)

(declare-fun b_next!66101 () Bool)

(assert (=> b!2245098 (= b_free!65397 (not b_next!66101))))

(declare-fun tp!708555 () Bool)

(declare-fun b_and!175537 () Bool)

(assert (=> b!2245098 (= tp!708555 b_and!175537)))

(declare-fun b_free!65399 () Bool)

(declare-fun b_next!66103 () Bool)

(assert (=> b!2245098 (= b_free!65399 (not b_next!66103))))

(declare-fun t!200330 () Bool)

(declare-fun tb!133031 () Bool)

(assert (=> (and b!2245098 (= (toChars!5788 (transformation!4199 (rule!6497 (h!31945 (t!200288 tokens!456))))) (toChars!5788 (transformation!4199 (rule!6497 (head!4756 tokens!456))))) t!200330) tb!133031))

(declare-fun result!162156 () Bool)

(assert (= result!162156 result!162132))

(assert (=> d!666581 t!200330))

(declare-fun t!200332 () Bool)

(declare-fun tb!133033 () Bool)

(assert (=> (and b!2245098 (= (toChars!5788 (transformation!4199 (rule!6497 (h!31945 (t!200288 tokens!456))))) (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456))))) t!200332) tb!133033))

(declare-fun result!162158 () Bool)

(assert (= result!162158 result!162142))

(assert (=> b!2245047 t!200332))

(declare-fun tp!708558 () Bool)

(declare-fun b_and!175539 () Bool)

(assert (=> b!2245098 (= tp!708558 (and (=> t!200330 result!162156) (=> t!200332 result!162158) b_and!175539))))

(declare-fun e!1436175 () Bool)

(declare-fun b!2245096 () Bool)

(declare-fun e!1436176 () Bool)

(declare-fun tp!708554 () Bool)

(assert (=> b!2245096 (= e!1436176 (and (inv!21 (value!133491 (h!31945 (t!200288 tokens!456)))) e!1436175 tp!708554))))

(declare-fun tp!708556 () Bool)

(declare-fun b!2245095 () Bool)

(declare-fun e!1436178 () Bool)

(assert (=> b!2245095 (= e!1436178 (and (inv!36072 (h!31945 (t!200288 tokens!456))) e!1436176 tp!708556))))

(declare-fun e!1436180 () Bool)

(assert (=> b!2245098 (= e!1436180 (and tp!708555 tp!708558))))

(assert (=> b!2244765 (= tp!708439 e!1436178)))

(declare-fun b!2245097 () Bool)

(declare-fun tp!708557 () Bool)

(assert (=> b!2245097 (= e!1436175 (and tp!708557 (inv!36068 (tag!4689 (rule!6497 (h!31945 (t!200288 tokens!456))))) (inv!36071 (transformation!4199 (rule!6497 (h!31945 (t!200288 tokens!456))))) e!1436180))))

(assert (= b!2245097 b!2245098))

(assert (= b!2245096 b!2245097))

(assert (= b!2245095 b!2245096))

(assert (= (and b!2244765 ((_ is Cons!26544) (t!200288 tokens!456))) b!2245095))

(declare-fun m!2676887 () Bool)

(assert (=> b!2245096 m!2676887))

(declare-fun m!2676889 () Bool)

(assert (=> b!2245095 m!2676889))

(declare-fun m!2676891 () Bool)

(assert (=> b!2245097 m!2676891))

(declare-fun m!2676893 () Bool)

(assert (=> b!2245097 m!2676893))

(declare-fun b!2245109 () Bool)

(declare-fun b_free!65401 () Bool)

(declare-fun b_next!66105 () Bool)

(assert (=> b!2245109 (= b_free!65401 (not b_next!66105))))

(declare-fun tp!708570 () Bool)

(declare-fun b_and!175541 () Bool)

(assert (=> b!2245109 (= tp!708570 b_and!175541)))

(declare-fun b_free!65403 () Bool)

(declare-fun b_next!66107 () Bool)

(assert (=> b!2245109 (= b_free!65403 (not b_next!66107))))

(declare-fun tb!133035 () Bool)

(declare-fun t!200334 () Bool)

(assert (=> (and b!2245109 (= (toChars!5788 (transformation!4199 (h!31944 (t!200287 rules!1750)))) (toChars!5788 (transformation!4199 (rule!6497 (head!4756 tokens!456))))) t!200334) tb!133035))

(declare-fun result!162162 () Bool)

(assert (= result!162162 result!162132))

(assert (=> d!666581 t!200334))

(declare-fun tb!133037 () Bool)

(declare-fun t!200336 () Bool)

(assert (=> (and b!2245109 (= (toChars!5788 (transformation!4199 (h!31944 (t!200287 rules!1750)))) (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456))))) t!200336) tb!133037))

(declare-fun result!162164 () Bool)

(assert (= result!162164 result!162142))

(assert (=> b!2245047 t!200336))

(declare-fun tp!708569 () Bool)

(declare-fun b_and!175543 () Bool)

(assert (=> b!2245109 (= tp!708569 (and (=> t!200334 result!162162) (=> t!200336 result!162164) b_and!175543))))

(declare-fun e!1436191 () Bool)

(assert (=> b!2245109 (= e!1436191 (and tp!708570 tp!708569))))

(declare-fun tp!708568 () Bool)

(declare-fun e!1436190 () Bool)

(declare-fun b!2245108 () Bool)

(assert (=> b!2245108 (= e!1436190 (and tp!708568 (inv!36068 (tag!4689 (h!31944 (t!200287 rules!1750)))) (inv!36071 (transformation!4199 (h!31944 (t!200287 rules!1750)))) e!1436191))))

(declare-fun b!2245107 () Bool)

(declare-fun e!1436189 () Bool)

(declare-fun tp!708567 () Bool)

(assert (=> b!2245107 (= e!1436189 (and e!1436190 tp!708567))))

(assert (=> b!2244755 (= tp!708437 e!1436189)))

(assert (= b!2245108 b!2245109))

(assert (= b!2245107 b!2245108))

(assert (= (and b!2244755 ((_ is Cons!26543) (t!200287 rules!1750))) b!2245107))

(declare-fun m!2676895 () Bool)

(assert (=> b!2245108 m!2676895))

(declare-fun m!2676897 () Bool)

(assert (=> b!2245108 m!2676897))

(declare-fun b!2245110 () Bool)

(declare-fun e!1436193 () Bool)

(declare-fun tp!708571 () Bool)

(assert (=> b!2245110 (= e!1436193 (and tp_is_empty!10315 tp!708571))))

(assert (=> b!2244756 (= tp!708441 e!1436193)))

(assert (= (and b!2244756 ((_ is Cons!26542) (t!200286 otherP!12))) b!2245110))

(declare-fun b!2245114 () Bool)

(declare-fun e!1436194 () Bool)

(declare-fun tp!708572 () Bool)

(declare-fun tp!708574 () Bool)

(assert (=> b!2245114 (= e!1436194 (and tp!708572 tp!708574))))

(declare-fun b!2245111 () Bool)

(assert (=> b!2245111 (= e!1436194 tp_is_empty!10315)))

(declare-fun b!2245112 () Bool)

(declare-fun tp!708573 () Bool)

(declare-fun tp!708576 () Bool)

(assert (=> b!2245112 (= e!1436194 (and tp!708573 tp!708576))))

(assert (=> b!2244767 (= tp!708442 e!1436194)))

(declare-fun b!2245113 () Bool)

(declare-fun tp!708575 () Bool)

(assert (=> b!2245113 (= e!1436194 tp!708575)))

(assert (= (and b!2244767 ((_ is ElementMatch!6547) (regex!4199 otherR!12))) b!2245111))

(assert (= (and b!2244767 ((_ is Concat!10909) (regex!4199 otherR!12))) b!2245112))

(assert (= (and b!2244767 ((_ is Star!6547) (regex!4199 otherR!12))) b!2245113))

(assert (= (and b!2244767 ((_ is Union!6547) (regex!4199 otherR!12))) b!2245114))

(declare-fun b!2245118 () Bool)

(declare-fun e!1436195 () Bool)

(declare-fun tp!708577 () Bool)

(declare-fun tp!708579 () Bool)

(assert (=> b!2245118 (= e!1436195 (and tp!708577 tp!708579))))

(declare-fun b!2245115 () Bool)

(assert (=> b!2245115 (= e!1436195 tp_is_empty!10315)))

(declare-fun b!2245116 () Bool)

(declare-fun tp!708578 () Bool)

(declare-fun tp!708581 () Bool)

(assert (=> b!2245116 (= e!1436195 (and tp!708578 tp!708581))))

(assert (=> b!2244768 (= tp!708438 e!1436195)))

(declare-fun b!2245117 () Bool)

(declare-fun tp!708580 () Bool)

(assert (=> b!2245117 (= e!1436195 tp!708580)))

(assert (= (and b!2244768 ((_ is ElementMatch!6547) (regex!4199 (rule!6497 (h!31945 tokens!456))))) b!2245115))

(assert (= (and b!2244768 ((_ is Concat!10909) (regex!4199 (rule!6497 (h!31945 tokens!456))))) b!2245116))

(assert (= (and b!2244768 ((_ is Star!6547) (regex!4199 (rule!6497 (h!31945 tokens!456))))) b!2245117))

(assert (= (and b!2244768 ((_ is Union!6547) (regex!4199 (rule!6497 (h!31945 tokens!456))))) b!2245118))

(declare-fun b_lambda!71843 () Bool)

(assert (= b_lambda!71841 (or (and b!2244779 b_free!65375 (= (toChars!5788 (transformation!4199 otherR!12)) (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456)))))) (and b!2244759 b_free!65379) (and b!2245109 b_free!65403 (= (toChars!5788 (transformation!4199 (h!31944 (t!200287 rules!1750)))) (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456)))))) (and b!2245098 b_free!65399 (= (toChars!5788 (transformation!4199 (rule!6497 (h!31945 (t!200288 tokens!456))))) (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456)))))) (and b!2244766 b_free!65387 (= (toChars!5788 (transformation!4199 (h!31944 rules!1750))) (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456)))))) (and b!2244761 b_free!65383 (= (toChars!5788 (transformation!4199 r!2363)) (toChars!5788 (transformation!4199 (rule!6497 (h!31945 tokens!456)))))) b_lambda!71843)))

(check-sat (not b!2245080) (not b!2244791) (not b!2245047) (not b!2245003) (not d!666589) (not b_next!66087) (not b!2245077) (not b_next!66101) (not d!666571) b_and!175535 (not b!2244988) (not b!2244999) (not b_lambda!71839) (not b!2245064) (not b!2245015) (not b!2245083) (not b!2245113) (not b!2245004) (not b!2245050) (not bm!135413) (not b!2245116) (not bm!135414) (not d!666521) (not b_next!66105) (not b_next!66103) (not b!2244986) (not b!2245048) (not b!2244984) (not tb!133023) (not b!2245000) (not tb!133015) b_and!175489 b_and!175541 (not d!666595) (not b!2245051) (not d!666577) (not d!666599) (not b!2245112) (not b!2245059) (not d!666587) (not b!2245009) (not b!2245057) b_and!175543 (not b!2245076) (not b_next!66083) (not b!2244815) b_and!175529 (not b_next!66079) b_and!175539 (not b_next!66091) (not b!2244792) (not b!2245110) (not b!2245117) (not b!2245082) b_and!175537 (not d!666515) (not d!666601) (not d!666603) b_and!175533 (not b!2244985) (not b!2245095) (not b_next!66077) (not b!2244797) (not b!2245118) (not b!2244790) (not b!2245114) (not b_next!66089) (not d!666495) (not b_next!66081) (not d!666499) (not d!666523) (not b!2245097) b_and!175481 tp_is_empty!10315 (not b!2245096) b_and!175531 (not b!2245108) (not b!2244812) (not d!666519) (not b_lambda!71843) (not b!2245049) b_and!175493 (not b_next!66085) (not d!666507) (not b!2245078) (not b_next!66107) (not b!2245107) (not d!666581) (not b!2245036) (not b!2245079) (not d!666579) b_and!175485 (not b!2245084))
(check-sat b_and!175489 b_and!175541 b_and!175543 (not b_next!66083) (not b_next!66077) (not b_next!66089) (not b_next!66081) b_and!175481 b_and!175531 (not b_next!66107) b_and!175485 (not b_next!66087) (not b_next!66101) b_and!175535 (not b_next!66103) (not b_next!66105) b_and!175529 (not b_next!66079) b_and!175539 (not b_next!66091) b_and!175537 b_and!175533 b_and!175493 (not b_next!66085))
