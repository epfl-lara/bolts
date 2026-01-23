; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!219104 () Bool)

(assert start!219104)

(declare-fun b!2247454 () Bool)

(declare-fun b_free!65725 () Bool)

(declare-fun b_next!66429 () Bool)

(assert (=> b!2247454 (= b_free!65725 (not b_next!66429))))

(declare-fun tp!709793 () Bool)

(declare-fun b_and!175897 () Bool)

(assert (=> b!2247454 (= tp!709793 b_and!175897)))

(declare-fun b_free!65727 () Bool)

(declare-fun b_next!66431 () Bool)

(assert (=> b!2247454 (= b_free!65727 (not b_next!66431))))

(declare-fun tp!709791 () Bool)

(declare-fun b_and!175899 () Bool)

(assert (=> b!2247454 (= tp!709791 b_and!175899)))

(declare-fun b!2247453 () Bool)

(declare-fun b_free!65729 () Bool)

(declare-fun b_next!66433 () Bool)

(assert (=> b!2247453 (= b_free!65729 (not b_next!66433))))

(declare-fun tp!709783 () Bool)

(declare-fun b_and!175901 () Bool)

(assert (=> b!2247453 (= tp!709783 b_and!175901)))

(declare-fun b_free!65731 () Bool)

(declare-fun b_next!66435 () Bool)

(assert (=> b!2247453 (= b_free!65731 (not b_next!66435))))

(declare-fun tp!709780 () Bool)

(declare-fun b_and!175903 () Bool)

(assert (=> b!2247453 (= tp!709780 b_and!175903)))

(declare-fun b!2247468 () Bool)

(declare-fun b_free!65733 () Bool)

(declare-fun b_next!66437 () Bool)

(assert (=> b!2247468 (= b_free!65733 (not b_next!66437))))

(declare-fun tp!709787 () Bool)

(declare-fun b_and!175905 () Bool)

(assert (=> b!2247468 (= tp!709787 b_and!175905)))

(declare-fun b_free!65735 () Bool)

(declare-fun b_next!66439 () Bool)

(assert (=> b!2247468 (= b_free!65735 (not b_next!66439))))

(declare-fun tp!709781 () Bool)

(declare-fun b_and!175907 () Bool)

(assert (=> b!2247468 (= tp!709781 b_and!175907)))

(declare-fun b!2247441 () Bool)

(declare-fun b_free!65737 () Bool)

(declare-fun b_next!66441 () Bool)

(assert (=> b!2247441 (= b_free!65737 (not b_next!66441))))

(declare-fun tp!709782 () Bool)

(declare-fun b_and!175909 () Bool)

(assert (=> b!2247441 (= tp!709782 b_and!175909)))

(declare-fun b_free!65739 () Bool)

(declare-fun b_next!66443 () Bool)

(assert (=> b!2247441 (= b_free!65739 (not b_next!66443))))

(declare-fun tp!709785 () Bool)

(declare-fun b_and!175911 () Bool)

(assert (=> b!2247441 (= tp!709785 b_and!175911)))

(declare-fun e!1438165 () Bool)

(assert (=> b!2247441 (= e!1438165 (and tp!709782 tp!709785))))

(declare-fun b!2247442 () Bool)

(declare-fun res!960429 () Bool)

(declare-fun e!1438163 () Bool)

(assert (=> b!2247442 (=> (not res!960429) (not e!1438163))))

(declare-datatypes ((List!26719 0))(
  ( (Nil!26625) (Cons!26625 (h!32026 (_ BitVec 16)) (t!200465 List!26719)) )
))
(declare-datatypes ((TokenValue!4381 0))(
  ( (FloatLiteralValue!8762 (text!31112 List!26719)) (TokenValueExt!4380 (__x!17822 Int)) (Broken!21905 (value!134035 List!26719)) (Object!4474) (End!4381) (Def!4381) (Underscore!4381) (Match!4381) (Else!4381) (Error!4381) (Case!4381) (If!4381) (Extends!4381) (Abstract!4381) (Class!4381) (Val!4381) (DelimiterValue!8762 (del!4441 List!26719)) (KeywordValue!4387 (value!134036 List!26719)) (CommentValue!8762 (value!134037 List!26719)) (WhitespaceValue!8762 (value!134038 List!26719)) (IndentationValue!4381 (value!134039 List!26719)) (String!29008) (Int32!4381) (Broken!21906 (value!134040 List!26719)) (Boolean!4382) (Unit!39573) (OperatorValue!4384 (op!4441 List!26719)) (IdentifierValue!8762 (value!134041 List!26719)) (IdentifierValue!8763 (value!134042 List!26719)) (WhitespaceValue!8763 (value!134043 List!26719)) (True!8762) (False!8762) (Broken!21907 (value!134044 List!26719)) (Broken!21908 (value!134045 List!26719)) (True!8763) (RightBrace!4381) (RightBracket!4381) (Colon!4381) (Null!4381) (Comma!4381) (LeftBracket!4381) (False!8763) (LeftBrace!4381) (ImaginaryLiteralValue!4381 (text!31113 List!26719)) (StringLiteralValue!13143 (value!134046 List!26719)) (EOFValue!4381 (value!134047 List!26719)) (IdentValue!4381 (value!134048 List!26719)) (DelimiterValue!8763 (value!134049 List!26719)) (DedentValue!4381 (value!134050 List!26719)) (NewLineValue!4381 (value!134051 List!26719)) (IntegerValue!13143 (value!134052 (_ BitVec 32)) (text!31114 List!26719)) (IntegerValue!13144 (value!134053 Int) (text!31115 List!26719)) (Times!4381) (Or!4381) (Equal!4381) (Minus!4381) (Broken!21909 (value!134054 List!26719)) (And!4381) (Div!4381) (LessEqual!4381) (Mod!4381) (Concat!10948) (Not!4381) (Plus!4381) (SpaceValue!4381 (value!134055 List!26719)) (IntegerValue!13145 (value!134056 Int) (text!31116 List!26719)) (StringLiteralValue!13144 (text!31117 List!26719)) (FloatLiteralValue!8763 (text!31118 List!26719)) (BytesLiteralValue!4381 (value!134057 List!26719)) (CommentValue!8763 (value!134058 List!26719)) (StringLiteralValue!13145 (value!134059 List!26719)) (ErrorTokenValue!4381 (msg!4442 List!26719)) )
))
(declare-datatypes ((C!13280 0))(
  ( (C!13281 (val!7688 Int)) )
))
(declare-datatypes ((List!26720 0))(
  ( (Nil!26626) (Cons!26626 (h!32027 C!13280) (t!200466 List!26720)) )
))
(declare-datatypes ((IArray!17177 0))(
  ( (IArray!17178 (innerList!8646 List!26720)) )
))
(declare-datatypes ((Conc!8586 0))(
  ( (Node!8586 (left!20228 Conc!8586) (right!20558 Conc!8586) (csize!17402 Int) (cheight!8797 Int)) (Leaf!12681 (xs!11528 IArray!17177) (csize!17403 Int)) (Empty!8586) )
))
(declare-datatypes ((BalanceConc!16900 0))(
  ( (BalanceConc!16901 (c!357464 Conc!8586)) )
))
(declare-datatypes ((Regex!6567 0))(
  ( (ElementMatch!6567 (c!357465 C!13280)) (Concat!10949 (regOne!13646 Regex!6567) (regTwo!13646 Regex!6567)) (EmptyExpr!6567) (Star!6567 (reg!6896 Regex!6567)) (EmptyLang!6567) (Union!6567 (regOne!13647 Regex!6567) (regTwo!13647 Regex!6567)) )
))
(declare-datatypes ((String!29009 0))(
  ( (String!29010 (value!134060 String)) )
))
(declare-datatypes ((TokenValueInjection!8302 0))(
  ( (TokenValueInjection!8303 (toValue!5949 Int) (toChars!5808 Int)) )
))
(declare-datatypes ((Rule!8238 0))(
  ( (Rule!8239 (regex!4219 Regex!6567) (tag!4709 String!29009) (isSeparator!4219 Bool) (transformation!4219 TokenValueInjection!8302)) )
))
(declare-fun r!2363 () Rule!8238)

(declare-fun otherR!12 () Rule!8238)

(assert (=> b!2247442 (= res!960429 (not (= r!2363 otherR!12)))))

(declare-fun b!2247443 () Bool)

(declare-fun e!1438169 () Bool)

(declare-datatypes ((Token!7916 0))(
  ( (Token!7917 (value!134061 TokenValue!4381) (rule!6519 Rule!8238) (size!20823 Int) (originalCharacters!4989 List!26720)) )
))
(declare-datatypes ((List!26721 0))(
  ( (Nil!26627) (Cons!26627 (h!32028 Token!7916) (t!200467 List!26721)) )
))
(declare-fun tokens!456 () List!26721)

(declare-fun matchR!2828 (Regex!6567 List!26720) Bool)

(declare-fun list!10198 (BalanceConc!16900) List!26720)

(declare-fun charsOf!2607 (Token!7916) BalanceConc!16900)

(declare-fun head!4780 (List!26721) Token!7916)

(assert (=> b!2247443 (= e!1438169 (not (matchR!2828 (regex!4219 r!2363) (list!10198 (charsOf!2607 (head!4780 tokens!456))))))))

(declare-fun b!2247444 () Bool)

(declare-fun e!1438174 () Bool)

(declare-fun tp_is_empty!10355 () Bool)

(declare-fun tp!709778 () Bool)

(assert (=> b!2247444 (= e!1438174 (and tp_is_empty!10355 tp!709778))))

(declare-fun b!2247445 () Bool)

(declare-fun res!960437 () Bool)

(declare-fun e!1438181 () Bool)

(assert (=> b!2247445 (=> (not res!960437) (not e!1438181))))

(declare-datatypes ((LexerInterface!3816 0))(
  ( (LexerInterfaceExt!3813 (__x!17823 Int)) (Lexer!3814) )
))
(declare-fun thiss!16613 () LexerInterface!3816)

(declare-datatypes ((List!26722 0))(
  ( (Nil!26628) (Cons!26628 (h!32029 Rule!8238) (t!200468 List!26722)) )
))
(declare-fun rules!1750 () List!26722)

(declare-fun rulesInvariant!3318 (LexerInterface!3816 List!26722) Bool)

(assert (=> b!2247445 (= res!960437 (rulesInvariant!3318 thiss!16613 rules!1750))))

(declare-fun b!2247446 () Bool)

(declare-fun e!1438184 () Bool)

(declare-fun tp!709779 () Bool)

(assert (=> b!2247446 (= e!1438184 (and tp_is_empty!10355 tp!709779))))

(declare-fun e!1438182 () Bool)

(declare-fun tp!709795 () Bool)

(declare-fun e!1438173 () Bool)

(declare-fun b!2247448 () Bool)

(declare-fun inv!36146 (String!29009) Bool)

(declare-fun inv!36149 (TokenValueInjection!8302) Bool)

(assert (=> b!2247448 (= e!1438182 (and tp!709795 (inv!36146 (tag!4709 r!2363)) (inv!36149 (transformation!4219 r!2363)) e!1438173))))

(declare-fun b!2247449 () Bool)

(declare-fun e!1438177 () Bool)

(assert (=> b!2247449 (= e!1438181 e!1438177)))

(declare-fun res!960439 () Bool)

(assert (=> b!2247449 (=> (not res!960439) (not e!1438177))))

(declare-fun suffix!886 () List!26720)

(declare-datatypes ((IArray!17179 0))(
  ( (IArray!17180 (innerList!8647 List!26721)) )
))
(declare-datatypes ((Conc!8587 0))(
  ( (Node!8587 (left!20229 Conc!8587) (right!20559 Conc!8587) (csize!17404 Int) (cheight!8798 Int)) (Leaf!12682 (xs!11529 IArray!17179) (csize!17405 Int)) (Empty!8587) )
))
(declare-datatypes ((BalanceConc!16902 0))(
  ( (BalanceConc!16903 (c!357466 Conc!8587)) )
))
(declare-datatypes ((tuple2!26108 0))(
  ( (tuple2!26109 (_1!15564 BalanceConc!16902) (_2!15564 BalanceConc!16900)) )
))
(declare-fun lt!835699 () tuple2!26108)

(declare-datatypes ((tuple2!26110 0))(
  ( (tuple2!26111 (_1!15565 List!26721) (_2!15565 List!26720)) )
))
(declare-fun list!10199 (BalanceConc!16902) List!26721)

(assert (=> b!2247449 (= res!960439 (= (tuple2!26111 (list!10199 (_1!15564 lt!835699)) (list!10198 (_2!15564 lt!835699))) (tuple2!26111 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26720)

(declare-fun lex!1655 (LexerInterface!3816 List!26722 BalanceConc!16900) tuple2!26108)

(declare-fun seqFromList!2923 (List!26720) BalanceConc!16900)

(assert (=> b!2247449 (= lt!835699 (lex!1655 thiss!16613 rules!1750 (seqFromList!2923 input!1722)))))

(declare-fun b!2247450 () Bool)

(declare-fun res!960428 () Bool)

(assert (=> b!2247450 (=> (not res!960428) (not e!1438181))))

(declare-fun contains!4566 (List!26722 Rule!8238) Bool)

(assert (=> b!2247450 (= res!960428 (contains!4566 rules!1750 otherR!12))))

(declare-fun b!2247451 () Bool)

(declare-fun e!1438160 () Bool)

(assert (=> b!2247451 (= e!1438160 (= (rule!6519 (head!4780 tokens!456)) r!2363))))

(declare-fun b!2247452 () Bool)

(declare-fun tp!709790 () Bool)

(declare-fun e!1438164 () Bool)

(declare-fun e!1438166 () Bool)

(assert (=> b!2247452 (= e!1438164 (and tp!709790 (inv!36146 (tag!4709 (rule!6519 (h!32028 tokens!456)))) (inv!36149 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) e!1438166))))

(assert (=> b!2247453 (= e!1438166 (and tp!709783 tp!709780))))

(declare-fun e!1438167 () Bool)

(assert (=> b!2247454 (= e!1438167 (and tp!709793 tp!709791))))

(declare-fun res!960435 () Bool)

(assert (=> start!219104 (=> (not res!960435) (not e!1438181))))

(get-info :version)

(assert (=> start!219104 (= res!960435 ((_ is Lexer!3814) thiss!16613))))

(assert (=> start!219104 e!1438181))

(assert (=> start!219104 true))

(assert (=> start!219104 e!1438184))

(declare-fun e!1438170 () Bool)

(assert (=> start!219104 e!1438170))

(assert (=> start!219104 e!1438174))

(declare-fun e!1438172 () Bool)

(assert (=> start!219104 e!1438172))

(declare-fun e!1438179 () Bool)

(assert (=> start!219104 e!1438179))

(assert (=> start!219104 e!1438182))

(declare-fun e!1438180 () Bool)

(assert (=> start!219104 e!1438180))

(declare-fun tp!709794 () Bool)

(declare-fun e!1438171 () Bool)

(declare-fun b!2247447 () Bool)

(declare-fun inv!36150 (Token!7916) Bool)

(assert (=> b!2247447 (= e!1438180 (and (inv!36150 (h!32028 tokens!456)) e!1438171 tp!709794))))

(declare-fun b!2247455 () Bool)

(declare-fun res!960442 () Bool)

(declare-fun e!1438159 () Bool)

(assert (=> b!2247455 (=> res!960442 e!1438159)))

(assert (=> b!2247455 (= res!960442 ((_ is Nil!26627) tokens!456))))

(declare-fun b!2247456 () Bool)

(declare-fun res!960440 () Bool)

(assert (=> b!2247456 (=> (not res!960440) (not e!1438181))))

(assert (=> b!2247456 (= res!960440 (contains!4566 rules!1750 r!2363))))

(declare-fun b!2247457 () Bool)

(declare-fun res!960441 () Bool)

(assert (=> b!2247457 (=> (not res!960441) (not e!1438163))))

(declare-fun otherP!12 () List!26720)

(declare-fun isPrefix!2209 (List!26720 List!26720) Bool)

(assert (=> b!2247457 (= res!960441 (isPrefix!2209 otherP!12 input!1722))))

(declare-fun b!2247458 () Bool)

(declare-fun e!1438168 () Bool)

(assert (=> b!2247458 (= e!1438168 e!1438159)))

(declare-fun res!960436 () Bool)

(assert (=> b!2247458 (=> res!960436 e!1438159)))

(declare-fun getIndex!240 (List!26722 Rule!8238) Int)

(assert (=> b!2247458 (= res!960436 (<= (getIndex!240 rules!1750 r!2363) (getIndex!240 rules!1750 otherR!12)))))

(declare-fun ruleValid!1311 (LexerInterface!3816 Rule!8238) Bool)

(assert (=> b!2247458 (ruleValid!1311 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!39574 0))(
  ( (Unit!39575) )
))
(declare-fun lt!835701 () Unit!39574)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!718 (LexerInterface!3816 Rule!8238 List!26722) Unit!39574)

(assert (=> b!2247458 (= lt!835701 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!718 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2247459 () Bool)

(declare-fun e!1438161 () Bool)

(declare-fun tp!709784 () Bool)

(assert (=> b!2247459 (= e!1438179 (and e!1438161 tp!709784))))

(declare-fun b!2247460 () Bool)

(declare-fun tp!709786 () Bool)

(assert (=> b!2247460 (= e!1438161 (and tp!709786 (inv!36146 (tag!4709 (h!32029 rules!1750))) (inv!36149 (transformation!4219 (h!32029 rules!1750))) e!1438167))))

(declare-fun b!2247461 () Bool)

(declare-fun rulesValidInductive!1469 (LexerInterface!3816 List!26722) Bool)

(assert (=> b!2247461 (= e!1438159 (rulesValidInductive!1469 thiss!16613 rules!1750))))

(declare-fun b!2247462 () Bool)

(declare-fun res!960432 () Bool)

(assert (=> b!2247462 (=> (not res!960432) (not e!1438163))))

(assert (=> b!2247462 (= res!960432 e!1438160)))

(declare-fun res!960438 () Bool)

(assert (=> b!2247462 (=> res!960438 e!1438160)))

(declare-fun lt!835700 () Bool)

(assert (=> b!2247462 (= res!960438 lt!835700)))

(declare-fun b!2247463 () Bool)

(assert (=> b!2247463 (= e!1438177 e!1438163)))

(declare-fun res!960431 () Bool)

(assert (=> b!2247463 (=> (not res!960431) (not e!1438163))))

(declare-fun e!1438185 () Bool)

(assert (=> b!2247463 (= res!960431 e!1438185)))

(declare-fun res!960430 () Bool)

(assert (=> b!2247463 (=> res!960430 e!1438185)))

(assert (=> b!2247463 (= res!960430 lt!835700)))

(declare-fun isEmpty!15001 (List!26721) Bool)

(assert (=> b!2247463 (= lt!835700 (isEmpty!15001 tokens!456))))

(declare-fun b!2247464 () Bool)

(declare-fun tp!709789 () Bool)

(assert (=> b!2247464 (= e!1438172 (and tp_is_empty!10355 tp!709789))))

(declare-fun b!2247465 () Bool)

(assert (=> b!2247465 (= e!1438163 (not e!1438168))))

(declare-fun res!960434 () Bool)

(assert (=> b!2247465 (=> res!960434 e!1438168)))

(assert (=> b!2247465 (= res!960434 e!1438169)))

(declare-fun res!960443 () Bool)

(assert (=> b!2247465 (=> (not res!960443) (not e!1438169))))

(assert (=> b!2247465 (= res!960443 (not lt!835700))))

(assert (=> b!2247465 (ruleValid!1311 thiss!16613 r!2363)))

(declare-fun lt!835702 () Unit!39574)

(assert (=> b!2247465 (= lt!835702 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!718 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2247466 () Bool)

(declare-fun size!20824 (BalanceConc!16900) Int)

(declare-fun size!20825 (List!26720) Int)

(assert (=> b!2247466 (= e!1438185 (<= (size!20824 (charsOf!2607 (head!4780 tokens!456))) (size!20825 otherP!12)))))

(declare-fun tp!709792 () Bool)

(declare-fun b!2247467 () Bool)

(assert (=> b!2247467 (= e!1438170 (and tp!709792 (inv!36146 (tag!4709 otherR!12)) (inv!36149 (transformation!4219 otherR!12)) e!1438165))))

(assert (=> b!2247468 (= e!1438173 (and tp!709787 tp!709781))))

(declare-fun b!2247469 () Bool)

(declare-fun tp!709788 () Bool)

(declare-fun inv!21 (TokenValue!4381) Bool)

(assert (=> b!2247469 (= e!1438171 (and (inv!21 (value!134061 (h!32028 tokens!456))) e!1438164 tp!709788))))

(declare-fun b!2247470 () Bool)

(declare-fun res!960433 () Bool)

(assert (=> b!2247470 (=> (not res!960433) (not e!1438181))))

(declare-fun isEmpty!15002 (List!26722) Bool)

(assert (=> b!2247470 (= res!960433 (not (isEmpty!15002 rules!1750)))))

(assert (= (and start!219104 res!960435) b!2247470))

(assert (= (and b!2247470 res!960433) b!2247445))

(assert (= (and b!2247445 res!960437) b!2247456))

(assert (= (and b!2247456 res!960440) b!2247450))

(assert (= (and b!2247450 res!960428) b!2247449))

(assert (= (and b!2247449 res!960439) b!2247463))

(assert (= (and b!2247463 (not res!960430)) b!2247466))

(assert (= (and b!2247463 res!960431) b!2247462))

(assert (= (and b!2247462 (not res!960438)) b!2247451))

(assert (= (and b!2247462 res!960432) b!2247457))

(assert (= (and b!2247457 res!960441) b!2247442))

(assert (= (and b!2247442 res!960429) b!2247465))

(assert (= (and b!2247465 res!960443) b!2247443))

(assert (= (and b!2247465 (not res!960434)) b!2247458))

(assert (= (and b!2247458 (not res!960436)) b!2247455))

(assert (= (and b!2247455 (not res!960442)) b!2247461))

(assert (= (and start!219104 ((_ is Cons!26626) input!1722)) b!2247446))

(assert (= b!2247467 b!2247441))

(assert (= start!219104 b!2247467))

(assert (= (and start!219104 ((_ is Cons!26626) suffix!886)) b!2247444))

(assert (= (and start!219104 ((_ is Cons!26626) otherP!12)) b!2247464))

(assert (= b!2247460 b!2247454))

(assert (= b!2247459 b!2247460))

(assert (= (and start!219104 ((_ is Cons!26628) rules!1750)) b!2247459))

(assert (= b!2247448 b!2247468))

(assert (= start!219104 b!2247448))

(assert (= b!2247452 b!2247453))

(assert (= b!2247469 b!2247452))

(assert (= b!2247447 b!2247469))

(assert (= (and start!219104 ((_ is Cons!26627) tokens!456)) b!2247447))

(declare-fun m!2678613 () Bool)

(assert (=> b!2247467 m!2678613))

(declare-fun m!2678615 () Bool)

(assert (=> b!2247467 m!2678615))

(declare-fun m!2678617 () Bool)

(assert (=> b!2247443 m!2678617))

(assert (=> b!2247443 m!2678617))

(declare-fun m!2678619 () Bool)

(assert (=> b!2247443 m!2678619))

(assert (=> b!2247443 m!2678619))

(declare-fun m!2678621 () Bool)

(assert (=> b!2247443 m!2678621))

(assert (=> b!2247443 m!2678621))

(declare-fun m!2678623 () Bool)

(assert (=> b!2247443 m!2678623))

(declare-fun m!2678625 () Bool)

(assert (=> b!2247465 m!2678625))

(declare-fun m!2678627 () Bool)

(assert (=> b!2247465 m!2678627))

(declare-fun m!2678629 () Bool)

(assert (=> b!2247448 m!2678629))

(declare-fun m!2678631 () Bool)

(assert (=> b!2247448 m!2678631))

(assert (=> b!2247466 m!2678617))

(assert (=> b!2247466 m!2678617))

(assert (=> b!2247466 m!2678619))

(assert (=> b!2247466 m!2678619))

(declare-fun m!2678633 () Bool)

(assert (=> b!2247466 m!2678633))

(declare-fun m!2678635 () Bool)

(assert (=> b!2247466 m!2678635))

(declare-fun m!2678637 () Bool)

(assert (=> b!2247469 m!2678637))

(assert (=> b!2247451 m!2678617))

(declare-fun m!2678639 () Bool)

(assert (=> b!2247457 m!2678639))

(declare-fun m!2678641 () Bool)

(assert (=> b!2247458 m!2678641))

(declare-fun m!2678643 () Bool)

(assert (=> b!2247458 m!2678643))

(declare-fun m!2678645 () Bool)

(assert (=> b!2247458 m!2678645))

(declare-fun m!2678647 () Bool)

(assert (=> b!2247458 m!2678647))

(declare-fun m!2678649 () Bool)

(assert (=> b!2247461 m!2678649))

(declare-fun m!2678651 () Bool)

(assert (=> b!2247450 m!2678651))

(declare-fun m!2678653 () Bool)

(assert (=> b!2247460 m!2678653))

(declare-fun m!2678655 () Bool)

(assert (=> b!2247460 m!2678655))

(declare-fun m!2678657 () Bool)

(assert (=> b!2247456 m!2678657))

(declare-fun m!2678659 () Bool)

(assert (=> b!2247445 m!2678659))

(declare-fun m!2678661 () Bool)

(assert (=> b!2247470 m!2678661))

(declare-fun m!2678663 () Bool)

(assert (=> b!2247449 m!2678663))

(declare-fun m!2678665 () Bool)

(assert (=> b!2247449 m!2678665))

(declare-fun m!2678667 () Bool)

(assert (=> b!2247449 m!2678667))

(assert (=> b!2247449 m!2678667))

(declare-fun m!2678669 () Bool)

(assert (=> b!2247449 m!2678669))

(declare-fun m!2678671 () Bool)

(assert (=> b!2247463 m!2678671))

(declare-fun m!2678673 () Bool)

(assert (=> b!2247452 m!2678673))

(declare-fun m!2678675 () Bool)

(assert (=> b!2247452 m!2678675))

(declare-fun m!2678677 () Bool)

(assert (=> b!2247447 m!2678677))

(check-sat b_and!175899 (not b!2247456) (not b!2247443) (not b_next!66443) (not b!2247465) (not b!2247460) (not b_next!66439) (not b!2247444) (not b!2247450) (not b_next!66431) b_and!175911 (not b!2247467) (not b!2247470) b_and!175897 (not b!2247448) (not b!2247464) (not b!2247452) (not b!2247457) (not b_next!66435) (not b!2247447) (not b!2247458) b_and!175909 (not b_next!66429) (not b!2247469) b_and!175903 (not b!2247466) (not b!2247459) (not b_next!66433) b_and!175907 b_and!175901 (not b_next!66441) (not b!2247446) (not b!2247445) (not b!2247461) (not b!2247449) (not b_next!66437) tp_is_empty!10355 b_and!175905 (not b!2247463) (not b!2247451))
(check-sat b_and!175897 b_and!175899 (not b_next!66435) (not b_next!66443) b_and!175909 (not b_next!66429) b_and!175903 (not b_next!66439) (not b_next!66437) (not b_next!66431) b_and!175905 b_and!175911 (not b_next!66433) b_and!175907 b_and!175901 (not b_next!66441))
(get-model)

(declare-fun d!666773 () Bool)

(declare-fun res!960464 () Bool)

(declare-fun e!1438195 () Bool)

(assert (=> d!666773 (=> (not res!960464) (not e!1438195))))

(declare-fun rulesValid!1546 (LexerInterface!3816 List!26722) Bool)

(assert (=> d!666773 (= res!960464 (rulesValid!1546 thiss!16613 rules!1750))))

(assert (=> d!666773 (= (rulesInvariant!3318 thiss!16613 rules!1750) e!1438195)))

(declare-fun b!2247480 () Bool)

(declare-datatypes ((List!26724 0))(
  ( (Nil!26630) (Cons!26630 (h!32031 String!29009) (t!200518 List!26724)) )
))
(declare-fun noDuplicateTag!1544 (LexerInterface!3816 List!26722 List!26724) Bool)

(assert (=> b!2247480 (= e!1438195 (noDuplicateTag!1544 thiss!16613 rules!1750 Nil!26630))))

(assert (= (and d!666773 res!960464) b!2247480))

(declare-fun m!2678683 () Bool)

(assert (=> d!666773 m!2678683))

(declare-fun m!2678685 () Bool)

(assert (=> b!2247480 m!2678685))

(assert (=> b!2247445 d!666773))

(declare-fun d!666775 () Bool)

(declare-fun lt!835707 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3546 (List!26722) (InoxSet Rule!8238))

(assert (=> d!666775 (= lt!835707 (select (content!3546 rules!1750) r!2363))))

(declare-fun e!1438201 () Bool)

(assert (=> d!666775 (= lt!835707 e!1438201)))

(declare-fun res!960470 () Bool)

(assert (=> d!666775 (=> (not res!960470) (not e!1438201))))

(assert (=> d!666775 (= res!960470 ((_ is Cons!26628) rules!1750))))

(assert (=> d!666775 (= (contains!4566 rules!1750 r!2363) lt!835707)))

(declare-fun b!2247485 () Bool)

(declare-fun e!1438200 () Bool)

(assert (=> b!2247485 (= e!1438201 e!1438200)))

(declare-fun res!960469 () Bool)

(assert (=> b!2247485 (=> res!960469 e!1438200)))

(assert (=> b!2247485 (= res!960469 (= (h!32029 rules!1750) r!2363))))

(declare-fun b!2247486 () Bool)

(assert (=> b!2247486 (= e!1438200 (contains!4566 (t!200468 rules!1750) r!2363))))

(assert (= (and d!666775 res!960470) b!2247485))

(assert (= (and b!2247485 (not res!960469)) b!2247486))

(declare-fun m!2678687 () Bool)

(assert (=> d!666775 m!2678687))

(declare-fun m!2678689 () Bool)

(assert (=> d!666775 m!2678689))

(declare-fun m!2678691 () Bool)

(assert (=> b!2247486 m!2678691))

(assert (=> b!2247456 d!666775))

(declare-fun d!666777 () Bool)

(assert (=> d!666777 (= (inv!36146 (tag!4709 otherR!12)) (= (mod (str.len (value!134060 (tag!4709 otherR!12))) 2) 0))))

(assert (=> b!2247467 d!666777))

(declare-fun d!666779 () Bool)

(declare-fun res!960473 () Bool)

(declare-fun e!1438204 () Bool)

(assert (=> d!666779 (=> (not res!960473) (not e!1438204))))

(declare-fun semiInverseModEq!1702 (Int Int) Bool)

(assert (=> d!666779 (= res!960473 (semiInverseModEq!1702 (toChars!5808 (transformation!4219 otherR!12)) (toValue!5949 (transformation!4219 otherR!12))))))

(assert (=> d!666779 (= (inv!36149 (transformation!4219 otherR!12)) e!1438204)))

(declare-fun b!2247489 () Bool)

(declare-fun equivClasses!1621 (Int Int) Bool)

(assert (=> b!2247489 (= e!1438204 (equivClasses!1621 (toChars!5808 (transformation!4219 otherR!12)) (toValue!5949 (transformation!4219 otherR!12))))))

(assert (= (and d!666779 res!960473) b!2247489))

(declare-fun m!2678693 () Bool)

(assert (=> d!666779 m!2678693))

(declare-fun m!2678695 () Bool)

(assert (=> b!2247489 m!2678695))

(assert (=> b!2247467 d!666779))

(declare-fun b!2247501 () Bool)

(declare-fun e!1438213 () Bool)

(assert (=> b!2247501 (= e!1438213 (>= (size!20825 input!1722) (size!20825 otherP!12)))))

(declare-fun b!2247500 () Bool)

(declare-fun e!1438211 () Bool)

(declare-fun tail!3243 (List!26720) List!26720)

(assert (=> b!2247500 (= e!1438211 (isPrefix!2209 (tail!3243 otherP!12) (tail!3243 input!1722)))))

(declare-fun d!666781 () Bool)

(assert (=> d!666781 e!1438213))

(declare-fun res!960485 () Bool)

(assert (=> d!666781 (=> res!960485 e!1438213)))

(declare-fun lt!835710 () Bool)

(assert (=> d!666781 (= res!960485 (not lt!835710))))

(declare-fun e!1438212 () Bool)

(assert (=> d!666781 (= lt!835710 e!1438212)))

(declare-fun res!960484 () Bool)

(assert (=> d!666781 (=> res!960484 e!1438212)))

(assert (=> d!666781 (= res!960484 ((_ is Nil!26626) otherP!12))))

(assert (=> d!666781 (= (isPrefix!2209 otherP!12 input!1722) lt!835710)))

(declare-fun b!2247498 () Bool)

(assert (=> b!2247498 (= e!1438212 e!1438211)))

(declare-fun res!960483 () Bool)

(assert (=> b!2247498 (=> (not res!960483) (not e!1438211))))

(assert (=> b!2247498 (= res!960483 (not ((_ is Nil!26626) input!1722)))))

(declare-fun b!2247499 () Bool)

(declare-fun res!960482 () Bool)

(assert (=> b!2247499 (=> (not res!960482) (not e!1438211))))

(declare-fun head!4782 (List!26720) C!13280)

(assert (=> b!2247499 (= res!960482 (= (head!4782 otherP!12) (head!4782 input!1722)))))

(assert (= (and d!666781 (not res!960484)) b!2247498))

(assert (= (and b!2247498 res!960483) b!2247499))

(assert (= (and b!2247499 res!960482) b!2247500))

(assert (= (and d!666781 (not res!960485)) b!2247501))

(declare-fun m!2678697 () Bool)

(assert (=> b!2247501 m!2678697))

(assert (=> b!2247501 m!2678635))

(declare-fun m!2678699 () Bool)

(assert (=> b!2247500 m!2678699))

(declare-fun m!2678701 () Bool)

(assert (=> b!2247500 m!2678701))

(assert (=> b!2247500 m!2678699))

(assert (=> b!2247500 m!2678701))

(declare-fun m!2678703 () Bool)

(assert (=> b!2247500 m!2678703))

(declare-fun m!2678705 () Bool)

(assert (=> b!2247499 m!2678705))

(declare-fun m!2678707 () Bool)

(assert (=> b!2247499 m!2678707))

(assert (=> b!2247457 d!666781))

(declare-fun d!666783 () Bool)

(declare-fun res!960490 () Bool)

(declare-fun e!1438216 () Bool)

(assert (=> d!666783 (=> (not res!960490) (not e!1438216))))

(declare-fun isEmpty!15005 (List!26720) Bool)

(assert (=> d!666783 (= res!960490 (not (isEmpty!15005 (originalCharacters!4989 (h!32028 tokens!456)))))))

(assert (=> d!666783 (= (inv!36150 (h!32028 tokens!456)) e!1438216)))

(declare-fun b!2247506 () Bool)

(declare-fun res!960491 () Bool)

(assert (=> b!2247506 (=> (not res!960491) (not e!1438216))))

(declare-fun dynLambda!11568 (Int TokenValue!4381) BalanceConc!16900)

(assert (=> b!2247506 (= res!960491 (= (originalCharacters!4989 (h!32028 tokens!456)) (list!10198 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456))))))))

(declare-fun b!2247507 () Bool)

(assert (=> b!2247507 (= e!1438216 (= (size!20823 (h!32028 tokens!456)) (size!20825 (originalCharacters!4989 (h!32028 tokens!456)))))))

(assert (= (and d!666783 res!960490) b!2247506))

(assert (= (and b!2247506 res!960491) b!2247507))

(declare-fun b_lambda!71857 () Bool)

(assert (=> (not b_lambda!71857) (not b!2247506)))

(declare-fun t!200470 () Bool)

(declare-fun tb!133087 () Bool)

(assert (=> (and b!2247454 (= (toChars!5808 (transformation!4219 (h!32029 rules!1750))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456))))) t!200470) tb!133087))

(declare-fun b!2247512 () Bool)

(declare-fun e!1438219 () Bool)

(declare-fun tp!709798 () Bool)

(declare-fun inv!36153 (Conc!8586) Bool)

(assert (=> b!2247512 (= e!1438219 (and (inv!36153 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456))))) tp!709798))))

