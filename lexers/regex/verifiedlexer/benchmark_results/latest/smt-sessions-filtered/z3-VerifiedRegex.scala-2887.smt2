; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!168662 () Bool)

(assert start!168662)

(declare-fun b!1720913 () Bool)

(declare-fun b_free!46883 () Bool)

(declare-fun b_next!47587 () Bool)

(assert (=> b!1720913 (= b_free!46883 (not b_next!47587))))

(declare-fun tp!491371 () Bool)

(declare-fun b_and!125639 () Bool)

(assert (=> b!1720913 (= tp!491371 b_and!125639)))

(declare-fun b_free!46885 () Bool)

(declare-fun b_next!47589 () Bool)

(assert (=> b!1720913 (= b_free!46885 (not b_next!47589))))

(declare-fun tp!491366 () Bool)

(declare-fun b_and!125641 () Bool)

(assert (=> b!1720913 (= tp!491366 b_and!125641)))

(declare-fun b!1720921 () Bool)

(declare-fun b_free!46887 () Bool)

(declare-fun b_next!47591 () Bool)

(assert (=> b!1720921 (= b_free!46887 (not b_next!47591))))

(declare-fun tp!491367 () Bool)

(declare-fun b_and!125643 () Bool)

(assert (=> b!1720921 (= tp!491367 b_and!125643)))

(declare-fun b_free!46889 () Bool)

(declare-fun b_next!47593 () Bool)

(assert (=> b!1720921 (= b_free!46889 (not b_next!47593))))

(declare-fun tp!491373 () Bool)

(declare-fun b_and!125645 () Bool)

(assert (=> b!1720921 (= tp!491373 b_and!125645)))

(declare-fun b!1720923 () Bool)

(declare-fun b_free!46891 () Bool)

(declare-fun b_next!47595 () Bool)

(assert (=> b!1720923 (= b_free!46891 (not b_next!47595))))

(declare-fun tp!491376 () Bool)

(declare-fun b_and!125647 () Bool)

(assert (=> b!1720923 (= tp!491376 b_and!125647)))

(declare-fun b_free!46893 () Bool)

(declare-fun b_next!47597 () Bool)

(assert (=> b!1720923 (= b_free!46893 (not b_next!47597))))

(declare-fun tp!491375 () Bool)

(declare-fun b_and!125649 () Bool)

(assert (=> b!1720923 (= tp!491375 b_and!125649)))

(declare-fun b!1720952 () Bool)

(declare-fun e!1100723 () Bool)

(assert (=> b!1720952 (= e!1100723 true)))

(declare-fun b!1720951 () Bool)

(declare-fun e!1100722 () Bool)

(assert (=> b!1720951 (= e!1100722 e!1100723)))

(declare-fun b!1720950 () Bool)

(declare-fun e!1100721 () Bool)

(assert (=> b!1720950 (= e!1100721 e!1100722)))

(declare-fun b!1720934 () Bool)

(assert (=> b!1720934 e!1100721))

(assert (= b!1720951 b!1720952))

(assert (= b!1720950 b!1720951))

(assert (= b!1720934 b!1720950))

(declare-fun lambda!69110 () Int)

(declare-fun order!11463 () Int)

(declare-datatypes ((List!18900 0))(
  ( (Nil!18830) (Cons!18830 (h!24231 (_ BitVec 16)) (t!159467 List!18900)) )
))
(declare-datatypes ((TokenValue!3425 0))(
  ( (FloatLiteralValue!6850 (text!24420 List!18900)) (TokenValueExt!3424 (__x!12152 Int)) (Broken!17125 (value!104694 List!18900)) (Object!3494) (End!3425) (Def!3425) (Underscore!3425) (Match!3425) (Else!3425) (Error!3425) (Case!3425) (If!3425) (Extends!3425) (Abstract!3425) (Class!3425) (Val!3425) (DelimiterValue!6850 (del!3485 List!18900)) (KeywordValue!3431 (value!104695 List!18900)) (CommentValue!6850 (value!104696 List!18900)) (WhitespaceValue!6850 (value!104697 List!18900)) (IndentationValue!3425 (value!104698 List!18900)) (String!21456) (Int32!3425) (Broken!17126 (value!104699 List!18900)) (Boolean!3426) (Unit!32670) (OperatorValue!3428 (op!3485 List!18900)) (IdentifierValue!6850 (value!104700 List!18900)) (IdentifierValue!6851 (value!104701 List!18900)) (WhitespaceValue!6851 (value!104702 List!18900)) (True!6850) (False!6850) (Broken!17127 (value!104703 List!18900)) (Broken!17128 (value!104704 List!18900)) (True!6851) (RightBrace!3425) (RightBracket!3425) (Colon!3425) (Null!3425) (Comma!3425) (LeftBracket!3425) (False!6851) (LeftBrace!3425) (ImaginaryLiteralValue!3425 (text!24421 List!18900)) (StringLiteralValue!10275 (value!104705 List!18900)) (EOFValue!3425 (value!104706 List!18900)) (IdentValue!3425 (value!104707 List!18900)) (DelimiterValue!6851 (value!104708 List!18900)) (DedentValue!3425 (value!104709 List!18900)) (NewLineValue!3425 (value!104710 List!18900)) (IntegerValue!10275 (value!104711 (_ BitVec 32)) (text!24422 List!18900)) (IntegerValue!10276 (value!104712 Int) (text!24423 List!18900)) (Times!3425) (Or!3425) (Equal!3425) (Minus!3425) (Broken!17129 (value!104713 List!18900)) (And!3425) (Div!3425) (LessEqual!3425) (Mod!3425) (Concat!8088) (Not!3425) (Plus!3425) (SpaceValue!3425 (value!104714 List!18900)) (IntegerValue!10277 (value!104715 Int) (text!24424 List!18900)) (StringLiteralValue!10276 (text!24425 List!18900)) (FloatLiteralValue!6851 (text!24426 List!18900)) (BytesLiteralValue!3425 (value!104716 List!18900)) (CommentValue!6851 (value!104717 List!18900)) (StringLiteralValue!10277 (value!104718 List!18900)) (ErrorTokenValue!3425 (msg!3486 List!18900)) )
))
(declare-datatypes ((C!9500 0))(
  ( (C!9501 (val!5346 Int)) )
))
(declare-datatypes ((List!18901 0))(
  ( (Nil!18831) (Cons!18831 (h!24232 C!9500) (t!159468 List!18901)) )
))
(declare-datatypes ((Regex!4663 0))(
  ( (ElementMatch!4663 (c!281610 C!9500)) (Concat!8089 (regOne!9838 Regex!4663) (regTwo!9838 Regex!4663)) (EmptyExpr!4663) (Star!4663 (reg!4992 Regex!4663)) (EmptyLang!4663) (Union!4663 (regOne!9839 Regex!4663) (regTwo!9839 Regex!4663)) )
))
(declare-datatypes ((String!21457 0))(
  ( (String!21458 (value!104719 String)) )
))
(declare-datatypes ((IArray!12531 0))(
  ( (IArray!12532 (innerList!6323 List!18901)) )
))
(declare-datatypes ((Conc!6263 0))(
  ( (Node!6263 (left!15024 Conc!6263) (right!15354 Conc!6263) (csize!12756 Int) (cheight!6474 Int)) (Leaf!9151 (xs!9139 IArray!12531) (csize!12757 Int)) (Empty!6263) )
))
(declare-datatypes ((BalanceConc!12470 0))(
  ( (BalanceConc!12471 (c!281611 Conc!6263)) )
))
(declare-datatypes ((TokenValueInjection!6510 0))(
  ( (TokenValueInjection!6511 (toValue!4842 Int) (toChars!4701 Int)) )
))
(declare-datatypes ((Rule!6470 0))(
  ( (Rule!6471 (regex!3335 Regex!4663) (tag!3645 String!21457) (isSeparator!3335 Bool) (transformation!3335 TokenValueInjection!6510)) )
))
(declare-datatypes ((Token!6236 0))(
  ( (Token!6237 (value!104720 TokenValue!3425) (rule!5281 Rule!6470) (size!14962 Int) (originalCharacters!4149 List!18901)) )
))
(declare-datatypes ((tuple2!18526 0))(
  ( (tuple2!18527 (_1!10665 Token!6236) (_2!10665 List!18901)) )
))
(declare-fun lt!658217 () tuple2!18526)

