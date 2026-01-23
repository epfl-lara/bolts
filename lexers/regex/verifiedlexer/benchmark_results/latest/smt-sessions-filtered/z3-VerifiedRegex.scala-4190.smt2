; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!227532 () Bool)

(assert start!227532)

(declare-fun b!2309415 () Bool)

(declare-fun b_free!69917 () Bool)

(declare-fun b_next!70621 () Bool)

(assert (=> b!2309415 (= b_free!69917 (not b_next!70621))))

(declare-fun tp!732702 () Bool)

(declare-fun b_and!184697 () Bool)

(assert (=> b!2309415 (= tp!732702 b_and!184697)))

(declare-fun b_free!69919 () Bool)

(declare-fun b_next!70623 () Bool)

(assert (=> b!2309415 (= b_free!69919 (not b_next!70623))))

(declare-fun tp!732716 () Bool)

(declare-fun b_and!184699 () Bool)

(assert (=> b!2309415 (= tp!732716 b_and!184699)))

(declare-fun b!2309396 () Bool)

(declare-fun b_free!69921 () Bool)

(declare-fun b_next!70625 () Bool)

(assert (=> b!2309396 (= b_free!69921 (not b_next!70625))))

(declare-fun tp!732711 () Bool)

(declare-fun b_and!184701 () Bool)

(assert (=> b!2309396 (= tp!732711 b_and!184701)))

(declare-fun b_free!69923 () Bool)

(declare-fun b_next!70627 () Bool)

(assert (=> b!2309396 (= b_free!69923 (not b_next!70627))))

(declare-fun tp!732717 () Bool)

(declare-fun b_and!184703 () Bool)

(assert (=> b!2309396 (= tp!732717 b_and!184703)))

(declare-fun b!2309413 () Bool)

(declare-fun b_free!69925 () Bool)

(declare-fun b_next!70629 () Bool)

(assert (=> b!2309413 (= b_free!69925 (not b_next!70629))))

(declare-fun tp!732706 () Bool)

(declare-fun b_and!184705 () Bool)

(assert (=> b!2309413 (= tp!732706 b_and!184705)))

(declare-fun b_free!69927 () Bool)

(declare-fun b_next!70631 () Bool)

(assert (=> b!2309413 (= b_free!69927 (not b_next!70631))))

(declare-fun tp!732708 () Bool)

(declare-fun b_and!184707 () Bool)

(assert (=> b!2309413 (= tp!732708 b_and!184707)))

(declare-fun b!2309388 () Bool)

(declare-fun b_free!69929 () Bool)

(declare-fun b_next!70633 () Bool)

(assert (=> b!2309388 (= b_free!69929 (not b_next!70633))))

(declare-fun tp!732712 () Bool)

(declare-fun b_and!184709 () Bool)

(assert (=> b!2309388 (= tp!732712 b_and!184709)))

(declare-fun b_free!69931 () Bool)

(declare-fun b_next!70635 () Bool)

(assert (=> b!2309388 (= b_free!69931 (not b_next!70635))))

(declare-fun tp!732715 () Bool)

(declare-fun b_and!184711 () Bool)

(assert (=> b!2309388 (= tp!732715 b_and!184711)))

(declare-fun b!2309383 () Bool)

(declare-fun e!1480089 () Bool)