(declare-fun result!162234 () Bool)

(declare-fun inv!36154 (BalanceConc!16900) Bool)

(assert (=> tb!133087 (= result!162234 (and (inv!36154 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456)))) e!1438219))))

(assert (= tb!133087 b!2247512))

(declare-fun m!2678709 () Bool)

(assert (=> b!2247512 m!2678709))

(declare-fun m!2678711 () Bool)

(assert (=> tb!133087 m!2678711))

(assert (=> b!2247506 t!200470))

(declare-fun b_and!175913 () Bool)

(assert (= b_and!175899 (and (=> t!200470 result!162234) b_and!175913)))

(declare-fun t!200472 () Bool)

(declare-fun tb!133089 () Bool)

(assert (=> (and b!2247453 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456))))) t!200472) tb!133089))

(declare-fun result!162238 () Bool)

(assert (= result!162238 result!162234))

(assert (=> b!2247506 t!200472))

(declare-fun b_and!175915 () Bool)

(assert (= b_and!175903 (and (=> t!200472 result!162238) b_and!175915)))

(declare-fun t!200474 () Bool)

(declare-fun tb!133091 () Bool)

(assert (=> (and b!2247468 (= (toChars!5808 (transformation!4219 r!2363)) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456))))) t!200474) tb!133091))

(declare-fun result!162240 () Bool)

(assert (= result!162240 result!162234))

(assert (=> b!2247506 t!200474))

(declare-fun b_and!175917 () Bool)

(assert (= b_and!175907 (and (=> t!200474 result!162240) b_and!175917)))

(declare-fun tb!133093 () Bool)

(declare-fun t!200476 () Bool)

(assert (=> (and b!2247441 (= (toChars!5808 (transformation!4219 otherR!12)) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456))))) t!200476) tb!133093))

(declare-fun result!162242 () Bool)

(assert (= result!162242 result!162234))

(assert (=> b!2247506 t!200476))

(declare-fun b_and!175919 () Bool)

(assert (= b_and!175911 (and (=> t!200476 result!162242) b_and!175919)))

(declare-fun m!2678713 () Bool)

(assert (=> d!666783 m!2678713))

(declare-fun m!2678715 () Bool)

(assert (=> b!2247506 m!2678715))

(assert (=> b!2247506 m!2678715))

(declare-fun m!2678717 () Bool)

(assert (=> b!2247506 m!2678717))

(declare-fun m!2678719 () Bool)

(assert (=> b!2247507 m!2678719))

(assert (=> b!2247447 d!666783))

(declare-fun b!2247523 () Bool)

(declare-fun e!1438225 () Int)

(assert (=> b!2247523 (= e!1438225 (+ 1 (getIndex!240 (t!200468 rules!1750) r!2363)))))

(declare-fun b!2247524 () Bool)

(assert (=> b!2247524 (= e!1438225 (- 1))))

(declare-fun b!2247522 () Bool)

(declare-fun e!1438226 () Int)

(assert (=> b!2247522 (= e!1438226 e!1438225)))

(declare-fun c!357471 () Bool)

(assert (=> b!2247522 (= c!357471 (and ((_ is Cons!26628) rules!1750) (not (= (h!32029 rules!1750) r!2363))))))

(declare-fun b!2247521 () Bool)

(assert (=> b!2247521 (= e!1438226 0)))

(declare-fun d!666785 () Bool)

(declare-fun lt!835713 () Int)

(assert (=> d!666785 (>= lt!835713 0)))

(assert (=> d!666785 (= lt!835713 e!1438226)))

(declare-fun c!357472 () Bool)

(assert (=> d!666785 (= c!357472 (and ((_ is Cons!26628) rules!1750) (= (h!32029 rules!1750) r!2363)))))

(assert (=> d!666785 (contains!4566 rules!1750 r!2363)))

(assert (=> d!666785 (= (getIndex!240 rules!1750 r!2363) lt!835713)))

(assert (= (and d!666785 c!357472) b!2247521))

(assert (= (and d!666785 (not c!357472)) b!2247522))

(assert (= (and b!2247522 c!357471) b!2247523))

(assert (= (and b!2247522 (not c!357471)) b!2247524))

(declare-fun m!2678721 () Bool)

(assert (=> b!2247523 m!2678721))

(assert (=> d!666785 m!2678657))

(assert (=> b!2247458 d!666785))

(declare-fun b!2247527 () Bool)

(declare-fun e!1438227 () Int)

(assert (=> b!2247527 (= e!1438227 (+ 1 (getIndex!240 (t!200468 rules!1750) otherR!12)))))

(declare-fun b!2247528 () Bool)

(assert (=> b!2247528 (= e!1438227 (- 1))))

(declare-fun b!2247526 () Bool)

(declare-fun e!1438228 () Int)

(assert (=> b!2247526 (= e!1438228 e!1438227)))

(declare-fun c!357473 () Bool)

(assert (=> b!2247526 (= c!357473 (and ((_ is Cons!26628) rules!1750) (not (= (h!32029 rules!1750) otherR!12))))))

(declare-fun b!2247525 () Bool)

(assert (=> b!2247525 (= e!1438228 0)))

(declare-fun d!666787 () Bool)

(declare-fun lt!835714 () Int)

(assert (=> d!666787 (>= lt!835714 0)))

(assert (=> d!666787 (= lt!835714 e!1438228)))

(declare-fun c!357474 () Bool)

(assert (=> d!666787 (= c!357474 (and ((_ is Cons!26628) rules!1750) (= (h!32029 rules!1750) otherR!12)))))

(assert (=> d!666787 (contains!4566 rules!1750 otherR!12)))

(assert (=> d!666787 (= (getIndex!240 rules!1750 otherR!12) lt!835714)))

(assert (= (and d!666787 c!357474) b!2247525))

(assert (= (and d!666787 (not c!357474)) b!2247526))

(assert (= (and b!2247526 c!357473) b!2247527))

(assert (= (and b!2247526 (not c!357473)) b!2247528))

(declare-fun m!2678723 () Bool)

(assert (=> b!2247527 m!2678723))

(assert (=> d!666787 m!2678651))

(assert (=> b!2247458 d!666787))

(declare-fun d!666789 () Bool)

(declare-fun res!960496 () Bool)

(declare-fun e!1438231 () Bool)

(assert (=> d!666789 (=> (not res!960496) (not e!1438231))))

(declare-fun validRegex!2454 (Regex!6567) Bool)

(assert (=> d!666789 (= res!960496 (validRegex!2454 (regex!4219 otherR!12)))))

(assert (=> d!666789 (= (ruleValid!1311 thiss!16613 otherR!12) e!1438231)))

(declare-fun b!2247533 () Bool)

(declare-fun res!960497 () Bool)

(assert (=> b!2247533 (=> (not res!960497) (not e!1438231))))

(declare-fun nullable!1800 (Regex!6567) Bool)

(assert (=> b!2247533 (= res!960497 (not (nullable!1800 (regex!4219 otherR!12))))))

(declare-fun b!2247534 () Bool)

(assert (=> b!2247534 (= e!1438231 (not (= (tag!4709 otherR!12) (String!29010 ""))))))

(assert (= (and d!666789 res!960496) b!2247533))

(assert (= (and b!2247533 res!960497) b!2247534))

(declare-fun m!2678725 () Bool)

(assert (=> d!666789 m!2678725))

(declare-fun m!2678727 () Bool)

(assert (=> b!2247533 m!2678727))

(assert (=> b!2247458 d!666789))

(declare-fun d!666791 () Bool)

(assert (=> d!666791 (ruleValid!1311 thiss!16613 otherR!12)))

(declare-fun lt!835717 () Unit!39574)

(declare-fun choose!13163 (LexerInterface!3816 Rule!8238 List!26722) Unit!39574)

(assert (=> d!666791 (= lt!835717 (choose!13163 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!666791 (contains!4566 rules!1750 otherR!12)))

(assert (=> d!666791 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!718 thiss!16613 otherR!12 rules!1750) lt!835717)))

(declare-fun bs!454832 () Bool)

(assert (= bs!454832 d!666791))

(assert (=> bs!454832 m!2678645))

(declare-fun m!2678729 () Bool)

(assert (=> bs!454832 m!2678729))

(assert (=> bs!454832 m!2678651))

(assert (=> b!2247458 d!666791))

(declare-fun b!2247545 () Bool)

(declare-fun e!1438240 () Bool)

(declare-fun inv!17 (TokenValue!4381) Bool)

(assert (=> b!2247545 (= e!1438240 (inv!17 (value!134061 (h!32028 tokens!456))))))

(declare-fun b!2247546 () Bool)

(declare-fun res!960500 () Bool)

(declare-fun e!1438239 () Bool)

(assert (=> b!2247546 (=> res!960500 e!1438239)))

(assert (=> b!2247546 (= res!960500 (not ((_ is IntegerValue!13145) (value!134061 (h!32028 tokens!456)))))))

(assert (=> b!2247546 (= e!1438240 e!1438239)))

(declare-fun d!666793 () Bool)

(declare-fun c!357480 () Bool)

(assert (=> d!666793 (= c!357480 ((_ is IntegerValue!13143) (value!134061 (h!32028 tokens!456))))))

(declare-fun e!1438238 () Bool)

(assert (=> d!666793 (= (inv!21 (value!134061 (h!32028 tokens!456))) e!1438238)))

(declare-fun b!2247547 () Bool)

(declare-fun inv!16 (TokenValue!4381) Bool)

(assert (=> b!2247547 (= e!1438238 (inv!16 (value!134061 (h!32028 tokens!456))))))

(declare-fun b!2247548 () Bool)

(assert (=> b!2247548 (= e!1438238 e!1438240)))

(declare-fun c!357479 () Bool)

(assert (=> b!2247548 (= c!357479 ((_ is IntegerValue!13144) (value!134061 (h!32028 tokens!456))))))

(declare-fun b!2247549 () Bool)

(declare-fun inv!15 (TokenValue!4381) Bool)

(assert (=> b!2247549 (= e!1438239 (inv!15 (value!134061 (h!32028 tokens!456))))))

(assert (= (and d!666793 c!357480) b!2247547))

(assert (= (and d!666793 (not c!357480)) b!2247548))

(assert (= (and b!2247548 c!357479) b!2247545))

(assert (= (and b!2247548 (not c!357479)) b!2247546))

(assert (= (and b!2247546 (not res!960500)) b!2247549))

(declare-fun m!2678731 () Bool)

(assert (=> b!2247545 m!2678731))

(declare-fun m!2678733 () Bool)

(assert (=> b!2247547 m!2678733))

(declare-fun m!2678735 () Bool)

(assert (=> b!2247549 m!2678735))

(assert (=> b!2247469 d!666793))

(declare-fun d!666795 () Bool)

(assert (=> d!666795 (= (inv!36146 (tag!4709 r!2363)) (= (mod (str.len (value!134060 (tag!4709 r!2363))) 2) 0))))

(assert (=> b!2247448 d!666795))

(declare-fun d!666797 () Bool)

(declare-fun res!960501 () Bool)

(declare-fun e!1438241 () Bool)

(assert (=> d!666797 (=> (not res!960501) (not e!1438241))))

(assert (=> d!666797 (= res!960501 (semiInverseModEq!1702 (toChars!5808 (transformation!4219 r!2363)) (toValue!5949 (transformation!4219 r!2363))))))

(assert (=> d!666797 (= (inv!36149 (transformation!4219 r!2363)) e!1438241)))

(declare-fun b!2247550 () Bool)

(assert (=> b!2247550 (= e!1438241 (equivClasses!1621 (toChars!5808 (transformation!4219 r!2363)) (toValue!5949 (transformation!4219 r!2363))))))

(assert (= (and d!666797 res!960501) b!2247550))

(declare-fun m!2678737 () Bool)

(assert (=> d!666797 m!2678737))

(declare-fun m!2678739 () Bool)

(assert (=> b!2247550 m!2678739))

(assert (=> b!2247448 d!666797))

(declare-fun d!666799 () Bool)

(assert (=> d!666799 (= (isEmpty!15002 rules!1750) ((_ is Nil!26628) rules!1750))))

(assert (=> b!2247470 d!666799))

(declare-fun d!666801 () Bool)

(declare-fun list!10202 (Conc!8587) List!26721)

(assert (=> d!666801 (= (list!10199 (_1!15564 lt!835699)) (list!10202 (c!357466 (_1!15564 lt!835699))))))

(declare-fun bs!454833 () Bool)

(assert (= bs!454833 d!666801))

(declare-fun m!2678741 () Bool)

(assert (=> bs!454833 m!2678741))

(assert (=> b!2247449 d!666801))

(declare-fun d!666803 () Bool)

(declare-fun list!10203 (Conc!8586) List!26720)

(assert (=> d!666803 (= (list!10198 (_2!15564 lt!835699)) (list!10203 (c!357464 (_2!15564 lt!835699))))))

(declare-fun bs!454834 () Bool)

(assert (= bs!454834 d!666803))

(declare-fun m!2678743 () Bool)

(assert (=> bs!454834 m!2678743))

(assert (=> b!2247449 d!666803))

(declare-fun b!2247648 () Bool)

(declare-fun e!1438306 () Bool)

(declare-fun lt!835745 () tuple2!26108)

(declare-fun isEmpty!15006 (BalanceConc!16902) Bool)

(assert (=> b!2247648 (= e!1438306 (not (isEmpty!15006 (_1!15564 lt!835745))))))

(declare-fun d!666805 () Bool)

(declare-fun e!1438305 () Bool)

(assert (=> d!666805 e!1438305))

(declare-fun res!960553 () Bool)

(assert (=> d!666805 (=> (not res!960553) (not e!1438305))))

(declare-fun e!1438307 () Bool)

(assert (=> d!666805 (= res!960553 e!1438307)))

(declare-fun c!357500 () Bool)

(declare-fun size!20828 (BalanceConc!16902) Int)

(assert (=> d!666805 (= c!357500 (> (size!20828 (_1!15564 lt!835745)) 0))))

(declare-fun lexTailRecV2!721 (LexerInterface!3816 List!26722 BalanceConc!16900 BalanceConc!16900 BalanceConc!16900 BalanceConc!16902) tuple2!26108)

(assert (=> d!666805 (= lt!835745 (lexTailRecV2!721 thiss!16613 rules!1750 (seqFromList!2923 input!1722) (BalanceConc!16901 Empty!8586) (seqFromList!2923 input!1722) (BalanceConc!16903 Empty!8587)))))

(assert (=> d!666805 (= (lex!1655 thiss!16613 rules!1750 (seqFromList!2923 input!1722)) lt!835745)))

(declare-fun b!2247649 () Bool)

(assert (=> b!2247649 (= e!1438307 (= (_2!15564 lt!835745) (seqFromList!2923 input!1722)))))

(declare-fun b!2247650 () Bool)

(declare-fun res!960555 () Bool)

(assert (=> b!2247650 (=> (not res!960555) (not e!1438305))))

(declare-fun lexList!1046 (LexerInterface!3816 List!26722 List!26720) tuple2!26110)

(assert (=> b!2247650 (= res!960555 (= (list!10199 (_1!15564 lt!835745)) (_1!15565 (lexList!1046 thiss!16613 rules!1750 (list!10198 (seqFromList!2923 input!1722))))))))

(declare-fun b!2247651 () Bool)

(assert (=> b!2247651 (= e!1438305 (= (list!10198 (_2!15564 lt!835745)) (_2!15565 (lexList!1046 thiss!16613 rules!1750 (list!10198 (seqFromList!2923 input!1722))))))))

(declare-fun b!2247652 () Bool)

(assert (=> b!2247652 (= e!1438307 e!1438306)))

(declare-fun res!960554 () Bool)

(assert (=> b!2247652 (= res!960554 (< (size!20824 (_2!15564 lt!835745)) (size!20824 (seqFromList!2923 input!1722))))))

(assert (=> b!2247652 (=> (not res!960554) (not e!1438306))))

(assert (= (and d!666805 c!357500) b!2247652))

(assert (= (and d!666805 (not c!357500)) b!2247649))

(assert (= (and b!2247652 res!960554) b!2247648))

(assert (= (and d!666805 res!960553) b!2247650))

(assert (= (and b!2247650 res!960555) b!2247651))

(declare-fun m!2678841 () Bool)

(assert (=> b!2247648 m!2678841))

(declare-fun m!2678843 () Bool)

(assert (=> b!2247652 m!2678843))

(assert (=> b!2247652 m!2678667))

(declare-fun m!2678845 () Bool)

(assert (=> b!2247652 m!2678845))

(declare-fun m!2678847 () Bool)

(assert (=> b!2247650 m!2678847))

(assert (=> b!2247650 m!2678667))

(declare-fun m!2678849 () Bool)

(assert (=> b!2247650 m!2678849))

(assert (=> b!2247650 m!2678849))

(declare-fun m!2678851 () Bool)

(assert (=> b!2247650 m!2678851))

(declare-fun m!2678853 () Bool)

(assert (=> b!2247651 m!2678853))

(assert (=> b!2247651 m!2678667))

(assert (=> b!2247651 m!2678849))

(assert (=> b!2247651 m!2678849))

(assert (=> b!2247651 m!2678851))

(declare-fun m!2678855 () Bool)

(assert (=> d!666805 m!2678855))

(assert (=> d!666805 m!2678667))

(assert (=> d!666805 m!2678667))

(declare-fun m!2678857 () Bool)

(assert (=> d!666805 m!2678857))

(assert (=> b!2247449 d!666805))

(declare-fun d!666861 () Bool)

(declare-fun fromListB!1312 (List!26720) BalanceConc!16900)

(assert (=> d!666861 (= (seqFromList!2923 input!1722) (fromListB!1312 input!1722))))

(declare-fun bs!454840 () Bool)

(assert (= bs!454840 d!666861))

(declare-fun m!2678859 () Bool)

(assert (=> bs!454840 m!2678859))

(assert (=> b!2247449 d!666861))

(declare-fun d!666863 () Bool)

(assert (=> d!666863 (= (inv!36146 (tag!4709 (h!32029 rules!1750))) (= (mod (str.len (value!134060 (tag!4709 (h!32029 rules!1750)))) 2) 0))))

(assert (=> b!2247460 d!666863))

(declare-fun d!666865 () Bool)

(declare-fun res!960556 () Bool)

(declare-fun e!1438308 () Bool)

(assert (=> d!666865 (=> (not res!960556) (not e!1438308))))

(assert (=> d!666865 (= res!960556 (semiInverseModEq!1702 (toChars!5808 (transformation!4219 (h!32029 rules!1750))) (toValue!5949 (transformation!4219 (h!32029 rules!1750)))))))

(assert (=> d!666865 (= (inv!36149 (transformation!4219 (h!32029 rules!1750))) e!1438308)))

(declare-fun b!2247653 () Bool)

(assert (=> b!2247653 (= e!1438308 (equivClasses!1621 (toChars!5808 (transformation!4219 (h!32029 rules!1750))) (toValue!5949 (transformation!4219 (h!32029 rules!1750)))))))

(assert (= (and d!666865 res!960556) b!2247653))

(declare-fun m!2678861 () Bool)

(assert (=> d!666865 m!2678861))

(declare-fun m!2678863 () Bool)

(assert (=> b!2247653 m!2678863))

(assert (=> b!2247460 d!666865))

(declare-fun d!666867 () Bool)

(declare-fun lt!835746 () Bool)

(assert (=> d!666867 (= lt!835746 (select (content!3546 rules!1750) otherR!12))))

(declare-fun e!1438310 () Bool)

(assert (=> d!666867 (= lt!835746 e!1438310)))

(declare-fun res!960558 () Bool)

(assert (=> d!666867 (=> (not res!960558) (not e!1438310))))

(assert (=> d!666867 (= res!960558 ((_ is Cons!26628) rules!1750))))

(assert (=> d!666867 (= (contains!4566 rules!1750 otherR!12) lt!835746)))

(declare-fun b!2247654 () Bool)

(declare-fun e!1438309 () Bool)

(assert (=> b!2247654 (= e!1438310 e!1438309)))

(declare-fun res!960557 () Bool)

(assert (=> b!2247654 (=> res!960557 e!1438309)))

(assert (=> b!2247654 (= res!960557 (= (h!32029 rules!1750) otherR!12))))

(declare-fun b!2247655 () Bool)

(assert (=> b!2247655 (= e!1438309 (contains!4566 (t!200468 rules!1750) otherR!12))))

(assert (= (and d!666867 res!960558) b!2247654))

(assert (= (and b!2247654 (not res!960557)) b!2247655))

(assert (=> d!666867 m!2678687))

(declare-fun m!2678865 () Bool)

(assert (=> d!666867 m!2678865))

(declare-fun m!2678867 () Bool)

(assert (=> b!2247655 m!2678867))

(assert (=> b!2247450 d!666867))

(declare-fun d!666869 () Bool)

(assert (=> d!666869 true))

(declare-fun lt!835755 () Bool)

(declare-fun lambda!85157 () Int)

(declare-fun forall!5465 (List!26722 Int) Bool)

(assert (=> d!666869 (= lt!835755 (forall!5465 rules!1750 lambda!85157))))

(declare-fun e!1438387 () Bool)

(assert (=> d!666869 (= lt!835755 e!1438387)))

(declare-fun res!960597 () Bool)

(assert (=> d!666869 (=> res!960597 e!1438387)))

(assert (=> d!666869 (= res!960597 (not ((_ is Cons!26628) rules!1750)))))

(assert (=> d!666869 (= (rulesValidInductive!1469 thiss!16613 rules!1750) lt!835755)))

(declare-fun b!2247776 () Bool)

(declare-fun e!1438388 () Bool)

(assert (=> b!2247776 (= e!1438387 e!1438388)))

(declare-fun res!960596 () Bool)

(assert (=> b!2247776 (=> (not res!960596) (not e!1438388))))

(assert (=> b!2247776 (= res!960596 (ruleValid!1311 thiss!16613 (h!32029 rules!1750)))))

(declare-fun b!2247777 () Bool)

(assert (=> b!2247777 (= e!1438388 (rulesValidInductive!1469 thiss!16613 (t!200468 rules!1750)))))

(assert (= (and d!666869 (not res!960597)) b!2247776))

(assert (= (and b!2247776 res!960596) b!2247777))

(declare-fun m!2678915 () Bool)

(assert (=> d!666869 m!2678915))

(declare-fun m!2678917 () Bool)

(assert (=> b!2247776 m!2678917))

(declare-fun m!2678919 () Bool)

(assert (=> b!2247777 m!2678919))

(assert (=> b!2247461 d!666869))

(declare-fun d!666877 () Bool)

(assert (=> d!666877 (= (head!4780 tokens!456) (h!32028 tokens!456))))

(assert (=> b!2247451 d!666877))

(declare-fun d!666879 () Bool)

(assert (=> d!666879 (= (inv!36146 (tag!4709 (rule!6519 (h!32028 tokens!456)))) (= (mod (str.len (value!134060 (tag!4709 (rule!6519 (h!32028 tokens!456))))) 2) 0))))

(assert (=> b!2247452 d!666879))

(declare-fun d!666881 () Bool)

(declare-fun res!960598 () Bool)

(declare-fun e!1438389 () Bool)

(assert (=> d!666881 (=> (not res!960598) (not e!1438389))))

(assert (=> d!666881 (= res!960598 (semiInverseModEq!1702 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toValue!5949 (transformation!4219 (rule!6519 (h!32028 tokens!456))))))))

(assert (=> d!666881 (= (inv!36149 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) e!1438389)))

(declare-fun b!2247780 () Bool)

(assert (=> b!2247780 (= e!1438389 (equivClasses!1621 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toValue!5949 (transformation!4219 (rule!6519 (h!32028 tokens!456))))))))

(assert (= (and d!666881 res!960598) b!2247780))

(declare-fun m!2678921 () Bool)

(assert (=> d!666881 m!2678921))

(declare-fun m!2678923 () Bool)

(assert (=> b!2247780 m!2678923))

(assert (=> b!2247452 d!666881))

(declare-fun d!666883 () Bool)

(assert (=> d!666883 (= (isEmpty!15001 tokens!456) ((_ is Nil!26627) tokens!456))))

(assert (=> b!2247463 d!666883))

(declare-fun b!2247809 () Bool)

(declare-fun e!1438408 () Bool)

(assert (=> b!2247809 (= e!1438408 (not (= (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456)))) (c!357465 (regex!4219 r!2363)))))))

(declare-fun b!2247810 () Bool)

(declare-fun e!1438410 () Bool)

(declare-fun derivativeStep!1462 (Regex!6567 C!13280) Regex!6567)

(assert (=> b!2247810 (= e!1438410 (matchR!2828 (derivativeStep!1462 (regex!4219 r!2363) (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456))))) (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456))))))))

(declare-fun b!2247811 () Bool)

(declare-fun res!960617 () Bool)

(assert (=> b!2247811 (=> res!960617 e!1438408)))

