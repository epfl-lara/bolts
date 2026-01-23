; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20966 () Bool)

(assert start!20966)

(declare-fun b!194754 () Bool)

(declare-fun b_free!7697 () Bool)

(declare-fun b_next!7697 () Bool)

(assert (=> b!194754 (= b_free!7697 (not b_next!7697))))

(declare-fun tp!89219 () Bool)

(declare-fun b_and!13709 () Bool)

(assert (=> b!194754 (= tp!89219 b_and!13709)))

(declare-fun b_free!7699 () Bool)

(declare-fun b_next!7699 () Bool)

(assert (=> b!194754 (= b_free!7699 (not b_next!7699))))

(declare-fun tp!89221 () Bool)

(declare-fun b_and!13711 () Bool)

(assert (=> b!194754 (= tp!89221 b_and!13711)))

(declare-fun b!194733 () Bool)

(declare-fun b_free!7701 () Bool)

(declare-fun b_next!7701 () Bool)

(assert (=> b!194733 (= b_free!7701 (not b_next!7701))))

(declare-fun tp!89225 () Bool)

(declare-fun b_and!13713 () Bool)

(assert (=> b!194733 (= tp!89225 b_and!13713)))

(declare-fun b_free!7703 () Bool)

(declare-fun b_next!7703 () Bool)

(assert (=> b!194733 (= b_free!7703 (not b_next!7703))))

(declare-fun tp!89220 () Bool)

(declare-fun b_and!13715 () Bool)

(assert (=> b!194733 (= tp!89220 b_and!13715)))

(declare-fun b!194745 () Bool)

(declare-fun b_free!7705 () Bool)

(declare-fun b_next!7705 () Bool)

(assert (=> b!194745 (= b_free!7705 (not b_next!7705))))

(declare-fun tp!89223 () Bool)

(declare-fun b_and!13717 () Bool)

(assert (=> b!194745 (= tp!89223 b_and!13717)))

(declare-fun b_free!7707 () Bool)

(declare-fun b_next!7707 () Bool)

(assert (=> b!194745 (= b_free!7707 (not b_next!7707))))

(declare-fun tp!89217 () Bool)

(declare-fun b_and!13719 () Bool)

(assert (=> b!194745 (= tp!89217 b_and!13719)))

(declare-fun bs!19418 () Bool)

(declare-fun b!194741 () Bool)

(declare-fun b!194725 () Bool)

(assert (= bs!19418 (and b!194741 b!194725)))

(declare-fun lambda!5952 () Int)

(declare-fun lambda!5951 () Int)

(assert (=> bs!19418 (not (= lambda!5952 lambda!5951))))

(declare-fun b!194768 () Bool)

(declare-fun e!119707 () Bool)

(assert (=> b!194768 (= e!119707 true)))

(declare-fun b!194767 () Bool)

(declare-fun e!119706 () Bool)

(assert (=> b!194767 (= e!119706 e!119707)))

(declare-fun b!194766 () Bool)

(declare-fun e!119705 () Bool)

(assert (=> b!194766 (= e!119705 e!119706)))

(assert (=> b!194741 e!119705))

(assert (= b!194767 b!194768))

(assert (= b!194766 b!194767))

(declare-datatypes ((List!3237 0))(
  ( (Nil!3227) (Cons!3227 (h!8624 (_ BitVec 16)) (t!29525 List!3237)) )
))
(declare-datatypes ((TokenValue!617 0))(
  ( (FloatLiteralValue!1234 (text!4764 List!3237)) (TokenValueExt!616 (__x!2721 Int)) (Broken!3085 (value!21247 List!3237)) (Object!626) (End!617) (Def!617) (Underscore!617) (Match!617) (Else!617) (Error!617) (Case!617) (If!617) (Extends!617) (Abstract!617) (Class!617) (Val!617) (DelimiterValue!1234 (del!677 List!3237)) (KeywordValue!623 (value!21248 List!3237)) (CommentValue!1234 (value!21249 List!3237)) (WhitespaceValue!1234 (value!21250 List!3237)) (IndentationValue!617 (value!21251 List!3237)) (String!4164) (Int32!617) (Broken!3086 (value!21252 List!3237)) (Boolean!618) (Unit!3109) (OperatorValue!620 (op!677 List!3237)) (IdentifierValue!1234 (value!21253 List!3237)) (IdentifierValue!1235 (value!21254 List!3237)) (WhitespaceValue!1235 (value!21255 List!3237)) (True!1234) (False!1234) (Broken!3087 (value!21256 List!3237)) (Broken!3088 (value!21257 List!3237)) (True!1235) (RightBrace!617) (RightBracket!617) (Colon!617) (Null!617) (Comma!617) (LeftBracket!617) (False!1235) (LeftBrace!617) (ImaginaryLiteralValue!617 (text!4765 List!3237)) (StringLiteralValue!1851 (value!21258 List!3237)) (EOFValue!617 (value!21259 List!3237)) (IdentValue!617 (value!21260 List!3237)) (DelimiterValue!1235 (value!21261 List!3237)) (DedentValue!617 (value!21262 List!3237)) (NewLineValue!617 (value!21263 List!3237)) (IntegerValue!1851 (value!21264 (_ BitVec 32)) (text!4766 List!3237)) (IntegerValue!1852 (value!21265 Int) (text!4767 List!3237)) (Times!617) (Or!617) (Equal!617) (Minus!617) (Broken!3089 (value!21266 List!3237)) (And!617) (Div!617) (LessEqual!617) (Mod!617) (Concat!1436) (Not!617) (Plus!617) (SpaceValue!617 (value!21267 List!3237)) (IntegerValue!1853 (value!21268 Int) (text!4768 List!3237)) (StringLiteralValue!1852 (text!4769 List!3237)) (FloatLiteralValue!1235 (text!4770 List!3237)) (BytesLiteralValue!617 (value!21269 List!3237)) (CommentValue!1235 (value!21270 List!3237)) (StringLiteralValue!1853 (value!21271 List!3237)) (ErrorTokenValue!617 (msg!678 List!3237)) )
))
(declare-datatypes ((C!2560 0))(
  ( (C!2561 (val!1166 Int)) )
))
(declare-datatypes ((List!3238 0))(
  ( (Nil!3228) (Cons!3228 (h!8625 C!2560) (t!29526 List!3238)) )
))
(declare-datatypes ((IArray!2025 0))(
  ( (IArray!2026 (innerList!1070 List!3238)) )
))
(declare-datatypes ((Conc!1012 0))(
  ( (Node!1012 (left!2556 Conc!1012) (right!2886 Conc!1012) (csize!2254 Int) (cheight!1223 Int)) (Leaf!1649 (xs!3607 IArray!2025) (csize!2255 Int)) (Empty!1012) )
))
(declare-datatypes ((BalanceConc!2032 0))(
  ( (BalanceConc!2033 (c!37243 Conc!1012)) )
))
(declare-datatypes ((TokenValueInjection!1006 0))(
  ( (TokenValueInjection!1007 (toValue!1270 Int) (toChars!1129 Int)) )
))
(declare-datatypes ((String!4165 0))(
  ( (String!4166 (value!21272 String)) )
))
(declare-datatypes ((Regex!819 0))(
  ( (ElementMatch!819 (c!37244 C!2560)) (Concat!1437 (regOne!2150 Regex!819) (regTwo!2150 Regex!819)) (EmptyExpr!819) (Star!819 (reg!1148 Regex!819)) (EmptyLang!819) (Union!819 (regOne!2151 Regex!819) (regTwo!2151 Regex!819)) )
))
(declare-datatypes ((Rule!990 0))(
  ( (Rule!991 (regex!595 Regex!819) (tag!775 String!4165) (isSeparator!595 Bool) (transformation!595 TokenValueInjection!1006)) )
))
(declare-datatypes ((List!3239 0))(
  ( (Nil!3229) (Cons!3229 (h!8626 Rule!990) (t!29527 List!3239)) )
))
(declare-fun rules!1920 () List!3239)

