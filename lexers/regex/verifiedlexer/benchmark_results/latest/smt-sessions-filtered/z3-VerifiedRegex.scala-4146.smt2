; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!223136 () Bool)

(assert start!223136)

(declare-fun b!2278583 () Bool)

(declare-fun b_free!67949 () Bool)

(declare-fun b_next!68653 () Bool)

(assert (=> b!2278583 (= b_free!67949 (not b_next!68653))))

(declare-fun tp!721939 () Bool)

(declare-fun b_and!179825 () Bool)

(assert (=> b!2278583 (= tp!721939 b_and!179825)))

(declare-fun b_free!67951 () Bool)

(declare-fun b_next!68655 () Bool)

(assert (=> b!2278583 (= b_free!67951 (not b_next!68655))))

(declare-fun tp!721934 () Bool)

(declare-fun b_and!179827 () Bool)

(assert (=> b!2278583 (= tp!721934 b_and!179827)))

(declare-fun b!2278558 () Bool)

(declare-fun b_free!67953 () Bool)

(declare-fun b_next!68657 () Bool)

(assert (=> b!2278558 (= b_free!67953 (not b_next!68657))))

(declare-fun tp!721935 () Bool)

(declare-fun b_and!179829 () Bool)

(assert (=> b!2278558 (= tp!721935 b_and!179829)))

(declare-fun b_free!67955 () Bool)

(declare-fun b_next!68659 () Bool)

(assert (=> b!2278558 (= b_free!67955 (not b_next!68659))))

(declare-fun tp!721931 () Bool)

(declare-fun b_and!179831 () Bool)

(assert (=> b!2278558 (= tp!721931 b_and!179831)))

(declare-fun b!2278575 () Bool)

(declare-fun b_free!67957 () Bool)

(declare-fun b_next!68661 () Bool)

(assert (=> b!2278575 (= b_free!67957 (not b_next!68661))))

(declare-fun tp!721940 () Bool)

(declare-fun b_and!179833 () Bool)

(assert (=> b!2278575 (= tp!721940 b_and!179833)))

(declare-fun b_free!67959 () Bool)

(declare-fun b_next!68663 () Bool)

(assert (=> b!2278575 (= b_free!67959 (not b_next!68663))))

(declare-fun tp!721928 () Bool)

(declare-fun b_and!179835 () Bool)

(assert (=> b!2278575 (= tp!721928 b_and!179835)))

(declare-fun b!2278586 () Bool)

(declare-fun b_free!67961 () Bool)

(declare-fun b_next!68665 () Bool)

(assert (=> b!2278586 (= b_free!67961 (not b_next!68665))))

(declare-fun tp!721927 () Bool)

(declare-fun b_and!179837 () Bool)

(assert (=> b!2278586 (= tp!721927 b_and!179837)))

(declare-fun b_free!67963 () Bool)

(declare-fun b_next!68667 () Bool)

(assert (=> b!2278586 (= b_free!67963 (not b_next!68667))))

(declare-fun tp!721943 () Bool)

(declare-fun b_and!179839 () Bool)

(assert (=> b!2278586 (= tp!721943 b_and!179839)))

(declare-fun b!2278556 () Bool)

(declare-fun e!1459427 () Bool)

(declare-fun e!1459425 () Bool)

(assert (=> b!2278556 (= e!1459427 (not e!1459425))))

(declare-fun res!973777 () Bool)

(assert (=> b!2278556 (=> res!973777 e!1459425)))

(declare-fun e!1459435 () Bool)

(assert (=> b!2278556 (= res!973777 e!1459435)))

(declare-fun res!973771 () Bool)

(assert (=> b!2278556 (=> (not res!973771) (not e!1459435))))

(declare-fun lt!845962 () Bool)

(assert (=> b!2278556 (= res!973771 (not lt!845962))))

(declare-datatypes ((LexerInterface!3920 0))(
  ( (LexerInterfaceExt!3917 (__x!18030 Int)) (Lexer!3918) )
))
(declare-fun thiss!16613 () LexerInterface!3920)

(declare-datatypes ((List!27179 0))(
  ( (Nil!27085) (Cons!27085 (h!32486 (_ BitVec 16)) (t!203339 List!27179)) )
))
(declare-datatypes ((TokenValue!4485 0))(
  ( (FloatLiteralValue!8970 (text!31840 List!27179)) (TokenValueExt!4484 (__x!18031 Int)) (Broken!22425 (value!136999 List!27179)) (Object!4578) (End!4485) (Def!4485) (Underscore!4485) (Match!4485) (Else!4485) (Error!4485) (Case!4485) (If!4485) (Extends!4485) (Abstract!4485) (Class!4485) (Val!4485) (DelimiterValue!8970 (del!4545 List!27179)) (KeywordValue!4491 (value!137000 List!27179)) (CommentValue!8970 (value!137001 List!27179)) (WhitespaceValue!8970 (value!137002 List!27179)) (IndentationValue!4485 (value!137003 List!27179)) (String!29528) (Int32!4485) (Broken!22426 (value!137004 List!27179)) (Boolean!4486) (Unit!40023) (OperatorValue!4488 (op!4545 List!27179)) (IdentifierValue!8970 (value!137005 List!27179)) (IdentifierValue!8971 (value!137006 List!27179)) (WhitespaceValue!8971 (value!137007 List!27179)) (True!8970) (False!8970) (Broken!22427 (value!137008 List!27179)) (Broken!22428 (value!137009 List!27179)) (True!8971) (RightBrace!4485) (RightBracket!4485) (Colon!4485) (Null!4485) (Comma!4485) (LeftBracket!4485) (False!8971) (LeftBrace!4485) (ImaginaryLiteralValue!4485 (text!31841 List!27179)) (StringLiteralValue!13455 (value!137010 List!27179)) (EOFValue!4485 (value!137011 List!27179)) (IdentValue!4485 (value!137012 List!27179)) (DelimiterValue!8971 (value!137013 List!27179)) (DedentValue!4485 (value!137014 List!27179)) (NewLineValue!4485 (value!137015 List!27179)) (IntegerValue!13455 (value!137016 (_ BitVec 32)) (text!31842 List!27179)) (IntegerValue!13456 (value!137017 Int) (text!31843 List!27179)) (Times!4485) (Or!4485) (Equal!4485) (Minus!4485) (Broken!22429 (value!137018 List!27179)) (And!4485) (Div!4485) (LessEqual!4485) (Mod!4485) (Concat!11156) (Not!4485) (Plus!4485) (SpaceValue!4485 (value!137019 List!27179)) (IntegerValue!13457 (value!137020 Int) (text!31844 List!27179)) (StringLiteralValue!13456 (text!31845 List!27179)) (FloatLiteralValue!8971 (text!31846 List!27179)) (BytesLiteralValue!4485 (value!137021 List!27179)) (CommentValue!8971 (value!137022 List!27179)) (StringLiteralValue!13457 (value!137023 List!27179)) (ErrorTokenValue!4485 (msg!4546 List!27179)) )
))
(declare-datatypes ((C!13488 0))(
  ( (C!13489 (val!7792 Int)) )
))
(declare-datatypes ((List!27180 0))(
  ( (Nil!27086) (Cons!27086 (h!32487 C!13488) (t!203340 List!27180)) )
))
(declare-datatypes ((IArray!17593 0))(
  ( (IArray!17594 (innerList!8854 List!27180)) )
))
(declare-datatypes ((Conc!8794 0))(
  ( (Node!8794 (left!20552 Conc!8794) (right!20882 Conc!8794) (csize!17818 Int) (cheight!9005 Int)) (Leaf!12941 (xs!11736 IArray!17593) (csize!17819 Int)) (Empty!8794) )
))
(declare-datatypes ((BalanceConc!17316 0))(
  ( (BalanceConc!17317 (c!361702 Conc!8794)) )
))
(declare-datatypes ((String!29529 0))(
  ( (String!29530 (value!137024 String)) )
))
(declare-datatypes ((Regex!6671 0))(
  ( (ElementMatch!6671 (c!361703 C!13488)) (Concat!11157 (regOne!13854 Regex!6671) (regTwo!13854 Regex!6671)) (EmptyExpr!6671) (Star!6671 (reg!7000 Regex!6671)) (EmptyLang!6671) (Union!6671 (regOne!13855 Regex!6671) (regTwo!13855 Regex!6671)) )
))
(declare-datatypes ((TokenValueInjection!8510 0))(
  ( (TokenValueInjection!8511 (toValue!6105 Int) (toChars!5964 Int)) )
))
(declare-datatypes ((Rule!8446 0))(
  ( (Rule!8447 (regex!4323 Regex!6671) (tag!4813 String!29529) (isSeparator!4323 Bool) (transformation!4323 TokenValueInjection!8510)) )
))
(declare-fun r!2363 () Rule!8446)

(declare-fun ruleValid!1413 (LexerInterface!3920 Rule!8446) Bool)

(assert (=> b!2278556 (ruleValid!1413 thiss!16613 r!2363)))

(declare-datatypes ((Unit!40024 0))(
  ( (Unit!40025) )
))
(declare-fun lt!845963 () Unit!40024)

(declare-datatypes ((List!27181 0))(
  ( (Nil!27087) (Cons!27087 (h!32488 Rule!8446) (t!203341 List!27181)) )
))
(declare-fun rules!1750 () List!27181)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!818 (LexerInterface!3920 Rule!8446 List!27181) Unit!40024)