(assert (=> b!2247811 (= res!960617 (not (isEmpty!15005 (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))))

(declare-fun d!666885 () Bool)

(declare-fun e!1438407 () Bool)

(assert (=> d!666885 e!1438407))

(declare-fun c!357520 () Bool)

(assert (=> d!666885 (= c!357520 ((_ is EmptyExpr!6567) (regex!4219 r!2363)))))

(declare-fun lt!835758 () Bool)

(assert (=> d!666885 (= lt!835758 e!1438410)))

(declare-fun c!357519 () Bool)

(assert (=> d!666885 (= c!357519 (isEmpty!15005 (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))

(assert (=> d!666885 (validRegex!2454 (regex!4219 r!2363))))

(assert (=> d!666885 (= (matchR!2828 (regex!4219 r!2363) (list!10198 (charsOf!2607 (head!4780 tokens!456)))) lt!835758)))

(declare-fun b!2247812 () Bool)

(declare-fun res!960622 () Bool)

(declare-fun e!1438405 () Bool)

(assert (=> b!2247812 (=> res!960622 e!1438405)))

(assert (=> b!2247812 (= res!960622 (not ((_ is ElementMatch!6567) (regex!4219 r!2363))))))

(declare-fun e!1438404 () Bool)

(assert (=> b!2247812 (= e!1438404 e!1438405)))

(declare-fun bm!135447 () Bool)

(declare-fun call!135452 () Bool)

(assert (=> bm!135447 (= call!135452 (isEmpty!15005 (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))

(declare-fun b!2247813 () Bool)

(assert (=> b!2247813 (= e!1438407 e!1438404)))

(declare-fun c!357521 () Bool)

(assert (=> b!2247813 (= c!357521 ((_ is EmptyLang!6567) (regex!4219 r!2363)))))

(declare-fun b!2247814 () Bool)

(declare-fun res!960618 () Bool)

(assert (=> b!2247814 (=> res!960618 e!1438405)))

(declare-fun e!1438409 () Bool)

(assert (=> b!2247814 (= res!960618 e!1438409)))

(declare-fun res!960621 () Bool)

(assert (=> b!2247814 (=> (not res!960621) (not e!1438409))))

(assert (=> b!2247814 (= res!960621 lt!835758)))

(declare-fun b!2247815 () Bool)

(assert (=> b!2247815 (= e!1438407 (= lt!835758 call!135452))))

(declare-fun b!2247816 () Bool)

(declare-fun res!960619 () Bool)

(assert (=> b!2247816 (=> (not res!960619) (not e!1438409))))

(assert (=> b!2247816 (= res!960619 (not call!135452))))

(declare-fun b!2247817 () Bool)

(declare-fun e!1438406 () Bool)

(assert (=> b!2247817 (= e!1438405 e!1438406)))

(declare-fun res!960615 () Bool)

(assert (=> b!2247817 (=> (not res!960615) (not e!1438406))))

(assert (=> b!2247817 (= res!960615 (not lt!835758))))

(declare-fun b!2247818 () Bool)

(assert (=> b!2247818 (= e!1438410 (nullable!1800 (regex!4219 r!2363)))))

(declare-fun b!2247819 () Bool)

(assert (=> b!2247819 (= e!1438404 (not lt!835758))))

(declare-fun b!2247820 () Bool)

(assert (=> b!2247820 (= e!1438409 (= (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456)))) (c!357465 (regex!4219 r!2363))))))

(declare-fun b!2247821 () Bool)

(assert (=> b!2247821 (= e!1438406 e!1438408)))

(declare-fun res!960620 () Bool)

(assert (=> b!2247821 (=> res!960620 e!1438408)))

(assert (=> b!2247821 (= res!960620 call!135452)))

(declare-fun b!2247822 () Bool)

(declare-fun res!960616 () Bool)

(assert (=> b!2247822 (=> (not res!960616) (not e!1438409))))

(assert (=> b!2247822 (= res!960616 (isEmpty!15005 (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456))))))))

(assert (= (and d!666885 c!357519) b!2247818))

(assert (= (and d!666885 (not c!357519)) b!2247810))

(assert (= (and d!666885 c!357520) b!2247815))

(assert (= (and d!666885 (not c!357520)) b!2247813))

(assert (= (and b!2247813 c!357521) b!2247819))

(assert (= (and b!2247813 (not c!357521)) b!2247812))

(assert (= (and b!2247812 (not res!960622)) b!2247814))

(assert (= (and b!2247814 res!960621) b!2247816))

(assert (= (and b!2247816 res!960619) b!2247822))

(assert (= (and b!2247822 res!960616) b!2247820))

(assert (= (and b!2247814 (not res!960618)) b!2247817))

(assert (= (and b!2247817 res!960615) b!2247821))

(assert (= (and b!2247821 (not res!960620)) b!2247811))

(assert (= (and b!2247811 (not res!960617)) b!2247809))

(assert (= (or b!2247815 b!2247816 b!2247821) bm!135447))

(assert (=> b!2247822 m!2678621))

(declare-fun m!2678925 () Bool)

(assert (=> b!2247822 m!2678925))

(assert (=> b!2247822 m!2678925))

(declare-fun m!2678927 () Bool)

(assert (=> b!2247822 m!2678927))

(assert (=> b!2247810 m!2678621))

(declare-fun m!2678929 () Bool)

(assert (=> b!2247810 m!2678929))

(assert (=> b!2247810 m!2678929))

(declare-fun m!2678931 () Bool)

(assert (=> b!2247810 m!2678931))

(assert (=> b!2247810 m!2678621))

(assert (=> b!2247810 m!2678925))

(assert (=> b!2247810 m!2678931))

(assert (=> b!2247810 m!2678925))

(declare-fun m!2678933 () Bool)

(assert (=> b!2247810 m!2678933))

(assert (=> b!2247809 m!2678621))

(assert (=> b!2247809 m!2678929))

(assert (=> b!2247811 m!2678621))

(assert (=> b!2247811 m!2678925))

(assert (=> b!2247811 m!2678925))

(assert (=> b!2247811 m!2678927))

(declare-fun m!2678935 () Bool)

(assert (=> b!2247818 m!2678935))

(assert (=> b!2247820 m!2678621))

(assert (=> b!2247820 m!2678929))

(assert (=> bm!135447 m!2678621))

(declare-fun m!2678937 () Bool)

(assert (=> bm!135447 m!2678937))

(assert (=> d!666885 m!2678621))

(assert (=> d!666885 m!2678937))

(declare-fun m!2678939 () Bool)

(assert (=> d!666885 m!2678939))

(assert (=> b!2247443 d!666885))

(declare-fun d!666887 () Bool)

(assert (=> d!666887 (= (list!10198 (charsOf!2607 (head!4780 tokens!456))) (list!10203 (c!357464 (charsOf!2607 (head!4780 tokens!456)))))))

(declare-fun bs!454843 () Bool)

(assert (= bs!454843 d!666887))

(declare-fun m!2678941 () Bool)

(assert (=> bs!454843 m!2678941))

(assert (=> b!2247443 d!666887))

(declare-fun d!666889 () Bool)

(declare-fun lt!835761 () BalanceConc!16900)

(assert (=> d!666889 (= (list!10198 lt!835761) (originalCharacters!4989 (head!4780 tokens!456)))))

(assert (=> d!666889 (= lt!835761 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456))))))

(assert (=> d!666889 (= (charsOf!2607 (head!4780 tokens!456)) lt!835761)))

(declare-fun b_lambda!71865 () Bool)

(assert (=> (not b_lambda!71865) (not d!666889)))

(declare-fun tb!133119 () Bool)

(declare-fun t!200503 () Bool)

(assert (=> (and b!2247454 (= (toChars!5808 (transformation!4219 (h!32029 rules!1750))) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456))))) t!200503) tb!133119))

(declare-fun b!2247823 () Bool)

(declare-fun e!1438411 () Bool)

(declare-fun tp!709866 () Bool)

(assert (=> b!2247823 (= e!1438411 (and (inv!36153 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456))))) tp!709866))))

(declare-fun result!162278 () Bool)

(assert (=> tb!133119 (= result!162278 (and (inv!36154 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456)))) e!1438411))))

(assert (= tb!133119 b!2247823))

(declare-fun m!2678943 () Bool)

(assert (=> b!2247823 m!2678943))

(declare-fun m!2678945 () Bool)

(assert (=> tb!133119 m!2678945))

(assert (=> d!666889 t!200503))

(declare-fun b_and!175945 () Bool)

(assert (= b_and!175913 (and (=> t!200503 result!162278) b_and!175945)))

(declare-fun t!200505 () Bool)

(declare-fun tb!133121 () Bool)

(assert (=> (and b!2247453 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456))))) t!200505) tb!133121))

(declare-fun result!162280 () Bool)

(assert (= result!162280 result!162278))

(assert (=> d!666889 t!200505))

(declare-fun b_and!175947 () Bool)

(assert (= b_and!175915 (and (=> t!200505 result!162280) b_and!175947)))

(declare-fun t!200507 () Bool)

(declare-fun tb!133123 () Bool)

(assert (=> (and b!2247468 (= (toChars!5808 (transformation!4219 r!2363)) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456))))) t!200507) tb!133123))

(declare-fun result!162282 () Bool)

(assert (= result!162282 result!162278))

(assert (=> d!666889 t!200507))

(declare-fun b_and!175949 () Bool)

(assert (= b_and!175917 (and (=> t!200507 result!162282) b_and!175949)))

(declare-fun t!200509 () Bool)

(declare-fun tb!133125 () Bool)

(assert (=> (and b!2247441 (= (toChars!5808 (transformation!4219 otherR!12)) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456))))) t!200509) tb!133125))

(declare-fun result!162284 () Bool)

(assert (= result!162284 result!162278))

(assert (=> d!666889 t!200509))

(declare-fun b_and!175951 () Bool)

(assert (= b_and!175919 (and (=> t!200509 result!162284) b_and!175951)))

(declare-fun m!2678947 () Bool)

(assert (=> d!666889 m!2678947))

(declare-fun m!2678949 () Bool)

(assert (=> d!666889 m!2678949))

(assert (=> b!2247443 d!666889))

(assert (=> b!2247443 d!666877))

(declare-fun d!666891 () Bool)

(declare-fun res!960623 () Bool)

(declare-fun e!1438412 () Bool)

(assert (=> d!666891 (=> (not res!960623) (not e!1438412))))

(assert (=> d!666891 (= res!960623 (validRegex!2454 (regex!4219 r!2363)))))

(assert (=> d!666891 (= (ruleValid!1311 thiss!16613 r!2363) e!1438412)))

(declare-fun b!2247824 () Bool)

(declare-fun res!960624 () Bool)

(assert (=> b!2247824 (=> (not res!960624) (not e!1438412))))

(assert (=> b!2247824 (= res!960624 (not (nullable!1800 (regex!4219 r!2363))))))

(declare-fun b!2247825 () Bool)

(assert (=> b!2247825 (= e!1438412 (not (= (tag!4709 r!2363) (String!29010 ""))))))

(assert (= (and d!666891 res!960623) b!2247824))

(assert (= (and b!2247824 res!960624) b!2247825))

(assert (=> d!666891 m!2678939))

(assert (=> b!2247824 m!2678935))

(assert (=> b!2247465 d!666891))

(declare-fun d!666893 () Bool)

(assert (=> d!666893 (ruleValid!1311 thiss!16613 r!2363)))

(declare-fun lt!835762 () Unit!39574)

(assert (=> d!666893 (= lt!835762 (choose!13163 thiss!16613 r!2363 rules!1750))))

(assert (=> d!666893 (contains!4566 rules!1750 r!2363)))

(assert (=> d!666893 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!718 thiss!16613 r!2363 rules!1750) lt!835762)))

(declare-fun bs!454844 () Bool)

(assert (= bs!454844 d!666893))

(assert (=> bs!454844 m!2678625))

(declare-fun m!2678951 () Bool)

(assert (=> bs!454844 m!2678951))

(assert (=> bs!454844 m!2678657))

(assert (=> b!2247465 d!666893))

(declare-fun d!666895 () Bool)

(declare-fun lt!835765 () Int)

(assert (=> d!666895 (= lt!835765 (size!20825 (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))

(declare-fun size!20829 (Conc!8586) Int)

(assert (=> d!666895 (= lt!835765 (size!20829 (c!357464 (charsOf!2607 (head!4780 tokens!456)))))))

(assert (=> d!666895 (= (size!20824 (charsOf!2607 (head!4780 tokens!456))) lt!835765)))

(declare-fun bs!454845 () Bool)

(assert (= bs!454845 d!666895))

(assert (=> bs!454845 m!2678619))

(assert (=> bs!454845 m!2678621))

(assert (=> bs!454845 m!2678621))

(declare-fun m!2678953 () Bool)

(assert (=> bs!454845 m!2678953))

(declare-fun m!2678955 () Bool)

(assert (=> bs!454845 m!2678955))

(assert (=> b!2247466 d!666895))

(assert (=> b!2247466 d!666889))

(assert (=> b!2247466 d!666877))

(declare-fun d!666897 () Bool)

(declare-fun lt!835768 () Int)

(assert (=> d!666897 (>= lt!835768 0)))

(declare-fun e!1438415 () Int)

(assert (=> d!666897 (= lt!835768 e!1438415)))

(declare-fun c!357524 () Bool)

(assert (=> d!666897 (= c!357524 ((_ is Nil!26626) otherP!12))))

(assert (=> d!666897 (= (size!20825 otherP!12) lt!835768)))

(declare-fun b!2247830 () Bool)

(assert (=> b!2247830 (= e!1438415 0)))

(declare-fun b!2247831 () Bool)

(assert (=> b!2247831 (= e!1438415 (+ 1 (size!20825 (t!200466 otherP!12))))))

(assert (= (and d!666897 c!357524) b!2247830))

(assert (= (and d!666897 (not c!357524)) b!2247831))

(declare-fun m!2678957 () Bool)

(assert (=> b!2247831 m!2678957))

(assert (=> b!2247466 d!666897))

(declare-fun e!1438418 () Bool)

(assert (=> b!2247467 (= tp!709792 e!1438418)))

(declare-fun b!2247843 () Bool)

(declare-fun tp!709880 () Bool)

(declare-fun tp!709881 () Bool)

(assert (=> b!2247843 (= e!1438418 (and tp!709880 tp!709881))))

(declare-fun b!2247842 () Bool)

(assert (=> b!2247842 (= e!1438418 tp_is_empty!10355)))

(declare-fun b!2247844 () Bool)

(declare-fun tp!709877 () Bool)

(assert (=> b!2247844 (= e!1438418 tp!709877)))

(declare-fun b!2247845 () Bool)

(declare-fun tp!709879 () Bool)

(declare-fun tp!709878 () Bool)

(assert (=> b!2247845 (= e!1438418 (and tp!709879 tp!709878))))

(assert (= (and b!2247467 ((_ is ElementMatch!6567) (regex!4219 otherR!12))) b!2247842))

(assert (= (and b!2247467 ((_ is Concat!10949) (regex!4219 otherR!12))) b!2247843))

(assert (= (and b!2247467 ((_ is Star!6567) (regex!4219 otherR!12))) b!2247844))

(assert (= (and b!2247467 ((_ is Union!6567) (regex!4219 otherR!12))) b!2247845))

(declare-fun b!2247850 () Bool)

(declare-fun e!1438421 () Bool)

(declare-fun tp!709884 () Bool)

(assert (=> b!2247850 (= e!1438421 (and tp_is_empty!10355 tp!709884))))

(assert (=> b!2247446 (= tp!709779 e!1438421)))

(assert (= (and b!2247446 ((_ is Cons!26626) (t!200466 input!1722))) b!2247850))

(declare-fun b!2247864 () Bool)

(declare-fun b_free!65749 () Bool)

(declare-fun b_next!66453 () Bool)

(assert (=> b!2247864 (= b_free!65749 (not b_next!66453))))

(declare-fun tp!709899 () Bool)

(declare-fun b_and!175953 () Bool)

(assert (=> b!2247864 (= tp!709899 b_and!175953)))

(declare-fun b_free!65751 () Bool)

(declare-fun b_next!66455 () Bool)

(assert (=> b!2247864 (= b_free!65751 (not b_next!66455))))

(declare-fun t!200511 () Bool)

(declare-fun tb!133127 () Bool)

(assert (=> (and b!2247864 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456))))) t!200511) tb!133127))

(declare-fun result!162292 () Bool)

(assert (= result!162292 result!162234))

(assert (=> b!2247506 t!200511))

(declare-fun t!200513 () Bool)

(declare-fun tb!133129 () Bool)

(assert (=> (and b!2247864 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456))))) t!200513) tb!133129))

(declare-fun result!162294 () Bool)

(assert (= result!162294 result!162278))

(assert (=> d!666889 t!200513))

(declare-fun b_and!175955 () Bool)

(declare-fun tp!709895 () Bool)

(assert (=> b!2247864 (= tp!709895 (and (=> t!200511 result!162292) (=> t!200513 result!162294) b_and!175955))))

(declare-fun b!2247863 () Bool)

(declare-fun e!1438437 () Bool)

(declare-fun tp!709897 () Bool)

(declare-fun e!1438434 () Bool)

(assert (=> b!2247863 (= e!1438434 (and tp!709897 (inv!36146 (tag!4709 (rule!6519 (h!32028 (t!200467 tokens!456))))) (inv!36149 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))) e!1438437))))

(declare-fun b!2247861 () Bool)

(declare-fun e!1438436 () Bool)

(declare-fun e!1438439 () Bool)

(declare-fun tp!709898 () Bool)

(assert (=> b!2247861 (= e!1438436 (and (inv!36150 (h!32028 (t!200467 tokens!456))) e!1438439 tp!709898))))

(assert (=> b!2247447 (= tp!709794 e!1438436)))

(declare-fun tp!709896 () Bool)

(declare-fun b!2247862 () Bool)

(assert (=> b!2247862 (= e!1438439 (and (inv!21 (value!134061 (h!32028 (t!200467 tokens!456)))) e!1438434 tp!709896))))

(assert (=> b!2247864 (= e!1438437 (and tp!709899 tp!709895))))

(assert (= b!2247863 b!2247864))

(assert (= b!2247862 b!2247863))

(assert (= b!2247861 b!2247862))

(assert (= (and b!2247447 ((_ is Cons!26627) (t!200467 tokens!456))) b!2247861))

(declare-fun m!2678959 () Bool)

(assert (=> b!2247863 m!2678959))

(declare-fun m!2678961 () Bool)

(assert (=> b!2247863 m!2678961))

(declare-fun m!2678963 () Bool)

(assert (=> b!2247861 m!2678963))

(declare-fun m!2678965 () Bool)

(assert (=> b!2247862 m!2678965))

(declare-fun b!2247865 () Bool)

(declare-fun e!1438440 () Bool)

(declare-fun tp!709900 () Bool)

(assert (=> b!2247865 (= e!1438440 (and tp_is_empty!10355 tp!709900))))

(assert (=> b!2247469 (= tp!709788 e!1438440)))

(assert (= (and b!2247469 ((_ is Cons!26626) (originalCharacters!4989 (h!32028 tokens!456)))) b!2247865))

(declare-fun e!1438441 () Bool)

(assert (=> b!2247448 (= tp!709795 e!1438441)))

(declare-fun b!2247867 () Bool)

(declare-fun tp!709904 () Bool)

(declare-fun tp!709905 () Bool)

(assert (=> b!2247867 (= e!1438441 (and tp!709904 tp!709905))))

(declare-fun b!2247866 () Bool)

(assert (=> b!2247866 (= e!1438441 tp_is_empty!10355)))

(declare-fun b!2247868 () Bool)

(declare-fun tp!709901 () Bool)

(assert (=> b!2247868 (= e!1438441 tp!709901)))

(declare-fun b!2247869 () Bool)

(declare-fun tp!709903 () Bool)

(declare-fun tp!709902 () Bool)

(assert (=> b!2247869 (= e!1438441 (and tp!709903 tp!709902))))

(assert (= (and b!2247448 ((_ is ElementMatch!6567) (regex!4219 r!2363))) b!2247866))

(assert (= (and b!2247448 ((_ is Concat!10949) (regex!4219 r!2363))) b!2247867))

(assert (= (and b!2247448 ((_ is Star!6567) (regex!4219 r!2363))) b!2247868))

(assert (= (and b!2247448 ((_ is Union!6567) (regex!4219 r!2363))) b!2247869))

(declare-fun b!2247880 () Bool)

(declare-fun b_free!65753 () Bool)

(declare-fun b_next!66457 () Bool)

(assert (=> b!2247880 (= b_free!65753 (not b_next!66457))))

(declare-fun tp!709915 () Bool)

(declare-fun b_and!175957 () Bool)

(assert (=> b!2247880 (= tp!709915 b_and!175957)))

(declare-fun b_free!65755 () Bool)

(declare-fun b_next!66459 () Bool)

(assert (=> b!2247880 (= b_free!65755 (not b_next!66459))))

(declare-fun tb!133131 () Bool)

(declare-fun t!200515 () Bool)

(assert (=> (and b!2247880 (= (toChars!5808 (transformation!4219 (h!32029 (t!200468 rules!1750)))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456))))) t!200515) tb!133131))

(declare-fun result!162298 () Bool)

(assert (= result!162298 result!162234))

(assert (=> b!2247506 t!200515))

(declare-fun tb!133133 () Bool)

(declare-fun t!200517 () Bool)

(assert (=> (and b!2247880 (= (toChars!5808 (transformation!4219 (h!32029 (t!200468 rules!1750)))) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456))))) t!200517) tb!133133))

(declare-fun result!162300 () Bool)

(assert (= result!162300 result!162278))

(assert (=> d!666889 t!200517))

(declare-fun tp!709917 () Bool)

(declare-fun b_and!175959 () Bool)

(assert (=> b!2247880 (= tp!709917 (and (=> t!200515 result!162298) (=> t!200517 result!162300) b_and!175959))))

(declare-fun e!1438450 () Bool)

(assert (=> b!2247880 (= e!1438450 (and tp!709915 tp!709917))))

(declare-fun b!2247879 () Bool)

(declare-fun e!1438452 () Bool)

(declare-fun tp!709914 () Bool)

(assert (=> b!2247879 (= e!1438452 (and tp!709914 (inv!36146 (tag!4709 (h!32029 (t!200468 rules!1750)))) (inv!36149 (transformation!4219 (h!32029 (t!200468 rules!1750)))) e!1438450))))

(declare-fun b!2247878 () Bool)

(declare-fun e!1438453 () Bool)

(declare-fun tp!709916 () Bool)

(assert (=> b!2247878 (= e!1438453 (and e!1438452 tp!709916))))

(assert (=> b!2247459 (= tp!709784 e!1438453)))

(assert (= b!2247879 b!2247880))

(assert (= b!2247878 b!2247879))

(assert (= (and b!2247459 ((_ is Cons!26628) (t!200468 rules!1750))) b!2247878))

(declare-fun m!2678967 () Bool)

(assert (=> b!2247879 m!2678967))

(declare-fun m!2678969 () Bool)

(assert (=> b!2247879 m!2678969))

(declare-fun e!1438454 () Bool)

(assert (=> b!2247460 (= tp!709786 e!1438454)))

(declare-fun b!2247882 () Bool)

(declare-fun tp!709921 () Bool)

(declare-fun tp!709922 () Bool)

(assert (=> b!2247882 (= e!1438454 (and tp!709921 tp!709922))))

(declare-fun b!2247881 () Bool)

(assert (=> b!2247881 (= e!1438454 tp_is_empty!10355)))

(declare-fun b!2247883 () Bool)

(declare-fun tp!709918 () Bool)

(assert (=> b!2247883 (= e!1438454 tp!709918)))

(declare-fun b!2247884 () Bool)

(declare-fun tp!709920 () Bool)

(declare-fun tp!709919 () Bool)

(assert (=> b!2247884 (= e!1438454 (and tp!709920 tp!709919))))

(assert (= (and b!2247460 ((_ is ElementMatch!6567) (regex!4219 (h!32029 rules!1750)))) b!2247881))

(assert (= (and b!2247460 ((_ is Concat!10949) (regex!4219 (h!32029 rules!1750)))) b!2247882))

(assert (= (and b!2247460 ((_ is Star!6567) (regex!4219 (h!32029 rules!1750)))) b!2247883))

(assert (= (and b!2247460 ((_ is Union!6567) (regex!4219 (h!32029 rules!1750)))) b!2247884))

(declare-fun e!1438455 () Bool)

(assert (=> b!2247452 (= tp!709790 e!1438455)))

(declare-fun b!2247886 () Bool)

(declare-fun tp!709926 () Bool)

(declare-fun tp!709927 () Bool)

(assert (=> b!2247886 (= e!1438455 (and tp!709926 tp!709927))))

(declare-fun b!2247885 () Bool)

(assert (=> b!2247885 (= e!1438455 tp_is_empty!10355)))

(declare-fun b!2247887 () Bool)

(declare-fun tp!709923 () Bool)

(assert (=> b!2247887 (= e!1438455 tp!709923)))

(declare-fun b!2247888 () Bool)

(declare-fun tp!709925 () Bool)

(declare-fun tp!709924 () Bool)

(assert (=> b!2247888 (= e!1438455 (and tp!709925 tp!709924))))

(assert (= (and b!2247452 ((_ is ElementMatch!6567) (regex!4219 (rule!6519 (h!32028 tokens!456))))) b!2247885))

(assert (= (and b!2247452 ((_ is Concat!10949) (regex!4219 (rule!6519 (h!32028 tokens!456))))) b!2247886))

(assert (= (and b!2247452 ((_ is Star!6567) (regex!4219 (rule!6519 (h!32028 tokens!456))))) b!2247887))

(assert (= (and b!2247452 ((_ is Union!6567) (regex!4219 (rule!6519 (h!32028 tokens!456))))) b!2247888))

(declare-fun b!2247889 () Bool)

(declare-fun e!1438456 () Bool)

(declare-fun tp!709928 () Bool)

(assert (=> b!2247889 (= e!1438456 (and tp_is_empty!10355 tp!709928))))

(assert (=> b!2247464 (= tp!709789 e!1438456)))

(assert (= (and b!2247464 ((_ is Cons!26626) (t!200466 otherP!12))) b!2247889))

(declare-fun b!2247890 () Bool)

(declare-fun e!1438457 () Bool)

(declare-fun tp!709929 () Bool)

(assert (=> b!2247890 (= e!1438457 (and tp_is_empty!10355 tp!709929))))

(assert (=> b!2247444 (= tp!709778 e!1438457)))

(assert (= (and b!2247444 ((_ is Cons!26626) (t!200466 suffix!886))) b!2247890))

(declare-fun b_lambda!71867 () Bool)

(assert (= b_lambda!71857 (or (and b!2247441 b_free!65739 (= (toChars!5808 (transformation!4219 otherR!12)) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))))) (and b!2247468 b_free!65735 (= (toChars!5808 (transformation!4219 r!2363)) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))))) (and b!2247454 b_free!65727 (= (toChars!5808 (transformation!4219 (h!32029 rules!1750))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))))) (and b!2247864 b_free!65751 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))))) (and b!2247453 b_free!65731) (and b!2247880 b_free!65755 (= (toChars!5808 (transformation!4219 (h!32029 (t!200468 rules!1750)))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))))) b_lambda!71867)))

(check-sat (not b_lambda!71865) (not b!2247831) (not b_next!66429) (not b!2247499) (not b!2247776) (not b!2247844) b_and!175897 (not d!666867) b_and!175955 (not b!2247824) (not b!2247810) (not b!2247863) (not tb!133087) (not b!2247862) (not d!666773) (not b_next!66435) (not d!666801) (not b!2247890) (not b_next!66459) (not b!2247648) (not b!2247650) (not b!2247887) (not b_next!66455) b_and!175949 (not b!2247883) (not b!2247845) (not b!2247545) (not d!666797) (not d!666783) (not b_next!66457) (not b_next!66443) (not b_next!66453) (not b!2247843) (not b!2247818) (not d!666779) (not b!2247500) (not b!2247501) (not b!2247886) b_and!175953 (not b!2247523) (not b!2247820) (not b!2247653) (not b!2247850) (not b!2247550) (not b!2247867) (not b_lambda!71867) b_and!175909 (not b!2247884) (not b!2247811) (not d!666803) (not b!2247655) (not d!666791) (not tb!133119) (not d!666787) (not d!666869) (not d!666887) (not b!2247889) (not d!666805) (not b!2247507) (not b!2247888) (not b_next!66439) (not b!2247823) (not d!666861) (not b!2247480) (not d!666889) (not b_next!66433) b_and!175901 (not b_next!66441) b_and!175957 (not b!2247878) (not b!2247780) (not b!2247549) (not b!2247512) (not bm!135447) (not b_next!66437) (not d!666785) (not b!2247822) b_and!175945 (not b!2247865) (not b!2247486) (not b!2247869) (not d!666865) (not b!2247506) (not b_next!66431) (not b!2247809) (not d!666891) (not d!666789) b_and!175959 (not b!2247651) tp_is_empty!10355 b_and!175905 (not b!2247489) (not b!2247533) (not b!2247861) (not b!2247882) (not d!666893) (not b!2247868) (not b!2247547) (not d!666885) (not b!2247652) (not d!666881) b_and!175947 (not b!2247879) b_and!175951 (not d!666895) (not b!2247777) (not b!2247527) (not d!666775))
(check-sat b_and!175897 b_and!175955 b_and!175953 b_and!175909 (not b_next!66429) (not b_next!66439) (not b_next!66433) b_and!175957 (not b_next!66437) b_and!175945 b_and!175905 b_and!175947 b_and!175951 (not b_next!66435) (not b_next!66459) (not b_next!66455) b_and!175949 (not b_next!66457) (not b_next!66443) (not b_next!66453) b_and!175901 (not b_next!66441) (not b_next!66431) b_and!175959)
(get-model)

(declare-fun d!666955 () Bool)

(assert (=> d!666955 (= (isEmpty!15005 (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456))))) ((_ is Nil!26626) (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456))))))))

(assert (=> b!2247811 d!666955))

(declare-fun d!666957 () Bool)

(assert (=> d!666957 (= (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456)))) (t!200466 (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))

(assert (=> b!2247811 d!666957))

(declare-fun d!666959 () Bool)

(assert (=> d!666959 (= (inv!36146 (tag!4709 (rule!6519 (h!32028 (t!200467 tokens!456))))) (= (mod (str.len (value!134060 (tag!4709 (rule!6519 (h!32028 (t!200467 tokens!456)))))) 2) 0))))

(assert (=> b!2247863 d!666959))

(declare-fun d!666961 () Bool)

(declare-fun res!960668 () Bool)

(declare-fun e!1438530 () Bool)

(assert (=> d!666961 (=> (not res!960668) (not e!1438530))))

(assert (=> d!666961 (= res!960668 (semiInverseModEq!1702 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))) (toValue!5949 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456)))))))))

(assert (=> d!666961 (= (inv!36149 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))) e!1438530)))

(declare-fun b!2248013 () Bool)

(assert (=> b!2248013 (= e!1438530 (equivClasses!1621 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))) (toValue!5949 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456)))))))))

(assert (= (and d!666961 res!960668) b!2248013))

(declare-fun m!2679065 () Bool)

(assert (=> d!666961 m!2679065))

(declare-fun m!2679067 () Bool)

(assert (=> b!2248013 m!2679067))

(assert (=> b!2247863 d!666961))

(declare-fun b!2248017 () Bool)

(declare-fun e!1438533 () Bool)

(assert (=> b!2248017 (= e!1438533 (>= (size!20825 (tail!3243 input!1722)) (size!20825 (tail!3243 otherP!12))))))

(declare-fun b!2248016 () Bool)

(declare-fun e!1438531 () Bool)

(assert (=> b!2248016 (= e!1438531 (isPrefix!2209 (tail!3243 (tail!3243 otherP!12)) (tail!3243 (tail!3243 input!1722))))))

(declare-fun d!666963 () Bool)

(assert (=> d!666963 e!1438533))

(declare-fun res!960672 () Bool)

(assert (=> d!666963 (=> res!960672 e!1438533)))

(declare-fun lt!835790 () Bool)

(assert (=> d!666963 (= res!960672 (not lt!835790))))

(declare-fun e!1438532 () Bool)

(assert (=> d!666963 (= lt!835790 e!1438532)))

(declare-fun res!960671 () Bool)

(assert (=> d!666963 (=> res!960671 e!1438532)))

(assert (=> d!666963 (= res!960671 ((_ is Nil!26626) (tail!3243 otherP!12)))))

(assert (=> d!666963 (= (isPrefix!2209 (tail!3243 otherP!12) (tail!3243 input!1722)) lt!835790)))

(declare-fun b!2248014 () Bool)

(assert (=> b!2248014 (= e!1438532 e!1438531)))

(declare-fun res!960670 () Bool)

(assert (=> b!2248014 (=> (not res!960670) (not e!1438531))))

(assert (=> b!2248014 (= res!960670 (not ((_ is Nil!26626) (tail!3243 input!1722))))))

(declare-fun b!2248015 () Bool)

(declare-fun res!960669 () Bool)

(assert (=> b!2248015 (=> (not res!960669) (not e!1438531))))

(assert (=> b!2248015 (= res!960669 (= (head!4782 (tail!3243 otherP!12)) (head!4782 (tail!3243 input!1722))))))

(assert (= (and d!666963 (not res!960671)) b!2248014))

(assert (= (and b!2248014 res!960670) b!2248015))

(assert (= (and b!2248015 res!960669) b!2248016))

(assert (= (and d!666963 (not res!960672)) b!2248017))

(assert (=> b!2248017 m!2678701))

