; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!225184 () Bool)

(assert start!225184)

(declare-fun b!2293549 () Bool)

(declare-fun b_free!69005 () Bool)

(declare-fun b_next!69709 () Bool)

(assert (=> b!2293549 (= b_free!69005 (not b_next!69709))))

(declare-fun tp!727244 () Bool)

(declare-fun b_and!182377 () Bool)

(assert (=> b!2293549 (= tp!727244 b_and!182377)))

(declare-fun b_free!69007 () Bool)

(declare-fun b_next!69711 () Bool)

(assert (=> b!2293549 (= b_free!69007 (not b_next!69711))))

(declare-fun tp!727231 () Bool)

(declare-fun b_and!182379 () Bool)

(assert (=> b!2293549 (= tp!727231 b_and!182379)))

(declare-fun b!2293534 () Bool)

(declare-fun b_free!69009 () Bool)

(declare-fun b_next!69713 () Bool)

(assert (=> b!2293534 (= b_free!69009 (not b_next!69713))))

(declare-fun tp!727232 () Bool)

(declare-fun b_and!182381 () Bool)

(assert (=> b!2293534 (= tp!727232 b_and!182381)))

(declare-fun b_free!69011 () Bool)

(declare-fun b_next!69715 () Bool)

(assert (=> b!2293534 (= b_free!69011 (not b_next!69715))))

(declare-fun tp!727239 () Bool)

(declare-fun b_and!182383 () Bool)

(assert (=> b!2293534 (= tp!727239 b_and!182383)))

(declare-fun b!2293559 () Bool)

(declare-fun b_free!69013 () Bool)

(declare-fun b_next!69717 () Bool)

(assert (=> b!2293559 (= b_free!69013 (not b_next!69717))))

(declare-fun tp!727240 () Bool)

(declare-fun b_and!182385 () Bool)

(assert (=> b!2293559 (= tp!727240 b_and!182385)))

(declare-fun b_free!69015 () Bool)

(declare-fun b_next!69719 () Bool)

(assert (=> b!2293559 (= b_free!69015 (not b_next!69719))))

(declare-fun tp!727246 () Bool)

(declare-fun b_and!182387 () Bool)

(assert (=> b!2293559 (= tp!727246 b_and!182387)))

(declare-fun b!2293553 () Bool)

(declare-fun b_free!69017 () Bool)

(declare-fun b_next!69721 () Bool)

(assert (=> b!2293553 (= b_free!69017 (not b_next!69721))))

(declare-fun tp!727230 () Bool)

(declare-fun b_and!182389 () Bool)

(assert (=> b!2293553 (= tp!727230 b_and!182389)))

(declare-fun b_free!69019 () Bool)

(declare-fun b_next!69723 () Bool)

(assert (=> b!2293553 (= b_free!69019 (not b_next!69723))))

(declare-fun tp!727237 () Bool)

(declare-fun b_and!182391 () Bool)

(assert (=> b!2293553 (= tp!727237 b_and!182391)))

(declare-fun b!2293529 () Bool)

(declare-fun e!1469701 () Bool)

(declare-datatypes ((LexerInterface!3970 0))(
  ( (LexerInterfaceExt!3967 (__x!18130 Int)) (Lexer!3968) )
))
(declare-fun thiss!16613 () LexerInterface!3970)

(declare-datatypes ((List!27405 0))(
  ( (Nil!27311) (Cons!27311 (h!32712 (_ BitVec 16)) (t!205087 List!27405)) )
))
(declare-datatypes ((TokenValue!4535 0))(
  ( (FloatLiteralValue!9070 (text!32190 List!27405)) (TokenValueExt!4534 (__x!18131 Int)) (Broken!22675 (value!138424 List!27405)) (Object!4628) (End!4535) (Def!4535) (Underscore!4535) (Match!4535) (Else!4535) (Error!4535) (Case!4535) (If!4535) (Extends!4535) (Abstract!4535) (Class!4535) (Val!4535) (DelimiterValue!9070 (del!4595 List!27405)) (KeywordValue!4541 (value!138425 List!27405)) (CommentValue!9070 (value!138426 List!27405)) (WhitespaceValue!9070 (value!138427 List!27405)) (IndentationValue!4535 (value!138428 List!27405)) (String!29778) (Int32!4535) (Broken!22676 (value!138429 List!27405)) (Boolean!4536) (Unit!40193) (OperatorValue!4538 (op!4595 List!27405)) (IdentifierValue!9070 (value!138430 List!27405)) (IdentifierValue!9071 (value!138431 List!27405)) (WhitespaceValue!9071 (value!138432 List!27405)) (True!9070) (False!9070) (Broken!22677 (value!138433 List!27405)) (Broken!22678 (value!138434 List!27405)) (True!9071) (RightBrace!4535) (RightBracket!4535) (Colon!4535) (Null!4535) (Comma!4535) (LeftBracket!4535) (False!9071) (LeftBrace!4535) (ImaginaryLiteralValue!4535 (text!32191 List!27405)) (StringLiteralValue!13605 (value!138435 List!27405)) (EOFValue!4535 (value!138436 List!27405)) (IdentValue!4535 (value!138437 List!27405)) (DelimiterValue!9071 (value!138438 List!27405)) (DedentValue!4535 (value!138439 List!27405)) (NewLineValue!4535 (value!138440 List!27405)) (IntegerValue!13605 (value!138441 (_ BitVec 32)) (text!32192 List!27405)) (IntegerValue!13606 (value!138442 Int) (text!32193 List!27405)) (Times!4535) (Or!4535) (Equal!4535) (Minus!4535) (Broken!22679 (value!138443 List!27405)) (And!4535) (Div!4535) (LessEqual!4535) (Mod!4535) (Concat!11256) (Not!4535) (Plus!4535) (SpaceValue!4535 (value!138444 List!27405)) (IntegerValue!13607 (value!138445 Int) (text!32194 List!27405)) (StringLiteralValue!13606 (text!32195 List!27405)) (FloatLiteralValue!9071 (text!32196 List!27405)) (BytesLiteralValue!4535 (value!138446 List!27405)) (CommentValue!9071 (value!138447 List!27405)) (StringLiteralValue!13607 (value!138448 List!27405)) (ErrorTokenValue!4535 (msg!4596 List!27405)) )
))
(declare-datatypes ((C!13588 0))(
  ( (C!13589 (val!7842 Int)) )
))
(declare-datatypes ((List!27406 0))(
  ( (Nil!27312) (Cons!27312 (h!32713 C!13588) (t!205088 List!27406)) )
))
(declare-datatypes ((IArray!17793 0))(
  ( (IArray!17794 (innerList!8954 List!27406)) )
))
(declare-datatypes ((Conc!8894 0))(
  ( (Node!8894 (left!20701 Conc!8894) (right!21031 Conc!8894) (csize!18018 Int) (cheight!9105 Int)) (Leaf!13066 (xs!11836 IArray!17793) (csize!18019 Int)) (Empty!8894) )
))
(declare-datatypes ((BalanceConc!17516 0))(
  ( (BalanceConc!17517 (c!363650 Conc!8894)) )
))
(declare-datatypes ((Regex!6721 0))(
  ( (ElementMatch!6721 (c!363651 C!13588)) (Concat!11257 (regOne!13954 Regex!6721) (regTwo!13954 Regex!6721)) (EmptyExpr!6721) (Star!6721 (reg!7050 Regex!6721)) (EmptyLang!6721) (Union!6721 (regOne!13955 Regex!6721) (regTwo!13955 Regex!6721)) )
))
(declare-datatypes ((String!29779 0))(
  ( (String!29780 (value!138449 String)) )
))
(declare-datatypes ((TokenValueInjection!8610 0))(
  ( (TokenValueInjection!8611 (toValue!6167 Int) (toChars!6026 Int)) )
))
(declare-datatypes ((Rule!8546 0))(
  ( (Rule!8547 (regex!4373 Regex!6721) (tag!4863 String!29779) (isSeparator!4373 Bool) (transformation!4373 TokenValueInjection!8610)) )
))
(declare-datatypes ((List!27407 0))(
  ( (Nil!27313) (Cons!27313 (h!32714 Rule!8546) (t!205089 List!27407)) )
))
(declare-fun rules!1750 () List!27407)

(declare-fun rulesValidInductive!1541 (LexerInterface!3970 List!27407) Bool)

(assert (=> b!2293529 (= e!1469701 (rulesValidInductive!1541 thiss!16613 rules!1750))))

(declare-fun b!2293530 () Bool)

(declare-fun e!1469711 () Bool)

(declare-datatypes ((Token!8224 0))(
  ( (Token!8225 (value!138450 TokenValue!4535) (rule!6711 Rule!8546) (size!21508 Int) (originalCharacters!5143 List!27406)) )
))
(declare-datatypes ((List!27408 0))(
  ( (Nil!27314) (Cons!27314 (h!32715 Token!8224) (t!205090 List!27408)) )
))
(declare-fun tokens!456 () List!27408)

(declare-fun otherP!12 () List!27406)

(declare-fun size!21509 (BalanceConc!17516) Int)

(declare-fun charsOf!2761 (Token!8224) BalanceConc!17516)

(declare-fun head!5004 (List!27408) Token!8224)

(declare-fun size!21510 (List!27406) Int)

(assert (=> b!2293530 (= e!1469711 (<= (size!21509 (charsOf!2761 (head!5004 tokens!456))) (size!21510 otherP!12)))))

(declare-fun b!2293531 () Bool)

(declare-fun res!980762 () Bool)

(declare-fun e!1469728 () Bool)

(assert (=> b!2293531 (=> (not res!980762) (not e!1469728))))

(declare-fun otherR!12 () Rule!8546)

(declare-fun contains!4751 (List!27407 Rule!8546) Bool)

(assert (=> b!2293531 (= res!980762 (contains!4751 rules!1750 otherR!12))))

(declare-fun b!2293532 () Bool)

(declare-fun e!1469719 () Bool)

(declare-fun r!2363 () Rule!8546)

(declare-fun matchR!2978 (Regex!6721 List!27406) Bool)

(declare-fun list!10708 (BalanceConc!17516) List!27406)

(assert (=> b!2293532 (= e!1469719 (not (matchR!2978 (regex!4373 r!2363) (list!10708 (charsOf!2761 (head!5004 tokens!456))))))))

(declare-fun b!2293533 () Bool)

(declare-fun res!980757 () Bool)

(declare-fun e!1469726 () Bool)

(assert (=> b!2293533 (=> (not res!980757) (not e!1469726))))

(declare-fun e!1469724 () Bool)

(assert (=> b!2293533 (= res!980757 e!1469724)))

(declare-fun res!980756 () Bool)

(assert (=> b!2293533 (=> res!980756 e!1469724)))

(declare-fun lt!851063 () Bool)

(assert (=> b!2293533 (= res!980756 lt!851063)))

(declare-fun e!1469721 () Bool)

(assert (=> b!2293534 (= e!1469721 (and tp!727232 tp!727239))))

(declare-fun b!2293535 () Bool)

(declare-datatypes ((Unit!40194 0))(
  ( (Unit!40195) )
))
(declare-fun e!1469712 () Unit!40194)

(declare-fun Unit!40196 () Unit!40194)

(assert (=> b!2293535 (= e!1469712 Unit!40196)))

(declare-fun b!2293536 () Bool)

(declare-fun res!980760 () Bool)

(assert (=> b!2293536 (=> (not res!980760) (not e!1469726))))

(declare-fun input!1722 () List!27406)

(declare-fun isPrefix!2363 (List!27406 List!27406) Bool)

(assert (=> b!2293536 (= res!980760 (isPrefix!2363 otherP!12 input!1722))))

(declare-fun b!2293537 () Bool)

(declare-fun e!1469706 () Bool)

(declare-fun tp_is_empty!10663 () Bool)

(declare-fun tp!727243 () Bool)

(assert (=> b!2293537 (= e!1469706 (and tp_is_empty!10663 tp!727243))))

(declare-fun tp!727238 () Bool)

(declare-fun e!1469704 () Bool)

(declare-fun e!1469718 () Bool)

(declare-fun b!2293538 () Bool)

(declare-fun inv!21 (TokenValue!4535) Bool)

(assert (=> b!2293538 (= e!1469704 (and (inv!21 (value!138450 (h!32715 tokens!456))) e!1469718 tp!727238))))

(declare-fun e!1469713 () Bool)

(declare-fun e!1469725 () Bool)

(declare-fun tp!727234 () Bool)

(declare-fun b!2293539 () Bool)

(declare-fun inv!36913 (String!29779) Bool)

(declare-fun inv!36916 (TokenValueInjection!8610) Bool)

(assert (=> b!2293539 (= e!1469713 (and tp!727234 (inv!36913 (tag!4863 otherR!12)) (inv!36916 (transformation!4373 otherR!12)) e!1469725))))

(declare-fun e!1469705 () Bool)

(declare-fun e!1469717 () Bool)

(declare-fun tp!727233 () Bool)

(declare-fun b!2293540 () Bool)

(assert (=> b!2293540 (= e!1469705 (and tp!727233 (inv!36913 (tag!4863 (h!32714 rules!1750))) (inv!36916 (transformation!4373 (h!32714 rules!1750))) e!1469717))))

(declare-fun b!2293541 () Bool)

(declare-fun res!980769 () Bool)

(assert (=> b!2293541 (=> (not res!980769) (not e!1469728))))

(declare-fun isEmpty!15559 (List!27407) Bool)

(assert (=> b!2293541 (= res!980769 (not (isEmpty!15559 rules!1750)))))

(declare-fun e!1469702 () Bool)

(declare-fun tp!727245 () Bool)

(declare-fun b!2293542 () Bool)

(declare-fun inv!36917 (Token!8224) Bool)

(assert (=> b!2293542 (= e!1469702 (and (inv!36917 (h!32715 tokens!456)) e!1469704 tp!727245))))

(declare-fun b!2293543 () Bool)

(declare-fun e!1469720 () Bool)

(declare-fun e!1469710 () Bool)

(assert (=> b!2293543 (= e!1469720 e!1469710)))

(declare-fun res!980764 () Bool)

(assert (=> b!2293543 (=> res!980764 e!1469710)))

(declare-fun lt!851060 () Int)

(declare-fun lt!851058 () Int)

(assert (=> b!2293543 (= res!980764 (> lt!851060 lt!851058))))

(declare-fun getIndex!386 (List!27407 Rule!8546) Int)

(assert (=> b!2293543 (= lt!851058 (getIndex!386 rules!1750 otherR!12))))

(assert (=> b!2293543 (= lt!851060 (getIndex!386 rules!1750 r!2363))))

(declare-fun ruleValid!1463 (LexerInterface!3970 Rule!8546) Bool)

(assert (=> b!2293543 (ruleValid!1463 thiss!16613 otherR!12)))

(declare-fun lt!851059 () Unit!40194)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!868 (LexerInterface!3970 Rule!8546 List!27407) Unit!40194)

(assert (=> b!2293543 (= lt!851059 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!868 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2293544 () Bool)

(declare-fun e!1469709 () Bool)

(assert (=> b!2293544 (= e!1469709 e!1469726)))

(declare-fun res!980765 () Bool)

(assert (=> b!2293544 (=> (not res!980765) (not e!1469726))))

(assert (=> b!2293544 (= res!980765 e!1469711)))

(declare-fun res!980771 () Bool)

(assert (=> b!2293544 (=> res!980771 e!1469711)))

(assert (=> b!2293544 (= res!980771 lt!851063)))

(declare-fun isEmpty!15560 (List!27408) Bool)

(assert (=> b!2293544 (= lt!851063 (isEmpty!15560 tokens!456))))

(declare-fun b!2293545 () Bool)

(assert (=> b!2293545 (= e!1469710 e!1469701)))

(declare-fun res!980770 () Bool)

(assert (=> b!2293545 (=> res!980770 e!1469701)))

(get-info :version)

(assert (=> b!2293545 (= res!980770 (not ((_ is Nil!27314) tokens!456)))))

(declare-fun lt!851057 () Unit!40194)

(assert (=> b!2293545 (= lt!851057 e!1469712)))

(declare-fun c!363649 () Bool)

(assert (=> b!2293545 (= c!363649 (= lt!851060 lt!851058))))

(declare-fun b!2293546 () Bool)

(declare-fun res!980761 () Bool)

(assert (=> b!2293546 (=> (not res!980761) (not e!1469728))))

(declare-fun rulesInvariant!3472 (LexerInterface!3970 List!27407) Bool)

(assert (=> b!2293546 (= res!980761 (rulesInvariant!3472 thiss!16613 rules!1750))))

(declare-fun b!2293547 () Bool)

(declare-fun e!1469715 () Bool)

(declare-fun tp!727235 () Bool)

(assert (=> b!2293547 (= e!1469718 (and tp!727235 (inv!36913 (tag!4863 (rule!6711 (h!32715 tokens!456)))) (inv!36916 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) e!1469715))))

(declare-fun b!2293548 () Bool)

(assert (=> b!2293548 (= e!1469726 (not e!1469720))))

(declare-fun res!980759 () Bool)

(assert (=> b!2293548 (=> res!980759 e!1469720)))

(assert (=> b!2293548 (= res!980759 e!1469719)))

(declare-fun res!980768 () Bool)

(assert (=> b!2293548 (=> (not res!980768) (not e!1469719))))

(assert (=> b!2293548 (= res!980768 (not lt!851063))))

(assert (=> b!2293548 (ruleValid!1463 thiss!16613 r!2363)))

(declare-fun lt!851062 () Unit!40194)

(assert (=> b!2293548 (= lt!851062 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!868 thiss!16613 r!2363 rules!1750))))

(assert (=> b!2293549 (= e!1469715 (and tp!727244 tp!727231))))

(declare-fun b!2293550 () Bool)

(declare-fun res!980758 () Bool)

(assert (=> b!2293550 (=> (not res!980758) (not e!1469728))))

(assert (=> b!2293550 (= res!980758 (contains!4751 rules!1750 r!2363))))

(declare-fun b!2293551 () Bool)

(declare-fun e!1469723 () Bool)

(declare-fun tp!727241 () Bool)

(assert (=> b!2293551 (= e!1469723 (and tp_is_empty!10663 tp!727241))))

(declare-fun b!2293552 () Bool)

(declare-fun res!980766 () Bool)

(assert (=> b!2293552 (=> (not res!980766) (not e!1469726))))

(assert (=> b!2293552 (= res!980766 (not (= r!2363 otherR!12)))))

(assert (=> b!2293553 (= e!1469717 (and tp!727230 tp!727237))))

(declare-fun b!2293554 () Bool)

(declare-fun Unit!40197 () Unit!40194)

(assert (=> b!2293554 (= e!1469712 Unit!40197)))

(declare-fun lt!851061 () Unit!40194)

(declare-fun lemmaSameIndexThenSameElement!166 (List!27407 Rule!8546 Rule!8546) Unit!40194)

(assert (=> b!2293554 (= lt!851061 (lemmaSameIndexThenSameElement!166 rules!1750 r!2363 otherR!12))))

(assert (=> b!2293554 false))

(declare-fun b!2293555 () Bool)

(declare-fun e!1469714 () Bool)

(declare-fun tp!727247 () Bool)

(assert (=> b!2293555 (= e!1469714 (and e!1469705 tp!727247))))

(declare-fun b!2293556 () Bool)

(assert (=> b!2293556 (= e!1469728 e!1469709)))

(declare-fun res!980763 () Bool)

(assert (=> b!2293556 (=> (not res!980763) (not e!1469709))))

(declare-datatypes ((IArray!17795 0))(
  ( (IArray!17796 (innerList!8955 List!27408)) )
))
(declare-datatypes ((Conc!8895 0))(
  ( (Node!8895 (left!20702 Conc!8895) (right!21032 Conc!8895) (csize!18020 Int) (cheight!9106 Int)) (Leaf!13067 (xs!11837 IArray!17795) (csize!18021 Int)) (Empty!8895) )
))
(declare-datatypes ((BalanceConc!17518 0))(
  ( (BalanceConc!17519 (c!363652 Conc!8895)) )
))
(declare-datatypes ((tuple2!27140 0))(
  ( (tuple2!27141 (_1!16080 BalanceConc!17518) (_2!16080 BalanceConc!17516)) )
))
(declare-fun lt!851064 () tuple2!27140)

(declare-fun suffix!886 () List!27406)

(declare-datatypes ((tuple2!27142 0))(
  ( (tuple2!27143 (_1!16081 List!27408) (_2!16081 List!27406)) )
))
(declare-fun list!10709 (BalanceConc!17518) List!27408)

(assert (=> b!2293556 (= res!980763 (= (tuple2!27143 (list!10709 (_1!16080 lt!851064)) (list!10708 (_2!16080 lt!851064))) (tuple2!27143 tokens!456 suffix!886)))))

(declare-fun lex!1809 (LexerInterface!3970 List!27407 BalanceConc!17516) tuple2!27140)

(declare-fun seqFromList!3077 (List!27406) BalanceConc!17516)

(assert (=> b!2293556 (= lt!851064 (lex!1809 thiss!16613 rules!1750 (seqFromList!3077 input!1722)))))

(declare-fun b!2293557 () Bool)

(assert (=> b!2293557 (= e!1469724 (= (rule!6711 (head!5004 tokens!456)) r!2363))))

(declare-fun b!2293558 () Bool)

(declare-fun e!1469707 () Bool)

(declare-fun tp!727242 () Bool)

(assert (=> b!2293558 (= e!1469707 (and tp_is_empty!10663 tp!727242))))

(declare-fun res!980767 () Bool)

(assert (=> start!225184 (=> (not res!980767) (not e!1469728))))

(assert (=> start!225184 (= res!980767 ((_ is Lexer!3968) thiss!16613))))

(assert (=> start!225184 e!1469728))

(assert (=> start!225184 true))

(assert (=> start!225184 e!1469723))

(assert (=> start!225184 e!1469713))

(assert (=> start!225184 e!1469706))

(assert (=> start!225184 e!1469707))

(assert (=> start!225184 e!1469714))

(declare-fun e!1469716 () Bool)

(assert (=> start!225184 e!1469716))

(assert (=> start!225184 e!1469702))

(assert (=> b!2293559 (= e!1469725 (and tp!727240 tp!727246))))

(declare-fun b!2293560 () Bool)

(declare-fun tp!727236 () Bool)

(assert (=> b!2293560 (= e!1469716 (and tp!727236 (inv!36913 (tag!4863 r!2363)) (inv!36916 (transformation!4373 r!2363)) e!1469721))))

(assert (= (and start!225184 res!980767) b!2293541))

(assert (= (and b!2293541 res!980769) b!2293546))

(assert (= (and b!2293546 res!980761) b!2293550))

(assert (= (and b!2293550 res!980758) b!2293531))

(assert (= (and b!2293531 res!980762) b!2293556))

(assert (= (and b!2293556 res!980763) b!2293544))

(assert (= (and b!2293544 (not res!980771)) b!2293530))

(assert (= (and b!2293544 res!980765) b!2293533))

(assert (= (and b!2293533 (not res!980756)) b!2293557))

(assert (= (and b!2293533 res!980757) b!2293536))

(assert (= (and b!2293536 res!980760) b!2293552))

(assert (= (and b!2293552 res!980766) b!2293548))

(assert (= (and b!2293548 res!980768) b!2293532))

(assert (= (and b!2293548 (not res!980759)) b!2293543))

(assert (= (and b!2293543 (not res!980764)) b!2293545))

(assert (= (and b!2293545 c!363649) b!2293554))

(assert (= (and b!2293545 (not c!363649)) b!2293535))

(assert (= (and b!2293545 (not res!980770)) b!2293529))

(assert (= (and start!225184 ((_ is Cons!27312) input!1722)) b!2293551))

(assert (= b!2293539 b!2293559))

(assert (= start!225184 b!2293539))

(assert (= (and start!225184 ((_ is Cons!27312) suffix!886)) b!2293537))

(assert (= (and start!225184 ((_ is Cons!27312) otherP!12)) b!2293558))

(assert (= b!2293540 b!2293553))

(assert (= b!2293555 b!2293540))

(assert (= (and start!225184 ((_ is Cons!27313) rules!1750)) b!2293555))

(assert (= b!2293560 b!2293534))

(assert (= start!225184 b!2293560))

(assert (= b!2293547 b!2293549))

(assert (= b!2293538 b!2293547))

(assert (= b!2293542 b!2293538))

(assert (= (and start!225184 ((_ is Cons!27314) tokens!456)) b!2293542))

(declare-fun m!2721307 () Bool)

(assert (=> b!2293557 m!2721307))

(declare-fun m!2721309 () Bool)

(assert (=> b!2293540 m!2721309))

(declare-fun m!2721311 () Bool)

(assert (=> b!2293540 m!2721311))

(declare-fun m!2721313 () Bool)

(assert (=> b!2293548 m!2721313))

(declare-fun m!2721315 () Bool)

(assert (=> b!2293548 m!2721315))

(assert (=> b!2293532 m!2721307))

(assert (=> b!2293532 m!2721307))

(declare-fun m!2721317 () Bool)

(assert (=> b!2293532 m!2721317))

(assert (=> b!2293532 m!2721317))

(declare-fun m!2721319 () Bool)

(assert (=> b!2293532 m!2721319))

(assert (=> b!2293532 m!2721319))

(declare-fun m!2721321 () Bool)

(assert (=> b!2293532 m!2721321))

(declare-fun m!2721323 () Bool)

(assert (=> b!2293539 m!2721323))

(declare-fun m!2721325 () Bool)

(assert (=> b!2293539 m!2721325))

(declare-fun m!2721327 () Bool)

(assert (=> b!2293550 m!2721327))

(declare-fun m!2721329 () Bool)

(assert (=> b!2293536 m!2721329))

(declare-fun m!2721331 () Bool)

(assert (=> b!2293543 m!2721331))

(declare-fun m!2721333 () Bool)

(assert (=> b!2293543 m!2721333))

(declare-fun m!2721335 () Bool)

(assert (=> b!2293543 m!2721335))

(declare-fun m!2721337 () Bool)

(assert (=> b!2293543 m!2721337))

(declare-fun m!2721339 () Bool)

(assert (=> b!2293544 m!2721339))

(declare-fun m!2721341 () Bool)

(assert (=> b!2293560 m!2721341))

(declare-fun m!2721343 () Bool)

(assert (=> b!2293560 m!2721343))

(declare-fun m!2721345 () Bool)

(assert (=> b!2293538 m!2721345))

(declare-fun m!2721347 () Bool)

(assert (=> b!2293541 m!2721347))

(declare-fun m!2721349 () Bool)

(assert (=> b!2293542 m!2721349))

(declare-fun m!2721351 () Bool)

(assert (=> b!2293547 m!2721351))

(declare-fun m!2721353 () Bool)

(assert (=> b!2293547 m!2721353))

(declare-fun m!2721355 () Bool)

(assert (=> b!2293554 m!2721355))

(declare-fun m!2721357 () Bool)

(assert (=> b!2293556 m!2721357))

(declare-fun m!2721359 () Bool)

(assert (=> b!2293556 m!2721359))

(declare-fun m!2721361 () Bool)

(assert (=> b!2293556 m!2721361))

(assert (=> b!2293556 m!2721361))

(declare-fun m!2721363 () Bool)

(assert (=> b!2293556 m!2721363))

(declare-fun m!2721365 () Bool)

(assert (=> b!2293529 m!2721365))

(declare-fun m!2721367 () Bool)

(assert (=> b!2293546 m!2721367))

(assert (=> b!2293530 m!2721307))

(assert (=> b!2293530 m!2721307))

(assert (=> b!2293530 m!2721317))

(assert (=> b!2293530 m!2721317))

(declare-fun m!2721369 () Bool)

(assert (=> b!2293530 m!2721369))

(declare-fun m!2721371 () Bool)

(assert (=> b!2293530 m!2721371))

(declare-fun m!2721373 () Bool)

(assert (=> b!2293531 m!2721373))

(check-sat (not b!2293560) (not b!2293557) (not b!2293550) (not b_next!69721) (not b!2293556) (not b!2293537) (not b_next!69719) b_and!182387 (not b_next!69717) (not b!2293548) (not b!2293531) (not b!2293554) (not b!2293542) (not b!2293547) (not b!2293543) (not b_next!69723) tp_is_empty!10663 (not b_next!69713) (not b!2293555) (not b_next!69715) (not b!2293529) b_and!182379 (not b!2293544) (not b!2293530) (not b!2293551) (not b!2293539) b_and!182385 (not b_next!69711) (not b!2293532) b_and!182381 b_and!182389 (not b!2293538) b_and!182377 (not b!2293540) (not b!2293536) (not b!2293546) (not b!2293558) b_and!182391 (not b!2293541) (not b_next!69709) b_and!182383)
(check-sat (not b_next!69723) (not b_next!69721) (not b_next!69713) b_and!182381 (not b_next!69719) b_and!182387 (not b_next!69717) b_and!182391 (not b_next!69715) b_and!182379 b_and!182385 (not b_next!69711) b_and!182389 b_and!182377 (not b_next!69709) b_and!182383)
(get-model)

(declare-fun d!678418 () Bool)

(declare-fun list!10712 (Conc!8895) List!27408)

(assert (=> d!678418 (= (list!10709 (_1!16080 lt!851064)) (list!10712 (c!363652 (_1!16080 lt!851064))))))

(declare-fun bs!457208 () Bool)

(assert (= bs!457208 d!678418))

(declare-fun m!2721379 () Bool)

(assert (=> bs!457208 m!2721379))

(assert (=> b!2293556 d!678418))

(declare-fun d!678420 () Bool)

(declare-fun list!10713 (Conc!8894) List!27406)

(assert (=> d!678420 (= (list!10708 (_2!16080 lt!851064)) (list!10713 (c!363650 (_2!16080 lt!851064))))))

(declare-fun bs!457209 () Bool)

(assert (= bs!457209 d!678420))

(declare-fun m!2721381 () Bool)

(assert (=> bs!457209 m!2721381))

(assert (=> b!2293556 d!678420))

(declare-fun b!2293601 () Bool)

(declare-fun e!1469757 () Bool)

(declare-fun e!1469759 () Bool)

(assert (=> b!2293601 (= e!1469757 e!1469759)))

(declare-fun res!980805 () Bool)

(declare-fun lt!851081 () tuple2!27140)

(assert (=> b!2293601 (= res!980805 (< (size!21509 (_2!16080 lt!851081)) (size!21509 (seqFromList!3077 input!1722))))))

(assert (=> b!2293601 (=> (not res!980805) (not e!1469759))))

(declare-fun e!1469758 () Bool)

(declare-fun b!2293602 () Bool)

(declare-fun lexList!1116 (LexerInterface!3970 List!27407 List!27406) tuple2!27142)

(assert (=> b!2293602 (= e!1469758 (= (list!10708 (_2!16080 lt!851081)) (_2!16081 (lexList!1116 thiss!16613 rules!1750 (list!10708 (seqFromList!3077 input!1722))))))))

(declare-fun d!678422 () Bool)

(assert (=> d!678422 e!1469758))

(declare-fun res!980803 () Bool)

(assert (=> d!678422 (=> (not res!980803) (not e!1469758))))

(assert (=> d!678422 (= res!980803 e!1469757)))

(declare-fun c!363658 () Bool)

(declare-fun size!21513 (BalanceConc!17518) Int)

(assert (=> d!678422 (= c!363658 (> (size!21513 (_1!16080 lt!851081)) 0))))

(declare-fun lexTailRecV2!791 (LexerInterface!3970 List!27407 BalanceConc!17516 BalanceConc!17516 BalanceConc!17516 BalanceConc!17518) tuple2!27140)

(assert (=> d!678422 (= lt!851081 (lexTailRecV2!791 thiss!16613 rules!1750 (seqFromList!3077 input!1722) (BalanceConc!17517 Empty!8894) (seqFromList!3077 input!1722) (BalanceConc!17519 Empty!8895)))))

(assert (=> d!678422 (= (lex!1809 thiss!16613 rules!1750 (seqFromList!3077 input!1722)) lt!851081)))

(declare-fun b!2293603 () Bool)

(declare-fun isEmpty!15563 (BalanceConc!17518) Bool)

(assert (=> b!2293603 (= e!1469759 (not (isEmpty!15563 (_1!16080 lt!851081))))))

(declare-fun b!2293604 () Bool)

(assert (=> b!2293604 (= e!1469757 (= (_2!16080 lt!851081) (seqFromList!3077 input!1722)))))

(declare-fun b!2293605 () Bool)

(declare-fun res!980804 () Bool)

(assert (=> b!2293605 (=> (not res!980804) (not e!1469758))))

(assert (=> b!2293605 (= res!980804 (= (list!10709 (_1!16080 lt!851081)) (_1!16081 (lexList!1116 thiss!16613 rules!1750 (list!10708 (seqFromList!3077 input!1722))))))))

(assert (= (and d!678422 c!363658) b!2293601))

(assert (= (and d!678422 (not c!363658)) b!2293604))

(assert (= (and b!2293601 res!980805) b!2293603))

(assert (= (and d!678422 res!980803) b!2293605))

(assert (= (and b!2293605 res!980804) b!2293602))

(declare-fun m!2721403 () Bool)

(assert (=> b!2293603 m!2721403))

(declare-fun m!2721405 () Bool)

(assert (=> b!2293602 m!2721405))

(assert (=> b!2293602 m!2721361))

(declare-fun m!2721407 () Bool)

(assert (=> b!2293602 m!2721407))

(assert (=> b!2293602 m!2721407))

(declare-fun m!2721409 () Bool)

(assert (=> b!2293602 m!2721409))

(declare-fun m!2721411 () Bool)

(assert (=> d!678422 m!2721411))

(assert (=> d!678422 m!2721361))

(assert (=> d!678422 m!2721361))

(declare-fun m!2721413 () Bool)

(assert (=> d!678422 m!2721413))

(declare-fun m!2721415 () Bool)

(assert (=> b!2293605 m!2721415))

(assert (=> b!2293605 m!2721361))

(assert (=> b!2293605 m!2721407))

(assert (=> b!2293605 m!2721407))

(assert (=> b!2293605 m!2721409))

(declare-fun m!2721421 () Bool)

(assert (=> b!2293601 m!2721421))

(assert (=> b!2293601 m!2721361))

(declare-fun m!2721427 () Bool)

(assert (=> b!2293601 m!2721427))

(assert (=> b!2293556 d!678422))

(declare-fun d!678438 () Bool)

(declare-fun fromListB!1382 (List!27406) BalanceConc!17516)

(assert (=> d!678438 (= (seqFromList!3077 input!1722) (fromListB!1382 input!1722))))

(declare-fun bs!457211 () Bool)

(assert (= bs!457211 d!678438))

(declare-fun m!2721445 () Bool)

(assert (=> bs!457211 m!2721445))

(assert (=> b!2293556 d!678438))

(declare-fun d!678450 () Bool)

(assert (=> d!678450 (= (isEmpty!15560 tokens!456) ((_ is Nil!27314) tokens!456))))

(assert (=> b!2293544 d!678450))

(declare-fun d!678452 () Bool)

(assert (=> d!678452 (= r!2363 otherR!12)))

(declare-fun lt!851088 () Unit!40194)

(declare-fun choose!13396 (List!27407 Rule!8546 Rule!8546) Unit!40194)

(assert (=> d!678452 (= lt!851088 (choose!13396 rules!1750 r!2363 otherR!12))))

(assert (=> d!678452 (contains!4751 rules!1750 r!2363)))

(assert (=> d!678452 (= (lemmaSameIndexThenSameElement!166 rules!1750 r!2363 otherR!12) lt!851088)))

(declare-fun bs!457212 () Bool)

(assert (= bs!457212 d!678452))

(declare-fun m!2721457 () Bool)

(assert (=> bs!457212 m!2721457))

(assert (=> bs!457212 m!2721327))

(assert (=> b!2293554 d!678452))

(declare-fun d!678460 () Bool)

(declare-fun lt!851095 () Int)

(assert (=> d!678460 (>= lt!851095 0)))

(declare-fun e!1469793 () Int)

(assert (=> d!678460 (= lt!851095 e!1469793)))

(declare-fun c!363672 () Bool)

(assert (=> d!678460 (= c!363672 (and ((_ is Cons!27313) rules!1750) (= (h!32714 rules!1750) otherR!12)))))

(assert (=> d!678460 (contains!4751 rules!1750 otherR!12)))

(assert (=> d!678460 (= (getIndex!386 rules!1750 otherR!12) lt!851095)))

(declare-fun b!2293654 () Bool)

(declare-fun e!1469792 () Int)

(assert (=> b!2293654 (= e!1469792 (+ 1 (getIndex!386 (t!205089 rules!1750) otherR!12)))))

(declare-fun b!2293653 () Bool)

(assert (=> b!2293653 (= e!1469793 e!1469792)))

(declare-fun c!363671 () Bool)

(assert (=> b!2293653 (= c!363671 (and ((_ is Cons!27313) rules!1750) (not (= (h!32714 rules!1750) otherR!12))))))

(declare-fun b!2293652 () Bool)

(assert (=> b!2293652 (= e!1469793 0)))

(declare-fun b!2293655 () Bool)

(assert (=> b!2293655 (= e!1469792 (- 1))))

(assert (= (and d!678460 c!363672) b!2293652))

(assert (= (and d!678460 (not c!363672)) b!2293653))

(assert (= (and b!2293653 c!363671) b!2293654))

(assert (= (and b!2293653 (not c!363671)) b!2293655))

(assert (=> d!678460 m!2721373))

(declare-fun m!2721467 () Bool)

(assert (=> b!2293654 m!2721467))

(assert (=> b!2293543 d!678460))

(declare-fun d!678468 () Bool)

(declare-fun lt!851098 () Int)

(assert (=> d!678468 (>= lt!851098 0)))

(declare-fun e!1469795 () Int)

(assert (=> d!678468 (= lt!851098 e!1469795)))

(declare-fun c!363674 () Bool)

(assert (=> d!678468 (= c!363674 (and ((_ is Cons!27313) rules!1750) (= (h!32714 rules!1750) r!2363)))))

(assert (=> d!678468 (contains!4751 rules!1750 r!2363)))

(assert (=> d!678468 (= (getIndex!386 rules!1750 r!2363) lt!851098)))

(declare-fun b!2293658 () Bool)

(declare-fun e!1469794 () Int)

(assert (=> b!2293658 (= e!1469794 (+ 1 (getIndex!386 (t!205089 rules!1750) r!2363)))))

(declare-fun b!2293657 () Bool)

(assert (=> b!2293657 (= e!1469795 e!1469794)))

(declare-fun c!363673 () Bool)

(assert (=> b!2293657 (= c!363673 (and ((_ is Cons!27313) rules!1750) (not (= (h!32714 rules!1750) r!2363))))))

(declare-fun b!2293656 () Bool)

(assert (=> b!2293656 (= e!1469795 0)))

(declare-fun b!2293659 () Bool)

(assert (=> b!2293659 (= e!1469794 (- 1))))

(assert (= (and d!678468 c!363674) b!2293656))

(assert (= (and d!678468 (not c!363674)) b!2293657))

(assert (= (and b!2293657 c!363673) b!2293658))

(assert (= (and b!2293657 (not c!363673)) b!2293659))

(assert (=> d!678468 m!2721327))

(declare-fun m!2721469 () Bool)

(assert (=> b!2293658 m!2721469))

(assert (=> b!2293543 d!678468))

(declare-fun d!678470 () Bool)

(declare-fun res!980835 () Bool)

(declare-fun e!1469807 () Bool)

(assert (=> d!678470 (=> (not res!980835) (not e!1469807))))

(declare-fun validRegex!2532 (Regex!6721) Bool)

(assert (=> d!678470 (= res!980835 (validRegex!2532 (regex!4373 otherR!12)))))

(assert (=> d!678470 (= (ruleValid!1463 thiss!16613 otherR!12) e!1469807)))

(declare-fun b!2293679 () Bool)

(declare-fun res!980836 () Bool)

(assert (=> b!2293679 (=> (not res!980836) (not e!1469807))))

(declare-fun nullable!1870 (Regex!6721) Bool)

(assert (=> b!2293679 (= res!980836 (not (nullable!1870 (regex!4373 otherR!12))))))

(declare-fun b!2293680 () Bool)

(assert (=> b!2293680 (= e!1469807 (not (= (tag!4863 otherR!12) (String!29780 ""))))))

(assert (= (and d!678470 res!980835) b!2293679))

(assert (= (and b!2293679 res!980836) b!2293680))

(declare-fun m!2721479 () Bool)

(assert (=> d!678470 m!2721479))

(declare-fun m!2721481 () Bool)

(assert (=> b!2293679 m!2721481))

(assert (=> b!2293543 d!678470))

(declare-fun d!678476 () Bool)

(assert (=> d!678476 (ruleValid!1463 thiss!16613 otherR!12)))

(declare-fun lt!851102 () Unit!40194)

(declare-fun choose!13397 (LexerInterface!3970 Rule!8546 List!27407) Unit!40194)

(assert (=> d!678476 (= lt!851102 (choose!13397 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!678476 (contains!4751 rules!1750 otherR!12)))

(assert (=> d!678476 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!868 thiss!16613 otherR!12 rules!1750) lt!851102)))

(declare-fun bs!457214 () Bool)

(assert (= bs!457214 d!678476))

(assert (=> bs!457214 m!2721335))

(declare-fun m!2721483 () Bool)

(assert (=> bs!457214 m!2721483))

(assert (=> bs!457214 m!2721373))

(assert (=> b!2293543 d!678476))

(declare-fun b!2293718 () Bool)

(declare-fun e!1469832 () Bool)

(declare-fun e!1469831 () Bool)

(assert (=> b!2293718 (= e!1469832 e!1469831)))

(declare-fun res!980862 () Bool)

(assert (=> b!2293718 (=> res!980862 e!1469831)))

(declare-fun call!136781 () Bool)

(assert (=> b!2293718 (= res!980862 call!136781)))

(declare-fun d!678478 () Bool)

(declare-fun e!1469833 () Bool)

(assert (=> d!678478 e!1469833))

(declare-fun c!363687 () Bool)

(assert (=> d!678478 (= c!363687 ((_ is EmptyExpr!6721) (regex!4373 r!2363)))))

(declare-fun lt!851109 () Bool)

(declare-fun e!1469834 () Bool)

(assert (=> d!678478 (= lt!851109 e!1469834)))

(declare-fun c!363689 () Bool)

(declare-fun isEmpty!15564 (List!27406) Bool)

(assert (=> d!678478 (= c!363689 (isEmpty!15564 (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))

(assert (=> d!678478 (validRegex!2532 (regex!4373 r!2363))))

(assert (=> d!678478 (= (matchR!2978 (regex!4373 r!2363) (list!10708 (charsOf!2761 (head!5004 tokens!456)))) lt!851109)))

(declare-fun b!2293719 () Bool)

(declare-fun res!980868 () Bool)

(declare-fun e!1469828 () Bool)

(assert (=> b!2293719 (=> res!980868 e!1469828)))

(declare-fun e!1469829 () Bool)

(assert (=> b!2293719 (= res!980868 e!1469829)))

(declare-fun res!980864 () Bool)

(assert (=> b!2293719 (=> (not res!980864) (not e!1469829))))

(assert (=> b!2293719 (= res!980864 lt!851109)))

(declare-fun b!2293720 () Bool)

(assert (=> b!2293720 (= e!1469834 (nullable!1870 (regex!4373 r!2363)))))

(declare-fun bm!136776 () Bool)

(assert (=> bm!136776 (= call!136781 (isEmpty!15564 (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))

(declare-fun b!2293721 () Bool)

(declare-fun head!5006 (List!27406) C!13588)

(assert (=> b!2293721 (= e!1469829 (= (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456)))) (c!363651 (regex!4373 r!2363))))))

(declare-fun b!2293722 () Bool)

(assert (=> b!2293722 (= e!1469828 e!1469832)))

(declare-fun res!980863 () Bool)

(assert (=> b!2293722 (=> (not res!980863) (not e!1469832))))

(assert (=> b!2293722 (= res!980863 (not lt!851109))))

(declare-fun b!2293723 () Bool)

(declare-fun res!980866 () Bool)

(assert (=> b!2293723 (=> (not res!980866) (not e!1469829))))

(declare-fun tail!3313 (List!27406) List!27406)

(assert (=> b!2293723 (= res!980866 (isEmpty!15564 (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456))))))))

(declare-fun b!2293724 () Bool)

(declare-fun res!980861 () Bool)

(assert (=> b!2293724 (=> res!980861 e!1469831)))

(assert (=> b!2293724 (= res!980861 (not (isEmpty!15564 (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))))

(declare-fun b!2293725 () Bool)

(declare-fun res!980867 () Bool)

(assert (=> b!2293725 (=> res!980867 e!1469828)))

(assert (=> b!2293725 (= res!980867 (not ((_ is ElementMatch!6721) (regex!4373 r!2363))))))

(declare-fun e!1469830 () Bool)

(assert (=> b!2293725 (= e!1469830 e!1469828)))

(declare-fun b!2293726 () Bool)

(assert (=> b!2293726 (= e!1469831 (not (= (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456)))) (c!363651 (regex!4373 r!2363)))))))

