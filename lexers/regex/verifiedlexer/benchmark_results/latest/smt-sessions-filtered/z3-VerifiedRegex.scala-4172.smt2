; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!225388 () Bool)

(assert start!225388)

(declare-fun b!2294841 () Bool)

(declare-fun b_free!69069 () Bool)

(declare-fun b_next!69773 () Bool)

(assert (=> b!2294841 (= b_free!69069 (not b_next!69773))))

(declare-fun tp!727761 () Bool)

(declare-fun b_and!182497 () Bool)

(assert (=> b!2294841 (= tp!727761 b_and!182497)))

(declare-fun b_free!69071 () Bool)

(declare-fun b_next!69775 () Bool)

(assert (=> b!2294841 (= b_free!69071 (not b_next!69775))))

(declare-fun tp!727762 () Bool)

(declare-fun b_and!182499 () Bool)

(assert (=> b!2294841 (= tp!727762 b_and!182499)))

(declare-fun b!2294838 () Bool)

(declare-fun b_free!69073 () Bool)

(declare-fun b_next!69777 () Bool)

(assert (=> b!2294838 (= b_free!69073 (not b_next!69777))))

(declare-fun tp!727753 () Bool)

(declare-fun b_and!182501 () Bool)

(assert (=> b!2294838 (= tp!727753 b_and!182501)))

(declare-fun b_free!69075 () Bool)

(declare-fun b_next!69779 () Bool)

(assert (=> b!2294838 (= b_free!69075 (not b_next!69779))))

(declare-fun tp!727755 () Bool)

(declare-fun b_and!182503 () Bool)

(assert (=> b!2294838 (= tp!727755 b_and!182503)))

(declare-fun b!2294832 () Bool)

(declare-fun b_free!69077 () Bool)

(declare-fun b_next!69781 () Bool)

(assert (=> b!2294832 (= b_free!69077 (not b_next!69781))))

(declare-fun tp!727749 () Bool)

(declare-fun b_and!182505 () Bool)

(assert (=> b!2294832 (= tp!727749 b_and!182505)))

(declare-fun b_free!69079 () Bool)

(declare-fun b_next!69783 () Bool)

(assert (=> b!2294832 (= b_free!69079 (not b_next!69783))))

(declare-fun tp!727757 () Bool)

(declare-fun b_and!182507 () Bool)

(assert (=> b!2294832 (= tp!727757 b_and!182507)))

(declare-fun b!2294830 () Bool)

(declare-fun b_free!69081 () Bool)

(declare-fun b_next!69785 () Bool)

(assert (=> b!2294830 (= b_free!69081 (not b_next!69785))))

(declare-fun tp!727747 () Bool)

(declare-fun b_and!182509 () Bool)

(assert (=> b!2294830 (= tp!727747 b_and!182509)))

(declare-fun b_free!69083 () Bool)

(declare-fun b_next!69787 () Bool)

(assert (=> b!2294830 (= b_free!69083 (not b_next!69787))))

(declare-fun tp!727752 () Bool)

(declare-fun b_and!182511 () Bool)

(assert (=> b!2294830 (= tp!727752 b_and!182511)))

(declare-fun b!2294815 () Bool)

(declare-fun e!1470532 () Bool)

(declare-fun e!1470533 () Bool)

(assert (=> b!2294815 (= e!1470532 (not e!1470533))))

(declare-fun res!981179 () Bool)

(assert (=> b!2294815 (=> res!981179 e!1470533)))

(declare-fun e!1470517 () Bool)

(assert (=> b!2294815 (= res!981179 e!1470517)))

(declare-fun res!981191 () Bool)

(assert (=> b!2294815 (=> (not res!981191) (not e!1470517))))

(declare-fun lt!851466 () Bool)

(assert (=> b!2294815 (= res!981191 (not lt!851466))))

(declare-datatypes ((LexerInterface!3972 0))(
  ( (LexerInterfaceExt!3969 (__x!18134 Int)) (Lexer!3970) )
))
(declare-fun thiss!16613 () LexerInterface!3972)