(declare-fun m!2679069 () Bool)

(assert (=> b!2248017 m!2679069))

(assert (=> b!2248017 m!2678699))

(declare-fun m!2679071 () Bool)

(assert (=> b!2248017 m!2679071))

(assert (=> b!2248016 m!2678699))

(declare-fun m!2679073 () Bool)

(assert (=> b!2248016 m!2679073))

(assert (=> b!2248016 m!2678701))

(declare-fun m!2679075 () Bool)

(assert (=> b!2248016 m!2679075))

(assert (=> b!2248016 m!2679073))

(assert (=> b!2248016 m!2679075))

(declare-fun m!2679077 () Bool)

(assert (=> b!2248016 m!2679077))

(assert (=> b!2248015 m!2678699))

(declare-fun m!2679079 () Bool)

(assert (=> b!2248015 m!2679079))

(assert (=> b!2248015 m!2678701))

(declare-fun m!2679081 () Bool)

(assert (=> b!2248015 m!2679081))

(assert (=> b!2247500 d!666963))

(declare-fun d!666965 () Bool)

(assert (=> d!666965 (= (tail!3243 otherP!12) (t!200466 otherP!12))))

(assert (=> b!2247500 d!666965))

(declare-fun d!666967 () Bool)

(assert (=> d!666967 (= (tail!3243 input!1722) (t!200466 input!1722))))

(assert (=> b!2247500 d!666967))

(declare-fun d!666969 () Bool)

(assert (=> d!666969 (= (inv!36146 (tag!4709 (h!32029 (t!200468 rules!1750)))) (= (mod (str.len (value!134060 (tag!4709 (h!32029 (t!200468 rules!1750))))) 2) 0))))

(assert (=> b!2247879 d!666969))

(declare-fun d!666971 () Bool)

(declare-fun res!960673 () Bool)

(declare-fun e!1438534 () Bool)

(assert (=> d!666971 (=> (not res!960673) (not e!1438534))))

(assert (=> d!666971 (= res!960673 (semiInverseModEq!1702 (toChars!5808 (transformation!4219 (h!32029 (t!200468 rules!1750)))) (toValue!5949 (transformation!4219 (h!32029 (t!200468 rules!1750))))))))

(assert (=> d!666971 (= (inv!36149 (transformation!4219 (h!32029 (t!200468 rules!1750)))) e!1438534)))

(declare-fun b!2248018 () Bool)

(assert (=> b!2248018 (= e!1438534 (equivClasses!1621 (toChars!5808 (transformation!4219 (h!32029 (t!200468 rules!1750)))) (toValue!5949 (transformation!4219 (h!32029 (t!200468 rules!1750))))))))

(assert (= (and d!666971 res!960673) b!2248018))

(declare-fun m!2679083 () Bool)

(assert (=> d!666971 m!2679083))

(declare-fun m!2679085 () Bool)

(assert (=> b!2248018 m!2679085))

(assert (=> b!2247879 d!666971))

(declare-fun d!666973 () Bool)

(assert (=> d!666973 true))

(declare-fun order!14893 () Int)

(declare-fun lambda!85166 () Int)

(declare-fun order!14891 () Int)

(declare-fun dynLambda!11572 (Int Int) Int)

(declare-fun dynLambda!11573 (Int Int) Int)

(assert (=> d!666973 (< (dynLambda!11572 order!14891 (toValue!5949 (transformation!4219 r!2363))) (dynLambda!11573 order!14893 lambda!85166))))

(declare-fun Forall2!677 (Int) Bool)

(assert (=> d!666973 (= (equivClasses!1621 (toChars!5808 (transformation!4219 r!2363)) (toValue!5949 (transformation!4219 r!2363))) (Forall2!677 lambda!85166))))

(declare-fun bs!454856 () Bool)

(assert (= bs!454856 d!666973))

(declare-fun m!2679093 () Bool)

(assert (=> bs!454856 m!2679093))

(assert (=> b!2247550 d!666973))

(declare-fun bs!454857 () Bool)

(declare-fun d!666977 () Bool)

(assert (= bs!454857 (and d!666977 d!666973)))

(declare-fun lambda!85169 () Int)

(assert (=> bs!454857 (= (= (toValue!5949 (transformation!4219 (h!32029 rules!1750))) (toValue!5949 (transformation!4219 r!2363))) (= lambda!85169 lambda!85166))))

(assert (=> d!666977 true))

(assert (=> d!666977 (< (dynLambda!11572 order!14891 (toValue!5949 (transformation!4219 (h!32029 rules!1750)))) (dynLambda!11573 order!14893 lambda!85169))))

(assert (=> d!666977 (= (equivClasses!1621 (toChars!5808 (transformation!4219 (h!32029 rules!1750))) (toValue!5949 (transformation!4219 (h!32029 rules!1750)))) (Forall2!677 lambda!85169))))

(declare-fun bs!454858 () Bool)

(assert (= bs!454858 d!666977))

(declare-fun m!2679095 () Bool)

(assert (=> bs!454858 m!2679095))

(assert (=> b!2247653 d!666977))

(declare-fun d!666979 () Bool)

(assert (=> d!666979 (= (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456)))) (h!32027 (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))

(assert (=> b!2247809 d!666979))

(declare-fun d!666981 () Bool)

(declare-fun res!960683 () Bool)

(declare-fun e!1438546 () Bool)

(assert (=> d!666981 (=> (not res!960683) (not e!1438546))))

(assert (=> d!666981 (= res!960683 (not (isEmpty!15005 (originalCharacters!4989 (h!32028 (t!200467 tokens!456))))))))

(assert (=> d!666981 (= (inv!36150 (h!32028 (t!200467 tokens!456))) e!1438546)))

(declare-fun b!2248034 () Bool)

(declare-fun res!960684 () Bool)

(assert (=> b!2248034 (=> (not res!960684) (not e!1438546))))

(assert (=> b!2248034 (= res!960684 (= (originalCharacters!4989 (h!32028 (t!200467 tokens!456))) (list!10198 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))) (value!134061 (h!32028 (t!200467 tokens!456)))))))))

(declare-fun b!2248035 () Bool)

(assert (=> b!2248035 (= e!1438546 (= (size!20823 (h!32028 (t!200467 tokens!456))) (size!20825 (originalCharacters!4989 (h!32028 (t!200467 tokens!456))))))))

(assert (= (and d!666981 res!960683) b!2248034))

(assert (= (and b!2248034 res!960684) b!2248035))

(declare-fun b_lambda!71871 () Bool)

(assert (=> (not b_lambda!71871) (not b!2248034)))

(declare-fun t!200533 () Bool)

(declare-fun tb!133147 () Bool)

(assert (=> (and b!2247864 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456)))))) t!200533) tb!133147))

(declare-fun b!2248040 () Bool)

(declare-fun e!1438549 () Bool)

(declare-fun tp!709931 () Bool)

(assert (=> b!2248040 (= e!1438549 (and (inv!36153 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))) (value!134061 (h!32028 (t!200467 tokens!456)))))) tp!709931))))

(declare-fun result!162314 () Bool)

(assert (=> tb!133147 (= result!162314 (and (inv!36154 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))) (value!134061 (h!32028 (t!200467 tokens!456))))) e!1438549))))

(assert (= tb!133147 b!2248040))

(declare-fun m!2679105 () Bool)

(assert (=> b!2248040 m!2679105))

(declare-fun m!2679109 () Bool)

(assert (=> tb!133147 m!2679109))

(assert (=> b!2248034 t!200533))

(declare-fun b_and!175973 () Bool)

(assert (= b_and!175955 (and (=> t!200533 result!162314) b_and!175973)))

(declare-fun t!200535 () Bool)

(declare-fun tb!133149 () Bool)

(assert (=> (and b!2247468 (= (toChars!5808 (transformation!4219 r!2363)) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456)))))) t!200535) tb!133149))

(declare-fun result!162316 () Bool)

(assert (= result!162316 result!162314))

(assert (=> b!2248034 t!200535))

(declare-fun b_and!175975 () Bool)

(assert (= b_and!175949 (and (=> t!200535 result!162316) b_and!175975)))

(declare-fun tb!133151 () Bool)

(declare-fun t!200537 () Bool)

(assert (=> (and b!2247454 (= (toChars!5808 (transformation!4219 (h!32029 rules!1750))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456)))))) t!200537) tb!133151))

(declare-fun result!162318 () Bool)

(assert (= result!162318 result!162314))

(assert (=> b!2248034 t!200537))

(declare-fun b_and!175977 () Bool)

(assert (= b_and!175945 (and (=> t!200537 result!162318) b_and!175977)))

(declare-fun t!200539 () Bool)

(declare-fun tb!133153 () Bool)

(assert (=> (and b!2247453 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456)))))) t!200539) tb!133153))

(declare-fun result!162320 () Bool)

(assert (= result!162320 result!162314))

(assert (=> b!2248034 t!200539))

(declare-fun b_and!175979 () Bool)

(assert (= b_and!175947 (and (=> t!200539 result!162320) b_and!175979)))

(declare-fun tb!133155 () Bool)

(declare-fun t!200541 () Bool)

(assert (=> (and b!2247880 (= (toChars!5808 (transformation!4219 (h!32029 (t!200468 rules!1750)))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456)))))) t!200541) tb!133155))

(declare-fun result!162322 () Bool)

(assert (= result!162322 result!162314))

(assert (=> b!2248034 t!200541))

(declare-fun b_and!175981 () Bool)

(assert (= b_and!175959 (and (=> t!200541 result!162322) b_and!175981)))

(declare-fun t!200543 () Bool)

(declare-fun tb!133157 () Bool)

(assert (=> (and b!2247441 (= (toChars!5808 (transformation!4219 otherR!12)) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456)))))) t!200543) tb!133157))

(declare-fun result!162324 () Bool)

(assert (= result!162324 result!162314))

(assert (=> b!2248034 t!200543))

(declare-fun b_and!175983 () Bool)

(assert (= b_and!175951 (and (=> t!200543 result!162324) b_and!175983)))

(declare-fun m!2679113 () Bool)

(assert (=> d!666981 m!2679113))

(declare-fun m!2679115 () Bool)

(assert (=> b!2248034 m!2679115))

(assert (=> b!2248034 m!2679115))

(declare-fun m!2679117 () Bool)

(assert (=> b!2248034 m!2679117))

(declare-fun m!2679121 () Bool)

(assert (=> b!2248035 m!2679121))

(assert (=> b!2247861 d!666981))

(declare-fun bs!454861 () Bool)

(declare-fun d!666993 () Bool)

(assert (= bs!454861 (and d!666993 d!666973)))

(declare-fun lambda!85171 () Int)

(assert (=> bs!454861 (= (= (toValue!5949 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toValue!5949 (transformation!4219 r!2363))) (= lambda!85171 lambda!85166))))

(declare-fun bs!454862 () Bool)

(assert (= bs!454862 (and d!666993 d!666977)))

(assert (=> bs!454862 (= (= (toValue!5949 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toValue!5949 (transformation!4219 (h!32029 rules!1750)))) (= lambda!85171 lambda!85169))))

(assert (=> d!666993 true))

(assert (=> d!666993 (< (dynLambda!11572 order!14891 (toValue!5949 (transformation!4219 (rule!6519 (h!32028 tokens!456))))) (dynLambda!11573 order!14893 lambda!85171))))

(assert (=> d!666993 (= (equivClasses!1621 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toValue!5949 (transformation!4219 (rule!6519 (h!32028 tokens!456))))) (Forall2!677 lambda!85171))))

(declare-fun bs!454864 () Bool)

(assert (= bs!454864 d!666993))

(declare-fun m!2679127 () Bool)

(assert (=> bs!454864 m!2679127))

(assert (=> b!2247780 d!666993))

(declare-fun d!666999 () Bool)

(declare-fun c!357580 () Bool)

(assert (=> d!666999 (= c!357580 ((_ is Empty!8586) (c!357464 (_2!15564 lt!835699))))))

(declare-fun e!1438570 () List!26720)

(assert (=> d!666999 (= (list!10203 (c!357464 (_2!15564 lt!835699))) e!1438570)))

(declare-fun b!2248074 () Bool)

(declare-fun e!1438571 () List!26720)

(assert (=> b!2248074 (= e!1438570 e!1438571)))

(declare-fun c!357581 () Bool)

(assert (=> b!2248074 (= c!357581 ((_ is Leaf!12681) (c!357464 (_2!15564 lt!835699))))))

(declare-fun b!2248075 () Bool)

(declare-fun list!10205 (IArray!17177) List!26720)

(assert (=> b!2248075 (= e!1438571 (list!10205 (xs!11528 (c!357464 (_2!15564 lt!835699)))))))

(declare-fun b!2248076 () Bool)

(declare-fun ++!6483 (List!26720 List!26720) List!26720)

(assert (=> b!2248076 (= e!1438571 (++!6483 (list!10203 (left!20228 (c!357464 (_2!15564 lt!835699)))) (list!10203 (right!20558 (c!357464 (_2!15564 lt!835699))))))))

(declare-fun b!2248073 () Bool)

(assert (=> b!2248073 (= e!1438570 Nil!26626)))

(assert (= (and d!666999 c!357580) b!2248073))

(assert (= (and d!666999 (not c!357580)) b!2248074))

(assert (= (and b!2248074 c!357581) b!2248075))

(assert (= (and b!2248074 (not c!357581)) b!2248076))

(declare-fun m!2679145 () Bool)

(assert (=> b!2248075 m!2679145))

(declare-fun m!2679147 () Bool)

(assert (=> b!2248076 m!2679147))

(declare-fun m!2679149 () Bool)

(assert (=> b!2248076 m!2679149))

(assert (=> b!2248076 m!2679147))

(assert (=> b!2248076 m!2679149))

(declare-fun m!2679151 () Bool)

(assert (=> b!2248076 m!2679151))

(assert (=> d!666803 d!666999))

(declare-fun d!667011 () Bool)

(declare-fun res!960699 () Bool)

(declare-fun e!1438576 () Bool)

(assert (=> d!667011 (=> res!960699 e!1438576)))

(assert (=> d!667011 (= res!960699 ((_ is Nil!26628) rules!1750))))

(assert (=> d!667011 (= (forall!5465 rules!1750 lambda!85157) e!1438576)))

(declare-fun b!2248081 () Bool)

(declare-fun e!1438577 () Bool)

(assert (=> b!2248081 (= e!1438576 e!1438577)))

(declare-fun res!960700 () Bool)

(assert (=> b!2248081 (=> (not res!960700) (not e!1438577))))

(declare-fun dynLambda!11574 (Int Rule!8238) Bool)

(assert (=> b!2248081 (= res!960700 (dynLambda!11574 lambda!85157 (h!32029 rules!1750)))))

(declare-fun b!2248082 () Bool)

(assert (=> b!2248082 (= e!1438577 (forall!5465 (t!200468 rules!1750) lambda!85157))))

(assert (= (and d!667011 (not res!960699)) b!2248081))

(assert (= (and b!2248081 res!960700) b!2248082))

(declare-fun b_lambda!71873 () Bool)

(assert (=> (not b_lambda!71873) (not b!2248081)))

(declare-fun m!2679159 () Bool)

(assert (=> b!2248081 m!2679159))

(declare-fun m!2679163 () Bool)

(assert (=> b!2248082 m!2679163))

(assert (=> d!666869 d!667011))

(declare-fun d!667021 () Bool)

(declare-fun lt!835797 () Int)

(assert (=> d!667021 (>= lt!835797 0)))

(declare-fun e!1438578 () Int)

(assert (=> d!667021 (= lt!835797 e!1438578)))

(declare-fun c!357582 () Bool)

(assert (=> d!667021 (= c!357582 ((_ is Nil!26626) (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))

(assert (=> d!667021 (= (size!20825 (list!10198 (charsOf!2607 (head!4780 tokens!456)))) lt!835797)))

(declare-fun b!2248083 () Bool)

(assert (=> b!2248083 (= e!1438578 0)))

(declare-fun b!2248084 () Bool)

(assert (=> b!2248084 (= e!1438578 (+ 1 (size!20825 (t!200466 (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))))

(assert (= (and d!667021 c!357582) b!2248083))

(assert (= (and d!667021 (not c!357582)) b!2248084))

(declare-fun m!2679165 () Bool)

(assert (=> b!2248084 m!2679165))

(assert (=> d!666895 d!667021))

(assert (=> d!666895 d!666887))

(declare-fun d!667023 () Bool)

(declare-fun lt!835800 () Int)

(assert (=> d!667023 (= lt!835800 (size!20825 (list!10203 (c!357464 (charsOf!2607 (head!4780 tokens!456))))))))

(assert (=> d!667023 (= lt!835800 (ite ((_ is Empty!8586) (c!357464 (charsOf!2607 (head!4780 tokens!456)))) 0 (ite ((_ is Leaf!12681) (c!357464 (charsOf!2607 (head!4780 tokens!456)))) (csize!17403 (c!357464 (charsOf!2607 (head!4780 tokens!456)))) (csize!17402 (c!357464 (charsOf!2607 (head!4780 tokens!456)))))))))

(assert (=> d!667023 (= (size!20829 (c!357464 (charsOf!2607 (head!4780 tokens!456)))) lt!835800)))

(declare-fun bs!454875 () Bool)

(assert (= bs!454875 d!667023))

(assert (=> bs!454875 m!2678941))

(assert (=> bs!454875 m!2678941))

(declare-fun m!2679169 () Bool)

(assert (=> bs!454875 m!2679169))

(assert (=> d!666895 d!667023))

(declare-fun d!667027 () Bool)

(declare-fun res!960707 () Bool)

(declare-fun e!1438585 () Bool)

(assert (=> d!667027 (=> res!960707 e!1438585)))

(assert (=> d!667027 (= res!960707 ((_ is Nil!26628) rules!1750))))

(assert (=> d!667027 (= (noDuplicateTag!1544 thiss!16613 rules!1750 Nil!26630) e!1438585)))

(declare-fun b!2248091 () Bool)

(declare-fun e!1438586 () Bool)

(assert (=> b!2248091 (= e!1438585 e!1438586)))

(declare-fun res!960708 () Bool)

(assert (=> b!2248091 (=> (not res!960708) (not e!1438586))))

(declare-fun contains!4568 (List!26724 String!29009) Bool)

(assert (=> b!2248091 (= res!960708 (not (contains!4568 Nil!26630 (tag!4709 (h!32029 rules!1750)))))))

(declare-fun b!2248092 () Bool)

(assert (=> b!2248092 (= e!1438586 (noDuplicateTag!1544 thiss!16613 (t!200468 rules!1750) (Cons!26630 (tag!4709 (h!32029 rules!1750)) Nil!26630)))))

(assert (= (and d!667027 (not res!960707)) b!2248091))

(assert (= (and b!2248091 res!960708) b!2248092))

(declare-fun m!2679179 () Bool)

(assert (=> b!2248091 m!2679179))

(declare-fun m!2679181 () Bool)

(assert (=> b!2248092 m!2679181))

(assert (=> b!2247480 d!667027))

(declare-fun d!667033 () Bool)

(assert (=> d!667033 true))

(declare-fun lambda!85178 () Int)

(declare-fun order!14897 () Int)

(declare-fun order!14899 () Int)

(declare-fun dynLambda!11576 (Int Int) Int)

(declare-fun dynLambda!11577 (Int Int) Int)

(assert (=> d!667033 (< (dynLambda!11576 order!14897 (toChars!5808 (transformation!4219 otherR!12))) (dynLambda!11577 order!14899 lambda!85178))))

(assert (=> d!667033 true))

(assert (=> d!667033 (< (dynLambda!11572 order!14891 (toValue!5949 (transformation!4219 otherR!12))) (dynLambda!11577 order!14899 lambda!85178))))

(declare-fun Forall!1061 (Int) Bool)

(assert (=> d!667033 (= (semiInverseModEq!1702 (toChars!5808 (transformation!4219 otherR!12)) (toValue!5949 (transformation!4219 otherR!12))) (Forall!1061 lambda!85178))))

(declare-fun bs!454881 () Bool)

(assert (= bs!454881 d!667033))

(declare-fun m!2679189 () Bool)

(assert (=> bs!454881 m!2679189))

(assert (=> d!666779 d!667033))

(declare-fun bs!454882 () Bool)

(declare-fun d!667039 () Bool)

(assert (= bs!454882 (and d!667039 d!666869)))

(declare-fun lambda!85179 () Int)

(assert (=> bs!454882 (= lambda!85179 lambda!85157)))

(assert (=> d!667039 true))

(declare-fun lt!835805 () Bool)

(assert (=> d!667039 (= lt!835805 (forall!5465 (t!200468 rules!1750) lambda!85179))))

(declare-fun e!1438593 () Bool)

(assert (=> d!667039 (= lt!835805 e!1438593)))

(declare-fun res!960710 () Bool)

(assert (=> d!667039 (=> res!960710 e!1438593)))

(assert (=> d!667039 (= res!960710 (not ((_ is Cons!26628) (t!200468 rules!1750))))))

(assert (=> d!667039 (= (rulesValidInductive!1469 thiss!16613 (t!200468 rules!1750)) lt!835805)))

(declare-fun b!2248109 () Bool)

(declare-fun e!1438594 () Bool)

(assert (=> b!2248109 (= e!1438593 e!1438594)))

(declare-fun res!960709 () Bool)

(assert (=> b!2248109 (=> (not res!960709) (not e!1438594))))

(assert (=> b!2248109 (= res!960709 (ruleValid!1311 thiss!16613 (h!32029 (t!200468 rules!1750))))))

(declare-fun b!2248110 () Bool)

(assert (=> b!2248110 (= e!1438594 (rulesValidInductive!1469 thiss!16613 (t!200468 (t!200468 rules!1750))))))

(assert (= (and d!667039 (not res!960710)) b!2248109))

(assert (= (and b!2248109 res!960709) b!2248110))

(declare-fun m!2679199 () Bool)

(assert (=> d!667039 m!2679199))

(declare-fun m!2679201 () Bool)

(assert (=> b!2248109 m!2679201))

(declare-fun m!2679203 () Bool)

(assert (=> b!2248110 m!2679203))

(assert (=> b!2247777 d!667039))

(declare-fun d!667043 () Bool)

(declare-fun lt!835806 () Bool)

(assert (=> d!667043 (= lt!835806 (select (content!3546 (t!200468 rules!1750)) otherR!12))))

(declare-fun e!1438596 () Bool)

(assert (=> d!667043 (= lt!835806 e!1438596)))

(declare-fun res!960712 () Bool)

(assert (=> d!667043 (=> (not res!960712) (not e!1438596))))

(assert (=> d!667043 (= res!960712 ((_ is Cons!26628) (t!200468 rules!1750)))))

(assert (=> d!667043 (= (contains!4566 (t!200468 rules!1750) otherR!12) lt!835806)))

(declare-fun b!2248111 () Bool)

(declare-fun e!1438595 () Bool)

(assert (=> b!2248111 (= e!1438596 e!1438595)))

(declare-fun res!960711 () Bool)

(assert (=> b!2248111 (=> res!960711 e!1438595)))

(assert (=> b!2248111 (= res!960711 (= (h!32029 (t!200468 rules!1750)) otherR!12))))

(declare-fun b!2248112 () Bool)

(assert (=> b!2248112 (= e!1438595 (contains!4566 (t!200468 (t!200468 rules!1750)) otherR!12))))

(assert (= (and d!667043 res!960712) b!2248111))

(assert (= (and b!2248111 (not res!960711)) b!2248112))

(declare-fun m!2679205 () Bool)

(assert (=> d!667043 m!2679205))

(declare-fun m!2679207 () Bool)

(assert (=> d!667043 m!2679207))

(declare-fun m!2679209 () Bool)

(assert (=> b!2248112 m!2679209))

(assert (=> b!2247655 d!667043))

(assert (=> b!2247820 d!666979))

(declare-fun d!667045 () Bool)

(declare-fun res!960713 () Bool)

(declare-fun e!1438597 () Bool)

(assert (=> d!667045 (=> (not res!960713) (not e!1438597))))

(assert (=> d!667045 (= res!960713 (validRegex!2454 (regex!4219 (h!32029 rules!1750))))))

(assert (=> d!667045 (= (ruleValid!1311 thiss!16613 (h!32029 rules!1750)) e!1438597)))

(declare-fun b!2248113 () Bool)

(declare-fun res!960714 () Bool)

(assert (=> b!2248113 (=> (not res!960714) (not e!1438597))))

(assert (=> b!2248113 (= res!960714 (not (nullable!1800 (regex!4219 (h!32029 rules!1750)))))))

(declare-fun b!2248114 () Bool)

(assert (=> b!2248114 (= e!1438597 (not (= (tag!4709 (h!32029 rules!1750)) (String!29010 ""))))))

(assert (= (and d!667045 res!960713) b!2248113))

(assert (= (and b!2248113 res!960714) b!2248114))

(declare-fun m!2679211 () Bool)

(assert (=> d!667045 m!2679211))

(declare-fun m!2679213 () Bool)

(assert (=> b!2248113 m!2679213))

(assert (=> b!2247776 d!667045))

(declare-fun d!667047 () Bool)

(assert (=> d!667047 (= (list!10198 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456)))) (list!10203 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456))))))))

(declare-fun bs!454883 () Bool)

(assert (= bs!454883 d!667047))

(declare-fun m!2679215 () Bool)

(assert (=> bs!454883 m!2679215))

(assert (=> b!2247506 d!667047))

(declare-fun d!667049 () Bool)

(declare-fun c!357592 () Bool)

(assert (=> d!667049 (= c!357592 ((_ is Node!8586) (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456))))))))

(declare-fun e!1438609 () Bool)

(assert (=> d!667049 (= (inv!36153 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456))))) e!1438609)))

(declare-fun b!2248129 () Bool)

(declare-fun inv!36157 (Conc!8586) Bool)

(assert (=> b!2248129 (= e!1438609 (inv!36157 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456))))))))

(declare-fun b!2248130 () Bool)

(declare-fun e!1438610 () Bool)

(assert (=> b!2248130 (= e!1438609 e!1438610)))

(declare-fun res!960723 () Bool)

(assert (=> b!2248130 (= res!960723 (not ((_ is Leaf!12681) (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456)))))))))

(assert (=> b!2248130 (=> res!960723 e!1438610)))

(declare-fun b!2248131 () Bool)

(declare-fun inv!36158 (Conc!8586) Bool)

(assert (=> b!2248131 (= e!1438610 (inv!36158 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456))))))))

(assert (= (and d!667049 c!357592) b!2248129))

(assert (= (and d!667049 (not c!357592)) b!2248130))

(assert (= (and b!2248130 (not res!960723)) b!2248131))

(declare-fun m!2679225 () Bool)

(assert (=> b!2248129 m!2679225))

(declare-fun m!2679227 () Bool)

(assert (=> b!2248131 m!2679227))

(assert (=> b!2247823 d!667049))

(declare-fun b!2248134 () Bool)

(declare-fun e!1438611 () Int)

(assert (=> b!2248134 (= e!1438611 (+ 1 (getIndex!240 (t!200468 (t!200468 rules!1750)) otherR!12)))))

(declare-fun b!2248135 () Bool)

(assert (=> b!2248135 (= e!1438611 (- 1))))

(declare-fun b!2248133 () Bool)

(declare-fun e!1438612 () Int)

(assert (=> b!2248133 (= e!1438612 e!1438611)))

(declare-fun c!357593 () Bool)

(assert (=> b!2248133 (= c!357593 (and ((_ is Cons!26628) (t!200468 rules!1750)) (not (= (h!32029 (t!200468 rules!1750)) otherR!12))))))

(declare-fun b!2248132 () Bool)

(assert (=> b!2248132 (= e!1438612 0)))

(declare-fun d!667057 () Bool)

(declare-fun lt!835811 () Int)

(assert (=> d!667057 (>= lt!835811 0)))

(assert (=> d!667057 (= lt!835811 e!1438612)))

(declare-fun c!357594 () Bool)

(assert (=> d!667057 (= c!357594 (and ((_ is Cons!26628) (t!200468 rules!1750)) (= (h!32029 (t!200468 rules!1750)) otherR!12)))))

(assert (=> d!667057 (contains!4566 (t!200468 rules!1750) otherR!12)))

(assert (=> d!667057 (= (getIndex!240 (t!200468 rules!1750) otherR!12) lt!835811)))

(assert (= (and d!667057 c!357594) b!2248132))

(assert (= (and d!667057 (not c!357594)) b!2248133))

(assert (= (and b!2248133 c!357593) b!2248134))

(assert (= (and b!2248133 (not c!357593)) b!2248135))

(declare-fun m!2679229 () Bool)

(assert (=> b!2248134 m!2679229))

(assert (=> d!667057 m!2678867))

(assert (=> b!2247527 d!667057))

(declare-fun d!667059 () Bool)

(declare-fun nullableFct!423 (Regex!6567) Bool)

(assert (=> d!667059 (= (nullable!1800 (regex!4219 r!2363)) (nullableFct!423 (regex!4219 r!2363)))))

(declare-fun bs!454890 () Bool)

(assert (= bs!454890 d!667059))

(declare-fun m!2679233 () Bool)

(assert (=> bs!454890 m!2679233))

(assert (=> b!2247818 d!667059))

(declare-fun d!667065 () Bool)

(assert (=> d!667065 (= (nullable!1800 (regex!4219 otherR!12)) (nullableFct!423 (regex!4219 otherR!12)))))

(declare-fun bs!454891 () Bool)

(assert (= bs!454891 d!667065))

(declare-fun m!2679239 () Bool)

(assert (=> bs!454891 m!2679239))

(assert (=> b!2247533 d!667065))

(declare-fun d!667069 () Bool)

(assert (=> d!667069 (= (list!10198 (_2!15564 lt!835745)) (list!10203 (c!357464 (_2!15564 lt!835745))))))

(declare-fun bs!454892 () Bool)

(assert (= bs!454892 d!667069))

(declare-fun m!2679241 () Bool)

(assert (=> bs!454892 m!2679241))

(assert (=> b!2247651 d!667069))

(declare-fun b!2248152 () Bool)

(declare-fun e!1438625 () Bool)

(declare-fun e!1438623 () Bool)

(assert (=> b!2248152 (= e!1438625 e!1438623)))

(declare-fun res!960728 () Bool)

(declare-fun lt!835822 () tuple2!26110)

(assert (=> b!2248152 (= res!960728 (< (size!20825 (_2!15565 lt!835822)) (size!20825 (list!10198 (seqFromList!2923 input!1722)))))))

(assert (=> b!2248152 (=> (not res!960728) (not e!1438623))))

(declare-fun b!2248153 () Bool)

(assert (=> b!2248153 (= e!1438625 (= (_2!15565 lt!835822) (list!10198 (seqFromList!2923 input!1722))))))

(declare-fun b!2248155 () Bool)

(declare-fun e!1438624 () tuple2!26110)

(assert (=> b!2248155 (= e!1438624 (tuple2!26111 Nil!26627 (list!10198 (seqFromList!2923 input!1722))))))

(declare-fun b!2248156 () Bool)

(assert (=> b!2248156 (= e!1438623 (not (isEmpty!15001 (_1!15565 lt!835822))))))

(declare-fun d!667071 () Bool)

(assert (=> d!667071 e!1438625))

(declare-fun c!357602 () Bool)

(declare-fun size!20831 (List!26721) Int)

(assert (=> d!667071 (= c!357602 (> (size!20831 (_1!15565 lt!835822)) 0))))

(assert (=> d!667071 (= lt!835822 e!1438624)))

(declare-fun c!357601 () Bool)