(declare-fun order!11465 () Int)

(declare-fun dynLambda!8662 (Int Int) Int)

(declare-fun dynLambda!8663 (Int Int) Int)

(assert (=> b!1720952 (< (dynLambda!8662 order!11463 (toValue!4842 (transformation!3335 (rule!5281 (_1!10665 lt!658217))))) (dynLambda!8663 order!11465 lambda!69110))))

(declare-fun order!11467 () Int)

(declare-fun dynLambda!8664 (Int Int) Int)

(assert (=> b!1720952 (< (dynLambda!8664 order!11467 (toChars!4701 (transformation!3335 (rule!5281 (_1!10665 lt!658217))))) (dynLambda!8663 order!11465 lambda!69110))))

(declare-fun e!1100708 () Bool)

(assert (=> b!1720913 (= e!1100708 (and tp!491371 tp!491366))))

(declare-fun b!1720914 () Bool)

(declare-fun res!772045 () Bool)

(declare-fun e!1100706 () Bool)

(assert (=> b!1720914 (=> res!772045 e!1100706)))

(declare-fun suffix!1421 () List!18901)

(declare-datatypes ((LexerInterface!2964 0))(
  ( (LexerInterfaceExt!2961 (__x!12153 Int)) (Lexer!2962) )
))
(declare-fun thiss!24550 () LexerInterface!2964)

(declare-datatypes ((List!18902 0))(
  ( (Nil!18832) (Cons!18832 (h!24233 Rule!6470) (t!159469 List!18902)) )
))
(declare-fun rules!3447 () List!18902)

(declare-fun lt!658214 () List!18901)

(declare-fun prefixMatch!548 (Regex!4663 List!18901) Bool)

(declare-fun rulesRegex!693 (LexerInterface!2964 List!18902) Regex!4663)

(declare-fun ++!5160 (List!18901 List!18901) List!18901)

(declare-fun head!3888 (List!18901) C!9500)

(assert (=> b!1720914 (= res!772045 (prefixMatch!548 (rulesRegex!693 thiss!24550 rules!3447) (++!5160 lt!658214 (Cons!18831 (head!3888 suffix!1421) Nil!18831))))))

(declare-fun b!1720915 () Bool)

(declare-fun res!772047 () Bool)

(declare-fun e!1100705 () Bool)

(assert (=> b!1720915 (=> (not res!772047) (not e!1100705))))

(declare-fun rulesInvariant!2633 (LexerInterface!2964 List!18902) Bool)

(assert (=> b!1720915 (= res!772047 (rulesInvariant!2633 thiss!24550 rules!3447))))

(declare-fun b!1720916 () Bool)

(declare-fun res!772055 () Bool)

(declare-fun e!1100709 () Bool)

(assert (=> b!1720916 (=> res!772055 e!1100709)))

(declare-fun lt!658206 () List!18901)

(declare-fun matchR!2137 (Regex!4663 List!18901) Bool)

(assert (=> b!1720916 (= res!772055 (not (matchR!2137 (regex!3335 (rule!5281 (_1!10665 lt!658217))) lt!658206)))))

(declare-fun b!1720917 () Bool)

(declare-fun e!1100707 () Bool)

(declare-fun e!1100701 () Bool)

(assert (=> b!1720917 (= e!1100707 e!1100701)))

(declare-fun res!772059 () Bool)