(declare-datatypes ((List!27582 0))(
  ( (Nil!27488) (Cons!27488 (h!32889 (_ BitVec 16)) (t!206916 List!27582)) )
))
(declare-datatypes ((TokenValue!4573 0))(
  ( (FloatLiteralValue!9146 (text!32456 List!27582)) (TokenValueExt!4572 (__x!18206 Int)) (Broken!22865 (value!139507 List!27582)) (Object!4666) (End!4573) (Def!4573) (Underscore!4573) (Match!4573) (Else!4573) (Error!4573) (Case!4573) (If!4573) (Extends!4573) (Abstract!4573) (Class!4573) (Val!4573) (DelimiterValue!9146 (del!4633 List!27582)) (KeywordValue!4579 (value!139508 List!27582)) (CommentValue!9146 (value!139509 List!27582)) (WhitespaceValue!9146 (value!139510 List!27582)) (IndentationValue!4573 (value!139511 List!27582)) (String!29968) (Int32!4573) (Broken!22866 (value!139512 List!27582)) (Boolean!4574) (Unit!40413) (OperatorValue!4576 (op!4633 List!27582)) (IdentifierValue!9146 (value!139513 List!27582)) (IdentifierValue!9147 (value!139514 List!27582)) (WhitespaceValue!9147 (value!139515 List!27582)) (True!9146) (False!9146) (Broken!22867 (value!139516 List!27582)) (Broken!22868 (value!139517 List!27582)) (True!9147) (RightBrace!4573) (RightBracket!4573) (Colon!4573) (Null!4573) (Comma!4573) (LeftBracket!4573) (False!9147) (LeftBrace!4573) (ImaginaryLiteralValue!4573 (text!32457 List!27582)) (StringLiteralValue!13719 (value!139518 List!27582)) (EOFValue!4573 (value!139519 List!27582)) (IdentValue!4573 (value!139520 List!27582)) (DelimiterValue!9147 (value!139521 List!27582)) (DedentValue!4573 (value!139522 List!27582)) (NewLineValue!4573 (value!139523 List!27582)) (IntegerValue!13719 (value!139524 (_ BitVec 32)) (text!32458 List!27582)) (IntegerValue!13720 (value!139525 Int) (text!32459 List!27582)) (Times!4573) (Or!4573) (Equal!4573) (Minus!4573) (Broken!22869 (value!139526 List!27582)) (And!4573) (Div!4573) (LessEqual!4573) (Mod!4573) (Concat!11332) (Not!4573) (Plus!4573) (SpaceValue!4573 (value!139527 List!27582)) (IntegerValue!13721 (value!139528 Int) (text!32460 List!27582)) (StringLiteralValue!13720 (text!32461 List!27582)) (FloatLiteralValue!9147 (text!32462 List!27582)) (BytesLiteralValue!4573 (value!139529 List!27582)) (CommentValue!9147 (value!139530 List!27582)) (StringLiteralValue!13721 (value!139531 List!27582)) (ErrorTokenValue!4573 (msg!4634 List!27582)) )
))
(declare-datatypes ((C!13664 0))(
  ( (C!13665 (val!7880 Int)) )
))
(declare-datatypes ((List!27583 0))(
  ( (Nil!27489) (Cons!27489 (h!32890 C!13664) (t!206917 List!27583)) )
))
(declare-datatypes ((IArray!17945 0))(
  ( (IArray!17946 (innerList!9030 List!27583)) )
))
(declare-datatypes ((Conc!8970 0))(
  ( (Node!8970 (left!20824 Conc!8970) (right!21154 Conc!8970) (csize!18170 Int) (cheight!9181 Int)) (Leaf!13161 (xs!11912 IArray!17945) (csize!18171 Int)) (Empty!8970) )
))
(declare-datatypes ((BalanceConc!17668 0))(
  ( (BalanceConc!17669 (c!366082 Conc!8970)) )
))
(declare-datatypes ((Regex!6759 0))(
  ( (ElementMatch!6759 (c!366083 C!13664)) (Concat!11333 (regOne!14030 Regex!6759) (regTwo!14030 Regex!6759)) (EmptyExpr!6759) (Star!6759 (reg!7088 Regex!6759)) (EmptyLang!6759) (Union!6759 (regOne!14031 Regex!6759) (regTwo!14031 Regex!6759)) )
))
(declare-datatypes ((String!29969 0))(
  ( (String!29970 (value!139532 String)) )
))
(declare-datatypes ((TokenValueInjection!8686 0))(
  ( (TokenValueInjection!8687 (toValue!6229 Int) (toChars!6088 Int)) )
))
(declare-datatypes ((Rule!8622 0))(
  ( (Rule!8623 (regex!4411 Regex!6759) (tag!4901 String!29969) (isSeparator!4411 Bool) (transformation!4411 TokenValueInjection!8686)) )
))
(declare-datatypes ((Token!8300 0))(
  ( (Token!8301 (value!139533 TokenValue!4573) (rule!6765 Rule!8622) (size!21700 Int) (originalCharacters!5181 List!27583)) )
))
(declare-datatypes ((List!27584 0))(
  ( (Nil!27490) (Cons!27490 (h!32891 Token!8300) (t!206918 List!27584)) )
))
(declare-fun tokens!456 () List!27584)

(declare-fun r!2363 () Rule!8622)

(declare-fun head!5068 (List!27584) Token!8300)

(assert (=> b!2309383 (= e!1480089 (= (rule!6765 (head!5068 tokens!456)) r!2363))))

(declare-fun b!2309384 () Bool)

(declare-fun res!987425 () Bool)

(declare-fun e!1480109 () Bool)

(assert (=> b!2309384 (=> (not res!987425) (not e!1480109))))

(declare-datatypes ((List!27585 0))(
  ( (Nil!27491) (Cons!27491 (h!32892 Rule!8622) (t!206919 List!27585)) )
))
(declare-fun rules!1750 () List!27585)

(declare-fun isEmpty!15725 (List!27585) Bool)

(assert (=> b!2309384 (= res!987425 (not (isEmpty!15725 rules!1750)))))

(declare-fun b!2309385 () Bool)

(declare-fun res!987429 () Bool)

(assert (=> b!2309385 (=> (not res!987429) (not e!1480109))))

(declare-fun otherR!12 () Rule!8622)

(declare-fun contains!4801 (List!27585 Rule!8622) Bool)

(assert (=> b!2309385 (= res!987429 (contains!4801 rules!1750 otherR!12))))

(declare-fun b!2309386 () Bool)

(declare-fun e!1480085 () Bool)

(declare-fun e!1480102 () Bool)

(assert (=> b!2309386 (= e!1480085 e!1480102)))

(declare-fun res!987424 () Bool)

(assert (=> b!2309386 (=> res!987424 e!1480102)))

(declare-fun lt!856778 () Int)