(get-info :version)

(assert (= (and b!194741 ((_ is Cons!3229) rules!1920)) b!194766))

(declare-fun order!2055 () Int)

(declare-fun order!2053 () Int)

(declare-fun dynLambda!1385 (Int Int) Int)

(declare-fun dynLambda!1386 (Int Int) Int)

(assert (=> b!194768 (< (dynLambda!1385 order!2053 (toValue!1270 (transformation!595 (h!8626 rules!1920)))) (dynLambda!1386 order!2055 lambda!5952))))

(declare-fun order!2057 () Int)

(declare-fun dynLambda!1387 (Int Int) Int)

(assert (=> b!194768 (< (dynLambda!1387 order!2057 (toChars!1129 (transformation!595 (h!8626 rules!1920)))) (dynLambda!1386 order!2055 lambda!5952))))

(assert (=> b!194741 true))

(declare-fun b!194717 () Bool)

(declare-fun e!119695 () Bool)

(declare-datatypes ((Token!934 0))(
  ( (Token!935 (value!21273 TokenValue!617) (rule!1114 Rule!990) (size!2576 Int) (originalCharacters!638 List!3238)) )
))
(declare-fun separatorToken!170 () Token!934)

(declare-fun lt!67700 () Rule!990)

(assert (=> b!194717 (= e!119695 (= (rule!1114 separatorToken!170) lt!67700))))

(declare-fun b!194719 () Bool)

(declare-fun res!89199 () Bool)

(declare-fun e!119670 () Bool)

(assert (=> b!194719 (=> (not res!89199) (not e!119670))))

(declare-datatypes ((List!3240 0))(
  ( (Nil!3230) (Cons!3230 (h!8627 Token!934) (t!29528 List!3240)) )
))
(declare-datatypes ((IArray!2027 0))(
  ( (IArray!2028 (innerList!1071 List!3240)) )
))
(declare-datatypes ((Conc!1013 0))(
  ( (Node!1013 (left!2557 Conc!1013) (right!2887 Conc!1013) (csize!2256 Int) (cheight!1224 Int)) (Leaf!1650 (xs!3608 IArray!2027) (csize!2257 Int)) (Empty!1013) )
))
(declare-datatypes ((BalanceConc!2034 0))(
  ( (BalanceConc!2035 (c!37245 Conc!1013)) )
))
(declare-datatypes ((tuple2!3326 0))(
  ( (tuple2!3327 (_1!1879 BalanceConc!2034) (_2!1879 BalanceConc!2032)) )
))
(declare-fun lt!67721 () tuple2!3326)

(declare-fun apply!502 (BalanceConc!2034 Int) Token!934)

(assert (=> b!194719 (= res!89199 (= (apply!502 (_1!1879 lt!67721) 0) separatorToken!170))))

(declare-fun b!194720 () Bool)

(declare-fun res!89193 () Bool)

(declare-fun e!119674 () Bool)

(assert (=> b!194720 (=> (not res!89193) (not e!119674))))

(declare-fun lt!67697 () List!3238)

(declare-fun lt!67706 () List!3238)

(declare-fun list!1189 (BalanceConc!2032) List!3238)

(declare-fun seqFromList!567 (List!3238) BalanceConc!2032)

(assert (=> b!194720 (= res!89193 (= (list!1189 (seqFromList!567 lt!67697)) lt!67706))))

(declare-fun b!194721 () Bool)

(declare-fun res!89186 () Bool)

(declare-fun e!119688 () Bool)

(assert (=> b!194721 (=> res!89186 e!119688)))

(declare-datatypes ((LexerInterface!481 0))(
  ( (LexerInterfaceExt!478 (__x!2722 Int)) (Lexer!479) )
))
(declare-fun thiss!17480 () LexerInterface!481)

(declare-fun lt!67717 () List!3238)

(declare-fun isEmpty!1628 (BalanceConc!2034) Bool)