(declare-datatypes ((List!27415 0))(
  ( (Nil!27321) (Cons!27321 (h!32722 (_ BitVec 16)) (t!205199 List!27415)) )
))
(declare-datatypes ((TokenValue!4537 0))(
  ( (FloatLiteralValue!9074 (text!32204 List!27415)) (TokenValueExt!4536 (__x!18135 Int)) (Broken!22685 (value!138481 List!27415)) (Object!4630) (End!4537) (Def!4537) (Underscore!4537) (Match!4537) (Else!4537) (Error!4537) (Case!4537) (If!4537) (Extends!4537) (Abstract!4537) (Class!4537) (Val!4537) (DelimiterValue!9074 (del!4597 List!27415)) (KeywordValue!4543 (value!138482 List!27415)) (CommentValue!9074 (value!138483 List!27415)) (WhitespaceValue!9074 (value!138484 List!27415)) (IndentationValue!4537 (value!138485 List!27415)) (String!29788) (Int32!4537) (Broken!22686 (value!138486 List!27415)) (Boolean!4538) (Unit!40207) (OperatorValue!4540 (op!4597 List!27415)) (IdentifierValue!9074 (value!138487 List!27415)) (IdentifierValue!9075 (value!138488 List!27415)) (WhitespaceValue!9075 (value!138489 List!27415)) (True!9074) (False!9074) (Broken!22687 (value!138490 List!27415)) (Broken!22688 (value!138491 List!27415)) (True!9075) (RightBrace!4537) (RightBracket!4537) (Colon!4537) (Null!4537) (Comma!4537) (LeftBracket!4537) (False!9075) (LeftBrace!4537) (ImaginaryLiteralValue!4537 (text!32205 List!27415)) (StringLiteralValue!13611 (value!138492 List!27415)) (EOFValue!4537 (value!138493 List!27415)) (IdentValue!4537 (value!138494 List!27415)) (DelimiterValue!9075 (value!138495 List!27415)) (DedentValue!4537 (value!138496 List!27415)) (NewLineValue!4537 (value!138497 List!27415)) (IntegerValue!13611 (value!138498 (_ BitVec 32)) (text!32206 List!27415)) (IntegerValue!13612 (value!138499 Int) (text!32207 List!27415)) (Times!4537) (Or!4537) (Equal!4537) (Minus!4537) (Broken!22689 (value!138500 List!27415)) (And!4537) (Div!4537) (LessEqual!4537) (Mod!4537) (Concat!11260) (Not!4537) (Plus!4537) (SpaceValue!4537 (value!138501 List!27415)) (IntegerValue!13613 (value!138502 Int) (text!32208 List!27415)) (StringLiteralValue!13612 (text!32209 List!27415)) (FloatLiteralValue!9075 (text!32210 List!27415)) (BytesLiteralValue!4537 (value!138503 List!27415)) (CommentValue!9075 (value!138504 List!27415)) (StringLiteralValue!13613 (value!138505 List!27415)) (ErrorTokenValue!4537 (msg!4598 List!27415)) )
))
(declare-datatypes ((C!13592 0))(
  ( (C!13593 (val!7844 Int)) )
))
(declare-datatypes ((List!27416 0))(
  ( (Nil!27322) (Cons!27322 (h!32723 C!13592) (t!205200 List!27416)) )
))
(declare-datatypes ((IArray!17801 0))(
  ( (IArray!17802 (innerList!8958 List!27416)) )
))
(declare-datatypes ((Conc!8898 0))(
  ( (Node!8898 (left!20710 Conc!8898) (right!21040 Conc!8898) (csize!18026 Int) (cheight!9109 Int)) (Leaf!13071 (xs!11840 IArray!17801) (csize!18027 Int)) (Empty!8898) )
))
(declare-datatypes ((BalanceConc!17524 0))(
  ( (BalanceConc!17525 (c!363868 Conc!8898)) )
))
(declare-datatypes ((String!29789 0))(
  ( (String!29790 (value!138506 String)) )
))
(declare-datatypes ((Regex!6723 0))(
  ( (ElementMatch!6723 (c!363869 C!13592)) (Concat!11261 (regOne!13958 Regex!6723) (regTwo!13958 Regex!6723)) (EmptyExpr!6723) (Star!6723 (reg!7052 Regex!6723)) (EmptyLang!6723) (Union!6723 (regOne!13959 Regex!6723) (regTwo!13959 Regex!6723)) )
))
(declare-datatypes ((TokenValueInjection!8614 0))(
  ( (TokenValueInjection!8615 (toValue!6173 Int) (toChars!6032 Int)) )
))
(declare-datatypes ((Rule!8550 0))(
  ( (Rule!8551 (regex!4375 Regex!6723) (tag!4865 String!29789) (isSeparator!4375 Bool) (transformation!4375 TokenValueInjection!8614)) )
))
(declare-fun r!2363 () Rule!8550)