(declare-fun lt!856771 () Int)

(assert (=> b!2309386 (= res!987424 (< lt!856778 lt!856771))))

(declare-fun otherP!12 () List!27583)

(declare-fun matchR!3016 (Regex!6759 List!27583) Bool)

(assert (=> b!2309386 (not (matchR!3016 (regex!4411 otherR!12) otherP!12))))

(declare-datatypes ((LexerInterface!4008 0))(
  ( (LexerInterfaceExt!4005 (__x!18207 Int)) (Lexer!4006) )
))
(declare-fun thiss!16613 () LexerInterface!4008)

(declare-fun input!1722 () List!27583)

(declare-fun lt!856794 () List!27583)

(declare-datatypes ((Unit!40414 0))(
  ( (Unit!40415) )
))
(declare-fun lt!856777 () Unit!40414)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!288 (LexerInterface!4008 List!27585 Rule!8622 List!27583 List!27583 List!27583 Rule!8622) Unit!40414)

(assert (=> b!2309386 (= lt!856777 (lemmaMaxPrefixOutputsMaxPrefix!288 thiss!16613 rules!1750 r!2363 lt!856794 input!1722 otherP!12 otherR!12))))

(declare-fun e!1480112 () Bool)

(declare-fun e!1480111 () Bool)

(declare-fun tp!732705 () Bool)

(declare-fun b!2309387 () Bool)

(declare-fun inv!37134 (String!29969) Bool)

(declare-fun inv!37137 (TokenValueInjection!8686) Bool)

(assert (=> b!2309387 (= e!1480112 (and tp!732705 (inv!37134 (tag!4901 (h!32892 rules!1750))) (inv!37137 (transformation!4411 (h!32892 rules!1750))) e!1480111))))

(declare-fun e!1480087 () Bool)

(assert (=> b!2309388 (= e!1480087 (and tp!732712 tp!732715))))

(declare-fun b!2309389 () Bool)

(declare-fun res!987414 () Bool)

(declare-fun e!1480104 () Bool)

(assert (=> b!2309389 (=> (not res!987414) (not e!1480104))))

(declare-fun isPrefix!2401 (List!27583 List!27583) Bool)

(assert (=> b!2309389 (= res!987414 (isPrefix!2401 otherP!12 input!1722))))

(declare-fun b!2309390 () Bool)

(declare-fun e!1480103 () Bool)

(declare-fun tp!732704 () Bool)

(declare-fun e!1480116 () Bool)

(assert (=> b!2309390 (= e!1480116 (and tp!732704 (inv!37134 (tag!4901 otherR!12)) (inv!37137 (transformation!4411 otherR!12)) e!1480103))))

(declare-fun b!2309392 () Bool)

(declare-fun e!1480086 () Bool)

(declare-fun e!1480117 () Bool)

(assert (=> b!2309392 (= e!1480086 e!1480117)))

(declare-fun res!987435 () Bool)

(assert (=> b!2309392 (=> res!987435 e!1480117)))

(assert (=> b!2309392 (= res!987435 (not (isPrefix!2401 lt!856794 input!1722)))))

(declare-datatypes ((tuple2!27422 0))(
  ( (tuple2!27423 (_1!16221 Token!8300) (_2!16221 List!27583)) )
))
(declare-datatypes ((Option!5411 0))(
  ( (None!5410) (Some!5410 (v!30520 tuple2!27422)) )
))
(declare-fun lt!856791 () Option!5411)

(declare-fun lt!856781 () Token!8300)

(declare-fun lt!856790 () tuple2!27422)

(assert (=> b!2309392 (= lt!856791 (Some!5410 (tuple2!27423 lt!856781 (_2!16221 lt!856790))))))

(declare-fun maxPrefixOneRule!1434 (LexerInterface!4008 Rule!8622 List!27583) Option!5411)

(assert (=> b!2309392 (= lt!856791 (maxPrefixOneRule!1434 thiss!16613 r!2363 input!1722))))

(declare-fun lt!856770 () BalanceConc!17668)

(declare-fun lt!856780 () Int)

(declare-fun apply!6673 (TokenValueInjection!8686 BalanceConc!17668) TokenValue!4573)

(assert (=> b!2309392 (= lt!856781 (Token!8301 (apply!6673 (transformation!4411 r!2363) lt!856770) r!2363 lt!856780 lt!856794))))

(declare-fun seqFromList!3115 (List!27583) BalanceConc!17668)

(assert (=> b!2309392 (= lt!856770 (seqFromList!3115 lt!856794))))

(declare-fun lt!856779 () Unit!40414)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!607 (LexerInterface!4008 List!27585 List!27583 List!27583 List!27583 Rule!8622) Unit!40414)

(assert (=> b!2309392 (= lt!856779 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!607 thiss!16613 rules!1750 lt!856794 input!1722 (_2!16221 lt!856790) r!2363))))

(declare-fun b!2309393 () Bool)

(declare-fun e!1480110 () Bool)

(declare-fun tp_is_empty!10739 () Bool)

(declare-fun tp!732714 () Bool)