(declare-fun lex!281 (LexerInterface!481 List!3239 BalanceConc!2032) tuple2!3326)

(assert (=> b!194721 (= res!89186 (isEmpty!1628 (_1!1879 (lex!281 thiss!17480 rules!1920 (seqFromList!567 lt!67717)))))))

(declare-fun b!194722 () Bool)

(declare-datatypes ((Unit!3110 0))(
  ( (Unit!3111) )
))
(declare-fun e!119672 () Unit!3110)

(declare-fun Unit!3112 () Unit!3110)

(assert (=> b!194722 (= e!119672 Unit!3112)))

(declare-fun e!119678 () Bool)

(declare-fun b!194723 () Bool)

(declare-fun e!119684 () Bool)

(declare-fun tp!89216 () Bool)

(declare-fun inv!4054 (String!4165) Bool)

(declare-fun inv!4057 (TokenValueInjection!1006) Bool)

(assert (=> b!194723 (= e!119678 (and tp!89216 (inv!4054 (tag!775 (rule!1114 separatorToken!170))) (inv!4057 (transformation!595 (rule!1114 separatorToken!170))) e!119684))))

(declare-fun e!119671 () Bool)

(declare-fun b!194724 () Bool)

(declare-fun lt!67715 () List!3238)

(declare-fun ++!776 (List!3238 List!3238) List!3238)

(assert (=> b!194724 (= e!119671 (not (= lt!67697 (++!776 lt!67717 lt!67715))))))

(declare-fun res!89210 () Bool)

(declare-fun e!119686 () Bool)

(assert (=> b!194725 (=> (not res!89210) (not e!119686))))

(declare-fun tokens!465 () List!3240)

(declare-fun forall!683 (List!3240 Int) Bool)

(assert (=> b!194725 (= res!89210 (forall!683 tokens!465 lambda!5951))))

(declare-fun b!194726 () Bool)

(declare-fun e!119683 () Bool)

(declare-datatypes ((tuple2!3328 0))(
  ( (tuple2!3329 (_1!1880 Token!934) (_2!1880 List!3238)) )
))
(declare-datatypes ((Option!477 0))(
  ( (None!476) (Some!476 (v!13997 tuple2!3328)) )
))
(declare-fun lt!67695 () Option!477)

(declare-fun get!944 (Option!477) tuple2!3328)

(declare-fun head!686 (List!3240) Token!934)

(assert (=> b!194726 (= e!119683 (= (_1!1880 (get!944 lt!67695)) (head!686 tokens!465)))))

(declare-fun b!194727 () Bool)

(declare-fun res!89190 () Bool)

(declare-fun e!119681 () Bool)

(assert (=> b!194727 (=> (not res!89190) (not e!119681))))

(declare-fun lt!67714 () tuple2!3326)

(declare-fun lt!67723 () Token!934)

(assert (=> b!194727 (= res!89190 (= (apply!502 (_1!1879 lt!67714) 0) lt!67723))))

(declare-fun b!194728 () Bool)

(declare-fun e!119677 () Bool)

(assert (=> b!194728 (= e!119677 e!119688)))

(declare-fun res!89192 () Bool)

(assert (=> b!194728 (=> res!89192 e!119688)))

(declare-fun lt!67725 () List!3238)

(declare-fun lt!67705 () List!3238)

(assert (=> b!194728 (= res!89192 (or (not (= lt!67705 lt!67725)) (not (= lt!67725 lt!67717)) (not (= lt!67705 lt!67717))))))

(declare-fun printList!165 (LexerInterface!481 List!3240) List!3238)

(assert (=> b!194728 (= lt!67725 (printList!165 thiss!17480 (Cons!3230 (h!8627 tokens!465) Nil!3230)))))

(declare-fun lt!67696 () BalanceConc!2032)

(assert (=> b!194728 (= lt!67705 (list!1189 lt!67696))))

(declare-fun lt!67727 () BalanceConc!2034)

(declare-fun printTailRec!175 (LexerInterface!481 BalanceConc!2034 Int BalanceConc!2032) BalanceConc!2032)

(assert (=> b!194728 (= lt!67696 (printTailRec!175 thiss!17480 lt!67727 0 (BalanceConc!2033 Empty!1012)))))

(declare-fun print!212 (LexerInterface!481 BalanceConc!2034) BalanceConc!2032)

(assert (=> b!194728 (= lt!67696 (print!212 thiss!17480 lt!67727))))

(declare-fun singletonSeq!147 (Token!934) BalanceConc!2034)

(assert (=> b!194728 (= lt!67727 (singletonSeq!147 (h!8627 tokens!465)))))

(declare-fun b!194729 () Bool)

(declare-fun e!119698 () Bool)

(assert (=> b!194729 (= e!119698 e!119686)))

(declare-fun res!89191 () Bool)

(assert (=> b!194729 (=> (not res!89191) (not e!119686))))

(declare-fun lt!67709 () BalanceConc!2034)

(declare-fun rulesProduceEachTokenIndividually!273 (LexerInterface!481 List!3239 BalanceConc!2034) Bool)

(assert (=> b!194729 (= res!89191 (rulesProduceEachTokenIndividually!273 thiss!17480 rules!1920 lt!67709))))

(declare-fun seqFromList!568 (List!3240) BalanceConc!2034)

(assert (=> b!194729 (= lt!67709 (seqFromList!568 tokens!465))))

(declare-fun res!89201 () Bool)

(assert (=> start!20966 (=> (not res!89201) (not e!119698))))

(assert (=> start!20966 (= res!89201 ((_ is Lexer!479) thiss!17480))))

(assert (=> start!20966 e!119698))

(assert (=> start!20966 true))

(declare-fun e!119673 () Bool)

(assert (=> start!20966 e!119673))

(declare-fun e!119667 () Bool)

(declare-fun inv!4058 (Token!934) Bool)

(assert (=> start!20966 (and (inv!4058 separatorToken!170) e!119667)))

(declare-fun e!119691 () Bool)

(assert (=> start!20966 e!119691))