(assert (=> b!1720917 (=> res!772059 e!1100701)))

(declare-fun lt!658209 () BalanceConc!12470)

(declare-fun list!7608 (BalanceConc!12470) List!18901)

(declare-fun dynLambda!8665 (Int TokenValue!3425) BalanceConc!12470)

(declare-fun dynLambda!8666 (Int BalanceConc!12470) TokenValue!3425)

(assert (=> b!1720917 (= res!772059 (not (= (list!7608 (dynLambda!8665 (toChars!4701 (transformation!3335 (rule!5281 (_1!10665 lt!658217)))) (dynLambda!8666 (toValue!4842 (transformation!3335 (rule!5281 (_1!10665 lt!658217)))) lt!658209))) lt!658206)))))

(declare-datatypes ((Unit!32671 0))(
  ( (Unit!32672) )
))
(declare-fun lt!658212 () Unit!32671)

(declare-fun lemmaSemiInverse!481 (TokenValueInjection!6510 BalanceConc!12470) Unit!32671)

(assert (=> b!1720917 (= lt!658212 (lemmaSemiInverse!481 (transformation!3335 (rule!5281 (_1!10665 lt!658217))) lt!658209))))

(declare-fun b!1720918 () Bool)

(declare-fun e!1100694 () Bool)

(declare-fun e!1100696 () Bool)

(declare-fun token!523 () Token!6236)

(declare-fun tp!491372 () Bool)

(declare-fun inv!21 (TokenValue!3425) Bool)

(assert (=> b!1720918 (= e!1100696 (and (inv!21 (value!104720 token!523)) e!1100694 tp!491372))))

(declare-fun b!1720919 () Bool)

(declare-fun e!1100711 () Bool)

(assert (=> b!1720919 (= e!1100711 (not e!1100706))))

(declare-fun res!772062 () Bool)

(assert (=> b!1720919 (=> res!772062 e!1100706)))

(declare-fun rule!422 () Rule!6470)

(assert (=> b!1720919 (= res!772062 (not (matchR!2137 (regex!3335 rule!422) lt!658214)))))

(declare-fun ruleValid!834 (LexerInterface!2964 Rule!6470) Bool)

(assert (=> b!1720919 (ruleValid!834 thiss!24550 rule!422)))

(declare-fun lt!658220 () Unit!32671)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!358 (LexerInterface!2964 Rule!6470 List!18902) Unit!32671)