(assert (=> b!2278556 (= lt!845963 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!818 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2278557 () Bool)

(declare-fun e!1459423 () Bool)

(declare-datatypes ((Token!8124 0))(
  ( (Token!8125 (value!137025 TokenValue!4485) (rule!6649 Rule!8446) (size!21292 Int) (originalCharacters!5093 List!27180)) )
))
(declare-datatypes ((List!27182 0))(
  ( (Nil!27088) (Cons!27088 (h!32489 Token!8124) (t!203342 List!27182)) )
))
(declare-fun tokens!456 () List!27182)

(declare-fun head!4928 (List!27182) Token!8124)

(assert (=> b!2278557 (= e!1459423 (= (rule!6649 (head!4928 tokens!456)) r!2363))))

(declare-fun e!1459415 () Bool)

(assert (=> b!2278558 (= e!1459415 (and tp!721935 tp!721931))))

(declare-fun b!2278559 () Bool)

(declare-fun e!1459424 () Bool)

(assert (=> b!2278559 (= e!1459425 e!1459424)))

(declare-fun res!973764 () Bool)

(assert (=> b!2278559 (=> res!973764 e!1459424)))

(declare-fun otherR!12 () Rule!8446)

(declare-fun getIndex!336 (List!27181 Rule!8446) Int)

(assert (=> b!2278559 (= res!973764 (<= (getIndex!336 rules!1750 r!2363) (getIndex!336 rules!1750 otherR!12)))))

(assert (=> b!2278559 (ruleValid!1413 thiss!16613 otherR!12)))

(declare-fun lt!845965 () Unit!40024)

(assert (=> b!2278559 (= lt!845965 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!818 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2278560 () Bool)

(declare-fun res!973770 () Bool)

(declare-fun e!1459433 () Bool)

(assert (=> b!2278560 (=> (not res!973770) (not e!1459433))))

(declare-fun rulesInvariant!3422 (LexerInterface!3920 List!27181) Bool)

(assert (=> b!2278560 (= res!973770 (rulesInvariant!3422 thiss!16613 rules!1750))))

(declare-fun b!2278561 () Bool)

(declare-fun res!973767 () Bool)

(assert (=> b!2278561 (=> (not res!973767) (not e!1459427))))

(assert (=> b!2278561 (= res!973767 e!1459423)))

(declare-fun res!973760 () Bool)

(assert (=> b!2278561 (=> res!973760 e!1459423)))

(assert (=> b!2278561 (= res!973760 lt!845962)))

(declare-fun e!1459438 () Bool)

(declare-fun b!2278563 () Bool)

(declare-fun e!1459436 () Bool)

(declare-fun tp!721937 () Bool)

(declare-fun inv!36668 (String!29529) Bool)

(declare-fun inv!36671 (TokenValueInjection!8510) Bool)

(assert (=> b!2278563 (= e!1459438 (and tp!721937 (inv!36668 (tag!4813 (h!32488 rules!1750))) (inv!36671 (transformation!4323 (h!32488 rules!1750))) e!1459436))))

(declare-fun b!2278564 () Bool)

(declare-fun e!1459439 () Bool)

(declare-fun e!1459420 () Bool)

(assert (=> b!2278564 (= e!1459439 e!1459420)))

(declare-fun res!973772 () Bool)

(assert (=> b!2278564 (=> res!973772 e!1459420)))

(declare-fun lt!845966 () List!27180)

(declare-fun input!1722 () List!27180)

(declare-fun isPrefix!2313 (List!27180 List!27180) Bool)

(assert (=> b!2278564 (= res!973772 (not (isPrefix!2313 lt!845966 input!1722)))))

(declare-fun lt!845964 () List!27180)

(declare-fun getSuffix!1104 (List!27180 List!27180) List!27180)

(assert (=> b!2278564 (= lt!845964 (getSuffix!1104 input!1722 lt!845966))))

(declare-fun lt!845970 () List!27180)

(assert (=> b!2278564 (isPrefix!2313 lt!845966 lt!845970)))

(declare-datatypes ((tuple2!26810 0))(
  ( (tuple2!26811 (_1!15915 Token!8124) (_2!15915 List!27180)) )
))
(declare-fun lt!845969 () tuple2!26810)

(declare-fun ++!6615 (List!27180 List!27180) List!27180)

(assert (=> b!2278564 (= lt!845970 (++!6615 lt!845966 (_2!15915 lt!845969)))))

(declare-fun lt!845967 () Unit!40024)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1518 (List!27180 List!27180) Unit!40024)

(assert (=> b!2278564 (= lt!845967 (lemmaConcatTwoListThenFirstIsPrefix!1518 lt!845966 (_2!15915 lt!845969)))))

(declare-fun list!10544 (BalanceConc!17316) List!27180)

(declare-fun charsOf!2711 (Token!8124) BalanceConc!17316)

(assert (=> b!2278564 (= lt!845966 (list!10544 (charsOf!2711 (h!32489 tokens!456))))))

(declare-fun b!2278565 () Bool)

(declare-fun e!1459418 () Bool)

(declare-fun tp_is_empty!10563 () Bool)

(declare-fun tp!721938 () Bool)

(assert (=> b!2278565 (= e!1459418 (and tp_is_empty!10563 tp!721938))))

(declare-fun b!2278566 () Bool)

(declare-fun e!1459421 () Bool)

(declare-fun otherP!12 () List!27180)

(declare-fun size!21293 (BalanceConc!17316) Int)

(declare-fun size!21294 (List!27180) Int)

(assert (=> b!2278566 (= e!1459421 (<= (size!21293 (charsOf!2711 (head!4928 tokens!456))) (size!21294 otherP!12)))))

(declare-fun b!2278567 () Bool)

(declare-fun res!973774 () Bool)

(assert (=> b!2278567 (=> (not res!973774) (not e!1459433))))

(declare-fun isEmpty!15371 (List!27181) Bool)

(assert (=> b!2278567 (= res!973774 (not (isEmpty!15371 rules!1750)))))

(declare-fun b!2278568 () Bool)

(declare-fun e!1459417 () Bool)

(declare-fun tp!721930 () Bool)

(assert (=> b!2278568 (= e!1459417 (and tp_is_empty!10563 tp!721930))))

(declare-fun b!2278569 () Bool)

(assert (=> b!2278569 (= e!1459424 e!1459439)))

(declare-fun res!973765 () Bool)

(assert (=> b!2278569 (=> res!973765 e!1459439)))

(assert (=> b!2278569 (= res!973765 (not (= (h!32489 tokens!456) (_1!15915 lt!845969))))))

(declare-datatypes ((Option!5309 0))(
  ( (None!5308) (Some!5308 (v!30366 tuple2!26810)) )
))
(declare-fun get!8164 (Option!5309) tuple2!26810)

(declare-fun maxPrefix!2184 (LexerInterface!3920 List!27181 List!27180) Option!5309)

(assert (=> b!2278569 (= lt!845969 (get!8164 (maxPrefix!2184 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2278570 () Bool)

(declare-fun matchR!2928 (Regex!6671 List!27180) Bool)

(assert (=> b!2278570 (= e!1459435 (not (matchR!2928 (regex!4323 r!2363) (list!10544 (charsOf!2711 (head!4928 tokens!456))))))))

(declare-fun b!2278571 () Bool)

(declare-fun res!973775 () Bool)

(assert (=> b!2278571 (=> (not res!973775) (not e!1459427))))

(assert (=> b!2278571 (= res!973775 (not (= r!2363 otherR!12)))))

(declare-fun b!2278572 () Bool)

(declare-fun e!1459442 () Bool)

(declare-fun tp!721929 () Bool)

(assert (=> b!2278572 (= e!1459442 (and tp_is_empty!10563 tp!721929))))

(declare-fun b!2278573 () Bool)

(declare-fun res!973766 () Bool)

(assert (=> b!2278573 (=> res!973766 e!1459424)))

(get-info :version)

(assert (=> b!2278573 (= res!973766 ((_ is Nil!27088) tokens!456))))

(declare-fun b!2278574 () Bool)

(declare-fun e!1459426 () Bool)

(declare-fun tp!721941 () Bool)

(declare-fun e!1459419 () Bool)

(assert (=> b!2278574 (= e!1459419 (and tp!721941 (inv!36668 (tag!4813 otherR!12)) (inv!36671 (transformation!4323 otherR!12)) e!1459426))))

(assert (=> b!2278575 (= e!1459436 (and tp!721940 tp!721928))))

(declare-fun b!2278576 () Bool)

(declare-fun e!1459431 () Bool)

(declare-fun tp!721942 () Bool)

(assert (=> b!2278576 (= e!1459431 (and e!1459438 tp!721942))))

(declare-fun e!1459441 () Bool)

(declare-fun e!1459437 () Bool)

(declare-fun tp!721932 () Bool)

(declare-fun b!2278577 () Bool)

(declare-fun inv!36672 (Token!8124) Bool)

(assert (=> b!2278577 (= e!1459437 (and (inv!36672 (h!32489 tokens!456)) e!1459441 tp!721932))))

(declare-fun e!1459428 () Bool)

(declare-fun tp!721936 () Bool)

(declare-fun b!2278578 () Bool)

(assert (=> b!2278578 (= e!1459428 (and tp!721936 (inv!36668 (tag!4813 (rule!6649 (h!32489 tokens!456)))) (inv!36671 (transformation!4323 (rule!6649 (h!32489 tokens!456)))) e!1459415))))

(declare-fun b!2278579 () Bool)

(declare-fun res!973761 () Bool)

(assert (=> b!2278579 (=> (not res!973761) (not e!1459433))))

(declare-fun contains!4695 (List!27181 Rule!8446) Bool)

(assert (=> b!2278579 (= res!973761 (contains!4695 rules!1750 r!2363))))

(declare-fun tp!721933 () Bool)

(declare-fun b!2278580 () Bool)

(declare-fun inv!21 (TokenValue!4485) Bool)

(assert (=> b!2278580 (= e!1459441 (and (inv!21 (value!137025 (h!32489 tokens!456))) e!1459428 tp!721933))))

(declare-fun b!2278581 () Bool)

(declare-fun res!973762 () Bool)

(assert (=> b!2278581 (=> (not res!973762) (not e!1459433))))

(assert (=> b!2278581 (= res!973762 (contains!4695 rules!1750 otherR!12))))

(declare-fun b!2278562 () Bool)

(declare-fun res!973769 () Bool)

(assert (=> b!2278562 (=> res!973769 e!1459420)))

(assert (=> b!2278562 (= res!973769 (not (= lt!845970 input!1722)))))

(declare-fun res!973768 () Bool)

(assert (=> start!223136 (=> (not res!973768) (not e!1459433))))

(assert (=> start!223136 (= res!973768 ((_ is Lexer!3918) thiss!16613))))

(assert (=> start!223136 e!1459433))

(assert (=> start!223136 true))

(assert (=> start!223136 e!1459442))

(assert (=> start!223136 e!1459419))

(assert (=> start!223136 e!1459418))

(assert (=> start!223136 e!1459417))

(assert (=> start!223136 e!1459431))

(declare-fun e!1459429 () Bool)

(assert (=> start!223136 e!1459429))

(assert (=> start!223136 e!1459437))

(declare-fun b!2278582 () Bool)

(declare-fun e!1459432 () Bool)

(assert (=> b!2278582 (= e!1459432 e!1459427)))

(declare-fun res!973778 () Bool)

(assert (=> b!2278582 (=> (not res!973778) (not e!1459427))))

(assert (=> b!2278582 (= res!973778 e!1459421)))

(declare-fun res!973763 () Bool)

(assert (=> b!2278582 (=> res!973763 e!1459421)))

(assert (=> b!2278582 (= res!973763 lt!845962)))

(declare-fun isEmpty!15372 (List!27182) Bool)

(assert (=> b!2278582 (= lt!845962 (isEmpty!15372 tokens!456))))

(assert (=> b!2278583 (= e!1459426 (and tp!721939 tp!721934))))

(declare-fun b!2278584 () Bool)

(assert (=> b!2278584 (= e!1459420 (= (++!6615 lt!845966 lt!845964) input!1722))))

(declare-fun b!2278585 () Bool)

(declare-fun res!973773 () Bool)

(assert (=> b!2278585 (=> (not res!973773) (not e!1459427))))

(assert (=> b!2278585 (= res!973773 (isPrefix!2313 otherP!12 input!1722))))

(declare-fun e!1459416 () Bool)

(assert (=> b!2278586 (= e!1459416 (and tp!721927 tp!721943))))

(declare-fun b!2278587 () Bool)

(assert (=> b!2278587 (= e!1459433 e!1459432)))

(declare-fun res!973776 () Bool)

(assert (=> b!2278587 (=> (not res!973776) (not e!1459432))))

(declare-datatypes ((IArray!17595 0))(
  ( (IArray!17596 (innerList!8855 List!27182)) )
))
(declare-datatypes ((Conc!8795 0))(
  ( (Node!8795 (left!20553 Conc!8795) (right!20883 Conc!8795) (csize!17820 Int) (cheight!9006 Int)) (Leaf!12942 (xs!11737 IArray!17595) (csize!17821 Int)) (Empty!8795) )
))
(declare-datatypes ((BalanceConc!17318 0))(
  ( (BalanceConc!17319 (c!361704 Conc!8795)) )
))
(declare-datatypes ((tuple2!26812 0))(
  ( (tuple2!26813 (_1!15916 BalanceConc!17318) (_2!15916 BalanceConc!17316)) )
))
(declare-fun lt!845968 () tuple2!26812)

(declare-fun suffix!886 () List!27180)

(declare-datatypes ((tuple2!26814 0))(
  ( (tuple2!26815 (_1!15917 List!27182) (_2!15917 List!27180)) )
))
(declare-fun list!10545 (BalanceConc!17318) List!27182)

(assert (=> b!2278587 (= res!973776 (= (tuple2!26815 (list!10545 (_1!15916 lt!845968)) (list!10544 (_2!15916 lt!845968))) (tuple2!26815 tokens!456 suffix!886)))))

(declare-fun lex!1759 (LexerInterface!3920 List!27181 BalanceConc!17316) tuple2!26812)

(declare-fun seqFromList!3027 (List!27180) BalanceConc!17316)

(assert (=> b!2278587 (= lt!845968 (lex!1759 thiss!16613 rules!1750 (seqFromList!3027 input!1722)))))

(declare-fun tp!721926 () Bool)

(declare-fun b!2278588 () Bool)

(assert (=> b!2278588 (= e!1459429 (and tp!721926 (inv!36668 (tag!4813 r!2363)) (inv!36671 (transformation!4323 r!2363)) e!1459416))))

(assert (= (and start!223136 res!973768) b!2278567))

(assert (= (and b!2278567 res!973774) b!2278560))

(assert (= (and b!2278560 res!973770) b!2278579))

(assert (= (and b!2278579 res!973761) b!2278581))

(assert (= (and b!2278581 res!973762) b!2278587))

(assert (= (and b!2278587 res!973776) b!2278582))

(assert (= (and b!2278582 (not res!973763)) b!2278566))

(assert (= (and b!2278582 res!973778) b!2278561))

(assert (= (and b!2278561 (not res!973760)) b!2278557))

(assert (= (and b!2278561 res!973767) b!2278585))

(assert (= (and b!2278585 res!973773) b!2278571))

(assert (= (and b!2278571 res!973775) b!2278556))

(assert (= (and b!2278556 res!973771) b!2278570))

(assert (= (and b!2278556 (not res!973777)) b!2278559))

(assert (= (and b!2278559 (not res!973764)) b!2278573))

(assert (= (and b!2278573 (not res!973766)) b!2278569))

(assert (= (and b!2278569 (not res!973765)) b!2278564))

(assert (= (and b!2278564 (not res!973772)) b!2278562))

(assert (= (and b!2278562 (not res!973769)) b!2278584))

(assert (= (and start!223136 ((_ is Cons!27086) input!1722)) b!2278572))

(assert (= b!2278574 b!2278583))

(assert (= start!223136 b!2278574))

(assert (= (and start!223136 ((_ is Cons!27086) suffix!886)) b!2278565))

(assert (= (and start!223136 ((_ is Cons!27086) otherP!12)) b!2278568))

(assert (= b!2278563 b!2278575))

(assert (= b!2278576 b!2278563))

(assert (= (and start!223136 ((_ is Cons!27087) rules!1750)) b!2278576))

(assert (= b!2278588 b!2278586))

(assert (= start!223136 b!2278588))

(assert (= b!2278578 b!2278558))

(assert (= b!2278580 b!2278578))

(assert (= b!2278577 b!2278580))

(assert (= (and start!223136 ((_ is Cons!27088) tokens!456)) b!2278577))

(declare-fun m!2706851 () Bool)

(assert (=> b!2278570 m!2706851))

(assert (=> b!2278570 m!2706851))

(declare-fun m!2706853 () Bool)

(assert (=> b!2278570 m!2706853))

(assert (=> b!2278570 m!2706853))

(declare-fun m!2706855 () Bool)

(assert (=> b!2278570 m!2706855))

(assert (=> b!2278570 m!2706855))

(declare-fun m!2706857 () Bool)

(assert (=> b!2278570 m!2706857))

(declare-fun m!2706859 () Bool)

(assert (=> b!2278577 m!2706859))

(declare-fun m!2706861 () Bool)

(assert (=> b!2278564 m!2706861))

(declare-fun m!2706863 () Bool)

(assert (=> b!2278564 m!2706863))

(declare-fun m!2706865 () Bool)

(assert (=> b!2278564 m!2706865))

(declare-fun m!2706867 () Bool)

(assert (=> b!2278564 m!2706867))

(declare-fun m!2706869 () Bool)

(assert (=> b!2278564 m!2706869))

(declare-fun m!2706871 () Bool)

(assert (=> b!2278564 m!2706871))

(assert (=> b!2278564 m!2706869))

(declare-fun m!2706873 () Bool)

(assert (=> b!2278564 m!2706873))

(declare-fun m!2706875 () Bool)

(assert (=> b!2278560 m!2706875))

(declare-fun m!2706877 () Bool)

(assert (=> b!2278567 m!2706877))

(declare-fun m!2706879 () Bool)

(assert (=> b!2278556 m!2706879))

(declare-fun m!2706881 () Bool)

(assert (=> b!2278556 m!2706881))

(declare-fun m!2706883 () Bool)

(assert (=> b!2278588 m!2706883))

(declare-fun m!2706885 () Bool)

(assert (=> b!2278588 m!2706885))

(declare-fun m!2706887 () Bool)

(assert (=> b!2278584 m!2706887))

(assert (=> b!2278557 m!2706851))

(assert (=> b!2278566 m!2706851))

(assert (=> b!2278566 m!2706851))

(assert (=> b!2278566 m!2706853))

(assert (=> b!2278566 m!2706853))

(declare-fun m!2706889 () Bool)

(assert (=> b!2278566 m!2706889))

(declare-fun m!2706891 () Bool)

(assert (=> b!2278566 m!2706891))

(declare-fun m!2706893 () Bool)

(assert (=> b!2278559 m!2706893))

(declare-fun m!2706895 () Bool)

(assert (=> b!2278559 m!2706895))

(declare-fun m!2706897 () Bool)

(assert (=> b!2278559 m!2706897))

(declare-fun m!2706899 () Bool)

(assert (=> b!2278559 m!2706899))

(declare-fun m!2706901 () Bool)

(assert (=> b!2278581 m!2706901))

(declare-fun m!2706903 () Bool)

(assert (=> b!2278587 m!2706903))

(declare-fun m!2706905 () Bool)

(assert (=> b!2278587 m!2706905))

(declare-fun m!2706907 () Bool)

(assert (=> b!2278587 m!2706907))

(assert (=> b!2278587 m!2706907))

(declare-fun m!2706909 () Bool)

(assert (=> b!2278587 m!2706909))

(declare-fun m!2706911 () Bool)

(assert (=> b!2278579 m!2706911))

(declare-fun m!2706913 () Bool)

(assert (=> b!2278585 m!2706913))

(declare-fun m!2706915 () Bool)

(assert (=> b!2278582 m!2706915))

(declare-fun m!2706917 () Bool)

(assert (=> b!2278574 m!2706917))

(declare-fun m!2706919 () Bool)

(assert (=> b!2278574 m!2706919))

(declare-fun m!2706921 () Bool)

(assert (=> b!2278580 m!2706921))

(declare-fun m!2706923 () Bool)

(assert (=> b!2278569 m!2706923))

(assert (=> b!2278569 m!2706923))

(declare-fun m!2706925 () Bool)

(assert (=> b!2278569 m!2706925))

(declare-fun m!2706927 () Bool)

(assert (=> b!2278578 m!2706927))

(declare-fun m!2706929 () Bool)

(assert (=> b!2278578 m!2706929))

(declare-fun m!2706931 () Bool)

(assert (=> b!2278563 m!2706931))

(declare-fun m!2706933 () Bool)

(assert (=> b!2278563 m!2706933))

(check-sat b_and!179827 (not b_next!68655) (not b!2278580) (not b!2278585) (not b!2278565) (not b!2278577) (not b!2278564) (not b!2278582) (not b_next!68659) (not b!2278584) b_and!179825 (not b!2278576) (not b!2278556) b_and!179829 (not b!2278569) (not b!2278587) (not b!2278557) (not b!2278559) (not b!2278572) (not b_next!68653) (not b!2278570) (not b_next!68657) (not b!2278574) b_and!179831 (not b_next!68667) b_and!179837 (not b!2278563) b_and!179839 (not b_next!68661) tp_is_empty!10563 b_and!179833 (not b_next!68663) (not b!2278579) b_and!179835 (not b_next!68665) (not b!2278588) (not b!2278568) (not b!2278578) (not b!2278567) (not b!2278566) (not b!2278581) (not b!2278560))
(check-sat b_and!179827 b_and!179829 (not b_next!68655) (not b_next!68653) (not b_next!68665) (not b_next!68659) b_and!179825 (not b_next!68657) b_and!179831 (not b_next!68667) b_and!179837 b_and!179839 (not b_next!68661) b_and!179833 (not b_next!68663) b_and!179835)
(get-model)

(declare-fun d!674543 () Bool)

(declare-fun list!10547 (Conc!8795) List!27182)

(assert (=> d!674543 (= (list!10545 (_1!15916 lt!845968)) (list!10547 (c!361704 (_1!15916 lt!845968))))))

(declare-fun bs!456508 () Bool)

(assert (= bs!456508 d!674543))

(declare-fun m!2706935 () Bool)

(assert (=> bs!456508 m!2706935))

(assert (=> b!2278587 d!674543))

(declare-fun d!674545 () Bool)

(declare-fun list!10548 (Conc!8794) List!27180)

(assert (=> d!674545 (= (list!10544 (_2!15916 lt!845968)) (list!10548 (c!361702 (_2!15916 lt!845968))))))

(declare-fun bs!456509 () Bool)

(assert (= bs!456509 d!674545))

(declare-fun m!2706937 () Bool)

(assert (=> bs!456509 m!2706937))

(assert (=> b!2278587 d!674545))

(declare-fun b!2278764 () Bool)

(declare-fun e!1459541 () Bool)

(declare-fun lt!846016 () tuple2!26812)

(assert (=> b!2278764 (= e!1459541 (= (_2!15916 lt!846016) (seqFromList!3027 input!1722)))))

(declare-fun e!1459540 () Bool)

(declare-fun b!2278765 () Bool)

(declare-fun lexList!1089 (LexerInterface!3920 List!27181 List!27180) tuple2!26814)

(assert (=> b!2278765 (= e!1459540 (= (list!10544 (_2!15916 lt!846016)) (_2!15917 (lexList!1089 thiss!16613 rules!1750 (list!10544 (seqFromList!3027 input!1722))))))))

(declare-fun b!2278766 () Bool)

(declare-fun e!1459542 () Bool)

(assert (=> b!2278766 (= e!1459541 e!1459542)))

(declare-fun res!973886 () Bool)

(assert (=> b!2278766 (= res!973886 (< (size!21293 (_2!15916 lt!846016)) (size!21293 (seqFromList!3027 input!1722))))))

(assert (=> b!2278766 (=> (not res!973886) (not e!1459542))))

(declare-fun b!2278768 () Bool)

(declare-fun isEmpty!15375 (BalanceConc!17318) Bool)

(assert (=> b!2278768 (= e!1459542 (not (isEmpty!15375 (_1!15916 lt!846016))))))

(declare-fun d!674549 () Bool)

(assert (=> d!674549 e!1459540))

(declare-fun res!973884 () Bool)

(assert (=> d!674549 (=> (not res!973884) (not e!1459540))))

(assert (=> d!674549 (= res!973884 e!1459541)))

(declare-fun c!361743 () Bool)

(declare-fun size!21295 (BalanceConc!17318) Int)

(assert (=> d!674549 (= c!361743 (> (size!21295 (_1!15916 lt!846016)) 0))))

(declare-fun lexTailRecV2!764 (LexerInterface!3920 List!27181 BalanceConc!17316 BalanceConc!17316 BalanceConc!17316 BalanceConc!17318) tuple2!26812)

(assert (=> d!674549 (= lt!846016 (lexTailRecV2!764 thiss!16613 rules!1750 (seqFromList!3027 input!1722) (BalanceConc!17317 Empty!8794) (seqFromList!3027 input!1722) (BalanceConc!17319 Empty!8795)))))

(assert (=> d!674549 (= (lex!1759 thiss!16613 rules!1750 (seqFromList!3027 input!1722)) lt!846016)))

(declare-fun b!2278767 () Bool)

(declare-fun res!973885 () Bool)

(assert (=> b!2278767 (=> (not res!973885) (not e!1459540))))

(assert (=> b!2278767 (= res!973885 (= (list!10545 (_1!15916 lt!846016)) (_1!15917 (lexList!1089 thiss!16613 rules!1750 (list!10544 (seqFromList!3027 input!1722))))))))

(assert (= (and d!674549 c!361743) b!2278766))

(assert (= (and d!674549 (not c!361743)) b!2278764))

(assert (= (and b!2278766 res!973886) b!2278768))

(assert (= (and d!674549 res!973884) b!2278767))

(assert (= (and b!2278767 res!973885) b!2278765))

(declare-fun m!2707095 () Bool)

(assert (=> b!2278766 m!2707095))

(assert (=> b!2278766 m!2706907))

(declare-fun m!2707097 () Bool)

(assert (=> b!2278766 m!2707097))

(declare-fun m!2707099 () Bool)

(assert (=> b!2278767 m!2707099))

(assert (=> b!2278767 m!2706907))

(declare-fun m!2707101 () Bool)

(assert (=> b!2278767 m!2707101))

(assert (=> b!2278767 m!2707101))

(declare-fun m!2707103 () Bool)

(assert (=> b!2278767 m!2707103))

(declare-fun m!2707105 () Bool)

(assert (=> d!674549 m!2707105))

(assert (=> d!674549 m!2706907))

(assert (=> d!674549 m!2706907))

(declare-fun m!2707107 () Bool)

(assert (=> d!674549 m!2707107))

(declare-fun m!2707109 () Bool)

(assert (=> b!2278765 m!2707109))

(assert (=> b!2278765 m!2706907))

(assert (=> b!2278765 m!2707101))

(assert (=> b!2278765 m!2707101))

(assert (=> b!2278765 m!2707103))

(declare-fun m!2707111 () Bool)

(assert (=> b!2278768 m!2707111))

(assert (=> b!2278587 d!674549))

(declare-fun d!674607 () Bool)

(declare-fun fromListB!1355 (List!27180) BalanceConc!17316)

(assert (=> d!674607 (= (seqFromList!3027 input!1722) (fromListB!1355 input!1722))))

(declare-fun bs!456517 () Bool)

(assert (= bs!456517 d!674607))

(declare-fun m!2707121 () Bool)

(assert (=> bs!456517 m!2707121))

(assert (=> b!2278587 d!674607))

(declare-fun d!674611 () Bool)

(declare-fun lt!846027 () Int)

(assert (=> d!674611 (= lt!846027 (size!21294 (list!10544 (charsOf!2711 (head!4928 tokens!456)))))))

(declare-fun size!21297 (Conc!8794) Int)

(assert (=> d!674611 (= lt!846027 (size!21297 (c!361702 (charsOf!2711 (head!4928 tokens!456)))))))

(assert (=> d!674611 (= (size!21293 (charsOf!2711 (head!4928 tokens!456))) lt!846027)))

(declare-fun bs!456519 () Bool)

(assert (= bs!456519 d!674611))

(assert (=> bs!456519 m!2706853))

(assert (=> bs!456519 m!2706855))

(assert (=> bs!456519 m!2706855))

(declare-fun m!2707147 () Bool)

(assert (=> bs!456519 m!2707147))

(declare-fun m!2707149 () Bool)

(assert (=> bs!456519 m!2707149))

(assert (=> b!2278566 d!674611))

(declare-fun d!674623 () Bool)

(declare-fun lt!846030 () BalanceConc!17316)

(assert (=> d!674623 (= (list!10544 lt!846030) (originalCharacters!5093 (head!4928 tokens!456)))))

(declare-fun dynLambda!11767 (Int TokenValue!4485) BalanceConc!17316)

(assert (=> d!674623 (= lt!846030 (dynLambda!11767 (toChars!5964 (transformation!4323 (rule!6649 (head!4928 tokens!456)))) (value!137025 (head!4928 tokens!456))))))

(assert (=> d!674623 (= (charsOf!2711 (head!4928 tokens!456)) lt!846030)))

(declare-fun b_lambda!72545 () Bool)

(assert (=> (not b_lambda!72545) (not d!674623)))

(declare-fun tb!135439 () Bool)

(declare-fun t!203360 () Bool)

(assert (=> (and b!2278583 (= (toChars!5964 (transformation!4323 otherR!12)) (toChars!5964 (transformation!4323 (rule!6649 (head!4928 tokens!456))))) t!203360) tb!135439))

(declare-fun b!2278797 () Bool)

(declare-fun e!1459562 () Bool)

(declare-fun tp!721950 () Bool)

(declare-fun inv!36675 (Conc!8794) Bool)

(assert (=> b!2278797 (= e!1459562 (and (inv!36675 (c!361702 (dynLambda!11767 (toChars!5964 (transformation!4323 (rule!6649 (head!4928 tokens!456)))) (value!137025 (head!4928 tokens!456))))) tp!721950))))

(declare-fun result!165124 () Bool)

(declare-fun inv!36676 (BalanceConc!17316) Bool)

(assert (=> tb!135439 (= result!165124 (and (inv!36676 (dynLambda!11767 (toChars!5964 (transformation!4323 (rule!6649 (head!4928 tokens!456)))) (value!137025 (head!4928 tokens!456)))) e!1459562))))

(assert (= tb!135439 b!2278797))

(declare-fun m!2707157 () Bool)

(assert (=> b!2278797 m!2707157))

(declare-fun m!2707159 () Bool)

(assert (=> tb!135439 m!2707159))

(assert (=> d!674623 t!203360))

(declare-fun b_and!179865 () Bool)

(assert (= b_and!179827 (and (=> t!203360 result!165124) b_and!179865)))

(declare-fun t!203362 () Bool)

(declare-fun tb!135441 () Bool)

(assert (=> (and b!2278558 (= (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))) (toChars!5964 (transformation!4323 (rule!6649 (head!4928 tokens!456))))) t!203362) tb!135441))

(declare-fun result!165128 () Bool)

(assert (= result!165128 result!165124))

(assert (=> d!674623 t!203362))

(declare-fun b_and!179867 () Bool)

(assert (= b_and!179831 (and (=> t!203362 result!165128) b_and!179867)))

(declare-fun tb!135443 () Bool)

(declare-fun t!203364 () Bool)

(assert (=> (and b!2278575 (= (toChars!5964 (transformation!4323 (h!32488 rules!1750))) (toChars!5964 (transformation!4323 (rule!6649 (head!4928 tokens!456))))) t!203364) tb!135443))

(declare-fun result!165130 () Bool)

(assert (= result!165130 result!165124))

(assert (=> d!674623 t!203364))

(declare-fun b_and!179869 () Bool)

(assert (= b_and!179835 (and (=> t!203364 result!165130) b_and!179869)))

(declare-fun t!203366 () Bool)

(declare-fun tb!135445 () Bool)

(assert (=> (and b!2278586 (= (toChars!5964 (transformation!4323 r!2363)) (toChars!5964 (transformation!4323 (rule!6649 (head!4928 tokens!456))))) t!203366) tb!135445))

(declare-fun result!165132 () Bool)

(assert (= result!165132 result!165124))

(assert (=> d!674623 t!203366))

(declare-fun b_and!179871 () Bool)

(assert (= b_and!179839 (and (=> t!203366 result!165132) b_and!179871)))

(declare-fun m!2707163 () Bool)

(assert (=> d!674623 m!2707163))

(declare-fun m!2707167 () Bool)

(assert (=> d!674623 m!2707167))

(assert (=> b!2278566 d!674623))

(declare-fun d!674633 () Bool)

(assert (=> d!674633 (= (head!4928 tokens!456) (h!32489 tokens!456))))

(assert (=> b!2278566 d!674633))

(declare-fun d!674635 () Bool)

(declare-fun lt!846036 () Int)

(assert (=> d!674635 (>= lt!846036 0)))

(declare-fun e!1459566 () Int)

(assert (=> d!674635 (= lt!846036 e!1459566)))

(declare-fun c!361746 () Bool)

(assert (=> d!674635 (= c!361746 ((_ is Nil!27086) otherP!12))))

(assert (=> d!674635 (= (size!21294 otherP!12) lt!846036)))

(declare-fun b!2278803 () Bool)

(assert (=> b!2278803 (= e!1459566 0)))

(declare-fun b!2278804 () Bool)

(assert (=> b!2278804 (= e!1459566 (+ 1 (size!21294 (t!203340 otherP!12))))))

(assert (= (and d!674635 c!361746) b!2278803))

(assert (= (and d!674635 (not c!361746)) b!2278804))

(declare-fun m!2707173 () Bool)

(assert (=> b!2278804 m!2707173))

(assert (=> b!2278566 d!674635))

(declare-fun d!674639 () Bool)

(assert (=> d!674639 (= (isEmpty!15371 rules!1750) ((_ is Nil!27087) rules!1750))))

(assert (=> b!2278567 d!674639))

(declare-fun d!674641 () Bool)

(assert (=> d!674641 (= (inv!36668 (tag!4813 (rule!6649 (h!32489 tokens!456)))) (= (mod (str.len (value!137024 (tag!4813 (rule!6649 (h!32489 tokens!456))))) 2) 0))))

(assert (=> b!2278578 d!674641))

(declare-fun d!674643 () Bool)

(declare-fun res!973917 () Bool)

(declare-fun e!1459582 () Bool)

(assert (=> d!674643 (=> (not res!973917) (not e!1459582))))

(declare-fun semiInverseModEq!1746 (Int Int) Bool)

(assert (=> d!674643 (= res!973917 (semiInverseModEq!1746 (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))) (toValue!6105 (transformation!4323 (rule!6649 (h!32489 tokens!456))))))))

(assert (=> d!674643 (= (inv!36671 (transformation!4323 (rule!6649 (h!32489 tokens!456)))) e!1459582)))

(declare-fun b!2278834 () Bool)

(declare-fun equivClasses!1665 (Int Int) Bool)

(assert (=> b!2278834 (= e!1459582 (equivClasses!1665 (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))) (toValue!6105 (transformation!4323 (rule!6649 (h!32489 tokens!456))))))))

(assert (= (and d!674643 res!973917) b!2278834))

(declare-fun m!2707183 () Bool)

(assert (=> d!674643 m!2707183))

(declare-fun m!2707185 () Bool)

(assert (=> b!2278834 m!2707185))

(assert (=> b!2278578 d!674643))

(declare-fun d!674649 () Bool)

(declare-fun res!973922 () Bool)

(declare-fun e!1459599 () Bool)

(assert (=> d!674649 (=> (not res!973922) (not e!1459599))))

(declare-fun isEmpty!15377 (List!27180) Bool)

(assert (=> d!674649 (= res!973922 (not (isEmpty!15377 (originalCharacters!5093 (h!32489 tokens!456)))))))

(assert (=> d!674649 (= (inv!36672 (h!32489 tokens!456)) e!1459599)))

(declare-fun b!2278858 () Bool)

(declare-fun res!973923 () Bool)

(assert (=> b!2278858 (=> (not res!973923) (not e!1459599))))

(assert (=> b!2278858 (= res!973923 (= (originalCharacters!5093 (h!32489 tokens!456)) (list!10544 (dynLambda!11767 (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))) (value!137025 (h!32489 tokens!456))))))))

