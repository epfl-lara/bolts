; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20158 () Bool)

(assert start!20158)

(declare-fun b!185776 () Bool)

(declare-fun b_free!7273 () Bool)

(declare-fun b_next!7273 () Bool)

(assert (=> b!185776 (= b_free!7273 (not b_next!7273))))

(declare-fun tp!87447 () Bool)

(declare-fun b_and!12781 () Bool)

(assert (=> b!185776 (= tp!87447 b_and!12781)))

(declare-fun b_free!7275 () Bool)

(declare-fun b_next!7275 () Bool)

(assert (=> b!185776 (= b_free!7275 (not b_next!7275))))

(declare-fun tp!87441 () Bool)

(declare-fun b_and!12783 () Bool)

(assert (=> b!185776 (= tp!87441 b_and!12783)))

(declare-fun b!185800 () Bool)

(declare-fun b_free!7277 () Bool)

(declare-fun b_next!7277 () Bool)

(assert (=> b!185800 (= b_free!7277 (not b_next!7277))))

(declare-fun tp!87437 () Bool)

(declare-fun b_and!12785 () Bool)

(assert (=> b!185800 (= tp!87437 b_and!12785)))

(declare-fun b_free!7279 () Bool)

(declare-fun b_next!7279 () Bool)

(assert (=> b!185800 (= b_free!7279 (not b_next!7279))))

(declare-fun tp!87442 () Bool)

(declare-fun b_and!12787 () Bool)

(assert (=> b!185800 (= tp!87442 b_and!12787)))

(declare-fun b!185796 () Bool)

(declare-fun b_free!7281 () Bool)

(declare-fun b_next!7281 () Bool)

(assert (=> b!185796 (= b_free!7281 (not b_next!7281))))

(declare-fun tp!87444 () Bool)

(declare-fun b_and!12789 () Bool)

(assert (=> b!185796 (= tp!87444 b_and!12789)))

(declare-fun b_free!7283 () Bool)

(declare-fun b_next!7283 () Bool)

(assert (=> b!185796 (= b_free!7283 (not b_next!7283))))

(declare-fun tp!87443 () Bool)

(declare-fun b_and!12791 () Bool)

(assert (=> b!185796 (= tp!87443 b_and!12791)))

(declare-fun bs!18480 () Bool)

(declare-fun b!185795 () Bool)

(declare-fun b!185767 () Bool)

(assert (= bs!18480 (and b!185795 b!185767)))

(declare-fun lambda!5590 () Int)

(declare-fun lambda!5589 () Int)

(assert (=> bs!18480 (not (= lambda!5590 lambda!5589))))

(declare-fun b!185812 () Bool)

(declare-fun e!113627 () Bool)

(assert (=> b!185812 (= e!113627 true)))

(declare-fun b!185811 () Bool)

(declare-fun e!113626 () Bool)

(assert (=> b!185811 (= e!113626 e!113627)))

(declare-fun b!185810 () Bool)

(declare-fun e!113625 () Bool)

(assert (=> b!185810 (= e!113625 e!113626)))

(assert (=> b!185795 e!113625))

(assert (= b!185811 b!185812))

(assert (= b!185810 b!185811))