(assert (=> b!1720919 (= lt!658220 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!358 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1720920 () Bool)

(declare-fun e!1100714 () Bool)

(declare-fun lt!658202 () Rule!6470)

(assert (=> b!1720920 (= e!1100714 (= (rule!5281 (_1!10665 lt!658217)) lt!658202))))

(declare-fun e!1100713 () Bool)

(assert (=> b!1720921 (= e!1100713 (and tp!491367 tp!491373))))

(declare-fun b!1720922 () Bool)

(declare-fun e!1100703 () Bool)

(declare-fun tp!491365 () Bool)

(declare-fun e!1100692 () Bool)

(declare-fun inv!24312 (String!21457) Bool)

(declare-fun inv!24317 (TokenValueInjection!6510) Bool)

(assert (=> b!1720922 (= e!1100703 (and tp!491365 (inv!24312 (tag!3645 rule!422)) (inv!24317 (transformation!3335 rule!422)) e!1100692))))

(declare-fun res!772061 () Bool)

(assert (=> start!168662 (=> (not res!772061) (not e!1100705))))

(get-info :version)

(assert (=> start!168662 (= res!772061 ((_ is Lexer!2962) thiss!24550))))

(assert (=> start!168662 e!1100705))

(declare-fun e!1100693 () Bool)

(assert (=> start!168662 e!1100693))

(assert (=> start!168662 e!1100703))

(assert (=> start!168662 true))

(declare-fun inv!24318 (Token!6236) Bool)

(assert (=> start!168662 (and (inv!24318 token!523) e!1100696)))

(declare-fun e!1100695 () Bool)

(assert (=> start!168662 e!1100695))

(assert (=> b!1720923 (= e!1100692 (and tp!491376 tp!491375))))

(declare-fun e!1100691 () Bool)

(declare-fun tp!491370 () Bool)

(declare-fun b!1720924 () Bool)

(assert (=> b!1720924 (= e!1100691 (and tp!491370 (inv!24312 (tag!3645 (h!24233 rules!3447))) (inv!24317 (transformation!3335 (h!24233 rules!3447))) e!1100708))))

(declare-fun b!1720925 () Bool)

(declare-fun e!1100712 () Bool)

(assert (=> b!1720925 (= e!1100701 e!1100712)))

(declare-fun res!772057 () Bool)

(assert (=> b!1720925 (=> res!772057 e!1100712)))

(declare-datatypes ((Option!3694 0))(
  ( (None!3693) (Some!3693 (v!25096 tuple2!18526)) )
))
(declare-fun lt!658222 () Option!3694)

(declare-fun apply!5140 (TokenValueInjection!6510 BalanceConc!12470) TokenValue!3425)

(declare-fun size!14963 (BalanceConc!12470) Int)

(assert (=> b!1720925 (= res!772057 (not (= lt!658222 (Some!3693 (tuple2!18527 (Token!6237 (apply!5140 (transformation!3335 (rule!5281 (_1!10665 lt!658217))) lt!658209) (rule!5281 (_1!10665 lt!658217)) (size!14963 lt!658209) lt!658206) (_2!10665 lt!658217))))))))

(declare-fun lt!658210 () Unit!32671)

(declare-fun lemmaCharactersSize!407 (Token!6236) Unit!32671)

(assert (=> b!1720925 (= lt!658210 (lemmaCharactersSize!407 (_1!10665 lt!658217)))))

(declare-fun lt!658219 () Unit!32671)

(declare-fun lemmaEqSameImage!260 (TokenValueInjection!6510 BalanceConc!12470 BalanceConc!12470) Unit!32671)

(declare-fun seqFromList!2309 (List!18901) BalanceConc!12470)

(assert (=> b!1720925 (= lt!658219 (lemmaEqSameImage!260 (transformation!3335 (rule!5281 (_1!10665 lt!658217))) lt!658209 (seqFromList!2309 (originalCharacters!4149 (_1!10665 lt!658217)))))))

(declare-fun b!1720926 () Bool)

(declare-fun res!772063 () Bool)

(assert (=> b!1720926 (=> (not res!772063) (not e!1100711))))

(declare-fun lt!658203 () tuple2!18526)

(declare-fun isEmpty!11841 (List!18901) Bool)

(assert (=> b!1720926 (= res!772063 (isEmpty!11841 (_2!10665 lt!658203)))))

(declare-fun b!1720927 () Bool)

(declare-fun res!772053 () Bool)

(assert (=> b!1720927 (=> (not res!772053) (not e!1100705))))

(declare-fun isEmpty!11842 (List!18902) Bool)

(assert (=> b!1720927 (= res!772053 (not (isEmpty!11842 rules!3447)))))

(declare-fun b!1720928 () Bool)

(declare-fun e!1100698 () Bool)

(assert (=> b!1720928 (= e!1100698 true)))

(declare-fun lt!658204 () List!18901)

(assert (=> b!1720928 (= lt!658204 (++!5160 lt!658214 Nil!18831))))

(declare-fun b!1720929 () Bool)

(declare-fun res!772046 () Bool)

(assert (=> b!1720929 (=> res!772046 e!1100701)))

(assert (=> b!1720929 (= res!772046 (not (= lt!658209 (dynLambda!8665 (toChars!4701 (transformation!3335 (rule!5281 (_1!10665 lt!658217)))) (value!104720 (_1!10665 lt!658217))))))))

(declare-fun b!1720930 () Bool)

(declare-fun res!772049 () Bool)

(assert (=> b!1720930 (=> res!772049 e!1100706)))

(assert (=> b!1720930 (= res!772049 (isEmpty!11841 suffix!1421))))

(declare-fun b!1720931 () Bool)

(declare-fun e!1100704 () Bool)

(assert (=> b!1720931 (= e!1100704 e!1100714)))

(declare-fun res!772054 () Bool)

(assert (=> b!1720931 (=> (not res!772054) (not e!1100714))))

(declare-fun charsOf!1984 (Token!6236) BalanceConc!12470)

(assert (=> b!1720931 (= res!772054 (matchR!2137 (regex!3335 lt!658202) (list!7608 (charsOf!1984 (_1!10665 lt!658217)))))))

(declare-datatypes ((Option!3695 0))(
  ( (None!3694) (Some!3694 (v!25097 Rule!6470)) )
))
(declare-fun lt!658201 () Option!3695)

(declare-fun get!5579 (Option!3695) Rule!6470)

(assert (=> b!1720931 (= lt!658202 (get!5579 lt!658201))))

(declare-fun b!1720932 () Bool)

(declare-fun tp_is_empty!7569 () Bool)

(declare-fun tp!491374 () Bool)

(assert (=> b!1720932 (= e!1100693 (and tp_is_empty!7569 tp!491374))))

(declare-fun b!1720933 () Bool)

(declare-fun tp!491368 () Bool)

(assert (=> b!1720933 (= e!1100695 (and e!1100691 tp!491368))))

(assert (=> b!1720934 (= e!1100709 e!1100707)))

(declare-fun res!772058 () Bool)

(assert (=> b!1720934 (=> res!772058 e!1100707)))

(declare-fun Forall!710 (Int) Bool)

(assert (=> b!1720934 (= res!772058 (not (Forall!710 lambda!69110)))))

(declare-fun lt!658205 () Unit!32671)

(declare-fun lemmaInv!542 (TokenValueInjection!6510) Unit!32671)

(assert (=> b!1720934 (= lt!658205 (lemmaInv!542 (transformation!3335 (rule!5281 (_1!10665 lt!658217)))))))

(declare-fun b!1720935 () Bool)

(declare-fun e!1100702 () Bool)

(assert (=> b!1720935 (= e!1100702 e!1100711)))

(declare-fun res!772052 () Bool)

(assert (=> b!1720935 (=> (not res!772052) (not e!1100711))))

(assert (=> b!1720935 (= res!772052 (= (_1!10665 lt!658203) token!523))))

(declare-fun lt!658199 () Option!3694)

(declare-fun get!5580 (Option!3694) tuple2!18526)

(assert (=> b!1720935 (= lt!658203 (get!5580 lt!658199))))

(declare-fun b!1720936 () Bool)

(assert (=> b!1720936 (= e!1100705 e!1100702)))

(declare-fun res!772064 () Bool)

(assert (=> b!1720936 (=> (not res!772064) (not e!1100702))))

(declare-fun isDefined!3037 (Option!3694) Bool)

(assert (=> b!1720936 (= res!772064 (isDefined!3037 lt!658199))))

(declare-fun maxPrefix!1518 (LexerInterface!2964 List!18902 List!18901) Option!3694)

(assert (=> b!1720936 (= lt!658199 (maxPrefix!1518 thiss!24550 rules!3447 lt!658214))))

(assert (=> b!1720936 (= lt!658214 (list!7608 (charsOf!1984 token!523)))))

(declare-fun b!1720937 () Bool)

(declare-fun res!772050 () Bool)

(assert (=> b!1720937 (=> (not res!772050) (not e!1100711))))

(assert (=> b!1720937 (= res!772050 (= (rule!5281 token!523) rule!422))))

(declare-fun b!1720938 () Bool)

(assert (=> b!1720938 (= e!1100712 e!1100698)))

(declare-fun res!772060 () Bool)

(assert (=> b!1720938 (=> res!772060 e!1100698)))

(declare-fun lt!658213 () List!18901)

(declare-fun lt!658218 () Option!3694)

(assert (=> b!1720938 (= res!772060 (or (not (= lt!658213 (_2!10665 lt!658217))) (not (= lt!658218 (Some!3693 (tuple2!18527 (_1!10665 lt!658217) lt!658213)))) (not (= lt!658199 (Some!3693 (tuple2!18527 token!523 Nil!18831))))))))

(assert (=> b!1720938 (= (_2!10665 lt!658217) lt!658213)))

(declare-fun lt!658208 () Unit!32671)

(declare-fun lt!658207 () List!18901)

(declare-fun lemmaSamePrefixThenSameSuffix!720 (List!18901 List!18901 List!18901 List!18901 List!18901) Unit!32671)

(assert (=> b!1720938 (= lt!658208 (lemmaSamePrefixThenSameSuffix!720 lt!658206 (_2!10665 lt!658217) lt!658206 lt!658213 lt!658207))))

(declare-fun getSuffix!770 (List!18901 List!18901) List!18901)

(assert (=> b!1720938 (= lt!658213 (getSuffix!770 lt!658207 lt!658206))))

(declare-fun lt!658197 () Int)

(declare-fun lt!658211 () TokenValue!3425)

(assert (=> b!1720938 (= lt!658218 (Some!3693 (tuple2!18527 (Token!6237 lt!658211 (rule!5281 (_1!10665 lt!658217)) lt!658197 lt!658206) (_2!10665 lt!658217))))))

(declare-fun maxPrefixOneRule!894 (LexerInterface!2964 Rule!6470 List!18901) Option!3694)

(assert (=> b!1720938 (= lt!658218 (maxPrefixOneRule!894 thiss!24550 (rule!5281 (_1!10665 lt!658217)) lt!658207))))

(declare-fun size!14964 (List!18901) Int)

(assert (=> b!1720938 (= lt!658197 (size!14964 lt!658206))))

(assert (=> b!1720938 (= lt!658211 (apply!5140 (transformation!3335 (rule!5281 (_1!10665 lt!658217))) (seqFromList!2309 lt!658206)))))

(declare-fun lt!658200 () Unit!32671)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!293 (LexerInterface!2964 List!18902 List!18901 List!18901 List!18901 Rule!6470) Unit!32671)

(assert (=> b!1720938 (= lt!658200 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!293 thiss!24550 rules!3447 lt!658206 lt!658207 (_2!10665 lt!658217) (rule!5281 (_1!10665 lt!658217))))))