(declare-fun b!2278859 () Bool)

(assert (=> b!2278859 (= e!1459599 (= (size!21292 (h!32489 tokens!456)) (size!21294 (originalCharacters!5093 (h!32489 tokens!456)))))))

(assert (= (and d!674649 res!973922) b!2278858))

(assert (= (and b!2278858 res!973923) b!2278859))

(declare-fun b_lambda!72549 () Bool)

(assert (=> (not b_lambda!72549) (not b!2278858)))

(declare-fun t!203372 () Bool)

(declare-fun tb!135451 () Bool)

(assert (=> (and b!2278583 (= (toChars!5964 (transformation!4323 otherR!12)) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456))))) t!203372) tb!135451))

(declare-fun b!2278860 () Bool)

(declare-fun e!1459600 () Bool)

(declare-fun tp!721988 () Bool)

(assert (=> b!2278860 (= e!1459600 (and (inv!36675 (c!361702 (dynLambda!11767 (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))) (value!137025 (h!32489 tokens!456))))) tp!721988))))

(declare-fun result!165144 () Bool)

(assert (=> tb!135451 (= result!165144 (and (inv!36676 (dynLambda!11767 (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))) (value!137025 (h!32489 tokens!456)))) e!1459600))))

(assert (= tb!135451 b!2278860))