(declare-fun b!2293727 () Bool)

(assert (=> b!2293727 (= e!1469833 (= lt!851109 call!136781))))

(declare-fun b!2293728 () Bool)

(declare-fun res!980865 () Bool)

(assert (=> b!2293728 (=> (not res!980865) (not e!1469829))))

(assert (=> b!2293728 (= res!980865 (not call!136781))))

(declare-fun b!2293729 () Bool)

(assert (=> b!2293729 (= e!1469830 (not lt!851109))))

(declare-fun b!2293730 () Bool)

(declare-fun derivativeStep!1530 (Regex!6721 C!13588) Regex!6721)

(assert (=> b!2293730 (= e!1469834 (matchR!2978 (derivativeStep!1530 (regex!4373 r!2363) (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456))))) (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456))))))))

(declare-fun b!2293731 () Bool)

(assert (=> b!2293731 (= e!1469833 e!1469830)))

(declare-fun c!363688 () Bool)

(assert (=> b!2293731 (= c!363688 ((_ is EmptyLang!6721) (regex!4373 r!2363)))))

(assert (= (and d!678478 c!363689) b!2293720))

(assert (= (and d!678478 (not c!363689)) b!2293730))

(assert (= (and d!678478 c!363687) b!2293727))

(assert (= (and d!678478 (not c!363687)) b!2293731))

(assert (= (and b!2293731 c!363688) b!2293729))

(assert (= (and b!2293731 (not c!363688)) b!2293725))

(assert (= (and b!2293725 (not res!980867)) b!2293719))

(assert (= (and b!2293719 res!980864) b!2293728))

(assert (= (and b!2293728 res!980865) b!2293723))

(assert (= (and b!2293723 res!980866) b!2293721))

(assert (= (and b!2293719 (not res!980868)) b!2293722))

(assert (= (and b!2293722 res!980863) b!2293718))

(assert (= (and b!2293718 (not res!980862)) b!2293724))

(assert (= (and b!2293724 (not res!980861)) b!2293726))

(assert (= (or b!2293727 b!2293718 b!2293728) bm!136776))

(assert (=> b!2293730 m!2721319))

(declare-fun m!2721507 () Bool)

(assert (=> b!2293730 m!2721507))

(assert (=> b!2293730 m!2721507))

(declare-fun m!2721509 () Bool)

(assert (=> b!2293730 m!2721509))

(assert (=> b!2293730 m!2721319))

(declare-fun m!2721511 () Bool)

(assert (=> b!2293730 m!2721511))

(assert (=> b!2293730 m!2721509))

(assert (=> b!2293730 m!2721511))

(declare-fun m!2721513 () Bool)

(assert (=> b!2293730 m!2721513))

(assert (=> b!2293721 m!2721319))

(assert (=> b!2293721 m!2721507))

(assert (=> b!2293724 m!2721319))

(assert (=> b!2293724 m!2721511))

(assert (=> b!2293724 m!2721511))

(declare-fun m!2721515 () Bool)

(assert (=> b!2293724 m!2721515))

(assert (=> d!678478 m!2721319))

(declare-fun m!2721517 () Bool)

(assert (=> d!678478 m!2721517))

(declare-fun m!2721519 () Bool)

(assert (=> d!678478 m!2721519))

(assert (=> b!2293726 m!2721319))

(assert (=> b!2293726 m!2721507))

(declare-fun m!2721521 () Bool)

(assert (=> b!2293720 m!2721521))

(assert (=> bm!136776 m!2721319))

(assert (=> bm!136776 m!2721517))

(assert (=> b!2293723 m!2721319))

(assert (=> b!2293723 m!2721511))

(assert (=> b!2293723 m!2721511))

(assert (=> b!2293723 m!2721515))

(assert (=> b!2293532 d!678478))

(declare-fun d!678490 () Bool)

(assert (=> d!678490 (= (list!10708 (charsOf!2761 (head!5004 tokens!456))) (list!10713 (c!363650 (charsOf!2761 (head!5004 tokens!456)))))))

(declare-fun bs!457218 () Bool)

(assert (= bs!457218 d!678490))

(declare-fun m!2721523 () Bool)

(assert (=> bs!457218 m!2721523))

(assert (=> b!2293532 d!678490))

(declare-fun d!678492 () Bool)

(declare-fun lt!851112 () BalanceConc!17516)

(assert (=> d!678492 (= (list!10708 lt!851112) (originalCharacters!5143 (head!5004 tokens!456)))))

(declare-fun dynLambda!11857 (Int TokenValue!4535) BalanceConc!17516)

(assert (=> d!678492 (= lt!851112 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456))))))

(assert (=> d!678492 (= (charsOf!2761 (head!5004 tokens!456)) lt!851112)))

(declare-fun b_lambda!73113 () Bool)

(assert (=> (not b_lambda!73113) (not d!678492)))

(declare-fun t!205108 () Bool)

(declare-fun tb!136943 () Bool)

(assert (=> (and b!2293549 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456))))) t!205108) tb!136943))

(declare-fun b!2293736 () Bool)

(declare-fun e!1469837 () Bool)

(declare-fun tp!727254 () Bool)

(declare-fun inv!36920 (Conc!8894) Bool)

(assert (=> b!2293736 (= e!1469837 (and (inv!36920 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456))))) tp!727254))))

(declare-fun result!166932 () Bool)

(declare-fun inv!36921 (BalanceConc!17516) Bool)

(assert (=> tb!136943 (= result!166932 (and (inv!36921 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456)))) e!1469837))))

(assert (= tb!136943 b!2293736))

(declare-fun m!2721525 () Bool)

(assert (=> b!2293736 m!2721525))

(declare-fun m!2721527 () Bool)

(assert (=> tb!136943 m!2721527))

(assert (=> d!678492 t!205108))

(declare-fun b_and!182409 () Bool)

(assert (= b_and!182379 (and (=> t!205108 result!166932) b_and!182409)))

(declare-fun t!205110 () Bool)

(declare-fun tb!136945 () Bool)

(assert (=> (and b!2293534 (= (toChars!6026 (transformation!4373 r!2363)) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456))))) t!205110) tb!136945))

(declare-fun result!166936 () Bool)

(assert (= result!166936 result!166932))

(assert (=> d!678492 t!205110))

(declare-fun b_and!182411 () Bool)

(assert (= b_and!182383 (and (=> t!205110 result!166936) b_and!182411)))

(declare-fun tb!136947 () Bool)

(declare-fun t!205112 () Bool)

(assert (=> (and b!2293559 (= (toChars!6026 (transformation!4373 otherR!12)) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456))))) t!205112) tb!136947))

(declare-fun result!166938 () Bool)

(assert (= result!166938 result!166932))

(assert (=> d!678492 t!205112))

(declare-fun b_and!182413 () Bool)

(assert (= b_and!182387 (and (=> t!205112 result!166938) b_and!182413)))

(declare-fun t!205114 () Bool)

(declare-fun tb!136949 () Bool)

(assert (=> (and b!2293553 (= (toChars!6026 (transformation!4373 (h!32714 rules!1750))) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456))))) t!205114) tb!136949))

(declare-fun result!166940 () Bool)

(assert (= result!166940 result!166932))

(assert (=> d!678492 t!205114))

(declare-fun b_and!182415 () Bool)

(assert (= b_and!182391 (and (=> t!205114 result!166940) b_and!182415)))

(declare-fun m!2721529 () Bool)

(assert (=> d!678492 m!2721529))

(declare-fun m!2721531 () Bool)

(assert (=> d!678492 m!2721531))

(assert (=> b!2293532 d!678492))

(declare-fun d!678494 () Bool)

(assert (=> d!678494 (= (head!5004 tokens!456) (h!32715 tokens!456))))

(assert (=> b!2293532 d!678494))

(declare-fun d!678496 () Bool)

(declare-fun res!980873 () Bool)

(declare-fun e!1469840 () Bool)

(assert (=> d!678496 (=> (not res!980873) (not e!1469840))))

(assert (=> d!678496 (= res!980873 (not (isEmpty!15564 (originalCharacters!5143 (h!32715 tokens!456)))))))

(assert (=> d!678496 (= (inv!36917 (h!32715 tokens!456)) e!1469840)))

(declare-fun b!2293741 () Bool)

(declare-fun res!980874 () Bool)

(assert (=> b!2293741 (=> (not res!980874) (not e!1469840))))

(assert (=> b!2293741 (= res!980874 (= (originalCharacters!5143 (h!32715 tokens!456)) (list!10708 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456))))))))

(declare-fun b!2293742 () Bool)

(assert (=> b!2293742 (= e!1469840 (= (size!21508 (h!32715 tokens!456)) (size!21510 (originalCharacters!5143 (h!32715 tokens!456)))))))

(assert (= (and d!678496 res!980873) b!2293741))

(assert (= (and b!2293741 res!980874) b!2293742))

(declare-fun b_lambda!73115 () Bool)

(assert (=> (not b_lambda!73115) (not b!2293741)))

(declare-fun t!205116 () Bool)

(declare-fun tb!136951 () Bool)

(assert (=> (and b!2293549 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) t!205116) tb!136951))

(declare-fun b!2293743 () Bool)

(declare-fun e!1469841 () Bool)

(declare-fun tp!727255 () Bool)

(assert (=> b!2293743 (= e!1469841 (and (inv!36920 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456))))) tp!727255))))

(declare-fun result!166942 () Bool)

(assert (=> tb!136951 (= result!166942 (and (inv!36921 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456)))) e!1469841))))

(assert (= tb!136951 b!2293743))

(declare-fun m!2721533 () Bool)

(assert (=> b!2293743 m!2721533))

(declare-fun m!2721535 () Bool)

(assert (=> tb!136951 m!2721535))

(assert (=> b!2293741 t!205116))

(declare-fun b_and!182417 () Bool)

(assert (= b_and!182409 (and (=> t!205116 result!166942) b_and!182417)))

(declare-fun t!205118 () Bool)

(declare-fun tb!136953 () Bool)

(assert (=> (and b!2293534 (= (toChars!6026 (transformation!4373 r!2363)) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) t!205118) tb!136953))

(declare-fun result!166944 () Bool)

(assert (= result!166944 result!166942))

(assert (=> b!2293741 t!205118))

(declare-fun b_and!182419 () Bool)

(assert (= b_and!182411 (and (=> t!205118 result!166944) b_and!182419)))

(declare-fun tb!136955 () Bool)

(declare-fun t!205120 () Bool)

(assert (=> (and b!2293559 (= (toChars!6026 (transformation!4373 otherR!12)) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) t!205120) tb!136955))

(declare-fun result!166946 () Bool)

(assert (= result!166946 result!166942))

(assert (=> b!2293741 t!205120))

(declare-fun b_and!182421 () Bool)

(assert (= b_and!182413 (and (=> t!205120 result!166946) b_and!182421)))

(declare-fun tb!136957 () Bool)

(declare-fun t!205122 () Bool)