(declare-datatypes ((tuple2!26114 0))(
  ( (tuple2!26115 (_1!15567 Token!7916) (_2!15567 List!26720)) )
))
(declare-datatypes ((Option!5192 0))(
  ( (None!5191) (Some!5191 (v!30207 tuple2!26114)) )
))
(declare-fun lt!835824 () Option!5192)

(assert (=> d!667071 (= c!357601 ((_ is Some!5191) lt!835824))))

(declare-fun maxPrefix!2106 (LexerInterface!3816 List!26722 List!26720) Option!5192)

(assert (=> d!667071 (= lt!835824 (maxPrefix!2106 thiss!16613 rules!1750 (list!10198 (seqFromList!2923 input!1722))))))

(assert (=> d!667071 (= (lexList!1046 thiss!16613 rules!1750 (list!10198 (seqFromList!2923 input!1722))) lt!835822)))

(declare-fun b!2248154 () Bool)

(declare-fun lt!835823 () tuple2!26110)

(assert (=> b!2248154 (= e!1438624 (tuple2!26111 (Cons!26627 (_1!15567 (v!30207 lt!835824)) (_1!15565 lt!835823)) (_2!15565 lt!835823)))))

(assert (=> b!2248154 (= lt!835823 (lexList!1046 thiss!16613 rules!1750 (_2!15567 (v!30207 lt!835824))))))

(assert (= (and d!667071 c!357601) b!2248154))

(assert (= (and d!667071 (not c!357601)) b!2248155))

(assert (= (and d!667071 c!357602) b!2248152))

(assert (= (and d!667071 (not c!357602)) b!2248153))

(assert (= (and b!2248152 res!960728) b!2248156))

(declare-fun m!2679255 () Bool)

(assert (=> b!2248152 m!2679255))

(assert (=> b!2248152 m!2678849))

(declare-fun m!2679257 () Bool)

(assert (=> b!2248152 m!2679257))

(declare-fun m!2679259 () Bool)

(assert (=> b!2248156 m!2679259))

(declare-fun m!2679261 () Bool)

(assert (=> d!667071 m!2679261))

(assert (=> d!667071 m!2678849))

(declare-fun m!2679263 () Bool)

(assert (=> d!667071 m!2679263))

(declare-fun m!2679265 () Bool)

(assert (=> b!2248154 m!2679265))

(assert (=> b!2247651 d!667071))

(declare-fun d!667083 () Bool)

(assert (=> d!667083 (= (list!10198 (seqFromList!2923 input!1722)) (list!10203 (c!357464 (seqFromList!2923 input!1722))))))

(declare-fun bs!454897 () Bool)

(assert (= bs!454897 d!667083))

(declare-fun m!2679267 () Bool)

(assert (=> bs!454897 m!2679267))

(assert (=> b!2247651 d!667083))

(assert (=> b!2247824 d!667059))

(declare-fun d!667085 () Bool)

(declare-fun charsToBigInt!0 (List!26719 Int) Int)

(assert (=> d!667085 (= (inv!15 (value!134061 (h!32028 tokens!456))) (= (charsToBigInt!0 (text!31116 (value!134061 (h!32028 tokens!456))) 0) (value!134056 (value!134061 (h!32028 tokens!456)))))))

(declare-fun bs!454898 () Bool)

(assert (= bs!454898 d!667085))

(declare-fun m!2679269 () Bool)

(assert (=> bs!454898 m!2679269))

(assert (=> b!2247549 d!667085))

(declare-fun d!667087 () Bool)

(declare-fun e!1438628 () Bool)

(assert (=> d!667087 e!1438628))

(declare-fun res!960731 () Bool)

(assert (=> d!667087 (=> (not res!960731) (not e!1438628))))

(declare-fun lt!835827 () BalanceConc!16900)

(assert (=> d!667087 (= res!960731 (= (list!10198 lt!835827) input!1722))))

(declare-fun fromList!508 (List!26720) Conc!8586)

(assert (=> d!667087 (= lt!835827 (BalanceConc!16901 (fromList!508 input!1722)))))

(assert (=> d!667087 (= (fromListB!1312 input!1722) lt!835827)))

(declare-fun b!2248159 () Bool)

(declare-fun isBalanced!2651 (Conc!8586) Bool)

(assert (=> b!2248159 (= e!1438628 (isBalanced!2651 (fromList!508 input!1722)))))

(assert (= (and d!667087 res!960731) b!2248159))

(declare-fun m!2679271 () Bool)

(assert (=> d!667087 m!2679271))

(declare-fun m!2679273 () Bool)

(assert (=> d!667087 m!2679273))

(assert (=> b!2248159 m!2679273))

(assert (=> b!2248159 m!2679273))

(declare-fun m!2679275 () Bool)

(assert (=> b!2248159 m!2679275))

(assert (=> d!666861 d!667087))

(declare-fun d!667089 () Bool)

(assert (=> d!667089 (= (isEmpty!15005 (originalCharacters!4989 (h!32028 tokens!456))) ((_ is Nil!26626) (originalCharacters!4989 (h!32028 tokens!456))))))

(assert (=> d!666783 d!667089))

(declare-fun d!667091 () Bool)

(declare-fun charsToInt!0 (List!26719) (_ BitVec 32))

(assert (=> d!667091 (= (inv!16 (value!134061 (h!32028 tokens!456))) (= (charsToInt!0 (text!31114 (value!134061 (h!32028 tokens!456)))) (value!134052 (value!134061 (h!32028 tokens!456)))))))

(declare-fun bs!454899 () Bool)

(assert (= bs!454899 d!667091))

(declare-fun m!2679277 () Bool)

(assert (=> bs!454899 m!2679277))

(assert (=> b!2247547 d!667091))

(declare-fun d!667093 () Bool)

(declare-fun c!357606 () Bool)

(assert (=> d!667093 (= c!357606 ((_ is Nil!26628) rules!1750))))

(declare-fun e!1438631 () (InoxSet Rule!8238))

(assert (=> d!667093 (= (content!3546 rules!1750) e!1438631)))

(declare-fun b!2248164 () Bool)

(assert (=> b!2248164 (= e!1438631 ((as const (Array Rule!8238 Bool)) false))))

(declare-fun b!2248165 () Bool)

(assert (=> b!2248165 (= e!1438631 ((_ map or) (store ((as const (Array Rule!8238 Bool)) false) (h!32029 rules!1750) true) (content!3546 (t!200468 rules!1750))))))

(assert (= (and d!667093 c!357606) b!2248164))

(assert (= (and d!667093 (not c!357606)) b!2248165))

(declare-fun m!2679279 () Bool)

(assert (=> b!2248165 m!2679279))

(assert (=> b!2248165 m!2679205))

(assert (=> d!666867 d!667093))

(declare-fun d!667095 () Bool)

(declare-fun lt!835828 () Int)

(assert (=> d!667095 (>= lt!835828 0)))

(declare-fun e!1438632 () Int)

(assert (=> d!667095 (= lt!835828 e!1438632)))

(declare-fun c!357607 () Bool)

(assert (=> d!667095 (= c!357607 ((_ is Nil!26626) (t!200466 otherP!12)))))

(assert (=> d!667095 (= (size!20825 (t!200466 otherP!12)) lt!835828)))

(declare-fun b!2248166 () Bool)

(assert (=> b!2248166 (= e!1438632 0)))

(declare-fun b!2248167 () Bool)

(assert (=> b!2248167 (= e!1438632 (+ 1 (size!20825 (t!200466 (t!200466 otherP!12)))))))

(assert (= (and d!667095 c!357607) b!2248166))

(assert (= (and d!667095 (not c!357607)) b!2248167))

(declare-fun m!2679281 () Bool)

(assert (=> b!2248167 m!2679281))

(assert (=> b!2247831 d!667095))

(declare-fun d!667097 () Bool)

(declare-fun lt!835831 () Int)

(assert (=> d!667097 (= lt!835831 (size!20831 (list!10199 (_1!15564 lt!835745))))))

(declare-fun size!20832 (Conc!8587) Int)

(assert (=> d!667097 (= lt!835831 (size!20832 (c!357466 (_1!15564 lt!835745))))))

(assert (=> d!667097 (= (size!20828 (_1!15564 lt!835745)) lt!835831)))

(declare-fun bs!454900 () Bool)

(assert (= bs!454900 d!667097))

(assert (=> bs!454900 m!2678847))

(assert (=> bs!454900 m!2678847))

(declare-fun m!2679283 () Bool)

(assert (=> bs!454900 m!2679283))

(declare-fun m!2679285 () Bool)

(assert (=> bs!454900 m!2679285))

(assert (=> d!666805 d!667097))

(declare-fun e!1438709 () Bool)

(declare-fun lt!836033 () tuple2!26108)

(declare-fun b!2248330 () Bool)

(declare-fun lexRec!511 (LexerInterface!3816 List!26722 BalanceConc!16900) tuple2!26108)

(assert (=> b!2248330 (= e!1438709 (= (list!10198 (_2!15564 lt!836033)) (list!10198 (_2!15564 (lexRec!511 thiss!16613 rules!1750 (seqFromList!2923 input!1722))))))))

(declare-fun b!2248331 () Bool)

(declare-fun e!1438707 () tuple2!26108)

(assert (=> b!2248331 (= e!1438707 (tuple2!26109 (BalanceConc!16903 Empty!8587) (seqFromList!2923 input!1722)))))

(declare-fun lt!836004 () BalanceConc!16900)

(declare-datatypes ((tuple2!26116 0))(
  ( (tuple2!26117 (_1!15568 Token!7916) (_2!15568 BalanceConc!16900)) )
))
(declare-datatypes ((Option!5193 0))(
  ( (None!5192) (Some!5192 (v!30208 tuple2!26116)) )
))
(declare-fun lt!836030 () Option!5193)

(declare-fun b!2248332 () Bool)

(declare-fun append!674 (BalanceConc!16902 Token!7916) BalanceConc!16902)

(assert (=> b!2248332 (= e!1438707 (lexTailRecV2!721 thiss!16613 rules!1750 (seqFromList!2923 input!1722) lt!836004 (_2!15568 (v!30208 lt!836030)) (append!674 (BalanceConc!16903 Empty!8587) (_1!15568 (v!30208 lt!836030)))))))

(declare-fun lt!836035 () tuple2!26108)

(assert (=> b!2248332 (= lt!836035 (lexRec!511 thiss!16613 rules!1750 (_2!15568 (v!30208 lt!836030))))))

(declare-fun lt!836006 () List!26720)

(assert (=> b!2248332 (= lt!836006 (list!10198 (BalanceConc!16901 Empty!8586)))))

(declare-fun lt!836020 () List!26720)

(assert (=> b!2248332 (= lt!836020 (list!10198 (charsOf!2607 (_1!15568 (v!30208 lt!836030)))))))

(declare-fun lt!836021 () List!26720)

(assert (=> b!2248332 (= lt!836021 (list!10198 (_2!15568 (v!30208 lt!836030))))))

(declare-fun lt!836019 () Unit!39574)

(declare-fun lemmaConcatAssociativity!1334 (List!26720 List!26720 List!26720) Unit!39574)

(assert (=> b!2248332 (= lt!836019 (lemmaConcatAssociativity!1334 lt!836006 lt!836020 lt!836021))))

(assert (=> b!2248332 (= (++!6483 (++!6483 lt!836006 lt!836020) lt!836021) (++!6483 lt!836006 (++!6483 lt!836020 lt!836021)))))

(declare-fun lt!836005 () Unit!39574)

(assert (=> b!2248332 (= lt!836005 lt!836019)))

(declare-fun lt!836025 () Option!5193)

(declare-fun maxPrefixZipperSequence!846 (LexerInterface!3816 List!26722 BalanceConc!16900) Option!5193)

(assert (=> b!2248332 (= lt!836025 (maxPrefixZipperSequence!846 thiss!16613 rules!1750 (seqFromList!2923 input!1722)))))

(declare-fun c!357629 () Bool)

(assert (=> b!2248332 (= c!357629 ((_ is Some!5192) lt!836025))))

(declare-fun e!1438706 () tuple2!26108)

(assert (=> b!2248332 (= (lexRec!511 thiss!16613 rules!1750 (seqFromList!2923 input!1722)) e!1438706)))

(declare-fun lt!836024 () Unit!39574)

(declare-fun Unit!39576 () Unit!39574)

(assert (=> b!2248332 (= lt!836024 Unit!39576)))

(declare-fun lt!836031 () List!26721)

(assert (=> b!2248332 (= lt!836031 (list!10199 (BalanceConc!16903 Empty!8587)))))

(declare-fun lt!836023 () List!26721)

(assert (=> b!2248332 (= lt!836023 (Cons!26627 (_1!15568 (v!30208 lt!836030)) Nil!26627))))

(declare-fun lt!836013 () List!26721)

(assert (=> b!2248332 (= lt!836013 (list!10199 (_1!15564 lt!836035)))))

(declare-fun lt!836010 () Unit!39574)

(declare-fun lemmaConcatAssociativity!1335 (List!26721 List!26721 List!26721) Unit!39574)

(assert (=> b!2248332 (= lt!836010 (lemmaConcatAssociativity!1335 lt!836031 lt!836023 lt!836013))))

(declare-fun ++!6485 (List!26721 List!26721) List!26721)

(assert (=> b!2248332 (= (++!6485 (++!6485 lt!836031 lt!836023) lt!836013) (++!6485 lt!836031 (++!6485 lt!836023 lt!836013)))))

(declare-fun lt!836018 () Unit!39574)

(assert (=> b!2248332 (= lt!836018 lt!836010)))

(declare-fun lt!836008 () List!26720)

(assert (=> b!2248332 (= lt!836008 (++!6483 (list!10198 (BalanceConc!16901 Empty!8586)) (list!10198 (charsOf!2607 (_1!15568 (v!30208 lt!836030))))))))

(declare-fun lt!836027 () List!26720)

(assert (=> b!2248332 (= lt!836027 (list!10198 (_2!15568 (v!30208 lt!836030))))))

(declare-fun lt!836028 () List!26721)

(assert (=> b!2248332 (= lt!836028 (list!10199 (append!674 (BalanceConc!16903 Empty!8587) (_1!15568 (v!30208 lt!836030)))))))

(declare-fun lt!836034 () Unit!39574)

(declare-fun lemmaLexThenLexPrefix!325 (LexerInterface!3816 List!26722 List!26720 List!26720 List!26721 List!26721 List!26720) Unit!39574)

(assert (=> b!2248332 (= lt!836034 (lemmaLexThenLexPrefix!325 thiss!16613 rules!1750 lt!836008 lt!836027 lt!836028 (list!10199 (_1!15564 lt!836035)) (list!10198 (_2!15564 lt!836035))))))

(assert (=> b!2248332 (= (lexList!1046 thiss!16613 rules!1750 lt!836008) (tuple2!26111 lt!836028 Nil!26626))))

(declare-fun lt!836011 () Unit!39574)

(assert (=> b!2248332 (= lt!836011 lt!836034)))

(declare-fun lt!836036 () BalanceConc!16900)

(declare-fun ++!6486 (BalanceConc!16900 BalanceConc!16900) BalanceConc!16900)

(assert (=> b!2248332 (= lt!836036 (++!6486 (BalanceConc!16901 Empty!8586) (charsOf!2607 (_1!15568 (v!30208 lt!836030)))))))

(declare-fun lt!836029 () Option!5193)

(assert (=> b!2248332 (= lt!836029 (maxPrefixZipperSequence!846 thiss!16613 rules!1750 lt!836036))))

(declare-fun c!357628 () Bool)

(assert (=> b!2248332 (= c!357628 ((_ is Some!5192) lt!836029))))

(declare-fun e!1438708 () tuple2!26108)

(assert (=> b!2248332 (= (lexRec!511 thiss!16613 rules!1750 (++!6486 (BalanceConc!16901 Empty!8586) (charsOf!2607 (_1!15568 (v!30208 lt!836030))))) e!1438708)))

(declare-fun lt!836009 () Unit!39574)

(declare-fun Unit!39577 () Unit!39574)

(assert (=> b!2248332 (= lt!836009 Unit!39577)))

(assert (=> b!2248332 (= lt!836004 (++!6486 (BalanceConc!16901 Empty!8586) (charsOf!2607 (_1!15568 (v!30208 lt!836030)))))))

(declare-fun lt!836026 () List!26720)

(assert (=> b!2248332 (= lt!836026 (list!10198 lt!836004))))

(declare-fun lt!836032 () List!26720)

(assert (=> b!2248332 (= lt!836032 (list!10198 (_2!15568 (v!30208 lt!836030))))))

(declare-fun lt!836007 () Unit!39574)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!441 (List!26720 List!26720) Unit!39574)

(assert (=> b!2248332 (= lt!836007 (lemmaConcatTwoListThenFSndIsSuffix!441 lt!836026 lt!836032))))

(declare-fun isSuffix!747 (List!26720 List!26720) Bool)

(assert (=> b!2248332 (isSuffix!747 lt!836032 (++!6483 lt!836026 lt!836032))))

(declare-fun lt!836014 () Unit!39574)

(assert (=> b!2248332 (= lt!836014 lt!836007)))

(declare-fun b!2248333 () Bool)

(assert (=> b!2248333 (= e!1438708 (tuple2!26109 (BalanceConc!16903 Empty!8587) lt!836036))))

(declare-fun b!2248335 () Bool)

(assert (=> b!2248335 (= e!1438706 (tuple2!26109 (BalanceConc!16903 Empty!8587) (seqFromList!2923 input!1722)))))

(declare-fun lt!836016 () tuple2!26108)

(declare-fun b!2248336 () Bool)

(assert (=> b!2248336 (= lt!836016 (lexRec!511 thiss!16613 rules!1750 (_2!15568 (v!30208 lt!836025))))))

(declare-fun prepend!981 (BalanceConc!16902 Token!7916) BalanceConc!16902)

(assert (=> b!2248336 (= e!1438706 (tuple2!26109 (prepend!981 (_1!15564 lt!836016) (_1!15568 (v!30208 lt!836025))) (_2!15564 lt!836016)))))

(declare-fun d!667099 () Bool)

(assert (=> d!667099 e!1438709))

(declare-fun res!960742 () Bool)

(assert (=> d!667099 (=> (not res!960742) (not e!1438709))))

(assert (=> d!667099 (= res!960742 (= (list!10199 (_1!15564 lt!836033)) (list!10199 (_1!15564 (lexRec!511 thiss!16613 rules!1750 (seqFromList!2923 input!1722))))))))

(assert (=> d!667099 (= lt!836033 e!1438707)))

(declare-fun c!357627 () Bool)

(assert (=> d!667099 (= c!357627 ((_ is Some!5192) lt!836030))))

(declare-fun maxPrefixZipperSequenceV2!381 (LexerInterface!3816 List!26722 BalanceConc!16900 BalanceConc!16900) Option!5193)

(assert (=> d!667099 (= lt!836030 (maxPrefixZipperSequenceV2!381 thiss!16613 rules!1750 (seqFromList!2923 input!1722) (seqFromList!2923 input!1722)))))

(declare-fun lt!836017 () Unit!39574)

(declare-fun lt!836012 () Unit!39574)

(assert (=> d!667099 (= lt!836017 lt!836012)))

(declare-fun lt!836015 () List!26720)

(declare-fun lt!836022 () List!26720)

(assert (=> d!667099 (isSuffix!747 lt!836015 (++!6483 lt!836022 lt!836015))))

(assert (=> d!667099 (= lt!836012 (lemmaConcatTwoListThenFSndIsSuffix!441 lt!836022 lt!836015))))

(assert (=> d!667099 (= lt!836015 (list!10198 (seqFromList!2923 input!1722)))))

(assert (=> d!667099 (= lt!836022 (list!10198 (BalanceConc!16901 Empty!8586)))))

(assert (=> d!667099 (= (lexTailRecV2!721 thiss!16613 rules!1750 (seqFromList!2923 input!1722) (BalanceConc!16901 Empty!8586) (seqFromList!2923 input!1722) (BalanceConc!16903 Empty!8587)) lt!836033)))

(declare-fun b!2248334 () Bool)

(declare-fun lt!836003 () tuple2!26108)

(assert (=> b!2248334 (= lt!836003 (lexRec!511 thiss!16613 rules!1750 (_2!15568 (v!30208 lt!836029))))))

(assert (=> b!2248334 (= e!1438708 (tuple2!26109 (prepend!981 (_1!15564 lt!836003) (_1!15568 (v!30208 lt!836029))) (_2!15564 lt!836003)))))

(assert (= (and d!667099 c!357627) b!2248332))

(assert (= (and d!667099 (not c!357627)) b!2248331))

(assert (= (and b!2248332 c!357629) b!2248336))

(assert (= (and b!2248332 (not c!357629)) b!2248335))

(assert (= (and b!2248332 c!357628) b!2248334))

(assert (= (and b!2248332 (not c!357628)) b!2248333))

(assert (= (and d!667099 res!960742) b!2248330))

(declare-fun m!2679433 () Bool)

(assert (=> b!2248330 m!2679433))

(assert (=> b!2248330 m!2678667))

(declare-fun m!2679435 () Bool)

(assert (=> b!2248330 m!2679435))

(declare-fun m!2679437 () Bool)

(assert (=> b!2248330 m!2679437))

(declare-fun m!2679439 () Bool)

(assert (=> b!2248336 m!2679439))

(declare-fun m!2679441 () Bool)

(assert (=> b!2248336 m!2679441))

(declare-fun m!2679443 () Bool)

(assert (=> b!2248332 m!2679443))

(declare-fun m!2679445 () Bool)

(assert (=> b!2248332 m!2679445))

(declare-fun m!2679447 () Bool)

(assert (=> b!2248332 m!2679447))

(declare-fun m!2679449 () Bool)

(assert (=> b!2248332 m!2679449))

(assert (=> b!2248332 m!2679443))

(declare-fun m!2679451 () Bool)

(assert (=> b!2248332 m!2679451))

(declare-fun m!2679453 () Bool)

(assert (=> b!2248332 m!2679453))

(assert (=> b!2248332 m!2679449))

(declare-fun m!2679455 () Bool)

(assert (=> b!2248332 m!2679455))

(declare-fun m!2679457 () Bool)

(assert (=> b!2248332 m!2679457))

(assert (=> b!2248332 m!2679453))

(declare-fun m!2679459 () Bool)

(assert (=> b!2248332 m!2679459))

(assert (=> b!2248332 m!2679457))

(declare-fun m!2679461 () Bool)

(assert (=> b!2248332 m!2679461))

(declare-fun m!2679463 () Bool)

(assert (=> b!2248332 m!2679463))

(assert (=> b!2248332 m!2678667))

(declare-fun m!2679465 () Bool)

(assert (=> b!2248332 m!2679465))

(declare-fun m!2679467 () Bool)

(assert (=> b!2248332 m!2679467))

(declare-fun m!2679469 () Bool)

(assert (=> b!2248332 m!2679469))

(declare-fun m!2679471 () Bool)

(assert (=> b!2248332 m!2679471))

(declare-fun m!2679473 () Bool)

(assert (=> b!2248332 m!2679473))

(assert (=> b!2248332 m!2678667))

(assert (=> b!2248332 m!2679435))

(declare-fun m!2679475 () Bool)

(assert (=> b!2248332 m!2679475))

(declare-fun m!2679477 () Bool)

(assert (=> b!2248332 m!2679477))

(declare-fun m!2679479 () Bool)

(assert (=> b!2248332 m!2679479))

(assert (=> b!2248332 m!2679461))

(declare-fun m!2679481 () Bool)

(assert (=> b!2248332 m!2679481))

(declare-fun m!2679483 () Bool)

(assert (=> b!2248332 m!2679483))

(declare-fun m!2679485 () Bool)

(assert (=> b!2248332 m!2679485))

(declare-fun m!2679487 () Bool)

(assert (=> b!2248332 m!2679487))

(assert (=> b!2248332 m!2679485))

(declare-fun m!2679489 () Bool)

(assert (=> b!2248332 m!2679489))

(assert (=> b!2248332 m!2679467))

(declare-fun m!2679491 () Bool)

(assert (=> b!2248332 m!2679491))

(declare-fun m!2679493 () Bool)

(assert (=> b!2248332 m!2679493))

(assert (=> b!2248332 m!2678667))

(assert (=> b!2248332 m!2679479))

(declare-fun m!2679495 () Bool)

(assert (=> b!2248332 m!2679495))

(declare-fun m!2679497 () Bool)

(assert (=> b!2248332 m!2679497))

(assert (=> b!2248332 m!2679457))

(declare-fun m!2679499 () Bool)

(assert (=> b!2248332 m!2679499))

(declare-fun m!2679501 () Bool)

(assert (=> b!2248332 m!2679501))

(assert (=> b!2248332 m!2679497))

(assert (=> b!2248332 m!2679499))

(declare-fun m!2679503 () Bool)

(assert (=> b!2248332 m!2679503))

(assert (=> b!2248332 m!2679475))

(assert (=> b!2248332 m!2679445))

(assert (=> b!2248332 m!2679479))

(declare-fun m!2679505 () Bool)

(assert (=> b!2248332 m!2679505))

(declare-fun m!2679507 () Bool)

(assert (=> b!2248334 m!2679507))

(declare-fun m!2679509 () Bool)

(assert (=> b!2248334 m!2679509))

(declare-fun m!2679511 () Bool)

(assert (=> d!667099 m!2679511))

(declare-fun m!2679513 () Bool)

(assert (=> d!667099 m!2679513))

(declare-fun m!2679515 () Bool)

(assert (=> d!667099 m!2679515))

(declare-fun m!2679517 () Bool)

(assert (=> d!667099 m!2679517))

(assert (=> d!667099 m!2679511))

(assert (=> d!667099 m!2679497))

(declare-fun m!2679519 () Bool)

(assert (=> d!667099 m!2679519))

(assert (=> d!667099 m!2678667))

(assert (=> d!667099 m!2678849))

(assert (=> d!667099 m!2678667))

(assert (=> d!667099 m!2679435))

(assert (=> d!667099 m!2678667))

(assert (=> d!667099 m!2678667))

(declare-fun m!2679521 () Bool)

(assert (=> d!667099 m!2679521))

(assert (=> d!666805 d!667099))

(declare-fun b!2248355 () Bool)

(declare-fun e!1438730 () Bool)

(declare-fun e!1438724 () Bool)

(assert (=> b!2248355 (= e!1438730 e!1438724)))

(declare-fun c!357634 () Bool)

(assert (=> b!2248355 (= c!357634 ((_ is Star!6567) (regex!4219 r!2363)))))

(declare-fun b!2248356 () Bool)

(declare-fun e!1438728 () Bool)

(declare-fun e!1438725 () Bool)

(assert (=> b!2248356 (= e!1438728 e!1438725)))

(declare-fun res!960753 () Bool)

(assert (=> b!2248356 (=> (not res!960753) (not e!1438725))))

(declare-fun call!135485 () Bool)

(assert (=> b!2248356 (= res!960753 call!135485)))

(declare-fun bm!135479 () Bool)

(declare-fun call!135484 () Bool)

(declare-fun c!357635 () Bool)

(assert (=> bm!135479 (= call!135484 (validRegex!2454 (ite c!357635 (regOne!13647 (regex!4219 r!2363)) (regTwo!13646 (regex!4219 r!2363)))))))

(declare-fun bm!135480 () Bool)

(declare-fun call!135486 () Bool)

(assert (=> bm!135480 (= call!135486 (validRegex!2454 (ite c!357634 (reg!6896 (regex!4219 r!2363)) (ite c!357635 (regTwo!13647 (regex!4219 r!2363)) (regOne!13646 (regex!4219 r!2363))))))))

(declare-fun bm!135481 () Bool)

(assert (=> bm!135481 (= call!135485 call!135486)))

(declare-fun b!2248357 () Bool)

(declare-fun e!1438729 () Bool)

(assert (=> b!2248357 (= e!1438729 call!135485)))

(declare-fun d!667117 () Bool)

(declare-fun res!960756 () Bool)

(assert (=> d!667117 (=> res!960756 e!1438730)))

(assert (=> d!667117 (= res!960756 ((_ is ElementMatch!6567) (regex!4219 r!2363)))))

(assert (=> d!667117 (= (validRegex!2454 (regex!4219 r!2363)) e!1438730)))

(declare-fun b!2248358 () Bool)

(declare-fun e!1438727 () Bool)

(assert (=> b!2248358 (= e!1438724 e!1438727)))

(declare-fun res!960754 () Bool)

(assert (=> b!2248358 (= res!960754 (not (nullable!1800 (reg!6896 (regex!4219 r!2363)))))))

(assert (=> b!2248358 (=> (not res!960754) (not e!1438727))))

(declare-fun b!2248359 () Bool)

(assert (=> b!2248359 (= e!1438725 call!135484)))

(declare-fun b!2248360 () Bool)

(declare-fun res!960757 () Bool)

(assert (=> b!2248360 (=> res!960757 e!1438728)))

(assert (=> b!2248360 (= res!960757 (not ((_ is Concat!10949) (regex!4219 r!2363))))))

(declare-fun e!1438726 () Bool)

(assert (=> b!2248360 (= e!1438726 e!1438728)))

(declare-fun b!2248361 () Bool)

(assert (=> b!2248361 (= e!1438727 call!135486)))

(declare-fun b!2248362 () Bool)

(assert (=> b!2248362 (= e!1438724 e!1438726)))

(assert (=> b!2248362 (= c!357635 ((_ is Union!6567) (regex!4219 r!2363)))))

(declare-fun b!2248363 () Bool)

(declare-fun res!960755 () Bool)

(assert (=> b!2248363 (=> (not res!960755) (not e!1438729))))

(assert (=> b!2248363 (= res!960755 call!135484)))

(assert (=> b!2248363 (= e!1438726 e!1438729)))

(assert (= (and d!667117 (not res!960756)) b!2248355))

(assert (= (and b!2248355 c!357634) b!2248358))

(assert (= (and b!2248355 (not c!357634)) b!2248362))

(assert (= (and b!2248358 res!960754) b!2248361))

(assert (= (and b!2248362 c!357635) b!2248363))

(assert (= (and b!2248362 (not c!357635)) b!2248360))

(assert (= (and b!2248363 res!960755) b!2248357))

(assert (= (and b!2248360 (not res!960757)) b!2248356))

(assert (= (and b!2248356 res!960753) b!2248359))

(assert (= (or b!2248363 b!2248359) bm!135479))

(assert (= (or b!2248357 b!2248356) bm!135481))

(assert (= (or b!2248361 bm!135481) bm!135480))

(declare-fun m!2679523 () Bool)

(assert (=> bm!135479 m!2679523))

(declare-fun m!2679525 () Bool)

(assert (=> bm!135480 m!2679525))

(declare-fun m!2679527 () Bool)

(assert (=> b!2248358 m!2679527))

(assert (=> d!666891 d!667117))

(declare-fun d!667119 () Bool)

(declare-fun charsToBigInt!1 (List!26719) Int)

(assert (=> d!667119 (= (inv!17 (value!134061 (h!32028 tokens!456))) (= (charsToBigInt!1 (text!31115 (value!134061 (h!32028 tokens!456)))) (value!134053 (value!134061 (h!32028 tokens!456)))))))

(declare-fun bs!454907 () Bool)

(assert (= bs!454907 d!667119))

(declare-fun m!2679529 () Bool)

(assert (=> bs!454907 m!2679529))

(assert (=> b!2247545 d!667119))

(declare-fun d!667121 () Bool)