(declare-fun m!2707189 () Bool)

(assert (=> b!2278860 m!2707189))

(declare-fun m!2707193 () Bool)

(assert (=> tb!135451 m!2707193))

(assert (=> b!2278858 t!203372))

(declare-fun b_and!179877 () Bool)

(assert (= b_and!179865 (and (=> t!203372 result!165144) b_and!179877)))

(declare-fun t!203374 () Bool)

(declare-fun tb!135453 () Bool)

(assert (=> (and b!2278558 (= (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456))))) t!203374) tb!135453))

(declare-fun result!165146 () Bool)

(assert (= result!165146 result!165144))

(assert (=> b!2278858 t!203374))

(declare-fun b_and!179879 () Bool)

(assert (= b_and!179867 (and (=> t!203374 result!165146) b_and!179879)))

(declare-fun tb!135455 () Bool)

(declare-fun t!203376 () Bool)

(assert (=> (and b!2278575 (= (toChars!5964 (transformation!4323 (h!32488 rules!1750))) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456))))) t!203376) tb!135455))

(declare-fun result!165148 () Bool)

(assert (= result!165148 result!165144))

(assert (=> b!2278858 t!203376))

(declare-fun b_and!179881 () Bool)

(assert (= b_and!179869 (and (=> t!203376 result!165148) b_and!179881)))

(declare-fun tb!135457 () Bool)

(declare-fun t!203378 () Bool)

(assert (=> (and b!2278586 (= (toChars!5964 (transformation!4323 r!2363)) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456))))) t!203378) tb!135457))

(declare-fun result!165150 () Bool)

(assert (= result!165150 result!165144))

(assert (=> b!2278858 t!203378))

(declare-fun b_and!179883 () Bool)

(assert (= b_and!179871 (and (=> t!203378 result!165150) b_and!179883)))

(declare-fun m!2707195 () Bool)

(assert (=> d!674649 m!2707195))

(declare-fun m!2707197 () Bool)

(assert (=> b!2278858 m!2707197))

(assert (=> b!2278858 m!2707197))

(declare-fun m!2707199 () Bool)

(assert (=> b!2278858 m!2707199))

(declare-fun m!2707201 () Bool)

(assert (=> b!2278859 m!2707201))

(assert (=> b!2278577 d!674649))

(declare-fun d!674651 () Bool)

(declare-fun res!973928 () Bool)

(declare-fun e!1459616 () Bool)

(assert (=> d!674651 (=> (not res!973928) (not e!1459616))))

(declare-fun validRegex!2506 (Regex!6671) Bool)

(assert (=> d!674651 (= res!973928 (validRegex!2506 (regex!4323 r!2363)))))

(assert (=> d!674651 (= (ruleValid!1413 thiss!16613 r!2363) e!1459616)))

(declare-fun b!2278879 () Bool)

(declare-fun res!973929 () Bool)

(assert (=> b!2278879 (=> (not res!973929) (not e!1459616))))

(declare-fun nullable!1844 (Regex!6671) Bool)

(assert (=> b!2278879 (= res!973929 (not (nullable!1844 (regex!4323 r!2363))))))

(declare-fun b!2278880 () Bool)

(assert (=> b!2278880 (= e!1459616 (not (= (tag!4813 r!2363) (String!29530 ""))))))

(assert (= (and d!674651 res!973928) b!2278879))

(assert (= (and b!2278879 res!973929) b!2278880))

(declare-fun m!2707203 () Bool)

(assert (=> d!674651 m!2707203))

(declare-fun m!2707205 () Bool)

(assert (=> b!2278879 m!2707205))

(assert (=> b!2278556 d!674651))

(declare-fun d!674653 () Bool)

(assert (=> d!674653 (ruleValid!1413 thiss!16613 r!2363)))

(declare-fun lt!846043 () Unit!40024)

(declare-fun choose!13289 (LexerInterface!3920 Rule!8446 List!27181) Unit!40024)

(assert (=> d!674653 (= lt!846043 (choose!13289 thiss!16613 r!2363 rules!1750))))

(assert (=> d!674653 (contains!4695 rules!1750 r!2363)))

(assert (=> d!674653 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!818 thiss!16613 r!2363 rules!1750) lt!846043)))

(declare-fun bs!456521 () Bool)

(assert (= bs!456521 d!674653))

(assert (=> bs!456521 m!2706879))

(declare-fun m!2707215 () Bool)

(assert (=> bs!456521 m!2707215))

(assert (=> bs!456521 m!2706911))

(assert (=> b!2278556 d!674653))

(declare-fun d!674655 () Bool)

(assert (=> d!674655 (= (inv!36668 (tag!4813 r!2363)) (= (mod (str.len (value!137024 (tag!4813 r!2363))) 2) 0))))

(assert (=> b!2278588 d!674655))

(declare-fun d!674657 () Bool)

(declare-fun res!973930 () Bool)

(declare-fun e!1459625 () Bool)

(assert (=> d!674657 (=> (not res!973930) (not e!1459625))))

(assert (=> d!674657 (= res!973930 (semiInverseModEq!1746 (toChars!5964 (transformation!4323 r!2363)) (toValue!6105 (transformation!4323 r!2363))))))

(assert (=> d!674657 (= (inv!36671 (transformation!4323 r!2363)) e!1459625)))

(declare-fun b!2278890 () Bool)

(assert (=> b!2278890 (= e!1459625 (equivClasses!1665 (toChars!5964 (transformation!4323 r!2363)) (toValue!6105 (transformation!4323 r!2363))))))

(assert (= (and d!674657 res!973930) b!2278890))

(declare-fun m!2707217 () Bool)

(assert (=> d!674657 m!2707217))

(declare-fun m!2707219 () Bool)

(assert (=> b!2278890 m!2707219))

(assert (=> b!2278588 d!674657))

(declare-fun d!674659 () Bool)

(assert (=> d!674659 (= (inv!36668 (tag!4813 (h!32488 rules!1750))) (= (mod (str.len (value!137024 (tag!4813 (h!32488 rules!1750)))) 2) 0))))

(assert (=> b!2278563 d!674659))

(declare-fun d!674661 () Bool)

(declare-fun res!973931 () Bool)

(declare-fun e!1459626 () Bool)

(assert (=> d!674661 (=> (not res!973931) (not e!1459626))))

(assert (=> d!674661 (= res!973931 (semiInverseModEq!1746 (toChars!5964 (transformation!4323 (h!32488 rules!1750))) (toValue!6105 (transformation!4323 (h!32488 rules!1750)))))))

(assert (=> d!674661 (= (inv!36671 (transformation!4323 (h!32488 rules!1750))) e!1459626)))

(declare-fun b!2278891 () Bool)

(assert (=> b!2278891 (= e!1459626 (equivClasses!1665 (toChars!5964 (transformation!4323 (h!32488 rules!1750))) (toValue!6105 (transformation!4323 (h!32488 rules!1750)))))))

(assert (= (and d!674661 res!973931) b!2278891))

(declare-fun m!2707221 () Bool)

(assert (=> d!674661 m!2707221))

(declare-fun m!2707223 () Bool)

(assert (=> b!2278891 m!2707223))

(assert (=> b!2278563 d!674661))

(declare-fun d!674663 () Bool)

(assert (=> d!674663 (= (inv!36668 (tag!4813 otherR!12)) (= (mod (str.len (value!137024 (tag!4813 otherR!12))) 2) 0))))

(assert (=> b!2278574 d!674663))

(declare-fun d!674665 () Bool)

(declare-fun res!973932 () Bool)

(declare-fun e!1459627 () Bool)

(assert (=> d!674665 (=> (not res!973932) (not e!1459627))))

(assert (=> d!674665 (= res!973932 (semiInverseModEq!1746 (toChars!5964 (transformation!4323 otherR!12)) (toValue!6105 (transformation!4323 otherR!12))))))

(assert (=> d!674665 (= (inv!36671 (transformation!4323 otherR!12)) e!1459627)))

(declare-fun b!2278892 () Bool)

(assert (=> b!2278892 (= e!1459627 (equivClasses!1665 (toChars!5964 (transformation!4323 otherR!12)) (toValue!6105 (transformation!4323 otherR!12))))))

(assert (= (and d!674665 res!973932) b!2278892))

(declare-fun m!2707225 () Bool)

(assert (=> d!674665 m!2707225))

(declare-fun m!2707227 () Bool)

(assert (=> b!2278892 m!2707227))

(assert (=> b!2278574 d!674665))

(declare-fun b!2278903 () Bool)

(declare-fun res!973938 () Bool)

(declare-fun e!1459633 () Bool)

(assert (=> b!2278903 (=> (not res!973938) (not e!1459633))))

(declare-fun lt!846046 () List!27180)

(assert (=> b!2278903 (= res!973938 (= (size!21294 lt!846046) (+ (size!21294 lt!845966) (size!21294 lt!845964))))))

(declare-fun b!2278902 () Bool)

(declare-fun e!1459632 () List!27180)

(assert (=> b!2278902 (= e!1459632 (Cons!27086 (h!32487 lt!845966) (++!6615 (t!203340 lt!845966) lt!845964)))))

(declare-fun b!2278904 () Bool)

(assert (=> b!2278904 (= e!1459633 (or (not (= lt!845964 Nil!27086)) (= lt!846046 lt!845966)))))

(declare-fun b!2278901 () Bool)

(assert (=> b!2278901 (= e!1459632 lt!845964)))

(declare-fun d!674667 () Bool)

(assert (=> d!674667 e!1459633))

(declare-fun res!973937 () Bool)