(assert (=> (and b!2293553 (= (toChars!6026 (transformation!4373 (h!32714 rules!1750))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) t!205122) tb!136957))

(declare-fun result!166948 () Bool)

(assert (= result!166948 result!166942))

(assert (=> b!2293741 t!205122))

(declare-fun b_and!182423 () Bool)

(assert (= b_and!182415 (and (=> t!205122 result!166948) b_and!182423)))

(declare-fun m!2721537 () Bool)

(assert (=> d!678496 m!2721537))

(declare-fun m!2721539 () Bool)

(assert (=> b!2293741 m!2721539))

(assert (=> b!2293741 m!2721539))

(declare-fun m!2721541 () Bool)

(assert (=> b!2293741 m!2721541))

(declare-fun m!2721543 () Bool)

(assert (=> b!2293742 m!2721543))

(assert (=> b!2293542 d!678496))

(declare-fun d!678498 () Bool)

(declare-fun lt!851115 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3669 (List!27407) (InoxSet Rule!8546))

(assert (=> d!678498 (= lt!851115 (select (content!3669 rules!1750) otherR!12))))

(declare-fun e!1469846 () Bool)

(assert (=> d!678498 (= lt!851115 e!1469846)))

(declare-fun res!980879 () Bool)

(assert (=> d!678498 (=> (not res!980879) (not e!1469846))))

(assert (=> d!678498 (= res!980879 ((_ is Cons!27313) rules!1750))))

(assert (=> d!678498 (= (contains!4751 rules!1750 otherR!12) lt!851115)))

(declare-fun b!2293748 () Bool)

(declare-fun e!1469847 () Bool)

(assert (=> b!2293748 (= e!1469846 e!1469847)))

(declare-fun res!980880 () Bool)

(assert (=> b!2293748 (=> res!980880 e!1469847)))

(assert (=> b!2293748 (= res!980880 (= (h!32714 rules!1750) otherR!12))))

(declare-fun b!2293749 () Bool)

(assert (=> b!2293749 (= e!1469847 (contains!4751 (t!205089 rules!1750) otherR!12))))

(assert (= (and d!678498 res!980879) b!2293748))

(assert (= (and b!2293748 (not res!980880)) b!2293749))

(declare-fun m!2721545 () Bool)

(assert (=> d!678498 m!2721545))

(declare-fun m!2721547 () Bool)

(assert (=> d!678498 m!2721547))

(declare-fun m!2721549 () Bool)

(assert (=> b!2293749 m!2721549))

(assert (=> b!2293531 d!678498))

(declare-fun d!678500 () Bool)

(assert (=> d!678500 (= (isEmpty!15559 rules!1750) ((_ is Nil!27313) rules!1750))))

(assert (=> b!2293541 d!678500))

(declare-fun d!678502 () Bool)

(declare-fun lt!851118 () Int)

(assert (=> d!678502 (= lt!851118 (size!21510 (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))

(declare-fun size!21514 (Conc!8894) Int)

(assert (=> d!678502 (= lt!851118 (size!21514 (c!363650 (charsOf!2761 (head!5004 tokens!456)))))))

(assert (=> d!678502 (= (size!21509 (charsOf!2761 (head!5004 tokens!456))) lt!851118)))

(declare-fun bs!457219 () Bool)

(assert (= bs!457219 d!678502))

(assert (=> bs!457219 m!2721317))

(assert (=> bs!457219 m!2721319))

(assert (=> bs!457219 m!2721319))

(declare-fun m!2721551 () Bool)

(assert (=> bs!457219 m!2721551))

(declare-fun m!2721553 () Bool)

(assert (=> bs!457219 m!2721553))

(assert (=> b!2293530 d!678502))

(assert (=> b!2293530 d!678492))

(assert (=> b!2293530 d!678494))

(declare-fun d!678504 () Bool)

(declare-fun lt!851121 () Int)

(assert (=> d!678504 (>= lt!851121 0)))

(declare-fun e!1469850 () Int)

(assert (=> d!678504 (= lt!851121 e!1469850)))

(declare-fun c!363692 () Bool)

(assert (=> d!678504 (= c!363692 ((_ is Nil!27312) otherP!12))))

(assert (=> d!678504 (= (size!21510 otherP!12) lt!851121)))

(declare-fun b!2293754 () Bool)

(assert (=> b!2293754 (= e!1469850 0)))

(declare-fun b!2293755 () Bool)

(assert (=> b!2293755 (= e!1469850 (+ 1 (size!21510 (t!205088 otherP!12))))))

(assert (= (and d!678504 c!363692) b!2293754))

(assert (= (and d!678504 (not c!363692)) b!2293755))

(declare-fun m!2721555 () Bool)

(assert (=> b!2293755 m!2721555))

(assert (=> b!2293530 d!678504))

(declare-fun d!678506 () Bool)

(assert (=> d!678506 (= (inv!36913 (tag!4863 (h!32714 rules!1750))) (= (mod (str.len (value!138449 (tag!4863 (h!32714 rules!1750)))) 2) 0))))

(assert (=> b!2293540 d!678506))

(declare-fun d!678508 () Bool)

(declare-fun res!980883 () Bool)

(declare-fun e!1469853 () Bool)

(assert (=> d!678508 (=> (not res!980883) (not e!1469853))))

(declare-fun semiInverseModEq!1772 (Int Int) Bool)

(assert (=> d!678508 (= res!980883 (semiInverseModEq!1772 (toChars!6026 (transformation!4373 (h!32714 rules!1750))) (toValue!6167 (transformation!4373 (h!32714 rules!1750)))))))

(assert (=> d!678508 (= (inv!36916 (transformation!4373 (h!32714 rules!1750))) e!1469853)))

(declare-fun b!2293758 () Bool)

(declare-fun equivClasses!1691 (Int Int) Bool)

(assert (=> b!2293758 (= e!1469853 (equivClasses!1691 (toChars!6026 (transformation!4373 (h!32714 rules!1750))) (toValue!6167 (transformation!4373 (h!32714 rules!1750)))))))

(assert (= (and d!678508 res!980883) b!2293758))

(declare-fun m!2721557 () Bool)

(assert (=> d!678508 m!2721557))

(declare-fun m!2721559 () Bool)

(assert (=> b!2293758 m!2721559))

(assert (=> b!2293540 d!678508))

(declare-fun d!678510 () Bool)

(assert (=> d!678510 true))

(declare-fun lt!851131 () Bool)

(declare-fun lambda!85801 () Int)

(declare-fun forall!5496 (List!27407 Int) Bool)

(assert (=> d!678510 (= lt!851131 (forall!5496 rules!1750 lambda!85801))))

(declare-fun e!1469932 () Bool)

(assert (=> d!678510 (= lt!851131 e!1469932)))

(declare-fun res!980924 () Bool)

(assert (=> d!678510 (=> res!980924 e!1469932)))

(assert (=> d!678510 (= res!980924 (not ((_ is Cons!27313) rules!1750)))))

(assert (=> d!678510 (= (rulesValidInductive!1541 thiss!16613 rules!1750) lt!851131)))

(declare-fun b!2293881 () Bool)

(declare-fun e!1469931 () Bool)

(assert (=> b!2293881 (= e!1469932 e!1469931)))

(declare-fun res!980923 () Bool)

(assert (=> b!2293881 (=> (not res!980923) (not e!1469931))))

(assert (=> b!2293881 (= res!980923 (ruleValid!1463 thiss!16613 (h!32714 rules!1750)))))

(declare-fun b!2293882 () Bool)

(assert (=> b!2293882 (= e!1469931 (rulesValidInductive!1541 thiss!16613 (t!205089 rules!1750)))))

(assert (= (and d!678510 (not res!980924)) b!2293881))

(assert (= (and b!2293881 res!980923) b!2293882))

(declare-fun m!2721613 () Bool)

(assert (=> d!678510 m!2721613))

(declare-fun m!2721615 () Bool)

(assert (=> b!2293881 m!2721615))

(declare-fun m!2721617 () Bool)

(assert (=> b!2293882 m!2721617))

(assert (=> b!2293529 d!678510))

(declare-fun d!678524 () Bool)

(declare-fun lt!851132 () Bool)

(assert (=> d!678524 (= lt!851132 (select (content!3669 rules!1750) r!2363))))

(declare-fun e!1469933 () Bool)

(assert (=> d!678524 (= lt!851132 e!1469933)))

(declare-fun res!980925 () Bool)

(assert (=> d!678524 (=> (not res!980925) (not e!1469933))))

(assert (=> d!678524 (= res!980925 ((_ is Cons!27313) rules!1750))))

(assert (=> d!678524 (= (contains!4751 rules!1750 r!2363) lt!851132)))

(declare-fun b!2293885 () Bool)

(declare-fun e!1469934 () Bool)

(assert (=> b!2293885 (= e!1469933 e!1469934)))

(declare-fun res!980926 () Bool)

(assert (=> b!2293885 (=> res!980926 e!1469934)))

(assert (=> b!2293885 (= res!980926 (= (h!32714 rules!1750) r!2363))))

(declare-fun b!2293886 () Bool)

(assert (=> b!2293886 (= e!1469934 (contains!4751 (t!205089 rules!1750) r!2363))))

(assert (= (and d!678524 res!980925) b!2293885))

(assert (= (and b!2293885 (not res!980926)) b!2293886))

(assert (=> d!678524 m!2721545))

(declare-fun m!2721619 () Bool)

(assert (=> d!678524 m!2721619))

(declare-fun m!2721621 () Bool)

(assert (=> b!2293886 m!2721621))

(assert (=> b!2293550 d!678524))

(declare-fun d!678526 () Bool)

(assert (=> d!678526 (= (inv!36913 (tag!4863 otherR!12)) (= (mod (str.len (value!138449 (tag!4863 otherR!12))) 2) 0))))

(assert (=> b!2293539 d!678526))

(declare-fun d!678528 () Bool)

(declare-fun res!980927 () Bool)

(declare-fun e!1469935 () Bool)

(assert (=> d!678528 (=> (not res!980927) (not e!1469935))))

(assert (=> d!678528 (= res!980927 (semiInverseModEq!1772 (toChars!6026 (transformation!4373 otherR!12)) (toValue!6167 (transformation!4373 otherR!12))))))

(assert (=> d!678528 (= (inv!36916 (transformation!4373 otherR!12)) e!1469935)))

(declare-fun b!2293887 () Bool)

(assert (=> b!2293887 (= e!1469935 (equivClasses!1691 (toChars!6026 (transformation!4373 otherR!12)) (toValue!6167 (transformation!4373 otherR!12))))))

(assert (= (and d!678528 res!980927) b!2293887))

(declare-fun m!2721623 () Bool)

(assert (=> d!678528 m!2721623))

(declare-fun m!2721625 () Bool)

(assert (=> b!2293887 m!2721625))

(assert (=> b!2293539 d!678528))

(declare-fun d!678530 () Bool)

(assert (=> d!678530 (= (inv!36913 (tag!4863 r!2363)) (= (mod (str.len (value!138449 (tag!4863 r!2363))) 2) 0))))

(assert (=> b!2293560 d!678530))

(declare-fun d!678532 () Bool)

(declare-fun res!980928 () Bool)

(declare-fun e!1469936 () Bool)

(assert (=> d!678532 (=> (not res!980928) (not e!1469936))))

(assert (=> d!678532 (= res!980928 (semiInverseModEq!1772 (toChars!6026 (transformation!4373 r!2363)) (toValue!6167 (transformation!4373 r!2363))))))

(assert (=> d!678532 (= (inv!36916 (transformation!4373 r!2363)) e!1469936)))

(declare-fun b!2293888 () Bool)

(assert (=> b!2293888 (= e!1469936 (equivClasses!1691 (toChars!6026 (transformation!4373 r!2363)) (toValue!6167 (transformation!4373 r!2363))))))

(assert (= (and d!678532 res!980928) b!2293888))

(declare-fun m!2721627 () Bool)

(assert (=> d!678532 m!2721627))

(declare-fun m!2721629 () Bool)

(assert (=> b!2293888 m!2721629))

(assert (=> b!2293560 d!678532))

(declare-fun b!2293900 () Bool)

(declare-fun res!980931 () Bool)

(declare-fun e!1469943 () Bool)

(assert (=> b!2293900 (=> res!980931 e!1469943)))

(assert (=> b!2293900 (= res!980931 (not ((_ is IntegerValue!13607) (value!138450 (h!32715 tokens!456)))))))

(declare-fun e!1469944 () Bool)

(assert (=> b!2293900 (= e!1469944 e!1469943)))

(declare-fun b!2293901 () Bool)

(declare-fun e!1469945 () Bool)

(assert (=> b!2293901 (= e!1469945 e!1469944)))

(declare-fun c!363709 () Bool)

(assert (=> b!2293901 (= c!363709 ((_ is IntegerValue!13606) (value!138450 (h!32715 tokens!456))))))

(declare-fun b!2293902 () Bool)

(declare-fun inv!15 (TokenValue!4535) Bool)

(assert (=> b!2293902 (= e!1469943 (inv!15 (value!138450 (h!32715 tokens!456))))))

(declare-fun b!2293903 () Bool)

(declare-fun inv!17 (TokenValue!4535) Bool)

(assert (=> b!2293903 (= e!1469944 (inv!17 (value!138450 (h!32715 tokens!456))))))

(declare-fun b!2293899 () Bool)

(declare-fun inv!16 (TokenValue!4535) Bool)

(assert (=> b!2293899 (= e!1469945 (inv!16 (value!138450 (h!32715 tokens!456))))))

(declare-fun d!678534 () Bool)

(declare-fun c!363710 () Bool)

(assert (=> d!678534 (= c!363710 ((_ is IntegerValue!13605) (value!138450 (h!32715 tokens!456))))))

(assert (=> d!678534 (= (inv!21 (value!138450 (h!32715 tokens!456))) e!1469945)))

(assert (= (and d!678534 c!363710) b!2293899))

(assert (= (and d!678534 (not c!363710)) b!2293901))

(assert (= (and b!2293901 c!363709) b!2293903))

(assert (= (and b!2293901 (not c!363709)) b!2293900))

(assert (= (and b!2293900 (not res!980931)) b!2293902))

(declare-fun m!2721631 () Bool)

(assert (=> b!2293902 m!2721631))

(declare-fun m!2721633 () Bool)

(assert (=> b!2293903 m!2721633))

(declare-fun m!2721635 () Bool)

(assert (=> b!2293899 m!2721635))

(assert (=> b!2293538 d!678534))

(declare-fun d!678536 () Bool)

(declare-fun res!980932 () Bool)

(declare-fun e!1469946 () Bool)

(assert (=> d!678536 (=> (not res!980932) (not e!1469946))))

(assert (=> d!678536 (= res!980932 (validRegex!2532 (regex!4373 r!2363)))))

(assert (=> d!678536 (= (ruleValid!1463 thiss!16613 r!2363) e!1469946)))

(declare-fun b!2293904 () Bool)

(declare-fun res!980933 () Bool)

(assert (=> b!2293904 (=> (not res!980933) (not e!1469946))))

(assert (=> b!2293904 (= res!980933 (not (nullable!1870 (regex!4373 r!2363))))))

(declare-fun b!2293905 () Bool)

(assert (=> b!2293905 (= e!1469946 (not (= (tag!4863 r!2363) (String!29780 ""))))))

(assert (= (and d!678536 res!980932) b!2293904))

(assert (= (and b!2293904 res!980933) b!2293905))

(assert (=> d!678536 m!2721519))

(assert (=> b!2293904 m!2721521))

(assert (=> b!2293548 d!678536))

(declare-fun d!678538 () Bool)

(assert (=> d!678538 (ruleValid!1463 thiss!16613 r!2363)))

(declare-fun lt!851133 () Unit!40194)

(assert (=> d!678538 (= lt!851133 (choose!13397 thiss!16613 r!2363 rules!1750))))

(assert (=> d!678538 (contains!4751 rules!1750 r!2363)))

(assert (=> d!678538 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!868 thiss!16613 r!2363 rules!1750) lt!851133)))

(declare-fun bs!457223 () Bool)

(assert (= bs!457223 d!678538))

(assert (=> bs!457223 m!2721313))

(declare-fun m!2721637 () Bool)

(assert (=> bs!457223 m!2721637))

(assert (=> bs!457223 m!2721327))

(assert (=> b!2293548 d!678538))

(declare-fun d!678540 () Bool)

(assert (=> d!678540 (= (inv!36913 (tag!4863 (rule!6711 (h!32715 tokens!456)))) (= (mod (str.len (value!138449 (tag!4863 (rule!6711 (h!32715 tokens!456))))) 2) 0))))

(assert (=> b!2293547 d!678540))

(declare-fun d!678542 () Bool)

(declare-fun res!980934 () Bool)

(declare-fun e!1469947 () Bool)

(assert (=> d!678542 (=> (not res!980934) (not e!1469947))))

(assert (=> d!678542 (= res!980934 (semiInverseModEq!1772 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (toValue!6167 (transformation!4373 (rule!6711 (h!32715 tokens!456))))))))

(assert (=> d!678542 (= (inv!36916 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) e!1469947)))

(declare-fun b!2293906 () Bool)

(assert (=> b!2293906 (= e!1469947 (equivClasses!1691 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (toValue!6167 (transformation!4373 (rule!6711 (h!32715 tokens!456))))))))

(assert (= (and d!678542 res!980934) b!2293906))

(declare-fun m!2721639 () Bool)

(assert (=> d!678542 m!2721639))

(declare-fun m!2721641 () Bool)

(assert (=> b!2293906 m!2721641))

(assert (=> b!2293547 d!678542))

(declare-fun b!2293917 () Bool)

(declare-fun e!1469954 () Bool)

(assert (=> b!2293917 (= e!1469954 (isPrefix!2363 (tail!3313 otherP!12) (tail!3313 input!1722)))))

(declare-fun b!2293915 () Bool)

(declare-fun e!1469956 () Bool)

(assert (=> b!2293915 (= e!1469956 e!1469954)))

(declare-fun res!980945 () Bool)

(assert (=> b!2293915 (=> (not res!980945) (not e!1469954))))

(assert (=> b!2293915 (= res!980945 (not ((_ is Nil!27312) input!1722)))))

(declare-fun d!678544 () Bool)

(declare-fun e!1469955 () Bool)

(assert (=> d!678544 e!1469955))

(declare-fun res!980943 () Bool)

(assert (=> d!678544 (=> res!980943 e!1469955)))

(declare-fun lt!851136 () Bool)

(assert (=> d!678544 (= res!980943 (not lt!851136))))

(assert (=> d!678544 (= lt!851136 e!1469956)))

(declare-fun res!980944 () Bool)

(assert (=> d!678544 (=> res!980944 e!1469956)))

(assert (=> d!678544 (= res!980944 ((_ is Nil!27312) otherP!12))))

(assert (=> d!678544 (= (isPrefix!2363 otherP!12 input!1722) lt!851136)))

(declare-fun b!2293918 () Bool)

(assert (=> b!2293918 (= e!1469955 (>= (size!21510 input!1722) (size!21510 otherP!12)))))

(declare-fun b!2293916 () Bool)

(declare-fun res!980946 () Bool)

(assert (=> b!2293916 (=> (not res!980946) (not e!1469954))))

(assert (=> b!2293916 (= res!980946 (= (head!5006 otherP!12) (head!5006 input!1722)))))

(assert (= (and d!678544 (not res!980944)) b!2293915))

(assert (= (and b!2293915 res!980945) b!2293916))

(assert (= (and b!2293916 res!980946) b!2293917))

(assert (= (and d!678544 (not res!980943)) b!2293918))

(declare-fun m!2721643 () Bool)

(assert (=> b!2293917 m!2721643))

(declare-fun m!2721645 () Bool)

(assert (=> b!2293917 m!2721645))

(assert (=> b!2293917 m!2721643))

(assert (=> b!2293917 m!2721645))

(declare-fun m!2721647 () Bool)

(assert (=> b!2293917 m!2721647))

(declare-fun m!2721649 () Bool)

(assert (=> b!2293918 m!2721649))

(assert (=> b!2293918 m!2721371))

(declare-fun m!2721651 () Bool)

(assert (=> b!2293916 m!2721651))

(declare-fun m!2721653 () Bool)

(assert (=> b!2293916 m!2721653))

(assert (=> b!2293536 d!678544))

(assert (=> b!2293557 d!678494))

(declare-fun d!678546 () Bool)

(declare-fun res!980949 () Bool)

(declare-fun e!1469959 () Bool)

(assert (=> d!678546 (=> (not res!980949) (not e!1469959))))

(declare-fun rulesValid!1616 (LexerInterface!3970 List!27407) Bool)

(assert (=> d!678546 (= res!980949 (rulesValid!1616 thiss!16613 rules!1750))))

(assert (=> d!678546 (= (rulesInvariant!3472 thiss!16613 rules!1750) e!1469959)))

(declare-fun b!2293921 () Bool)

(declare-datatypes ((List!27410 0))(
  ( (Nil!27316) (Cons!27316 (h!32717 String!29779) (t!205140 List!27410)) )
))
(declare-fun noDuplicateTag!1614 (LexerInterface!3970 List!27407 List!27410) Bool)

(assert (=> b!2293921 (= e!1469959 (noDuplicateTag!1614 thiss!16613 rules!1750 Nil!27316))))

(assert (= (and d!678546 res!980949) b!2293921))

(declare-fun m!2721655 () Bool)

(assert (=> d!678546 m!2721655))

(declare-fun m!2721657 () Bool)

(assert (=> b!2293921 m!2721657))

(assert (=> b!2293546 d!678546))

(declare-fun b!2293932 () Bool)

(declare-fun b_free!69029 () Bool)

(declare-fun b_next!69733 () Bool)

(assert (=> b!2293932 (= b_free!69029 (not b_next!69733))))

(declare-fun tp!727329 () Bool)

(declare-fun b_and!182433 () Bool)

(assert (=> b!2293932 (= tp!727329 b_and!182433)))

(declare-fun b_free!69031 () Bool)

(declare-fun b_next!69735 () Bool)

(assert (=> b!2293932 (= b_free!69031 (not b_next!69735))))

(declare-fun tb!136967 () Bool)

(declare-fun t!205133 () Bool)

(assert (=> (and b!2293932 (= (toChars!6026 (transformation!4373 (h!32714 (t!205089 rules!1750)))) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456))))) t!205133) tb!136967))

(declare-fun result!166968 () Bool)

(assert (= result!166968 result!166932))

(assert (=> d!678492 t!205133))

(declare-fun tb!136969 () Bool)

(declare-fun t!205135 () Bool)

(assert (=> (and b!2293932 (= (toChars!6026 (transformation!4373 (h!32714 (t!205089 rules!1750)))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) t!205135) tb!136969))

(declare-fun result!166970 () Bool)

(assert (= result!166970 result!166942))

(assert (=> b!2293741 t!205135))

(declare-fun b_and!182435 () Bool)

(declare-fun tp!727328 () Bool)

(assert (=> b!2293932 (= tp!727328 (and (=> t!205133 result!166968) (=> t!205135 result!166970) b_and!182435))))

(declare-fun e!1469969 () Bool)

(assert (=> b!2293932 (= e!1469969 (and tp!727329 tp!727328))))

(declare-fun b!2293931 () Bool)

(declare-fun tp!727327 () Bool)

(declare-fun e!1469968 () Bool)

(assert (=> b!2293931 (= e!1469968 (and tp!727327 (inv!36913 (tag!4863 (h!32714 (t!205089 rules!1750)))) (inv!36916 (transformation!4373 (h!32714 (t!205089 rules!1750)))) e!1469969))))

(declare-fun b!2293930 () Bool)

(declare-fun e!1469971 () Bool)

(declare-fun tp!727330 () Bool)

(assert (=> b!2293930 (= e!1469971 (and e!1469968 tp!727330))))

(assert (=> b!2293555 (= tp!727247 e!1469971)))

(assert (= b!2293931 b!2293932))

(assert (= b!2293930 b!2293931))

(assert (= (and b!2293555 ((_ is Cons!27313) (t!205089 rules!1750))) b!2293930))

(declare-fun m!2721659 () Bool)

(assert (=> b!2293931 m!2721659))

(declare-fun m!2721661 () Bool)

(assert (=> b!2293931 m!2721661))

(declare-fun b!2293946 () Bool)

(declare-fun b_free!69033 () Bool)

(declare-fun b_next!69737 () Bool)

(assert (=> b!2293946 (= b_free!69033 (not b_next!69737))))

(declare-fun tp!727344 () Bool)

(declare-fun b_and!182437 () Bool)

(assert (=> b!2293946 (= tp!727344 b_and!182437)))

(declare-fun b_free!69035 () Bool)

(declare-fun b_next!69739 () Bool)

(assert (=> b!2293946 (= b_free!69035 (not b_next!69739))))

(declare-fun t!205137 () Bool)

(declare-fun tb!136971 () Bool)

(assert (=> (and b!2293946 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456))))) t!205137) tb!136971))

(declare-fun result!166974 () Bool)

(assert (= result!166974 result!166932))

(assert (=> d!678492 t!205137))

(declare-fun t!205139 () Bool)

(declare-fun tb!136973 () Bool)

(assert (=> (and b!2293946 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) t!205139) tb!136973))

(declare-fun result!166976 () Bool)

(assert (= result!166976 result!166942))

(assert (=> b!2293741 t!205139))

(declare-fun b_and!182439 () Bool)

(declare-fun tp!727342 () Bool)

(assert (=> b!2293946 (= tp!727342 (and (=> t!205137 result!166974) (=> t!205139 result!166976) b_and!182439))))

(declare-fun e!1469989 () Bool)

(declare-fun e!1469985 () Bool)

(declare-fun b!2293943 () Bool)

(declare-fun tp!727341 () Bool)

(assert (=> b!2293943 (= e!1469985 (and (inv!36917 (h!32715 (t!205090 tokens!456))) e!1469989 tp!727341))))

(declare-fun tp!727345 () Bool)

(declare-fun b!2293945 () Bool)

(declare-fun e!1469986 () Bool)

(declare-fun e!1469984 () Bool)

(assert (=> b!2293945 (= e!1469984 (and tp!727345 (inv!36913 (tag!4863 (rule!6711 (h!32715 (t!205090 tokens!456))))) (inv!36916 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))) e!1469986))))

(assert (=> b!2293946 (= e!1469986 (and tp!727344 tp!727342))))

(assert (=> b!2293542 (= tp!727245 e!1469985)))

(declare-fun tp!727343 () Bool)

(declare-fun b!2293944 () Bool)

(assert (=> b!2293944 (= e!1469989 (and (inv!21 (value!138450 (h!32715 (t!205090 tokens!456)))) e!1469984 tp!727343))))

(assert (= b!2293945 b!2293946))

(assert (= b!2293944 b!2293945))

(assert (= b!2293943 b!2293944))

(assert (= (and b!2293542 ((_ is Cons!27314) (t!205090 tokens!456))) b!2293943))

(declare-fun m!2721663 () Bool)

(assert (=> b!2293943 m!2721663))

(declare-fun m!2721665 () Bool)

(assert (=> b!2293945 m!2721665))

(declare-fun m!2721667 () Bool)

(assert (=> b!2293945 m!2721667))

(declare-fun m!2721669 () Bool)

(assert (=> b!2293944 m!2721669))

(declare-fun b!2293951 () Bool)

(declare-fun e!1469992 () Bool)

(declare-fun tp!727348 () Bool)

(assert (=> b!2293951 (= e!1469992 (and tp_is_empty!10663 tp!727348))))

(assert (=> b!2293551 (= tp!727241 e!1469992)))

(assert (= (and b!2293551 ((_ is Cons!27312) (t!205088 input!1722))) b!2293951))

(declare-fun b!2293963 () Bool)

(declare-fun e!1469995 () Bool)

(declare-fun tp!727361 () Bool)

(declare-fun tp!727363 () Bool)

(assert (=> b!2293963 (= e!1469995 (and tp!727361 tp!727363))))

(assert (=> b!2293540 (= tp!727233 e!1469995)))

(declare-fun b!2293962 () Bool)

(assert (=> b!2293962 (= e!1469995 tp_is_empty!10663)))

(declare-fun b!2293965 () Bool)

(declare-fun tp!727359 () Bool)

(declare-fun tp!727362 () Bool)

(assert (=> b!2293965 (= e!1469995 (and tp!727359 tp!727362))))

(declare-fun b!2293964 () Bool)

(declare-fun tp!727360 () Bool)

(assert (=> b!2293964 (= e!1469995 tp!727360)))

(assert (= (and b!2293540 ((_ is ElementMatch!6721) (regex!4373 (h!32714 rules!1750)))) b!2293962))

(assert (= (and b!2293540 ((_ is Concat!11257) (regex!4373 (h!32714 rules!1750)))) b!2293963))

(assert (= (and b!2293540 ((_ is Star!6721) (regex!4373 (h!32714 rules!1750)))) b!2293964))

(assert (= (and b!2293540 ((_ is Union!6721) (regex!4373 (h!32714 rules!1750)))) b!2293965))

(declare-fun b!2293967 () Bool)

(declare-fun e!1469996 () Bool)

(declare-fun tp!727366 () Bool)

(declare-fun tp!727368 () Bool)

(assert (=> b!2293967 (= e!1469996 (and tp!727366 tp!727368))))

(assert (=> b!2293539 (= tp!727234 e!1469996)))

(declare-fun b!2293966 () Bool)

(assert (=> b!2293966 (= e!1469996 tp_is_empty!10663)))

(declare-fun b!2293969 () Bool)

(declare-fun tp!727364 () Bool)

(declare-fun tp!727367 () Bool)

(assert (=> b!2293969 (= e!1469996 (and tp!727364 tp!727367))))

(declare-fun b!2293968 () Bool)

(declare-fun tp!727365 () Bool)

(assert (=> b!2293968 (= e!1469996 tp!727365)))

(assert (= (and b!2293539 ((_ is ElementMatch!6721) (regex!4373 otherR!12))) b!2293966))

(assert (= (and b!2293539 ((_ is Concat!11257) (regex!4373 otherR!12))) b!2293967))

(assert (= (and b!2293539 ((_ is Star!6721) (regex!4373 otherR!12))) b!2293968))

(assert (= (and b!2293539 ((_ is Union!6721) (regex!4373 otherR!12))) b!2293969))

(declare-fun b!2293971 () Bool)

(declare-fun e!1469997 () Bool)

(declare-fun tp!727371 () Bool)

(declare-fun tp!727373 () Bool)

(assert (=> b!2293971 (= e!1469997 (and tp!727371 tp!727373))))

(assert (=> b!2293560 (= tp!727236 e!1469997)))

(declare-fun b!2293970 () Bool)

(assert (=> b!2293970 (= e!1469997 tp_is_empty!10663)))

(declare-fun b!2293973 () Bool)

(declare-fun tp!727369 () Bool)

(declare-fun tp!727372 () Bool)

(assert (=> b!2293973 (= e!1469997 (and tp!727369 tp!727372))))

(declare-fun b!2293972 () Bool)

(declare-fun tp!727370 () Bool)

(assert (=> b!2293972 (= e!1469997 tp!727370)))

(assert (= (and b!2293560 ((_ is ElementMatch!6721) (regex!4373 r!2363))) b!2293970))

(assert (= (and b!2293560 ((_ is Concat!11257) (regex!4373 r!2363))) b!2293971))

(assert (= (and b!2293560 ((_ is Star!6721) (regex!4373 r!2363))) b!2293972))

(assert (= (and b!2293560 ((_ is Union!6721) (regex!4373 r!2363))) b!2293973))

(declare-fun b!2293974 () Bool)

(declare-fun e!1469998 () Bool)

(declare-fun tp!727374 () Bool)

(assert (=> b!2293974 (= e!1469998 (and tp_is_empty!10663 tp!727374))))

(assert (=> b!2293538 (= tp!727238 e!1469998)))

(assert (= (and b!2293538 ((_ is Cons!27312) (originalCharacters!5143 (h!32715 tokens!456)))) b!2293974))

(declare-fun b!2293975 () Bool)

(declare-fun e!1469999 () Bool)

(declare-fun tp!727375 () Bool)

(assert (=> b!2293975 (= e!1469999 (and tp_is_empty!10663 tp!727375))))

(assert (=> b!2293537 (= tp!727243 e!1469999)))

(assert (= (and b!2293537 ((_ is Cons!27312) (t!205088 suffix!886))) b!2293975))

(declare-fun b!2293976 () Bool)

(declare-fun e!1470000 () Bool)

(declare-fun tp!727376 () Bool)

(assert (=> b!2293976 (= e!1470000 (and tp_is_empty!10663 tp!727376))))

(assert (=> b!2293558 (= tp!727242 e!1470000)))

(assert (= (and b!2293558 ((_ is Cons!27312) (t!205088 otherP!12))) b!2293976))

(declare-fun b!2293978 () Bool)

(declare-fun e!1470001 () Bool)

(declare-fun tp!727379 () Bool)

(declare-fun tp!727381 () Bool)

(assert (=> b!2293978 (= e!1470001 (and tp!727379 tp!727381))))

(assert (=> b!2293547 (= tp!727235 e!1470001)))

(declare-fun b!2293977 () Bool)

(assert (=> b!2293977 (= e!1470001 tp_is_empty!10663)))

(declare-fun b!2293980 () Bool)

(declare-fun tp!727377 () Bool)

(declare-fun tp!727380 () Bool)

(assert (=> b!2293980 (= e!1470001 (and tp!727377 tp!727380))))

(declare-fun b!2293979 () Bool)

(declare-fun tp!727378 () Bool)

(assert (=> b!2293979 (= e!1470001 tp!727378)))

(assert (= (and b!2293547 ((_ is ElementMatch!6721) (regex!4373 (rule!6711 (h!32715 tokens!456))))) b!2293977))

(assert (= (and b!2293547 ((_ is Concat!11257) (regex!4373 (rule!6711 (h!32715 tokens!456))))) b!2293978))

(assert (= (and b!2293547 ((_ is Star!6721) (regex!4373 (rule!6711 (h!32715 tokens!456))))) b!2293979))

(assert (= (and b!2293547 ((_ is Union!6721) (regex!4373 (rule!6711 (h!32715 tokens!456))))) b!2293980))

(declare-fun b_lambda!73119 () Bool)

(assert (= b_lambda!73115 (or (and b!2293946 b_free!69035 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))))) (and b!2293559 b_free!69015 (= (toChars!6026 (transformation!4373 otherR!12)) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))))) (and b!2293549 b_free!69007) (and b!2293932 b_free!69031 (= (toChars!6026 (transformation!4373 (h!32714 (t!205089 rules!1750)))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))))) (and b!2293553 b_free!69019 (= (toChars!6026 (transformation!4373 (h!32714 rules!1750))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))))) (and b!2293534 b_free!69011 (= (toChars!6026 (transformation!4373 r!2363)) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))))) b_lambda!73119)))

(check-sat (not b!2293969) (not b!2293971) (not b!2293730) b_and!182439 (not d!678418) (not b!2293658) (not d!678496) (not b_next!69723) (not b!2293968) (not d!678460) (not b!2293974) (not d!678478) (not b!2293605) b_and!182433 (not d!678524) (not b_next!69721) (not b!2293904) (not d!678538) b_and!182435 (not b!2293976) (not b!2293975) (not b!2293887) (not b_lambda!73119) (not b!2293736) (not b!2293720) tp_is_empty!10663 (not b!2293943) (not b_next!69713) (not b_next!69735) (not d!678490) (not b!2293726) (not b!2293723) (not b_lambda!73113) (not d!678546) (not b!2293951) b_and!182437 (not b_next!69715) (not b!2293980) (not d!678438) (not b!2293724) (not b!2293882) b_and!182385 (not b_next!69711) (not b!2293888) (not d!678492) (not b!2293906) b_and!182419 (not d!678470) (not d!678498) (not b!2293917) (not b!2293749) (not d!678532) b_and!182381 (not d!678420) (not b!2293654) (not b_next!69719) (not d!678476) b_and!182389 (not b!2293918) b_and!182377 (not b!2293679) (not b!2293603) (not d!678542) (not b!2293964) (not tb!136951) (not b!2293979) (not b_next!69717) (not b!2293758) (not b!2293945) (not b!2293899) (not b_next!69737) b_and!182423 (not d!678422) (not d!678536) (not b!2293886) (not b!2293903) (not b!2293931) (not b!2293978) (not b!2293965) (not b!2293972) (not d!678452) (not b!2293881) (not d!678508) (not b!2293916) (not d!678510) (not b!2293602) b_and!182417 b_and!182421 (not b!2293963) (not b!2293741) (not b!2293921) (not b!2293721) (not b!2293967) (not b!2293944) (not b!2293742) (not b!2293743) (not tb!136943) (not d!678468) (not b!2293755) (not bm!136776) (not d!678502) (not b_next!69709) (not b!2293973) (not b_next!69733) (not b!2293902) (not b_next!69739) (not b!2293601) (not b!2293930) (not d!678528))
(check-sat b_and!182439 (not b_next!69723) b_and!182433 (not b_next!69713) (not b_next!69735) b_and!182437 (not b_next!69715) b_and!182419 b_and!182381 (not b_next!69719) (not b_next!69717) (not b_next!69737) b_and!182423 (not b_next!69709) (not b_next!69721) b_and!182435 b_and!182385 (not b_next!69711) b_and!182389 b_and!182377 b_and!182417 b_and!182421 (not b_next!69733) (not b_next!69739))
(get-model)

(declare-fun d!678642 () Bool)

(declare-fun c!363753 () Bool)

(assert (=> d!678642 (= c!363753 ((_ is Node!8894) (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456))))))))

(declare-fun e!1470093 () Bool)

(assert (=> d!678642 (= (inv!36920 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456))))) e!1470093)))

(declare-fun b!2294121 () Bool)

(declare-fun inv!36924 (Conc!8894) Bool)

(assert (=> b!2294121 (= e!1470093 (inv!36924 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456))))))))

(declare-fun b!2294122 () Bool)

(declare-fun e!1470094 () Bool)

(assert (=> b!2294122 (= e!1470093 e!1470094)))

(declare-fun res!981006 () Bool)

(assert (=> b!2294122 (= res!981006 (not ((_ is Leaf!13066) (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456)))))))))

(assert (=> b!2294122 (=> res!981006 e!1470094)))

(declare-fun b!2294123 () Bool)

(declare-fun inv!36925 (Conc!8894) Bool)

(assert (=> b!2294123 (= e!1470094 (inv!36925 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456))))))))

(assert (= (and d!678642 c!363753) b!2294121))

(assert (= (and d!678642 (not c!363753)) b!2294122))

(assert (= (and b!2294122 (not res!981006)) b!2294123))

(declare-fun m!2721819 () Bool)

(assert (=> b!2294121 m!2721819))

(declare-fun m!2721821 () Bool)

(assert (=> b!2294123 m!2721821))

(assert (=> b!2293736 d!678642))

(declare-fun d!678644 () Bool)

(assert (=> d!678644 (= (head!5006 otherP!12) (h!32713 otherP!12))))

(assert (=> b!2293916 d!678644))

(declare-fun d!678646 () Bool)

(assert (=> d!678646 (= (head!5006 input!1722) (h!32713 input!1722))))

(assert (=> b!2293916 d!678646))

(declare-fun b!2294125 () Bool)

(declare-fun res!981007 () Bool)

(declare-fun e!1470095 () Bool)

(assert (=> b!2294125 (=> res!981007 e!1470095)))

(assert (=> b!2294125 (= res!981007 (not ((_ is IntegerValue!13607) (value!138450 (h!32715 (t!205090 tokens!456))))))))

(declare-fun e!1470096 () Bool)

(assert (=> b!2294125 (= e!1470096 e!1470095)))