(assert (=> d!667121 (= (isEmpty!15005 (list!10198 (charsOf!2607 (head!4780 tokens!456)))) ((_ is Nil!26626) (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))

(assert (=> bm!135447 d!667121))

(declare-fun b!2248366 () Bool)

(declare-fun e!1438731 () Int)

(assert (=> b!2248366 (= e!1438731 (+ 1 (getIndex!240 (t!200468 (t!200468 rules!1750)) r!2363)))))

(declare-fun b!2248367 () Bool)

(assert (=> b!2248367 (= e!1438731 (- 1))))

(declare-fun b!2248365 () Bool)

(declare-fun e!1438732 () Int)

(assert (=> b!2248365 (= e!1438732 e!1438731)))

(declare-fun c!357636 () Bool)

(assert (=> b!2248365 (= c!357636 (and ((_ is Cons!26628) (t!200468 rules!1750)) (not (= (h!32029 (t!200468 rules!1750)) r!2363))))))

(declare-fun b!2248364 () Bool)

(assert (=> b!2248364 (= e!1438732 0)))

(declare-fun d!667123 () Bool)

(declare-fun lt!836037 () Int)

(assert (=> d!667123 (>= lt!836037 0)))

(assert (=> d!667123 (= lt!836037 e!1438732)))

(declare-fun c!357637 () Bool)

(assert (=> d!667123 (= c!357637 (and ((_ is Cons!26628) (t!200468 rules!1750)) (= (h!32029 (t!200468 rules!1750)) r!2363)))))

(assert (=> d!667123 (contains!4566 (t!200468 rules!1750) r!2363)))

(assert (=> d!667123 (= (getIndex!240 (t!200468 rules!1750) r!2363) lt!836037)))

(assert (= (and d!667123 c!357637) b!2248364))

(assert (= (and d!667123 (not c!357637)) b!2248365))

(assert (= (and b!2248365 c!357636) b!2248366))

(assert (= (and b!2248365 (not c!357636)) b!2248367))

(declare-fun m!2679531 () Bool)

(assert (=> b!2248366 m!2679531))

(assert (=> d!667123 m!2678691))

(assert (=> b!2247523 d!667123))

(declare-fun d!667125 () Bool)

(assert (=> d!667125 (= (head!4782 otherP!12) (h!32027 otherP!12))))

(assert (=> b!2247499 d!667125))

(declare-fun d!667127 () Bool)

(assert (=> d!667127 (= (head!4782 input!1722) (h!32027 input!1722))))

(assert (=> b!2247499 d!667127))

(declare-fun b!2248368 () Bool)

(declare-fun e!1438735 () Bool)

(assert (=> b!2248368 (= e!1438735 (inv!17 (value!134061 (h!32028 (t!200467 tokens!456)))))))

(declare-fun b!2248369 () Bool)

(declare-fun res!960758 () Bool)

(declare-fun e!1438734 () Bool)

(assert (=> b!2248369 (=> res!960758 e!1438734)))

(assert (=> b!2248369 (= res!960758 (not ((_ is IntegerValue!13145) (value!134061 (h!32028 (t!200467 tokens!456))))))))

(assert (=> b!2248369 (= e!1438735 e!1438734)))

(declare-fun d!667129 () Bool)

(declare-fun c!357639 () Bool)

(assert (=> d!667129 (= c!357639 ((_ is IntegerValue!13143) (value!134061 (h!32028 (t!200467 tokens!456)))))))

(declare-fun e!1438733 () Bool)

(assert (=> d!667129 (= (inv!21 (value!134061 (h!32028 (t!200467 tokens!456)))) e!1438733)))

(declare-fun b!2248370 () Bool)

(assert (=> b!2248370 (= e!1438733 (inv!16 (value!134061 (h!32028 (t!200467 tokens!456)))))))

(declare-fun b!2248371 () Bool)

(assert (=> b!2248371 (= e!1438733 e!1438735)))

(declare-fun c!357638 () Bool)

(assert (=> b!2248371 (= c!357638 ((_ is IntegerValue!13144) (value!134061 (h!32028 (t!200467 tokens!456)))))))

(declare-fun b!2248372 () Bool)

(assert (=> b!2248372 (= e!1438734 (inv!15 (value!134061 (h!32028 (t!200467 tokens!456)))))))

(assert (= (and d!667129 c!357639) b!2248370))

(assert (= (and d!667129 (not c!357639)) b!2248371))

(assert (= (and b!2248371 c!357638) b!2248368))

(assert (= (and b!2248371 (not c!357638)) b!2248369))

(assert (= (and b!2248369 (not res!960758)) b!2248372))

(declare-fun m!2679533 () Bool)

(assert (=> b!2248368 m!2679533))

(declare-fun m!2679535 () Bool)

(assert (=> b!2248370 m!2679535))

(declare-fun m!2679537 () Bool)

(assert (=> b!2248372 m!2679537))

(assert (=> b!2247862 d!667129))

(declare-fun b!2248373 () Bool)

(declare-fun e!1438740 () Bool)

(assert (=> b!2248373 (= e!1438740 (not (= (head!4782 (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456))))) (c!357465 (derivativeStep!1462 (regex!4219 r!2363) (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))))))

(declare-fun b!2248374 () Bool)

(declare-fun e!1438742 () Bool)

(assert (=> b!2248374 (= e!1438742 (matchR!2828 (derivativeStep!1462 (derivativeStep!1462 (regex!4219 r!2363) (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456))))) (head!4782 (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456)))))) (tail!3243 (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))))

(declare-fun b!2248375 () Bool)

(declare-fun res!960761 () Bool)

(assert (=> b!2248375 (=> res!960761 e!1438740)))

(assert (=> b!2248375 (= res!960761 (not (isEmpty!15005 (tail!3243 (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456))))))))))

(declare-fun d!667131 () Bool)

(declare-fun e!1438739 () Bool)

(assert (=> d!667131 e!1438739))

(declare-fun c!357641 () Bool)

(assert (=> d!667131 (= c!357641 ((_ is EmptyExpr!6567) (derivativeStep!1462 (regex!4219 r!2363) (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))))

(declare-fun lt!836038 () Bool)

(assert (=> d!667131 (= lt!836038 e!1438742)))

(declare-fun c!357640 () Bool)

(assert (=> d!667131 (= c!357640 (isEmpty!15005 (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456))))))))

(assert (=> d!667131 (validRegex!2454 (derivativeStep!1462 (regex!4219 r!2363) (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456))))))))

(assert (=> d!667131 (= (matchR!2828 (derivativeStep!1462 (regex!4219 r!2363) (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456))))) (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456))))) lt!836038)))

(declare-fun b!2248376 () Bool)

(declare-fun res!960766 () Bool)

(declare-fun e!1438737 () Bool)

(assert (=> b!2248376 (=> res!960766 e!1438737)))

(assert (=> b!2248376 (= res!960766 (not ((_ is ElementMatch!6567) (derivativeStep!1462 (regex!4219 r!2363) (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456))))))))))

(declare-fun e!1438736 () Bool)

(assert (=> b!2248376 (= e!1438736 e!1438737)))

(declare-fun bm!135482 () Bool)

(declare-fun call!135487 () Bool)

(assert (=> bm!135482 (= call!135487 (isEmpty!15005 (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456))))))))

(declare-fun b!2248377 () Bool)

(assert (=> b!2248377 (= e!1438739 e!1438736)))

(declare-fun c!357642 () Bool)

(assert (=> b!2248377 (= c!357642 ((_ is EmptyLang!6567) (derivativeStep!1462 (regex!4219 r!2363) (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))))

(declare-fun b!2248378 () Bool)

(declare-fun res!960762 () Bool)

(assert (=> b!2248378 (=> res!960762 e!1438737)))

(declare-fun e!1438741 () Bool)

(assert (=> b!2248378 (= res!960762 e!1438741)))

(declare-fun res!960765 () Bool)

(assert (=> b!2248378 (=> (not res!960765) (not e!1438741))))

(assert (=> b!2248378 (= res!960765 lt!836038)))

(declare-fun b!2248379 () Bool)

(assert (=> b!2248379 (= e!1438739 (= lt!836038 call!135487))))

(declare-fun b!2248380 () Bool)

(declare-fun res!960763 () Bool)

(assert (=> b!2248380 (=> (not res!960763) (not e!1438741))))

(assert (=> b!2248380 (= res!960763 (not call!135487))))

(declare-fun b!2248381 () Bool)

(declare-fun e!1438738 () Bool)

(assert (=> b!2248381 (= e!1438737 e!1438738)))

(declare-fun res!960759 () Bool)

(assert (=> b!2248381 (=> (not res!960759) (not e!1438738))))

(assert (=> b!2248381 (= res!960759 (not lt!836038))))

(declare-fun b!2248382 () Bool)

(assert (=> b!2248382 (= e!1438742 (nullable!1800 (derivativeStep!1462 (regex!4219 r!2363) (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))))

(declare-fun b!2248383 () Bool)

(assert (=> b!2248383 (= e!1438736 (not lt!836038))))

(declare-fun b!2248384 () Bool)

(assert (=> b!2248384 (= e!1438741 (= (head!4782 (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456))))) (c!357465 (derivativeStep!1462 (regex!4219 r!2363) (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456))))))))))

(declare-fun b!2248385 () Bool)

(assert (=> b!2248385 (= e!1438738 e!1438740)))

(declare-fun res!960764 () Bool)

(assert (=> b!2248385 (=> res!960764 e!1438740)))

(assert (=> b!2248385 (= res!960764 call!135487)))

(declare-fun b!2248386 () Bool)

(declare-fun res!960760 () Bool)

(assert (=> b!2248386 (=> (not res!960760) (not e!1438741))))

(assert (=> b!2248386 (= res!960760 (isEmpty!15005 (tail!3243 (tail!3243 (list!10198 (charsOf!2607 (head!4780 tokens!456)))))))))

(assert (= (and d!667131 c!357640) b!2248382))

(assert (= (and d!667131 (not c!357640)) b!2248374))

(assert (= (and d!667131 c!357641) b!2248379))

(assert (= (and d!667131 (not c!357641)) b!2248377))

(assert (= (and b!2248377 c!357642) b!2248383))

(assert (= (and b!2248377 (not c!357642)) b!2248376))

(assert (= (and b!2248376 (not res!960766)) b!2248378))

(assert (= (and b!2248378 res!960765) b!2248380))

(assert (= (and b!2248380 res!960763) b!2248386))

(assert (= (and b!2248386 res!960760) b!2248384))

(assert (= (and b!2248378 (not res!960762)) b!2248381))

(assert (= (and b!2248381 res!960759) b!2248385))

(assert (= (and b!2248385 (not res!960764)) b!2248375))

(assert (= (and b!2248375 (not res!960761)) b!2248373))

(assert (= (or b!2248379 b!2248380 b!2248385) bm!135482))

(assert (=> b!2248386 m!2678925))

(declare-fun m!2679539 () Bool)

(assert (=> b!2248386 m!2679539))

(assert (=> b!2248386 m!2679539))

(declare-fun m!2679541 () Bool)

(assert (=> b!2248386 m!2679541))

(assert (=> b!2248374 m!2678925))

(declare-fun m!2679543 () Bool)

(assert (=> b!2248374 m!2679543))

(assert (=> b!2248374 m!2678931))

(assert (=> b!2248374 m!2679543))

(declare-fun m!2679545 () Bool)

(assert (=> b!2248374 m!2679545))

(assert (=> b!2248374 m!2678925))

(assert (=> b!2248374 m!2679539))

(assert (=> b!2248374 m!2679545))

(assert (=> b!2248374 m!2679539))

(declare-fun m!2679547 () Bool)

(assert (=> b!2248374 m!2679547))

(assert (=> b!2248373 m!2678925))

(assert (=> b!2248373 m!2679543))

(assert (=> b!2248375 m!2678925))

(assert (=> b!2248375 m!2679539))

(assert (=> b!2248375 m!2679539))

(assert (=> b!2248375 m!2679541))

(assert (=> b!2248382 m!2678931))

(declare-fun m!2679549 () Bool)

(assert (=> b!2248382 m!2679549))

(assert (=> b!2248384 m!2678925))

(assert (=> b!2248384 m!2679543))

(assert (=> bm!135482 m!2678925))

(assert (=> bm!135482 m!2678927))

(assert (=> d!667131 m!2678925))

(assert (=> d!667131 m!2678927))

(assert (=> d!667131 m!2678931))

(declare-fun m!2679551 () Bool)

(assert (=> d!667131 m!2679551))

(assert (=> b!2247810 d!667131))

(declare-fun e!1438753 () Regex!6567)

(declare-fun b!2248408 () Bool)

(declare-fun call!135498 () Regex!6567)

(declare-fun call!135499 () Regex!6567)

(assert (=> b!2248408 (= e!1438753 (Union!6567 (Concat!10949 call!135498 (regTwo!13646 (regex!4219 r!2363))) call!135499))))

(declare-fun b!2248409 () Bool)

(declare-fun e!1438757 () Regex!6567)

(assert (=> b!2248409 (= e!1438757 EmptyLang!6567)))

(declare-fun b!2248410 () Bool)

(declare-fun c!357655 () Bool)

(assert (=> b!2248410 (= c!357655 ((_ is Union!6567) (regex!4219 r!2363)))))

(declare-fun e!1438756 () Regex!6567)

(declare-fun e!1438755 () Regex!6567)

(assert (=> b!2248410 (= e!1438756 e!1438755)))

(declare-fun b!2248411 () Bool)

(assert (=> b!2248411 (= e!1438757 e!1438756)))

(declare-fun c!357656 () Bool)

(assert (=> b!2248411 (= c!357656 ((_ is ElementMatch!6567) (regex!4219 r!2363)))))

(declare-fun bm!135491 () Bool)

(declare-fun call!135497 () Regex!6567)

(assert (=> bm!135491 (= call!135498 call!135497)))

(declare-fun bm!135492 () Bool)

(declare-fun call!135496 () Regex!6567)

(assert (=> bm!135492 (= call!135497 call!135496)))

(declare-fun b!2248412 () Bool)

(declare-fun e!1438754 () Regex!6567)

(assert (=> b!2248412 (= e!1438755 e!1438754)))

(declare-fun c!357657 () Bool)

(assert (=> b!2248412 (= c!357657 ((_ is Star!6567) (regex!4219 r!2363)))))

(declare-fun bm!135493 () Bool)

(assert (=> bm!135493 (= call!135496 (derivativeStep!1462 (ite c!357655 (regTwo!13647 (regex!4219 r!2363)) (ite c!357657 (reg!6896 (regex!4219 r!2363)) (regOne!13646 (regex!4219 r!2363)))) (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456))))))))

(declare-fun b!2248413 () Bool)

(declare-fun c!357654 () Bool)

(assert (=> b!2248413 (= c!357654 (nullable!1800 (regOne!13646 (regex!4219 r!2363))))))

(assert (=> b!2248413 (= e!1438754 e!1438753)))

(declare-fun b!2248414 () Bool)

(assert (=> b!2248414 (= e!1438756 (ite (= (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456)))) (c!357465 (regex!4219 r!2363))) EmptyExpr!6567 EmptyLang!6567))))

(declare-fun bm!135494 () Bool)

(assert (=> bm!135494 (= call!135499 (derivativeStep!1462 (ite c!357655 (regOne!13647 (regex!4219 r!2363)) (regTwo!13646 (regex!4219 r!2363))) (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456))))))))

(declare-fun d!667133 () Bool)

(declare-fun lt!836041 () Regex!6567)

(assert (=> d!667133 (validRegex!2454 lt!836041)))

(assert (=> d!667133 (= lt!836041 e!1438757)))

(declare-fun c!357653 () Bool)

(assert (=> d!667133 (= c!357653 (or ((_ is EmptyExpr!6567) (regex!4219 r!2363)) ((_ is EmptyLang!6567) (regex!4219 r!2363))))))

(assert (=> d!667133 (validRegex!2454 (regex!4219 r!2363))))

(assert (=> d!667133 (= (derivativeStep!1462 (regex!4219 r!2363) (head!4782 (list!10198 (charsOf!2607 (head!4780 tokens!456))))) lt!836041)))

(declare-fun b!2248407 () Bool)

(assert (=> b!2248407 (= e!1438755 (Union!6567 call!135499 call!135496))))

(declare-fun b!2248415 () Bool)

(assert (=> b!2248415 (= e!1438754 (Concat!10949 call!135497 (regex!4219 r!2363)))))

(declare-fun b!2248416 () Bool)

(assert (=> b!2248416 (= e!1438753 (Union!6567 (Concat!10949 call!135498 (regTwo!13646 (regex!4219 r!2363))) EmptyLang!6567))))

(assert (= (and d!667133 c!357653) b!2248409))

(assert (= (and d!667133 (not c!357653)) b!2248411))

(assert (= (and b!2248411 c!357656) b!2248414))

(assert (= (and b!2248411 (not c!357656)) b!2248410))

(assert (= (and b!2248410 c!357655) b!2248407))

(assert (= (and b!2248410 (not c!357655)) b!2248412))

(assert (= (and b!2248412 c!357657) b!2248415))

(assert (= (and b!2248412 (not c!357657)) b!2248413))

(assert (= (and b!2248413 c!357654) b!2248408))

(assert (= (and b!2248413 (not c!357654)) b!2248416))

(assert (= (or b!2248408 b!2248416) bm!135491))

(assert (= (or b!2248415 bm!135491) bm!135492))

(assert (= (or b!2248407 b!2248408) bm!135494))

(assert (= (or b!2248407 bm!135492) bm!135493))

(assert (=> bm!135493 m!2678929))

(declare-fun m!2679553 () Bool)

(assert (=> bm!135493 m!2679553))

(declare-fun m!2679555 () Bool)

(assert (=> b!2248413 m!2679555))

(assert (=> bm!135494 m!2678929))

(declare-fun m!2679557 () Bool)

(assert (=> bm!135494 m!2679557))

(declare-fun m!2679559 () Bool)

(assert (=> d!667133 m!2679559))

(assert (=> d!667133 m!2678939))

(assert (=> b!2247810 d!667133))

(assert (=> b!2247810 d!666979))

(assert (=> b!2247810 d!666957))

(declare-fun d!667135 () Bool)

(declare-fun lt!836042 () Int)

(assert (=> d!667135 (>= lt!836042 0)))

(declare-fun e!1438758 () Int)

(assert (=> d!667135 (= lt!836042 e!1438758)))

(declare-fun c!357658 () Bool)

(assert (=> d!667135 (= c!357658 ((_ is Nil!26626) input!1722))))

(assert (=> d!667135 (= (size!20825 input!1722) lt!836042)))

(declare-fun b!2248417 () Bool)

(assert (=> b!2248417 (= e!1438758 0)))

(declare-fun b!2248418 () Bool)

(assert (=> b!2248418 (= e!1438758 (+ 1 (size!20825 (t!200466 input!1722))))))

(assert (= (and d!667135 c!357658) b!2248417))

(assert (= (and d!667135 (not c!357658)) b!2248418))

(declare-fun m!2679561 () Bool)

(assert (=> b!2248418 m!2679561))

(assert (=> b!2247501 d!667135))

(assert (=> b!2247501 d!666897))

(assert (=> d!666787 d!666867))

(declare-fun bs!454908 () Bool)

(declare-fun d!667137 () Bool)

(assert (= bs!454908 (and d!667137 d!667033)))

(declare-fun lambda!85183 () Int)

(assert (=> bs!454908 (= (and (= (toChars!5808 (transformation!4219 r!2363)) (toChars!5808 (transformation!4219 otherR!12))) (= (toValue!5949 (transformation!4219 r!2363)) (toValue!5949 (transformation!4219 otherR!12)))) (= lambda!85183 lambda!85178))))

(assert (=> d!667137 true))

(assert (=> d!667137 (< (dynLambda!11576 order!14897 (toChars!5808 (transformation!4219 r!2363))) (dynLambda!11577 order!14899 lambda!85183))))

(assert (=> d!667137 true))

(assert (=> d!667137 (< (dynLambda!11572 order!14891 (toValue!5949 (transformation!4219 r!2363))) (dynLambda!11577 order!14899 lambda!85183))))

(assert (=> d!667137 (= (semiInverseModEq!1702 (toChars!5808 (transformation!4219 r!2363)) (toValue!5949 (transformation!4219 r!2363))) (Forall!1061 lambda!85183))))

(declare-fun bs!454909 () Bool)

(assert (= bs!454909 d!667137))

(declare-fun m!2679563 () Bool)

(assert (=> bs!454909 m!2679563))

(assert (=> d!666797 d!667137))

(declare-fun bs!454910 () Bool)

(declare-fun d!667139 () Bool)

(assert (= bs!454910 (and d!667139 d!667033)))

(declare-fun lambda!85184 () Int)

(assert (=> bs!454910 (= (and (= (toChars!5808 (transformation!4219 (h!32029 rules!1750))) (toChars!5808 (transformation!4219 otherR!12))) (= (toValue!5949 (transformation!4219 (h!32029 rules!1750))) (toValue!5949 (transformation!4219 otherR!12)))) (= lambda!85184 lambda!85178))))

(declare-fun bs!454911 () Bool)

(assert (= bs!454911 (and d!667139 d!667137)))

(assert (=> bs!454911 (= (and (= (toChars!5808 (transformation!4219 (h!32029 rules!1750))) (toChars!5808 (transformation!4219 r!2363))) (= (toValue!5949 (transformation!4219 (h!32029 rules!1750))) (toValue!5949 (transformation!4219 r!2363)))) (= lambda!85184 lambda!85183))))

(assert (=> d!667139 true))

(assert (=> d!667139 (< (dynLambda!11576 order!14897 (toChars!5808 (transformation!4219 (h!32029 rules!1750)))) (dynLambda!11577 order!14899 lambda!85184))))

(assert (=> d!667139 true))

(assert (=> d!667139 (< (dynLambda!11572 order!14891 (toValue!5949 (transformation!4219 (h!32029 rules!1750)))) (dynLambda!11577 order!14899 lambda!85184))))

(assert (=> d!667139 (= (semiInverseModEq!1702 (toChars!5808 (transformation!4219 (h!32029 rules!1750))) (toValue!5949 (transformation!4219 (h!32029 rules!1750)))) (Forall!1061 lambda!85184))))

(declare-fun bs!454912 () Bool)

(assert (= bs!454912 d!667139))

(declare-fun m!2679565 () Bool)

(assert (=> bs!454912 m!2679565))

(assert (=> d!666865 d!667139))

(declare-fun bs!454913 () Bool)

(declare-fun d!667141 () Bool)

(assert (= bs!454913 (and d!667141 d!667033)))

(declare-fun lambda!85185 () Int)

(assert (=> bs!454913 (= (and (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toChars!5808 (transformation!4219 otherR!12))) (= (toValue!5949 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toValue!5949 (transformation!4219 otherR!12)))) (= lambda!85185 lambda!85178))))

(declare-fun bs!454914 () Bool)

(assert (= bs!454914 (and d!667141 d!667137)))

(assert (=> bs!454914 (= (and (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toChars!5808 (transformation!4219 r!2363))) (= (toValue!5949 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toValue!5949 (transformation!4219 r!2363)))) (= lambda!85185 lambda!85183))))

(declare-fun bs!454915 () Bool)

(assert (= bs!454915 (and d!667141 d!667139)))

(assert (=> bs!454915 (= (and (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toChars!5808 (transformation!4219 (h!32029 rules!1750)))) (= (toValue!5949 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toValue!5949 (transformation!4219 (h!32029 rules!1750))))) (= lambda!85185 lambda!85184))))

(assert (=> d!667141 true))

(assert (=> d!667141 (< (dynLambda!11576 order!14897 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456))))) (dynLambda!11577 order!14899 lambda!85185))))

(assert (=> d!667141 true))

(assert (=> d!667141 (< (dynLambda!11572 order!14891 (toValue!5949 (transformation!4219 (rule!6519 (h!32028 tokens!456))))) (dynLambda!11577 order!14899 lambda!85185))))

(assert (=> d!667141 (= (semiInverseModEq!1702 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toValue!5949 (transformation!4219 (rule!6519 (h!32028 tokens!456))))) (Forall!1061 lambda!85185))))

(declare-fun bs!454916 () Bool)

(assert (= bs!454916 d!667141))

(declare-fun m!2679567 () Bool)

(assert (=> bs!454916 m!2679567))

(assert (=> d!666881 d!667141))

(declare-fun d!667143 () Bool)

(assert (=> d!667143 (= (list!10198 lt!835761) (list!10203 (c!357464 lt!835761)))))

(declare-fun bs!454917 () Bool)

(assert (= bs!454917 d!667143))

(declare-fun m!2679569 () Bool)

(assert (=> bs!454917 m!2679569))

(assert (=> d!666889 d!667143))

(assert (=> b!2247822 d!666955))

(assert (=> b!2247822 d!666957))

(assert (=> d!666785 d!666775))

(declare-fun b!2248427 () Bool)

(declare-fun e!1438763 () List!26721)

(assert (=> b!2248427 (= e!1438763 Nil!26627)))

(declare-fun b!2248430 () Bool)

(declare-fun e!1438764 () List!26721)

(assert (=> b!2248430 (= e!1438764 (++!6485 (list!10202 (left!20229 (c!357466 (_1!15564 lt!835699)))) (list!10202 (right!20559 (c!357466 (_1!15564 lt!835699))))))))

(declare-fun d!667145 () Bool)

(declare-fun c!357663 () Bool)

(assert (=> d!667145 (= c!357663 ((_ is Empty!8587) (c!357466 (_1!15564 lt!835699))))))

(assert (=> d!667145 (= (list!10202 (c!357466 (_1!15564 lt!835699))) e!1438763)))

(declare-fun b!2248428 () Bool)

(assert (=> b!2248428 (= e!1438763 e!1438764)))

(declare-fun c!357664 () Bool)

(assert (=> b!2248428 (= c!357664 ((_ is Leaf!12682) (c!357466 (_1!15564 lt!835699))))))

(declare-fun b!2248429 () Bool)

(declare-fun list!10207 (IArray!17179) List!26721)

(assert (=> b!2248429 (= e!1438764 (list!10207 (xs!11529 (c!357466 (_1!15564 lt!835699)))))))

(assert (= (and d!667145 c!357663) b!2248427))

(assert (= (and d!667145 (not c!357663)) b!2248428))

(assert (= (and b!2248428 c!357664) b!2248429))

(assert (= (and b!2248428 (not c!357664)) b!2248430))

(declare-fun m!2679571 () Bool)

(assert (=> b!2248430 m!2679571))

(declare-fun m!2679573 () Bool)

(assert (=> b!2248430 m!2679573))

(assert (=> b!2248430 m!2679571))

(assert (=> b!2248430 m!2679573))

(declare-fun m!2679575 () Bool)

(assert (=> b!2248430 m!2679575))

(declare-fun m!2679577 () Bool)

(assert (=> b!2248429 m!2679577))

(assert (=> d!666801 d!667145))

(assert (=> d!666893 d!666891))

(declare-fun d!667147 () Bool)

(assert (=> d!667147 (ruleValid!1311 thiss!16613 r!2363)))

(assert (=> d!667147 true))

(declare-fun _$65!1032 () Unit!39574)

(assert (=> d!667147 (= (choose!13163 thiss!16613 r!2363 rules!1750) _$65!1032)))

(declare-fun bs!454918 () Bool)

(assert (= bs!454918 d!667147))

(assert (=> bs!454918 m!2678625))

(assert (=> d!666893 d!667147))

(assert (=> d!666893 d!666775))

(assert (=> d!666885 d!667121))

(assert (=> d!666885 d!667117))

(declare-fun d!667149 () Bool)

(declare-fun c!357665 () Bool)

(assert (=> d!667149 (= c!357665 ((_ is Empty!8586) (c!357464 (charsOf!2607 (head!4780 tokens!456)))))))

(declare-fun e!1438765 () List!26720)

(assert (=> d!667149 (= (list!10203 (c!357464 (charsOf!2607 (head!4780 tokens!456)))) e!1438765)))

(declare-fun b!2248432 () Bool)

(declare-fun e!1438766 () List!26720)

(assert (=> b!2248432 (= e!1438765 e!1438766)))

(declare-fun c!357666 () Bool)

(assert (=> b!2248432 (= c!357666 ((_ is Leaf!12681) (c!357464 (charsOf!2607 (head!4780 tokens!456)))))))

(declare-fun b!2248433 () Bool)

(assert (=> b!2248433 (= e!1438766 (list!10205 (xs!11528 (c!357464 (charsOf!2607 (head!4780 tokens!456))))))))

(declare-fun b!2248434 () Bool)

(assert (=> b!2248434 (= e!1438766 (++!6483 (list!10203 (left!20228 (c!357464 (charsOf!2607 (head!4780 tokens!456))))) (list!10203 (right!20558 (c!357464 (charsOf!2607 (head!4780 tokens!456)))))))))

(declare-fun b!2248431 () Bool)

(assert (=> b!2248431 (= e!1438765 Nil!26626)))

(assert (= (and d!667149 c!357665) b!2248431))

(assert (= (and d!667149 (not c!357665)) b!2248432))

(assert (= (and b!2248432 c!357666) b!2248433))

(assert (= (and b!2248432 (not c!357666)) b!2248434))

(declare-fun m!2679579 () Bool)

(assert (=> b!2248433 m!2679579))

(declare-fun m!2679581 () Bool)

(assert (=> b!2248434 m!2679581))

(declare-fun m!2679583 () Bool)

(assert (=> b!2248434 m!2679583))

(assert (=> b!2248434 m!2679581))

(assert (=> b!2248434 m!2679583))

(declare-fun m!2679585 () Bool)

(assert (=> b!2248434 m!2679585))

(assert (=> d!666887 d!667149))

(assert (=> d!666775 d!667093))

(declare-fun d!667151 () Bool)

(declare-fun lt!836043 () Int)

(assert (=> d!667151 (>= lt!836043 0)))

(declare-fun e!1438767 () Int)

(assert (=> d!667151 (= lt!836043 e!1438767)))

(declare-fun c!357667 () Bool)

(assert (=> d!667151 (= c!357667 ((_ is Nil!26626) (originalCharacters!4989 (h!32028 tokens!456))))))

(assert (=> d!667151 (= (size!20825 (originalCharacters!4989 (h!32028 tokens!456))) lt!836043)))

(declare-fun b!2248435 () Bool)

(assert (=> b!2248435 (= e!1438767 0)))

(declare-fun b!2248436 () Bool)

(assert (=> b!2248436 (= e!1438767 (+ 1 (size!20825 (t!200466 (originalCharacters!4989 (h!32028 tokens!456))))))))

(assert (= (and d!667151 c!357667) b!2248435))

(assert (= (and d!667151 (not c!357667)) b!2248436))

(declare-fun m!2679587 () Bool)

(assert (=> b!2248436 m!2679587))

(assert (=> b!2247507 d!667151))

(declare-fun d!667153 () Bool)

(declare-fun lt!836044 () Int)

(assert (=> d!667153 (= lt!836044 (size!20825 (list!10198 (_2!15564 lt!835745))))))

(assert (=> d!667153 (= lt!836044 (size!20829 (c!357464 (_2!15564 lt!835745))))))

(assert (=> d!667153 (= (size!20824 (_2!15564 lt!835745)) lt!836044)))

(declare-fun bs!454919 () Bool)

(assert (= bs!454919 d!667153))

(assert (=> bs!454919 m!2678853))

(assert (=> bs!454919 m!2678853))

(declare-fun m!2679589 () Bool)

(assert (=> bs!454919 m!2679589))

(declare-fun m!2679591 () Bool)

(assert (=> bs!454919 m!2679591))

(assert (=> b!2247652 d!667153))

(declare-fun d!667155 () Bool)

(declare-fun lt!836045 () Int)