(assert (=> d!674667 (=> (not res!973937) (not e!1459633))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3618 (List!27180) (InoxSet C!13488))

(assert (=> d!674667 (= res!973937 (= (content!3618 lt!846046) ((_ map or) (content!3618 lt!845966) (content!3618 lt!845964))))))

(assert (=> d!674667 (= lt!846046 e!1459632)))

(declare-fun c!361752 () Bool)

(assert (=> d!674667 (= c!361752 ((_ is Nil!27086) lt!845966))))

(assert (=> d!674667 (= (++!6615 lt!845966 lt!845964) lt!846046)))

(assert (= (and d!674667 c!361752) b!2278901))

(assert (= (and d!674667 (not c!361752)) b!2278902))

(assert (= (and d!674667 res!973937) b!2278903))

(assert (= (and b!2278903 res!973938) b!2278904))

(declare-fun m!2707229 () Bool)

(assert (=> b!2278903 m!2707229))

(declare-fun m!2707231 () Bool)

(assert (=> b!2278903 m!2707231))

(declare-fun m!2707233 () Bool)

(assert (=> b!2278903 m!2707233))

(declare-fun m!2707235 () Bool)

(assert (=> b!2278902 m!2707235))

(declare-fun m!2707237 () Bool)

(assert (=> d!674667 m!2707237))

(declare-fun m!2707239 () Bool)

(assert (=> d!674667 m!2707239))

(declare-fun m!2707241 () Bool)

(assert (=> d!674667 m!2707241))

(assert (=> b!2278584 d!674667))

(declare-fun b!2278915 () Bool)

(declare-fun e!1459642 () Bool)

(declare-fun tail!3287 (List!27180) List!27180)

(assert (=> b!2278915 (= e!1459642 (isPrefix!2313 (tail!3287 otherP!12) (tail!3287 input!1722)))))

(declare-fun b!2278914 () Bool)

(declare-fun res!973950 () Bool)

(assert (=> b!2278914 (=> (not res!973950) (not e!1459642))))

(declare-fun head!4930 (List!27180) C!13488)

(assert (=> b!2278914 (= res!973950 (= (head!4930 otherP!12) (head!4930 input!1722)))))

(declare-fun b!2278916 () Bool)

(declare-fun e!1459640 () Bool)

(assert (=> b!2278916 (= e!1459640 (>= (size!21294 input!1722) (size!21294 otherP!12)))))

(declare-fun b!2278913 () Bool)

(declare-fun e!1459641 () Bool)

(assert (=> b!2278913 (= e!1459641 e!1459642)))

(declare-fun res!973949 () Bool)

(assert (=> b!2278913 (=> (not res!973949) (not e!1459642))))

(assert (=> b!2278913 (= res!973949 (not ((_ is Nil!27086) input!1722)))))

(declare-fun d!674669 () Bool)

(assert (=> d!674669 e!1459640))

(declare-fun res!973948 () Bool)

(assert (=> d!674669 (=> res!973948 e!1459640)))

(declare-fun lt!846049 () Bool)

(assert (=> d!674669 (= res!973948 (not lt!846049))))

(assert (=> d!674669 (= lt!846049 e!1459641)))

(declare-fun res!973947 () Bool)

(assert (=> d!674669 (=> res!973947 e!1459641)))

(assert (=> d!674669 (= res!973947 ((_ is Nil!27086) otherP!12))))

(assert (=> d!674669 (= (isPrefix!2313 otherP!12 input!1722) lt!846049)))

(assert (= (and d!674669 (not res!973947)) b!2278913))

(assert (= (and b!2278913 res!973949) b!2278914))

(assert (= (and b!2278914 res!973950) b!2278915))

(assert (= (and d!674669 (not res!973948)) b!2278916))

(declare-fun m!2707243 () Bool)

(assert (=> b!2278915 m!2707243))

(declare-fun m!2707245 () Bool)

(assert (=> b!2278915 m!2707245))

(assert (=> b!2278915 m!2707243))

(assert (=> b!2278915 m!2707245))

(declare-fun m!2707247 () Bool)

(assert (=> b!2278915 m!2707247))

(declare-fun m!2707249 () Bool)

(assert (=> b!2278914 m!2707249))

(declare-fun m!2707251 () Bool)

(assert (=> b!2278914 m!2707251))

(declare-fun m!2707253 () Bool)

(assert (=> b!2278916 m!2707253))

(assert (=> b!2278916 m!2706891))

(assert (=> b!2278585 d!674669))

(declare-fun b!2278919 () Bool)

(declare-fun e!1459645 () Bool)

(assert (=> b!2278919 (= e!1459645 (isPrefix!2313 (tail!3287 lt!845966) (tail!3287 lt!845970)))))

(declare-fun b!2278918 () Bool)

(declare-fun res!973954 () Bool)

(assert (=> b!2278918 (=> (not res!973954) (not e!1459645))))

(assert (=> b!2278918 (= res!973954 (= (head!4930 lt!845966) (head!4930 lt!845970)))))

(declare-fun b!2278920 () Bool)

(declare-fun e!1459643 () Bool)

(assert (=> b!2278920 (= e!1459643 (>= (size!21294 lt!845970) (size!21294 lt!845966)))))

(declare-fun b!2278917 () Bool)

(declare-fun e!1459644 () Bool)

(assert (=> b!2278917 (= e!1459644 e!1459645)))

(declare-fun res!973953 () Bool)

(assert (=> b!2278917 (=> (not res!973953) (not e!1459645))))

(assert (=> b!2278917 (= res!973953 (not ((_ is Nil!27086) lt!845970)))))

(declare-fun d!674671 () Bool)

(assert (=> d!674671 e!1459643))

(declare-fun res!973952 () Bool)

(assert (=> d!674671 (=> res!973952 e!1459643)))

(declare-fun lt!846050 () Bool)

(assert (=> d!674671 (= res!973952 (not lt!846050))))

(assert (=> d!674671 (= lt!846050 e!1459644)))

(declare-fun res!973951 () Bool)

(assert (=> d!674671 (=> res!973951 e!1459644)))

(assert (=> d!674671 (= res!973951 ((_ is Nil!27086) lt!845966))))

(assert (=> d!674671 (= (isPrefix!2313 lt!845966 lt!845970) lt!846050)))

(assert (= (and d!674671 (not res!973951)) b!2278917))

(assert (= (and b!2278917 res!973953) b!2278918))

(assert (= (and b!2278918 res!973954) b!2278919))

(assert (= (and d!674671 (not res!973952)) b!2278920))

(declare-fun m!2707255 () Bool)

(assert (=> b!2278919 m!2707255))

(declare-fun m!2707257 () Bool)

(assert (=> b!2278919 m!2707257))

(assert (=> b!2278919 m!2707255))

(assert (=> b!2278919 m!2707257))

(declare-fun m!2707259 () Bool)

(assert (=> b!2278919 m!2707259))

(declare-fun m!2707261 () Bool)

(assert (=> b!2278918 m!2707261))

(declare-fun m!2707263 () Bool)

(assert (=> b!2278918 m!2707263))

(declare-fun m!2707265 () Bool)

(assert (=> b!2278920 m!2707265))

(assert (=> b!2278920 m!2707231))

(assert (=> b!2278564 d!674671))

(declare-fun d!674673 () Bool)

(assert (=> d!674673 (= (list!10544 (charsOf!2711 (h!32489 tokens!456))) (list!10548 (c!361702 (charsOf!2711 (h!32489 tokens!456)))))))

(declare-fun bs!456522 () Bool)

(assert (= bs!456522 d!674673))

(declare-fun m!2707267 () Bool)

(assert (=> bs!456522 m!2707267))

(assert (=> b!2278564 d!674673))

(declare-fun b!2278923 () Bool)

(declare-fun res!973956 () Bool)

(declare-fun e!1459647 () Bool)

(assert (=> b!2278923 (=> (not res!973956) (not e!1459647))))

(declare-fun lt!846051 () List!27180)

(assert (=> b!2278923 (= res!973956 (= (size!21294 lt!846051) (+ (size!21294 lt!845966) (size!21294 (_2!15915 lt!845969)))))))

(declare-fun b!2278922 () Bool)

(declare-fun e!1459646 () List!27180)

(assert (=> b!2278922 (= e!1459646 (Cons!27086 (h!32487 lt!845966) (++!6615 (t!203340 lt!845966) (_2!15915 lt!845969))))))

(declare-fun b!2278924 () Bool)

(assert (=> b!2278924 (= e!1459647 (or (not (= (_2!15915 lt!845969) Nil!27086)) (= lt!846051 lt!845966)))))

(declare-fun b!2278921 () Bool)

(assert (=> b!2278921 (= e!1459646 (_2!15915 lt!845969))))

(declare-fun d!674675 () Bool)

(assert (=> d!674675 e!1459647))

(declare-fun res!973955 () Bool)

(assert (=> d!674675 (=> (not res!973955) (not e!1459647))))

(assert (=> d!674675 (= res!973955 (= (content!3618 lt!846051) ((_ map or) (content!3618 lt!845966) (content!3618 (_2!15915 lt!845969)))))))

(assert (=> d!674675 (= lt!846051 e!1459646)))

(declare-fun c!361753 () Bool)

(assert (=> d!674675 (= c!361753 ((_ is Nil!27086) lt!845966))))

(assert (=> d!674675 (= (++!6615 lt!845966 (_2!15915 lt!845969)) lt!846051)))

(assert (= (and d!674675 c!361753) b!2278921))

(assert (= (and d!674675 (not c!361753)) b!2278922))

(assert (= (and d!674675 res!973955) b!2278923))

(assert (= (and b!2278923 res!973956) b!2278924))

(declare-fun m!2707269 () Bool)

(assert (=> b!2278923 m!2707269))

(assert (=> b!2278923 m!2707231))

(declare-fun m!2707271 () Bool)

(assert (=> b!2278923 m!2707271))

(declare-fun m!2707273 () Bool)

(assert (=> b!2278922 m!2707273))

(declare-fun m!2707275 () Bool)

(assert (=> d!674675 m!2707275))

(assert (=> d!674675 m!2707239))

(declare-fun m!2707277 () Bool)

(assert (=> d!674675 m!2707277))

(assert (=> b!2278564 d!674675))

(declare-fun d!674677 () Bool)

(declare-fun lt!846052 () BalanceConc!17316)

(assert (=> d!674677 (= (list!10544 lt!846052) (originalCharacters!5093 (h!32489 tokens!456)))))

(assert (=> d!674677 (= lt!846052 (dynLambda!11767 (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))) (value!137025 (h!32489 tokens!456))))))

(assert (=> d!674677 (= (charsOf!2711 (h!32489 tokens!456)) lt!846052)))

(declare-fun b_lambda!72555 () Bool)

(assert (=> (not b_lambda!72555) (not d!674677)))

(assert (=> d!674677 t!203372))

(declare-fun b_and!179889 () Bool)

(assert (= b_and!179877 (and (=> t!203372 result!165144) b_and!179889)))

(assert (=> d!674677 t!203374))

(declare-fun b_and!179891 () Bool)

(assert (= b_and!179879 (and (=> t!203374 result!165146) b_and!179891)))

(assert (=> d!674677 t!203376))

(declare-fun b_and!179893 () Bool)

(assert (= b_and!179881 (and (=> t!203376 result!165148) b_and!179893)))

(assert (=> d!674677 t!203378))

(declare-fun b_and!179895 () Bool)

(assert (= b_and!179883 (and (=> t!203378 result!165150) b_and!179895)))

(declare-fun m!2707279 () Bool)

(assert (=> d!674677 m!2707279))

(assert (=> d!674677 m!2707197))

(assert (=> b!2278564 d!674677))

(declare-fun b!2278927 () Bool)

(declare-fun e!1459650 () Bool)

(assert (=> b!2278927 (= e!1459650 (isPrefix!2313 (tail!3287 lt!845966) (tail!3287 input!1722)))))

(declare-fun b!2278926 () Bool)

(declare-fun res!973960 () Bool)

(assert (=> b!2278926 (=> (not res!973960) (not e!1459650))))

(assert (=> b!2278926 (= res!973960 (= (head!4930 lt!845966) (head!4930 input!1722)))))

(declare-fun b!2278928 () Bool)

(declare-fun e!1459648 () Bool)

(assert (=> b!2278928 (= e!1459648 (>= (size!21294 input!1722) (size!21294 lt!845966)))))

(declare-fun b!2278925 () Bool)

(declare-fun e!1459649 () Bool)

(assert (=> b!2278925 (= e!1459649 e!1459650)))

(declare-fun res!973959 () Bool)

(assert (=> b!2278925 (=> (not res!973959) (not e!1459650))))

(assert (=> b!2278925 (= res!973959 (not ((_ is Nil!27086) input!1722)))))

(declare-fun d!674679 () Bool)

(assert (=> d!674679 e!1459648))

(declare-fun res!973958 () Bool)

(assert (=> d!674679 (=> res!973958 e!1459648)))

(declare-fun lt!846053 () Bool)

(assert (=> d!674679 (= res!973958 (not lt!846053))))

(assert (=> d!674679 (= lt!846053 e!1459649)))

(declare-fun res!973957 () Bool)

(assert (=> d!674679 (=> res!973957 e!1459649)))

(assert (=> d!674679 (= res!973957 ((_ is Nil!27086) lt!845966))))

(assert (=> d!674679 (= (isPrefix!2313 lt!845966 input!1722) lt!846053)))

(assert (= (and d!674679 (not res!973957)) b!2278925))

(assert (= (and b!2278925 res!973959) b!2278926))

(assert (= (and b!2278926 res!973960) b!2278927))

(assert (= (and d!674679 (not res!973958)) b!2278928))

(assert (=> b!2278927 m!2707255))

(assert (=> b!2278927 m!2707245))

(assert (=> b!2278927 m!2707255))

(assert (=> b!2278927 m!2707245))

(declare-fun m!2707281 () Bool)

(assert (=> b!2278927 m!2707281))

(assert (=> b!2278926 m!2707261))

(assert (=> b!2278926 m!2707251))

(assert (=> b!2278928 m!2707253))

(assert (=> b!2278928 m!2707231))

(assert (=> b!2278564 d!674679))

(declare-fun d!674681 () Bool)

(declare-fun lt!846056 () List!27180)

(assert (=> d!674681 (= (++!6615 lt!845966 lt!846056) input!1722)))

(declare-fun e!1459653 () List!27180)

(assert (=> d!674681 (= lt!846056 e!1459653)))

(declare-fun c!361756 () Bool)

(assert (=> d!674681 (= c!361756 ((_ is Cons!27086) lt!845966))))

(assert (=> d!674681 (>= (size!21294 input!1722) (size!21294 lt!845966))))

(assert (=> d!674681 (= (getSuffix!1104 input!1722 lt!845966) lt!846056)))

(declare-fun b!2278933 () Bool)

(assert (=> b!2278933 (= e!1459653 (getSuffix!1104 (tail!3287 input!1722) (t!203340 lt!845966)))))

(declare-fun b!2278934 () Bool)

(assert (=> b!2278934 (= e!1459653 input!1722)))

(assert (= (and d!674681 c!361756) b!2278933))

(assert (= (and d!674681 (not c!361756)) b!2278934))

(declare-fun m!2707283 () Bool)

(assert (=> d!674681 m!2707283))

(assert (=> d!674681 m!2707253))

(assert (=> d!674681 m!2707231))

(assert (=> b!2278933 m!2707245))

(assert (=> b!2278933 m!2707245))

(declare-fun m!2707285 () Bool)

(assert (=> b!2278933 m!2707285))

(assert (=> b!2278564 d!674681))

(declare-fun d!674683 () Bool)

(assert (=> d!674683 (isPrefix!2313 lt!845966 (++!6615 lt!845966 (_2!15915 lt!845969)))))

(declare-fun lt!846059 () Unit!40024)

(declare-fun choose!13291 (List!27180 List!27180) Unit!40024)

(assert (=> d!674683 (= lt!846059 (choose!13291 lt!845966 (_2!15915 lt!845969)))))

(assert (=> d!674683 (= (lemmaConcatTwoListThenFirstIsPrefix!1518 lt!845966 (_2!15915 lt!845969)) lt!846059)))

(declare-fun bs!456523 () Bool)

(assert (= bs!456523 d!674683))

(assert (=> bs!456523 m!2706871))

(assert (=> bs!456523 m!2706871))

(declare-fun m!2707287 () Bool)

(assert (=> bs!456523 m!2707287))

(declare-fun m!2707289 () Bool)

(assert (=> bs!456523 m!2707289))

(assert (=> b!2278564 d!674683))

(declare-fun d!674685 () Bool)

(assert (=> d!674685 (= (isEmpty!15372 tokens!456) ((_ is Nil!27088) tokens!456))))

(assert (=> b!2278582 d!674685))

(declare-fun d!674687 () Bool)

(declare-fun lt!846062 () Bool)

(declare-fun content!3619 (List!27181) (InoxSet Rule!8446))

(assert (=> d!674687 (= lt!846062 (select (content!3619 rules!1750) otherR!12))))

(declare-fun e!1459658 () Bool)

(assert (=> d!674687 (= lt!846062 e!1459658)))

(declare-fun res!973966 () Bool)

(assert (=> d!674687 (=> (not res!973966) (not e!1459658))))

(assert (=> d!674687 (= res!973966 ((_ is Cons!27087) rules!1750))))

(assert (=> d!674687 (= (contains!4695 rules!1750 otherR!12) lt!846062)))

(declare-fun b!2278939 () Bool)

(declare-fun e!1459659 () Bool)

(assert (=> b!2278939 (= e!1459658 e!1459659)))

(declare-fun res!973965 () Bool)

(assert (=> b!2278939 (=> res!973965 e!1459659)))

(assert (=> b!2278939 (= res!973965 (= (h!32488 rules!1750) otherR!12))))

(declare-fun b!2278940 () Bool)

(assert (=> b!2278940 (= e!1459659 (contains!4695 (t!203341 rules!1750) otherR!12))))

(assert (= (and d!674687 res!973966) b!2278939))

(assert (= (and b!2278939 (not res!973965)) b!2278940))

(declare-fun m!2707291 () Bool)

(assert (=> d!674687 m!2707291))

(declare-fun m!2707293 () Bool)

(assert (=> d!674687 m!2707293))

(declare-fun m!2707295 () Bool)

(assert (=> b!2278940 m!2707295))

(assert (=> b!2278581 d!674687))

(declare-fun d!674689 () Bool)

(declare-fun res!973969 () Bool)

(declare-fun e!1459662 () Bool)

(assert (=> d!674689 (=> (not res!973969) (not e!1459662))))

(declare-fun rulesValid!1590 (LexerInterface!3920 List!27181) Bool)