(declare-fun b!2294126 () Bool)

(declare-fun e!1470097 () Bool)

(assert (=> b!2294126 (= e!1470097 e!1470096)))

(declare-fun c!363754 () Bool)

(assert (=> b!2294126 (= c!363754 ((_ is IntegerValue!13606) (value!138450 (h!32715 (t!205090 tokens!456)))))))

(declare-fun b!2294127 () Bool)

(assert (=> b!2294127 (= e!1470095 (inv!15 (value!138450 (h!32715 (t!205090 tokens!456)))))))

(declare-fun b!2294128 () Bool)

(assert (=> b!2294128 (= e!1470096 (inv!17 (value!138450 (h!32715 (t!205090 tokens!456)))))))

(declare-fun b!2294124 () Bool)

(assert (=> b!2294124 (= e!1470097 (inv!16 (value!138450 (h!32715 (t!205090 tokens!456)))))))

(declare-fun d!678648 () Bool)

(declare-fun c!363755 () Bool)

(assert (=> d!678648 (= c!363755 ((_ is IntegerValue!13605) (value!138450 (h!32715 (t!205090 tokens!456)))))))

(assert (=> d!678648 (= (inv!21 (value!138450 (h!32715 (t!205090 tokens!456)))) e!1470097)))

(assert (= (and d!678648 c!363755) b!2294124))

(assert (= (and d!678648 (not c!363755)) b!2294126))

(assert (= (and b!2294126 c!363754) b!2294128))

(assert (= (and b!2294126 (not c!363754)) b!2294125))

(assert (= (and b!2294125 (not res!981007)) b!2294127))

(declare-fun m!2721823 () Bool)

(assert (=> b!2294127 m!2721823))

(declare-fun m!2721825 () Bool)

(assert (=> b!2294128 m!2721825))

(declare-fun m!2721827 () Bool)

(assert (=> b!2294124 m!2721827))

(assert (=> b!2293944 d!678648))

(declare-fun d!678650 () Bool)

(declare-fun nullableFct!453 (Regex!6721) Bool)

(assert (=> d!678650 (= (nullable!1870 (regex!4373 otherR!12)) (nullableFct!453 (regex!4373 otherR!12)))))

(declare-fun bs!457250 () Bool)

(assert (= bs!457250 d!678650))

(declare-fun m!2721829 () Bool)

(assert (=> bs!457250 m!2721829))

(assert (=> b!2293679 d!678650))

(declare-fun d!678652 () Bool)

(declare-fun lt!851164 () Int)

(assert (=> d!678652 (>= lt!851164 0)))

(declare-fun e!1470099 () Int)

(assert (=> d!678652 (= lt!851164 e!1470099)))

(declare-fun c!363757 () Bool)

(assert (=> d!678652 (= c!363757 (and ((_ is Cons!27313) (t!205089 rules!1750)) (= (h!32714 (t!205089 rules!1750)) r!2363)))))

(assert (=> d!678652 (contains!4751 (t!205089 rules!1750) r!2363)))

(assert (=> d!678652 (= (getIndex!386 (t!205089 rules!1750) r!2363) lt!851164)))

(declare-fun b!2294131 () Bool)

(declare-fun e!1470098 () Int)

(assert (=> b!2294131 (= e!1470098 (+ 1 (getIndex!386 (t!205089 (t!205089 rules!1750)) r!2363)))))

(declare-fun b!2294130 () Bool)

(assert (=> b!2294130 (= e!1470099 e!1470098)))

(declare-fun c!363756 () Bool)

(assert (=> b!2294130 (= c!363756 (and ((_ is Cons!27313) (t!205089 rules!1750)) (not (= (h!32714 (t!205089 rules!1750)) r!2363))))))

(declare-fun b!2294129 () Bool)

(assert (=> b!2294129 (= e!1470099 0)))

(declare-fun b!2294132 () Bool)

(assert (=> b!2294132 (= e!1470098 (- 1))))

(assert (= (and d!678652 c!363757) b!2294129))

(assert (= (and d!678652 (not c!363757)) b!2294130))

(assert (= (and b!2294130 c!363756) b!2294131))

(assert (= (and b!2294130 (not c!363756)) b!2294132))

(assert (=> d!678652 m!2721621))

(declare-fun m!2721831 () Bool)

(assert (=> b!2294131 m!2721831))

(assert (=> b!2293658 d!678652))

(declare-fun d!678654 () Bool)

(assert (=> d!678654 true))

(declare-fun lambda!85817 () Int)

(declare-fun order!15221 () Int)

(declare-fun order!15223 () Int)

(declare-fun dynLambda!11863 (Int Int) Int)

(declare-fun dynLambda!11864 (Int Int) Int)

(assert (=> d!678654 (< (dynLambda!11863 order!15221 (toValue!6167 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) (dynLambda!11864 order!15223 lambda!85817))))

(declare-fun Forall2!710 (Int) Bool)

(assert (=> d!678654 (= (equivClasses!1691 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (toValue!6167 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) (Forall2!710 lambda!85817))))

(declare-fun bs!457251 () Bool)

(assert (= bs!457251 d!678654))

(declare-fun m!2721833 () Bool)

(assert (=> bs!457251 m!2721833))

(assert (=> b!2293906 d!678654))

(declare-fun d!678656 () Bool)

(declare-fun lt!851165 () Int)

(assert (=> d!678656 (>= lt!851165 0)))

(declare-fun e!1470102 () Int)

(assert (=> d!678656 (= lt!851165 e!1470102)))

(declare-fun c!363758 () Bool)

(assert (=> d!678656 (= c!363758 ((_ is Nil!27312) (originalCharacters!5143 (h!32715 tokens!456))))))

(assert (=> d!678656 (= (size!21510 (originalCharacters!5143 (h!32715 tokens!456))) lt!851165)))

(declare-fun b!2294137 () Bool)

(assert (=> b!2294137 (= e!1470102 0)))

(declare-fun b!2294138 () Bool)

(assert (=> b!2294138 (= e!1470102 (+ 1 (size!21510 (t!205088 (originalCharacters!5143 (h!32715 tokens!456))))))))

(assert (= (and d!678656 c!363758) b!2294137))

(assert (= (and d!678656 (not c!363758)) b!2294138))

(declare-fun m!2721835 () Bool)

(assert (=> b!2294138 m!2721835))

(assert (=> b!2293742 d!678656))

(declare-fun d!678658 () Bool)

(assert (=> d!678658 (= (isEmpty!15564 (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456))))) ((_ is Nil!27312) (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456))))))))

(assert (=> b!2293724 d!678658))

(declare-fun d!678660 () Bool)

(assert (=> d!678660 (= (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456)))) (t!205088 (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))

(assert (=> b!2293724 d!678660))

(declare-fun d!678662 () Bool)

(declare-fun isBalanced!2683 (Conc!8894) Bool)

(assert (=> d!678662 (= (inv!36921 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456)))) (isBalanced!2683 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456))))))))

(declare-fun bs!457252 () Bool)

(assert (= bs!457252 d!678662))

(declare-fun m!2721837 () Bool)

(assert (=> bs!457252 m!2721837))

(assert (=> tb!136943 d!678662))

(declare-fun b!2294157 () Bool)

(declare-fun e!1470123 () Bool)

(declare-fun e!1470117 () Bool)

(assert (=> b!2294157 (= e!1470123 e!1470117)))

(declare-fun res!981023 () Bool)

(assert (=> b!2294157 (= res!981023 (not (nullable!1870 (reg!7050 (regex!4373 otherR!12)))))))

(assert (=> b!2294157 (=> (not res!981023) (not e!1470117))))

(declare-fun b!2294158 () Bool)

(declare-fun e!1470122 () Bool)

(declare-fun e!1470121 () Bool)

(assert (=> b!2294158 (= e!1470122 e!1470121)))

(declare-fun res!981020 () Bool)

(assert (=> b!2294158 (=> (not res!981020) (not e!1470121))))

(declare-fun call!136802 () Bool)

(assert (=> b!2294158 (= res!981020 call!136802)))

(declare-fun b!2294159 () Bool)

(declare-fun call!136800 () Bool)

(assert (=> b!2294159 (= e!1470121 call!136800)))

(declare-fun bm!136795 () Bool)

(declare-fun call!136801 () Bool)

(assert (=> bm!136795 (= call!136802 call!136801)))

(declare-fun b!2294161 () Bool)

(declare-fun res!981022 () Bool)

(declare-fun e!1470120 () Bool)

(assert (=> b!2294161 (=> (not res!981022) (not e!1470120))))

(assert (=> b!2294161 (= res!981022 call!136800)))

(declare-fun e!1470118 () Bool)

(assert (=> b!2294161 (= e!1470118 e!1470120)))

(declare-fun b!2294162 () Bool)

(assert (=> b!2294162 (= e!1470120 call!136802)))

(declare-fun bm!136796 () Bool)

(declare-fun c!363763 () Bool)

(declare-fun c!363764 () Bool)

(assert (=> bm!136796 (= call!136801 (validRegex!2532 (ite c!363764 (reg!7050 (regex!4373 otherR!12)) (ite c!363763 (regTwo!13955 (regex!4373 otherR!12)) (regOne!13954 (regex!4373 otherR!12))))))))

(declare-fun bm!136797 () Bool)

(assert (=> bm!136797 (= call!136800 (validRegex!2532 (ite c!363763 (regOne!13955 (regex!4373 otherR!12)) (regTwo!13954 (regex!4373 otherR!12)))))))

(declare-fun b!2294163 () Bool)

(declare-fun e!1470119 () Bool)

(assert (=> b!2294163 (= e!1470119 e!1470123)))

(assert (=> b!2294163 (= c!363764 ((_ is Star!6721) (regex!4373 otherR!12)))))

(declare-fun d!678664 () Bool)

(declare-fun res!981021 () Bool)

(assert (=> d!678664 (=> res!981021 e!1470119)))

(assert (=> d!678664 (= res!981021 ((_ is ElementMatch!6721) (regex!4373 otherR!12)))))

(assert (=> d!678664 (= (validRegex!2532 (regex!4373 otherR!12)) e!1470119)))

(declare-fun b!2294160 () Bool)

(assert (=> b!2294160 (= e!1470117 call!136801)))

(declare-fun b!2294164 () Bool)

(declare-fun res!981024 () Bool)

(assert (=> b!2294164 (=> res!981024 e!1470122)))

(assert (=> b!2294164 (= res!981024 (not ((_ is Concat!11257) (regex!4373 otherR!12))))))

(assert (=> b!2294164 (= e!1470118 e!1470122)))

(declare-fun b!2294165 () Bool)

(assert (=> b!2294165 (= e!1470123 e!1470118)))

(assert (=> b!2294165 (= c!363763 ((_ is Union!6721) (regex!4373 otherR!12)))))

(assert (= (and d!678664 (not res!981021)) b!2294163))

(assert (= (and b!2294163 c!363764) b!2294157))

(assert (= (and b!2294163 (not c!363764)) b!2294165))

(assert (= (and b!2294157 res!981023) b!2294160))

(assert (= (and b!2294165 c!363763) b!2294161))

(assert (= (and b!2294165 (not c!363763)) b!2294164))

(assert (= (and b!2294161 res!981022) b!2294162))

(assert (= (and b!2294164 (not res!981024)) b!2294158))

(assert (= (and b!2294158 res!981020) b!2294159))

(assert (= (or b!2294161 b!2294159) bm!136797))

(assert (= (or b!2294162 b!2294158) bm!136795))

(assert (= (or b!2294160 bm!136795) bm!136796))

(declare-fun m!2721839 () Bool)

(assert (=> b!2294157 m!2721839))

(declare-fun m!2721841 () Bool)

(assert (=> bm!136796 m!2721841))

(declare-fun m!2721843 () Bool)

(assert (=> bm!136797 m!2721843))

(assert (=> d!678470 d!678664))

(declare-fun d!678666 () Bool)

(assert (=> d!678666 true))

(declare-fun order!15225 () Int)

(declare-fun order!15227 () Int)

(declare-fun lambda!85820 () Int)

(declare-fun dynLambda!11865 (Int Int) Int)

(declare-fun dynLambda!11866 (Int Int) Int)

(assert (=> d!678666 (< (dynLambda!11865 order!15225 (toChars!6026 (transformation!4373 otherR!12))) (dynLambda!11866 order!15227 lambda!85820))))

(assert (=> d!678666 true))

(assert (=> d!678666 (< (dynLambda!11863 order!15221 (toValue!6167 (transformation!4373 otherR!12))) (dynLambda!11866 order!15227 lambda!85820))))

(declare-fun Forall!1093 (Int) Bool)

(assert (=> d!678666 (= (semiInverseModEq!1772 (toChars!6026 (transformation!4373 otherR!12)) (toValue!6167 (transformation!4373 otherR!12))) (Forall!1093 lambda!85820))))

(declare-fun bs!457253 () Bool)

(assert (= bs!457253 d!678666))

(declare-fun m!2721845 () Bool)

(assert (=> bs!457253 m!2721845))

(assert (=> d!678528 d!678666))

(declare-fun d!678668 () Bool)

(declare-fun lt!851166 () Int)

(assert (=> d!678668 (>= lt!851166 0)))

(declare-fun e!1470124 () Int)

(assert (=> d!678668 (= lt!851166 e!1470124)))

(declare-fun c!363765 () Bool)

(assert (=> d!678668 (= c!363765 ((_ is Nil!27312) input!1722))))

(assert (=> d!678668 (= (size!21510 input!1722) lt!851166)))

(declare-fun b!2294170 () Bool)

(assert (=> b!2294170 (= e!1470124 0)))

(declare-fun b!2294171 () Bool)

(assert (=> b!2294171 (= e!1470124 (+ 1 (size!21510 (t!205088 input!1722))))))

(assert (= (and d!678668 c!363765) b!2294170))

(assert (= (and d!678668 (not c!363765)) b!2294171))

(declare-fun m!2721847 () Bool)

(assert (=> b!2294171 m!2721847))

(assert (=> b!2293918 d!678668))

(assert (=> b!2293918 d!678504))

(declare-fun d!678670 () Bool)

(assert (=> d!678670 (= (isEmpty!15564 (list!10708 (charsOf!2761 (head!5004 tokens!456)))) ((_ is Nil!27312) (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))

(assert (=> bm!136776 d!678670))

(declare-fun d!678672 () Bool)

(assert (=> d!678672 (= (inv!36921 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456)))) (isBalanced!2683 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456))))))))

(declare-fun bs!457254 () Bool)

(assert (= bs!457254 d!678672))

(declare-fun m!2721849 () Bool)

(assert (=> bs!457254 m!2721849))

(assert (=> tb!136951 d!678672))

(declare-fun bs!457255 () Bool)

(declare-fun d!678674 () Bool)

(assert (= bs!457255 (and d!678674 d!678510)))

(declare-fun lambda!85821 () Int)

(assert (=> bs!457255 (= lambda!85821 lambda!85801)))

(assert (=> d!678674 true))

(declare-fun lt!851167 () Bool)

(assert (=> d!678674 (= lt!851167 (forall!5496 (t!205089 rules!1750) lambda!85821))))

(declare-fun e!1470126 () Bool)

(assert (=> d!678674 (= lt!851167 e!1470126)))

(declare-fun res!981026 () Bool)

(assert (=> d!678674 (=> res!981026 e!1470126)))

(assert (=> d!678674 (= res!981026 (not ((_ is Cons!27313) (t!205089 rules!1750))))))

(assert (=> d!678674 (= (rulesValidInductive!1541 thiss!16613 (t!205089 rules!1750)) lt!851167)))

(declare-fun b!2294172 () Bool)

(declare-fun e!1470125 () Bool)

(assert (=> b!2294172 (= e!1470126 e!1470125)))

(declare-fun res!981025 () Bool)

(assert (=> b!2294172 (=> (not res!981025) (not e!1470125))))

(assert (=> b!2294172 (= res!981025 (ruleValid!1463 thiss!16613 (h!32714 (t!205089 rules!1750))))))

(declare-fun b!2294173 () Bool)

(assert (=> b!2294173 (= e!1470125 (rulesValidInductive!1541 thiss!16613 (t!205089 (t!205089 rules!1750))))))

(assert (= (and d!678674 (not res!981026)) b!2294172))

(assert (= (and b!2294172 res!981025) b!2294173))

(declare-fun m!2721851 () Bool)

(assert (=> d!678674 m!2721851))

(declare-fun m!2721853 () Bool)

(assert (=> b!2294172 m!2721853))

(declare-fun m!2721855 () Bool)

(assert (=> b!2294173 m!2721855))

(assert (=> b!2293882 d!678674))

(declare-fun d!678676 () Bool)

(declare-fun c!363768 () Bool)

(assert (=> d!678676 (= c!363768 ((_ is Nil!27313) rules!1750))))

(declare-fun e!1470129 () (InoxSet Rule!8546))

(assert (=> d!678676 (= (content!3669 rules!1750) e!1470129)))

(declare-fun b!2294178 () Bool)

(assert (=> b!2294178 (= e!1470129 ((as const (Array Rule!8546 Bool)) false))))

(declare-fun b!2294179 () Bool)

(assert (=> b!2294179 (= e!1470129 ((_ map or) (store ((as const (Array Rule!8546 Bool)) false) (h!32714 rules!1750) true) (content!3669 (t!205089 rules!1750))))))

(assert (= (and d!678676 c!363768) b!2294178))

(assert (= (and d!678676 (not c!363768)) b!2294179))

(declare-fun m!2721857 () Bool)

(assert (=> b!2294179 m!2721857))

(declare-fun m!2721859 () Bool)

(assert (=> b!2294179 m!2721859))

(assert (=> d!678524 d!678676))

(declare-fun b!2294189 () Bool)

(declare-fun e!1470134 () List!27406)

(declare-fun e!1470135 () List!27406)

(assert (=> b!2294189 (= e!1470134 e!1470135)))

(declare-fun c!363774 () Bool)

(assert (=> b!2294189 (= c!363774 ((_ is Leaf!13066) (c!363650 (charsOf!2761 (head!5004 tokens!456)))))))

(declare-fun d!678678 () Bool)

(declare-fun c!363773 () Bool)

(assert (=> d!678678 (= c!363773 ((_ is Empty!8894) (c!363650 (charsOf!2761 (head!5004 tokens!456)))))))

(assert (=> d!678678 (= (list!10713 (c!363650 (charsOf!2761 (head!5004 tokens!456)))) e!1470134)))

(declare-fun b!2294191 () Bool)

(declare-fun ++!6676 (List!27406 List!27406) List!27406)

(assert (=> b!2294191 (= e!1470135 (++!6676 (list!10713 (left!20701 (c!363650 (charsOf!2761 (head!5004 tokens!456))))) (list!10713 (right!21031 (c!363650 (charsOf!2761 (head!5004 tokens!456)))))))))

(declare-fun b!2294188 () Bool)

(assert (=> b!2294188 (= e!1470134 Nil!27312)))

(declare-fun b!2294190 () Bool)

(declare-fun list!10716 (IArray!17793) List!27406)

(assert (=> b!2294190 (= e!1470135 (list!10716 (xs!11836 (c!363650 (charsOf!2761 (head!5004 tokens!456))))))))

(assert (= (and d!678678 c!363773) b!2294188))

(assert (= (and d!678678 (not c!363773)) b!2294189))

(assert (= (and b!2294189 c!363774) b!2294190))

(assert (= (and b!2294189 (not c!363774)) b!2294191))

(declare-fun m!2721861 () Bool)

(assert (=> b!2294191 m!2721861))

(declare-fun m!2721863 () Bool)

(assert (=> b!2294191 m!2721863))

(assert (=> b!2294191 m!2721861))

(assert (=> b!2294191 m!2721863))

(declare-fun m!2721865 () Bool)

(assert (=> b!2294191 m!2721865))

(declare-fun m!2721867 () Bool)

(assert (=> b!2294190 m!2721867))

(assert (=> d!678490 d!678678))

(assert (=> d!678538 d!678536))

(declare-fun d!678680 () Bool)

(assert (=> d!678680 (ruleValid!1463 thiss!16613 r!2363)))

(assert (=> d!678680 true))

(declare-fun _$65!1149 () Unit!40194)

(assert (=> d!678680 (= (choose!13397 thiss!16613 r!2363 rules!1750) _$65!1149)))

(declare-fun bs!457256 () Bool)

(assert (= bs!457256 d!678680))

(assert (=> bs!457256 m!2721313))

(assert (=> d!678538 d!678680))

(assert (=> d!678538 d!678524))

(declare-fun d!678682 () Bool)

(assert (=> d!678682 (= (inv!36913 (tag!4863 (h!32714 (t!205089 rules!1750)))) (= (mod (str.len (value!138449 (tag!4863 (h!32714 (t!205089 rules!1750))))) 2) 0))))

(assert (=> b!2293931 d!678682))

(declare-fun d!678684 () Bool)

(declare-fun res!981027 () Bool)

(declare-fun e!1470136 () Bool)

(assert (=> d!678684 (=> (not res!981027) (not e!1470136))))

(assert (=> d!678684 (= res!981027 (semiInverseModEq!1772 (toChars!6026 (transformation!4373 (h!32714 (t!205089 rules!1750)))) (toValue!6167 (transformation!4373 (h!32714 (t!205089 rules!1750))))))))

(assert (=> d!678684 (= (inv!36916 (transformation!4373 (h!32714 (t!205089 rules!1750)))) e!1470136)))

(declare-fun b!2294192 () Bool)

(assert (=> b!2294192 (= e!1470136 (equivClasses!1691 (toChars!6026 (transformation!4373 (h!32714 (t!205089 rules!1750)))) (toValue!6167 (transformation!4373 (h!32714 (t!205089 rules!1750))))))))

(assert (= (and d!678684 res!981027) b!2294192))

(declare-fun m!2721869 () Bool)

(assert (=> d!678684 m!2721869))

(declare-fun m!2721871 () Bool)

(assert (=> b!2294192 m!2721871))

(assert (=> b!2293931 d!678684))

(declare-fun d!678686 () Bool)

(assert (=> d!678686 (= (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456)))) (h!32713 (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))

(assert (=> b!2293726 d!678686))

(declare-fun d!678688 () Bool)

(declare-fun res!981032 () Bool)

(declare-fun e!1470141 () Bool)

(assert (=> d!678688 (=> res!981032 e!1470141)))

(assert (=> d!678688 (= res!981032 ((_ is Nil!27313) rules!1750))))

(assert (=> d!678688 (= (noDuplicateTag!1614 thiss!16613 rules!1750 Nil!27316) e!1470141)))

(declare-fun b!2294197 () Bool)

(declare-fun e!1470142 () Bool)

(assert (=> b!2294197 (= e!1470141 e!1470142)))

(declare-fun res!981033 () Bool)

(assert (=> b!2294197 (=> (not res!981033) (not e!1470142))))

(declare-fun contains!4753 (List!27410 String!29779) Bool)

(assert (=> b!2294197 (= res!981033 (not (contains!4753 Nil!27316 (tag!4863 (h!32714 rules!1750)))))))

(declare-fun b!2294198 () Bool)

(assert (=> b!2294198 (= e!1470142 (noDuplicateTag!1614 thiss!16613 (t!205089 rules!1750) (Cons!27316 (tag!4863 (h!32714 rules!1750)) Nil!27316)))))

(assert (= (and d!678688 (not res!981032)) b!2294197))

(assert (= (and b!2294197 res!981033) b!2294198))

(declare-fun m!2721873 () Bool)

(assert (=> b!2294197 m!2721873))

(declare-fun m!2721875 () Bool)

(assert (=> b!2294198 m!2721875))

(assert (=> b!2293921 d!678688))

(declare-fun d!678690 () Bool)

(declare-fun c!363779 () Bool)

(assert (=> d!678690 (= c!363779 ((_ is Empty!8895) (c!363652 (_1!16080 lt!851064))))))

(declare-fun e!1470147 () List!27408)

(assert (=> d!678690 (= (list!10712 (c!363652 (_1!16080 lt!851064))) e!1470147)))

(declare-fun b!2294207 () Bool)

(assert (=> b!2294207 (= e!1470147 Nil!27314)))

(declare-fun b!2294208 () Bool)

(declare-fun e!1470148 () List!27408)

(assert (=> b!2294208 (= e!1470147 e!1470148)))

(declare-fun c!363780 () Bool)

(assert (=> b!2294208 (= c!363780 ((_ is Leaf!13067) (c!363652 (_1!16080 lt!851064))))))

(declare-fun b!2294210 () Bool)

(declare-fun ++!6678 (List!27408 List!27408) List!27408)

(assert (=> b!2294210 (= e!1470148 (++!6678 (list!10712 (left!20702 (c!363652 (_1!16080 lt!851064)))) (list!10712 (right!21032 (c!363652 (_1!16080 lt!851064))))))))

(declare-fun b!2294209 () Bool)

(declare-fun list!10717 (IArray!17795) List!27408)

(assert (=> b!2294209 (= e!1470148 (list!10717 (xs!11837 (c!363652 (_1!16080 lt!851064)))))))

(assert (= (and d!678690 c!363779) b!2294207))

(assert (= (and d!678690 (not c!363779)) b!2294208))

(assert (= (and b!2294208 c!363780) b!2294209))

(assert (= (and b!2294208 (not c!363780)) b!2294210))

(declare-fun m!2721877 () Bool)

(assert (=> b!2294210 m!2721877))

(declare-fun m!2721879 () Bool)

(assert (=> b!2294210 m!2721879))

(assert (=> b!2294210 m!2721877))

(assert (=> b!2294210 m!2721879))

(declare-fun m!2721881 () Bool)

(assert (=> b!2294210 m!2721881))

(declare-fun m!2721883 () Bool)

(assert (=> b!2294209 m!2721883))

(assert (=> d!678418 d!678690))

(declare-fun d!678692 () Bool)

(declare-fun charsToBigInt!1 (List!27405) Int)

(assert (=> d!678692 (= (inv!17 (value!138450 (h!32715 tokens!456))) (= (charsToBigInt!1 (text!32193 (value!138450 (h!32715 tokens!456)))) (value!138442 (value!138450 (h!32715 tokens!456)))))))

(declare-fun bs!457257 () Bool)

(assert (= bs!457257 d!678692))

(declare-fun m!2721885 () Bool)

(assert (=> bs!457257 m!2721885))

(assert (=> b!2293903 d!678692))

(declare-fun bs!457258 () Bool)

(declare-fun d!678694 () Bool)

(assert (= bs!457258 (and d!678694 d!678654)))

(declare-fun lambda!85822 () Int)

(assert (=> bs!457258 (= (= (toValue!6167 (transformation!4373 r!2363)) (toValue!6167 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) (= lambda!85822 lambda!85817))))

(assert (=> d!678694 true))

(assert (=> d!678694 (< (dynLambda!11863 order!15221 (toValue!6167 (transformation!4373 r!2363))) (dynLambda!11864 order!15223 lambda!85822))))

(assert (=> d!678694 (= (equivClasses!1691 (toChars!6026 (transformation!4373 r!2363)) (toValue!6167 (transformation!4373 r!2363))) (Forall2!710 lambda!85822))))

(declare-fun bs!457259 () Bool)

(assert (= bs!457259 d!678694))

(declare-fun m!2721887 () Bool)

(assert (=> bs!457259 m!2721887))

(assert (=> b!2293888 d!678694))

(declare-fun bs!457260 () Bool)

(declare-fun d!678696 () Bool)

(assert (= bs!457260 (and d!678696 d!678510)))

(declare-fun lambda!85825 () Int)

(assert (=> bs!457260 (= lambda!85825 lambda!85801)))

(declare-fun bs!457261 () Bool)

(assert (= bs!457261 (and d!678696 d!678674)))

(assert (=> bs!457261 (= lambda!85825 lambda!85821)))

(assert (=> d!678696 true))

(declare-fun lt!851170 () Bool)

(assert (=> d!678696 (= lt!851170 (rulesValidInductive!1541 thiss!16613 rules!1750))))

(assert (=> d!678696 (= lt!851170 (forall!5496 rules!1750 lambda!85825))))

(assert (=> d!678696 (= (rulesValid!1616 thiss!16613 rules!1750) lt!851170)))

(declare-fun bs!457262 () Bool)

(assert (= bs!457262 d!678696))

(assert (=> bs!457262 m!2721365))

(declare-fun m!2721889 () Bool)

(assert (=> bs!457262 m!2721889))

(assert (=> d!678546 d!678696))

(declare-fun d!678698 () Bool)

(assert (=> d!678698 (= (list!10708 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456)))) (list!10713 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456))))))))

(declare-fun bs!457263 () Bool)

(assert (= bs!457263 d!678698))

(declare-fun m!2721891 () Bool)

(assert (=> bs!457263 m!2721891))

(assert (=> b!2293741 d!678698))

(declare-fun d!678700 () Bool)

(declare-fun lt!851173 () Bool)

(assert (=> d!678700 (= lt!851173 (isEmpty!15560 (list!10709 (_1!16080 lt!851081))))))

(declare-fun isEmpty!15566 (Conc!8895) Bool)

(assert (=> d!678700 (= lt!851173 (isEmpty!15566 (c!363652 (_1!16080 lt!851081))))))

(assert (=> d!678700 (= (isEmpty!15563 (_1!16080 lt!851081)) lt!851173)))

(declare-fun bs!457264 () Bool)

(assert (= bs!457264 d!678700))

(assert (=> bs!457264 m!2721415))

(assert (=> bs!457264 m!2721415))

(declare-fun m!2721893 () Bool)

(assert (=> bs!457264 m!2721893))

(declare-fun m!2721895 () Bool)

(assert (=> bs!457264 m!2721895))

(assert (=> b!2293603 d!678700))

(declare-fun d!678702 () Bool)

(declare-fun lt!851174 () Int)

(assert (=> d!678702 (= lt!851174 (size!21510 (list!10708 (_2!16080 lt!851081))))))

(assert (=> d!678702 (= lt!851174 (size!21514 (c!363650 (_2!16080 lt!851081))))))

(assert (=> d!678702 (= (size!21509 (_2!16080 lt!851081)) lt!851174)))

(declare-fun bs!457265 () Bool)

(assert (= bs!457265 d!678702))

(assert (=> bs!457265 m!2721405))

(assert (=> bs!457265 m!2721405))

(declare-fun m!2721897 () Bool)

(assert (=> bs!457265 m!2721897))

(declare-fun m!2721899 () Bool)

(assert (=> bs!457265 m!2721899))

(assert (=> b!2293601 d!678702))

(declare-fun d!678704 () Bool)

(declare-fun lt!851175 () Int)

(assert (=> d!678704 (= lt!851175 (size!21510 (list!10708 (seqFromList!3077 input!1722))))))

(assert (=> d!678704 (= lt!851175 (size!21514 (c!363650 (seqFromList!3077 input!1722))))))

(assert (=> d!678704 (= (size!21509 (seqFromList!3077 input!1722)) lt!851175)))

(declare-fun bs!457266 () Bool)

(assert (= bs!457266 d!678704))

(assert (=> bs!457266 m!2721361))

(assert (=> bs!457266 m!2721407))

(assert (=> bs!457266 m!2721407))

(declare-fun m!2721901 () Bool)

(assert (=> bs!457266 m!2721901))

(declare-fun m!2721903 () Bool)

(assert (=> bs!457266 m!2721903))

(assert (=> b!2293601 d!678704))

(declare-fun d!678706 () Bool)

(declare-fun charsToInt!0 (List!27405) (_ BitVec 32))

(assert (=> d!678706 (= (inv!16 (value!138450 (h!32715 tokens!456))) (= (charsToInt!0 (text!32192 (value!138450 (h!32715 tokens!456)))) (value!138441 (value!138450 (h!32715 tokens!456)))))))

(declare-fun bs!457267 () Bool)

(assert (= bs!457267 d!678706))

(declare-fun m!2721905 () Bool)

(assert (=> bs!457267 m!2721905))

(assert (=> b!2293899 d!678706))