(assert (=> d!667155 (= lt!836045 (size!20825 (list!10198 (seqFromList!2923 input!1722))))))

(assert (=> d!667155 (= lt!836045 (size!20829 (c!357464 (seqFromList!2923 input!1722))))))

(assert (=> d!667155 (= (size!20824 (seqFromList!2923 input!1722)) lt!836045)))

(declare-fun bs!454920 () Bool)

(assert (= bs!454920 d!667155))

(assert (=> bs!454920 m!2678667))

(assert (=> bs!454920 m!2678849))

(assert (=> bs!454920 m!2678849))

(assert (=> bs!454920 m!2679257))

(declare-fun m!2679593 () Bool)

(assert (=> bs!454920 m!2679593))

(assert (=> b!2247652 d!667155))

(declare-fun d!667157 () Bool)

(declare-fun c!357668 () Bool)

(assert (=> d!667157 (= c!357668 ((_ is Node!8586) (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456))))))))

(declare-fun e!1438768 () Bool)

(assert (=> d!667157 (= (inv!36153 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456))))) e!1438768)))

(declare-fun b!2248437 () Bool)

(assert (=> b!2248437 (= e!1438768 (inv!36157 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456))))))))

(declare-fun b!2248438 () Bool)

(declare-fun e!1438769 () Bool)

(assert (=> b!2248438 (= e!1438768 e!1438769)))

(declare-fun res!960767 () Bool)

(assert (=> b!2248438 (= res!960767 (not ((_ is Leaf!12681) (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456)))))))))

(assert (=> b!2248438 (=> res!960767 e!1438769)))

(declare-fun b!2248439 () Bool)

(assert (=> b!2248439 (= e!1438769 (inv!36158 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456))))))))

(assert (= (and d!667157 c!357668) b!2248437))

(assert (= (and d!667157 (not c!357668)) b!2248438))

(assert (= (and b!2248438 (not res!960767)) b!2248439))

(declare-fun m!2679595 () Bool)

(assert (=> b!2248437 m!2679595))

(declare-fun m!2679597 () Bool)

(assert (=> b!2248439 m!2679597))

(assert (=> b!2247512 d!667157))

(declare-fun bs!454921 () Bool)

(declare-fun d!667159 () Bool)

(assert (= bs!454921 (and d!667159 d!666869)))

(declare-fun lambda!85188 () Int)

(assert (=> bs!454921 (= lambda!85188 lambda!85157)))

(declare-fun bs!454922 () Bool)

(assert (= bs!454922 (and d!667159 d!667039)))

(assert (=> bs!454922 (= lambda!85188 lambda!85179)))

(assert (=> d!667159 true))

(declare-fun lt!836048 () Bool)

(assert (=> d!667159 (= lt!836048 (rulesValidInductive!1469 thiss!16613 rules!1750))))

(assert (=> d!667159 (= lt!836048 (forall!5465 rules!1750 lambda!85188))))

(assert (=> d!667159 (= (rulesValid!1546 thiss!16613 rules!1750) lt!836048)))

(declare-fun bs!454923 () Bool)

(assert (= bs!454923 d!667159))

(assert (=> bs!454923 m!2678649))

(declare-fun m!2679599 () Bool)

(assert (=> bs!454923 m!2679599))

(assert (=> d!666773 d!667159))

(declare-fun d!667161 () Bool)

(assert (=> d!667161 (= (list!10199 (_1!15564 lt!835745)) (list!10202 (c!357466 (_1!15564 lt!835745))))))

(declare-fun bs!454924 () Bool)

(assert (= bs!454924 d!667161))

(declare-fun m!2679601 () Bool)

(assert (=> bs!454924 m!2679601))

(assert (=> b!2247650 d!667161))

(assert (=> b!2247650 d!667071))

(assert (=> b!2247650 d!667083))

(declare-fun d!667163 () Bool)

(declare-fun lt!836049 () Bool)

(assert (=> d!667163 (= lt!836049 (select (content!3546 (t!200468 rules!1750)) r!2363))))

(declare-fun e!1438771 () Bool)

(assert (=> d!667163 (= lt!836049 e!1438771)))

(declare-fun res!960769 () Bool)

(assert (=> d!667163 (=> (not res!960769) (not e!1438771))))

(assert (=> d!667163 (= res!960769 ((_ is Cons!26628) (t!200468 rules!1750)))))

(assert (=> d!667163 (= (contains!4566 (t!200468 rules!1750) r!2363) lt!836049)))

(declare-fun b!2248440 () Bool)

(declare-fun e!1438770 () Bool)

(assert (=> b!2248440 (= e!1438771 e!1438770)))

(declare-fun res!960768 () Bool)

(assert (=> b!2248440 (=> res!960768 e!1438770)))

(assert (=> b!2248440 (= res!960768 (= (h!32029 (t!200468 rules!1750)) r!2363))))

(declare-fun b!2248441 () Bool)

(assert (=> b!2248441 (= e!1438770 (contains!4566 (t!200468 (t!200468 rules!1750)) r!2363))))

(assert (= (and d!667163 res!960769) b!2248440))

(assert (= (and b!2248440 (not res!960768)) b!2248441))

(assert (=> d!667163 m!2679205))

(declare-fun m!2679603 () Bool)

(assert (=> d!667163 m!2679603))

(declare-fun m!2679605 () Bool)

(assert (=> b!2248441 m!2679605))

(assert (=> b!2247486 d!667163))

(declare-fun b!2248442 () Bool)

(declare-fun e!1438778 () Bool)

(declare-fun e!1438772 () Bool)

(assert (=> b!2248442 (= e!1438778 e!1438772)))

(declare-fun c!357669 () Bool)

(assert (=> b!2248442 (= c!357669 ((_ is Star!6567) (regex!4219 otherR!12)))))

(declare-fun b!2248443 () Bool)

(declare-fun e!1438776 () Bool)

(declare-fun e!1438773 () Bool)

(assert (=> b!2248443 (= e!1438776 e!1438773)))

(declare-fun res!960770 () Bool)

(assert (=> b!2248443 (=> (not res!960770) (not e!1438773))))

(declare-fun call!135501 () Bool)

(assert (=> b!2248443 (= res!960770 call!135501)))

(declare-fun bm!135495 () Bool)

(declare-fun call!135500 () Bool)

(declare-fun c!357670 () Bool)

(assert (=> bm!135495 (= call!135500 (validRegex!2454 (ite c!357670 (regOne!13647 (regex!4219 otherR!12)) (regTwo!13646 (regex!4219 otherR!12)))))))

(declare-fun bm!135496 () Bool)

(declare-fun call!135502 () Bool)

(assert (=> bm!135496 (= call!135502 (validRegex!2454 (ite c!357669 (reg!6896 (regex!4219 otherR!12)) (ite c!357670 (regTwo!13647 (regex!4219 otherR!12)) (regOne!13646 (regex!4219 otherR!12))))))))

(declare-fun bm!135497 () Bool)

(assert (=> bm!135497 (= call!135501 call!135502)))

(declare-fun b!2248444 () Bool)

(declare-fun e!1438777 () Bool)

(assert (=> b!2248444 (= e!1438777 call!135501)))

(declare-fun d!667165 () Bool)

(declare-fun res!960773 () Bool)

(assert (=> d!667165 (=> res!960773 e!1438778)))

(assert (=> d!667165 (= res!960773 ((_ is ElementMatch!6567) (regex!4219 otherR!12)))))

(assert (=> d!667165 (= (validRegex!2454 (regex!4219 otherR!12)) e!1438778)))

(declare-fun b!2248445 () Bool)

(declare-fun e!1438775 () Bool)

(assert (=> b!2248445 (= e!1438772 e!1438775)))

(declare-fun res!960771 () Bool)

(assert (=> b!2248445 (= res!960771 (not (nullable!1800 (reg!6896 (regex!4219 otherR!12)))))))

(assert (=> b!2248445 (=> (not res!960771) (not e!1438775))))

(declare-fun b!2248446 () Bool)

(assert (=> b!2248446 (= e!1438773 call!135500)))

(declare-fun b!2248447 () Bool)

(declare-fun res!960774 () Bool)

(assert (=> b!2248447 (=> res!960774 e!1438776)))

(assert (=> b!2248447 (= res!960774 (not ((_ is Concat!10949) (regex!4219 otherR!12))))))

(declare-fun e!1438774 () Bool)

(assert (=> b!2248447 (= e!1438774 e!1438776)))

(declare-fun b!2248448 () Bool)

(assert (=> b!2248448 (= e!1438775 call!135502)))

(declare-fun b!2248449 () Bool)

(assert (=> b!2248449 (= e!1438772 e!1438774)))

(assert (=> b!2248449 (= c!357670 ((_ is Union!6567) (regex!4219 otherR!12)))))

(declare-fun b!2248450 () Bool)

(declare-fun res!960772 () Bool)

(assert (=> b!2248450 (=> (not res!960772) (not e!1438777))))

(assert (=> b!2248450 (= res!960772 call!135500)))

(assert (=> b!2248450 (= e!1438774 e!1438777)))

(assert (= (and d!667165 (not res!960773)) b!2248442))

(assert (= (and b!2248442 c!357669) b!2248445))

(assert (= (and b!2248442 (not c!357669)) b!2248449))

(assert (= (and b!2248445 res!960771) b!2248448))

(assert (= (and b!2248449 c!357670) b!2248450))

(assert (= (and b!2248449 (not c!357670)) b!2248447))

(assert (= (and b!2248450 res!960772) b!2248444))

(assert (= (and b!2248447 (not res!960774)) b!2248443))

(assert (= (and b!2248443 res!960770) b!2248446))

(assert (= (or b!2248450 b!2248446) bm!135495))

(assert (= (or b!2248444 b!2248443) bm!135497))

(assert (= (or b!2248448 bm!135497) bm!135496))

(declare-fun m!2679607 () Bool)

(assert (=> bm!135495 m!2679607))

(declare-fun m!2679609 () Bool)

(assert (=> bm!135496 m!2679609))

(declare-fun m!2679611 () Bool)

(assert (=> b!2248445 m!2679611))

(assert (=> d!666789 d!667165))

(declare-fun d!667167 () Bool)

(declare-fun lt!836052 () Bool)

(assert (=> d!667167 (= lt!836052 (isEmpty!15001 (list!10199 (_1!15564 lt!835745))))))

(declare-fun isEmpty!15008 (Conc!8587) Bool)

(assert (=> d!667167 (= lt!836052 (isEmpty!15008 (c!357466 (_1!15564 lt!835745))))))

(assert (=> d!667167 (= (isEmpty!15006 (_1!15564 lt!835745)) lt!836052)))

(declare-fun bs!454925 () Bool)

(assert (= bs!454925 d!667167))

(assert (=> bs!454925 m!2678847))

(assert (=> bs!454925 m!2678847))

(declare-fun m!2679613 () Bool)

(assert (=> bs!454925 m!2679613))

(declare-fun m!2679615 () Bool)

(assert (=> bs!454925 m!2679615))

(assert (=> b!2247648 d!667167))

(declare-fun d!667169 () Bool)

(assert (=> d!667169 (= (inv!36154 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456)))) (isBalanced!2651 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456))))))))

(declare-fun bs!454926 () Bool)

(assert (= bs!454926 d!667169))

(declare-fun m!2679617 () Bool)

(assert (=> bs!454926 m!2679617))

(assert (=> tb!133119 d!667169))

(declare-fun d!667171 () Bool)

(assert (=> d!667171 (= (inv!36154 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456)))) (isBalanced!2651 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456))))))))

(declare-fun bs!454927 () Bool)

(assert (= bs!454927 d!667171))

(declare-fun m!2679619 () Bool)

(assert (=> bs!454927 m!2679619))

(assert (=> tb!133087 d!667171))

(declare-fun bs!454928 () Bool)

(declare-fun d!667173 () Bool)

(assert (= bs!454928 (and d!667173 d!666973)))

(declare-fun lambda!85189 () Int)

(assert (=> bs!454928 (= (= (toValue!5949 (transformation!4219 otherR!12)) (toValue!5949 (transformation!4219 r!2363))) (= lambda!85189 lambda!85166))))

(declare-fun bs!454929 () Bool)

(assert (= bs!454929 (and d!667173 d!666977)))

(assert (=> bs!454929 (= (= (toValue!5949 (transformation!4219 otherR!12)) (toValue!5949 (transformation!4219 (h!32029 rules!1750)))) (= lambda!85189 lambda!85169))))

(declare-fun bs!454930 () Bool)

(assert (= bs!454930 (and d!667173 d!666993)))

(assert (=> bs!454930 (= (= (toValue!5949 (transformation!4219 otherR!12)) (toValue!5949 (transformation!4219 (rule!6519 (h!32028 tokens!456))))) (= lambda!85189 lambda!85171))))

(assert (=> d!667173 true))

(assert (=> d!667173 (< (dynLambda!11572 order!14891 (toValue!5949 (transformation!4219 otherR!12))) (dynLambda!11573 order!14893 lambda!85189))))

(assert (=> d!667173 (= (equivClasses!1621 (toChars!5808 (transformation!4219 otherR!12)) (toValue!5949 (transformation!4219 otherR!12))) (Forall2!677 lambda!85189))))

(declare-fun bs!454931 () Bool)

(assert (= bs!454931 d!667173))

(declare-fun m!2679621 () Bool)

(assert (=> bs!454931 m!2679621))

(assert (=> b!2247489 d!667173))

(assert (=> d!666791 d!666789))

(declare-fun d!667175 () Bool)

(assert (=> d!667175 (ruleValid!1311 thiss!16613 otherR!12)))

(assert (=> d!667175 true))

(declare-fun _$65!1033 () Unit!39574)

(assert (=> d!667175 (= (choose!13163 thiss!16613 otherR!12 rules!1750) _$65!1033)))

(declare-fun bs!454932 () Bool)

(assert (= bs!454932 d!667175))

(assert (=> bs!454932 m!2678645))

(assert (=> d!666791 d!667175))

(assert (=> d!666791 d!666867))

(declare-fun e!1438779 () Bool)

(assert (=> b!2247863 (= tp!709897 e!1438779)))

(declare-fun b!2248452 () Bool)

(declare-fun tp!710071 () Bool)

(declare-fun tp!710072 () Bool)

(assert (=> b!2248452 (= e!1438779 (and tp!710071 tp!710072))))

(declare-fun b!2248451 () Bool)

(assert (=> b!2248451 (= e!1438779 tp_is_empty!10355)))

(declare-fun b!2248453 () Bool)

(declare-fun tp!710068 () Bool)

(assert (=> b!2248453 (= e!1438779 tp!710068)))

(declare-fun b!2248454 () Bool)

(declare-fun tp!710070 () Bool)

(declare-fun tp!710069 () Bool)

(assert (=> b!2248454 (= e!1438779 (and tp!710070 tp!710069))))

(assert (= (and b!2247863 ((_ is ElementMatch!6567) (regex!4219 (rule!6519 (h!32028 (t!200467 tokens!456)))))) b!2248451))

(assert (= (and b!2247863 ((_ is Concat!10949) (regex!4219 (rule!6519 (h!32028 (t!200467 tokens!456)))))) b!2248452))

(assert (= (and b!2247863 ((_ is Star!6567) (regex!4219 (rule!6519 (h!32028 (t!200467 tokens!456)))))) b!2248453))

(assert (= (and b!2247863 ((_ is Union!6567) (regex!4219 (rule!6519 (h!32028 (t!200467 tokens!456)))))) b!2248454))

(declare-fun e!1438780 () Bool)

(assert (=> b!2247845 (= tp!709879 e!1438780)))

(declare-fun b!2248456 () Bool)

(declare-fun tp!710076 () Bool)

(declare-fun tp!710077 () Bool)

(assert (=> b!2248456 (= e!1438780 (and tp!710076 tp!710077))))

(declare-fun b!2248455 () Bool)

(assert (=> b!2248455 (= e!1438780 tp_is_empty!10355)))

(declare-fun b!2248457 () Bool)

(declare-fun tp!710073 () Bool)

(assert (=> b!2248457 (= e!1438780 tp!710073)))

(declare-fun b!2248458 () Bool)

(declare-fun tp!710075 () Bool)

(declare-fun tp!710074 () Bool)

(assert (=> b!2248458 (= e!1438780 (and tp!710075 tp!710074))))

(assert (= (and b!2247845 ((_ is ElementMatch!6567) (regOne!13647 (regex!4219 otherR!12)))) b!2248455))

(assert (= (and b!2247845 ((_ is Concat!10949) (regOne!13647 (regex!4219 otherR!12)))) b!2248456))

(assert (= (and b!2247845 ((_ is Star!6567) (regOne!13647 (regex!4219 otherR!12)))) b!2248457))

(assert (= (and b!2247845 ((_ is Union!6567) (regOne!13647 (regex!4219 otherR!12)))) b!2248458))

(declare-fun e!1438781 () Bool)

(assert (=> b!2247845 (= tp!709878 e!1438781)))

(declare-fun b!2248460 () Bool)

(declare-fun tp!710081 () Bool)

(declare-fun tp!710082 () Bool)

(assert (=> b!2248460 (= e!1438781 (and tp!710081 tp!710082))))

(declare-fun b!2248459 () Bool)

(assert (=> b!2248459 (= e!1438781 tp_is_empty!10355)))

(declare-fun b!2248461 () Bool)

(declare-fun tp!710078 () Bool)

(assert (=> b!2248461 (= e!1438781 tp!710078)))

(declare-fun b!2248462 () Bool)

(declare-fun tp!710080 () Bool)

(declare-fun tp!710079 () Bool)

(assert (=> b!2248462 (= e!1438781 (and tp!710080 tp!710079))))

(assert (= (and b!2247845 ((_ is ElementMatch!6567) (regTwo!13647 (regex!4219 otherR!12)))) b!2248459))

(assert (= (and b!2247845 ((_ is Concat!10949) (regTwo!13647 (regex!4219 otherR!12)))) b!2248460))

(assert (= (and b!2247845 ((_ is Star!6567) (regTwo!13647 (regex!4219 otherR!12)))) b!2248461))

(assert (= (and b!2247845 ((_ is Union!6567) (regTwo!13647 (regex!4219 otherR!12)))) b!2248462))

(declare-fun b!2248463 () Bool)

(declare-fun e!1438782 () Bool)

(declare-fun tp!710083 () Bool)

(assert (=> b!2248463 (= e!1438782 (and tp_is_empty!10355 tp!710083))))

(assert (=> b!2247862 (= tp!709896 e!1438782)))

(assert (= (and b!2247862 ((_ is Cons!26626) (originalCharacters!4989 (h!32028 (t!200467 tokens!456))))) b!2248463))

(declare-fun e!1438783 () Bool)

(assert (=> b!2247879 (= tp!709914 e!1438783)))

(declare-fun b!2248465 () Bool)

(declare-fun tp!710087 () Bool)

(declare-fun tp!710088 () Bool)

(assert (=> b!2248465 (= e!1438783 (and tp!710087 tp!710088))))

(declare-fun b!2248464 () Bool)

(assert (=> b!2248464 (= e!1438783 tp_is_empty!10355)))

(declare-fun b!2248466 () Bool)

(declare-fun tp!710084 () Bool)

(assert (=> b!2248466 (= e!1438783 tp!710084)))

(declare-fun b!2248467 () Bool)

(declare-fun tp!710086 () Bool)

(declare-fun tp!710085 () Bool)

(assert (=> b!2248467 (= e!1438783 (and tp!710086 tp!710085))))

(assert (= (and b!2247879 ((_ is ElementMatch!6567) (regex!4219 (h!32029 (t!200468 rules!1750))))) b!2248464))

(assert (= (and b!2247879 ((_ is Concat!10949) (regex!4219 (h!32029 (t!200468 rules!1750))))) b!2248465))

(assert (= (and b!2247879 ((_ is Star!6567) (regex!4219 (h!32029 (t!200468 rules!1750))))) b!2248466))

(assert (= (and b!2247879 ((_ is Union!6567) (regex!4219 (h!32029 (t!200468 rules!1750))))) b!2248467))

(declare-fun b!2248470 () Bool)

(declare-fun b_free!65765 () Bool)

(declare-fun b_next!66469 () Bool)

(assert (=> b!2248470 (= b_free!65765 (not b_next!66469))))

(declare-fun tp!710090 () Bool)

(declare-fun b_and!175993 () Bool)

(assert (=> b!2248470 (= tp!710090 b_and!175993)))

(declare-fun b_free!65767 () Bool)

(declare-fun b_next!66471 () Bool)

(assert (=> b!2248470 (= b_free!65767 (not b_next!66471))))

(declare-fun t!200562 () Bool)

(declare-fun tb!133171 () Bool)

(assert (=> (and b!2248470 (= (toChars!5808 (transformation!4219 (h!32029 (t!200468 (t!200468 rules!1750))))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456))))) t!200562) tb!133171))

(declare-fun result!162340 () Bool)

(assert (= result!162340 result!162234))

(assert (=> b!2247506 t!200562))

(declare-fun t!200564 () Bool)

(declare-fun tb!133173 () Bool)

(assert (=> (and b!2248470 (= (toChars!5808 (transformation!4219 (h!32029 (t!200468 (t!200468 rules!1750))))) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456))))) t!200564) tb!133173))

(declare-fun result!162342 () Bool)

(assert (= result!162342 result!162278))

(assert (=> d!666889 t!200564))

(declare-fun t!200566 () Bool)

(declare-fun tb!133175 () Bool)

(assert (=> (and b!2248470 (= (toChars!5808 (transformation!4219 (h!32029 (t!200468 (t!200468 rules!1750))))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456)))))) t!200566) tb!133175))

(declare-fun result!162344 () Bool)

(assert (= result!162344 result!162314))

(assert (=> b!2248034 t!200566))

(declare-fun b_and!175995 () Bool)

(declare-fun tp!710092 () Bool)

(assert (=> b!2248470 (= tp!710092 (and (=> t!200562 result!162340) (=> t!200564 result!162342) (=> t!200566 result!162344) b_and!175995))))

(declare-fun e!1438784 () Bool)

(assert (=> b!2248470 (= e!1438784 (and tp!710090 tp!710092))))

(declare-fun b!2248469 () Bool)

(declare-fun tp!710089 () Bool)

(declare-fun e!1438786 () Bool)

(assert (=> b!2248469 (= e!1438786 (and tp!710089 (inv!36146 (tag!4709 (h!32029 (t!200468 (t!200468 rules!1750))))) (inv!36149 (transformation!4219 (h!32029 (t!200468 (t!200468 rules!1750))))) e!1438784))))

(declare-fun b!2248468 () Bool)

(declare-fun e!1438787 () Bool)

(declare-fun tp!710091 () Bool)

(assert (=> b!2248468 (= e!1438787 (and e!1438786 tp!710091))))

(assert (=> b!2247878 (= tp!709916 e!1438787)))

(assert (= b!2248469 b!2248470))

(assert (= b!2248468 b!2248469))

(assert (= (and b!2247878 ((_ is Cons!26628) (t!200468 (t!200468 rules!1750)))) b!2248468))

(declare-fun m!2679623 () Bool)

(assert (=> b!2248469 m!2679623))

(declare-fun m!2679625 () Bool)

(assert (=> b!2248469 m!2679625))

(declare-fun e!1438788 () Bool)

(assert (=> b!2247844 (= tp!709877 e!1438788)))

(declare-fun b!2248472 () Bool)

(declare-fun tp!710096 () Bool)

(declare-fun tp!710097 () Bool)

(assert (=> b!2248472 (= e!1438788 (and tp!710096 tp!710097))))

(declare-fun b!2248471 () Bool)

(assert (=> b!2248471 (= e!1438788 tp_is_empty!10355)))

(declare-fun b!2248473 () Bool)

(declare-fun tp!710093 () Bool)

(assert (=> b!2248473 (= e!1438788 tp!710093)))

(declare-fun b!2248474 () Bool)

(declare-fun tp!710095 () Bool)

(declare-fun tp!710094 () Bool)

(assert (=> b!2248474 (= e!1438788 (and tp!710095 tp!710094))))

(assert (= (and b!2247844 ((_ is ElementMatch!6567) (reg!6896 (regex!4219 otherR!12)))) b!2248471))

(assert (= (and b!2247844 ((_ is Concat!10949) (reg!6896 (regex!4219 otherR!12)))) b!2248472))

(assert (= (and b!2247844 ((_ is Star!6567) (reg!6896 (regex!4219 otherR!12)))) b!2248473))

(assert (= (and b!2247844 ((_ is Union!6567) (reg!6896 (regex!4219 otherR!12)))) b!2248474))

(declare-fun b!2248478 () Bool)

(declare-fun b_free!65769 () Bool)

(declare-fun b_next!66473 () Bool)

(assert (=> b!2248478 (= b_free!65769 (not b_next!66473))))

(declare-fun tp!710102 () Bool)

(declare-fun b_and!175997 () Bool)

(assert (=> b!2248478 (= tp!710102 b_and!175997)))

(declare-fun b_free!65771 () Bool)

(declare-fun b_next!66475 () Bool)

(assert (=> b!2248478 (= b_free!65771 (not b_next!66475))))

(declare-fun t!200568 () Bool)

(declare-fun tb!133177 () Bool)

(assert (=> (and b!2248478 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 (t!200467 tokens!456)))))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456))))) t!200568) tb!133177))

(declare-fun result!162346 () Bool)

(assert (= result!162346 result!162234))

(assert (=> b!2247506 t!200568))

(declare-fun t!200570 () Bool)

(declare-fun tb!133179 () Bool)

(assert (=> (and b!2248478 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 (t!200467 tokens!456)))))) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456))))) t!200570) tb!133179))

(declare-fun result!162348 () Bool)

(assert (= result!162348 result!162278))

(assert (=> d!666889 t!200570))

(declare-fun t!200572 () Bool)

(declare-fun tb!133181 () Bool)

(assert (=> (and b!2248478 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 (t!200467 tokens!456)))))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456)))))) t!200572) tb!133181))

(declare-fun result!162350 () Bool)

(assert (= result!162350 result!162314))

(assert (=> b!2248034 t!200572))

(declare-fun tp!710098 () Bool)

(declare-fun b_and!175999 () Bool)

(assert (=> b!2248478 (= tp!710098 (and (=> t!200568 result!162346) (=> t!200570 result!162348) (=> t!200572 result!162350) b_and!175999))))

(declare-fun tp!710100 () Bool)

(declare-fun b!2248477 () Bool)

(declare-fun e!1438789 () Bool)

(declare-fun e!1438792 () Bool)

(assert (=> b!2248477 (= e!1438789 (and tp!710100 (inv!36146 (tag!4709 (rule!6519 (h!32028 (t!200467 (t!200467 tokens!456)))))) (inv!36149 (transformation!4219 (rule!6519 (h!32028 (t!200467 (t!200467 tokens!456)))))) e!1438792))))

(declare-fun e!1438791 () Bool)

(declare-fun e!1438794 () Bool)

(declare-fun b!2248475 () Bool)

(declare-fun tp!710101 () Bool)

(assert (=> b!2248475 (= e!1438791 (and (inv!36150 (h!32028 (t!200467 (t!200467 tokens!456)))) e!1438794 tp!710101))))

(assert (=> b!2247861 (= tp!709898 e!1438791)))

(declare-fun tp!710099 () Bool)

(declare-fun b!2248476 () Bool)

(assert (=> b!2248476 (= e!1438794 (and (inv!21 (value!134061 (h!32028 (t!200467 (t!200467 tokens!456))))) e!1438789 tp!710099))))

(assert (=> b!2248478 (= e!1438792 (and tp!710102 tp!710098))))

(assert (= b!2248477 b!2248478))

(assert (= b!2248476 b!2248477))

(assert (= b!2248475 b!2248476))

(assert (= (and b!2247861 ((_ is Cons!26627) (t!200467 (t!200467 tokens!456)))) b!2248475))

(declare-fun m!2679627 () Bool)

(assert (=> b!2248477 m!2679627))

(declare-fun m!2679629 () Bool)

(assert (=> b!2248477 m!2679629))

(declare-fun m!2679631 () Bool)

(assert (=> b!2248475 m!2679631))

(declare-fun m!2679633 () Bool)

(assert (=> b!2248476 m!2679633))

(declare-fun e!1438795 () Bool)

(assert (=> b!2247843 (= tp!709880 e!1438795)))

(declare-fun b!2248480 () Bool)

(declare-fun tp!710106 () Bool)

(declare-fun tp!710107 () Bool)

(assert (=> b!2248480 (= e!1438795 (and tp!710106 tp!710107))))

(declare-fun b!2248479 () Bool)

(assert (=> b!2248479 (= e!1438795 tp_is_empty!10355)))

(declare-fun b!2248481 () Bool)

(declare-fun tp!710103 () Bool)

(assert (=> b!2248481 (= e!1438795 tp!710103)))

(declare-fun b!2248482 () Bool)

(declare-fun tp!710105 () Bool)

(declare-fun tp!710104 () Bool)

(assert (=> b!2248482 (= e!1438795 (and tp!710105 tp!710104))))

(assert (= (and b!2247843 ((_ is ElementMatch!6567) (regOne!13646 (regex!4219 otherR!12)))) b!2248479))

(assert (= (and b!2247843 ((_ is Concat!10949) (regOne!13646 (regex!4219 otherR!12)))) b!2248480))

(assert (= (and b!2247843 ((_ is Star!6567) (regOne!13646 (regex!4219 otherR!12)))) b!2248481))

(assert (= (and b!2247843 ((_ is Union!6567) (regOne!13646 (regex!4219 otherR!12)))) b!2248482))

(declare-fun e!1438796 () Bool)

(assert (=> b!2247843 (= tp!709881 e!1438796)))

(declare-fun b!2248484 () Bool)

(declare-fun tp!710111 () Bool)

(declare-fun tp!710112 () Bool)

(assert (=> b!2248484 (= e!1438796 (and tp!710111 tp!710112))))

(declare-fun b!2248483 () Bool)

(assert (=> b!2248483 (= e!1438796 tp_is_empty!10355)))

(declare-fun b!2248485 () Bool)

(declare-fun tp!710108 () Bool)

(assert (=> b!2248485 (= e!1438796 tp!710108)))

(declare-fun b!2248486 () Bool)

(declare-fun tp!710110 () Bool)

(declare-fun tp!710109 () Bool)

(assert (=> b!2248486 (= e!1438796 (and tp!710110 tp!710109))))

(assert (= (and b!2247843 ((_ is ElementMatch!6567) (regTwo!13646 (regex!4219 otherR!12)))) b!2248483))

(assert (= (and b!2247843 ((_ is Concat!10949) (regTwo!13646 (regex!4219 otherR!12)))) b!2248484))

(assert (= (and b!2247843 ((_ is Star!6567) (regTwo!13646 (regex!4219 otherR!12)))) b!2248485))

(assert (= (and b!2247843 ((_ is Union!6567) (regTwo!13646 (regex!4219 otherR!12)))) b!2248486))

(declare-fun e!1438797 () Bool)

(assert (=> b!2247884 (= tp!709920 e!1438797)))

(declare-fun b!2248488 () Bool)

(declare-fun tp!710116 () Bool)

(declare-fun tp!710117 () Bool)

(assert (=> b!2248488 (= e!1438797 (and tp!710116 tp!710117))))

(declare-fun b!2248487 () Bool)

(assert (=> b!2248487 (= e!1438797 tp_is_empty!10355)))

(declare-fun b!2248489 () Bool)

(declare-fun tp!710113 () Bool)

(assert (=> b!2248489 (= e!1438797 tp!710113)))

(declare-fun b!2248490 () Bool)

(declare-fun tp!710115 () Bool)