(declare-fun b!1720939 () Bool)

(declare-fun res!772048 () Bool)

(assert (=> b!1720939 (=> (not res!772048) (not e!1100705))))

(declare-fun contains!3357 (List!18902 Rule!6470) Bool)

(assert (=> b!1720939 (= res!772048 (contains!3357 rules!3447 rule!422))))

(declare-fun tp!491369 () Bool)

(declare-fun b!1720940 () Bool)

(assert (=> b!1720940 (= e!1100694 (and tp!491369 (inv!24312 (tag!3645 (rule!5281 token!523))) (inv!24317 (transformation!3335 (rule!5281 token!523))) e!1100713))))

(declare-fun b!1720941 () Bool)

(assert (=> b!1720941 (= e!1100706 e!1100709)))

(declare-fun res!772056 () Bool)

(assert (=> b!1720941 (=> res!772056 e!1100709)))

(declare-fun isPrefix!1576 (List!18901 List!18901) Bool)

(assert (=> b!1720941 (= res!772056 (not (isPrefix!1576 lt!658206 lt!658207)))))

(assert (=> b!1720941 (isPrefix!1576 lt!658206 (++!5160 lt!658206 (_2!10665 lt!658217)))))

(declare-fun lt!658216 () Unit!32671)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1086 (List!18901 List!18901) Unit!32671)

(assert (=> b!1720941 (= lt!658216 (lemmaConcatTwoListThenFirstIsPrefix!1086 lt!658206 (_2!10665 lt!658217)))))

(assert (=> b!1720941 (= lt!658206 (list!7608 lt!658209))))

(assert (=> b!1720941 (= lt!658209 (charsOf!1984 (_1!10665 lt!658217)))))

(assert (=> b!1720941 e!1100704))

(declare-fun res!772051 () Bool)

(assert (=> b!1720941 (=> (not res!772051) (not e!1100704))))

(declare-fun isDefined!3038 (Option!3695) Bool)

(assert (=> b!1720941 (= res!772051 (isDefined!3038 lt!658201))))

(declare-fun getRuleFromTag!385 (LexerInterface!2964 List!18902 String!21457) Option!3695)

(assert (=> b!1720941 (= lt!658201 (getRuleFromTag!385 thiss!24550 rules!3447 (tag!3645 (rule!5281 (_1!10665 lt!658217)))))))

(declare-fun lt!658198 () Unit!32671)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!385 (LexerInterface!2964 List!18902 List!18901 Token!6236) Unit!32671)

(assert (=> b!1720941 (= lt!658198 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!385 thiss!24550 rules!3447 lt!658207 (_1!10665 lt!658217)))))

(assert (=> b!1720941 (= lt!658217 (get!5580 lt!658222))))

(declare-fun lt!658221 () Unit!32671)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!488 (LexerInterface!2964 List!18902 List!18901 List!18901) Unit!32671)

(assert (=> b!1720941 (= lt!658221 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!488 thiss!24550 rules!3447 lt!658214 suffix!1421))))

(assert (=> b!1720941 (= lt!658222 (maxPrefix!1518 thiss!24550 rules!3447 lt!658207))))

(assert (=> b!1720941 (isPrefix!1576 lt!658214 lt!658207)))

(declare-fun lt!658215 () Unit!32671)