(declare-fun b!2294211 () Bool)

(declare-fun e!1470153 () Bool)

(declare-fun e!1470152 () Bool)

(assert (=> b!2294211 (= e!1470153 e!1470152)))

(declare-fun res!981035 () Bool)

(assert (=> b!2294211 (=> res!981035 e!1470152)))

(declare-fun call!136803 () Bool)

(assert (=> b!2294211 (= res!981035 call!136803)))

(declare-fun d!678708 () Bool)

(declare-fun e!1470154 () Bool)

(assert (=> d!678708 e!1470154))

(declare-fun c!363781 () Bool)

(assert (=> d!678708 (= c!363781 ((_ is EmptyExpr!6721) (derivativeStep!1530 (regex!4373 r!2363) (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))))

(declare-fun lt!851176 () Bool)

(declare-fun e!1470155 () Bool)

(assert (=> d!678708 (= lt!851176 e!1470155)))

(declare-fun c!363783 () Bool)

(assert (=> d!678708 (= c!363783 (isEmpty!15564 (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456))))))))

(assert (=> d!678708 (validRegex!2532 (derivativeStep!1530 (regex!4373 r!2363) (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456))))))))

(assert (=> d!678708 (= (matchR!2978 (derivativeStep!1530 (regex!4373 r!2363) (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456))))) (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456))))) lt!851176)))

(declare-fun b!2294212 () Bool)

(declare-fun res!981041 () Bool)

(declare-fun e!1470149 () Bool)

(assert (=> b!2294212 (=> res!981041 e!1470149)))

(declare-fun e!1470150 () Bool)

(assert (=> b!2294212 (= res!981041 e!1470150)))

(declare-fun res!981037 () Bool)

(assert (=> b!2294212 (=> (not res!981037) (not e!1470150))))

(assert (=> b!2294212 (= res!981037 lt!851176)))

(declare-fun b!2294213 () Bool)

(assert (=> b!2294213 (= e!1470155 (nullable!1870 (derivativeStep!1530 (regex!4373 r!2363) (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))))

(declare-fun bm!136798 () Bool)

(assert (=> bm!136798 (= call!136803 (isEmpty!15564 (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456))))))))

(declare-fun b!2294214 () Bool)

(assert (=> b!2294214 (= e!1470150 (= (head!5006 (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456))))) (c!363651 (derivativeStep!1530 (regex!4373 r!2363) (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456))))))))))

(declare-fun b!2294215 () Bool)

(assert (=> b!2294215 (= e!1470149 e!1470153)))

(declare-fun res!981036 () Bool)

(assert (=> b!2294215 (=> (not res!981036) (not e!1470153))))

(assert (=> b!2294215 (= res!981036 (not lt!851176))))

(declare-fun b!2294216 () Bool)

(declare-fun res!981039 () Bool)

(assert (=> b!2294216 (=> (not res!981039) (not e!1470150))))

(assert (=> b!2294216 (= res!981039 (isEmpty!15564 (tail!3313 (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))))

(declare-fun b!2294217 () Bool)

(declare-fun res!981034 () Bool)

(assert (=> b!2294217 (=> res!981034 e!1470152)))

(assert (=> b!2294217 (= res!981034 (not (isEmpty!15564 (tail!3313 (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456))))))))))

(declare-fun b!2294218 () Bool)

(declare-fun res!981040 () Bool)

(assert (=> b!2294218 (=> res!981040 e!1470149)))

(assert (=> b!2294218 (= res!981040 (not ((_ is ElementMatch!6721) (derivativeStep!1530 (regex!4373 r!2363) (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456))))))))))

(declare-fun e!1470151 () Bool)

(assert (=> b!2294218 (= e!1470151 e!1470149)))

(declare-fun b!2294219 () Bool)

(assert (=> b!2294219 (= e!1470152 (not (= (head!5006 (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456))))) (c!363651 (derivativeStep!1530 (regex!4373 r!2363) (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))))))

(declare-fun b!2294220 () Bool)

(assert (=> b!2294220 (= e!1470154 (= lt!851176 call!136803))))

(declare-fun b!2294221 () Bool)

(declare-fun res!981038 () Bool)

(assert (=> b!2294221 (=> (not res!981038) (not e!1470150))))

(assert (=> b!2294221 (= res!981038 (not call!136803))))

(declare-fun b!2294222 () Bool)

(assert (=> b!2294222 (= e!1470151 (not lt!851176))))

(declare-fun b!2294223 () Bool)

(assert (=> b!2294223 (= e!1470155 (matchR!2978 (derivativeStep!1530 (derivativeStep!1530 (regex!4373 r!2363) (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456))))) (head!5006 (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456)))))) (tail!3313 (tail!3313 (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))))

(declare-fun b!2294224 () Bool)

(assert (=> b!2294224 (= e!1470154 e!1470151)))

(declare-fun c!363782 () Bool)

(assert (=> b!2294224 (= c!363782 ((_ is EmptyLang!6721) (derivativeStep!1530 (regex!4373 r!2363) (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))))

(assert (= (and d!678708 c!363783) b!2294213))

(assert (= (and d!678708 (not c!363783)) b!2294223))

(assert (= (and d!678708 c!363781) b!2294220))

(assert (= (and d!678708 (not c!363781)) b!2294224))

(assert (= (and b!2294224 c!363782) b!2294222))

(assert (= (and b!2294224 (not c!363782)) b!2294218))

(assert (= (and b!2294218 (not res!981040)) b!2294212))

(assert (= (and b!2294212 res!981037) b!2294221))

(assert (= (and b!2294221 res!981038) b!2294216))

(assert (= (and b!2294216 res!981039) b!2294214))

(assert (= (and b!2294212 (not res!981041)) b!2294215))

(assert (= (and b!2294215 res!981036) b!2294211))

(assert (= (and b!2294211 (not res!981035)) b!2294217))

(assert (= (and b!2294217 (not res!981034)) b!2294219))

(assert (= (or b!2294220 b!2294211 b!2294221) bm!136798))

(assert (=> b!2294223 m!2721511))

(declare-fun m!2721907 () Bool)

(assert (=> b!2294223 m!2721907))

(assert (=> b!2294223 m!2721509))

(assert (=> b!2294223 m!2721907))

(declare-fun m!2721909 () Bool)

(assert (=> b!2294223 m!2721909))

(assert (=> b!2294223 m!2721511))

(declare-fun m!2721911 () Bool)

(assert (=> b!2294223 m!2721911))

(assert (=> b!2294223 m!2721909))

(assert (=> b!2294223 m!2721911))

(declare-fun m!2721913 () Bool)

(assert (=> b!2294223 m!2721913))

(assert (=> b!2294214 m!2721511))

(assert (=> b!2294214 m!2721907))

(assert (=> b!2294217 m!2721511))

(assert (=> b!2294217 m!2721911))

(assert (=> b!2294217 m!2721911))

(declare-fun m!2721915 () Bool)

(assert (=> b!2294217 m!2721915))

(assert (=> d!678708 m!2721511))

(assert (=> d!678708 m!2721515))

(assert (=> d!678708 m!2721509))

(declare-fun m!2721917 () Bool)

(assert (=> d!678708 m!2721917))

(assert (=> b!2294219 m!2721511))

(assert (=> b!2294219 m!2721907))

(assert (=> b!2294213 m!2721509))

(declare-fun m!2721919 () Bool)

(assert (=> b!2294213 m!2721919))

(assert (=> bm!136798 m!2721511))

(assert (=> bm!136798 m!2721515))

(assert (=> b!2294216 m!2721511))

(assert (=> b!2294216 m!2721911))

(assert (=> b!2294216 m!2721911))

(assert (=> b!2294216 m!2721915))

(assert (=> b!2293730 d!678708))

(declare-fun b!2294245 () Bool)

(declare-fun e!1470167 () Regex!6721)

(declare-fun e!1470166 () Regex!6721)

(assert (=> b!2294245 (= e!1470167 e!1470166)))

(declare-fun c!363797 () Bool)

(assert (=> b!2294245 (= c!363797 ((_ is ElementMatch!6721) (regex!4373 r!2363)))))

(declare-fun b!2294246 () Bool)

(declare-fun e!1470168 () Regex!6721)

(declare-fun call!136812 () Regex!6721)

(assert (=> b!2294246 (= e!1470168 (Concat!11257 call!136812 (regex!4373 r!2363)))))

(declare-fun d!678710 () Bool)

(declare-fun lt!851179 () Regex!6721)

(assert (=> d!678710 (validRegex!2532 lt!851179)))

(assert (=> d!678710 (= lt!851179 e!1470167)))

(declare-fun c!363796 () Bool)

(assert (=> d!678710 (= c!363796 (or ((_ is EmptyExpr!6721) (regex!4373 r!2363)) ((_ is EmptyLang!6721) (regex!4373 r!2363))))))

(assert (=> d!678710 (validRegex!2532 (regex!4373 r!2363))))

(assert (=> d!678710 (= (derivativeStep!1530 (regex!4373 r!2363) (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456))))) lt!851179)))

(declare-fun b!2294247 () Bool)

(declare-fun e!1470169 () Regex!6721)

(declare-fun call!136815 () Regex!6721)

(assert (=> b!2294247 (= e!1470169 (Union!6721 (Concat!11257 call!136815 (regTwo!13954 (regex!4373 r!2363))) EmptyLang!6721))))

(declare-fun b!2294248 () Bool)

(declare-fun c!363798 () Bool)

(assert (=> b!2294248 (= c!363798 ((_ is Union!6721) (regex!4373 r!2363)))))

(declare-fun e!1470170 () Regex!6721)

(assert (=> b!2294248 (= e!1470166 e!1470170)))

(declare-fun bm!136807 () Bool)

(assert (=> bm!136807 (= call!136815 call!136812)))

(declare-fun bm!136808 () Bool)

(declare-fun c!363794 () Bool)

(declare-fun call!136813 () Regex!6721)

(assert (=> bm!136808 (= call!136813 (derivativeStep!1530 (ite c!363798 (regTwo!13955 (regex!4373 r!2363)) (ite c!363794 (reg!7050 (regex!4373 r!2363)) (regOne!13954 (regex!4373 r!2363)))) (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456))))))))

(declare-fun bm!136809 () Bool)

(declare-fun call!136814 () Regex!6721)

(assert (=> bm!136809 (= call!136814 (derivativeStep!1530 (ite c!363798 (regOne!13955 (regex!4373 r!2363)) (regTwo!13954 (regex!4373 r!2363))) (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456))))))))

(declare-fun bm!136810 () Bool)

(assert (=> bm!136810 (= call!136812 call!136813)))

(declare-fun b!2294249 () Bool)

(assert (=> b!2294249 (= e!1470170 (Union!6721 call!136814 call!136813))))

(declare-fun b!2294250 () Bool)

(declare-fun c!363795 () Bool)

(assert (=> b!2294250 (= c!363795 (nullable!1870 (regOne!13954 (regex!4373 r!2363))))))

(assert (=> b!2294250 (= e!1470168 e!1470169)))

(declare-fun b!2294251 () Bool)

(assert (=> b!2294251 (= e!1470169 (Union!6721 (Concat!11257 call!136815 (regTwo!13954 (regex!4373 r!2363))) call!136814))))

(declare-fun b!2294252 () Bool)

(assert (=> b!2294252 (= e!1470166 (ite (= (head!5006 (list!10708 (charsOf!2761 (head!5004 tokens!456)))) (c!363651 (regex!4373 r!2363))) EmptyExpr!6721 EmptyLang!6721))))

(declare-fun b!2294253 () Bool)

(assert (=> b!2294253 (= e!1470170 e!1470168)))

(assert (=> b!2294253 (= c!363794 ((_ is Star!6721) (regex!4373 r!2363)))))

(declare-fun b!2294254 () Bool)

(assert (=> b!2294254 (= e!1470167 EmptyLang!6721)))

(assert (= (and d!678710 c!363796) b!2294254))

(assert (= (and d!678710 (not c!363796)) b!2294245))

(assert (= (and b!2294245 c!363797) b!2294252))

(assert (= (and b!2294245 (not c!363797)) b!2294248))

(assert (= (and b!2294248 c!363798) b!2294249))

(assert (= (and b!2294248 (not c!363798)) b!2294253))

(assert (= (and b!2294253 c!363794) b!2294246))

(assert (= (and b!2294253 (not c!363794)) b!2294250))

(assert (= (and b!2294250 c!363795) b!2294251))

(assert (= (and b!2294250 (not c!363795)) b!2294247))

(assert (= (or b!2294251 b!2294247) bm!136807))

(assert (= (or b!2294246 bm!136807) bm!136810))

(assert (= (or b!2294249 b!2294251) bm!136809))

(assert (= (or b!2294249 bm!136810) bm!136808))

(declare-fun m!2721921 () Bool)

(assert (=> d!678710 m!2721921))

(assert (=> d!678710 m!2721519))

(assert (=> bm!136808 m!2721507))

(declare-fun m!2721923 () Bool)

(assert (=> bm!136808 m!2721923))

(assert (=> bm!136809 m!2721507))

(declare-fun m!2721925 () Bool)

(assert (=> bm!136809 m!2721925))

(declare-fun m!2721927 () Bool)

(assert (=> b!2294250 m!2721927))

(assert (=> b!2293730 d!678710))

(assert (=> b!2293730 d!678686))

(assert (=> b!2293730 d!678660))

(declare-fun d!678712 () Bool)

(assert (=> d!678712 (= (nullable!1870 (regex!4373 r!2363)) (nullableFct!453 (regex!4373 r!2363)))))

(declare-fun bs!457268 () Bool)

(assert (= bs!457268 d!678712))

(declare-fun m!2721929 () Bool)

(assert (=> bs!457268 m!2721929))

(assert (=> b!2293720 d!678712))

(declare-fun d!678714 () Bool)

(declare-fun lt!851180 () Int)

(assert (=> d!678714 (>= lt!851180 0)))

(declare-fun e!1470172 () Int)

(assert (=> d!678714 (= lt!851180 e!1470172)))

(declare-fun c!363800 () Bool)

(assert (=> d!678714 (= c!363800 (and ((_ is Cons!27313) (t!205089 rules!1750)) (= (h!32714 (t!205089 rules!1750)) otherR!12)))))

(assert (=> d!678714 (contains!4751 (t!205089 rules!1750) otherR!12)))

(assert (=> d!678714 (= (getIndex!386 (t!205089 rules!1750) otherR!12) lt!851180)))

(declare-fun b!2294257 () Bool)

(declare-fun e!1470171 () Int)

(assert (=> b!2294257 (= e!1470171 (+ 1 (getIndex!386 (t!205089 (t!205089 rules!1750)) otherR!12)))))

(declare-fun b!2294256 () Bool)

(assert (=> b!2294256 (= e!1470172 e!1470171)))

(declare-fun c!363799 () Bool)

(assert (=> b!2294256 (= c!363799 (and ((_ is Cons!27313) (t!205089 rules!1750)) (not (= (h!32714 (t!205089 rules!1750)) otherR!12))))))

(declare-fun b!2294255 () Bool)

(assert (=> b!2294255 (= e!1470172 0)))

(declare-fun b!2294258 () Bool)

(assert (=> b!2294258 (= e!1470171 (- 1))))

(assert (= (and d!678714 c!363800) b!2294255))

(assert (= (and d!678714 (not c!363800)) b!2294256))

(assert (= (and b!2294256 c!363799) b!2294257))

(assert (= (and b!2294256 (not c!363799)) b!2294258))

(assert (=> d!678714 m!2721549))

(declare-fun m!2721931 () Bool)

(assert (=> b!2294257 m!2721931))

(assert (=> b!2293654 d!678714))

(declare-fun d!678716 () Bool)

(assert (=> d!678716 (= (isEmpty!15564 (originalCharacters!5143 (h!32715 tokens!456))) ((_ is Nil!27312) (originalCharacters!5143 (h!32715 tokens!456))))))

(assert (=> d!678496 d!678716))

(declare-fun d!678718 () Bool)

(declare-fun e!1470175 () Bool)

(assert (=> d!678718 e!1470175))

(declare-fun res!981044 () Bool)

(assert (=> d!678718 (=> (not res!981044) (not e!1470175))))

(declare-fun lt!851183 () BalanceConc!17516)

(assert (=> d!678718 (= res!981044 (= (list!10708 lt!851183) input!1722))))

(declare-fun fromList!540 (List!27406) Conc!8894)

(assert (=> d!678718 (= lt!851183 (BalanceConc!17517 (fromList!540 input!1722)))))

(assert (=> d!678718 (= (fromListB!1382 input!1722) lt!851183)))

(declare-fun b!2294261 () Bool)

(assert (=> b!2294261 (= e!1470175 (isBalanced!2683 (fromList!540 input!1722)))))

(assert (= (and d!678718 res!981044) b!2294261))

(declare-fun m!2721933 () Bool)

(assert (=> d!678718 m!2721933))

(declare-fun m!2721935 () Bool)

(assert (=> d!678718 m!2721935))

(assert (=> b!2294261 m!2721935))

(assert (=> b!2294261 m!2721935))

(declare-fun m!2721937 () Bool)

(assert (=> b!2294261 m!2721937))

(assert (=> d!678438 d!678718))

(declare-fun d!678720 () Bool)

(declare-fun lt!851184 () Int)

(assert (=> d!678720 (>= lt!851184 0)))

(declare-fun e!1470176 () Int)

(assert (=> d!678720 (= lt!851184 e!1470176)))

(declare-fun c!363802 () Bool)

(assert (=> d!678720 (= c!363802 ((_ is Nil!27312) (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))

(assert (=> d!678720 (= (size!21510 (list!10708 (charsOf!2761 (head!5004 tokens!456)))) lt!851184)))

(declare-fun b!2294262 () Bool)

(assert (=> b!2294262 (= e!1470176 0)))

(declare-fun b!2294263 () Bool)

(assert (=> b!2294263 (= e!1470176 (+ 1 (size!21510 (t!205088 (list!10708 (charsOf!2761 (head!5004 tokens!456)))))))))

(assert (= (and d!678720 c!363802) b!2294262))

(assert (= (and d!678720 (not c!363802)) b!2294263))

(declare-fun m!2721939 () Bool)

(assert (=> b!2294263 m!2721939))

(assert (=> d!678502 d!678720))

(assert (=> d!678502 d!678490))

(declare-fun d!678722 () Bool)

(declare-fun lt!851187 () Int)

(assert (=> d!678722 (= lt!851187 (size!21510 (list!10713 (c!363650 (charsOf!2761 (head!5004 tokens!456))))))))

(assert (=> d!678722 (= lt!851187 (ite ((_ is Empty!8894) (c!363650 (charsOf!2761 (head!5004 tokens!456)))) 0 (ite ((_ is Leaf!13066) (c!363650 (charsOf!2761 (head!5004 tokens!456)))) (csize!18019 (c!363650 (charsOf!2761 (head!5004 tokens!456)))) (csize!18018 (c!363650 (charsOf!2761 (head!5004 tokens!456)))))))))

(assert (=> d!678722 (= (size!21514 (c!363650 (charsOf!2761 (head!5004 tokens!456)))) lt!851187)))

(declare-fun bs!457269 () Bool)

(assert (= bs!457269 d!678722))

(assert (=> bs!457269 m!2721523))

(assert (=> bs!457269 m!2721523))

(declare-fun m!2721941 () Bool)

(assert (=> bs!457269 m!2721941))

(assert (=> d!678502 d!678722))

(declare-fun d!678724 () Bool)

(declare-fun res!981045 () Bool)

(declare-fun e!1470177 () Bool)

(assert (=> d!678724 (=> (not res!981045) (not e!1470177))))

(assert (=> d!678724 (= res!981045 (not (isEmpty!15564 (originalCharacters!5143 (h!32715 (t!205090 tokens!456))))))))

(assert (=> d!678724 (= (inv!36917 (h!32715 (t!205090 tokens!456))) e!1470177)))

(declare-fun b!2294264 () Bool)

(declare-fun res!981046 () Bool)

(assert (=> b!2294264 (=> (not res!981046) (not e!1470177))))

(assert (=> b!2294264 (= res!981046 (= (originalCharacters!5143 (h!32715 (t!205090 tokens!456))) (list!10708 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))) (value!138450 (h!32715 (t!205090 tokens!456)))))))))

(declare-fun b!2294265 () Bool)

(assert (=> b!2294265 (= e!1470177 (= (size!21508 (h!32715 (t!205090 tokens!456))) (size!21510 (originalCharacters!5143 (h!32715 (t!205090 tokens!456))))))))

(assert (= (and d!678724 res!981045) b!2294264))

(assert (= (and b!2294264 res!981046) b!2294265))

(declare-fun b_lambda!73123 () Bool)

(assert (=> (not b_lambda!73123) (not b!2294264)))

(declare-fun t!205147 () Bool)

(declare-fun tb!136975 () Bool)

(assert (=> (and b!2293534 (= (toChars!6026 (transformation!4373 r!2363)) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456)))))) t!205147) tb!136975))

(declare-fun b!2294266 () Bool)

(declare-fun e!1470178 () Bool)

(declare-fun tp!727382 () Bool)

(assert (=> b!2294266 (= e!1470178 (and (inv!36920 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))) (value!138450 (h!32715 (t!205090 tokens!456)))))) tp!727382))))

(declare-fun result!166982 () Bool)

(assert (=> tb!136975 (= result!166982 (and (inv!36921 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))) (value!138450 (h!32715 (t!205090 tokens!456))))) e!1470178))))

(assert (= tb!136975 b!2294266))

(declare-fun m!2721943 () Bool)

(assert (=> b!2294266 m!2721943))

(declare-fun m!2721945 () Bool)

(assert (=> tb!136975 m!2721945))

(assert (=> b!2294264 t!205147))

(declare-fun b_and!182441 () Bool)

(assert (= b_and!182419 (and (=> t!205147 result!166982) b_and!182441)))

(declare-fun t!205149 () Bool)

(declare-fun tb!136977 () Bool)

(assert (=> (and b!2293553 (= (toChars!6026 (transformation!4373 (h!32714 rules!1750))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456)))))) t!205149) tb!136977))

(declare-fun result!166984 () Bool)

(assert (= result!166984 result!166982))

(assert (=> b!2294264 t!205149))

(declare-fun b_and!182443 () Bool)

(assert (= b_and!182423 (and (=> t!205149 result!166984) b_and!182443)))

(declare-fun t!205151 () Bool)

(declare-fun tb!136979 () Bool)

(assert (=> (and b!2293549 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456)))))) t!205151) tb!136979))

(declare-fun result!166986 () Bool)

(assert (= result!166986 result!166982))

(assert (=> b!2294264 t!205151))

(declare-fun b_and!182445 () Bool)

(assert (= b_and!182417 (and (=> t!205151 result!166986) b_and!182445)))

(declare-fun t!205153 () Bool)

(declare-fun tb!136981 () Bool)

(assert (=> (and b!2293932 (= (toChars!6026 (transformation!4373 (h!32714 (t!205089 rules!1750)))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456)))))) t!205153) tb!136981))

(declare-fun result!166988 () Bool)

(assert (= result!166988 result!166982))

(assert (=> b!2294264 t!205153))

(declare-fun b_and!182447 () Bool)

(assert (= b_and!182435 (and (=> t!205153 result!166988) b_and!182447)))

(declare-fun t!205155 () Bool)

(declare-fun tb!136983 () Bool)

(assert (=> (and b!2293559 (= (toChars!6026 (transformation!4373 otherR!12)) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456)))))) t!205155) tb!136983))

(declare-fun result!166990 () Bool)

(assert (= result!166990 result!166982))

(assert (=> b!2294264 t!205155))

(declare-fun b_and!182449 () Bool)

(assert (= b_and!182421 (and (=> t!205155 result!166990) b_and!182449)))

(declare-fun t!205157 () Bool)

(declare-fun tb!136985 () Bool)

(assert (=> (and b!2293946 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456)))))) t!205157) tb!136985))

(declare-fun result!166992 () Bool)

(assert (= result!166992 result!166982))

(assert (=> b!2294264 t!205157))

(declare-fun b_and!182451 () Bool)

(assert (= b_and!182439 (and (=> t!205157 result!166992) b_and!182451)))

(declare-fun m!2721947 () Bool)

(assert (=> d!678724 m!2721947))

(declare-fun m!2721949 () Bool)

(assert (=> b!2294264 m!2721949))

(assert (=> b!2294264 m!2721949))

(declare-fun m!2721951 () Bool)

(assert (=> b!2294264 m!2721951))

(declare-fun m!2721953 () Bool)

(assert (=> b!2294265 m!2721953))

(assert (=> b!2293943 d!678724))

(declare-fun bs!457270 () Bool)

(declare-fun d!678726 () Bool)

(assert (= bs!457270 (and d!678726 d!678666)))

(declare-fun lambda!85826 () Int)

(assert (=> bs!457270 (= (and (= (toChars!6026 (transformation!4373 (h!32714 rules!1750))) (toChars!6026 (transformation!4373 otherR!12))) (= (toValue!6167 (transformation!4373 (h!32714 rules!1750))) (toValue!6167 (transformation!4373 otherR!12)))) (= lambda!85826 lambda!85820))))

(assert (=> d!678726 true))

(assert (=> d!678726 (< (dynLambda!11865 order!15225 (toChars!6026 (transformation!4373 (h!32714 rules!1750)))) (dynLambda!11866 order!15227 lambda!85826))))

(assert (=> d!678726 true))

(assert (=> d!678726 (< (dynLambda!11863 order!15221 (toValue!6167 (transformation!4373 (h!32714 rules!1750)))) (dynLambda!11866 order!15227 lambda!85826))))

(assert (=> d!678726 (= (semiInverseModEq!1772 (toChars!6026 (transformation!4373 (h!32714 rules!1750))) (toValue!6167 (transformation!4373 (h!32714 rules!1750)))) (Forall!1093 lambda!85826))))

(declare-fun bs!457271 () Bool)

(assert (= bs!457271 d!678726))

(declare-fun m!2721955 () Bool)

(assert (=> bs!457271 m!2721955))

(assert (=> d!678508 d!678726))

(declare-fun d!678728 () Bool)

(assert (=> d!678728 (= (list!10709 (_1!16080 lt!851081)) (list!10712 (c!363652 (_1!16080 lt!851081))))))

(declare-fun bs!457272 () Bool)

(assert (= bs!457272 d!678728))

(declare-fun m!2721957 () Bool)

(assert (=> bs!457272 m!2721957))

(assert (=> b!2293605 d!678728))

(declare-fun b!2294277 () Bool)

(declare-fun e!1470187 () Bool)

(declare-fun lt!851196 () tuple2!27142)

(assert (=> b!2294277 (= e!1470187 (not (isEmpty!15560 (_1!16081 lt!851196))))))

(declare-fun b!2294278 () Bool)

(declare-fun e!1470185 () Bool)

(assert (=> b!2294278 (= e!1470185 (= (_2!16081 lt!851196) (list!10708 (seqFromList!3077 input!1722))))))

(declare-fun b!2294279 () Bool)

(declare-fun e!1470186 () tuple2!27142)

(assert (=> b!2294279 (= e!1470186 (tuple2!27143 Nil!27314 (list!10708 (seqFromList!3077 input!1722))))))

(declare-fun b!2294280 () Bool)

(assert (=> b!2294280 (= e!1470185 e!1470187)))

(declare-fun res!981049 () Bool)

(assert (=> b!2294280 (= res!981049 (< (size!21510 (_2!16081 lt!851196)) (size!21510 (list!10708 (seqFromList!3077 input!1722)))))))

(assert (=> b!2294280 (=> (not res!981049) (not e!1470187))))

(declare-fun d!678730 () Bool)

(assert (=> d!678730 e!1470185))

(declare-fun c!363807 () Bool)

(declare-fun size!21517 (List!27408) Int)

(assert (=> d!678730 (= c!363807 (> (size!21517 (_1!16081 lt!851196)) 0))))

(assert (=> d!678730 (= lt!851196 e!1470186)))

(declare-fun c!363808 () Bool)

(declare-datatypes ((tuple2!27148 0))(
  ( (tuple2!27149 (_1!16084 Token!8224) (_2!16084 List!27406)) )
))
(declare-datatypes ((Option!5364 0))(
  ( (None!5363) (Some!5363 (v!30449 tuple2!27148)) )
))
(declare-fun lt!851195 () Option!5364)

(assert (=> d!678730 (= c!363808 ((_ is Some!5363) lt!851195))))

(declare-fun maxPrefix!2232 (LexerInterface!3970 List!27407 List!27406) Option!5364)

(assert (=> d!678730 (= lt!851195 (maxPrefix!2232 thiss!16613 rules!1750 (list!10708 (seqFromList!3077 input!1722))))))

(assert (=> d!678730 (= (lexList!1116 thiss!16613 rules!1750 (list!10708 (seqFromList!3077 input!1722))) lt!851196)))

(declare-fun b!2294281 () Bool)

(declare-fun lt!851194 () tuple2!27142)

(assert (=> b!2294281 (= e!1470186 (tuple2!27143 (Cons!27314 (_1!16084 (v!30449 lt!851195)) (_1!16081 lt!851194)) (_2!16081 lt!851194)))))

(assert (=> b!2294281 (= lt!851194 (lexList!1116 thiss!16613 rules!1750 (_2!16084 (v!30449 lt!851195))))))

(assert (= (and d!678730 c!363808) b!2294281))

(assert (= (and d!678730 (not c!363808)) b!2294279))

(assert (= (and d!678730 c!363807) b!2294280))

(assert (= (and d!678730 (not c!363807)) b!2294278))

(assert (= (and b!2294280 res!981049) b!2294277))

(declare-fun m!2721959 () Bool)

(assert (=> b!2294277 m!2721959))

(declare-fun m!2721961 () Bool)

(assert (=> b!2294280 m!2721961))

(assert (=> b!2294280 m!2721407))

(assert (=> b!2294280 m!2721901))

(declare-fun m!2721963 () Bool)

(assert (=> d!678730 m!2721963))

(assert (=> d!678730 m!2721407))

(declare-fun m!2721965 () Bool)

(assert (=> d!678730 m!2721965))

(declare-fun m!2721967 () Bool)

(assert (=> b!2294281 m!2721967))

(assert (=> b!2293605 d!678730))

(declare-fun d!678732 () Bool)

(assert (=> d!678732 (= (list!10708 (seqFromList!3077 input!1722)) (list!10713 (c!363650 (seqFromList!3077 input!1722))))))

(declare-fun bs!457273 () Bool)

(assert (= bs!457273 d!678732))

(declare-fun m!2721969 () Bool)

(assert (=> bs!457273 m!2721969))

(assert (=> b!2293605 d!678732))

(declare-fun bs!457274 () Bool)

(declare-fun d!678734 () Bool)

(assert (= bs!457274 (and d!678734 d!678666)))

(declare-fun lambda!85827 () Int)