(declare-fun tp!710114 () Bool)

(assert (=> b!2248490 (= e!1438797 (and tp!710115 tp!710114))))

(assert (= (and b!2247884 ((_ is ElementMatch!6567) (regOne!13647 (regex!4219 (h!32029 rules!1750))))) b!2248487))

(assert (= (and b!2247884 ((_ is Concat!10949) (regOne!13647 (regex!4219 (h!32029 rules!1750))))) b!2248488))

(assert (= (and b!2247884 ((_ is Star!6567) (regOne!13647 (regex!4219 (h!32029 rules!1750))))) b!2248489))

(assert (= (and b!2247884 ((_ is Union!6567) (regOne!13647 (regex!4219 (h!32029 rules!1750))))) b!2248490))

(declare-fun e!1438798 () Bool)

(assert (=> b!2247884 (= tp!709919 e!1438798)))

(declare-fun b!2248492 () Bool)

(declare-fun tp!710121 () Bool)

(declare-fun tp!710122 () Bool)

(assert (=> b!2248492 (= e!1438798 (and tp!710121 tp!710122))))

(declare-fun b!2248491 () Bool)

(assert (=> b!2248491 (= e!1438798 tp_is_empty!10355)))

(declare-fun b!2248493 () Bool)

(declare-fun tp!710118 () Bool)

(assert (=> b!2248493 (= e!1438798 tp!710118)))

(declare-fun b!2248494 () Bool)

(declare-fun tp!710120 () Bool)

(declare-fun tp!710119 () Bool)

(assert (=> b!2248494 (= e!1438798 (and tp!710120 tp!710119))))

(assert (= (and b!2247884 ((_ is ElementMatch!6567) (regTwo!13647 (regex!4219 (h!32029 rules!1750))))) b!2248491))

(assert (= (and b!2247884 ((_ is Concat!10949) (regTwo!13647 (regex!4219 (h!32029 rules!1750))))) b!2248492))

(assert (= (and b!2247884 ((_ is Star!6567) (regTwo!13647 (regex!4219 (h!32029 rules!1750))))) b!2248493))

(assert (= (and b!2247884 ((_ is Union!6567) (regTwo!13647 (regex!4219 (h!32029 rules!1750))))) b!2248494))

(declare-fun e!1438799 () Bool)

(assert (=> b!2247883 (= tp!709918 e!1438799)))

(declare-fun b!2248496 () Bool)

(declare-fun tp!710126 () Bool)

(declare-fun tp!710127 () Bool)

(assert (=> b!2248496 (= e!1438799 (and tp!710126 tp!710127))))

(declare-fun b!2248495 () Bool)

(assert (=> b!2248495 (= e!1438799 tp_is_empty!10355)))

(declare-fun b!2248497 () Bool)

(declare-fun tp!710123 () Bool)

(assert (=> b!2248497 (= e!1438799 tp!710123)))

(declare-fun b!2248498 () Bool)

(declare-fun tp!710125 () Bool)

(declare-fun tp!710124 () Bool)

(assert (=> b!2248498 (= e!1438799 (and tp!710125 tp!710124))))

(assert (= (and b!2247883 ((_ is ElementMatch!6567) (reg!6896 (regex!4219 (h!32029 rules!1750))))) b!2248495))

(assert (= (and b!2247883 ((_ is Concat!10949) (reg!6896 (regex!4219 (h!32029 rules!1750))))) b!2248496))

(assert (= (and b!2247883 ((_ is Star!6567) (reg!6896 (regex!4219 (h!32029 rules!1750))))) b!2248497))

(assert (= (and b!2247883 ((_ is Union!6567) (reg!6896 (regex!4219 (h!32029 rules!1750))))) b!2248498))

(declare-fun e!1438800 () Bool)

(assert (=> b!2247882 (= tp!709921 e!1438800)))

(declare-fun b!2248500 () Bool)

(declare-fun tp!710131 () Bool)

(declare-fun tp!710132 () Bool)

(assert (=> b!2248500 (= e!1438800 (and tp!710131 tp!710132))))

(declare-fun b!2248499 () Bool)

(assert (=> b!2248499 (= e!1438800 tp_is_empty!10355)))

(declare-fun b!2248501 () Bool)

(declare-fun tp!710128 () Bool)

(assert (=> b!2248501 (= e!1438800 tp!710128)))

(declare-fun b!2248502 () Bool)

(declare-fun tp!710130 () Bool)

(declare-fun tp!710129 () Bool)

(assert (=> b!2248502 (= e!1438800 (and tp!710130 tp!710129))))

(assert (= (and b!2247882 ((_ is ElementMatch!6567) (regOne!13646 (regex!4219 (h!32029 rules!1750))))) b!2248499))

(assert (= (and b!2247882 ((_ is Concat!10949) (regOne!13646 (regex!4219 (h!32029 rules!1750))))) b!2248500))

(assert (= (and b!2247882 ((_ is Star!6567) (regOne!13646 (regex!4219 (h!32029 rules!1750))))) b!2248501))

(assert (= (and b!2247882 ((_ is Union!6567) (regOne!13646 (regex!4219 (h!32029 rules!1750))))) b!2248502))

(declare-fun e!1438801 () Bool)

(assert (=> b!2247882 (= tp!709922 e!1438801)))

(declare-fun b!2248504 () Bool)

(declare-fun tp!710136 () Bool)

(declare-fun tp!710137 () Bool)

(assert (=> b!2248504 (= e!1438801 (and tp!710136 tp!710137))))

(declare-fun b!2248503 () Bool)

(assert (=> b!2248503 (= e!1438801 tp_is_empty!10355)))

(declare-fun b!2248505 () Bool)

(declare-fun tp!710133 () Bool)

(assert (=> b!2248505 (= e!1438801 tp!710133)))

(declare-fun b!2248506 () Bool)

(declare-fun tp!710135 () Bool)

(declare-fun tp!710134 () Bool)

(assert (=> b!2248506 (= e!1438801 (and tp!710135 tp!710134))))

(assert (= (and b!2247882 ((_ is ElementMatch!6567) (regTwo!13646 (regex!4219 (h!32029 rules!1750))))) b!2248503))

(assert (= (and b!2247882 ((_ is Concat!10949) (regTwo!13646 (regex!4219 (h!32029 rules!1750))))) b!2248504))

(assert (= (and b!2247882 ((_ is Star!6567) (regTwo!13646 (regex!4219 (h!32029 rules!1750))))) b!2248505))

(assert (= (and b!2247882 ((_ is Union!6567) (regTwo!13646 (regex!4219 (h!32029 rules!1750))))) b!2248506))

(declare-fun b!2248507 () Bool)

(declare-fun e!1438802 () Bool)

(declare-fun tp!710138 () Bool)

(assert (=> b!2248507 (= e!1438802 (and tp_is_empty!10355 tp!710138))))

(assert (=> b!2247865 (= tp!709900 e!1438802)))

(assert (= (and b!2247865 ((_ is Cons!26626) (t!200466 (originalCharacters!4989 (h!32028 tokens!456))))) b!2248507))

(declare-fun b!2248508 () Bool)

(declare-fun e!1438803 () Bool)

(declare-fun tp!710139 () Bool)

(assert (=> b!2248508 (= e!1438803 (and tp_is_empty!10355 tp!710139))))

(assert (=> b!2247850 (= tp!709884 e!1438803)))

(assert (= (and b!2247850 ((_ is Cons!26626) (t!200466 (t!200466 input!1722)))) b!2248508))

(declare-fun b!2248509 () Bool)

(declare-fun e!1438804 () Bool)

(declare-fun tp!710140 () Bool)

(assert (=> b!2248509 (= e!1438804 (and tp_is_empty!10355 tp!710140))))

(assert (=> b!2247890 (= tp!709929 e!1438804)))

(assert (= (and b!2247890 ((_ is Cons!26626) (t!200466 (t!200466 suffix!886)))) b!2248509))

(declare-fun tp!710148 () Bool)

(declare-fun e!1438810 () Bool)

(declare-fun tp!710147 () Bool)

(declare-fun b!2248518 () Bool)

(assert (=> b!2248518 (= e!1438810 (and (inv!36153 (left!20228 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456)))))) tp!710148 (inv!36153 (right!20558 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456)))))) tp!710147))))

(declare-fun b!2248520 () Bool)

(declare-fun e!1438809 () Bool)

(declare-fun tp!710149 () Bool)

(assert (=> b!2248520 (= e!1438809 tp!710149)))

(declare-fun b!2248519 () Bool)

(declare-fun inv!36160 (IArray!17177) Bool)

(assert (=> b!2248519 (= e!1438810 (and (inv!36160 (xs!11528 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456)))))) e!1438809))))

(assert (=> b!2247823 (= tp!709866 (and (inv!36153 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456))))) e!1438810))))

(assert (= (and b!2247823 ((_ is Node!8586) (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456)))))) b!2248518))

(assert (= b!2248519 b!2248520))

(assert (= (and b!2247823 ((_ is Leaf!12681) (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))) (value!134061 (head!4780 tokens!456)))))) b!2248519))

(declare-fun m!2679635 () Bool)

(assert (=> b!2248518 m!2679635))

(declare-fun m!2679637 () Bool)

(assert (=> b!2248518 m!2679637))

(declare-fun m!2679639 () Bool)

(assert (=> b!2248519 m!2679639))

(assert (=> b!2247823 m!2678943))

(declare-fun b!2248521 () Bool)

(declare-fun e!1438811 () Bool)

(declare-fun tp!710150 () Bool)

(assert (=> b!2248521 (= e!1438811 (and tp_is_empty!10355 tp!710150))))

(assert (=> b!2247889 (= tp!709928 e!1438811)))

(assert (= (and b!2247889 ((_ is Cons!26626) (t!200466 (t!200466 otherP!12)))) b!2248521))

(declare-fun tp!710152 () Bool)

(declare-fun tp!710151 () Bool)

(declare-fun b!2248522 () Bool)

(declare-fun e!1438813 () Bool)

(assert (=> b!2248522 (= e!1438813 (and (inv!36153 (left!20228 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456)))))) tp!710152 (inv!36153 (right!20558 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456)))))) tp!710151))))

(declare-fun b!2248524 () Bool)

(declare-fun e!1438812 () Bool)

(declare-fun tp!710153 () Bool)

(assert (=> b!2248524 (= e!1438812 tp!710153)))

(declare-fun b!2248523 () Bool)

(assert (=> b!2248523 (= e!1438813 (and (inv!36160 (xs!11528 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456)))))) e!1438812))))

(assert (=> b!2247512 (= tp!709798 (and (inv!36153 (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456))))) e!1438813))))

(assert (= (and b!2247512 ((_ is Node!8586) (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456)))))) b!2248522))

(assert (= b!2248523 b!2248524))

(assert (= (and b!2247512 ((_ is Leaf!12681) (c!357464 (dynLambda!11568 (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (value!134061 (h!32028 tokens!456)))))) b!2248523))

(declare-fun m!2679641 () Bool)

(assert (=> b!2248522 m!2679641))

(declare-fun m!2679643 () Bool)

(assert (=> b!2248522 m!2679643))

(declare-fun m!2679645 () Bool)

(assert (=> b!2248523 m!2679645))

(assert (=> b!2247512 m!2678709))

(declare-fun e!1438814 () Bool)

(assert (=> b!2247888 (= tp!709925 e!1438814)))

(declare-fun b!2248526 () Bool)

(declare-fun tp!710157 () Bool)

(declare-fun tp!710158 () Bool)

(assert (=> b!2248526 (= e!1438814 (and tp!710157 tp!710158))))

(declare-fun b!2248525 () Bool)

(assert (=> b!2248525 (= e!1438814 tp_is_empty!10355)))

(declare-fun b!2248527 () Bool)

(declare-fun tp!710154 () Bool)

(assert (=> b!2248527 (= e!1438814 tp!710154)))

(declare-fun b!2248528 () Bool)

(declare-fun tp!710156 () Bool)

(declare-fun tp!710155 () Bool)

(assert (=> b!2248528 (= e!1438814 (and tp!710156 tp!710155))))

(assert (= (and b!2247888 ((_ is ElementMatch!6567) (regOne!13647 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248525))

(assert (= (and b!2247888 ((_ is Concat!10949) (regOne!13647 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248526))

(assert (= (and b!2247888 ((_ is Star!6567) (regOne!13647 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248527))

(assert (= (and b!2247888 ((_ is Union!6567) (regOne!13647 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248528))

(declare-fun e!1438815 () Bool)

(assert (=> b!2247888 (= tp!709924 e!1438815)))

(declare-fun b!2248530 () Bool)

(declare-fun tp!710162 () Bool)

(declare-fun tp!710163 () Bool)

(assert (=> b!2248530 (= e!1438815 (and tp!710162 tp!710163))))

(declare-fun b!2248529 () Bool)

(assert (=> b!2248529 (= e!1438815 tp_is_empty!10355)))

(declare-fun b!2248531 () Bool)

(declare-fun tp!710159 () Bool)

(assert (=> b!2248531 (= e!1438815 tp!710159)))

(declare-fun b!2248532 () Bool)

(declare-fun tp!710161 () Bool)

(declare-fun tp!710160 () Bool)

(assert (=> b!2248532 (= e!1438815 (and tp!710161 tp!710160))))

(assert (= (and b!2247888 ((_ is ElementMatch!6567) (regTwo!13647 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248529))

(assert (= (and b!2247888 ((_ is Concat!10949) (regTwo!13647 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248530))

(assert (= (and b!2247888 ((_ is Star!6567) (regTwo!13647 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248531))

(assert (= (and b!2247888 ((_ is Union!6567) (regTwo!13647 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248532))

(declare-fun e!1438816 () Bool)

(assert (=> b!2247887 (= tp!709923 e!1438816)))

(declare-fun b!2248534 () Bool)

(declare-fun tp!710167 () Bool)

(declare-fun tp!710168 () Bool)

(assert (=> b!2248534 (= e!1438816 (and tp!710167 tp!710168))))

(declare-fun b!2248533 () Bool)

(assert (=> b!2248533 (= e!1438816 tp_is_empty!10355)))

(declare-fun b!2248535 () Bool)

(declare-fun tp!710164 () Bool)

(assert (=> b!2248535 (= e!1438816 tp!710164)))

(declare-fun b!2248536 () Bool)

(declare-fun tp!710166 () Bool)

(declare-fun tp!710165 () Bool)

(assert (=> b!2248536 (= e!1438816 (and tp!710166 tp!710165))))

(assert (= (and b!2247887 ((_ is ElementMatch!6567) (reg!6896 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248533))

(assert (= (and b!2247887 ((_ is Concat!10949) (reg!6896 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248534))

(assert (= (and b!2247887 ((_ is Star!6567) (reg!6896 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248535))

(assert (= (and b!2247887 ((_ is Union!6567) (reg!6896 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248536))

(declare-fun e!1438817 () Bool)

(assert (=> b!2247886 (= tp!709926 e!1438817)))

(declare-fun b!2248538 () Bool)

(declare-fun tp!710172 () Bool)

(declare-fun tp!710173 () Bool)

(assert (=> b!2248538 (= e!1438817 (and tp!710172 tp!710173))))

(declare-fun b!2248537 () Bool)

(assert (=> b!2248537 (= e!1438817 tp_is_empty!10355)))

(declare-fun b!2248539 () Bool)

(declare-fun tp!710169 () Bool)

(assert (=> b!2248539 (= e!1438817 tp!710169)))

(declare-fun b!2248540 () Bool)

(declare-fun tp!710171 () Bool)

(declare-fun tp!710170 () Bool)

(assert (=> b!2248540 (= e!1438817 (and tp!710171 tp!710170))))

(assert (= (and b!2247886 ((_ is ElementMatch!6567) (regOne!13646 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248537))

(assert (= (and b!2247886 ((_ is Concat!10949) (regOne!13646 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248538))

(assert (= (and b!2247886 ((_ is Star!6567) (regOne!13646 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248539))

(assert (= (and b!2247886 ((_ is Union!6567) (regOne!13646 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248540))

(declare-fun e!1438818 () Bool)

(assert (=> b!2247886 (= tp!709927 e!1438818)))

(declare-fun b!2248542 () Bool)

(declare-fun tp!710177 () Bool)

(declare-fun tp!710178 () Bool)

(assert (=> b!2248542 (= e!1438818 (and tp!710177 tp!710178))))

(declare-fun b!2248541 () Bool)

(assert (=> b!2248541 (= e!1438818 tp_is_empty!10355)))

(declare-fun b!2248543 () Bool)

(declare-fun tp!710174 () Bool)

(assert (=> b!2248543 (= e!1438818 tp!710174)))

(declare-fun b!2248544 () Bool)

(declare-fun tp!710176 () Bool)

(declare-fun tp!710175 () Bool)

(assert (=> b!2248544 (= e!1438818 (and tp!710176 tp!710175))))

(assert (= (and b!2247886 ((_ is ElementMatch!6567) (regTwo!13646 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248541))

(assert (= (and b!2247886 ((_ is Concat!10949) (regTwo!13646 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248542))

(assert (= (and b!2247886 ((_ is Star!6567) (regTwo!13646 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248543))

(assert (= (and b!2247886 ((_ is Union!6567) (regTwo!13646 (regex!4219 (rule!6519 (h!32028 tokens!456)))))) b!2248544))

(declare-fun e!1438819 () Bool)

(assert (=> b!2247869 (= tp!709903 e!1438819)))

(declare-fun b!2248546 () Bool)

(declare-fun tp!710182 () Bool)

(declare-fun tp!710183 () Bool)

(assert (=> b!2248546 (= e!1438819 (and tp!710182 tp!710183))))

(declare-fun b!2248545 () Bool)

(assert (=> b!2248545 (= e!1438819 tp_is_empty!10355)))

(declare-fun b!2248547 () Bool)

(declare-fun tp!710179 () Bool)

(assert (=> b!2248547 (= e!1438819 tp!710179)))

(declare-fun b!2248548 () Bool)

(declare-fun tp!710181 () Bool)

(declare-fun tp!710180 () Bool)

(assert (=> b!2248548 (= e!1438819 (and tp!710181 tp!710180))))

(assert (= (and b!2247869 ((_ is ElementMatch!6567) (regOne!13647 (regex!4219 r!2363)))) b!2248545))

(assert (= (and b!2247869 ((_ is Concat!10949) (regOne!13647 (regex!4219 r!2363)))) b!2248546))

(assert (= (and b!2247869 ((_ is Star!6567) (regOne!13647 (regex!4219 r!2363)))) b!2248547))

(assert (= (and b!2247869 ((_ is Union!6567) (regOne!13647 (regex!4219 r!2363)))) b!2248548))

(declare-fun e!1438820 () Bool)

(assert (=> b!2247869 (= tp!709902 e!1438820)))

(declare-fun b!2248550 () Bool)

(declare-fun tp!710187 () Bool)

(declare-fun tp!710188 () Bool)

(assert (=> b!2248550 (= e!1438820 (and tp!710187 tp!710188))))

(declare-fun b!2248549 () Bool)

(assert (=> b!2248549 (= e!1438820 tp_is_empty!10355)))

(declare-fun b!2248551 () Bool)

(declare-fun tp!710184 () Bool)

(assert (=> b!2248551 (= e!1438820 tp!710184)))

(declare-fun b!2248552 () Bool)

(declare-fun tp!710186 () Bool)

(declare-fun tp!710185 () Bool)

(assert (=> b!2248552 (= e!1438820 (and tp!710186 tp!710185))))

(assert (= (and b!2247869 ((_ is ElementMatch!6567) (regTwo!13647 (regex!4219 r!2363)))) b!2248549))

(assert (= (and b!2247869 ((_ is Concat!10949) (regTwo!13647 (regex!4219 r!2363)))) b!2248550))

(assert (= (and b!2247869 ((_ is Star!6567) (regTwo!13647 (regex!4219 r!2363)))) b!2248551))

(assert (= (and b!2247869 ((_ is Union!6567) (regTwo!13647 (regex!4219 r!2363)))) b!2248552))

(declare-fun e!1438821 () Bool)

(assert (=> b!2247868 (= tp!709901 e!1438821)))

(declare-fun b!2248554 () Bool)

(declare-fun tp!710192 () Bool)

(declare-fun tp!710193 () Bool)

(assert (=> b!2248554 (= e!1438821 (and tp!710192 tp!710193))))

(declare-fun b!2248553 () Bool)

(assert (=> b!2248553 (= e!1438821 tp_is_empty!10355)))

(declare-fun b!2248555 () Bool)

(declare-fun tp!710189 () Bool)

(assert (=> b!2248555 (= e!1438821 tp!710189)))

(declare-fun b!2248556 () Bool)

(declare-fun tp!710191 () Bool)

(declare-fun tp!710190 () Bool)

(assert (=> b!2248556 (= e!1438821 (and tp!710191 tp!710190))))

(assert (= (and b!2247868 ((_ is ElementMatch!6567) (reg!6896 (regex!4219 r!2363)))) b!2248553))

(assert (= (and b!2247868 ((_ is Concat!10949) (reg!6896 (regex!4219 r!2363)))) b!2248554))

(assert (= (and b!2247868 ((_ is Star!6567) (reg!6896 (regex!4219 r!2363)))) b!2248555))

(assert (= (and b!2247868 ((_ is Union!6567) (reg!6896 (regex!4219 r!2363)))) b!2248556))

(declare-fun e!1438822 () Bool)

(assert (=> b!2247867 (= tp!709904 e!1438822)))

(declare-fun b!2248558 () Bool)

(declare-fun tp!710197 () Bool)

(declare-fun tp!710198 () Bool)

(assert (=> b!2248558 (= e!1438822 (and tp!710197 tp!710198))))

(declare-fun b!2248557 () Bool)

(assert (=> b!2248557 (= e!1438822 tp_is_empty!10355)))

(declare-fun b!2248559 () Bool)

(declare-fun tp!710194 () Bool)

(assert (=> b!2248559 (= e!1438822 tp!710194)))

(declare-fun b!2248560 () Bool)

(declare-fun tp!710196 () Bool)

(declare-fun tp!710195 () Bool)

(assert (=> b!2248560 (= e!1438822 (and tp!710196 tp!710195))))

(assert (= (and b!2247867 ((_ is ElementMatch!6567) (regOne!13646 (regex!4219 r!2363)))) b!2248557))

(assert (= (and b!2247867 ((_ is Concat!10949) (regOne!13646 (regex!4219 r!2363)))) b!2248558))

(assert (= (and b!2247867 ((_ is Star!6567) (regOne!13646 (regex!4219 r!2363)))) b!2248559))

(assert (= (and b!2247867 ((_ is Union!6567) (regOne!13646 (regex!4219 r!2363)))) b!2248560))

(declare-fun e!1438823 () Bool)

(assert (=> b!2247867 (= tp!709905 e!1438823)))

(declare-fun b!2248562 () Bool)

(declare-fun tp!710202 () Bool)

(declare-fun tp!710203 () Bool)

(assert (=> b!2248562 (= e!1438823 (and tp!710202 tp!710203))))

(declare-fun b!2248561 () Bool)

(assert (=> b!2248561 (= e!1438823 tp_is_empty!10355)))

(declare-fun b!2248563 () Bool)

(declare-fun tp!710199 () Bool)

(assert (=> b!2248563 (= e!1438823 tp!710199)))

(declare-fun b!2248564 () Bool)

(declare-fun tp!710201 () Bool)

(declare-fun tp!710200 () Bool)

(assert (=> b!2248564 (= e!1438823 (and tp!710201 tp!710200))))

(assert (= (and b!2247867 ((_ is ElementMatch!6567) (regTwo!13646 (regex!4219 r!2363)))) b!2248561))

(assert (= (and b!2247867 ((_ is Concat!10949) (regTwo!13646 (regex!4219 r!2363)))) b!2248562))

(assert (= (and b!2247867 ((_ is Star!6567) (regTwo!13646 (regex!4219 r!2363)))) b!2248563))

(assert (= (and b!2247867 ((_ is Union!6567) (regTwo!13646 (regex!4219 r!2363)))) b!2248564))

(declare-fun b_lambda!71883 () Bool)

(assert (= b_lambda!71865 (or (and b!2247864 b_free!65751 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))))) (and b!2248470 b_free!65767 (= (toChars!5808 (transformation!4219 (h!32029 (t!200468 (t!200468 rules!1750))))) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))))) (and b!2247441 b_free!65739 (= (toChars!5808 (transformation!4219 otherR!12)) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))))) (and b!2247454 b_free!65727 (= (toChars!5808 (transformation!4219 (h!32029 rules!1750))) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))))) (and b!2247453 b_free!65731 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))))) (and b!2247880 b_free!65755 (= (toChars!5808 (transformation!4219 (h!32029 (t!200468 rules!1750)))) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))))) (and b!2247468 b_free!65735 (= (toChars!5808 (transformation!4219 r!2363)) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))))) (and b!2248478 b_free!65771 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 (t!200467 tokens!456)))))) (toChars!5808 (transformation!4219 (rule!6519 (head!4780 tokens!456)))))) b_lambda!71883)))

(declare-fun b_lambda!71885 () Bool)

(assert (= b_lambda!71871 (or (and b!2247864 b_free!65751) (and b!2248470 b_free!65767 (= (toChars!5808 (transformation!4219 (h!32029 (t!200468 (t!200468 rules!1750))))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))))) (and b!2248478 b_free!65771 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 (t!200467 tokens!456)))))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))))) (and b!2247454 b_free!65727 (= (toChars!5808 (transformation!4219 (h!32029 rules!1750))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))))) (and b!2247468 b_free!65735 (= (toChars!5808 (transformation!4219 r!2363)) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))))) (and b!2247880 b_free!65755 (= (toChars!5808 (transformation!4219 (h!32029 (t!200468 rules!1750)))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))))) (and b!2247453 b_free!65731 (= (toChars!5808 (transformation!4219 (rule!6519 (h!32028 tokens!456)))) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))))) (and b!2247441 b_free!65739 (= (toChars!5808 (transformation!4219 otherR!12)) (toChars!5808 (transformation!4219 (rule!6519 (h!32028 (t!200467 tokens!456))))))) b_lambda!71885)))

(declare-fun b_lambda!71887 () Bool)

(assert (= b_lambda!71873 (or d!666869 b_lambda!71887)))

(declare-fun bs!454933 () Bool)

(declare-fun d!667177 () Bool)

(assert (= bs!454933 (and d!667177 d!666869)))

(assert (=> bs!454933 (= (dynLambda!11574 lambda!85157 (h!32029 rules!1750)) (ruleValid!1311 thiss!16613 (h!32029 rules!1750)))))

(assert (=> bs!454933 m!2678917))

(assert (=> b!2248081 d!667177))

(check-sat (not tb!133147) (not b_lambda!71885) b_and!175897 (not bm!135495) (not d!667141) (not b!2248469) (not b!2248370) (not b!2248497) b_and!175995 (not b!2248084) (not d!667159) (not d!667161) (not d!667139) b_and!175979 (not b!2248535) (not b!2248496) (not b!2248476) (not d!666973) (not b_lambda!71887) (not b!2248540) (not bm!135496) (not b_next!66473) (not b_next!66471) (not b!2248458) (not b!2248489) (not d!667097) (not d!667171) (not b!2248551) (not d!667143) (not b!2248501) (not b!2248131) (not d!667091) (not b_next!66435) (not b!2248523) (not b_next!66459) (not d!667123) (not b!2248465) b_and!175973 (not b!2248552) (not d!666977) (not b!2248462) (not bm!135494) b_and!175981 (not d!666993) (not b_next!66455) (not b!2248439) (not b!2248445) (not d!667059) (not b!2248486) (not b!2248502) (not b!2248334) (not b!2248536) (not d!667119) (not b_next!66457) (not b_next!66443) (not b_next!66453) (not d!667045) (not bm!135482) (not d!667099) (not b!2248506) (not b!2248040) (not b!2248480) b_and!175953 (not b!2248474) (not d!667137) (not b!2248461) (not b!2248548) (not b!2248518) (not b!2248543) (not b_lambda!71867) (not d!667065) b_and!175909 (not b!2248330) (not b!2248082) (not b!2248159) (not b!2248473) (not b!2248441) (not b!2248500) (not b!2248521) (not b!2248384) (not b!2248494) (not b!2248463) (not b!2248555) (not b!2248167) (not b!2248436) (not d!667153) (not b!2248546) (not d!667083) (not b!2248018) (not b_next!66429) (not d!667163) (not b!2248156) (not b!2248560) (not b!2248452) (not b!2248372) b_and!175997 (not b!2248477) b_and!175999 (not b!2248017) b_and!175977 (not b!2248538) (not d!667147) (not b!2248413) (not b!2248375) (not d!667033) (not d!667175) (not d!667057) (not b!2248524) (not b_next!66439) (not b!2247823) (not d!667039) (not d!666961) (not b!2248134) (not b!2248519) (not d!667169) (not d!667071) (not b!2248368) (not b_next!66433) (not b!2248528) (not d!667167) (not b_lambda!71883) (not b!2248430) (not b!2248016) b_and!175901 (not b!2248429) (not d!666971) (not b!2248547) (not b_next!66441) (not bm!135493) (not b!2248466) (not b!2248482) b_and!175957 (not b!2248075) (not b!2248015) (not b!2248165) (not b!2248113) (not b!2248504) (not b!2248129) (not b!2248544) (not b!2247512) (not b!2248374) (not b!2248554) (not b!2248453) (not b_next!66437) (not b!2248542) (not b!2248556) (not b!2248457) (not b!2248550) (not b!2248433) (not d!666981) (not b!2248336) (not b!2248386) (not b!2248531) (not d!667047) (not b!2248112) (not b!2248366) (not b!2248373) (not d!667131) (not d!667155) (not b!2248418) (not b!2248507) (not b!2248527) (not b!2248475) (not b!2248035) (not b!2248564) (not d!667085) (not b!2248481) (not b!2248539) (not b!2248522) (not d!667043) (not b_next!66431) (not bm!135479) (not b!2248468) (not b!2248520) (not d!667023) (not b!2248498) (not b!2248563) (not b!2248013) b_and!175993 (not b!2248534) (not b!2248154) (not b!2248092) (not bm!135480) b_and!175905 (not b!2248508) tp_is_empty!10355 (not d!667173) (not d!667087) (not bs!454933) (not b!2248358) (not b!2248454) (not b_next!66469) (not b!2248382) (not b!2248485) (not b!2248034) (not b!2248493) (not b!2248437) (not b!2248152) (not b!2248490) (not b!2248488) (not b!2248558) (not b!2248532) (not b!2248109) (not b!2248332) (not b!2248467) (not b!2248076) (not b_next!66475) (not b!2248091) (not d!667133) (not b!2248472) (not b!2248110) (not b!2248484) (not b!2248530) (not b!2248526) (not b!2248492) b_and!175983 (not b!2248460) (not b!2248509) (not b!2248562) (not b!2248456) (not b!2248505) (not b!2248559) (not d!667069) (not b!2248434) b_and!175975)
(check-sat b_and!175897 b_and!175995 b_and!175979 b_and!175973 b_and!175953 b_and!175909 (not b_next!66429) (not b_next!66439) (not b_next!66433) b_and!175957 (not b_next!66437) (not b_next!66431) (not b_next!66469) (not b_next!66475) b_and!175983 b_and!175975 (not b_next!66473) (not b_next!66471) (not b_next!66435) (not b_next!66459) b_and!175981 (not b_next!66455) (not b_next!66457) (not b_next!66443) (not b_next!66453) b_and!175997 b_and!175999 b_and!175977 b_and!175901 (not b_next!66441) b_and!175993 b_and!175905)