(declare-datatypes ((List!3111 0))(
  ( (Nil!3101) (Cons!3101 (h!8498 (_ BitVec 16)) (t!28621 List!3111)) )
))
(declare-datatypes ((TokenValue!587 0))(
  ( (FloatLiteralValue!1174 (text!4554 List!3111)) (TokenValueExt!586 (__x!2661 Int)) (Broken!2935 (value!20392 List!3111)) (Object!596) (End!587) (Def!587) (Underscore!587) (Match!587) (Else!587) (Error!587) (Case!587) (If!587) (Extends!587) (Abstract!587) (Class!587) (Val!587) (DelimiterValue!1174 (del!647 List!3111)) (KeywordValue!593 (value!20393 List!3111)) (CommentValue!1174 (value!20394 List!3111)) (WhitespaceValue!1174 (value!20395 List!3111)) (IndentationValue!587 (value!20396 List!3111)) (String!4014) (Int32!587) (Broken!2936 (value!20397 List!3111)) (Boolean!588) (Unit!2881) (OperatorValue!590 (op!647 List!3111)) (IdentifierValue!1174 (value!20398 List!3111)) (IdentifierValue!1175 (value!20399 List!3111)) (WhitespaceValue!1175 (value!20400 List!3111)) (True!1174) (False!1174) (Broken!2937 (value!20401 List!3111)) (Broken!2938 (value!20402 List!3111)) (True!1175) (RightBrace!587) (RightBracket!587) (Colon!587) (Null!587) (Comma!587) (LeftBracket!587) (False!1175) (LeftBrace!587) (ImaginaryLiteralValue!587 (text!4555 List!3111)) (StringLiteralValue!1761 (value!20403 List!3111)) (EOFValue!587 (value!20404 List!3111)) (IdentValue!587 (value!20405 List!3111)) (DelimiterValue!1175 (value!20406 List!3111)) (DedentValue!587 (value!20407 List!3111)) (NewLineValue!587 (value!20408 List!3111)) (IntegerValue!1761 (value!20409 (_ BitVec 32)) (text!4556 List!3111)) (IntegerValue!1762 (value!20410 Int) (text!4557 List!3111)) (Times!587) (Or!587) (Equal!587) (Minus!587) (Broken!2939 (value!20411 List!3111)) (And!587) (Div!587) (LessEqual!587) (Mod!587) (Concat!1376) (Not!587) (Plus!587) (SpaceValue!587 (value!20412 List!3111)) (IntegerValue!1763 (value!20413 Int) (text!4558 List!3111)) (StringLiteralValue!1762 (text!4559 List!3111)) (FloatLiteralValue!1175 (text!4560 List!3111)) (BytesLiteralValue!587 (value!20414 List!3111)) (CommentValue!1175 (value!20415 List!3111)) (StringLiteralValue!1763 (value!20416 List!3111)) (ErrorTokenValue!587 (msg!648 List!3111)) )
))
(declare-datatypes ((C!2500 0))(
  ( (C!2501 (val!1136 Int)) )
))
(declare-datatypes ((List!3112 0))(
  ( (Nil!3102) (Cons!3102 (h!8499 C!2500) (t!28622 List!3112)) )
))
(declare-datatypes ((IArray!1905 0))(
  ( (IArray!1906 (innerList!1010 List!3112)) )
))
(declare-datatypes ((Conc!952 0))(
  ( (Node!952 (left!2421 Conc!952) (right!2751 Conc!952) (csize!2134 Int) (cheight!1163 Int)) (Leaf!1574 (xs!3547 IArray!1905) (csize!2135 Int)) (Empty!952) )
))
(declare-datatypes ((BalanceConc!1912 0))(
  ( (BalanceConc!1913 (c!35957 Conc!952)) )
))
(declare-datatypes ((TokenValueInjection!946 0))(
  ( (TokenValueInjection!947 (toValue!1236 Int) (toChars!1095 Int)) )
))
(declare-datatypes ((String!4015 0))(
  ( (String!4016 (value!20417 String)) )
))
(declare-datatypes ((Regex!789 0))(
  ( (ElementMatch!789 (c!35958 C!2500)) (Concat!1377 (regOne!2090 Regex!789) (regTwo!2090 Regex!789)) (EmptyExpr!789) (Star!789 (reg!1118 Regex!789)) (EmptyLang!789) (Union!789 (regOne!2091 Regex!789) (regTwo!2091 Regex!789)) )
))
(declare-datatypes ((Rule!930 0))(
  ( (Rule!931 (regex!565 Regex!789) (tag!743 String!4015) (isSeparator!565 Bool) (transformation!565 TokenValueInjection!946)) )
))
(declare-datatypes ((List!3113 0))(
  ( (Nil!3103) (Cons!3103 (h!8500 Rule!930) (t!28623 List!3113)) )
))
(declare-fun rules!1920 () List!3113)

(get-info :version)

(assert (= (and b!185795 ((_ is Cons!3103) rules!1920)) b!185810))

(declare-fun order!1867 () Int)

(declare-fun order!1865 () Int)

(declare-fun dynLambda!1277 (Int Int) Int)

(declare-fun dynLambda!1278 (Int Int) Int)

(assert (=> b!185812 (< (dynLambda!1277 order!1865 (toValue!1236 (transformation!565 (h!8500 rules!1920)))) (dynLambda!1278 order!1867 lambda!5590))))

(declare-fun order!1869 () Int)

(declare-fun dynLambda!1279 (Int Int) Int)

(assert (=> b!185812 (< (dynLambda!1279 order!1869 (toChars!1095 (transformation!565 (h!8500 rules!1920)))) (dynLambda!1278 order!1867 lambda!5590))))

(assert (=> b!185795 true))

(declare-fun b!185766 () Bool)

(declare-fun e!113618 () Bool)

(declare-fun e!113604 () Bool)

(declare-fun tp!87445 () Bool)

(assert (=> b!185766 (= e!113618 (and e!113604 tp!87445))))

(declare-fun res!84573 () Bool)

(declare-fun e!113608 () Bool)

(assert (=> b!185767 (=> (not res!84573) (not e!113608))))

(declare-datatypes ((Token!874 0))(
  ( (Token!875 (value!20418 TokenValue!587) (rule!1080 Rule!930) (size!2513 Int) (originalCharacters!608 List!3112)) )
))
(declare-datatypes ((List!3114 0))(
  ( (Nil!3104) (Cons!3104 (h!8501 Token!874) (t!28624 List!3114)) )
))
(declare-fun tokens!465 () List!3114)

(declare-fun forall!643 (List!3114 Int) Bool)

(assert (=> b!185767 (= res!84573 (forall!643 tokens!465 lambda!5589))))

(declare-fun lt!62176 () List!3112)

(declare-fun b!185768 () Bool)

(declare-fun lt!62187 () List!3112)