(assert (=> bs!457274 (= (and (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (toChars!6026 (transformation!4373 otherR!12))) (= (toValue!6167 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (toValue!6167 (transformation!4373 otherR!12)))) (= lambda!85827 lambda!85820))))

(declare-fun bs!457275 () Bool)

(assert (= bs!457275 (and d!678734 d!678726)))

(assert (=> bs!457275 (= (and (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (toChars!6026 (transformation!4373 (h!32714 rules!1750)))) (= (toValue!6167 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (toValue!6167 (transformation!4373 (h!32714 rules!1750))))) (= lambda!85827 lambda!85826))))

(assert (=> d!678734 true))

(assert (=> d!678734 (< (dynLambda!11865 order!15225 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) (dynLambda!11866 order!15227 lambda!85827))))

(assert (=> d!678734 true))

(assert (=> d!678734 (< (dynLambda!11863 order!15221 (toValue!6167 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) (dynLambda!11866 order!15227 lambda!85827))))

(assert (=> d!678734 (= (semiInverseModEq!1772 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (toValue!6167 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) (Forall!1093 lambda!85827))))

(declare-fun bs!457276 () Bool)

(assert (= bs!457276 d!678734))

(declare-fun m!2721971 () Bool)

(assert (=> bs!457276 m!2721971))

(assert (=> d!678542 d!678734))

(declare-fun bs!457277 () Bool)

(declare-fun d!678736 () Bool)

(assert (= bs!457277 (and d!678736 d!678654)))

(declare-fun lambda!85828 () Int)

(assert (=> bs!457277 (= (= (toValue!6167 (transformation!4373 otherR!12)) (toValue!6167 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) (= lambda!85828 lambda!85817))))

(declare-fun bs!457278 () Bool)

(assert (= bs!457278 (and d!678736 d!678694)))

(assert (=> bs!457278 (= (= (toValue!6167 (transformation!4373 otherR!12)) (toValue!6167 (transformation!4373 r!2363))) (= lambda!85828 lambda!85822))))

(assert (=> d!678736 true))

(assert (=> d!678736 (< (dynLambda!11863 order!15221 (toValue!6167 (transformation!4373 otherR!12))) (dynLambda!11864 order!15223 lambda!85828))))

(assert (=> d!678736 (= (equivClasses!1691 (toChars!6026 (transformation!4373 otherR!12)) (toValue!6167 (transformation!4373 otherR!12))) (Forall2!710 lambda!85828))))

(declare-fun bs!457279 () Bool)

(assert (= bs!457279 d!678736))

(declare-fun m!2721973 () Bool)

(assert (=> bs!457279 m!2721973))

(assert (=> b!2293887 d!678736))

(assert (=> b!2293723 d!678658))

(assert (=> b!2293723 d!678660))

(assert (=> d!678498 d!678676))

(declare-fun b!2294283 () Bool)

(declare-fun e!1470188 () List!27406)

(declare-fun e!1470189 () List!27406)

(assert (=> b!2294283 (= e!1470188 e!1470189)))

(declare-fun c!363810 () Bool)

(assert (=> b!2294283 (= c!363810 ((_ is Leaf!13066) (c!363650 (_2!16080 lt!851064))))))

(declare-fun d!678738 () Bool)

(declare-fun c!363809 () Bool)

(assert (=> d!678738 (= c!363809 ((_ is Empty!8894) (c!363650 (_2!16080 lt!851064))))))

(assert (=> d!678738 (= (list!10713 (c!363650 (_2!16080 lt!851064))) e!1470188)))

(declare-fun b!2294285 () Bool)

(assert (=> b!2294285 (= e!1470189 (++!6676 (list!10713 (left!20701 (c!363650 (_2!16080 lt!851064)))) (list!10713 (right!21031 (c!363650 (_2!16080 lt!851064))))))))

(declare-fun b!2294282 () Bool)

(assert (=> b!2294282 (= e!1470188 Nil!27312)))

(declare-fun b!2294284 () Bool)

(assert (=> b!2294284 (= e!1470189 (list!10716 (xs!11836 (c!363650 (_2!16080 lt!851064)))))))

(assert (= (and d!678738 c!363809) b!2294282))

(assert (= (and d!678738 (not c!363809)) b!2294283))

(assert (= (and b!2294283 c!363810) b!2294284))

(assert (= (and b!2294283 (not c!363810)) b!2294285))

(declare-fun m!2721975 () Bool)

(assert (=> b!2294285 m!2721975))

(declare-fun m!2721977 () Bool)

(assert (=> b!2294285 m!2721977))

(assert (=> b!2294285 m!2721975))

(assert (=> b!2294285 m!2721977))

(declare-fun m!2721979 () Bool)

(assert (=> b!2294285 m!2721979))

(declare-fun m!2721981 () Bool)

(assert (=> b!2294284 m!2721981))

(assert (=> d!678420 d!678738))

(declare-fun b!2294286 () Bool)

(declare-fun e!1470196 () Bool)

(declare-fun e!1470190 () Bool)

(assert (=> b!2294286 (= e!1470196 e!1470190)))

(declare-fun res!981053 () Bool)

(assert (=> b!2294286 (= res!981053 (not (nullable!1870 (reg!7050 (regex!4373 r!2363)))))))

(assert (=> b!2294286 (=> (not res!981053) (not e!1470190))))

(declare-fun b!2294287 () Bool)

(declare-fun e!1470195 () Bool)

(declare-fun e!1470194 () Bool)

(assert (=> b!2294287 (= e!1470195 e!1470194)))

(declare-fun res!981050 () Bool)

(assert (=> b!2294287 (=> (not res!981050) (not e!1470194))))

(declare-fun call!136818 () Bool)

(assert (=> b!2294287 (= res!981050 call!136818)))

(declare-fun b!2294288 () Bool)

(declare-fun call!136816 () Bool)

(assert (=> b!2294288 (= e!1470194 call!136816)))

(declare-fun bm!136811 () Bool)

(declare-fun call!136817 () Bool)

(assert (=> bm!136811 (= call!136818 call!136817)))

(declare-fun b!2294290 () Bool)

(declare-fun res!981052 () Bool)

(declare-fun e!1470193 () Bool)

(assert (=> b!2294290 (=> (not res!981052) (not e!1470193))))

(assert (=> b!2294290 (= res!981052 call!136816)))

(declare-fun e!1470191 () Bool)

(assert (=> b!2294290 (= e!1470191 e!1470193)))

(declare-fun b!2294291 () Bool)

(assert (=> b!2294291 (= e!1470193 call!136818)))

(declare-fun bm!136812 () Bool)

(declare-fun c!363812 () Bool)

(declare-fun c!363811 () Bool)

(assert (=> bm!136812 (= call!136817 (validRegex!2532 (ite c!363812 (reg!7050 (regex!4373 r!2363)) (ite c!363811 (regTwo!13955 (regex!4373 r!2363)) (regOne!13954 (regex!4373 r!2363))))))))

(declare-fun bm!136813 () Bool)

(assert (=> bm!136813 (= call!136816 (validRegex!2532 (ite c!363811 (regOne!13955 (regex!4373 r!2363)) (regTwo!13954 (regex!4373 r!2363)))))))

(declare-fun b!2294292 () Bool)

(declare-fun e!1470192 () Bool)

(assert (=> b!2294292 (= e!1470192 e!1470196)))

(assert (=> b!2294292 (= c!363812 ((_ is Star!6721) (regex!4373 r!2363)))))

(declare-fun d!678740 () Bool)

(declare-fun res!981051 () Bool)

(assert (=> d!678740 (=> res!981051 e!1470192)))

(assert (=> d!678740 (= res!981051 ((_ is ElementMatch!6721) (regex!4373 r!2363)))))

(assert (=> d!678740 (= (validRegex!2532 (regex!4373 r!2363)) e!1470192)))

(declare-fun b!2294289 () Bool)

(assert (=> b!2294289 (= e!1470190 call!136817)))

(declare-fun b!2294293 () Bool)

(declare-fun res!981054 () Bool)

(assert (=> b!2294293 (=> res!981054 e!1470195)))

(assert (=> b!2294293 (= res!981054 (not ((_ is Concat!11257) (regex!4373 r!2363))))))

(assert (=> b!2294293 (= e!1470191 e!1470195)))

(declare-fun b!2294294 () Bool)

(assert (=> b!2294294 (= e!1470196 e!1470191)))

(assert (=> b!2294294 (= c!363811 ((_ is Union!6721) (regex!4373 r!2363)))))

(assert (= (and d!678740 (not res!981051)) b!2294292))

(assert (= (and b!2294292 c!363812) b!2294286))

(assert (= (and b!2294292 (not c!363812)) b!2294294))

(assert (= (and b!2294286 res!981053) b!2294289))

(assert (= (and b!2294294 c!363811) b!2294290))

(assert (= (and b!2294294 (not c!363811)) b!2294293))

(assert (= (and b!2294290 res!981052) b!2294291))

(assert (= (and b!2294293 (not res!981054)) b!2294287))

(assert (= (and b!2294287 res!981050) b!2294288))

(assert (= (or b!2294290 b!2294288) bm!136813))

(assert (= (or b!2294291 b!2294287) bm!136811))

(assert (= (or b!2294289 bm!136811) bm!136812))

(declare-fun m!2721983 () Bool)

(assert (=> b!2294286 m!2721983))

(declare-fun m!2721985 () Bool)

(assert (=> bm!136812 m!2721985))

(declare-fun m!2721987 () Bool)

(assert (=> bm!136813 m!2721987))

(assert (=> d!678536 d!678740))

(assert (=> d!678460 d!678498))

(assert (=> b!2293721 d!678686))

(declare-fun d!678742 () Bool)

(assert (=> d!678742 (= (inv!36913 (tag!4863 (rule!6711 (h!32715 (t!205090 tokens!456))))) (= (mod (str.len (value!138449 (tag!4863 (rule!6711 (h!32715 (t!205090 tokens!456)))))) 2) 0))))

(assert (=> b!2293945 d!678742))

(declare-fun d!678744 () Bool)

(declare-fun res!981055 () Bool)

(declare-fun e!1470197 () Bool)

(assert (=> d!678744 (=> (not res!981055) (not e!1470197))))

(assert (=> d!678744 (= res!981055 (semiInverseModEq!1772 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))) (toValue!6167 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456)))))))))

(assert (=> d!678744 (= (inv!36916 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))) e!1470197)))

(declare-fun b!2294295 () Bool)

(assert (=> b!2294295 (= e!1470197 (equivClasses!1691 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))) (toValue!6167 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456)))))))))

(assert (= (and d!678744 res!981055) b!2294295))

(declare-fun m!2721989 () Bool)

(assert (=> d!678744 m!2721989))

(declare-fun m!2721991 () Bool)

(assert (=> b!2294295 m!2721991))

(assert (=> b!2293945 d!678744))

(declare-fun b!2294298 () Bool)

(declare-fun e!1470198 () Bool)

(assert (=> b!2294298 (= e!1470198 (isPrefix!2363 (tail!3313 (tail!3313 otherP!12)) (tail!3313 (tail!3313 input!1722))))))

(declare-fun b!2294296 () Bool)

(declare-fun e!1470200 () Bool)

(assert (=> b!2294296 (= e!1470200 e!1470198)))

(declare-fun res!981058 () Bool)

(assert (=> b!2294296 (=> (not res!981058) (not e!1470198))))

(assert (=> b!2294296 (= res!981058 (not ((_ is Nil!27312) (tail!3313 input!1722))))))

(declare-fun d!678746 () Bool)

(declare-fun e!1470199 () Bool)

(assert (=> d!678746 e!1470199))

(declare-fun res!981056 () Bool)

(assert (=> d!678746 (=> res!981056 e!1470199)))

(declare-fun lt!851197 () Bool)

(assert (=> d!678746 (= res!981056 (not lt!851197))))

(assert (=> d!678746 (= lt!851197 e!1470200)))

(declare-fun res!981057 () Bool)

(assert (=> d!678746 (=> res!981057 e!1470200)))

(assert (=> d!678746 (= res!981057 ((_ is Nil!27312) (tail!3313 otherP!12)))))

(assert (=> d!678746 (= (isPrefix!2363 (tail!3313 otherP!12) (tail!3313 input!1722)) lt!851197)))

(declare-fun b!2294299 () Bool)

(assert (=> b!2294299 (= e!1470199 (>= (size!21510 (tail!3313 input!1722)) (size!21510 (tail!3313 otherP!12))))))

(declare-fun b!2294297 () Bool)

(declare-fun res!981059 () Bool)

(assert (=> b!2294297 (=> (not res!981059) (not e!1470198))))

(assert (=> b!2294297 (= res!981059 (= (head!5006 (tail!3313 otherP!12)) (head!5006 (tail!3313 input!1722))))))

(assert (= (and d!678746 (not res!981057)) b!2294296))

(assert (= (and b!2294296 res!981058) b!2294297))

(assert (= (and b!2294297 res!981059) b!2294298))

(assert (= (and d!678746 (not res!981056)) b!2294299))

(assert (=> b!2294298 m!2721643))

(declare-fun m!2721993 () Bool)

(assert (=> b!2294298 m!2721993))

(assert (=> b!2294298 m!2721645))

(declare-fun m!2721995 () Bool)

(assert (=> b!2294298 m!2721995))

(assert (=> b!2294298 m!2721993))

(assert (=> b!2294298 m!2721995))

(declare-fun m!2721997 () Bool)

(assert (=> b!2294298 m!2721997))

(assert (=> b!2294299 m!2721645))

(declare-fun m!2721999 () Bool)

(assert (=> b!2294299 m!2721999))

(assert (=> b!2294299 m!2721643))

(declare-fun m!2722001 () Bool)

(assert (=> b!2294299 m!2722001))

(assert (=> b!2294297 m!2721643))

(declare-fun m!2722003 () Bool)

(assert (=> b!2294297 m!2722003))

(assert (=> b!2294297 m!2721645))

(declare-fun m!2722005 () Bool)

(assert (=> b!2294297 m!2722005))

(assert (=> b!2293917 d!678746))

(declare-fun d!678748 () Bool)

(assert (=> d!678748 (= (tail!3313 otherP!12) (t!205088 otherP!12))))

(assert (=> b!2293917 d!678748))

(declare-fun d!678750 () Bool)

(assert (=> d!678750 (= (tail!3313 input!1722) (t!205088 input!1722))))

(assert (=> b!2293917 d!678750))

(declare-fun d!678752 () Bool)

(declare-fun lt!851200 () Int)

(assert (=> d!678752 (= lt!851200 (size!21517 (list!10709 (_1!16080 lt!851081))))))

(declare-fun size!21518 (Conc!8895) Int)

(assert (=> d!678752 (= lt!851200 (size!21518 (c!363652 (_1!16080 lt!851081))))))

(assert (=> d!678752 (= (size!21513 (_1!16080 lt!851081)) lt!851200)))

(declare-fun bs!457280 () Bool)

(assert (= bs!457280 d!678752))

(assert (=> bs!457280 m!2721415))

(assert (=> bs!457280 m!2721415))

(declare-fun m!2722007 () Bool)

(assert (=> bs!457280 m!2722007))

(declare-fun m!2722009 () Bool)

(assert (=> bs!457280 m!2722009))

(assert (=> d!678422 d!678752))

(declare-fun b!2294517 () Bool)

(declare-fun e!1470306 () tuple2!27140)

(declare-fun lt!851409 () BalanceConc!17516)

(assert (=> b!2294517 (= e!1470306 (tuple2!27141 (BalanceConc!17519 Empty!8895) lt!851409))))

(declare-fun lt!851384 () tuple2!27140)

(declare-fun e!1470307 () Bool)

(declare-fun b!2294518 () Bool)

(declare-fun lexRec!543 (LexerInterface!3970 List!27407 BalanceConc!17516) tuple2!27140)

(assert (=> b!2294518 (= e!1470307 (= (list!10708 (_2!16080 lt!851384)) (list!10708 (_2!16080 (lexRec!543 thiss!16613 rules!1750 (seqFromList!3077 input!1722))))))))

(declare-fun lt!851403 () tuple2!27140)

(declare-datatypes ((tuple2!27150 0))(
  ( (tuple2!27151 (_1!16085 Token!8224) (_2!16085 BalanceConc!17516)) )
))
(declare-datatypes ((Option!5365 0))(
  ( (None!5364) (Some!5364 (v!30450 tuple2!27150)) )
))
(declare-fun lt!851393 () Option!5365)

(declare-fun b!2294519 () Bool)

(assert (=> b!2294519 (= lt!851403 (lexRec!543 thiss!16613 rules!1750 (_2!16085 (v!30450 lt!851393))))))

(declare-fun e!1470305 () tuple2!27140)

(declare-fun prepend!1013 (BalanceConc!17518 Token!8224) BalanceConc!17518)

(assert (=> b!2294519 (= e!1470305 (tuple2!27141 (prepend!1013 (_1!16080 lt!851403) (_1!16085 (v!30450 lt!851393))) (_2!16080 lt!851403)))))

(declare-fun b!2294520 () Bool)

(assert (=> b!2294520 (= e!1470305 (tuple2!27141 (BalanceConc!17519 Empty!8895) (seqFromList!3077 input!1722)))))

(declare-fun b!2294521 () Bool)

(declare-fun e!1470308 () tuple2!27140)

(declare-fun lt!851391 () BalanceConc!17516)

(declare-fun lt!851408 () Option!5365)

(declare-fun append!706 (BalanceConc!17518 Token!8224) BalanceConc!17518)

(assert (=> b!2294521 (= e!1470308 (lexTailRecV2!791 thiss!16613 rules!1750 (seqFromList!3077 input!1722) lt!851391 (_2!16085 (v!30450 lt!851408)) (append!706 (BalanceConc!17519 Empty!8895) (_1!16085 (v!30450 lt!851408)))))))

(declare-fun lt!851402 () tuple2!27140)

(assert (=> b!2294521 (= lt!851402 (lexRec!543 thiss!16613 rules!1750 (_2!16085 (v!30450 lt!851408))))))

(declare-fun lt!851387 () List!27406)

(assert (=> b!2294521 (= lt!851387 (list!10708 (BalanceConc!17517 Empty!8894)))))

(declare-fun lt!851395 () List!27406)

(assert (=> b!2294521 (= lt!851395 (list!10708 (charsOf!2761 (_1!16085 (v!30450 lt!851408)))))))

(declare-fun lt!851400 () List!27406)

(assert (=> b!2294521 (= lt!851400 (list!10708 (_2!16085 (v!30450 lt!851408))))))

(declare-fun lt!851401 () Unit!40194)

(declare-fun lemmaConcatAssociativity!1398 (List!27406 List!27406 List!27406) Unit!40194)

(assert (=> b!2294521 (= lt!851401 (lemmaConcatAssociativity!1398 lt!851387 lt!851395 lt!851400))))

(assert (=> b!2294521 (= (++!6676 (++!6676 lt!851387 lt!851395) lt!851400) (++!6676 lt!851387 (++!6676 lt!851395 lt!851400)))))

(declare-fun lt!851396 () Unit!40194)

(assert (=> b!2294521 (= lt!851396 lt!851401)))

(declare-fun maxPrefixZipperSequence!878 (LexerInterface!3970 List!27407 BalanceConc!17516) Option!5365)

(assert (=> b!2294521 (= lt!851393 (maxPrefixZipperSequence!878 thiss!16613 rules!1750 (seqFromList!3077 input!1722)))))

(declare-fun c!363854 () Bool)

(assert (=> b!2294521 (= c!363854 ((_ is Some!5364) lt!851393))))

(assert (=> b!2294521 (= (lexRec!543 thiss!16613 rules!1750 (seqFromList!3077 input!1722)) e!1470305)))

(declare-fun lt!851399 () Unit!40194)

(declare-fun Unit!40200 () Unit!40194)

(assert (=> b!2294521 (= lt!851399 Unit!40200)))

(declare-fun lt!851388 () List!27408)

(assert (=> b!2294521 (= lt!851388 (list!10709 (BalanceConc!17519 Empty!8895)))))

(declare-fun lt!851389 () List!27408)

(assert (=> b!2294521 (= lt!851389 (Cons!27314 (_1!16085 (v!30450 lt!851408)) Nil!27314))))

(declare-fun lt!851398 () List!27408)

(assert (=> b!2294521 (= lt!851398 (list!10709 (_1!16080 lt!851402)))))

(declare-fun lt!851416 () Unit!40194)

(declare-fun lemmaConcatAssociativity!1399 (List!27408 List!27408 List!27408) Unit!40194)

(assert (=> b!2294521 (= lt!851416 (lemmaConcatAssociativity!1399 lt!851388 lt!851389 lt!851398))))

(assert (=> b!2294521 (= (++!6678 (++!6678 lt!851388 lt!851389) lt!851398) (++!6678 lt!851388 (++!6678 lt!851389 lt!851398)))))

(declare-fun lt!851412 () Unit!40194)

(assert (=> b!2294521 (= lt!851412 lt!851416)))

(declare-fun lt!851415 () List!27406)

(assert (=> b!2294521 (= lt!851415 (++!6676 (list!10708 (BalanceConc!17517 Empty!8894)) (list!10708 (charsOf!2761 (_1!16085 (v!30450 lt!851408))))))))

(declare-fun lt!851397 () List!27406)

(assert (=> b!2294521 (= lt!851397 (list!10708 (_2!16085 (v!30450 lt!851408))))))

(declare-fun lt!851406 () List!27408)

(assert (=> b!2294521 (= lt!851406 (list!10709 (append!706 (BalanceConc!17519 Empty!8895) (_1!16085 (v!30450 lt!851408)))))))

(declare-fun lt!851385 () Unit!40194)

(declare-fun lemmaLexThenLexPrefix!357 (LexerInterface!3970 List!27407 List!27406 List!27406 List!27408 List!27408 List!27406) Unit!40194)

(assert (=> b!2294521 (= lt!851385 (lemmaLexThenLexPrefix!357 thiss!16613 rules!1750 lt!851415 lt!851397 lt!851406 (list!10709 (_1!16080 lt!851402)) (list!10708 (_2!16080 lt!851402))))))

(assert (=> b!2294521 (= (lexList!1116 thiss!16613 rules!1750 lt!851415) (tuple2!27143 lt!851406 Nil!27312))))

(declare-fun lt!851407 () Unit!40194)

(assert (=> b!2294521 (= lt!851407 lt!851385)))

(declare-fun ++!6679 (BalanceConc!17516 BalanceConc!17516) BalanceConc!17516)

(assert (=> b!2294521 (= lt!851409 (++!6679 (BalanceConc!17517 Empty!8894) (charsOf!2761 (_1!16085 (v!30450 lt!851408)))))))

(declare-fun lt!851390 () Option!5365)

(assert (=> b!2294521 (= lt!851390 (maxPrefixZipperSequence!878 thiss!16613 rules!1750 lt!851409))))

(declare-fun c!363852 () Bool)

(assert (=> b!2294521 (= c!363852 ((_ is Some!5364) lt!851390))))

(assert (=> b!2294521 (= (lexRec!543 thiss!16613 rules!1750 (++!6679 (BalanceConc!17517 Empty!8894) (charsOf!2761 (_1!16085 (v!30450 lt!851408))))) e!1470306)))

(declare-fun lt!851392 () Unit!40194)

(declare-fun Unit!40201 () Unit!40194)

(assert (=> b!2294521 (= lt!851392 Unit!40201)))

(assert (=> b!2294521 (= lt!851391 (++!6679 (BalanceConc!17517 Empty!8894) (charsOf!2761 (_1!16085 (v!30450 lt!851408)))))))

(declare-fun lt!851386 () List!27406)

(assert (=> b!2294521 (= lt!851386 (list!10708 lt!851391))))

(declare-fun lt!851394 () List!27406)

(assert (=> b!2294521 (= lt!851394 (list!10708 (_2!16085 (v!30450 lt!851408))))))

(declare-fun lt!851413 () Unit!40194)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!473 (List!27406 List!27406) Unit!40194)

(assert (=> b!2294521 (= lt!851413 (lemmaConcatTwoListThenFSndIsSuffix!473 lt!851386 lt!851394))))

(declare-fun isSuffix!779 (List!27406 List!27406) Bool)

(assert (=> b!2294521 (isSuffix!779 lt!851394 (++!6676 lt!851386 lt!851394))))

(declare-fun lt!851417 () Unit!40194)

(assert (=> b!2294521 (= lt!851417 lt!851413)))

(declare-fun b!2294522 () Bool)

(declare-fun lt!851405 () tuple2!27140)

(assert (=> b!2294522 (= lt!851405 (lexRec!543 thiss!16613 rules!1750 (_2!16085 (v!30450 lt!851390))))))

(assert (=> b!2294522 (= e!1470306 (tuple2!27141 (prepend!1013 (_1!16080 lt!851405) (_1!16085 (v!30450 lt!851390))) (_2!16080 lt!851405)))))

(declare-fun b!2294523 () Bool)

(assert (=> b!2294523 (= e!1470308 (tuple2!27141 (BalanceConc!17519 Empty!8895) (seqFromList!3077 input!1722)))))

(declare-fun d!678754 () Bool)

(assert (=> d!678754 e!1470307))

(declare-fun res!981084 () Bool)

(assert (=> d!678754 (=> (not res!981084) (not e!1470307))))

(assert (=> d!678754 (= res!981084 (= (list!10709 (_1!16080 lt!851384)) (list!10709 (_1!16080 (lexRec!543 thiss!16613 rules!1750 (seqFromList!3077 input!1722))))))))

(assert (=> d!678754 (= lt!851384 e!1470308)))

(declare-fun c!363853 () Bool)

(assert (=> d!678754 (= c!363853 ((_ is Some!5364) lt!851408))))

(declare-fun maxPrefixZipperSequenceV2!413 (LexerInterface!3970 List!27407 BalanceConc!17516 BalanceConc!17516) Option!5365)

(assert (=> d!678754 (= lt!851408 (maxPrefixZipperSequenceV2!413 thiss!16613 rules!1750 (seqFromList!3077 input!1722) (seqFromList!3077 input!1722)))))

(declare-fun lt!851410 () Unit!40194)

(declare-fun lt!851411 () Unit!40194)

(assert (=> d!678754 (= lt!851410 lt!851411)))

(declare-fun lt!851414 () List!27406)

(declare-fun lt!851404 () List!27406)

(assert (=> d!678754 (isSuffix!779 lt!851414 (++!6676 lt!851404 lt!851414))))

(assert (=> d!678754 (= lt!851411 (lemmaConcatTwoListThenFSndIsSuffix!473 lt!851404 lt!851414))))

(assert (=> d!678754 (= lt!851414 (list!10708 (seqFromList!3077 input!1722)))))

(assert (=> d!678754 (= lt!851404 (list!10708 (BalanceConc!17517 Empty!8894)))))

(assert (=> d!678754 (= (lexTailRecV2!791 thiss!16613 rules!1750 (seqFromList!3077 input!1722) (BalanceConc!17517 Empty!8894) (seqFromList!3077 input!1722) (BalanceConc!17519 Empty!8895)) lt!851384)))

(assert (= (and d!678754 c!363853) b!2294521))

(assert (= (and d!678754 (not c!363853)) b!2294523))

(assert (= (and b!2294521 c!363854) b!2294519))

(assert (= (and b!2294521 (not c!363854)) b!2294520))

(assert (= (and b!2294521 c!363852) b!2294522))

(assert (= (and b!2294521 (not c!363852)) b!2294517))

(assert (= (and d!678754 res!981084) b!2294518))

(declare-fun m!2722201 () Bool)

(assert (=> b!2294521 m!2722201))

(declare-fun m!2722203 () Bool)

(assert (=> b!2294521 m!2722203))

(declare-fun m!2722205 () Bool)

(assert (=> b!2294521 m!2722205))

(declare-fun m!2722207 () Bool)

(assert (=> b!2294521 m!2722207))

(declare-fun m!2722209 () Bool)

(assert (=> b!2294521 m!2722209))

(declare-fun m!2722211 () Bool)

(assert (=> b!2294521 m!2722211))

(declare-fun m!2722213 () Bool)

(assert (=> b!2294521 m!2722213))

(declare-fun m!2722215 () Bool)

(assert (=> b!2294521 m!2722215))

(assert (=> b!2294521 m!2721361))

(declare-fun m!2722217 () Bool)

(assert (=> b!2294521 m!2722217))

(declare-fun m!2722219 () Bool)

(assert (=> b!2294521 m!2722219))

(declare-fun m!2722221 () Bool)

(assert (=> b!2294521 m!2722221))

(declare-fun m!2722223 () Bool)

(assert (=> b!2294521 m!2722223))

(declare-fun m!2722225 () Bool)

(assert (=> b!2294521 m!2722225))

(declare-fun m!2722227 () Bool)

(assert (=> b!2294521 m!2722227))

(declare-fun m!2722229 () Bool)

(assert (=> b!2294521 m!2722229))

(declare-fun m!2722231 () Bool)

(assert (=> b!2294521 m!2722231))

(declare-fun m!2722233 () Bool)

(assert (=> b!2294521 m!2722233))

(assert (=> b!2294521 m!2722201))

(declare-fun m!2722235 () Bool)

(assert (=> b!2294521 m!2722235))

(assert (=> b!2294521 m!2722229))

(assert (=> b!2294521 m!2721361))

(declare-fun m!2722237 () Bool)

(assert (=> b!2294521 m!2722237))

(declare-fun m!2722239 () Bool)

(assert (=> b!2294521 m!2722239))

(assert (=> b!2294521 m!2722209))

(assert (=> b!2294521 m!2721361))

(declare-fun m!2722241 () Bool)

(assert (=> b!2294521 m!2722241))

(assert (=> b!2294521 m!2722217))

(declare-fun m!2722243 () Bool)

(assert (=> b!2294521 m!2722243))

(declare-fun m!2722245 () Bool)

(assert (=> b!2294521 m!2722245))

(assert (=> b!2294521 m!2722217))

(declare-fun m!2722247 () Bool)

(assert (=> b!2294521 m!2722247))

(assert (=> b!2294521 m!2722215))

(declare-fun m!2722249 () Bool)

(assert (=> b!2294521 m!2722249))

(assert (=> b!2294521 m!2722207))

(assert (=> b!2294521 m!2722235))

(assert (=> b!2294521 m!2722247))

(declare-fun m!2722251 () Bool)

(assert (=> b!2294521 m!2722251))

(declare-fun m!2722253 () Bool)

(assert (=> b!2294521 m!2722253))

(declare-fun m!2722255 () Bool)

(assert (=> b!2294521 m!2722255))

(assert (=> b!2294521 m!2722223))

(declare-fun m!2722257 () Bool)

(assert (=> b!2294521 m!2722257))

(declare-fun m!2722259 () Bool)

(assert (=> b!2294521 m!2722259))

(declare-fun m!2722261 () Bool)

(assert (=> b!2294521 m!2722261))

(assert (=> b!2294521 m!2722245))

(declare-fun m!2722263 () Bool)

(assert (=> b!2294521 m!2722263))

(assert (=> b!2294521 m!2722235))

(assert (=> b!2294521 m!2722203))

(assert (=> b!2294521 m!2722255))

(declare-fun m!2722265 () Bool)

(assert (=> b!2294521 m!2722265))

(declare-fun m!2722267 () Bool)

(assert (=> b!2294519 m!2722267))

(declare-fun m!2722269 () Bool)

(assert (=> b!2294519 m!2722269))

(declare-fun m!2722271 () Bool)

(assert (=> b!2294522 m!2722271))

(declare-fun m!2722273 () Bool)

(assert (=> b!2294522 m!2722273))

(declare-fun m!2722275 () Bool)

(assert (=> b!2294518 m!2722275))

(assert (=> b!2294518 m!2721361))

(assert (=> b!2294518 m!2722241))

(declare-fun m!2722277 () Bool)

(assert (=> b!2294518 m!2722277))

(assert (=> d!678754 m!2721361))

(assert (=> d!678754 m!2722241))

(declare-fun m!2722279 () Bool)

(assert (=> d!678754 m!2722279))

(declare-fun m!2722281 () Bool)

(assert (=> d!678754 m!2722281))

(declare-fun m!2722283 () Bool)

(assert (=> d!678754 m!2722283))

(declare-fun m!2722285 () Bool)

(assert (=> d!678754 m!2722285))

(assert (=> d!678754 m!2721361))

(assert (=> d!678754 m!2721361))

(declare-fun m!2722287 () Bool)

(assert (=> d!678754 m!2722287))

(assert (=> d!678754 m!2722279))

(assert (=> d!678754 m!2721361))

(assert (=> d!678754 m!2721407))

(declare-fun m!2722289 () Bool)

(assert (=> d!678754 m!2722289))

(assert (=> d!678754 m!2722201))

(assert (=> d!678422 d!678754))

(declare-fun d!678804 () Bool)

(declare-fun res!981085 () Bool)

(declare-fun e!1470309 () Bool)

(assert (=> d!678804 (=> (not res!981085) (not e!1470309))))