(assert (=> b!2309393 (= e!1480110 (and tp_is_empty!10739 tp!732714))))

(declare-fun b!2309394 () Bool)

(declare-fun e!1480107 () Bool)

(declare-fun list!10860 (BalanceConc!17668) List!27583)

(declare-fun charsOf!2799 (Token!8300) BalanceConc!17668)

(assert (=> b!2309394 (= e!1480107 (not (matchR!3016 (regex!4411 r!2363) (list!10860 (charsOf!2799 (head!5068 tokens!456))))))))

(declare-fun b!2309395 () Bool)

(declare-fun res!987421 () Bool)

(assert (=> b!2309395 (=> (not res!987421) (not e!1480104))))

(assert (=> b!2309395 (= res!987421 (not (= r!2363 otherR!12)))))

(declare-fun e!1480093 () Bool)

(assert (=> b!2309396 (= e!1480093 (and tp!732711 tp!732717))))

(declare-fun b!2309397 () Bool)

(declare-fun e!1480105 () Bool)

(declare-fun lt!856792 () Int)

(declare-fun size!21701 (BalanceConc!17668) Int)

(assert (=> b!2309397 (= e!1480105 (> lt!856792 (size!21701 (charsOf!2799 (head!5068 tokens!456)))))))

(declare-fun e!1480088 () Bool)

(declare-fun tp!732710 () Bool)

(declare-fun e!1480099 () Bool)

(declare-fun b!2309398 () Bool)

(declare-fun inv!37138 (Token!8300) Bool)

(assert (=> b!2309398 (= e!1480099 (and (inv!37138 (h!32891 tokens!456)) e!1480088 tp!732710))))

(declare-fun e!1480098 () Bool)

(declare-fun b!2309399 () Bool)

(declare-fun tp!732700 () Bool)

(assert (=> b!2309399 (= e!1480098 (and tp!732700 (inv!37134 (tag!4901 (rule!6765 (h!32891 tokens!456)))) (inv!37137 (transformation!4411 (rule!6765 (h!32891 tokens!456)))) e!1480093))))

(declare-fun b!2309400 () Bool)

(declare-fun res!987432 () Bool)

(assert (=> b!2309400 (=> res!987432 e!1480117)))

(assert (=> b!2309400 (= res!987432 (not (matchR!3016 (regex!4411 r!2363) lt!856794)))))

(declare-fun b!2309401 () Bool)

(declare-fun e!1480108 () Bool)

(declare-fun e!1480100 () Bool)

(assert (=> b!2309401 (= e!1480108 e!1480100)))

(declare-fun res!987415 () Bool)

(assert (=> b!2309401 (=> res!987415 e!1480100)))

(assert (=> b!2309401 (= res!987415 (> lt!856771 lt!856778))))

(declare-fun getIndex!424 (List!27585 Rule!8622) Int)

(assert (=> b!2309401 (= lt!856778 (getIndex!424 rules!1750 otherR!12))))

(assert (=> b!2309401 (= lt!856771 (getIndex!424 rules!1750 r!2363))))

(declare-fun ruleValid!1501 (LexerInterface!4008 Rule!8622) Bool)

(assert (=> b!2309401 (ruleValid!1501 thiss!16613 otherR!12)))

(declare-fun lt!856787 () Unit!40414)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!906 (LexerInterface!4008 Rule!8622 List!27585) Unit!40414)