(declare-fun e!119694 () Bool)

(declare-fun b!194718 () Bool)

(declare-fun tp!89215 () Bool)

(assert (=> b!194718 (= e!119691 (and (inv!4058 (h!8627 tokens!465)) e!119694 tp!89215))))

(declare-fun b!194730 () Bool)

(declare-fun res!89211 () Bool)

(assert (=> b!194730 (=> (not res!89211) (not e!119686))))

(assert (=> b!194730 (= res!89211 ((_ is Cons!3230) tokens!465))))

(declare-fun b!194731 () Bool)

(declare-fun e!119668 () Bool)

(assert (=> b!194731 (= e!119668 e!119683)))

(declare-fun res!89189 () Bool)

(assert (=> b!194731 (=> (not res!89189) (not e!119683))))

(declare-fun isDefined!328 (Option!477) Bool)

(assert (=> b!194731 (= res!89189 (isDefined!328 lt!67695))))

(declare-fun maxPrefix!211 (LexerInterface!481 List!3239 List!3238) Option!477)

(assert (=> b!194731 (= lt!67695 (maxPrefix!211 thiss!17480 rules!1920 lt!67697))))

(declare-fun b!194732 () Bool)

(declare-fun e!119690 () Bool)

(declare-fun matchR!157 (Regex!819 List!3238) Bool)

(assert (=> b!194732 (= e!119690 (matchR!157 (regex!595 (rule!1114 (h!8627 tokens!465))) lt!67717))))

(declare-fun e!119682 () Bool)

(assert (=> b!194733 (= e!119682 (and tp!89225 tp!89220))))

(declare-fun b!194734 () Bool)

(declare-fun isEmpty!1629 (BalanceConc!2032) Bool)

(assert (=> b!194734 (= e!119670 (isEmpty!1629 (_2!1879 lt!67721)))))

(declare-fun b!194735 () Bool)

(declare-fun e!119697 () Bool)

(assert (=> b!194735 (= e!119697 true)))

(declare-fun lt!67718 () Option!477)

(declare-fun charsOf!250 (Token!934) BalanceConc!2032)

(assert (=> b!194735 (= lt!67718 (maxPrefix!211 thiss!17480 rules!1920 (list!1189 (charsOf!250 lt!67723))))))

(declare-fun lt!67716 () Unit!3110)

(declare-fun forallContained!162 (List!3240 Int Token!934) Unit!3110)

(assert (=> b!194735 (= lt!67716 (forallContained!162 tokens!465 lambda!5952 lt!67723))))

(assert (=> b!194735 e!119681))

(declare-fun res!89194 () Bool)

(assert (=> b!194735 (=> (not res!89194) (not e!119681))))

(declare-fun size!2577 (BalanceConc!2034) Int)

(assert (=> b!194735 (= res!89194 (= (size!2577 (_1!1879 lt!67714)) 1))))

(declare-fun lt!67693 () BalanceConc!2032)

(assert (=> b!194735 (= lt!67714 (lex!281 thiss!17480 rules!1920 lt!67693))))

(declare-fun lt!67703 () BalanceConc!2034)

(assert (=> b!194735 (= lt!67693 (printTailRec!175 thiss!17480 lt!67703 0 (BalanceConc!2033 Empty!1012)))))

(assert (=> b!194735 (= lt!67693 (print!212 thiss!17480 lt!67703))))

(assert (=> b!194735 (= lt!67703 (singletonSeq!147 lt!67723))))

(declare-fun e!119696 () Bool)

(assert (=> b!194735 e!119696))

(declare-fun res!89200 () Bool)

(assert (=> b!194735 (=> (not res!89200) (not e!119696))))

(declare-datatypes ((Option!478 0))(
  ( (None!477) (Some!477 (v!13998 Rule!990)) )
))
(declare-fun lt!67704 () Option!478)

(declare-fun isDefined!329 (Option!478) Bool)

(assert (=> b!194735 (= res!89200 (isDefined!329 lt!67704))))

(declare-fun getRuleFromTag!36 (LexerInterface!481 List!3239 String!4165) Option!478)

(assert (=> b!194735 (= lt!67704 (getRuleFromTag!36 thiss!17480 rules!1920 (tag!775 (rule!1114 separatorToken!170))))))

(declare-fun lt!67707 () List!3238)

(declare-fun lt!67698 () Unit!3110)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!36 (LexerInterface!481 List!3239 List!3238 Token!934) Unit!3110)

(assert (=> b!194735 (= lt!67698 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!36 thiss!17480 rules!1920 lt!67707 separatorToken!170))))

(assert (=> b!194735 e!119670))

(declare-fun res!89205 () Bool)

(assert (=> b!194735 (=> (not res!89205) (not e!119670))))

(assert (=> b!194735 (= res!89205 (= (size!2577 (_1!1879 lt!67721)) 1))))

(declare-fun lt!67692 () BalanceConc!2032)

(assert (=> b!194735 (= lt!67721 (lex!281 thiss!17480 rules!1920 lt!67692))))

(declare-fun lt!67713 () BalanceConc!2034)

(assert (=> b!194735 (= lt!67692 (printTailRec!175 thiss!17480 lt!67713 0 (BalanceConc!2033 Empty!1012)))))

(assert (=> b!194735 (= lt!67692 (print!212 thiss!17480 lt!67713))))