(assert (=> b!1720941 (= lt!658215 (lemmaConcatTwoListThenFirstIsPrefix!1086 lt!658214 suffix!1421))))

(assert (=> b!1720941 (= lt!658207 (++!5160 lt!658214 suffix!1421))))

(assert (= (and start!168662 res!772061) b!1720927))

(assert (= (and b!1720927 res!772053) b!1720915))

(assert (= (and b!1720915 res!772047) b!1720939))

(assert (= (and b!1720939 res!772048) b!1720936))

(assert (= (and b!1720936 res!772064) b!1720935))

(assert (= (and b!1720935 res!772052) b!1720926))

(assert (= (and b!1720926 res!772063) b!1720937))

(assert (= (and b!1720937 res!772050) b!1720919))

(assert (= (and b!1720919 (not res!772062)) b!1720930))

(assert (= (and b!1720930 (not res!772049)) b!1720914))

(assert (= (and b!1720914 (not res!772045)) b!1720941))

(assert (= (and b!1720941 res!772051) b!1720931))

(assert (= (and b!1720931 res!772054) b!1720920))

(assert (= (and b!1720941 (not res!772056)) b!1720916))

(assert (= (and b!1720916 (not res!772055)) b!1720934))

(assert (= (and b!1720934 (not res!772058)) b!1720917))

(assert (= (and b!1720917 (not res!772059)) b!1720929))

(assert (= (and b!1720929 (not res!772046)) b!1720925))

(assert (= (and b!1720925 (not res!772057)) b!1720938))

(assert (= (and b!1720938 (not res!772060)) b!1720928))

(assert (= (and start!168662 ((_ is Cons!18831) suffix!1421)) b!1720932))

(assert (= b!1720922 b!1720923))

(assert (= start!168662 b!1720922))

(assert (= b!1720940 b!1720921))

(assert (= b!1720918 b!1720940))

(assert (= start!168662 b!1720918))

(assert (= b!1720924 b!1720913))

(assert (= b!1720933 b!1720924))

(assert (= (and start!168662 ((_ is Cons!18832) rules!3447)) b!1720933))

(declare-fun b_lambda!54567 () Bool)

(assert (=> (not b_lambda!54567) (not b!1720917)))

(declare-fun t!159450 () Bool)

(declare-fun tb!101985 () Bool)

(assert (=> (and b!1720913 (= (toChars!4701 (transformation!3335 (h!24233 rules!3447))) (toChars!4701 (transformation!3335 (rule!5281 (_1!10665 lt!658217))))) t!159450) tb!101985))

(declare-fun e!1100726 () Bool)

(declare-fun b!1720957 () Bool)

(declare-fun tp!491379 () Bool)

(declare-fun inv!24319 (Conc!6263) Bool)

(assert (=> b!1720957 (= e!1100726 (and (inv!24319 (c!281611 (dynLambda!8665 (toChars!4701 (transformation!3335 (rule!5281 (_1!10665 lt!658217)))) (dynLambda!8666 (toValue!4842 (transformation!3335 (rule!5281 (_1!10665 lt!658217)))) lt!658209)))) tp!491379))))

(declare-fun result!122580 () Bool)

(declare-fun inv!24320 (BalanceConc!12470) Bool)

(assert (=> tb!101985 (= result!122580 (and (inv!24320 (dynLambda!8665 (toChars!4701 (transformation!3335 (rule!5281 (_1!10665 lt!658217)))) (dynLambda!8666 (toValue!4842 (transformation!3335 (rule!5281 (_1!10665 lt!658217)))) lt!658209))) e!1100726))))

(assert (= tb!101985 b!1720957))

(declare-fun m!2126491 () Bool)

(assert (=> b!1720957 m!2126491))

(declare-fun m!2126493 () Bool)

(assert (=> tb!101985 m!2126493))

(assert (=> b!1720917 t!159450))

(declare-fun b_and!125651 () Bool)

(assert (= b_and!125641 (and (=> t!159450 result!122580) b_and!125651)))

(declare-fun t!159452 () Bool)

(declare-fun tb!101987 () Bool)

(assert (=> (and b!1720921 (= (toChars!4701 (transformation!3335 (rule!5281 token!523))) (toChars!4701 (transformation!3335 (rule!5281 (_1!10665 lt!658217))))) t!159452) tb!101987))

(declare-fun result!122584 () Bool)

(assert (= result!122584 result!122580))

(assert (=> b!1720917 t!159452))

(declare-fun b_and!125653 () Bool)

(assert (= b_and!125645 (and (=> t!159452 result!122584) b_and!125653)))

(declare-fun t!159454 () Bool)

(declare-fun tb!101989 () Bool)

(assert (=> (and b!1720923 (= (toChars!4701 (transformation!3335 rule!422)) (toChars!4701 (transformation!3335 (rule!5281 (_1!10665 lt!658217))))) t!159454) tb!101989))

(declare-fun result!122586 () Bool)

(assert (= result!122586 result!122580))

(assert (=> b!1720917 t!159454))

(declare-fun b_and!125655 () Bool)

(assert (= b_and!125649 (and (=> t!159454 result!122586) b_and!125655)))

(declare-fun b_lambda!54569 () Bool)

(assert (=> (not b_lambda!54569) (not b!1720917)))

(declare-fun t!159456 () Bool)

(declare-fun tb!101991 () Bool)

(assert (=> (and b!1720913 (= (toValue!4842 (transformation!3335 (h!24233 rules!3447))) (toValue!4842 (transformation!3335 (rule!5281 (_1!10665 lt!658217))))) t!159456) tb!101991))

(declare-fun result!122588 () Bool)

(assert (=> tb!101991 (= result!122588 (inv!21 (dynLambda!8666 (toValue!4842 (transformation!3335 (rule!5281 (_1!10665 lt!658217)))) lt!658209)))))

(declare-fun m!2126495 () Bool)

(assert (=> tb!101991 m!2126495))