(declare-fun lt!62173 () List!3112)

(declare-fun e!113601 () Bool)

(declare-fun ++!736 (List!3112 List!3112) List!3112)

(assert (=> b!185768 (= e!113601 (not (= lt!62176 (++!736 lt!62187 lt!62173))))))

(declare-fun b!185769 () Bool)

(declare-fun e!113598 () Bool)

(declare-fun e!113596 () Bool)

(assert (=> b!185769 (= e!113598 e!113596)))

(declare-fun res!84577 () Bool)

(assert (=> b!185769 (=> res!84577 e!113596)))

(assert (=> b!185769 (= res!84577 e!113601)))

(declare-fun res!84585 () Bool)

(assert (=> b!185769 (=> (not res!84585) (not e!113601))))

(declare-fun lt!62169 () Bool)

(assert (=> b!185769 (= res!84585 (not lt!62169))))

(declare-fun lt!62180 () List!3112)

(assert (=> b!185769 (= lt!62169 (= lt!62176 lt!62180))))

(declare-fun b!185770 () Bool)

(declare-fun e!113602 () Bool)

(assert (=> b!185770 (= e!113596 e!113602)))

(declare-fun res!84583 () Bool)

(assert (=> b!185770 (=> res!84583 e!113602)))

(declare-fun lt!62185 () List!3112)

(declare-fun lt!62177 () List!3112)

(assert (=> b!185770 (= res!84583 (or (not (= lt!62177 lt!62185)) (not (= lt!62185 lt!62187)) (not (= lt!62177 lt!62187))))))

(declare-datatypes ((LexerInterface!451 0))(
  ( (LexerInterfaceExt!448 (__x!2662 Int)) (Lexer!449) )
))
(declare-fun thiss!17480 () LexerInterface!451)

(declare-fun lt!62189 () List!3114)

(declare-fun printList!135 (LexerInterface!451 List!3114) List!3112)

(assert (=> b!185770 (= lt!62185 (printList!135 thiss!17480 lt!62189))))

(declare-fun lt!62170 () BalanceConc!1912)

(declare-fun list!1143 (BalanceConc!1912) List!3112)

(assert (=> b!185770 (= lt!62177 (list!1143 lt!62170))))

(assert (=> b!185770 (= lt!62189 (Cons!3104 (h!8501 tokens!465) Nil!3104))))

(declare-datatypes ((IArray!1907 0))(
  ( (IArray!1908 (innerList!1011 List!3114)) )
))
(declare-datatypes ((Conc!953 0))(
  ( (Node!953 (left!2422 Conc!953) (right!2752 Conc!953) (csize!2136 Int) (cheight!1164 Int)) (Leaf!1575 (xs!3548 IArray!1907) (csize!2137 Int)) (Empty!953) )
))
(declare-datatypes ((BalanceConc!1914 0))(
  ( (BalanceConc!1915 (c!35959 Conc!953)) )
))
(declare-fun lt!62168 () BalanceConc!1914)

(declare-fun printTailRec!145 (LexerInterface!451 BalanceConc!1914 Int BalanceConc!1912) BalanceConc!1912)

(assert (=> b!185770 (= lt!62170 (printTailRec!145 thiss!17480 lt!62168 0 (BalanceConc!1913 Empty!952)))))

(declare-fun print!182 (LexerInterface!451 BalanceConc!1914) BalanceConc!1912)

(assert (=> b!185770 (= lt!62170 (print!182 thiss!17480 lt!62168))))

(declare-fun singletonSeq!117 (Token!874) BalanceConc!1914)

(assert (=> b!185770 (= lt!62168 (singletonSeq!117 (h!8501 tokens!465)))))

(declare-fun b!185771 () Bool)

(declare-fun res!84576 () Bool)

(assert (=> b!185771 (=> (not res!84576) (not e!113608))))

(declare-fun sepAndNonSepRulesDisjointChars!154 (List!3113 List!3113) Bool)

(assert (=> b!185771 (= res!84576 (sepAndNonSepRulesDisjointChars!154 rules!1920 rules!1920))))

(declare-fun b!185772 () Bool)

(declare-fun e!113616 () Bool)

(assert (=> b!185772 (= e!113608 e!113616)))

(declare-fun res!84587 () Bool)

(assert (=> b!185772 (=> (not res!84587) (not e!113616))))

(declare-fun lt!62178 () List!3112)

(assert (=> b!185772 (= res!84587 (= lt!62176 lt!62178))))

(declare-fun separatorToken!170 () Token!874)

(declare-fun lt!62179 () BalanceConc!1914)

(declare-fun printWithSeparatorTokenWhenNeededRec!134 (LexerInterface!451 List!3113 BalanceConc!1914 Token!874 Int) BalanceConc!1912)