(assert (=> b!194735 (= lt!67713 (singletonSeq!147 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!230 (LexerInterface!481 List!3239 Token!934) Bool)

(assert (=> b!194735 (rulesProduceIndividualToken!230 thiss!17480 rules!1920 lt!67723)))

(declare-fun lt!67726 () Unit!3110)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!48 (LexerInterface!481 List!3239 List!3240 Token!934) Unit!3110)

(assert (=> b!194735 (= lt!67726 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!48 thiss!17480 rules!1920 tokens!465 lt!67723))))

(assert (=> b!194735 (= lt!67723 (head!686 (t!29528 tokens!465)))))

(declare-fun lt!67702 () Unit!3110)

(assert (=> b!194735 (= lt!67702 e!119672)))

(declare-fun c!37242 () Bool)

(declare-fun isEmpty!1630 (List!3240) Bool)

(assert (=> b!194735 (= c!37242 (isEmpty!1630 (t!29528 tokens!465)))))

(declare-fun lt!67691 () List!3238)

(declare-fun lt!67712 () Option!477)

(assert (=> b!194735 (= lt!67712 (maxPrefix!211 thiss!17480 rules!1920 lt!67691))))

(declare-fun lt!67708 () tuple2!3328)

(assert (=> b!194735 (= lt!67691 (_2!1880 lt!67708))))

(declare-fun lt!67699 () Unit!3110)

(declare-fun lemmaSamePrefixThenSameSuffix!116 (List!3238 List!3238 List!3238 List!3238 List!3238) Unit!3110)

(assert (=> b!194735 (= lt!67699 (lemmaSamePrefixThenSameSuffix!116 lt!67717 lt!67691 lt!67717 (_2!1880 lt!67708) lt!67697))))

(assert (=> b!194735 (= lt!67708 (get!944 (maxPrefix!211 thiss!17480 rules!1920 lt!67697)))))

(declare-fun lt!67719 () List!3238)

(declare-fun isPrefix!291 (List!3238 List!3238) Bool)

(assert (=> b!194735 (isPrefix!291 lt!67717 lt!67719)))

(declare-fun lt!67720 () Unit!3110)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!186 (List!3238 List!3238) Unit!3110)

(assert (=> b!194735 (= lt!67720 (lemmaConcatTwoListThenFirstIsPrefix!186 lt!67717 lt!67691))))

(assert (=> b!194735 e!119668))

(declare-fun res!89208 () Bool)

(assert (=> b!194735 (=> res!89208 e!119668)))

(assert (=> b!194735 (= res!89208 (isEmpty!1630 tokens!465))))

(declare-fun lt!67728 () Unit!3110)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!56 (LexerInterface!481 List!3239 List!3240 Token!934) Unit!3110)