(assert (=> d!678804 (= res!981085 (validRegex!2532 (regex!4373 (h!32714 rules!1750))))))

(assert (=> d!678804 (= (ruleValid!1463 thiss!16613 (h!32714 rules!1750)) e!1470309)))

(declare-fun b!2294524 () Bool)

(declare-fun res!981086 () Bool)

(assert (=> b!2294524 (=> (not res!981086) (not e!1470309))))

(assert (=> b!2294524 (= res!981086 (not (nullable!1870 (regex!4373 (h!32714 rules!1750)))))))

(declare-fun b!2294525 () Bool)

(assert (=> b!2294525 (= e!1470309 (not (= (tag!4863 (h!32714 rules!1750)) (String!29780 ""))))))

(assert (= (and d!678804 res!981085) b!2294524))

(assert (= (and b!2294524 res!981086) b!2294525))

(declare-fun m!2722291 () Bool)

(assert (=> d!678804 m!2722291))

(declare-fun m!2722293 () Bool)

(assert (=> b!2294524 m!2722293))

(assert (=> b!2293881 d!678804))

(declare-fun d!678806 () Bool)

(assert (=> d!678806 (= r!2363 otherR!12)))

(assert (=> d!678806 true))

(declare-fun _$42!199 () Unit!40194)

(assert (=> d!678806 (= (choose!13396 rules!1750 r!2363 otherR!12) _$42!199)))

(assert (=> d!678452 d!678806))

(assert (=> d!678452 d!678524))

(assert (=> d!678468 d!678524))

(declare-fun d!678808 () Bool)

(declare-fun lt!851418 () Int)

(assert (=> d!678808 (>= lt!851418 0)))

(declare-fun e!1470310 () Int)

(assert (=> d!678808 (= lt!851418 e!1470310)))

(declare-fun c!363855 () Bool)

(assert (=> d!678808 (= c!363855 ((_ is Nil!27312) (t!205088 otherP!12)))))

(assert (=> d!678808 (= (size!21510 (t!205088 otherP!12)) lt!851418)))

(declare-fun b!2294526 () Bool)

(assert (=> b!2294526 (= e!1470310 0)))

(declare-fun b!2294527 () Bool)

(assert (=> b!2294527 (= e!1470310 (+ 1 (size!21510 (t!205088 (t!205088 otherP!12)))))))

(assert (= (and d!678808 c!363855) b!2294526))

(assert (= (and d!678808 (not c!363855)) b!2294527))

(declare-fun m!2722295 () Bool)

(assert (=> b!2294527 m!2722295))

(assert (=> b!2293755 d!678808))

(declare-fun bs!457299 () Bool)

(declare-fun d!678810 () Bool)

(assert (= bs!457299 (and d!678810 d!678654)))

(declare-fun lambda!85832 () Int)

(assert (=> bs!457299 (= (= (toValue!6167 (transformation!4373 (h!32714 rules!1750))) (toValue!6167 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) (= lambda!85832 lambda!85817))))

(declare-fun bs!457300 () Bool)

(assert (= bs!457300 (and d!678810 d!678694)))

(assert (=> bs!457300 (= (= (toValue!6167 (transformation!4373 (h!32714 rules!1750))) (toValue!6167 (transformation!4373 r!2363))) (= lambda!85832 lambda!85822))))

(declare-fun bs!457301 () Bool)

(assert (= bs!457301 (and d!678810 d!678736)))

(assert (=> bs!457301 (= (= (toValue!6167 (transformation!4373 (h!32714 rules!1750))) (toValue!6167 (transformation!4373 otherR!12))) (= lambda!85832 lambda!85828))))

(assert (=> d!678810 true))

(assert (=> d!678810 (< (dynLambda!11863 order!15221 (toValue!6167 (transformation!4373 (h!32714 rules!1750)))) (dynLambda!11864 order!15223 lambda!85832))))

(assert (=> d!678810 (= (equivClasses!1691 (toChars!6026 (transformation!4373 (h!32714 rules!1750))) (toValue!6167 (transformation!4373 (h!32714 rules!1750)))) (Forall2!710 lambda!85832))))

(declare-fun bs!457302 () Bool)

(assert (= bs!457302 d!678810))

(declare-fun m!2722297 () Bool)

(assert (=> bs!457302 m!2722297))

(assert (=> b!2293758 d!678810))

(declare-fun d!678812 () Bool)

(declare-fun lt!851419 () Bool)

(assert (=> d!678812 (= lt!851419 (select (content!3669 (t!205089 rules!1750)) otherR!12))))

(declare-fun e!1470311 () Bool)

(assert (=> d!678812 (= lt!851419 e!1470311)))

(declare-fun res!981087 () Bool)

(assert (=> d!678812 (=> (not res!981087) (not e!1470311))))

(assert (=> d!678812 (= res!981087 ((_ is Cons!27313) (t!205089 rules!1750)))))

(assert (=> d!678812 (= (contains!4751 (t!205089 rules!1750) otherR!12) lt!851419)))

(declare-fun b!2294528 () Bool)

(declare-fun e!1470312 () Bool)

(assert (=> b!2294528 (= e!1470311 e!1470312)))

(declare-fun res!981088 () Bool)

(assert (=> b!2294528 (=> res!981088 e!1470312)))

(assert (=> b!2294528 (= res!981088 (= (h!32714 (t!205089 rules!1750)) otherR!12))))

(declare-fun b!2294529 () Bool)

(assert (=> b!2294529 (= e!1470312 (contains!4751 (t!205089 (t!205089 rules!1750)) otherR!12))))

(assert (= (and d!678812 res!981087) b!2294528))

(assert (= (and b!2294528 (not res!981088)) b!2294529))

(assert (=> d!678812 m!2721859))

(declare-fun m!2722299 () Bool)

(assert (=> d!678812 m!2722299))

(declare-fun m!2722301 () Bool)

(assert (=> b!2294529 m!2722301))

(assert (=> b!2293749 d!678812))

(assert (=> b!2293904 d!678712))

(declare-fun d!678814 () Bool)

(declare-fun c!363856 () Bool)

(assert (=> d!678814 (= c!363856 ((_ is Node!8894) (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456))))))))

(declare-fun e!1470313 () Bool)

(assert (=> d!678814 (= (inv!36920 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456))))) e!1470313)))

(declare-fun b!2294530 () Bool)

(assert (=> b!2294530 (= e!1470313 (inv!36924 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456))))))))

(declare-fun b!2294531 () Bool)

(declare-fun e!1470314 () Bool)

(assert (=> b!2294531 (= e!1470313 e!1470314)))

(declare-fun res!981089 () Bool)

(assert (=> b!2294531 (= res!981089 (not ((_ is Leaf!13066) (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456)))))))))

(assert (=> b!2294531 (=> res!981089 e!1470314)))

(declare-fun b!2294532 () Bool)

(assert (=> b!2294532 (= e!1470314 (inv!36925 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456))))))))

(assert (= (and d!678814 c!363856) b!2294530))

(assert (= (and d!678814 (not c!363856)) b!2294531))

(assert (= (and b!2294531 (not res!981089)) b!2294532))

(declare-fun m!2722303 () Bool)

(assert (=> b!2294530 m!2722303))

(declare-fun m!2722305 () Bool)

(assert (=> b!2294532 m!2722305))

(assert (=> b!2293743 d!678814))

(declare-fun d!678816 () Bool)

(declare-fun lt!851420 () Bool)

(assert (=> d!678816 (= lt!851420 (select (content!3669 (t!205089 rules!1750)) r!2363))))

(declare-fun e!1470315 () Bool)

(assert (=> d!678816 (= lt!851420 e!1470315)))

(declare-fun res!981090 () Bool)

(assert (=> d!678816 (=> (not res!981090) (not e!1470315))))

(assert (=> d!678816 (= res!981090 ((_ is Cons!27313) (t!205089 rules!1750)))))

(assert (=> d!678816 (= (contains!4751 (t!205089 rules!1750) r!2363) lt!851420)))

(declare-fun b!2294533 () Bool)

(declare-fun e!1470316 () Bool)

(assert (=> b!2294533 (= e!1470315 e!1470316)))

(declare-fun res!981091 () Bool)

(assert (=> b!2294533 (=> res!981091 e!1470316)))

(assert (=> b!2294533 (= res!981091 (= (h!32714 (t!205089 rules!1750)) r!2363))))

(declare-fun b!2294534 () Bool)

(assert (=> b!2294534 (= e!1470316 (contains!4751 (t!205089 (t!205089 rules!1750)) r!2363))))

(assert (= (and d!678816 res!981090) b!2294533))

(assert (= (and b!2294533 (not res!981091)) b!2294534))

(assert (=> d!678816 m!2721859))

(declare-fun m!2722307 () Bool)

(assert (=> d!678816 m!2722307))

(declare-fun m!2722309 () Bool)

(assert (=> b!2294534 m!2722309))

(assert (=> b!2293886 d!678816))

(declare-fun d!678818 () Bool)

(assert (=> d!678818 (= (list!10708 lt!851112) (list!10713 (c!363650 lt!851112)))))

(declare-fun bs!457303 () Bool)

(assert (= bs!457303 d!678818))

(declare-fun m!2722311 () Bool)

(assert (=> bs!457303 m!2722311))

(assert (=> d!678492 d!678818))

(assert (=> d!678476 d!678470))

(declare-fun d!678820 () Bool)

(assert (=> d!678820 (ruleValid!1463 thiss!16613 otherR!12)))

(assert (=> d!678820 true))

(declare-fun _$65!1151 () Unit!40194)

(assert (=> d!678820 (= (choose!13397 thiss!16613 otherR!12 rules!1750) _$65!1151)))

(declare-fun bs!457304 () Bool)

(assert (= bs!457304 d!678820))

(assert (=> bs!457304 m!2721335))

(assert (=> d!678476 d!678820))

(assert (=> d!678476 d!678498))

(declare-fun d!678822 () Bool)

(declare-fun res!981096 () Bool)

(declare-fun e!1470321 () Bool)

(assert (=> d!678822 (=> res!981096 e!1470321)))

(assert (=> d!678822 (= res!981096 ((_ is Nil!27313) rules!1750))))

(assert (=> d!678822 (= (forall!5496 rules!1750 lambda!85801) e!1470321)))

(declare-fun b!2294539 () Bool)

(declare-fun e!1470322 () Bool)

(assert (=> b!2294539 (= e!1470321 e!1470322)))

(declare-fun res!981097 () Bool)

(assert (=> b!2294539 (=> (not res!981097) (not e!1470322))))

(declare-fun dynLambda!11867 (Int Rule!8546) Bool)

(assert (=> b!2294539 (= res!981097 (dynLambda!11867 lambda!85801 (h!32714 rules!1750)))))

(declare-fun b!2294540 () Bool)

(assert (=> b!2294540 (= e!1470322 (forall!5496 (t!205089 rules!1750) lambda!85801))))

(assert (= (and d!678822 (not res!981096)) b!2294539))

(assert (= (and b!2294539 res!981097) b!2294540))

(declare-fun b_lambda!73133 () Bool)

(assert (=> (not b_lambda!73133) (not b!2294539)))

(declare-fun m!2722313 () Bool)

(assert (=> b!2294539 m!2722313))

(declare-fun m!2722315 () Bool)

(assert (=> b!2294540 m!2722315))

(assert (=> d!678510 d!678822))

(declare-fun d!678824 () Bool)

(declare-fun charsToBigInt!0 (List!27405 Int) Int)

(assert (=> d!678824 (= (inv!15 (value!138450 (h!32715 tokens!456))) (= (charsToBigInt!0 (text!32194 (value!138450 (h!32715 tokens!456))) 0) (value!138445 (value!138450 (h!32715 tokens!456)))))))

(declare-fun bs!457305 () Bool)

(assert (= bs!457305 d!678824))

(declare-fun m!2722317 () Bool)

(assert (=> bs!457305 m!2722317))

(assert (=> b!2293902 d!678824))

(declare-fun d!678826 () Bool)

(assert (=> d!678826 (= (list!10708 (_2!16080 lt!851081)) (list!10713 (c!363650 (_2!16080 lt!851081))))))

(declare-fun bs!457306 () Bool)

(assert (= bs!457306 d!678826))

(declare-fun m!2722319 () Bool)

(assert (=> bs!457306 m!2722319))

(assert (=> b!2293602 d!678826))

(assert (=> b!2293602 d!678730))

(assert (=> b!2293602 d!678732))

(assert (=> d!678478 d!678670))

(assert (=> d!678478 d!678740))

(declare-fun bs!457307 () Bool)

(declare-fun d!678828 () Bool)

(assert (= bs!457307 (and d!678828 d!678666)))

(declare-fun lambda!85833 () Int)

(assert (=> bs!457307 (= (and (= (toChars!6026 (transformation!4373 r!2363)) (toChars!6026 (transformation!4373 otherR!12))) (= (toValue!6167 (transformation!4373 r!2363)) (toValue!6167 (transformation!4373 otherR!12)))) (= lambda!85833 lambda!85820))))

(declare-fun bs!457308 () Bool)

(assert (= bs!457308 (and d!678828 d!678726)))

(assert (=> bs!457308 (= (and (= (toChars!6026 (transformation!4373 r!2363)) (toChars!6026 (transformation!4373 (h!32714 rules!1750)))) (= (toValue!6167 (transformation!4373 r!2363)) (toValue!6167 (transformation!4373 (h!32714 rules!1750))))) (= lambda!85833 lambda!85826))))

(declare-fun bs!457309 () Bool)

(assert (= bs!457309 (and d!678828 d!678734)))

(assert (=> bs!457309 (= (and (= (toChars!6026 (transformation!4373 r!2363)) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) (= (toValue!6167 (transformation!4373 r!2363)) (toValue!6167 (transformation!4373 (rule!6711 (h!32715 tokens!456)))))) (= lambda!85833 lambda!85827))))

(assert (=> d!678828 true))

(assert (=> d!678828 (< (dynLambda!11865 order!15225 (toChars!6026 (transformation!4373 r!2363))) (dynLambda!11866 order!15227 lambda!85833))))

(assert (=> d!678828 true))

(assert (=> d!678828 (< (dynLambda!11863 order!15221 (toValue!6167 (transformation!4373 r!2363))) (dynLambda!11866 order!15227 lambda!85833))))

(assert (=> d!678828 (= (semiInverseModEq!1772 (toChars!6026 (transformation!4373 r!2363)) (toValue!6167 (transformation!4373 r!2363))) (Forall!1093 lambda!85833))))

(declare-fun bs!457310 () Bool)

(assert (= bs!457310 d!678828))

(declare-fun m!2722321 () Bool)

(assert (=> bs!457310 m!2722321))

(assert (=> d!678532 d!678828))

(declare-fun b!2294542 () Bool)

(declare-fun e!1470323 () Bool)

(declare-fun tp!727522 () Bool)

(declare-fun tp!727524 () Bool)

(assert (=> b!2294542 (= e!1470323 (and tp!727522 tp!727524))))

(assert (=> b!2293965 (= tp!727359 e!1470323)))

(declare-fun b!2294541 () Bool)

(assert (=> b!2294541 (= e!1470323 tp_is_empty!10663)))

(declare-fun b!2294544 () Bool)

(declare-fun tp!727520 () Bool)

(declare-fun tp!727523 () Bool)

(assert (=> b!2294544 (= e!1470323 (and tp!727520 tp!727523))))

(declare-fun b!2294543 () Bool)

(declare-fun tp!727521 () Bool)

(assert (=> b!2294543 (= e!1470323 tp!727521)))

(assert (= (and b!2293965 ((_ is ElementMatch!6721) (regOne!13955 (regex!4373 (h!32714 rules!1750))))) b!2294541))

(assert (= (and b!2293965 ((_ is Concat!11257) (regOne!13955 (regex!4373 (h!32714 rules!1750))))) b!2294542))

(assert (= (and b!2293965 ((_ is Star!6721) (regOne!13955 (regex!4373 (h!32714 rules!1750))))) b!2294543))

(assert (= (and b!2293965 ((_ is Union!6721) (regOne!13955 (regex!4373 (h!32714 rules!1750))))) b!2294544))

(declare-fun b!2294546 () Bool)

(declare-fun e!1470324 () Bool)

(declare-fun tp!727527 () Bool)

(declare-fun tp!727529 () Bool)

(assert (=> b!2294546 (= e!1470324 (and tp!727527 tp!727529))))

(assert (=> b!2293965 (= tp!727362 e!1470324)))

(declare-fun b!2294545 () Bool)

(assert (=> b!2294545 (= e!1470324 tp_is_empty!10663)))

(declare-fun b!2294548 () Bool)

(declare-fun tp!727525 () Bool)

(declare-fun tp!727528 () Bool)

(assert (=> b!2294548 (= e!1470324 (and tp!727525 tp!727528))))

(declare-fun b!2294547 () Bool)

(declare-fun tp!727526 () Bool)

(assert (=> b!2294547 (= e!1470324 tp!727526)))

(assert (= (and b!2293965 ((_ is ElementMatch!6721) (regTwo!13955 (regex!4373 (h!32714 rules!1750))))) b!2294545))

(assert (= (and b!2293965 ((_ is Concat!11257) (regTwo!13955 (regex!4373 (h!32714 rules!1750))))) b!2294546))

(assert (= (and b!2293965 ((_ is Star!6721) (regTwo!13955 (regex!4373 (h!32714 rules!1750))))) b!2294547))

(assert (= (and b!2293965 ((_ is Union!6721) (regTwo!13955 (regex!4373 (h!32714 rules!1750))))) b!2294548))

(declare-fun tp!727538 () Bool)

(declare-fun b!2294557 () Bool)

(declare-fun e!1470330 () Bool)

(declare-fun tp!727537 () Bool)

(assert (=> b!2294557 (= e!1470330 (and (inv!36920 (left!20701 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456)))))) tp!727537 (inv!36920 (right!21031 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456)))))) tp!727538))))

(declare-fun b!2294559 () Bool)

(declare-fun e!1470329 () Bool)

(declare-fun tp!727536 () Bool)

(assert (=> b!2294559 (= e!1470329 tp!727536)))

(declare-fun b!2294558 () Bool)

(declare-fun inv!36927 (IArray!17793) Bool)

(assert (=> b!2294558 (= e!1470330 (and (inv!36927 (xs!11836 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456)))))) e!1470329))))

(assert (=> b!2293736 (= tp!727254 (and (inv!36920 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456))))) e!1470330))))

(assert (= (and b!2293736 ((_ is Node!8894) (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456)))))) b!2294557))

(assert (= b!2294558 b!2294559))

(assert (= (and b!2293736 ((_ is Leaf!13066) (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))) (value!138450 (head!5004 tokens!456)))))) b!2294558))

(declare-fun m!2722323 () Bool)

(assert (=> b!2294557 m!2722323))

(declare-fun m!2722325 () Bool)

(assert (=> b!2294557 m!2722325))

(declare-fun m!2722327 () Bool)

(assert (=> b!2294558 m!2722327))

(assert (=> b!2293736 m!2721525))

(declare-fun b!2294560 () Bool)

(declare-fun e!1470331 () Bool)

(declare-fun tp!727539 () Bool)

(assert (=> b!2294560 (= e!1470331 (and tp_is_empty!10663 tp!727539))))

(assert (=> b!2293944 (= tp!727343 e!1470331)))

(assert (= (and b!2293944 ((_ is Cons!27312) (originalCharacters!5143 (h!32715 (t!205090 tokens!456))))) b!2294560))

(declare-fun b!2294562 () Bool)

(declare-fun e!1470332 () Bool)

(declare-fun tp!727542 () Bool)

(declare-fun tp!727544 () Bool)

(assert (=> b!2294562 (= e!1470332 (and tp!727542 tp!727544))))

(assert (=> b!2293973 (= tp!727369 e!1470332)))

(declare-fun b!2294561 () Bool)

(assert (=> b!2294561 (= e!1470332 tp_is_empty!10663)))

(declare-fun b!2294564 () Bool)

(declare-fun tp!727540 () Bool)

(declare-fun tp!727543 () Bool)

(assert (=> b!2294564 (= e!1470332 (and tp!727540 tp!727543))))

(declare-fun b!2294563 () Bool)

(declare-fun tp!727541 () Bool)

(assert (=> b!2294563 (= e!1470332 tp!727541)))

(assert (= (and b!2293973 ((_ is ElementMatch!6721) (regOne!13955 (regex!4373 r!2363)))) b!2294561))

(assert (= (and b!2293973 ((_ is Concat!11257) (regOne!13955 (regex!4373 r!2363)))) b!2294562))

(assert (= (and b!2293973 ((_ is Star!6721) (regOne!13955 (regex!4373 r!2363)))) b!2294563))

(assert (= (and b!2293973 ((_ is Union!6721) (regOne!13955 (regex!4373 r!2363)))) b!2294564))

(declare-fun b!2294566 () Bool)

(declare-fun e!1470333 () Bool)

(declare-fun tp!727547 () Bool)

(declare-fun tp!727549 () Bool)

(assert (=> b!2294566 (= e!1470333 (and tp!727547 tp!727549))))

(assert (=> b!2293973 (= tp!727372 e!1470333)))

(declare-fun b!2294565 () Bool)

(assert (=> b!2294565 (= e!1470333 tp_is_empty!10663)))

(declare-fun b!2294568 () Bool)

(declare-fun tp!727545 () Bool)

(declare-fun tp!727548 () Bool)

(assert (=> b!2294568 (= e!1470333 (and tp!727545 tp!727548))))

(declare-fun b!2294567 () Bool)

(declare-fun tp!727546 () Bool)

(assert (=> b!2294567 (= e!1470333 tp!727546)))

(assert (= (and b!2293973 ((_ is ElementMatch!6721) (regTwo!13955 (regex!4373 r!2363)))) b!2294565))

(assert (= (and b!2293973 ((_ is Concat!11257) (regTwo!13955 (regex!4373 r!2363)))) b!2294566))

(assert (= (and b!2293973 ((_ is Star!6721) (regTwo!13955 (regex!4373 r!2363)))) b!2294567))

(assert (= (and b!2293973 ((_ is Union!6721) (regTwo!13955 (regex!4373 r!2363)))) b!2294568))

(declare-fun b!2294572 () Bool)

(declare-fun b_free!69045 () Bool)

(declare-fun b_next!69749 () Bool)

(assert (=> b!2294572 (= b_free!69045 (not b_next!69749))))

(declare-fun tp!727553 () Bool)

(declare-fun b_and!182473 () Bool)

(assert (=> b!2294572 (= tp!727553 b_and!182473)))

(declare-fun b_free!69047 () Bool)

(declare-fun b_next!69751 () Bool)

(assert (=> b!2294572 (= b_free!69047 (not b_next!69751))))

(declare-fun t!205184 () Bool)

(declare-fun tb!137011 () Bool)

(assert (=> (and b!2294572 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 (t!205090 tokens!456)))))) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456))))) t!205184) tb!137011))

(declare-fun result!167022 () Bool)

(assert (= result!167022 result!166932))

(assert (=> d!678492 t!205184))

(declare-fun t!205186 () Bool)

(declare-fun tb!137013 () Bool)

(assert (=> (and b!2294572 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 (t!205090 tokens!456)))))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) t!205186) tb!137013))

(declare-fun result!167024 () Bool)

(assert (= result!167024 result!166942))

(assert (=> b!2293741 t!205186))

(declare-fun t!205188 () Bool)

(declare-fun tb!137015 () Bool)

(assert (=> (and b!2294572 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 (t!205090 tokens!456)))))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456)))))) t!205188) tb!137015))

(declare-fun result!167026 () Bool)

(assert (= result!167026 result!166982))

(assert (=> b!2294264 t!205188))

(declare-fun tp!727551 () Bool)

(declare-fun b_and!182475 () Bool)

(assert (=> b!2294572 (= tp!727551 (and (=> t!205184 result!167022) (=> t!205186 result!167024) (=> t!205188 result!167026) b_and!182475))))

(declare-fun b!2294569 () Bool)

(declare-fun e!1470335 () Bool)

(declare-fun tp!727550 () Bool)

(declare-fun e!1470339 () Bool)

(assert (=> b!2294569 (= e!1470335 (and (inv!36917 (h!32715 (t!205090 (t!205090 tokens!456)))) e!1470339 tp!727550))))

(declare-fun e!1470334 () Bool)

(declare-fun tp!727554 () Bool)

(declare-fun b!2294571 () Bool)

(declare-fun e!1470336 () Bool)

(assert (=> b!2294571 (= e!1470334 (and tp!727554 (inv!36913 (tag!4863 (rule!6711 (h!32715 (t!205090 (t!205090 tokens!456)))))) (inv!36916 (transformation!4373 (rule!6711 (h!32715 (t!205090 (t!205090 tokens!456)))))) e!1470336))))

(assert (=> b!2294572 (= e!1470336 (and tp!727553 tp!727551))))

(assert (=> b!2293943 (= tp!727341 e!1470335)))

(declare-fun tp!727552 () Bool)

(declare-fun b!2294570 () Bool)

(assert (=> b!2294570 (= e!1470339 (and (inv!21 (value!138450 (h!32715 (t!205090 (t!205090 tokens!456))))) e!1470334 tp!727552))))

(assert (= b!2294571 b!2294572))

(assert (= b!2294570 b!2294571))

(assert (= b!2294569 b!2294570))

(assert (= (and b!2293943 ((_ is Cons!27314) (t!205090 (t!205090 tokens!456)))) b!2294569))

(declare-fun m!2722329 () Bool)

(assert (=> b!2294569 m!2722329))

(declare-fun m!2722331 () Bool)

(assert (=> b!2294571 m!2722331))

(declare-fun m!2722333 () Bool)

(assert (=> b!2294571 m!2722333))

(declare-fun m!2722335 () Bool)

(assert (=> b!2294570 m!2722335))

(declare-fun b!2294574 () Bool)

(declare-fun e!1470340 () Bool)

(declare-fun tp!727557 () Bool)

(declare-fun tp!727559 () Bool)

(assert (=> b!2294574 (= e!1470340 (and tp!727557 tp!727559))))

(assert (=> b!2293964 (= tp!727360 e!1470340)))

(declare-fun b!2294573 () Bool)

(assert (=> b!2294573 (= e!1470340 tp_is_empty!10663)))

(declare-fun b!2294576 () Bool)

(declare-fun tp!727555 () Bool)

(declare-fun tp!727558 () Bool)

(assert (=> b!2294576 (= e!1470340 (and tp!727555 tp!727558))))

(declare-fun b!2294575 () Bool)

(declare-fun tp!727556 () Bool)

(assert (=> b!2294575 (= e!1470340 tp!727556)))

(assert (= (and b!2293964 ((_ is ElementMatch!6721) (reg!7050 (regex!4373 (h!32714 rules!1750))))) b!2294573))

(assert (= (and b!2293964 ((_ is Concat!11257) (reg!7050 (regex!4373 (h!32714 rules!1750))))) b!2294574))

(assert (= (and b!2293964 ((_ is Star!6721) (reg!7050 (regex!4373 (h!32714 rules!1750))))) b!2294575))

(assert (= (and b!2293964 ((_ is Union!6721) (reg!7050 (regex!4373 (h!32714 rules!1750))))) b!2294576))

(declare-fun b!2294578 () Bool)

(declare-fun e!1470341 () Bool)

(declare-fun tp!727562 () Bool)

(declare-fun tp!727564 () Bool)

(assert (=> b!2294578 (= e!1470341 (and tp!727562 tp!727564))))

(assert (=> b!2293963 (= tp!727361 e!1470341)))

(declare-fun b!2294577 () Bool)

(assert (=> b!2294577 (= e!1470341 tp_is_empty!10663)))

(declare-fun b!2294580 () Bool)

(declare-fun tp!727560 () Bool)

(declare-fun tp!727563 () Bool)

(assert (=> b!2294580 (= e!1470341 (and tp!727560 tp!727563))))

(declare-fun b!2294579 () Bool)

(declare-fun tp!727561 () Bool)

(assert (=> b!2294579 (= e!1470341 tp!727561)))

(assert (= (and b!2293963 ((_ is ElementMatch!6721) (regOne!13954 (regex!4373 (h!32714 rules!1750))))) b!2294577))

(assert (= (and b!2293963 ((_ is Concat!11257) (regOne!13954 (regex!4373 (h!32714 rules!1750))))) b!2294578))

(assert (= (and b!2293963 ((_ is Star!6721) (regOne!13954 (regex!4373 (h!32714 rules!1750))))) b!2294579))

(assert (= (and b!2293963 ((_ is Union!6721) (regOne!13954 (regex!4373 (h!32714 rules!1750))))) b!2294580))

(declare-fun b!2294582 () Bool)

(declare-fun e!1470342 () Bool)

(declare-fun tp!727567 () Bool)

(declare-fun tp!727569 () Bool)

(assert (=> b!2294582 (= e!1470342 (and tp!727567 tp!727569))))

(assert (=> b!2293963 (= tp!727363 e!1470342)))

(declare-fun b!2294581 () Bool)

(assert (=> b!2294581 (= e!1470342 tp_is_empty!10663)))

(declare-fun b!2294584 () Bool)

(declare-fun tp!727565 () Bool)

(declare-fun tp!727568 () Bool)

(assert (=> b!2294584 (= e!1470342 (and tp!727565 tp!727568))))

(declare-fun b!2294583 () Bool)

(declare-fun tp!727566 () Bool)

(assert (=> b!2294583 (= e!1470342 tp!727566)))

(assert (= (and b!2293963 ((_ is ElementMatch!6721) (regTwo!13954 (regex!4373 (h!32714 rules!1750))))) b!2294581))

(assert (= (and b!2293963 ((_ is Concat!11257) (regTwo!13954 (regex!4373 (h!32714 rules!1750))))) b!2294582))

(assert (= (and b!2293963 ((_ is Star!6721) (regTwo!13954 (regex!4373 (h!32714 rules!1750))))) b!2294583))

(assert (= (and b!2293963 ((_ is Union!6721) (regTwo!13954 (regex!4373 (h!32714 rules!1750))))) b!2294584))

(declare-fun b!2294586 () Bool)

(declare-fun e!1470343 () Bool)

(declare-fun tp!727572 () Bool)

(declare-fun tp!727574 () Bool)

(assert (=> b!2294586 (= e!1470343 (and tp!727572 tp!727574))))

(assert (=> b!2293972 (= tp!727370 e!1470343)))

(declare-fun b!2294585 () Bool)

(assert (=> b!2294585 (= e!1470343 tp_is_empty!10663)))

(declare-fun b!2294588 () Bool)

(declare-fun tp!727570 () Bool)

(declare-fun tp!727573 () Bool)

(assert (=> b!2294588 (= e!1470343 (and tp!727570 tp!727573))))

(declare-fun b!2294587 () Bool)

(declare-fun tp!727571 () Bool)

(assert (=> b!2294587 (= e!1470343 tp!727571)))

(assert (= (and b!2293972 ((_ is ElementMatch!6721) (reg!7050 (regex!4373 r!2363)))) b!2294585))

(assert (= (and b!2293972 ((_ is Concat!11257) (reg!7050 (regex!4373 r!2363)))) b!2294586))

(assert (= (and b!2293972 ((_ is Star!6721) (reg!7050 (regex!4373 r!2363)))) b!2294587))

(assert (= (and b!2293972 ((_ is Union!6721) (reg!7050 (regex!4373 r!2363)))) b!2294588))

(declare-fun b!2294590 () Bool)

(declare-fun e!1470344 () Bool)

(declare-fun tp!727577 () Bool)

(declare-fun tp!727579 () Bool)

(assert (=> b!2294590 (= e!1470344 (and tp!727577 tp!727579))))

(assert (=> b!2293971 (= tp!727371 e!1470344)))

(declare-fun b!2294589 () Bool)

(assert (=> b!2294589 (= e!1470344 tp_is_empty!10663)))

(declare-fun b!2294592 () Bool)

(declare-fun tp!727575 () Bool)