(declare-fun ruleValid!1465 (LexerInterface!3972 Rule!8550) Bool)

(assert (=> b!2294815 (ruleValid!1465 thiss!16613 r!2363)))

(declare-datatypes ((Unit!40208 0))(
  ( (Unit!40209) )
))
(declare-fun lt!851470 () Unit!40208)

(declare-datatypes ((List!27417 0))(
  ( (Nil!27323) (Cons!27323 (h!32724 Rule!8550) (t!205201 List!27417)) )
))
(declare-fun rules!1750 () List!27417)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!870 (LexerInterface!3972 Rule!8550 List!27417) Unit!40208)

(assert (=> b!2294815 (= lt!851470 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!870 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2294816 () Bool)

(declare-datatypes ((Token!8228 0))(
  ( (Token!8229 (value!138507 TokenValue!4537) (rule!6713 Rule!8550) (size!21522 Int) (originalCharacters!5145 List!27416)) )
))
(declare-datatypes ((List!27418 0))(
  ( (Nil!27324) (Cons!27324 (h!32725 Token!8228) (t!205202 List!27418)) )
))
(declare-fun tokens!456 () List!27418)

(declare-fun matchR!2980 (Regex!6723 List!27416) Bool)

(declare-fun list!10720 (BalanceConc!17524) List!27416)

(declare-fun charsOf!2763 (Token!8228) BalanceConc!17524)

(declare-fun head!5008 (List!27418) Token!8228)

(assert (=> b!2294816 (= e!1470517 (not (matchR!2980 (regex!4375 r!2363) (list!10720 (charsOf!2763 (head!5008 tokens!456))))))))

(declare-fun b!2294818 () Bool)

(declare-fun e!1470540 () Unit!40208)

(declare-fun Unit!40210 () Unit!40208)

(assert (=> b!2294818 (= e!1470540 Unit!40210)))

(declare-fun b!2294819 () Bool)

(declare-fun e!1470537 () Bool)

(assert (=> b!2294819 (= e!1470537 true)))

(declare-fun lt!851472 () Bool)

(declare-fun rulesValidInductive!1543 (LexerInterface!3972 List!27417) Bool)

(assert (=> b!2294819 (= lt!851472 (rulesValidInductive!1543 thiss!16613 rules!1750))))

(declare-fun b!2294820 () Bool)

(declare-fun e!1470528 () Bool)

(assert (=> b!2294820 (= e!1470528 (= (rule!6713 (head!5008 tokens!456)) r!2363))))

(declare-fun tp!727754 () Bool)

(declare-fun b!2294821 () Bool)

(declare-fun e!1470531 () Bool)

(declare-fun e!1470519 () Bool)

(declare-fun inv!36930 (String!29789) Bool)

(declare-fun inv!36933 (TokenValueInjection!8614) Bool)

(assert (=> b!2294821 (= e!1470531 (and tp!727754 (inv!36930 (tag!4865 r!2363)) (inv!36933 (transformation!4375 r!2363)) e!1470519))))

(declare-fun b!2294822 () Bool)

(declare-fun Unit!40211 () Unit!40208)

(assert (=> b!2294822 (= e!1470540 Unit!40211)))

(declare-fun lt!851471 () Unit!40208)

(declare-fun otherR!12 () Rule!8550)

(declare-fun lemmaSameIndexThenSameElement!168 (List!27417 Rule!8550 Rule!8550) Unit!40208)

(assert (=> b!2294822 (= lt!851471 (lemmaSameIndexThenSameElement!168 rules!1750 r!2363 otherR!12))))

(assert (=> b!2294822 false))

(declare-fun b!2294823 () Bool)

(declare-fun e!1470526 () Bool)

(assert (=> b!2294823 (= e!1470533 e!1470526)))

(declare-fun res!981193 () Bool)

(assert (=> b!2294823 (=> res!981193 e!1470526)))

(declare-fun lt!851469 () Int)

(declare-fun lt!851467 () Int)

(assert (=> b!2294823 (= res!981193 (> lt!851469 lt!851467))))

(declare-fun getIndex!388 (List!27417 Rule!8550) Int)

(assert (=> b!2294823 (= lt!851467 (getIndex!388 rules!1750 otherR!12))))

(assert (=> b!2294823 (= lt!851469 (getIndex!388 rules!1750 r!2363))))

(assert (=> b!2294823 (ruleValid!1465 thiss!16613 otherR!12)))

(declare-fun lt!851474 () Unit!40208)

(assert (=> b!2294823 (= lt!851474 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!870 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2294824 () Bool)

(declare-fun e!1470523 () Bool)

(declare-fun e!1470535 () Bool)

(declare-fun tp!727750 () Bool)

(assert (=> b!2294824 (= e!1470523 (and e!1470535 tp!727750))))

(declare-fun b!2294825 () Bool)

(declare-fun e!1470513 () Bool)

(declare-fun tp_is_empty!10667 () Bool)

(declare-fun tp!727748 () Bool)

(assert (=> b!2294825 (= e!1470513 (and tp_is_empty!10667 tp!727748))))

(declare-fun b!2294826 () Bool)

(declare-fun e!1470518 () Bool)

(declare-fun otherP!12 () List!27416)

(declare-fun size!21523 (BalanceConc!17524) Int)

(declare-fun size!21524 (List!27416) Int)

(assert (=> b!2294826 (= e!1470518 (<= (size!21523 (charsOf!2763 (head!5008 tokens!456))) (size!21524 otherP!12)))))

(declare-fun e!1470536 () Bool)

(declare-fun e!1470527 () Bool)

(declare-fun tp!727763 () Bool)

(declare-fun b!2294827 () Bool)

(declare-fun inv!21 (TokenValue!4537) Bool)

(assert (=> b!2294827 (= e!1470527 (and (inv!21 (value!138507 (h!32725 tokens!456))) e!1470536 tp!727763))))

(declare-fun b!2294828 () Bool)

(declare-fun e!1470525 () Bool)

(assert (=> b!2294828 (= e!1470525 e!1470532)))

(declare-fun res!981181 () Bool)

(assert (=> b!2294828 (=> (not res!981181) (not e!1470532))))

(assert (=> b!2294828 (= res!981181 e!1470518)))

(declare-fun res!981189 () Bool)

(assert (=> b!2294828 (=> res!981189 e!1470518)))

(assert (=> b!2294828 (= res!981189 lt!851466)))

(declare-fun isEmpty!15569 (List!27418) Bool)

(assert (=> b!2294828 (= lt!851466 (isEmpty!15569 tokens!456))))

(declare-fun b!2294829 () Bool)

(declare-fun e!1470516 () Bool)

(assert (=> b!2294829 (= e!1470516 e!1470525)))

(declare-fun res!981184 () Bool)

(assert (=> b!2294829 (=> (not res!981184) (not e!1470525))))

(declare-fun suffix!886 () List!27416)

(declare-datatypes ((IArray!17803 0))(
  ( (IArray!17804 (innerList!8959 List!27418)) )
))
(declare-datatypes ((Conc!8899 0))(
  ( (Node!8899 (left!20711 Conc!8899) (right!21041 Conc!8899) (csize!18028 Int) (cheight!9110 Int)) (Leaf!13072 (xs!11841 IArray!17803) (csize!18029 Int)) (Empty!8899) )
))
(declare-datatypes ((BalanceConc!17526 0))(
  ( (BalanceConc!17527 (c!363870 Conc!8899)) )
))
(declare-datatypes ((tuple2!27156 0))(
  ( (tuple2!27157 (_1!16088 BalanceConc!17526) (_2!16088 BalanceConc!17524)) )
))
(declare-fun lt!851473 () tuple2!27156)

(declare-datatypes ((tuple2!27158 0))(
  ( (tuple2!27159 (_1!16089 List!27418) (_2!16089 List!27416)) )
))
(declare-fun list!10721 (BalanceConc!17526) List!27418)

(assert (=> b!2294829 (= res!981184 (= (tuple2!27159 (list!10721 (_1!16088 lt!851473)) (list!10720 (_2!16088 lt!851473))) (tuple2!27159 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!27416)

(declare-fun lex!1811 (LexerInterface!3972 List!27417 BalanceConc!17524) tuple2!27156)

(declare-fun seqFromList!3079 (List!27416) BalanceConc!17524)

(assert (=> b!2294829 (= lt!851473 (lex!1811 thiss!16613 rules!1750 (seqFromList!3079 input!1722)))))

(declare-fun res!981183 () Bool)

(assert (=> start!225388 (=> (not res!981183) (not e!1470516))))

(get-info :version)

(assert (=> start!225388 (= res!981183 ((_ is Lexer!3970) thiss!16613))))

(assert (=> start!225388 e!1470516))

(assert (=> start!225388 true))

(assert (=> start!225388 e!1470513))

(declare-fun e!1470530 () Bool)

(assert (=> start!225388 e!1470530))

(declare-fun e!1470541 () Bool)

(assert (=> start!225388 e!1470541))

(declare-fun e!1470529 () Bool)

(assert (=> start!225388 e!1470529))

(assert (=> start!225388 e!1470523))

(assert (=> start!225388 e!1470531))

(declare-fun e!1470538 () Bool)

(assert (=> start!225388 e!1470538))

(declare-fun b!2294817 () Bool)

(declare-fun res!981190 () Bool)

(assert (=> b!2294817 (=> (not res!981190) (not e!1470516))))

(declare-fun isEmpty!15570 (List!27417) Bool)

(assert (=> b!2294817 (= res!981190 (not (isEmpty!15570 rules!1750)))))

(declare-fun e!1470521 () Bool)

(assert (=> b!2294830 (= e!1470521 (and tp!727747 tp!727752))))

(declare-fun b!2294831 () Bool)

(declare-fun res!981182 () Bool)

(assert (=> b!2294831 (=> (not res!981182) (not e!1470532))))

(assert (=> b!2294831 (= res!981182 (not (= r!2363 otherR!12)))))

(assert (=> b!2294832 (= e!1470519 (and tp!727749 tp!727757))))

(declare-fun b!2294833 () Bool)

(declare-fun tp!727758 () Bool)

(assert (=> b!2294833 (= e!1470529 (and tp_is_empty!10667 tp!727758))))

(declare-fun b!2294834 () Bool)

(declare-fun tp!727760 () Bool)

(declare-fun inv!36934 (Token!8228) Bool)

(assert (=> b!2294834 (= e!1470538 (and (inv!36934 (h!32725 tokens!456)) e!1470527 tp!727760))))

(declare-fun b!2294835 () Bool)

(declare-fun res!981187 () Bool)

(assert (=> b!2294835 (=> (not res!981187) (not e!1470516))))

(declare-fun rulesInvariant!3474 (LexerInterface!3972 List!27417) Bool)

(assert (=> b!2294835 (= res!981187 (rulesInvariant!3474 thiss!16613 rules!1750))))

(declare-fun b!2294836 () Bool)

(declare-fun tp!727746 () Bool)

(assert (=> b!2294836 (= e!1470541 (and tp_is_empty!10667 tp!727746))))

(declare-fun b!2294837 () Bool)

(declare-fun res!981185 () Bool)

(assert (=> b!2294837 (=> (not res!981185) (not e!1470532))))

(declare-fun isPrefix!2365 (List!27416 List!27416) Bool)

(assert (=> b!2294837 (= res!981185 (isPrefix!2365 otherP!12 input!1722))))

(declare-fun e!1470539 () Bool)

(assert (=> b!2294838 (= e!1470539 (and tp!727753 tp!727755))))

(declare-fun b!2294839 () Bool)

(assert (=> b!2294839 (= e!1470526 e!1470537)))

(declare-fun res!981180 () Bool)

(assert (=> b!2294839 (=> res!981180 e!1470537)))

(assert (=> b!2294839 (= res!981180 (not ((_ is Nil!27324) tokens!456)))))

(declare-fun lt!851468 () Unit!40208)

(assert (=> b!2294839 (= lt!851468 e!1470540)))

(declare-fun c!363867 () Bool)

(assert (=> b!2294839 (= c!363867 (= lt!851469 lt!851467))))

(declare-fun b!2294840 () Bool)

(declare-fun tp!727751 () Bool)

(assert (=> b!2294840 (= e!1470536 (and tp!727751 (inv!36930 (tag!4865 (rule!6713 (h!32725 tokens!456)))) (inv!36933 (transformation!4375 (rule!6713 (h!32725 tokens!456)))) e!1470521))))

(declare-fun e!1470522 () Bool)

(assert (=> b!2294841 (= e!1470522 (and tp!727761 tp!727762))))

(declare-fun b!2294842 () Bool)

(declare-fun res!981178 () Bool)

(assert (=> b!2294842 (=> (not res!981178) (not e!1470516))))

(declare-fun contains!4755 (List!27417 Rule!8550) Bool)

(assert (=> b!2294842 (= res!981178 (contains!4755 rules!1750 r!2363))))

(declare-fun tp!727759 () Bool)

(declare-fun b!2294843 () Bool)

(assert (=> b!2294843 (= e!1470535 (and tp!727759 (inv!36930 (tag!4865 (h!32724 rules!1750))) (inv!36933 (transformation!4375 (h!32724 rules!1750))) e!1470522))))

(declare-fun b!2294844 () Bool)

(declare-fun res!981188 () Bool)

(assert (=> b!2294844 (=> (not res!981188) (not e!1470532))))

(assert (=> b!2294844 (= res!981188 e!1470528)))

(declare-fun res!981192 () Bool)

(assert (=> b!2294844 (=> res!981192 e!1470528)))

(assert (=> b!2294844 (= res!981192 lt!851466)))

(declare-fun tp!727756 () Bool)

(declare-fun b!2294845 () Bool)

(assert (=> b!2294845 (= e!1470530 (and tp!727756 (inv!36930 (tag!4865 otherR!12)) (inv!36933 (transformation!4375 otherR!12)) e!1470539))))

(declare-fun b!2294846 () Bool)

(declare-fun res!981186 () Bool)

(assert (=> b!2294846 (=> (not res!981186) (not e!1470516))))

(assert (=> b!2294846 (= res!981186 (contains!4755 rules!1750 otherR!12))))

(assert (= (and start!225388 res!981183) b!2294817))

(assert (= (and b!2294817 res!981190) b!2294835))

(assert (= (and b!2294835 res!981187) b!2294842))

(assert (= (and b!2294842 res!981178) b!2294846))

(assert (= (and b!2294846 res!981186) b!2294829))

(assert (= (and b!2294829 res!981184) b!2294828))

(assert (= (and b!2294828 (not res!981189)) b!2294826))

(assert (= (and b!2294828 res!981181) b!2294844))

(assert (= (and b!2294844 (not res!981192)) b!2294820))

(assert (= (and b!2294844 res!981188) b!2294837))

(assert (= (and b!2294837 res!981185) b!2294831))

(assert (= (and b!2294831 res!981182) b!2294815))

(assert (= (and b!2294815 res!981191) b!2294816))

(assert (= (and b!2294815 (not res!981179)) b!2294823))

(assert (= (and b!2294823 (not res!981193)) b!2294839))

(assert (= (and b!2294839 c!363867) b!2294822))

(assert (= (and b!2294839 (not c!363867)) b!2294818))

(assert (= (and b!2294839 (not res!981180)) b!2294819))

(assert (= (and start!225388 ((_ is Cons!27322) input!1722)) b!2294825))

(assert (= b!2294845 b!2294838))

(assert (= start!225388 b!2294845))

(assert (= (and start!225388 ((_ is Cons!27322) suffix!886)) b!2294836))

(assert (= (and start!225388 ((_ is Cons!27322) otherP!12)) b!2294833))

(assert (= b!2294843 b!2294841))

(assert (= b!2294824 b!2294843))

(assert (= (and start!225388 ((_ is Cons!27323) rules!1750)) b!2294824))

(assert (= b!2294821 b!2294832))

(assert (= start!225388 b!2294821))

(assert (= b!2294840 b!2294830))

(assert (= b!2294827 b!2294840))

(assert (= b!2294834 b!2294827))

(assert (= (and start!225388 ((_ is Cons!27324) tokens!456)) b!2294834))

(declare-fun m!2722415 () Bool)

(assert (=> b!2294817 m!2722415))

(declare-fun m!2722417 () Bool)

(assert (=> b!2294845 m!2722417))

(declare-fun m!2722419 () Bool)

(assert (=> b!2294845 m!2722419))

(declare-fun m!2722421 () Bool)

(assert (=> b!2294840 m!2722421))

(declare-fun m!2722423 () Bool)

(assert (=> b!2294840 m!2722423))

(declare-fun m!2722425 () Bool)

(assert (=> b!2294821 m!2722425))

(declare-fun m!2722427 () Bool)

(assert (=> b!2294821 m!2722427))

(declare-fun m!2722429 () Bool)

(assert (=> b!2294842 m!2722429))

(declare-fun m!2722431 () Bool)

(assert (=> b!2294820 m!2722431))

(declare-fun m!2722433 () Bool)

(assert (=> b!2294823 m!2722433))

(declare-fun m!2722435 () Bool)

(assert (=> b!2294823 m!2722435))

(declare-fun m!2722437 () Bool)

(assert (=> b!2294823 m!2722437))

(declare-fun m!2722439 () Bool)

(assert (=> b!2294823 m!2722439))

(declare-fun m!2722441 () Bool)

(assert (=> b!2294828 m!2722441))

(declare-fun m!2722443 () Bool)

(assert (=> b!2294834 m!2722443))

(assert (=> b!2294816 m!2722431))

(assert (=> b!2294816 m!2722431))

(declare-fun m!2722445 () Bool)

(assert (=> b!2294816 m!2722445))

(assert (=> b!2294816 m!2722445))

(declare-fun m!2722447 () Bool)

(assert (=> b!2294816 m!2722447))

(assert (=> b!2294816 m!2722447))

(declare-fun m!2722449 () Bool)

(assert (=> b!2294816 m!2722449))

(declare-fun m!2722451 () Bool)

(assert (=> b!2294843 m!2722451))

(declare-fun m!2722453 () Bool)

(assert (=> b!2294843 m!2722453))

(declare-fun m!2722455 () Bool)

(assert (=> b!2294835 m!2722455))

(declare-fun m!2722457 () Bool)

(assert (=> b!2294837 m!2722457))

(declare-fun m!2722459 () Bool)

(assert (=> b!2294827 m!2722459))

(declare-fun m!2722461 () Bool)

(assert (=> b!2294819 m!2722461))

(declare-fun m!2722463 () Bool)

(assert (=> b!2294829 m!2722463))

(declare-fun m!2722465 () Bool)

(assert (=> b!2294829 m!2722465))

(declare-fun m!2722467 () Bool)

(assert (=> b!2294829 m!2722467))

(assert (=> b!2294829 m!2722467))

(declare-fun m!2722469 () Bool)

(assert (=> b!2294829 m!2722469))

(declare-fun m!2722471 () Bool)

(assert (=> b!2294846 m!2722471))

(declare-fun m!2722473 () Bool)

(assert (=> b!2294822 m!2722473))

(assert (=> b!2294826 m!2722431))

(assert (=> b!2294826 m!2722431))

(assert (=> b!2294826 m!2722445))

(assert (=> b!2294826 m!2722445))

(declare-fun m!2722475 () Bool)

(assert (=> b!2294826 m!2722475))

(declare-fun m!2722477 () Bool)

(assert (=> b!2294826 m!2722477))

(declare-fun m!2722479 () Bool)

(assert (=> b!2294815 m!2722479))

(declare-fun m!2722481 () Bool)

(assert (=> b!2294815 m!2722481))

(check-sat (not b_next!69783) (not b!2294846) (not b!2294815) tp_is_empty!10667 (not b!2294845) (not b!2294840) (not b!2294819) b_and!182509 (not b!2294835) b_and!182499 (not b!2294824) (not b!2294829) (not b_next!69777) (not b!2294836) b_and!182503 (not b!2294820) (not b!2294825) b_and!182505 (not b_next!69785) (not b!2294826) (not b!2294816) (not b_next!69781) (not b!2294828) (not b!2294837) (not b!2294822) (not b!2294834) b_and!182507 (not b!2294833) (not b!2294817) (not b_next!69787) (not b!2294842) (not b!2294843) (not b_next!69773) (not b!2294821) (not b!2294823) (not b!2294827) (not b_next!69779) (not b_next!69775) b_and!182497 b_and!182511 b_and!182501)
(check-sat (not b_next!69783) (not b_next!69785) (not b_next!69781) b_and!182507 (not b_next!69787) (not b_next!69773) b_and!182509 b_and!182499 (not b_next!69777) b_and!182503 b_and!182505 (not b_next!69779) (not b_next!69775) b_and!182497 b_and!182511 b_and!182501)