(assert (=> d!674689 (= res!973969 (rulesValid!1590 thiss!16613 rules!1750))))

(assert (=> d!674689 (= (rulesInvariant!3422 thiss!16613 rules!1750) e!1459662)))

(declare-fun b!2278943 () Bool)

(declare-datatypes ((List!27184 0))(
  ( (Nil!27090) (Cons!27090 (h!32491 String!29529) (t!203392 List!27184)) )
))
(declare-fun noDuplicateTag!1588 (LexerInterface!3920 List!27181 List!27184) Bool)

(assert (=> b!2278943 (= e!1459662 (noDuplicateTag!1588 thiss!16613 rules!1750 Nil!27090))))

(assert (= (and d!674689 res!973969) b!2278943))

(declare-fun m!2707297 () Bool)

(assert (=> d!674689 m!2707297))

(declare-fun m!2707299 () Bool)

(assert (=> b!2278943 m!2707299))

(assert (=> b!2278560 d!674689))

(declare-fun d!674691 () Bool)

(declare-fun lt!846063 () Bool)

(assert (=> d!674691 (= lt!846063 (select (content!3619 rules!1750) r!2363))))

(declare-fun e!1459663 () Bool)

(assert (=> d!674691 (= lt!846063 e!1459663)))

(declare-fun res!973971 () Bool)

(assert (=> d!674691 (=> (not res!973971) (not e!1459663))))

(assert (=> d!674691 (= res!973971 ((_ is Cons!27087) rules!1750))))

(assert (=> d!674691 (= (contains!4695 rules!1750 r!2363) lt!846063)))

(declare-fun b!2278944 () Bool)

(declare-fun e!1459664 () Bool)

(assert (=> b!2278944 (= e!1459663 e!1459664)))

(declare-fun res!973970 () Bool)

(assert (=> b!2278944 (=> res!973970 e!1459664)))

(assert (=> b!2278944 (= res!973970 (= (h!32488 rules!1750) r!2363))))

(declare-fun b!2278945 () Bool)

(assert (=> b!2278945 (= e!1459664 (contains!4695 (t!203341 rules!1750) r!2363))))

(assert (= (and d!674691 res!973971) b!2278944))

(assert (= (and b!2278944 (not res!973970)) b!2278945))

(assert (=> d!674691 m!2707291))

(declare-fun m!2707301 () Bool)

(assert (=> d!674691 m!2707301))

(declare-fun m!2707303 () Bool)

(assert (=> b!2278945 m!2707303))

(assert (=> b!2278579 d!674691))

(assert (=> b!2278557 d!674633))

(declare-fun b!2278954 () Bool)

(declare-fun e!1459671 () Int)

(assert (=> b!2278954 (= e!1459671 0)))

(declare-fun b!2278955 () Bool)

(declare-fun e!1459670 () Int)

(assert (=> b!2278955 (= e!1459671 e!1459670)))

(declare-fun c!361761 () Bool)

(assert (=> b!2278955 (= c!361761 (and ((_ is Cons!27087) rules!1750) (not (= (h!32488 rules!1750) r!2363))))))

(declare-fun b!2278957 () Bool)

(assert (=> b!2278957 (= e!1459670 (- 1))))

(declare-fun b!2278956 () Bool)

(assert (=> b!2278956 (= e!1459670 (+ 1 (getIndex!336 (t!203341 rules!1750) r!2363)))))

(declare-fun d!674693 () Bool)

(declare-fun lt!846066 () Int)

(assert (=> d!674693 (>= lt!846066 0)))

(assert (=> d!674693 (= lt!846066 e!1459671)))

(declare-fun c!361762 () Bool)

(assert (=> d!674693 (= c!361762 (and ((_ is Cons!27087) rules!1750) (= (h!32488 rules!1750) r!2363)))))

(assert (=> d!674693 (contains!4695 rules!1750 r!2363)))

(assert (=> d!674693 (= (getIndex!336 rules!1750 r!2363) lt!846066)))

(assert (= (and d!674693 c!361762) b!2278954))

(assert (= (and d!674693 (not c!361762)) b!2278955))

(assert (= (and b!2278955 c!361761) b!2278956))

(assert (= (and b!2278955 (not c!361761)) b!2278957))

(declare-fun m!2707305 () Bool)

(assert (=> b!2278956 m!2707305))

(assert (=> d!674693 m!2706911))

(assert (=> b!2278559 d!674693))

(declare-fun b!2278958 () Bool)

(declare-fun e!1459673 () Int)

(assert (=> b!2278958 (= e!1459673 0)))

(declare-fun b!2278959 () Bool)

(declare-fun e!1459672 () Int)

(assert (=> b!2278959 (= e!1459673 e!1459672)))

(declare-fun c!361763 () Bool)

(assert (=> b!2278959 (= c!361763 (and ((_ is Cons!27087) rules!1750) (not (= (h!32488 rules!1750) otherR!12))))))

(declare-fun b!2278961 () Bool)

(assert (=> b!2278961 (= e!1459672 (- 1))))

(declare-fun b!2278960 () Bool)

(assert (=> b!2278960 (= e!1459672 (+ 1 (getIndex!336 (t!203341 rules!1750) otherR!12)))))

(declare-fun d!674695 () Bool)

(declare-fun lt!846067 () Int)

(assert (=> d!674695 (>= lt!846067 0)))

(assert (=> d!674695 (= lt!846067 e!1459673)))

(declare-fun c!361764 () Bool)

(assert (=> d!674695 (= c!361764 (and ((_ is Cons!27087) rules!1750) (= (h!32488 rules!1750) otherR!12)))))

(assert (=> d!674695 (contains!4695 rules!1750 otherR!12)))

(assert (=> d!674695 (= (getIndex!336 rules!1750 otherR!12) lt!846067)))

(assert (= (and d!674695 c!361764) b!2278958))

(assert (= (and d!674695 (not c!361764)) b!2278959))

(assert (= (and b!2278959 c!361763) b!2278960))

(assert (= (and b!2278959 (not c!361763)) b!2278961))

(declare-fun m!2707307 () Bool)

(assert (=> b!2278960 m!2707307))

(assert (=> d!674695 m!2706901))

(assert (=> b!2278559 d!674695))

(declare-fun d!674697 () Bool)

(declare-fun res!973972 () Bool)

(declare-fun e!1459674 () Bool)

(assert (=> d!674697 (=> (not res!973972) (not e!1459674))))

(assert (=> d!674697 (= res!973972 (validRegex!2506 (regex!4323 otherR!12)))))

(assert (=> d!674697 (= (ruleValid!1413 thiss!16613 otherR!12) e!1459674)))

(declare-fun b!2278962 () Bool)

(declare-fun res!973973 () Bool)

(assert (=> b!2278962 (=> (not res!973973) (not e!1459674))))

(assert (=> b!2278962 (= res!973973 (not (nullable!1844 (regex!4323 otherR!12))))))

(declare-fun b!2278963 () Bool)

(assert (=> b!2278963 (= e!1459674 (not (= (tag!4813 otherR!12) (String!29530 ""))))))

(assert (= (and d!674697 res!973972) b!2278962))

(assert (= (and b!2278962 res!973973) b!2278963))

(declare-fun m!2707309 () Bool)

(assert (=> d!674697 m!2707309))

(declare-fun m!2707311 () Bool)

(assert (=> b!2278962 m!2707311))

(assert (=> b!2278559 d!674697))

(declare-fun d!674699 () Bool)

(assert (=> d!674699 (ruleValid!1413 thiss!16613 otherR!12)))

(declare-fun lt!846068 () Unit!40024)

(assert (=> d!674699 (= lt!846068 (choose!13289 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!674699 (contains!4695 rules!1750 otherR!12)))

(assert (=> d!674699 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!818 thiss!16613 otherR!12 rules!1750) lt!846068)))

(declare-fun bs!456524 () Bool)

(assert (= bs!456524 d!674699))

(assert (=> bs!456524 m!2706897))

(declare-fun m!2707313 () Bool)

(assert (=> bs!456524 m!2707313))

(assert (=> bs!456524 m!2706901))

(assert (=> b!2278559 d!674699))

(declare-fun b!2278992 () Bool)

(declare-fun e!1459690 () Bool)

(declare-fun e!1459693 () Bool)

(assert (=> b!2278992 (= e!1459690 e!1459693)))

(declare-fun c!361773 () Bool)

(assert (=> b!2278992 (= c!361773 ((_ is EmptyLang!6671) (regex!4323 r!2363)))))

(declare-fun b!2278993 () Bool)

(declare-fun res!973991 () Bool)

(declare-fun e!1459692 () Bool)

(assert (=> b!2278993 (=> res!973991 e!1459692)))

(assert (=> b!2278993 (= res!973991 (not ((_ is ElementMatch!6671) (regex!4323 r!2363))))))

(assert (=> b!2278993 (= e!1459693 e!1459692)))

(declare-fun b!2278994 () Bool)

(declare-fun res!973995 () Bool)

(assert (=> b!2278994 (=> res!973995 e!1459692)))

(declare-fun e!1459689 () Bool)

(assert (=> b!2278994 (= res!973995 e!1459689)))

(declare-fun res!973996 () Bool)

(assert (=> b!2278994 (=> (not res!973996) (not e!1459689))))

(declare-fun lt!846071 () Bool)

(assert (=> b!2278994 (= res!973996 lt!846071)))

(declare-fun b!2278995 () Bool)

(declare-fun e!1459695 () Bool)

(assert (=> b!2278995 (= e!1459692 e!1459695)))

(declare-fun res!973993 () Bool)

(assert (=> b!2278995 (=> (not res!973993) (not e!1459695))))

(assert (=> b!2278995 (= res!973993 (not lt!846071))))

(declare-fun b!2278996 () Bool)

(declare-fun res!973992 () Bool)

(declare-fun e!1459694 () Bool)

(assert (=> b!2278996 (=> res!973992 e!1459694)))

(assert (=> b!2278996 (= res!973992 (not (isEmpty!15377 (tail!3287 (list!10544 (charsOf!2711 (head!4928 tokens!456)))))))))

(declare-fun b!2278997 () Bool)

(declare-fun call!136397 () Bool)

(assert (=> b!2278997 (= e!1459690 (= lt!846071 call!136397))))

(declare-fun b!2278998 () Bool)

(assert (=> b!2278998 (= e!1459693 (not lt!846071))))

(declare-fun b!2278999 () Bool)

(assert (=> b!2278999 (= e!1459695 e!1459694)))

(declare-fun res!973994 () Bool)

(assert (=> b!2278999 (=> res!973994 e!1459694)))

(assert (=> b!2278999 (= res!973994 call!136397)))

(declare-fun d!674701 () Bool)

(assert (=> d!674701 e!1459690))

(declare-fun c!361771 () Bool)

(assert (=> d!674701 (= c!361771 ((_ is EmptyExpr!6671) (regex!4323 r!2363)))))

(declare-fun e!1459691 () Bool)

(assert (=> d!674701 (= lt!846071 e!1459691)))

(declare-fun c!361772 () Bool)

(assert (=> d!674701 (= c!361772 (isEmpty!15377 (list!10544 (charsOf!2711 (head!4928 tokens!456)))))))

(assert (=> d!674701 (validRegex!2506 (regex!4323 r!2363))))

(assert (=> d!674701 (= (matchR!2928 (regex!4323 r!2363) (list!10544 (charsOf!2711 (head!4928 tokens!456)))) lt!846071)))

(declare-fun b!2279000 () Bool)

(declare-fun res!973990 () Bool)

(assert (=> b!2279000 (=> (not res!973990) (not e!1459689))))

(assert (=> b!2279000 (= res!973990 (not call!136397))))

(declare-fun b!2279001 () Bool)

(assert (=> b!2279001 (= e!1459691 (nullable!1844 (regex!4323 r!2363)))))

(declare-fun b!2279002 () Bool)

(declare-fun derivativeStep!1504 (Regex!6671 C!13488) Regex!6671)

(assert (=> b!2279002 (= e!1459691 (matchR!2928 (derivativeStep!1504 (regex!4323 r!2363) (head!4930 (list!10544 (charsOf!2711 (head!4928 tokens!456))))) (tail!3287 (list!10544 (charsOf!2711 (head!4928 tokens!456))))))))

(declare-fun b!2279003 () Bool)

(assert (=> b!2279003 (= e!1459689 (= (head!4930 (list!10544 (charsOf!2711 (head!4928 tokens!456)))) (c!361703 (regex!4323 r!2363))))))

(declare-fun bm!136392 () Bool)

(assert (=> bm!136392 (= call!136397 (isEmpty!15377 (list!10544 (charsOf!2711 (head!4928 tokens!456)))))))

(declare-fun b!2279004 () Bool)

(declare-fun res!973997 () Bool)

(assert (=> b!2279004 (=> (not res!973997) (not e!1459689))))

(assert (=> b!2279004 (= res!973997 (isEmpty!15377 (tail!3287 (list!10544 (charsOf!2711 (head!4928 tokens!456))))))))

(declare-fun b!2279005 () Bool)

(assert (=> b!2279005 (= e!1459694 (not (= (head!4930 (list!10544 (charsOf!2711 (head!4928 tokens!456)))) (c!361703 (regex!4323 r!2363)))))))

(assert (= (and d!674701 c!361772) b!2279001))

(assert (= (and d!674701 (not c!361772)) b!2279002))

(assert (= (and d!674701 c!361771) b!2278997))

(assert (= (and d!674701 (not c!361771)) b!2278992))

(assert (= (and b!2278992 c!361773) b!2278998))

(assert (= (and b!2278992 (not c!361773)) b!2278993))

(assert (= (and b!2278993 (not res!973991)) b!2278994))

(assert (= (and b!2278994 res!973996) b!2279000))

(assert (= (and b!2279000 res!973990) b!2279004))

(assert (= (and b!2279004 res!973997) b!2279003))

(assert (= (and b!2278994 (not res!973995)) b!2278995))

(assert (= (and b!2278995 res!973993) b!2278999))

(assert (= (and b!2278999 (not res!973994)) b!2278996))

(assert (= (and b!2278996 (not res!973992)) b!2279005))

(assert (= (or b!2278997 b!2278999 b!2279000) bm!136392))

(assert (=> b!2279005 m!2706855))

(declare-fun m!2707315 () Bool)

(assert (=> b!2279005 m!2707315))

(assert (=> b!2279003 m!2706855))

(assert (=> b!2279003 m!2707315))

(assert (=> b!2279004 m!2706855))

(declare-fun m!2707317 () Bool)

(assert (=> b!2279004 m!2707317))

(assert (=> b!2279004 m!2707317))

(declare-fun m!2707319 () Bool)

(assert (=> b!2279004 m!2707319))

(assert (=> b!2279002 m!2706855))

(assert (=> b!2279002 m!2707315))

(assert (=> b!2279002 m!2707315))

(declare-fun m!2707321 () Bool)

(assert (=> b!2279002 m!2707321))

(assert (=> b!2279002 m!2706855))

(assert (=> b!2279002 m!2707317))

(assert (=> b!2279002 m!2707321))

(assert (=> b!2279002 m!2707317))