(declare-fun tp!727578 () Bool)

(assert (=> b!2294592 (= e!1470344 (and tp!727575 tp!727578))))

(declare-fun b!2294591 () Bool)

(declare-fun tp!727576 () Bool)

(assert (=> b!2294591 (= e!1470344 tp!727576)))

(assert (= (and b!2293971 ((_ is ElementMatch!6721) (regOne!13954 (regex!4373 r!2363)))) b!2294589))

(assert (= (and b!2293971 ((_ is Concat!11257) (regOne!13954 (regex!4373 r!2363)))) b!2294590))

(assert (= (and b!2293971 ((_ is Star!6721) (regOne!13954 (regex!4373 r!2363)))) b!2294591))

(assert (= (and b!2293971 ((_ is Union!6721) (regOne!13954 (regex!4373 r!2363)))) b!2294592))

(declare-fun b!2294594 () Bool)

(declare-fun e!1470345 () Bool)

(declare-fun tp!727582 () Bool)

(declare-fun tp!727584 () Bool)

(assert (=> b!2294594 (= e!1470345 (and tp!727582 tp!727584))))

(assert (=> b!2293971 (= tp!727373 e!1470345)))

(declare-fun b!2294593 () Bool)

(assert (=> b!2294593 (= e!1470345 tp_is_empty!10663)))

(declare-fun b!2294596 () Bool)

(declare-fun tp!727580 () Bool)

(declare-fun tp!727583 () Bool)

(assert (=> b!2294596 (= e!1470345 (and tp!727580 tp!727583))))

(declare-fun b!2294595 () Bool)

(declare-fun tp!727581 () Bool)

(assert (=> b!2294595 (= e!1470345 tp!727581)))

(assert (= (and b!2293971 ((_ is ElementMatch!6721) (regTwo!13954 (regex!4373 r!2363)))) b!2294593))

(assert (= (and b!2293971 ((_ is Concat!11257) (regTwo!13954 (regex!4373 r!2363)))) b!2294594))

(assert (= (and b!2293971 ((_ is Star!6721) (regTwo!13954 (regex!4373 r!2363)))) b!2294595))

(assert (= (and b!2293971 ((_ is Union!6721) (regTwo!13954 (regex!4373 r!2363)))) b!2294596))

(declare-fun b!2294598 () Bool)

(declare-fun e!1470346 () Bool)

(declare-fun tp!727587 () Bool)

(declare-fun tp!727589 () Bool)

(assert (=> b!2294598 (= e!1470346 (and tp!727587 tp!727589))))

(assert (=> b!2293980 (= tp!727377 e!1470346)))

(declare-fun b!2294597 () Bool)

(assert (=> b!2294597 (= e!1470346 tp_is_empty!10663)))

(declare-fun b!2294600 () Bool)

(declare-fun tp!727585 () Bool)

(declare-fun tp!727588 () Bool)

(assert (=> b!2294600 (= e!1470346 (and tp!727585 tp!727588))))

(declare-fun b!2294599 () Bool)

(declare-fun tp!727586 () Bool)

(assert (=> b!2294599 (= e!1470346 tp!727586)))

(assert (= (and b!2293980 ((_ is ElementMatch!6721) (regOne!13955 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294597))

(assert (= (and b!2293980 ((_ is Concat!11257) (regOne!13955 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294598))

(assert (= (and b!2293980 ((_ is Star!6721) (regOne!13955 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294599))

(assert (= (and b!2293980 ((_ is Union!6721) (regOne!13955 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294600))

(declare-fun b!2294602 () Bool)

(declare-fun e!1470347 () Bool)

(declare-fun tp!727592 () Bool)

(declare-fun tp!727594 () Bool)

(assert (=> b!2294602 (= e!1470347 (and tp!727592 tp!727594))))

(assert (=> b!2293980 (= tp!727380 e!1470347)))

(declare-fun b!2294601 () Bool)

(assert (=> b!2294601 (= e!1470347 tp_is_empty!10663)))

(declare-fun b!2294604 () Bool)

(declare-fun tp!727590 () Bool)

(declare-fun tp!727593 () Bool)

(assert (=> b!2294604 (= e!1470347 (and tp!727590 tp!727593))))

(declare-fun b!2294603 () Bool)

(declare-fun tp!727591 () Bool)

(assert (=> b!2294603 (= e!1470347 tp!727591)))

(assert (= (and b!2293980 ((_ is ElementMatch!6721) (regTwo!13955 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294601))

(assert (= (and b!2293980 ((_ is Concat!11257) (regTwo!13955 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294602))

(assert (= (and b!2293980 ((_ is Star!6721) (regTwo!13955 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294603))

(assert (= (and b!2293980 ((_ is Union!6721) (regTwo!13955 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294604))

(declare-fun b!2294605 () Bool)

(declare-fun e!1470348 () Bool)

(declare-fun tp!727595 () Bool)

(assert (=> b!2294605 (= e!1470348 (and tp_is_empty!10663 tp!727595))))

(assert (=> b!2293975 (= tp!727375 e!1470348)))

(assert (= (and b!2293975 ((_ is Cons!27312) (t!205088 (t!205088 suffix!886)))) b!2294605))

(declare-fun b!2294607 () Bool)

(declare-fun e!1470349 () Bool)

(declare-fun tp!727598 () Bool)

(declare-fun tp!727600 () Bool)

(assert (=> b!2294607 (= e!1470349 (and tp!727598 tp!727600))))

(assert (=> b!2293945 (= tp!727345 e!1470349)))

(declare-fun b!2294606 () Bool)

(assert (=> b!2294606 (= e!1470349 tp_is_empty!10663)))

(declare-fun b!2294609 () Bool)

(declare-fun tp!727596 () Bool)

(declare-fun tp!727599 () Bool)

(assert (=> b!2294609 (= e!1470349 (and tp!727596 tp!727599))))

(declare-fun b!2294608 () Bool)

(declare-fun tp!727597 () Bool)

(assert (=> b!2294608 (= e!1470349 tp!727597)))

(assert (= (and b!2293945 ((_ is ElementMatch!6721) (regex!4373 (rule!6711 (h!32715 (t!205090 tokens!456)))))) b!2294606))

(assert (= (and b!2293945 ((_ is Concat!11257) (regex!4373 (rule!6711 (h!32715 (t!205090 tokens!456)))))) b!2294607))

(assert (= (and b!2293945 ((_ is Star!6721) (regex!4373 (rule!6711 (h!32715 (t!205090 tokens!456)))))) b!2294608))

(assert (= (and b!2293945 ((_ is Union!6721) (regex!4373 (rule!6711 (h!32715 (t!205090 tokens!456)))))) b!2294609))

(declare-fun b!2294610 () Bool)

(declare-fun e!1470350 () Bool)

(declare-fun tp!727601 () Bool)

(assert (=> b!2294610 (= e!1470350 (and tp_is_empty!10663 tp!727601))))

(assert (=> b!2293974 (= tp!727374 e!1470350)))

(assert (= (and b!2293974 ((_ is Cons!27312) (t!205088 (originalCharacters!5143 (h!32715 tokens!456))))) b!2294610))

(declare-fun b!2294612 () Bool)

(declare-fun e!1470351 () Bool)

(declare-fun tp!727604 () Bool)

(declare-fun tp!727606 () Bool)

(assert (=> b!2294612 (= e!1470351 (and tp!727604 tp!727606))))

(assert (=> b!2293968 (= tp!727365 e!1470351)))

(declare-fun b!2294611 () Bool)

(assert (=> b!2294611 (= e!1470351 tp_is_empty!10663)))

(declare-fun b!2294614 () Bool)

(declare-fun tp!727602 () Bool)

(declare-fun tp!727605 () Bool)

(assert (=> b!2294614 (= e!1470351 (and tp!727602 tp!727605))))

(declare-fun b!2294613 () Bool)

(declare-fun tp!727603 () Bool)

(assert (=> b!2294613 (= e!1470351 tp!727603)))

(assert (= (and b!2293968 ((_ is ElementMatch!6721) (reg!7050 (regex!4373 otherR!12)))) b!2294611))

(assert (= (and b!2293968 ((_ is Concat!11257) (reg!7050 (regex!4373 otherR!12)))) b!2294612))

(assert (= (and b!2293968 ((_ is Star!6721) (reg!7050 (regex!4373 otherR!12)))) b!2294613))

(assert (= (and b!2293968 ((_ is Union!6721) (reg!7050 (regex!4373 otherR!12)))) b!2294614))

(declare-fun b!2294616 () Bool)

(declare-fun e!1470352 () Bool)

(declare-fun tp!727609 () Bool)

(declare-fun tp!727611 () Bool)

(assert (=> b!2294616 (= e!1470352 (and tp!727609 tp!727611))))

(assert (=> b!2293969 (= tp!727364 e!1470352)))

(declare-fun b!2294615 () Bool)

(assert (=> b!2294615 (= e!1470352 tp_is_empty!10663)))

(declare-fun b!2294618 () Bool)

(declare-fun tp!727607 () Bool)

(declare-fun tp!727610 () Bool)

(assert (=> b!2294618 (= e!1470352 (and tp!727607 tp!727610))))

(declare-fun b!2294617 () Bool)

(declare-fun tp!727608 () Bool)

(assert (=> b!2294617 (= e!1470352 tp!727608)))

(assert (= (and b!2293969 ((_ is ElementMatch!6721) (regOne!13955 (regex!4373 otherR!12)))) b!2294615))

(assert (= (and b!2293969 ((_ is Concat!11257) (regOne!13955 (regex!4373 otherR!12)))) b!2294616))

(assert (= (and b!2293969 ((_ is Star!6721) (regOne!13955 (regex!4373 otherR!12)))) b!2294617))

(assert (= (and b!2293969 ((_ is Union!6721) (regOne!13955 (regex!4373 otherR!12)))) b!2294618))

(declare-fun b!2294620 () Bool)

(declare-fun e!1470353 () Bool)

(declare-fun tp!727614 () Bool)

(declare-fun tp!727616 () Bool)

(assert (=> b!2294620 (= e!1470353 (and tp!727614 tp!727616))))

(assert (=> b!2293969 (= tp!727367 e!1470353)))

(declare-fun b!2294619 () Bool)

(assert (=> b!2294619 (= e!1470353 tp_is_empty!10663)))

(declare-fun b!2294622 () Bool)

(declare-fun tp!727612 () Bool)

(declare-fun tp!727615 () Bool)

(assert (=> b!2294622 (= e!1470353 (and tp!727612 tp!727615))))

(declare-fun b!2294621 () Bool)

(declare-fun tp!727613 () Bool)

(assert (=> b!2294621 (= e!1470353 tp!727613)))

(assert (= (and b!2293969 ((_ is ElementMatch!6721) (regTwo!13955 (regex!4373 otherR!12)))) b!2294619))

(assert (= (and b!2293969 ((_ is Concat!11257) (regTwo!13955 (regex!4373 otherR!12)))) b!2294620))

(assert (= (and b!2293969 ((_ is Star!6721) (regTwo!13955 (regex!4373 otherR!12)))) b!2294621))

(assert (= (and b!2293969 ((_ is Union!6721) (regTwo!13955 (regex!4373 otherR!12)))) b!2294622))

(declare-fun b!2294624 () Bool)

(declare-fun e!1470354 () Bool)

(declare-fun tp!727619 () Bool)

(declare-fun tp!727621 () Bool)

(assert (=> b!2294624 (= e!1470354 (and tp!727619 tp!727621))))

(assert (=> b!2293967 (= tp!727366 e!1470354)))

(declare-fun b!2294623 () Bool)

(assert (=> b!2294623 (= e!1470354 tp_is_empty!10663)))

(declare-fun b!2294626 () Bool)

(declare-fun tp!727617 () Bool)

(declare-fun tp!727620 () Bool)

(assert (=> b!2294626 (= e!1470354 (and tp!727617 tp!727620))))

(declare-fun b!2294625 () Bool)

(declare-fun tp!727618 () Bool)

(assert (=> b!2294625 (= e!1470354 tp!727618)))

(assert (= (and b!2293967 ((_ is ElementMatch!6721) (regOne!13954 (regex!4373 otherR!12)))) b!2294623))

(assert (= (and b!2293967 ((_ is Concat!11257) (regOne!13954 (regex!4373 otherR!12)))) b!2294624))

(assert (= (and b!2293967 ((_ is Star!6721) (regOne!13954 (regex!4373 otherR!12)))) b!2294625))

(assert (= (and b!2293967 ((_ is Union!6721) (regOne!13954 (regex!4373 otherR!12)))) b!2294626))

(declare-fun b!2294628 () Bool)

(declare-fun e!1470355 () Bool)

(declare-fun tp!727624 () Bool)

(declare-fun tp!727626 () Bool)

(assert (=> b!2294628 (= e!1470355 (and tp!727624 tp!727626))))

(assert (=> b!2293967 (= tp!727368 e!1470355)))

(declare-fun b!2294627 () Bool)

(assert (=> b!2294627 (= e!1470355 tp_is_empty!10663)))

(declare-fun b!2294630 () Bool)

(declare-fun tp!727622 () Bool)

(declare-fun tp!727625 () Bool)

(assert (=> b!2294630 (= e!1470355 (and tp!727622 tp!727625))))

(declare-fun b!2294629 () Bool)

(declare-fun tp!727623 () Bool)

(assert (=> b!2294629 (= e!1470355 tp!727623)))

(assert (= (and b!2293967 ((_ is ElementMatch!6721) (regTwo!13954 (regex!4373 otherR!12)))) b!2294627))

(assert (= (and b!2293967 ((_ is Concat!11257) (regTwo!13954 (regex!4373 otherR!12)))) b!2294628))

(assert (= (and b!2293967 ((_ is Star!6721) (regTwo!13954 (regex!4373 otherR!12)))) b!2294629))

(assert (= (and b!2293967 ((_ is Union!6721) (regTwo!13954 (regex!4373 otherR!12)))) b!2294630))

(declare-fun b!2294632 () Bool)

(declare-fun e!1470356 () Bool)

(declare-fun tp!727629 () Bool)

(declare-fun tp!727631 () Bool)

(assert (=> b!2294632 (= e!1470356 (and tp!727629 tp!727631))))

(assert (=> b!2293931 (= tp!727327 e!1470356)))

(declare-fun b!2294631 () Bool)

(assert (=> b!2294631 (= e!1470356 tp_is_empty!10663)))

(declare-fun b!2294634 () Bool)

(declare-fun tp!727627 () Bool)

(declare-fun tp!727630 () Bool)

(assert (=> b!2294634 (= e!1470356 (and tp!727627 tp!727630))))

(declare-fun b!2294633 () Bool)

(declare-fun tp!727628 () Bool)

(assert (=> b!2294633 (= e!1470356 tp!727628)))

(assert (= (and b!2293931 ((_ is ElementMatch!6721) (regex!4373 (h!32714 (t!205089 rules!1750))))) b!2294631))

(assert (= (and b!2293931 ((_ is Concat!11257) (regex!4373 (h!32714 (t!205089 rules!1750))))) b!2294632))

(assert (= (and b!2293931 ((_ is Star!6721) (regex!4373 (h!32714 (t!205089 rules!1750))))) b!2294633))

(assert (= (and b!2293931 ((_ is Union!6721) (regex!4373 (h!32714 (t!205089 rules!1750))))) b!2294634))

(declare-fun b!2294635 () Bool)

(declare-fun e!1470357 () Bool)

(declare-fun tp!727632 () Bool)

(assert (=> b!2294635 (= e!1470357 (and tp_is_empty!10663 tp!727632))))

(assert (=> b!2293976 (= tp!727376 e!1470357)))

(assert (= (and b!2293976 ((_ is Cons!27312) (t!205088 (t!205088 otherP!12)))) b!2294635))

(declare-fun b!2294638 () Bool)

(declare-fun b_free!69049 () Bool)

(declare-fun b_next!69753 () Bool)

(assert (=> b!2294638 (= b_free!69049 (not b_next!69753))))

(declare-fun tp!727635 () Bool)

(declare-fun b_and!182477 () Bool)

(assert (=> b!2294638 (= tp!727635 b_and!182477)))

(declare-fun b_free!69051 () Bool)

(declare-fun b_next!69755 () Bool)

(assert (=> b!2294638 (= b_free!69051 (not b_next!69755))))

(declare-fun t!205190 () Bool)

(declare-fun tb!137017 () Bool)

(assert (=> (and b!2294638 (= (toChars!6026 (transformation!4373 (h!32714 (t!205089 (t!205089 rules!1750))))) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456))))) t!205190) tb!137017))

(declare-fun result!167028 () Bool)

(assert (= result!167028 result!166932))

(assert (=> d!678492 t!205190))

(declare-fun t!205192 () Bool)

(declare-fun tb!137019 () Bool)

(assert (=> (and b!2294638 (= (toChars!6026 (transformation!4373 (h!32714 (t!205089 (t!205089 rules!1750))))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456))))) t!205192) tb!137019))

(declare-fun result!167030 () Bool)

(assert (= result!167030 result!166942))

(assert (=> b!2293741 t!205192))

(declare-fun tb!137021 () Bool)

(declare-fun t!205194 () Bool)

(assert (=> (and b!2294638 (= (toChars!6026 (transformation!4373 (h!32714 (t!205089 (t!205089 rules!1750))))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456)))))) t!205194) tb!137021))

(declare-fun result!167032 () Bool)

(assert (= result!167032 result!166982))

(assert (=> b!2294264 t!205194))

(declare-fun tp!727634 () Bool)

(declare-fun b_and!182479 () Bool)

(assert (=> b!2294638 (= tp!727634 (and (=> t!205190 result!167028) (=> t!205192 result!167030) (=> t!205194 result!167032) b_and!182479))))

(declare-fun e!1470359 () Bool)

(assert (=> b!2294638 (= e!1470359 (and tp!727635 tp!727634))))

(declare-fun b!2294637 () Bool)

(declare-fun tp!727633 () Bool)

(declare-fun e!1470358 () Bool)

(assert (=> b!2294637 (= e!1470358 (and tp!727633 (inv!36913 (tag!4863 (h!32714 (t!205089 (t!205089 rules!1750))))) (inv!36916 (transformation!4373 (h!32714 (t!205089 (t!205089 rules!1750))))) e!1470359))))

(declare-fun b!2294636 () Bool)

(declare-fun e!1470361 () Bool)

(declare-fun tp!727636 () Bool)

(assert (=> b!2294636 (= e!1470361 (and e!1470358 tp!727636))))

(assert (=> b!2293930 (= tp!727330 e!1470361)))

(assert (= b!2294637 b!2294638))

(assert (= b!2294636 b!2294637))

(assert (= (and b!2293930 ((_ is Cons!27313) (t!205089 (t!205089 rules!1750)))) b!2294636))

(declare-fun m!2722337 () Bool)

(assert (=> b!2294637 m!2722337))

(declare-fun m!2722339 () Bool)

(assert (=> b!2294637 m!2722339))

(declare-fun b!2294639 () Bool)

(declare-fun e!1470362 () Bool)

(declare-fun tp!727637 () Bool)

(assert (=> b!2294639 (= e!1470362 (and tp_is_empty!10663 tp!727637))))

(assert (=> b!2293951 (= tp!727348 e!1470362)))

(assert (= (and b!2293951 ((_ is Cons!27312) (t!205088 (t!205088 input!1722)))) b!2294639))

(declare-fun tp!727639 () Bool)

(declare-fun b!2294640 () Bool)

(declare-fun e!1470364 () Bool)

(declare-fun tp!727640 () Bool)

(assert (=> b!2294640 (= e!1470364 (and (inv!36920 (left!20701 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456)))))) tp!727639 (inv!36920 (right!21031 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456)))))) tp!727640))))

(declare-fun b!2294642 () Bool)

(declare-fun e!1470363 () Bool)

(declare-fun tp!727638 () Bool)

(assert (=> b!2294642 (= e!1470363 tp!727638)))

(declare-fun b!2294641 () Bool)

(assert (=> b!2294641 (= e!1470364 (and (inv!36927 (xs!11836 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456)))))) e!1470363))))

(assert (=> b!2293743 (= tp!727255 (and (inv!36920 (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456))))) e!1470364))))

(assert (= (and b!2293743 ((_ is Node!8894) (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456)))))) b!2294640))

(assert (= b!2294641 b!2294642))

(assert (= (and b!2293743 ((_ is Leaf!13066) (c!363650 (dynLambda!11857 (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (value!138450 (h!32715 tokens!456)))))) b!2294641))

(declare-fun m!2722341 () Bool)

(assert (=> b!2294640 m!2722341))

(declare-fun m!2722343 () Bool)

(assert (=> b!2294640 m!2722343))

(declare-fun m!2722345 () Bool)

(assert (=> b!2294641 m!2722345))

(assert (=> b!2293743 m!2721533))

(declare-fun b!2294644 () Bool)

(declare-fun e!1470365 () Bool)

(declare-fun tp!727643 () Bool)

(declare-fun tp!727645 () Bool)

(assert (=> b!2294644 (= e!1470365 (and tp!727643 tp!727645))))

(assert (=> b!2293978 (= tp!727379 e!1470365)))

(declare-fun b!2294643 () Bool)

(assert (=> b!2294643 (= e!1470365 tp_is_empty!10663)))

(declare-fun b!2294646 () Bool)

(declare-fun tp!727641 () Bool)

(declare-fun tp!727644 () Bool)

(assert (=> b!2294646 (= e!1470365 (and tp!727641 tp!727644))))

(declare-fun b!2294645 () Bool)

(declare-fun tp!727642 () Bool)

(assert (=> b!2294645 (= e!1470365 tp!727642)))

(assert (= (and b!2293978 ((_ is ElementMatch!6721) (regOne!13954 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294643))

(assert (= (and b!2293978 ((_ is Concat!11257) (regOne!13954 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294644))

(assert (= (and b!2293978 ((_ is Star!6721) (regOne!13954 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294645))

(assert (= (and b!2293978 ((_ is Union!6721) (regOne!13954 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294646))

(declare-fun b!2294648 () Bool)

(declare-fun e!1470366 () Bool)

(declare-fun tp!727648 () Bool)

(declare-fun tp!727650 () Bool)

(assert (=> b!2294648 (= e!1470366 (and tp!727648 tp!727650))))

(assert (=> b!2293978 (= tp!727381 e!1470366)))

(declare-fun b!2294647 () Bool)

(assert (=> b!2294647 (= e!1470366 tp_is_empty!10663)))

(declare-fun b!2294650 () Bool)

(declare-fun tp!727646 () Bool)

(declare-fun tp!727649 () Bool)

(assert (=> b!2294650 (= e!1470366 (and tp!727646 tp!727649))))

(declare-fun b!2294649 () Bool)

(declare-fun tp!727647 () Bool)

(assert (=> b!2294649 (= e!1470366 tp!727647)))

(assert (= (and b!2293978 ((_ is ElementMatch!6721) (regTwo!13954 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294647))

(assert (= (and b!2293978 ((_ is Concat!11257) (regTwo!13954 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294648))

(assert (= (and b!2293978 ((_ is Star!6721) (regTwo!13954 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294649))

(assert (= (and b!2293978 ((_ is Union!6721) (regTwo!13954 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294650))

(declare-fun b!2294652 () Bool)

(declare-fun e!1470367 () Bool)

(declare-fun tp!727653 () Bool)

(declare-fun tp!727655 () Bool)

(assert (=> b!2294652 (= e!1470367 (and tp!727653 tp!727655))))

(assert (=> b!2293979 (= tp!727378 e!1470367)))

(declare-fun b!2294651 () Bool)

(assert (=> b!2294651 (= e!1470367 tp_is_empty!10663)))

(declare-fun b!2294654 () Bool)

(declare-fun tp!727651 () Bool)

(declare-fun tp!727654 () Bool)

(assert (=> b!2294654 (= e!1470367 (and tp!727651 tp!727654))))

(declare-fun b!2294653 () Bool)

(declare-fun tp!727652 () Bool)

(assert (=> b!2294653 (= e!1470367 tp!727652)))

(assert (= (and b!2293979 ((_ is ElementMatch!6721) (reg!7050 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294651))

(assert (= (and b!2293979 ((_ is Concat!11257) (reg!7050 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294652))

(assert (= (and b!2293979 ((_ is Star!6721) (reg!7050 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294653))

(assert (= (and b!2293979 ((_ is Union!6721) (reg!7050 (regex!4373 (rule!6711 (h!32715 tokens!456)))))) b!2294654))

(declare-fun b_lambda!73135 () Bool)

(assert (= b_lambda!73123 (or (and b!2293553 b_free!69019 (= (toChars!6026 (transformation!4373 (h!32714 rules!1750))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))))) (and b!2293559 b_free!69015 (= (toChars!6026 (transformation!4373 otherR!12)) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))))) (and b!2293932 b_free!69031 (= (toChars!6026 (transformation!4373 (h!32714 (t!205089 rules!1750)))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))))) (and b!2294638 b_free!69051 (= (toChars!6026 (transformation!4373 (h!32714 (t!205089 (t!205089 rules!1750))))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))))) (and b!2293534 b_free!69011 (= (toChars!6026 (transformation!4373 r!2363)) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))))) (and b!2294572 b_free!69047 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 (t!205090 tokens!456)))))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))))) (and b!2293549 b_free!69007 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))))) (and b!2293946 b_free!69035) b_lambda!73135)))

(declare-fun b_lambda!73137 () Bool)

(assert (= b_lambda!73113 (or (and b!2293946 b_free!69035 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 tokens!456))))) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))))) (and b!2293549 b_free!69007 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 tokens!456)))) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))))) (and b!2293553 b_free!69019 (= (toChars!6026 (transformation!4373 (h!32714 rules!1750))) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))))) (and b!2293559 b_free!69015 (= (toChars!6026 (transformation!4373 otherR!12)) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))))) (and b!2294638 b_free!69051 (= (toChars!6026 (transformation!4373 (h!32714 (t!205089 (t!205089 rules!1750))))) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))))) (and b!2293932 b_free!69031 (= (toChars!6026 (transformation!4373 (h!32714 (t!205089 rules!1750)))) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))))) (and b!2293534 b_free!69011 (= (toChars!6026 (transformation!4373 r!2363)) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))))) (and b!2294572 b_free!69047 (= (toChars!6026 (transformation!4373 (rule!6711 (h!32715 (t!205090 (t!205090 tokens!456)))))) (toChars!6026 (transformation!4373 (rule!6711 (head!5004 tokens!456)))))) b_lambda!73137)))

(declare-fun b_lambda!73139 () Bool)

(assert (= b_lambda!73133 (or d!678510 b_lambda!73139)))

(declare-fun bs!457311 () Bool)

(declare-fun d!678830 () Bool)

(assert (= bs!457311 (and d!678830 d!678510)))

(assert (=> bs!457311 (= (dynLambda!11867 lambda!85801 (h!32714 rules!1750)) (ruleValid!1463 thiss!16613 (h!32714 rules!1750)))))

(assert (=> bs!457311 m!2721615))

(assert (=> b!2294539 d!678830))

(check-sat (not b!2294281) (not b!2294594) (not d!678708) (not b!2294626) (not b!2294524) b_and!182477 (not b!2294298) (not b!2294574) (not d!678704) (not b!2294285) (not d!678714) (not b!2294264) (not b_next!69723) b_and!182449 (not d!678672) (not b!2294613) (not b!2294630) (not b!2294603) (not b!2294599) (not b!2294540) (not d!678722) (not b!2294652) (not b!2294602) b_and!182433 (not b!2294297) (not b!2294546) (not b_next!69721) (not d!678724) (not b!2294530) (not b!2294618) (not b!2294632) (not b!2294121) (not d!678674) (not b!2294532) (not b!2294612) (not b!2294547) (not b!2294214) (not b!2294644) (not b!2294575) (not b!2294628) (not bm!136812) (not d!678730) (not b!2294171) (not b!2294616) (not b_lambda!73119) (not b!2293736) (not b!2294542) (not b!2294620) (not b_next!69713) (not b!2294559) tp_is_empty!10663 (not b!2294521) (not b_next!69735) (not b!2294261) (not b!2294544) (not b!2294636) (not d!678818) (not d!678804) (not d!678666) (not d!678744) (not b!2294223) (not b!2294580) b_and!182437 (not b!2294592) (not b!2294257) (not b!2294584) (not b_next!69715) (not b!2294570) (not b!2294191) (not b!2294127) (not b!2294648) (not b!2294604) (not b!2294635) (not b!2294128) b_and!182447 (not b!2294519) b_and!182385 (not b!2294284) (not b!2294172) (not b_next!69711) (not b!2294277) (not b!2294622) (not b!2294568) (not b!2294649) (not b!2294123) (not d!678700) (not b!2294266) (not b!2294617) (not d!678684) b_and!182473 b_and!182381 (not b!2294646) (not d!678692) (not b!2294605) (not d!678828) (not d!678754) (not b!2294219) (not d!678650) (not d!678734) (not d!678732) (not b_next!69719) (not b!2294534) (not b!2294609) (not b!2294217) (not b_lambda!73139) (not d!678712) (not bm!136808) b_and!182389 (not b!2294576) (not b!2294563) (not tb!136975) (not d!678816) b_and!182377 (not d!678824) (not b!2294595) (not b!2294645) b_and!182441 (not b_next!69749) (not d!678728) (not b!2294173) (not b!2294157) (not b!2294567) (not b!2294560) (not bm!136809) (not d!678698) (not b!2294250) (not d!678706) (not d!678752) (not d!678826) (not b_next!69717) (not b!2294578) (not d!678710) (not b!2294263) (not b!2294639) (not b!2294621) (not b!2294608) (not b!2294588) (not b_next!69737) (not b_lambda!73135) (not b!2294566) b_and!182451 (not b!2294569) (not b!2294625) (not b!2294650) (not b!2294190) (not b!2294548) (not bm!136798) (not b!2294527) (not b!2294216) (not b!2294582) (not b!2294295) (not d!678726) (not b!2294558) (not b!2294529) (not b!2294564) (not b!2294654) (not b!2294607) (not b!2294610) (not b!2294633) (not b!2294210) (not d!678718) (not b!2294637) b_and!182445 (not b!2294624) (not b_next!69751) (not b!2294634) (not d!678652) (not d!678820) (not b_lambda!73137) (not b!2294583) (not d!678736) (not b!2294629) (not b!2294124) (not b!2294642) (not b!2294571) (not b!2294543) (not b!2294265) (not d!678696) (not b!2294600) (not b_next!69755) (not b!2294192) (not b!2294198) b_and!182479 (not b!2294587) (not b!2294640) (not d!678810) (not b!2294641) (not bm!136813) (not b!2294286) (not b!2293743) b_and!182475 (not b!2294590) (not b!2294518) (not b!2294197) (not b!2294586) (not b!2294562) (not d!678680) (not b!2294138) (not b!2294299) (not bm!136796) (not b!2294280) (not b_next!69709) (not d!678812) b_and!182443 (not b!2294598) (not b_next!69753) (not b!2294131) (not d!678662) (not bm!136797) (not d!678702) (not b!2294213) (not b!2294653) (not d!678654) (not b!2294557) (not b!2294522) (not b!2294179) (not b_next!69733) (not b!2294209) (not b_next!69739) (not d!678694) (not b!2294591) (not b!2294579) (not b!2294614) (not b!2294596) (not bs!457311))
(check-sat b_and!182477 b_and!182433 (not b_next!69721) (not b_next!69713) (not b_next!69735) b_and!182437 (not b_next!69715) (not b_next!69719) (not b_next!69749) (not b_next!69717) (not b_next!69737) b_and!182451 (not b_next!69755) (not b_next!69723) b_and!182449 b_and!182447 b_and!182385 (not b_next!69711) b_and!182473 b_and!182381 b_and!182389 b_and!182441 b_and!182377 b_and!182445 (not b_next!69751) b_and!182479 b_and!182475 (not b_next!69709) b_and!182443 (not b_next!69753) (not b_next!69733) (not b_next!69739))