(assert (=> b!185772 (= lt!62178 (list!1143 (printWithSeparatorTokenWhenNeededRec!134 thiss!17480 rules!1920 lt!62179 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!144 (LexerInterface!451 List!3113 List!3114 Token!874) List!3112)

(assert (=> b!185772 (= lt!62176 (printWithSeparatorTokenWhenNeededList!144 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!185773 () Bool)

(declare-fun res!84572 () Bool)

(assert (=> b!185773 (=> res!84572 e!113602)))

(declare-fun isEmpty!1471 (BalanceConc!1914) Bool)

(declare-datatypes ((tuple2!3126 0))(
  ( (tuple2!3127 (_1!1779 BalanceConc!1914) (_2!1779 BalanceConc!1912)) )
))
(declare-fun lex!251 (LexerInterface!451 List!3113 BalanceConc!1912) tuple2!3126)

(declare-fun seqFromList!507 (List!3112) BalanceConc!1912)

(assert (=> b!185773 (= res!84572 (isEmpty!1471 (_1!1779 (lex!251 thiss!17480 rules!1920 (seqFromList!507 lt!62187)))))))

(declare-fun b!185774 () Bool)

(declare-fun e!113603 () Bool)

(declare-fun e!113591 () Bool)

(assert (=> b!185774 (= e!113603 e!113591)))

(declare-fun res!84597 () Bool)

(assert (=> b!185774 (=> (not res!84597) (not e!113591))))

(declare-datatypes ((tuple2!3128 0))(
  ( (tuple2!3129 (_1!1780 Token!874) (_2!1780 List!3112)) )
))
(declare-datatypes ((Option!408 0))(
  ( (None!407) (Some!407 (v!13906 tuple2!3128)) )
))
(declare-fun lt!62182 () Option!408)

(declare-fun isDefined!259 (Option!408) Bool)

(assert (=> b!185774 (= res!84597 (isDefined!259 lt!62182))))

(declare-fun maxPrefix!181 (LexerInterface!451 List!3113 List!3112) Option!408)

(assert (=> b!185774 (= lt!62182 (maxPrefix!181 thiss!17480 rules!1920 lt!62176))))

(declare-fun b!185775 () Bool)

(declare-fun res!84592 () Bool)

(declare-fun e!113599 () Bool)

(assert (=> b!185775 (=> (not res!84592) (not e!113599))))

(declare-fun rulesInvariant!417 (LexerInterface!451 List!3113) Bool)

(assert (=> b!185775 (= res!84592 (rulesInvariant!417 thiss!17480 rules!1920))))

(declare-fun e!113614 () Bool)

(assert (=> b!185776 (= e!113614 (and tp!87447 tp!87441))))

(declare-fun e!113610 () Bool)

(declare-fun b!185777 () Bool)

(declare-fun e!113612 () Bool)

(declare-fun tp!87449 () Bool)

(declare-fun inv!21 (TokenValue!587) Bool)

(assert (=> b!185777 (= e!113612 (and (inv!21 (value!20418 (h!8501 tokens!465))) e!113610 tp!87449))))

(declare-fun b!185778 () Bool)

(declare-fun e!113592 () Bool)

(declare-fun tp!87448 () Bool)

(declare-fun e!113600 () Bool)

(declare-fun inv!3931 (String!4015) Bool)

(declare-fun inv!3934 (TokenValueInjection!946) Bool)

(assert (=> b!185778 (= e!113592 (and tp!87448 (inv!3931 (tag!743 (rule!1080 separatorToken!170))) (inv!3934 (transformation!565 (rule!1080 separatorToken!170))) e!113600))))

(declare-fun b!185779 () Bool)

(declare-fun res!84594 () Bool)

(assert (=> b!185779 (=> (not res!84594) (not e!113599))))

(declare-fun isEmpty!1472 (List!3113) Bool)

(assert (=> b!185779 (= res!84594 (not (isEmpty!1472 rules!1920)))))

(declare-fun b!185780 () Bool)

(declare-fun tp!87446 () Bool)

(assert (=> b!185780 (= e!113610 (and tp!87446 (inv!3931 (tag!743 (rule!1080 (h!8501 tokens!465)))) (inv!3934 (transformation!565 (rule!1080 (h!8501 tokens!465)))) e!113614))))

(declare-fun tp!87438 () Bool)

(declare-fun e!113615 () Bool)

(declare-fun b!185781 () Bool)

(declare-fun inv!3935 (Token!874) Bool)

(assert (=> b!185781 (= e!113615 (and (inv!3935 (h!8501 tokens!465)) e!113612 tp!87438))))

(declare-fun b!185782 () Bool)

(declare-fun res!84590 () Bool)

(declare-fun e!113606 () Bool)

(assert (=> b!185782 (=> res!84590 e!113606)))

(assert (=> b!185782 (= res!84590 (not (= tokens!465 lt!62189)))))

(declare-fun b!185783 () Bool)

(declare-fun res!84581 () Bool)

(assert (=> b!185783 (=> (not res!84581) (not e!113616))))

(assert (=> b!185783 (= res!84581 (= (list!1143 (seqFromList!507 lt!62176)) lt!62178))))

(declare-fun b!185784 () Bool)

(declare-fun res!84579 () Bool)

(assert (=> b!185784 (=> res!84579 e!113602)))

(declare-fun rulesProduceIndividualToken!200 (LexerInterface!451 List!3113 Token!874) Bool)

(assert (=> b!185784 (= res!84579 (not (rulesProduceIndividualToken!200 thiss!17480 rules!1920 (h!8501 tokens!465))))))

(declare-fun res!84586 () Bool)

(assert (=> start!20158 (=> (not res!84586) (not e!113599))))

(assert (=> start!20158 (= res!84586 ((_ is Lexer!449) thiss!17480))))

(assert (=> start!20158 e!113599))

(assert (=> start!20158 true))

(assert (=> start!20158 e!113618))

(declare-fun e!113607 () Bool)

(assert (=> start!20158 (and (inv!3935 separatorToken!170) e!113607)))

(assert (=> start!20158 e!113615))

(declare-fun b!185785 () Bool)

(declare-fun res!84588 () Bool)

(declare-fun e!113609 () Bool)

(assert (=> b!185785 (=> (not res!84588) (not e!113609))))

(declare-fun lt!62167 () tuple2!3128)

(declare-fun isEmpty!1473 (List!3112) Bool)

(assert (=> b!185785 (= res!84588 (isEmpty!1473 (_2!1780 lt!62167)))))

(declare-fun b!185786 () Bool)

(declare-fun res!84584 () Bool)

(assert (=> b!185786 (=> (not res!84584) (not e!113608))))

(assert (=> b!185786 (= res!84584 (rulesProduceIndividualToken!200 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!185787 () Bool)

(declare-fun e!113605 () Bool)

(declare-fun e!113594 () Bool)

(assert (=> b!185787 (= e!113605 e!113594)))

(declare-fun res!84593 () Bool)

(assert (=> b!185787 (=> res!84593 e!113594)))

(assert (=> b!185787 (= res!84593 (not lt!62169))))

(assert (=> b!185787 e!113609))

(declare-fun res!84596 () Bool)

(assert (=> b!185787 (=> (not res!84596) (not e!113609))))

(assert (=> b!185787 (= res!84596 (= (_1!1780 lt!62167) (h!8501 tokens!465)))))

(declare-fun lt!62175 () Option!408)

(declare-fun get!884 (Option!408) tuple2!3128)

(assert (=> b!185787 (= lt!62167 (get!884 lt!62175))))

(assert (=> b!185787 (isDefined!259 lt!62175)))

(assert (=> b!185787 (= lt!62175 (maxPrefix!181 thiss!17480 rules!1920 lt!62187))))

(declare-fun b!185788 () Bool)

(declare-fun res!84591 () Bool)

(assert (=> b!185788 (=> (not res!84591) (not e!113608))))

(assert (=> b!185788 (= res!84591 ((_ is Cons!3104) tokens!465))))

(declare-fun b!185789 () Bool)

(declare-fun res!84578 () Bool)

(assert (=> b!185789 (=> (not res!84578) (not e!113608))))

(assert (=> b!185789 (= res!84578 (isSeparator!565 (rule!1080 separatorToken!170)))))

(declare-fun b!185790 () Bool)

(assert (=> b!185790 (= e!113606 true)))

(declare-fun e!113613 () Bool)

(declare-fun tp!87439 () Bool)

(declare-fun b!185791 () Bool)

(assert (=> b!185791 (= e!113604 (and tp!87439 (inv!3931 (tag!743 (h!8500 rules!1920))) (inv!3934 (transformation!565 (h!8500 rules!1920))) e!113613))))

(declare-fun tp!87440 () Bool)

(declare-fun b!185792 () Bool)

(assert (=> b!185792 (= e!113607 (and (inv!21 (value!20418 separatorToken!170)) e!113592 tp!87440))))

(declare-fun b!185793 () Bool)

(declare-fun res!84580 () Bool)

(assert (=> b!185793 (=> res!84580 e!113606)))

(declare-fun rulesProduceEachTokenIndividuallyList!141 (LexerInterface!451 List!3113 List!3114) Bool)

(assert (=> b!185793 (= res!84580 (not (rulesProduceEachTokenIndividuallyList!141 thiss!17480 rules!1920 (t!28624 tokens!465))))))

(declare-fun b!185794 () Bool)

(assert (=> b!185794 (= e!113599 e!113608)))

(declare-fun res!84595 () Bool)

(assert (=> b!185794 (=> (not res!84595) (not e!113608))))

(declare-fun rulesProduceEachTokenIndividually!243 (LexerInterface!451 List!3113 BalanceConc!1914) Bool)

(assert (=> b!185794 (= res!84595 (rulesProduceEachTokenIndividually!243 thiss!17480 rules!1920 lt!62179))))

(declare-fun seqFromList!508 (List!3114) BalanceConc!1914)

(assert (=> b!185794 (= lt!62179 (seqFromList!508 tokens!465))))

(assert (=> b!185795 (= e!113602 e!113605)))

(declare-fun res!84575 () Bool)

(assert (=> b!185795 (=> res!84575 e!113605)))

(declare-datatypes ((tuple2!3130 0))(
  ( (tuple2!3131 (_1!1781 Token!874) (_2!1781 BalanceConc!1912)) )
))
(declare-datatypes ((Option!409 0))(
  ( (None!408) (Some!408 (v!13907 tuple2!3130)) )
))
(declare-fun isDefined!260 (Option!409) Bool)

(declare-fun maxPrefixZipperSequence!144 (LexerInterface!451 List!3113 BalanceConc!1912) Option!409)

(assert (=> b!185795 (= res!84575 (not (isDefined!260 (maxPrefixZipperSequence!144 thiss!17480 rules!1920 (seqFromList!507 (originalCharacters!608 (h!8501 tokens!465)))))))))

(declare-datatypes ((Unit!2882 0))(
  ( (Unit!2883) )
))
(declare-fun lt!62166 () Unit!2882)

(declare-fun forallContained!132 (List!3114 Int Token!874) Unit!2882)

(assert (=> b!185795 (= lt!62166 (forallContained!132 tokens!465 lambda!5590 (h!8501 tokens!465)))))

(assert (=> b!185795 (= lt!62187 (originalCharacters!608 (h!8501 tokens!465)))))

(assert (=> b!185796 (= e!113613 (and tp!87444 tp!87443))))

(declare-fun b!185797 () Bool)

(assert (=> b!185797 (= e!113594 e!113606)))

(declare-fun res!84574 () Bool)

(assert (=> b!185797 (=> res!84574 e!113606)))

(declare-fun isEmpty!1474 (List!3114) Bool)

(assert (=> b!185797 (= res!84574 (not (isEmpty!1474 (t!28624 tokens!465))))))

(declare-fun lt!62171 () Option!408)

(declare-fun lt!62183 () List!3112)

(assert (=> b!185797 (= lt!62171 (maxPrefix!181 thiss!17480 rules!1920 lt!62183))))

(declare-fun lt!62186 () tuple2!3128)

(assert (=> b!185797 (= lt!62183 (_2!1780 lt!62186))))

(declare-fun lt!62181 () Unit!2882)

(declare-fun lemmaSamePrefixThenSameSuffix!86 (List!3112 List!3112 List!3112 List!3112 List!3112) Unit!2882)

(assert (=> b!185797 (= lt!62181 (lemmaSamePrefixThenSameSuffix!86 lt!62187 lt!62183 lt!62187 (_2!1780 lt!62186) lt!62176))))

(assert (=> b!185797 (= lt!62186 (get!884 (maxPrefix!181 thiss!17480 rules!1920 lt!62176)))))

(declare-fun isPrefix!261 (List!3112 List!3112) Bool)

(assert (=> b!185797 (isPrefix!261 lt!62187 lt!62180)))

(declare-fun lt!62174 () Unit!2882)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!156 (List!3112 List!3112) Unit!2882)

(assert (=> b!185797 (= lt!62174 (lemmaConcatTwoListThenFirstIsPrefix!156 lt!62187 lt!62183))))

(assert (=> b!185797 e!113603))

(declare-fun res!84589 () Bool)

(assert (=> b!185797 (=> res!84589 e!113603)))

(assert (=> b!185797 (= res!84589 (isEmpty!1474 tokens!465))))

(declare-fun lt!62188 () Unit!2882)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!26 (LexerInterface!451 List!3113 List!3114 Token!874) Unit!2882)

(assert (=> b!185797 (= lt!62188 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!26 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!185798 () Bool)

(declare-fun matchR!127 (Regex!789 List!3112) Bool)

(assert (=> b!185798 (= e!113609 (matchR!127 (regex!565 (rule!1080 (h!8501 tokens!465))) lt!62187))))

(declare-fun b!185799 () Bool)

(declare-fun head!650 (List!3114) Token!874)

(assert (=> b!185799 (= e!113591 (= (_1!1780 (get!884 lt!62182)) (head!650 tokens!465)))))

(assert (=> b!185800 (= e!113600 (and tp!87437 tp!87442))))

(declare-fun b!185801 () Bool)

(assert (=> b!185801 (= e!113616 (not e!113598))))

(declare-fun res!84582 () Bool)

(assert (=> b!185801 (=> res!84582 e!113598)))

(assert (=> b!185801 (= res!84582 (not (= lt!62173 (list!1143 (printWithSeparatorTokenWhenNeededRec!134 thiss!17480 rules!1920 (seqFromList!508 (t!28624 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!62190 () List!3112)

(assert (=> b!185801 (= lt!62190 lt!62180)))

(assert (=> b!185801 (= lt!62180 (++!736 lt!62187 lt!62183))))

(declare-fun lt!62184 () List!3112)

(assert (=> b!185801 (= lt!62190 (++!736 (++!736 lt!62187 lt!62184) lt!62173))))

(declare-fun lt!62172 () Unit!2882)

(declare-fun lemmaConcatAssociativity!254 (List!3112 List!3112 List!3112) Unit!2882)

(assert (=> b!185801 (= lt!62172 (lemmaConcatAssociativity!254 lt!62187 lt!62184 lt!62173))))

(declare-fun charsOf!220 (Token!874) BalanceConc!1912)

(assert (=> b!185801 (= lt!62187 (list!1143 (charsOf!220 (h!8501 tokens!465))))))

(assert (=> b!185801 (= lt!62183 (++!736 lt!62184 lt!62173))))

(assert (=> b!185801 (= lt!62173 (printWithSeparatorTokenWhenNeededList!144 thiss!17480 rules!1920 (t!28624 tokens!465) separatorToken!170))))

(assert (=> b!185801 (= lt!62184 (list!1143 (charsOf!220 separatorToken!170)))))

(assert (= (and start!20158 res!84586) b!185779))

(assert (= (and b!185779 res!84594) b!185775))

(assert (= (and b!185775 res!84592) b!185794))

(assert (= (and b!185794 res!84595) b!185786))

(assert (= (and b!185786 res!84584) b!185789))

(assert (= (and b!185789 res!84578) b!185767))

(assert (= (and b!185767 res!84573) b!185771))

(assert (= (and b!185771 res!84576) b!185788))

(assert (= (and b!185788 res!84591) b!185772))

(assert (= (and b!185772 res!84587) b!185783))

(assert (= (and b!185783 res!84581) b!185801))

(assert (= (and b!185801 (not res!84582)) b!185769))

(assert (= (and b!185769 res!84585) b!185768))

(assert (= (and b!185769 (not res!84577)) b!185770))

(assert (= (and b!185770 (not res!84583)) b!185784))

(assert (= (and b!185784 (not res!84579)) b!185773))

(assert (= (and b!185773 (not res!84572)) b!185795))

(assert (= (and b!185795 (not res!84575)) b!185787))

(assert (= (and b!185787 res!84596) b!185785))

(assert (= (and b!185785 res!84588) b!185798))

(assert (= (and b!185787 (not res!84593)) b!185797))

(assert (= (and b!185797 (not res!84589)) b!185774))

(assert (= (and b!185774 res!84597) b!185799))

(assert (= (and b!185797 (not res!84574)) b!185782))

(assert (= (and b!185782 (not res!84590)) b!185793))

(assert (= (and b!185793 (not res!84580)) b!185790))

(assert (= b!185791 b!185796))

(assert (= b!185766 b!185791))

(assert (= (and start!20158 ((_ is Cons!3103) rules!1920)) b!185766))

(assert (= b!185778 b!185800))

(assert (= b!185792 b!185778))

(assert (= start!20158 b!185792))

(assert (= b!185780 b!185776))

(assert (= b!185777 b!185780))

(assert (= b!185781 b!185777))

(assert (= (and start!20158 ((_ is Cons!3104) tokens!465)) b!185781))

(declare-fun m!189845 () Bool)

(assert (=> b!185786 m!189845))

(declare-fun m!189847 () Bool)

(assert (=> b!185792 m!189847))

(declare-fun m!189849 () Bool)

(assert (=> b!185799 m!189849))

(declare-fun m!189851 () Bool)

(assert (=> b!185799 m!189851))

(declare-fun m!189853 () Bool)

(assert (=> b!185785 m!189853))

(declare-fun m!189855 () Bool)

(assert (=> b!185781 m!189855))

(declare-fun m!189857 () Bool)

(assert (=> b!185801 m!189857))

(declare-fun m!189859 () Bool)

(assert (=> b!185801 m!189859))

(declare-fun m!189861 () Bool)

(assert (=> b!185801 m!189861))

(declare-fun m!189863 () Bool)

(assert (=> b!185801 m!189863))

(declare-fun m!189865 () Bool)

(assert (=> b!185801 m!189865))

(declare-fun m!189867 () Bool)

(assert (=> b!185801 m!189867))

(assert (=> b!185801 m!189865))

(assert (=> b!185801 m!189857))

(declare-fun m!189869 () Bool)

(assert (=> b!185801 m!189869))

(declare-fun m!189871 () Bool)

(assert (=> b!185801 m!189871))

(declare-fun m!189873 () Bool)

(assert (=> b!185801 m!189873))

(assert (=> b!185801 m!189859))

(declare-fun m!189875 () Bool)

(assert (=> b!185801 m!189875))

(declare-fun m!189877 () Bool)

(assert (=> b!185801 m!189877))

(assert (=> b!185801 m!189869))

(declare-fun m!189879 () Bool)

(assert (=> b!185801 m!189879))

(assert (=> b!185801 m!189875))

(declare-fun m!189881 () Bool)

(assert (=> b!185801 m!189881))

(declare-fun m!189883 () Bool)

(assert (=> start!20158 m!189883))

(declare-fun m!189885 () Bool)

(assert (=> b!185780 m!189885))

(declare-fun m!189887 () Bool)

(assert (=> b!185780 m!189887))

(declare-fun m!189889 () Bool)

(assert (=> b!185779 m!189889))

(declare-fun m!189891 () Bool)

(assert (=> b!185797 m!189891))

(declare-fun m!189893 () Bool)

(assert (=> b!185797 m!189893))

(declare-fun m!189895 () Bool)

(assert (=> b!185797 m!189895))

(declare-fun m!189897 () Bool)

(assert (=> b!185797 m!189897))

(declare-fun m!189899 () Bool)

(assert (=> b!185797 m!189899))

(declare-fun m!189901 () Bool)

(assert (=> b!185797 m!189901))

(declare-fun m!189903 () Bool)

(assert (=> b!185797 m!189903))

(assert (=> b!185797 m!189893))

(declare-fun m!189905 () Bool)

(assert (=> b!185797 m!189905))

(declare-fun m!189907 () Bool)

(assert (=> b!185797 m!189907))

(declare-fun m!189909 () Bool)

(assert (=> b!185778 m!189909))

(declare-fun m!189911 () Bool)

(assert (=> b!185778 m!189911))

(declare-fun m!189913 () Bool)

(assert (=> b!185798 m!189913))

(declare-fun m!189915 () Bool)

(assert (=> b!185794 m!189915))

(declare-fun m!189917 () Bool)

(assert (=> b!185794 m!189917))

(declare-fun m!189919 () Bool)

(assert (=> b!185784 m!189919))

(declare-fun m!189921 () Bool)

(assert (=> b!185773 m!189921))

(assert (=> b!185773 m!189921))

(declare-fun m!189923 () Bool)

(assert (=> b!185773 m!189923))

(declare-fun m!189925 () Bool)

(assert (=> b!185773 m!189925))

(declare-fun m!189927 () Bool)

(assert (=> b!185793 m!189927))

(declare-fun m!189929 () Bool)

(assert (=> b!185772 m!189929))

(assert (=> b!185772 m!189929))

(declare-fun m!189931 () Bool)

(assert (=> b!185772 m!189931))

(declare-fun m!189933 () Bool)

(assert (=> b!185772 m!189933))

(declare-fun m!189935 () Bool)

(assert (=> b!185783 m!189935))

(assert (=> b!185783 m!189935))

(declare-fun m!189937 () Bool)

(assert (=> b!185783 m!189937))

(declare-fun m!189939 () Bool)

(assert (=> b!185768 m!189939))

(declare-fun m!189941 () Bool)

(assert (=> b!185774 m!189941))

(assert (=> b!185774 m!189893))

(declare-fun m!189943 () Bool)

(assert (=> b!185787 m!189943))

(declare-fun m!189945 () Bool)

(assert (=> b!185787 m!189945))

(declare-fun m!189947 () Bool)

(assert (=> b!185787 m!189947))

(declare-fun m!189949 () Bool)

(assert (=> b!185771 m!189949))

(declare-fun m!189951 () Bool)

(assert (=> b!185767 m!189951))

(declare-fun m!189953 () Bool)

(assert (=> b!185770 m!189953))

(declare-fun m!189955 () Bool)

(assert (=> b!185770 m!189955))

(declare-fun m!189957 () Bool)

(assert (=> b!185770 m!189957))

(declare-fun m!189959 () Bool)

(assert (=> b!185770 m!189959))

(declare-fun m!189961 () Bool)

(assert (=> b!185770 m!189961))

(declare-fun m!189963 () Bool)

(assert (=> b!185795 m!189963))

(assert (=> b!185795 m!189963))

(declare-fun m!189965 () Bool)

(assert (=> b!185795 m!189965))

(assert (=> b!185795 m!189965))

(declare-fun m!189967 () Bool)

(assert (=> b!185795 m!189967))

(declare-fun m!189969 () Bool)

(assert (=> b!185795 m!189969))

(declare-fun m!189971 () Bool)

(assert (=> b!185775 m!189971))

(declare-fun m!189973 () Bool)

(assert (=> b!185791 m!189973))

(declare-fun m!189975 () Bool)

(assert (=> b!185791 m!189975))

(declare-fun m!189977 () Bool)

(assert (=> b!185777 m!189977))

(check-sat b_and!12791 (not b!185774) (not b!185791) (not b!185797) b_and!12783 (not b!185784) (not b!185810) (not b!185781) (not b!185783) b_and!12787 (not b!185795) (not b!185778) (not b!185779) (not b!185775) (not b!185798) (not b!185766) (not b!185799) (not b_next!7279) b_and!12789 (not b!185794) (not b!185771) (not b_next!7277) (not b!185801) (not b!185787) (not b!185770) b_and!12781 (not b!185780) (not b!185773) (not b!185792) (not b!185767) (not b!185785) (not b_next!7275) (not b!185772) (not b_next!7281) (not b!185768) (not start!20158) (not b_next!7273) (not b!185793) (not b!185777) b_and!12785 (not b_next!7283) (not b!185786))
(check-sat b_and!12791 (not b_next!7277) b_and!12783 b_and!12781 (not b_next!7275) b_and!12787 (not b_next!7281) (not b_next!7273) b_and!12785 (not b_next!7283) (not b_next!7279) b_and!12789)
