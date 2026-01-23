; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!227244 () Bool)

(assert start!227244)

(declare-fun b!2307475 () Bool)

(declare-fun b_free!69853 () Bool)

(declare-fun b_next!70557 () Bool)

(assert (=> b!2307475 (= b_free!69853 (not b_next!70557))))

(declare-fun tp!732187 () Bool)

(declare-fun b_and!184257 () Bool)

(assert (=> b!2307475 (= tp!732187 b_and!184257)))

(declare-fun b_free!69855 () Bool)

(declare-fun b_next!70559 () Bool)

(assert (=> b!2307475 (= b_free!69855 (not b_next!70559))))

(declare-fun tp!732185 () Bool)

(declare-fun b_and!184259 () Bool)

(assert (=> b!2307475 (= tp!732185 b_and!184259)))

(declare-fun b!2307465 () Bool)

(declare-fun b_free!69857 () Bool)

(declare-fun b_next!70561 () Bool)

(assert (=> b!2307465 (= b_free!69857 (not b_next!70561))))

(declare-fun tp!732172 () Bool)

(declare-fun b_and!184261 () Bool)

(assert (=> b!2307465 (= tp!732172 b_and!184261)))

(declare-fun b_free!69859 () Bool)

(declare-fun b_next!70563 () Bool)

(assert (=> b!2307465 (= b_free!69859 (not b_next!70563))))

(declare-fun tp!732180 () Bool)

(declare-fun b_and!184263 () Bool)

(assert (=> b!2307465 (= tp!732180 b_and!184263)))

(declare-fun b!2307487 () Bool)

(declare-fun b_free!69861 () Bool)

(declare-fun b_next!70565 () Bool)

(assert (=> b!2307487 (= b_free!69861 (not b_next!70565))))

(declare-fun tp!732176 () Bool)

(declare-fun b_and!184265 () Bool)

(assert (=> b!2307487 (= tp!732176 b_and!184265)))

(declare-fun b_free!69863 () Bool)

(declare-fun b_next!70567 () Bool)

(assert (=> b!2307487 (= b_free!69863 (not b_next!70567))))

(declare-fun tp!732170 () Bool)

(declare-fun b_and!184267 () Bool)

(assert (=> b!2307487 (= tp!732170 b_and!184267)))

(declare-fun b!2307476 () Bool)

(declare-fun b_free!69865 () Bool)

(declare-fun b_next!70569 () Bool)

(assert (=> b!2307476 (= b_free!69865 (not b_next!70569))))

(declare-fun tp!732182 () Bool)

(declare-fun b_and!184269 () Bool)

(assert (=> b!2307476 (= tp!732182 b_and!184269)))

(declare-fun b_free!69867 () Bool)

(declare-fun b_next!70571 () Bool)

(assert (=> b!2307476 (= b_free!69867 (not b_next!70571))))

(declare-fun tp!732171 () Bool)

(declare-fun b_and!184271 () Bool)

(assert (=> b!2307476 (= tp!732171 b_and!184271)))

(declare-fun b!2307454 () Bool)

(declare-fun e!1478925 () Bool)

(declare-fun e!1478940 () Bool)

(assert (=> b!2307454 (= e!1478925 e!1478940)))

(declare-fun res!986694 () Bool)

(assert (=> b!2307454 (=> res!986694 e!1478940)))

(declare-datatypes ((List!27572 0))(
  ( (Nil!27478) (Cons!27478 (h!32879 (_ BitVec 16)) (t!206516 List!27572)) )
))
(declare-datatypes ((TokenValue!4571 0))(
  ( (FloatLiteralValue!9142 (text!32442 List!27572)) (TokenValueExt!4570 (__x!18202 Int)) (Broken!22855 (value!139450 List!27572)) (Object!4664) (End!4571) (Def!4571) (Underscore!4571) (Match!4571) (Else!4571) (Error!4571) (Case!4571) (If!4571) (Extends!4571) (Abstract!4571) (Class!4571) (Val!4571) (DelimiterValue!9142 (del!4631 List!27572)) (KeywordValue!4577 (value!139451 List!27572)) (CommentValue!9142 (value!139452 List!27572)) (WhitespaceValue!9142 (value!139453 List!27572)) (IndentationValue!4571 (value!139454 List!27572)) (String!29958) (Int32!4571) (Broken!22856 (value!139455 List!27572)) (Boolean!4572) (Unit!40393) (OperatorValue!4574 (op!4631 List!27572)) (IdentifierValue!9142 (value!139456 List!27572)) (IdentifierValue!9143 (value!139457 List!27572)) (WhitespaceValue!9143 (value!139458 List!27572)) (True!9142) (False!9142) (Broken!22857 (value!139459 List!27572)) (Broken!22858 (value!139460 List!27572)) (True!9143) (RightBrace!4571) (RightBracket!4571) (Colon!4571) (Null!4571) (Comma!4571) (LeftBracket!4571) (False!9143) (LeftBrace!4571) (ImaginaryLiteralValue!4571 (text!32443 List!27572)) (StringLiteralValue!13713 (value!139461 List!27572)) (EOFValue!4571 (value!139462 List!27572)) (IdentValue!4571 (value!139463 List!27572)) (DelimiterValue!9143 (value!139464 List!27572)) (DedentValue!4571 (value!139465 List!27572)) (NewLineValue!4571 (value!139466 List!27572)) (IntegerValue!13713 (value!139467 (_ BitVec 32)) (text!32444 List!27572)) (IntegerValue!13714 (value!139468 Int) (text!32445 List!27572)) (Times!4571) (Or!4571) (Equal!4571) (Minus!4571) (Broken!22859 (value!139469 List!27572)) (And!4571) (Div!4571) (LessEqual!4571) (Mod!4571) (Concat!11328) (Not!4571) (Plus!4571) (SpaceValue!4571 (value!139470 List!27572)) (IntegerValue!13715 (value!139471 Int) (text!32446 List!27572)) (StringLiteralValue!13714 (text!32447 List!27572)) (FloatLiteralValue!9143 (text!32448 List!27572)) (BytesLiteralValue!4571 (value!139472 List!27572)) (CommentValue!9143 (value!139473 List!27572)) (StringLiteralValue!13715 (value!139474 List!27572)) (ErrorTokenValue!4571 (msg!4632 List!27572)) )
))
(declare-datatypes ((C!13660 0))(
  ( (C!13661 (val!7878 Int)) )
))
(declare-datatypes ((List!27573 0))(
  ( (Nil!27479) (Cons!27479 (h!32880 C!13660) (t!206517 List!27573)) )
))
(declare-datatypes ((IArray!17937 0))(
  ( (IArray!17938 (innerList!9026 List!27573)) )
))
(declare-datatypes ((Conc!8966 0))(
  ( (Node!8966 (left!20815 Conc!8966) (right!21145 Conc!8966) (csize!18162 Int) (cheight!9177 Int)) (Leaf!13156 (xs!11908 IArray!17937) (csize!18163 Int)) (Empty!8966) )
))
(declare-datatypes ((BalanceConc!17660 0))(
  ( (BalanceConc!17661 (c!365710 Conc!8966)) )
))
(declare-datatypes ((Regex!6757 0))(
  ( (ElementMatch!6757 (c!365711 C!13660)) (Concat!11329 (regOne!14026 Regex!6757) (regTwo!14026 Regex!6757)) (EmptyExpr!6757) (Star!6757 (reg!7086 Regex!6757)) (EmptyLang!6757) (Union!6757 (regOne!14027 Regex!6757) (regTwo!14027 Regex!6757)) )
))
(declare-datatypes ((String!29959 0))(
  ( (String!29960 (value!139475 String)) )
))
(declare-datatypes ((TokenValueInjection!8682 0))(
  ( (TokenValueInjection!8683 (toValue!6223 Int) (toChars!6082 Int)) )
))
(declare-datatypes ((Rule!8618 0))(
  ( (Rule!8619 (regex!4409 Regex!6757) (tag!4899 String!29959) (isSeparator!4409 Bool) (transformation!4409 TokenValueInjection!8682)) )
))
(declare-datatypes ((Token!8296 0))(
  ( (Token!8297 (value!139476 TokenValue!4571) (rule!6761 Rule!8618) (size!21685 Int) (originalCharacters!5179 List!27573)) )
))
(declare-datatypes ((List!27574 0))(
  ( (Nil!27480) (Cons!27480 (h!32881 Token!8296) (t!206518 List!27574)) )
))
(declare-fun tokens!456 () List!27574)

(get-info :version)

(assert (=> b!2307454 (= res!986694 ((_ is Nil!27480) tokens!456))))

(declare-datatypes ((Unit!40394 0))(
  ( (Unit!40395) )
))
(declare-fun lt!855863 () Unit!40394)

(declare-fun e!1478932 () Unit!40394)

(assert (=> b!2307454 (= lt!855863 e!1478932)))

(declare-fun c!365709 () Bool)

(declare-fun lt!855856 () Int)

(declare-fun lt!855874 () Int)

(assert (=> b!2307454 (= c!365709 (= lt!855856 lt!855874))))

(declare-fun b!2307455 () Bool)

(declare-fun e!1478946 () Bool)

(declare-fun r!2363 () Rule!8618)

(declare-fun matchR!3014 (Regex!6757 List!27573) Bool)

(declare-fun list!10848 (BalanceConc!17660) List!27573)

(declare-fun charsOf!2797 (Token!8296) BalanceConc!17660)

(declare-fun head!5064 (List!27574) Token!8296)

(assert (=> b!2307455 (= e!1478946 (not (matchR!3014 (regex!4409 r!2363) (list!10848 (charsOf!2797 (head!5064 tokens!456))))))))

(declare-fun b!2307456 () Bool)

(declare-fun e!1478922 () Bool)

(declare-fun tp_is_empty!10735 () Bool)

(declare-fun tp!732186 () Bool)

(assert (=> b!2307456 (= e!1478922 (and tp_is_empty!10735 tp!732186))))

(declare-fun b!2307457 () Bool)

(declare-fun e!1478937 () Bool)

(assert (=> b!2307457 (= e!1478937 e!1478925)))

(declare-fun res!986686 () Bool)

(assert (=> b!2307457 (=> res!986686 e!1478925)))

(assert (=> b!2307457 (= res!986686 (> lt!855856 lt!855874))))

(declare-datatypes ((List!27575 0))(
  ( (Nil!27481) (Cons!27481 (h!32882 Rule!8618) (t!206519 List!27575)) )
))
(declare-fun rules!1750 () List!27575)

(declare-fun otherR!12 () Rule!8618)

(declare-fun getIndex!422 (List!27575 Rule!8618) Int)

(assert (=> b!2307457 (= lt!855874 (getIndex!422 rules!1750 otherR!12))))

(assert (=> b!2307457 (= lt!855856 (getIndex!422 rules!1750 r!2363))))

(declare-datatypes ((LexerInterface!4006 0))(
  ( (LexerInterfaceExt!4003 (__x!18203 Int)) (Lexer!4004) )
))
(declare-fun thiss!16613 () LexerInterface!4006)

(declare-fun ruleValid!1499 (LexerInterface!4006 Rule!8618) Bool)

(assert (=> b!2307457 (ruleValid!1499 thiss!16613 otherR!12)))

(declare-fun lt!855857 () Unit!40394)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!904 (LexerInterface!4006 Rule!8618 List!27575) Unit!40394)

(assert (=> b!2307457 (= lt!855857 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!904 thiss!16613 otherR!12 rules!1750))))

(declare-fun e!1478943 () Bool)

(declare-fun b!2307458 () Bool)

(declare-fun tp!732184 () Bool)

(declare-fun e!1478944 () Bool)

(declare-fun inv!37117 (String!29959) Bool)

(declare-fun inv!37120 (TokenValueInjection!8682) Bool)

(assert (=> b!2307458 (= e!1478943 (and tp!732184 (inv!37117 (tag!4899 r!2363)) (inv!37120 (transformation!4409 r!2363)) e!1478944))))

(declare-fun b!2307459 () Bool)

(declare-fun res!986682 () Bool)

(declare-fun e!1478928 () Bool)

(assert (=> b!2307459 (=> (not res!986682) (not e!1478928))))

(declare-fun rulesInvariant!3508 (LexerInterface!4006 List!27575) Bool)

(assert (=> b!2307459 (= res!986682 (rulesInvariant!3508 thiss!16613 rules!1750))))

(declare-datatypes ((tuple2!27402 0))(
  ( (tuple2!27403 (_1!16211 Token!8296) (_2!16211 List!27573)) )
))
(declare-datatypes ((Option!5407 0))(
  ( (None!5406) (Some!5406 (v!30514 tuple2!27402)) )
))
(declare-fun lt!855859 () Option!5407)

(declare-fun e!1478941 () Bool)

(declare-fun lt!855853 () Option!5407)

(declare-fun lt!855858 () Option!5407)

(declare-fun b!2307460 () Bool)

(assert (=> b!2307460 (= e!1478941 (or (not (= lt!855853 lt!855859)) (= lt!855858 lt!855859)))))

(declare-fun lt!855855 () Token!8296)

(declare-fun lt!855869 () List!27573)

(assert (=> b!2307460 (= lt!855859 (Some!5406 (tuple2!27403 lt!855855 lt!855869)))))

(declare-fun input!1722 () List!27573)

(declare-fun isPrefix!2399 (List!27573 List!27573) Bool)

(assert (=> b!2307460 (isPrefix!2399 input!1722 input!1722)))

(declare-fun lt!855860 () Unit!40394)

(declare-fun lemmaIsPrefixRefl!1525 (List!27573 List!27573) Unit!40394)

(assert (=> b!2307460 (= lt!855860 (lemmaIsPrefixRefl!1525 input!1722 input!1722))))

(declare-fun lt!855871 () Unit!40394)

(declare-fun lt!855861 () BalanceConc!17660)

(declare-fun lemmaSemiInverse!1088 (TokenValueInjection!8682 BalanceConc!17660) Unit!40394)

(assert (=> b!2307460 (= lt!855871 (lemmaSemiInverse!1088 (transformation!4409 r!2363) lt!855861))))

(declare-fun e!1478935 () Bool)

(declare-fun e!1478930 () Bool)

(declare-fun b!2307461 () Bool)

(declare-fun tp!732179 () Bool)

(assert (=> b!2307461 (= e!1478935 (and tp!732179 (inv!37117 (tag!4899 (h!32882 rules!1750))) (inv!37120 (transformation!4409 (h!32882 rules!1750))) e!1478930))))

(declare-fun b!2307462 () Bool)

(declare-fun res!986698 () Bool)

(declare-fun e!1478938 () Bool)

(assert (=> b!2307462 (=> (not res!986698) (not e!1478938))))

(declare-fun e!1478924 () Bool)

(assert (=> b!2307462 (= res!986698 e!1478924)))

(declare-fun res!986696 () Bool)

(assert (=> b!2307462 (=> res!986696 e!1478924)))

(declare-fun lt!855865 () Bool)

(assert (=> b!2307462 (= res!986696 lt!855865)))

(declare-fun b!2307463 () Bool)

(declare-fun Unit!40396 () Unit!40394)

(assert (=> b!2307463 (= e!1478932 Unit!40396)))

(declare-fun b!2307464 () Bool)

(declare-fun Unit!40397 () Unit!40394)

(assert (=> b!2307464 (= e!1478932 Unit!40397)))

(declare-fun lt!855870 () Unit!40394)

(declare-fun lemmaSameIndexThenSameElement!202 (List!27575 Rule!8618 Rule!8618) Unit!40394)

(assert (=> b!2307464 (= lt!855870 (lemmaSameIndexThenSameElement!202 rules!1750 r!2363 otherR!12))))

(assert (=> b!2307464 false))

(assert (=> b!2307465 (= e!1478944 (and tp!732172 tp!732180))))

(declare-fun b!2307466 () Bool)

(declare-fun e!1478927 () Bool)

(declare-fun e!1478948 () Bool)

(declare-fun tp!732181 () Bool)

(declare-fun inv!21 (TokenValue!4571) Bool)

(assert (=> b!2307466 (= e!1478927 (and (inv!21 (value!139476 (h!32881 tokens!456))) e!1478948 tp!732181))))

(declare-fun b!2307467 () Bool)

(assert (=> b!2307467 (= e!1478938 (not e!1478937))))

(declare-fun res!986688 () Bool)

(assert (=> b!2307467 (=> res!986688 e!1478937)))

(assert (=> b!2307467 (= res!986688 e!1478946)))

(declare-fun res!986697 () Bool)

(assert (=> b!2307467 (=> (not res!986697) (not e!1478946))))

(assert (=> b!2307467 (= res!986697 (not lt!855865))))

(assert (=> b!2307467 (ruleValid!1499 thiss!16613 r!2363)))

(declare-fun lt!855854 () Unit!40394)

(assert (=> b!2307467 (= lt!855854 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!904 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2307468 () Bool)

(declare-fun e!1478939 () Bool)

(assert (=> b!2307468 (= e!1478928 e!1478939)))

(declare-fun res!986683 () Bool)

(assert (=> b!2307468 (=> (not res!986683) (not e!1478939))))

(declare-fun suffix!886 () List!27573)

(declare-datatypes ((IArray!17939 0))(
  ( (IArray!17940 (innerList!9027 List!27574)) )
))
(declare-datatypes ((Conc!8967 0))(
  ( (Node!8967 (left!20816 Conc!8967) (right!21146 Conc!8967) (csize!18164 Int) (cheight!9178 Int)) (Leaf!13157 (xs!11909 IArray!17939) (csize!18165 Int)) (Empty!8967) )
))
(declare-datatypes ((BalanceConc!17662 0))(
  ( (BalanceConc!17663 (c!365712 Conc!8967)) )
))
(declare-datatypes ((tuple2!27404 0))(
  ( (tuple2!27405 (_1!16212 BalanceConc!17662) (_2!16212 BalanceConc!17660)) )
))
(declare-fun lt!855866 () tuple2!27404)

(declare-datatypes ((tuple2!27406 0))(
  ( (tuple2!27407 (_1!16213 List!27574) (_2!16213 List!27573)) )
))
(declare-fun list!10849 (BalanceConc!17662) List!27574)

(assert (=> b!2307468 (= res!986683 (= (tuple2!27407 (list!10849 (_1!16212 lt!855866)) (list!10848 (_2!16212 lt!855866))) (tuple2!27407 tokens!456 suffix!886)))))

(declare-fun lex!1845 (LexerInterface!4006 List!27575 BalanceConc!17660) tuple2!27404)

(declare-fun seqFromList!3113 (List!27573) BalanceConc!17660)

(assert (=> b!2307468 (= lt!855866 (lex!1845 thiss!16613 rules!1750 (seqFromList!3113 input!1722)))))

(declare-fun b!2307469 () Bool)

(declare-fun e!1478931 () Bool)

(declare-fun tp!732178 () Bool)

(declare-fun inv!37121 (Token!8296) Bool)

(assert (=> b!2307469 (= e!1478931 (and (inv!37121 (h!32881 tokens!456)) e!1478927 tp!732178))))

(declare-fun b!2307470 () Bool)

(declare-fun e!1478929 () Bool)

(declare-fun tp!732174 () Bool)

(assert (=> b!2307470 (= e!1478929 (and tp_is_empty!10735 tp!732174))))

(declare-fun b!2307471 () Bool)

(declare-fun e!1478933 () Bool)

(assert (=> b!2307471 (= e!1478933 e!1478941)))

(declare-fun res!986689 () Bool)

(assert (=> b!2307471 (=> res!986689 e!1478941)))

(declare-fun lt!855852 () List!27573)

(assert (=> b!2307471 (= res!986689 (not (isPrefix!2399 lt!855852 input!1722)))))

(declare-fun lt!855868 () tuple2!27402)

(assert (=> b!2307471 (= lt!855853 (Some!5406 (tuple2!27403 lt!855855 (_2!16211 lt!855868))))))

(declare-fun maxPrefixOneRule!1432 (LexerInterface!4006 Rule!8618 List!27573) Option!5407)

(assert (=> b!2307471 (= lt!855853 (maxPrefixOneRule!1432 thiss!16613 r!2363 input!1722))))

(declare-fun lt!855873 () Int)

(declare-fun apply!6671 (TokenValueInjection!8682 BalanceConc!17660) TokenValue!4571)

(assert (=> b!2307471 (= lt!855855 (Token!8297 (apply!6671 (transformation!4409 r!2363) lt!855861) r!2363 lt!855873 lt!855852))))

(assert (=> b!2307471 (= lt!855861 (seqFromList!3113 lt!855852))))

(declare-fun lt!855864 () Unit!40394)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!605 (LexerInterface!4006 List!27575 List!27573 List!27573 List!27573 Rule!8618) Unit!40394)

(assert (=> b!2307471 (= lt!855864 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!605 thiss!16613 rules!1750 lt!855852 input!1722 (_2!16211 lt!855868) r!2363))))

(declare-fun b!2307472 () Bool)

(declare-fun res!986693 () Bool)

(assert (=> b!2307472 (=> (not res!986693) (not e!1478938))))

(declare-fun otherP!12 () List!27573)

(assert (=> b!2307472 (= res!986693 (isPrefix!2399 otherP!12 input!1722))))

(declare-fun res!986685 () Bool)

(assert (=> start!227244 (=> (not res!986685) (not e!1478928))))

(assert (=> start!227244 (= res!986685 ((_ is Lexer!4004) thiss!16613))))

(assert (=> start!227244 e!1478928))

(assert (=> start!227244 true))

(assert (=> start!227244 e!1478929))

(declare-fun e!1478920 () Bool)

(assert (=> start!227244 e!1478920))

(declare-fun e!1478926 () Bool)

(assert (=> start!227244 e!1478926))

(assert (=> start!227244 e!1478922))

(declare-fun e!1478923 () Bool)

(assert (=> start!227244 e!1478923))

(assert (=> start!227244 e!1478943))

(assert (=> start!227244 e!1478931))

(declare-fun b!2307473 () Bool)

(declare-fun res!986699 () Bool)

(assert (=> b!2307473 (=> res!986699 e!1478941)))

(assert (=> b!2307473 (= res!986699 (not (matchR!3014 (regex!4409 r!2363) lt!855852)))))

(declare-fun b!2307474 () Bool)

(declare-fun res!986692 () Bool)

(assert (=> b!2307474 (=> (not res!986692) (not e!1478938))))

(assert (=> b!2307474 (= res!986692 (not (= r!2363 otherR!12)))))

(declare-fun e!1478936 () Bool)

(assert (=> b!2307475 (= e!1478936 (and tp!732187 tp!732185))))

(assert (=> b!2307476 (= e!1478930 (and tp!732182 tp!732171))))

(declare-fun b!2307477 () Bool)

(declare-fun e!1478945 () Bool)

(declare-fun size!21686 (BalanceConc!17660) Int)

(declare-fun size!21687 (List!27573) Int)

(assert (=> b!2307477 (= e!1478945 (<= (size!21686 (charsOf!2797 (head!5064 tokens!456))) (size!21687 otherP!12)))))

(declare-fun b!2307478 () Bool)

(declare-fun tp!732173 () Bool)

(assert (=> b!2307478 (= e!1478923 (and e!1478935 tp!732173))))

(declare-fun b!2307479 () Bool)

(declare-fun res!986691 () Bool)

(assert (=> b!2307479 (=> (not res!986691) (not e!1478928))))

(declare-fun isEmpty!15713 (List!27575) Bool)

(assert (=> b!2307479 (= res!986691 (not (isEmpty!15713 rules!1750)))))

(declare-fun b!2307480 () Bool)

(declare-fun res!986700 () Bool)

(assert (=> b!2307480 (=> (not res!986700) (not e!1478928))))

(declare-fun contains!4797 (List!27575 Rule!8618) Bool)

(assert (=> b!2307480 (= res!986700 (contains!4797 rules!1750 otherR!12))))

(declare-fun b!2307481 () Bool)

(declare-fun tp!732183 () Bool)

(declare-fun e!1478947 () Bool)

(assert (=> b!2307481 (= e!1478948 (and tp!732183 (inv!37117 (tag!4899 (rule!6761 (h!32881 tokens!456)))) (inv!37120 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) e!1478947))))

(declare-fun b!2307482 () Bool)

(assert (=> b!2307482 (= e!1478940 e!1478933)))

(declare-fun res!986684 () Bool)

(assert (=> b!2307482 (=> res!986684 e!1478933)))

(declare-fun lt!855862 () Int)

(assert (=> b!2307482 (= res!986684 (<= lt!855862 lt!855873))))

(assert (=> b!2307482 (= lt!855873 (size!21687 lt!855852))))

(assert (=> b!2307482 (= lt!855862 (size!21687 otherP!12))))

(assert (=> b!2307482 (= (_2!16211 lt!855868) lt!855869)))

(declare-fun lt!855872 () Unit!40394)

(declare-fun lemmaSamePrefixThenSameSuffix!1080 (List!27573 List!27573 List!27573 List!27573 List!27573) Unit!40394)

(assert (=> b!2307482 (= lt!855872 (lemmaSamePrefixThenSameSuffix!1080 lt!855852 (_2!16211 lt!855868) lt!855852 lt!855869 input!1722))))

(declare-fun getSuffix!1178 (List!27573 List!27573) List!27573)

(assert (=> b!2307482 (= lt!855869 (getSuffix!1178 input!1722 lt!855852))))

(declare-fun ++!6727 (List!27573 List!27573) List!27573)

(assert (=> b!2307482 (isPrefix!2399 lt!855852 (++!6727 lt!855852 (_2!16211 lt!855868)))))

(declare-fun lt!855867 () Unit!40394)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1592 (List!27573 List!27573) Unit!40394)

(assert (=> b!2307482 (= lt!855867 (lemmaConcatTwoListThenFirstIsPrefix!1592 lt!855852 (_2!16211 lt!855868)))))

(assert (=> b!2307482 (= lt!855852 (list!10848 (charsOf!2797 (h!32881 tokens!456))))))

(declare-fun get!8285 (Option!5407) tuple2!27402)

(assert (=> b!2307482 (= lt!855868 (get!8285 lt!855858))))

(declare-fun maxPrefix!2262 (LexerInterface!4006 List!27575 List!27573) Option!5407)

(assert (=> b!2307482 (= lt!855858 (maxPrefix!2262 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2307483 () Bool)

(assert (=> b!2307483 (= e!1478939 e!1478938)))

(declare-fun res!986690 () Bool)

(assert (=> b!2307483 (=> (not res!986690) (not e!1478938))))

(assert (=> b!2307483 (= res!986690 e!1478945)))

(declare-fun res!986695 () Bool)

(assert (=> b!2307483 (=> res!986695 e!1478945)))

(assert (=> b!2307483 (= res!986695 lt!855865)))

(declare-fun isEmpty!15714 (List!27574) Bool)

(assert (=> b!2307483 (= lt!855865 (isEmpty!15714 tokens!456))))

(declare-fun b!2307484 () Bool)

(declare-fun tp!732177 () Bool)

(assert (=> b!2307484 (= e!1478926 (and tp_is_empty!10735 tp!732177))))

(declare-fun b!2307485 () Bool)

(declare-fun res!986687 () Bool)

(assert (=> b!2307485 (=> (not res!986687) (not e!1478928))))

(assert (=> b!2307485 (= res!986687 (contains!4797 rules!1750 r!2363))))

(declare-fun tp!732175 () Bool)

(declare-fun b!2307486 () Bool)

(assert (=> b!2307486 (= e!1478920 (and tp!732175 (inv!37117 (tag!4899 otherR!12)) (inv!37120 (transformation!4409 otherR!12)) e!1478936))))

(assert (=> b!2307487 (= e!1478947 (and tp!732176 tp!732170))))

(declare-fun b!2307488 () Bool)

(assert (=> b!2307488 (= e!1478924 (= (rule!6761 (head!5064 tokens!456)) r!2363))))

(assert (= (and start!227244 res!986685) b!2307479))

(assert (= (and b!2307479 res!986691) b!2307459))

(assert (= (and b!2307459 res!986682) b!2307485))

(assert (= (and b!2307485 res!986687) b!2307480))

(assert (= (and b!2307480 res!986700) b!2307468))

(assert (= (and b!2307468 res!986683) b!2307483))

(assert (= (and b!2307483 (not res!986695)) b!2307477))

(assert (= (and b!2307483 res!986690) b!2307462))

(assert (= (and b!2307462 (not res!986696)) b!2307488))

(assert (= (and b!2307462 res!986698) b!2307472))

(assert (= (and b!2307472 res!986693) b!2307474))

(assert (= (and b!2307474 res!986692) b!2307467))

(assert (= (and b!2307467 res!986697) b!2307455))

(assert (= (and b!2307467 (not res!986688)) b!2307457))

(assert (= (and b!2307457 (not res!986686)) b!2307454))

(assert (= (and b!2307454 c!365709) b!2307464))

(assert (= (and b!2307454 (not c!365709)) b!2307463))

(assert (= (and b!2307454 (not res!986694)) b!2307482))

(assert (= (and b!2307482 (not res!986684)) b!2307471))

(assert (= (and b!2307471 (not res!986689)) b!2307473))

(assert (= (and b!2307473 (not res!986699)) b!2307460))

(assert (= (and start!227244 ((_ is Cons!27479) input!1722)) b!2307470))

(assert (= b!2307486 b!2307475))

(assert (= start!227244 b!2307486))

(assert (= (and start!227244 ((_ is Cons!27479) suffix!886)) b!2307484))

(assert (= (and start!227244 ((_ is Cons!27479) otherP!12)) b!2307456))

(assert (= b!2307461 b!2307476))

(assert (= b!2307478 b!2307461))

(assert (= (and start!227244 ((_ is Cons!27481) rules!1750)) b!2307478))

(assert (= b!2307458 b!2307465))

(assert (= start!227244 b!2307458))

(assert (= b!2307481 b!2307487))

(assert (= b!2307466 b!2307481))

(assert (= b!2307469 b!2307466))

(assert (= (and start!227244 ((_ is Cons!27480) tokens!456)) b!2307469))

(declare-fun m!2734455 () Bool)

(assert (=> b!2307469 m!2734455))

(declare-fun m!2734457 () Bool)

(assert (=> b!2307472 m!2734457))

(declare-fun m!2734459 () Bool)

(assert (=> b!2307483 m!2734459))

(declare-fun m!2734461 () Bool)

(assert (=> b!2307477 m!2734461))

(assert (=> b!2307477 m!2734461))

(declare-fun m!2734463 () Bool)

(assert (=> b!2307477 m!2734463))

(assert (=> b!2307477 m!2734463))

(declare-fun m!2734465 () Bool)

(assert (=> b!2307477 m!2734465))

(declare-fun m!2734467 () Bool)

(assert (=> b!2307477 m!2734467))

(declare-fun m!2734469 () Bool)

(assert (=> b!2307460 m!2734469))

(declare-fun m!2734471 () Bool)

(assert (=> b!2307460 m!2734471))

(declare-fun m!2734473 () Bool)

(assert (=> b!2307460 m!2734473))

(declare-fun m!2734475 () Bool)

(assert (=> b!2307479 m!2734475))

(declare-fun m!2734477 () Bool)

(assert (=> b!2307485 m!2734477))

(declare-fun m!2734479 () Bool)

(assert (=> b!2307486 m!2734479))

(declare-fun m!2734481 () Bool)

(assert (=> b!2307486 m!2734481))

(declare-fun m!2734483 () Bool)

(assert (=> b!2307482 m!2734483))

(declare-fun m!2734485 () Bool)

(assert (=> b!2307482 m!2734485))

(declare-fun m!2734487 () Bool)

(assert (=> b!2307482 m!2734487))

(declare-fun m!2734489 () Bool)

(assert (=> b!2307482 m!2734489))

(declare-fun m!2734491 () Bool)

(assert (=> b!2307482 m!2734491))

(declare-fun m!2734493 () Bool)

(assert (=> b!2307482 m!2734493))

(declare-fun m!2734495 () Bool)

(assert (=> b!2307482 m!2734495))

(declare-fun m!2734497 () Bool)

(assert (=> b!2307482 m!2734497))

(assert (=> b!2307482 m!2734493))

(declare-fun m!2734499 () Bool)

(assert (=> b!2307482 m!2734499))

(assert (=> b!2307482 m!2734467))

(assert (=> b!2307482 m!2734499))

(declare-fun m!2734501 () Bool)

(assert (=> b!2307482 m!2734501))

(assert (=> b!2307455 m!2734461))

(assert (=> b!2307455 m!2734461))

(assert (=> b!2307455 m!2734463))

(assert (=> b!2307455 m!2734463))

(declare-fun m!2734503 () Bool)

(assert (=> b!2307455 m!2734503))

(assert (=> b!2307455 m!2734503))

(declare-fun m!2734505 () Bool)

(assert (=> b!2307455 m!2734505))

(declare-fun m!2734507 () Bool)

(assert (=> b!2307473 m!2734507))

(declare-fun m!2734509 () Bool)

(assert (=> b!2307471 m!2734509))

(declare-fun m!2734511 () Bool)

(assert (=> b!2307471 m!2734511))

(declare-fun m!2734513 () Bool)

(assert (=> b!2307471 m!2734513))

(declare-fun m!2734515 () Bool)

(assert (=> b!2307471 m!2734515))

(declare-fun m!2734517 () Bool)

(assert (=> b!2307471 m!2734517))

(declare-fun m!2734519 () Bool)

(assert (=> b!2307461 m!2734519))

(declare-fun m!2734521 () Bool)

(assert (=> b!2307461 m!2734521))

(declare-fun m!2734523 () Bool)

(assert (=> b!2307457 m!2734523))

(declare-fun m!2734525 () Bool)

(assert (=> b!2307457 m!2734525))

(declare-fun m!2734527 () Bool)

(assert (=> b!2307457 m!2734527))

(declare-fun m!2734529 () Bool)

(assert (=> b!2307457 m!2734529))

(declare-fun m!2734531 () Bool)

(assert (=> b!2307468 m!2734531))

(declare-fun m!2734533 () Bool)

(assert (=> b!2307468 m!2734533))

(declare-fun m!2734535 () Bool)

(assert (=> b!2307468 m!2734535))

(assert (=> b!2307468 m!2734535))

(declare-fun m!2734537 () Bool)

(assert (=> b!2307468 m!2734537))

(declare-fun m!2734539 () Bool)

(assert (=> b!2307464 m!2734539))

(assert (=> b!2307488 m!2734461))

(declare-fun m!2734541 () Bool)

(assert (=> b!2307466 m!2734541))

(declare-fun m!2734543 () Bool)

(assert (=> b!2307481 m!2734543))

(declare-fun m!2734545 () Bool)

(assert (=> b!2307481 m!2734545))

(declare-fun m!2734547 () Bool)

(assert (=> b!2307458 m!2734547))

(declare-fun m!2734549 () Bool)

(assert (=> b!2307458 m!2734549))

(declare-fun m!2734551 () Bool)

(assert (=> b!2307467 m!2734551))

(declare-fun m!2734553 () Bool)

(assert (=> b!2307467 m!2734553))

(declare-fun m!2734555 () Bool)

(assert (=> b!2307459 m!2734555))

(declare-fun m!2734557 () Bool)

(assert (=> b!2307480 m!2734557))

(check-sat (not b!2307469) (not b!2307485) (not b!2307460) (not b!2307481) (not b_next!70561) (not b_next!70565) (not b!2307488) b_and!184259 (not b!2307456) (not b!2307466) (not b!2307468) b_and!184269 tp_is_empty!10735 (not b!2307457) (not b!2307473) (not b_next!70559) (not b!2307470) b_and!184265 (not b!2307484) (not b_next!70571) (not b!2307472) (not b!2307486) b_and!184271 (not b!2307471) (not b!2307464) (not b!2307480) (not b!2307478) (not b!2307477) (not b!2307458) (not b_next!70557) (not b_next!70563) (not b!2307482) (not b!2307461) (not b!2307479) b_and!184257 (not b_next!70567) b_and!184263 (not b!2307483) (not b!2307459) b_and!184267 (not b_next!70569) (not b!2307455) (not b!2307467) b_and!184261)
(check-sat b_and!184259 b_and!184269 (not b_next!70559) b_and!184271 b_and!184267 (not b_next!70561) (not b_next!70565) b_and!184265 (not b_next!70571) (not b_next!70557) (not b_next!70563) b_and!184257 (not b_next!70567) b_and!184263 (not b_next!70569) b_and!184261)
(get-model)

(declare-fun d!682388 () Bool)

(assert (=> d!682388 (= (isEmpty!15714 tokens!456) ((_ is Nil!27480) tokens!456))))

(assert (=> b!2307483 d!682388))

(declare-fun d!682392 () Bool)

(assert (=> d!682392 (= (inv!37117 (tag!4899 (h!32882 rules!1750))) (= (mod (str.len (value!139475 (tag!4899 (h!32882 rules!1750)))) 2) 0))))

(assert (=> b!2307461 d!682392))

(declare-fun d!682396 () Bool)

(declare-fun res!986739 () Bool)

(declare-fun e!1478976 () Bool)

(assert (=> d!682396 (=> (not res!986739) (not e!1478976))))

(declare-fun semiInverseModEq!1796 (Int Int) Bool)

(assert (=> d!682396 (= res!986739 (semiInverseModEq!1796 (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 (h!32882 rules!1750)))))))

(assert (=> d!682396 (= (inv!37120 (transformation!4409 (h!32882 rules!1750))) e!1478976)))

(declare-fun b!2307525 () Bool)

(declare-fun equivClasses!1715 (Int Int) Bool)

(assert (=> b!2307525 (= e!1478976 (equivClasses!1715 (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 (h!32882 rules!1750)))))))

(assert (= (and d!682396 res!986739) b!2307525))

(declare-fun m!2734587 () Bool)

(assert (=> d!682396 m!2734587))

(declare-fun m!2734589 () Bool)

(assert (=> b!2307525 m!2734589))

(assert (=> b!2307461 d!682396))

(declare-fun b!2307541 () Bool)

(declare-fun res!986755 () Bool)

(declare-fun e!1478987 () Bool)

(assert (=> b!2307541 (=> (not res!986755) (not e!1478987))))

(declare-fun head!5065 (List!27573) C!13660)

(assert (=> b!2307541 (= res!986755 (= (head!5065 lt!855852) (head!5065 (++!6727 lt!855852 (_2!16211 lt!855868)))))))

(declare-fun b!2307540 () Bool)

(declare-fun e!1478988 () Bool)

(assert (=> b!2307540 (= e!1478988 e!1478987)))

(declare-fun res!986752 () Bool)

(assert (=> b!2307540 (=> (not res!986752) (not e!1478987))))

(assert (=> b!2307540 (= res!986752 (not ((_ is Nil!27479) (++!6727 lt!855852 (_2!16211 lt!855868)))))))

(declare-fun b!2307543 () Bool)

(declare-fun e!1478989 () Bool)

(assert (=> b!2307543 (= e!1478989 (>= (size!21687 (++!6727 lt!855852 (_2!16211 lt!855868))) (size!21687 lt!855852)))))

(declare-fun d!682400 () Bool)

(assert (=> d!682400 e!1478989))

(declare-fun res!986753 () Bool)

(assert (=> d!682400 (=> res!986753 e!1478989)))

(declare-fun lt!855893 () Bool)

(assert (=> d!682400 (= res!986753 (not lt!855893))))

(assert (=> d!682400 (= lt!855893 e!1478988)))

(declare-fun res!986754 () Bool)

(assert (=> d!682400 (=> res!986754 e!1478988)))

(assert (=> d!682400 (= res!986754 ((_ is Nil!27479) lt!855852))))

(assert (=> d!682400 (= (isPrefix!2399 lt!855852 (++!6727 lt!855852 (_2!16211 lt!855868))) lt!855893)))

(declare-fun b!2307542 () Bool)

(declare-fun tail!3336 (List!27573) List!27573)

(assert (=> b!2307542 (= e!1478987 (isPrefix!2399 (tail!3336 lt!855852) (tail!3336 (++!6727 lt!855852 (_2!16211 lt!855868)))))))

(assert (= (and d!682400 (not res!986754)) b!2307540))

(assert (= (and b!2307540 res!986752) b!2307541))

(assert (= (and b!2307541 res!986755) b!2307542))

(assert (= (and d!682400 (not res!986753)) b!2307543))

(declare-fun m!2734607 () Bool)

(assert (=> b!2307541 m!2734607))

(assert (=> b!2307541 m!2734499))

(declare-fun m!2734609 () Bool)

(assert (=> b!2307541 m!2734609))

(assert (=> b!2307543 m!2734499))

(declare-fun m!2734611 () Bool)

(assert (=> b!2307543 m!2734611))

(assert (=> b!2307543 m!2734491))

(declare-fun m!2734613 () Bool)

(assert (=> b!2307542 m!2734613))

(assert (=> b!2307542 m!2734499))

(declare-fun m!2734615 () Bool)

(assert (=> b!2307542 m!2734615))

(assert (=> b!2307542 m!2734613))

(assert (=> b!2307542 m!2734615))

(declare-fun m!2734617 () Bool)

(assert (=> b!2307542 m!2734617))

(assert (=> b!2307482 d!682400))

(declare-fun d!682408 () Bool)

(declare-fun lt!855899 () List!27573)

(assert (=> d!682408 (= (++!6727 lt!855852 lt!855899) input!1722)))

(declare-fun e!1478998 () List!27573)

(assert (=> d!682408 (= lt!855899 e!1478998)))

(declare-fun c!365722 () Bool)

(assert (=> d!682408 (= c!365722 ((_ is Cons!27479) lt!855852))))

(assert (=> d!682408 (>= (size!21687 input!1722) (size!21687 lt!855852))))

(assert (=> d!682408 (= (getSuffix!1178 input!1722 lt!855852) lt!855899)))

(declare-fun b!2307560 () Bool)

(assert (=> b!2307560 (= e!1478998 (getSuffix!1178 (tail!3336 input!1722) (t!206517 lt!855852)))))

(declare-fun b!2307561 () Bool)

(assert (=> b!2307561 (= e!1478998 input!1722)))

(assert (= (and d!682408 c!365722) b!2307560))

(assert (= (and d!682408 (not c!365722)) b!2307561))

(declare-fun m!2734619 () Bool)

(assert (=> d!682408 m!2734619))

(declare-fun m!2734621 () Bool)

(assert (=> d!682408 m!2734621))

(assert (=> d!682408 m!2734491))

(declare-fun m!2734623 () Bool)

(assert (=> b!2307560 m!2734623))

(assert (=> b!2307560 m!2734623))

(declare-fun m!2734627 () Bool)

(assert (=> b!2307560 m!2734627))

(assert (=> b!2307482 d!682408))

(declare-fun d!682410 () Bool)

(assert (=> d!682410 (= (_2!16211 lt!855868) lt!855869)))

(declare-fun lt!855905 () Unit!40394)

(declare-fun choose!13489 (List!27573 List!27573 List!27573 List!27573 List!27573) Unit!40394)

(assert (=> d!682410 (= lt!855905 (choose!13489 lt!855852 (_2!16211 lt!855868) lt!855852 lt!855869 input!1722))))

(assert (=> d!682410 (isPrefix!2399 lt!855852 input!1722)))

(assert (=> d!682410 (= (lemmaSamePrefixThenSameSuffix!1080 lt!855852 (_2!16211 lt!855868) lt!855852 lt!855869 input!1722) lt!855905)))

(declare-fun bs!457985 () Bool)

(assert (= bs!457985 d!682410))

(declare-fun m!2734641 () Bool)

(assert (=> bs!457985 m!2734641))

(assert (=> bs!457985 m!2734509))

(assert (=> b!2307482 d!682410))

(declare-fun d!682416 () Bool)

(declare-fun lt!855908 () Int)

(assert (=> d!682416 (>= lt!855908 0)))

(declare-fun e!1479001 () Int)

(assert (=> d!682416 (= lt!855908 e!1479001)))

(declare-fun c!365725 () Bool)

(assert (=> d!682416 (= c!365725 ((_ is Nil!27479) otherP!12))))

(assert (=> d!682416 (= (size!21687 otherP!12) lt!855908)))

(declare-fun b!2307566 () Bool)

(assert (=> b!2307566 (= e!1479001 0)))

(declare-fun b!2307567 () Bool)

(assert (=> b!2307567 (= e!1479001 (+ 1 (size!21687 (t!206517 otherP!12))))))

(assert (= (and d!682416 c!365725) b!2307566))

(assert (= (and d!682416 (not c!365725)) b!2307567))

(declare-fun m!2734643 () Bool)

(assert (=> b!2307567 m!2734643))

(assert (=> b!2307482 d!682416))

(declare-fun b!2307614 () Bool)

(declare-fun res!986799 () Bool)

(declare-fun e!1479018 () Bool)

(assert (=> b!2307614 (=> (not res!986799) (not e!1479018))))

(declare-fun lt!855934 () Option!5407)

(assert (=> b!2307614 (= res!986799 (matchR!3014 (regex!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))) (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934))))))))

(declare-fun call!137186 () Option!5407)

(declare-fun bm!137181 () Bool)

(assert (=> bm!137181 (= call!137186 (maxPrefixOneRule!1432 thiss!16613 (h!32882 rules!1750) input!1722))))

(declare-fun b!2307615 () Bool)

(declare-fun e!1479019 () Option!5407)

(assert (=> b!2307615 (= e!1479019 call!137186)))

(declare-fun b!2307616 () Bool)

(declare-fun res!986797 () Bool)

(assert (=> b!2307616 (=> (not res!986797) (not e!1479018))))

(assert (=> b!2307616 (= res!986797 (= (value!139476 (_1!16211 (get!8285 lt!855934))) (apply!6671 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))) (seqFromList!3113 (originalCharacters!5179 (_1!16211 (get!8285 lt!855934)))))))))

(declare-fun b!2307617 () Bool)

(assert (=> b!2307617 (= e!1479018 (contains!4797 rules!1750 (rule!6761 (_1!16211 (get!8285 lt!855934)))))))

(declare-fun b!2307618 () Bool)

(declare-fun lt!855935 () Option!5407)

(declare-fun lt!855936 () Option!5407)

(assert (=> b!2307618 (= e!1479019 (ite (and ((_ is None!5406) lt!855935) ((_ is None!5406) lt!855936)) None!5406 (ite ((_ is None!5406) lt!855936) lt!855935 (ite ((_ is None!5406) lt!855935) lt!855936 (ite (>= (size!21685 (_1!16211 (v!30514 lt!855935))) (size!21685 (_1!16211 (v!30514 lt!855936)))) lt!855935 lt!855936)))))))

(assert (=> b!2307618 (= lt!855935 call!137186)))

(assert (=> b!2307618 (= lt!855936 (maxPrefix!2262 thiss!16613 (t!206519 rules!1750) input!1722))))

(declare-fun b!2307619 () Bool)

(declare-fun res!986802 () Bool)

(assert (=> b!2307619 (=> (not res!986802) (not e!1479018))))

(assert (=> b!2307619 (= res!986802 (= (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934)))) (originalCharacters!5179 (_1!16211 (get!8285 lt!855934)))))))

(declare-fun d!682418 () Bool)

(declare-fun e!1479017 () Bool)

(assert (=> d!682418 e!1479017))

(declare-fun res!986798 () Bool)

(assert (=> d!682418 (=> res!986798 e!1479017)))

(declare-fun isEmpty!15716 (Option!5407) Bool)

(assert (=> d!682418 (= res!986798 (isEmpty!15716 lt!855934))))

(assert (=> d!682418 (= lt!855934 e!1479019)))

(declare-fun c!365731 () Bool)

(assert (=> d!682418 (= c!365731 (and ((_ is Cons!27481) rules!1750) ((_ is Nil!27481) (t!206519 rules!1750))))))

(declare-fun lt!855937 () Unit!40394)

(declare-fun lt!855938 () Unit!40394)

(assert (=> d!682418 (= lt!855937 lt!855938)))

(assert (=> d!682418 (isPrefix!2399 input!1722 input!1722)))

(assert (=> d!682418 (= lt!855938 (lemmaIsPrefixRefl!1525 input!1722 input!1722))))

(declare-fun rulesValidInductive!1564 (LexerInterface!4006 List!27575) Bool)

(assert (=> d!682418 (rulesValidInductive!1564 thiss!16613 rules!1750)))

(assert (=> d!682418 (= (maxPrefix!2262 thiss!16613 rules!1750 input!1722) lt!855934)))

(declare-fun b!2307613 () Bool)

(assert (=> b!2307613 (= e!1479017 e!1479018)))

(declare-fun res!986801 () Bool)

(assert (=> b!2307613 (=> (not res!986801) (not e!1479018))))

(declare-fun isDefined!4255 (Option!5407) Bool)

(assert (=> b!2307613 (= res!986801 (isDefined!4255 lt!855934))))

(declare-fun b!2307620 () Bool)

(declare-fun res!986800 () Bool)

(assert (=> b!2307620 (=> (not res!986800) (not e!1479018))))

(assert (=> b!2307620 (= res!986800 (< (size!21687 (_2!16211 (get!8285 lt!855934))) (size!21687 input!1722)))))

(declare-fun b!2307621 () Bool)

(declare-fun res!986803 () Bool)

(assert (=> b!2307621 (=> (not res!986803) (not e!1479018))))

(assert (=> b!2307621 (= res!986803 (= (++!6727 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934)))) (_2!16211 (get!8285 lt!855934))) input!1722))))

(assert (= (and d!682418 c!365731) b!2307615))

(assert (= (and d!682418 (not c!365731)) b!2307618))

(assert (= (or b!2307615 b!2307618) bm!137181))

(assert (= (and d!682418 (not res!986798)) b!2307613))

(assert (= (and b!2307613 res!986801) b!2307619))

(assert (= (and b!2307619 res!986802) b!2307620))

(assert (= (and b!2307620 res!986800) b!2307621))

(assert (= (and b!2307621 res!986803) b!2307616))

(assert (= (and b!2307616 res!986797) b!2307614))

(assert (= (and b!2307614 res!986799) b!2307617))

(declare-fun m!2734675 () Bool)

(assert (=> b!2307618 m!2734675))

(declare-fun m!2734677 () Bool)

(assert (=> b!2307616 m!2734677))

(declare-fun m!2734679 () Bool)

(assert (=> b!2307616 m!2734679))

(assert (=> b!2307616 m!2734679))

(declare-fun m!2734681 () Bool)

(assert (=> b!2307616 m!2734681))

(assert (=> b!2307614 m!2734677))

(declare-fun m!2734683 () Bool)

(assert (=> b!2307614 m!2734683))

(assert (=> b!2307614 m!2734683))

(declare-fun m!2734685 () Bool)

(assert (=> b!2307614 m!2734685))

(assert (=> b!2307614 m!2734685))

(declare-fun m!2734687 () Bool)

(assert (=> b!2307614 m!2734687))

(declare-fun m!2734689 () Bool)

(assert (=> d!682418 m!2734689))

(assert (=> d!682418 m!2734469))

(assert (=> d!682418 m!2734471))

(declare-fun m!2734691 () Bool)

(assert (=> d!682418 m!2734691))

(assert (=> b!2307620 m!2734677))

(declare-fun m!2734693 () Bool)

(assert (=> b!2307620 m!2734693))

(assert (=> b!2307620 m!2734621))

(declare-fun m!2734695 () Bool)

(assert (=> bm!137181 m!2734695))

(assert (=> b!2307617 m!2734677))

(declare-fun m!2734697 () Bool)

(assert (=> b!2307617 m!2734697))

(assert (=> b!2307619 m!2734677))

(assert (=> b!2307619 m!2734683))

(assert (=> b!2307619 m!2734683))

(assert (=> b!2307619 m!2734685))

(assert (=> b!2307621 m!2734677))

(assert (=> b!2307621 m!2734683))

(assert (=> b!2307621 m!2734683))

(assert (=> b!2307621 m!2734685))

(assert (=> b!2307621 m!2734685))

(declare-fun m!2734699 () Bool)

(assert (=> b!2307621 m!2734699))

(declare-fun m!2734701 () Bool)

(assert (=> b!2307613 m!2734701))

(assert (=> b!2307482 d!682418))

(declare-fun d!682422 () Bool)

(declare-fun list!10851 (Conc!8966) List!27573)

(assert (=> d!682422 (= (list!10848 (charsOf!2797 (h!32881 tokens!456))) (list!10851 (c!365710 (charsOf!2797 (h!32881 tokens!456)))))))

(declare-fun bs!457986 () Bool)

(assert (= bs!457986 d!682422))

(declare-fun m!2734703 () Bool)

(assert (=> bs!457986 m!2734703))

(assert (=> b!2307482 d!682422))

(declare-fun d!682424 () Bool)

(assert (=> d!682424 (= (get!8285 lt!855858) (v!30514 lt!855858))))

(assert (=> b!2307482 d!682424))

(declare-fun d!682428 () Bool)

(declare-fun lt!855944 () BalanceConc!17660)

(assert (=> d!682428 (= (list!10848 lt!855944) (originalCharacters!5179 (h!32881 tokens!456)))))

(declare-fun dynLambda!11947 (Int TokenValue!4571) BalanceConc!17660)

(assert (=> d!682428 (= lt!855944 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456))))))

(assert (=> d!682428 (= (charsOf!2797 (h!32881 tokens!456)) lt!855944)))

(declare-fun b_lambda!73519 () Bool)

(assert (=> (not b_lambda!73519) (not d!682428)))

(declare-fun tb!138175 () Bool)

(declare-fun t!206537 () Bool)

(assert (=> (and b!2307475 (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) t!206537) tb!138175))

(declare-fun b!2307634 () Bool)

(declare-fun e!1479028 () Bool)

(declare-fun tp!732193 () Bool)

(declare-fun inv!37124 (Conc!8966) Bool)

(assert (=> b!2307634 (= e!1479028 (and (inv!37124 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456))))) tp!732193))))

(declare-fun result!168454 () Bool)

(declare-fun inv!37125 (BalanceConc!17660) Bool)

(assert (=> tb!138175 (= result!168454 (and (inv!37125 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456)))) e!1479028))))

(assert (= tb!138175 b!2307634))

(declare-fun m!2734715 () Bool)

(assert (=> b!2307634 m!2734715))

(declare-fun m!2734717 () Bool)

(assert (=> tb!138175 m!2734717))

(assert (=> d!682428 t!206537))

(declare-fun b_and!184297 () Bool)

(assert (= b_and!184259 (and (=> t!206537 result!168454) b_and!184297)))

(declare-fun tb!138177 () Bool)

(declare-fun t!206539 () Bool)

(assert (=> (and b!2307465 (= (toChars!6082 (transformation!4409 r!2363)) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) t!206539) tb!138177))

(declare-fun result!168458 () Bool)

(assert (= result!168458 result!168454))

(assert (=> d!682428 t!206539))

(declare-fun b_and!184299 () Bool)

(assert (= b_and!184263 (and (=> t!206539 result!168458) b_and!184299)))

(declare-fun t!206541 () Bool)

(declare-fun tb!138179 () Bool)

(assert (=> (and b!2307487 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) t!206541) tb!138179))

(declare-fun result!168460 () Bool)

(assert (= result!168460 result!168454))

(assert (=> d!682428 t!206541))

(declare-fun b_and!184301 () Bool)

(assert (= b_and!184267 (and (=> t!206541 result!168460) b_and!184301)))

(declare-fun t!206543 () Bool)

(declare-fun tb!138181 () Bool)

(assert (=> (and b!2307476 (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) t!206543) tb!138181))

(declare-fun result!168462 () Bool)

(assert (= result!168462 result!168454))

(assert (=> d!682428 t!206543))

(declare-fun b_and!184303 () Bool)

(assert (= b_and!184271 (and (=> t!206543 result!168462) b_and!184303)))

(declare-fun m!2734719 () Bool)

(assert (=> d!682428 m!2734719))

(declare-fun m!2734721 () Bool)

(assert (=> d!682428 m!2734721))

(assert (=> b!2307482 d!682428))

(declare-fun d!682432 () Bool)

(assert (=> d!682432 (isPrefix!2399 lt!855852 (++!6727 lt!855852 (_2!16211 lt!855868)))))

(declare-fun lt!855947 () Unit!40394)

(declare-fun choose!13491 (List!27573 List!27573) Unit!40394)

(assert (=> d!682432 (= lt!855947 (choose!13491 lt!855852 (_2!16211 lt!855868)))))

(assert (=> d!682432 (= (lemmaConcatTwoListThenFirstIsPrefix!1592 lt!855852 (_2!16211 lt!855868)) lt!855947)))

(declare-fun bs!457987 () Bool)

(assert (= bs!457987 d!682432))

(assert (=> bs!457987 m!2734499))

(assert (=> bs!457987 m!2734499))

(assert (=> bs!457987 m!2734501))

(declare-fun m!2734723 () Bool)

(assert (=> bs!457987 m!2734723))

(assert (=> b!2307482 d!682432))

(declare-fun e!1479034 () Bool)

(declare-fun lt!855950 () List!27573)

(declare-fun b!2307646 () Bool)

(assert (=> b!2307646 (= e!1479034 (or (not (= (_2!16211 lt!855868) Nil!27479)) (= lt!855950 lt!855852)))))

(declare-fun b!2307644 () Bool)

(declare-fun e!1479033 () List!27573)

(assert (=> b!2307644 (= e!1479033 (Cons!27479 (h!32880 lt!855852) (++!6727 (t!206517 lt!855852) (_2!16211 lt!855868))))))

(declare-fun d!682434 () Bool)

(assert (=> d!682434 e!1479034))

(declare-fun res!986809 () Bool)

(assert (=> d!682434 (=> (not res!986809) (not e!1479034))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3714 (List!27573) (InoxSet C!13660))

(assert (=> d!682434 (= res!986809 (= (content!3714 lt!855950) ((_ map or) (content!3714 lt!855852) (content!3714 (_2!16211 lt!855868)))))))

(assert (=> d!682434 (= lt!855950 e!1479033)))

(declare-fun c!365737 () Bool)

(assert (=> d!682434 (= c!365737 ((_ is Nil!27479) lt!855852))))

(assert (=> d!682434 (= (++!6727 lt!855852 (_2!16211 lt!855868)) lt!855950)))

(declare-fun b!2307643 () Bool)

(assert (=> b!2307643 (= e!1479033 (_2!16211 lt!855868))))

(declare-fun b!2307645 () Bool)

(declare-fun res!986808 () Bool)

(assert (=> b!2307645 (=> (not res!986808) (not e!1479034))))

(assert (=> b!2307645 (= res!986808 (= (size!21687 lt!855950) (+ (size!21687 lt!855852) (size!21687 (_2!16211 lt!855868)))))))

(assert (= (and d!682434 c!365737) b!2307643))

(assert (= (and d!682434 (not c!365737)) b!2307644))

(assert (= (and d!682434 res!986809) b!2307645))

(assert (= (and b!2307645 res!986808) b!2307646))

(declare-fun m!2734725 () Bool)

(assert (=> b!2307644 m!2734725))

(declare-fun m!2734727 () Bool)

(assert (=> d!682434 m!2734727))

(declare-fun m!2734729 () Bool)

(assert (=> d!682434 m!2734729))

(declare-fun m!2734731 () Bool)

(assert (=> d!682434 m!2734731))

(declare-fun m!2734733 () Bool)

(assert (=> b!2307645 m!2734733))

(assert (=> b!2307645 m!2734491))

(declare-fun m!2734735 () Bool)

(assert (=> b!2307645 m!2734735))

(assert (=> b!2307482 d!682434))

(declare-fun d!682436 () Bool)

(declare-fun lt!855951 () Int)

(assert (=> d!682436 (>= lt!855951 0)))

(declare-fun e!1479035 () Int)

(assert (=> d!682436 (= lt!855951 e!1479035)))

(declare-fun c!365738 () Bool)

(assert (=> d!682436 (= c!365738 ((_ is Nil!27479) lt!855852))))

(assert (=> d!682436 (= (size!21687 lt!855852) lt!855951)))

(declare-fun b!2307647 () Bool)

(assert (=> b!2307647 (= e!1479035 0)))

(declare-fun b!2307648 () Bool)

(assert (=> b!2307648 (= e!1479035 (+ 1 (size!21687 (t!206517 lt!855852))))))

(assert (= (and d!682436 c!365738) b!2307647))

(assert (= (and d!682436 (not c!365738)) b!2307648))

(declare-fun m!2734737 () Bool)

(assert (=> b!2307648 m!2734737))

(assert (=> b!2307482 d!682436))

(declare-fun b!2307650 () Bool)

(declare-fun res!986813 () Bool)

(declare-fun e!1479036 () Bool)

(assert (=> b!2307650 (=> (not res!986813) (not e!1479036))))

(assert (=> b!2307650 (= res!986813 (= (head!5065 input!1722) (head!5065 input!1722)))))

(declare-fun b!2307649 () Bool)

(declare-fun e!1479037 () Bool)

(assert (=> b!2307649 (= e!1479037 e!1479036)))

(declare-fun res!986810 () Bool)

(assert (=> b!2307649 (=> (not res!986810) (not e!1479036))))

(assert (=> b!2307649 (= res!986810 (not ((_ is Nil!27479) input!1722)))))

(declare-fun b!2307652 () Bool)

(declare-fun e!1479038 () Bool)

(assert (=> b!2307652 (= e!1479038 (>= (size!21687 input!1722) (size!21687 input!1722)))))

(declare-fun d!682438 () Bool)

(assert (=> d!682438 e!1479038))

(declare-fun res!986811 () Bool)

(assert (=> d!682438 (=> res!986811 e!1479038)))

(declare-fun lt!855952 () Bool)

(assert (=> d!682438 (= res!986811 (not lt!855952))))

(assert (=> d!682438 (= lt!855952 e!1479037)))

(declare-fun res!986812 () Bool)

(assert (=> d!682438 (=> res!986812 e!1479037)))

(assert (=> d!682438 (= res!986812 ((_ is Nil!27479) input!1722))))

(assert (=> d!682438 (= (isPrefix!2399 input!1722 input!1722) lt!855952)))

(declare-fun b!2307651 () Bool)

(assert (=> b!2307651 (= e!1479036 (isPrefix!2399 (tail!3336 input!1722) (tail!3336 input!1722)))))

(assert (= (and d!682438 (not res!986812)) b!2307649))

(assert (= (and b!2307649 res!986810) b!2307650))

(assert (= (and b!2307650 res!986813) b!2307651))

(assert (= (and d!682438 (not res!986811)) b!2307652))

(declare-fun m!2734739 () Bool)

(assert (=> b!2307650 m!2734739))

(assert (=> b!2307650 m!2734739))

(assert (=> b!2307652 m!2734621))

(assert (=> b!2307652 m!2734621))

(assert (=> b!2307651 m!2734623))

(assert (=> b!2307651 m!2734623))

(assert (=> b!2307651 m!2734623))

(assert (=> b!2307651 m!2734623))

(declare-fun m!2734741 () Bool)

(assert (=> b!2307651 m!2734741))

(assert (=> b!2307460 d!682438))

(declare-fun d!682440 () Bool)

(assert (=> d!682440 (isPrefix!2399 input!1722 input!1722)))

(declare-fun lt!855955 () Unit!40394)

(declare-fun choose!13492 (List!27573 List!27573) Unit!40394)

(assert (=> d!682440 (= lt!855955 (choose!13492 input!1722 input!1722))))

(assert (=> d!682440 (= (lemmaIsPrefixRefl!1525 input!1722 input!1722) lt!855955)))

(declare-fun bs!457988 () Bool)

(assert (= bs!457988 d!682440))

(assert (=> bs!457988 m!2734469))

(declare-fun m!2734743 () Bool)

(assert (=> bs!457988 m!2734743))

(assert (=> b!2307460 d!682440))

(declare-fun b!2307791 () Bool)

(declare-fun e!1479114 () Bool)

(assert (=> b!2307791 (= e!1479114 true)))

(declare-fun d!682442 () Bool)

(assert (=> d!682442 e!1479114))

(assert (= d!682442 b!2307791))

(declare-fun order!15305 () Int)

(declare-fun lambda!85994 () Int)

(declare-fun order!15307 () Int)

(declare-fun dynLambda!11949 (Int Int) Int)

(declare-fun dynLambda!11950 (Int Int) Int)

(assert (=> b!2307791 (< (dynLambda!11949 order!15305 (toValue!6223 (transformation!4409 r!2363))) (dynLambda!11950 order!15307 lambda!85994))))

(declare-fun order!15309 () Int)

(declare-fun dynLambda!11951 (Int Int) Int)

(assert (=> b!2307791 (< (dynLambda!11951 order!15309 (toChars!6082 (transformation!4409 r!2363))) (dynLambda!11950 order!15307 lambda!85994))))

(declare-fun dynLambda!11952 (Int BalanceConc!17660) TokenValue!4571)

(assert (=> d!682442 (= (list!10848 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861))) (list!10848 lt!855861))))

(declare-fun lt!856002 () Unit!40394)

(declare-fun ForallOf!502 (Int BalanceConc!17660) Unit!40394)

(assert (=> d!682442 (= lt!856002 (ForallOf!502 lambda!85994 lt!855861))))

(assert (=> d!682442 (= (lemmaSemiInverse!1088 (transformation!4409 r!2363) lt!855861) lt!856002)))

(declare-fun b_lambda!73523 () Bool)

(assert (=> (not b_lambda!73523) (not d!682442)))

(declare-fun t!206553 () Bool)

(declare-fun tb!138191 () Bool)

(assert (=> (and b!2307475 (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 r!2363))) t!206553) tb!138191))

(declare-fun tp!732195 () Bool)

(declare-fun e!1479115 () Bool)

(declare-fun b!2307792 () Bool)

(assert (=> b!2307792 (= e!1479115 (and (inv!37124 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)))) tp!732195))))

(declare-fun result!168472 () Bool)

(assert (=> tb!138191 (= result!168472 (and (inv!37125 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861))) e!1479115))))

(assert (= tb!138191 b!2307792))

(declare-fun m!2734877 () Bool)

(assert (=> b!2307792 m!2734877))

(declare-fun m!2734879 () Bool)

(assert (=> tb!138191 m!2734879))

(assert (=> d!682442 t!206553))

(declare-fun b_and!184313 () Bool)

(assert (= b_and!184297 (and (=> t!206553 result!168472) b_and!184313)))

(declare-fun t!206555 () Bool)

(declare-fun tb!138193 () Bool)

(assert (=> (and b!2307465 (= (toChars!6082 (transformation!4409 r!2363)) (toChars!6082 (transformation!4409 r!2363))) t!206555) tb!138193))

(declare-fun result!168474 () Bool)

(assert (= result!168474 result!168472))

(assert (=> d!682442 t!206555))

(declare-fun b_and!184315 () Bool)

(assert (= b_and!184299 (and (=> t!206555 result!168474) b_and!184315)))

(declare-fun tb!138195 () Bool)

(declare-fun t!206557 () Bool)

(assert (=> (and b!2307487 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toChars!6082 (transformation!4409 r!2363))) t!206557) tb!138195))

(declare-fun result!168476 () Bool)

(assert (= result!168476 result!168472))

(assert (=> d!682442 t!206557))

(declare-fun b_and!184317 () Bool)

(assert (= b_and!184301 (and (=> t!206557 result!168476) b_and!184317)))

(declare-fun tb!138197 () Bool)

(declare-fun t!206559 () Bool)

(assert (=> (and b!2307476 (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 r!2363))) t!206559) tb!138197))

(declare-fun result!168478 () Bool)

(assert (= result!168478 result!168472))

(assert (=> d!682442 t!206559))

(declare-fun b_and!184319 () Bool)

(assert (= b_and!184303 (and (=> t!206559 result!168478) b_and!184319)))

(declare-fun b_lambda!73525 () Bool)

(assert (=> (not b_lambda!73525) (not d!682442)))

(declare-fun t!206561 () Bool)

(declare-fun tb!138199 () Bool)

(assert (=> (and b!2307475 (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 r!2363))) t!206561) tb!138199))

(declare-fun result!168480 () Bool)

(assert (=> tb!138199 (= result!168480 (inv!21 (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)))))

(declare-fun m!2734881 () Bool)

(assert (=> tb!138199 m!2734881))

(assert (=> d!682442 t!206561))

(declare-fun b_and!184321 () Bool)

(assert (= b_and!184257 (and (=> t!206561 result!168480) b_and!184321)))

(declare-fun t!206563 () Bool)

(declare-fun tb!138201 () Bool)

(assert (=> (and b!2307465 (= (toValue!6223 (transformation!4409 r!2363)) (toValue!6223 (transformation!4409 r!2363))) t!206563) tb!138201))

(declare-fun result!168484 () Bool)

(assert (= result!168484 result!168480))

(assert (=> d!682442 t!206563))

(declare-fun b_and!184323 () Bool)

(assert (= b_and!184261 (and (=> t!206563 result!168484) b_and!184323)))

(declare-fun tb!138203 () Bool)

(declare-fun t!206565 () Bool)

(assert (=> (and b!2307487 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 r!2363))) t!206565) tb!138203))

(declare-fun result!168486 () Bool)

(assert (= result!168486 result!168480))

(assert (=> d!682442 t!206565))

(declare-fun b_and!184325 () Bool)

(assert (= b_and!184265 (and (=> t!206565 result!168486) b_and!184325)))

(declare-fun t!206567 () Bool)

(declare-fun tb!138205 () Bool)

(assert (=> (and b!2307476 (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 r!2363))) t!206567) tb!138205))

(declare-fun result!168488 () Bool)

(assert (= result!168488 result!168480))

(assert (=> d!682442 t!206567))

(declare-fun b_and!184327 () Bool)

(assert (= b_and!184269 (and (=> t!206567 result!168488) b_and!184327)))

(declare-fun m!2734883 () Bool)

(assert (=> d!682442 m!2734883))

(declare-fun m!2734885 () Bool)

(assert (=> d!682442 m!2734885))

(declare-fun m!2734887 () Bool)

(assert (=> d!682442 m!2734887))

(declare-fun m!2734889 () Bool)

(assert (=> d!682442 m!2734889))

(assert (=> d!682442 m!2734883))

(assert (=> d!682442 m!2734889))

(declare-fun m!2734891 () Bool)

(assert (=> d!682442 m!2734891))

(assert (=> b!2307460 d!682442))

(declare-fun d!682492 () Bool)

(assert (=> d!682492 (= (inv!37117 (tag!4899 (rule!6761 (h!32881 tokens!456)))) (= (mod (str.len (value!139475 (tag!4899 (rule!6761 (h!32881 tokens!456))))) 2) 0))))

(assert (=> b!2307481 d!682492))

(declare-fun d!682494 () Bool)

(declare-fun res!986889 () Bool)

(declare-fun e!1479119 () Bool)

(assert (=> d!682494 (=> (not res!986889) (not e!1479119))))

(assert (=> d!682494 (= res!986889 (semiInverseModEq!1796 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456))))))))

(assert (=> d!682494 (= (inv!37120 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) e!1479119)))

(declare-fun b!2307795 () Bool)

(assert (=> b!2307795 (= e!1479119 (equivClasses!1715 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456))))))))

(assert (= (and d!682494 res!986889) b!2307795))

(declare-fun m!2734893 () Bool)

(assert (=> d!682494 m!2734893))

(declare-fun m!2734895 () Bool)

(assert (=> b!2307795 m!2734895))

(assert (=> b!2307481 d!682494))

(declare-fun d!682496 () Bool)

(declare-fun res!986892 () Bool)

(declare-fun e!1479122 () Bool)

(assert (=> d!682496 (=> (not res!986892) (not e!1479122))))

(declare-fun rulesValid!1638 (LexerInterface!4006 List!27575) Bool)

(assert (=> d!682496 (= res!986892 (rulesValid!1638 thiss!16613 rules!1750))))

(assert (=> d!682496 (= (rulesInvariant!3508 thiss!16613 rules!1750) e!1479122)))

(declare-fun b!2307798 () Bool)

(declare-datatypes ((List!27576 0))(
  ( (Nil!27482) (Cons!27482 (h!32883 String!29959) (t!206616 List!27576)) )
))
(declare-fun noDuplicateTag!1636 (LexerInterface!4006 List!27575 List!27576) Bool)

(assert (=> b!2307798 (= e!1479122 (noDuplicateTag!1636 thiss!16613 rules!1750 Nil!27482))))

(assert (= (and d!682496 res!986892) b!2307798))

(declare-fun m!2734897 () Bool)

(assert (=> d!682496 m!2734897))

(declare-fun m!2734899 () Bool)

(assert (=> b!2307798 m!2734899))

(assert (=> b!2307459 d!682496))

(declare-fun d!682498 () Bool)

(declare-fun lt!856005 () Bool)

(declare-fun content!3715 (List!27575) (InoxSet Rule!8618))

(assert (=> d!682498 (= lt!856005 (select (content!3715 rules!1750) otherR!12))))

(declare-fun e!1479128 () Bool)

(assert (=> d!682498 (= lt!856005 e!1479128)))

(declare-fun res!986898 () Bool)

(assert (=> d!682498 (=> (not res!986898) (not e!1479128))))

(assert (=> d!682498 (= res!986898 ((_ is Cons!27481) rules!1750))))

(assert (=> d!682498 (= (contains!4797 rules!1750 otherR!12) lt!856005)))

(declare-fun b!2307803 () Bool)

(declare-fun e!1479127 () Bool)

(assert (=> b!2307803 (= e!1479128 e!1479127)))

(declare-fun res!986897 () Bool)

(assert (=> b!2307803 (=> res!986897 e!1479127)))

(assert (=> b!2307803 (= res!986897 (= (h!32882 rules!1750) otherR!12))))

(declare-fun b!2307804 () Bool)

(assert (=> b!2307804 (= e!1479127 (contains!4797 (t!206519 rules!1750) otherR!12))))

(assert (= (and d!682498 res!986898) b!2307803))

(assert (= (and b!2307803 (not res!986897)) b!2307804))

(declare-fun m!2734901 () Bool)

(assert (=> d!682498 m!2734901))

(declare-fun m!2734903 () Bool)

(assert (=> d!682498 m!2734903))

(declare-fun m!2734905 () Bool)

(assert (=> b!2307804 m!2734905))

(assert (=> b!2307480 d!682498))

(declare-fun d!682500 () Bool)

(assert (=> d!682500 (= (inv!37117 (tag!4899 r!2363)) (= (mod (str.len (value!139475 (tag!4899 r!2363))) 2) 0))))

(assert (=> b!2307458 d!682500))

(declare-fun d!682502 () Bool)

(declare-fun res!986899 () Bool)

(declare-fun e!1479129 () Bool)

(assert (=> d!682502 (=> (not res!986899) (not e!1479129))))

(assert (=> d!682502 (= res!986899 (semiInverseModEq!1796 (toChars!6082 (transformation!4409 r!2363)) (toValue!6223 (transformation!4409 r!2363))))))

(assert (=> d!682502 (= (inv!37120 (transformation!4409 r!2363)) e!1479129)))

(declare-fun b!2307805 () Bool)

(assert (=> b!2307805 (= e!1479129 (equivClasses!1715 (toChars!6082 (transformation!4409 r!2363)) (toValue!6223 (transformation!4409 r!2363))))))

(assert (= (and d!682502 res!986899) b!2307805))

(declare-fun m!2734907 () Bool)

(assert (=> d!682502 m!2734907))

(declare-fun m!2734909 () Bool)

(assert (=> b!2307805 m!2734909))

(assert (=> b!2307458 d!682502))

(declare-fun d!682504 () Bool)

(assert (=> d!682504 (= (isEmpty!15713 rules!1750) ((_ is Nil!27481) rules!1750))))

(assert (=> b!2307479 d!682504))

(declare-fun d!682506 () Bool)

(declare-fun lt!856008 () Int)

(assert (=> d!682506 (>= lt!856008 0)))

(declare-fun e!1479136 () Int)

(assert (=> d!682506 (= lt!856008 e!1479136)))

(declare-fun c!365774 () Bool)

(assert (=> d!682506 (= c!365774 (and ((_ is Cons!27481) rules!1750) (= (h!32882 rules!1750) otherR!12)))))

(assert (=> d!682506 (contains!4797 rules!1750 otherR!12)))

(assert (=> d!682506 (= (getIndex!422 rules!1750 otherR!12) lt!856008)))

(declare-fun b!2307814 () Bool)

(assert (=> b!2307814 (= e!1479136 0)))

(declare-fun b!2307817 () Bool)

(declare-fun e!1479135 () Int)

(assert (=> b!2307817 (= e!1479135 (- 1))))

(declare-fun b!2307816 () Bool)

(assert (=> b!2307816 (= e!1479135 (+ 1 (getIndex!422 (t!206519 rules!1750) otherR!12)))))

(declare-fun b!2307815 () Bool)

(assert (=> b!2307815 (= e!1479136 e!1479135)))

(declare-fun c!365775 () Bool)

(assert (=> b!2307815 (= c!365775 (and ((_ is Cons!27481) rules!1750) (not (= (h!32882 rules!1750) otherR!12))))))

(assert (= (and d!682506 c!365774) b!2307814))

(assert (= (and d!682506 (not c!365774)) b!2307815))

(assert (= (and b!2307815 c!365775) b!2307816))

(assert (= (and b!2307815 (not c!365775)) b!2307817))

(assert (=> d!682506 m!2734557))

(declare-fun m!2734911 () Bool)

(assert (=> b!2307816 m!2734911))

(assert (=> b!2307457 d!682506))

(declare-fun d!682508 () Bool)

(declare-fun lt!856009 () Int)

(assert (=> d!682508 (>= lt!856009 0)))

(declare-fun e!1479138 () Int)

(assert (=> d!682508 (= lt!856009 e!1479138)))

(declare-fun c!365776 () Bool)

(assert (=> d!682508 (= c!365776 (and ((_ is Cons!27481) rules!1750) (= (h!32882 rules!1750) r!2363)))))

(assert (=> d!682508 (contains!4797 rules!1750 r!2363)))

(assert (=> d!682508 (= (getIndex!422 rules!1750 r!2363) lt!856009)))

(declare-fun b!2307818 () Bool)

(assert (=> b!2307818 (= e!1479138 0)))

(declare-fun b!2307821 () Bool)

(declare-fun e!1479137 () Int)

(assert (=> b!2307821 (= e!1479137 (- 1))))

(declare-fun b!2307820 () Bool)

(assert (=> b!2307820 (= e!1479137 (+ 1 (getIndex!422 (t!206519 rules!1750) r!2363)))))

(declare-fun b!2307819 () Bool)

(assert (=> b!2307819 (= e!1479138 e!1479137)))

(declare-fun c!365777 () Bool)

(assert (=> b!2307819 (= c!365777 (and ((_ is Cons!27481) rules!1750) (not (= (h!32882 rules!1750) r!2363))))))

(assert (= (and d!682508 c!365776) b!2307818))

(assert (= (and d!682508 (not c!365776)) b!2307819))

(assert (= (and b!2307819 c!365777) b!2307820))

(assert (= (and b!2307819 (not c!365777)) b!2307821))

(assert (=> d!682508 m!2734477))

(declare-fun m!2734913 () Bool)

(assert (=> b!2307820 m!2734913))

(assert (=> b!2307457 d!682508))

(declare-fun d!682510 () Bool)

(declare-fun res!986904 () Bool)

(declare-fun e!1479141 () Bool)

(assert (=> d!682510 (=> (not res!986904) (not e!1479141))))

(declare-fun validRegex!2555 (Regex!6757) Bool)

(assert (=> d!682510 (= res!986904 (validRegex!2555 (regex!4409 otherR!12)))))

(assert (=> d!682510 (= (ruleValid!1499 thiss!16613 otherR!12) e!1479141)))

(declare-fun b!2307826 () Bool)

(declare-fun res!986905 () Bool)

(assert (=> b!2307826 (=> (not res!986905) (not e!1479141))))

(declare-fun nullable!1894 (Regex!6757) Bool)

(assert (=> b!2307826 (= res!986905 (not (nullable!1894 (regex!4409 otherR!12))))))

(declare-fun b!2307827 () Bool)

(assert (=> b!2307827 (= e!1479141 (not (= (tag!4899 otherR!12) (String!29960 ""))))))

(assert (= (and d!682510 res!986904) b!2307826))

(assert (= (and b!2307826 res!986905) b!2307827))

(declare-fun m!2734915 () Bool)

(assert (=> d!682510 m!2734915))

(declare-fun m!2734917 () Bool)

(assert (=> b!2307826 m!2734917))

(assert (=> b!2307457 d!682510))

(declare-fun d!682512 () Bool)

(assert (=> d!682512 (ruleValid!1499 thiss!16613 otherR!12)))

(declare-fun lt!856012 () Unit!40394)

(declare-fun choose!13494 (LexerInterface!4006 Rule!8618 List!27575) Unit!40394)

(assert (=> d!682512 (= lt!856012 (choose!13494 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!682512 (contains!4797 rules!1750 otherR!12)))

(assert (=> d!682512 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!904 thiss!16613 otherR!12 rules!1750) lt!856012)))

(declare-fun bs!457999 () Bool)

(assert (= bs!457999 d!682512))

(assert (=> bs!457999 m!2734527))

(declare-fun m!2734919 () Bool)

(assert (=> bs!457999 m!2734919))

(assert (=> bs!457999 m!2734557))

(assert (=> b!2307457 d!682512))

(declare-fun d!682514 () Bool)

(declare-fun lt!856015 () Int)

(assert (=> d!682514 (= lt!856015 (size!21687 (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))

(declare-fun size!21688 (Conc!8966) Int)

(assert (=> d!682514 (= lt!856015 (size!21688 (c!365710 (charsOf!2797 (head!5064 tokens!456)))))))

(assert (=> d!682514 (= (size!21686 (charsOf!2797 (head!5064 tokens!456))) lt!856015)))

(declare-fun bs!458000 () Bool)

(assert (= bs!458000 d!682514))

(assert (=> bs!458000 m!2734463))

(assert (=> bs!458000 m!2734503))

(assert (=> bs!458000 m!2734503))

(declare-fun m!2734921 () Bool)

(assert (=> bs!458000 m!2734921))

(declare-fun m!2734923 () Bool)

(assert (=> bs!458000 m!2734923))

(assert (=> b!2307477 d!682514))

(declare-fun d!682516 () Bool)

(declare-fun lt!856016 () BalanceConc!17660)

(assert (=> d!682516 (= (list!10848 lt!856016) (originalCharacters!5179 (head!5064 tokens!456)))))

(assert (=> d!682516 (= lt!856016 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456))))))

(assert (=> d!682516 (= (charsOf!2797 (head!5064 tokens!456)) lt!856016)))

(declare-fun b_lambda!73527 () Bool)

(assert (=> (not b_lambda!73527) (not d!682516)))

(declare-fun tb!138207 () Bool)

(declare-fun t!206569 () Bool)

(assert (=> (and b!2307475 (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456))))) t!206569) tb!138207))

(declare-fun b!2307828 () Bool)

(declare-fun e!1479142 () Bool)

(declare-fun tp!732196 () Bool)

(assert (=> b!2307828 (= e!1479142 (and (inv!37124 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456))))) tp!732196))))

(declare-fun result!168490 () Bool)

(assert (=> tb!138207 (= result!168490 (and (inv!37125 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456)))) e!1479142))))

(assert (= tb!138207 b!2307828))

(declare-fun m!2734925 () Bool)

(assert (=> b!2307828 m!2734925))

(declare-fun m!2734927 () Bool)

(assert (=> tb!138207 m!2734927))

(assert (=> d!682516 t!206569))

(declare-fun b_and!184329 () Bool)

(assert (= b_and!184313 (and (=> t!206569 result!168490) b_and!184329)))

(declare-fun t!206571 () Bool)

(declare-fun tb!138209 () Bool)

(assert (=> (and b!2307465 (= (toChars!6082 (transformation!4409 r!2363)) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456))))) t!206571) tb!138209))

(declare-fun result!168492 () Bool)

(assert (= result!168492 result!168490))

(assert (=> d!682516 t!206571))

(declare-fun b_and!184331 () Bool)

(assert (= b_and!184315 (and (=> t!206571 result!168492) b_and!184331)))

(declare-fun t!206573 () Bool)

(declare-fun tb!138211 () Bool)

(assert (=> (and b!2307487 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456))))) t!206573) tb!138211))

(declare-fun result!168494 () Bool)

(assert (= result!168494 result!168490))

(assert (=> d!682516 t!206573))

(declare-fun b_and!184333 () Bool)

(assert (= b_and!184317 (and (=> t!206573 result!168494) b_and!184333)))

(declare-fun tb!138213 () Bool)

(declare-fun t!206575 () Bool)

(assert (=> (and b!2307476 (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456))))) t!206575) tb!138213))

(declare-fun result!168496 () Bool)

(assert (= result!168496 result!168490))

(assert (=> d!682516 t!206575))

(declare-fun b_and!184335 () Bool)

(assert (= b_and!184319 (and (=> t!206575 result!168496) b_and!184335)))

(declare-fun m!2734929 () Bool)

(assert (=> d!682516 m!2734929))

(declare-fun m!2734931 () Bool)

(assert (=> d!682516 m!2734931))

(assert (=> b!2307477 d!682516))

(declare-fun d!682518 () Bool)

(assert (=> d!682518 (= (head!5064 tokens!456) (h!32881 tokens!456))))

(assert (=> b!2307477 d!682518))

(assert (=> b!2307477 d!682416))

(declare-fun d!682520 () Bool)

(declare-fun e!1479157 () Bool)

(assert (=> d!682520 e!1479157))

(declare-fun c!365784 () Bool)

(assert (=> d!682520 (= c!365784 ((_ is EmptyExpr!6757) (regex!4409 r!2363)))))

(declare-fun lt!856019 () Bool)

(declare-fun e!1479159 () Bool)

(assert (=> d!682520 (= lt!856019 e!1479159)))

(declare-fun c!365786 () Bool)

(declare-fun isEmpty!15718 (List!27573) Bool)

(assert (=> d!682520 (= c!365786 (isEmpty!15718 (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))

(assert (=> d!682520 (validRegex!2555 (regex!4409 r!2363))))

(assert (=> d!682520 (= (matchR!3014 (regex!4409 r!2363) (list!10848 (charsOf!2797 (head!5064 tokens!456)))) lt!856019)))

(declare-fun b!2307857 () Bool)

(declare-fun res!986926 () Bool)

(declare-fun e!1479161 () Bool)

(assert (=> b!2307857 (=> res!986926 e!1479161)))

(assert (=> b!2307857 (= res!986926 (not ((_ is ElementMatch!6757) (regex!4409 r!2363))))))

(declare-fun e!1479162 () Bool)

(assert (=> b!2307857 (= e!1479162 e!1479161)))

(declare-fun b!2307858 () Bool)

(assert (=> b!2307858 (= e!1479157 e!1479162)))

(declare-fun c!365785 () Bool)

(assert (=> b!2307858 (= c!365785 ((_ is EmptyLang!6757) (regex!4409 r!2363)))))

(declare-fun b!2307859 () Bool)

(declare-fun e!1479163 () Bool)

(declare-fun e!1479158 () Bool)

(assert (=> b!2307859 (= e!1479163 e!1479158)))

(declare-fun res!986922 () Bool)

(assert (=> b!2307859 (=> res!986922 e!1479158)))

(declare-fun call!137192 () Bool)

(assert (=> b!2307859 (= res!986922 call!137192)))

(declare-fun b!2307860 () Bool)

(declare-fun e!1479160 () Bool)

(assert (=> b!2307860 (= e!1479160 (= (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456)))) (c!365711 (regex!4409 r!2363))))))

(declare-fun b!2307861 () Bool)

(assert (=> b!2307861 (= e!1479161 e!1479163)))

(declare-fun res!986924 () Bool)

(assert (=> b!2307861 (=> (not res!986924) (not e!1479163))))

(assert (=> b!2307861 (= res!986924 (not lt!856019))))

(declare-fun b!2307862 () Bool)

(declare-fun derivativeStep!1554 (Regex!6757 C!13660) Regex!6757)

(assert (=> b!2307862 (= e!1479159 (matchR!3014 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456))))) (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456))))))))

(declare-fun b!2307863 () Bool)

(declare-fun res!986927 () Bool)

(assert (=> b!2307863 (=> res!986927 e!1479161)))

(assert (=> b!2307863 (= res!986927 e!1479160)))

(declare-fun res!986929 () Bool)

(assert (=> b!2307863 (=> (not res!986929) (not e!1479160))))

(assert (=> b!2307863 (= res!986929 lt!856019)))

(declare-fun bm!137187 () Bool)

(assert (=> bm!137187 (= call!137192 (isEmpty!15718 (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))

(declare-fun b!2307864 () Bool)

(declare-fun res!986925 () Bool)

(assert (=> b!2307864 (=> (not res!986925) (not e!1479160))))

(assert (=> b!2307864 (= res!986925 (not call!137192))))

(declare-fun b!2307865 () Bool)

(declare-fun res!986923 () Bool)

(assert (=> b!2307865 (=> (not res!986923) (not e!1479160))))

(assert (=> b!2307865 (= res!986923 (isEmpty!15718 (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456))))))))

(declare-fun b!2307866 () Bool)

(assert (=> b!2307866 (= e!1479159 (nullable!1894 (regex!4409 r!2363)))))

(declare-fun b!2307867 () Bool)

(assert (=> b!2307867 (= e!1479162 (not lt!856019))))

(declare-fun b!2307868 () Bool)

(assert (=> b!2307868 (= e!1479158 (not (= (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456)))) (c!365711 (regex!4409 r!2363)))))))

(declare-fun b!2307869 () Bool)

(assert (=> b!2307869 (= e!1479157 (= lt!856019 call!137192))))

(declare-fun b!2307870 () Bool)

(declare-fun res!986928 () Bool)

(assert (=> b!2307870 (=> res!986928 e!1479158)))

(assert (=> b!2307870 (= res!986928 (not (isEmpty!15718 (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))))

(assert (= (and d!682520 c!365786) b!2307866))

(assert (= (and d!682520 (not c!365786)) b!2307862))

(assert (= (and d!682520 c!365784) b!2307869))

(assert (= (and d!682520 (not c!365784)) b!2307858))

(assert (= (and b!2307858 c!365785) b!2307867))

(assert (= (and b!2307858 (not c!365785)) b!2307857))

(assert (= (and b!2307857 (not res!986926)) b!2307863))

(assert (= (and b!2307863 res!986929) b!2307864))

(assert (= (and b!2307864 res!986925) b!2307865))

(assert (= (and b!2307865 res!986923) b!2307860))

(assert (= (and b!2307863 (not res!986927)) b!2307861))

(assert (= (and b!2307861 res!986924) b!2307859))

(assert (= (and b!2307859 (not res!986922)) b!2307870))

(assert (= (and b!2307870 (not res!986928)) b!2307868))

(assert (= (or b!2307869 b!2307864 b!2307859) bm!137187))

(assert (=> b!2307865 m!2734503))

(declare-fun m!2734933 () Bool)

(assert (=> b!2307865 m!2734933))

(assert (=> b!2307865 m!2734933))

(declare-fun m!2734935 () Bool)

(assert (=> b!2307865 m!2734935))

(assert (=> b!2307870 m!2734503))

(assert (=> b!2307870 m!2734933))

(assert (=> b!2307870 m!2734933))

(assert (=> b!2307870 m!2734935))

(assert (=> b!2307862 m!2734503))

(declare-fun m!2734937 () Bool)

(assert (=> b!2307862 m!2734937))

(assert (=> b!2307862 m!2734937))

(declare-fun m!2734939 () Bool)

(assert (=> b!2307862 m!2734939))

(assert (=> b!2307862 m!2734503))

(assert (=> b!2307862 m!2734933))

(assert (=> b!2307862 m!2734939))

(assert (=> b!2307862 m!2734933))

(declare-fun m!2734941 () Bool)

(assert (=> b!2307862 m!2734941))

(assert (=> b!2307868 m!2734503))

(assert (=> b!2307868 m!2734937))

(assert (=> b!2307860 m!2734503))

(assert (=> b!2307860 m!2734937))

(declare-fun m!2734943 () Bool)

(assert (=> b!2307866 m!2734943))

(assert (=> bm!137187 m!2734503))

(declare-fun m!2734945 () Bool)

(assert (=> bm!137187 m!2734945))

(assert (=> d!682520 m!2734503))

(assert (=> d!682520 m!2734945))

(declare-fun m!2734947 () Bool)

(assert (=> d!682520 m!2734947))

(assert (=> b!2307455 d!682520))

(declare-fun d!682522 () Bool)

(assert (=> d!682522 (= (list!10848 (charsOf!2797 (head!5064 tokens!456))) (list!10851 (c!365710 (charsOf!2797 (head!5064 tokens!456)))))))

(declare-fun bs!458001 () Bool)

(assert (= bs!458001 d!682522))

(declare-fun m!2734949 () Bool)

(assert (=> bs!458001 m!2734949))

(assert (=> b!2307455 d!682522))

(assert (=> b!2307455 d!682516))

(assert (=> b!2307455 d!682518))

(declare-fun d!682524 () Bool)

(declare-fun e!1479164 () Bool)

(assert (=> d!682524 e!1479164))

(declare-fun c!365787 () Bool)

(assert (=> d!682524 (= c!365787 ((_ is EmptyExpr!6757) (regex!4409 r!2363)))))

(declare-fun lt!856020 () Bool)

(declare-fun e!1479166 () Bool)

(assert (=> d!682524 (= lt!856020 e!1479166)))

(declare-fun c!365789 () Bool)

(assert (=> d!682524 (= c!365789 (isEmpty!15718 lt!855852))))

(assert (=> d!682524 (validRegex!2555 (regex!4409 r!2363))))

(assert (=> d!682524 (= (matchR!3014 (regex!4409 r!2363) lt!855852) lt!856020)))

(declare-fun b!2307871 () Bool)

(declare-fun res!986934 () Bool)

(declare-fun e!1479168 () Bool)

(assert (=> b!2307871 (=> res!986934 e!1479168)))

(assert (=> b!2307871 (= res!986934 (not ((_ is ElementMatch!6757) (regex!4409 r!2363))))))

(declare-fun e!1479169 () Bool)

(assert (=> b!2307871 (= e!1479169 e!1479168)))

(declare-fun b!2307872 () Bool)

(assert (=> b!2307872 (= e!1479164 e!1479169)))

(declare-fun c!365788 () Bool)

(assert (=> b!2307872 (= c!365788 ((_ is EmptyLang!6757) (regex!4409 r!2363)))))

(declare-fun b!2307873 () Bool)

(declare-fun e!1479170 () Bool)

(declare-fun e!1479165 () Bool)

(assert (=> b!2307873 (= e!1479170 e!1479165)))

(declare-fun res!986930 () Bool)

(assert (=> b!2307873 (=> res!986930 e!1479165)))

(declare-fun call!137193 () Bool)

(assert (=> b!2307873 (= res!986930 call!137193)))

(declare-fun b!2307874 () Bool)

(declare-fun e!1479167 () Bool)

(assert (=> b!2307874 (= e!1479167 (= (head!5065 lt!855852) (c!365711 (regex!4409 r!2363))))))

(declare-fun b!2307875 () Bool)

(assert (=> b!2307875 (= e!1479168 e!1479170)))

(declare-fun res!986932 () Bool)

(assert (=> b!2307875 (=> (not res!986932) (not e!1479170))))

(assert (=> b!2307875 (= res!986932 (not lt!856020))))

(declare-fun b!2307876 () Bool)

(assert (=> b!2307876 (= e!1479166 (matchR!3014 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 lt!855852)) (tail!3336 lt!855852)))))

(declare-fun b!2307877 () Bool)

(declare-fun res!986935 () Bool)

(assert (=> b!2307877 (=> res!986935 e!1479168)))

(assert (=> b!2307877 (= res!986935 e!1479167)))

(declare-fun res!986937 () Bool)

(assert (=> b!2307877 (=> (not res!986937) (not e!1479167))))

(assert (=> b!2307877 (= res!986937 lt!856020)))

(declare-fun bm!137188 () Bool)

(assert (=> bm!137188 (= call!137193 (isEmpty!15718 lt!855852))))

(declare-fun b!2307878 () Bool)

(declare-fun res!986933 () Bool)

(assert (=> b!2307878 (=> (not res!986933) (not e!1479167))))

(assert (=> b!2307878 (= res!986933 (not call!137193))))

(declare-fun b!2307879 () Bool)

(declare-fun res!986931 () Bool)

(assert (=> b!2307879 (=> (not res!986931) (not e!1479167))))

(assert (=> b!2307879 (= res!986931 (isEmpty!15718 (tail!3336 lt!855852)))))

(declare-fun b!2307880 () Bool)

(assert (=> b!2307880 (= e!1479166 (nullable!1894 (regex!4409 r!2363)))))

(declare-fun b!2307881 () Bool)

(assert (=> b!2307881 (= e!1479169 (not lt!856020))))

(declare-fun b!2307882 () Bool)

(assert (=> b!2307882 (= e!1479165 (not (= (head!5065 lt!855852) (c!365711 (regex!4409 r!2363)))))))

(declare-fun b!2307883 () Bool)

(assert (=> b!2307883 (= e!1479164 (= lt!856020 call!137193))))

(declare-fun b!2307884 () Bool)

(declare-fun res!986936 () Bool)

(assert (=> b!2307884 (=> res!986936 e!1479165)))

(assert (=> b!2307884 (= res!986936 (not (isEmpty!15718 (tail!3336 lt!855852))))))

(assert (= (and d!682524 c!365789) b!2307880))

(assert (= (and d!682524 (not c!365789)) b!2307876))

(assert (= (and d!682524 c!365787) b!2307883))

(assert (= (and d!682524 (not c!365787)) b!2307872))

(assert (= (and b!2307872 c!365788) b!2307881))

(assert (= (and b!2307872 (not c!365788)) b!2307871))

(assert (= (and b!2307871 (not res!986934)) b!2307877))

(assert (= (and b!2307877 res!986937) b!2307878))

(assert (= (and b!2307878 res!986933) b!2307879))

(assert (= (and b!2307879 res!986931) b!2307874))

(assert (= (and b!2307877 (not res!986935)) b!2307875))

(assert (= (and b!2307875 res!986932) b!2307873))

(assert (= (and b!2307873 (not res!986930)) b!2307884))

(assert (= (and b!2307884 (not res!986936)) b!2307882))

(assert (= (or b!2307883 b!2307878 b!2307873) bm!137188))

(assert (=> b!2307879 m!2734613))

(assert (=> b!2307879 m!2734613))

(declare-fun m!2734951 () Bool)

(assert (=> b!2307879 m!2734951))

(assert (=> b!2307884 m!2734613))

(assert (=> b!2307884 m!2734613))

(assert (=> b!2307884 m!2734951))

(assert (=> b!2307876 m!2734607))

(assert (=> b!2307876 m!2734607))

(declare-fun m!2734953 () Bool)

(assert (=> b!2307876 m!2734953))

(assert (=> b!2307876 m!2734613))

(assert (=> b!2307876 m!2734953))

(assert (=> b!2307876 m!2734613))

(declare-fun m!2734955 () Bool)

(assert (=> b!2307876 m!2734955))

(assert (=> b!2307882 m!2734607))

(assert (=> b!2307874 m!2734607))

(assert (=> b!2307880 m!2734943))

(declare-fun m!2734957 () Bool)

(assert (=> bm!137188 m!2734957))

(assert (=> d!682524 m!2734957))

(assert (=> d!682524 m!2734947))

(assert (=> b!2307473 d!682524))

(declare-fun b!2307886 () Bool)

(declare-fun res!986941 () Bool)

(declare-fun e!1479171 () Bool)

(assert (=> b!2307886 (=> (not res!986941) (not e!1479171))))

(assert (=> b!2307886 (= res!986941 (= (head!5065 otherP!12) (head!5065 input!1722)))))

(declare-fun b!2307885 () Bool)

(declare-fun e!1479172 () Bool)

(assert (=> b!2307885 (= e!1479172 e!1479171)))

(declare-fun res!986938 () Bool)

(assert (=> b!2307885 (=> (not res!986938) (not e!1479171))))

(assert (=> b!2307885 (= res!986938 (not ((_ is Nil!27479) input!1722)))))

(declare-fun b!2307888 () Bool)

(declare-fun e!1479173 () Bool)

(assert (=> b!2307888 (= e!1479173 (>= (size!21687 input!1722) (size!21687 otherP!12)))))

(declare-fun d!682526 () Bool)

(assert (=> d!682526 e!1479173))

(declare-fun res!986939 () Bool)

(assert (=> d!682526 (=> res!986939 e!1479173)))

(declare-fun lt!856021 () Bool)

(assert (=> d!682526 (= res!986939 (not lt!856021))))

(assert (=> d!682526 (= lt!856021 e!1479172)))

(declare-fun res!986940 () Bool)

(assert (=> d!682526 (=> res!986940 e!1479172)))

(assert (=> d!682526 (= res!986940 ((_ is Nil!27479) otherP!12))))

(assert (=> d!682526 (= (isPrefix!2399 otherP!12 input!1722) lt!856021)))

(declare-fun b!2307887 () Bool)

(assert (=> b!2307887 (= e!1479171 (isPrefix!2399 (tail!3336 otherP!12) (tail!3336 input!1722)))))

(assert (= (and d!682526 (not res!986940)) b!2307885))

(assert (= (and b!2307885 res!986938) b!2307886))

(assert (= (and b!2307886 res!986941) b!2307887))

(assert (= (and d!682526 (not res!986939)) b!2307888))

(declare-fun m!2734959 () Bool)

(assert (=> b!2307886 m!2734959))

(assert (=> b!2307886 m!2734739))

(assert (=> b!2307888 m!2734621))

(assert (=> b!2307888 m!2734467))

(declare-fun m!2734961 () Bool)

(assert (=> b!2307887 m!2734961))

(assert (=> b!2307887 m!2734623))

(assert (=> b!2307887 m!2734961))

(assert (=> b!2307887 m!2734623))

(declare-fun m!2734963 () Bool)

(assert (=> b!2307887 m!2734963))

(assert (=> b!2307472 d!682526))

(declare-fun d!682528 () Bool)

(assert (=> d!682528 (= (maxPrefixOneRule!1432 thiss!16613 r!2363 input!1722) (Some!5406 (tuple2!27403 (Token!8297 (apply!6671 (transformation!4409 r!2363) (seqFromList!3113 lt!855852)) r!2363 (size!21687 lt!855852) lt!855852) (_2!16211 lt!855868))))))

(declare-fun lt!856024 () Unit!40394)

(declare-fun choose!13496 (LexerInterface!4006 List!27575 List!27573 List!27573 List!27573 Rule!8618) Unit!40394)

(assert (=> d!682528 (= lt!856024 (choose!13496 thiss!16613 rules!1750 lt!855852 input!1722 (_2!16211 lt!855868) r!2363))))

(assert (=> d!682528 (not (isEmpty!15713 rules!1750))))

(assert (=> d!682528 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!605 thiss!16613 rules!1750 lt!855852 input!1722 (_2!16211 lt!855868) r!2363) lt!856024)))

(declare-fun bs!458002 () Bool)

(assert (= bs!458002 d!682528))

(assert (=> bs!458002 m!2734475))

(assert (=> bs!458002 m!2734517))

(declare-fun m!2734965 () Bool)

(assert (=> bs!458002 m!2734965))

(assert (=> bs!458002 m!2734517))

(declare-fun m!2734967 () Bool)

(assert (=> bs!458002 m!2734967))

(assert (=> bs!458002 m!2734515))

(assert (=> bs!458002 m!2734491))

(assert (=> b!2307471 d!682528))

(declare-fun d!682530 () Bool)

(declare-fun fromListB!1406 (List!27573) BalanceConc!17660)

(assert (=> d!682530 (= (seqFromList!3113 lt!855852) (fromListB!1406 lt!855852))))

(declare-fun bs!458003 () Bool)

(assert (= bs!458003 d!682530))

(declare-fun m!2734969 () Bool)

(assert (=> bs!458003 m!2734969))

(assert (=> b!2307471 d!682530))

(declare-fun d!682532 () Bool)

(assert (=> d!682532 (= (apply!6671 (transformation!4409 r!2363) lt!855861) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861))))

(declare-fun b_lambda!73529 () Bool)

(assert (=> (not b_lambda!73529) (not d!682532)))

(assert (=> d!682532 t!206561))

(declare-fun b_and!184337 () Bool)

(assert (= b_and!184321 (and (=> t!206561 result!168480) b_and!184337)))

(assert (=> d!682532 t!206563))

(declare-fun b_and!184339 () Bool)

(assert (= b_and!184323 (and (=> t!206563 result!168484) b_and!184339)))

(assert (=> d!682532 t!206565))

(declare-fun b_and!184341 () Bool)

(assert (= b_and!184325 (and (=> t!206565 result!168486) b_and!184341)))

(assert (=> d!682532 t!206567))

(declare-fun b_and!184343 () Bool)

(assert (= b_and!184327 (and (=> t!206567 result!168488) b_and!184343)))

(assert (=> d!682532 m!2734889))

(assert (=> b!2307471 d!682532))

(declare-fun b!2307890 () Bool)

(declare-fun res!986945 () Bool)

(declare-fun e!1479174 () Bool)

(assert (=> b!2307890 (=> (not res!986945) (not e!1479174))))

(assert (=> b!2307890 (= res!986945 (= (head!5065 lt!855852) (head!5065 input!1722)))))

(declare-fun b!2307889 () Bool)

(declare-fun e!1479175 () Bool)

(assert (=> b!2307889 (= e!1479175 e!1479174)))

(declare-fun res!986942 () Bool)

(assert (=> b!2307889 (=> (not res!986942) (not e!1479174))))

(assert (=> b!2307889 (= res!986942 (not ((_ is Nil!27479) input!1722)))))

(declare-fun b!2307892 () Bool)

(declare-fun e!1479176 () Bool)

(assert (=> b!2307892 (= e!1479176 (>= (size!21687 input!1722) (size!21687 lt!855852)))))

(declare-fun d!682534 () Bool)

(assert (=> d!682534 e!1479176))

(declare-fun res!986943 () Bool)

(assert (=> d!682534 (=> res!986943 e!1479176)))

(declare-fun lt!856025 () Bool)

(assert (=> d!682534 (= res!986943 (not lt!856025))))

(assert (=> d!682534 (= lt!856025 e!1479175)))

(declare-fun res!986944 () Bool)

(assert (=> d!682534 (=> res!986944 e!1479175)))

(assert (=> d!682534 (= res!986944 ((_ is Nil!27479) lt!855852))))

(assert (=> d!682534 (= (isPrefix!2399 lt!855852 input!1722) lt!856025)))

(declare-fun b!2307891 () Bool)

(assert (=> b!2307891 (= e!1479174 (isPrefix!2399 (tail!3336 lt!855852) (tail!3336 input!1722)))))

(assert (= (and d!682534 (not res!986944)) b!2307889))

(assert (= (and b!2307889 res!986942) b!2307890))

(assert (= (and b!2307890 res!986945) b!2307891))

(assert (= (and d!682534 (not res!986943)) b!2307892))

(assert (=> b!2307890 m!2734607))

(assert (=> b!2307890 m!2734739))

(assert (=> b!2307892 m!2734621))

(assert (=> b!2307892 m!2734491))

(assert (=> b!2307891 m!2734613))

(assert (=> b!2307891 m!2734623))

(assert (=> b!2307891 m!2734613))

(assert (=> b!2307891 m!2734623))

(declare-fun m!2734971 () Bool)

(assert (=> b!2307891 m!2734971))

(assert (=> b!2307471 d!682534))

(declare-fun b!2307912 () Bool)

(declare-fun e!1479186 () Option!5407)

(declare-datatypes ((tuple2!27410 0))(
  ( (tuple2!27411 (_1!16215 List!27573) (_2!16215 List!27573)) )
))
(declare-fun lt!856039 () tuple2!27410)

(assert (=> b!2307912 (= e!1479186 (Some!5406 (tuple2!27403 (Token!8297 (apply!6671 (transformation!4409 r!2363) (seqFromList!3113 (_1!16215 lt!856039))) r!2363 (size!21686 (seqFromList!3113 (_1!16215 lt!856039))) (_1!16215 lt!856039)) (_2!16215 lt!856039))))))

(declare-fun lt!856038 () Unit!40394)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!712 (Regex!6757 List!27573) Unit!40394)

(assert (=> b!2307912 (= lt!856038 (longestMatchIsAcceptedByMatchOrIsEmpty!712 (regex!4409 r!2363) input!1722))))

(declare-fun res!986961 () Bool)

(declare-fun findLongestMatchInner!739 (Regex!6757 List!27573 Int List!27573 List!27573 Int) tuple2!27410)

(assert (=> b!2307912 (= res!986961 (isEmpty!15718 (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)))))))

(declare-fun e!1479185 () Bool)

(assert (=> b!2307912 (=> res!986961 e!1479185)))

(assert (=> b!2307912 e!1479185))

(declare-fun lt!856036 () Unit!40394)

(assert (=> b!2307912 (= lt!856036 lt!856038)))

(declare-fun lt!856037 () Unit!40394)

(assert (=> b!2307912 (= lt!856037 (lemmaSemiInverse!1088 (transformation!4409 r!2363) (seqFromList!3113 (_1!16215 lt!856039))))))

(declare-fun b!2307913 () Bool)

(assert (=> b!2307913 (= e!1479185 (matchR!3014 (regex!4409 r!2363) (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)))))))

(declare-fun b!2307914 () Bool)

(declare-fun e!1479188 () Bool)

(declare-fun e!1479187 () Bool)

(assert (=> b!2307914 (= e!1479188 e!1479187)))

(declare-fun res!986963 () Bool)

(assert (=> b!2307914 (=> (not res!986963) (not e!1479187))))

(declare-fun lt!856040 () Option!5407)

(assert (=> b!2307914 (= res!986963 (matchR!3014 (regex!4409 r!2363) (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040))))))))

(declare-fun b!2307915 () Bool)

(assert (=> b!2307915 (= e!1479187 (= (size!21685 (_1!16211 (get!8285 lt!856040))) (size!21687 (originalCharacters!5179 (_1!16211 (get!8285 lt!856040))))))))

(declare-fun b!2307916 () Bool)

(assert (=> b!2307916 (= e!1479186 None!5406)))

(declare-fun b!2307917 () Bool)

(declare-fun res!986960 () Bool)

(assert (=> b!2307917 (=> (not res!986960) (not e!1479187))))

(assert (=> b!2307917 (= res!986960 (< (size!21687 (_2!16211 (get!8285 lt!856040))) (size!21687 input!1722)))))

(declare-fun b!2307918 () Bool)

(declare-fun res!986962 () Bool)

(assert (=> b!2307918 (=> (not res!986962) (not e!1479187))))

(assert (=> b!2307918 (= res!986962 (= (rule!6761 (_1!16211 (get!8285 lt!856040))) r!2363))))

(declare-fun b!2307919 () Bool)

(declare-fun res!986965 () Bool)

(assert (=> b!2307919 (=> (not res!986965) (not e!1479187))))

(assert (=> b!2307919 (= res!986965 (= (++!6727 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040)))) (_2!16211 (get!8285 lt!856040))) input!1722))))

(declare-fun d!682536 () Bool)

(assert (=> d!682536 e!1479188))

(declare-fun res!986966 () Bool)

(assert (=> d!682536 (=> res!986966 e!1479188)))

(assert (=> d!682536 (= res!986966 (isEmpty!15716 lt!856040))))

(assert (=> d!682536 (= lt!856040 e!1479186)))

(declare-fun c!365792 () Bool)

(assert (=> d!682536 (= c!365792 (isEmpty!15718 (_1!16215 lt!856039)))))

(declare-fun findLongestMatch!668 (Regex!6757 List!27573) tuple2!27410)

(assert (=> d!682536 (= lt!856039 (findLongestMatch!668 (regex!4409 r!2363) input!1722))))

(assert (=> d!682536 (ruleValid!1499 thiss!16613 r!2363)))

(assert (=> d!682536 (= (maxPrefixOneRule!1432 thiss!16613 r!2363 input!1722) lt!856040)))

(declare-fun b!2307911 () Bool)

(declare-fun res!986964 () Bool)

(assert (=> b!2307911 (=> (not res!986964) (not e!1479187))))

(assert (=> b!2307911 (= res!986964 (= (value!139476 (_1!16211 (get!8285 lt!856040))) (apply!6671 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))) (seqFromList!3113 (originalCharacters!5179 (_1!16211 (get!8285 lt!856040)))))))))

(assert (= (and d!682536 c!365792) b!2307916))

(assert (= (and d!682536 (not c!365792)) b!2307912))

(assert (= (and b!2307912 (not res!986961)) b!2307913))

(assert (= (and d!682536 (not res!986966)) b!2307914))

(assert (= (and b!2307914 res!986963) b!2307919))

(assert (= (and b!2307919 res!986965) b!2307917))

(assert (= (and b!2307917 res!986960) b!2307918))

(assert (= (and b!2307918 res!986962) b!2307911))

(assert (= (and b!2307911 res!986964) b!2307915))

(declare-fun m!2734973 () Bool)

(assert (=> b!2307918 m!2734973))

(assert (=> b!2307914 m!2734973))

(declare-fun m!2734975 () Bool)

(assert (=> b!2307914 m!2734975))

(assert (=> b!2307914 m!2734975))

(declare-fun m!2734977 () Bool)

(assert (=> b!2307914 m!2734977))

(assert (=> b!2307914 m!2734977))

(declare-fun m!2734979 () Bool)

(assert (=> b!2307914 m!2734979))

(declare-fun m!2734981 () Bool)

(assert (=> d!682536 m!2734981))

(declare-fun m!2734983 () Bool)

(assert (=> d!682536 m!2734983))

(declare-fun m!2734985 () Bool)

(assert (=> d!682536 m!2734985))

(assert (=> d!682536 m!2734551))

(assert (=> b!2307915 m!2734973))

(declare-fun m!2734987 () Bool)

(assert (=> b!2307915 m!2734987))

(assert (=> b!2307919 m!2734973))

(assert (=> b!2307919 m!2734975))

(assert (=> b!2307919 m!2734975))

(assert (=> b!2307919 m!2734977))

(assert (=> b!2307919 m!2734977))

(declare-fun m!2734989 () Bool)

(assert (=> b!2307919 m!2734989))

(declare-fun m!2734991 () Bool)

(assert (=> b!2307913 m!2734991))

(assert (=> b!2307913 m!2734621))

(assert (=> b!2307913 m!2734991))

(assert (=> b!2307913 m!2734621))

(declare-fun m!2734993 () Bool)

(assert (=> b!2307913 m!2734993))

(declare-fun m!2734995 () Bool)

(assert (=> b!2307913 m!2734995))

(declare-fun m!2734997 () Bool)

(assert (=> b!2307912 m!2734997))

(declare-fun m!2734999 () Bool)

(assert (=> b!2307912 m!2734999))

(assert (=> b!2307912 m!2734997))

(declare-fun m!2735001 () Bool)

(assert (=> b!2307912 m!2735001))

(assert (=> b!2307912 m!2734621))

(declare-fun m!2735003 () Bool)

(assert (=> b!2307912 m!2735003))

(assert (=> b!2307912 m!2734997))

(declare-fun m!2735005 () Bool)

(assert (=> b!2307912 m!2735005))

(assert (=> b!2307912 m!2734991))

(assert (=> b!2307912 m!2734621))

(assert (=> b!2307912 m!2734993))

(assert (=> b!2307912 m!2734997))

(declare-fun m!2735007 () Bool)

(assert (=> b!2307912 m!2735007))

(assert (=> b!2307912 m!2734991))

(assert (=> b!2307911 m!2734973))

(declare-fun m!2735009 () Bool)

(assert (=> b!2307911 m!2735009))

(assert (=> b!2307911 m!2735009))

(declare-fun m!2735011 () Bool)

(assert (=> b!2307911 m!2735011))

(assert (=> b!2307917 m!2734973))

(declare-fun m!2735013 () Bool)

(assert (=> b!2307917 m!2735013))

(assert (=> b!2307917 m!2734621))

(assert (=> b!2307471 d!682536))

(declare-fun d!682538 () Bool)

(declare-fun res!986971 () Bool)

(declare-fun e!1479191 () Bool)

(assert (=> d!682538 (=> (not res!986971) (not e!1479191))))

(assert (=> d!682538 (= res!986971 (not (isEmpty!15718 (originalCharacters!5179 (h!32881 tokens!456)))))))

(assert (=> d!682538 (= (inv!37121 (h!32881 tokens!456)) e!1479191)))

(declare-fun b!2307924 () Bool)

(declare-fun res!986972 () Bool)

(assert (=> b!2307924 (=> (not res!986972) (not e!1479191))))

(assert (=> b!2307924 (= res!986972 (= (originalCharacters!5179 (h!32881 tokens!456)) (list!10848 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456))))))))

(declare-fun b!2307925 () Bool)

(assert (=> b!2307925 (= e!1479191 (= (size!21685 (h!32881 tokens!456)) (size!21687 (originalCharacters!5179 (h!32881 tokens!456)))))))

(assert (= (and d!682538 res!986971) b!2307924))

(assert (= (and b!2307924 res!986972) b!2307925))

(declare-fun b_lambda!73531 () Bool)

(assert (=> (not b_lambda!73531) (not b!2307924)))

(assert (=> b!2307924 t!206537))

(declare-fun b_and!184345 () Bool)

(assert (= b_and!184329 (and (=> t!206537 result!168454) b_and!184345)))

(assert (=> b!2307924 t!206539))

(declare-fun b_and!184347 () Bool)

(assert (= b_and!184331 (and (=> t!206539 result!168458) b_and!184347)))

(assert (=> b!2307924 t!206541))

(declare-fun b_and!184349 () Bool)

(assert (= b_and!184333 (and (=> t!206541 result!168460) b_and!184349)))

(assert (=> b!2307924 t!206543))

(declare-fun b_and!184351 () Bool)

(assert (= b_and!184335 (and (=> t!206543 result!168462) b_and!184351)))

(declare-fun m!2735015 () Bool)

(assert (=> d!682538 m!2735015))

(assert (=> b!2307924 m!2734721))

(assert (=> b!2307924 m!2734721))

(declare-fun m!2735017 () Bool)

(assert (=> b!2307924 m!2735017))

(declare-fun m!2735019 () Bool)

(assert (=> b!2307925 m!2735019))

(assert (=> b!2307469 d!682538))

(declare-fun d!682540 () Bool)

(declare-fun list!10853 (Conc!8967) List!27574)

(assert (=> d!682540 (= (list!10849 (_1!16212 lt!855866)) (list!10853 (c!365712 (_1!16212 lt!855866))))))

(declare-fun bs!458004 () Bool)

(assert (= bs!458004 d!682540))

(declare-fun m!2735021 () Bool)

(assert (=> bs!458004 m!2735021))

(assert (=> b!2307468 d!682540))

(declare-fun d!682542 () Bool)

(assert (=> d!682542 (= (list!10848 (_2!16212 lt!855866)) (list!10851 (c!365710 (_2!16212 lt!855866))))))

(declare-fun bs!458005 () Bool)

(assert (= bs!458005 d!682542))

(declare-fun m!2735023 () Bool)

(assert (=> bs!458005 m!2735023))

(assert (=> b!2307468 d!682542))

(declare-fun b!2308009 () Bool)

(declare-fun e!1479253 () Bool)

(declare-fun lt!856049 () tuple2!27404)

(declare-fun isEmpty!15720 (BalanceConc!17662) Bool)

(assert (=> b!2308009 (= e!1479253 (not (isEmpty!15720 (_1!16212 lt!856049))))))

(declare-fun b!2308010 () Bool)

(declare-fun e!1479252 () Bool)

(assert (=> b!2308010 (= e!1479252 e!1479253)))

(declare-fun res!986999 () Bool)

(assert (=> b!2308010 (= res!986999 (< (size!21686 (_2!16212 lt!856049)) (size!21686 (seqFromList!3113 input!1722))))))

(assert (=> b!2308010 (=> (not res!986999) (not e!1479253))))

(declare-fun d!682544 () Bool)

(declare-fun e!1479254 () Bool)

(assert (=> d!682544 e!1479254))

(declare-fun res!986998 () Bool)

(assert (=> d!682544 (=> (not res!986998) (not e!1479254))))

(assert (=> d!682544 (= res!986998 e!1479252)))

(declare-fun c!365798 () Bool)

(declare-fun size!21691 (BalanceConc!17662) Int)

(assert (=> d!682544 (= c!365798 (> (size!21691 (_1!16212 lt!856049)) 0))))

(declare-fun lexTailRecV2!815 (LexerInterface!4006 List!27575 BalanceConc!17660 BalanceConc!17660 BalanceConc!17660 BalanceConc!17662) tuple2!27404)

(assert (=> d!682544 (= lt!856049 (lexTailRecV2!815 thiss!16613 rules!1750 (seqFromList!3113 input!1722) (BalanceConc!17661 Empty!8966) (seqFromList!3113 input!1722) (BalanceConc!17663 Empty!8967)))))

(assert (=> d!682544 (= (lex!1845 thiss!16613 rules!1750 (seqFromList!3113 input!1722)) lt!856049)))

(declare-fun b!2308011 () Bool)

(assert (=> b!2308011 (= e!1479252 (= (_2!16212 lt!856049) (seqFromList!3113 input!1722)))))

(declare-fun b!2308012 () Bool)

(declare-fun res!986997 () Bool)

(assert (=> b!2308012 (=> (not res!986997) (not e!1479254))))

(declare-fun lexList!1140 (LexerInterface!4006 List!27575 List!27573) tuple2!27406)

(assert (=> b!2308012 (= res!986997 (= (list!10849 (_1!16212 lt!856049)) (_1!16213 (lexList!1140 thiss!16613 rules!1750 (list!10848 (seqFromList!3113 input!1722))))))))

(declare-fun b!2308013 () Bool)

(assert (=> b!2308013 (= e!1479254 (= (list!10848 (_2!16212 lt!856049)) (_2!16213 (lexList!1140 thiss!16613 rules!1750 (list!10848 (seqFromList!3113 input!1722))))))))

(assert (= (and d!682544 c!365798) b!2308010))

(assert (= (and d!682544 (not c!365798)) b!2308011))

(assert (= (and b!2308010 res!986999) b!2308009))

(assert (= (and d!682544 res!986998) b!2308012))

(assert (= (and b!2308012 res!986997) b!2308013))

(declare-fun m!2735077 () Bool)

(assert (=> b!2308009 m!2735077))

(declare-fun m!2735079 () Bool)

(assert (=> b!2308010 m!2735079))

(assert (=> b!2308010 m!2734535))

(declare-fun m!2735081 () Bool)

(assert (=> b!2308010 m!2735081))

(declare-fun m!2735083 () Bool)

(assert (=> d!682544 m!2735083))

(assert (=> d!682544 m!2734535))

(assert (=> d!682544 m!2734535))

(declare-fun m!2735085 () Bool)

(assert (=> d!682544 m!2735085))

(declare-fun m!2735087 () Bool)

(assert (=> b!2308012 m!2735087))

(assert (=> b!2308012 m!2734535))

(declare-fun m!2735089 () Bool)

(assert (=> b!2308012 m!2735089))

(assert (=> b!2308012 m!2735089))

(declare-fun m!2735091 () Bool)

(assert (=> b!2308012 m!2735091))

(declare-fun m!2735093 () Bool)

(assert (=> b!2308013 m!2735093))

(assert (=> b!2308013 m!2734535))

(assert (=> b!2308013 m!2735089))

(assert (=> b!2308013 m!2735089))

(assert (=> b!2308013 m!2735091))

(assert (=> b!2307468 d!682544))

(declare-fun d!682566 () Bool)

(assert (=> d!682566 (= (seqFromList!3113 input!1722) (fromListB!1406 input!1722))))

(declare-fun bs!458007 () Bool)

(assert (= bs!458007 d!682566))

(declare-fun m!2735095 () Bool)

(assert (=> bs!458007 m!2735095))

(assert (=> b!2307468 d!682566))

(declare-fun d!682568 () Bool)

(declare-fun res!987000 () Bool)

(declare-fun e!1479259 () Bool)

(assert (=> d!682568 (=> (not res!987000) (not e!1479259))))

(assert (=> d!682568 (= res!987000 (validRegex!2555 (regex!4409 r!2363)))))

(assert (=> d!682568 (= (ruleValid!1499 thiss!16613 r!2363) e!1479259)))

(declare-fun b!2308017 () Bool)

(declare-fun res!987001 () Bool)

(assert (=> b!2308017 (=> (not res!987001) (not e!1479259))))

(assert (=> b!2308017 (= res!987001 (not (nullable!1894 (regex!4409 r!2363))))))

(declare-fun b!2308018 () Bool)

(assert (=> b!2308018 (= e!1479259 (not (= (tag!4899 r!2363) (String!29960 ""))))))

(assert (= (and d!682568 res!987000) b!2308017))

(assert (= (and b!2308017 res!987001) b!2308018))

(assert (=> d!682568 m!2734947))

(assert (=> b!2308017 m!2734943))

(assert (=> b!2307467 d!682568))

(declare-fun d!682570 () Bool)

(assert (=> d!682570 (ruleValid!1499 thiss!16613 r!2363)))

(declare-fun lt!856050 () Unit!40394)

(assert (=> d!682570 (= lt!856050 (choose!13494 thiss!16613 r!2363 rules!1750))))

(assert (=> d!682570 (contains!4797 rules!1750 r!2363)))

(assert (=> d!682570 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!904 thiss!16613 r!2363 rules!1750) lt!856050)))

(declare-fun bs!458008 () Bool)

(assert (= bs!458008 d!682570))

(assert (=> bs!458008 m!2734551))

(declare-fun m!2735101 () Bool)

(assert (=> bs!458008 m!2735101))

(assert (=> bs!458008 m!2734477))

(assert (=> b!2307467 d!682570))

(assert (=> b!2307488 d!682518))

(declare-fun b!2308042 () Bool)

(declare-fun e!1479271 () Bool)

(declare-fun inv!15 (TokenValue!4571) Bool)

(assert (=> b!2308042 (= e!1479271 (inv!15 (value!139476 (h!32881 tokens!456))))))

(declare-fun d!682572 () Bool)

(declare-fun c!365804 () Bool)

(assert (=> d!682572 (= c!365804 ((_ is IntegerValue!13713) (value!139476 (h!32881 tokens!456))))))

(declare-fun e!1479270 () Bool)

(assert (=> d!682572 (= (inv!21 (value!139476 (h!32881 tokens!456))) e!1479270)))

(declare-fun b!2308043 () Bool)

(declare-fun e!1479272 () Bool)

(assert (=> b!2308043 (= e!1479270 e!1479272)))

(declare-fun c!365803 () Bool)

(assert (=> b!2308043 (= c!365803 ((_ is IntegerValue!13714) (value!139476 (h!32881 tokens!456))))))

(declare-fun b!2308044 () Bool)

(declare-fun res!987004 () Bool)

(assert (=> b!2308044 (=> res!987004 e!1479271)))

(assert (=> b!2308044 (= res!987004 (not ((_ is IntegerValue!13715) (value!139476 (h!32881 tokens!456)))))))

(assert (=> b!2308044 (= e!1479272 e!1479271)))

(declare-fun b!2308045 () Bool)

(declare-fun inv!17 (TokenValue!4571) Bool)

(assert (=> b!2308045 (= e!1479272 (inv!17 (value!139476 (h!32881 tokens!456))))))

(declare-fun b!2308046 () Bool)

(declare-fun inv!16 (TokenValue!4571) Bool)

(assert (=> b!2308046 (= e!1479270 (inv!16 (value!139476 (h!32881 tokens!456))))))

(assert (= (and d!682572 c!365804) b!2308046))

(assert (= (and d!682572 (not c!365804)) b!2308043))

(assert (= (and b!2308043 c!365803) b!2308045))

(assert (= (and b!2308043 (not c!365803)) b!2308044))

(assert (= (and b!2308044 (not res!987004)) b!2308042))

(declare-fun m!2735103 () Bool)

(assert (=> b!2308042 m!2735103))

(declare-fun m!2735105 () Bool)

(assert (=> b!2308045 m!2735105))

(declare-fun m!2735107 () Bool)

(assert (=> b!2308046 m!2735107))

(assert (=> b!2307466 d!682572))

(declare-fun d!682574 () Bool)

(assert (=> d!682574 (= (inv!37117 (tag!4899 otherR!12)) (= (mod (str.len (value!139475 (tag!4899 otherR!12))) 2) 0))))

(assert (=> b!2307486 d!682574))

(declare-fun d!682576 () Bool)

(declare-fun res!987005 () Bool)

(declare-fun e!1479273 () Bool)

(assert (=> d!682576 (=> (not res!987005) (not e!1479273))))

(assert (=> d!682576 (= res!987005 (semiInverseModEq!1796 (toChars!6082 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 otherR!12))))))

(assert (=> d!682576 (= (inv!37120 (transformation!4409 otherR!12)) e!1479273)))

(declare-fun b!2308047 () Bool)

(assert (=> b!2308047 (= e!1479273 (equivClasses!1715 (toChars!6082 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 otherR!12))))))

(assert (= (and d!682576 res!987005) b!2308047))

(declare-fun m!2735109 () Bool)

(assert (=> d!682576 m!2735109))

(declare-fun m!2735111 () Bool)

(assert (=> b!2308047 m!2735111))

(assert (=> b!2307486 d!682576))

(declare-fun d!682578 () Bool)

(assert (=> d!682578 (= r!2363 otherR!12)))

(declare-fun lt!856053 () Unit!40394)

(declare-fun choose!13499 (List!27575 Rule!8618 Rule!8618) Unit!40394)

(assert (=> d!682578 (= lt!856053 (choose!13499 rules!1750 r!2363 otherR!12))))

(assert (=> d!682578 (contains!4797 rules!1750 r!2363)))

(assert (=> d!682578 (= (lemmaSameIndexThenSameElement!202 rules!1750 r!2363 otherR!12) lt!856053)))

(declare-fun bs!458009 () Bool)

(assert (= bs!458009 d!682578))

(declare-fun m!2735113 () Bool)

(assert (=> bs!458009 m!2735113))

(assert (=> bs!458009 m!2734477))

(assert (=> b!2307464 d!682578))

(declare-fun d!682580 () Bool)

(declare-fun lt!856054 () Bool)

(assert (=> d!682580 (= lt!856054 (select (content!3715 rules!1750) r!2363))))

(declare-fun e!1479275 () Bool)

(assert (=> d!682580 (= lt!856054 e!1479275)))

(declare-fun res!987007 () Bool)

(assert (=> d!682580 (=> (not res!987007) (not e!1479275))))

(assert (=> d!682580 (= res!987007 ((_ is Cons!27481) rules!1750))))

(assert (=> d!682580 (= (contains!4797 rules!1750 r!2363) lt!856054)))

(declare-fun b!2308048 () Bool)

(declare-fun e!1479274 () Bool)

(assert (=> b!2308048 (= e!1479275 e!1479274)))

(declare-fun res!987006 () Bool)

(assert (=> b!2308048 (=> res!987006 e!1479274)))

(assert (=> b!2308048 (= res!987006 (= (h!32882 rules!1750) r!2363))))

(declare-fun b!2308049 () Bool)

(assert (=> b!2308049 (= e!1479274 (contains!4797 (t!206519 rules!1750) r!2363))))

(assert (= (and d!682580 res!987007) b!2308048))

(assert (= (and b!2308048 (not res!987006)) b!2308049))

(assert (=> d!682580 m!2734901))

(declare-fun m!2735115 () Bool)

(assert (=> d!682580 m!2735115))

(declare-fun m!2735117 () Bool)

(assert (=> b!2308049 m!2735117))

(assert (=> b!2307485 d!682580))

(declare-fun b!2308060 () Bool)

(declare-fun e!1479278 () Bool)

(assert (=> b!2308060 (= e!1479278 tp_is_empty!10735)))

(assert (=> b!2307461 (= tp!732179 e!1479278)))

(declare-fun b!2308061 () Bool)

(declare-fun tp!732274 () Bool)

(declare-fun tp!732273 () Bool)

(assert (=> b!2308061 (= e!1479278 (and tp!732274 tp!732273))))

(declare-fun b!2308063 () Bool)

(declare-fun tp!732271 () Bool)

(declare-fun tp!732272 () Bool)

(assert (=> b!2308063 (= e!1479278 (and tp!732271 tp!732272))))

(declare-fun b!2308062 () Bool)

(declare-fun tp!732275 () Bool)

(assert (=> b!2308062 (= e!1479278 tp!732275)))

(assert (= (and b!2307461 ((_ is ElementMatch!6757) (regex!4409 (h!32882 rules!1750)))) b!2308060))

(assert (= (and b!2307461 ((_ is Concat!11329) (regex!4409 (h!32882 rules!1750)))) b!2308061))

(assert (= (and b!2307461 ((_ is Star!6757) (regex!4409 (h!32882 rules!1750)))) b!2308062))

(assert (= (and b!2307461 ((_ is Union!6757) (regex!4409 (h!32882 rules!1750)))) b!2308063))

(declare-fun b!2308064 () Bool)

(declare-fun e!1479279 () Bool)

(assert (=> b!2308064 (= e!1479279 tp_is_empty!10735)))

(assert (=> b!2307481 (= tp!732183 e!1479279)))

(declare-fun b!2308065 () Bool)

(declare-fun tp!732279 () Bool)

(declare-fun tp!732278 () Bool)

(assert (=> b!2308065 (= e!1479279 (and tp!732279 tp!732278))))

(declare-fun b!2308067 () Bool)

(declare-fun tp!732276 () Bool)

(declare-fun tp!732277 () Bool)

(assert (=> b!2308067 (= e!1479279 (and tp!732276 tp!732277))))

(declare-fun b!2308066 () Bool)

(declare-fun tp!732280 () Bool)

(assert (=> b!2308066 (= e!1479279 tp!732280)))

(assert (= (and b!2307481 ((_ is ElementMatch!6757) (regex!4409 (rule!6761 (h!32881 tokens!456))))) b!2308064))

(assert (= (and b!2307481 ((_ is Concat!11329) (regex!4409 (rule!6761 (h!32881 tokens!456))))) b!2308065))

(assert (= (and b!2307481 ((_ is Star!6757) (regex!4409 (rule!6761 (h!32881 tokens!456))))) b!2308066))

(assert (= (and b!2307481 ((_ is Union!6757) (regex!4409 (rule!6761 (h!32881 tokens!456))))) b!2308067))

(declare-fun b!2308072 () Bool)

(declare-fun e!1479282 () Bool)

(declare-fun tp!732283 () Bool)

(assert (=> b!2308072 (= e!1479282 (and tp_is_empty!10735 tp!732283))))

(assert (=> b!2307470 (= tp!732174 e!1479282)))

(assert (= (and b!2307470 ((_ is Cons!27479) (t!206517 input!1722))) b!2308072))

(declare-fun b!2308086 () Bool)

(declare-fun b_free!69877 () Bool)

(declare-fun b_next!70581 () Bool)

(assert (=> b!2308086 (= b_free!69877 (not b_next!70581))))

(declare-fun t!206601 () Bool)

(declare-fun tb!138239 () Bool)

(assert (=> (and b!2308086 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toValue!6223 (transformation!4409 r!2363))) t!206601) tb!138239))

(declare-fun result!168536 () Bool)

(assert (= result!168536 result!168480))

(assert (=> d!682442 t!206601))

(assert (=> d!682532 t!206601))

(declare-fun b_and!184377 () Bool)

(declare-fun tp!732295 () Bool)

(assert (=> b!2308086 (= tp!732295 (and (=> t!206601 result!168536) b_and!184377))))

(declare-fun b_free!69879 () Bool)

(declare-fun b_next!70583 () Bool)

(assert (=> b!2308086 (= b_free!69879 (not b_next!70583))))

(declare-fun t!206603 () Bool)

(declare-fun tb!138241 () Bool)

(assert (=> (and b!2308086 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) t!206603) tb!138241))

(declare-fun result!168538 () Bool)

(assert (= result!168538 result!168454))

(assert (=> d!682428 t!206603))

(declare-fun tb!138243 () Bool)

(declare-fun t!206605 () Bool)

(assert (=> (and b!2308086 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toChars!6082 (transformation!4409 r!2363))) t!206605) tb!138243))

(declare-fun result!168540 () Bool)

(assert (= result!168540 result!168472))

(assert (=> d!682442 t!206605))

(declare-fun t!206607 () Bool)

(declare-fun tb!138245 () Bool)

(assert (=> (and b!2308086 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456))))) t!206607) tb!138245))

(declare-fun result!168542 () Bool)

(assert (= result!168542 result!168490))

(assert (=> d!682516 t!206607))

(assert (=> b!2307924 t!206603))

(declare-fun tp!732296 () Bool)

(declare-fun b_and!184379 () Bool)

(assert (=> b!2308086 (= tp!732296 (and (=> t!206603 result!168538) (=> t!206605 result!168540) (=> t!206607 result!168542) b_and!184379))))

(declare-fun e!1479298 () Bool)

(assert (=> b!2308086 (= e!1479298 (and tp!732295 tp!732296))))

(declare-fun e!1479295 () Bool)

(assert (=> b!2307469 (= tp!732178 e!1479295)))

(declare-fun tp!732294 () Bool)

(declare-fun e!1479299 () Bool)

(declare-fun b!2308085 () Bool)

(assert (=> b!2308085 (= e!1479299 (and tp!732294 (inv!37117 (tag!4899 (rule!6761 (h!32881 (t!206518 tokens!456))))) (inv!37120 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) e!1479298))))

(declare-fun e!1479296 () Bool)

(declare-fun tp!732298 () Bool)

(declare-fun b!2308083 () Bool)

(assert (=> b!2308083 (= e!1479295 (and (inv!37121 (h!32881 (t!206518 tokens!456))) e!1479296 tp!732298))))

(declare-fun b!2308084 () Bool)

(declare-fun tp!732297 () Bool)

(assert (=> b!2308084 (= e!1479296 (and (inv!21 (value!139476 (h!32881 (t!206518 tokens!456)))) e!1479299 tp!732297))))

(assert (= b!2308085 b!2308086))

(assert (= b!2308084 b!2308085))

(assert (= b!2308083 b!2308084))

(assert (= (and b!2307469 ((_ is Cons!27480) (t!206518 tokens!456))) b!2308083))

(declare-fun m!2735119 () Bool)

(assert (=> b!2308085 m!2735119))

(declare-fun m!2735121 () Bool)

(assert (=> b!2308085 m!2735121))

(declare-fun m!2735123 () Bool)

(assert (=> b!2308083 m!2735123))

(declare-fun m!2735125 () Bool)

(assert (=> b!2308084 m!2735125))

(declare-fun b!2308087 () Bool)

(declare-fun e!1479301 () Bool)

(assert (=> b!2308087 (= e!1479301 tp_is_empty!10735)))

(assert (=> b!2307458 (= tp!732184 e!1479301)))

(declare-fun b!2308088 () Bool)

(declare-fun tp!732302 () Bool)

(declare-fun tp!732301 () Bool)

(assert (=> b!2308088 (= e!1479301 (and tp!732302 tp!732301))))

(declare-fun b!2308090 () Bool)

(declare-fun tp!732299 () Bool)

(declare-fun tp!732300 () Bool)

(assert (=> b!2308090 (= e!1479301 (and tp!732299 tp!732300))))

(declare-fun b!2308089 () Bool)

(declare-fun tp!732303 () Bool)

(assert (=> b!2308089 (= e!1479301 tp!732303)))

(assert (= (and b!2307458 ((_ is ElementMatch!6757) (regex!4409 r!2363))) b!2308087))

(assert (= (and b!2307458 ((_ is Concat!11329) (regex!4409 r!2363))) b!2308088))

(assert (= (and b!2307458 ((_ is Star!6757) (regex!4409 r!2363))) b!2308089))

(assert (= (and b!2307458 ((_ is Union!6757) (regex!4409 r!2363))) b!2308090))

(declare-fun b!2308101 () Bool)

(declare-fun b_free!69881 () Bool)

(declare-fun b_next!70585 () Bool)

(assert (=> b!2308101 (= b_free!69881 (not b_next!70585))))

(declare-fun tb!138247 () Bool)

(declare-fun t!206609 () Bool)

(assert (=> (and b!2308101 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toValue!6223 (transformation!4409 r!2363))) t!206609) tb!138247))

(declare-fun result!168546 () Bool)

(assert (= result!168546 result!168480))

(assert (=> d!682442 t!206609))

(assert (=> d!682532 t!206609))

(declare-fun tp!732313 () Bool)

(declare-fun b_and!184381 () Bool)

(assert (=> b!2308101 (= tp!732313 (and (=> t!206609 result!168546) b_and!184381))))

(declare-fun b_free!69883 () Bool)

(declare-fun b_next!70587 () Bool)

(assert (=> b!2308101 (= b_free!69883 (not b_next!70587))))

(declare-fun t!206611 () Bool)

(declare-fun tb!138249 () Bool)

(assert (=> (and b!2308101 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) t!206611) tb!138249))

(declare-fun result!168548 () Bool)

(assert (= result!168548 result!168454))

(assert (=> d!682428 t!206611))

(declare-fun tb!138251 () Bool)

(declare-fun t!206613 () Bool)

(assert (=> (and b!2308101 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toChars!6082 (transformation!4409 r!2363))) t!206613) tb!138251))

(declare-fun result!168550 () Bool)

(assert (= result!168550 result!168472))

(assert (=> d!682442 t!206613))

(declare-fun tb!138253 () Bool)

(declare-fun t!206615 () Bool)

(assert (=> (and b!2308101 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456))))) t!206615) tb!138253))

(declare-fun result!168552 () Bool)

(assert (= result!168552 result!168490))

(assert (=> d!682516 t!206615))

(assert (=> b!2307924 t!206611))

(declare-fun tp!732312 () Bool)

(declare-fun b_and!184383 () Bool)

(assert (=> b!2308101 (= tp!732312 (and (=> t!206611 result!168548) (=> t!206613 result!168550) (=> t!206615 result!168552) b_and!184383))))

(declare-fun e!1479311 () Bool)

(assert (=> b!2308101 (= e!1479311 (and tp!732313 tp!732312))))

(declare-fun b!2308100 () Bool)

(declare-fun e!1479313 () Bool)

(declare-fun tp!732314 () Bool)

(assert (=> b!2308100 (= e!1479313 (and tp!732314 (inv!37117 (tag!4899 (h!32882 (t!206519 rules!1750)))) (inv!37120 (transformation!4409 (h!32882 (t!206519 rules!1750)))) e!1479311))))

(declare-fun b!2308099 () Bool)

(declare-fun e!1479312 () Bool)

(declare-fun tp!732315 () Bool)

(assert (=> b!2308099 (= e!1479312 (and e!1479313 tp!732315))))

(assert (=> b!2307478 (= tp!732173 e!1479312)))

(assert (= b!2308100 b!2308101))

(assert (= b!2308099 b!2308100))

(assert (= (and b!2307478 ((_ is Cons!27481) (t!206519 rules!1750))) b!2308099))

(declare-fun m!2735127 () Bool)

(assert (=> b!2308100 m!2735127))

(declare-fun m!2735129 () Bool)

(assert (=> b!2308100 m!2735129))

(declare-fun b!2308102 () Bool)

(declare-fun e!1479314 () Bool)

(declare-fun tp!732316 () Bool)

(assert (=> b!2308102 (= e!1479314 (and tp_is_empty!10735 tp!732316))))

(assert (=> b!2307456 (= tp!732186 e!1479314)))

(assert (= (and b!2307456 ((_ is Cons!27479) (t!206517 otherP!12))) b!2308102))

(declare-fun b!2308103 () Bool)

(declare-fun e!1479315 () Bool)

(declare-fun tp!732317 () Bool)

(assert (=> b!2308103 (= e!1479315 (and tp_is_empty!10735 tp!732317))))

(assert (=> b!2307466 (= tp!732181 e!1479315)))

(assert (= (and b!2307466 ((_ is Cons!27479) (originalCharacters!5179 (h!32881 tokens!456)))) b!2308103))

(declare-fun b!2308104 () Bool)

(declare-fun e!1479316 () Bool)

(assert (=> b!2308104 (= e!1479316 tp_is_empty!10735)))

(assert (=> b!2307486 (= tp!732175 e!1479316)))

(declare-fun b!2308105 () Bool)

(declare-fun tp!732321 () Bool)

(declare-fun tp!732320 () Bool)

(assert (=> b!2308105 (= e!1479316 (and tp!732321 tp!732320))))

(declare-fun b!2308107 () Bool)

(declare-fun tp!732318 () Bool)

(declare-fun tp!732319 () Bool)

(assert (=> b!2308107 (= e!1479316 (and tp!732318 tp!732319))))

(declare-fun b!2308106 () Bool)

(declare-fun tp!732322 () Bool)

(assert (=> b!2308106 (= e!1479316 tp!732322)))

(assert (= (and b!2307486 ((_ is ElementMatch!6757) (regex!4409 otherR!12))) b!2308104))

(assert (= (and b!2307486 ((_ is Concat!11329) (regex!4409 otherR!12))) b!2308105))

(assert (= (and b!2307486 ((_ is Star!6757) (regex!4409 otherR!12))) b!2308106))

(assert (= (and b!2307486 ((_ is Union!6757) (regex!4409 otherR!12))) b!2308107))

(declare-fun b!2308108 () Bool)

(declare-fun e!1479317 () Bool)

(declare-fun tp!732323 () Bool)

(assert (=> b!2308108 (= e!1479317 (and tp_is_empty!10735 tp!732323))))

(assert (=> b!2307484 (= tp!732177 e!1479317)))

(assert (= (and b!2307484 ((_ is Cons!27479) (t!206517 suffix!886))) b!2308108))

(declare-fun b_lambda!73547 () Bool)

(assert (= b_lambda!73531 (or (and b!2308086 b_free!69879 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))))) (and b!2307475 b_free!69855 (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))))) (and b!2307476 b_free!69867 (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))))) (and b!2307465 b_free!69859 (= (toChars!6082 (transformation!4409 r!2363)) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))))) (and b!2307487 b_free!69863) (and b!2308101 b_free!69883 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))))) b_lambda!73547)))

(declare-fun b_lambda!73549 () Bool)

(assert (= b_lambda!73519 (or (and b!2308086 b_free!69879 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))))) (and b!2307475 b_free!69855 (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))))) (and b!2307476 b_free!69867 (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))))) (and b!2307465 b_free!69859 (= (toChars!6082 (transformation!4409 r!2363)) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))))) (and b!2307487 b_free!69863) (and b!2308101 b_free!69883 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))))) b_lambda!73549)))

(declare-fun b_lambda!73551 () Bool)

(assert (= b_lambda!73529 (or (and b!2307475 b_free!69853 (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 r!2363)))) (and b!2308086 b_free!69877 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2307487 b_free!69861 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2307465 b_free!69857) (and b!2307476 b_free!69865 (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2308101 b_free!69881 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toValue!6223 (transformation!4409 r!2363)))) b_lambda!73551)))

(declare-fun b_lambda!73553 () Bool)

(assert (= b_lambda!73525 (or (and b!2307475 b_free!69853 (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 r!2363)))) (and b!2308086 b_free!69877 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2307487 b_free!69861 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2307465 b_free!69857) (and b!2307476 b_free!69865 (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2308101 b_free!69881 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toValue!6223 (transformation!4409 r!2363)))) b_lambda!73553)))

(declare-fun b_lambda!73555 () Bool)

(assert (= b_lambda!73523 (or (and b!2307475 b_free!69855 (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 r!2363)))) (and b!2308101 b_free!69883 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toChars!6082 (transformation!4409 r!2363)))) (and b!2307465 b_free!69859) (and b!2307487 b_free!69863 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toChars!6082 (transformation!4409 r!2363)))) (and b!2308086 b_free!69879 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toChars!6082 (transformation!4409 r!2363)))) (and b!2307476 b_free!69867 (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 r!2363)))) b_lambda!73555)))

(check-sat (not d!682536) (not bm!137181) (not b!2308105) (not b!2308045) (not tb!138191) (not b!2308017) (not b!2307648) (not b!2308013) (not d!682434) (not b!2307614) (not d!682498) (not b!2308084) (not b!2307804) (not d!682496) (not b!2308063) (not b!2308009) (not d!682570) (not d!682530) (not b!2307644) (not b!2308085) (not d!682422) (not b!2307543) (not b!2307865) (not b!2308012) b_and!184345 (not b!2307891) (not tb!138175) (not b!2307826) (not b!2307892) (not b!2307617) (not d!682538) (not b!2308100) (not b!2307882) (not b!2308106) tp_is_empty!10735 (not b_next!70581) (not d!682418) (not b_lambda!73553) (not b!2307795) (not d!682516) (not b!2307651) (not b!2307879) (not b!2307866) (not d!682528) (not b!2307860) (not b_next!70559) (not b!2307919) (not b!2308089) (not d!682576) (not d!682442) (not b_lambda!73547) (not b!2307912) (not b!2307888) (not b!2307619) (not b!2308090) (not b!2307868) (not d!682520) (not b!2307541) (not b!2308083) (not b_next!70583) (not b!2307567) (not b!2307924) (not b_lambda!73555) (not b!2307876) (not b!2308042) (not b!2308046) (not b_next!70571) (not b!2307525) (not b_lambda!73549) b_and!184339 (not d!682540) (not b!2307880) (not d!682396) (not b!2307886) (not d!682428) (not d!682544) (not b!2307798) (not b!2307805) (not b!2307560) (not b!2307634) (not d!682568) (not d!682432) (not b!2308108) b_and!184337 (not b!2307917) (not b!2308103) (not b!2307870) (not b!2307652) (not b!2308061) (not b!2307645) (not b!2307650) (not b!2308067) (not b!2308072) (not b!2307618) (not b!2308107) (not d!682512) (not b!2307925) (not b!2307792) (not b!2307616) (not d!682524) (not b_lambda!73527) (not b!2307915) (not b!2307621) b_and!184351 b_and!184341 (not d!682578) b_and!184343 (not b!2308088) b_and!184349 (not b_next!70557) (not b_next!70563) (not b!2307918) (not d!682506) (not b!2308049) (not d!682494) (not b!2307911) (not b!2307913) (not d!682580) (not d!682510) (not tb!138199) (not d!682408) (not b!2307874) b_and!184381 (not bm!137188) (not b!2307542) (not d!682440) (not b_next!70567) (not b!2307828) (not d!682542) (not b!2307613) (not b_lambda!73551) (not d!682502) (not d!682566) (not tb!138207) (not b_next!70585) (not b!2307890) b_and!184377 (not bm!137187) (not d!682508) (not b_next!70587) b_and!184347 (not b!2308099) (not b!2307816) (not b!2308066) (not b!2307862) (not b!2308062) (not b_next!70561) (not b!2308102) (not d!682522) (not d!682514) b_and!184383 (not b!2307820) (not b!2308047) (not b!2307620) (not b_next!70565) (not b!2307884) (not d!682410) (not b!2308065) (not b!2307887) (not b_next!70569) b_and!184379 (not b!2308010) (not b!2307914))
(check-sat b_and!184345 (not b_next!70581) (not b_next!70559) (not b_next!70583) (not b_next!70571) b_and!184339 b_and!184337 (not b_next!70585) (not b_next!70565) b_and!184349 b_and!184351 b_and!184341 b_and!184343 (not b_next!70557) (not b_next!70563) b_and!184381 (not b_next!70567) b_and!184377 (not b_next!70587) b_and!184347 (not b_next!70561) b_and!184383 (not b_next!70569) b_and!184379)
(get-model)

(declare-fun d!682582 () Bool)

(assert (=> d!682582 (= (isEmpty!15718 (tail!3336 lt!855852)) ((_ is Nil!27479) (tail!3336 lt!855852)))))

(assert (=> b!2307879 d!682582))

(declare-fun d!682584 () Bool)

(assert (=> d!682584 (= (tail!3336 lt!855852) (t!206517 lt!855852))))

(assert (=> b!2307879 d!682584))

(declare-fun b!2308120 () Bool)

(declare-fun e!1479323 () List!27574)

(declare-fun ++!6728 (List!27574 List!27574) List!27574)

(assert (=> b!2308120 (= e!1479323 (++!6728 (list!10853 (left!20816 (c!365712 (_1!16212 lt!855866)))) (list!10853 (right!21146 (c!365712 (_1!16212 lt!855866))))))))

(declare-fun b!2308118 () Bool)

(declare-fun e!1479322 () List!27574)

(assert (=> b!2308118 (= e!1479322 e!1479323)))

(declare-fun c!365810 () Bool)

(assert (=> b!2308118 (= c!365810 ((_ is Leaf!13157) (c!365712 (_1!16212 lt!855866))))))

(declare-fun b!2308117 () Bool)

(assert (=> b!2308117 (= e!1479322 Nil!27480)))

(declare-fun b!2308119 () Bool)

(declare-fun list!10854 (IArray!17939) List!27574)

(assert (=> b!2308119 (= e!1479323 (list!10854 (xs!11909 (c!365712 (_1!16212 lt!855866)))))))

(declare-fun d!682586 () Bool)

(declare-fun c!365809 () Bool)

(assert (=> d!682586 (= c!365809 ((_ is Empty!8967) (c!365712 (_1!16212 lt!855866))))))

(assert (=> d!682586 (= (list!10853 (c!365712 (_1!16212 lt!855866))) e!1479322)))

(assert (= (and d!682586 c!365809) b!2308117))

(assert (= (and d!682586 (not c!365809)) b!2308118))

(assert (= (and b!2308118 c!365810) b!2308119))

(assert (= (and b!2308118 (not c!365810)) b!2308120))

(declare-fun m!2735131 () Bool)

(assert (=> b!2308120 m!2735131))

(declare-fun m!2735133 () Bool)

(assert (=> b!2308120 m!2735133))

(assert (=> b!2308120 m!2735131))

(assert (=> b!2308120 m!2735133))

(declare-fun m!2735135 () Bool)

(assert (=> b!2308120 m!2735135))

(declare-fun m!2735137 () Bool)

(assert (=> b!2308119 m!2735137))

(assert (=> d!682540 d!682586))

(declare-fun b!2308124 () Bool)

(declare-fun e!1479325 () Bool)

(declare-fun lt!856055 () List!27573)

(assert (=> b!2308124 (= e!1479325 (or (not (= (_2!16211 (get!8285 lt!855934)) Nil!27479)) (= lt!856055 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934)))))))))

(declare-fun b!2308122 () Bool)

(declare-fun e!1479324 () List!27573)

(assert (=> b!2308122 (= e!1479324 (Cons!27479 (h!32880 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934))))) (++!6727 (t!206517 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934))))) (_2!16211 (get!8285 lt!855934)))))))

(declare-fun d!682588 () Bool)

(assert (=> d!682588 e!1479325))

(declare-fun res!987009 () Bool)

(assert (=> d!682588 (=> (not res!987009) (not e!1479325))))

(assert (=> d!682588 (= res!987009 (= (content!3714 lt!856055) ((_ map or) (content!3714 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934))))) (content!3714 (_2!16211 (get!8285 lt!855934))))))))

(assert (=> d!682588 (= lt!856055 e!1479324)))

(declare-fun c!365811 () Bool)

(assert (=> d!682588 (= c!365811 ((_ is Nil!27479) (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934))))))))

(assert (=> d!682588 (= (++!6727 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934)))) (_2!16211 (get!8285 lt!855934))) lt!856055)))

(declare-fun b!2308121 () Bool)

(assert (=> b!2308121 (= e!1479324 (_2!16211 (get!8285 lt!855934)))))

(declare-fun b!2308123 () Bool)

(declare-fun res!987008 () Bool)

(assert (=> b!2308123 (=> (not res!987008) (not e!1479325))))

(assert (=> b!2308123 (= res!987008 (= (size!21687 lt!856055) (+ (size!21687 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934))))) (size!21687 (_2!16211 (get!8285 lt!855934))))))))

(assert (= (and d!682588 c!365811) b!2308121))

(assert (= (and d!682588 (not c!365811)) b!2308122))

(assert (= (and d!682588 res!987009) b!2308123))

(assert (= (and b!2308123 res!987008) b!2308124))

(declare-fun m!2735139 () Bool)

(assert (=> b!2308122 m!2735139))

(declare-fun m!2735141 () Bool)

(assert (=> d!682588 m!2735141))

(assert (=> d!682588 m!2734685))

(declare-fun m!2735143 () Bool)

(assert (=> d!682588 m!2735143))

(declare-fun m!2735145 () Bool)

(assert (=> d!682588 m!2735145))

(declare-fun m!2735147 () Bool)

(assert (=> b!2308123 m!2735147))

(assert (=> b!2308123 m!2734685))

(declare-fun m!2735149 () Bool)

(assert (=> b!2308123 m!2735149))

(assert (=> b!2308123 m!2734693))

(assert (=> b!2307621 d!682588))

(declare-fun d!682590 () Bool)

(assert (=> d!682590 (= (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934)))) (list!10851 (c!365710 (charsOf!2797 (_1!16211 (get!8285 lt!855934))))))))

(declare-fun bs!458010 () Bool)

(assert (= bs!458010 d!682590))

(declare-fun m!2735151 () Bool)

(assert (=> bs!458010 m!2735151))

(assert (=> b!2307621 d!682590))

(declare-fun d!682592 () Bool)

(declare-fun lt!856056 () BalanceConc!17660)

(assert (=> d!682592 (= (list!10848 lt!856056) (originalCharacters!5179 (_1!16211 (get!8285 lt!855934))))))

(assert (=> d!682592 (= lt!856056 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934))))) (value!139476 (_1!16211 (get!8285 lt!855934)))))))

(assert (=> d!682592 (= (charsOf!2797 (_1!16211 (get!8285 lt!855934))) lt!856056)))

(declare-fun b_lambda!73557 () Bool)

(assert (=> (not b_lambda!73557) (not d!682592)))

(declare-fun t!206620 () Bool)

(declare-fun tb!138255 () Bool)

(assert (=> (and b!2308086 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206620) tb!138255))

(declare-fun b!2308125 () Bool)

(declare-fun e!1479326 () Bool)

(declare-fun tp!732324 () Bool)

(assert (=> b!2308125 (= e!1479326 (and (inv!37124 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934))))) (value!139476 (_1!16211 (get!8285 lt!855934)))))) tp!732324))))

(declare-fun result!168554 () Bool)

(assert (=> tb!138255 (= result!168554 (and (inv!37125 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934))))) (value!139476 (_1!16211 (get!8285 lt!855934))))) e!1479326))))

(assert (= tb!138255 b!2308125))

(declare-fun m!2735153 () Bool)

(assert (=> b!2308125 m!2735153))

(declare-fun m!2735155 () Bool)

(assert (=> tb!138255 m!2735155))

(assert (=> d!682592 t!206620))

(declare-fun b_and!184385 () Bool)

(assert (= b_and!184379 (and (=> t!206620 result!168554) b_and!184385)))

(declare-fun t!206622 () Bool)

(declare-fun tb!138257 () Bool)

(assert (=> (and b!2307475 (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206622) tb!138257))

(declare-fun result!168556 () Bool)

(assert (= result!168556 result!168554))

(assert (=> d!682592 t!206622))

(declare-fun b_and!184387 () Bool)

(assert (= b_and!184345 (and (=> t!206622 result!168556) b_and!184387)))

(declare-fun t!206624 () Bool)

(declare-fun tb!138259 () Bool)

(assert (=> (and b!2307476 (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206624) tb!138259))

(declare-fun result!168558 () Bool)

(assert (= result!168558 result!168554))

(assert (=> d!682592 t!206624))

(declare-fun b_and!184389 () Bool)

(assert (= b_and!184351 (and (=> t!206624 result!168558) b_and!184389)))

(declare-fun tb!138261 () Bool)

(declare-fun t!206626 () Bool)

(assert (=> (and b!2307465 (= (toChars!6082 (transformation!4409 r!2363)) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206626) tb!138261))

(declare-fun result!168560 () Bool)

(assert (= result!168560 result!168554))

(assert (=> d!682592 t!206626))

(declare-fun b_and!184391 () Bool)

(assert (= b_and!184347 (and (=> t!206626 result!168560) b_and!184391)))

(declare-fun t!206628 () Bool)

(declare-fun tb!138263 () Bool)

(assert (=> (and b!2307487 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206628) tb!138263))

(declare-fun result!168562 () Bool)

(assert (= result!168562 result!168554))

(assert (=> d!682592 t!206628))

(declare-fun b_and!184393 () Bool)

(assert (= b_and!184349 (and (=> t!206628 result!168562) b_and!184393)))

(declare-fun t!206630 () Bool)

(declare-fun tb!138265 () Bool)

(assert (=> (and b!2308101 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206630) tb!138265))

(declare-fun result!168564 () Bool)

(assert (= result!168564 result!168554))

(assert (=> d!682592 t!206630))

(declare-fun b_and!184395 () Bool)

(assert (= b_and!184383 (and (=> t!206630 result!168564) b_and!184395)))

(declare-fun m!2735157 () Bool)

(assert (=> d!682592 m!2735157))

(declare-fun m!2735159 () Bool)

(assert (=> d!682592 m!2735159))

(assert (=> b!2307621 d!682592))

(declare-fun d!682594 () Bool)

(assert (=> d!682594 (= (get!8285 lt!855934) (v!30514 lt!855934))))

(assert (=> b!2307621 d!682594))

(declare-fun d!682596 () Bool)

(assert (=> d!682596 (= (get!8285 lt!856040) (v!30514 lt!856040))))

(assert (=> b!2307911 d!682596))

(declare-fun d!682598 () Bool)

(assert (=> d!682598 (= (apply!6671 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))) (seqFromList!3113 (originalCharacters!5179 (_1!16211 (get!8285 lt!856040))))) (dynLambda!11952 (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040))))) (seqFromList!3113 (originalCharacters!5179 (_1!16211 (get!8285 lt!856040))))))))

(declare-fun b_lambda!73559 () Bool)

(assert (=> (not b_lambda!73559) (not d!682598)))

(declare-fun t!206632 () Bool)

(declare-fun tb!138267 () Bool)

(assert (=> (and b!2307487 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206632) tb!138267))

(declare-fun result!168566 () Bool)

(assert (=> tb!138267 (= result!168566 (inv!21 (dynLambda!11952 (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040))))) (seqFromList!3113 (originalCharacters!5179 (_1!16211 (get!8285 lt!856040)))))))))

(declare-fun m!2735161 () Bool)

(assert (=> tb!138267 m!2735161))

(assert (=> d!682598 t!206632))

(declare-fun b_and!184397 () Bool)

(assert (= b_and!184341 (and (=> t!206632 result!168566) b_and!184397)))

(declare-fun tb!138269 () Bool)

(declare-fun t!206634 () Bool)

(assert (=> (and b!2308101 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206634) tb!138269))

(declare-fun result!168568 () Bool)

(assert (= result!168568 result!168566))

(assert (=> d!682598 t!206634))

(declare-fun b_and!184399 () Bool)

(assert (= b_and!184381 (and (=> t!206634 result!168568) b_and!184399)))

(declare-fun tb!138271 () Bool)

(declare-fun t!206636 () Bool)

(assert (=> (and b!2307465 (= (toValue!6223 (transformation!4409 r!2363)) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206636) tb!138271))

(declare-fun result!168570 () Bool)

(assert (= result!168570 result!168566))

(assert (=> d!682598 t!206636))

(declare-fun b_and!184401 () Bool)

(assert (= b_and!184339 (and (=> t!206636 result!168570) b_and!184401)))

(declare-fun t!206638 () Bool)

(declare-fun tb!138273 () Bool)

(assert (=> (and b!2308086 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206638) tb!138273))

(declare-fun result!168572 () Bool)

(assert (= result!168572 result!168566))

(assert (=> d!682598 t!206638))

(declare-fun b_and!184403 () Bool)

(assert (= b_and!184377 (and (=> t!206638 result!168572) b_and!184403)))

(declare-fun t!206640 () Bool)

(declare-fun tb!138275 () Bool)

(assert (=> (and b!2307475 (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206640) tb!138275))

(declare-fun result!168574 () Bool)

(assert (= result!168574 result!168566))

(assert (=> d!682598 t!206640))

(declare-fun b_and!184405 () Bool)

(assert (= b_and!184337 (and (=> t!206640 result!168574) b_and!184405)))

(declare-fun t!206642 () Bool)

(declare-fun tb!138277 () Bool)

(assert (=> (and b!2307476 (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206642) tb!138277))

(declare-fun result!168576 () Bool)

(assert (= result!168576 result!168566))

(assert (=> d!682598 t!206642))

(declare-fun b_and!184407 () Bool)

(assert (= b_and!184343 (and (=> t!206642 result!168576) b_and!184407)))

(assert (=> d!682598 m!2735009))

(declare-fun m!2735163 () Bool)

(assert (=> d!682598 m!2735163))

(assert (=> b!2307911 d!682598))

(declare-fun d!682600 () Bool)

(assert (=> d!682600 (= (seqFromList!3113 (originalCharacters!5179 (_1!16211 (get!8285 lt!856040)))) (fromListB!1406 (originalCharacters!5179 (_1!16211 (get!8285 lt!856040)))))))

(declare-fun bs!458011 () Bool)

(assert (= bs!458011 d!682600))

(declare-fun m!2735165 () Bool)

(assert (=> bs!458011 m!2735165))

(assert (=> b!2307911 d!682600))

(declare-fun d!682602 () Bool)

(assert (=> d!682602 (= (list!10848 (_2!16212 lt!856049)) (list!10851 (c!365710 (_2!16212 lt!856049))))))

(declare-fun bs!458012 () Bool)

(assert (= bs!458012 d!682602))

(declare-fun m!2735167 () Bool)

(assert (=> bs!458012 m!2735167))

(assert (=> b!2308013 d!682602))

(declare-fun b!2308136 () Bool)

(declare-fun e!1479336 () Bool)

(declare-fun lt!856063 () tuple2!27406)

(assert (=> b!2308136 (= e!1479336 (= (_2!16213 lt!856063) (list!10848 (seqFromList!3113 input!1722))))))

(declare-fun d!682604 () Bool)

(assert (=> d!682604 e!1479336))

(declare-fun c!365816 () Bool)

(declare-fun size!21692 (List!27574) Int)

(assert (=> d!682604 (= c!365816 (> (size!21692 (_1!16213 lt!856063)) 0))))

(declare-fun e!1479334 () tuple2!27406)

(assert (=> d!682604 (= lt!856063 e!1479334)))

(declare-fun c!365817 () Bool)

(declare-fun lt!856065 () Option!5407)

(assert (=> d!682604 (= c!365817 ((_ is Some!5406) lt!856065))))

(assert (=> d!682604 (= lt!856065 (maxPrefix!2262 thiss!16613 rules!1750 (list!10848 (seqFromList!3113 input!1722))))))

(assert (=> d!682604 (= (lexList!1140 thiss!16613 rules!1750 (list!10848 (seqFromList!3113 input!1722))) lt!856063)))

(declare-fun b!2308137 () Bool)

(declare-fun e!1479335 () Bool)

(assert (=> b!2308137 (= e!1479336 e!1479335)))

(declare-fun res!987012 () Bool)

(assert (=> b!2308137 (= res!987012 (< (size!21687 (_2!16213 lt!856063)) (size!21687 (list!10848 (seqFromList!3113 input!1722)))))))

(assert (=> b!2308137 (=> (not res!987012) (not e!1479335))))

(declare-fun b!2308138 () Bool)

(declare-fun lt!856064 () tuple2!27406)

(assert (=> b!2308138 (= e!1479334 (tuple2!27407 (Cons!27480 (_1!16211 (v!30514 lt!856065)) (_1!16213 lt!856064)) (_2!16213 lt!856064)))))

(assert (=> b!2308138 (= lt!856064 (lexList!1140 thiss!16613 rules!1750 (_2!16211 (v!30514 lt!856065))))))

(declare-fun b!2308139 () Bool)

(assert (=> b!2308139 (= e!1479334 (tuple2!27407 Nil!27480 (list!10848 (seqFromList!3113 input!1722))))))

(declare-fun b!2308140 () Bool)

(assert (=> b!2308140 (= e!1479335 (not (isEmpty!15714 (_1!16213 lt!856063))))))

(assert (= (and d!682604 c!365817) b!2308138))

(assert (= (and d!682604 (not c!365817)) b!2308139))

(assert (= (and d!682604 c!365816) b!2308137))

(assert (= (and d!682604 (not c!365816)) b!2308136))

(assert (= (and b!2308137 res!987012) b!2308140))

(declare-fun m!2735169 () Bool)

(assert (=> d!682604 m!2735169))

(assert (=> d!682604 m!2735089))

(declare-fun m!2735171 () Bool)

(assert (=> d!682604 m!2735171))

(declare-fun m!2735173 () Bool)

(assert (=> b!2308137 m!2735173))

(assert (=> b!2308137 m!2735089))

(declare-fun m!2735175 () Bool)

(assert (=> b!2308137 m!2735175))

(declare-fun m!2735177 () Bool)

(assert (=> b!2308138 m!2735177))

(declare-fun m!2735179 () Bool)

(assert (=> b!2308140 m!2735179))

(assert (=> b!2308013 d!682604))

(declare-fun d!682606 () Bool)

(assert (=> d!682606 (= (list!10848 (seqFromList!3113 input!1722)) (list!10851 (c!365710 (seqFromList!3113 input!1722))))))

(declare-fun bs!458013 () Bool)

(assert (= bs!458013 d!682606))

(declare-fun m!2735181 () Bool)

(assert (=> bs!458013 m!2735181))

(assert (=> b!2308013 d!682606))

(declare-fun d!682608 () Bool)

(declare-fun e!1479337 () Bool)

(assert (=> d!682608 e!1479337))

(declare-fun c!365818 () Bool)

(assert (=> d!682608 (= c!365818 ((_ is EmptyExpr!6757) (derivativeStep!1554 (regex!4409 r!2363) (head!5065 lt!855852))))))

(declare-fun lt!856066 () Bool)

(declare-fun e!1479339 () Bool)

(assert (=> d!682608 (= lt!856066 e!1479339)))

(declare-fun c!365820 () Bool)

(assert (=> d!682608 (= c!365820 (isEmpty!15718 (tail!3336 lt!855852)))))

(assert (=> d!682608 (validRegex!2555 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 lt!855852)))))

(assert (=> d!682608 (= (matchR!3014 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 lt!855852)) (tail!3336 lt!855852)) lt!856066)))

(declare-fun b!2308141 () Bool)

(declare-fun res!987017 () Bool)

(declare-fun e!1479341 () Bool)

(assert (=> b!2308141 (=> res!987017 e!1479341)))

(assert (=> b!2308141 (= res!987017 (not ((_ is ElementMatch!6757) (derivativeStep!1554 (regex!4409 r!2363) (head!5065 lt!855852)))))))

(declare-fun e!1479342 () Bool)

(assert (=> b!2308141 (= e!1479342 e!1479341)))

(declare-fun b!2308142 () Bool)

(assert (=> b!2308142 (= e!1479337 e!1479342)))

(declare-fun c!365819 () Bool)

(assert (=> b!2308142 (= c!365819 ((_ is EmptyLang!6757) (derivativeStep!1554 (regex!4409 r!2363) (head!5065 lt!855852))))))

(declare-fun b!2308143 () Bool)

(declare-fun e!1479343 () Bool)

(declare-fun e!1479338 () Bool)

(assert (=> b!2308143 (= e!1479343 e!1479338)))

(declare-fun res!987013 () Bool)

(assert (=> b!2308143 (=> res!987013 e!1479338)))

(declare-fun call!137195 () Bool)

(assert (=> b!2308143 (= res!987013 call!137195)))

(declare-fun b!2308144 () Bool)

(declare-fun e!1479340 () Bool)

(assert (=> b!2308144 (= e!1479340 (= (head!5065 (tail!3336 lt!855852)) (c!365711 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 lt!855852)))))))

(declare-fun b!2308145 () Bool)

(assert (=> b!2308145 (= e!1479341 e!1479343)))

(declare-fun res!987015 () Bool)

(assert (=> b!2308145 (=> (not res!987015) (not e!1479343))))

(assert (=> b!2308145 (= res!987015 (not lt!856066))))

(declare-fun b!2308146 () Bool)

(assert (=> b!2308146 (= e!1479339 (matchR!3014 (derivativeStep!1554 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 lt!855852)) (head!5065 (tail!3336 lt!855852))) (tail!3336 (tail!3336 lt!855852))))))

(declare-fun b!2308147 () Bool)

(declare-fun res!987018 () Bool)

(assert (=> b!2308147 (=> res!987018 e!1479341)))

(assert (=> b!2308147 (= res!987018 e!1479340)))

(declare-fun res!987020 () Bool)

(assert (=> b!2308147 (=> (not res!987020) (not e!1479340))))

(assert (=> b!2308147 (= res!987020 lt!856066)))

(declare-fun bm!137190 () Bool)

(assert (=> bm!137190 (= call!137195 (isEmpty!15718 (tail!3336 lt!855852)))))

(declare-fun b!2308148 () Bool)

(declare-fun res!987016 () Bool)

(assert (=> b!2308148 (=> (not res!987016) (not e!1479340))))

(assert (=> b!2308148 (= res!987016 (not call!137195))))

(declare-fun b!2308149 () Bool)

(declare-fun res!987014 () Bool)

(assert (=> b!2308149 (=> (not res!987014) (not e!1479340))))

(assert (=> b!2308149 (= res!987014 (isEmpty!15718 (tail!3336 (tail!3336 lt!855852))))))

(declare-fun b!2308150 () Bool)

(assert (=> b!2308150 (= e!1479339 (nullable!1894 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 lt!855852))))))

(declare-fun b!2308151 () Bool)

(assert (=> b!2308151 (= e!1479342 (not lt!856066))))

(declare-fun b!2308152 () Bool)

(assert (=> b!2308152 (= e!1479338 (not (= (head!5065 (tail!3336 lt!855852)) (c!365711 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 lt!855852))))))))

(declare-fun b!2308153 () Bool)

(assert (=> b!2308153 (= e!1479337 (= lt!856066 call!137195))))

(declare-fun b!2308154 () Bool)

(declare-fun res!987019 () Bool)

(assert (=> b!2308154 (=> res!987019 e!1479338)))

(assert (=> b!2308154 (= res!987019 (not (isEmpty!15718 (tail!3336 (tail!3336 lt!855852)))))))

(assert (= (and d!682608 c!365820) b!2308150))

(assert (= (and d!682608 (not c!365820)) b!2308146))

(assert (= (and d!682608 c!365818) b!2308153))

(assert (= (and d!682608 (not c!365818)) b!2308142))

(assert (= (and b!2308142 c!365819) b!2308151))

(assert (= (and b!2308142 (not c!365819)) b!2308141))

(assert (= (and b!2308141 (not res!987017)) b!2308147))

(assert (= (and b!2308147 res!987020) b!2308148))

(assert (= (and b!2308148 res!987016) b!2308149))

(assert (= (and b!2308149 res!987014) b!2308144))

(assert (= (and b!2308147 (not res!987018)) b!2308145))

(assert (= (and b!2308145 res!987015) b!2308143))

(assert (= (and b!2308143 (not res!987013)) b!2308154))

(assert (= (and b!2308154 (not res!987019)) b!2308152))

(assert (= (or b!2308153 b!2308148 b!2308143) bm!137190))

(assert (=> b!2308149 m!2734613))

(declare-fun m!2735183 () Bool)

(assert (=> b!2308149 m!2735183))

(assert (=> b!2308149 m!2735183))

(declare-fun m!2735185 () Bool)

(assert (=> b!2308149 m!2735185))

(assert (=> b!2308154 m!2734613))

(assert (=> b!2308154 m!2735183))

(assert (=> b!2308154 m!2735183))

(assert (=> b!2308154 m!2735185))

(assert (=> b!2308146 m!2734613))

(declare-fun m!2735187 () Bool)

(assert (=> b!2308146 m!2735187))

(assert (=> b!2308146 m!2734953))

(assert (=> b!2308146 m!2735187))

(declare-fun m!2735189 () Bool)

(assert (=> b!2308146 m!2735189))

(assert (=> b!2308146 m!2734613))

(assert (=> b!2308146 m!2735183))

(assert (=> b!2308146 m!2735189))

(assert (=> b!2308146 m!2735183))

(declare-fun m!2735191 () Bool)

(assert (=> b!2308146 m!2735191))

(assert (=> b!2308152 m!2734613))

(assert (=> b!2308152 m!2735187))

(assert (=> b!2308144 m!2734613))

(assert (=> b!2308144 m!2735187))

(assert (=> b!2308150 m!2734953))

(declare-fun m!2735193 () Bool)

(assert (=> b!2308150 m!2735193))

(assert (=> bm!137190 m!2734613))

(assert (=> bm!137190 m!2734951))

(assert (=> d!682608 m!2734613))

(assert (=> d!682608 m!2734951))

(assert (=> d!682608 m!2734953))

(declare-fun m!2735195 () Bool)

(assert (=> d!682608 m!2735195))

(assert (=> b!2307876 d!682608))

(declare-fun b!2308175 () Bool)

(declare-fun e!1479357 () Regex!6757)

(declare-fun call!137207 () Regex!6757)

(assert (=> b!2308175 (= e!1479357 (Union!6757 (Concat!11329 call!137207 (regTwo!14026 (regex!4409 r!2363))) EmptyLang!6757))))

(declare-fun b!2308176 () Bool)

(declare-fun e!1479354 () Regex!6757)

(declare-fun e!1479358 () Regex!6757)

(assert (=> b!2308176 (= e!1479354 e!1479358)))

(declare-fun c!365833 () Bool)

(assert (=> b!2308176 (= c!365833 ((_ is ElementMatch!6757) (regex!4409 r!2363)))))

(declare-fun bm!137199 () Bool)

(declare-fun c!365831 () Bool)

(declare-fun call!137206 () Regex!6757)

(declare-fun c!365832 () Bool)

(assert (=> bm!137199 (= call!137206 (derivativeStep!1554 (ite c!365832 (regTwo!14027 (regex!4409 r!2363)) (ite c!365831 (reg!7086 (regex!4409 r!2363)) (regOne!14026 (regex!4409 r!2363)))) (head!5065 lt!855852)))))

(declare-fun bm!137200 () Bool)

(declare-fun call!137204 () Regex!6757)

(assert (=> bm!137200 (= call!137204 call!137206)))

(declare-fun b!2308177 () Bool)

(declare-fun e!1479355 () Regex!6757)

(assert (=> b!2308177 (= e!1479355 (Concat!11329 call!137204 (regex!4409 r!2363)))))

(declare-fun b!2308178 () Bool)

(declare-fun c!365834 () Bool)

(assert (=> b!2308178 (= c!365834 (nullable!1894 (regOne!14026 (regex!4409 r!2363))))))

(assert (=> b!2308178 (= e!1479355 e!1479357)))

(declare-fun b!2308179 () Bool)

(assert (=> b!2308179 (= e!1479358 (ite (= (head!5065 lt!855852) (c!365711 (regex!4409 r!2363))) EmptyExpr!6757 EmptyLang!6757))))

(declare-fun b!2308180 () Bool)

(assert (=> b!2308180 (= e!1479354 EmptyLang!6757)))

(declare-fun d!682610 () Bool)

(declare-fun lt!856069 () Regex!6757)

(assert (=> d!682610 (validRegex!2555 lt!856069)))

(assert (=> d!682610 (= lt!856069 e!1479354)))

(declare-fun c!365835 () Bool)

(assert (=> d!682610 (= c!365835 (or ((_ is EmptyExpr!6757) (regex!4409 r!2363)) ((_ is EmptyLang!6757) (regex!4409 r!2363))))))

(assert (=> d!682610 (validRegex!2555 (regex!4409 r!2363))))

(assert (=> d!682610 (= (derivativeStep!1554 (regex!4409 r!2363) (head!5065 lt!855852)) lt!856069)))

(declare-fun bm!137201 () Bool)

(assert (=> bm!137201 (= call!137207 call!137204)))

(declare-fun b!2308181 () Bool)

(assert (=> b!2308181 (= c!365832 ((_ is Union!6757) (regex!4409 r!2363)))))

(declare-fun e!1479356 () Regex!6757)

(assert (=> b!2308181 (= e!1479358 e!1479356)))

(declare-fun b!2308182 () Bool)

(declare-fun call!137205 () Regex!6757)

(assert (=> b!2308182 (= e!1479356 (Union!6757 call!137205 call!137206))))

(declare-fun b!2308183 () Bool)

(assert (=> b!2308183 (= e!1479356 e!1479355)))

(assert (=> b!2308183 (= c!365831 ((_ is Star!6757) (regex!4409 r!2363)))))

(declare-fun b!2308184 () Bool)

(assert (=> b!2308184 (= e!1479357 (Union!6757 (Concat!11329 call!137207 (regTwo!14026 (regex!4409 r!2363))) call!137205))))

(declare-fun bm!137202 () Bool)

(assert (=> bm!137202 (= call!137205 (derivativeStep!1554 (ite c!365832 (regOne!14027 (regex!4409 r!2363)) (regTwo!14026 (regex!4409 r!2363))) (head!5065 lt!855852)))))

(assert (= (and d!682610 c!365835) b!2308180))

(assert (= (and d!682610 (not c!365835)) b!2308176))

(assert (= (and b!2308176 c!365833) b!2308179))

(assert (= (and b!2308176 (not c!365833)) b!2308181))

(assert (= (and b!2308181 c!365832) b!2308182))

(assert (= (and b!2308181 (not c!365832)) b!2308183))

(assert (= (and b!2308183 c!365831) b!2308177))

(assert (= (and b!2308183 (not c!365831)) b!2308178))

(assert (= (and b!2308178 c!365834) b!2308184))

(assert (= (and b!2308178 (not c!365834)) b!2308175))

(assert (= (or b!2308184 b!2308175) bm!137201))

(assert (= (or b!2308177 bm!137201) bm!137200))

(assert (= (or b!2308182 b!2308184) bm!137202))

(assert (= (or b!2308182 bm!137200) bm!137199))

(assert (=> bm!137199 m!2734607))

(declare-fun m!2735197 () Bool)

(assert (=> bm!137199 m!2735197))

(declare-fun m!2735199 () Bool)

(assert (=> b!2308178 m!2735199))

(declare-fun m!2735201 () Bool)

(assert (=> d!682610 m!2735201))

(assert (=> d!682610 m!2734947))

(assert (=> bm!137202 m!2734607))

(declare-fun m!2735203 () Bool)

(assert (=> bm!137202 m!2735203))

(assert (=> b!2307876 d!682610))

(declare-fun d!682612 () Bool)

(assert (=> d!682612 (= (head!5065 lt!855852) (h!32880 lt!855852))))

(assert (=> b!2307876 d!682612))

(assert (=> b!2307876 d!682584))

(declare-fun d!682614 () Bool)

(declare-fun lt!856070 () List!27573)

(assert (=> d!682614 (= (++!6727 (t!206517 lt!855852) lt!856070) (tail!3336 input!1722))))

(declare-fun e!1479359 () List!27573)

(assert (=> d!682614 (= lt!856070 e!1479359)))

(declare-fun c!365836 () Bool)

(assert (=> d!682614 (= c!365836 ((_ is Cons!27479) (t!206517 lt!855852)))))

(assert (=> d!682614 (>= (size!21687 (tail!3336 input!1722)) (size!21687 (t!206517 lt!855852)))))

(assert (=> d!682614 (= (getSuffix!1178 (tail!3336 input!1722) (t!206517 lt!855852)) lt!856070)))

(declare-fun b!2308185 () Bool)

(assert (=> b!2308185 (= e!1479359 (getSuffix!1178 (tail!3336 (tail!3336 input!1722)) (t!206517 (t!206517 lt!855852))))))

(declare-fun b!2308186 () Bool)

(assert (=> b!2308186 (= e!1479359 (tail!3336 input!1722))))

(assert (= (and d!682614 c!365836) b!2308185))

(assert (= (and d!682614 (not c!365836)) b!2308186))

(declare-fun m!2735205 () Bool)

(assert (=> d!682614 m!2735205))

(assert (=> d!682614 m!2734623))

(declare-fun m!2735207 () Bool)

(assert (=> d!682614 m!2735207))

(assert (=> d!682614 m!2734737))

(assert (=> b!2308185 m!2734623))

(declare-fun m!2735209 () Bool)

(assert (=> b!2308185 m!2735209))

(assert (=> b!2308185 m!2735209))

(declare-fun m!2735211 () Bool)

(assert (=> b!2308185 m!2735211))

(assert (=> b!2307560 d!682614))

(declare-fun d!682616 () Bool)

(assert (=> d!682616 (= (tail!3336 input!1722) (t!206517 input!1722))))

(assert (=> b!2307560 d!682616))

(declare-fun d!682618 () Bool)

(assert (=> d!682618 (= r!2363 otherR!12)))

(assert (=> d!682618 true))

(declare-fun _$42!226 () Unit!40394)

(assert (=> d!682618 (= (choose!13499 rules!1750 r!2363 otherR!12) _$42!226)))

(assert (=> d!682578 d!682618))

(assert (=> d!682578 d!682580))

(declare-fun d!682620 () Bool)

(declare-fun lt!856071 () Bool)

(assert (=> d!682620 (= lt!856071 (select (content!3715 rules!1750) (rule!6761 (_1!16211 (get!8285 lt!855934)))))))

(declare-fun e!1479361 () Bool)

(assert (=> d!682620 (= lt!856071 e!1479361)))

(declare-fun res!987022 () Bool)

(assert (=> d!682620 (=> (not res!987022) (not e!1479361))))

(assert (=> d!682620 (= res!987022 ((_ is Cons!27481) rules!1750))))

(assert (=> d!682620 (= (contains!4797 rules!1750 (rule!6761 (_1!16211 (get!8285 lt!855934)))) lt!856071)))

(declare-fun b!2308187 () Bool)

(declare-fun e!1479360 () Bool)

(assert (=> b!2308187 (= e!1479361 e!1479360)))

(declare-fun res!987021 () Bool)

(assert (=> b!2308187 (=> res!987021 e!1479360)))

(assert (=> b!2308187 (= res!987021 (= (h!32882 rules!1750) (rule!6761 (_1!16211 (get!8285 lt!855934)))))))

(declare-fun b!2308188 () Bool)

(assert (=> b!2308188 (= e!1479360 (contains!4797 (t!206519 rules!1750) (rule!6761 (_1!16211 (get!8285 lt!855934)))))))

(assert (= (and d!682620 res!987022) b!2308187))

(assert (= (and b!2308187 (not res!987021)) b!2308188))

(assert (=> d!682620 m!2734901))

(declare-fun m!2735213 () Bool)

(assert (=> d!682620 m!2735213))

(declare-fun m!2735215 () Bool)

(assert (=> b!2308188 m!2735215))

(assert (=> b!2307617 d!682620))

(assert (=> b!2307617 d!682594))

(declare-fun d!682622 () Bool)

(declare-fun res!987027 () Bool)

(declare-fun e!1479366 () Bool)

(assert (=> d!682622 (=> res!987027 e!1479366)))

(assert (=> d!682622 (= res!987027 ((_ is Nil!27481) rules!1750))))

(assert (=> d!682622 (= (noDuplicateTag!1636 thiss!16613 rules!1750 Nil!27482) e!1479366)))

(declare-fun b!2308193 () Bool)

(declare-fun e!1479367 () Bool)

(assert (=> b!2308193 (= e!1479366 e!1479367)))

(declare-fun res!987028 () Bool)

(assert (=> b!2308193 (=> (not res!987028) (not e!1479367))))

(declare-fun contains!4798 (List!27576 String!29959) Bool)

(assert (=> b!2308193 (= res!987028 (not (contains!4798 Nil!27482 (tag!4899 (h!32882 rules!1750)))))))

(declare-fun b!2308194 () Bool)

(assert (=> b!2308194 (= e!1479367 (noDuplicateTag!1636 thiss!16613 (t!206519 rules!1750) (Cons!27482 (tag!4899 (h!32882 rules!1750)) Nil!27482)))))

(assert (= (and d!682622 (not res!987027)) b!2308193))

(assert (= (and b!2308193 res!987028) b!2308194))

(declare-fun m!2735217 () Bool)

(assert (=> b!2308193 m!2735217))

(declare-fun m!2735219 () Bool)

(assert (=> b!2308194 m!2735219))

(assert (=> b!2307798 d!682622))

(assert (=> d!682432 d!682400))

(assert (=> d!682432 d!682434))

(declare-fun d!682624 () Bool)

(assert (=> d!682624 (isPrefix!2399 lt!855852 (++!6727 lt!855852 (_2!16211 lt!855868)))))

(assert (=> d!682624 true))

(declare-fun _$46!1350 () Unit!40394)

(assert (=> d!682624 (= (choose!13491 lt!855852 (_2!16211 lt!855868)) _$46!1350)))

(declare-fun bs!458014 () Bool)

(assert (= bs!458014 d!682624))

(assert (=> bs!458014 m!2734499))

(assert (=> bs!458014 m!2734499))

(assert (=> bs!458014 m!2734501))

(assert (=> d!682432 d!682624))

(declare-fun b!2308196 () Bool)

(declare-fun res!987032 () Bool)

(declare-fun e!1479368 () Bool)

(assert (=> b!2308196 (=> (not res!987032) (not e!1479368))))

(assert (=> b!2308196 (= res!987032 (= (head!5065 (tail!3336 lt!855852)) (head!5065 (tail!3336 (++!6727 lt!855852 (_2!16211 lt!855868))))))))

(declare-fun b!2308195 () Bool)

(declare-fun e!1479369 () Bool)

(assert (=> b!2308195 (= e!1479369 e!1479368)))

(declare-fun res!987029 () Bool)

(assert (=> b!2308195 (=> (not res!987029) (not e!1479368))))

(assert (=> b!2308195 (= res!987029 (not ((_ is Nil!27479) (tail!3336 (++!6727 lt!855852 (_2!16211 lt!855868))))))))

(declare-fun b!2308198 () Bool)

(declare-fun e!1479370 () Bool)

(assert (=> b!2308198 (= e!1479370 (>= (size!21687 (tail!3336 (++!6727 lt!855852 (_2!16211 lt!855868)))) (size!21687 (tail!3336 lt!855852))))))

(declare-fun d!682626 () Bool)

(assert (=> d!682626 e!1479370))

(declare-fun res!987030 () Bool)

(assert (=> d!682626 (=> res!987030 e!1479370)))

(declare-fun lt!856072 () Bool)

(assert (=> d!682626 (= res!987030 (not lt!856072))))

(assert (=> d!682626 (= lt!856072 e!1479369)))

(declare-fun res!987031 () Bool)

(assert (=> d!682626 (=> res!987031 e!1479369)))

(assert (=> d!682626 (= res!987031 ((_ is Nil!27479) (tail!3336 lt!855852)))))

(assert (=> d!682626 (= (isPrefix!2399 (tail!3336 lt!855852) (tail!3336 (++!6727 lt!855852 (_2!16211 lt!855868)))) lt!856072)))

(declare-fun b!2308197 () Bool)

(assert (=> b!2308197 (= e!1479368 (isPrefix!2399 (tail!3336 (tail!3336 lt!855852)) (tail!3336 (tail!3336 (++!6727 lt!855852 (_2!16211 lt!855868))))))))

(assert (= (and d!682626 (not res!987031)) b!2308195))

(assert (= (and b!2308195 res!987029) b!2308196))

(assert (= (and b!2308196 res!987032) b!2308197))

(assert (= (and d!682626 (not res!987030)) b!2308198))

(assert (=> b!2308196 m!2734613))

(assert (=> b!2308196 m!2735187))

(assert (=> b!2308196 m!2734615))

(declare-fun m!2735221 () Bool)

(assert (=> b!2308196 m!2735221))

(assert (=> b!2308198 m!2734615))

(declare-fun m!2735223 () Bool)

(assert (=> b!2308198 m!2735223))

(assert (=> b!2308198 m!2734613))

(declare-fun m!2735225 () Bool)

(assert (=> b!2308198 m!2735225))

(assert (=> b!2308197 m!2734613))

(assert (=> b!2308197 m!2735183))

(assert (=> b!2308197 m!2734615))

(declare-fun m!2735227 () Bool)

(assert (=> b!2308197 m!2735227))

(assert (=> b!2308197 m!2735183))

(assert (=> b!2308197 m!2735227))

(declare-fun m!2735229 () Bool)

(assert (=> b!2308197 m!2735229))

(assert (=> b!2307542 d!682626))

(assert (=> b!2307542 d!682584))

(declare-fun d!682628 () Bool)

(assert (=> d!682628 (= (tail!3336 (++!6727 lt!855852 (_2!16211 lt!855868))) (t!206517 (++!6727 lt!855852 (_2!16211 lt!855868))))))

(assert (=> b!2307542 d!682628))

(declare-fun d!682630 () Bool)

(declare-fun lt!856075 () Bool)

(assert (=> d!682630 (= lt!856075 (isEmpty!15714 (list!10849 (_1!16212 lt!856049))))))

(declare-fun isEmpty!15721 (Conc!8967) Bool)

(assert (=> d!682630 (= lt!856075 (isEmpty!15721 (c!365712 (_1!16212 lt!856049))))))

(assert (=> d!682630 (= (isEmpty!15720 (_1!16212 lt!856049)) lt!856075)))

(declare-fun bs!458015 () Bool)

(assert (= bs!458015 d!682630))

(assert (=> bs!458015 m!2735087))

(assert (=> bs!458015 m!2735087))

(declare-fun m!2735231 () Bool)

(assert (=> bs!458015 m!2735231))

(declare-fun m!2735233 () Bool)

(assert (=> bs!458015 m!2735233))

(assert (=> b!2308009 d!682630))

(declare-fun d!682632 () Bool)

(declare-fun lt!856078 () Int)

(assert (=> d!682632 (= lt!856078 (size!21692 (list!10849 (_1!16212 lt!856049))))))

(declare-fun size!21693 (Conc!8967) Int)

(assert (=> d!682632 (= lt!856078 (size!21693 (c!365712 (_1!16212 lt!856049))))))

(assert (=> d!682632 (= (size!21691 (_1!16212 lt!856049)) lt!856078)))

(declare-fun bs!458016 () Bool)

(assert (= bs!458016 d!682632))

(assert (=> bs!458016 m!2735087))

(assert (=> bs!458016 m!2735087))

(declare-fun m!2735235 () Bool)

(assert (=> bs!458016 m!2735235))

(declare-fun m!2735237 () Bool)

(assert (=> bs!458016 m!2735237))

(assert (=> d!682544 d!682632))

(declare-fun lt!856205 () tuple2!27404)

(declare-datatypes ((tuple2!27412 0))(
  ( (tuple2!27413 (_1!16216 Token!8296) (_2!16216 BalanceConc!17660)) )
))
(declare-datatypes ((Option!5408 0))(
  ( (None!5407) (Some!5407 (v!30517 tuple2!27412)) )
))
(declare-fun lt!856203 () Option!5408)

(declare-fun b!2308312 () Bool)

(declare-fun lexRec!552 (LexerInterface!4006 List!27575 BalanceConc!17660) tuple2!27404)

(assert (=> b!2308312 (= lt!856205 (lexRec!552 thiss!16613 rules!1750 (_2!16216 (v!30517 lt!856203))))))

(declare-fun e!1479441 () tuple2!27404)

(declare-fun prepend!1022 (BalanceConc!17662 Token!8296) BalanceConc!17662)

(assert (=> b!2308312 (= e!1479441 (tuple2!27405 (prepend!1022 (_1!16212 lt!856205) (_1!16216 (v!30517 lt!856203))) (_2!16212 lt!856205)))))

(declare-fun b!2308313 () Bool)

(declare-fun e!1479440 () tuple2!27404)

(assert (=> b!2308313 (= e!1479440 (tuple2!27405 (BalanceConc!17663 Empty!8967) (seqFromList!3113 input!1722)))))

(declare-fun b!2308314 () Bool)

(declare-fun e!1479443 () tuple2!27404)

(assert (=> b!2308314 (= e!1479443 (tuple2!27405 (BalanceConc!17663 Empty!8967) (seqFromList!3113 input!1722)))))

(declare-fun b!2308316 () Bool)

(declare-fun lt!856217 () BalanceConc!17660)

(assert (=> b!2308316 (= e!1479441 (tuple2!27405 (BalanceConc!17663 Empty!8967) lt!856217))))

(declare-fun lt!856192 () tuple2!27404)

(declare-fun b!2308317 () Bool)

(declare-fun e!1479442 () Bool)

(assert (=> b!2308317 (= e!1479442 (= (list!10848 (_2!16212 lt!856192)) (list!10848 (_2!16212 (lexRec!552 thiss!16613 rules!1750 (seqFromList!3113 input!1722))))))))

(declare-fun b!2308318 () Bool)

(declare-fun lt!856216 () Option!5408)

(declare-fun lt!856197 () BalanceConc!17660)

(declare-fun append!715 (BalanceConc!17662 Token!8296) BalanceConc!17662)

(assert (=> b!2308318 (= e!1479443 (lexTailRecV2!815 thiss!16613 rules!1750 (seqFromList!3113 input!1722) lt!856197 (_2!16216 (v!30517 lt!856216)) (append!715 (BalanceConc!17663 Empty!8967) (_1!16216 (v!30517 lt!856216)))))))

(declare-fun lt!856206 () tuple2!27404)

(assert (=> b!2308318 (= lt!856206 (lexRec!552 thiss!16613 rules!1750 (_2!16216 (v!30517 lt!856216))))))

(declare-fun lt!856196 () List!27573)

(assert (=> b!2308318 (= lt!856196 (list!10848 (BalanceConc!17661 Empty!8966)))))

(declare-fun lt!856210 () List!27573)

(assert (=> b!2308318 (= lt!856210 (list!10848 (charsOf!2797 (_1!16216 (v!30517 lt!856216)))))))

(declare-fun lt!856221 () List!27573)

(assert (=> b!2308318 (= lt!856221 (list!10848 (_2!16216 (v!30517 lt!856216))))))

(declare-fun lt!856218 () Unit!40394)

(declare-fun lemmaConcatAssociativity!1416 (List!27573 List!27573 List!27573) Unit!40394)

(assert (=> b!2308318 (= lt!856218 (lemmaConcatAssociativity!1416 lt!856196 lt!856210 lt!856221))))

(assert (=> b!2308318 (= (++!6727 (++!6727 lt!856196 lt!856210) lt!856221) (++!6727 lt!856196 (++!6727 lt!856210 lt!856221)))))

(declare-fun lt!856212 () Unit!40394)

(assert (=> b!2308318 (= lt!856212 lt!856218)))

(declare-fun lt!856209 () Option!5408)

(declare-fun maxPrefixZipperSequence!887 (LexerInterface!4006 List!27575 BalanceConc!17660) Option!5408)

(assert (=> b!2308318 (= lt!856209 (maxPrefixZipperSequence!887 thiss!16613 rules!1750 (seqFromList!3113 input!1722)))))

(declare-fun c!365870 () Bool)

(assert (=> b!2308318 (= c!365870 ((_ is Some!5407) lt!856209))))

(assert (=> b!2308318 (= (lexRec!552 thiss!16613 rules!1750 (seqFromList!3113 input!1722)) e!1479440)))

(declare-fun lt!856195 () Unit!40394)

(declare-fun Unit!40398 () Unit!40394)

(assert (=> b!2308318 (= lt!856195 Unit!40398)))

(declare-fun lt!856191 () List!27574)

(assert (=> b!2308318 (= lt!856191 (list!10849 (BalanceConc!17663 Empty!8967)))))

(declare-fun lt!856207 () List!27574)

(assert (=> b!2308318 (= lt!856207 (Cons!27480 (_1!16216 (v!30517 lt!856216)) Nil!27480))))

(declare-fun lt!856219 () List!27574)

(assert (=> b!2308318 (= lt!856219 (list!10849 (_1!16212 lt!856206)))))

(declare-fun lt!856223 () Unit!40394)

(declare-fun lemmaConcatAssociativity!1417 (List!27574 List!27574 List!27574) Unit!40394)

(assert (=> b!2308318 (= lt!856223 (lemmaConcatAssociativity!1417 lt!856191 lt!856207 lt!856219))))

(assert (=> b!2308318 (= (++!6728 (++!6728 lt!856191 lt!856207) lt!856219) (++!6728 lt!856191 (++!6728 lt!856207 lt!856219)))))

(declare-fun lt!856211 () Unit!40394)

(assert (=> b!2308318 (= lt!856211 lt!856223)))

(declare-fun lt!856204 () List!27573)

(assert (=> b!2308318 (= lt!856204 (++!6727 (list!10848 (BalanceConc!17661 Empty!8966)) (list!10848 (charsOf!2797 (_1!16216 (v!30517 lt!856216))))))))

(declare-fun lt!856202 () List!27573)

(assert (=> b!2308318 (= lt!856202 (list!10848 (_2!16216 (v!30517 lt!856216))))))

(declare-fun lt!856198 () List!27574)

(assert (=> b!2308318 (= lt!856198 (list!10849 (append!715 (BalanceConc!17663 Empty!8967) (_1!16216 (v!30517 lt!856216)))))))

(declare-fun lt!856208 () Unit!40394)

(declare-fun lemmaLexThenLexPrefix!366 (LexerInterface!4006 List!27575 List!27573 List!27573 List!27574 List!27574 List!27573) Unit!40394)

(assert (=> b!2308318 (= lt!856208 (lemmaLexThenLexPrefix!366 thiss!16613 rules!1750 lt!856204 lt!856202 lt!856198 (list!10849 (_1!16212 lt!856206)) (list!10848 (_2!16212 lt!856206))))))

(assert (=> b!2308318 (= (lexList!1140 thiss!16613 rules!1750 lt!856204) (tuple2!27407 lt!856198 Nil!27479))))

(declare-fun lt!856214 () Unit!40394)

(assert (=> b!2308318 (= lt!856214 lt!856208)))

(declare-fun ++!6729 (BalanceConc!17660 BalanceConc!17660) BalanceConc!17660)

(assert (=> b!2308318 (= lt!856217 (++!6729 (BalanceConc!17661 Empty!8966) (charsOf!2797 (_1!16216 (v!30517 lt!856216)))))))

(assert (=> b!2308318 (= lt!856203 (maxPrefixZipperSequence!887 thiss!16613 rules!1750 lt!856217))))

(declare-fun c!365869 () Bool)

(assert (=> b!2308318 (= c!365869 ((_ is Some!5407) lt!856203))))

(assert (=> b!2308318 (= (lexRec!552 thiss!16613 rules!1750 (++!6729 (BalanceConc!17661 Empty!8966) (charsOf!2797 (_1!16216 (v!30517 lt!856216))))) e!1479441)))

(declare-fun lt!856200 () Unit!40394)

(declare-fun Unit!40399 () Unit!40394)

(assert (=> b!2308318 (= lt!856200 Unit!40399)))

(assert (=> b!2308318 (= lt!856197 (++!6729 (BalanceConc!17661 Empty!8966) (charsOf!2797 (_1!16216 (v!30517 lt!856216)))))))

(declare-fun lt!856199 () List!27573)

(assert (=> b!2308318 (= lt!856199 (list!10848 lt!856197))))

(declare-fun lt!856224 () List!27573)

(assert (=> b!2308318 (= lt!856224 (list!10848 (_2!16216 (v!30517 lt!856216))))))

(declare-fun lt!856193 () Unit!40394)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!482 (List!27573 List!27573) Unit!40394)

(assert (=> b!2308318 (= lt!856193 (lemmaConcatTwoListThenFSndIsSuffix!482 lt!856199 lt!856224))))

(declare-fun isSuffix!788 (List!27573 List!27573) Bool)

(assert (=> b!2308318 (isSuffix!788 lt!856224 (++!6727 lt!856199 lt!856224))))

(declare-fun lt!856194 () Unit!40394)

(assert (=> b!2308318 (= lt!856194 lt!856193)))

(declare-fun d!682634 () Bool)

(assert (=> d!682634 e!1479442))

(declare-fun res!987077 () Bool)

(assert (=> d!682634 (=> (not res!987077) (not e!1479442))))

(assert (=> d!682634 (= res!987077 (= (list!10849 (_1!16212 lt!856192)) (list!10849 (_1!16212 (lexRec!552 thiss!16613 rules!1750 (seqFromList!3113 input!1722))))))))

(assert (=> d!682634 (= lt!856192 e!1479443)))

(declare-fun c!365868 () Bool)

(assert (=> d!682634 (= c!365868 ((_ is Some!5407) lt!856216))))

(declare-fun maxPrefixZipperSequenceV2!422 (LexerInterface!4006 List!27575 BalanceConc!17660 BalanceConc!17660) Option!5408)

(assert (=> d!682634 (= lt!856216 (maxPrefixZipperSequenceV2!422 thiss!16613 rules!1750 (seqFromList!3113 input!1722) (seqFromList!3113 input!1722)))))

(declare-fun lt!856215 () Unit!40394)

(declare-fun lt!856213 () Unit!40394)

(assert (=> d!682634 (= lt!856215 lt!856213)))

(declare-fun lt!856222 () List!27573)

(declare-fun lt!856220 () List!27573)

(assert (=> d!682634 (isSuffix!788 lt!856222 (++!6727 lt!856220 lt!856222))))

(assert (=> d!682634 (= lt!856213 (lemmaConcatTwoListThenFSndIsSuffix!482 lt!856220 lt!856222))))

(assert (=> d!682634 (= lt!856222 (list!10848 (seqFromList!3113 input!1722)))))

(assert (=> d!682634 (= lt!856220 (list!10848 (BalanceConc!17661 Empty!8966)))))

(assert (=> d!682634 (= (lexTailRecV2!815 thiss!16613 rules!1750 (seqFromList!3113 input!1722) (BalanceConc!17661 Empty!8966) (seqFromList!3113 input!1722) (BalanceConc!17663 Empty!8967)) lt!856192)))

(declare-fun b!2308315 () Bool)

(declare-fun lt!856201 () tuple2!27404)

(assert (=> b!2308315 (= lt!856201 (lexRec!552 thiss!16613 rules!1750 (_2!16216 (v!30517 lt!856209))))))

(assert (=> b!2308315 (= e!1479440 (tuple2!27405 (prepend!1022 (_1!16212 lt!856201) (_1!16216 (v!30517 lt!856209))) (_2!16212 lt!856201)))))

(assert (= (and d!682634 c!365868) b!2308318))

(assert (= (and d!682634 (not c!365868)) b!2308314))

(assert (= (and b!2308318 c!365870) b!2308315))

(assert (= (and b!2308318 (not c!365870)) b!2308313))

(assert (= (and b!2308318 c!365869) b!2308312))

(assert (= (and b!2308318 (not c!365869)) b!2308316))

(assert (= (and d!682634 res!987077) b!2308317))

(declare-fun m!2735393 () Bool)

(assert (=> b!2308318 m!2735393))

(declare-fun m!2735395 () Bool)

(assert (=> b!2308318 m!2735395))

(declare-fun m!2735397 () Bool)

(assert (=> b!2308318 m!2735397))

(declare-fun m!2735399 () Bool)

(assert (=> b!2308318 m!2735399))

(declare-fun m!2735401 () Bool)

(assert (=> b!2308318 m!2735401))

(declare-fun m!2735403 () Bool)

(assert (=> b!2308318 m!2735403))

(declare-fun m!2735405 () Bool)

(assert (=> b!2308318 m!2735405))

(declare-fun m!2735407 () Bool)

(assert (=> b!2308318 m!2735407))

(declare-fun m!2735409 () Bool)

(assert (=> b!2308318 m!2735409))

(declare-fun m!2735411 () Bool)

(assert (=> b!2308318 m!2735411))

(declare-fun m!2735413 () Bool)

(assert (=> b!2308318 m!2735413))

(assert (=> b!2308318 m!2735403))

(declare-fun m!2735415 () Bool)

(assert (=> b!2308318 m!2735415))

(declare-fun m!2735417 () Bool)

(assert (=> b!2308318 m!2735417))

(assert (=> b!2308318 m!2735399))

(assert (=> b!2308318 m!2735395))

(declare-fun m!2735419 () Bool)

(assert (=> b!2308318 m!2735419))

(assert (=> b!2308318 m!2735411))

(declare-fun m!2735421 () Bool)

(assert (=> b!2308318 m!2735421))

(declare-fun m!2735423 () Bool)

(assert (=> b!2308318 m!2735423))

(assert (=> b!2308318 m!2735419))

(declare-fun m!2735425 () Bool)

(assert (=> b!2308318 m!2735425))

(declare-fun m!2735427 () Bool)

(assert (=> b!2308318 m!2735427))

(declare-fun m!2735429 () Bool)

(assert (=> b!2308318 m!2735429))

(declare-fun m!2735431 () Bool)

(assert (=> b!2308318 m!2735431))

(assert (=> b!2308318 m!2734535))

(declare-fun m!2735433 () Bool)

(assert (=> b!2308318 m!2735433))

(declare-fun m!2735435 () Bool)

(assert (=> b!2308318 m!2735435))

(declare-fun m!2735437 () Bool)

(assert (=> b!2308318 m!2735437))

(declare-fun m!2735439 () Bool)

(assert (=> b!2308318 m!2735439))

(assert (=> b!2308318 m!2735435))

(declare-fun m!2735441 () Bool)

(assert (=> b!2308318 m!2735441))

(assert (=> b!2308318 m!2735425))

(declare-fun m!2735443 () Bool)

(assert (=> b!2308318 m!2735443))

(declare-fun m!2735445 () Bool)

(assert (=> b!2308318 m!2735445))

(assert (=> b!2308318 m!2735441))

(assert (=> b!2308318 m!2735407))

(assert (=> b!2308318 m!2734535))

(assert (=> b!2308318 m!2735439))

(declare-fun m!2735447 () Bool)

(assert (=> b!2308318 m!2735447))

(assert (=> b!2308318 m!2734535))

(declare-fun m!2735449 () Bool)

(assert (=> b!2308318 m!2735449))

(declare-fun m!2735451 () Bool)

(assert (=> b!2308318 m!2735451))

(assert (=> b!2308318 m!2735443))

(assert (=> b!2308318 m!2735429))

(declare-fun m!2735453 () Bool)

(assert (=> b!2308318 m!2735453))

(declare-fun m!2735455 () Bool)

(assert (=> b!2308318 m!2735455))

(assert (=> b!2308318 m!2735441))

(assert (=> b!2308318 m!2735439))

(declare-fun m!2735457 () Bool)

(assert (=> b!2308318 m!2735457))

(declare-fun m!2735459 () Bool)

(assert (=> b!2308317 m!2735459))

(assert (=> b!2308317 m!2734535))

(assert (=> b!2308317 m!2735433))

(declare-fun m!2735461 () Bool)

(assert (=> b!2308317 m!2735461))

(declare-fun m!2735463 () Bool)

(assert (=> d!682634 m!2735463))

(assert (=> d!682634 m!2735419))

(declare-fun m!2735465 () Bool)

(assert (=> d!682634 m!2735465))

(assert (=> d!682634 m!2734535))

(assert (=> d!682634 m!2734535))

(declare-fun m!2735467 () Bool)

(assert (=> d!682634 m!2735467))

(assert (=> d!682634 m!2734535))

(assert (=> d!682634 m!2735433))

(declare-fun m!2735469 () Bool)

(assert (=> d!682634 m!2735469))

(assert (=> d!682634 m!2734535))

(assert (=> d!682634 m!2735089))

(declare-fun m!2735471 () Bool)

(assert (=> d!682634 m!2735471))

(assert (=> d!682634 m!2735471))

(declare-fun m!2735473 () Bool)

(assert (=> d!682634 m!2735473))

(declare-fun m!2735475 () Bool)

(assert (=> b!2308315 m!2735475))

(declare-fun m!2735477 () Bool)

(assert (=> b!2308315 m!2735477))

(declare-fun m!2735479 () Bool)

(assert (=> b!2308312 m!2735479))

(declare-fun m!2735481 () Bool)

(assert (=> b!2308312 m!2735481))

(assert (=> d!682544 d!682634))

(declare-fun b!2308320 () Bool)

(declare-fun res!987081 () Bool)

(declare-fun e!1479444 () Bool)

(assert (=> b!2308320 (=> (not res!987081) (not e!1479444))))

(assert (=> b!2308320 (= res!987081 (= (head!5065 (tail!3336 input!1722)) (head!5065 (tail!3336 input!1722))))))

(declare-fun b!2308319 () Bool)

(declare-fun e!1479445 () Bool)

(assert (=> b!2308319 (= e!1479445 e!1479444)))

(declare-fun res!987078 () Bool)

(assert (=> b!2308319 (=> (not res!987078) (not e!1479444))))

(assert (=> b!2308319 (= res!987078 (not ((_ is Nil!27479) (tail!3336 input!1722))))))

(declare-fun b!2308322 () Bool)

(declare-fun e!1479446 () Bool)

(assert (=> b!2308322 (= e!1479446 (>= (size!21687 (tail!3336 input!1722)) (size!21687 (tail!3336 input!1722))))))

(declare-fun d!682734 () Bool)

(assert (=> d!682734 e!1479446))

(declare-fun res!987079 () Bool)

(assert (=> d!682734 (=> res!987079 e!1479446)))

(declare-fun lt!856225 () Bool)

(assert (=> d!682734 (= res!987079 (not lt!856225))))

(assert (=> d!682734 (= lt!856225 e!1479445)))

(declare-fun res!987080 () Bool)

(assert (=> d!682734 (=> res!987080 e!1479445)))

(assert (=> d!682734 (= res!987080 ((_ is Nil!27479) (tail!3336 input!1722)))))

(assert (=> d!682734 (= (isPrefix!2399 (tail!3336 input!1722) (tail!3336 input!1722)) lt!856225)))

(declare-fun b!2308321 () Bool)

(assert (=> b!2308321 (= e!1479444 (isPrefix!2399 (tail!3336 (tail!3336 input!1722)) (tail!3336 (tail!3336 input!1722))))))

(assert (= (and d!682734 (not res!987080)) b!2308319))

(assert (= (and b!2308319 res!987078) b!2308320))

(assert (= (and b!2308320 res!987081) b!2308321))

(assert (= (and d!682734 (not res!987079)) b!2308322))

(assert (=> b!2308320 m!2734623))

(declare-fun m!2735483 () Bool)

(assert (=> b!2308320 m!2735483))

(assert (=> b!2308320 m!2734623))

(assert (=> b!2308320 m!2735483))

(assert (=> b!2308322 m!2734623))

(assert (=> b!2308322 m!2735207))

(assert (=> b!2308322 m!2734623))

(assert (=> b!2308322 m!2735207))

(assert (=> b!2308321 m!2734623))

(assert (=> b!2308321 m!2735209))

(assert (=> b!2308321 m!2734623))

(assert (=> b!2308321 m!2735209))

(assert (=> b!2308321 m!2735209))

(assert (=> b!2308321 m!2735209))

(declare-fun m!2735485 () Bool)

(assert (=> b!2308321 m!2735485))

(assert (=> b!2307651 d!682734))

(assert (=> b!2307651 d!682616))

(declare-fun d!682736 () Bool)

(assert (=> d!682736 (= (isEmpty!15716 lt!856040) (not ((_ is Some!5406) lt!856040)))))

(assert (=> d!682536 d!682736))

(declare-fun d!682738 () Bool)

(assert (=> d!682738 (= (isEmpty!15718 (_1!16215 lt!856039)) ((_ is Nil!27479) (_1!16215 lt!856039)))))

(assert (=> d!682536 d!682738))

(declare-fun d!682740 () Bool)

(declare-fun lt!856254 () tuple2!27410)

(assert (=> d!682740 (= (++!6727 (_1!16215 lt!856254) (_2!16215 lt!856254)) input!1722)))

(declare-fun sizeTr!135 (List!27573 Int) Int)

(assert (=> d!682740 (= lt!856254 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 0 input!1722 input!1722 (sizeTr!135 input!1722 0)))))

(declare-fun lt!856253 () Unit!40394)

(declare-fun lt!856251 () Unit!40394)

(assert (=> d!682740 (= lt!856253 lt!856251)))

(declare-fun lt!856252 () List!27573)

(declare-fun lt!856255 () Int)

(assert (=> d!682740 (= (sizeTr!135 lt!856252 lt!856255) (+ (size!21687 lt!856252) lt!856255))))

(declare-fun lemmaSizeTrEqualsSize!134 (List!27573 Int) Unit!40394)

(assert (=> d!682740 (= lt!856251 (lemmaSizeTrEqualsSize!134 lt!856252 lt!856255))))

(assert (=> d!682740 (= lt!856255 0)))

(assert (=> d!682740 (= lt!856252 Nil!27479)))

(declare-fun lt!856257 () Unit!40394)

(declare-fun lt!856256 () Unit!40394)

(assert (=> d!682740 (= lt!856257 lt!856256)))

(declare-fun lt!856258 () Int)

(assert (=> d!682740 (= (sizeTr!135 input!1722 lt!856258) (+ (size!21687 input!1722) lt!856258))))

(assert (=> d!682740 (= lt!856256 (lemmaSizeTrEqualsSize!134 input!1722 lt!856258))))

(assert (=> d!682740 (= lt!856258 0)))

(assert (=> d!682740 (validRegex!2555 (regex!4409 r!2363))))

(assert (=> d!682740 (= (findLongestMatch!668 (regex!4409 r!2363) input!1722) lt!856254)))

(declare-fun bs!458039 () Bool)

(assert (= bs!458039 d!682740))

(declare-fun m!2735501 () Bool)

(assert (=> bs!458039 m!2735501))

(declare-fun m!2735503 () Bool)

(assert (=> bs!458039 m!2735503))

(declare-fun m!2735505 () Bool)

(assert (=> bs!458039 m!2735505))

(assert (=> bs!458039 m!2735501))

(declare-fun m!2735507 () Bool)

(assert (=> bs!458039 m!2735507))

(declare-fun m!2735509 () Bool)

(assert (=> bs!458039 m!2735509))

(assert (=> bs!458039 m!2734621))

(assert (=> bs!458039 m!2734947))

(declare-fun m!2735511 () Bool)

(assert (=> bs!458039 m!2735511))

(declare-fun m!2735513 () Bool)

(assert (=> bs!458039 m!2735513))

(declare-fun m!2735515 () Bool)

(assert (=> bs!458039 m!2735515))

(assert (=> d!682536 d!682740))

(assert (=> d!682536 d!682568))

(declare-fun d!682746 () Bool)

(declare-fun nullableFct!462 (Regex!6757) Bool)

(assert (=> d!682746 (= (nullable!1894 (regex!4409 r!2363)) (nullableFct!462 (regex!4409 r!2363)))))

(declare-fun bs!458040 () Bool)

(assert (= bs!458040 d!682746))

(declare-fun m!2735517 () Bool)

(assert (=> bs!458040 m!2735517))

(assert (=> b!2308017 d!682746))

(declare-fun d!682748 () Bool)

(assert (=> d!682748 (= (inv!37117 (tag!4899 (rule!6761 (h!32881 (t!206518 tokens!456))))) (= (mod (str.len (value!139475 (tag!4899 (rule!6761 (h!32881 (t!206518 tokens!456)))))) 2) 0))))

(assert (=> b!2308085 d!682748))

(declare-fun d!682750 () Bool)

(declare-fun res!987085 () Bool)

(declare-fun e!1479456 () Bool)

(assert (=> d!682750 (=> (not res!987085) (not e!1479456))))

(assert (=> d!682750 (= res!987085 (semiInverseModEq!1796 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456)))))))))

(assert (=> d!682750 (= (inv!37120 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) e!1479456)))

(declare-fun b!2308338 () Bool)

(assert (=> b!2308338 (= e!1479456 (equivClasses!1715 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456)))))))))

(assert (= (and d!682750 res!987085) b!2308338))

(declare-fun m!2735519 () Bool)

(assert (=> d!682750 m!2735519))

(declare-fun m!2735521 () Bool)

(assert (=> b!2308338 m!2735521))

(assert (=> b!2308085 d!682750))

(assert (=> d!682506 d!682498))

(declare-fun d!682752 () Bool)

(assert (=> d!682752 (= (isEmpty!15718 (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456))))) ((_ is Nil!27479) (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456))))))))

(assert (=> b!2307865 d!682752))

(declare-fun d!682754 () Bool)

(assert (=> d!682754 (= (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456)))) (t!206517 (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))

(assert (=> b!2307865 d!682754))

(declare-fun b!2308339 () Bool)

(declare-fun e!1479458 () Bool)

(assert (=> b!2308339 (= e!1479458 (inv!15 (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)))))

(declare-fun d!682756 () Bool)

(declare-fun c!365878 () Bool)

(assert (=> d!682756 (= c!365878 ((_ is IntegerValue!13713) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)))))

(declare-fun e!1479457 () Bool)

(assert (=> d!682756 (= (inv!21 (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)) e!1479457)))

(declare-fun b!2308340 () Bool)

(declare-fun e!1479459 () Bool)

(assert (=> b!2308340 (= e!1479457 e!1479459)))

(declare-fun c!365877 () Bool)

(assert (=> b!2308340 (= c!365877 ((_ is IntegerValue!13714) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)))))

(declare-fun b!2308341 () Bool)

(declare-fun res!987086 () Bool)

(assert (=> b!2308341 (=> res!987086 e!1479458)))

(assert (=> b!2308341 (= res!987086 (not ((_ is IntegerValue!13715) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861))))))

(assert (=> b!2308341 (= e!1479459 e!1479458)))

(declare-fun b!2308342 () Bool)

(assert (=> b!2308342 (= e!1479459 (inv!17 (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)))))

(declare-fun b!2308343 () Bool)

(assert (=> b!2308343 (= e!1479457 (inv!16 (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)))))

(assert (= (and d!682756 c!365878) b!2308343))

(assert (= (and d!682756 (not c!365878)) b!2308340))

(assert (= (and b!2308340 c!365877) b!2308342))

(assert (= (and b!2308340 (not c!365877)) b!2308341))

(assert (= (and b!2308341 (not res!987086)) b!2308339))

(declare-fun m!2735523 () Bool)

(assert (=> b!2308339 m!2735523))

(declare-fun m!2735525 () Bool)

(assert (=> b!2308342 m!2735525))

(declare-fun m!2735527 () Bool)

(assert (=> b!2308343 m!2735527))

(assert (=> tb!138199 d!682756))

(declare-fun b!2308345 () Bool)

(declare-fun res!987090 () Bool)

(declare-fun e!1479460 () Bool)

(assert (=> b!2308345 (=> (not res!987090) (not e!1479460))))

(assert (=> b!2308345 (= res!987090 (= (head!5065 (tail!3336 otherP!12)) (head!5065 (tail!3336 input!1722))))))

(declare-fun b!2308344 () Bool)

(declare-fun e!1479461 () Bool)

(assert (=> b!2308344 (= e!1479461 e!1479460)))

(declare-fun res!987087 () Bool)

(assert (=> b!2308344 (=> (not res!987087) (not e!1479460))))

(assert (=> b!2308344 (= res!987087 (not ((_ is Nil!27479) (tail!3336 input!1722))))))

(declare-fun b!2308347 () Bool)

(declare-fun e!1479462 () Bool)

(assert (=> b!2308347 (= e!1479462 (>= (size!21687 (tail!3336 input!1722)) (size!21687 (tail!3336 otherP!12))))))

(declare-fun d!682758 () Bool)

(assert (=> d!682758 e!1479462))

(declare-fun res!987088 () Bool)

(assert (=> d!682758 (=> res!987088 e!1479462)))

(declare-fun lt!856259 () Bool)

(assert (=> d!682758 (= res!987088 (not lt!856259))))

(assert (=> d!682758 (= lt!856259 e!1479461)))

(declare-fun res!987089 () Bool)

(assert (=> d!682758 (=> res!987089 e!1479461)))

(assert (=> d!682758 (= res!987089 ((_ is Nil!27479) (tail!3336 otherP!12)))))

(assert (=> d!682758 (= (isPrefix!2399 (tail!3336 otherP!12) (tail!3336 input!1722)) lt!856259)))

(declare-fun b!2308346 () Bool)

(assert (=> b!2308346 (= e!1479460 (isPrefix!2399 (tail!3336 (tail!3336 otherP!12)) (tail!3336 (tail!3336 input!1722))))))

(assert (= (and d!682758 (not res!987089)) b!2308344))

(assert (= (and b!2308344 res!987087) b!2308345))

(assert (= (and b!2308345 res!987090) b!2308346))

(assert (= (and d!682758 (not res!987088)) b!2308347))

(assert (=> b!2308345 m!2734961))

(declare-fun m!2735529 () Bool)

(assert (=> b!2308345 m!2735529))

(assert (=> b!2308345 m!2734623))

(assert (=> b!2308345 m!2735483))

(assert (=> b!2308347 m!2734623))

(assert (=> b!2308347 m!2735207))

(assert (=> b!2308347 m!2734961))

(declare-fun m!2735531 () Bool)

(assert (=> b!2308347 m!2735531))

(assert (=> b!2308346 m!2734961))

(declare-fun m!2735533 () Bool)

(assert (=> b!2308346 m!2735533))

(assert (=> b!2308346 m!2734623))

(assert (=> b!2308346 m!2735209))

(assert (=> b!2308346 m!2735533))

(assert (=> b!2308346 m!2735209))

(declare-fun m!2735535 () Bool)

(assert (=> b!2308346 m!2735535))

(assert (=> b!2307887 d!682758))

(declare-fun d!682760 () Bool)

(assert (=> d!682760 (= (tail!3336 otherP!12) (t!206517 otherP!12))))

(assert (=> b!2307887 d!682760))

(assert (=> b!2307887 d!682616))

(assert (=> b!2307884 d!682582))

(assert (=> b!2307884 d!682584))

(declare-fun d!682762 () Bool)

(declare-fun lt!856260 () Int)

(assert (=> d!682762 (>= lt!856260 0)))

(declare-fun e!1479463 () Int)

(assert (=> d!682762 (= lt!856260 e!1479463)))

(declare-fun c!365879 () Bool)

(assert (=> d!682762 (= c!365879 ((_ is Nil!27479) input!1722))))

(assert (=> d!682762 (= (size!21687 input!1722) lt!856260)))

(declare-fun b!2308348 () Bool)

(assert (=> b!2308348 (= e!1479463 0)))

(declare-fun b!2308349 () Bool)

(assert (=> b!2308349 (= e!1479463 (+ 1 (size!21687 (t!206517 input!1722))))))

(assert (= (and d!682762 c!365879) b!2308348))

(assert (= (and d!682762 (not c!365879)) b!2308349))

(declare-fun m!2735537 () Bool)

(assert (=> b!2308349 m!2735537))

(assert (=> b!2307892 d!682762))

(assert (=> b!2307892 d!682436))

(declare-fun d!682764 () Bool)

(declare-fun e!1479464 () Bool)

(assert (=> d!682764 e!1479464))

(declare-fun c!365880 () Bool)

(assert (=> d!682764 (= c!365880 ((_ is EmptyExpr!6757) (derivativeStep!1554 (regex!4409 r!2363) (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))))

(declare-fun lt!856261 () Bool)

(declare-fun e!1479466 () Bool)

(assert (=> d!682764 (= lt!856261 e!1479466)))

(declare-fun c!365882 () Bool)

(assert (=> d!682764 (= c!365882 (isEmpty!15718 (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456))))))))

(assert (=> d!682764 (validRegex!2555 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456))))))))

(assert (=> d!682764 (= (matchR!3014 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456))))) (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456))))) lt!856261)))

(declare-fun b!2308350 () Bool)

(declare-fun res!987095 () Bool)

(declare-fun e!1479468 () Bool)

(assert (=> b!2308350 (=> res!987095 e!1479468)))

(assert (=> b!2308350 (= res!987095 (not ((_ is ElementMatch!6757) (derivativeStep!1554 (regex!4409 r!2363) (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456))))))))))

(declare-fun e!1479469 () Bool)

(assert (=> b!2308350 (= e!1479469 e!1479468)))

(declare-fun b!2308351 () Bool)

(assert (=> b!2308351 (= e!1479464 e!1479469)))

(declare-fun c!365881 () Bool)

(assert (=> b!2308351 (= c!365881 ((_ is EmptyLang!6757) (derivativeStep!1554 (regex!4409 r!2363) (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))))

(declare-fun b!2308352 () Bool)

(declare-fun e!1479470 () Bool)

(declare-fun e!1479465 () Bool)

(assert (=> b!2308352 (= e!1479470 e!1479465)))

(declare-fun res!987091 () Bool)

(assert (=> b!2308352 (=> res!987091 e!1479465)))

(declare-fun call!137218 () Bool)

(assert (=> b!2308352 (= res!987091 call!137218)))

(declare-fun b!2308353 () Bool)

(declare-fun e!1479467 () Bool)

(assert (=> b!2308353 (= e!1479467 (= (head!5065 (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456))))) (c!365711 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456))))))))))

(declare-fun b!2308354 () Bool)

(assert (=> b!2308354 (= e!1479468 e!1479470)))

(declare-fun res!987093 () Bool)

(assert (=> b!2308354 (=> (not res!987093) (not e!1479470))))

(assert (=> b!2308354 (= res!987093 (not lt!856261))))

(declare-fun b!2308355 () Bool)

(assert (=> b!2308355 (= e!1479466 (matchR!3014 (derivativeStep!1554 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456))))) (head!5065 (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456)))))) (tail!3336 (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))))

(declare-fun b!2308356 () Bool)

(declare-fun res!987096 () Bool)

(assert (=> b!2308356 (=> res!987096 e!1479468)))

(assert (=> b!2308356 (= res!987096 e!1479467)))

(declare-fun res!987098 () Bool)

(assert (=> b!2308356 (=> (not res!987098) (not e!1479467))))

(assert (=> b!2308356 (= res!987098 lt!856261)))

(declare-fun bm!137213 () Bool)

(assert (=> bm!137213 (= call!137218 (isEmpty!15718 (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456))))))))

(declare-fun b!2308357 () Bool)

(declare-fun res!987094 () Bool)

(assert (=> b!2308357 (=> (not res!987094) (not e!1479467))))

(assert (=> b!2308357 (= res!987094 (not call!137218))))

(declare-fun b!2308358 () Bool)

(declare-fun res!987092 () Bool)

(assert (=> b!2308358 (=> (not res!987092) (not e!1479467))))

(assert (=> b!2308358 (= res!987092 (isEmpty!15718 (tail!3336 (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))))

(declare-fun b!2308359 () Bool)

(assert (=> b!2308359 (= e!1479466 (nullable!1894 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))))

(declare-fun b!2308360 () Bool)

(assert (=> b!2308360 (= e!1479469 (not lt!856261))))

(declare-fun b!2308361 () Bool)

(assert (=> b!2308361 (= e!1479465 (not (= (head!5065 (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456))))) (c!365711 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))))))

(declare-fun b!2308362 () Bool)

(assert (=> b!2308362 (= e!1479464 (= lt!856261 call!137218))))

(declare-fun b!2308363 () Bool)

(declare-fun res!987097 () Bool)

(assert (=> b!2308363 (=> res!987097 e!1479465)))

(assert (=> b!2308363 (= res!987097 (not (isEmpty!15718 (tail!3336 (tail!3336 (list!10848 (charsOf!2797 (head!5064 tokens!456))))))))))

(assert (= (and d!682764 c!365882) b!2308359))

(assert (= (and d!682764 (not c!365882)) b!2308355))

(assert (= (and d!682764 c!365880) b!2308362))

(assert (= (and d!682764 (not c!365880)) b!2308351))

(assert (= (and b!2308351 c!365881) b!2308360))

(assert (= (and b!2308351 (not c!365881)) b!2308350))

(assert (= (and b!2308350 (not res!987095)) b!2308356))

(assert (= (and b!2308356 res!987098) b!2308357))

(assert (= (and b!2308357 res!987094) b!2308358))

(assert (= (and b!2308358 res!987092) b!2308353))

(assert (= (and b!2308356 (not res!987096)) b!2308354))

(assert (= (and b!2308354 res!987093) b!2308352))

(assert (= (and b!2308352 (not res!987091)) b!2308363))

(assert (= (and b!2308363 (not res!987097)) b!2308361))

(assert (= (or b!2308362 b!2308357 b!2308352) bm!137213))

(assert (=> b!2308358 m!2734933))

(declare-fun m!2735539 () Bool)

(assert (=> b!2308358 m!2735539))

(assert (=> b!2308358 m!2735539))

(declare-fun m!2735541 () Bool)

(assert (=> b!2308358 m!2735541))

(assert (=> b!2308363 m!2734933))

(assert (=> b!2308363 m!2735539))

(assert (=> b!2308363 m!2735539))

(assert (=> b!2308363 m!2735541))

(assert (=> b!2308355 m!2734933))

(declare-fun m!2735543 () Bool)

(assert (=> b!2308355 m!2735543))

(assert (=> b!2308355 m!2734939))

(assert (=> b!2308355 m!2735543))

(declare-fun m!2735545 () Bool)

(assert (=> b!2308355 m!2735545))

(assert (=> b!2308355 m!2734933))

(assert (=> b!2308355 m!2735539))

(assert (=> b!2308355 m!2735545))

(assert (=> b!2308355 m!2735539))

(declare-fun m!2735547 () Bool)

(assert (=> b!2308355 m!2735547))

(assert (=> b!2308361 m!2734933))

(assert (=> b!2308361 m!2735543))

(assert (=> b!2308353 m!2734933))

(assert (=> b!2308353 m!2735543))

(assert (=> b!2308359 m!2734939))

(declare-fun m!2735549 () Bool)

(assert (=> b!2308359 m!2735549))

(assert (=> bm!137213 m!2734933))

(assert (=> bm!137213 m!2734935))

(assert (=> d!682764 m!2734933))

(assert (=> d!682764 m!2734935))

(assert (=> d!682764 m!2734939))

(declare-fun m!2735551 () Bool)

(assert (=> d!682764 m!2735551))

(assert (=> b!2307862 d!682764))

(declare-fun b!2308364 () Bool)

(declare-fun e!1479474 () Regex!6757)

(declare-fun call!137222 () Regex!6757)

(assert (=> b!2308364 (= e!1479474 (Union!6757 (Concat!11329 call!137222 (regTwo!14026 (regex!4409 r!2363))) EmptyLang!6757))))

(declare-fun b!2308365 () Bool)

(declare-fun e!1479471 () Regex!6757)

(declare-fun e!1479475 () Regex!6757)

(assert (=> b!2308365 (= e!1479471 e!1479475)))

(declare-fun c!365885 () Bool)

(assert (=> b!2308365 (= c!365885 ((_ is ElementMatch!6757) (regex!4409 r!2363)))))

(declare-fun call!137221 () Regex!6757)

(declare-fun c!365884 () Bool)

(declare-fun bm!137214 () Bool)

(declare-fun c!365883 () Bool)

(assert (=> bm!137214 (= call!137221 (derivativeStep!1554 (ite c!365884 (regTwo!14027 (regex!4409 r!2363)) (ite c!365883 (reg!7086 (regex!4409 r!2363)) (regOne!14026 (regex!4409 r!2363)))) (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456))))))))

(declare-fun bm!137215 () Bool)

(declare-fun call!137219 () Regex!6757)

(assert (=> bm!137215 (= call!137219 call!137221)))

(declare-fun b!2308366 () Bool)

(declare-fun e!1479472 () Regex!6757)

(assert (=> b!2308366 (= e!1479472 (Concat!11329 call!137219 (regex!4409 r!2363)))))

(declare-fun b!2308367 () Bool)

(declare-fun c!365886 () Bool)

(assert (=> b!2308367 (= c!365886 (nullable!1894 (regOne!14026 (regex!4409 r!2363))))))

(assert (=> b!2308367 (= e!1479472 e!1479474)))

(declare-fun b!2308368 () Bool)

(assert (=> b!2308368 (= e!1479475 (ite (= (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456)))) (c!365711 (regex!4409 r!2363))) EmptyExpr!6757 EmptyLang!6757))))

(declare-fun b!2308369 () Bool)

(assert (=> b!2308369 (= e!1479471 EmptyLang!6757)))

(declare-fun d!682766 () Bool)

(declare-fun lt!856262 () Regex!6757)

(assert (=> d!682766 (validRegex!2555 lt!856262)))

(assert (=> d!682766 (= lt!856262 e!1479471)))

(declare-fun c!365887 () Bool)

(assert (=> d!682766 (= c!365887 (or ((_ is EmptyExpr!6757) (regex!4409 r!2363)) ((_ is EmptyLang!6757) (regex!4409 r!2363))))))

(assert (=> d!682766 (validRegex!2555 (regex!4409 r!2363))))

(assert (=> d!682766 (= (derivativeStep!1554 (regex!4409 r!2363) (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456))))) lt!856262)))

(declare-fun bm!137216 () Bool)

(assert (=> bm!137216 (= call!137222 call!137219)))

(declare-fun b!2308370 () Bool)

(assert (=> b!2308370 (= c!365884 ((_ is Union!6757) (regex!4409 r!2363)))))

(declare-fun e!1479473 () Regex!6757)

(assert (=> b!2308370 (= e!1479475 e!1479473)))

(declare-fun b!2308371 () Bool)

(declare-fun call!137220 () Regex!6757)

(assert (=> b!2308371 (= e!1479473 (Union!6757 call!137220 call!137221))))

(declare-fun b!2308372 () Bool)

(assert (=> b!2308372 (= e!1479473 e!1479472)))

(assert (=> b!2308372 (= c!365883 ((_ is Star!6757) (regex!4409 r!2363)))))

(declare-fun b!2308373 () Bool)

(assert (=> b!2308373 (= e!1479474 (Union!6757 (Concat!11329 call!137222 (regTwo!14026 (regex!4409 r!2363))) call!137220))))

(declare-fun bm!137217 () Bool)

(assert (=> bm!137217 (= call!137220 (derivativeStep!1554 (ite c!365884 (regOne!14027 (regex!4409 r!2363)) (regTwo!14026 (regex!4409 r!2363))) (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456))))))))

(assert (= (and d!682766 c!365887) b!2308369))

(assert (= (and d!682766 (not c!365887)) b!2308365))

(assert (= (and b!2308365 c!365885) b!2308368))

(assert (= (and b!2308365 (not c!365885)) b!2308370))

(assert (= (and b!2308370 c!365884) b!2308371))

(assert (= (and b!2308370 (not c!365884)) b!2308372))

(assert (= (and b!2308372 c!365883) b!2308366))

(assert (= (and b!2308372 (not c!365883)) b!2308367))

(assert (= (and b!2308367 c!365886) b!2308373))

(assert (= (and b!2308367 (not c!365886)) b!2308364))

(assert (= (or b!2308373 b!2308364) bm!137216))

(assert (= (or b!2308366 bm!137216) bm!137215))

(assert (= (or b!2308371 b!2308373) bm!137217))

(assert (= (or b!2308371 bm!137215) bm!137214))

(assert (=> bm!137214 m!2734937))

(declare-fun m!2735553 () Bool)

(assert (=> bm!137214 m!2735553))

(assert (=> b!2308367 m!2735199))

(declare-fun m!2735555 () Bool)

(assert (=> d!682766 m!2735555))

(assert (=> d!682766 m!2734947))

(assert (=> bm!137217 m!2734937))

(declare-fun m!2735557 () Bool)

(assert (=> bm!137217 m!2735557))

(assert (=> b!2307862 d!682766))

(declare-fun d!682768 () Bool)

(assert (=> d!682768 (= (head!5065 (list!10848 (charsOf!2797 (head!5064 tokens!456)))) (h!32880 (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))

(assert (=> b!2307862 d!682768))

(assert (=> b!2307862 d!682754))

(assert (=> b!2307860 d!682768))

(declare-fun d!682770 () Bool)

(declare-fun e!1479476 () Bool)

(assert (=> d!682770 e!1479476))

(declare-fun c!365888 () Bool)

(assert (=> d!682770 (= c!365888 ((_ is EmptyExpr!6757) (regex!4409 r!2363)))))

(declare-fun lt!856263 () Bool)

(declare-fun e!1479478 () Bool)

(assert (=> d!682770 (= lt!856263 e!1479478)))

(declare-fun c!365890 () Bool)

(assert (=> d!682770 (= c!365890 (isEmpty!15718 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040))))))))

(assert (=> d!682770 (validRegex!2555 (regex!4409 r!2363))))

(assert (=> d!682770 (= (matchR!3014 (regex!4409 r!2363) (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040))))) lt!856263)))

(declare-fun b!2308374 () Bool)

(declare-fun res!987103 () Bool)

(declare-fun e!1479480 () Bool)

(assert (=> b!2308374 (=> res!987103 e!1479480)))

(assert (=> b!2308374 (= res!987103 (not ((_ is ElementMatch!6757) (regex!4409 r!2363))))))

(declare-fun e!1479481 () Bool)

(assert (=> b!2308374 (= e!1479481 e!1479480)))

(declare-fun b!2308375 () Bool)

(assert (=> b!2308375 (= e!1479476 e!1479481)))

(declare-fun c!365889 () Bool)

(assert (=> b!2308375 (= c!365889 ((_ is EmptyLang!6757) (regex!4409 r!2363)))))

(declare-fun b!2308376 () Bool)

(declare-fun e!1479482 () Bool)

(declare-fun e!1479477 () Bool)

(assert (=> b!2308376 (= e!1479482 e!1479477)))

(declare-fun res!987099 () Bool)

(assert (=> b!2308376 (=> res!987099 e!1479477)))

(declare-fun call!137223 () Bool)

(assert (=> b!2308376 (= res!987099 call!137223)))

(declare-fun b!2308377 () Bool)

(declare-fun e!1479479 () Bool)

(assert (=> b!2308377 (= e!1479479 (= (head!5065 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040))))) (c!365711 (regex!4409 r!2363))))))

(declare-fun b!2308378 () Bool)

(assert (=> b!2308378 (= e!1479480 e!1479482)))

(declare-fun res!987101 () Bool)

(assert (=> b!2308378 (=> (not res!987101) (not e!1479482))))

(assert (=> b!2308378 (= res!987101 (not lt!856263))))

(declare-fun b!2308379 () Bool)

(assert (=> b!2308379 (= e!1479478 (matchR!3014 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040)))))) (tail!3336 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040)))))))))

(declare-fun b!2308380 () Bool)

(declare-fun res!987104 () Bool)

(assert (=> b!2308380 (=> res!987104 e!1479480)))

(assert (=> b!2308380 (= res!987104 e!1479479)))

(declare-fun res!987106 () Bool)

(assert (=> b!2308380 (=> (not res!987106) (not e!1479479))))

(assert (=> b!2308380 (= res!987106 lt!856263)))

(declare-fun bm!137218 () Bool)

(assert (=> bm!137218 (= call!137223 (isEmpty!15718 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040))))))))

(declare-fun b!2308381 () Bool)

(declare-fun res!987102 () Bool)

(assert (=> b!2308381 (=> (not res!987102) (not e!1479479))))

(assert (=> b!2308381 (= res!987102 (not call!137223))))

(declare-fun b!2308382 () Bool)

(declare-fun res!987100 () Bool)

(assert (=> b!2308382 (=> (not res!987100) (not e!1479479))))

(assert (=> b!2308382 (= res!987100 (isEmpty!15718 (tail!3336 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040)))))))))

(declare-fun b!2308383 () Bool)

(assert (=> b!2308383 (= e!1479478 (nullable!1894 (regex!4409 r!2363)))))

(declare-fun b!2308384 () Bool)

(assert (=> b!2308384 (= e!1479481 (not lt!856263))))

(declare-fun b!2308385 () Bool)

(assert (=> b!2308385 (= e!1479477 (not (= (head!5065 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040))))) (c!365711 (regex!4409 r!2363)))))))

(declare-fun b!2308386 () Bool)

(assert (=> b!2308386 (= e!1479476 (= lt!856263 call!137223))))

(declare-fun b!2308387 () Bool)

(declare-fun res!987105 () Bool)

(assert (=> b!2308387 (=> res!987105 e!1479477)))

(assert (=> b!2308387 (= res!987105 (not (isEmpty!15718 (tail!3336 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040))))))))))

(assert (= (and d!682770 c!365890) b!2308383))

(assert (= (and d!682770 (not c!365890)) b!2308379))

(assert (= (and d!682770 c!365888) b!2308386))

(assert (= (and d!682770 (not c!365888)) b!2308375))

(assert (= (and b!2308375 c!365889) b!2308384))

(assert (= (and b!2308375 (not c!365889)) b!2308374))

(assert (= (and b!2308374 (not res!987103)) b!2308380))

(assert (= (and b!2308380 res!987106) b!2308381))

(assert (= (and b!2308381 res!987102) b!2308382))

(assert (= (and b!2308382 res!987100) b!2308377))

(assert (= (and b!2308380 (not res!987104)) b!2308378))

(assert (= (and b!2308378 res!987101) b!2308376))

(assert (= (and b!2308376 (not res!987099)) b!2308387))

(assert (= (and b!2308387 (not res!987105)) b!2308385))

(assert (= (or b!2308386 b!2308381 b!2308376) bm!137218))

(assert (=> b!2308382 m!2734977))

(declare-fun m!2735559 () Bool)

(assert (=> b!2308382 m!2735559))

(assert (=> b!2308382 m!2735559))

(declare-fun m!2735561 () Bool)

(assert (=> b!2308382 m!2735561))

(assert (=> b!2308387 m!2734977))

(assert (=> b!2308387 m!2735559))

(assert (=> b!2308387 m!2735559))

(assert (=> b!2308387 m!2735561))

(assert (=> b!2308379 m!2734977))

(declare-fun m!2735563 () Bool)

(assert (=> b!2308379 m!2735563))

(assert (=> b!2308379 m!2735563))

(declare-fun m!2735565 () Bool)

(assert (=> b!2308379 m!2735565))

(assert (=> b!2308379 m!2734977))

(assert (=> b!2308379 m!2735559))

(assert (=> b!2308379 m!2735565))

(assert (=> b!2308379 m!2735559))

(declare-fun m!2735567 () Bool)

(assert (=> b!2308379 m!2735567))

(assert (=> b!2308385 m!2734977))

(assert (=> b!2308385 m!2735563))

(assert (=> b!2308377 m!2734977))

(assert (=> b!2308377 m!2735563))

(assert (=> b!2308383 m!2734943))

(assert (=> bm!137218 m!2734977))

(declare-fun m!2735569 () Bool)

(assert (=> bm!137218 m!2735569))

(assert (=> d!682770 m!2734977))

(assert (=> d!682770 m!2735569))

(assert (=> d!682770 m!2734947))

(assert (=> b!2307914 d!682770))

(declare-fun d!682774 () Bool)

(assert (=> d!682774 (= (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040)))) (list!10851 (c!365710 (charsOf!2797 (_1!16211 (get!8285 lt!856040))))))))

(declare-fun bs!458042 () Bool)

(assert (= bs!458042 d!682774))

(declare-fun m!2735571 () Bool)

(assert (=> bs!458042 m!2735571))

(assert (=> b!2307914 d!682774))

(declare-fun d!682776 () Bool)

(declare-fun lt!856264 () BalanceConc!17660)

(assert (=> d!682776 (= (list!10848 lt!856264) (originalCharacters!5179 (_1!16211 (get!8285 lt!856040))))))

(assert (=> d!682776 (= lt!856264 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040))))) (value!139476 (_1!16211 (get!8285 lt!856040)))))))

(assert (=> d!682776 (= (charsOf!2797 (_1!16211 (get!8285 lt!856040))) lt!856264)))

(declare-fun b_lambda!73569 () Bool)

(assert (=> (not b_lambda!73569) (not d!682776)))

(declare-fun tb!138311 () Bool)

(declare-fun t!206678 () Bool)

(assert (=> (and b!2307465 (= (toChars!6082 (transformation!4409 r!2363)) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206678) tb!138311))

(declare-fun b!2308388 () Bool)

(declare-fun e!1479484 () Bool)

(declare-fun tp!732326 () Bool)

(assert (=> b!2308388 (= e!1479484 (and (inv!37124 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040))))) (value!139476 (_1!16211 (get!8285 lt!856040)))))) tp!732326))))

(declare-fun result!168610 () Bool)

(assert (=> tb!138311 (= result!168610 (and (inv!37125 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040))))) (value!139476 (_1!16211 (get!8285 lt!856040))))) e!1479484))))

(assert (= tb!138311 b!2308388))

(declare-fun m!2735575 () Bool)

(assert (=> b!2308388 m!2735575))

(declare-fun m!2735577 () Bool)

(assert (=> tb!138311 m!2735577))

(assert (=> d!682776 t!206678))

(declare-fun b_and!184445 () Bool)

(assert (= b_and!184391 (and (=> t!206678 result!168610) b_and!184445)))

(declare-fun t!206684 () Bool)

(declare-fun tb!138317 () Bool)

(assert (=> (and b!2307476 (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206684) tb!138317))

(declare-fun result!168616 () Bool)

(assert (= result!168616 result!168610))

(assert (=> d!682776 t!206684))

(declare-fun b_and!184447 () Bool)

(assert (= b_and!184389 (and (=> t!206684 result!168616) b_and!184447)))

(declare-fun tb!138319 () Bool)

(declare-fun t!206686 () Bool)

(assert (=> (and b!2308086 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206686) tb!138319))

(declare-fun result!168618 () Bool)

(assert (= result!168618 result!168610))

(assert (=> d!682776 t!206686))

(declare-fun b_and!184449 () Bool)

(assert (= b_and!184385 (and (=> t!206686 result!168618) b_and!184449)))

(declare-fun t!206688 () Bool)

(declare-fun tb!138321 () Bool)

(assert (=> (and b!2307487 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206688) tb!138321))

(declare-fun result!168620 () Bool)

(assert (= result!168620 result!168610))

(assert (=> d!682776 t!206688))

(declare-fun b_and!184451 () Bool)

(assert (= b_and!184393 (and (=> t!206688 result!168620) b_and!184451)))

(declare-fun tb!138323 () Bool)

(declare-fun t!206690 () Bool)

(assert (=> (and b!2307475 (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206690) tb!138323))

(declare-fun result!168622 () Bool)

(assert (= result!168622 result!168610))

(assert (=> d!682776 t!206690))

(declare-fun b_and!184453 () Bool)

(assert (= b_and!184387 (and (=> t!206690 result!168622) b_and!184453)))

(declare-fun t!206692 () Bool)

(declare-fun tb!138325 () Bool)

(assert (=> (and b!2308101 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206692) tb!138325))

(declare-fun result!168624 () Bool)

(assert (= result!168624 result!168610))

(assert (=> d!682776 t!206692))

(declare-fun b_and!184455 () Bool)

(assert (= b_and!184395 (and (=> t!206692 result!168624) b_and!184455)))

(declare-fun m!2735583 () Bool)

(assert (=> d!682776 m!2735583))

(declare-fun m!2735585 () Bool)

(assert (=> d!682776 m!2735585))

(assert (=> b!2307914 d!682776))

(assert (=> b!2307914 d!682596))

(declare-fun d!682784 () Bool)

(declare-fun e!1479496 () Bool)

(assert (=> d!682784 e!1479496))

(declare-fun res!987117 () Bool)

(assert (=> d!682784 (=> (not res!987117) (not e!1479496))))

(declare-fun lt!856270 () BalanceConc!17660)

(assert (=> d!682784 (= res!987117 (= (list!10848 lt!856270) input!1722))))

(declare-fun fromList!549 (List!27573) Conc!8966)

(assert (=> d!682784 (= lt!856270 (BalanceConc!17661 (fromList!549 input!1722)))))

(assert (=> d!682784 (= (fromListB!1406 input!1722) lt!856270)))

(declare-fun b!2308409 () Bool)

(declare-fun isBalanced!2692 (Conc!8966) Bool)

(assert (=> b!2308409 (= e!1479496 (isBalanced!2692 (fromList!549 input!1722)))))

(assert (= (and d!682784 res!987117) b!2308409))

(declare-fun m!2735603 () Bool)

(assert (=> d!682784 m!2735603))

(declare-fun m!2735605 () Bool)

(assert (=> d!682784 m!2735605))

(assert (=> b!2308409 m!2735605))

(assert (=> b!2308409 m!2735605))

(declare-fun m!2735607 () Bool)

(assert (=> b!2308409 m!2735607))

(assert (=> d!682566 d!682784))

(declare-fun call!137239 () Bool)

(declare-fun c!365912 () Bool)

(declare-fun bm!137234 () Bool)

(declare-fun c!365911 () Bool)

(assert (=> bm!137234 (= call!137239 (validRegex!2555 (ite c!365912 (reg!7086 (regex!4409 r!2363)) (ite c!365911 (regOne!14027 (regex!4409 r!2363)) (regTwo!14026 (regex!4409 r!2363))))))))

(declare-fun b!2308449 () Bool)

(declare-fun e!1479523 () Bool)

(declare-fun call!137241 () Bool)

(assert (=> b!2308449 (= e!1479523 call!137241)))

(declare-fun bm!137235 () Bool)

(declare-fun call!137240 () Bool)

(assert (=> bm!137235 (= call!137240 call!137239)))

(declare-fun b!2308450 () Bool)

(declare-fun e!1479522 () Bool)

(declare-fun e!1479527 () Bool)

(assert (=> b!2308450 (= e!1479522 e!1479527)))

(assert (=> b!2308450 (= c!365911 ((_ is Union!6757) (regex!4409 r!2363)))))

(declare-fun b!2308451 () Bool)

(declare-fun res!987131 () Bool)

(declare-fun e!1479524 () Bool)

(assert (=> b!2308451 (=> res!987131 e!1479524)))

(assert (=> b!2308451 (= res!987131 (not ((_ is Concat!11329) (regex!4409 r!2363))))))

(assert (=> b!2308451 (= e!1479527 e!1479524)))

(declare-fun b!2308452 () Bool)

(declare-fun e!1479521 () Bool)

(assert (=> b!2308452 (= e!1479521 call!137239)))

(declare-fun bm!137236 () Bool)

(assert (=> bm!137236 (= call!137241 (validRegex!2555 (ite c!365911 (regTwo!14027 (regex!4409 r!2363)) (regOne!14026 (regex!4409 r!2363)))))))

(declare-fun d!682792 () Bool)

(declare-fun res!987132 () Bool)

(declare-fun e!1479525 () Bool)

(assert (=> d!682792 (=> res!987132 e!1479525)))

(assert (=> d!682792 (= res!987132 ((_ is ElementMatch!6757) (regex!4409 r!2363)))))

(assert (=> d!682792 (= (validRegex!2555 (regex!4409 r!2363)) e!1479525)))

(declare-fun b!2308448 () Bool)

(declare-fun e!1479526 () Bool)

(assert (=> b!2308448 (= e!1479526 call!137240)))

(declare-fun b!2308453 () Bool)

(assert (=> b!2308453 (= e!1479525 e!1479522)))

(assert (=> b!2308453 (= c!365912 ((_ is Star!6757) (regex!4409 r!2363)))))

(declare-fun b!2308454 () Bool)

(assert (=> b!2308454 (= e!1479524 e!1479526)))

(declare-fun res!987130 () Bool)

(assert (=> b!2308454 (=> (not res!987130) (not e!1479526))))

(assert (=> b!2308454 (= res!987130 call!137241)))

(declare-fun b!2308455 () Bool)

(declare-fun res!987129 () Bool)

(assert (=> b!2308455 (=> (not res!987129) (not e!1479523))))

(assert (=> b!2308455 (= res!987129 call!137240)))

(assert (=> b!2308455 (= e!1479527 e!1479523)))

(declare-fun b!2308456 () Bool)

(assert (=> b!2308456 (= e!1479522 e!1479521)))

(declare-fun res!987128 () Bool)

(assert (=> b!2308456 (= res!987128 (not (nullable!1894 (reg!7086 (regex!4409 r!2363)))))))

(assert (=> b!2308456 (=> (not res!987128) (not e!1479521))))

(assert (= (and d!682792 (not res!987132)) b!2308453))

(assert (= (and b!2308453 c!365912) b!2308456))

(assert (= (and b!2308453 (not c!365912)) b!2308450))

(assert (= (and b!2308456 res!987128) b!2308452))

(assert (= (and b!2308450 c!365911) b!2308455))

(assert (= (and b!2308450 (not c!365911)) b!2308451))

(assert (= (and b!2308455 res!987129) b!2308449))

(assert (= (and b!2308451 (not res!987131)) b!2308454))

(assert (= (and b!2308454 res!987130) b!2308448))

(assert (= (or b!2308455 b!2308448) bm!137235))

(assert (= (or b!2308449 b!2308454) bm!137236))

(assert (= (or b!2308452 bm!137235) bm!137234))

(declare-fun m!2735609 () Bool)

(assert (=> bm!137234 m!2735609))

(declare-fun m!2735611 () Bool)

(assert (=> bm!137236 m!2735611))

(declare-fun m!2735613 () Bool)

(assert (=> b!2308456 m!2735613))

(assert (=> d!682568 d!682792))

(declare-fun b!2308468 () Bool)

(declare-fun e!1479533 () List!27573)

(assert (=> b!2308468 (= e!1479533 (++!6727 (list!10851 (left!20815 (c!365710 (charsOf!2797 (h!32881 tokens!456))))) (list!10851 (right!21145 (c!365710 (charsOf!2797 (h!32881 tokens!456)))))))))

(declare-fun b!2308465 () Bool)

(declare-fun e!1479532 () List!27573)

(assert (=> b!2308465 (= e!1479532 Nil!27479)))

(declare-fun d!682794 () Bool)

(declare-fun c!365917 () Bool)

(assert (=> d!682794 (= c!365917 ((_ is Empty!8966) (c!365710 (charsOf!2797 (h!32881 tokens!456)))))))

(assert (=> d!682794 (= (list!10851 (c!365710 (charsOf!2797 (h!32881 tokens!456)))) e!1479532)))

(declare-fun b!2308466 () Bool)

(assert (=> b!2308466 (= e!1479532 e!1479533)))

(declare-fun c!365918 () Bool)

(assert (=> b!2308466 (= c!365918 ((_ is Leaf!13156) (c!365710 (charsOf!2797 (h!32881 tokens!456)))))))

(declare-fun b!2308467 () Bool)

(declare-fun list!10856 (IArray!17937) List!27573)

(assert (=> b!2308467 (= e!1479533 (list!10856 (xs!11908 (c!365710 (charsOf!2797 (h!32881 tokens!456))))))))

(assert (= (and d!682794 c!365917) b!2308465))

(assert (= (and d!682794 (not c!365917)) b!2308466))

(assert (= (and b!2308466 c!365918) b!2308467))

(assert (= (and b!2308466 (not c!365918)) b!2308468))

(declare-fun m!2735615 () Bool)

(assert (=> b!2308468 m!2735615))

(declare-fun m!2735617 () Bool)

(assert (=> b!2308468 m!2735617))

(assert (=> b!2308468 m!2735615))

(assert (=> b!2308468 m!2735617))

(declare-fun m!2735619 () Bool)

(assert (=> b!2308468 m!2735619))

(declare-fun m!2735621 () Bool)

(assert (=> b!2308467 m!2735621))

(assert (=> d!682422 d!682794))

(declare-fun d!682796 () Bool)

(declare-fun lt!856274 () Int)

(assert (=> d!682796 (>= lt!856274 0)))

(declare-fun e!1479539 () Int)

(assert (=> d!682796 (= lt!856274 e!1479539)))

(declare-fun c!365924 () Bool)

(assert (=> d!682796 (= c!365924 ((_ is Nil!27479) (_2!16211 (get!8285 lt!855934))))))

(assert (=> d!682796 (= (size!21687 (_2!16211 (get!8285 lt!855934))) lt!856274)))

(declare-fun b!2308479 () Bool)

(assert (=> b!2308479 (= e!1479539 0)))

(declare-fun b!2308480 () Bool)

(assert (=> b!2308480 (= e!1479539 (+ 1 (size!21687 (t!206517 (_2!16211 (get!8285 lt!855934))))))))

(assert (= (and d!682796 c!365924) b!2308479))

(assert (= (and d!682796 (not c!365924)) b!2308480))

(declare-fun m!2735623 () Bool)

(assert (=> b!2308480 m!2735623))

(assert (=> b!2307620 d!682796))

(assert (=> b!2307620 d!682594))

(assert (=> b!2307620 d!682762))

(declare-fun d!682798 () Bool)

(assert (=> d!682798 (= (list!10848 lt!856016) (list!10851 (c!365710 lt!856016)))))

(declare-fun bs!458048 () Bool)

(assert (= bs!458048 d!682798))

(declare-fun m!2735625 () Bool)

(assert (=> bs!458048 m!2735625))

(assert (=> d!682516 d!682798))

(assert (=> d!682440 d!682438))

(declare-fun d!682800 () Bool)

(assert (=> d!682800 (isPrefix!2399 input!1722 input!1722)))

(assert (=> d!682800 true))

(declare-fun _$45!1574 () Unit!40394)

(assert (=> d!682800 (= (choose!13492 input!1722 input!1722) _$45!1574)))

(declare-fun bs!458049 () Bool)

(assert (= bs!458049 d!682800))

(assert (=> bs!458049 m!2734469))

(assert (=> d!682440 d!682800))

(declare-fun d!682804 () Bool)

(assert (=> d!682804 (= (list!10849 (_1!16212 lt!856049)) (list!10853 (c!365712 (_1!16212 lt!856049))))))

(declare-fun bs!458050 () Bool)

(assert (= bs!458050 d!682804))

(declare-fun m!2735635 () Bool)

(assert (=> bs!458050 m!2735635))

(assert (=> b!2308012 d!682804))

(assert (=> b!2308012 d!682604))

(assert (=> b!2308012 d!682606))

(assert (=> b!2307616 d!682594))

(declare-fun d!682806 () Bool)

(assert (=> d!682806 (= (apply!6671 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))) (seqFromList!3113 (originalCharacters!5179 (_1!16211 (get!8285 lt!855934))))) (dynLambda!11952 (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934))))) (seqFromList!3113 (originalCharacters!5179 (_1!16211 (get!8285 lt!855934))))))))

(declare-fun b_lambda!73571 () Bool)

(assert (=> (not b_lambda!73571) (not d!682806)))

(declare-fun t!206695 () Bool)

(declare-fun tb!138327 () Bool)

(assert (=> (and b!2307487 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206695) tb!138327))

(declare-fun result!168626 () Bool)

(assert (=> tb!138327 (= result!168626 (inv!21 (dynLambda!11952 (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934))))) (seqFromList!3113 (originalCharacters!5179 (_1!16211 (get!8285 lt!855934)))))))))

(declare-fun m!2735637 () Bool)

(assert (=> tb!138327 m!2735637))

(assert (=> d!682806 t!206695))

(declare-fun b_and!184457 () Bool)

(assert (= b_and!184397 (and (=> t!206695 result!168626) b_and!184457)))

(declare-fun tb!138329 () Bool)

(declare-fun t!206697 () Bool)

(assert (=> (and b!2307465 (= (toValue!6223 (transformation!4409 r!2363)) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206697) tb!138329))

(declare-fun result!168628 () Bool)

(assert (= result!168628 result!168626))

(assert (=> d!682806 t!206697))

(declare-fun b_and!184459 () Bool)

(assert (= b_and!184401 (and (=> t!206697 result!168628) b_and!184459)))

(declare-fun tb!138331 () Bool)

(declare-fun t!206699 () Bool)

(assert (=> (and b!2307476 (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206699) tb!138331))

(declare-fun result!168630 () Bool)

(assert (= result!168630 result!168626))

(assert (=> d!682806 t!206699))

(declare-fun b_and!184461 () Bool)

(assert (= b_and!184407 (and (=> t!206699 result!168630) b_and!184461)))

(declare-fun tb!138333 () Bool)

(declare-fun t!206701 () Bool)

(assert (=> (and b!2308101 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206701) tb!138333))

(declare-fun result!168632 () Bool)

(assert (= result!168632 result!168626))

(assert (=> d!682806 t!206701))

(declare-fun b_and!184463 () Bool)

(assert (= b_and!184399 (and (=> t!206701 result!168632) b_and!184463)))

(declare-fun tb!138335 () Bool)

(declare-fun t!206703 () Bool)

(assert (=> (and b!2307475 (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206703) tb!138335))

(declare-fun result!168634 () Bool)

(assert (= result!168634 result!168626))

(assert (=> d!682806 t!206703))

(declare-fun b_and!184465 () Bool)

(assert (= b_and!184405 (and (=> t!206703 result!168634) b_and!184465)))

(declare-fun tb!138337 () Bool)

(declare-fun t!206705 () Bool)

(assert (=> (and b!2308086 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206705) tb!138337))

(declare-fun result!168636 () Bool)

(assert (= result!168636 result!168626))

(assert (=> d!682806 t!206705))

(declare-fun b_and!184467 () Bool)

(assert (= b_and!184403 (and (=> t!206705 result!168636) b_and!184467)))

(assert (=> d!682806 m!2734679))

(declare-fun m!2735643 () Bool)

(assert (=> d!682806 m!2735643))

(assert (=> b!2307616 d!682806))

(declare-fun d!682810 () Bool)

(assert (=> d!682810 (= (seqFromList!3113 (originalCharacters!5179 (_1!16211 (get!8285 lt!855934)))) (fromListB!1406 (originalCharacters!5179 (_1!16211 (get!8285 lt!855934)))))))

(declare-fun bs!458052 () Bool)

(assert (= bs!458052 d!682810))

(declare-fun m!2735645 () Bool)

(assert (=> bs!458052 m!2735645))

(assert (=> b!2307616 d!682810))

(declare-fun d!682812 () Bool)

(declare-fun lt!856279 () Int)

(assert (=> d!682812 (>= lt!856279 0)))

(declare-fun e!1479548 () Int)

(assert (=> d!682812 (= lt!856279 e!1479548)))

(declare-fun c!365928 () Bool)

(assert (=> d!682812 (= c!365928 ((_ is Nil!27479) lt!855950))))

(assert (=> d!682812 (= (size!21687 lt!855950) lt!856279)))

(declare-fun b!2308495 () Bool)

(assert (=> b!2308495 (= e!1479548 0)))

(declare-fun b!2308496 () Bool)

(assert (=> b!2308496 (= e!1479548 (+ 1 (size!21687 (t!206517 lt!855950))))))

(assert (= (and d!682812 c!365928) b!2308495))

(assert (= (and d!682812 (not c!365928)) b!2308496))

(declare-fun m!2735647 () Bool)

(assert (=> b!2308496 m!2735647))

(assert (=> b!2307645 d!682812))

(assert (=> b!2307645 d!682436))

(declare-fun d!682814 () Bool)

(declare-fun lt!856280 () Int)

(assert (=> d!682814 (>= lt!856280 0)))

(declare-fun e!1479549 () Int)

(assert (=> d!682814 (= lt!856280 e!1479549)))

(declare-fun c!365929 () Bool)

(assert (=> d!682814 (= c!365929 ((_ is Nil!27479) (_2!16211 lt!855868)))))

(assert (=> d!682814 (= (size!21687 (_2!16211 lt!855868)) lt!856280)))

(declare-fun b!2308497 () Bool)

(assert (=> b!2308497 (= e!1479549 0)))

(declare-fun b!2308498 () Bool)

(assert (=> b!2308498 (= e!1479549 (+ 1 (size!21687 (t!206517 (_2!16211 lt!855868)))))))

(assert (= (and d!682814 c!365929) b!2308497))

(assert (= (and d!682814 (not c!365929)) b!2308498))

(declare-fun m!2735649 () Bool)

(assert (=> b!2308498 m!2735649))

(assert (=> b!2307645 d!682814))

(declare-fun bs!458053 () Bool)

(declare-fun d!682816 () Bool)

(assert (= bs!458053 (and d!682816 d!682442)))

(declare-fun lambda!86008 () Int)

(assert (=> bs!458053 (= lambda!86008 lambda!85994)))

(assert (=> d!682816 true))

(assert (=> d!682816 (< (dynLambda!11951 order!15309 (toChars!6082 (transformation!4409 r!2363))) (dynLambda!11950 order!15307 lambda!86008))))

(assert (=> d!682816 true))

(assert (=> d!682816 (< (dynLambda!11949 order!15305 (toValue!6223 (transformation!4409 r!2363))) (dynLambda!11950 order!15307 lambda!86008))))

(declare-fun Forall!1103 (Int) Bool)

(assert (=> d!682816 (= (semiInverseModEq!1796 (toChars!6082 (transformation!4409 r!2363)) (toValue!6223 (transformation!4409 r!2363))) (Forall!1103 lambda!86008))))

(declare-fun bs!458054 () Bool)

(assert (= bs!458054 d!682816))

(declare-fun m!2735661 () Bool)

(assert (=> bs!458054 m!2735661))

(assert (=> d!682502 d!682816))

(declare-fun bs!458055 () Bool)

(declare-fun d!682820 () Bool)

(assert (= bs!458055 (and d!682820 d!682442)))

(declare-fun lambda!86009 () Int)

(assert (=> bs!458055 (= (and (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toChars!6082 (transformation!4409 r!2363))) (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 r!2363)))) (= lambda!86009 lambda!85994))))

(declare-fun bs!458056 () Bool)

(assert (= bs!458056 (and d!682820 d!682816)))

(assert (=> bs!458056 (= (and (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toChars!6082 (transformation!4409 r!2363))) (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 r!2363)))) (= lambda!86009 lambda!86008))))

(assert (=> d!682820 true))

(assert (=> d!682820 (< (dynLambda!11951 order!15309 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) (dynLambda!11950 order!15307 lambda!86009))))

(assert (=> d!682820 true))

(assert (=> d!682820 (< (dynLambda!11949 order!15305 (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) (dynLambda!11950 order!15307 lambda!86009))))

(assert (=> d!682820 (= (semiInverseModEq!1796 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) (Forall!1103 lambda!86009))))

(declare-fun bs!458057 () Bool)

(assert (= bs!458057 d!682820))

(declare-fun m!2735663 () Bool)

(assert (=> bs!458057 m!2735663))

(assert (=> d!682494 d!682820))

(assert (=> b!2307541 d!682612))

(declare-fun d!682822 () Bool)

(assert (=> d!682822 (= (head!5065 (++!6727 lt!855852 (_2!16211 lt!855868))) (h!32880 (++!6727 lt!855852 (_2!16211 lt!855868))))))

(assert (=> b!2307541 d!682822))

(declare-fun d!682824 () Bool)

(assert (=> d!682824 (= (inv!37117 (tag!4899 (h!32882 (t!206519 rules!1750)))) (= (mod (str.len (value!139475 (tag!4899 (h!32882 (t!206519 rules!1750))))) 2) 0))))

(assert (=> b!2308100 d!682824))

(declare-fun d!682826 () Bool)

(declare-fun res!987141 () Bool)

(declare-fun e!1479550 () Bool)

(assert (=> d!682826 (=> (not res!987141) (not e!1479550))))

(assert (=> d!682826 (= res!987141 (semiInverseModEq!1796 (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toValue!6223 (transformation!4409 (h!32882 (t!206519 rules!1750))))))))

(assert (=> d!682826 (= (inv!37120 (transformation!4409 (h!32882 (t!206519 rules!1750)))) e!1479550)))

(declare-fun b!2308503 () Bool)

(assert (=> b!2308503 (= e!1479550 (equivClasses!1715 (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toValue!6223 (transformation!4409 (h!32882 (t!206519 rules!1750))))))))

(assert (= (and d!682826 res!987141) b!2308503))

(declare-fun m!2735665 () Bool)

(assert (=> d!682826 m!2735665))

(declare-fun m!2735667 () Bool)

(assert (=> b!2308503 m!2735667))

(assert (=> b!2308100 d!682826))

(declare-fun d!682828 () Bool)

(assert (=> d!682828 (= (isEmpty!15718 lt!855852) ((_ is Nil!27479) lt!855852))))

(assert (=> d!682524 d!682828))

(assert (=> d!682524 d!682792))

(declare-fun b!2308505 () Bool)

(declare-fun e!1479552 () Option!5407)

(declare-fun lt!856284 () tuple2!27410)

(assert (=> b!2308505 (= e!1479552 (Some!5406 (tuple2!27403 (Token!8297 (apply!6671 (transformation!4409 (h!32882 rules!1750)) (seqFromList!3113 (_1!16215 lt!856284))) (h!32882 rules!1750) (size!21686 (seqFromList!3113 (_1!16215 lt!856284))) (_1!16215 lt!856284)) (_2!16215 lt!856284))))))

(declare-fun lt!856283 () Unit!40394)

(assert (=> b!2308505 (= lt!856283 (longestMatchIsAcceptedByMatchOrIsEmpty!712 (regex!4409 (h!32882 rules!1750)) input!1722))))

(declare-fun res!987143 () Bool)

(assert (=> b!2308505 (= res!987143 (isEmpty!15718 (_1!16215 (findLongestMatchInner!739 (regex!4409 (h!32882 rules!1750)) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)))))))

(declare-fun e!1479551 () Bool)

(assert (=> b!2308505 (=> res!987143 e!1479551)))

(assert (=> b!2308505 e!1479551))

(declare-fun lt!856281 () Unit!40394)

(assert (=> b!2308505 (= lt!856281 lt!856283)))

(declare-fun lt!856282 () Unit!40394)

(assert (=> b!2308505 (= lt!856282 (lemmaSemiInverse!1088 (transformation!4409 (h!32882 rules!1750)) (seqFromList!3113 (_1!16215 lt!856284))))))

(declare-fun b!2308506 () Bool)

(assert (=> b!2308506 (= e!1479551 (matchR!3014 (regex!4409 (h!32882 rules!1750)) (_1!16215 (findLongestMatchInner!739 (regex!4409 (h!32882 rules!1750)) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)))))))

(declare-fun b!2308507 () Bool)

(declare-fun e!1479554 () Bool)

(declare-fun e!1479553 () Bool)

(assert (=> b!2308507 (= e!1479554 e!1479553)))

(declare-fun res!987145 () Bool)

(assert (=> b!2308507 (=> (not res!987145) (not e!1479553))))

(declare-fun lt!856285 () Option!5407)

(assert (=> b!2308507 (= res!987145 (matchR!3014 (regex!4409 (h!32882 rules!1750)) (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856285))))))))

(declare-fun b!2308508 () Bool)

(assert (=> b!2308508 (= e!1479553 (= (size!21685 (_1!16211 (get!8285 lt!856285))) (size!21687 (originalCharacters!5179 (_1!16211 (get!8285 lt!856285))))))))

(declare-fun b!2308509 () Bool)

(assert (=> b!2308509 (= e!1479552 None!5406)))

(declare-fun b!2308510 () Bool)

(declare-fun res!987142 () Bool)

(assert (=> b!2308510 (=> (not res!987142) (not e!1479553))))

(assert (=> b!2308510 (= res!987142 (< (size!21687 (_2!16211 (get!8285 lt!856285))) (size!21687 input!1722)))))

(declare-fun b!2308511 () Bool)

(declare-fun res!987144 () Bool)

(assert (=> b!2308511 (=> (not res!987144) (not e!1479553))))

(assert (=> b!2308511 (= res!987144 (= (rule!6761 (_1!16211 (get!8285 lt!856285))) (h!32882 rules!1750)))))

(declare-fun b!2308512 () Bool)

(declare-fun res!987147 () Bool)

(assert (=> b!2308512 (=> (not res!987147) (not e!1479553))))

(assert (=> b!2308512 (= res!987147 (= (++!6727 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856285)))) (_2!16211 (get!8285 lt!856285))) input!1722))))

(declare-fun d!682830 () Bool)

(assert (=> d!682830 e!1479554))

(declare-fun res!987148 () Bool)

(assert (=> d!682830 (=> res!987148 e!1479554)))

(assert (=> d!682830 (= res!987148 (isEmpty!15716 lt!856285))))

(assert (=> d!682830 (= lt!856285 e!1479552)))

(declare-fun c!365930 () Bool)

(assert (=> d!682830 (= c!365930 (isEmpty!15718 (_1!16215 lt!856284)))))

(assert (=> d!682830 (= lt!856284 (findLongestMatch!668 (regex!4409 (h!32882 rules!1750)) input!1722))))

(assert (=> d!682830 (ruleValid!1499 thiss!16613 (h!32882 rules!1750))))

(assert (=> d!682830 (= (maxPrefixOneRule!1432 thiss!16613 (h!32882 rules!1750) input!1722) lt!856285)))

(declare-fun b!2308504 () Bool)

(declare-fun res!987146 () Bool)

(assert (=> b!2308504 (=> (not res!987146) (not e!1479553))))

(assert (=> b!2308504 (= res!987146 (= (value!139476 (_1!16211 (get!8285 lt!856285))) (apply!6671 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856285)))) (seqFromList!3113 (originalCharacters!5179 (_1!16211 (get!8285 lt!856285)))))))))

(assert (= (and d!682830 c!365930) b!2308509))

(assert (= (and d!682830 (not c!365930)) b!2308505))

(assert (= (and b!2308505 (not res!987143)) b!2308506))

(assert (= (and d!682830 (not res!987148)) b!2308507))

(assert (= (and b!2308507 res!987145) b!2308512))

(assert (= (and b!2308512 res!987147) b!2308510))

(assert (= (and b!2308510 res!987142) b!2308511))

(assert (= (and b!2308511 res!987144) b!2308504))

(assert (= (and b!2308504 res!987146) b!2308508))

(declare-fun m!2735669 () Bool)

(assert (=> b!2308511 m!2735669))

(assert (=> b!2308507 m!2735669))

(declare-fun m!2735671 () Bool)

(assert (=> b!2308507 m!2735671))

(assert (=> b!2308507 m!2735671))

(declare-fun m!2735673 () Bool)

(assert (=> b!2308507 m!2735673))

(assert (=> b!2308507 m!2735673))

(declare-fun m!2735675 () Bool)

(assert (=> b!2308507 m!2735675))

(declare-fun m!2735677 () Bool)

(assert (=> d!682830 m!2735677))

(declare-fun m!2735679 () Bool)

(assert (=> d!682830 m!2735679))

(declare-fun m!2735681 () Bool)

(assert (=> d!682830 m!2735681))

(declare-fun m!2735683 () Bool)

(assert (=> d!682830 m!2735683))

(assert (=> b!2308508 m!2735669))

(declare-fun m!2735685 () Bool)

(assert (=> b!2308508 m!2735685))

(assert (=> b!2308512 m!2735669))

(assert (=> b!2308512 m!2735671))

(assert (=> b!2308512 m!2735671))

(assert (=> b!2308512 m!2735673))

(assert (=> b!2308512 m!2735673))

(declare-fun m!2735687 () Bool)

(assert (=> b!2308512 m!2735687))

(assert (=> b!2308506 m!2734991))

(assert (=> b!2308506 m!2734621))

(assert (=> b!2308506 m!2734991))

(assert (=> b!2308506 m!2734621))

(declare-fun m!2735689 () Bool)

(assert (=> b!2308506 m!2735689))

(declare-fun m!2735691 () Bool)

(assert (=> b!2308506 m!2735691))

(declare-fun m!2735693 () Bool)

(assert (=> b!2308505 m!2735693))

(declare-fun m!2735695 () Bool)

(assert (=> b!2308505 m!2735695))

(assert (=> b!2308505 m!2735693))

(declare-fun m!2735697 () Bool)

(assert (=> b!2308505 m!2735697))

(assert (=> b!2308505 m!2734621))

(declare-fun m!2735699 () Bool)

(assert (=> b!2308505 m!2735699))

(assert (=> b!2308505 m!2735693))

(declare-fun m!2735701 () Bool)

(assert (=> b!2308505 m!2735701))

(assert (=> b!2308505 m!2734991))

(assert (=> b!2308505 m!2734621))

(assert (=> b!2308505 m!2735689))

(assert (=> b!2308505 m!2735693))

(declare-fun m!2735703 () Bool)

(assert (=> b!2308505 m!2735703))

(assert (=> b!2308505 m!2734991))

(assert (=> b!2308504 m!2735669))

(declare-fun m!2735705 () Bool)

(assert (=> b!2308504 m!2735705))

(assert (=> b!2308504 m!2735705))

(declare-fun m!2735707 () Bool)

(assert (=> b!2308504 m!2735707))

(assert (=> b!2308510 m!2735669))

(declare-fun m!2735709 () Bool)

(assert (=> b!2308510 m!2735709))

(assert (=> b!2308510 m!2734621))

(assert (=> bm!137181 d!682830))

(declare-fun d!682832 () Bool)

(assert (=> d!682832 (= (nullable!1894 (regex!4409 otherR!12)) (nullableFct!462 (regex!4409 otherR!12)))))

(declare-fun bs!458058 () Bool)

(assert (= bs!458058 d!682832))

(declare-fun m!2735711 () Bool)

(assert (=> bs!458058 m!2735711))

(assert (=> b!2307826 d!682832))

(declare-fun b!2308516 () Bool)

(declare-fun e!1479556 () List!27573)

(assert (=> b!2308516 (= e!1479556 (++!6727 (list!10851 (left!20815 (c!365710 (_2!16212 lt!855866)))) (list!10851 (right!21145 (c!365710 (_2!16212 lt!855866))))))))

(declare-fun b!2308513 () Bool)

(declare-fun e!1479555 () List!27573)

(assert (=> b!2308513 (= e!1479555 Nil!27479)))

(declare-fun d!682834 () Bool)

(declare-fun c!365931 () Bool)

(assert (=> d!682834 (= c!365931 ((_ is Empty!8966) (c!365710 (_2!16212 lt!855866))))))

(assert (=> d!682834 (= (list!10851 (c!365710 (_2!16212 lt!855866))) e!1479555)))

(declare-fun b!2308514 () Bool)

(assert (=> b!2308514 (= e!1479555 e!1479556)))

(declare-fun c!365932 () Bool)

(assert (=> b!2308514 (= c!365932 ((_ is Leaf!13156) (c!365710 (_2!16212 lt!855866))))))

(declare-fun b!2308515 () Bool)

(assert (=> b!2308515 (= e!1479556 (list!10856 (xs!11908 (c!365710 (_2!16212 lt!855866)))))))

(assert (= (and d!682834 c!365931) b!2308513))

(assert (= (and d!682834 (not c!365931)) b!2308514))

(assert (= (and b!2308514 c!365932) b!2308515))

(assert (= (and b!2308514 (not c!365932)) b!2308516))

(declare-fun m!2735713 () Bool)

(assert (=> b!2308516 m!2735713))

(declare-fun m!2735715 () Bool)

(assert (=> b!2308516 m!2735715))

(assert (=> b!2308516 m!2735713))

(assert (=> b!2308516 m!2735715))

(declare-fun m!2735717 () Bool)

(assert (=> b!2308516 m!2735717))

(declare-fun m!2735719 () Bool)

(assert (=> b!2308515 m!2735719))

(assert (=> d!682542 d!682834))

(assert (=> b!2307868 d!682768))

(declare-fun d!682836 () Bool)

(assert (=> d!682836 (= (head!5065 input!1722) (h!32880 input!1722))))

(assert (=> b!2307650 d!682836))

(declare-fun b!2308520 () Bool)

(declare-fun e!1479558 () Bool)

(declare-fun lt!856286 () List!27573)

(assert (=> b!2308520 (= e!1479558 (or (not (= (_2!16211 (get!8285 lt!856040)) Nil!27479)) (= lt!856286 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040)))))))))

(declare-fun b!2308518 () Bool)

(declare-fun e!1479557 () List!27573)

(assert (=> b!2308518 (= e!1479557 (Cons!27479 (h!32880 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040))))) (++!6727 (t!206517 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040))))) (_2!16211 (get!8285 lt!856040)))))))

(declare-fun d!682838 () Bool)

(assert (=> d!682838 e!1479558))

(declare-fun res!987150 () Bool)

(assert (=> d!682838 (=> (not res!987150) (not e!1479558))))

(assert (=> d!682838 (= res!987150 (= (content!3714 lt!856286) ((_ map or) (content!3714 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040))))) (content!3714 (_2!16211 (get!8285 lt!856040))))))))

(assert (=> d!682838 (= lt!856286 e!1479557)))

(declare-fun c!365933 () Bool)

(assert (=> d!682838 (= c!365933 ((_ is Nil!27479) (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040))))))))

(assert (=> d!682838 (= (++!6727 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040)))) (_2!16211 (get!8285 lt!856040))) lt!856286)))

(declare-fun b!2308517 () Bool)

(assert (=> b!2308517 (= e!1479557 (_2!16211 (get!8285 lt!856040)))))

(declare-fun b!2308519 () Bool)

(declare-fun res!987149 () Bool)

(assert (=> b!2308519 (=> (not res!987149) (not e!1479558))))

(assert (=> b!2308519 (= res!987149 (= (size!21687 lt!856286) (+ (size!21687 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856040))))) (size!21687 (_2!16211 (get!8285 lt!856040))))))))

(assert (= (and d!682838 c!365933) b!2308517))

(assert (= (and d!682838 (not c!365933)) b!2308518))

(assert (= (and d!682838 res!987150) b!2308519))

(assert (= (and b!2308519 res!987149) b!2308520))

(declare-fun m!2735721 () Bool)

(assert (=> b!2308518 m!2735721))

(declare-fun m!2735723 () Bool)

(assert (=> d!682838 m!2735723))

(assert (=> d!682838 m!2734977))

(declare-fun m!2735725 () Bool)

(assert (=> d!682838 m!2735725))

(declare-fun m!2735727 () Bool)

(assert (=> d!682838 m!2735727))

(declare-fun m!2735729 () Bool)

(assert (=> b!2308519 m!2735729))

(assert (=> b!2308519 m!2734977))

(declare-fun m!2735731 () Bool)

(assert (=> b!2308519 m!2735731))

(assert (=> b!2308519 m!2735013))

(assert (=> b!2307919 d!682838))

(assert (=> b!2307919 d!682774))

(assert (=> b!2307919 d!682776))

(assert (=> b!2307919 d!682596))

(declare-fun d!682840 () Bool)

(declare-fun c!365936 () Bool)

(assert (=> d!682840 (= c!365936 ((_ is Nil!27479) lt!855950))))

(declare-fun e!1479561 () (InoxSet C!13660))

(assert (=> d!682840 (= (content!3714 lt!855950) e!1479561)))

(declare-fun b!2308525 () Bool)

(assert (=> b!2308525 (= e!1479561 ((as const (Array C!13660 Bool)) false))))

(declare-fun b!2308526 () Bool)

(assert (=> b!2308526 (= e!1479561 ((_ map or) (store ((as const (Array C!13660 Bool)) false) (h!32880 lt!855950) true) (content!3714 (t!206517 lt!855950))))))

(assert (= (and d!682840 c!365936) b!2308525))

(assert (= (and d!682840 (not c!365936)) b!2308526))

(declare-fun m!2735733 () Bool)

(assert (=> b!2308526 m!2735733))

(declare-fun m!2735735 () Bool)

(assert (=> b!2308526 m!2735735))

(assert (=> d!682434 d!682840))

(declare-fun d!682842 () Bool)

(declare-fun c!365937 () Bool)

(assert (=> d!682842 (= c!365937 ((_ is Nil!27479) lt!855852))))

(declare-fun e!1479562 () (InoxSet C!13660))

(assert (=> d!682842 (= (content!3714 lt!855852) e!1479562)))

(declare-fun b!2308527 () Bool)

(assert (=> b!2308527 (= e!1479562 ((as const (Array C!13660 Bool)) false))))

(declare-fun b!2308528 () Bool)

(assert (=> b!2308528 (= e!1479562 ((_ map or) (store ((as const (Array C!13660 Bool)) false) (h!32880 lt!855852) true) (content!3714 (t!206517 lt!855852))))))

(assert (= (and d!682842 c!365937) b!2308527))

(assert (= (and d!682842 (not c!365937)) b!2308528))

(declare-fun m!2735737 () Bool)

(assert (=> b!2308528 m!2735737))

(declare-fun m!2735739 () Bool)

(assert (=> b!2308528 m!2735739))

(assert (=> d!682434 d!682842))

(declare-fun d!682844 () Bool)

(declare-fun c!365938 () Bool)

(assert (=> d!682844 (= c!365938 ((_ is Nil!27479) (_2!16211 lt!855868)))))

(declare-fun e!1479563 () (InoxSet C!13660))

(assert (=> d!682844 (= (content!3714 (_2!16211 lt!855868)) e!1479563)))

(declare-fun b!2308529 () Bool)

(assert (=> b!2308529 (= e!1479563 ((as const (Array C!13660 Bool)) false))))

(declare-fun b!2308530 () Bool)

(assert (=> b!2308530 (= e!1479563 ((_ map or) (store ((as const (Array C!13660 Bool)) false) (h!32880 (_2!16211 lt!855868)) true) (content!3714 (t!206517 (_2!16211 lt!855868)))))))

(assert (= (and d!682844 c!365938) b!2308529))

(assert (= (and d!682844 (not c!365938)) b!2308530))

(declare-fun m!2735741 () Bool)

(assert (=> b!2308530 m!2735741))

(declare-fun m!2735743 () Bool)

(assert (=> b!2308530 m!2735743))

(assert (=> d!682434 d!682844))

(declare-fun bs!458059 () Bool)

(declare-fun d!682846 () Bool)

(assert (= bs!458059 (and d!682846 d!682442)))

(declare-fun lambda!86010 () Int)

(assert (=> bs!458059 (= (and (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 r!2363))) (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 r!2363)))) (= lambda!86010 lambda!85994))))

(declare-fun bs!458060 () Bool)

(assert (= bs!458060 (and d!682846 d!682816)))

(assert (=> bs!458060 (= (and (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 r!2363))) (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 r!2363)))) (= lambda!86010 lambda!86008))))

(declare-fun bs!458061 () Bool)

(assert (= bs!458061 (and d!682846 d!682820)))

(assert (=> bs!458061 (= (and (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))))) (= lambda!86010 lambda!86009))))

(assert (=> d!682846 true))

(assert (=> d!682846 (< (dynLambda!11951 order!15309 (toChars!6082 (transformation!4409 otherR!12))) (dynLambda!11950 order!15307 lambda!86010))))

(assert (=> d!682846 true))

(assert (=> d!682846 (< (dynLambda!11949 order!15305 (toValue!6223 (transformation!4409 otherR!12))) (dynLambda!11950 order!15307 lambda!86010))))

(assert (=> d!682846 (= (semiInverseModEq!1796 (toChars!6082 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 otherR!12))) (Forall!1103 lambda!86010))))

(declare-fun bs!458062 () Bool)

(assert (= bs!458062 d!682846))

(declare-fun m!2735745 () Bool)

(assert (=> bs!458062 m!2735745))

(assert (=> d!682576 d!682846))

(declare-fun b!2308532 () Bool)

(declare-fun res!987154 () Bool)

(declare-fun e!1479564 () Bool)

(assert (=> b!2308532 (=> (not res!987154) (not e!1479564))))

(assert (=> b!2308532 (= res!987154 (= (head!5065 (tail!3336 lt!855852)) (head!5065 (tail!3336 input!1722))))))

(declare-fun b!2308531 () Bool)

(declare-fun e!1479565 () Bool)

(assert (=> b!2308531 (= e!1479565 e!1479564)))

(declare-fun res!987151 () Bool)

(assert (=> b!2308531 (=> (not res!987151) (not e!1479564))))

(assert (=> b!2308531 (= res!987151 (not ((_ is Nil!27479) (tail!3336 input!1722))))))

(declare-fun b!2308534 () Bool)

(declare-fun e!1479566 () Bool)

(assert (=> b!2308534 (= e!1479566 (>= (size!21687 (tail!3336 input!1722)) (size!21687 (tail!3336 lt!855852))))))

(declare-fun d!682848 () Bool)

(assert (=> d!682848 e!1479566))

(declare-fun res!987152 () Bool)

(assert (=> d!682848 (=> res!987152 e!1479566)))

(declare-fun lt!856287 () Bool)

(assert (=> d!682848 (= res!987152 (not lt!856287))))

(assert (=> d!682848 (= lt!856287 e!1479565)))

(declare-fun res!987153 () Bool)

(assert (=> d!682848 (=> res!987153 e!1479565)))

(assert (=> d!682848 (= res!987153 ((_ is Nil!27479) (tail!3336 lt!855852)))))

(assert (=> d!682848 (= (isPrefix!2399 (tail!3336 lt!855852) (tail!3336 input!1722)) lt!856287)))

(declare-fun b!2308533 () Bool)

(assert (=> b!2308533 (= e!1479564 (isPrefix!2399 (tail!3336 (tail!3336 lt!855852)) (tail!3336 (tail!3336 input!1722))))))

(assert (= (and d!682848 (not res!987153)) b!2308531))

(assert (= (and b!2308531 res!987151) b!2308532))

(assert (= (and b!2308532 res!987154) b!2308533))

(assert (= (and d!682848 (not res!987152)) b!2308534))

(assert (=> b!2308532 m!2734613))

(assert (=> b!2308532 m!2735187))

(assert (=> b!2308532 m!2734623))

(assert (=> b!2308532 m!2735483))

(assert (=> b!2308534 m!2734623))

(assert (=> b!2308534 m!2735207))

(assert (=> b!2308534 m!2734613))

(assert (=> b!2308534 m!2735225))

(assert (=> b!2308533 m!2734613))

(assert (=> b!2308533 m!2735183))

(assert (=> b!2308533 m!2734623))

(assert (=> b!2308533 m!2735209))

(assert (=> b!2308533 m!2735183))

(assert (=> b!2308533 m!2735209))

(declare-fun m!2735747 () Bool)

(assert (=> b!2308533 m!2735747))

(assert (=> b!2307891 d!682848))

(assert (=> b!2307891 d!682584))

(assert (=> b!2307891 d!682616))

(declare-fun d!682850 () Bool)

(assert (=> d!682850 (= (head!5065 otherP!12) (h!32880 otherP!12))))

(assert (=> b!2307886 d!682850))

(assert (=> b!2307886 d!682836))

(assert (=> b!2307915 d!682596))

(declare-fun d!682852 () Bool)

(declare-fun lt!856288 () Int)

(assert (=> d!682852 (>= lt!856288 0)))

(declare-fun e!1479567 () Int)

(assert (=> d!682852 (= lt!856288 e!1479567)))

(declare-fun c!365939 () Bool)

(assert (=> d!682852 (= c!365939 ((_ is Nil!27479) (originalCharacters!5179 (_1!16211 (get!8285 lt!856040)))))))

(assert (=> d!682852 (= (size!21687 (originalCharacters!5179 (_1!16211 (get!8285 lt!856040)))) lt!856288)))

(declare-fun b!2308535 () Bool)

(assert (=> b!2308535 (= e!1479567 0)))

(declare-fun b!2308536 () Bool)

(assert (=> b!2308536 (= e!1479567 (+ 1 (size!21687 (t!206517 (originalCharacters!5179 (_1!16211 (get!8285 lt!856040)))))))))

(assert (= (and d!682852 c!365939) b!2308535))

(assert (= (and d!682852 (not c!365939)) b!2308536))

(declare-fun m!2735749 () Bool)

(assert (=> b!2308536 m!2735749))

(assert (=> b!2307915 d!682852))

(declare-fun b!2308537 () Bool)

(declare-fun e!1479569 () Bool)

(assert (=> b!2308537 (= e!1479569 (inv!15 (value!139476 (h!32881 (t!206518 tokens!456)))))))

(declare-fun d!682854 () Bool)

(declare-fun c!365941 () Bool)

(assert (=> d!682854 (= c!365941 ((_ is IntegerValue!13713) (value!139476 (h!32881 (t!206518 tokens!456)))))))

(declare-fun e!1479568 () Bool)

(assert (=> d!682854 (= (inv!21 (value!139476 (h!32881 (t!206518 tokens!456)))) e!1479568)))

(declare-fun b!2308538 () Bool)

(declare-fun e!1479570 () Bool)

(assert (=> b!2308538 (= e!1479568 e!1479570)))

(declare-fun c!365940 () Bool)

(assert (=> b!2308538 (= c!365940 ((_ is IntegerValue!13714) (value!139476 (h!32881 (t!206518 tokens!456)))))))

(declare-fun b!2308539 () Bool)

(declare-fun res!987155 () Bool)

(assert (=> b!2308539 (=> res!987155 e!1479569)))

(assert (=> b!2308539 (= res!987155 (not ((_ is IntegerValue!13715) (value!139476 (h!32881 (t!206518 tokens!456))))))))

(assert (=> b!2308539 (= e!1479570 e!1479569)))

(declare-fun b!2308540 () Bool)

(assert (=> b!2308540 (= e!1479570 (inv!17 (value!139476 (h!32881 (t!206518 tokens!456)))))))

(declare-fun b!2308541 () Bool)

(assert (=> b!2308541 (= e!1479568 (inv!16 (value!139476 (h!32881 (t!206518 tokens!456)))))))

(assert (= (and d!682854 c!365941) b!2308541))

(assert (= (and d!682854 (not c!365941)) b!2308538))

(assert (= (and b!2308538 c!365940) b!2308540))

(assert (= (and b!2308538 (not c!365940)) b!2308539))

(assert (= (and b!2308539 (not res!987155)) b!2308537))

(declare-fun m!2735751 () Bool)

(assert (=> b!2308537 m!2735751))

(declare-fun m!2735753 () Bool)

(assert (=> b!2308540 m!2735753))

(declare-fun m!2735755 () Bool)

(assert (=> b!2308541 m!2735755))

(assert (=> b!2308084 d!682854))

(declare-fun d!682856 () Bool)

(assert (=> d!682856 true))

(declare-fun lt!856291 () Bool)

(assert (=> d!682856 (= lt!856291 (rulesValidInductive!1564 thiss!16613 rules!1750))))

(declare-fun lambda!86013 () Int)

(declare-fun forall!5505 (List!27575 Int) Bool)

(assert (=> d!682856 (= lt!856291 (forall!5505 rules!1750 lambda!86013))))

(assert (=> d!682856 (= (rulesValid!1638 thiss!16613 rules!1750) lt!856291)))

(declare-fun bs!458063 () Bool)

(assert (= bs!458063 d!682856))

(assert (=> bs!458063 m!2734691))

(declare-fun m!2735757 () Bool)

(assert (=> bs!458063 m!2735757))

(assert (=> d!682496 d!682856))

(declare-fun d!682858 () Bool)

(assert (=> d!682858 (= (list!10848 lt!855944) (list!10851 (c!365710 lt!855944)))))

(declare-fun bs!458064 () Bool)

(assert (= bs!458064 d!682858))

(declare-fun m!2735759 () Bool)

(assert (=> bs!458064 m!2735759))

(assert (=> d!682428 d!682858))

(declare-fun d!682860 () Bool)

(declare-fun c!365944 () Bool)

(assert (=> d!682860 (= c!365944 ((_ is Node!8966) (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456))))))))

(declare-fun e!1479575 () Bool)

(assert (=> d!682860 (= (inv!37124 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456))))) e!1479575)))

(declare-fun b!2308550 () Bool)

(declare-fun inv!37128 (Conc!8966) Bool)

(assert (=> b!2308550 (= e!1479575 (inv!37128 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456))))))))

(declare-fun b!2308551 () Bool)

(declare-fun e!1479576 () Bool)

(assert (=> b!2308551 (= e!1479575 e!1479576)))

(declare-fun res!987158 () Bool)

(assert (=> b!2308551 (= res!987158 (not ((_ is Leaf!13156) (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456)))))))))

(assert (=> b!2308551 (=> res!987158 e!1479576)))

(declare-fun b!2308552 () Bool)

(declare-fun inv!37129 (Conc!8966) Bool)

(assert (=> b!2308552 (= e!1479576 (inv!37129 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456))))))))

(assert (= (and d!682860 c!365944) b!2308550))

(assert (= (and d!682860 (not c!365944)) b!2308551))

(assert (= (and b!2308551 (not res!987158)) b!2308552))

(declare-fun m!2735761 () Bool)

(assert (=> b!2308550 m!2735761))

(declare-fun m!2735763 () Bool)

(assert (=> b!2308552 m!2735763))

(assert (=> b!2307634 d!682860))

(declare-fun d!682862 () Bool)

(declare-fun e!1479577 () Bool)

(assert (=> d!682862 e!1479577))

(declare-fun c!365945 () Bool)

(assert (=> d!682862 (= c!365945 ((_ is EmptyExpr!6757) (regex!4409 r!2363)))))

(declare-fun lt!856292 () Bool)

(declare-fun e!1479579 () Bool)

(assert (=> d!682862 (= lt!856292 e!1479579)))

(declare-fun c!365947 () Bool)

(assert (=> d!682862 (= c!365947 (isEmpty!15718 (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)))))))

(assert (=> d!682862 (validRegex!2555 (regex!4409 r!2363))))

(assert (=> d!682862 (= (matchR!3014 (regex!4409 r!2363) (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)))) lt!856292)))

(declare-fun b!2308553 () Bool)

(declare-fun res!987163 () Bool)

(declare-fun e!1479581 () Bool)

(assert (=> b!2308553 (=> res!987163 e!1479581)))

(assert (=> b!2308553 (= res!987163 (not ((_ is ElementMatch!6757) (regex!4409 r!2363))))))

(declare-fun e!1479582 () Bool)

(assert (=> b!2308553 (= e!1479582 e!1479581)))

(declare-fun b!2308554 () Bool)

(assert (=> b!2308554 (= e!1479577 e!1479582)))

(declare-fun c!365946 () Bool)

(assert (=> b!2308554 (= c!365946 ((_ is EmptyLang!6757) (regex!4409 r!2363)))))

(declare-fun b!2308555 () Bool)

(declare-fun e!1479583 () Bool)

(declare-fun e!1479578 () Bool)

(assert (=> b!2308555 (= e!1479583 e!1479578)))

(declare-fun res!987159 () Bool)

(assert (=> b!2308555 (=> res!987159 e!1479578)))

(declare-fun call!137247 () Bool)

(assert (=> b!2308555 (= res!987159 call!137247)))

(declare-fun b!2308556 () Bool)

(declare-fun e!1479580 () Bool)

(assert (=> b!2308556 (= e!1479580 (= (head!5065 (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)))) (c!365711 (regex!4409 r!2363))))))

(declare-fun b!2308557 () Bool)

(assert (=> b!2308557 (= e!1479581 e!1479583)))

(declare-fun res!987161 () Bool)

(assert (=> b!2308557 (=> (not res!987161) (not e!1479583))))

(assert (=> b!2308557 (= res!987161 (not lt!856292))))

(declare-fun b!2308558 () Bool)

(assert (=> b!2308558 (= e!1479579 (matchR!3014 (derivativeStep!1554 (regex!4409 r!2363) (head!5065 (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722))))) (tail!3336 (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722))))))))

(declare-fun b!2308559 () Bool)

(declare-fun res!987164 () Bool)

(assert (=> b!2308559 (=> res!987164 e!1479581)))

(assert (=> b!2308559 (= res!987164 e!1479580)))

(declare-fun res!987166 () Bool)

(assert (=> b!2308559 (=> (not res!987166) (not e!1479580))))

(assert (=> b!2308559 (= res!987166 lt!856292)))

(declare-fun bm!137242 () Bool)

(assert (=> bm!137242 (= call!137247 (isEmpty!15718 (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)))))))

(declare-fun b!2308560 () Bool)

(declare-fun res!987162 () Bool)

(assert (=> b!2308560 (=> (not res!987162) (not e!1479580))))

(assert (=> b!2308560 (= res!987162 (not call!137247))))

(declare-fun b!2308561 () Bool)

(declare-fun res!987160 () Bool)

(assert (=> b!2308561 (=> (not res!987160) (not e!1479580))))

(assert (=> b!2308561 (= res!987160 (isEmpty!15718 (tail!3336 (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722))))))))

(declare-fun b!2308562 () Bool)

(assert (=> b!2308562 (= e!1479579 (nullable!1894 (regex!4409 r!2363)))))

(declare-fun b!2308563 () Bool)

(assert (=> b!2308563 (= e!1479582 (not lt!856292))))

(declare-fun b!2308564 () Bool)

(assert (=> b!2308564 (= e!1479578 (not (= (head!5065 (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)))) (c!365711 (regex!4409 r!2363)))))))

(declare-fun b!2308565 () Bool)

(assert (=> b!2308565 (= e!1479577 (= lt!856292 call!137247))))

(declare-fun b!2308566 () Bool)

(declare-fun res!987165 () Bool)

(assert (=> b!2308566 (=> res!987165 e!1479578)))

(assert (=> b!2308566 (= res!987165 (not (isEmpty!15718 (tail!3336 (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)))))))))

(assert (= (and d!682862 c!365947) b!2308562))

(assert (= (and d!682862 (not c!365947)) b!2308558))

(assert (= (and d!682862 c!365945) b!2308565))

(assert (= (and d!682862 (not c!365945)) b!2308554))

(assert (= (and b!2308554 c!365946) b!2308563))

(assert (= (and b!2308554 (not c!365946)) b!2308553))

(assert (= (and b!2308553 (not res!987163)) b!2308559))

(assert (= (and b!2308559 res!987166) b!2308560))

(assert (= (and b!2308560 res!987162) b!2308561))

(assert (= (and b!2308561 res!987160) b!2308556))

(assert (= (and b!2308559 (not res!987164)) b!2308557))

(assert (= (and b!2308557 res!987161) b!2308555))

(assert (= (and b!2308555 (not res!987159)) b!2308566))

(assert (= (and b!2308566 (not res!987165)) b!2308564))

(assert (= (or b!2308565 b!2308560 b!2308555) bm!137242))

(declare-fun m!2735765 () Bool)

(assert (=> b!2308561 m!2735765))

(assert (=> b!2308561 m!2735765))

(declare-fun m!2735767 () Bool)

(assert (=> b!2308561 m!2735767))

(assert (=> b!2308566 m!2735765))

(assert (=> b!2308566 m!2735765))

(assert (=> b!2308566 m!2735767))

(declare-fun m!2735769 () Bool)

(assert (=> b!2308558 m!2735769))

(assert (=> b!2308558 m!2735769))

(declare-fun m!2735771 () Bool)

(assert (=> b!2308558 m!2735771))

(assert (=> b!2308558 m!2735765))

(assert (=> b!2308558 m!2735771))

(assert (=> b!2308558 m!2735765))

(declare-fun m!2735773 () Bool)

(assert (=> b!2308558 m!2735773))

(assert (=> b!2308564 m!2735769))

(assert (=> b!2308556 m!2735769))

(assert (=> b!2308562 m!2734943))

(assert (=> bm!137242 m!2735003))

(assert (=> d!682862 m!2735003))

(assert (=> d!682862 m!2734947))

(assert (=> b!2307913 d!682862))

(declare-fun b!2308681 () Bool)

(declare-fun e!1479649 () Bool)

(declare-fun e!1479650 () Bool)

(assert (=> b!2308681 (= e!1479649 e!1479650)))

(declare-fun res!987203 () Bool)

(assert (=> b!2308681 (=> res!987203 e!1479650)))

(declare-fun lt!856459 () tuple2!27410)

(assert (=> b!2308681 (= res!987203 (isEmpty!15718 (_1!16215 lt!856459)))))

(declare-fun bm!137284 () Bool)

(declare-fun call!137293 () Regex!6757)

(declare-fun call!137294 () C!13660)

(assert (=> bm!137284 (= call!137293 (derivativeStep!1554 (regex!4409 r!2363) call!137294))))

(declare-fun b!2308682 () Bool)

(assert (=> b!2308682 (= e!1479650 (>= (size!21687 (_1!16215 lt!856459)) (size!21687 Nil!27479)))))

(declare-fun bm!137285 () Bool)

(declare-fun call!137291 () Unit!40394)

(assert (=> bm!137285 (= call!137291 (lemmaIsPrefixRefl!1525 input!1722 input!1722))))

(declare-fun b!2308683 () Bool)

(declare-fun e!1479654 () tuple2!27410)

(assert (=> b!2308683 (= e!1479654 (tuple2!27411 Nil!27479 input!1722))))

(declare-fun bm!137286 () Bool)

(declare-fun call!137296 () Bool)

(assert (=> bm!137286 (= call!137296 (isPrefix!2399 input!1722 input!1722))))

(declare-fun call!137289 () tuple2!27410)

(declare-fun lt!856454 () List!27573)

(declare-fun bm!137287 () Bool)

(declare-fun call!137295 () List!27573)

(assert (=> bm!137287 (= call!137289 (findLongestMatchInner!739 call!137293 lt!856454 (+ (size!21687 Nil!27479) 1) call!137295 input!1722 (size!21687 input!1722)))))

(declare-fun b!2308684 () Bool)

(declare-fun c!365993 () Bool)

(declare-fun call!137290 () Bool)

(assert (=> b!2308684 (= c!365993 call!137290)))

(declare-fun lt!856453 () Unit!40394)

(declare-fun lt!856451 () Unit!40394)

(assert (=> b!2308684 (= lt!856453 lt!856451)))

(assert (=> b!2308684 (= input!1722 Nil!27479)))

(declare-fun call!137292 () Unit!40394)

(assert (=> b!2308684 (= lt!856451 call!137292)))

(declare-fun lt!856472 () Unit!40394)

(declare-fun lt!856462 () Unit!40394)

(assert (=> b!2308684 (= lt!856472 lt!856462)))

(assert (=> b!2308684 call!137296))

(assert (=> b!2308684 (= lt!856462 call!137291)))

(declare-fun e!1479651 () tuple2!27410)

(assert (=> b!2308684 (= e!1479651 e!1479654)))

(declare-fun b!2308685 () Bool)

(assert (=> b!2308685 (= e!1479654 (tuple2!27411 Nil!27479 Nil!27479))))

(declare-fun b!2308686 () Bool)

(declare-fun e!1479652 () tuple2!27410)

(declare-fun e!1479653 () tuple2!27410)

(assert (=> b!2308686 (= e!1479652 e!1479653)))

(declare-fun lt!856463 () tuple2!27410)

(assert (=> b!2308686 (= lt!856463 call!137289)))

(declare-fun c!365989 () Bool)

(assert (=> b!2308686 (= c!365989 (isEmpty!15718 (_1!16215 lt!856463)))))

(declare-fun b!2308687 () Bool)

(declare-fun e!1479656 () tuple2!27410)

(assert (=> b!2308687 (= e!1479656 e!1479651)))

(declare-fun c!365990 () Bool)

(assert (=> b!2308687 (= c!365990 (= (size!21687 Nil!27479) (size!21687 input!1722)))))

(declare-fun bm!137288 () Bool)

(assert (=> bm!137288 (= call!137294 (head!5065 input!1722))))

(declare-fun b!2308688 () Bool)

(declare-fun e!1479655 () Unit!40394)

(declare-fun Unit!40403 () Unit!40394)

(assert (=> b!2308688 (= e!1479655 Unit!40403)))

(declare-fun b!2308689 () Bool)

(assert (=> b!2308689 (= e!1479656 (tuple2!27411 Nil!27479 input!1722))))

(declare-fun bm!137289 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!403 (List!27573 List!27573 List!27573) Unit!40394)

(assert (=> bm!137289 (= call!137292 (lemmaIsPrefixSameLengthThenSameList!403 input!1722 Nil!27479 input!1722))))

(declare-fun b!2308690 () Bool)

(declare-fun c!365988 () Bool)

(assert (=> b!2308690 (= c!365988 call!137290)))

(declare-fun lt!856461 () Unit!40394)

(declare-fun lt!856471 () Unit!40394)

(assert (=> b!2308690 (= lt!856461 lt!856471)))

(declare-fun lt!856473 () C!13660)

(declare-fun lt!856448 () List!27573)

(assert (=> b!2308690 (= (++!6727 (++!6727 Nil!27479 (Cons!27479 lt!856473 Nil!27479)) lt!856448) input!1722)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!529 (List!27573 C!13660 List!27573 List!27573) Unit!40394)

(assert (=> b!2308690 (= lt!856471 (lemmaMoveElementToOtherListKeepsConcatEq!529 Nil!27479 lt!856473 lt!856448 input!1722))))

(assert (=> b!2308690 (= lt!856448 (tail!3336 input!1722))))

(assert (=> b!2308690 (= lt!856473 (head!5065 input!1722))))

(declare-fun lt!856469 () Unit!40394)

(declare-fun lt!856467 () Unit!40394)

(assert (=> b!2308690 (= lt!856469 lt!856467)))

(assert (=> b!2308690 (isPrefix!2399 (++!6727 Nil!27479 (Cons!27479 (head!5065 (getSuffix!1178 input!1722 Nil!27479)) Nil!27479)) input!1722)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!401 (List!27573 List!27573) Unit!40394)

(assert (=> b!2308690 (= lt!856467 (lemmaAddHeadSuffixToPrefixStillPrefix!401 Nil!27479 input!1722))))

(declare-fun lt!856452 () Unit!40394)

(declare-fun lt!856468 () Unit!40394)

(assert (=> b!2308690 (= lt!856452 lt!856468)))

(assert (=> b!2308690 (= lt!856468 (lemmaAddHeadSuffixToPrefixStillPrefix!401 Nil!27479 input!1722))))

(assert (=> b!2308690 (= lt!856454 (++!6727 Nil!27479 (Cons!27479 (head!5065 input!1722) Nil!27479)))))

(declare-fun lt!856458 () Unit!40394)

(assert (=> b!2308690 (= lt!856458 e!1479655)))

(declare-fun c!365992 () Bool)

(assert (=> b!2308690 (= c!365992 (= (size!21687 Nil!27479) (size!21687 input!1722)))))

(declare-fun lt!856470 () Unit!40394)

(declare-fun lt!856460 () Unit!40394)

(assert (=> b!2308690 (= lt!856470 lt!856460)))

(assert (=> b!2308690 (<= (size!21687 Nil!27479) (size!21687 input!1722))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!204 (List!27573 List!27573) Unit!40394)

(assert (=> b!2308690 (= lt!856460 (lemmaIsPrefixThenSmallerEqSize!204 Nil!27479 input!1722))))

(assert (=> b!2308690 (= e!1479651 e!1479652)))

(declare-fun d!682864 () Bool)

(assert (=> d!682864 e!1479649))

(declare-fun res!987202 () Bool)

(assert (=> d!682864 (=> (not res!987202) (not e!1479649))))

(assert (=> d!682864 (= res!987202 (= (++!6727 (_1!16215 lt!856459) (_2!16215 lt!856459)) input!1722))))

(assert (=> d!682864 (= lt!856459 e!1479656)))

(declare-fun c!365991 () Bool)

(declare-fun lostCause!692 (Regex!6757) Bool)

(assert (=> d!682864 (= c!365991 (lostCause!692 (regex!4409 r!2363)))))

(declare-fun lt!856457 () Unit!40394)

(declare-fun Unit!40404 () Unit!40394)

(assert (=> d!682864 (= lt!856457 Unit!40404)))

(assert (=> d!682864 (= (getSuffix!1178 input!1722 Nil!27479) input!1722)))

(declare-fun lt!856465 () Unit!40394)

(declare-fun lt!856475 () Unit!40394)

(assert (=> d!682864 (= lt!856465 lt!856475)))

(declare-fun lt!856456 () List!27573)

(assert (=> d!682864 (= input!1722 lt!856456)))

(assert (=> d!682864 (= lt!856475 (lemmaSamePrefixThenSameSuffix!1080 Nil!27479 input!1722 Nil!27479 lt!856456 input!1722))))

(assert (=> d!682864 (= lt!856456 (getSuffix!1178 input!1722 Nil!27479))))

(declare-fun lt!856449 () Unit!40394)

(declare-fun lt!856450 () Unit!40394)

(assert (=> d!682864 (= lt!856449 lt!856450)))

(assert (=> d!682864 (isPrefix!2399 Nil!27479 (++!6727 Nil!27479 input!1722))))

(assert (=> d!682864 (= lt!856450 (lemmaConcatTwoListThenFirstIsPrefix!1592 Nil!27479 input!1722))))

(assert (=> d!682864 (validRegex!2555 (regex!4409 r!2363))))

(assert (=> d!682864 (= (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)) lt!856459)))

(declare-fun b!2308691 () Bool)

(assert (=> b!2308691 (= e!1479653 lt!856463)))

(declare-fun b!2308692 () Bool)

(assert (=> b!2308692 (= e!1479652 call!137289)))

(declare-fun b!2308693 () Bool)

(assert (=> b!2308693 (= e!1479653 (tuple2!27411 Nil!27479 input!1722))))

(declare-fun b!2308694 () Bool)

(declare-fun Unit!40405 () Unit!40394)

(assert (=> b!2308694 (= e!1479655 Unit!40405)))

(declare-fun lt!856464 () Unit!40394)

(assert (=> b!2308694 (= lt!856464 call!137291)))

(assert (=> b!2308694 call!137296))

(declare-fun lt!856466 () Unit!40394)

(assert (=> b!2308694 (= lt!856466 lt!856464)))

(declare-fun lt!856474 () Unit!40394)

(assert (=> b!2308694 (= lt!856474 call!137292)))

(assert (=> b!2308694 (= input!1722 Nil!27479)))

(declare-fun lt!856455 () Unit!40394)

(assert (=> b!2308694 (= lt!856455 lt!856474)))

(assert (=> b!2308694 false))

(declare-fun bm!137290 () Bool)

(assert (=> bm!137290 (= call!137290 (nullable!1894 (regex!4409 r!2363)))))

(declare-fun bm!137291 () Bool)

(assert (=> bm!137291 (= call!137295 (tail!3336 input!1722))))

(assert (= (and d!682864 c!365991) b!2308689))

(assert (= (and d!682864 (not c!365991)) b!2308687))

(assert (= (and b!2308687 c!365990) b!2308684))

(assert (= (and b!2308687 (not c!365990)) b!2308690))

(assert (= (and b!2308684 c!365993) b!2308685))

(assert (= (and b!2308684 (not c!365993)) b!2308683))

(assert (= (and b!2308690 c!365992) b!2308694))

(assert (= (and b!2308690 (not c!365992)) b!2308688))

(assert (= (and b!2308690 c!365988) b!2308686))

(assert (= (and b!2308690 (not c!365988)) b!2308692))

(assert (= (and b!2308686 c!365989) b!2308693))

(assert (= (and b!2308686 (not c!365989)) b!2308691))

(assert (= (or b!2308686 b!2308692) bm!137288))

(assert (= (or b!2308686 b!2308692) bm!137291))

(assert (= (or b!2308686 b!2308692) bm!137284))

(assert (= (or b!2308686 b!2308692) bm!137287))

(assert (= (or b!2308684 b!2308690) bm!137290))

(assert (= (or b!2308684 b!2308694) bm!137286))

(assert (= (or b!2308684 b!2308694) bm!137289))

(assert (= (or b!2308684 b!2308694) bm!137285))

(assert (= (and d!682864 res!987202) b!2308681))

(assert (= (and b!2308681 (not res!987203)) b!2308682))

(declare-fun m!2735937 () Bool)

(assert (=> b!2308690 m!2735937))

(declare-fun m!2735939 () Bool)

(assert (=> b!2308690 m!2735939))

(assert (=> b!2308690 m!2734739))

(declare-fun m!2735941 () Bool)

(assert (=> b!2308690 m!2735941))

(declare-fun m!2735943 () Bool)

(assert (=> b!2308690 m!2735943))

(declare-fun m!2735947 () Bool)

(assert (=> b!2308690 m!2735947))

(declare-fun m!2735951 () Bool)

(assert (=> b!2308690 m!2735951))

(declare-fun m!2735953 () Bool)

(assert (=> b!2308690 m!2735953))

(declare-fun m!2735955 () Bool)

(assert (=> b!2308690 m!2735955))

(assert (=> b!2308690 m!2735947))

(declare-fun m!2735957 () Bool)

(assert (=> b!2308690 m!2735957))

(assert (=> b!2308690 m!2735955))

(declare-fun m!2735963 () Bool)

(assert (=> b!2308690 m!2735963))

(assert (=> b!2308690 m!2734623))

(assert (=> b!2308690 m!2734991))

(assert (=> b!2308690 m!2735937))

(assert (=> b!2308690 m!2734621))

(declare-fun m!2735965 () Bool)

(assert (=> b!2308686 m!2735965))

(assert (=> bm!137285 m!2734471))

(assert (=> bm!137291 m!2734623))

(assert (=> bm!137287 m!2734621))

(declare-fun m!2735967 () Bool)

(assert (=> bm!137287 m!2735967))

(declare-fun m!2735969 () Bool)

(assert (=> b!2308681 m!2735969))

(declare-fun m!2735971 () Bool)

(assert (=> bm!137289 m!2735971))

(assert (=> bm!137290 m!2734943))

(declare-fun m!2735975 () Bool)

(assert (=> d!682864 m!2735975))

(declare-fun m!2735979 () Bool)

(assert (=> d!682864 m!2735979))

(declare-fun m!2735981 () Bool)

(assert (=> d!682864 m!2735981))

(declare-fun m!2735983 () Bool)

(assert (=> d!682864 m!2735983))

(assert (=> d!682864 m!2734947))

(assert (=> d!682864 m!2735981))

(declare-fun m!2735985 () Bool)

(assert (=> d!682864 m!2735985))

(assert (=> d!682864 m!2735937))

(declare-fun m!2735987 () Bool)

(assert (=> d!682864 m!2735987))

(declare-fun m!2735989 () Bool)

(assert (=> b!2308682 m!2735989))

(assert (=> b!2308682 m!2734991))

(declare-fun m!2735991 () Bool)

(assert (=> bm!137284 m!2735991))

(assert (=> bm!137288 m!2734739))

(assert (=> bm!137286 m!2734469))

(assert (=> b!2307913 d!682864))

(declare-fun d!682926 () Bool)

(declare-fun lt!856479 () Int)

(assert (=> d!682926 (>= lt!856479 0)))

(declare-fun e!1479673 () Int)

(assert (=> d!682926 (= lt!856479 e!1479673)))

(declare-fun c!366003 () Bool)

(assert (=> d!682926 (= c!366003 ((_ is Nil!27479) Nil!27479))))

(assert (=> d!682926 (= (size!21687 Nil!27479) lt!856479)))

(declare-fun b!2308720 () Bool)

(assert (=> b!2308720 (= e!1479673 0)))

(declare-fun b!2308721 () Bool)

(assert (=> b!2308721 (= e!1479673 (+ 1 (size!21687 (t!206517 Nil!27479))))))

(assert (= (and d!682926 c!366003) b!2308720))

(assert (= (and d!682926 (not c!366003)) b!2308721))

(declare-fun m!2736001 () Bool)

(assert (=> b!2308721 m!2736001))

(assert (=> b!2307913 d!682926))

(assert (=> b!2307913 d!682762))

(declare-fun d!682930 () Bool)

(declare-fun c!366009 () Bool)

(assert (=> d!682930 (= c!366009 ((_ is Nil!27481) rules!1750))))

(declare-fun e!1479683 () (InoxSet Rule!8618))

(assert (=> d!682930 (= (content!3715 rules!1750) e!1479683)))

(declare-fun b!2308740 () Bool)

(assert (=> b!2308740 (= e!1479683 ((as const (Array Rule!8618 Bool)) false))))

(declare-fun b!2308741 () Bool)

(assert (=> b!2308741 (= e!1479683 ((_ map or) (store ((as const (Array Rule!8618 Bool)) false) (h!32882 rules!1750) true) (content!3715 (t!206519 rules!1750))))))

(assert (= (and d!682930 c!366009) b!2308740))

(assert (= (and d!682930 (not c!366009)) b!2308741))

(declare-fun m!2736021 () Bool)

(assert (=> b!2308741 m!2736021))

(declare-fun m!2736023 () Bool)

(assert (=> b!2308741 m!2736023))

(assert (=> d!682498 d!682930))

(assert (=> b!2307619 d!682590))

(assert (=> b!2307619 d!682592))

(assert (=> b!2307619 d!682594))

(assert (=> bm!137188 d!682828))

(assert (=> d!682508 d!682580))

(declare-fun d!682936 () Bool)

(declare-fun charsToInt!0 (List!27572) (_ BitVec 32))

(assert (=> d!682936 (= (inv!16 (value!139476 (h!32881 tokens!456))) (= (charsToInt!0 (text!32444 (value!139476 (h!32881 tokens!456)))) (value!139467 (value!139476 (h!32881 tokens!456)))))))

(declare-fun bs!458081 () Bool)

(assert (= bs!458081 d!682936))

(declare-fun m!2736033 () Bool)

(assert (=> bs!458081 m!2736033))

(assert (=> b!2308046 d!682936))

(declare-fun d!682940 () Bool)

(assert (=> d!682940 true))

(declare-fun lambda!86019 () Int)

(declare-fun order!15319 () Int)

(declare-fun dynLambda!11958 (Int Int) Int)

(assert (=> d!682940 (< (dynLambda!11949 order!15305 (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) (dynLambda!11958 order!15319 lambda!86019))))

(declare-fun Forall2!720 (Int) Bool)

(assert (=> d!682940 (= (equivClasses!1715 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) (Forall2!720 lambda!86019))))

(declare-fun bs!458082 () Bool)

(assert (= bs!458082 d!682940))

(declare-fun m!2736055 () Bool)

(assert (=> bs!458082 m!2736055))

(assert (=> b!2307795 d!682940))

(declare-fun bs!458083 () Bool)

(declare-fun d!682948 () Bool)

(assert (= bs!458083 (and d!682948 d!682940)))

(declare-fun lambda!86020 () Int)

(assert (=> bs!458083 (= (= (toValue!6223 (transformation!4409 r!2363)) (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) (= lambda!86020 lambda!86019))))

(assert (=> d!682948 true))

(assert (=> d!682948 (< (dynLambda!11949 order!15305 (toValue!6223 (transformation!4409 r!2363))) (dynLambda!11958 order!15319 lambda!86020))))

(assert (=> d!682948 (= (equivClasses!1715 (toChars!6082 (transformation!4409 r!2363)) (toValue!6223 (transformation!4409 r!2363))) (Forall2!720 lambda!86020))))

(declare-fun bs!458084 () Bool)

(assert (= bs!458084 d!682948))

(declare-fun m!2736057 () Bool)

(assert (=> bs!458084 m!2736057))

(assert (=> b!2307805 d!682948))

(declare-fun b!2308778 () Bool)

(declare-fun lt!856486 () List!27573)

(declare-fun e!1479704 () Bool)

(assert (=> b!2308778 (= e!1479704 (or (not (= (_2!16211 lt!855868) Nil!27479)) (= lt!856486 (t!206517 lt!855852))))))

(declare-fun b!2308776 () Bool)

(declare-fun e!1479703 () List!27573)

(assert (=> b!2308776 (= e!1479703 (Cons!27479 (h!32880 (t!206517 lt!855852)) (++!6727 (t!206517 (t!206517 lt!855852)) (_2!16211 lt!855868))))))

(declare-fun d!682950 () Bool)

(assert (=> d!682950 e!1479704))

(declare-fun res!987234 () Bool)

(assert (=> d!682950 (=> (not res!987234) (not e!1479704))))

(assert (=> d!682950 (= res!987234 (= (content!3714 lt!856486) ((_ map or) (content!3714 (t!206517 lt!855852)) (content!3714 (_2!16211 lt!855868)))))))

(assert (=> d!682950 (= lt!856486 e!1479703)))

(declare-fun c!366018 () Bool)

(assert (=> d!682950 (= c!366018 ((_ is Nil!27479) (t!206517 lt!855852)))))

(assert (=> d!682950 (= (++!6727 (t!206517 lt!855852) (_2!16211 lt!855868)) lt!856486)))

(declare-fun b!2308775 () Bool)

(assert (=> b!2308775 (= e!1479703 (_2!16211 lt!855868))))

(declare-fun b!2308777 () Bool)

(declare-fun res!987233 () Bool)

(assert (=> b!2308777 (=> (not res!987233) (not e!1479704))))

(assert (=> b!2308777 (= res!987233 (= (size!21687 lt!856486) (+ (size!21687 (t!206517 lt!855852)) (size!21687 (_2!16211 lt!855868)))))))

(assert (= (and d!682950 c!366018) b!2308775))

(assert (= (and d!682950 (not c!366018)) b!2308776))

(assert (= (and d!682950 res!987234) b!2308777))

(assert (= (and b!2308777 res!987233) b!2308778))

(declare-fun m!2736059 () Bool)

(assert (=> b!2308776 m!2736059))

(declare-fun m!2736061 () Bool)

(assert (=> d!682950 m!2736061))

(assert (=> d!682950 m!2735739))

(assert (=> d!682950 m!2734731))

(declare-fun m!2736063 () Bool)

(assert (=> b!2308777 m!2736063))

(assert (=> b!2308777 m!2734737))

(assert (=> b!2308777 m!2734735))

(assert (=> b!2307644 d!682950))

(assert (=> d!682512 d!682510))

(declare-fun d!682952 () Bool)

(assert (=> d!682952 (ruleValid!1499 thiss!16613 otherR!12)))

(assert (=> d!682952 true))

(declare-fun _$65!1186 () Unit!40394)

(assert (=> d!682952 (= (choose!13494 thiss!16613 otherR!12 rules!1750) _$65!1186)))

(declare-fun bs!458085 () Bool)

(assert (= bs!458085 d!682952))

(assert (=> bs!458085 m!2734527))

(assert (=> d!682512 d!682952))

(assert (=> d!682512 d!682498))

(assert (=> b!2307874 d!682612))

(declare-fun d!682954 () Bool)

(declare-fun lt!856488 () Int)

(assert (=> d!682954 (>= lt!856488 0)))

(declare-fun e!1479707 () Int)

(assert (=> d!682954 (= lt!856488 e!1479707)))

(declare-fun c!366019 () Bool)

(assert (=> d!682954 (= c!366019 ((_ is Nil!27479) (t!206517 lt!855852)))))

(assert (=> d!682954 (= (size!21687 (t!206517 lt!855852)) lt!856488)))

(declare-fun b!2308783 () Bool)

(assert (=> b!2308783 (= e!1479707 0)))

(declare-fun b!2308784 () Bool)

(assert (=> b!2308784 (= e!1479707 (+ 1 (size!21687 (t!206517 (t!206517 lt!855852)))))))

(assert (= (and d!682954 c!366019) b!2308783))

(assert (= (and d!682954 (not c!366019)) b!2308784))

(declare-fun m!2736065 () Bool)

(assert (=> b!2308784 m!2736065))

(assert (=> b!2307648 d!682954))

(declare-fun d!682956 () Bool)

(declare-fun charsToBigInt!0 (List!27572 Int) Int)

(assert (=> d!682956 (= (inv!15 (value!139476 (h!32881 tokens!456))) (= (charsToBigInt!0 (text!32446 (value!139476 (h!32881 tokens!456))) 0) (value!139471 (value!139476 (h!32881 tokens!456)))))))

(declare-fun bs!458086 () Bool)

(assert (= bs!458086 d!682956))

(declare-fun m!2736089 () Bool)

(assert (=> bs!458086 m!2736089))

(assert (=> b!2308042 d!682956))

(declare-fun d!682972 () Bool)

(declare-fun e!1479714 () Bool)

(assert (=> d!682972 e!1479714))

(declare-fun c!366022 () Bool)

(assert (=> d!682972 (= c!366022 ((_ is EmptyExpr!6757) (regex!4409 (rule!6761 (_1!16211 (get!8285 lt!855934))))))))

(declare-fun lt!856492 () Bool)

(declare-fun e!1479716 () Bool)

(assert (=> d!682972 (= lt!856492 e!1479716)))

(declare-fun c!366024 () Bool)

(assert (=> d!682972 (= c!366024 (isEmpty!15718 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934))))))))

(assert (=> d!682972 (validRegex!2555 (regex!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))))

(assert (=> d!682972 (= (matchR!3014 (regex!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))) (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934))))) lt!856492)))

(declare-fun b!2308795 () Bool)

(declare-fun res!987247 () Bool)

(declare-fun e!1479718 () Bool)

(assert (=> b!2308795 (=> res!987247 e!1479718)))

(assert (=> b!2308795 (= res!987247 (not ((_ is ElementMatch!6757) (regex!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))))))

(declare-fun e!1479719 () Bool)

(assert (=> b!2308795 (= e!1479719 e!1479718)))

(declare-fun b!2308796 () Bool)

(assert (=> b!2308796 (= e!1479714 e!1479719)))

(declare-fun c!366023 () Bool)

(assert (=> b!2308796 (= c!366023 ((_ is EmptyLang!6757) (regex!4409 (rule!6761 (_1!16211 (get!8285 lt!855934))))))))

(declare-fun b!2308797 () Bool)

(declare-fun e!1479720 () Bool)

(declare-fun e!1479715 () Bool)

(assert (=> b!2308797 (= e!1479720 e!1479715)))

(declare-fun res!987243 () Bool)

(assert (=> b!2308797 (=> res!987243 e!1479715)))

(declare-fun call!137306 () Bool)

(assert (=> b!2308797 (= res!987243 call!137306)))

(declare-fun b!2308798 () Bool)

(declare-fun e!1479717 () Bool)

(assert (=> b!2308798 (= e!1479717 (= (head!5065 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934))))) (c!365711 (regex!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))))))

(declare-fun b!2308799 () Bool)

(assert (=> b!2308799 (= e!1479718 e!1479720)))

(declare-fun res!987245 () Bool)

(assert (=> b!2308799 (=> (not res!987245) (not e!1479720))))

(assert (=> b!2308799 (= res!987245 (not lt!856492))))

(declare-fun b!2308800 () Bool)

(assert (=> b!2308800 (= e!1479716 (matchR!3014 (derivativeStep!1554 (regex!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))) (head!5065 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934)))))) (tail!3336 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934)))))))))

(declare-fun b!2308801 () Bool)

(declare-fun res!987248 () Bool)

(assert (=> b!2308801 (=> res!987248 e!1479718)))

(assert (=> b!2308801 (= res!987248 e!1479717)))

(declare-fun res!987250 () Bool)

(assert (=> b!2308801 (=> (not res!987250) (not e!1479717))))

(assert (=> b!2308801 (= res!987250 lt!856492)))

(declare-fun bm!137301 () Bool)

(assert (=> bm!137301 (= call!137306 (isEmpty!15718 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934))))))))

(declare-fun b!2308802 () Bool)

(declare-fun res!987246 () Bool)

(assert (=> b!2308802 (=> (not res!987246) (not e!1479717))))

(assert (=> b!2308802 (= res!987246 (not call!137306))))

(declare-fun b!2308803 () Bool)

(declare-fun res!987244 () Bool)

(assert (=> b!2308803 (=> (not res!987244) (not e!1479717))))

(assert (=> b!2308803 (= res!987244 (isEmpty!15718 (tail!3336 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934)))))))))

(declare-fun b!2308804 () Bool)

(assert (=> b!2308804 (= e!1479716 (nullable!1894 (regex!4409 (rule!6761 (_1!16211 (get!8285 lt!855934))))))))

(declare-fun b!2308805 () Bool)

(assert (=> b!2308805 (= e!1479719 (not lt!856492))))

(declare-fun b!2308806 () Bool)

(assert (=> b!2308806 (= e!1479715 (not (= (head!5065 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934))))) (c!365711 (regex!4409 (rule!6761 (_1!16211 (get!8285 lt!855934))))))))))

(declare-fun b!2308807 () Bool)

(assert (=> b!2308807 (= e!1479714 (= lt!856492 call!137306))))

(declare-fun b!2308808 () Bool)

(declare-fun res!987249 () Bool)

(assert (=> b!2308808 (=> res!987249 e!1479715)))

(assert (=> b!2308808 (= res!987249 (not (isEmpty!15718 (tail!3336 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!855934))))))))))

(assert (= (and d!682972 c!366024) b!2308804))

(assert (= (and d!682972 (not c!366024)) b!2308800))

(assert (= (and d!682972 c!366022) b!2308807))

(assert (= (and d!682972 (not c!366022)) b!2308796))

(assert (= (and b!2308796 c!366023) b!2308805))

(assert (= (and b!2308796 (not c!366023)) b!2308795))

(assert (= (and b!2308795 (not res!987247)) b!2308801))

(assert (= (and b!2308801 res!987250) b!2308802))

(assert (= (and b!2308802 res!987246) b!2308803))

(assert (= (and b!2308803 res!987244) b!2308798))

(assert (= (and b!2308801 (not res!987248)) b!2308799))

(assert (= (and b!2308799 res!987245) b!2308797))

(assert (= (and b!2308797 (not res!987243)) b!2308808))

(assert (= (and b!2308808 (not res!987249)) b!2308806))

(assert (= (or b!2308807 b!2308802 b!2308797) bm!137301))

(assert (=> b!2308803 m!2734685))

(declare-fun m!2736091 () Bool)

(assert (=> b!2308803 m!2736091))

(assert (=> b!2308803 m!2736091))

(declare-fun m!2736093 () Bool)

(assert (=> b!2308803 m!2736093))

(assert (=> b!2308808 m!2734685))

(assert (=> b!2308808 m!2736091))

(assert (=> b!2308808 m!2736091))

(assert (=> b!2308808 m!2736093))

(assert (=> b!2308800 m!2734685))

(declare-fun m!2736099 () Bool)

(assert (=> b!2308800 m!2736099))

(assert (=> b!2308800 m!2736099))

(declare-fun m!2736101 () Bool)

(assert (=> b!2308800 m!2736101))

(assert (=> b!2308800 m!2734685))

(assert (=> b!2308800 m!2736091))

(assert (=> b!2308800 m!2736101))

(assert (=> b!2308800 m!2736091))

(declare-fun m!2736105 () Bool)

(assert (=> b!2308800 m!2736105))

(assert (=> b!2308806 m!2734685))

(assert (=> b!2308806 m!2736099))

(assert (=> b!2308798 m!2734685))

(assert (=> b!2308798 m!2736099))

(declare-fun m!2736109 () Bool)

(assert (=> b!2308804 m!2736109))

(assert (=> bm!137301 m!2734685))

(declare-fun m!2736111 () Bool)

(assert (=> bm!137301 m!2736111))

(assert (=> d!682972 m!2734685))

(assert (=> d!682972 m!2736111))

(declare-fun m!2736113 () Bool)

(assert (=> d!682972 m!2736113))

(assert (=> b!2307614 d!682972))

(assert (=> b!2307614 d!682594))

(assert (=> b!2307614 d!682590))

(assert (=> b!2307614 d!682592))

(declare-fun d!682982 () Bool)

(declare-fun c!366026 () Bool)

(assert (=> d!682982 (= c!366026 ((_ is Node!8966) (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)))))))

(declare-fun e!1479724 () Bool)

(assert (=> d!682982 (= (inv!37124 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)))) e!1479724)))

(declare-fun b!2308813 () Bool)

(assert (=> b!2308813 (= e!1479724 (inv!37128 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)))))))

(declare-fun b!2308814 () Bool)

(declare-fun e!1479725 () Bool)

(assert (=> b!2308814 (= e!1479724 e!1479725)))

(declare-fun res!987253 () Bool)

(assert (=> b!2308814 (= res!987253 (not ((_ is Leaf!13156) (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861))))))))

(assert (=> b!2308814 (=> res!987253 e!1479725)))

(declare-fun b!2308815 () Bool)

(assert (=> b!2308815 (= e!1479725 (inv!37129 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)))))))

(assert (= (and d!682982 c!366026) b!2308813))

(assert (= (and d!682982 (not c!366026)) b!2308814))

(assert (= (and b!2308814 (not res!987253)) b!2308815))

(declare-fun m!2736115 () Bool)

(assert (=> b!2308813 m!2736115))

(declare-fun m!2736117 () Bool)

(assert (=> b!2308815 m!2736117))

(assert (=> b!2307792 d!682982))

(declare-fun c!366028 () Bool)

(declare-fun bm!137302 () Bool)

(declare-fun c!366027 () Bool)

(declare-fun call!137307 () Bool)

(assert (=> bm!137302 (= call!137307 (validRegex!2555 (ite c!366028 (reg!7086 (regex!4409 otherR!12)) (ite c!366027 (regOne!14027 (regex!4409 otherR!12)) (regTwo!14026 (regex!4409 otherR!12))))))))

(declare-fun b!2308817 () Bool)

(declare-fun e!1479728 () Bool)

(declare-fun call!137309 () Bool)

(assert (=> b!2308817 (= e!1479728 call!137309)))

(declare-fun bm!137303 () Bool)

(declare-fun call!137308 () Bool)

(assert (=> bm!137303 (= call!137308 call!137307)))

(declare-fun b!2308818 () Bool)

(declare-fun e!1479727 () Bool)

(declare-fun e!1479732 () Bool)

(assert (=> b!2308818 (= e!1479727 e!1479732)))

(assert (=> b!2308818 (= c!366027 ((_ is Union!6757) (regex!4409 otherR!12)))))

(declare-fun b!2308819 () Bool)

(declare-fun res!987257 () Bool)

(declare-fun e!1479729 () Bool)

(assert (=> b!2308819 (=> res!987257 e!1479729)))

(assert (=> b!2308819 (= res!987257 (not ((_ is Concat!11329) (regex!4409 otherR!12))))))

(assert (=> b!2308819 (= e!1479732 e!1479729)))

(declare-fun b!2308820 () Bool)

(declare-fun e!1479726 () Bool)

(assert (=> b!2308820 (= e!1479726 call!137307)))

(declare-fun bm!137304 () Bool)

(assert (=> bm!137304 (= call!137309 (validRegex!2555 (ite c!366027 (regTwo!14027 (regex!4409 otherR!12)) (regOne!14026 (regex!4409 otherR!12)))))))

(declare-fun d!682984 () Bool)

(declare-fun res!987258 () Bool)

(declare-fun e!1479730 () Bool)

(assert (=> d!682984 (=> res!987258 e!1479730)))

(assert (=> d!682984 (= res!987258 ((_ is ElementMatch!6757) (regex!4409 otherR!12)))))

(assert (=> d!682984 (= (validRegex!2555 (regex!4409 otherR!12)) e!1479730)))

(declare-fun b!2308816 () Bool)

(declare-fun e!1479731 () Bool)

(assert (=> b!2308816 (= e!1479731 call!137308)))

(declare-fun b!2308821 () Bool)

(assert (=> b!2308821 (= e!1479730 e!1479727)))

(assert (=> b!2308821 (= c!366028 ((_ is Star!6757) (regex!4409 otherR!12)))))

(declare-fun b!2308822 () Bool)

(assert (=> b!2308822 (= e!1479729 e!1479731)))

(declare-fun res!987256 () Bool)

(assert (=> b!2308822 (=> (not res!987256) (not e!1479731))))

(assert (=> b!2308822 (= res!987256 call!137309)))

(declare-fun b!2308823 () Bool)

(declare-fun res!987255 () Bool)

(assert (=> b!2308823 (=> (not res!987255) (not e!1479728))))

(assert (=> b!2308823 (= res!987255 call!137308)))

(assert (=> b!2308823 (= e!1479732 e!1479728)))

(declare-fun b!2308824 () Bool)

(assert (=> b!2308824 (= e!1479727 e!1479726)))

(declare-fun res!987254 () Bool)

(assert (=> b!2308824 (= res!987254 (not (nullable!1894 (reg!7086 (regex!4409 otherR!12)))))))

(assert (=> b!2308824 (=> (not res!987254) (not e!1479726))))

(assert (= (and d!682984 (not res!987258)) b!2308821))

(assert (= (and b!2308821 c!366028) b!2308824))

(assert (= (and b!2308821 (not c!366028)) b!2308818))

(assert (= (and b!2308824 res!987254) b!2308820))

(assert (= (and b!2308818 c!366027) b!2308823))

(assert (= (and b!2308818 (not c!366027)) b!2308819))

(assert (= (and b!2308823 res!987255) b!2308817))

(assert (= (and b!2308819 (not res!987257)) b!2308822))

(assert (= (and b!2308822 res!987256) b!2308816))

(assert (= (or b!2308823 b!2308816) bm!137303))

(assert (= (or b!2308817 b!2308822) bm!137304))

(assert (= (or b!2308820 bm!137303) bm!137302))

(declare-fun m!2736119 () Bool)

(assert (=> bm!137302 m!2736119))

(declare-fun m!2736121 () Bool)

(assert (=> bm!137304 m!2736121))

(declare-fun m!2736123 () Bool)

(assert (=> b!2308824 m!2736123))

(assert (=> d!682510 d!682984))

(declare-fun d!682986 () Bool)

(assert (=> d!682986 (= (_2!16211 lt!855868) lt!855869)))

(assert (=> d!682986 true))

(declare-fun _$63!841 () Unit!40394)

(assert (=> d!682986 (= (choose!13489 lt!855852 (_2!16211 lt!855868) lt!855852 lt!855869 input!1722) _$63!841)))

(assert (=> d!682410 d!682986))

(assert (=> d!682410 d!682534))

(declare-fun d!682988 () Bool)

(declare-fun e!1479737 () Bool)

(assert (=> d!682988 e!1479737))

(declare-fun res!987259 () Bool)

(assert (=> d!682988 (=> (not res!987259) (not e!1479737))))

(declare-fun lt!856493 () BalanceConc!17660)

(assert (=> d!682988 (= res!987259 (= (list!10848 lt!856493) lt!855852))))

(assert (=> d!682988 (= lt!856493 (BalanceConc!17661 (fromList!549 lt!855852)))))

(assert (=> d!682988 (= (fromListB!1406 lt!855852) lt!856493)))

(declare-fun b!2308833 () Bool)

(assert (=> b!2308833 (= e!1479737 (isBalanced!2692 (fromList!549 lt!855852)))))

(assert (= (and d!682988 res!987259) b!2308833))

(declare-fun m!2736125 () Bool)

(assert (=> d!682988 m!2736125))

(declare-fun m!2736127 () Bool)

(assert (=> d!682988 m!2736127))

(assert (=> b!2308833 m!2736127))

(assert (=> b!2308833 m!2736127))

(declare-fun m!2736129 () Bool)

(assert (=> b!2308833 m!2736129))

(assert (=> d!682530 d!682988))

(declare-fun d!682990 () Bool)

(declare-fun c!366033 () Bool)

(assert (=> d!682990 (= c!366033 ((_ is Node!8966) (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456))))))))

(declare-fun e!1479738 () Bool)

(assert (=> d!682990 (= (inv!37124 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456))))) e!1479738)))

(declare-fun b!2308834 () Bool)

(assert (=> b!2308834 (= e!1479738 (inv!37128 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456))))))))

(declare-fun b!2308835 () Bool)

(declare-fun e!1479739 () Bool)

(assert (=> b!2308835 (= e!1479738 e!1479739)))

(declare-fun res!987260 () Bool)

(assert (=> b!2308835 (= res!987260 (not ((_ is Leaf!13156) (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456)))))))))

(assert (=> b!2308835 (=> res!987260 e!1479739)))

(declare-fun b!2308836 () Bool)

(assert (=> b!2308836 (= e!1479739 (inv!37129 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456))))))))

(assert (= (and d!682990 c!366033) b!2308834))

(assert (= (and d!682990 (not c!366033)) b!2308835))

(assert (= (and b!2308835 (not res!987260)) b!2308836))

(declare-fun m!2736131 () Bool)

(assert (=> b!2308834 m!2736131))

(declare-fun m!2736133 () Bool)

(assert (=> b!2308836 m!2736133))

(assert (=> b!2307828 d!682990))

(declare-fun e!1479741 () Bool)

(declare-fun lt!856494 () List!27573)

(declare-fun b!2308840 () Bool)

(assert (=> b!2308840 (= e!1479741 (or (not (= lt!855899 Nil!27479)) (= lt!856494 lt!855852)))))

(declare-fun b!2308838 () Bool)

(declare-fun e!1479740 () List!27573)

(assert (=> b!2308838 (= e!1479740 (Cons!27479 (h!32880 lt!855852) (++!6727 (t!206517 lt!855852) lt!855899)))))

(declare-fun d!682992 () Bool)

(assert (=> d!682992 e!1479741))

(declare-fun res!987262 () Bool)

(assert (=> d!682992 (=> (not res!987262) (not e!1479741))))

(assert (=> d!682992 (= res!987262 (= (content!3714 lt!856494) ((_ map or) (content!3714 lt!855852) (content!3714 lt!855899))))))

(assert (=> d!682992 (= lt!856494 e!1479740)))

(declare-fun c!366034 () Bool)

(assert (=> d!682992 (= c!366034 ((_ is Nil!27479) lt!855852))))

(assert (=> d!682992 (= (++!6727 lt!855852 lt!855899) lt!856494)))

(declare-fun b!2308837 () Bool)

(assert (=> b!2308837 (= e!1479740 lt!855899)))

(declare-fun b!2308839 () Bool)

(declare-fun res!987261 () Bool)

(assert (=> b!2308839 (=> (not res!987261) (not e!1479741))))

(assert (=> b!2308839 (= res!987261 (= (size!21687 lt!856494) (+ (size!21687 lt!855852) (size!21687 lt!855899))))))

(assert (= (and d!682992 c!366034) b!2308837))

(assert (= (and d!682992 (not c!366034)) b!2308838))

(assert (= (and d!682992 res!987262) b!2308839))

(assert (= (and b!2308839 res!987261) b!2308840))

(declare-fun m!2736135 () Bool)

(assert (=> b!2308838 m!2736135))

(declare-fun m!2736137 () Bool)

(assert (=> d!682992 m!2736137))

(assert (=> d!682992 m!2734729))

(declare-fun m!2736145 () Bool)

(assert (=> d!682992 m!2736145))

(declare-fun m!2736149 () Bool)

(assert (=> b!2308839 m!2736149))

(assert (=> b!2308839 m!2734491))

(declare-fun m!2736151 () Bool)

(assert (=> b!2308839 m!2736151))

(assert (=> d!682408 d!682992))

(assert (=> d!682408 d!682762))

(assert (=> d!682408 d!682436))

(declare-fun d!682996 () Bool)

(declare-fun lt!856495 () Int)

(assert (=> d!682996 (>= lt!856495 0)))

(declare-fun e!1479744 () Int)

(assert (=> d!682996 (= lt!856495 e!1479744)))

(declare-fun c!366037 () Bool)

(assert (=> d!682996 (= c!366037 ((_ is Nil!27479) (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))

(assert (=> d!682996 (= (size!21687 (list!10848 (charsOf!2797 (head!5064 tokens!456)))) lt!856495)))

(declare-fun b!2308845 () Bool)

(assert (=> b!2308845 (= e!1479744 0)))

(declare-fun b!2308846 () Bool)

(assert (=> b!2308846 (= e!1479744 (+ 1 (size!21687 (t!206517 (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))))

(assert (= (and d!682996 c!366037) b!2308845))

(assert (= (and d!682996 (not c!366037)) b!2308846))

(declare-fun m!2736155 () Bool)

(assert (=> b!2308846 m!2736155))

(assert (=> d!682514 d!682996))

(assert (=> d!682514 d!682522))

(declare-fun d!683000 () Bool)

(declare-fun lt!856499 () Int)

(assert (=> d!683000 (= lt!856499 (size!21687 (list!10851 (c!365710 (charsOf!2797 (head!5064 tokens!456))))))))

(assert (=> d!683000 (= lt!856499 (ite ((_ is Empty!8966) (c!365710 (charsOf!2797 (head!5064 tokens!456)))) 0 (ite ((_ is Leaf!13156) (c!365710 (charsOf!2797 (head!5064 tokens!456)))) (csize!18163 (c!365710 (charsOf!2797 (head!5064 tokens!456)))) (csize!18162 (c!365710 (charsOf!2797 (head!5064 tokens!456)))))))))

(assert (=> d!683000 (= (size!21688 (c!365710 (charsOf!2797 (head!5064 tokens!456)))) lt!856499)))

(declare-fun bs!458090 () Bool)

(assert (= bs!458090 d!683000))

(assert (=> bs!458090 m!2734949))

(assert (=> bs!458090 m!2734949))

(declare-fun m!2736181 () Bool)

(assert (=> bs!458090 m!2736181))

(assert (=> d!682514 d!683000))

(declare-fun bs!458094 () Bool)

(declare-fun d!683008 () Bool)

(assert (= bs!458094 (and d!683008 d!682940)))

(declare-fun lambda!86025 () Int)

(assert (=> bs!458094 (= (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) (= lambda!86025 lambda!86019))))

(declare-fun bs!458095 () Bool)

(assert (= bs!458095 (and d!683008 d!682948)))

(assert (=> bs!458095 (= (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 r!2363))) (= lambda!86025 lambda!86020))))

(assert (=> d!683008 true))

(assert (=> d!683008 (< (dynLambda!11949 order!15305 (toValue!6223 (transformation!4409 otherR!12))) (dynLambda!11958 order!15319 lambda!86025))))

(assert (=> d!683008 (= (equivClasses!1715 (toChars!6082 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 otherR!12))) (Forall2!720 lambda!86025))))

(declare-fun bs!458096 () Bool)

(assert (= bs!458096 d!683008))

(declare-fun m!2736185 () Bool)

(assert (=> bs!458096 m!2736185))

(assert (=> b!2308047 d!683008))

(assert (=> d!682580 d!682930))

(declare-fun b!2308864 () Bool)

(declare-fun e!1479754 () List!27573)

(assert (=> b!2308864 (= e!1479754 (++!6727 (list!10851 (left!20815 (c!365710 (charsOf!2797 (head!5064 tokens!456))))) (list!10851 (right!21145 (c!365710 (charsOf!2797 (head!5064 tokens!456)))))))))

(declare-fun b!2308861 () Bool)

(declare-fun e!1479753 () List!27573)

(assert (=> b!2308861 (= e!1479753 Nil!27479)))

(declare-fun d!683012 () Bool)

(declare-fun c!366043 () Bool)

(assert (=> d!683012 (= c!366043 ((_ is Empty!8966) (c!365710 (charsOf!2797 (head!5064 tokens!456)))))))

(assert (=> d!683012 (= (list!10851 (c!365710 (charsOf!2797 (head!5064 tokens!456)))) e!1479753)))

(declare-fun b!2308862 () Bool)

(assert (=> b!2308862 (= e!1479753 e!1479754)))

(declare-fun c!366044 () Bool)

(assert (=> b!2308862 (= c!366044 ((_ is Leaf!13156) (c!365710 (charsOf!2797 (head!5064 tokens!456)))))))

(declare-fun b!2308863 () Bool)

(assert (=> b!2308863 (= e!1479754 (list!10856 (xs!11908 (c!365710 (charsOf!2797 (head!5064 tokens!456))))))))

(assert (= (and d!683012 c!366043) b!2308861))

(assert (= (and d!683012 (not c!366043)) b!2308862))

(assert (= (and b!2308862 c!366044) b!2308863))

(assert (= (and b!2308862 (not c!366044)) b!2308864))

(declare-fun m!2736187 () Bool)

(assert (=> b!2308864 m!2736187))

(declare-fun m!2736189 () Bool)

(assert (=> b!2308864 m!2736189))

(assert (=> b!2308864 m!2736187))

(assert (=> b!2308864 m!2736189))

(declare-fun m!2736191 () Bool)

(assert (=> b!2308864 m!2736191))

(declare-fun m!2736193 () Bool)

(assert (=> b!2308863 m!2736193))

(assert (=> d!682522 d!683012))

(declare-fun d!683014 () Bool)

(assert (=> d!683014 (= (list!10848 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861))) (list!10851 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)))))))

(declare-fun bs!458097 () Bool)

(assert (= bs!458097 d!683014))

(declare-fun m!2736195 () Bool)

(assert (=> bs!458097 m!2736195))

(assert (=> d!682442 d!683014))

(declare-fun d!683016 () Bool)

(assert (=> d!683016 (= (list!10848 lt!855861) (list!10851 (c!365710 lt!855861)))))

(declare-fun bs!458098 () Bool)

(assert (= bs!458098 d!683016))

(declare-fun m!2736197 () Bool)

(assert (=> bs!458098 m!2736197))

(assert (=> d!682442 d!683016))

(declare-fun d!683018 () Bool)

(declare-fun dynLambda!11959 (Int BalanceConc!17660) Bool)

(assert (=> d!683018 (dynLambda!11959 lambda!85994 lt!855861)))

(declare-fun lt!856506 () Unit!40394)

(declare-fun choose!13501 (Int BalanceConc!17660) Unit!40394)

(assert (=> d!683018 (= lt!856506 (choose!13501 lambda!85994 lt!855861))))

(assert (=> d!683018 (Forall!1103 lambda!85994)))

(assert (=> d!683018 (= (ForallOf!502 lambda!85994 lt!855861) lt!856506)))

(declare-fun b_lambda!73577 () Bool)

(assert (=> (not b_lambda!73577) (not d!683018)))

(declare-fun bs!458101 () Bool)

(assert (= bs!458101 d!683018))

(declare-fun m!2736201 () Bool)

(assert (=> bs!458101 m!2736201))

(declare-fun m!2736203 () Bool)

(assert (=> bs!458101 m!2736203))

(declare-fun m!2736205 () Bool)

(assert (=> bs!458101 m!2736205))

(assert (=> d!682442 d!683018))

(declare-fun d!683022 () Bool)

(assert (=> d!683022 (= (isEmpty!15716 lt!855934) (not ((_ is Some!5406) lt!855934)))))

(assert (=> d!682418 d!683022))

(assert (=> d!682418 d!682438))

(assert (=> d!682418 d!682440))

(declare-fun bs!458105 () Bool)

(declare-fun d!683024 () Bool)

(assert (= bs!458105 (and d!683024 d!682856)))

(declare-fun lambda!86031 () Int)

(assert (=> bs!458105 (= lambda!86031 lambda!86013)))

(assert (=> d!683024 true))

(declare-fun lt!856515 () Bool)

(assert (=> d!683024 (= lt!856515 (forall!5505 rules!1750 lambda!86031))))

(declare-fun e!1479762 () Bool)

(assert (=> d!683024 (= lt!856515 e!1479762)))

(declare-fun res!987273 () Bool)

(assert (=> d!683024 (=> res!987273 e!1479762)))

(assert (=> d!683024 (= res!987273 (not ((_ is Cons!27481) rules!1750)))))

(assert (=> d!683024 (= (rulesValidInductive!1564 thiss!16613 rules!1750) lt!856515)))

(declare-fun b!2308875 () Bool)

(declare-fun e!1479763 () Bool)

(assert (=> b!2308875 (= e!1479762 e!1479763)))

(declare-fun res!987274 () Bool)

(assert (=> b!2308875 (=> (not res!987274) (not e!1479763))))

(assert (=> b!2308875 (= res!987274 (ruleValid!1499 thiss!16613 (h!32882 rules!1750)))))

(declare-fun b!2308876 () Bool)

(assert (=> b!2308876 (= e!1479763 (rulesValidInductive!1564 thiss!16613 (t!206519 rules!1750)))))

(assert (= (and d!683024 (not res!987273)) b!2308875))

(assert (= (and b!2308875 res!987274) b!2308876))

(declare-fun m!2736231 () Bool)

(assert (=> d!683024 m!2736231))

(assert (=> b!2308875 m!2735683))

(declare-fun m!2736233 () Bool)

(assert (=> b!2308876 m!2736233))

(assert (=> d!682418 d!683024))

(declare-fun d!683036 () Bool)

(assert (=> d!683036 (= (isEmpty!15718 (list!10848 (charsOf!2797 (head!5064 tokens!456)))) ((_ is Nil!27479) (list!10848 (charsOf!2797 (head!5064 tokens!456)))))))

(assert (=> bm!137187 d!683036))

(assert (=> b!2307918 d!682596))

(assert (=> b!2307882 d!682612))

(declare-fun d!683038 () Bool)

(declare-fun lt!856516 () Int)

(assert (=> d!683038 (>= lt!856516 0)))

(declare-fun e!1479764 () Int)

(assert (=> d!683038 (= lt!856516 e!1479764)))

(declare-fun c!366047 () Bool)

(assert (=> d!683038 (= c!366047 ((_ is Nil!27479) (originalCharacters!5179 (h!32881 tokens!456))))))

(assert (=> d!683038 (= (size!21687 (originalCharacters!5179 (h!32881 tokens!456))) lt!856516)))

(declare-fun b!2308877 () Bool)

(assert (=> b!2308877 (= e!1479764 0)))

(declare-fun b!2308878 () Bool)

(assert (=> b!2308878 (= e!1479764 (+ 1 (size!21687 (t!206517 (originalCharacters!5179 (h!32881 tokens!456))))))))

(assert (= (and d!683038 c!366047) b!2308877))

(assert (= (and d!683038 (not c!366047)) b!2308878))

(declare-fun m!2736235 () Bool)

(assert (=> b!2308878 m!2736235))

(assert (=> b!2307925 d!683038))

(assert (=> b!2307890 d!682612))

(assert (=> b!2307890 d!682836))

(declare-fun d!683040 () Bool)

(declare-fun lt!856517 () Int)

(assert (=> d!683040 (>= lt!856517 0)))

(declare-fun e!1479765 () Int)

(assert (=> d!683040 (= lt!856517 e!1479765)))

(declare-fun c!366048 () Bool)

(assert (=> d!683040 (= c!366048 ((_ is Nil!27479) (t!206517 otherP!12)))))

(assert (=> d!683040 (= (size!21687 (t!206517 otherP!12)) lt!856517)))

(declare-fun b!2308879 () Bool)

(assert (=> b!2308879 (= e!1479765 0)))

(declare-fun b!2308880 () Bool)

(assert (=> b!2308880 (= e!1479765 (+ 1 (size!21687 (t!206517 (t!206517 otherP!12)))))))

(assert (= (and d!683040 c!366048) b!2308879))

(assert (= (and d!683040 (not c!366048)) b!2308880))

(declare-fun m!2736237 () Bool)

(assert (=> b!2308880 m!2736237))

(assert (=> b!2307567 d!683040))

(declare-fun d!683042 () Bool)

(declare-fun res!987275 () Bool)

(declare-fun e!1479766 () Bool)

(assert (=> d!683042 (=> (not res!987275) (not e!1479766))))

(assert (=> d!683042 (= res!987275 (not (isEmpty!15718 (originalCharacters!5179 (h!32881 (t!206518 tokens!456))))))))

(assert (=> d!683042 (= (inv!37121 (h!32881 (t!206518 tokens!456))) e!1479766)))

(declare-fun b!2308881 () Bool)

(declare-fun res!987276 () Bool)

(assert (=> b!2308881 (=> (not res!987276) (not e!1479766))))

(assert (=> b!2308881 (= res!987276 (= (originalCharacters!5179 (h!32881 (t!206518 tokens!456))) (list!10848 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (value!139476 (h!32881 (t!206518 tokens!456)))))))))

(declare-fun b!2308882 () Bool)

(assert (=> b!2308882 (= e!1479766 (= (size!21685 (h!32881 (t!206518 tokens!456))) (size!21687 (originalCharacters!5179 (h!32881 (t!206518 tokens!456))))))))

(assert (= (and d!683042 res!987275) b!2308881))

(assert (= (and b!2308881 res!987276) b!2308882))

(declare-fun b_lambda!73579 () Bool)

(assert (=> (not b_lambda!73579) (not b!2308881)))

(declare-fun t!206733 () Bool)

(declare-fun tb!138363 () Bool)

(assert (=> (and b!2308086 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456)))))) t!206733) tb!138363))

(declare-fun b!2308883 () Bool)

(declare-fun e!1479767 () Bool)

(declare-fun tp!732329 () Bool)

(assert (=> b!2308883 (= e!1479767 (and (inv!37124 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (value!139476 (h!32881 (t!206518 tokens!456)))))) tp!732329))))

(declare-fun result!168662 () Bool)

(assert (=> tb!138363 (= result!168662 (and (inv!37125 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (value!139476 (h!32881 (t!206518 tokens!456))))) e!1479767))))

(assert (= tb!138363 b!2308883))

(declare-fun m!2736239 () Bool)

(assert (=> b!2308883 m!2736239))

(declare-fun m!2736241 () Bool)

(assert (=> tb!138363 m!2736241))

(assert (=> b!2308881 t!206733))

(declare-fun b_and!184493 () Bool)

(assert (= b_and!184449 (and (=> t!206733 result!168662) b_and!184493)))

(declare-fun tb!138365 () Bool)

(declare-fun t!206735 () Bool)

(assert (=> (and b!2307465 (= (toChars!6082 (transformation!4409 r!2363)) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456)))))) t!206735) tb!138365))

(declare-fun result!168664 () Bool)

(assert (= result!168664 result!168662))

(assert (=> b!2308881 t!206735))

(declare-fun b_and!184495 () Bool)

(assert (= b_and!184445 (and (=> t!206735 result!168664) b_and!184495)))

(declare-fun t!206737 () Bool)

(declare-fun tb!138367 () Bool)

(assert (=> (and b!2307487 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456)))))) t!206737) tb!138367))

(declare-fun result!168666 () Bool)

(assert (= result!168666 result!168662))

(assert (=> b!2308881 t!206737))

(declare-fun b_and!184497 () Bool)

(assert (= b_and!184451 (and (=> t!206737 result!168666) b_and!184497)))

(declare-fun t!206739 () Bool)

(declare-fun tb!138369 () Bool)

(assert (=> (and b!2307476 (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456)))))) t!206739) tb!138369))

(declare-fun result!168668 () Bool)

(assert (= result!168668 result!168662))

(assert (=> b!2308881 t!206739))

(declare-fun b_and!184499 () Bool)

(assert (= b_and!184447 (and (=> t!206739 result!168668) b_and!184499)))

(declare-fun t!206741 () Bool)

(declare-fun tb!138371 () Bool)

(assert (=> (and b!2307475 (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456)))))) t!206741) tb!138371))

(declare-fun result!168670 () Bool)

(assert (= result!168670 result!168662))

(assert (=> b!2308881 t!206741))

(declare-fun b_and!184501 () Bool)

(assert (= b_and!184453 (and (=> t!206741 result!168670) b_and!184501)))

(declare-fun tb!138373 () Bool)

(declare-fun t!206743 () Bool)

(assert (=> (and b!2308101 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456)))))) t!206743) tb!138373))

(declare-fun result!168672 () Bool)

(assert (= result!168672 result!168662))

(assert (=> b!2308881 t!206743))

(declare-fun b_and!184503 () Bool)

(assert (= b_and!184455 (and (=> t!206743 result!168672) b_and!184503)))

(declare-fun m!2736243 () Bool)

(assert (=> d!683042 m!2736243))

(declare-fun m!2736245 () Bool)

(assert (=> b!2308881 m!2736245))

(assert (=> b!2308881 m!2736245))

(declare-fun m!2736247 () Bool)

(assert (=> b!2308881 m!2736247))

(declare-fun m!2736249 () Bool)

(assert (=> b!2308882 m!2736249))

(assert (=> b!2308083 d!683042))

(assert (=> b!2307880 d!682746))

(declare-fun bs!458106 () Bool)

(declare-fun d!683044 () Bool)

(assert (= bs!458106 (and d!683044 d!682442)))

(declare-fun lambda!86032 () Int)

(assert (=> bs!458106 (= (and (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 r!2363))) (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 r!2363)))) (= lambda!86032 lambda!85994))))

(declare-fun bs!458107 () Bool)

(assert (= bs!458107 (and d!683044 d!682816)))

(assert (=> bs!458107 (= (and (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 r!2363))) (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 r!2363)))) (= lambda!86032 lambda!86008))))

(declare-fun bs!458108 () Bool)

(assert (= bs!458108 (and d!683044 d!682820)))

(assert (=> bs!458108 (= (and (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))))) (= lambda!86032 lambda!86009))))

(declare-fun bs!458109 () Bool)

(assert (= bs!458109 (and d!683044 d!682846)))

(assert (=> bs!458109 (= (and (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 otherR!12))) (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 otherR!12)))) (= lambda!86032 lambda!86010))))

(assert (=> d!683044 true))

(assert (=> d!683044 (< (dynLambda!11951 order!15309 (toChars!6082 (transformation!4409 (h!32882 rules!1750)))) (dynLambda!11950 order!15307 lambda!86032))))

(assert (=> d!683044 true))

(assert (=> d!683044 (< (dynLambda!11949 order!15305 (toValue!6223 (transformation!4409 (h!32882 rules!1750)))) (dynLambda!11950 order!15307 lambda!86032))))

(assert (=> d!683044 (= (semiInverseModEq!1796 (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 (h!32882 rules!1750)))) (Forall!1103 lambda!86032))))

(declare-fun bs!458110 () Bool)

(assert (= bs!458110 d!683044))

(declare-fun m!2736251 () Bool)

(assert (=> bs!458110 m!2736251))

(assert (=> d!682396 d!683044))

(declare-fun bs!458111 () Bool)

(declare-fun d!683046 () Bool)

(assert (= bs!458111 (and d!683046 d!682940)))

(declare-fun lambda!86033 () Int)

(assert (=> bs!458111 (= (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) (= lambda!86033 lambda!86019))))

(declare-fun bs!458112 () Bool)

(assert (= bs!458112 (and d!683046 d!682948)))

(assert (=> bs!458112 (= (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 r!2363))) (= lambda!86033 lambda!86020))))

(declare-fun bs!458113 () Bool)

(assert (= bs!458113 (and d!683046 d!683008)))

(assert (=> bs!458113 (= (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 otherR!12))) (= lambda!86033 lambda!86025))))

(assert (=> d!683046 true))

(assert (=> d!683046 (< (dynLambda!11949 order!15305 (toValue!6223 (transformation!4409 (h!32882 rules!1750)))) (dynLambda!11958 order!15319 lambda!86033))))

(assert (=> d!683046 (= (equivClasses!1715 (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 (h!32882 rules!1750)))) (Forall2!720 lambda!86033))))

(declare-fun bs!458114 () Bool)

(assert (= bs!458114 d!683046))

(declare-fun m!2736253 () Bool)

(assert (=> bs!458114 m!2736253))

(assert (=> b!2307525 d!683046))

(declare-fun d!683048 () Bool)

(assert (=> d!683048 (= (isEmpty!15718 (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)))) ((_ is Nil!27479) (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)))))))

(assert (=> b!2307912 d!683048))

(declare-fun d!683050 () Bool)

(assert (=> d!683050 (= (apply!6671 (transformation!4409 r!2363) (seqFromList!3113 (_1!16215 lt!856039))) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) (seqFromList!3113 (_1!16215 lt!856039))))))

(declare-fun b_lambda!73581 () Bool)

(assert (=> (not b_lambda!73581) (not d!683050)))

(declare-fun t!206745 () Bool)

(declare-fun tb!138375 () Bool)

(assert (=> (and b!2307465 (= (toValue!6223 (transformation!4409 r!2363)) (toValue!6223 (transformation!4409 r!2363))) t!206745) tb!138375))

(declare-fun result!168674 () Bool)

(assert (=> tb!138375 (= result!168674 (inv!21 (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) (seqFromList!3113 (_1!16215 lt!856039)))))))

(declare-fun m!2736255 () Bool)

(assert (=> tb!138375 m!2736255))

(assert (=> d!683050 t!206745))

(declare-fun b_and!184505 () Bool)

(assert (= b_and!184459 (and (=> t!206745 result!168674) b_and!184505)))

(declare-fun t!206747 () Bool)

(declare-fun tb!138377 () Bool)

(assert (=> (and b!2308101 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toValue!6223 (transformation!4409 r!2363))) t!206747) tb!138377))

(declare-fun result!168676 () Bool)

(assert (= result!168676 result!168674))

(assert (=> d!683050 t!206747))

(declare-fun b_and!184507 () Bool)

(assert (= b_and!184463 (and (=> t!206747 result!168676) b_and!184507)))

(declare-fun tb!138379 () Bool)

(declare-fun t!206749 () Bool)

(assert (=> (and b!2308086 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toValue!6223 (transformation!4409 r!2363))) t!206749) tb!138379))

(declare-fun result!168678 () Bool)

(assert (= result!168678 result!168674))

(assert (=> d!683050 t!206749))

(declare-fun b_and!184509 () Bool)

(assert (= b_and!184467 (and (=> t!206749 result!168678) b_and!184509)))

(declare-fun t!206751 () Bool)

(declare-fun tb!138381 () Bool)

(assert (=> (and b!2307475 (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 r!2363))) t!206751) tb!138381))

(declare-fun result!168680 () Bool)

(assert (= result!168680 result!168674))

(assert (=> d!683050 t!206751))

(declare-fun b_and!184511 () Bool)

(assert (= b_and!184465 (and (=> t!206751 result!168680) b_and!184511)))

(declare-fun tb!138383 () Bool)

(declare-fun t!206753 () Bool)

(assert (=> (and b!2307476 (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 r!2363))) t!206753) tb!138383))

(declare-fun result!168682 () Bool)

(assert (= result!168682 result!168674))

(assert (=> d!683050 t!206753))

(declare-fun b_and!184513 () Bool)

(assert (= b_and!184461 (and (=> t!206753 result!168682) b_and!184513)))

(declare-fun t!206755 () Bool)

(declare-fun tb!138385 () Bool)

(assert (=> (and b!2307487 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 r!2363))) t!206755) tb!138385))

(declare-fun result!168684 () Bool)

(assert (= result!168684 result!168674))

(assert (=> d!683050 t!206755))

(declare-fun b_and!184515 () Bool)

(assert (= b_and!184457 (and (=> t!206755 result!168684) b_and!184515)))

(assert (=> d!683050 m!2734997))

(declare-fun m!2736257 () Bool)

(assert (=> d!683050 m!2736257))

(assert (=> b!2307912 d!683050))

(declare-fun bs!458115 () Bool)

(declare-fun d!683052 () Bool)

(assert (= bs!458115 (and d!683052 d!682816)))

(declare-fun lambda!86034 () Int)

(assert (=> bs!458115 (= lambda!86034 lambda!86008)))

(declare-fun bs!458116 () Bool)

(assert (= bs!458116 (and d!683052 d!683044)))

(assert (=> bs!458116 (= (and (= (toChars!6082 (transformation!4409 r!2363)) (toChars!6082 (transformation!4409 (h!32882 rules!1750)))) (= (toValue!6223 (transformation!4409 r!2363)) (toValue!6223 (transformation!4409 (h!32882 rules!1750))))) (= lambda!86034 lambda!86032))))

(declare-fun bs!458117 () Bool)

(assert (= bs!458117 (and d!683052 d!682820)))

(assert (=> bs!458117 (= (and (= (toChars!6082 (transformation!4409 r!2363)) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) (= (toValue!6223 (transformation!4409 r!2363)) (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))))) (= lambda!86034 lambda!86009))))

(declare-fun bs!458118 () Bool)

(assert (= bs!458118 (and d!683052 d!682442)))

(assert (=> bs!458118 (= lambda!86034 lambda!85994)))

(declare-fun bs!458119 () Bool)

(assert (= bs!458119 (and d!683052 d!682846)))

(assert (=> bs!458119 (= (and (= (toChars!6082 (transformation!4409 r!2363)) (toChars!6082 (transformation!4409 otherR!12))) (= (toValue!6223 (transformation!4409 r!2363)) (toValue!6223 (transformation!4409 otherR!12)))) (= lambda!86034 lambda!86010))))

(declare-fun b!2308884 () Bool)

(declare-fun e!1479769 () Bool)

(assert (=> b!2308884 (= e!1479769 true)))

(assert (=> d!683052 e!1479769))

(assert (= d!683052 b!2308884))

(assert (=> b!2308884 (< (dynLambda!11949 order!15305 (toValue!6223 (transformation!4409 r!2363))) (dynLambda!11950 order!15307 lambda!86034))))

(assert (=> b!2308884 (< (dynLambda!11951 order!15309 (toChars!6082 (transformation!4409 r!2363))) (dynLambda!11950 order!15307 lambda!86034))))

(assert (=> d!683052 (= (list!10848 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) (seqFromList!3113 (_1!16215 lt!856039))))) (list!10848 (seqFromList!3113 (_1!16215 lt!856039))))))

(declare-fun lt!856518 () Unit!40394)

(assert (=> d!683052 (= lt!856518 (ForallOf!502 lambda!86034 (seqFromList!3113 (_1!16215 lt!856039))))))

(assert (=> d!683052 (= (lemmaSemiInverse!1088 (transformation!4409 r!2363) (seqFromList!3113 (_1!16215 lt!856039))) lt!856518)))

(declare-fun b_lambda!73583 () Bool)

(assert (=> (not b_lambda!73583) (not d!683052)))

(declare-fun t!206757 () Bool)

(declare-fun tb!138387 () Bool)

(assert (=> (and b!2308086 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toChars!6082 (transformation!4409 r!2363))) t!206757) tb!138387))

(declare-fun tp!732330 () Bool)

(declare-fun e!1479770 () Bool)

(declare-fun b!2308885 () Bool)

(assert (=> b!2308885 (= e!1479770 (and (inv!37124 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) (seqFromList!3113 (_1!16215 lt!856039)))))) tp!732330))))

(declare-fun result!168686 () Bool)

(assert (=> tb!138387 (= result!168686 (and (inv!37125 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) (seqFromList!3113 (_1!16215 lt!856039))))) e!1479770))))

(assert (= tb!138387 b!2308885))

(declare-fun m!2736259 () Bool)

(assert (=> b!2308885 m!2736259))

(declare-fun m!2736261 () Bool)

(assert (=> tb!138387 m!2736261))

(assert (=> d!683052 t!206757))

(declare-fun b_and!184517 () Bool)

(assert (= b_and!184493 (and (=> t!206757 result!168686) b_and!184517)))

(declare-fun t!206759 () Bool)

(declare-fun tb!138389 () Bool)

(assert (=> (and b!2307475 (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 r!2363))) t!206759) tb!138389))

(declare-fun result!168688 () Bool)

(assert (= result!168688 result!168686))

(assert (=> d!683052 t!206759))

(declare-fun b_and!184519 () Bool)

(assert (= b_and!184501 (and (=> t!206759 result!168688) b_and!184519)))

(declare-fun t!206761 () Bool)

(declare-fun tb!138391 () Bool)

(assert (=> (and b!2307465 (= (toChars!6082 (transformation!4409 r!2363)) (toChars!6082 (transformation!4409 r!2363))) t!206761) tb!138391))

(declare-fun result!168690 () Bool)

(assert (= result!168690 result!168686))

(assert (=> d!683052 t!206761))

(declare-fun b_and!184521 () Bool)

(assert (= b_and!184495 (and (=> t!206761 result!168690) b_and!184521)))

(declare-fun t!206763 () Bool)

(declare-fun tb!138393 () Bool)

(assert (=> (and b!2307476 (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 r!2363))) t!206763) tb!138393))

(declare-fun result!168692 () Bool)

(assert (= result!168692 result!168686))

(assert (=> d!683052 t!206763))

(declare-fun b_and!184523 () Bool)

(assert (= b_and!184499 (and (=> t!206763 result!168692) b_and!184523)))

(declare-fun tb!138395 () Bool)

(declare-fun t!206765 () Bool)

(assert (=> (and b!2308101 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toChars!6082 (transformation!4409 r!2363))) t!206765) tb!138395))

(declare-fun result!168694 () Bool)

(assert (= result!168694 result!168686))

(assert (=> d!683052 t!206765))

(declare-fun b_and!184525 () Bool)

(assert (= b_and!184503 (and (=> t!206765 result!168694) b_and!184525)))

(declare-fun t!206767 () Bool)

(declare-fun tb!138397 () Bool)

(assert (=> (and b!2307487 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toChars!6082 (transformation!4409 r!2363))) t!206767) tb!138397))

(declare-fun result!168696 () Bool)

(assert (= result!168696 result!168686))

(assert (=> d!683052 t!206767))

(declare-fun b_and!184527 () Bool)

(assert (= b_and!184497 (and (=> t!206767 result!168696) b_and!184527)))

(declare-fun b_lambda!73585 () Bool)

(assert (=> (not b_lambda!73585) (not d!683052)))

(assert (=> d!683052 t!206745))

(declare-fun b_and!184529 () Bool)

(assert (= b_and!184505 (and (=> t!206745 result!168674) b_and!184529)))

(assert (=> d!683052 t!206753))

(declare-fun b_and!184531 () Bool)

(assert (= b_and!184513 (and (=> t!206753 result!168682) b_and!184531)))

(assert (=> d!683052 t!206747))

(declare-fun b_and!184533 () Bool)

(assert (= b_and!184507 (and (=> t!206747 result!168676) b_and!184533)))

(assert (=> d!683052 t!206749))

(declare-fun b_and!184535 () Bool)

(assert (= b_and!184509 (and (=> t!206749 result!168678) b_and!184535)))

(assert (=> d!683052 t!206751))

(declare-fun b_and!184537 () Bool)

(assert (= b_and!184511 (and (=> t!206751 result!168680) b_and!184537)))

(assert (=> d!683052 t!206755))

(declare-fun b_and!184539 () Bool)

(assert (= b_and!184515 (and (=> t!206755 result!168684) b_and!184539)))

(declare-fun m!2736263 () Bool)

(assert (=> d!683052 m!2736263))

(declare-fun m!2736265 () Bool)

(assert (=> d!683052 m!2736265))

(assert (=> d!683052 m!2734997))

(declare-fun m!2736267 () Bool)

(assert (=> d!683052 m!2736267))

(assert (=> d!683052 m!2736257))

(assert (=> d!683052 m!2736263))

(assert (=> d!683052 m!2734997))

(assert (=> d!683052 m!2736257))

(assert (=> d!683052 m!2734997))

(declare-fun m!2736269 () Bool)

(assert (=> d!683052 m!2736269))

(assert (=> b!2307912 d!683052))

(assert (=> b!2307912 d!682762))

(declare-fun d!683054 () Bool)

(assert (=> d!683054 (= (seqFromList!3113 (_1!16215 lt!856039)) (fromListB!1406 (_1!16215 lt!856039)))))

(declare-fun bs!458120 () Bool)

(assert (= bs!458120 d!683054))

(declare-fun m!2736271 () Bool)

(assert (=> bs!458120 m!2736271))

(assert (=> b!2307912 d!683054))

(assert (=> b!2307912 d!682926))

(assert (=> b!2307912 d!682864))

(declare-fun d!683056 () Bool)

(declare-fun e!1479773 () Bool)

(assert (=> d!683056 e!1479773))

(declare-fun res!987279 () Bool)

(assert (=> d!683056 (=> res!987279 e!1479773)))

(assert (=> d!683056 (= res!987279 (isEmpty!15718 (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)))))))

(declare-fun lt!856521 () Unit!40394)

(declare-fun choose!13502 (Regex!6757 List!27573) Unit!40394)

(assert (=> d!683056 (= lt!856521 (choose!13502 (regex!4409 r!2363) input!1722))))

(assert (=> d!683056 (validRegex!2555 (regex!4409 r!2363))))

(assert (=> d!683056 (= (longestMatchIsAcceptedByMatchOrIsEmpty!712 (regex!4409 r!2363) input!1722) lt!856521)))

(declare-fun b!2308888 () Bool)

(assert (=> b!2308888 (= e!1479773 (matchR!3014 (regex!4409 r!2363) (_1!16215 (findLongestMatchInner!739 (regex!4409 r!2363) Nil!27479 (size!21687 Nil!27479) input!1722 input!1722 (size!21687 input!1722)))))))

(assert (= (and d!683056 (not res!987279)) b!2308888))

(assert (=> d!683056 m!2734991))

(declare-fun m!2736273 () Bool)

(assert (=> d!683056 m!2736273))

(assert (=> d!683056 m!2734991))

(assert (=> d!683056 m!2734621))

(assert (=> d!683056 m!2734993))

(assert (=> d!683056 m!2734947))

(assert (=> d!683056 m!2734621))

(assert (=> d!683056 m!2735003))

(assert (=> b!2308888 m!2734991))

(assert (=> b!2308888 m!2734621))

(assert (=> b!2308888 m!2734991))

(assert (=> b!2308888 m!2734621))

(assert (=> b!2308888 m!2734993))

(assert (=> b!2308888 m!2734995))

(assert (=> b!2307912 d!683056))

(declare-fun d!683058 () Bool)

(declare-fun lt!856522 () Int)

(assert (=> d!683058 (= lt!856522 (size!21687 (list!10848 (seqFromList!3113 (_1!16215 lt!856039)))))))

(assert (=> d!683058 (= lt!856522 (size!21688 (c!365710 (seqFromList!3113 (_1!16215 lt!856039)))))))

(assert (=> d!683058 (= (size!21686 (seqFromList!3113 (_1!16215 lt!856039))) lt!856522)))

(declare-fun bs!458121 () Bool)

(assert (= bs!458121 d!683058))

(assert (=> bs!458121 m!2734997))

(assert (=> bs!458121 m!2736269))

(assert (=> bs!458121 m!2736269))

(declare-fun m!2736275 () Bool)

(assert (=> bs!458121 m!2736275))

(declare-fun m!2736277 () Bool)

(assert (=> bs!458121 m!2736277))

(assert (=> b!2307912 d!683058))

(declare-fun b!2308890 () Bool)

(declare-fun res!987282 () Bool)

(declare-fun e!1479775 () Bool)

(assert (=> b!2308890 (=> (not res!987282) (not e!1479775))))

(declare-fun lt!856523 () Option!5407)

(assert (=> b!2308890 (= res!987282 (matchR!3014 (regex!4409 (rule!6761 (_1!16211 (get!8285 lt!856523)))) (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856523))))))))

(declare-fun call!137310 () Option!5407)

(declare-fun bm!137305 () Bool)

(assert (=> bm!137305 (= call!137310 (maxPrefixOneRule!1432 thiss!16613 (h!32882 (t!206519 rules!1750)) input!1722))))

(declare-fun b!2308891 () Bool)

(declare-fun e!1479776 () Option!5407)

(assert (=> b!2308891 (= e!1479776 call!137310)))

(declare-fun b!2308892 () Bool)

(declare-fun res!987280 () Bool)

(assert (=> b!2308892 (=> (not res!987280) (not e!1479775))))

(assert (=> b!2308892 (= res!987280 (= (value!139476 (_1!16211 (get!8285 lt!856523))) (apply!6671 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856523)))) (seqFromList!3113 (originalCharacters!5179 (_1!16211 (get!8285 lt!856523)))))))))

(declare-fun b!2308893 () Bool)

(assert (=> b!2308893 (= e!1479775 (contains!4797 (t!206519 rules!1750) (rule!6761 (_1!16211 (get!8285 lt!856523)))))))

(declare-fun b!2308894 () Bool)

(declare-fun lt!856524 () Option!5407)

(declare-fun lt!856525 () Option!5407)

(assert (=> b!2308894 (= e!1479776 (ite (and ((_ is None!5406) lt!856524) ((_ is None!5406) lt!856525)) None!5406 (ite ((_ is None!5406) lt!856525) lt!856524 (ite ((_ is None!5406) lt!856524) lt!856525 (ite (>= (size!21685 (_1!16211 (v!30514 lt!856524))) (size!21685 (_1!16211 (v!30514 lt!856525)))) lt!856524 lt!856525)))))))

(assert (=> b!2308894 (= lt!856524 call!137310)))

(assert (=> b!2308894 (= lt!856525 (maxPrefix!2262 thiss!16613 (t!206519 (t!206519 rules!1750)) input!1722))))

(declare-fun b!2308895 () Bool)

(declare-fun res!987285 () Bool)

(assert (=> b!2308895 (=> (not res!987285) (not e!1479775))))

(assert (=> b!2308895 (= res!987285 (= (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856523)))) (originalCharacters!5179 (_1!16211 (get!8285 lt!856523)))))))

(declare-fun d!683060 () Bool)

(declare-fun e!1479774 () Bool)

(assert (=> d!683060 e!1479774))

(declare-fun res!987281 () Bool)

(assert (=> d!683060 (=> res!987281 e!1479774)))

(assert (=> d!683060 (= res!987281 (isEmpty!15716 lt!856523))))

(assert (=> d!683060 (= lt!856523 e!1479776)))

(declare-fun c!366049 () Bool)

(assert (=> d!683060 (= c!366049 (and ((_ is Cons!27481) (t!206519 rules!1750)) ((_ is Nil!27481) (t!206519 (t!206519 rules!1750)))))))

(declare-fun lt!856526 () Unit!40394)

(declare-fun lt!856527 () Unit!40394)

(assert (=> d!683060 (= lt!856526 lt!856527)))

(assert (=> d!683060 (isPrefix!2399 input!1722 input!1722)))

(assert (=> d!683060 (= lt!856527 (lemmaIsPrefixRefl!1525 input!1722 input!1722))))

(assert (=> d!683060 (rulesValidInductive!1564 thiss!16613 (t!206519 rules!1750))))

(assert (=> d!683060 (= (maxPrefix!2262 thiss!16613 (t!206519 rules!1750) input!1722) lt!856523)))

(declare-fun b!2308889 () Bool)

(assert (=> b!2308889 (= e!1479774 e!1479775)))

(declare-fun res!987284 () Bool)

(assert (=> b!2308889 (=> (not res!987284) (not e!1479775))))

(assert (=> b!2308889 (= res!987284 (isDefined!4255 lt!856523))))

(declare-fun b!2308896 () Bool)

(declare-fun res!987283 () Bool)

(assert (=> b!2308896 (=> (not res!987283) (not e!1479775))))

(assert (=> b!2308896 (= res!987283 (< (size!21687 (_2!16211 (get!8285 lt!856523))) (size!21687 input!1722)))))

(declare-fun b!2308897 () Bool)

(declare-fun res!987286 () Bool)

(assert (=> b!2308897 (=> (not res!987286) (not e!1479775))))

(assert (=> b!2308897 (= res!987286 (= (++!6727 (list!10848 (charsOf!2797 (_1!16211 (get!8285 lt!856523)))) (_2!16211 (get!8285 lt!856523))) input!1722))))

(assert (= (and d!683060 c!366049) b!2308891))

(assert (= (and d!683060 (not c!366049)) b!2308894))

(assert (= (or b!2308891 b!2308894) bm!137305))

(assert (= (and d!683060 (not res!987281)) b!2308889))

(assert (= (and b!2308889 res!987284) b!2308895))

(assert (= (and b!2308895 res!987285) b!2308896))

(assert (= (and b!2308896 res!987283) b!2308897))

(assert (= (and b!2308897 res!987286) b!2308892))

(assert (= (and b!2308892 res!987280) b!2308890))

(assert (= (and b!2308890 res!987282) b!2308893))

(declare-fun m!2736279 () Bool)

(assert (=> b!2308894 m!2736279))

(declare-fun m!2736281 () Bool)

(assert (=> b!2308892 m!2736281))

(declare-fun m!2736283 () Bool)

(assert (=> b!2308892 m!2736283))

(assert (=> b!2308892 m!2736283))

(declare-fun m!2736285 () Bool)

(assert (=> b!2308892 m!2736285))

(assert (=> b!2308890 m!2736281))

(declare-fun m!2736287 () Bool)

(assert (=> b!2308890 m!2736287))

(assert (=> b!2308890 m!2736287))

(declare-fun m!2736289 () Bool)

(assert (=> b!2308890 m!2736289))

(assert (=> b!2308890 m!2736289))

(declare-fun m!2736291 () Bool)

(assert (=> b!2308890 m!2736291))

(declare-fun m!2736293 () Bool)

(assert (=> d!683060 m!2736293))

(assert (=> d!683060 m!2734469))

(assert (=> d!683060 m!2734471))

(assert (=> d!683060 m!2736233))

(assert (=> b!2308896 m!2736281))

(declare-fun m!2736295 () Bool)

(assert (=> b!2308896 m!2736295))

(assert (=> b!2308896 m!2734621))

(declare-fun m!2736297 () Bool)

(assert (=> bm!137305 m!2736297))

(assert (=> b!2308893 m!2736281))

(declare-fun m!2736299 () Bool)

(assert (=> b!2308893 m!2736299))

(assert (=> b!2308895 m!2736281))

(assert (=> b!2308895 m!2736287))

(assert (=> b!2308895 m!2736287))

(assert (=> b!2308895 m!2736289))

(assert (=> b!2308897 m!2736281))

(assert (=> b!2308897 m!2736287))

(assert (=> b!2308897 m!2736287))

(assert (=> b!2308897 m!2736289))

(assert (=> b!2308897 m!2736289))

(declare-fun m!2736301 () Bool)

(assert (=> b!2308897 m!2736301))

(declare-fun m!2736303 () Bool)

(assert (=> b!2308889 m!2736303))

(assert (=> b!2307618 d!683060))

(declare-fun d!683062 () Bool)

(declare-fun lt!856528 () Bool)

(assert (=> d!683062 (= lt!856528 (select (content!3715 (t!206519 rules!1750)) r!2363))))

(declare-fun e!1479778 () Bool)

(assert (=> d!683062 (= lt!856528 e!1479778)))

(declare-fun res!987288 () Bool)

(assert (=> d!683062 (=> (not res!987288) (not e!1479778))))

(assert (=> d!683062 (= res!987288 ((_ is Cons!27481) (t!206519 rules!1750)))))

(assert (=> d!683062 (= (contains!4797 (t!206519 rules!1750) r!2363) lt!856528)))

(declare-fun b!2308898 () Bool)

(declare-fun e!1479777 () Bool)

(assert (=> b!2308898 (= e!1479778 e!1479777)))

(declare-fun res!987287 () Bool)

(assert (=> b!2308898 (=> res!987287 e!1479777)))

(assert (=> b!2308898 (= res!987287 (= (h!32882 (t!206519 rules!1750)) r!2363))))

(declare-fun b!2308899 () Bool)

(assert (=> b!2308899 (= e!1479777 (contains!4797 (t!206519 (t!206519 rules!1750)) r!2363))))

(assert (= (and d!683062 res!987288) b!2308898))

(assert (= (and b!2308898 (not res!987287)) b!2308899))

(assert (=> d!683062 m!2736023))

(declare-fun m!2736305 () Bool)

(assert (=> d!683062 m!2736305))

(declare-fun m!2736307 () Bool)

(assert (=> b!2308899 m!2736307))

(assert (=> b!2308049 d!683062))

(declare-fun d!683064 () Bool)

(declare-fun lt!856529 () Int)

(assert (=> d!683064 (= lt!856529 (size!21687 (list!10848 (_2!16212 lt!856049))))))

(assert (=> d!683064 (= lt!856529 (size!21688 (c!365710 (_2!16212 lt!856049))))))

(assert (=> d!683064 (= (size!21686 (_2!16212 lt!856049)) lt!856529)))

(declare-fun bs!458122 () Bool)

(assert (= bs!458122 d!683064))

(assert (=> bs!458122 m!2735093))

(assert (=> bs!458122 m!2735093))

(declare-fun m!2736309 () Bool)

(assert (=> bs!458122 m!2736309))

(declare-fun m!2736311 () Bool)

(assert (=> bs!458122 m!2736311))

(assert (=> b!2308010 d!683064))

(declare-fun d!683066 () Bool)

(declare-fun lt!856530 () Int)

(assert (=> d!683066 (= lt!856530 (size!21687 (list!10848 (seqFromList!3113 input!1722))))))

(assert (=> d!683066 (= lt!856530 (size!21688 (c!365710 (seqFromList!3113 input!1722))))))

(assert (=> d!683066 (= (size!21686 (seqFromList!3113 input!1722)) lt!856530)))

(declare-fun bs!458123 () Bool)

(assert (= bs!458123 d!683066))

(assert (=> bs!458123 m!2734535))

(assert (=> bs!458123 m!2735089))

(assert (=> bs!458123 m!2735089))

(assert (=> bs!458123 m!2735175))

(declare-fun m!2736313 () Bool)

(assert (=> bs!458123 m!2736313))

(assert (=> b!2308010 d!683066))

(declare-fun d!683068 () Bool)

(declare-fun lt!856531 () Int)

(assert (=> d!683068 (>= lt!856531 0)))

(declare-fun e!1479780 () Int)

(assert (=> d!683068 (= lt!856531 e!1479780)))

(declare-fun c!366050 () Bool)

(assert (=> d!683068 (= c!366050 (and ((_ is Cons!27481) (t!206519 rules!1750)) (= (h!32882 (t!206519 rules!1750)) otherR!12)))))

(assert (=> d!683068 (contains!4797 (t!206519 rules!1750) otherR!12)))

(assert (=> d!683068 (= (getIndex!422 (t!206519 rules!1750) otherR!12) lt!856531)))

(declare-fun b!2308900 () Bool)

(assert (=> b!2308900 (= e!1479780 0)))

(declare-fun b!2308903 () Bool)

(declare-fun e!1479779 () Int)

(assert (=> b!2308903 (= e!1479779 (- 1))))

(declare-fun b!2308902 () Bool)

(assert (=> b!2308902 (= e!1479779 (+ 1 (getIndex!422 (t!206519 (t!206519 rules!1750)) otherR!12)))))

(declare-fun b!2308901 () Bool)

(assert (=> b!2308901 (= e!1479780 e!1479779)))

(declare-fun c!366051 () Bool)

(assert (=> b!2308901 (= c!366051 (and ((_ is Cons!27481) (t!206519 rules!1750)) (not (= (h!32882 (t!206519 rules!1750)) otherR!12))))))

(assert (= (and d!683068 c!366050) b!2308900))

(assert (= (and d!683068 (not c!366050)) b!2308901))

(assert (= (and b!2308901 c!366051) b!2308902))

(assert (= (and b!2308901 (not c!366051)) b!2308903))

(assert (=> d!683068 m!2734905))

(declare-fun m!2736315 () Bool)

(assert (=> b!2308902 m!2736315))

(assert (=> b!2307816 d!683068))

(declare-fun d!683070 () Bool)

(declare-fun lt!856532 () Int)

(assert (=> d!683070 (>= lt!856532 0)))

(declare-fun e!1479781 () Int)

(assert (=> d!683070 (= lt!856532 e!1479781)))

(declare-fun c!366052 () Bool)

(assert (=> d!683070 (= c!366052 ((_ is Nil!27479) (++!6727 lt!855852 (_2!16211 lt!855868))))))

(assert (=> d!683070 (= (size!21687 (++!6727 lt!855852 (_2!16211 lt!855868))) lt!856532)))

(declare-fun b!2308904 () Bool)

(assert (=> b!2308904 (= e!1479781 0)))

(declare-fun b!2308905 () Bool)

(assert (=> b!2308905 (= e!1479781 (+ 1 (size!21687 (t!206517 (++!6727 lt!855852 (_2!16211 lt!855868))))))))

(assert (= (and d!683070 c!366052) b!2308904))

(assert (= (and d!683070 (not c!366052)) b!2308905))

(declare-fun m!2736317 () Bool)

(assert (=> b!2308905 m!2736317))

(assert (=> b!2307543 d!683070))

(assert (=> b!2307543 d!682436))

(declare-fun d!683072 () Bool)

(declare-fun charsToBigInt!1 (List!27572) Int)

(assert (=> d!683072 (= (inv!17 (value!139476 (h!32881 tokens!456))) (= (charsToBigInt!1 (text!32445 (value!139476 (h!32881 tokens!456)))) (value!139468 (value!139476 (h!32881 tokens!456)))))))

(declare-fun bs!458124 () Bool)

(assert (= bs!458124 d!683072))

(declare-fun m!2736319 () Bool)

(assert (=> bs!458124 m!2736319))

(assert (=> b!2308045 d!683072))

(assert (=> d!682528 d!682530))

(declare-fun d!683074 () Bool)

(assert (=> d!683074 (= (maxPrefixOneRule!1432 thiss!16613 r!2363 input!1722) (Some!5406 (tuple2!27403 (Token!8297 (apply!6671 (transformation!4409 r!2363) (seqFromList!3113 lt!855852)) r!2363 (size!21687 lt!855852) lt!855852) (_2!16211 lt!855868))))))

(assert (=> d!683074 true))

(declare-fun _$59!335 () Unit!40394)

(assert (=> d!683074 (= (choose!13496 thiss!16613 rules!1750 lt!855852 input!1722 (_2!16211 lt!855868) r!2363) _$59!335)))

(declare-fun bs!458125 () Bool)

(assert (= bs!458125 d!683074))

(assert (=> bs!458125 m!2734515))

(assert (=> bs!458125 m!2734517))

(assert (=> bs!458125 m!2734517))

(assert (=> bs!458125 m!2734967))

(assert (=> bs!458125 m!2734491))

(assert (=> d!682528 d!683074))

(assert (=> d!682528 d!682436))

(assert (=> d!682528 d!682536))

(declare-fun d!683076 () Bool)

(assert (=> d!683076 (= (apply!6671 (transformation!4409 r!2363) (seqFromList!3113 lt!855852)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) (seqFromList!3113 lt!855852)))))

(declare-fun b_lambda!73587 () Bool)

(assert (=> (not b_lambda!73587) (not d!683076)))

(declare-fun t!206769 () Bool)

(declare-fun tb!138399 () Bool)

(assert (=> (and b!2307487 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 r!2363))) t!206769) tb!138399))

(declare-fun result!168698 () Bool)

(assert (=> tb!138399 (= result!168698 (inv!21 (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) (seqFromList!3113 lt!855852))))))

(declare-fun m!2736321 () Bool)

(assert (=> tb!138399 m!2736321))

(assert (=> d!683076 t!206769))

(declare-fun b_and!184541 () Bool)

(assert (= b_and!184539 (and (=> t!206769 result!168698) b_and!184541)))

(declare-fun tb!138401 () Bool)

(declare-fun t!206771 () Bool)

(assert (=> (and b!2307476 (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 r!2363))) t!206771) tb!138401))

(declare-fun result!168700 () Bool)

(assert (= result!168700 result!168698))

(assert (=> d!683076 t!206771))

(declare-fun b_and!184543 () Bool)

(assert (= b_and!184531 (and (=> t!206771 result!168700) b_and!184543)))

(declare-fun t!206773 () Bool)

(declare-fun tb!138403 () Bool)

(assert (=> (and b!2308101 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toValue!6223 (transformation!4409 r!2363))) t!206773) tb!138403))

(declare-fun result!168702 () Bool)

(assert (= result!168702 result!168698))

(assert (=> d!683076 t!206773))

(declare-fun b_and!184545 () Bool)

(assert (= b_and!184533 (and (=> t!206773 result!168702) b_and!184545)))

(declare-fun tb!138405 () Bool)

(declare-fun t!206775 () Bool)

(assert (=> (and b!2307475 (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 r!2363))) t!206775) tb!138405))

(declare-fun result!168704 () Bool)

(assert (= result!168704 result!168698))

(assert (=> d!683076 t!206775))

(declare-fun b_and!184547 () Bool)

(assert (= b_and!184537 (and (=> t!206775 result!168704) b_and!184547)))

(declare-fun t!206777 () Bool)

(declare-fun tb!138407 () Bool)

(assert (=> (and b!2307465 (= (toValue!6223 (transformation!4409 r!2363)) (toValue!6223 (transformation!4409 r!2363))) t!206777) tb!138407))

(declare-fun result!168706 () Bool)

(assert (= result!168706 result!168698))

(assert (=> d!683076 t!206777))

(declare-fun b_and!184549 () Bool)

(assert (= b_and!184529 (and (=> t!206777 result!168706) b_and!184549)))

(declare-fun tb!138409 () Bool)

(declare-fun t!206779 () Bool)

(assert (=> (and b!2308086 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toValue!6223 (transformation!4409 r!2363))) t!206779) tb!138409))

(declare-fun result!168708 () Bool)

(assert (= result!168708 result!168698))

(assert (=> d!683076 t!206779))

(declare-fun b_and!184551 () Bool)

(assert (= b_and!184535 (and (=> t!206779 result!168708) b_and!184551)))

(assert (=> d!683076 m!2734517))

(declare-fun m!2736323 () Bool)

(assert (=> d!683076 m!2736323))

(assert (=> d!682528 d!683076))

(assert (=> d!682528 d!682504))

(assert (=> d!682570 d!682568))

(declare-fun d!683078 () Bool)

(assert (=> d!683078 (ruleValid!1499 thiss!16613 r!2363)))

(assert (=> d!683078 true))

(declare-fun _$65!1190 () Unit!40394)

(assert (=> d!683078 (= (choose!13494 thiss!16613 r!2363 rules!1750) _$65!1190)))

(declare-fun bs!458126 () Bool)

(assert (= bs!458126 d!683078))

(assert (=> bs!458126 m!2734551))

(assert (=> d!682570 d!683078))

(assert (=> d!682570 d!682580))

(assert (=> b!2307870 d!682752))

(assert (=> b!2307870 d!682754))

(declare-fun d!683080 () Bool)

(assert (=> d!683080 (= (isDefined!4255 lt!855934) (not (isEmpty!15716 lt!855934)))))

(declare-fun bs!458127 () Bool)

(assert (= bs!458127 d!683080))

(assert (=> bs!458127 m!2734689))

(assert (=> b!2307613 d!683080))

(assert (=> b!2307652 d!682762))

(assert (=> d!682520 d!683036))

(assert (=> d!682520 d!682792))

(declare-fun d!683082 () Bool)

(assert (=> d!683082 (= (isEmpty!15718 (originalCharacters!5179 (h!32881 tokens!456))) ((_ is Nil!27479) (originalCharacters!5179 (h!32881 tokens!456))))))

(assert (=> d!682538 d!683082))

(assert (=> b!2307866 d!682746))

(declare-fun d!683084 () Bool)

(assert (=> d!683084 (= (inv!37125 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861))) (isBalanced!2692 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)))))))

(declare-fun bs!458128 () Bool)

(assert (= bs!458128 d!683084))

(declare-fun m!2736325 () Bool)

(assert (=> bs!458128 m!2736325))

(assert (=> tb!138191 d!683084))

(declare-fun d!683086 () Bool)

(assert (=> d!683086 (= (inv!37125 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456)))) (isBalanced!2692 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456))))))))

(declare-fun bs!458129 () Bool)

(assert (= bs!458129 d!683086))

(declare-fun m!2736327 () Bool)

(assert (=> bs!458129 m!2736327))

(assert (=> tb!138207 d!683086))

(assert (=> b!2307888 d!682762))

(assert (=> b!2307888 d!682416))

(declare-fun d!683088 () Bool)

(declare-fun lt!856533 () Int)

(assert (=> d!683088 (>= lt!856533 0)))

(declare-fun e!1479784 () Int)

(assert (=> d!683088 (= lt!856533 e!1479784)))

(declare-fun c!366053 () Bool)

(assert (=> d!683088 (= c!366053 (and ((_ is Cons!27481) (t!206519 rules!1750)) (= (h!32882 (t!206519 rules!1750)) r!2363)))))

(assert (=> d!683088 (contains!4797 (t!206519 rules!1750) r!2363)))

(assert (=> d!683088 (= (getIndex!422 (t!206519 rules!1750) r!2363) lt!856533)))

(declare-fun b!2308906 () Bool)

(assert (=> b!2308906 (= e!1479784 0)))

(declare-fun b!2308909 () Bool)

(declare-fun e!1479783 () Int)

(assert (=> b!2308909 (= e!1479783 (- 1))))

(declare-fun b!2308908 () Bool)

(assert (=> b!2308908 (= e!1479783 (+ 1 (getIndex!422 (t!206519 (t!206519 rules!1750)) r!2363)))))

(declare-fun b!2308907 () Bool)

(assert (=> b!2308907 (= e!1479784 e!1479783)))

(declare-fun c!366054 () Bool)

(assert (=> b!2308907 (= c!366054 (and ((_ is Cons!27481) (t!206519 rules!1750)) (not (= (h!32882 (t!206519 rules!1750)) r!2363))))))

(assert (= (and d!683088 c!366053) b!2308906))

(assert (= (and d!683088 (not c!366053)) b!2308907))

(assert (= (and b!2308907 c!366054) b!2308908))

(assert (= (and b!2308907 (not c!366054)) b!2308909))

(assert (=> d!683088 m!2735117))

(declare-fun m!2736329 () Bool)

(assert (=> b!2308908 m!2736329))

(assert (=> b!2307820 d!683088))

(declare-fun d!683090 () Bool)

(assert (=> d!683090 (= (inv!37125 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456)))) (isBalanced!2692 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456))))))))

(declare-fun bs!458130 () Bool)

(assert (= bs!458130 d!683090))

(declare-fun m!2736331 () Bool)

(assert (=> bs!458130 m!2736331))

(assert (=> tb!138175 d!683090))

(declare-fun d!683092 () Bool)

(declare-fun lt!856534 () Bool)

(assert (=> d!683092 (= lt!856534 (select (content!3715 (t!206519 rules!1750)) otherR!12))))

(declare-fun e!1479786 () Bool)

(assert (=> d!683092 (= lt!856534 e!1479786)))

(declare-fun res!987290 () Bool)

(assert (=> d!683092 (=> (not res!987290) (not e!1479786))))

(assert (=> d!683092 (= res!987290 ((_ is Cons!27481) (t!206519 rules!1750)))))

(assert (=> d!683092 (= (contains!4797 (t!206519 rules!1750) otherR!12) lt!856534)))

(declare-fun b!2308910 () Bool)

(declare-fun e!1479785 () Bool)

(assert (=> b!2308910 (= e!1479786 e!1479785)))

(declare-fun res!987289 () Bool)

(assert (=> b!2308910 (=> res!987289 e!1479785)))

(assert (=> b!2308910 (= res!987289 (= (h!32882 (t!206519 rules!1750)) otherR!12))))

(declare-fun b!2308911 () Bool)

(assert (=> b!2308911 (= e!1479785 (contains!4797 (t!206519 (t!206519 rules!1750)) otherR!12))))

(assert (= (and d!683092 res!987290) b!2308910))

(assert (= (and b!2308910 (not res!987289)) b!2308911))

(assert (=> d!683092 m!2736023))

(declare-fun m!2736333 () Bool)

(assert (=> d!683092 m!2736333))

(declare-fun m!2736335 () Bool)

(assert (=> b!2308911 m!2736335))

(assert (=> b!2307804 d!683092))

(declare-fun d!683094 () Bool)

(declare-fun lt!856535 () Int)

(assert (=> d!683094 (>= lt!856535 0)))

(declare-fun e!1479787 () Int)

(assert (=> d!683094 (= lt!856535 e!1479787)))

(declare-fun c!366055 () Bool)

(assert (=> d!683094 (= c!366055 ((_ is Nil!27479) (_2!16211 (get!8285 lt!856040))))))

(assert (=> d!683094 (= (size!21687 (_2!16211 (get!8285 lt!856040))) lt!856535)))

(declare-fun b!2308912 () Bool)

(assert (=> b!2308912 (= e!1479787 0)))

(declare-fun b!2308913 () Bool)

(assert (=> b!2308913 (= e!1479787 (+ 1 (size!21687 (t!206517 (_2!16211 (get!8285 lt!856040))))))))

(assert (= (and d!683094 c!366055) b!2308912))

(assert (= (and d!683094 (not c!366055)) b!2308913))

(declare-fun m!2736337 () Bool)

(assert (=> b!2308913 m!2736337))

(assert (=> b!2307917 d!683094))

(assert (=> b!2307917 d!682596))

(assert (=> b!2307917 d!682762))

(declare-fun d!683096 () Bool)

(assert (=> d!683096 (= (list!10848 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456)))) (list!10851 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456))))))))

(declare-fun bs!458131 () Bool)

(assert (= bs!458131 d!683096))

(declare-fun m!2736339 () Bool)

(assert (=> bs!458131 m!2736339))

(assert (=> b!2307924 d!683096))

(declare-fun e!1479793 () Bool)

(declare-fun b!2308922 () Bool)

(declare-fun tp!732338 () Bool)

(declare-fun tp!732339 () Bool)

(assert (=> b!2308922 (= e!1479793 (and (inv!37124 (left!20815 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456)))))) tp!732339 (inv!37124 (right!21145 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456)))))) tp!732338))))

(declare-fun b!2308924 () Bool)

(declare-fun e!1479792 () Bool)

(declare-fun tp!732337 () Bool)

(assert (=> b!2308924 (= e!1479792 tp!732337)))

(declare-fun b!2308923 () Bool)

(declare-fun inv!37131 (IArray!17937) Bool)

(assert (=> b!2308923 (= e!1479793 (and (inv!37131 (xs!11908 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456)))))) e!1479792))))

(assert (=> b!2307634 (= tp!732193 (and (inv!37124 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456))))) e!1479793))))

(assert (= (and b!2307634 ((_ is Node!8966) (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456)))))) b!2308922))

(assert (= b!2308923 b!2308924))

(assert (= (and b!2307634 ((_ is Leaf!13156) (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (value!139476 (h!32881 tokens!456)))))) b!2308923))

(declare-fun m!2736341 () Bool)

(assert (=> b!2308922 m!2736341))

(declare-fun m!2736343 () Bool)

(assert (=> b!2308922 m!2736343))

(declare-fun m!2736345 () Bool)

(assert (=> b!2308923 m!2736345))

(assert (=> b!2307634 m!2734715))

(declare-fun b!2308925 () Bool)

(declare-fun e!1479794 () Bool)

(assert (=> b!2308925 (= e!1479794 tp_is_empty!10735)))

(assert (=> b!2308065 (= tp!732279 e!1479794)))

(declare-fun b!2308926 () Bool)

(declare-fun tp!732343 () Bool)

(declare-fun tp!732342 () Bool)

(assert (=> b!2308926 (= e!1479794 (and tp!732343 tp!732342))))

(declare-fun b!2308928 () Bool)

(declare-fun tp!732340 () Bool)

(declare-fun tp!732341 () Bool)

(assert (=> b!2308928 (= e!1479794 (and tp!732340 tp!732341))))

(declare-fun b!2308927 () Bool)

(declare-fun tp!732344 () Bool)

(assert (=> b!2308927 (= e!1479794 tp!732344)))

(assert (= (and b!2308065 ((_ is ElementMatch!6757) (regOne!14026 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2308925))

(assert (= (and b!2308065 ((_ is Concat!11329) (regOne!14026 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2308926))

(assert (= (and b!2308065 ((_ is Star!6757) (regOne!14026 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2308927))

(assert (= (and b!2308065 ((_ is Union!6757) (regOne!14026 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2308928))

(declare-fun b!2308929 () Bool)

(declare-fun e!1479795 () Bool)

(assert (=> b!2308929 (= e!1479795 tp_is_empty!10735)))

(assert (=> b!2308065 (= tp!732278 e!1479795)))

(declare-fun b!2308930 () Bool)

(declare-fun tp!732348 () Bool)

(declare-fun tp!732347 () Bool)

(assert (=> b!2308930 (= e!1479795 (and tp!732348 tp!732347))))

(declare-fun b!2308932 () Bool)

(declare-fun tp!732345 () Bool)

(declare-fun tp!732346 () Bool)

(assert (=> b!2308932 (= e!1479795 (and tp!732345 tp!732346))))

(declare-fun b!2308931 () Bool)

(declare-fun tp!732349 () Bool)

(assert (=> b!2308931 (= e!1479795 tp!732349)))

(assert (= (and b!2308065 ((_ is ElementMatch!6757) (regTwo!14026 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2308929))

(assert (= (and b!2308065 ((_ is Concat!11329) (regTwo!14026 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2308930))

(assert (= (and b!2308065 ((_ is Star!6757) (regTwo!14026 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2308931))

(assert (= (and b!2308065 ((_ is Union!6757) (regTwo!14026 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2308932))

(declare-fun b!2308933 () Bool)

(declare-fun e!1479796 () Bool)

(assert (=> b!2308933 (= e!1479796 tp_is_empty!10735)))

(assert (=> b!2308089 (= tp!732303 e!1479796)))

(declare-fun b!2308934 () Bool)

(declare-fun tp!732353 () Bool)

(declare-fun tp!732352 () Bool)

(assert (=> b!2308934 (= e!1479796 (and tp!732353 tp!732352))))

(declare-fun b!2308936 () Bool)

(declare-fun tp!732350 () Bool)

(declare-fun tp!732351 () Bool)

(assert (=> b!2308936 (= e!1479796 (and tp!732350 tp!732351))))

(declare-fun b!2308935 () Bool)

(declare-fun tp!732354 () Bool)

(assert (=> b!2308935 (= e!1479796 tp!732354)))

(assert (= (and b!2308089 ((_ is ElementMatch!6757) (reg!7086 (regex!4409 r!2363)))) b!2308933))

(assert (= (and b!2308089 ((_ is Concat!11329) (reg!7086 (regex!4409 r!2363)))) b!2308934))

(assert (= (and b!2308089 ((_ is Star!6757) (reg!7086 (regex!4409 r!2363)))) b!2308935))

(assert (= (and b!2308089 ((_ is Union!6757) (reg!7086 (regex!4409 r!2363)))) b!2308936))

(declare-fun b!2308937 () Bool)

(declare-fun e!1479797 () Bool)

(declare-fun tp!732355 () Bool)

(assert (=> b!2308937 (= e!1479797 (and tp_is_empty!10735 tp!732355))))

(assert (=> b!2308072 (= tp!732283 e!1479797)))

(assert (= (and b!2308072 ((_ is Cons!27479) (t!206517 (t!206517 input!1722)))) b!2308937))

(declare-fun b!2308938 () Bool)

(declare-fun e!1479798 () Bool)

(assert (=> b!2308938 (= e!1479798 tp_is_empty!10735)))

(assert (=> b!2308090 (= tp!732299 e!1479798)))

(declare-fun b!2308939 () Bool)

(declare-fun tp!732359 () Bool)

(declare-fun tp!732358 () Bool)

(assert (=> b!2308939 (= e!1479798 (and tp!732359 tp!732358))))

(declare-fun b!2308941 () Bool)

(declare-fun tp!732356 () Bool)

(declare-fun tp!732357 () Bool)

(assert (=> b!2308941 (= e!1479798 (and tp!732356 tp!732357))))

(declare-fun b!2308940 () Bool)

(declare-fun tp!732360 () Bool)

(assert (=> b!2308940 (= e!1479798 tp!732360)))

(assert (= (and b!2308090 ((_ is ElementMatch!6757) (regOne!14027 (regex!4409 r!2363)))) b!2308938))

(assert (= (and b!2308090 ((_ is Concat!11329) (regOne!14027 (regex!4409 r!2363)))) b!2308939))

(assert (= (and b!2308090 ((_ is Star!6757) (regOne!14027 (regex!4409 r!2363)))) b!2308940))

(assert (= (and b!2308090 ((_ is Union!6757) (regOne!14027 (regex!4409 r!2363)))) b!2308941))

(declare-fun b!2308942 () Bool)

(declare-fun e!1479799 () Bool)

(assert (=> b!2308942 (= e!1479799 tp_is_empty!10735)))

(assert (=> b!2308090 (= tp!732300 e!1479799)))

(declare-fun b!2308943 () Bool)

(declare-fun tp!732364 () Bool)

(declare-fun tp!732363 () Bool)

(assert (=> b!2308943 (= e!1479799 (and tp!732364 tp!732363))))

(declare-fun b!2308945 () Bool)

(declare-fun tp!732361 () Bool)

(declare-fun tp!732362 () Bool)

(assert (=> b!2308945 (= e!1479799 (and tp!732361 tp!732362))))

(declare-fun b!2308944 () Bool)

(declare-fun tp!732365 () Bool)

(assert (=> b!2308944 (= e!1479799 tp!732365)))

(assert (= (and b!2308090 ((_ is ElementMatch!6757) (regTwo!14027 (regex!4409 r!2363)))) b!2308942))

(assert (= (and b!2308090 ((_ is Concat!11329) (regTwo!14027 (regex!4409 r!2363)))) b!2308943))

(assert (= (and b!2308090 ((_ is Star!6757) (regTwo!14027 (regex!4409 r!2363)))) b!2308944))

(assert (= (and b!2308090 ((_ is Union!6757) (regTwo!14027 (regex!4409 r!2363)))) b!2308945))

(declare-fun b!2308946 () Bool)

(declare-fun e!1479800 () Bool)

(declare-fun tp!732366 () Bool)

(assert (=> b!2308946 (= e!1479800 (and tp_is_empty!10735 tp!732366))))

(assert (=> b!2308103 (= tp!732317 e!1479800)))

(assert (= (and b!2308103 ((_ is Cons!27479) (t!206517 (originalCharacters!5179 (h!32881 tokens!456))))) b!2308946))

(declare-fun b!2308947 () Bool)

(declare-fun e!1479801 () Bool)

(declare-fun tp!732367 () Bool)

(assert (=> b!2308947 (= e!1479801 (and tp_is_empty!10735 tp!732367))))

(assert (=> b!2308102 (= tp!732316 e!1479801)))

(assert (= (and b!2308102 ((_ is Cons!27479) (t!206517 (t!206517 otherP!12)))) b!2308947))

(declare-fun b!2308948 () Bool)

(declare-fun e!1479802 () Bool)

(assert (=> b!2308948 (= e!1479802 tp_is_empty!10735)))

(assert (=> b!2308088 (= tp!732302 e!1479802)))

(declare-fun b!2308949 () Bool)

(declare-fun tp!732371 () Bool)

(declare-fun tp!732370 () Bool)

(assert (=> b!2308949 (= e!1479802 (and tp!732371 tp!732370))))

(declare-fun b!2308951 () Bool)

(declare-fun tp!732368 () Bool)

(declare-fun tp!732369 () Bool)

(assert (=> b!2308951 (= e!1479802 (and tp!732368 tp!732369))))

(declare-fun b!2308950 () Bool)

(declare-fun tp!732372 () Bool)

(assert (=> b!2308950 (= e!1479802 tp!732372)))

(assert (= (and b!2308088 ((_ is ElementMatch!6757) (regOne!14026 (regex!4409 r!2363)))) b!2308948))

(assert (= (and b!2308088 ((_ is Concat!11329) (regOne!14026 (regex!4409 r!2363)))) b!2308949))

(assert (= (and b!2308088 ((_ is Star!6757) (regOne!14026 (regex!4409 r!2363)))) b!2308950))

(assert (= (and b!2308088 ((_ is Union!6757) (regOne!14026 (regex!4409 r!2363)))) b!2308951))

(declare-fun b!2308952 () Bool)

(declare-fun e!1479803 () Bool)

(assert (=> b!2308952 (= e!1479803 tp_is_empty!10735)))

(assert (=> b!2308088 (= tp!732301 e!1479803)))

(declare-fun b!2308953 () Bool)

(declare-fun tp!732376 () Bool)

(declare-fun tp!732375 () Bool)

(assert (=> b!2308953 (= e!1479803 (and tp!732376 tp!732375))))

(declare-fun b!2308955 () Bool)

(declare-fun tp!732373 () Bool)

(declare-fun tp!732374 () Bool)

(assert (=> b!2308955 (= e!1479803 (and tp!732373 tp!732374))))

(declare-fun b!2308954 () Bool)

(declare-fun tp!732377 () Bool)

(assert (=> b!2308954 (= e!1479803 tp!732377)))

(assert (= (and b!2308088 ((_ is ElementMatch!6757) (regTwo!14026 (regex!4409 r!2363)))) b!2308952))

(assert (= (and b!2308088 ((_ is Concat!11329) (regTwo!14026 (regex!4409 r!2363)))) b!2308953))

(assert (= (and b!2308088 ((_ is Star!6757) (regTwo!14026 (regex!4409 r!2363)))) b!2308954))

(assert (= (and b!2308088 ((_ is Union!6757) (regTwo!14026 (regex!4409 r!2363)))) b!2308955))

(declare-fun b!2308956 () Bool)

(declare-fun e!1479804 () Bool)

(assert (=> b!2308956 (= e!1479804 tp_is_empty!10735)))

(assert (=> b!2308062 (= tp!732275 e!1479804)))

(declare-fun b!2308957 () Bool)

(declare-fun tp!732381 () Bool)

(declare-fun tp!732380 () Bool)

(assert (=> b!2308957 (= e!1479804 (and tp!732381 tp!732380))))

(declare-fun b!2308959 () Bool)

(declare-fun tp!732378 () Bool)

(declare-fun tp!732379 () Bool)

(assert (=> b!2308959 (= e!1479804 (and tp!732378 tp!732379))))

(declare-fun b!2308958 () Bool)

(declare-fun tp!732382 () Bool)

(assert (=> b!2308958 (= e!1479804 tp!732382)))

(assert (= (and b!2308062 ((_ is ElementMatch!6757) (reg!7086 (regex!4409 (h!32882 rules!1750))))) b!2308956))

(assert (= (and b!2308062 ((_ is Concat!11329) (reg!7086 (regex!4409 (h!32882 rules!1750))))) b!2308957))

(assert (= (and b!2308062 ((_ is Star!6757) (reg!7086 (regex!4409 (h!32882 rules!1750))))) b!2308958))

(assert (= (and b!2308062 ((_ is Union!6757) (reg!7086 (regex!4409 (h!32882 rules!1750))))) b!2308959))

(declare-fun b!2308960 () Bool)

(declare-fun e!1479805 () Bool)

(assert (=> b!2308960 (= e!1479805 tp_is_empty!10735)))

(assert (=> b!2308061 (= tp!732274 e!1479805)))

(declare-fun b!2308961 () Bool)

(declare-fun tp!732386 () Bool)

(declare-fun tp!732385 () Bool)

(assert (=> b!2308961 (= e!1479805 (and tp!732386 tp!732385))))

(declare-fun b!2308963 () Bool)

(declare-fun tp!732383 () Bool)

(declare-fun tp!732384 () Bool)

(assert (=> b!2308963 (= e!1479805 (and tp!732383 tp!732384))))

(declare-fun b!2308962 () Bool)

(declare-fun tp!732387 () Bool)

(assert (=> b!2308962 (= e!1479805 tp!732387)))

(assert (= (and b!2308061 ((_ is ElementMatch!6757) (regOne!14026 (regex!4409 (h!32882 rules!1750))))) b!2308960))

(assert (= (and b!2308061 ((_ is Concat!11329) (regOne!14026 (regex!4409 (h!32882 rules!1750))))) b!2308961))

(assert (= (and b!2308061 ((_ is Star!6757) (regOne!14026 (regex!4409 (h!32882 rules!1750))))) b!2308962))

(assert (= (and b!2308061 ((_ is Union!6757) (regOne!14026 (regex!4409 (h!32882 rules!1750))))) b!2308963))

(declare-fun b!2308964 () Bool)

(declare-fun e!1479806 () Bool)

(assert (=> b!2308964 (= e!1479806 tp_is_empty!10735)))

(assert (=> b!2308061 (= tp!732273 e!1479806)))

(declare-fun b!2308965 () Bool)

(declare-fun tp!732391 () Bool)

(declare-fun tp!732390 () Bool)

(assert (=> b!2308965 (= e!1479806 (and tp!732391 tp!732390))))

(declare-fun b!2308967 () Bool)

(declare-fun tp!732388 () Bool)

(declare-fun tp!732389 () Bool)

(assert (=> b!2308967 (= e!1479806 (and tp!732388 tp!732389))))

(declare-fun b!2308966 () Bool)

(declare-fun tp!732392 () Bool)

(assert (=> b!2308966 (= e!1479806 tp!732392)))

(assert (= (and b!2308061 ((_ is ElementMatch!6757) (regTwo!14026 (regex!4409 (h!32882 rules!1750))))) b!2308964))

(assert (= (and b!2308061 ((_ is Concat!11329) (regTwo!14026 (regex!4409 (h!32882 rules!1750))))) b!2308965))

(assert (= (and b!2308061 ((_ is Star!6757) (regTwo!14026 (regex!4409 (h!32882 rules!1750))))) b!2308966))

(assert (= (and b!2308061 ((_ is Union!6757) (regTwo!14026 (regex!4409 (h!32882 rules!1750))))) b!2308967))

(declare-fun b!2308968 () Bool)

(declare-fun e!1479807 () Bool)

(assert (=> b!2308968 (= e!1479807 tp_is_empty!10735)))

(assert (=> b!2308100 (= tp!732314 e!1479807)))

(declare-fun b!2308969 () Bool)

(declare-fun tp!732396 () Bool)

(declare-fun tp!732395 () Bool)

(assert (=> b!2308969 (= e!1479807 (and tp!732396 tp!732395))))

(declare-fun b!2308971 () Bool)

(declare-fun tp!732393 () Bool)

(declare-fun tp!732394 () Bool)

(assert (=> b!2308971 (= e!1479807 (and tp!732393 tp!732394))))

(declare-fun b!2308970 () Bool)

(declare-fun tp!732397 () Bool)

(assert (=> b!2308970 (= e!1479807 tp!732397)))

(assert (= (and b!2308100 ((_ is ElementMatch!6757) (regex!4409 (h!32882 (t!206519 rules!1750))))) b!2308968))

(assert (= (and b!2308100 ((_ is Concat!11329) (regex!4409 (h!32882 (t!206519 rules!1750))))) b!2308969))

(assert (= (and b!2308100 ((_ is Star!6757) (regex!4409 (h!32882 (t!206519 rules!1750))))) b!2308970))

(assert (= (and b!2308100 ((_ is Union!6757) (regex!4409 (h!32882 (t!206519 rules!1750))))) b!2308971))

(declare-fun b!2308972 () Bool)

(declare-fun e!1479808 () Bool)

(assert (=> b!2308972 (= e!1479808 tp_is_empty!10735)))

(assert (=> b!2308063 (= tp!732271 e!1479808)))

(declare-fun b!2308973 () Bool)

(declare-fun tp!732401 () Bool)

(declare-fun tp!732400 () Bool)

(assert (=> b!2308973 (= e!1479808 (and tp!732401 tp!732400))))

(declare-fun b!2308975 () Bool)

(declare-fun tp!732398 () Bool)

(declare-fun tp!732399 () Bool)

(assert (=> b!2308975 (= e!1479808 (and tp!732398 tp!732399))))

(declare-fun b!2308974 () Bool)

(declare-fun tp!732402 () Bool)

(assert (=> b!2308974 (= e!1479808 tp!732402)))

(assert (= (and b!2308063 ((_ is ElementMatch!6757) (regOne!14027 (regex!4409 (h!32882 rules!1750))))) b!2308972))

(assert (= (and b!2308063 ((_ is Concat!11329) (regOne!14027 (regex!4409 (h!32882 rules!1750))))) b!2308973))

(assert (= (and b!2308063 ((_ is Star!6757) (regOne!14027 (regex!4409 (h!32882 rules!1750))))) b!2308974))

(assert (= (and b!2308063 ((_ is Union!6757) (regOne!14027 (regex!4409 (h!32882 rules!1750))))) b!2308975))

(declare-fun b!2308976 () Bool)

(declare-fun e!1479809 () Bool)

(assert (=> b!2308976 (= e!1479809 tp_is_empty!10735)))

(assert (=> b!2308063 (= tp!732272 e!1479809)))

(declare-fun b!2308977 () Bool)

(declare-fun tp!732406 () Bool)

(declare-fun tp!732405 () Bool)

(assert (=> b!2308977 (= e!1479809 (and tp!732406 tp!732405))))

(declare-fun b!2308979 () Bool)

(declare-fun tp!732403 () Bool)

(declare-fun tp!732404 () Bool)

(assert (=> b!2308979 (= e!1479809 (and tp!732403 tp!732404))))

(declare-fun b!2308978 () Bool)

(declare-fun tp!732407 () Bool)

(assert (=> b!2308978 (= e!1479809 tp!732407)))

(assert (= (and b!2308063 ((_ is ElementMatch!6757) (regTwo!14027 (regex!4409 (h!32882 rules!1750))))) b!2308976))

(assert (= (and b!2308063 ((_ is Concat!11329) (regTwo!14027 (regex!4409 (h!32882 rules!1750))))) b!2308977))

(assert (= (and b!2308063 ((_ is Star!6757) (regTwo!14027 (regex!4409 (h!32882 rules!1750))))) b!2308978))

(assert (= (and b!2308063 ((_ is Union!6757) (regTwo!14027 (regex!4409 (h!32882 rules!1750))))) b!2308979))

(declare-fun b!2308982 () Bool)

(declare-fun b_free!69885 () Bool)

(declare-fun b_next!70589 () Bool)

(assert (=> b!2308982 (= b_free!69885 (not b_next!70589))))

(declare-fun tb!138411 () Bool)

(declare-fun t!206781 () Bool)

(assert (=> (and b!2308982 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toValue!6223 (transformation!4409 r!2363))) t!206781) tb!138411))

(declare-fun result!168712 () Bool)

(assert (= result!168712 result!168480))

(assert (=> d!682532 t!206781))

(declare-fun t!206783 () Bool)

(declare-fun tb!138413 () Bool)

(assert (=> (and b!2308982 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toValue!6223 (transformation!4409 r!2363))) t!206783) tb!138413))

(declare-fun result!168714 () Bool)

(assert (= result!168714 result!168674))

(assert (=> d!683052 t!206783))

(assert (=> d!682442 t!206781))

(declare-fun tb!138415 () Bool)

(declare-fun t!206785 () Bool)

(assert (=> (and b!2308982 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toValue!6223 (transformation!4409 r!2363))) t!206785) tb!138415))

(declare-fun result!168716 () Bool)

(assert (= result!168716 result!168698))

(assert (=> d!683076 t!206785))

(declare-fun tb!138417 () Bool)

(declare-fun t!206787 () Bool)

(assert (=> (and b!2308982 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206787) tb!138417))

(declare-fun result!168718 () Bool)

(assert (= result!168718 result!168626))

(assert (=> d!682806 t!206787))

(declare-fun t!206789 () Bool)

(declare-fun tb!138419 () Bool)

(assert (=> (and b!2308982 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206789) tb!138419))

(declare-fun result!168720 () Bool)

(assert (= result!168720 result!168566))

(assert (=> d!682598 t!206789))

(assert (=> d!683050 t!206783))

(declare-fun tp!732409 () Bool)

(declare-fun b_and!184553 () Bool)

(assert (=> b!2308982 (= tp!732409 (and (=> t!206787 result!168718) (=> t!206789 result!168720) (=> t!206781 result!168712) (=> t!206785 result!168716) (=> t!206783 result!168714) b_and!184553))))

(declare-fun b_free!69887 () Bool)

(declare-fun b_next!70591 () Bool)

(assert (=> b!2308982 (= b_free!69887 (not b_next!70591))))

(declare-fun t!206791 () Bool)

(declare-fun tb!138421 () Bool)

(assert (=> (and b!2308982 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) t!206791) tb!138421))

(declare-fun result!168722 () Bool)

(assert (= result!168722 result!168454))

(assert (=> d!682428 t!206791))

(declare-fun t!206793 () Bool)

(declare-fun tb!138423 () Bool)

(assert (=> (and b!2308982 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456)))))) t!206793) tb!138423))

(declare-fun result!168724 () Bool)

(assert (= result!168724 result!168662))

(assert (=> b!2308881 t!206793))

(declare-fun t!206795 () Bool)

(declare-fun tb!138425 () Bool)

(assert (=> (and b!2308982 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toChars!6082 (transformation!4409 r!2363))) t!206795) tb!138425))

(declare-fun result!168726 () Bool)

(assert (= result!168726 result!168686))

(assert (=> d!683052 t!206795))

(declare-fun tb!138427 () Bool)

(declare-fun t!206797 () Bool)

(assert (=> (and b!2308982 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toChars!6082 (transformation!4409 r!2363))) t!206797) tb!138427))

(declare-fun result!168728 () Bool)

(assert (= result!168728 result!168472))

(assert (=> d!682442 t!206797))

(declare-fun t!206799 () Bool)

(declare-fun tb!138429 () Bool)

(assert (=> (and b!2308982 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206799) tb!138429))

(declare-fun result!168730 () Bool)

(assert (= result!168730 result!168610))

(assert (=> d!682776 t!206799))

(declare-fun t!206801 () Bool)

(declare-fun tb!138431 () Bool)

(assert (=> (and b!2308982 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206801) tb!138431))

(declare-fun result!168732 () Bool)

(assert (= result!168732 result!168554))

(assert (=> d!682592 t!206801))

(declare-fun tb!138433 () Bool)

(declare-fun t!206803 () Bool)

(assert (=> (and b!2308982 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456))))) t!206803) tb!138433))

(declare-fun result!168734 () Bool)

(assert (= result!168734 result!168490))

(assert (=> d!682516 t!206803))

(assert (=> b!2307924 t!206791))

(declare-fun tp!732408 () Bool)

(declare-fun b_and!184555 () Bool)

(assert (=> b!2308982 (= tp!732408 (and (=> t!206803 result!168734) (=> t!206797 result!168728) (=> t!206795 result!168726) (=> t!206791 result!168722) (=> t!206799 result!168730) (=> t!206801 result!168732) (=> t!206793 result!168724) b_and!184555))))

(declare-fun e!1479811 () Bool)

(assert (=> b!2308982 (= e!1479811 (and tp!732409 tp!732408))))

(declare-fun b!2308981 () Bool)

(declare-fun tp!732410 () Bool)

(declare-fun e!1479813 () Bool)

(assert (=> b!2308981 (= e!1479813 (and tp!732410 (inv!37117 (tag!4899 (h!32882 (t!206519 (t!206519 rules!1750))))) (inv!37120 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) e!1479811))))

(declare-fun b!2308980 () Bool)

(declare-fun e!1479812 () Bool)

(declare-fun tp!732411 () Bool)

(assert (=> b!2308980 (= e!1479812 (and e!1479813 tp!732411))))

(assert (=> b!2308099 (= tp!732315 e!1479812)))

(assert (= b!2308981 b!2308982))

(assert (= b!2308980 b!2308981))

(assert (= (and b!2308099 ((_ is Cons!27481) (t!206519 (t!206519 rules!1750)))) b!2308980))

(declare-fun m!2736347 () Bool)

(assert (=> b!2308981 m!2736347))

(declare-fun m!2736349 () Bool)

(assert (=> b!2308981 m!2736349))

(declare-fun b!2308983 () Bool)

(declare-fun e!1479814 () Bool)

(declare-fun tp!732412 () Bool)

(assert (=> b!2308983 (= e!1479814 (and tp_is_empty!10735 tp!732412))))

(assert (=> b!2308108 (= tp!732323 e!1479814)))

(assert (= (and b!2308108 ((_ is Cons!27479) (t!206517 (t!206517 suffix!886)))) b!2308983))

(declare-fun tp!732415 () Bool)

(declare-fun e!1479816 () Bool)

(declare-fun tp!732414 () Bool)

(declare-fun b!2308984 () Bool)

(assert (=> b!2308984 (= e!1479816 (and (inv!37124 (left!20815 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861))))) tp!732415 (inv!37124 (right!21145 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861))))) tp!732414))))

(declare-fun b!2308986 () Bool)

(declare-fun e!1479815 () Bool)

(declare-fun tp!732413 () Bool)

(assert (=> b!2308986 (= e!1479815 tp!732413)))

(declare-fun b!2308985 () Bool)

(assert (=> b!2308985 (= e!1479816 (and (inv!37131 (xs!11908 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861))))) e!1479815))))

(assert (=> b!2307792 (= tp!732195 (and (inv!37124 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861)))) e!1479816))))

(assert (= (and b!2307792 ((_ is Node!8966) (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861))))) b!2308984))

(assert (= b!2308985 b!2308986))

(assert (= (and b!2307792 ((_ is Leaf!13156) (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861))))) b!2308985))

(declare-fun m!2736351 () Bool)

(assert (=> b!2308984 m!2736351))

(declare-fun m!2736353 () Bool)

(assert (=> b!2308984 m!2736353))

(declare-fun m!2736355 () Bool)

(assert (=> b!2308985 m!2736355))

(assert (=> b!2307792 m!2734877))

(declare-fun tp!732417 () Bool)

(declare-fun e!1479818 () Bool)

(declare-fun tp!732418 () Bool)

(declare-fun b!2308987 () Bool)

(assert (=> b!2308987 (= e!1479818 (and (inv!37124 (left!20815 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456)))))) tp!732418 (inv!37124 (right!21145 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456)))))) tp!732417))))

(declare-fun b!2308989 () Bool)

(declare-fun e!1479817 () Bool)

(declare-fun tp!732416 () Bool)

(assert (=> b!2308989 (= e!1479817 tp!732416)))

(declare-fun b!2308988 () Bool)

(assert (=> b!2308988 (= e!1479818 (and (inv!37131 (xs!11908 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456)))))) e!1479817))))

(assert (=> b!2307828 (= tp!732196 (and (inv!37124 (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456))))) e!1479818))))

(assert (= (and b!2307828 ((_ is Node!8966) (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456)))))) b!2308987))

(assert (= b!2308988 b!2308989))

(assert (= (and b!2307828 ((_ is Leaf!13156) (c!365710 (dynLambda!11947 (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))) (value!139476 (head!5064 tokens!456)))))) b!2308988))

(declare-fun m!2736357 () Bool)

(assert (=> b!2308987 m!2736357))

(declare-fun m!2736359 () Bool)

(assert (=> b!2308987 m!2736359))

(declare-fun m!2736361 () Bool)

(assert (=> b!2308988 m!2736361))

(assert (=> b!2307828 m!2734925))

(declare-fun b!2308990 () Bool)

(declare-fun e!1479819 () Bool)

(assert (=> b!2308990 (= e!1479819 tp_is_empty!10735)))

(assert (=> b!2308107 (= tp!732318 e!1479819)))

(declare-fun b!2308991 () Bool)

(declare-fun tp!732422 () Bool)

(declare-fun tp!732421 () Bool)

(assert (=> b!2308991 (= e!1479819 (and tp!732422 tp!732421))))

(declare-fun b!2308993 () Bool)

(declare-fun tp!732419 () Bool)

(declare-fun tp!732420 () Bool)

(assert (=> b!2308993 (= e!1479819 (and tp!732419 tp!732420))))

(declare-fun b!2308992 () Bool)

(declare-fun tp!732423 () Bool)

(assert (=> b!2308992 (= e!1479819 tp!732423)))

(assert (= (and b!2308107 ((_ is ElementMatch!6757) (regOne!14027 (regex!4409 otherR!12)))) b!2308990))

(assert (= (and b!2308107 ((_ is Concat!11329) (regOne!14027 (regex!4409 otherR!12)))) b!2308991))

(assert (= (and b!2308107 ((_ is Star!6757) (regOne!14027 (regex!4409 otherR!12)))) b!2308992))

(assert (= (and b!2308107 ((_ is Union!6757) (regOne!14027 (regex!4409 otherR!12)))) b!2308993))

(declare-fun b!2308994 () Bool)

(declare-fun e!1479820 () Bool)

(assert (=> b!2308994 (= e!1479820 tp_is_empty!10735)))

(assert (=> b!2308107 (= tp!732319 e!1479820)))

(declare-fun b!2308995 () Bool)

(declare-fun tp!732427 () Bool)

(declare-fun tp!732426 () Bool)

(assert (=> b!2308995 (= e!1479820 (and tp!732427 tp!732426))))

(declare-fun b!2308997 () Bool)

(declare-fun tp!732424 () Bool)

(declare-fun tp!732425 () Bool)

(assert (=> b!2308997 (= e!1479820 (and tp!732424 tp!732425))))

(declare-fun b!2308996 () Bool)

(declare-fun tp!732428 () Bool)

(assert (=> b!2308996 (= e!1479820 tp!732428)))

(assert (= (and b!2308107 ((_ is ElementMatch!6757) (regTwo!14027 (regex!4409 otherR!12)))) b!2308994))

(assert (= (and b!2308107 ((_ is Concat!11329) (regTwo!14027 (regex!4409 otherR!12)))) b!2308995))

(assert (= (and b!2308107 ((_ is Star!6757) (regTwo!14027 (regex!4409 otherR!12)))) b!2308996))

(assert (= (and b!2308107 ((_ is Union!6757) (regTwo!14027 (regex!4409 otherR!12)))) b!2308997))

(declare-fun b!2308998 () Bool)

(declare-fun e!1479821 () Bool)

(assert (=> b!2308998 (= e!1479821 tp_is_empty!10735)))

(assert (=> b!2308085 (= tp!732294 e!1479821)))

(declare-fun b!2308999 () Bool)

(declare-fun tp!732432 () Bool)

(declare-fun tp!732431 () Bool)

(assert (=> b!2308999 (= e!1479821 (and tp!732432 tp!732431))))

(declare-fun b!2309001 () Bool)

(declare-fun tp!732429 () Bool)

(declare-fun tp!732430 () Bool)

(assert (=> b!2309001 (= e!1479821 (and tp!732429 tp!732430))))

(declare-fun b!2309000 () Bool)

(declare-fun tp!732433 () Bool)

(assert (=> b!2309000 (= e!1479821 tp!732433)))

(assert (= (and b!2308085 ((_ is ElementMatch!6757) (regex!4409 (rule!6761 (h!32881 (t!206518 tokens!456)))))) b!2308998))

(assert (= (and b!2308085 ((_ is Concat!11329) (regex!4409 (rule!6761 (h!32881 (t!206518 tokens!456)))))) b!2308999))

(assert (= (and b!2308085 ((_ is Star!6757) (regex!4409 (rule!6761 (h!32881 (t!206518 tokens!456)))))) b!2309000))

(assert (= (and b!2308085 ((_ is Union!6757) (regex!4409 (rule!6761 (h!32881 (t!206518 tokens!456)))))) b!2309001))

(declare-fun b!2309002 () Bool)

(declare-fun e!1479822 () Bool)

(assert (=> b!2309002 (= e!1479822 tp_is_empty!10735)))

(assert (=> b!2308106 (= tp!732322 e!1479822)))

(declare-fun b!2309003 () Bool)

(declare-fun tp!732437 () Bool)

(declare-fun tp!732436 () Bool)

(assert (=> b!2309003 (= e!1479822 (and tp!732437 tp!732436))))

(declare-fun b!2309005 () Bool)

(declare-fun tp!732434 () Bool)

(declare-fun tp!732435 () Bool)

(assert (=> b!2309005 (= e!1479822 (and tp!732434 tp!732435))))

(declare-fun b!2309004 () Bool)

(declare-fun tp!732438 () Bool)

(assert (=> b!2309004 (= e!1479822 tp!732438)))

(assert (= (and b!2308106 ((_ is ElementMatch!6757) (reg!7086 (regex!4409 otherR!12)))) b!2309002))

(assert (= (and b!2308106 ((_ is Concat!11329) (reg!7086 (regex!4409 otherR!12)))) b!2309003))

(assert (= (and b!2308106 ((_ is Star!6757) (reg!7086 (regex!4409 otherR!12)))) b!2309004))

(assert (= (and b!2308106 ((_ is Union!6757) (reg!7086 (regex!4409 otherR!12)))) b!2309005))

(declare-fun b!2309006 () Bool)

(declare-fun e!1479823 () Bool)

(assert (=> b!2309006 (= e!1479823 tp_is_empty!10735)))

(assert (=> b!2308105 (= tp!732321 e!1479823)))

(declare-fun b!2309007 () Bool)

(declare-fun tp!732442 () Bool)

(declare-fun tp!732441 () Bool)

(assert (=> b!2309007 (= e!1479823 (and tp!732442 tp!732441))))

(declare-fun b!2309009 () Bool)

(declare-fun tp!732439 () Bool)

(declare-fun tp!732440 () Bool)

(assert (=> b!2309009 (= e!1479823 (and tp!732439 tp!732440))))

(declare-fun b!2309008 () Bool)

(declare-fun tp!732443 () Bool)

(assert (=> b!2309008 (= e!1479823 tp!732443)))

(assert (= (and b!2308105 ((_ is ElementMatch!6757) (regOne!14026 (regex!4409 otherR!12)))) b!2309006))

(assert (= (and b!2308105 ((_ is Concat!11329) (regOne!14026 (regex!4409 otherR!12)))) b!2309007))

(assert (= (and b!2308105 ((_ is Star!6757) (regOne!14026 (regex!4409 otherR!12)))) b!2309008))

(assert (= (and b!2308105 ((_ is Union!6757) (regOne!14026 (regex!4409 otherR!12)))) b!2309009))

(declare-fun b!2309010 () Bool)

(declare-fun e!1479824 () Bool)

(assert (=> b!2309010 (= e!1479824 tp_is_empty!10735)))

(assert (=> b!2308105 (= tp!732320 e!1479824)))

(declare-fun b!2309011 () Bool)

(declare-fun tp!732447 () Bool)

(declare-fun tp!732446 () Bool)

(assert (=> b!2309011 (= e!1479824 (and tp!732447 tp!732446))))

(declare-fun b!2309013 () Bool)

(declare-fun tp!732444 () Bool)

(declare-fun tp!732445 () Bool)

(assert (=> b!2309013 (= e!1479824 (and tp!732444 tp!732445))))

(declare-fun b!2309012 () Bool)

(declare-fun tp!732448 () Bool)

(assert (=> b!2309012 (= e!1479824 tp!732448)))

(assert (= (and b!2308105 ((_ is ElementMatch!6757) (regTwo!14026 (regex!4409 otherR!12)))) b!2309010))

(assert (= (and b!2308105 ((_ is Concat!11329) (regTwo!14026 (regex!4409 otherR!12)))) b!2309011))

(assert (= (and b!2308105 ((_ is Star!6757) (regTwo!14026 (regex!4409 otherR!12)))) b!2309012))

(assert (= (and b!2308105 ((_ is Union!6757) (regTwo!14026 (regex!4409 otherR!12)))) b!2309013))

(declare-fun b!2309014 () Bool)

(declare-fun e!1479825 () Bool)

(assert (=> b!2309014 (= e!1479825 tp_is_empty!10735)))

(assert (=> b!2308066 (= tp!732280 e!1479825)))

(declare-fun b!2309015 () Bool)

(declare-fun tp!732452 () Bool)

(declare-fun tp!732451 () Bool)

(assert (=> b!2309015 (= e!1479825 (and tp!732452 tp!732451))))

(declare-fun b!2309017 () Bool)

(declare-fun tp!732449 () Bool)

(declare-fun tp!732450 () Bool)

(assert (=> b!2309017 (= e!1479825 (and tp!732449 tp!732450))))

(declare-fun b!2309016 () Bool)

(declare-fun tp!732453 () Bool)

(assert (=> b!2309016 (= e!1479825 tp!732453)))

(assert (= (and b!2308066 ((_ is ElementMatch!6757) (reg!7086 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2309014))

(assert (= (and b!2308066 ((_ is Concat!11329) (reg!7086 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2309015))

(assert (= (and b!2308066 ((_ is Star!6757) (reg!7086 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2309016))

(assert (= (and b!2308066 ((_ is Union!6757) (reg!7086 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2309017))

(declare-fun b!2309018 () Bool)

(declare-fun e!1479826 () Bool)

(declare-fun tp!732454 () Bool)

(assert (=> b!2309018 (= e!1479826 (and tp_is_empty!10735 tp!732454))))

(assert (=> b!2308084 (= tp!732297 e!1479826)))

(assert (= (and b!2308084 ((_ is Cons!27479) (originalCharacters!5179 (h!32881 (t!206518 tokens!456))))) b!2309018))

(declare-fun b!2309022 () Bool)

(declare-fun b_free!69889 () Bool)

(declare-fun b_next!70593 () Bool)

(assert (=> b!2309022 (= b_free!69889 (not b_next!70593))))

(declare-fun t!206805 () Bool)

(declare-fun tb!138435 () Bool)

(assert (=> (and b!2309022 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toValue!6223 (transformation!4409 r!2363))) t!206805) tb!138435))

(declare-fun result!168736 () Bool)

(assert (= result!168736 result!168480))

(assert (=> d!682532 t!206805))

(declare-fun t!206807 () Bool)

(declare-fun tb!138437 () Bool)

(assert (=> (and b!2309022 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toValue!6223 (transformation!4409 r!2363))) t!206807) tb!138437))

(declare-fun result!168738 () Bool)

(assert (= result!168738 result!168674))

(assert (=> d!683052 t!206807))

(assert (=> d!682442 t!206805))

(declare-fun t!206809 () Bool)

(declare-fun tb!138439 () Bool)

(assert (=> (and b!2309022 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toValue!6223 (transformation!4409 r!2363))) t!206809) tb!138439))

(declare-fun result!168740 () Bool)

(assert (= result!168740 result!168698))

(assert (=> d!683076 t!206809))

(declare-fun t!206811 () Bool)

(declare-fun tb!138441 () Bool)

(assert (=> (and b!2309022 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206811) tb!138441))

(declare-fun result!168742 () Bool)

(assert (= result!168742 result!168626))

(assert (=> d!682806 t!206811))

(declare-fun t!206813 () Bool)

(declare-fun tb!138443 () Bool)

(assert (=> (and b!2309022 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toValue!6223 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206813) tb!138443))

(declare-fun result!168744 () Bool)

(assert (= result!168744 result!168566))

(assert (=> d!682598 t!206813))

(assert (=> d!683050 t!206807))

(declare-fun b_and!184557 () Bool)

(declare-fun tp!732456 () Bool)

(assert (=> b!2309022 (= tp!732456 (and (=> t!206807 result!168738) (=> t!206813 result!168744) (=> t!206809 result!168740) (=> t!206805 result!168736) (=> t!206811 result!168742) b_and!184557))))

(declare-fun b_free!69891 () Bool)

(declare-fun b_next!70595 () Bool)

(assert (=> b!2309022 (= b_free!69891 (not b_next!70595))))

(declare-fun t!206815 () Bool)

(declare-fun tb!138445 () Bool)

(assert (=> (and b!2309022 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456))))) t!206815) tb!138445))

(declare-fun result!168746 () Bool)

(assert (= result!168746 result!168454))

(assert (=> d!682428 t!206815))

(declare-fun t!206817 () Bool)

(declare-fun tb!138447 () Bool)

(assert (=> (and b!2309022 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456)))))) t!206817) tb!138447))

(declare-fun result!168748 () Bool)

(assert (= result!168748 result!168662))

(assert (=> b!2308881 t!206817))

(declare-fun t!206819 () Bool)

(declare-fun tb!138449 () Bool)

(assert (=> (and b!2309022 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toChars!6082 (transformation!4409 r!2363))) t!206819) tb!138449))

(declare-fun result!168750 () Bool)

(assert (= result!168750 result!168686))

(assert (=> d!683052 t!206819))

(declare-fun tb!138451 () Bool)

(declare-fun t!206821 () Bool)

(assert (=> (and b!2309022 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toChars!6082 (transformation!4409 r!2363))) t!206821) tb!138451))

(declare-fun result!168752 () Bool)

(assert (= result!168752 result!168472))

(assert (=> d!682442 t!206821))

(declare-fun t!206823 () Bool)

(declare-fun tb!138453 () Bool)

(assert (=> (and b!2309022 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!856040)))))) t!206823) tb!138453))

(declare-fun result!168754 () Bool)

(assert (= result!168754 result!168610))

(assert (=> d!682776 t!206823))

(declare-fun t!206825 () Bool)

(declare-fun tb!138455 () Bool)

(assert (=> (and b!2309022 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toChars!6082 (transformation!4409 (rule!6761 (_1!16211 (get!8285 lt!855934)))))) t!206825) tb!138455))

(declare-fun result!168756 () Bool)

(assert (= result!168756 result!168554))

(assert (=> d!682592 t!206825))

(declare-fun t!206827 () Bool)

(declare-fun tb!138457 () Bool)

(assert (=> (and b!2309022 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456))))) t!206827) tb!138457))

(declare-fun result!168758 () Bool)

(assert (= result!168758 result!168490))

(assert (=> d!682516 t!206827))

(assert (=> b!2307924 t!206815))

(declare-fun tp!732457 () Bool)

(declare-fun b_and!184559 () Bool)

(assert (=> b!2309022 (= tp!732457 (and (=> t!206815 result!168746) (=> t!206819 result!168750) (=> t!206823 result!168754) (=> t!206821 result!168752) (=> t!206817 result!168748) (=> t!206825 result!168756) (=> t!206827 result!168758) b_and!184559))))

(declare-fun e!1479830 () Bool)

(assert (=> b!2309022 (= e!1479830 (and tp!732456 tp!732457))))

(declare-fun e!1479827 () Bool)

(assert (=> b!2308083 (= tp!732298 e!1479827)))

(declare-fun b!2309021 () Bool)

(declare-fun e!1479831 () Bool)

(declare-fun tp!732455 () Bool)

(assert (=> b!2309021 (= e!1479831 (and tp!732455 (inv!37117 (tag!4899 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (inv!37120 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) e!1479830))))

(declare-fun e!1479828 () Bool)

(declare-fun tp!732459 () Bool)

(declare-fun b!2309019 () Bool)

(assert (=> b!2309019 (= e!1479827 (and (inv!37121 (h!32881 (t!206518 (t!206518 tokens!456)))) e!1479828 tp!732459))))

(declare-fun tp!732458 () Bool)

(declare-fun b!2309020 () Bool)

(assert (=> b!2309020 (= e!1479828 (and (inv!21 (value!139476 (h!32881 (t!206518 (t!206518 tokens!456))))) e!1479831 tp!732458))))

(assert (= b!2309021 b!2309022))

(assert (= b!2309020 b!2309021))

(assert (= b!2309019 b!2309020))

(assert (= (and b!2308083 ((_ is Cons!27480) (t!206518 (t!206518 tokens!456)))) b!2309019))

(declare-fun m!2736363 () Bool)

(assert (=> b!2309021 m!2736363))

(declare-fun m!2736365 () Bool)

(assert (=> b!2309021 m!2736365))

(declare-fun m!2736367 () Bool)

(assert (=> b!2309019 m!2736367))

(declare-fun m!2736369 () Bool)

(assert (=> b!2309020 m!2736369))

(declare-fun b!2309023 () Bool)

(declare-fun e!1479833 () Bool)

(assert (=> b!2309023 (= e!1479833 tp_is_empty!10735)))

(assert (=> b!2308067 (= tp!732276 e!1479833)))

(declare-fun b!2309024 () Bool)

(declare-fun tp!732463 () Bool)

(declare-fun tp!732462 () Bool)

(assert (=> b!2309024 (= e!1479833 (and tp!732463 tp!732462))))

(declare-fun b!2309026 () Bool)

(declare-fun tp!732460 () Bool)

(declare-fun tp!732461 () Bool)

(assert (=> b!2309026 (= e!1479833 (and tp!732460 tp!732461))))

(declare-fun b!2309025 () Bool)

(declare-fun tp!732464 () Bool)

(assert (=> b!2309025 (= e!1479833 tp!732464)))

(assert (= (and b!2308067 ((_ is ElementMatch!6757) (regOne!14027 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2309023))

(assert (= (and b!2308067 ((_ is Concat!11329) (regOne!14027 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2309024))

(assert (= (and b!2308067 ((_ is Star!6757) (regOne!14027 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2309025))

(assert (= (and b!2308067 ((_ is Union!6757) (regOne!14027 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2309026))

(declare-fun b!2309027 () Bool)

(declare-fun e!1479834 () Bool)

(assert (=> b!2309027 (= e!1479834 tp_is_empty!10735)))

(assert (=> b!2308067 (= tp!732277 e!1479834)))

(declare-fun b!2309028 () Bool)

(declare-fun tp!732468 () Bool)

(declare-fun tp!732467 () Bool)

(assert (=> b!2309028 (= e!1479834 (and tp!732468 tp!732467))))

(declare-fun b!2309030 () Bool)

(declare-fun tp!732465 () Bool)

(declare-fun tp!732466 () Bool)

(assert (=> b!2309030 (= e!1479834 (and tp!732465 tp!732466))))

(declare-fun b!2309029 () Bool)

(declare-fun tp!732469 () Bool)

(assert (=> b!2309029 (= e!1479834 tp!732469)))

(assert (= (and b!2308067 ((_ is ElementMatch!6757) (regTwo!14027 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2309027))

(assert (= (and b!2308067 ((_ is Concat!11329) (regTwo!14027 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2309028))

(assert (= (and b!2308067 ((_ is Star!6757) (regTwo!14027 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2309029))

(assert (= (and b!2308067 ((_ is Union!6757) (regTwo!14027 (regex!4409 (rule!6761 (h!32881 tokens!456)))))) b!2309030))

(declare-fun b_lambda!73589 () Bool)

(assert (= b_lambda!73587 (or (and b!2308086 b_free!69877 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2307465 b_free!69857) (and b!2307476 b_free!69865 (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2308101 b_free!69881 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2309022 b_free!69889 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2307475 b_free!69853 (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 r!2363)))) (and b!2307487 b_free!69861 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2308982 b_free!69885 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toValue!6223 (transformation!4409 r!2363)))) b_lambda!73589)))

(declare-fun b_lambda!73591 () Bool)

(assert (= b_lambda!73579 (or (and b!2307476 b_free!69867 (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))))) (and b!2307475 b_free!69855 (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))))) (and b!2308086 b_free!69879) (and b!2307465 b_free!69859 (= (toChars!6082 (transformation!4409 r!2363)) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))))) (and b!2309022 b_free!69891 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))))) (and b!2308101 b_free!69883 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))))) (and b!2307487 b_free!69863 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))))) (and b!2308982 b_free!69887 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))))) b_lambda!73591)))

(declare-fun b_lambda!73593 () Bool)

(assert (= b_lambda!73577 (or d!682442 b_lambda!73593)))

(declare-fun bs!458132 () Bool)

(declare-fun d!683098 () Bool)

(assert (= bs!458132 (and d!683098 d!682442)))

(assert (=> bs!458132 (= (dynLambda!11959 lambda!85994 lt!855861) (= (list!10848 (dynLambda!11947 (toChars!6082 (transformation!4409 r!2363)) (dynLambda!11952 (toValue!6223 (transformation!4409 r!2363)) lt!855861))) (list!10848 lt!855861)))))

(declare-fun b_lambda!73603 () Bool)

(assert (=> (not b_lambda!73603) (not bs!458132)))

(assert (=> bs!458132 t!206613))

(declare-fun b_and!184561 () Bool)

(assert (= b_and!184525 (and (=> t!206613 result!168550) b_and!184561)))

(assert (=> bs!458132 t!206557))

(declare-fun b_and!184563 () Bool)

(assert (= b_and!184527 (and (=> t!206557 result!168476) b_and!184563)))

(assert (=> bs!458132 t!206553))

(declare-fun b_and!184565 () Bool)

(assert (= b_and!184519 (and (=> t!206553 result!168472) b_and!184565)))

(assert (=> bs!458132 t!206605))

(declare-fun b_and!184567 () Bool)

(assert (= b_and!184517 (and (=> t!206605 result!168540) b_and!184567)))

(assert (=> bs!458132 t!206821))

(declare-fun b_and!184569 () Bool)

(assert (= b_and!184559 (and (=> t!206821 result!168752) b_and!184569)))

(assert (=> bs!458132 t!206559))

(declare-fun b_and!184571 () Bool)

(assert (= b_and!184523 (and (=> t!206559 result!168478) b_and!184571)))

(assert (=> bs!458132 t!206797))

(declare-fun b_and!184573 () Bool)

(assert (= b_and!184555 (and (=> t!206797 result!168728) b_and!184573)))

(assert (=> bs!458132 t!206555))

(declare-fun b_and!184575 () Bool)

(assert (= b_and!184521 (and (=> t!206555 result!168474) b_and!184575)))

(declare-fun b_lambda!73605 () Bool)

(assert (=> (not b_lambda!73605) (not bs!458132)))

(assert (=> bs!458132 t!206781))

(declare-fun b_and!184577 () Bool)

(assert (= b_and!184553 (and (=> t!206781 result!168712) b_and!184577)))

(assert (=> bs!458132 t!206805))

(declare-fun b_and!184579 () Bool)

(assert (= b_and!184557 (and (=> t!206805 result!168736) b_and!184579)))

(assert (=> bs!458132 t!206567))

(declare-fun b_and!184581 () Bool)

(assert (= b_and!184543 (and (=> t!206567 result!168488) b_and!184581)))

(assert (=> bs!458132 t!206565))

(declare-fun b_and!184583 () Bool)

(assert (= b_and!184541 (and (=> t!206565 result!168486) b_and!184583)))

(assert (=> bs!458132 t!206561))

(declare-fun b_and!184585 () Bool)

(assert (= b_and!184547 (and (=> t!206561 result!168480) b_and!184585)))

(assert (=> bs!458132 t!206609))

(declare-fun b_and!184587 () Bool)

(assert (= b_and!184545 (and (=> t!206609 result!168546) b_and!184587)))

(assert (=> bs!458132 t!206563))

(declare-fun b_and!184589 () Bool)

(assert (= b_and!184549 (and (=> t!206563 result!168484) b_and!184589)))

(assert (=> bs!458132 t!206601))

(declare-fun b_and!184591 () Bool)

(assert (= b_and!184551 (and (=> t!206601 result!168536) b_and!184591)))

(assert (=> bs!458132 m!2734889))

(assert (=> bs!458132 m!2734883))

(assert (=> bs!458132 m!2734889))

(assert (=> bs!458132 m!2734883))

(assert (=> bs!458132 m!2734885))

(assert (=> bs!458132 m!2734891))

(assert (=> d!683018 d!683098))

(declare-fun b_lambda!73595 () Bool)

(assert (= b_lambda!73581 (or (and b!2308086 b_free!69877 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2307465 b_free!69857) (and b!2307476 b_free!69865 (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2308101 b_free!69881 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2309022 b_free!69889 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2307475 b_free!69853 (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 r!2363)))) (and b!2307487 b_free!69861 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2308982 b_free!69885 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toValue!6223 (transformation!4409 r!2363)))) b_lambda!73595)))

(declare-fun b_lambda!73597 () Bool)

(assert (= b_lambda!73527 (or (and b!2309022 b_free!69891 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))))) (and b!2308086 b_free!69879 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))))) (and b!2308982 b_free!69887 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))))) (and b!2308101 b_free!69883 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))))) (and b!2307476 b_free!69867 (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))))) (and b!2307465 b_free!69859 (= (toChars!6082 (transformation!4409 r!2363)) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))))) (and b!2307475 b_free!69855 (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))))) (and b!2307487 b_free!69863 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toChars!6082 (transformation!4409 (rule!6761 (head!5064 tokens!456)))))) b_lambda!73597)))

(declare-fun b_lambda!73599 () Bool)

(assert (= b_lambda!73583 (or (and b!2307475 b_free!69855 (= (toChars!6082 (transformation!4409 otherR!12)) (toChars!6082 (transformation!4409 r!2363)))) (and b!2308101 b_free!69883 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toChars!6082 (transformation!4409 r!2363)))) (and b!2307465 b_free!69859) (and b!2307487 b_free!69863 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toChars!6082 (transformation!4409 r!2363)))) (and b!2308086 b_free!69879 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toChars!6082 (transformation!4409 r!2363)))) (and b!2309022 b_free!69891 (= (toChars!6082 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toChars!6082 (transformation!4409 r!2363)))) (and b!2308982 b_free!69887 (= (toChars!6082 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toChars!6082 (transformation!4409 r!2363)))) (and b!2307476 b_free!69867 (= (toChars!6082 (transformation!4409 (h!32882 rules!1750))) (toChars!6082 (transformation!4409 r!2363)))) b_lambda!73599)))

(declare-fun b_lambda!73601 () Bool)

(assert (= b_lambda!73585 (or (and b!2308086 b_free!69877 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 tokens!456))))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2307465 b_free!69857) (and b!2307476 b_free!69865 (= (toValue!6223 (transformation!4409 (h!32882 rules!1750))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2308101 b_free!69881 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 rules!1750)))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2309022 b_free!69889 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 (t!206518 (t!206518 tokens!456)))))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2307475 b_free!69853 (= (toValue!6223 (transformation!4409 otherR!12)) (toValue!6223 (transformation!4409 r!2363)))) (and b!2307487 b_free!69861 (= (toValue!6223 (transformation!4409 (rule!6761 (h!32881 tokens!456)))) (toValue!6223 (transformation!4409 r!2363)))) (and b!2308982 b_free!69885 (= (toValue!6223 (transformation!4409 (h!32882 (t!206519 (t!206519 rules!1750))))) (toValue!6223 (transformation!4409 r!2363)))) b_lambda!73601)))

(check-sat (not b!2309012) (not b!2308975) (not d!682624) (not b!2308456) (not b!2309029) (not b!2308468) b_and!184587 (not b!2308934) (not b!2308120) (not b!2308515) (not b!2308383) (not b!2308178) (not b!2308969) (not b!2308125) (not b!2308512) (not b!2308185) (not b!2308988) (not b!2308194) (not b!2309003) (not bm!137284) (not d!683064) (not b!2308349) (not b!2308806) (not b_next!70593) (not bm!137291) (not b!2308864) (not d!683014) (not b!2308880) (not b!2309009) (not b!2308997) (not b!2308954) (not b!2308681) (not b!2308813) (not b!2308556) (not b!2308908) (not b_lambda!73559) (not b!2308950) (not b!2308686) (not b!2308815) (not b!2308889) (not d!683084) (not b!2308533) (not d!683078) (not b!2308353) (not b!2308137) (not b!2308926) (not d!682600) (not b!2308379) (not d!683018) (not b_lambda!73603) (not b!2308532) (not b!2308951) (not b!2308516) (not b!2308196) (not d!683042) (not b_next!70581) (not b!2308358) (not b!2309008) (not b!2308561) (not d!682804) (not b!2308355) (not b!2308944) tp_is_empty!10735 (not b!2308961) (not bm!137288) (not d!683092) b_and!184591 (not b!2308924) (not b!2308318) (not b!2308888) (not d!682800) (not d!682862) (not b!2308981) (not b!2308959) (not b!2308123) (not b_lambda!73553) (not d!682826) (not b!2309028) (not b!2308505) (not b!2309013) (not b!2308122) (not bm!137286) (not b!2308359) (not b_next!70591) (not b!2308377) (not bm!137305) (not b!2308911) (not d!682856) (not b!2308777) (not bm!137190) (not b_next!70559) (not b_lambda!73591) (not tb!138363) (not d!682992) (not bm!137287) (not b_lambda!73547) (not d!683090) (not d!682770) (not b!2308876) (not b!2308881) (not b!2308804) (not b!2308367) (not b!2308140) (not b!2309016) (not bm!137290) (not b!2308808) (not b_next!70583) (not b_lambda!73555) (not b!2308504) b_and!184589 (not tb!138375) (not b!2308991) (not b!2308970) (not b!2308965) (not b!2308345) (not b!2308923) (not b_lambda!73595) (not b!2309017) (not b!2308519) (not bm!137302) (not b!2308927) (not tb!138387) (not b_lambda!73601) (not b!2308496) (not b!2308899) (not b!2308564) (not b!2308526) b_and!184579 (not d!682588) (not b_next!70571) (not b!2308941) (not b!2308967) (not b!2308312) (not b!2308986) (not b!2308985) (not d!682816) b_and!184567 (not d!683024) (not d!683066) b_and!184577 (not b!2308992) (not d!682592) (not b!2308510) (not bm!137199) (not b!2308958) (not d!682774) (not b!2308188) (not b!2308839) (not b_lambda!73549) (not b!2309011) (not d!682620) (not b!2309004) (not b!2308776) (not b!2308506) (not d!682632) b_and!184575 (not b!2308467) (not b!2308863) (not b!2308962) (not b!2308409) (not d!682988) (not b!2308947) (not b!2307634) (not tb!138267) (not d!683062) (not d!682604) (not b!2308987) (not b!2308922) (not bm!137213) (not d!683052) (not d!682952) (not tb!138327) (not b!2308940) (not b!2308800) (not b!2308846) (not d!682950) (not b_lambda!73605) (not d!682948) b_and!184565 (not b!2308955) (not b!2308342) (not b!2308833) (not b!2308197) b_and!184571 (not b_lambda!73557) (not d!683000) (not b!2308361) (not bm!137214) (not b!2308973) (not b!2308896) (not b!2308152) (not d!682864) (not d!682610) (not b!2307792) (not b!2309026) (not b!2308507) (not b!2308320) (not d!682630) (not bm!137218) (not b!2308721) (not b!2309005) (not b!2308836) (not d!683046) (not tb!138399) (not b!2308315) (not b!2309024) (not b!2309001) (not b!2308989) (not b_lambda!73571) (not b!2308878) (not b!2308953) (not b!2308902) (not d!682606) (not b!2308875) (not b!2308996) (not d!682972) (not b!2308977) (not d!683074) (not d!683060) (not b!2308984) (not b!2308894) (not bm!137217) (not b!2308930) b_and!184563 (not b!2308949) (not bm!137202) (not b!2308931) (not d!682832) (not d!682838) (not b!2308149) (not d!683096) (not d!682608) (not b_next!70557) (not b_next!70563) (not b!2308882) (not b!2308838) (not b!2308945) (not b!2308363) b_and!184585 (not b!2308541) (not b!2308511) (not d!682614) (not b!2308552) (not b!2308562) (not b!2308936) (not b!2308682) (not b!2308530) (not b!2308388) (not d!682750) (not b!2309021) (not b!2308937) (not d!682846) (not tb!138311) (not b!2308939) (not d!683068) (not b!2308508) (not b!2309018) b_and!184569 (not b_lambda!73569) (not b!2308999) (not b!2308892) (not b!2308518) (not d!682810) (not b!2308932) (not d!682746) (not b!2308741) (not d!682766) (not b!2308995) (not b!2308193) (not b!2308317) (not d!682830) (not b!2308943) (not b!2308144) (not b_next!70567) (not d!683072) (not b!2308537) (not b!2308536) (not b!2308138) (not b!2308897) (not b!2308503) (not b!2308566) (not tb!138255) (not b!2308971) (not bm!137304) (not b!2308885) (not d!683080) (not b!2308119) (not b_lambda!73599) (not b!2308154) (not b!2308558) b_and!184573 (not b!2308798) (not b!2308883) (not d!682784) (not b!2309000) (not b!2308905) (not b!2308498) (not b!2307828) (not b_lambda!73551) (not b!2308150) (not b!2308339) (not b!2308528) (not d!683086) (not b!2308387) (not d!682602) (not b!2308824) (not b_next!70585) (not bm!137301) (not d!683016) (not b!2308690) (not b!2308993) (not d!682936) (not d!683054) (not d!683056) (not b_lambda!73597) (not d!683088) (not b!2308966) (not b!2308322) (not b_next!70587) (not b!2309020) (not b!2308957) (not b!2308895) (not bm!137234) (not b!2308480) (not b!2308346) (not d!682940) (not d!682740) (not d!682820) (not b!2309007) (not b!2308382) b_and!184581 (not b!2308913) (not b!2308385) (not d!682858) (not b_next!70561) (not b!2308979) (not b!2308198) (not bm!137236) (not b!2308803) (not d!683044) (not b!2308321) (not bm!137242) (not d!682764) (not b!2308347) (not bm!137285) (not bs!458132) (not b!2308343) (not b_next!70595) (not b!2308928) (not b!2309015) (not b_lambda!73593) (not b!2309019) (not b!2308834) (not b!2309030) (not b_next!70565) (not d!682634) (not b!2308893) (not d!683058) (not b!2308550) b_and!184583 (not d!683008) (not b_lambda!73589) (not b!2308338) (not d!682798) (not b!2308978) b_and!184561 (not b!2308983) (not b_next!70569) (not d!682776) (not b!2308946) (not b!2308784) (not b!2308980) (not bm!137289) (not b_next!70589) (not b!2308146) (not b!2308935) (not d!682956) (not b!2308963) (not b!2308540) (not d!682590) (not b!2308974) (not b!2308534) (not b!2309025) (not b!2308890))
(check-sat b_and!184587 (not b_next!70593) (not b_next!70581) b_and!184591 b_and!184575 b_and!184565 b_and!184571 b_and!184563 b_and!184569 (not b_next!70567) b_and!184573 (not b_next!70585) (not b_next!70587) b_and!184581 (not b_next!70561) (not b_next!70559) (not b_next!70591) (not b_next!70583) b_and!184589 b_and!184579 (not b_next!70571) b_and!184567 b_and!184577 (not b_next!70557) (not b_next!70563) b_and!184585 (not b_next!70595) (not b_next!70565) b_and!184561 b_and!184583 (not b_next!70569) (not b_next!70589))