(assert (=> b!194735 (= lt!67728 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!56 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!89218 () Bool)

(declare-fun b!194736 () Bool)

(declare-fun e!119676 () Bool)

(declare-fun inv!21 (TokenValue!617) Bool)

(assert (=> b!194736 (= e!119694 (and (inv!21 (value!21273 (h!8627 tokens!465))) e!119676 tp!89218))))

(declare-fun b!194737 () Bool)

(declare-fun tp!89214 () Bool)

(assert (=> b!194737 (= e!119667 (and (inv!21 (value!21273 separatorToken!170)) e!119678 tp!89214))))

(declare-fun b!194738 () Bool)

(declare-fun res!89203 () Bool)

(assert (=> b!194738 (=> res!89203 e!119688)))

(assert (=> b!194738 (= res!89203 (not (rulesProduceIndividualToken!230 thiss!17480 rules!1920 (h!8627 tokens!465))))))

(declare-fun b!194739 () Bool)

(assert (=> b!194739 (= e!119686 e!119674)))

(declare-fun res!89183 () Bool)

(assert (=> b!194739 (=> (not res!89183) (not e!119674))))

(assert (=> b!194739 (= res!89183 (= lt!67697 lt!67706))))

(declare-fun printWithSeparatorTokenWhenNeededRec!164 (LexerInterface!481 List!3239 BalanceConc!2034 Token!934 Int) BalanceConc!2032)

(assert (=> b!194739 (= lt!67706 (list!1189 (printWithSeparatorTokenWhenNeededRec!164 thiss!17480 rules!1920 lt!67709 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!174 (LexerInterface!481 List!3239 List!3240 Token!934) List!3238)

(assert (=> b!194739 (= lt!67697 (printWithSeparatorTokenWhenNeededList!174 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!194740 () Bool)

(declare-fun e!119675 () Bool)

(declare-fun tp!89222 () Bool)

(assert (=> b!194740 (= e!119673 (and e!119675 tp!89222))))

(declare-fun e!119679 () Bool)

(assert (=> b!194741 (= e!119688 e!119679)))

(declare-fun res!89185 () Bool)

(assert (=> b!194741 (=> res!89185 e!119679)))

(declare-datatypes ((tuple2!3330 0))(
  ( (tuple2!3331 (_1!1881 Token!934) (_2!1881 BalanceConc!2032)) )
))
(declare-datatypes ((Option!479 0))(
  ( (None!478) (Some!478 (v!13999 tuple2!3330)) )
))
(declare-fun isDefined!330 (Option!479) Bool)

(declare-fun maxPrefixZipperSequence!174 (LexerInterface!481 List!3239 BalanceConc!2032) Option!479)

(assert (=> b!194741 (= res!89185 (not (isDefined!330 (maxPrefixZipperSequence!174 thiss!17480 rules!1920 (seqFromList!567 (originalCharacters!638 (h!8627 tokens!465)))))))))

(declare-fun lt!67711 () Unit!3110)

(assert (=> b!194741 (= lt!67711 (forallContained!162 tokens!465 lambda!5952 (h!8627 tokens!465)))))

(assert (=> b!194741 (= lt!67717 (originalCharacters!638 (h!8627 tokens!465)))))

(declare-fun b!194742 () Bool)

(declare-fun res!89197 () Bool)

(assert (=> b!194742 (=> (not res!89197) (not e!119690))))

(declare-fun lt!67724 () tuple2!3328)

(declare-fun isEmpty!1631 (List!3238) Bool)

(assert (=> b!194742 (= res!89197 (isEmpty!1631 (_2!1880 lt!67724)))))

(declare-fun b!194743 () Bool)

(declare-fun Unit!3113 () Unit!3110)

(assert (=> b!194743 (= e!119672 Unit!3113)))

(assert (=> b!194743 false))

(declare-fun tp!89213 () Bool)

(declare-fun b!194744 () Bool)

(assert (=> b!194744 (= e!119676 (and tp!89213 (inv!4054 (tag!775 (rule!1114 (h!8627 tokens!465)))) (inv!4057 (transformation!595 (rule!1114 (h!8627 tokens!465)))) e!119682))))

(declare-fun e!119669 () Bool)

(assert (=> b!194745 (= e!119669 (and tp!89223 tp!89217))))

(declare-fun b!194746 () Bool)

(declare-fun res!89187 () Bool)

(assert (=> b!194746 (=> (not res!89187) (not e!119698))))

(declare-fun isEmpty!1632 (List!3239) Bool)

(assert (=> b!194746 (= res!89187 (not (isEmpty!1632 rules!1920)))))

(declare-fun b!194747 () Bool)

(assert (=> b!194747 (= e!119696 e!119695)))

(declare-fun res!89202 () Bool)

(assert (=> b!194747 (=> (not res!89202) (not e!119695))))

(assert (=> b!194747 (= res!89202 (matchR!157 (regex!595 lt!67700) lt!67707))))

(declare-fun get!945 (Option!478) Rule!990)

(assert (=> b!194747 (= lt!67700 (get!945 lt!67704))))

(declare-fun b!194748 () Bool)

(declare-fun res!89209 () Bool)

(assert (=> b!194748 (=> (not res!89209) (not e!119686))))

(assert (=> b!194748 (= res!89209 (isSeparator!595 (rule!1114 separatorToken!170)))))

(declare-fun b!194749 () Bool)

(declare-fun e!119693 () Bool)

(assert (=> b!194749 (= e!119674 (not e!119693))))

(declare-fun res!89204 () Bool)

(assert (=> b!194749 (=> res!89204 e!119693)))

(assert (=> b!194749 (= res!89204 (not (= lt!67715 (list!1189 (printWithSeparatorTokenWhenNeededRec!164 thiss!17480 rules!1920 (seqFromList!568 (t!29528 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!67710 () List!3238)

(assert (=> b!194749 (= lt!67710 lt!67719)))

(assert (=> b!194749 (= lt!67719 (++!776 lt!67717 lt!67691))))

(assert (=> b!194749 (= lt!67710 (++!776 (++!776 lt!67717 lt!67707) lt!67715))))

(declare-fun lt!67694 () Unit!3110)

(declare-fun lemmaConcatAssociativity!286 (List!3238 List!3238 List!3238) Unit!3110)

(assert (=> b!194749 (= lt!67694 (lemmaConcatAssociativity!286 lt!67717 lt!67707 lt!67715))))

(assert (=> b!194749 (= lt!67717 (list!1189 (charsOf!250 (h!8627 tokens!465))))))

(assert (=> b!194749 (= lt!67691 (++!776 lt!67707 lt!67715))))

(assert (=> b!194749 (= lt!67715 (printWithSeparatorTokenWhenNeededList!174 thiss!17480 rules!1920 (t!29528 tokens!465) separatorToken!170))))

(assert (=> b!194749 (= lt!67707 (list!1189 (charsOf!250 separatorToken!170)))))

(declare-fun b!194750 () Bool)

(declare-fun tp!89224 () Bool)

(assert (=> b!194750 (= e!119675 (and tp!89224 (inv!4054 (tag!775 (h!8626 rules!1920))) (inv!4057 (transformation!595 (h!8626 rules!1920))) e!119669))))

(declare-fun b!194751 () Bool)

(declare-fun res!89184 () Bool)

(assert (=> b!194751 (=> (not res!89184) (not e!119698))))

(declare-fun rulesInvariant!447 (LexerInterface!481 List!3239) Bool)

(assert (=> b!194751 (= res!89184 (rulesInvariant!447 thiss!17480 rules!1920))))

(declare-fun b!194752 () Bool)

(assert (=> b!194752 (= e!119681 (isEmpty!1629 (_2!1879 lt!67714)))))

(declare-fun b!194753 () Bool)

(assert (=> b!194753 (= e!119679 e!119697)))

(declare-fun res!89195 () Bool)

(assert (=> b!194753 (=> res!89195 e!119697)))

(declare-fun lt!67701 () Bool)

(assert (=> b!194753 (= res!89195 (not lt!67701))))

(assert (=> b!194753 e!119690))

(declare-fun res!89207 () Bool)

(assert (=> b!194753 (=> (not res!89207) (not e!119690))))

(assert (=> b!194753 (= res!89207 (= (_1!1880 lt!67724) (h!8627 tokens!465)))))

(declare-fun lt!67722 () Option!477)

(assert (=> b!194753 (= lt!67724 (get!944 lt!67722))))

(assert (=> b!194753 (isDefined!328 lt!67722)))

(assert (=> b!194753 (= lt!67722 (maxPrefix!211 thiss!17480 rules!1920 lt!67717))))

(assert (=> b!194754 (= e!119684 (and tp!89219 tp!89221))))

(declare-fun b!194755 () Bool)

(assert (=> b!194755 (= e!119693 e!119677)))

(declare-fun res!89198 () Bool)

(assert (=> b!194755 (=> res!89198 e!119677)))

(assert (=> b!194755 (= res!89198 e!119671)))

(declare-fun res!89196 () Bool)

(assert (=> b!194755 (=> (not res!89196) (not e!119671))))

(assert (=> b!194755 (= res!89196 (not lt!67701))))

(assert (=> b!194755 (= lt!67701 (= lt!67697 lt!67719))))

(declare-fun b!194756 () Bool)

(declare-fun res!89188 () Bool)

(assert (=> b!194756 (=> (not res!89188) (not e!119686))))

(assert (=> b!194756 (= res!89188 (rulesProduceIndividualToken!230 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!194757 () Bool)

(declare-fun res!89206 () Bool)

(assert (=> b!194757 (=> (not res!89206) (not e!119686))))

(declare-fun sepAndNonSepRulesDisjointChars!184 (List!3239 List!3239) Bool)

(assert (=> b!194757 (= res!89206 (sepAndNonSepRulesDisjointChars!184 rules!1920 rules!1920))))

(assert (= (and start!20966 res!89201) b!194746))

(assert (= (and b!194746 res!89187) b!194751))

(assert (= (and b!194751 res!89184) b!194729))

(assert (= (and b!194729 res!89191) b!194756))

(assert (= (and b!194756 res!89188) b!194748))

(assert (= (and b!194748 res!89209) b!194725))

(assert (= (and b!194725 res!89210) b!194757))

(assert (= (and b!194757 res!89206) b!194730))

(assert (= (and b!194730 res!89211) b!194739))

(assert (= (and b!194739 res!89183) b!194720))

(assert (= (and b!194720 res!89193) b!194749))

(assert (= (and b!194749 (not res!89204)) b!194755))

(assert (= (and b!194755 res!89196) b!194724))

(assert (= (and b!194755 (not res!89198)) b!194728))

(assert (= (and b!194728 (not res!89192)) b!194738))

(assert (= (and b!194738 (not res!89203)) b!194721))

(assert (= (and b!194721 (not res!89186)) b!194741))

(assert (= (and b!194741 (not res!89185)) b!194753))

(assert (= (and b!194753 res!89207) b!194742))

(assert (= (and b!194742 res!89197) b!194732))

(assert (= (and b!194753 (not res!89195)) b!194735))

(assert (= (and b!194735 (not res!89208)) b!194731))

(assert (= (and b!194731 res!89189) b!194726))

(assert (= (and b!194735 c!37242) b!194743))

(assert (= (and b!194735 (not c!37242)) b!194722))

(assert (= (and b!194735 res!89205) b!194719))

(assert (= (and b!194719 res!89199) b!194734))

(assert (= (and b!194735 res!89200) b!194747))

(assert (= (and b!194747 res!89202) b!194717))

(assert (= (and b!194735 res!89194) b!194727))

(assert (= (and b!194727 res!89190) b!194752))

(assert (= b!194750 b!194745))

(assert (= b!194740 b!194750))

(assert (= (and start!20966 ((_ is Cons!3229) rules!1920)) b!194740))

(assert (= b!194723 b!194754))

(assert (= b!194737 b!194723))

(assert (= start!20966 b!194737))

(assert (= b!194744 b!194733))

(assert (= b!194736 b!194744))

(assert (= b!194718 b!194736))

(assert (= (and start!20966 ((_ is Cons!3230) tokens!465)) b!194718))

(declare-fun m!204807 () Bool)

(assert (=> b!194746 m!204807))

(declare-fun m!204809 () Bool)

(assert (=> b!194742 m!204809))

(declare-fun m!204811 () Bool)

(assert (=> b!194736 m!204811))

(declare-fun m!204813 () Bool)

(assert (=> b!194734 m!204813))

(declare-fun m!204815 () Bool)

(assert (=> b!194727 m!204815))

(declare-fun m!204817 () Bool)

(assert (=> b!194723 m!204817))

(declare-fun m!204819 () Bool)

(assert (=> b!194723 m!204819))

(declare-fun m!204821 () Bool)

(assert (=> b!194735 m!204821))

(declare-fun m!204823 () Bool)

(assert (=> b!194735 m!204823))

(declare-fun m!204825 () Bool)

(assert (=> b!194735 m!204825))

(declare-fun m!204827 () Bool)

(assert (=> b!194735 m!204827))

(declare-fun m!204829 () Bool)

(assert (=> b!194735 m!204829))

(declare-fun m!204831 () Bool)

(assert (=> b!194735 m!204831))

(declare-fun m!204833 () Bool)

(assert (=> b!194735 m!204833))

(declare-fun m!204835 () Bool)

(assert (=> b!194735 m!204835))

(declare-fun m!204837 () Bool)

(assert (=> b!194735 m!204837))

(declare-fun m!204839 () Bool)

(assert (=> b!194735 m!204839))

(declare-fun m!204841 () Bool)

(assert (=> b!194735 m!204841))

(declare-fun m!204843 () Bool)

(assert (=> b!194735 m!204843))

(declare-fun m!204845 () Bool)

(assert (=> b!194735 m!204845))

(declare-fun m!204847 () Bool)

(assert (=> b!194735 m!204847))

(declare-fun m!204849 () Bool)

(assert (=> b!194735 m!204849))

(assert (=> b!194735 m!204837))

(declare-fun m!204851 () Bool)

(assert (=> b!194735 m!204851))

(declare-fun m!204853 () Bool)

(assert (=> b!194735 m!204853))

(declare-fun m!204855 () Bool)

(assert (=> b!194735 m!204855))

(declare-fun m!204857 () Bool)

(assert (=> b!194735 m!204857))

(declare-fun m!204859 () Bool)

(assert (=> b!194735 m!204859))

(declare-fun m!204861 () Bool)

(assert (=> b!194735 m!204861))

(assert (=> b!194735 m!204833))

(declare-fun m!204863 () Bool)

(assert (=> b!194735 m!204863))

(declare-fun m!204865 () Bool)

(assert (=> b!194735 m!204865))

(declare-fun m!204867 () Bool)

(assert (=> b!194735 m!204867))

(declare-fun m!204869 () Bool)

(assert (=> b!194735 m!204869))

(declare-fun m!204871 () Bool)

(assert (=> b!194735 m!204871))

(declare-fun m!204873 () Bool)

(assert (=> b!194735 m!204873))

(assert (=> b!194735 m!204831))

(declare-fun m!204875 () Bool)

(assert (=> b!194735 m!204875))

(declare-fun m!204877 () Bool)

(assert (=> b!194735 m!204877))

(declare-fun m!204879 () Bool)

(assert (=> b!194732 m!204879))

(declare-fun m!204881 () Bool)

(assert (=> b!194720 m!204881))

(assert (=> b!194720 m!204881))

(declare-fun m!204883 () Bool)

(assert (=> b!194720 m!204883))

(declare-fun m!204885 () Bool)

(assert (=> b!194744 m!204885))

(declare-fun m!204887 () Bool)

(assert (=> b!194744 m!204887))

(declare-fun m!204889 () Bool)

(assert (=> b!194729 m!204889))

(declare-fun m!204891 () Bool)

(assert (=> b!194729 m!204891))

(declare-fun m!204893 () Bool)

(assert (=> b!194731 m!204893))

(assert (=> b!194731 m!204837))

(declare-fun m!204895 () Bool)

(assert (=> b!194728 m!204895))

(declare-fun m!204897 () Bool)

(assert (=> b!194728 m!204897))

(declare-fun m!204899 () Bool)

(assert (=> b!194728 m!204899))

(declare-fun m!204901 () Bool)

(assert (=> b!194728 m!204901))

(declare-fun m!204903 () Bool)

(assert (=> b!194728 m!204903))

(declare-fun m!204905 () Bool)

(assert (=> b!194753 m!204905))

(declare-fun m!204907 () Bool)

(assert (=> b!194753 m!204907))

(declare-fun m!204909 () Bool)

(assert (=> b!194753 m!204909))

(declare-fun m!204911 () Bool)

(assert (=> b!194721 m!204911))

(assert (=> b!194721 m!204911))

(declare-fun m!204913 () Bool)

(assert (=> b!194721 m!204913))

(declare-fun m!204915 () Bool)

(assert (=> b!194721 m!204915))

(declare-fun m!204917 () Bool)

(assert (=> b!194750 m!204917))

(declare-fun m!204919 () Bool)

(assert (=> b!194750 m!204919))

(declare-fun m!204921 () Bool)

(assert (=> b!194738 m!204921))

(declare-fun m!204923 () Bool)

(assert (=> b!194739 m!204923))

(assert (=> b!194739 m!204923))

(declare-fun m!204925 () Bool)

(assert (=> b!194739 m!204925))

(declare-fun m!204927 () Bool)

(assert (=> b!194739 m!204927))

(declare-fun m!204929 () Bool)

(assert (=> b!194747 m!204929))

(declare-fun m!204931 () Bool)

(assert (=> b!194747 m!204931))

(declare-fun m!204933 () Bool)

(assert (=> b!194752 m!204933))

(declare-fun m!204935 () Bool)

(assert (=> start!20966 m!204935))

(declare-fun m!204937 () Bool)

(assert (=> b!194741 m!204937))

(assert (=> b!194741 m!204937))

(declare-fun m!204939 () Bool)

(assert (=> b!194741 m!204939))

(assert (=> b!194741 m!204939))

(declare-fun m!204941 () Bool)

(assert (=> b!194741 m!204941))

(declare-fun m!204943 () Bool)

(assert (=> b!194741 m!204943))

(declare-fun m!204945 () Bool)

(assert (=> b!194751 m!204945))

(declare-fun m!204947 () Bool)

(assert (=> b!194725 m!204947))

(declare-fun m!204949 () Bool)

(assert (=> b!194749 m!204949))

(declare-fun m!204951 () Bool)

(assert (=> b!194749 m!204951))

(declare-fun m!204953 () Bool)

(assert (=> b!194749 m!204953))

(declare-fun m!204955 () Bool)

(assert (=> b!194749 m!204955))

(declare-fun m!204957 () Bool)

(assert (=> b!194749 m!204957))

(assert (=> b!194749 m!204955))

(assert (=> b!194749 m!204949))

(declare-fun m!204959 () Bool)

(assert (=> b!194749 m!204959))

(declare-fun m!204961 () Bool)

(assert (=> b!194749 m!204961))

(declare-fun m!204963 () Bool)

(assert (=> b!194749 m!204963))

(declare-fun m!204965 () Bool)

(assert (=> b!194749 m!204965))

(assert (=> b!194749 m!204961))

(declare-fun m!204967 () Bool)

(assert (=> b!194749 m!204967))

(assert (=> b!194749 m!204959))

(declare-fun m!204969 () Bool)

(assert (=> b!194749 m!204969))

(declare-fun m!204971 () Bool)

(assert (=> b!194749 m!204971))

(assert (=> b!194749 m!204953))

(declare-fun m!204973 () Bool)

(assert (=> b!194749 m!204973))

(declare-fun m!204975 () Bool)

(assert (=> b!194718 m!204975))

(declare-fun m!204977 () Bool)

(assert (=> b!194757 m!204977))

(declare-fun m!204979 () Bool)

(assert (=> b!194756 m!204979))

(declare-fun m!204981 () Bool)

(assert (=> b!194719 m!204981))

(declare-fun m!204983 () Bool)

(assert (=> b!194724 m!204983))

(declare-fun m!204985 () Bool)

(assert (=> b!194726 m!204985))

(declare-fun m!204987 () Bool)

(assert (=> b!194726 m!204987))

(declare-fun m!204989 () Bool)

(assert (=> b!194737 m!204989))

(check-sat b_and!13715 (not b!194723) (not b!194735) (not b!194732) b_and!13717 (not b!194724) (not b!194725) (not b_next!7697) (not b!194746) (not b_next!7701) (not b!194737) b_and!13719 (not b!194719) (not b!194752) (not b_next!7707) (not b!194742) (not b!194744) (not b!194753) (not b!194729) (not b!194739) (not b!194750) (not b!194718) (not b_next!7699) (not start!20966) (not b!194756) (not b!194727) (not b!194751) (not b!194738) (not b!194749) (not b!194734) (not b!194720) (not b!194726) (not b!194721) b_and!13709 (not b!194728) (not b!194740) (not b_next!7703) b_and!13713 (not b!194757) (not b!194741) (not b!194747) (not b!194736) (not b!194731) (not b_next!7705) b_and!13711 (not b!194766))
(check-sat b_and!13715 b_and!13719 (not b_next!7707) (not b_next!7699) b_and!13709 b_and!13717 (not b_next!7705) b_and!13711 (not b_next!7697) (not b_next!7701) (not b_next!7703) b_and!13713)