(assert (=> b!1720917 t!159456))

(declare-fun b_and!125657 () Bool)

(assert (= b_and!125639 (and (=> t!159456 result!122588) b_and!125657)))

(declare-fun tb!101993 () Bool)

(declare-fun t!159458 () Bool)

(assert (=> (and b!1720921 (= (toValue!4842 (transformation!3335 (rule!5281 token!523))) (toValue!4842 (transformation!3335 (rule!5281 (_1!10665 lt!658217))))) t!159458) tb!101993))

(declare-fun result!122592 () Bool)

(assert (= result!122592 result!122588))

(assert (=> b!1720917 t!159458))

(declare-fun b_and!125659 () Bool)

(assert (= b_and!125643 (and (=> t!159458 result!122592) b_and!125659)))

(declare-fun t!159460 () Bool)

(declare-fun tb!101995 () Bool)

(assert (=> (and b!1720923 (= (toValue!4842 (transformation!3335 rule!422)) (toValue!4842 (transformation!3335 (rule!5281 (_1!10665 lt!658217))))) t!159460) tb!101995))

(declare-fun result!122594 () Bool)

(assert (= result!122594 result!122588))

(assert (=> b!1720917 t!159460))

(declare-fun b_and!125661 () Bool)

(assert (= b_and!125647 (and (=> t!159460 result!122594) b_and!125661)))

(declare-fun b_lambda!54571 () Bool)

(assert (=> (not b_lambda!54571) (not b!1720929)))

(declare-fun t!159462 () Bool)

(declare-fun tb!101997 () Bool)

(assert (=> (and b!1720913 (= (toChars!4701 (transformation!3335 (h!24233 rules!3447))) (toChars!4701 (transformation!3335 (rule!5281 (_1!10665 lt!658217))))) t!159462) tb!101997))

(declare-fun b!1720960 () Bool)

(declare-fun e!1100730 () Bool)

(declare-fun tp!491380 () Bool)

(assert (=> b!1720960 (= e!1100730 (and (inv!24319 (c!281611 (dynLambda!8665 (toChars!4701 (transformation!3335 (rule!5281 (_1!10665 lt!658217)))) (value!104720 (_1!10665 lt!658217))))) tp!491380))))

(declare-fun result!122596 () Bool)

(assert (=> tb!101997 (= result!122596 (and (inv!24320 (dynLambda!8665 (toChars!4701 (transformation!3335 (rule!5281 (_1!10665 lt!658217)))) (value!104720 (_1!10665 lt!658217)))) e!1100730))))

(assert (= tb!101997 b!1720960))

(declare-fun m!2126497 () Bool)

(assert (=> b!1720960 m!2126497))

(declare-fun m!2126499 () Bool)

(assert (=> tb!101997 m!2126499))

(assert (=> b!1720929 t!159462))

(declare-fun b_and!125663 () Bool)

(assert (= b_and!125651 (and (=> t!159462 result!122596) b_and!125663)))

(declare-fun t!159464 () Bool)

(declare-fun tb!101999 () Bool)

(assert (=> (and b!1720921 (= (toChars!4701 (transformation!3335 (rule!5281 token!523))) (toChars!4701 (transformation!3335 (rule!5281 (_1!10665 lt!658217))))) t!159464) tb!101999))

(declare-fun result!122598 () Bool)

(assert (= result!122598 result!122596))

(assert (=> b!1720929 t!159464))

(declare-fun b_and!125665 () Bool)

(assert (= b_and!125653 (and (=> t!159464 result!122598) b_and!125665)))

(declare-fun t!159466 () Bool)

(declare-fun tb!102001 () Bool)

(assert (=> (and b!1720923 (= (toChars!4701 (transformation!3335 rule!422)) (toChars!4701 (transformation!3335 (rule!5281 (_1!10665 lt!658217))))) t!159466) tb!102001))

(declare-fun result!122600 () Bool)

(assert (= result!122600 result!122596))

(assert (=> b!1720929 t!159466))

(declare-fun b_and!125667 () Bool)

(assert (= b_and!125655 (and (=> t!159466 result!122600) b_and!125667)))

(declare-fun m!2126501 () Bool)

(assert (=> b!1720928 m!2126501))

(declare-fun m!2126503 () Bool)

(assert (=> b!1720939 m!2126503))

(declare-fun m!2126505 () Bool)

(assert (=> b!1720919 m!2126505))

(declare-fun m!2126507 () Bool)

(assert (=> b!1720919 m!2126507))

(declare-fun m!2126509 () Bool)

(assert (=> b!1720919 m!2126509))

(declare-fun m!2126511 () Bool)

(assert (=> b!1720915 m!2126511))

(declare-fun m!2126513 () Bool)

(assert (=> b!1720940 m!2126513))

(declare-fun m!2126515 () Bool)

(assert (=> b!1720940 m!2126515))

(declare-fun m!2126517 () Bool)

(assert (=> b!1720931 m!2126517))

(assert (=> b!1720931 m!2126517))

(declare-fun m!2126519 () Bool)

(assert (=> b!1720931 m!2126519))

(assert (=> b!1720931 m!2126519))

(declare-fun m!2126521 () Bool)

(assert (=> b!1720931 m!2126521))

(declare-fun m!2126523 () Bool)

(assert (=> b!1720931 m!2126523))

(declare-fun m!2126525 () Bool)

(assert (=> b!1720918 m!2126525))

(declare-fun m!2126527 () Bool)

(assert (=> b!1720936 m!2126527))

(declare-fun m!2126529 () Bool)

(assert (=> b!1720936 m!2126529))

(declare-fun m!2126531 () Bool)

(assert (=> b!1720936 m!2126531))

(assert (=> b!1720936 m!2126531))

(declare-fun m!2126533 () Bool)

(assert (=> b!1720936 m!2126533))

(declare-fun m!2126535 () Bool)