(declare-fun m!2707323 () Bool)

(assert (=> b!2279002 m!2707323))

(assert (=> b!2279001 m!2707205))

(assert (=> bm!136392 m!2706855))

(declare-fun m!2707325 () Bool)

(assert (=> bm!136392 m!2707325))

(assert (=> b!2278996 m!2706855))

(assert (=> b!2278996 m!2707317))

(assert (=> b!2278996 m!2707317))

(assert (=> b!2278996 m!2707319))

(assert (=> d!674701 m!2706855))

(assert (=> d!674701 m!2707325))

(assert (=> d!674701 m!2707203))

(assert (=> b!2278570 d!674701))

(declare-fun d!674703 () Bool)

(assert (=> d!674703 (= (list!10544 (charsOf!2711 (head!4928 tokens!456))) (list!10548 (c!361702 (charsOf!2711 (head!4928 tokens!456)))))))

(declare-fun bs!456525 () Bool)

(assert (= bs!456525 d!674703))

(declare-fun m!2707327 () Bool)

(assert (=> bs!456525 m!2707327))

(assert (=> b!2278570 d!674703))

(assert (=> b!2278570 d!674623))

(assert (=> b!2278570 d!674633))

(declare-fun d!674705 () Bool)

(assert (=> d!674705 (= (get!8164 (maxPrefix!2184 thiss!16613 rules!1750 input!1722)) (v!30366 (maxPrefix!2184 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2278569 d!674705))

(declare-fun b!2279024 () Bool)

(declare-fun res!974018 () Bool)

(declare-fun e!1459703 () Bool)

(assert (=> b!2279024 (=> (not res!974018) (not e!1459703))))

(declare-fun lt!846086 () Option!5309)

(declare-fun apply!6605 (TokenValueInjection!8510 BalanceConc!17316) TokenValue!4485)

(assert (=> b!2279024 (= res!974018 (= (value!137025 (_1!15915 (get!8164 lt!846086))) (apply!6605 (transformation!4323 (rule!6649 (_1!15915 (get!8164 lt!846086)))) (seqFromList!3027 (originalCharacters!5093 (_1!15915 (get!8164 lt!846086)))))))))

(declare-fun d!674707 () Bool)

(declare-fun e!1459702 () Bool)

(assert (=> d!674707 e!1459702))

(declare-fun res!974016 () Bool)

(assert (=> d!674707 (=> res!974016 e!1459702)))

(declare-fun isEmpty!15378 (Option!5309) Bool)

(assert (=> d!674707 (= res!974016 (isEmpty!15378 lt!846086))))

(declare-fun e!1459704 () Option!5309)

(assert (=> d!674707 (= lt!846086 e!1459704)))

(declare-fun c!361776 () Bool)

(assert (=> d!674707 (= c!361776 (and ((_ is Cons!27087) rules!1750) ((_ is Nil!27087) (t!203341 rules!1750))))))

(declare-fun lt!846082 () Unit!40024)

(declare-fun lt!846084 () Unit!40024)

(assert (=> d!674707 (= lt!846082 lt!846084)))

(assert (=> d!674707 (isPrefix!2313 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1473 (List!27180 List!27180) Unit!40024)

(assert (=> d!674707 (= lt!846084 (lemmaIsPrefixRefl!1473 input!1722 input!1722))))

(declare-fun rulesValidInductive!1515 (LexerInterface!3920 List!27181) Bool)

(assert (=> d!674707 (rulesValidInductive!1515 thiss!16613 rules!1750)))

(assert (=> d!674707 (= (maxPrefix!2184 thiss!16613 rules!1750 input!1722) lt!846086)))

(declare-fun b!2279025 () Bool)

(declare-fun res!974014 () Bool)

(assert (=> b!2279025 (=> (not res!974014) (not e!1459703))))

(assert (=> b!2279025 (= res!974014 (matchR!2928 (regex!4323 (rule!6649 (_1!15915 (get!8164 lt!846086)))) (list!10544 (charsOf!2711 (_1!15915 (get!8164 lt!846086))))))))

(declare-fun b!2279026 () Bool)

(assert (=> b!2279026 (= e!1459703 (contains!4695 rules!1750 (rule!6649 (_1!15915 (get!8164 lt!846086)))))))

(declare-fun b!2279027 () Bool)

(declare-fun lt!846085 () Option!5309)

(declare-fun lt!846083 () Option!5309)

(assert (=> b!2279027 (= e!1459704 (ite (and ((_ is None!5308) lt!846085) ((_ is None!5308) lt!846083)) None!5308 (ite ((_ is None!5308) lt!846083) lt!846085 (ite ((_ is None!5308) lt!846085) lt!846083 (ite (>= (size!21292 (_1!15915 (v!30366 lt!846085))) (size!21292 (_1!15915 (v!30366 lt!846083)))) lt!846085 lt!846083)))))))

(declare-fun call!136400 () Option!5309)

(assert (=> b!2279027 (= lt!846085 call!136400)))

(assert (=> b!2279027 (= lt!846083 (maxPrefix!2184 thiss!16613 (t!203341 rules!1750) input!1722))))

(declare-fun b!2279028 () Bool)

(declare-fun res!974012 () Bool)

(assert (=> b!2279028 (=> (not res!974012) (not e!1459703))))

(assert (=> b!2279028 (= res!974012 (< (size!21294 (_2!15915 (get!8164 lt!846086))) (size!21294 input!1722)))))

(declare-fun b!2279029 () Bool)

(assert (=> b!2279029 (= e!1459704 call!136400)))

(declare-fun bm!136395 () Bool)

(declare-fun maxPrefixOneRule!1368 (LexerInterface!3920 Rule!8446 List!27180) Option!5309)

(assert (=> bm!136395 (= call!136400 (maxPrefixOneRule!1368 thiss!16613 (h!32488 rules!1750) input!1722))))

(declare-fun b!2279030 () Bool)

(declare-fun res!974017 () Bool)

(assert (=> b!2279030 (=> (not res!974017) (not e!1459703))))

(assert (=> b!2279030 (= res!974017 (= (++!6615 (list!10544 (charsOf!2711 (_1!15915 (get!8164 lt!846086)))) (_2!15915 (get!8164 lt!846086))) input!1722))))

(declare-fun b!2279031 () Bool)

(assert (=> b!2279031 (= e!1459702 e!1459703)))

(declare-fun res!974013 () Bool)

(assert (=> b!2279031 (=> (not res!974013) (not e!1459703))))

(declare-fun isDefined!4210 (Option!5309) Bool)

(assert (=> b!2279031 (= res!974013 (isDefined!4210 lt!846086))))

(declare-fun b!2279032 () Bool)

(declare-fun res!974015 () Bool)

(assert (=> b!2279032 (=> (not res!974015) (not e!1459703))))

(assert (=> b!2279032 (= res!974015 (= (list!10544 (charsOf!2711 (_1!15915 (get!8164 lt!846086)))) (originalCharacters!5093 (_1!15915 (get!8164 lt!846086)))))))

(assert (= (and d!674707 c!361776) b!2279029))

(assert (= (and d!674707 (not c!361776)) b!2279027))

(assert (= (or b!2279029 b!2279027) bm!136395))

(assert (= (and d!674707 (not res!974016)) b!2279031))

(assert (= (and b!2279031 res!974013) b!2279032))

(assert (= (and b!2279032 res!974015) b!2279028))

(assert (= (and b!2279028 res!974012) b!2279030))

(assert (= (and b!2279030 res!974017) b!2279024))

(assert (= (and b!2279024 res!974018) b!2279025))

(assert (= (and b!2279025 res!974014) b!2279026))

(declare-fun m!2707329 () Bool)

(assert (=> b!2279026 m!2707329))

(declare-fun m!2707331 () Bool)

(assert (=> b!2279026 m!2707331))

(assert (=> b!2279028 m!2707329))

(declare-fun m!2707333 () Bool)

(assert (=> b!2279028 m!2707333))

(assert (=> b!2279028 m!2707253))

(assert (=> b!2279024 m!2707329))

(declare-fun m!2707335 () Bool)

(assert (=> b!2279024 m!2707335))

(assert (=> b!2279024 m!2707335))

(declare-fun m!2707337 () Bool)

(assert (=> b!2279024 m!2707337))

(declare-fun m!2707339 () Bool)

(assert (=> bm!136395 m!2707339))

(assert (=> b!2279032 m!2707329))

(declare-fun m!2707341 () Bool)

(assert (=> b!2279032 m!2707341))

(assert (=> b!2279032 m!2707341))

(declare-fun m!2707343 () Bool)

(assert (=> b!2279032 m!2707343))

(declare-fun m!2707345 () Bool)

(assert (=> d!674707 m!2707345))

(declare-fun m!2707347 () Bool)

(assert (=> d!674707 m!2707347))

(declare-fun m!2707349 () Bool)

(assert (=> d!674707 m!2707349))

(declare-fun m!2707351 () Bool)

(assert (=> d!674707 m!2707351))

(declare-fun m!2707353 () Bool)

(assert (=> b!2279027 m!2707353))

(assert (=> b!2279025 m!2707329))

(assert (=> b!2279025 m!2707341))

(assert (=> b!2279025 m!2707341))

(assert (=> b!2279025 m!2707343))

(assert (=> b!2279025 m!2707343))

(declare-fun m!2707355 () Bool)

(assert (=> b!2279025 m!2707355))

(assert (=> b!2279030 m!2707329))

(assert (=> b!2279030 m!2707341))

(assert (=> b!2279030 m!2707341))

(assert (=> b!2279030 m!2707343))

(assert (=> b!2279030 m!2707343))

(declare-fun m!2707357 () Bool)

(assert (=> b!2279030 m!2707357))

(declare-fun m!2707359 () Bool)

(assert (=> b!2279031 m!2707359))

(assert (=> b!2278569 d!674707))

(declare-fun b!2279043 () Bool)

(declare-fun e!1459713 () Bool)

(declare-fun inv!17 (TokenValue!4485) Bool)

(assert (=> b!2279043 (= e!1459713 (inv!17 (value!137025 (h!32489 tokens!456))))))

(declare-fun b!2279044 () Bool)

(declare-fun e!1459711 () Bool)

(declare-fun inv!15 (TokenValue!4485) Bool)

(assert (=> b!2279044 (= e!1459711 (inv!15 (value!137025 (h!32489 tokens!456))))))

(declare-fun b!2279045 () Bool)

(declare-fun res!974021 () Bool)

(assert (=> b!2279045 (=> res!974021 e!1459711)))

(assert (=> b!2279045 (= res!974021 (not ((_ is IntegerValue!13457) (value!137025 (h!32489 tokens!456)))))))

(assert (=> b!2279045 (= e!1459713 e!1459711)))

(declare-fun d!674709 () Bool)

(declare-fun c!361782 () Bool)

(assert (=> d!674709 (= c!361782 ((_ is IntegerValue!13455) (value!137025 (h!32489 tokens!456))))))

(declare-fun e!1459712 () Bool)

(assert (=> d!674709 (= (inv!21 (value!137025 (h!32489 tokens!456))) e!1459712)))

(declare-fun b!2279046 () Bool)

(declare-fun inv!16 (TokenValue!4485) Bool)

(assert (=> b!2279046 (= e!1459712 (inv!16 (value!137025 (h!32489 tokens!456))))))

(declare-fun b!2279047 () Bool)

(assert (=> b!2279047 (= e!1459712 e!1459713)))

(declare-fun c!361781 () Bool)

(assert (=> b!2279047 (= c!361781 ((_ is IntegerValue!13456) (value!137025 (h!32489 tokens!456))))))

(assert (= (and d!674709 c!361782) b!2279046))

(assert (= (and d!674709 (not c!361782)) b!2279047))

(assert (= (and b!2279047 c!361781) b!2279043))

(assert (= (and b!2279047 (not c!361781)) b!2279045))

(assert (= (and b!2279045 (not res!974021)) b!2279044))

(declare-fun m!2707361 () Bool)

(assert (=> b!2279043 m!2707361))

(declare-fun m!2707363 () Bool)

(assert (=> b!2279044 m!2707363))

(declare-fun m!2707365 () Bool)

(assert (=> b!2279046 m!2707365))

(assert (=> b!2278580 d!674709))

(declare-fun b!2279052 () Bool)

(declare-fun e!1459716 () Bool)

(declare-fun tp!722017 () Bool)

(assert (=> b!2279052 (= e!1459716 (and tp_is_empty!10563 tp!722017))))

(assert (=> b!2278565 (= tp!721938 e!1459716)))

(assert (= (and b!2278565 ((_ is Cons!27086) (t!203340 suffix!886))) b!2279052))

(declare-fun b!2279063 () Bool)

(declare-fun b_free!67973 () Bool)

(declare-fun b_next!68677 () Bool)

(assert (=> b!2279063 (= b_free!67973 (not b_next!68677))))

(declare-fun tp!722027 () Bool)

(declare-fun b_and!179897 () Bool)

(assert (=> b!2279063 (= tp!722027 b_and!179897)))

(declare-fun b_free!67975 () Bool)

(declare-fun b_next!68679 () Bool)

(assert (=> b!2279063 (= b_free!67975 (not b_next!68679))))

(declare-fun tb!135463 () Bool)

(declare-fun t!203385 () Bool)

(assert (=> (and b!2279063 (= (toChars!5964 (transformation!4323 (h!32488 (t!203341 rules!1750)))) (toChars!5964 (transformation!4323 (rule!6649 (head!4928 tokens!456))))) t!203385) tb!135463))

(declare-fun result!165162 () Bool)

(assert (= result!165162 result!165124))

(assert (=> d!674623 t!203385))

(declare-fun t!203387 () Bool)

(declare-fun tb!135465 () Bool)

(assert (=> (and b!2279063 (= (toChars!5964 (transformation!4323 (h!32488 (t!203341 rules!1750)))) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456))))) t!203387) tb!135465))

(declare-fun result!165164 () Bool)

(assert (= result!165164 result!165144))

(assert (=> b!2278858 t!203387))

(assert (=> d!674677 t!203387))

(declare-fun tp!722026 () Bool)

(declare-fun b_and!179899 () Bool)

(assert (=> b!2279063 (= tp!722026 (and (=> t!203385 result!165162) (=> t!203387 result!165164) b_and!179899))))

(declare-fun e!1459728 () Bool)

(assert (=> b!2279063 (= e!1459728 (and tp!722027 tp!722026))))

(declare-fun tp!722029 () Bool)

(declare-fun e!1459726 () Bool)

(declare-fun b!2279062 () Bool)

(assert (=> b!2279062 (= e!1459726 (and tp!722029 (inv!36668 (tag!4813 (h!32488 (t!203341 rules!1750)))) (inv!36671 (transformation!4323 (h!32488 (t!203341 rules!1750)))) e!1459728))))

(declare-fun b!2279061 () Bool)

(declare-fun e!1459727 () Bool)

(declare-fun tp!722028 () Bool)

(assert (=> b!2279061 (= e!1459727 (and e!1459726 tp!722028))))

(assert (=> b!2278576 (= tp!721942 e!1459727)))

(assert (= b!2279062 b!2279063))

(assert (= b!2279061 b!2279062))

(assert (= (and b!2278576 ((_ is Cons!27087) (t!203341 rules!1750))) b!2279061))

(declare-fun m!2707367 () Bool)

(assert (=> b!2279062 m!2707367))

(declare-fun m!2707369 () Bool)

(assert (=> b!2279062 m!2707369))

(declare-fun b!2279077 () Bool)

(declare-fun e!1459731 () Bool)

(declare-fun tp!722044 () Bool)

(declare-fun tp!722043 () Bool)

(assert (=> b!2279077 (= e!1459731 (and tp!722044 tp!722043))))

(declare-fun b!2279075 () Bool)

(declare-fun tp!722040 () Bool)

(declare-fun tp!722041 () Bool)

(assert (=> b!2279075 (= e!1459731 (and tp!722040 tp!722041))))

(declare-fun b!2279076 () Bool)

(declare-fun tp!722042 () Bool)

(assert (=> b!2279076 (= e!1459731 tp!722042)))

(declare-fun b!2279074 () Bool)

(assert (=> b!2279074 (= e!1459731 tp_is_empty!10563)))

(assert (=> b!2278578 (= tp!721936 e!1459731)))

(assert (= (and b!2278578 ((_ is ElementMatch!6671) (regex!4323 (rule!6649 (h!32489 tokens!456))))) b!2279074))

(assert (= (and b!2278578 ((_ is Concat!11157) (regex!4323 (rule!6649 (h!32489 tokens!456))))) b!2279075))

(assert (= (and b!2278578 ((_ is Star!6671) (regex!4323 (rule!6649 (h!32489 tokens!456))))) b!2279076))

(assert (= (and b!2278578 ((_ is Union!6671) (regex!4323 (rule!6649 (h!32489 tokens!456))))) b!2279077))

(declare-fun b!2279091 () Bool)

(declare-fun b_free!67977 () Bool)

(declare-fun b_next!68681 () Bool)

(assert (=> b!2279091 (= b_free!67977 (not b_next!68681))))

(declare-fun tp!722056 () Bool)

(declare-fun b_and!179901 () Bool)

(assert (=> b!2279091 (= tp!722056 b_and!179901)))

(declare-fun b_free!67979 () Bool)

(declare-fun b_next!68683 () Bool)

(assert (=> b!2279091 (= b_free!67979 (not b_next!68683))))

(declare-fun t!203389 () Bool)

(declare-fun tb!135467 () Bool)

(assert (=> (and b!2279091 (= (toChars!5964 (transformation!4323 (rule!6649 (h!32489 (t!203342 tokens!456))))) (toChars!5964 (transformation!4323 (rule!6649 (head!4928 tokens!456))))) t!203389) tb!135467))

(declare-fun result!165170 () Bool)

(assert (= result!165170 result!165124))

(assert (=> d!674623 t!203389))

(declare-fun t!203391 () Bool)

(declare-fun tb!135469 () Bool)

(assert (=> (and b!2279091 (= (toChars!5964 (transformation!4323 (rule!6649 (h!32489 (t!203342 tokens!456))))) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456))))) t!203391) tb!135469))