(assert (=> b!2309401 (= lt!856787 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!906 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2309402 () Bool)

(declare-fun e!1480113 () Bool)

(assert (=> b!2309402 (= e!1480113 e!1480086)))

(declare-fun res!987426 () Bool)

(assert (=> b!2309402 (=> res!987426 e!1480086)))

(assert (=> b!2309402 (= res!987426 (<= lt!856792 lt!856780))))

(declare-fun size!21702 (List!27583) Int)

(assert (=> b!2309402 (= lt!856780 (size!21702 lt!856794))))

(assert (=> b!2309402 (= lt!856792 (size!21702 otherP!12))))

(declare-fun lt!856789 () List!27583)

(assert (=> b!2309402 (= (_2!16221 lt!856790) lt!856789)))

(declare-fun lt!856772 () Unit!40414)

(declare-fun lemmaSamePrefixThenSameSuffix!1082 (List!27583 List!27583 List!27583 List!27583 List!27583) Unit!40414)

(assert (=> b!2309402 (= lt!856772 (lemmaSamePrefixThenSameSuffix!1082 lt!856794 (_2!16221 lt!856790) lt!856794 lt!856789 input!1722))))

(declare-fun getSuffix!1180 (List!27583 List!27583) List!27583)

(assert (=> b!2309402 (= lt!856789 (getSuffix!1180 input!1722 lt!856794))))

(declare-fun ++!6733 (List!27583 List!27583) List!27583)

(assert (=> b!2309402 (isPrefix!2401 lt!856794 (++!6733 lt!856794 (_2!16221 lt!856790)))))

(declare-fun lt!856774 () Unit!40414)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1594 (List!27583 List!27583) Unit!40414)

(assert (=> b!2309402 (= lt!856774 (lemmaConcatTwoListThenFirstIsPrefix!1594 lt!856794 (_2!16221 lt!856790)))))

(assert (=> b!2309402 (= lt!856794 (list!10860 (charsOf!2799 (h!32891 tokens!456))))))

(declare-fun lt!856793 () Option!5411)

(declare-fun get!8288 (Option!5411) tuple2!27422)

(assert (=> b!2309402 (= lt!856790 (get!8288 lt!856793))))

(declare-fun maxPrefix!2264 (LexerInterface!4008 List!27585 List!27583) Option!5411)

(assert (=> b!2309402 (= lt!856793 (maxPrefix!2264 thiss!16613 rules!1750 input!1722))))

(declare-fun tp!732703 () Bool)

(declare-fun b!2309403 () Bool)

(declare-fun inv!21 (TokenValue!4573) Bool)

(assert (=> b!2309403 (= e!1480088 (and (inv!21 (value!139533 (h!32891 tokens!456))) e!1480098 tp!732703))))

(declare-fun b!2309404 () Bool)

(declare-fun e!1480095 () Unit!40414)

(declare-fun Unit!40416 () Unit!40414)

(assert (=> b!2309404 (= e!1480095 Unit!40416)))

(declare-fun e!1480096 () Bool)

(declare-fun b!2309405 () Bool)

(declare-fun tp!732707 () Bool)

(assert (=> b!2309405 (= e!1480096 (and tp!732707 (inv!37134 (tag!4901 r!2363)) (inv!37137 (transformation!4411 r!2363)) e!1480087))))

(declare-fun b!2309406 () Bool)

(declare-fun e!1480084 () Bool)

(declare-fun tp!732701 () Bool)

(assert (=> b!2309406 (= e!1480084 (and tp_is_empty!10739 tp!732701))))

(declare-fun b!2309407 () Bool)

(declare-fun e!1480114 () Bool)

(declare-fun tp!732709 () Bool)

(assert (=> b!2309407 (= e!1480114 (and e!1480112 tp!732709))))

(declare-fun b!2309408 () Bool)

(assert (=> b!2309408 (= e!1480117 e!1480085)))

(declare-fun res!987433 () Bool)

(assert (=> b!2309408 (=> res!987433 e!1480085)))

(declare-fun lt!856783 () Option!5411)

(assert (=> b!2309408 (= res!987433 (or (not (= lt!856791 lt!856783)) (not (= lt!856793 lt!856783))))))

(assert (=> b!2309408 (= lt!856783 (Some!5410 (tuple2!27423 lt!856781 lt!856789)))))

(assert (=> b!2309408 (isPrefix!2401 input!1722 input!1722)))

(declare-fun lt!856775 () Unit!40414)

(declare-fun lemmaIsPrefixRefl!1527 (List!27583 List!27583) Unit!40414)

(assert (=> b!2309408 (= lt!856775 (lemmaIsPrefixRefl!1527 input!1722 input!1722))))

(declare-fun lt!856784 () Unit!40414)

(declare-fun lemmaSemiInverse!1090 (TokenValueInjection!8686 BalanceConc!17668) Unit!40414)

(assert (=> b!2309408 (= lt!856784 (lemmaSemiInverse!1090 (transformation!4411 r!2363) lt!856770))))

(declare-fun b!2309409 () Bool)

(assert (=> b!2309409 (= e!1480104 (not e!1480108))))

(declare-fun res!987431 () Bool)

(assert (=> b!2309409 (=> res!987431 e!1480108)))

(assert (=> b!2309409 (= res!987431 e!1480107)))

(declare-fun res!987430 () Bool)

(assert (=> b!2309409 (=> (not res!987430) (not e!1480107))))

(declare-fun lt!856782 () Bool)

(assert (=> b!2309409 (= res!987430 (not lt!856782))))

(assert (=> b!2309409 (ruleValid!1501 thiss!16613 r!2363)))

(declare-fun lt!856788 () Unit!40414)

(assert (=> b!2309409 (= lt!856788 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!906 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2309410 () Bool)

(declare-fun Unit!40417 () Unit!40414)

(assert (=> b!2309410 (= e!1480095 Unit!40417)))

(declare-fun lt!856785 () Unit!40414)

(declare-fun lemmaSameIndexThenSameElement!204 (List!27585 Rule!8622 Rule!8622) Unit!40414)

(assert (=> b!2309410 (= lt!856785 (lemmaSameIndexThenSameElement!204 rules!1750 r!2363 otherR!12))))

(assert (=> b!2309410 false))

(declare-fun b!2309411 () Bool)

(assert (=> b!2309411 (= e!1480102 true)))

(declare-fun lt!856776 () Bool)

(assert (=> b!2309411 (= lt!856776 e!1480105)))

(declare-fun res!987416 () Bool)

(assert (=> b!2309411 (=> res!987416 e!1480105)))

(declare-fun size!21703 (List!27584) Int)

(assert (=> b!2309411 (= res!987416 (<= (size!21703 tokens!456) 0))))

(declare-fun b!2309412 () Bool)

(assert (=> b!2309412 (= e!1480100 e!1480113)))

(declare-fun res!987428 () Bool)

(assert (=> b!2309412 (=> res!987428 e!1480113)))

(get-info :version)

(assert (=> b!2309412 (= res!987428 ((_ is Nil!27490) tokens!456))))

(declare-fun lt!856786 () Unit!40414)

(assert (=> b!2309412 (= lt!856786 e!1480095)))

(declare-fun c!366081 () Bool)

(assert (=> b!2309412 (= c!366081 (= lt!856771 lt!856778))))

(assert (=> b!2309413 (= e!1480103 (and tp!732706 tp!732708))))

(declare-fun b!2309414 () Bool)

(declare-fun e!1480106 () Bool)

(assert (=> b!2309414 (= e!1480106 e!1480104)))

(declare-fun res!987427 () Bool)

(assert (=> b!2309414 (=> (not res!987427) (not e!1480104))))

(declare-fun e!1480115 () Bool)

(assert (=> b!2309414 (= res!987427 e!1480115)))

(declare-fun res!987419 () Bool)

(assert (=> b!2309414 (=> res!987419 e!1480115)))

(assert (=> b!2309414 (= res!987419 lt!856782)))

(declare-fun isEmpty!15726 (List!27584) Bool)

(assert (=> b!2309414 (= lt!856782 (isEmpty!15726 tokens!456))))

(assert (=> b!2309415 (= e!1480111 (and tp!732702 tp!732716))))

(declare-fun b!2309416 () Bool)

(declare-fun res!987418 () Bool)

(assert (=> b!2309416 (=> (not res!987418) (not e!1480104))))

(assert (=> b!2309416 (= res!987418 e!1480089)))

(declare-fun res!987420 () Bool)

(assert (=> b!2309416 (=> res!987420 e!1480089)))

(assert (=> b!2309416 (= res!987420 lt!856782)))

(declare-fun b!2309417 () Bool)

(assert (=> b!2309417 (= e!1480109 e!1480106)))

(declare-fun res!987423 () Bool)

(assert (=> b!2309417 (=> (not res!987423) (not e!1480106))))

(declare-datatypes ((IArray!17947 0))(
  ( (IArray!17948 (innerList!9031 List!27584)) )
))
(declare-datatypes ((Conc!8971 0))(
  ( (Node!8971 (left!20825 Conc!8971) (right!21155 Conc!8971) (csize!18172 Int) (cheight!9182 Int)) (Leaf!13162 (xs!11913 IArray!17947) (csize!18173 Int)) (Empty!8971) )
))
(declare-datatypes ((BalanceConc!17670 0))(
  ( (BalanceConc!17671 (c!366084 Conc!8971)) )
))
(declare-datatypes ((tuple2!27424 0))(
  ( (tuple2!27425 (_1!16222 BalanceConc!17670) (_2!16222 BalanceConc!17668)) )
))
(declare-fun lt!856773 () tuple2!27424)

(declare-fun suffix!886 () List!27583)

(declare-datatypes ((tuple2!27426 0))(
  ( (tuple2!27427 (_1!16223 List!27584) (_2!16223 List!27583)) )
))
(declare-fun list!10861 (BalanceConc!17670) List!27584)

(assert (=> b!2309417 (= res!987423 (= (tuple2!27427 (list!10861 (_1!16222 lt!856773)) (list!10860 (_2!16222 lt!856773))) (tuple2!27427 tokens!456 suffix!886)))))

(declare-fun lex!1847 (LexerInterface!4008 List!27585 BalanceConc!17668) tuple2!27424)

(assert (=> b!2309417 (= lt!856773 (lex!1847 thiss!16613 rules!1750 (seqFromList!3115 input!1722)))))

(declare-fun b!2309418 () Bool)

(assert (=> b!2309418 (= e!1480115 (<= (size!21701 (charsOf!2799 (head!5068 tokens!456))) (size!21702 otherP!12)))))

(declare-fun res!987422 () Bool)

(assert (=> start!227532 (=> (not res!987422) (not e!1480109))))

(assert (=> start!227532 (= res!987422 ((_ is Lexer!4006) thiss!16613))))

(assert (=> start!227532 e!1480109))

(assert (=> start!227532 true))

(assert (=> start!227532 e!1480084))

(assert (=> start!227532 e!1480116))

(declare-fun e!1480092 () Bool)

(assert (=> start!227532 e!1480092))

(assert (=> start!227532 e!1480110))

(assert (=> start!227532 e!1480114))

(assert (=> start!227532 e!1480096))

(assert (=> start!227532 e!1480099))

(declare-fun b!2309391 () Bool)

(declare-fun res!987434 () Bool)

(assert (=> b!2309391 (=> (not res!987434) (not e!1480109))))

(assert (=> b!2309391 (= res!987434 (contains!4801 rules!1750 r!2363))))

(declare-fun b!2309419 () Bool)

(declare-fun tp!732713 () Bool)

(assert (=> b!2309419 (= e!1480092 (and tp_is_empty!10739 tp!732713))))

(declare-fun b!2309420 () Bool)

(declare-fun res!987417 () Bool)

(assert (=> b!2309420 (=> (not res!987417) (not e!1480109))))

(declare-fun rulesInvariant!3510 (LexerInterface!4008 List!27585) Bool)

(assert (=> b!2309420 (= res!987417 (rulesInvariant!3510 thiss!16613 rules!1750))))

(assert (= (and start!227532 res!987422) b!2309384))

(assert (= (and b!2309384 res!987425) b!2309420))

(assert (= (and b!2309420 res!987417) b!2309391))

(assert (= (and b!2309391 res!987434) b!2309385))

(assert (= (and b!2309385 res!987429) b!2309417))

(assert (= (and b!2309417 res!987423) b!2309414))

(assert (= (and b!2309414 (not res!987419)) b!2309418))

(assert (= (and b!2309414 res!987427) b!2309416))

(assert (= (and b!2309416 (not res!987420)) b!2309383))

(assert (= (and b!2309416 res!987418) b!2309389))

(assert (= (and b!2309389 res!987414) b!2309395))

(assert (= (and b!2309395 res!987421) b!2309409))

(assert (= (and b!2309409 res!987430) b!2309394))

(assert (= (and b!2309409 (not res!987431)) b!2309401))

(assert (= (and b!2309401 (not res!987415)) b!2309412))

(assert (= (and b!2309412 c!366081) b!2309410))

(assert (= (and b!2309412 (not c!366081)) b!2309404))

(assert (= (and b!2309412 (not res!987428)) b!2309402))

(assert (= (and b!2309402 (not res!987426)) b!2309392))

(assert (= (and b!2309392 (not res!987435)) b!2309400))

(assert (= (and b!2309400 (not res!987432)) b!2309408))

(assert (= (and b!2309408 (not res!987433)) b!2309386))

(assert (= (and b!2309386 (not res!987424)) b!2309411))

(assert (= (and b!2309411 (not res!987416)) b!2309397))

(assert (= (and start!227532 ((_ is Cons!27489) input!1722)) b!2309406))

(assert (= b!2309390 b!2309413))

(assert (= start!227532 b!2309390))

(assert (= (and start!227532 ((_ is Cons!27489) suffix!886)) b!2309419))

(assert (= (and start!227532 ((_ is Cons!27489) otherP!12)) b!2309393))

(assert (= b!2309387 b!2309415))

(assert (= b!2309407 b!2309387))

(assert (= (and start!227532 ((_ is Cons!27491) rules!1750)) b!2309407))

(assert (= b!2309405 b!2309388))

(assert (= start!227532 b!2309405))

(assert (= b!2309399 b!2309396))

(assert (= b!2309403 b!2309399))

(assert (= b!2309398 b!2309403))

(assert (= (and start!227532 ((_ is Cons!27490) tokens!456)) b!2309398))

(declare-fun m!2736657 () Bool)

(assert (=> b!2309401 m!2736657))

(declare-fun m!2736659 () Bool)

(assert (=> b!2309401 m!2736659))

(declare-fun m!2736661 () Bool)

(assert (=> b!2309401 m!2736661))

(declare-fun m!2736663 () Bool)

(assert (=> b!2309401 m!2736663))

(declare-fun m!2736665 () Bool)

(assert (=> b!2309402 m!2736665))

(declare-fun m!2736667 () Bool)

(assert (=> b!2309402 m!2736667))

(declare-fun m!2736669 () Bool)

(assert (=> b!2309402 m!2736669))

(declare-fun m!2736671 () Bool)

(assert (=> b!2309402 m!2736671))

(declare-fun m!2736673 () Bool)

(assert (=> b!2309402 m!2736673))

(declare-fun m!2736675 () Bool)

(assert (=> b!2309402 m!2736675))

(declare-fun m!2736677 () Bool)

(assert (=> b!2309402 m!2736677))

(assert (=> b!2309402 m!2736669))

(declare-fun m!2736679 () Bool)

(assert (=> b!2309402 m!2736679))

(declare-fun m!2736681 () Bool)

(assert (=> b!2309402 m!2736681))

(declare-fun m!2736683 () Bool)

(assert (=> b!2309402 m!2736683))

(assert (=> b!2309402 m!2736679))

(declare-fun m!2736685 () Bool)

(assert (=> b!2309402 m!2736685))

(declare-fun m!2736687 () Bool)

(assert (=> b!2309390 m!2736687))

(declare-fun m!2736689 () Bool)

(assert (=> b!2309390 m!2736689))

(declare-fun m!2736691 () Bool)

(assert (=> b!2309405 m!2736691))

(declare-fun m!2736693 () Bool)

(assert (=> b!2309405 m!2736693))

(declare-fun m!2736695 () Bool)

(assert (=> b!2309389 m!2736695))

(declare-fun m!2736697 () Bool)

(assert (=> b!2309408 m!2736697))

(declare-fun m!2736699 () Bool)

(assert (=> b!2309408 m!2736699))

(declare-fun m!2736701 () Bool)

(assert (=> b!2309408 m!2736701))

(declare-fun m!2736703 () Bool)

(assert (=> b!2309398 m!2736703))

(declare-fun m!2736705 () Bool)

(assert (=> b!2309392 m!2736705))

(declare-fun m!2736707 () Bool)

(assert (=> b!2309392 m!2736707))

(declare-fun m!2736709 () Bool)

(assert (=> b!2309392 m!2736709))

(declare-fun m!2736711 () Bool)

(assert (=> b!2309392 m!2736711))

(declare-fun m!2736713 () Bool)

(assert (=> b!2309392 m!2736713))

(declare-fun m!2736715 () Bool)

(assert (=> b!2309400 m!2736715))

(declare-fun m!2736717 () Bool)

(assert (=> b!2309410 m!2736717))

(declare-fun m!2736719 () Bool)

(assert (=> b!2309403 m!2736719))

(declare-fun m!2736721 () Bool)

(assert (=> b!2309394 m!2736721))

(assert (=> b!2309394 m!2736721))

(declare-fun m!2736723 () Bool)

(assert (=> b!2309394 m!2736723))

(assert (=> b!2309394 m!2736723))

(declare-fun m!2736725 () Bool)

(assert (=> b!2309394 m!2736725))

(assert (=> b!2309394 m!2736725))

(declare-fun m!2736727 () Bool)

(assert (=> b!2309394 m!2736727))

(declare-fun m!2736729 () Bool)

(assert (=> b!2309399 m!2736729))

(declare-fun m!2736731 () Bool)

(assert (=> b!2309399 m!2736731))

(declare-fun m!2736733 () Bool)

(assert (=> b!2309409 m!2736733))

(declare-fun m!2736735 () Bool)

(assert (=> b!2309409 m!2736735))

(declare-fun m!2736737 () Bool)

(assert (=> b!2309384 m!2736737))

(declare-fun m!2736739 () Bool)

(assert (=> b!2309420 m!2736739))

(declare-fun m!2736741 () Bool)

(assert (=> b!2309385 m!2736741))

(assert (=> b!2309418 m!2736721))

(assert (=> b!2309418 m!2736721))

(assert (=> b!2309418 m!2736723))

(assert (=> b!2309418 m!2736723))

(declare-fun m!2736743 () Bool)

(assert (=> b!2309418 m!2736743))

(assert (=> b!2309418 m!2736675))

(declare-fun m!2736745 () Bool)

(assert (=> b!2309417 m!2736745))

(declare-fun m!2736747 () Bool)

(assert (=> b!2309417 m!2736747))

(declare-fun m!2736749 () Bool)

(assert (=> b!2309417 m!2736749))

(assert (=> b!2309417 m!2736749))

(declare-fun m!2736751 () Bool)

(assert (=> b!2309417 m!2736751))

(declare-fun m!2736753 () Bool)

(assert (=> b!2309414 m!2736753))

(declare-fun m!2736755 () Bool)

(assert (=> b!2309411 m!2736755))

(assert (=> b!2309383 m!2736721))

(declare-fun m!2736757 () Bool)

(assert (=> b!2309391 m!2736757))

(declare-fun m!2736759 () Bool)

(assert (=> b!2309386 m!2736759))

(declare-fun m!2736761 () Bool)

(assert (=> b!2309386 m!2736761))

(assert (=> b!2309397 m!2736721))

(assert (=> b!2309397 m!2736721))

(assert (=> b!2309397 m!2736723))

(assert (=> b!2309397 m!2736723))

(assert (=> b!2309397 m!2736743))

(declare-fun m!2736763 () Bool)

(assert (=> b!2309387 m!2736763))

(declare-fun m!2736765 () Bool)

(assert (=> b!2309387 m!2736765))

(check-sat (not b!2309410) tp_is_empty!10739 (not b!2309400) (not b!2309384) (not b!2309414) b_and!184701 (not b!2309398) (not b!2309408) (not b!2309399) (not b!2309406) (not b!2309385) (not b_next!70627) (not b!2309419) (not b_next!70635) b_and!184707 (not b_next!70629) (not b!2309383) (not b!2309420) b_and!184699 (not b!2309411) (not b!2309409) (not b!2309401) (not b_next!70625) (not b!2309403) (not b!2309405) (not b!2309387) (not b!2309391) (not b!2309407) (not b!2309394) (not b!2309418) (not b!2309397) (not b!2309417) (not b!2309392) (not b!2309386) (not b_next!70631) (not b!2309390) (not b!2309402) b_and!184703 b_and!184697 b_and!184709 (not b_next!70633) (not b!2309389) (not b_next!70621) b_and!184711 (not b!2309393) (not b_next!70623) b_and!184705)
(check-sat (not b_next!70627) (not b_next!70629) b_and!184699 (not b_next!70625) (not b_next!70631) b_and!184703 b_and!184701 b_and!184711 (not b_next!70635) b_and!184707 b_and!184697 b_and!184709 (not b_next!70633) (not b_next!70621) (not b_next!70623) b_and!184705)