(assert (=> b!1720930 m!2126535))

(declare-fun m!2126537 () Bool)

(assert (=> b!1720929 m!2126537))

(declare-fun m!2126539 () Bool)

(assert (=> b!1720934 m!2126539))

(declare-fun m!2126541 () Bool)

(assert (=> b!1720934 m!2126541))

(declare-fun m!2126543 () Bool)

(assert (=> b!1720914 m!2126543))

(declare-fun m!2126545 () Bool)

(assert (=> b!1720914 m!2126545))

(declare-fun m!2126547 () Bool)

(assert (=> b!1720914 m!2126547))

(assert (=> b!1720914 m!2126543))

(assert (=> b!1720914 m!2126547))

(declare-fun m!2126549 () Bool)

(assert (=> b!1720914 m!2126549))

(declare-fun m!2126551 () Bool)

(assert (=> b!1720941 m!2126551))

(declare-fun m!2126553 () Bool)

(assert (=> b!1720941 m!2126553))

(declare-fun m!2126555 () Bool)

(assert (=> b!1720941 m!2126555))

(declare-fun m!2126557 () Bool)

(assert (=> b!1720941 m!2126557))

(assert (=> b!1720941 m!2126517))

(declare-fun m!2126559 () Bool)

(assert (=> b!1720941 m!2126559))

(declare-fun m!2126561 () Bool)

(assert (=> b!1720941 m!2126561))

(declare-fun m!2126563 () Bool)

(assert (=> b!1720941 m!2126563))

(declare-fun m!2126565 () Bool)

(assert (=> b!1720941 m!2126565))

(declare-fun m!2126567 () Bool)

(assert (=> b!1720941 m!2126567))

(declare-fun m!2126569 () Bool)

(assert (=> b!1720941 m!2126569))

(declare-fun m!2126571 () Bool)

(assert (=> b!1720941 m!2126571))

(assert (=> b!1720941 m!2126569))

(declare-fun m!2126573 () Bool)

(assert (=> b!1720941 m!2126573))

(declare-fun m!2126575 () Bool)

(assert (=> b!1720941 m!2126575))

(declare-fun m!2126577 () Bool)

(assert (=> b!1720941 m!2126577))

(declare-fun m!2126579 () Bool)

(assert (=> start!168662 m!2126579))

(declare-fun m!2126581 () Bool)

(assert (=> b!1720916 m!2126581))

(declare-fun m!2126583 () Bool)

(assert (=> b!1720922 m!2126583))

(declare-fun m!2126585 () Bool)

(assert (=> b!1720922 m!2126585))

(declare-fun m!2126587 () Bool)

(assert (=> b!1720924 m!2126587))

(declare-fun m!2126589 () Bool)

(assert (=> b!1720924 m!2126589))

(declare-fun m!2126591 () Bool)

(assert (=> b!1720925 m!2126591))

(declare-fun m!2126593 () Bool)

(assert (=> b!1720925 m!2126593))

(declare-fun m!2126595 () Bool)

(assert (=> b!1720925 m!2126595))

(declare-fun m!2126597 () Bool)

(assert (=> b!1720925 m!2126597))

(declare-fun m!2126599 () Bool)

(assert (=> b!1720925 m!2126599))

(assert (=> b!1720925 m!2126597))

(declare-fun m!2126601 () Bool)

(assert (=> b!1720927 m!2126601))

(declare-fun m!2126603 () Bool)

(assert (=> b!1720938 m!2126603))

(declare-fun m!2126605 () Bool)

(assert (=> b!1720938 m!2126605))

(declare-fun m!2126607 () Bool)

(assert (=> b!1720938 m!2126607))

(declare-fun m!2126609 () Bool)

(assert (=> b!1720938 m!2126609))

(declare-fun m!2126611 () Bool)

(assert (=> b!1720938 m!2126611))

(declare-fun m!2126613 () Bool)

(assert (=> b!1720938 m!2126613))

(declare-fun m!2126615 () Bool)

(assert (=> b!1720938 m!2126615))

(assert (=> b!1720938 m!2126609))

(declare-fun m!2126617 () Bool)

(assert (=> b!1720926 m!2126617))

(declare-fun m!2126619 () Bool)

(assert (=> b!1720935 m!2126619))

(declare-fun m!2126621 () Bool)

(assert (=> b!1720917 m!2126621))

(assert (=> b!1720917 m!2126621))

(declare-fun m!2126623 () Bool)

(assert (=> b!1720917 m!2126623))

(assert (=> b!1720917 m!2126623))

(declare-fun m!2126625 () Bool)

(assert (=> b!1720917 m!2126625))

(declare-fun m!2126627 () Bool)

(assert (=> b!1720917 m!2126627))

(check-sat (not b!1720916) (not b!1720931) (not b!1720922) b_and!125665 b_and!125659 (not b!1720940) (not tb!101997) (not tb!101991) (not b_next!47595) (not b!1720960) (not b_lambda!54569) (not b_next!47597) (not start!168662) (not b!1720918) (not b_next!47589) (not b!1720936) (not b!1720926) (not b!1720915) (not b!1720927) (not b!1720924) (not b!1720919) (not b!1720917) tp_is_empty!7569 b_and!125661 (not b!1720930) (not b!1720928) b_and!125663 (not b!1720934) (not b_lambda!54567) (not b!1720939) (not tb!101985) (not b!1720914) (not b_next!47593) (not b!1720935) (not b!1720938) (not b_lambda!54571) (not b!1720957) (not b!1720933) (not b!1720941) (not b_next!47591) (not b!1720925) b_and!125657 (not b!1720932) (not b_next!47587) b_and!125667)
(check-sat b_and!125665 b_and!125659 b_and!125661 b_and!125663 (not b_next!47593) (not b_next!47595) (not b_next!47591) (not b_next!47597) (not b_next!47589) b_and!125657 (not b_next!47587) b_and!125667)