(declare-fun result!165172 () Bool)

(assert (= result!165172 result!165144))

(assert (=> b!2278858 t!203391))

(assert (=> d!674677 t!203391))

(declare-fun tp!722058 () Bool)

(declare-fun b_and!179903 () Bool)

(assert (=> b!2279091 (= tp!722058 (and (=> t!203389 result!165170) (=> t!203391 result!165172) b_and!179903))))

(declare-fun e!1459746 () Bool)

(declare-fun tp!722055 () Bool)

(declare-fun b!2279088 () Bool)

(declare-fun e!1459748 () Bool)

(assert (=> b!2279088 (= e!1459746 (and (inv!36672 (h!32489 (t!203342 tokens!456))) e!1459748 tp!722055))))

(assert (=> b!2278577 (= tp!721932 e!1459746)))

(declare-fun tp!722059 () Bool)

(declare-fun e!1459745 () Bool)

(declare-fun b!2279089 () Bool)

(assert (=> b!2279089 (= e!1459748 (and (inv!21 (value!137025 (h!32489 (t!203342 tokens!456)))) e!1459745 tp!722059))))

(declare-fun tp!722057 () Bool)

(declare-fun e!1459744 () Bool)

(declare-fun b!2279090 () Bool)

(assert (=> b!2279090 (= e!1459745 (and tp!722057 (inv!36668 (tag!4813 (rule!6649 (h!32489 (t!203342 tokens!456))))) (inv!36671 (transformation!4323 (rule!6649 (h!32489 (t!203342 tokens!456))))) e!1459744))))

(assert (=> b!2279091 (= e!1459744 (and tp!722056 tp!722058))))

(assert (= b!2279090 b!2279091))

(assert (= b!2279089 b!2279090))

(assert (= b!2279088 b!2279089))

(assert (= (and b!2278577 ((_ is Cons!27088) (t!203342 tokens!456))) b!2279088))

(declare-fun m!2707371 () Bool)

(assert (=> b!2279088 m!2707371))

(declare-fun m!2707373 () Bool)

(assert (=> b!2279089 m!2707373))

(declare-fun m!2707375 () Bool)

(assert (=> b!2279090 m!2707375))

(declare-fun m!2707377 () Bool)

(assert (=> b!2279090 m!2707377))

(declare-fun b!2279095 () Bool)

(declare-fun e!1459750 () Bool)

(declare-fun tp!722064 () Bool)

(declare-fun tp!722063 () Bool)

(assert (=> b!2279095 (= e!1459750 (and tp!722064 tp!722063))))

(declare-fun b!2279093 () Bool)

(declare-fun tp!722060 () Bool)

(declare-fun tp!722061 () Bool)

(assert (=> b!2279093 (= e!1459750 (and tp!722060 tp!722061))))

(declare-fun b!2279094 () Bool)

(declare-fun tp!722062 () Bool)

(assert (=> b!2279094 (= e!1459750 tp!722062)))

(declare-fun b!2279092 () Bool)

(assert (=> b!2279092 (= e!1459750 tp_is_empty!10563)))

(assert (=> b!2278588 (= tp!721926 e!1459750)))

(assert (= (and b!2278588 ((_ is ElementMatch!6671) (regex!4323 r!2363))) b!2279092))

(assert (= (and b!2278588 ((_ is Concat!11157) (regex!4323 r!2363))) b!2279093))

(assert (= (and b!2278588 ((_ is Star!6671) (regex!4323 r!2363))) b!2279094))

(assert (= (and b!2278588 ((_ is Union!6671) (regex!4323 r!2363))) b!2279095))

(declare-fun b!2279099 () Bool)

(declare-fun e!1459751 () Bool)

(declare-fun tp!722069 () Bool)

(declare-fun tp!722068 () Bool)

(assert (=> b!2279099 (= e!1459751 (and tp!722069 tp!722068))))

(declare-fun b!2279097 () Bool)

(declare-fun tp!722065 () Bool)

(declare-fun tp!722066 () Bool)

(assert (=> b!2279097 (= e!1459751 (and tp!722065 tp!722066))))

(declare-fun b!2279098 () Bool)

(declare-fun tp!722067 () Bool)

(assert (=> b!2279098 (= e!1459751 tp!722067)))

(declare-fun b!2279096 () Bool)

(assert (=> b!2279096 (= e!1459751 tp_is_empty!10563)))

(assert (=> b!2278563 (= tp!721937 e!1459751)))

(assert (= (and b!2278563 ((_ is ElementMatch!6671) (regex!4323 (h!32488 rules!1750)))) b!2279096))

(assert (= (and b!2278563 ((_ is Concat!11157) (regex!4323 (h!32488 rules!1750)))) b!2279097))

(assert (= (and b!2278563 ((_ is Star!6671) (regex!4323 (h!32488 rules!1750)))) b!2279098))

(assert (= (and b!2278563 ((_ is Union!6671) (regex!4323 (h!32488 rules!1750)))) b!2279099))

(declare-fun b!2279103 () Bool)

(declare-fun e!1459752 () Bool)

(declare-fun tp!722074 () Bool)

(declare-fun tp!722073 () Bool)

(assert (=> b!2279103 (= e!1459752 (and tp!722074 tp!722073))))

(declare-fun b!2279101 () Bool)

(declare-fun tp!722070 () Bool)

(declare-fun tp!722071 () Bool)

(assert (=> b!2279101 (= e!1459752 (and tp!722070 tp!722071))))

(declare-fun b!2279102 () Bool)

(declare-fun tp!722072 () Bool)

(assert (=> b!2279102 (= e!1459752 tp!722072)))

(declare-fun b!2279100 () Bool)

(assert (=> b!2279100 (= e!1459752 tp_is_empty!10563)))

(assert (=> b!2278574 (= tp!721941 e!1459752)))

(assert (= (and b!2278574 ((_ is ElementMatch!6671) (regex!4323 otherR!12))) b!2279100))

(assert (= (and b!2278574 ((_ is Concat!11157) (regex!4323 otherR!12))) b!2279101))

(assert (= (and b!2278574 ((_ is Star!6671) (regex!4323 otherR!12))) b!2279102))

(assert (= (and b!2278574 ((_ is Union!6671) (regex!4323 otherR!12))) b!2279103))

(declare-fun b!2279104 () Bool)

(declare-fun e!1459753 () Bool)

(declare-fun tp!722075 () Bool)

(assert (=> b!2279104 (= e!1459753 (and tp_is_empty!10563 tp!722075))))

(assert (=> b!2278572 (= tp!721929 e!1459753)))

(assert (= (and b!2278572 ((_ is Cons!27086) (t!203340 input!1722))) b!2279104))

(declare-fun b!2279105 () Bool)

(declare-fun e!1459754 () Bool)

(declare-fun tp!722076 () Bool)

(assert (=> b!2279105 (= e!1459754 (and tp_is_empty!10563 tp!722076))))

(assert (=> b!2278568 (= tp!721930 e!1459754)))

(assert (= (and b!2278568 ((_ is Cons!27086) (t!203340 otherP!12))) b!2279105))

(declare-fun b!2279106 () Bool)

(declare-fun e!1459755 () Bool)

(declare-fun tp!722077 () Bool)

(assert (=> b!2279106 (= e!1459755 (and tp_is_empty!10563 tp!722077))))

(assert (=> b!2278580 (= tp!721933 e!1459755)))

(assert (= (and b!2278580 ((_ is Cons!27086) (originalCharacters!5093 (h!32489 tokens!456)))) b!2279106))

(declare-fun b_lambda!72557 () Bool)

(assert (= b_lambda!72549 (or (and b!2279063 b_free!67975 (= (toChars!5964 (transformation!4323 (h!32488 (t!203341 rules!1750)))) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))))) (and b!2278575 b_free!67959 (= (toChars!5964 (transformation!4323 (h!32488 rules!1750))) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))))) (and b!2278583 b_free!67951 (= (toChars!5964 (transformation!4323 otherR!12)) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))))) (and b!2278558 b_free!67955) (and b!2278586 b_free!67963 (= (toChars!5964 (transformation!4323 r!2363)) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))))) (and b!2279091 b_free!67979 (= (toChars!5964 (transformation!4323 (rule!6649 (h!32489 (t!203342 tokens!456))))) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))))) b_lambda!72557)))

(declare-fun b_lambda!72559 () Bool)

(assert (= b_lambda!72555 (or (and b!2279063 b_free!67975 (= (toChars!5964 (transformation!4323 (h!32488 (t!203341 rules!1750)))) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))))) (and b!2278575 b_free!67959 (= (toChars!5964 (transformation!4323 (h!32488 rules!1750))) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))))) (and b!2278583 b_free!67951 (= (toChars!5964 (transformation!4323 otherR!12)) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))))) (and b!2278558 b_free!67955) (and b!2278586 b_free!67963 (= (toChars!5964 (transformation!4323 r!2363)) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))))) (and b!2279091 b_free!67979 (= (toChars!5964 (transformation!4323 (rule!6649 (h!32489 (t!203342 tokens!456))))) (toChars!5964 (transformation!4323 (rule!6649 (h!32489 tokens!456)))))) b_lambda!72559)))

(check-sat (not b_next!68653) (not d!674653) b_and!179891 (not b!2279099) (not b!2279090) (not d!674667) (not b!2279093) (not b_next!68679) (not b!2278915) (not b!2279104) b_and!179903 b_and!179829 (not b!2279094) (not b!2278859) (not d!674665) (not d!674543) (not b_next!68655) (not b!2279061) (not b!2278928) (not d!674681) (not b!2278922) (not b!2279025) (not b!2279077) b_and!179889 (not d!674707) (not d!674661) (not d!674657) b_and!179895 (not b_next!68683) (not b!2278940) (not d!674675) (not d!674683) (not d!674651) (not b!2279089) (not b!2279044) (not tb!135451) (not b!2278797) (not b!2278914) (not b!2278768) (not d!674695) (not d!674545) (not b_next!68657) (not d!674611) (not d!674673) (not b!2278933) (not b_next!68667) (not b_lambda!72557) b_and!179837 b_and!179893 (not b!2278903) (not b!2278923) (not d!674701) (not b!2278943) (not b!2279088) (not b!2279106) (not b!2278996) (not b!2279028) (not b!2278927) (not b!2279102) (not d!674643) (not b!2279052) (not b!2279101) (not b!2279032) (not b!2278834) (not b!2278960) (not b!2279024) (not b!2278916) (not b!2278962) (not b!2279005) (not d!674687) (not b!2279030) (not b!2279027) (not b_next!68661) b_and!179901 (not bm!136392) (not b!2279026) (not d!674699) tp_is_empty!10563 (not b_next!68681) (not b!2279002) b_and!179899 (not b!2278767) b_and!179833 (not b!2279075) (not b!2279062) (not b_next!68677) (not b_next!68663) (not d!674607) (not b!2279103) (not b!2278919) (not b_next!68665) (not b!2279097) (not d!674677) (not b_next!68659) (not b!2279095) (not b!2279098) (not b!2279043) (not b!2279004) (not b!2279046) (not b!2278920) (not tb!135439) (not b!2278879) (not b!2278918) (not b!2278804) (not b!2278892) (not b!2279001) (not b!2278766) (not b!2278858) b_and!179825 (not d!674691) (not b!2278945) (not bm!136395) (not b!2279105) (not b!2278765) (not b!2278902) (not b_lambda!72559) (not d!674623) (not b!2279076) (not b!2279003) (not d!674549) (not b!2278956) (not d!674649) (not d!674703) (not b!2278926) (not b_lambda!72545) (not d!674693) (not d!674689) (not b!2278860) (not d!674697) (not b!2278890) b_and!179897 (not b!2279031) (not b!2278891))
(check-sat b_and!179891 b_and!179829 (not b_next!68655) b_and!179889 (not b_next!68653) (not b_next!68657) b_and!179893 (not b_next!68665) (not b_next!68659) b_and!179825 b_and!179897 (not b_next!68679) b_and!179903 b_and!179895 (not b_next!68683) (not b_next!68667) b_and!179837 (not b_next!68661) b_and!179901 (not b_next!68681) b_and!179899 b_and!179833 (not b_next!68677) (not b_next!68663))
